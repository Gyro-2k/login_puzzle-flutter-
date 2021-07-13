import 'package:email_validator/email_validator.dart';

class ValidMixin {
  String emailvalid(String email) {
    //add logic that will be used
    //to validate our input fields
    if (email.isEmpty) {
      return 'Email field cannot be empty';
    }
    /*if (email.contains(' ')) {
          return 'Email cannot have spaces';
        }*/
    if (!EmailValidator.validate(email)) {
      return 'Enter a valid Email';
    }
    return null;
  }

  String passwordvalid(String pass) {
    var size = pass.length;
    //password cannot be empty
    if (pass.isEmpty) {
      return 'Password field cannot be empty!';
    }
    //and password
    //cannot have spaces
    if (pass.contains(' ')) {
      return 'Password cannot have spaces!';
    }
    //password needs to have at least
    //one uppercase
    //one lowercase
    //one digit
    //one special symbol
    if (!RegExp(r'[A-Z]').hasMatch(pass)) {
      return 'Password must have at least one uppercase letter!';
    }
    if (!RegExp(r'[a-z]').hasMatch(pass)) {
      return 'Password must have at least one lowercase letter!';
    }
    if (!RegExp(r'[0-9]').hasMatch(pass)) {
      return 'Password must have at least one number!';
    }
    if (!pass.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]+'))) {
      return 'Password must have at least one special symbol!';
    }

    //forbidden
    //numbers
    if (pass.contains('00')) {
      return 'Password cannot have two or more consecutive zeros!';
    }
    if (pass.contains('11')) {
      return 'Password cannot have two or more consecutive ones!';
    }
    if (pass.contains('22')) {
      return 'Password cannot have two or more consecutive two!';
    }
    if (pass.contains('33')) {
      return 'Password cannot have two or more consecutive threes!';
    }
    if (pass.contains('44')) {
      return 'Password cannot have two or more consecutive fours!';
    }
    if (pass.contains('55')) {
      return 'Password cannot have two or more consecutive fives!';
    }
    if (pass.contains('66')) {
      return 'Password cannot have two or more consecutive sixes!';
    }
    if (pass.contains('77')) {
      return 'Password cannot have two or more consecutive sevens!';
    }
    if (pass.contains('88')) {
      return 'Password cannot have two or more consecutive eights!';
    }
    if (pass.contains('99')) {
      return 'Password cannot have two or more consecutive nines!';
    }
    //forbidden
    //numbers

