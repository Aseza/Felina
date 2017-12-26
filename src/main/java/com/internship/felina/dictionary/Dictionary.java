package com.internship.felina.dictionary;

import java.util.ArrayList;
import java.util.List;


//This Call represents a dictionary or phrases, that we would search words in.
public class Dictionary {
    //Creating Search List, and Result List
    List<String> list;
    List<String> result;

    //Getter
    public List<String> getList() {
        return list;
    }

    //Add Items to list
    public boolean addItemToList(String phrase) {
        if(!list.contains(phrase)) {
            list.add(phrase);
            return true;
        }
        return false;
    }
    //it removes an item from the list
    public boolean removeItemFromList(String phrase) {
      return list.remove(phrase);
    }

    //Added couple of phrases for starter
    public Dictionary() {
        list = new ArrayList<>();
        addItemToList("younes moha");
        addItemToList("Youness Kahi");
        addItemToList("younmida korolola");
    }

    //This will search a word, according to case sensivity
    public List searchAWord(String word, List<String> listToSearch, boolean isCaseSensitive) {
        result = new ArrayList<String>();

        for (String w : listToSearch) {
            if (!isCaseSensitive && w.toLowerCase().contains(word.toLowerCase())) {
                result.add(w);
            } else if (isCaseSensitive && w.contains(word)) {
                result.add(w);
            }
        }
        return result;
    }
}
