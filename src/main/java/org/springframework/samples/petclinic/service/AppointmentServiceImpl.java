package org.springframework.samples.petclinic.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.samples.petclinic.model.Appointment;
import org.springframework.samples.petclinic.model.AppointmentXML;
import org.springframework.samples.petclinic.model.Vet;
import org.springframework.samples.petclinic.repository.AppointmentRespository;
import org.springframework.stereotype.Service;

@Service
public class AppointmentServiceImpl implements AppointmentService {

	@Autowired
	AppointmentRespository ar;
	
	@Override
	public List<DailyAppointmentSlots> getAvailaibleAppointmentForVet(Vet v, int days) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AppointmentXML getAppointment(int id) {
		// TODO Auto-generated method stub
		Appointment a =  ar.findById(id);
		AppointmentXML ax = new AppointmentXML();
		ax.setAppointmentDate(a.getAppointmentDate());
		ax.setStatus("New");
		ax.setSlot("1");
		return ax;
	}

}
