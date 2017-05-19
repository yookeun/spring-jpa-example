package com.example.book.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import lombok.Data;

@Entity
@Data
public class Pub {
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.AUTO)	
	private Long id;	
	
	@Column(name = "name", nullable = false)
	private String name;	
	
	//연관관계의 오너로 Book.pub 를 지정 
	@OneToMany(mappedBy = "pub")
	private List<Book> books = new ArrayList<Book>();
		
	@OneToOne
	@JoinColumn(name = "pub_loc_id")
	private PubLoc pubLoc;
	
}
