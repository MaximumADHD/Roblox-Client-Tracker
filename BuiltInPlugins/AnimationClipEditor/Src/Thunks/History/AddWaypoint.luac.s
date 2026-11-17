PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["MaxWaypointSize"]
        3 JUMPIFLE                         R1 R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 JUMPIF                           R2 ; [+2]
        5 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        7 GETTABLEKS                       R3 R1 K2 ["Status"]
        9 GETTABLEKS                       R3 R3 K3 ["Tracks"]
       11 GETTABLEKS                       R4 R1 K4 ["History"]
       13 GETTABLEKS                       R5 R4 K5 ["Past"]
       15 JUMPIFEQKNIL                     R2 ; [+3]
       17 JUMPIFNOTEQKNIL                  R3 ; [+2]
       19 RETURN                           R0 0
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K6 ["List"]
       23 GETTABLEKS                       R6 R6 K7 ["join"]
       25 NEWTABLE                         R7 0 1
       27 DUPTABLE                         R8 K8 [{"AnimationData", "Tracks"}]
       28 GETUPVAL                         R9 1
       29 GETTABLEKS                       R9 R9 K9 ["Dictionary"]
       31 GETTABLEKS                       R9 R9 K7 ["join"]
       33 MOVE                             R10 R2
       34 CALL                             R9 1 1
       35 SETTABLEKS                       R9 R8 K1 ["AnimationData"]
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R9 R9 K6 ["List"]
       40 GETTABLEKS                       R9 R9 K7 ["join"]
       42 MOVE                             R10 R3
       43 CALL                             R9 1 1
       44 SETTABLEKS                       R9 R8 K3 ["Tracks"]
       46 SETLIST                          R7 R8 1 [1]
       48 MOVE                             R8 R5
       49 CALL                             R6 2 1
       50 MOVE                             R5 R6
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K6 ["List"]
       54 GETTABLEKS                       R6 R6 K10 ["filter"]
       56 MOVE                             R7 R5
       57 NEWCLOSURE                       R8 P0
       58 CAPTURE                          VAL R4
       59 CALL                             R6 2 1
       60 MOVE                             R5 R6
       61 GETUPVAL                         R8 2
       62 LOADB                            R9 1
       63 CALL                             R8 1 -1
       64 NAMECALL                         R6 R0 K11 ["dispatch"]
       66 CALL                             R6 -1 0
       67 GETUPVAL                         R8 3
       68 MOVE                             R9 R5
       69 CALL                             R8 1 -1
       70 NAMECALL                         R6 R0 K11 ["dispatch"]
       72 CALL                             R6 -1 0
       73 GETUPVAL                         R8 4
       74 NEWTABLE                         R9 0 0
       76 CALL                             R8 1 -1
       77 NAMECALL                         R6 R0 K11 ["dispatch"]
       79 CALL                             R6 -1 0
       80 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Actions"]
       20 GETTABLEKS                       R3 R3 K10 ["SetPast"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Actions"]
       29 GETTABLEKS                       R4 R4 K11 ["SetFuture"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Actions"]
       38 GETTABLEKS                       R5 R5 K12 ["SetIsDirty"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K13 [PROTO_2]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 RETURN                           R5 1
