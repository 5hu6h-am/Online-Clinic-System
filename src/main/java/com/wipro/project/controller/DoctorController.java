package com.wipro.project.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wipro.project.model.Doctor;
import com.wipro.project.service.DoctorService;

@Controller
@RequestMapping("/admin/doctors")
public class DoctorController {

    @Autowired
    private DoctorService doctorService;

    @GetMapping
    public String getAllDoctors(Model model,HttpSession session) {
        String adminEmail = (String) session.getAttribute("adminEmail");
        if (adminEmail == null) {
            return "redirect:/admin/login";
        }
        List<Doctor> doctors = doctorService.getAllDoctors();
        model.addAttribute("doctors", doctors);
        return "doctors";
    }
    
    @GetMapping("/new")
    public String createDoctorForm(Model model,HttpSession session) {
        String adminEmail = (String) session.getAttribute("adminEmail");
        if (adminEmail == null) {
            return "redirect:/admin/login";
        }
        model.addAttribute("doctor", new Doctor());
        return "create-doctor";
    }
    
    @PostMapping("/save")
    public String saveDoctor(@ModelAttribute("doctor") Doctor doctor,HttpSession session) {
        String adminEmail = (String) session.getAttribute("adminEmail");
        if (adminEmail == null) {
            return "redirect:/admin/login";
        }
        doctorService.saveDoctor(doctor);
        return "redirect:/admin/doctors";
    }
    
    @GetMapping("/doctor-id")
    public String doctorId(HttpSession session) {
        String adminEmail = (String) session.getAttribute("adminEmail");
        if (adminEmail == null) {
            return "redirect:/admin/login";
        }
    	return "Doctor-id";
    }
    
    @GetMapping("/id/edit")
    public String editDoctorForm(@RequestParam("id") Long id, Model model,HttpSession session) {
        String adminEmail = (String) session.getAttribute("adminEmail");
        if (adminEmail == null) {
            return "redirect:/admin/login";
        }
        Doctor doctor = doctorService.getDoctorById(id);
        if (doctor == null) {
            model.addAttribute("errorMessage", "Doctor ID not found.");
            return "Doctor-id";
        }
        model.addAttribute("doctor", doctor);
        return "edit-doctor";
    }
    
    @PostMapping("/id/update")
    public String updateDoctor(@RequestParam("id") Long id, @ModelAttribute("doctor") Doctor updatedDoctor,Model model,HttpSession session) {
        String adminEmail = (String) session.getAttribute("adminEmail");
        if (adminEmail == null) {
            return "redirect:/admin/login";
        }
        
        Doctor doctor = doctorService.getDoctorById(id);
        if (doctor == null) {
            model.addAttribute("errorMessage", "Doctor ID not found.");
            return "edit-doctor";
        }
        doctor.setName(updatedDoctor.getName());
        doctor.setQualification(updatedDoctor.getQualification());
        doctor.setExperience(updatedDoctor.getExperience());
        doctor.setSpecialization(updatedDoctor.getSpecialization());
        doctor.setEmail(updatedDoctor.getEmail());
        doctor.setPhone(updatedDoctor.getPhone());
        doctorService.saveDoctor(doctor);
        return "redirect:/admin/doctors";
    }
    
    @GetMapping("/doctor-id-delete")
    public String doctorIdDelete(HttpSession session) {
        String adminEmail = (String) session.getAttribute("adminEmail");
        if (adminEmail == null) {
            return "redirect:/admin/login";
        }
    	return "Doctor-id-delete";
    }
    
    @GetMapping("/id/delete")
    public String deleteDoctor(@RequestParam("id") Long id,Model model,HttpSession session) {
        String adminEmail = (String) session.getAttribute("adminEmail");
        if (adminEmail == null) {
            return "redirect:/admin/login";
        }
    	try {
        	doctorService.deleteDoctor(id);
        	return "redirect:/admin/doctors";
    	}catch (Exception e) {
            model.addAttribute("errorMessage", "No doctor with this ID exists.");
            return "Doctor-id-delete";
        }
    }
    
    @GetMapping("/view")
    public String view(HttpSession session) {
        String adminEmail = (String) session.getAttribute("adminEmail");
        if (adminEmail == null) {
            return "redirect:/admin/login";
        }
    	return "Doctor-id-view";
    }


    @GetMapping("/id")
    public String getDoctorById(@RequestParam("id") Long id, Model model,HttpSession session) {
        String adminEmail = (String) session.getAttribute("adminEmail");
        if (adminEmail == null) {
            return "redirect:/admin/login";
        }
        Doctor doctor = doctorService.getDoctorById(id);
        if (doctor == null) {
            model.addAttribute("errorMessage", "No doctor exists with the provided ID");
            return "Doctor-id-view";
        }
        model.addAttribute("doctor", doctor);
        return "doctor-details";
    }
    
    @GetMapping("/specialization")
    public String getDoctors(Model model) {
        List<String> specializations = doctorService.getAllSpecialization();
        model.addAttribute("specializations", specializations);
        return "specialization";
    }
    
    @GetMapping("/doctorsBySpecialization")
    public String doctorsBySpecialization(@RequestParam("specialization") String Specialization, Model model) {
    	List<Doctor> doctor = doctorService.getAllDoctorsBySpecialization(Specialization);
    	model.addAttribute("doctor",doctor);
    	return "doctorBySpecialization";
    }

}
