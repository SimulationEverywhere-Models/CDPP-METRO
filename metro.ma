[top]
components : llegando generadorGente@Generator
in : puerta1
in : puerta2
link : out@generadorGente inputGente@llegando
link : puerta1 inputPuerta1@llegando
link : puerta2 inputPuerta2@llegando

[llegando]
type : cell
dim : (30,10)
delay : inertial
defaultDelayTime : 500
border : nowrapped
neighbors :                               llegando(0,-2)
neighbors :               llegando(-1,-1) llegando(0,-1) llegando(1,-1)
neighbors : llegando(-2,0) llegando(-1,0) llegando(0,0) llegando(1,0) llegando(2,0)
neighbors :                llegando(-1,1) llegando(0,1) llegando(1,1)
neighbors :                               llegando(0,2)
initialValue : 0
in : inputGente
in : inputPuerta1
in : inputPuerta2
link : inputGente in@llegando(15,9)
link : inputPuerta1 in@llegando(9,0)
link : inputPuerta2 in@llegando(19,0)
localtransition : reglas
portInTransition : in@llegando(15,9) crearGente
portInTransition : in@llegando(9,0) manejarPuerta
portInTransition : in@llegando(19,0) manejarPuerta
initialCellsValue : llegando.val

[reglas]

rule : 0 500 { (0,0)=24 and (0,1)=0 }
rule : 0 500 { (0,0)=23 and (-1,0)=0 and (-1,-1)!=24 }
rule : 0 500 { (0,0)=22 and (1,0)=0 and (1,-1)!=24 and (2,0)!=23 }

rule : 0 250 { ( (0,0)=24 ) and ( (0,1)=88 ) }
rule : 0 250 { ( (0,0)=23 ) and ( (-1,0)=88 ) and (-1,-1)!=24 }
rule : 0 250 { ( (0,0)=22 ) and ( (1,0)=88 ) and (1,-1)!=24 and (2,0)!=23 }

rule : 29 500 { (0,0)=0 and (0,-1)=24 }
rule : 28 500 { (0,0)=0 and ( (1,0)=23 ) and (0,-1)!=24 }
rule : 27 500 { (0,0)=0 and ( (-1,0)=22 ) and (0,-1)!=24 and (1,0)!=23 }

rule : 24 10 { ( (0,0)=26 or (0,0)=27 or (0,0)=28 or (0,0)=29 ) and ( abs(cellpos(0) - 15) <= ( 9 - cellpos(1) ) ) and (0,1)!=22 and (0,1)!=23 and (0,1)!=24 }

rule : 23 10 { ( (0,0)=26 or (0,0)=27 or (0,0)=28 or (0,0)=29 ) and ( cellpos(0) > 14 ) and (-1,0)!=22 and (-1,0)!=23 and (-1,0)!=24 and (-1,-1)!=24 }

rule : 22 10 { ( (0,0)=26 or (0,0)=27 or (0,0)=28 or (0,0)=29 ) and ( cellpos(0) < 16 ) and (1,0)!=22 and (1,0)!=23 and (1,0)!=24 and (1,-1)!=24 and (2,0)!=23 }

rule : 24 10 { ( (0,0)=26 or (0,0)=27 or (0,0)=28 or (0,0)=29 ) and (0,1)!=22 and (0,1)!=23 and (0,1)!=24 }

rule : 24 10 { (0,0)=0 and (0,-1)=77 }


rule : 0 500 { ( (0,0)=4 ) and ( (0,1)=0 ) and (1,1)!=23 and (-1,1)!=22 }
rule : 0 500 { ( (0,0)=1 ) and ( (0,-1)=0 ) and ( (0,-2)!=4 ) and ( (0,-2)!=14 ) and (0,-2)!=24 and (1,-1)!=23 and (-1,-1)!=22 }
rule : 0 500 { ( (0,0)=2 ) and ( (1,0)=0 ) and ( (1,1)!=1 ) and ( (1,1)!=11 ) and ( (1,-1)!=4 ) and ( (1,-1)!=14 ) and (1,-1)!=24 and (2,0)!=23 }
rule : 0 500 { ( (0,0)=3 ) and ( (-1,0)=0 ) and ( (-1,1)!=1 ) and ( (-2,0)!=2 ) and ( (-1,1)!=11 ) and ( (-2,0)!=12 ) and ( (-1,-1)!=4 ) and ( (-1,-1)!=14 ) and (-1,-1)!=24 and (-2,0)!=22 }

