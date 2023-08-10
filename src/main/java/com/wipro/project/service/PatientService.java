package com.wipro.project.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.project.model.Patient;
import com.wipro.project.repository.PatientRepository;
@Service
public class PatientService {
	
	@Autowired
	private PatientRepository patientRepository;

    public List<Patient> getAllPatients(){
        return patientRepository.findAll();
    };

    public List<Patient> getPatientsByDoctorAndDate(String doctorAssigned, LocalDate appointmentDate){
        return patientRepository.findByDoctorAssignedAndAppointmentDate(doctorAssigned, appointmentDate);
    };

    public List<LocalDate> getAllAppointmentDates() {
        return patientRepository.findAllAppointmentDates();
    }

}

