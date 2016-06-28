package org.springframework.samples.petclinic.service;

import java.util.Date;

import org.springframework.samples.petclinic.model.Appointment;

public class AppointmentSlot {

	private int slot;
	private Appointment appointment;
	private boolean isAvailable;

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
	public boolean isAvailable() {
		return isAvailable;
	}
	public void setAvailable(boolean isAvailable) {
		this.isAvailable = isAvailable;
	}
	
	@Override
	public boolean equals(Object o) {
		if (! (o instanceof AppointmentSlot))
			return false;
		if (slot == ((AppointmentSlot)o).slot)
			return true;
		
		return false;
	}
	
	@Override
	public int hashCode(){
		return slot;
	}
	
	
}
