/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.ContactManager.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author KhanhPham
 */
@Controller
public class UserController {

    @GetMapping("/")
    public String login() {
        return "login";
    }

    @GetMapping("/register")
    public String register() {
        return "register";
    }

    @PostMapping("/register")
    public String registerNew(String firstName, String lastName, String username, String password, String confirmPassword, Model model) {
        if (!password.equals(confirmPassword)) {
            System.out.println("Confirmation password not match!");
            model.addAttribute("error", "Confirmation password not match!");
            return "register";
        }
        System.out.println("Confirmation password matched!");
        return "/";
    }

}
