package com.wipro.project.service;

import java.util.List;
import java.util.Set;
import java.util.HashSet;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.project.model.Doctor;
import com.wipro.project.repository.DoctorRepository;


@Service
public class DoctorService {

    @Autowired
    private DoctorRepository doctorRepository;

    public List<Doctor> getAllDoctors() {
        return doctorRepository.findAll();
    }

    public Doctor getDoctorById(Long id) {
        return doctorRepository.findById(id).orElse(null);
    }

    public Doctor saveDoctor(Doctor doctor) {
        return doctorRepository.save(doctor);
    }

    public void deleteDoctor(Long id) {
        doctorRepository.deleteById(id);
    }
    public List<String> getAllDoctorNames() {
        List<Doctor> doctors = doctorRepository.findAll();
        List<String> doctorNames = new ArrayList<>();
        for (Doctor doctor : doctors) {
            doctorNames.add(doctor.getName());
        }
        return doctorNames;
    }
    
    public List<Doctor> getAllDoctorsBySpecialization(String Specialization){
    	return doctorRepository.findAllDoctorsBySpecialization(Specialization);
    }

	public List<String> getAllSpecialization() {
		List<Doctor> doctors=doctorRepository.findAll();
		Set<String> doctorSpecialization = new HashSet<>();
		for(Doctor doctor : doctors) {
	        doctorSpecialization.add(doctor.getSpecialization());
		}
	    return new ArrayList<>(doctorSpecialization);
	}

}

