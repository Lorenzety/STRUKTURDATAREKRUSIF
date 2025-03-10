void main() {
  int barisan = 5;
  for (int i = 0; i < barisan; i++) {
    print("barisan ${i + 1} = ${" " * (barisan - i)}${List.generate(i + 1, (j) => pascal(i, j)).join(" ")}");
  }
}


int pascal(int baris, int kolom) => (kolom == 0 || kolom == baris) ? 1 : pascal(baris - 1, kolom - 1) + pascal(baris - 1, kolom);


