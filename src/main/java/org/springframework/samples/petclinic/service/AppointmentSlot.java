package org.springframework.samples.petclinic.service;

import java.util.Date;

import org.springframework.samples.petclinic.model.Appointment;

public class AppointmentSlot {

	private int slot;
	private Appointment appointment;
	private String isAvailable;

	public int getSlot() {
		return slot;
	}
	public void setSlot(int slot) {
		this.slot = slot;
	}
	public Appointment getAppointment() {
		return appointment;
	}
	public void setAppointment(Appointment appointment) {
		this.appointment = appointment;
	}
	public String isAvailable() {
		return isAvailable;
	}
	public void setAvailable(String isAvailable) {
		this.isAvailable = isAvailable;
	}
	
	
}
