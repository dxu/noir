<p align="center">
  noir
</p>

## Dependencies

Github:
1. Sign up for Github
2. Add your ssh key: https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
3. Clone this repository onto your desktop `git clone git@github.com:dxu/noir.git`

To develop noir, you will need a few pre-requisite dependencies:

**[Yarn](https://yarnpkg.com/en/docs/install#mac-stable)** - Used as a task runner and watcher to automate `picotool build`

**[Python 3](https://realpython.com/installing-python/)** - A requirement for `picotool` to function

## Usage

pico-starter takes your `src/` directory, and rebuilds the output `.p8` file (default name `cart.p8`).

### Setup

- Before doing anything else, make sure you have installed the necessary **Dependencies** listed above.
- Run `yarn` in the root directory to fetch the external packages used.

### Rebuild your cart

- `yarn run build` will trigger a rebuild for your cart.
  - This looks at the `src/root.lua` file, and outputs your cart in the root directory (named `cart.p8` by default).

### Automated rebuilds

- `yarn run watch` will watch the `src/` directory and rebuild your cart if you make changes while developing.

### Rename your cart

- If you would like to rename your cart, simply rename the output file!
- Note: pico-starter looks for a single `.p8` file in its root directory. Having more than one will cause the build commands to fail.

### Load your cart

- At this time, `pico-starter` does not decide how you load your cart.
- Some potential options could be:
  - Clone this repository directly into your carts folder
  - Hard link your `.p8` into your carts folder
    - `ln -s noir.p8 CART_DIRECTORY`. My cart directory is located at `/Users/dxu/Library/Application Support/pico-8`
  - Manually (or automatically) copy it yourself
-n Once you've done one of the above, you should be able to start up PICO8 and run the build cart! If you've hard-linked the file, then it will automatically pick up the changes if you run `yarn watch`

# Code?

The current state of the code is extremely simple. There are three conceptual objects in the engine:

1. "World"'s
2. "Scene"'s
3. "Ent"'s (short for entities

- Worlds represent the entirety of the game. This is where game-specific global variables should go
- Scenes represent a single "scene" that is loaded of the world.
- Entities represent a single object that is loaded within the scene.

At one time, a world will have a single "scene" that is loaded.

On each game loop, the world object runs through its currently loaded scene and runs its update method and draw method. In the scene's update and draw methods, it runs through the update and draw methods of every single entity it contains, and then runs through its own update and draw methods.

In the game itself, this translates to:
- A single World object
- Levels (which are implementations of a Scene)
- Player (which is an implementation of an Ent)

# The Current State of the World
- `world.p8` contains the world object.
- `level.p8` contains a level object, which implements a scene object. It is loaded by the World object in `root.p8`. The 'level' contains a gravity
- `player.p8` contains the main player object, which implements the ent object. the player object's update method handles the movement left and right, and has a notion of velocity and acceleration.

