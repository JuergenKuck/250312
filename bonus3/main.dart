import 'dart:io';
import 'dart:math';

void main() {
  clear();
  Random random = Random();
  List<int> numbers = List.generate(500, (index) => random.nextInt(21) - 10);
  analyzeNumbers(numbers);

  print('');
}

// Implementiere folgende Funktionen:
void findAndPrintExtreme(List<int> numbers) {
  // Findet und gibt kleinste und größte Zahl aus
  // Zeigt auch deren Position in der Liste
  int minVal = 9999999999; // Setze auf sehr hohe Zahl
  int maxVal = -9999999999; // Setze auf sehr kleine Zahl
  int minPos = -1;
  int maxPos = -1;
  for (int number in numbers) {
    if (number < minVal) {
      minVal = number;
      minPos = numbers.indexOf(number);
    }
    if (number > maxVal) {
      maxVal = number;
      maxPos = numbers.indexOf(number);
    }
  }
  print('Kleinste Zahl: $minVal (AN Position: $minPos)');
  print('Größte Zahl: $maxVal (AN Position: $maxPos)');
}

void printNumberTypes(List<int> numbers) {
  // Zählt und gibt aus:
  // - Wie viele gerade/ungerade Zahlen
  // - Wie viele positive/negative Zahlen
  int even = 0;
  int odd = 0;
  int positive = 0;
  int negative = 0;
  for (int number in numbers) {
    if (number.isEven) {
      even++;
    } else {
      odd++;
    }
    if (number > 0) {
      positive++;
    } else {
      negative++;
    }
  }
  print('Anzahl gerade Zahlen  : $even, Anzahl ungerade Zahlen: $odd');
  print('Anzahl positive Zahlen: $positive, Anzahl negative Zahlen: $negative');
}

void printDistribution(List<int> numbers) {
  // Gibt eine einfache Häufigkeitsverteilung aus
  // z.B. wie oft kommt jede Zahl vor
  print('Häufigkeitsverteilung:');

  List<int> uniqueNumbers = [];
  for (int number in numbers) {
    if (!uniqueNumbers.contains(number)) {
      uniqueNumbers.add(number);
    }
  }
  uniqueNumbers.sort();

  String header = '|';
  String values = '|';
  for (int uniqueNumber in uniqueNumbers) {
    int count = 0;
    header += uniqueNumber.toString().padLeft(3) + ' | ';
    for (int number in numbers) {
      if (number == uniqueNumber) {
        count++;
      }
    }
    values += count.toString().padLeft(3) + ' | ';
  }
  print(header);
  print(values);
}

// Hauptfunktion:
void analyzeNumbers(List<int> numbers) {
  // Ruft alle Funktionen der Reihe nach auf
  findAndPrintExtreme(numbers);
  print('');
  printNumberTypes(numbers);
  print('');
  printDistribution(numbers);
  print('');

  // Gibt eine übersichtliche Gesamtanalyse

  print("""
    Zusammenfassung:
    
    Es wurden die Extremwerte, die Anzahl der geraden und ungeraden Zahlen, 
    die Anzahl der positiven und negativen Zahlen und die Häufigkeitsverteilung
    der Zahlen, aus einer übergebenden List<int> berechnet. 

  """);
}

void clear() {
  print(Process.runSync((Platform.isWindows ? "cls" : "clear"), [],
          runInShell: true)
      .stdout);
}
