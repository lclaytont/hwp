# Game On!

Let’s make a Ruby REPL game! We’ll be using everything you know about Ruby variables and flow control.

Here’s some sample code to get you going.

```ruby
puts "Welcome to Batman: Arkham Asylum!"
puts "What do you want to do?"
puts "Options: look around, smack a prisoner, run away"
option = gets.chomp
case option
when "look around"
    puts "You see a bunch of angry prisoners and the Joker!"
when "smack a prisoner"
    puts "Ouch! What did I ever do to you, man?"
when "run away"
    puts "Batman: \"Bats can't run.\""
else
    puts "A prisoner punches you in the face."
    puts "Prisoner: \"Quit messin' around.\""
end
```

`puts` some data to the user introducing your game and the situation. Then ask a question and provide some options. Using the `gets.chomp` method, collect some user input. Use Ruby flow control to output the result of those actions, including a fallback case for random input.

Project Requirements
1. Be creative (i.e. don’t do the sample Batman game).
1. Your game should have at least _3 steps_. Our sample Batman game has on step (of asking user input).
1. Some questions should depend on the response to previous questions (“Choose your own adventure” style)
1. Your code should not throw an error while running.
1. Push yourself out of your comfort zone to explore new methods and techniques. _This project will go on your portfolio. Push yourself._

## Scoring Rubric

### Formatting and Code Clarity

| Points | Why
| ------ | ---
| 5 | Code is formatted using proper indentation and white space. Appropriate and expressive naming conventions are used. Comments are used to explain tricky logic, when necessary. Any developer could jump straight into this code and know what's going on. |
| 4 | Code is mostly formatted using proper indentation and white space. Naming conventions are generally expressive. Comments are mostly used to explain tricky logic, when necessary. |
| 3 | Code makes an effort to use proper indentation and white space, but may have a few areas formatted improperly. Naming conventions may not be the most expressive, and parts of the code may be difficult to understand. |
| 2 | Parts of your code use proper indentation and whitespace, as well as expressive naming conventions. Large areas of your code, though, are ambiguous or formatted improperly. |
| 1 | Your code exists, and that's the most that can be said for it. Actually, it may not even exist. Take a long, hard look at some Ruby style guides. |

### Meets Project Requirements

| Points | Why
| ------ | ---
| 5 | All the project requirements were met, and you've clearly pushed yourself to get the most out of this learning experience by exploring new methods and techniques. |
| 4 | All the project requirements were met satisfactorily. |
| 3 | Most of the project requirements were met, but you may have missed a point of two. |
| 2 |Some of the project requirements were met. The project may have been turned in late. |
| 1 | There is nothing but cobwebs inside your program. Your game was turned in late, likely a few years late. |

### DRYness

| Points | Why
| ------ | ---
| 5 | Your code is so DRY it's starting to get flaky skin. And that's exactly what you wanted! |
| 4 | You've made a solid effort refactoring repeated code. Most of the code doesn't repeat itself, though there may still be some parts worth taking another look at. |
| 3 | You're definitely aware of the concept of DRYness, and that's a great start. There are major parts of your code that could benefit from a refactor, but hey! Done is better than perfect, after all. |
| 2 | An effort to refactor repeated code has been made, but it may not have been executed successfully. |
| 1 | Your code is so wet it makes Seattle look dry. |
