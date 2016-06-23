package org.springframework.samples.petclinic.repository.jpa;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.samples.petclinic.model.Appointment;
import org.springframework.samples.petclinic.repository.AppointmentRespository;
import org.springframework.stereotype.Repository;

@Repository
public class JpaAppointmentRepositoryImpl implements AppointmentRespository {

	@PersistenceContext
    private EntityManager em;
	@Override
	public void save(Appointment a) {
		try {
		 if (a.getId() == null) {
	            this.em.persist(a);
	        } else {
	            this.em.merge(a);
	        } } catch (Exception e) {
	        	e.printStackTrace();
	        }
	}

}
