package com.example.book.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;

@Entity
@Data
public class Book {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)	
	private Integer id;
	
	@Column(length = 100, nullable = false)	
	private String title;
	
	@Column(length = 20, nullable = false)	
	private String author;
	
	@Column(length = 100)	
	private String description;
	
	@Column(nullable = false)
	@Temporal(TemporalType.TIMESTAMP)
	private Date regDate = new Date();
}
