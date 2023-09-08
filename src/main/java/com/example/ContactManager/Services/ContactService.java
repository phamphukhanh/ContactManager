/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.ContactManager.Services;

import com.example.ContactManager.Entities.Contact;
import com.example.ContactManager.Repositories.ContactRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author KhanhPham
 */
@Service
public class ContactService {
    
    @Autowired
    private ContactRepository contactRepository;
    
    public void addContact(Contact c){
        contactRepository.save(c);
    }
}
