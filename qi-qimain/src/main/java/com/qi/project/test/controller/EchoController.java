package com.qi.project.test.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class EchoController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ResponseEntity index() {
        return new ResponseEntity("index error", HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public ResponseEntity test() {
        return new ResponseEntity("error", HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @RequestMapping(value = "/sleep", method = RequestMethod.GET)
    public String sleep() {
        try {
            Thread.sleep(1000L);
        }
        catch (InterruptedException e) {
            e.printStackTrace();
        }
        return "ok";
    }

    @RequestMapping(value = "/echo", method = RequestMethod.GET,produces = { "application/json; charset=utf-8" })
    @ResponseBody
    public user echo(@PathVariable String string) {
        //return new String("hello Nacos Discovery " + string);
        user user =new user();
        return user;
    }

    @RequestMapping(value = "/echo/{string}", method = RequestMethod.GET,produces = { "application/json; charset=utf-8" })
    @ResponseBody
    public String echo1(@PathVariable String string) {
        return new String("hello Nacos Discovery " + string);

    }

    @RequestMapping(value = "/divide", method = RequestMethod.GET)
    @ResponseBody
    public String divide(@RequestParam Integer a, @RequestParam Integer b) {
        return String.valueOf(a / b);
    }
}