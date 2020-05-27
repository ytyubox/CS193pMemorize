#  CS193p Memorize

## Lecture 2

###  assignment: 
- [x] Get the Memorize game working as demonstrated in lectures 1 and 2. Type in all the
code. Do not copy/paste from anywhere.
- [x] Currently the cards appear in a predictable order (the matches are always side-by-side,
making the game very easy). Shuffle the cards.
- [ ] Our cards are currently arranged in a single row (we’ll fix that next week). That’s
making our cards really tall and skinny (especially in portrait) which doesn’t look very
good. Force each card to have a width to height ratio of 2:3 (this will result in empty
space above and/or below your cards, which is fine).
- [ ] Have your game start up with a random number of pairs of cards between 2 pairs
and 5 pairs.
- [ ] When your game randomly shows 5 pairs, the font we are using for the emoji will be
too large (in portrait) and will start to get clipped. Have the font adjust in the 5 pair
case (only) to use a smaller font than .largeTitle. Continue to use .largeTitle
when there are 4 or fewer pairs in the game.
-[ ]  Your UI should work in portrait or landscape on any iOS device. In landscape your
cards will be larger (but still 2:3 aspect ratio). This probably will not require any work
on your part (that’s part of the power of SwiftUI), but be sure to experiment with
running on different simulators in Xcode to be sure.

Extra Credit
We try to make Extra Credit be opportunities to expand on what you’ve learned this
week. Attempting at least some of these each week is highly recommended to get the
most out of this course. How much Extra Credit you earn depends on the scope of the
item in question.
If you choose to tackle an Extra Credit item, mark it in your code with comments so your
grader can find it.
This week there’s only one Extra Credit item, sorry! If we think of some more this week,
we’ll post them on the class forums.
1. Have the emoji on your cards be randomly chosen from a larger set of emoji (at least
a dozen). In other words, don’t always use the same five emoji in every game.