rule : 0 500 { ( (0,0)=14 ) and ( (0,1)=0 ) and (1,1)!=23 and (-1,1)!=22 }
rule : 0 500 { ( (0,0)=11 ) and ( (0,-1)=0 ) and ( (0,-2)!=4 ) and ( (0,-2)!=14 ) and (0,-2)!=24 and (1,-1)!=23 and (-1,-1)!=22 }
rule : 0 500 { ( (0,0)=12 ) and ( (1,0)=0 ) and ( (1,1)!=1 ) and ( (1,1)!=11 ) and ( (1,-1)!=4 ) and ( (1,-1)!=14 ) and (1,-1)!=24 and (2,0)!=23 }
rule : 0 500 { ( (0,0)=13 ) and ( (-1,0)=0 ) and ( (-1,1)!=1 ) and ( (-2,0)!=2 ) and ( (-1,1)!=11 ) and ( (-2,0)!=12 ) and ( (-1,-1)!=4 ) and ( (-1,-1)!=14 ) and (-1,-1)!=24 and (-2,0)!=22 }

rule : 2 10 { (0,0)=5 and ( (1,0)=0 or (1,0)=99 ) and ( (1,1)!=1 ) and ( (1,1)!=11 ) and ( (1,-1)!=4 ) and ( (1,-1)!=14 ) and (1,-1)!=24 and (2,0)!=23 }
rule : 3 10 { (0,0)=5 and ( (-1,0)=0 or (-1,0)=99 ) and ( (-1,1)!=1 ) and ( (-2,0)!=2 ) and ( (-1,1)!=11 ) and ( (-2,0)!=12 ) and ( (-1,-1)!=4 ) and ( (-1,-1)!=14 ) and (-1,-1)!=24 and (-2,0)!=22 }
rule : 4 10 { (0,0)=5 and (0,1)=0 and (1,1)!=23 and (-1,1)!=22 }
rule : 5 10 { ( (0,-1)=5 or (0,-1)=15 ) and ( (0,0)=6 or (0,0)=7 or (0,0)=8 or (0,0)=9 ) }
rule : 5 10 { ( (0,-1)=24 ) and ( (0,0)=6 or (0,0)=7 or (0,0)=8 or (0,0)=9 ) }
rule : 5 10 { ( (1,0)=23 ) and ( (0,0)=6 or (0,0)=7 or (0,0)=8 or (0,0)=9 ) }
rule : 5 10 { ( (-1,0)=22 ) and ( (0,0)=6 or (0,0)=7 or (0,0)=8 or (0,0)=9 ) }
rule : 5 10 { ( (0,-1)=77 ) and ( (0,0)=6 or (0,0)=7 or (0,0)=8 or (0,0)=9 ) }

rule : 12 10 { (0,0)=15 and ( (1,0)=0 or (1,0)=99 ) and ( (1,1)!=1 ) and ( (1,1)!=11 ) and ( (1,-1)!=4 ) and ( (1,-1)!=14 ) and (1,-1)!=24 and (2,0)!=23 }
rule : 13 10 { (0,0)=15 and ( (-1,0)=0 or (-1,0)=99 ) and ( (-1,1)!=1 ) and ( (-2,0)!=2 ) and ( (-1,1)!=11 ) and ( (-2,0)!=12 ) and ( (-1,-1)!=4 ) and ( (-1,-1)!=14 ) and (-1,-1)!=24 and (-2,0)!=22 }
rule : 14 10 { (0,0)=15 and (0,1)=0 and (1,1)!=23 and (-1,1)!=22 }
rule : 15 10 { ( (0,-1)=5 or (0,-1)=15 ) and ( (0,0)=16 or (0,0)=17 or (0,0)=18 or (0,0)=19 ) }
rule : 15 10 { ( (0,-1)=24 ) and ( (0,0)=16 or (0,0)=17 or (0,0)=18 or (0,0)=19 ) }
rule : 15 10 { ( (1,0)=23 ) and ( (0,0)=16 or (0,0)=17 or (0,0)=18 or (0,0)=19 ) }
rule : 15 10 { ( (-1,0)=22 ) and ( (0,0)=16 or (0,0)=17 or (0,0)=18 or (0,0)=19 ) }
rule : 15 10 { ( (0,-1)=77 ) and ( (0,0)=16 or (0,0)=17 or (0,0)=18 or (0,0)=19 ) }

