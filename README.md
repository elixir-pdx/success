__elixir-pdx/success__

---
#Overview

This project is designed to be an introduction to [types and typespecs](http://elixir-lang.org/docs/stable/elixir/typespecs.html) in Elixir.

The type-checking system for Elixir is inherited from Erlang and is based on a concept called "Success Types".  For more information on the nuts and bolts behind success typing you can [go here](http://user.it.uu.se/~kostis/Papers/succ_types.pdf) (PDF).

The challenge for this session is to instrument the `uuid` dependency required by the project and catch the errors in the way this project uses the `uuid` functionality at compile-time (well... at dialyzer-time) instead of at runtime.

**Prerequisites:**
* [elixir](http://elixir-lang.org/install.html)

---

#Getting Started

Clone this repository.
	
	$ cd ~/Repositories
	$ git clone https://github.com/elixir-pdx/success.git
	$ cd success
    
Dialyxer has already been added to this projects dependencies, but we still need to do a bit of setup to be able to use it.

    $ mix deps.get
    $ mix deps.compile
    $ mix dialyzer.plt

Now we should be able to run `mix dialyzer` on our project at any time to have dialyzer check our code.

#Hacking

You may find it helpful to play with your code in Elixir's `iex` interactive console. If you want to do that and autoload the console session with your code then you can do the following from the project root:

	$ iex -S mix

That will make sure that you're running `iex` inside your project's build environment.

#Building

To compile your project simply run this from the project root:

	$ mix compile

#Testing

To run dialyzer checks on this project you can run this from the project root:

    $ mix dialyzer

To run the test suite defined in `test/success_test.exs` then run this from the project root:

	$ mix test

