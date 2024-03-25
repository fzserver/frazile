import 'dart:math';

// Calculate the expected percentage outcome
double expected(int Rb, int Ra) {
  return 1 / (1 + (pow(10, (Rb - Ra) / 400)));
}

// Calculate the new winner score
double win(double score, double expected, {double k = 24}) {
  return score + k * (1 - expected);
}

// Calculate the new loser score
double loss(double score, double expected, {double k = 24}) {
  return score + k * (0 - expected);
}

// Calculate the new download score
double download(double score, double expected, int downloads) {
  return score + downloads * (1 - expected);
}
