class Data {
  String firstName;
  String lastName;
  String email;
  String phone;
  String address;
  String city;
  Data({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.address,
    required this.city,
  });
}

List<Data> dataTableData = [
  Data(
      // fazley data

      firstName: "Fazley",
      lastName: "Rabby",
      email: 'mdrabbihossen.dev@gmail.com',
      phone: '+8801307767187',
      address: "Bhabanipur, Gazipur Sadar",
      city: 'Gazipur'),
  // hasinar data
  Data(
      firstName: "Hasina",
      lastName: "Akter",
      email: 'hasina8635@gmail.com',
      phone: '+8801881618620',
      address: "Mirpur, Dhaka",
      city: 'Dhaka'),
];


