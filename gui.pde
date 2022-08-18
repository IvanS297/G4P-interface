// gui.pde
public void button1_click1(GButton source, GEvent event) {
  println("button1 - GButton >> GEvent." + event + "@" + millis());
  col = color(random(0, 360), 255, 255);
}
public void textarea1_change1(GTextArea source, GEvent event) {
  println("textarea1 - GTextArea >> GEvent." + event + "@" + millis());
  text = source.getText();
}
public void slider1_change1(GSlider source, GEvent event) {
  println("slider1 - GSlider >> GEvent." + event + "@" + millis());
  D = source.getValueI();
}
public void slider2d1_change1(GSlider2D source, GEvent event) {
  println("slider2d1 - GSlider2D >> GEvent." + event + "@" + millis());
  x = source.getValueXI();
  y = source.getValueYI();
}
public void stick1_change1(GStick source, GEvent event) {
  println("stick1 - GStick >> GEvent." + event + "@" + millis());
}
public void knob1_turn1(GKnob source, GEvent event) {
  println("knob1 - GKnob >> GEvent." + event + "@" + millis());
  we = source.getValueI();
}
public void dropList1_click1(GDropList source, GEvent event) {
  //println("dropList1 - GDropList >> GEvent." + event + "@" + millis());
  println(source.getSelectedIndex());
}

public void createGUI() {
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  btn = new GButton(this, 20, 20, 80, 30);
  btn.setText("START");
  btn.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  btn.addEventHandler(this, "button1_click1");
  label1 = new GLabel(this, 200, 20, 80, 20);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("My label");
  label1.setOpaque(false);
  textarea1 = new GTextArea(this, 20, 70, 80, 50, G4P.SCROLLBARS_NONE);
  textarea1.setOpaque(true);
  textarea1.addEventHandler(this, "textarea1_change1");
  slider1 = new GSlider(this, 10, 130, 100, 70, 10.0);
  slider1.setShowValue(true);
  slider1.setShowLimits(true);
  slider1.setLimits(50.0, 10.0, 200.0);
  slider1.setNumberFormat(G4P.DECIMAL, 2);
  slider1.setOpaque(true);
  slider1.addEventHandler(this, "slider1_change1");
  slider2d1 = new GSlider2D(this, 20, 210, 80, 90);
  slider2d1.setLimitsX(0.5, 0.0, 480.0);
  slider2d1.setLimitsY(0.5, 0.0, 320.0);  
  slider2d1.setNumberFormat(G4P.DECIMAL, 2);
  slider2d1.setOpaque(true);
  slider2d1.addEventHandler(this, "slider2d1_change1");
  stick1 = new GStick(this, 120, 20, 60, 60);
  stick1.setMode(G4P.X4);
  stick1.setOpaque(false);
  stick1.addEventHandler(this, "stick1_change1");
  knob1 = new GKnob(this, 120, 90, 80, 80, 0.8);
  knob1.setTurnRange(110, 70);
  knob1.setTurnMode(GKnob.CTRL_HORIZONTAL);
  knob1.setSensitivity(1);
  knob1.setShowArcOnly(false);
  knob1.setOverArcOnly(false);
  knob1.setIncludeOverBezel(false);
  knob1.setShowTrack(true);
  knob1.setLimits(1.0, 0.0, 20.0);
  knob1.setShowTicks(true);
  knob1.setOpaque(false);
  knob1.addEventHandler(this, "knob_turn1");
  dropList1 = new GDropList(this, 120, 210, 90, 80, 3, 10);
  dropList1.setItems(loadStrings("list_915761"), 0);
  dropList1.addEventHandler(this, "dropList1_click1");
}

GButton btn;
GLabel label1;
GTextArea textarea1;
GSlider slider1;
GSlider2D slider2d1;
GStick stick1;
GKnob knob1;
GDropList dropList1;
