PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 3
        2 FORGPREP                         R1
        3 GETTABLE                         R6 R0 R5
        4 JUMPIFNOT                        R6 ; [+32]
        5 GETUPVAL                         R7 1
        6 CALL                             R7 0 1
        7 JUMPIFNOT                        R7 ; [+7]
        8 GETUPVAL                         R7 2
        9 MOVE                             R8 R6
       10 CALL                             R7 1 1
       11 JUMPIFNOT                        R7 ; [+25]
       12 LOADB                            R7 1
       13 RETURN                           R7 1
       14 JUMP                             ; [+22]
       15 GETTABLEKS                       R7 R6 K0 ["keyCode"]
       17 GETIMPORT                        R8 K4 [Enum.KeyCode.Unknown]
       19 JUMPIFEQ                         R7 R8 ; [+3]
       21 LOADB                            R7 1
       22 RETURN                           R7 1
       23 GETUPVAL                         R7 3
       24 LOADNIL                          R8
       25 LOADNIL                          R9
       26 FORGPREP                         R7
       27 GETTABLE                         R12 R6 R11
       28 JUMPIFNOT                        R12 ; [+6]
       29 GETIMPORT                        R13 K4 [Enum.KeyCode.Unknown]
       31 JUMPIFEQ                         R12 R13 ; [+3]
       33 LOADB                            R13 1
       34 RETURN                           R13 1
       35 FORGLOOP                         R7 2 ; [-9]
       37 FORGLOOP                         R1 2 ; [-35]
       39 LOADB                            R1 0
       40 RETURN                           R1 1

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
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K8 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["Cell"]
       31 GETTABLEKS                       R4 R4 K11 ["isValidBinding"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R0 K6 ["Src"]
       36 GETTABLEKS                       R4 R4 K12 ["Flags"]
       38 GETIMPORT                        R5 K5 [require]
       40 GETTABLEKS                       R6 R4 K13 ["getFFlagIAMUIModifier"]
       42 CALL                             R5 1 1
       43 MOVE                             R7 R5
       44 CALL                             R7 0 1
       45 JUMPIFNOT                        R7 ; [+3]
       46 NEWTABLE                         R6 0 0
       48 JUMP                             ; [+10]
       49 NEWTABLE                         R6 0 6
       51 LOADK                            R7 K14 ["up"]
       52 LOADK                            R8 K15 ["down"]
       53 LOADK                            R9 K16 ["left"]
       54 LOADK                            R10 K17 ["right"]
       55 LOADK                            R11 K18 ["forward"]
       56 LOADK                            R12 K19 ["backward"]
       57 SETLIST                          R6 R7 6 [1]
       59 DUPCLOSURE                       R7 K20 [PROTO_0]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R6
       64 RETURN                           R7 1
