PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["BasePart"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+11]
       11 GETUPVAL                         R8 0
       12 GETIMPORT                        R9 K5 [string.lower]
       14 GETTABLEKS                       R10 R6 K6 ["Name"]
       16 CALL                             R9 1 1
       17 GETTABLE                         R7 R8 R9
       18 JUMPIFEQKNIL                     R7 ; [+3]
       20 LOADB                            R8 1
       21 SETTABLE                         R8 R1 R7
       22 FORGLOOP                         R2 2 ; [-17]
       24 GETUPVAL                         R2 1
       25 LOADNIL                          R3
       26 LOADNIL                          R4
       27 FORGPREP                         R2
       28 GETTABLE                         R7 R1 R6
       29 JUMPIFEQKB                       R7 TRUE ; [+3]
       31 LOADB                            R7 0
       32 RETURN                           R7 1
       33 FORGLOOP                         R2 2 ; [-6]
       35 LOADB                            R2 1
       36 RETURN                           R2 1

PROTO_1:
        0 LOADB                            R1 0
        1 LOADK                            R4 K0 ["Humanoid"]
        2 NAMECALL                         R2 R0 K1 ["FindFirstChildWhichIsA"]
        4 CALL                             R2 2 1
        5 JUMPIFEQKNIL                     R2 ; [+4]
        7 GETUPVAL                         R1 0
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPTABLE                         R1 K18 [{[1] = "head", ["uppertorso"] = "torso", ["lowertorso"] = "torso", ["leftupperarm"] = "arm", ["leftlowerarm"] = "arm", ["lefthand"] = "arm", ["rightupperarm"] = "arm", ["rightlowerarm"] = "arm", ["righthand"] = "arm", ["leftupperleg"] = "leg", ["leftlowerleg"] = "leg", ["leftfoot"] = "leg", ["rightupperleg"] = "leg", ["rightlowerleg"] = "leg", ["rightfoot"] = "leg"}]
        4 NEWTABLE                         R2 0 4
        6 LOADK                            R3 K0 ["head"]
        7 LOADK                            R4 K2 ["torso"]
        8 LOADK                            R5 K5 ["arm"]
        9 LOADK                            R6 K12 ["leg"]
       10 SETLIST                          R2 R3 4 [1]
       12 DUPCLOSURE                       R3 K19 [PROTO_0]
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 DUPCLOSURE                       R4 K20 [PROTO_1]
       16 CAPTURE                          VAL R3
       17 SETTABLEKS                       R4 R0 K21 ["isR15Avatar"]
       19 RETURN                           R0 1
