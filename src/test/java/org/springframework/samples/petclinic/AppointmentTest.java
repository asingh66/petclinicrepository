package org.springframework.samples.petclinic;

import javax.transaction.Transactional;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.samples.petclinic.model.Appointment;
import org.springframework.samples.petclinic.model.Owner;
import org.springframework.samples.petclinic.model.Pet;
import org.springframework.samples.petclinic.model.Vet;
import org.springframework.samples.petclinic.repository.AppointmentRespository;
import org.springframework.samples.petclinic.repository.OwnerRepository;
import org.springframework.samples.petclinic.repository.PetRepository;
import org.springframework.samples.petclinic.repository.VetRepository;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@ContextConfiguration(locations = {"classpath:spring/business-config.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
@ActiveProfiles("jpa")
public class AppointmentTest {

	@Autowired 
	AppointmentRespository as;
	
	@Autowired
	VetRepository vr;
	
	@Autowired
	PetRepository pr;
	
	@Autowired
	OwnerRepository or;
	
	
	@Test
	@Transactional
	public void createAppointment() {
		Owner betty = or.findById(2);
		Vet vet = vr.findAll().iterator().next();
		Pet p = pr.findById(2);
		Appointment a = new Appointment();
		a.setOwner(betty);
		a.setPet(p);
		a.setVet(vet);
		a.setSlot("9");
		a.setStatus("ACTIVE");
		
		as.save(a);
		
		
		
		System.out.println(betty.getAddress());
	}
	
}
