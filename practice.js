var _ = require('underscore');

// function sayHello() {
//   console.log('Hello, World');
// }

// _.times(5, sayHello);
/*
You're given a vector of vectors of words, e.g.:
[['quick', 'lazy'], ['brown', 'black', 'grey'], ['fox', 'dog']].

Write a generalized function that prints all combinations of one word from the first vector, one word from the second vector, etc.
The solution may not use recursion.

NOTE: the number of vectors and number of elements within each vector may vary.
*/

let exampleArray = [['quick', 'lazy'], ['brown', 'black', 'grey'], ['fox', 'dog']];

let anotherExampleArray = [['brown', 'spotted', 'black'], ['pug', 'chihuahua', 'doberman', 'labrador'], ['puppy']];

let twoArrays = [["red"], ["parrot"]];

let finalExample = [['alone']];



let combinationGenerator = (array) => {
  if (array.length < 2) {
    console.log(array[0]);
  } else {
    console.log(
      array.reduce((accumulator, current) => (
        _.flatten(
          accumulator.map(
            x => current.map(
              y => x.concat(
                [` ${y}`]
            )
          )
        )
      ))
      )
    );
  }
};

combinationGenerator(exampleArray);
combinationGenerator(anotherExampleArray);
combinationGenerator(finalExample);

// start at innermost layer and figure it out before moving to next step