rule : 0 250 { ( (0,0)=1 ) and ( (0,-1)=99 ) }
rule : 0 250 { ( (0,0)=2 ) and ( (1,0)=99 ) and ( (1,1)!=1 ) and ( (1,1)!=11 ) }
rule : 0 250 { ( (0,0)=3 ) and ( (-1,0)=99 ) and ( (-1,1)!=1 ) and ( (-2,0)!=2 ) and ( (-1,1)!=11 ) and ( (-2,0)!=12 ) }

rule : 0 250 { ( (0,0)=11 ) and ( (0,-1)=99 ) }
rule : 0 250 { ( (0,0)=12 ) and ( (1,0)=99 ) and ( (1,1)!=11 ) and ( (1,1)!=1 ) }
rule : 0 250 { ( (0,0)=13 ) and ( (-1,0)=99 ) and ( (-1,1)!=11 ) and ( (-2,0)!=12 ) and ( (-1,1)!=1 ) and ( (-2,0)!=2 ) }

rule : 9 500 { ( (0,0)=0 ) and ( (0,-1)=4 ) and (1,0)!=23 and (-1,0)!=22 }
rule : 6 500 { ( (0,0)=0 ) and ( (0,1)=1 ) and (0,-1)!=4 and (0,-1)!=14 and (0,-1)!=24 and (1,0)!=23 and (-1,0)!=22 }
rule : 7 500 { ( (0,0)=0 ) and ( (-1,0)=2 ) and ( (0,1)!=1 ) and ( (0,1)!=11 ) and (0,-1)!=4 and (0,-1)!=14 and (0,-1)!=24 and (1,0)!=23 }
rule : 8 500 { ( (0,0)=0 ) and ( (1,0)=3 ) and ( (0,1)!=1 ) and ( (-1,0)!=2 ) and ( (0,1)!=11 ) and ( (-1,0)!=12 ) and (0,-1)!=4 and (0,-1)!=14 and (0,-1)!=24 and (-1,0)!=22 }

rule : 6 700 { ( (0,0)=1 ) }
rule : 7 700 { ( (0,0)=2 ) }
rule : 8 700 { ( (0,0)=3 ) }

rule : 19 500 { ( (0,0)=0 ) and ( (0,-1)=14 ) and (1,0)!=23 and (-1,0)!=22 }
rule : 16 500 { ( (0,0)=0 ) and ( (0,1)=11 ) and (0,-1)!=4 and (0,-1)!=14 and (0,-1)!=24 and (1,0)!=23 and (-1,0)!=22 }
rule : 17 500 { ( (0,0)=0 ) and ( (-1,0)=12 ) and ( (0,1)!=11 ) and ( (0,1)!=1 ) and (0,-1)!=4 and (0,-1)!=14 and (0,-1)!=24 and (1,0)!=23 }
rule : 18 500 { ( (0,0)=0 ) and ( (1,0)=13 ) and ( (0,1)!=11 ) and ( (-1,0)!=12 ) and ( (0,1)!=1 ) and ( (-1,0)!=2 ) and (0,-1)!=4 and (0,-1)!=14 and (0,-1)!=24 and (-1,0)!=22 }

rule : 16 700 { ( (0,0)=11 ) }
rule : 17 700 { ( (0,0)=12 ) }
rule : 18 700 { ( (0,0)=13 ) }

