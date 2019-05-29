package com.spring.secbiodabackend.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;



import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Hotel {
	
	/*
	 * Private Fields
	 * */
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column
	private String name;
	
	@Column 
	
	private String description;
	
	@Column
	@JsonIgnore
	private String address;
	
	@Column
	private String star;
	
	@Column 
	private String rating;
	
	@Column(name="image_url_1")
	
	private String imageURL1;
	
	@Column (name="image_url_2")
	@JsonIgnore
	private String imageURL2;
	
	@Column (name="image_url_3")
	@JsonIgnore
	private String imageURL3;
	
	@Column(name="is_active")
	@JsonIgnore
	private boolean active;
	
	private String distance;
	
	@Column(name="check_in")
	@JsonIgnore
	private String checkIn;
	
	@Column(name="check_out")
	@JsonIgnore
	private String checkOut;
	
	@JsonIgnore
	private String facilities;
	
	@Column (name="city_id")
	@JsonIgnore
	private int cityId;
	
	public String getDistance() {
		return distance;
	}

	public void setDistance(String distance) {
		this.distance = distance;
	}

	public String getCheckIn() {
		return checkIn;
	}

	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}

	public String getCheckOut() {
		return checkOut;
	}

	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}

	public String getFacilities() {
		return facilities;
	}

	public void setFacilities(String facilities) {
		this.facilities = facilities;
	}

	@Column (name="owner_id")
	@JsonIgnore
	private int ownerId;
	
	private int views;
	

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getStar() {
		return star;
	}

	public void setStar(String star) {
		this.star = star;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getImageURL1() {
		return imageURL1;
	}

	public void setImageURL1(String imageURL1) {
		this.imageURL1 = imageURL1;
	}

	public String getImageURL2() {
		return imageURL2;
	}

	public void setImageURL2(String imageURL2) {
		this.imageURL2 = imageURL2;
	}

	public String getImageURL3() {
		return imageURL3;
	}

	public void setImageURL3(String imageURL3) {
		this.imageURL3 = imageURL3;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public int getCityId() {
		return cityId;
	}

	public void setCityId(int cityId) {
		this.cityId = cityId;
	}

	public int getOwnerId() {
		return ownerId;
	}

	public void setOwnerId(int ownerId) {
		this.ownerId = ownerId;
	}

	@Override
	public String toString() {
		return "Hotel [id=" + id + ", name=" + name + ", description=" + description + ", address=" + address
				+ ", star=" + star + ", rating=" + rating + ", imageURL1=" + imageURL1 + ", imageURL2=" + imageURL2
				+ ", imageURL3=" + imageURL3 + ", active=" + active + ", cityId=" + cityId + ", ownerId=" + ownerId
				+ "]";
	}



	

	
	
}
