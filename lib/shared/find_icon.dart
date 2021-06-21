String findIcon(String condition) {
  switch (condition) {
    case "clear_day":
      return "assets/imgs/encolarado.svg";
    case "cloud":
      return "assets/imgs/nublado.svg";
    case "rain":
    case "storm":
      return "assets/imgs/chuva_forte.svg";
    case "cloudly_day ":
      return "assets/imgs/sol_entre_nuvens.svg";
    default:
      return "assets/imgs/chuva_fraca.svg";
  }
}
