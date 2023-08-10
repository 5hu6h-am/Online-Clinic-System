package com.wipro.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wipro.project.model.Patient;
import com.wipro.project.service.DoctorService;
import com.wipro.project.service.PatientService;

import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpSession;

@Controller
public class PatientController {
	@Autowired
    private PatientService patientService;
    private final DoctorService doctorService;

    public PatientController(DoctorService doctorService) {
        this.doctorService = doctorService;
    }

    @GetMapping("/admin/doctors/values")
    public String getDoctorAndAppointmentDateValues(Model model,HttpSession session) {
        String adminEmail = (String) session.getAttribute("adminEmail");
        if (adminEmail == null) {
            return "redirect:/admin/login";
        }
        List<String> doctorNames = doctorService.getAllDoctorNames();
        List<LocalDate> appointmentDates = patientService.getAllAppointmentDates();

        model.addAttribute("doctorNames", doctorNames);
        model.addAttribute("appointmentDates", appointmentDates);

        return "doctorValues";
    }

    @GetMapping("admin/doctors/appointments")
    public String showAppointmentsByDoctorAndDate(
            @RequestParam("doctorAssigned") String doctorAssigned,
            @RequestParam("appointmentDate") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate appointmentDate,
            Model model,HttpSession session
    ) {
        String adminEmail = (String) session.getAttribute("adminEmail");
        if (adminEmail == null) {
            return "redirect:/admin/login";
        }
        List<Patient> appointments = patientService.getPatientsByDoctorAndDate(doctorAssigned, appointmentDate);
        if (appointments.isEmpty()) {
            model.addAttribute("errorMessage", "No appointment scheduled for the given doctor and date.");
            return "doctorValues";
        }
        model.addAttribute("appointments", appointments);
        return "appointments";
    }
    
    
    @GetMapping("admin/doctors/patients")
    public String showAllPatients(Model model,HttpSession session) {
        String adminEmail = (String) session.getAttribute("adminEmail");
        if (adminEmail == null) {
            return "redirect:/admin/login";
        }
    	List<Patient> patients=patientService.getAllPatients();
    	model.addAttribute("patients",patients);
    	return "allpatients";
    }
}

