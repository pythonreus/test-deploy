package com.example.ValentineChronicles.Controllers;

import com.example.ValentineChronicles.DTO.UserDto;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/valentineChronicles")
public class PostController {

    @GetMapping("/getGreeting")
    public String getGreeting(){
        return "Hello Kgadi";
    }

    @GetMapping("/nameGreeting")
    public String nameGreeting(@RequestParam("name") String name){
        return "Hello " + name;
    }

    @PostMapping("/create")
    public UserDto createUser(@RequestBody UserDto user){
        System.out.println(user);
        return user;
    }



}
