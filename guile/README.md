* SDL2 and Cairo

Finally got cairo to draw onto SDL using render and texture . 

guile scheme code directories 
=============================

* Source code

+ pixelformat 

  contains some useful helper utilities such as SDL_Surface getting w (width) and h (height) and pitch 
  from a pointer is so much easier in C than through guile scheme using bytevectors
   
+ graphics
  
  graphics/sdl2.scm
  
  sdl2 contains all required foriegn function interface code to run what would be an easy C program in scheme
  
  
