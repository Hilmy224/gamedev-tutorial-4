
## Tutorial 4
Added:
+ New level by making a new tileset and using diffrent asset spritesheet
+  Reused the falling border and modfied to reset to beginning of level
+  Used a giant Sprite for background
+  Made a similar spawner for falling objects that spawns rigidbody Frogs with less gravity and only hits the player
+  A Saw Spawner Obstacle that spawns staticbody saws that move horizontally and only hits the player
+  Add a slime at the end of the platforming as the win conditon


Resource:
> https://csui-game-development.github.io/tutorials/tutorial-4/
> https://www.reddit.com/r/godot/comments/erwx6w/how_do_i_set_the_gravity_for_a_3d_rigidbody_from/

## Tutorial 6
Added:
+ Menu Screen With Play option that goes into the first level, and Select Stage/ Levels using Link buttons
+ In Select Stage Can select `Level 1` and `Level 2` or `back to menu` using Link buttons
+ Created A Game Over Screen with Quit to `quit to main menu` Option and `Retry` Option using Link buttons
+ Integrated Game overs for level 1 obstacles and level 2 obstacles by updating game logic script
+ Refactor win menu to be able to go back to `main menu` after completing level 2 using Link buttons

> Layout of `Gameover` , `Winscreen`, `MainMenu` used a combination of margin container , color react node, and Vbox and Hbox with a similar mindset of web front end.

Resource:
> https://csui-game-development.github.io/tutorials/tutorial-6/
> Font Daydream : https://www.instagram.com/doublegum_
> Font VCR_OSD_MONO_1.001: https://www.dafont.com/mrmanet.d5509
