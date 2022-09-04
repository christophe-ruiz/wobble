class Server {
  static bool prod = false;
  static String endpoint = prod ? "https://wobbleapp.herokuapp.com/" : "http://localhost:4124/";
}

