package org.springframework.samples.petclinic.service;

import java.util.Date;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.samples.petclinic.model.Appointment;
import org.springframework.samples.petclinic.model.AppointmentXML;
import org.springframework.samples.petclinic.model.Vet;
import org.springframework.samples.petclinic.repository.AppointmentRespository;
import org.springframework.samples.petclinic.repository.OwnerRepository;
import org.springframework.samples.petclinic.repository.PetRepository;
import org.springframework.samples.petclinic.repository.VetRepository;
import org.springframework.samples.petclinic.repository.VisitRepository;
import org.springframework.stereotype.Service;

@Service
public class AppointmentServiceImpl implements AppointmentService {

	private PetRepository petRepository;
	private VetRepository vetRepository;
	private OwnerRepository ownerRepository;
	private VisitRepository visitRepository;
	@Autowired
	private AppointmentRespository ar;

	@Override
	public DailyAppointmentSlots getAvailaibleAppointmentForVet(Vet v, Date today) {
		// TODO Auto-generated method stub

		Set<Appointment> appointments = vetRepository.findVetById(v.getId()).getAppointments();

		if (appointments.size() == 0) {
			return null;
		}
		DailyAppointmentSlots da = new DailyAppointmentSlots();
		List<AppointmentSlot> slots = null;
		da.setDateOfAppointment(today);
		for (Appointment a : appointments) {
			if (a.getAppointmentDate() == today) {
				AppointmentSlot newSlot = new AppointmentSlot();
				newSlot.setAppointment(a);
				newSlot.setSlot(Integer.parseInt(a.getSlot()));
				newSlot.setAvailable(a.getStatus());
				slots.add(newSlot);
			}
		}
		da.setSlots(slots);
		return da;
	}

	@Autowired
	public AppointmentServiceImpl(PetRepository petRepository, VetRepository vetRepository,
			OwnerRepository ownerRepository, VisitRepository visitRepository) {
		this.petRepository = petRepository;
		this.vetRepository = vetRepository;
		this.ownerRepository = ownerRepository;
		this.visitRepository = visitRepository;
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