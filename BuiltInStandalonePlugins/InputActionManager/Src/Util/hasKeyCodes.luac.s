PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 3
        2 FORGPREP                         R1
        3 GETTABLE                         R6 R0 R5
        4 JUMPIFNOT                        R6 ; [+22]
        5 GETTABLEKS                       R7 R6 K0 ["keyCode"]
        7 GETIMPORT                        R8 K4 [Enum.KeyCode.Unknown]
        9 JUMPIFEQ                         R7 R8 ; [+3]
       11 LOADB                            R7 1
       12 RETURN                           R7 1
       13 GETUPVAL                         R7 1
       14 LOADNIL                          R8
       15 LOADNIL                          R9
       16 FORGPREP                         R7
       17 GETTABLE                         R12 R6 R11
       18 JUMPIFNOT                        R12 ; [+6]
       19 GETIMPORT                        R13 K4 [Enum.KeyCode.Unknown]
       21 JUMPIFEQ                         R12 R13 ; [+3]
       23 LOADB                            R13 1
       24 RETURN                           R13 1
       25 FORGLOOP                         R7 2 ; [-9]
       27 FORGLOOP                         R1 2 ; [-25]
       29 LOADB                            R1 0
       30 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["getSchemas"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 0 6
       25 LOADK                            R4 K10 ["up"]
       26 LOADK                            R5 K11 ["down"]
       27 LOADK                            R6 K12 ["left"]
       28 LOADK                            R7 K13 ["right"]
       29 LOADK                            R8 K14 ["forward"]
       30 LOADK                            R9 K15 ["backward"]
       31 SETLIST                          R3 R4 6 [1]
       33 DUPCLOSURE                       R4 K16 [PROTO_0]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
