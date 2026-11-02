Table drinks;
int count = 0;
int x = 50;
int y = 50;

void setup() {
  size(650, 650);
  drinks = loadTable("ProjectData1.csv", "header");
}

void draw() {
  if (count < countDrinks()) {
    ellipse(x, y, 40, 40);
    x = x + 60;
    if (x > 600) {
      x = 50;
      y = y + 60;
    }
    count = count + 1;
  }
}

int countDrinks() {
  return drinks.getRowCount();
}
