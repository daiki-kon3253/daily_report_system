package models.validators;

import java.util.ArrayList;
import java.util.List;

import models.Client;

public class ClientValidator {
    public static List<String> validate(Client r) {
        List<String> errors = new ArrayList<String>();

        String name_error = _validateName(r.getName());
        if(!name_error.equals("")) {
            errors.add(name_error);
        }

        String company_error = _validateCompany(r.getCompany());
        if(!company_error.equals("")) {
            errors.add(company_error);
        }

        String phone_error = _validatePhone(r.getPhone());
        if(!phone_error.equals("")) {
            errors.add(phone_error);
        }

        String address_error = _validateAddress(r.getAddress());
        if(!address_error.equals("")) {
            errors.add(address_error);
        }

        return errors;
    }

    private static String _validateName(String name) {
        if(name == null || name.equals("")) {
            return "氏名を入力してください。";
            }

        return "";
    }

    private static String _validateCompany(String company) {
        if(company == null || company.equals("")) {
            return "会社名を入力してください。";
            }

        return "";
    }

    private static String _validatePhone(String phone) {
        if(phone == null || phone.equals("")) {
            return "電話番号を入力してください。";
            }

        return "";
    }

    private static String _validateAddress(String address) {
        if(address == null || address.equals("")) {
            return "住所を入力してください。";
            }

        return "";
   }
}


