/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = 0 //  0 Morning, 1 Noon, 2 Night




-> seashore

== seashore ==
You are sitting on the beach. 

It is { advance_time() }

+ [Stroll down the beach] -> beach2
-> DONE

== beach2 ==
This is further down the beach.

It is { advance_time() }
* { time == 1 } [Pick up some seashells] -> shells
+ [Pick up the small beach shovel] -> underground_cavern
+ [Stroll back up the beach] -> seashore


== shells ==
You pick up the shells
-> beach2

== underground_cavern ==
You grab the small shovel and pull. The sand underneath you begins to sink pulling you down quickly. As you come to your senses you are below the ground peering out of a hole directly above you. You turn around and see a door covered in left over food scraps.
It is { advance_time() }
+ [Open the door] -> throne
+ [Go back] -> climb_up

== climb_up ==
You climb up the hole using the small shovel as an anchor. You feel like you are scaling Mount Everest.
It is { advance_time() }
+ [Final Push] -> beach2

== throne ==
As you open the door a you see a somewhat empty room with a golden throne at the back of the room.
It is { advance_time() }
+ {time == 2} [Walk closer] -> seagull_king
+ [Wait] -> wait
+ [Go back] -> underground_cavern

== seagull_king ==
As you begin walking closer to the throne you hear a piercing screach from what sounds like a bird. A gust of wind fills the room and giant seagull flies down and lands on the throne. The seagull is wearing a crown made out of plastic soda loops and he looks irratible. You eventually fully comprehend the situation you are in and feel you need to offer a peace offering. You offer your shovel and he is joyous as he is now able to further expand his kingdom.
-> DONE

== wait ==
You wait sensing some pay off in the end.
-> DONE

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
        
    ~ return time
    
    
    
