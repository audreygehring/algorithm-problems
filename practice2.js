let numbers = [1, 6, -12, 11, -15, -2, 8, 2, 17];

let arrayOrder = (arr) => {
  let negative_array = [];
  let positive_array = [];

  for (var i = 0; i < arr.length; i++) {
    if (arr[i] < 0) {
      negative_array.push(arr[i]);
    } else {
      positive_array.push(arr[i]);
    }
  }
  let final = negative_array.sort((a, b) => a - b).concat(positive_array);
  return final;
};


let findString = (str, substr) => {
  if (str.includes(substr)) {
    return true;
  } else {
    return false;
  }
};

let palindrome = (str) => {
  let reversed = str.split('').reverse().join('');

  if (str === reversed) {
    return true;
  } else {
    return false;
  }
};
