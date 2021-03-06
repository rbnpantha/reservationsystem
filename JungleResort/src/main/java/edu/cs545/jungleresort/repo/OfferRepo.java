package edu.cs545.jungleresort.repo;

import java.util.List;

import org.springframework.stereotype.Repository;

import edu.cs545.jungleresort.domain.Offer;



public interface OfferRepo {
	
	void addOffer(Offer offer);

	Offer getOfferById(String id);

	List<Offer> getAllOffer();

	void deleteOffer(String id);

	void updateOfferById(String id, Offer offer);
}
