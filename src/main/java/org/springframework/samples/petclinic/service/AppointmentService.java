package org.springframework.samples.petclinic.service;

import java.util.Date;
import java.util.List;

import org.springframework.samples.petclinic.model.Appointment;
import org.springframework.samples.petclinic.model.AppointmentXML;
import org.springframework.samples.petclinic.model.Vet;

public interface AppointmentService {
	
	public DailyAppointmentSlots getAvailaibleAppointmentForVet(Vet v, Date today);

	public AppointmentXML getAppointment(int id) ;
	
	public void createAppointment(Appointment a);
}
