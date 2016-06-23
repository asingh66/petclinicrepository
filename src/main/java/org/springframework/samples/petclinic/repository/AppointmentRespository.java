package org.springframework.samples.petclinic.repository;

import org.springframework.samples.petclinic.model.Appointment;

public interface AppointmentRespository {

	public void save(Appointment a);
}
