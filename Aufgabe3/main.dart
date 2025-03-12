import 'dart:io';

void main() {
  clear();
  reverseInitials('Jonny', 'Depp');
  reverseInitials('Tom', 'Cruise');
  reverseInitials('Juergen', 'Kuck');
}

void reverseInitials(String prename, String surname) {
  String pre = prename[prename.length - 1].toUpperCase() + '.';
  String sur = surname[surname.length - 1].toUpperCase() + '.';
  print('$pre$sur');
  print('');
}

void clear() {
  print(Process.runSync((Platform.isWindows ? "cls" : "clear"), [],
          runInShell: true)
      .stdout);
}
