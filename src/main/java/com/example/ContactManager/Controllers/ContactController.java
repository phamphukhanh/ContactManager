/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.ContactManager.Controllers;

import com.example.ContactManager.Entities.Contact;
import com.example.ContactManager.Services.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author KhanhPham
 */
@Controller
public class ContactController {
    
    @Autowired
    private ContactService contactService;
    
    @GetMapping("/contacts")
    public String manage(){
        return "contacts";
    }
    
    @GetMapping("/add")
    public String add(){
        return "add-contact";
    }
    
    @PostMapping("/add")
    public String add(@ModelAttribute Contact c){
        c.setUserID(1);
        System.out.println(c);
        contactService.addContact(c);
        return "redirect:/";
    }
}
