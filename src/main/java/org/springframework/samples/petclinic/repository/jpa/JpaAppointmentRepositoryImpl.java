package org.springframework.samples.petclinic.repository.jpa;

import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.samples.petclinic.model.Appointment;
import org.springframework.samples.petclinic.model.Owner;
import org.springframework.samples.petclinic.model.Vet;
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
	@Override
	public List<Appointment> getAppointmentsByVet(Vet v) {
		// TODO Auto-generated method stub
		 Query query = this.em.createQuery("FROM Appointment appointmet  WHERE vet =:v");
	     query.setParameter("v", v);
	     return query.getResultList();
		
	}

}
