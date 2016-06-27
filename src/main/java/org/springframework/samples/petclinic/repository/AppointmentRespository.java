package org.springframework.samples.petclinic.repository;

import java.util.List;
import java.util.Set;

import org.springframework.samples.petclinic.model.Appointment;
import org.springframework.samples.petclinic.model.Vet;

public interface AppointmentRespository {

	public void save(Appointment a);
	
	public List<Appointment> getAppointmentsByVet(Vet v);
}
