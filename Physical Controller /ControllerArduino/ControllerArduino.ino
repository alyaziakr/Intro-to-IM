

int FSRpin = A0;
int sensorValue =0;

void setup() {
  Serial.begin(9600);
  pinMode(6, INPUT);

}

void loop() {
  sensorValue = analogRead(FSRpin);
  delay(50);
 // Serial.print("sensor = ");
  Serial.println(sensorValue);

}
