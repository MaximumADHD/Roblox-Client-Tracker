PROTO_0:
        0 NAMECALL                         R2 R1 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["ScriptConversion"]
        5 GETTABLEKS                       R3 R3 K2 ["revertedScripts"]
        7 GETTABLEKS                       R4 R2 K1 ["ScriptConversion"]
        9 GETTABLEKS                       R4 R4 K3 ["completedScripts"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K4 ["Dictionary"]
       14 GETTABLEKS                       R5 R5 K5 ["join"]
       16 MOVE                             R6 R4
       17 CALL                             R5 1 1
       18 MOVE                             R6 R4
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 FORGPREP                         R6
       22 GETTABLE                         R11 R0 R9
       23 JUMPIFNOT                        R11 ; [+2]
       24 LOADNIL                          R11
       25 SETTABLE                         R11 R5 R9
       26 FORGLOOP                         R6 1 ; [-5]
       28 GETUPVAL                         R8 1
       29 MOVE                             R9 R5
       30 CALL                             R8 1 -1
       31 NAMECALL                         R6 R1 K6 ["dispatch"]
       33 CALL                             R6 -1 0
       34 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["ScriptConversion"]
        5 GETTABLEKS                       R2 R2 K2 ["revertedScripts"]
        7 GETTABLEKS                       R3 R1 K1 ["ScriptConversion"]
        9 GETTABLEKS                       R3 R3 K3 ["completedScripts"]
       11 GETUPVAL                         R6 0
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R7 R7 K4 ["Dictionary"]
       15 GETTABLEKS                       R7 R7 K5 ["join"]
       17 GETUPVAL                         R8 2
       18 MOVE                             R9 R2
       19 CALL                             R7 2 -1
       20 CALL                             R6 -1 -1
       21 NAMECALL                         R4 R0 K6 ["dispatch"]
       23 CALL                             R4 -1 0
       24 GETUPVAL                         R4 3
       25 GETUPVAL                         R5 2
       26 MOVE                             R6 R0
       27 CALL                             R4 2 0
       28 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Actions"]
       20 GETTABLEKS                       R3 R3 K10 ["SetRevertedScripts"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Actions"]
       29 GETTABLEKS                       R4 R4 K11 ["SetCompletedScripts"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K12 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 DUPCLOSURE                       R5 K13 [PROTO_2]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R4
       39 RETURN                           R5 1
