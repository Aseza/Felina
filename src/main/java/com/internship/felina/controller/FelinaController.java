package com.internship.felina.controller;


import com.internship.felina.dictionary.Dictionary;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class FelinaController {
    Dictionary dict = new Dictionary();

    @RequestMapping("/home")
    public String goHome() {
        return "home";
    }


    @RequestMapping("/addToDictionary/{phrase}")
    public @ResponseBody
    boolean addPhrase(@PathVariable String phrase) {
        return this.dict.addItemToList(phrase);
    }

    @RequestMapping("/getFromDictionary/{word}&&{isCaseSensitive}")
    public @ResponseBody
    List<String> getAWord(@PathVariable String word, @PathVariable boolean isCaseSensitive) {
        return dict.searchAWord(word, dict.getList(), isCaseSensitive);
    }

    @RequestMapping("/removeFromDictionary/{phrase}")
    public @ResponseBody
    boolean removeFromDictionary(@PathVariable String phrase) {
        return this.dict.removeItemFromList(phrase);
    }


}
