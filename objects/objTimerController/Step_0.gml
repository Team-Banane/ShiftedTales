// Convert elapsed time to minutes and seconds
var minutes = floor(elapsedTime / 60);
var seconds = elapsedTime mod 60;

// Pad seconds with leading zeros
var paddedSeconds = padZero(seconds, 2);

// Format minutes and seconds as a string
global.timerString = string(minutes) + ":" + paddedSeconds;
