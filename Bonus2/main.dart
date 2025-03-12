import 'dart:io';

void main() {
  clear();
  List<int> grades = [1, 2, 3, 4, 5, 6];
  analyzeGrades(grades);
  print('');
}

// Gibt alle Noten nacheinander aus
// z.B.: Note 1: 2, Note 2: 1, Note 3: 3
void printGrades(List<int> grades) {
  String str = '';
  for (int i = 0; i < grades.length; i++) {
    str += 'Note $i: ${grades[i]}';
    if (i < grades.length - 1) {
      str += ', ';
    }
  }
  print(str);
}

// Berechnet den Durchschnitt und gibt aus:
// "Der Durchschnitt ist: 2.0"
void calculateAndPrintAverage(List<int> grades) {
  double average = 0;
  for (int grade in grades) {
    average += grade;
  }
  average /= grades.length;
  print('Der Durchschnitt ist: ${average.toStringAsFixed(1)}');
}

// Hauptfunktion:
void analyzeGrades(List<int> grades) {
  // Ruft beide Funktionen nacheinander auf
  printGrades(grades);
  calculateAndPrintAverage(grades);
}

void clear() {
  print(Process.runSync((Platform.isWindows ? "cls" : "clear"), [],
          runInShell: true)
      .stdout);
}
