
# Demos

alan kay smalltalk - or is that the language he suggests ?

for a character on screen 

some sort of idea how screen operates 

what sort of application are we looking at building ? a game ? a drawing application ?

what sort of problem are we looking at solving ? 



## positives 

- game1.scm 
 sdl2_image features sufficient to load a png to a texture then get some characters on screen + animation 

(X) png image from file

(X) color used as a mask for transparency

(X) scaling image

(X) rotation 

- tiny.scm

just proof concept guile ffi sdl +cairo 

- events.scm - get events mouse window keyboard 

## negatives 

debugging is non existant , not available 

ffi just crashes system 

doing simple pointer indirection is tricky and error prone , complex conversions usually require

dropping to C language

