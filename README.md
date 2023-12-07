# CSLP - Crystal Programming Language
### Our small presentation and tutorial for the CSLP class of 2023/2024
---

<p align="center">
    <img src="https://i.imgur.com/NzhRfGG.png" height="300px">
</p>

&nbsp;

[![All Contributors](https://img.shields.io/badge/Current%20Version-1.10.13-brightgreen.svg?style=for-the-badge)](http://makeapullrequest.com)
[![PRs Welcome](https://img.shields.io/badge/Latest%20Release-13%20October%202023-orange.svg?style=for-the-badge)](http://makeapullrequest.com)
[![PRs Welcome](https://img.shields.io/badge/Documentation-crystal%20lang%20org-blue.svg?style=for-the-badge)](http://makeapullrequest.com)

## Description
This page is dedicated to our one hour tutorial for the Crystal programming language.

Crystal is a multi-paradigm language designed with the intention of merging high-level heavy abstraction languages such as Python and Ruby with low-level performance oriented languages such as C and Rust.
The moto "Fast as C, slick as Ruby" was then born.

The syntax is not particularly close to any other language that we learnt in our course, but it is consice and humanly easy to read, being very simillar to Ruby.

Crystal exists since June 2011 and as since recieved multiple overhauls and updates to arrive at its current state.

Crystal supports automatic typing, garbage collection, macros, generic methods/operators and method overloading, as well has a built-in concurrency model for multi-threading applications.

## Documentation
Crystal's main documentation is provided inside their [website](https://crystal-lang.org). 

## Instalation:
#### Ubuntu, Debian, Fedora and Red Hat
```bash
curl -fsSL https://crystal-lang.org/install.sh | sudo bash
```

#### Arch
```bash
pacman -S crystal shards
```

> ***NOTE***
> If you don't find your linux distribution iin this file you can check all crystal supported linux distributions in [Crystal official website](https://crystal-lang.org/install/). 

## Simple code example:
This is a simple file structure example for prototyping:
```crystal
class Square
    #  Creates a new "Square" instance
    def initialize(@colour = "Green", @length = 1)
        raise "Length must be larger than 0!" if @length <= 0
    end

    #  Returns the current colour
    def getColour
        @colour
    end

    # Returns the current length
    def getLength
        @length
    end

    # Setter for the length variable
    def length=(new_length)
        raise "Length must be larger than 0!" if new_length <= 0
        @length = new_length
    end

    #  Prints the object's atributes to the COUT 
    def printOut
        puts "I'm a #{@colour} square with length #{@length}"
    end
end

x = 2023
puts "This is a prototype for a simple object based Crystal program!"
puts "Var x => #{x}"
puts ""

# Create a new Square instance with default values
default_square = Square.new
default_square.printOut

# Change the length using the setter
default_square.length = 5
default_square.printOut

# Create a new Square instance with custom values
custom_square = Square.new("Blue", 3)
custom_square.printOut

```

## Shards

Shards is the official package manager for the Crystal programming language. It simplifies the process of managing external dependencies and libraries in Crystal projects. With Shards, developers can easily include and use external code libraries in their applications, enhancing functionality and reducing the need to reinvent the wheel.

Shards utilizes a `shard.yml` file to defin project dependencies, making it straightforward for developers to specify the libraries and versions their project relies on. It also provides commands for fetching and managing dependencies, streamlining the process of integrating third-party code into Crystal projects.

By leveraging Shards, Crystal developers can efficiently build and maintain modular, scalable, and feature-rich applications, taking advantage of a vibrant ecosystem of community-contributed libraries and tools.




```bash
#  Execute the file with
crystal prototype.cr
```
---
This is a simple shard dependency file, that can be generated with the command:
```bash
shards init
```

```yml
name: Example
version: 0.1.0

authors:
    - name <email@example.com>

description: |
    Short description of the project

dependencies:
    amqp-client:
        github: cloudamqp/amqp-client.cr
    pg:
        github: will/crystal-pg
        version: "~> 0.5"

development_dependencies:
    webmock:
        github: manastech/webmock.cr

license: MIT
```
## Our Team ✨

Thanks goes to these wonderful people:

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://github.com/P-Ramos16"><img src="https://avatars0.githubusercontent.com/P-Ramos16?v=3" width="100px;" alt="Ramos"/><br /><sub><b>Pedro Ramos</b><br><i>107348</i></sub></a><hr><a href="https://github.com/P-Ramos16" title="Code">💻</a> <a href="https://github.com/codesandbox/codesandbox-client/commits?author=CompuIves" title="Tests">⚠️</a> <a href="#tool-CompuIves" title="Tools">🔧</a></td>
    <td align="center"><a href="https://github.com/Dan1m4D"><img src="https://avatars0.githubusercontent.com/Dan1m4D?v=3" width="100px;" alt="Madureira"/><br /><sub><b>Daniel Madureira</b><br><i>107603</i></sub></a><hr><a href="https://github.com/Dan1m4D" title="Code">💻</a><a href="#design-CompuIves" title="Design">🎨</a><a href="#blog-CompuIves" title="Blogposts">📝</a></td>
    <td align="center"><a href="https://github.com/Rafael-Kauati"><img src="https://avatars0.githubusercontent.com/Rafael-Kauati?v=3" width="100px;" alt="Kauati"/><br /><sub><b>Rafael Kauati</b><br><i>105925</i></sub></a><hr><a href="https://github.com/Rafael-Kauati" title="Code">💻</a><a href="#tool-MergeMaestro" title="Tools">🔀</a><a href="#tool-CompuIves" title="Tools">🔧</a></td>
  </tr>
</table>

<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->
