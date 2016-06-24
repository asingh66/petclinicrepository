package org.springframework.samples.petclinic.service;

import java.util.Date;
import java.util.List;

import org.springframework.samples.petclinic.model.Vet;

public interface AppointmentService {
	
	public DailyAppointmentSlots getAvailaibleAppointmentForVet(Vet v, Date today);

}
