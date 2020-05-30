#  CS193p Memorize

Extra Credit

We try to make Extra Credit be opportunities to expand on what you’ve learned this
week. Attempting at least some of these each week is highly recommended to get the
most out of this course. How much Extra Credit you earn depends on the scope of the
item in question.
If you choose to tackle an Extra Credit item, mark it in your code with comments so your
grader can find it.


## Lecture 1
- no assignment

## Lecture 2

###  assignment: 
- [x] Get the Memorize game working as demonstrated in lectures 1 and 2. Type in all the
code. Do not copy/paste from anywhere.
- [x] Currently the cards appear in a predictable order (the matches are always side-by-side,
making the game very easy). Shuffle the cards.
- [x] Our cards are currently arranged in a single row (we’ll fix that next week). That’s
making our cards really tall and skinny (especially in portrait) which doesn’t look very
good. Force each card to have a width to height ratio of 2:3 (this will result in empty
space above and/or below your cards, which is fine).
- [x] Have your game start up with a random number of pairs of cards between 2 pairs
and 5 pairs.
- [x] When your game randomly shows 5 pairs, the font we are using for the emoji will be
too large (in portrait) and will start to get clipped. Have the font adjust in the 5 pair
case (only) to use a smaller font than .largeTitle. Continue to use .largeTitle
when there are 4 or fewer pairs in the game.
-[x]  Your UI should work in portrait or landscape on any iOS device. In landscape your
cards will be larger (but still 2:3 aspect ratio). This probably will not require any work
on your part (that’s part of the power of SwiftUI), but be sure to experiment with
running on different simulators in Xcode to be sure.

Extra Credit

- [x] Have the emoji on your cards be randomly chosen from a larger set of emoji (at least
a dozen). In other words, don’t always use the same five emoji in every game.


## Lecture 3
- no assignment

## Lecture 4
- [x]  Get the Memorize game working as demonstrated in lectures 1 through 4. Type in all
the code. Do not copy/paste from anywhere.
- [x] Your game should still shuffle the cards.
- [x] Architect the concept of a “theme” into your game. A theme consists of a name for
the theme, a set of emoji to use, a number of cards to show (which, for at least one,
but not all themes, should be random), and an appropriate color to use to draw (e.g.
orange would be appropriate for a Halloween theme).
- [x] Support at least 6 different themes in your game.
- [x] A new theme should be able to be added to your game with a single line of code.
- [x] Add a “New Game” button to your UI which begins a brand new game. This new
game should have a randomly chosen theme. You can put this button anywhere you
think looks best in your UI.
- [x] Show the theme’s name somewhere in your UI.
- [x]  Keep score in your game by giving 2 points for every match and penalizing 1 point for
every previously seen card that is involved in a mismatch.
- [x] Display the score in your UI in whatever way you think looks best.
- [x] Your UI should work in portrait or landscape on any iOS device. The cards can have
any aspect ratio you’d like. This probably will not require any work on your part
(that’s part of the power of SwiftUI), but be sure to continue to experiment with
running on different simulators in Xcode to be sure. 

Extra Credit
 - [x] Support a gradient as the “color” for a theme. Hint: fill() can take a gradient as its
argument rather than a color.
- [ ] Modify the scoring system to give more points for choosing cards more quickly. For
example, maybe you get max(10 - (number of seconds since last card was chosen), 1) x
(the number of points you would have otherwise earned or been penalized with).
(This is just an example, be creative!). You will definitely want to familiarize yourself
with the Date struct.
