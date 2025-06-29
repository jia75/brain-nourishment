# Brain Nourishment

![Static Badge](https://img.shields.io/badge/License-GPL_2-red) ![Static Badge](https://img.shields.io/badge/No-AI-green)

Brain Nourishment is a series of programs that end up with "Yelp Review Emulator," a text-based RPG written in about a quarter million Brainf\*ck characters. Additionally, it gets compiled via a self-hosted Brainf\*ck compiler.

Also, here is a list of the various files of interest:
- bf/compiler.bf --- The BF code for the self-hosted compiler. Pain-stakingly written. By hand.
- bf/full-story.bf --- BF code that contains the RPG (To play, compile with `compile.sh`)
- bf-version.c --- C code containing the intermediate language representation of the self-hosted compiler
- compile.sh --- A shell script that compiles a BF program using the self-hosted compiler `compile` (you have to recompile that from bf/compiler.bf...)
- storyboard.c --- A C program that translates an RPG story in a weird format into a BF program
- main.c --- A C compiler for BF

Also note that this program is offered under the terms and conditions that accompany the GNU Public License Version 2. If you need access to these terms, visit the GNU Website or just ask me.
