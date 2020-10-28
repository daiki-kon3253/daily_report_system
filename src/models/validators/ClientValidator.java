package models.validators;

import java.util.ArrayList;
import java.util.List;

import models.Client;

public class ClientValidator {
    public static List<String> validate(Client r) {
        List<String> errors = new ArrayList<String>();

        String client_error = _validateClient(r.getClient());
        if(!client_error.equals("")) {
            errors.add(client_error);
        }

        String content_error = _validateContent(r.getContent());
        if(!content_error.equals("")) {
            errors.add(content_error);
        }

        return errors;
    }

    private static String _validateClient(String client) {
        if(client == null || client.equals("")) {
            return "顧客名を入力してください。";
            }

        return "";
    }

    private static String _validateContent(String content) {
        if(content == null || content.equals("")) {
            return "内容を入力してください。";
            }

        return "";
    }
}


