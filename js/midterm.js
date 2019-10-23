let song;

let serial;
let latestData = "waiting for data";

function setup() {
  createCanvas(windowWidth, windowHeight);

  serial = new p5.SerialPort();

  serial.list();
  serial.open('COM3');

  serial.on('connected', serverConnected);

  serial.on('list', gotList);

  serial.on('data', gotData);

  serial.on('error', gotError);

  serial.on('open', gotOpen);

  serial.on('close', gotClose);

  slider = createSlider(0, 1023, (1023/2), 1);
}

function serverConnected() {
  print("Connected to Server");
}

function gotList(thelist) {
  print("List of Serial Ports:");

  for (let i = 0; i < thelist.length; i++) {
    print(i + " " + thelist[i]);
  }
}

function gotOpen() {
  print("Serial Port is Open");
}

function gotClose() {
  print("Serial Port is Closed");
  latestData = "Serial Port is Closed";
}

function gotError(theerror) {
  print(theerror);
}

function preload() {
  song = loadSound("");
}

function gotData() {
  let currentString = serial.readLine();
  let parts = currentString.split(",")
  trim(currentString);
  if (!currentString) return;
  console.log(currentString);
  latestData = currentString;
}

function draw() {
  song.play();

}
