package com.wipro.project.service;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.project.model.Admin;
import com.wipro.project.repository.AdminRepository;

@Service
public class AdminService {

  @Autowired
  private AdminRepository adminRepository;

  public boolean authenticate(String email, String password) {
    Admin admin = adminRepository.findByEmail(email);
    if (admin != null && admin.getPassword().equals(password)) {
      return true;
    }
    return false;
    
  }
  public void register(Admin admin) {
	    adminRepository.save(admin);
	  }

  public boolean authenticatel(String email, LocalDate dob) {
      Admin admin = adminRepository.findByEmail(email);
      if (admin != null && admin.getDob().equals(dob)) {
          return true;
      }
      return false;
  }

  public void updatePassword(String email, String newPassword) {
      Admin admin = adminRepository.findByEmail(email);
      admin.setPassword(newPassword);
      adminRepository.save(admin);
  }
  
  public void checkupdatePassword(String email, String newPassword) {
	  Admin admin = adminRepository.findByEmail(email);
	  if (admin != null) {
	    String oldPassword = admin.getPassword();
	    if (!oldPassword.equals(newPassword)) {
	      admin.setPassword(newPassword);
	      adminRepository.save(admin);
	    } else {
	      throw new IllegalArgumentException("New password must be different from the old password");
	    }
	  }
  
  
}
}
