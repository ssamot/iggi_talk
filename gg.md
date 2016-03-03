% Games \
  and \
  Competitions
% Spyros Samothrakis \
  Research Fellow, IADS \
  Univerisity of Essex 
% March 4, 2016






# Games as a research tool

\usebackgroundtemplate{

}

## Games as a research tool 

* Almost every Game AI paper begins with something along these lines: 
* "Games have/can be used for Artificial Intelligence Research"
    * Because games are:
        * Fun (?!)
        * Provide nice abstractions of real world problems
        * Are universally accepted
        * Easy to compare with other researchers' AIs/agents

* Let's have an overview of the modern history of game research

## Zermelo
\columnsbegin
\column{.6\textwidth}


* First important result by \emph{Ernst Zermelo, 1913}
* Uses the game of chess as an abstraction 
* Kickstarts game theory - of course no real computers
* "Given that a player (say White) is in `a winning position', how long does it take for White to force a win?"
* Wikipedia cites the correct papers, has the definitions are mixed-up with ... 

\column{.5\textwidth}

\includegraphics[width = 0.8\textwidth]{figures/Ernst_Zermelo_1900s.jpg}

\columnsend


## Von Neumann 
\columnsbegin
\column{.6\textwidth}


* Modern tools actually invented in \emph{John von Neumann, 1944} or possibly \emph{1928}
* Backwards Induction
* You must have heard it as "min-max" - again, no real computers at the time
* Poker and bluffing are discussed as well

\column{.5\textwidth}

\includegraphics[width = 0.8\textwidth]{figures/JohnvonNeumann-LosAlamos.jpeg}

\columnsend


## Turing

\columnsbegin
\column{.6\textwidth}


* Most modern additions to min-max pioneered by \emph{Alan Turing, 1953} 
* Learning, look-aheads, evaluation functions
* No fast computers at the time
* But the potential was well understood

\column{.5\textwidth}

\includegraphics[width = 0.8\textwidth]{figures/turing.jpeg}

\columnsend


## From theory to practice

* From this point onwards, there was a race
* Fundamentally asking the question
    * "Can we use computers to actually do what was conceptualised in theory"
    * i.e., can we create super-human machines?
        * Chess - \emph{IBM Deep Blue, 1996}
        * Head's Up Holdem (Poker) \emph{University of Alberta, 2015}
        * Go \emph{Deep Mind, soon} - apparently Japanese competitor? 
* 50-60 years between theoretical breakthroughs and actual implementations


## Where did all this research get us? 

* Most classic games will be/are solved
* But what does it mean for Artificial Intelligence?
    * Narrow approaches for building narrow systems
          * Chess
    * General approaches for building narrow systems
          * Backgammon, Poker, \emph{Maybe} GO 
    * \emph{ narrow approaches for building general systems}
          * Nothing


# Narrow competitions

## Enter competitions
* Implicitly one can think of these "races to the top" as competitions
* Competitions are the most anti-intellectual thing you can do
    * Adolescent/childish idea of "I can run faster than you"
      * When it comes to algorithms, it's mostly "My dad is stronger than your dad"
* But there is value
* You need some way to measure progress
    * The debate about which algorithm has better qualities can go on forever
    * At least we have some measurement of quality


## Some modern video game AI competitions

