package org.springframework.samples.petclinic.service;

import java.util.Date;
import java.util.List;
import java.util.Set;

public class DailyAppointmentSlots {

	private Date dateOfAppointment;
	Set <AppointmentSlot> slots;
	
	
	public Date getDateOfAppointment() {
		return dateOfAppointment;
	}
	public void setDateOfAppointment(Date dateOfAppointment) {
		this.dateOfAppointment = dateOfAppointment;
	}
	public Set<AppointmentSlot> getSlots() {
		return slots;
	}
	public void setSlots(Set<AppointmentSlot> slots) {
		this.slots = slots;
	}
	
}
