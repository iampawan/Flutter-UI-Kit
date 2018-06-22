class Login {
  String phonenumber;
  String otp;

  Login({this.phonenumber, this.otp});

  Map<String, dynamic> toJson() => {
        'phonenumber': phonenumber,
        'otp': otp,
      };
}
