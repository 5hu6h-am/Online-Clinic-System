package com.wipro.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wipro.project.model.Doctor;

public interface DoctorRepository extends JpaRepository<Doctor, Long> {
	List <Doctor> findAllDoctorsBySpecialization(String Specialization);
}