    // forbidden
    // aphabets
    if (pass.contains(new RegExp(r'[aA]+[Aa]+'))) {
      return 'Password cannot have two or more consecutive A!';
    }
    if (pass.contains(new RegExp(r'[bB]+[bB]+'))) {
      return 'Password cannot have two or more consecutive B!';
    }
    if (pass.contains(new RegExp(r'[Cc]+[Cc]+'))) {
      return 'Password cannot have two or more consecutive C!';
    }
    if (pass.contains(new RegExp(r'[Dd]+[Dd]+'))) {
      return 'Password cannot have two or more consecutive D!';
    }
    if (pass.contains(new RegExp(r'[eE]+[Ee]+'))) {
      return 'Password cannot have two or more consecutive E!';
    }
    if (pass.contains(new RegExp(r'[fF]+[Ff]+'))) {
      return 'Password cannot have two or more consecutive F!';
    }
    if (pass.contains(new RegExp(r'[Gg]+[Gg]+'))) {
      return 'Password cannot have two or more consecutive G!';
    }
    if (pass.contains(new RegExp(r'[Hh]+[Hh]+'))) {
      return 'Password cannot have two or more consecutive H!';
    }
    if (pass.contains(new RegExp(r'[Ii]+[Ii]+'))) {
      return 'Password cannot have two or more consecutive I!';
    }
    if (pass.contains(new RegExp(r'[Jj]+[Jj]+'))) {
      return 'Password cannot have two or more consecutive J!';
    }
    if (pass.contains(new RegExp(r'[Kk]+[Kk]+'))) {
      return 'Password cannot have two or more consecutive K!';
    }
    if (pass.contains(new RegExp(r'[Ll]+[Ll]+'))) {
      return 'Password cannot have two or more consecutive L!';
    }
    if (pass.contains(new RegExp(r'[Mm]+[Mm]+'))) {
      return 'Password cannot have two or more consecutive M!';
    }
    if (pass.contains(new RegExp(r'[Nn]+[Nn]+'))) {
      return 'Password cannot have two or more consecutive N!';
    }
    if (pass.contains(new RegExp(r'[Oo]+[Oo]+'))) {
      return 'Password cannot have two or more consecutive O!';
    }
    if (pass.contains(new RegExp(r'[Pp]+[Pp]+'))) {
      return 'Password cannot have two or more consecutive P!';
    }
    if (pass.contains(new RegExp(r'[Qq]+[Qq]+'))) {
      return 'Password cannot have two or more consecutive Q!';
    }
    if (pass.contains(new RegExp(r'[Rr]+[Rr]+'))) {
      return 'Password cannot have two or more consecutive R!';
    }
    if (pass.contains(new RegExp(r'[Ss]+[Ss]+'))) {
      return 'Password cannot have two or more consecutive S!';
    }
    if (pass.contains(new RegExp(r'[Tt]+[Tt]+'))) {
      return 'Password cannot have two or more consecutive T!';
    }
    if (pass.contains(new RegExp(r'[Uu]+[Uu]+'))) {
      return 'Password cannot have two or more consecutive U!';
    }
    if (pass.contains(new RegExp(r'[Vv]+[Vv]+'))) {
      return 'Password cannot have two or more consecutive V!';
    }
    if (pass.contains(new RegExp(r'[Ww]+[Ww]+'))) {
      return 'Password cannot have two or more consecutive W!';
    }
    if (pass.contains(new RegExp(r'[Xx]+[Xx]+'))) {
      return 'Password cannot have two or more consecutive X!';
    }
    if (pass.contains(new RegExp(r'[Yy]+[Yy]+'))) {
      return 'Password cannot have two or more consecutive Y!';
    }
    if (pass.contains(new RegExp(r'[Zz]+[Zz]+'))) {
      return 'Password cannot have two or more consecutive Z!';
    }
    //forbidden
    //alphabets

    //two or more
    //consecutive anything
    /*if (RegExp(r'^[A-Za-z]+[0-9]+[0-9]+').hasMatch(pass)) {
          return 'Password cannot have two or more consecutive numbers!';
        }*/
    if (RegExp(r'[0-9]+[0-9]+[0-9]+').hasMatch(pass)) {
      return 'Password cannot have three or more consecutive numbers!';
    }
    /*if (RegExp(r'^[A-Z0-9]+[a-z]+[a-z]+').hasMatch(pass)) {
          return 'Password cannot have two or more consecutive small letters!';
        }*/
    if (RegExp(r'[a-z]+[a-z]+[a-z]+').hasMatch(pass)) {
      return 'Password cannot have three or more consecutive small letters!';
    }
    /*if (RegExp(r'^[a-z0-9][A-Z]+[A-Z]+').hasMatch(pass)) {
          return 'Password cannot have two or more consecutive capital letters!';
        }*/
    if (RegExp(r'[A-Z]+[A-Z]+[A-Z]+').hasMatch(pass)) {
      return 'Password cannot have three or more consecutive capital letters!';
    }
    /*if (RegExp(r'[!@#$%^&*,.?:|<>+-~]+[!@#$%^&*,.?:|<>+-~]')
            .hasMatch(pass)) {
          return 'Password cannot have two or more consecutive special characters!';
        }*/
    if (RegExp(
            r'[!@#$%^&*(),.?":{}|<>]+[!@#$%^&*(),.?":{}|<>]+[!@#$%^&*(),.?":{}|<>]+')
        .hasMatch(pass)) {
      return 'Password cannot have three consecutive special characters!';
    }
    //two or more
    //consecutive anything

    // finally the length of string
    if (size != 10) {
      return 'Password can\'t be $size characters!';
    }
    return null;
  }
}
