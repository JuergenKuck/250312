import 'dart:io';

void main() {
  clear();
  convertMinutesToTime(133);
  convertMinutesToTime(178);
  convertMinutesToTime(306);
  print('');
}

void convertMinutesToTime(int minutes) {
  int hours = minutes ~/ 60;
  int remainingMinutes = minutes % 60;
  print('$minutes Minuten -> $hours Stunden, $remainingMinutes Minuten');
}

void clear() {
  print(Process.runSync((Platform.isWindows ? "cls" : "clear"), [],
          runInShell: true)
      .stdout);
}
