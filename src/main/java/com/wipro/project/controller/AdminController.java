package com.wipro.project.controller;

import java.time.LocalDate;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.wipro.project.service.AdminService;

@Controller
public class AdminController {
	
	  @Autowired
	  private AdminService adminService;
	  
	  @GetMapping("/admin/login")
	  public String showLoginForm() {
	    return "admin-login";
	  }
	  
	  @GetMapping("/patient")
	  public String showmessage() {
		  return "message";
		  
	  }
	 
	  @PostMapping("/admin/login")
	  public String processLogin(@RequestParam("email") String email,
	                             @RequestParam("password") String password,
	                             HttpSession session) {
	    if (adminService.authenticate(email, password)) {
	      session.setAttribute("adminEmail", email);
	      return "redirect:/admin/doctors";
	    } else {
	      return "redirect:/admin/login?error";
	    }
	  }
	  
	  @GetMapping("/admin/password-reset")
	  public String showPasswordResetForm() {
	      return "password-reset";
	  }
	
	  @PostMapping("/password-reset")
	  public String processPasswordReset(@RequestParam("email") String email,
	                                     @RequestParam("dob") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate dob,
	                                     Model model,HttpSession session) {
	      String adminEmail = (String) session.getAttribute("adminEmail");
	      if (adminEmail == null) {
	          return "redirect:/admin/login";
	      }
	      if (adminService.authenticatel(email, dob)) {
	          model.addAttribute("email", email);
	          return "update-password";
	      } 
	      else {
	          model.addAttribute("errorMessage", "Invalid email or date of birth");
	          return "password-reset";
	      }
	  }
	  
	  
	  @PostMapping("/update-password")
	  public String updatePassword(@RequestParam("email") String email,
	                               @RequestParam("password") String password,@RequestParam("confirmPassword") String confirmPassword,
	                               Model model,HttpSession session) {
	      String adminEmail = (String) session.getAttribute("adminEmail");
	      if (adminEmail == null) {
	          return "redirect:/admin/login";
	      }
	      try {
	      adminService.checkupdatePassword(email, password);
	      if (!password.equals(confirmPassword)) {
	            model.addAttribute("errorMessage", "The new password and confirm new password do not match.");
	            return "update-password";
	        }
	      model.addAttribute("successMessage", "Password updated successfully");
	      return "update-password";
	      }
	      catch(Exception e) {
	          model.addAttribute("errorMessage", "New password must not be same");
	          return "update-password";
	          }
	      }
	  
	  
	  @GetMapping("/admin/logout")
	  public String logout(HttpSession session) {
	    session.invalidate();
	    return "redirect:/admin/login";
	  	}
 }