* Pacman
    * \url{https://www.youtube.com/watch?v=Zo0YujjX1PI}
* Tron (two-player!)
    * \url{https://www.youtube.com/watch?v=Jyys22xoWDI}
* Simulated Car Racing
    * \url{https://www.youtube.com/watch?v=aZqswgdsNic}
* Mario AI  
    * \url{https://www.youtube.com/watch?v=DlkMs4ZHHr8}
* Starcraft
    * \url{https://www.youtube.com/watch?v=S7LgwN5tIng}
* There are others....

## Some modern AI competitions (Narrow AI)

\includegraphics[width = 1.0\textwidth]{figures/narrow.png}
 
## Too narrow

* You need to develop one agent for each game
* Each agent would have its own model, heuristics etc
* The methods involved in agent creation can be a "dump" of the programmer's expertise
* Hence the "narrow methods for narrow systems"
* Some competitors go in with general methods, but it's up to them


## State of the art in game AI

* Some form of short-horizon local dataset (MCTS, A*) 
* Coupled with premature stopping (a value function)
* Some ability to do fast, guided lookaheads (a pre-learned policy)
* System seeded from real human plays
* Heavy use of reinforcement learning, machine learning (e.g., neural networks)

# General competitions


## General Game Playing

* As a response to this perceived "narrowness", the general game competition was born
    * \url{http://games.stanford.edu/}, 2005
* There is a coursera course about this:
    * \url{https://www.coursera.org/course/ggp} 
* Two-player board-like games where agents get to compete against each other
* Agents don't know the games a-priori
* But they are given the \emph{model} at the beginning of each game

## General Video Game Playing Competition (I)
* But how about video games? 
* The general video game competition (GVG-AI)
* Lunched some years ago
    * \url{http://gvgai.net/}
* Let's see some videos: 
    * \url{https://www.youtube.com/watch?v=AMsk28dXA3A&list=PLe89c3ir1UJcgr04LxvD09UVR93GIXMws}


## General Video Game Playing Competition (II)

\includegraphics[width = 1.0\textwidth]{figures/general.png}

## General Video Game Playing Competition (III)

* Agents are given a model!
* 3 Game Sets, 10 games each, 5 levels per game
* Training Set: 10 games distributed with the framework
* Validation Set: 10 games, unknown to the participants
* Test Set: 10 games, unknown, and only executed in once
* Very similar to a machine learning competition setup


## General Video Game Playing Competition (IV)

* GVGAI 2014 Competition:
    * 23 entries
    * Winner: Adrien Couetoux (51.2%; OLETS) [Perez et al., 2015]

* GVGAI 2015 Competition:
    * ACM GECCO 2015 (July 2015)
        * 60 entries
        * Winner: YOLOBOT (63.8%; MCTS, BFS, Sprite Targeting Heuristic)
    * IEEE CIG 2015 (August 2015)
        * 77 entries
        * Winner: Return42 (35.8%; GA with heuristic, random walks, A*)
    * IEEE CEEC 2015 (September 2015)
        * 77 entries
        * Winner YBCriber (39.2%; Iterative Widening, Danger Avoidance)
    * 2015 GVGAI Winner: YOLOBOT (45.8% victories)

## The problem with the model

* I don't think having a model is "general"
* Better than one-game competitions of course
    * But both GG competitions use a model
* Atari 2600 games (no formal competition) can be used without a model
    * Used by Google as a benchmark 

\includegraphics[width = 1.0\textwidth]{figures/atari.png}




## Upcoming additions 

* Procedural content generation
    * "Can I create games that humans would like, given that a human behaves a bit like agent X"
    * ...or just generate something that looks good to humans?
    * New track for GVG-AI soonish!
* Two-player games
    * Two player games are super-addictive to competitors
    * A bit harder to setup, Elo scores etc. 
    * Most games are two player games anyway
* A new "learning" track for GVG-AI 
    * Later this year
    * Agents will be given training time and three levels to learn on
    * Testing will be on two different levels per game


## What about believable characters

* Important for the gaming industry
* "Turing test" like competitions
    * Unreal Tournament  
    * Real human playing in the game
    * Human judges must find if opposing players are bots or humans
* Might also need them in order to procedurally generate 


# The future of competitions

## Characteristics of a good competition
* Competitions can be thought of as a formalisation of "Games as Benchmarks"
  * Require good looking website
  * Instant gratification
      * No human in the evaluation loop
      * Machines should be able
  * A "competition slave"
      * Also called "organiser"!


## Text
* Role Playing Games
* ...or text adventure games
* Allow agents to act on words as they are received
* Some new benchmarks (from Facebook) but no competitions
    * Neural Turing Machine, Memory Networks etc
* Maybe we should do more on this? 

## Where to from here? 

* Need better benchmarks
* Current competitions only scratch the surface of creating generally intelligent agents
* We need competition tailored towards general systems 
    * \emph{Without getting into the trap of "General approaches for narrow systems"}
    * Not sure how we can do this at the moment
    * Problems with learning systems (e.g. catastrophic forgetting, transfer learning)
    * Move to more than two agents


## Thank you!

* Some of the images from Diego Perez/Julian Togelius et.al. talk
    * \url{http://www.diego-perez.net/papers/aaai2016_gvgai.pdf}
* Some ideas from Mile Brundage excellent blog post
    * \url{http://www.milesbrundage.com/blog-posts/alphago-and-ai-progress}
* Wikipedia articles on the subject could do with a bit of help, volunteers? 
    






