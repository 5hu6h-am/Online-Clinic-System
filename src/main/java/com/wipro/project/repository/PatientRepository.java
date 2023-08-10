package com.wipro.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.wipro.project.model.Patient;

import java.time.LocalDate;
import java.util.List;

public interface PatientRepository extends JpaRepository<Patient, Long> {
    List<Patient> findByDoctorAssignedAndAppointmentDate(String doctorAssigned, LocalDate appointmentDate);

    @Query("SELECT DISTINCT p.appointmentDate FROM Patient p")
    List<LocalDate> findAllAppointmentDates();
    
}

