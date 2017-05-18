package com.example.book.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import lombok.Data;

@Entity
@Data
public class User {
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.AUTO)	
	private Long id;	
	
	@Column(name = "username", nullable = false)
	private String username;	
	
	@Column(name = "name", nullable = false)
	private String name;
	
	//연관관계의 오너로 Book.user 를 지정
	@OneToMany(mappedBy = "user")
	private List<Book> books = new ArrayList<Book>();
	
}
