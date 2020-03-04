# snap_game

## Approach

My initial approach was to create a Card class where the suit and the number of the Card would be chosen. 

Then using instances of this Card class I would run a game of Snap using a SnapGame class. Each new game is a new instance of the SnapGame class. Each new card in the game is a new instance of the Card class. 

Different parts of the game are in different instance methods of SnapGame, such as the introduction, the first card and the loop with the conditionals after the first card

If I had time the next step would be to refactor the tests so they can all work on one cycle of the game. 

## Instructions to Run

Clone this repository

To run the demonstration, run:
```
$ cd snap_game
$ ruby snap_game.rb
```


To run tests: 
```
$ bundle install
$ bundle exec rspec 
```
This will then cycle through the game a few times and then output the test results. These games can be ended prematurely by pressing n, as long as there have been at least three cards played in every cycle of the game the tests will not be affected. 