rule : 1 10 { ( (0,0)=6 or (0,0)=7 or (0,0)=8 or (0,0)=9 ) and ( abs(cellpos(0) - 20) <= ( cellpos(1) ) ) and ( (0,-1)=0 or (0,-1)=99 ) and (0,-2)!=4 and (0,-2)!=14 and (0,-2)!=24 and (-1,-1)!=23 and (1,-1)!=22 }

rule : 2 10 { ( ( (0,0)=6 ) or ( (0,0)=7 ) or ( (0,0)=8 ) or ( (0,0)=9 ) ) and ( cellpos(0) < 20 ) and ( (1,0)=0 or (1,0)=99) and ( (1,1)!=1 ) and ( (1,1)!=11 ) and ( (1,-1)!=4 ) and ( (1,-1)!=14 ) and (1,-1)!=24 and (2,0)!=23 }

rule : 3 10 { ( ( (0,0)=6 ) or ( (0,0)=7 ) or ( (0,0)=8 ) or ( (0,0)=9 ) ) and ( cellpos(0) > 19 ) and ( (-1,0)=0 or (-1,0)=99 ) and ( (-1,1)!=1 ) and ( (-2,0)!=2 ) and ( (-1,1)!=11 ) and ( (-2,0)!=12 )  and ( (-1,-1)!=4 ) and ( (-1,-1)!=14 ) and (-1,-1)!=24 and (-2,0)!=22 }

rule : 1 10 { ( ( (0,0)=6 ) or ( (0,0)=7 ) or ( (0,0)=8 or ( (0,0)=9 ) ) ) and ( (0,-1)=0 ) and ( (0,-2)!=4 ) and ( (0,-2)!=14 ) and (0,-2)!=24 and (-1,-1)!=23 and (1,-1)!=22 }

rule : 11 10 { ( ( (0,0)=16 ) or ( (0,0)=17 ) or ( (0,0)=18 ) or ( (0,0)=19 ) ) and ( abs(cellpos(0) - 9) <= ( cellpos(1) ) ) and ( (0,-1)=0 or (0,-1)=99) and ( (0,-2)!=4 ) and ( (0,-2)!=14 ) and (0,-2)!=24 and (-1,-1)!=23 and (1,-1)!=22 }

rule : 12 10 { ( ( (0,0)=16 ) or ( (0,0)=17 ) or ( (0,0)=18 ) or ( (0,0)=19 ) ) and ( cellpos(0) < 9 ) and ( (1,0)=0 or (1,0)=99) and ( (1,1)!=11 ) and ( (1,1)!=1 ) and ( (1,-1)!=4 ) and ( (1,-1)!=14 ) and (1,-1)!=24 and (2,0)!=23 }

rule : 13 10 { ( ( (0,0)=16 ) or ( (0,0)=17 ) or ( (0,0)=18 ) or ( (0,0)=19 ) ) and ( cellpos(0) > 8 ) and ( (-1,0)=0 or (-1,0)=99 ) and ( (-1,1)!=11 ) and ( (-2,0)!=12 ) and ( (-1,1)!=1 ) and ( (-2,0)!=2 ) and ( (-1,-1)!=4 ) and ( (-1,-1)!=14 ) and (-1,-1)!=24 and (-2,0)!=22 }

rule : 11 10 { ( ( (0,0)=16 ) or ( (0,0)=17 ) or ( (0,0)=18 ) or ( (0,0)=19 ) ) and ( (0,-1)=0 ) and ( (0,-2)!=4 ) and ( (0,-2)!=14 ) and (0,-2)!=24 and (-1,-1)!=23 and (1,-1)!=22 }


rule : {(0,0)} 10 {t}

[crearGente]
rule : { ( randint(1)*10 ) + 1 } 10 { (0,0)=0 }
rule : {(0,0)} 10 {t}

[generadorGente]
distribution : exponential
mean : 4
initial : 1
increment : 0

[manejarPuerta]
rule : 77 1 { (0,0)!=77 and (0,0)!=99 }
rule : 99 1 { (0,0)=77 }
rule : 0 1 { t }
