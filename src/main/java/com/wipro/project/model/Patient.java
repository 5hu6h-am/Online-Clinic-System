package com.wipro.project.model;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;

@Entity
@Table(name = "patients")
public class Patient {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long appointmentId;

    @Column(name = "patient_name", nullable = false)
    private String patientName;

    @Column(name = "patient_phone", nullable = false)
    private String patientPhone;

    @Column(name = "patient_address", nullable = false)
    private String patientAddress;

    @Column(name = "symptoms", nullable = false)
    private String symptoms;

    @Column(name = "doctor_assigned", nullable = false)
    private String doctorAssigned;

    @Column(name = "appointment_date", nullable = false)
    private LocalDate appointmentDate;

    @Column(name = "appointment_time", nullable = false)
    private LocalTime appointmentTime;

	public Patient() {
		super();
	}

	public Patient(Long appointmentId, String patientName, String patientPhone, String patientAddress, String symptoms,
			String doctorAssigned, LocalDate appointmentDate, LocalTime appointmentTime) {
		super();
		this.appointmentId = appointmentId;
		this.patientName = patientName;
		this.patientPhone = patientPhone;
		this.patientAddress = patientAddress;
		this.symptoms = symptoms;
		this.doctorAssigned = doctorAssigned;
		this.appointmentDate = appointmentDate;
		this.appointmentTime = appointmentTime;
	}

	public Long getAppointmentId() {
		return appointmentId;
	}

	public void setAppointmentId(Long appointmentId) {
		this.appointmentId = appointmentId;
	}

	public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public String getPatientPhone() {
		return patientPhone;
	}

	public void setPatientPhone(String patientPhone) {
		this.patientPhone = patientPhone;
	}

	public String getPatientAddress() {
		return patientAddress;
	}

	public void setPatientAddress(String patientAddress) {
		this.patientAddress = patientAddress;
	}

	public String getSymptoms() {
		return symptoms;
	}

	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}

	public String getDoctorAssigned() {
		return doctorAssigned;
	}

	public void setDoctorAssigned(String doctorAssigned) {
		this.doctorAssigned = doctorAssigned;
	}

	public LocalDate getAppointmentDate() {
		return appointmentDate;
	}

	public void setAppointmentDate(LocalDate appointmentDate) {
		this.appointmentDate = appointmentDate;
	}

	public LocalTime getAppointmentTime() {
		return appointmentTime;
	}

	public void setAppointmentTime(LocalTime appointmentTime) {
		this.appointmentTime = appointmentTime;
	}

    
}
