package com.internship.felina.dictionary;

import java.util.ArrayList;
import java.util.List;

public class Dictionary {
    List<String> list;
    List<String> result;

    public List<String> getList() {
        return list;
    }

    public boolean addItemToList(String phrase) {
        if(!list.contains(phrase)) {
            list.add(phrase);
            return true;
        }
        return false;
    }

    public boolean removeItemFromList(String phrase) {
      return list.remove(phrase);
    }
    public Dictionary() {
        list = new ArrayList<>();
        addItemToList("younes moha");
        addItemToList("Youness Kahi");
        addItemToList("younmida korolola");
    }


    public List searchAWord(String word, List<String> listToSearch, boolean isCaseSensitive) {
        result = new ArrayList<String>();

        for (String w : listToSearch) {
            if (!isCaseSensitive && w.toLowerCase().contains(word.toLowerCase())) {
                result.add(w);
            } else if (isCaseSensitive && w.contains(word)) {
                result.add(w);
            }
        }
//        if (result.isEmpty()) result.add("");

        return result;
    }
}
