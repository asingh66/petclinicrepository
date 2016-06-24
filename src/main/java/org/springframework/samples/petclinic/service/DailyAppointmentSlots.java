package org.springframework.samples.petclinic.service;

import java.util.Date;
import java.util.List;

public class DailyAppointmentSlots {

	private Date dateOfAppointment;
	List <AppointmentSlot> slots;
	
	
	public Date getDateOfAppointment() {
		return dateOfAppointment;
	}
	public void setDateOfAppointment(Date dateOfAppointment) {
		this.dateOfAppointment = dateOfAppointment;
	}
	public List<AppointmentSlot> getSlots() {
		return slots;
	}
	public void setSlots(List<AppointmentSlot> slots) {
		this.slots = slots;
	}
	
}
