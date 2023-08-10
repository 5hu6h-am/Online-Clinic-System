package com.wipro.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.wipro.project.model.Admin;

public interface AdminRepository extends JpaRepository<Admin, Long> {

  Admin findByEmail(String email);
}