
//Timer class
class Timer {
  int oldtime;

  Timer() {
    oldtime = millis();
  } 

  float returnSeconds() {
    float s = ((millis() - oldtime) / 1000);
    return s;
  }
}

