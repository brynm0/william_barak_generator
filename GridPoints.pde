class GridPoints {
  PVector gridPoints[];
  int gridWidth, gridHeight;
  PImage baseImage;
  int offSet;

  GridPoints(int _gridWidth, int _gridHeight, PImage _baseImage, int _offSet) {
    gridWidth = _gridWidth;
    gridHeight = _gridHeight;
    baseImage = _baseImage;
    offSet = _offSet;
  }

  void populateGrid() {
    for (int x = 0; x < (gridWidth / offSet); x++) {
      for (int y = 0; y < (gridHeight / offSet); y++) {
        int loc = x + y*gridWidth;
        PVector temp = new PVector(x + offSet, y + offSet);
        gridPoints[loc] = temp;
  
      }
    }
  }
  void lookUp() {
    ;
  }
}