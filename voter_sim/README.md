# Voter Simulation

Create a REPL-driven voting simulation program.

## Overview

You are going to build a program that allows a user to create a directory of politicians and voters. Users will be able to Create, List, Update and Delete both voters and politicians from the directory.

This is a common set of behavior, and collectively are referred to as CRUD actions.

Voters and Politicians are both People with names. Voters however, have a _political affliliation_ of either Liberal, Conservative, Tea Party, Socialist, or Neutral, while politicians have a _party affiliation_ either Democrat or Republican.

Once the program starts, you should be greeted with a "main menu" that allows you to perform all the CRUD actions on either voter or politicians: (C )reate, (L)ist, (U)pdate, (D)elete.

This is a large project, but it would be _significantly_ more complex to solve without OOP. This is a great opportunity to recognize the value OOP.

> **Tip!** Tests and TDD may help you manage the complexity of this large project.

> **Important!** Read through this entire document! Especially take advantage of the Getting Started section after the project description.

## Outline

Your game should begin with a welcome message followed by a series of questions. The following examples are just suggestions. Rewrite these questions however you'd like. Just be sure to maintain the same outline.

### Main Menu

```sh
What would you like to do?
(C)reate, (L)ist, (U)pdate, or (D)elete
```

### Create

When I type `C`:

```sh
What would you like to create?
(P)olitician or (V)oter
```

#### Create Politician

When I type `P`:

```sh
Name?
```
Allow the user to input any name.

```sh
Party?
(D)emocrat or (R)epublican
```
Then create a `Politician` with the collected data.

#### Create Voter

If instead I type `V`:

```sh
Name?
```
Allow the user to input any name.

```sh
Politics?
(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral
```

Then create a `Voter` with the collected input.

Return to the main menu when you're done.

> **Tip!** When asking a user for input, use abbreviated shortcuts when possible and if they make sense. Here, for example, we suggest allowing users to enter `C` instead of typing out `Create`. Not only does it reduce the likelihood of mistakes, but it also makes the simulation faster, both for your users and for your own testing.

### List

When I type `L`, display a list of all the created characters.

Example:

```sh
* Politician, John Doe, Democrat
* Voter, Jamie Fox, Neutral
```

### Update

When I type `U`:

```sh
Who would you like to update?
John Doe

# If the name matches a known person
New name?

# If that person is a Politician
New Party?

# If that person is just a Voter
New Politics?
```

> **Tip!** After most of these actions, you need to return to your main menu. You may use a loop, but if you use classes and methods correctly, you should be able to _control the flow_ by simply calling a `main_menu` method instead.

### Delete

When I type `D`, I should be able to delete a politician or a voter.
> **Tip!** Show a list to the user before deleting.
```sh
Who would you like to delete?
John Doe

# If the name matches a known person
Are you sure?
(Y) es

# It should delete that person.
```

## Getting Started

There are _many_ possible solutions to this problem. We _recommend_ modeling this project using `class`es. If you decide to use OOP techniques, the following are just _suggestions_.

### Characters

There are two _types_ of people in this simulation: politicians and voters. Any time you use the word "type" to describe a feature, that's your coder conscience hinting that you should be modeling each of those types with `class`es. In older versions of Ruby, the now deprecated `type` method was (almost) synonymous with `class`.

So a good start to this program is to define a `Voter` class and a `Politician` class.

There are certain features that `Voter`s and `Politician`s share, like the ability of having a name. Maybe they should be _inherited_?

When deciding whether or not to use inheritance, try to describe the relationship between the two classes. Are you using the phrases "is a" or "is a kind of"? That's your coder conscience hinting that an inheritance relationship is probably appropriate. In fact, Ruby has methods named `is_a?` and `kind_of?` for confirming these types of relationships between classes.

#### Voters

`Voter`s need to remember their:

- `name`
- `politics` (Liberal, Conservative, Tea Party, Socialist, or Neutral)

These _attributes_ should be stored somewhere in the `class`. Are they methods or instance variables?

To help you decide, try to put the feature into words.

Are you using phrases like "has a", "has one", "has many", or "contains"? That's your coder conscience telling you an attribute or instance variable is appropriate.

Are you instead using phrases like "can", "has the ability to", or "is capable of"? That's a hint you should be representing that ability with a method.


#### Politician

`Politician`s need to remember their:

- `name`
- `party` (Democrat or Republican).

### The World

Characters don't exist in a vacuum. They need a place to exist and interact with other characters.

You can't create a chess game without modeling the board. Similarly, you can't run a voting simulation without modeling the world: the country, city, district, etc.

Your world `class` stores all the characters. When the characters interact with each other, they meet each other in this world you've created for them.

The world needs to keep track of:

1. All the `Voter's`
1. All the `Politician's`

The world should be able to contain the characters.

To make testing your simulation easier, try saving the user interaction (`gets`ing input) for the end. Just plug all the data directly into your classes first, then replace all the _hard-coded_ `"strings"` with `gets.chomp`.

Another useful technique for making your code simpler is to hide long `String`s inside a `module`. Instead of

```ruby
puts "Who would you like to update?"
```

you can use

```ruby
require './questions.rb'

puts Questions.who_to_update
```
A more advanced technique is to create a separate class to handle the interaction with the world. This new `WorldUI` would have to contain:

1. A `@world`, which the UI class uses to interact with lists of `Voter`s and `Politician`s.
2. All the prompts that request data to send into the `@world`.

## Organization

Organize the files for your project however you'd like. We recommend dedicating a single `.rb` file to each `class`. The "world class" should be the only place using `require` to pull every character `class` into the world.

### Code Clarity Tips
- Your code should be DRY
- Your code should be expressive and easy for another developer to understand.
- Significant refactoring should have taken place.
