package com.example.book.control;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.book.model.Book;
import com.example.book.repository.BookRepository;

@Controller
public class BookController {
	
	protected static Logger log = LoggerFactory.getLogger("JPA-EXAMPLE");
	
	@Autowired 
	private BookRepository bookRepository;	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)	
	public ModelAndView listBooks() {	
		ModelAndView model = new ModelAndView("list");
		model.addObject("bookList", bookRepository.findAll());
		log.info("List log info....");
		log.debug("List log debug===");
		return model;
	}	
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView add() {
		ModelAndView model = new ModelAndView("add");
		return model;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public ModelAndView addBook(@ModelAttribute Book book) {
		bookRepository.saveAndFlush(book);
		return new ModelAndView("redirect:/.");
	}
	
	@RequestMapping(value = "/book/{id}", method = RequestMethod.GET)
	public ModelAndView viewBook(@PathVariable("id") int id) {		
		ModelAndView model = new ModelAndView("view");
		model.addObject("book", bookRepository.findOne(id));
		return model;
	}
	
	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public ModelAndView updateBook(@PathVariable("id") int id) {		
		ModelAndView model = new ModelAndView("update");
		model.addObject("book", bookRepository.findOne(id));
		return model;
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView updateBookPut(@ModelAttribute Book book) {		
		bookRepository.saveAndFlush(book);
		return new ModelAndView("redirect:/book/"+book.getId());
	}
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView deleteBook(@PathVariable("id") int id) {		
		bookRepository.delete(id);
		return new ModelAndView("redirect:/.");
	}
	
	
}
