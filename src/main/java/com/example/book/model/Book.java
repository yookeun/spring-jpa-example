package com.example.book.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;

@Entity
@Data
public class Book {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.AUTO)	
	private Long id;
	
	@Column(name = "title", length = 100, nullable = false)	
	private String title;
	
	@Column(name = "author", length = 20, nullable = false)	
	private String author;
	
	@Column(name = "description", length = 100)	
	private String description;	
	
	@Column(name = "reg_date", nullable = false)
	@Temporal(TemporalType.TIMESTAMP)
	private Date regDate = new Date();	
	
	@ManyToOne
	@JoinColumn(name = "pub_id")
	private Pub pub;	
	
	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;

}
