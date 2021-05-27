(define (domain minecraft-house)
  (:predicates                	                     
               (have-materials)
               (have-house)
               (have-tools)
               (have-wood)
               (have-stone)
               (have-craftting-table)
               (have-bricks)
               (have-flowers)
               (have-sand)
               (have-glass)
               (wood ?x)
               (stone ?x)
               (bricks ?x)
               (flowers ?x)
               (sand ?x))
  
  (:action get-glass
           :parameters (?x)
	   :precondition (glass ?x)
           :effect (have-glass))

  (:action craft-materials
           :parameters ()
           :precondition (have-stone)
           :effect (have-materials))

  (:action build-house
           :parameters ()
           :precondition (have-materials)
           :effect (have-house))

  (:action craft-tools
           :parameters ()
           :precondition (have-wood)(have-craftting-table)
           :effect (have-tools))

(:action get-craftting-table
           :parameters ()
           :precondition (have-wood)
           :effect (have-craftting-table))

  ;;; Get the food and snacks for the movie
  (:action get-wood

           :parameters (?x)
           :precondition (wood ?x)
           :effect (have-wood))
  
  (:action get-stone
           :parameters (?x)
           :precondition (stone ?x )(have-tools)
           :effect (have-stone))

  (:action get-bricks
           :parameters (?x)
           :precondition (bricks ?x)
           :effect (have-bricks))
  
  (:action get-flowers
           :parameters (?x)
           :precondition (flowers ?x)
           :effect (have-flowers))
  
  (:action get-sand
           :parameters (?x)
           :precondition (sand ?x)
           :effect (have-sand)))