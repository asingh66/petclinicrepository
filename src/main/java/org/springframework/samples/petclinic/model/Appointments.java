package org.springframework.samples.petclinic.model;

import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Appointments {
	 private List<Appointment> appointments;

	    @XmlElement
	    public List<Appointment> getAppointmentList() {
	        if (appointments == null) {
	        	appointments = new ArrayList<>();
	        }
	        return appointments;
	    }
}
