


// Custom function to pad a number with leading zeros
padZero = function(num, width) {
    var numString = string(num);
    while (string_length(numString) < width) {
        numString = "0" + numString;
    }
    return numString;
}


// Initialize variables
timerStarted = false;
startTime = 0;
elapsedTime = 0;
