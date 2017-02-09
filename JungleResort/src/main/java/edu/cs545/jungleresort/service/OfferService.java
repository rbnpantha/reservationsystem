package edu.cs545.jungleresort.service;

import java.util.List;

import org.springframework.stereotype.Service;

import edu.cs545.jungleresort.domain.Offer;



public interface OfferService {

	void addOffer(Offer offer);

	Offer getOfferById(String id);

	List<Offer> getAllOffer();

	void deleteOffer(String id);

	void updateOfferById(String id, Offer offer);

}
