MPL
===

Mathematical Programming Language - A Domain-Specific Language for Discrete Mathematics.

Current Version: 0.1.0

This language has been implemented in Haskell, which lends itself easily to mathematical programming. The language has a syntax closer to the mathematical notation. This is achieved by applying the custom preprocessor, "preprocess.sh", while compiling with GHC (version >= 7.0). Additionally, the Domain-Specific Language (DSL) has a library which is installed by running the "Setup.hs" file. This library covers the areas of:

1. Mathematical Logic
2. Set Theory
3. Graph Theory
4. Number Theory
5. Linear Algebra
6. Combinatorics

Apart from aiding mathematicians and physicists, the developed DSL is useful in studying and describing objects and problems in branches of computer science, such as algorithms, programming languages, cryptography, automated theorem proving, and software development.

Installation
------------

Run these commands from the command line to install the DSL library:

$ cabal configure
$ cabal build
$ cabal install

The package requires the "random" package to be installed priorly. Install any other dependencies which may be displayed while configuring.

The Preprocessor is simply the file "preprocess.sh", which uses the file "script", so these can be added to PATH in order to be used for all programs.

Usage
-----

$ ghc -F -pgmF ./preprocess.sh file.hs

This generates "file.o", "file.i" and the executable "file". The executable can be run by typing:

$ ./file

The library can be used even in GHCi. For example to use logical implication (==>):

$ ghci
GHCi, version 7.6.3: http://www.haskell.org/ghc/  :? for help
Loading package ghc-prim ... linking ... done.
Loading package integer-gmp ... linking ... done.
Loading package base ... linking ... done.
Prelude> :m +MPL.Logic.Logic 
Prelude MPL.Logic.Logic> True ==> False
Loading package array-0.4.0.1 ... linking ... done.
Loading package deepseq-1.3.0.1 ... linking ... done.
Loading package old-locale-1.0.0.5 ... linking ... done.
Loading package time-1.4.0.1 ... linking ... done.
Loading package random-1.0.1.1 ... linking ... done.
Loading package MPL-0.1.0.0 ... linking ... done.
False
Prelude MPL.Logic.Logic>
