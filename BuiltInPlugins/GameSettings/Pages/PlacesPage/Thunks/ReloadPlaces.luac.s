PROTO_0:
        0 JUMPIFNOT                        R0 ; [+53]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["Settings"]
        4 GETTABLEKS                       R3 R3 K1 ["Current"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K0 ["Settings"]
        9 GETTABLEKS                       R5 R5 K1 ["Current"]
       11 GETTABLEKS                       R5 R5 K2 ["places"]
       13 JUMPIFNOT                        R5 ; [+8]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K0 ["Settings"]
       17 GETTABLEKS                       R4 R4 K1 ["Current"]
       19 GETTABLEKS                       R4 R4 K2 ["places"]
       21 JUMPIF                           R4 ; [+2]
       22 NEWTABLE                         R4 0 0
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K3 ["Dictionary"]
       27 GETTABLEKS                       R5 R5 K4 ["join"]
       29 MOVE                             R6 R3
       30 DUPTABLE                         R7 K7 [{"placesPageCursor", "places", "placesIndex"}]
       31 SETTABLEKS                       R1 R7 K5 ["placesPageCursor"]
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R8 R8 K3 ["Dictionary"]
       36 GETTABLEKS                       R8 R8 K4 ["join"]
       38 MOVE                             R9 R4
       39 MOVE                             R10 R0
       40 CALL                             R8 2 1
       41 SETTABLEKS                       R8 R7 K2 ["places"]
       43 SETTABLEKS                       R2 R7 K6 ["placesIndex"]
       45 CALL                             R5 2 1
       46 MOVE                             R3 R5
       47 GETUPVAL                         R5 2
       48 GETUPVAL                         R7 3
       49 MOVE                             R8 R3
       50 CALL                             R7 1 -1
       51 NAMECALL                         R5 R5 K8 ["dispatch"]
       53 CALL                             R5 -1 0
       54 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R3 K2 ["gameId"]
        7 GETTABLEKS                       R4 R2 K3 ["Settings"]
        9 GETTABLEKS                       R4 R4 K4 ["Current"]
       11 GETTABLEKS                       R4 R4 K5 ["placesIndex"]
       13 GETTABLEKS                       R5 R2 K3 ["Settings"]
       15 GETTABLEKS                       R5 R5 K4 ["Current"]
       17 GETTABLEKS                       R5 R5 K6 ["placesPageCursor"]
       19 GETTABLEKS                       R6 R1 K7 ["placesController"]
       21 JUMPIFNOTEQKS                    R5 K8 [""] ; [+4]
       23 GETUPVAL                         R7 0
       24 JUMPIF                           R7 ; [+1]
       25 RETURN                           R0 0
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K9 ["resolve"]
       29 MOVE                             R10 R3
       30 MOVE                             R11 R5
       31 MOVE                             R12 R4
       32 NAMECALL                         R8 R6 K10 ["getPlaces"]
       34 CALL                             R8 4 -1
       35 CALL                             R7 -1 1
       36 NEWCLOSURE                       R9 P0
       37 CAPTURE                          VAL R2
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U3
       41 NAMECALL                         R7 R7 K11 ["andThen"]
       43 CALL                             R7 2 -1
       44 RETURN                           R7 -1

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R2 R2 K8 ["Util"]
       27 GETTABLEKS                       R2 R2 K9 ["Promise"]
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K10 ["Src"]
       33 GETTABLEKS                       R4 R4 K11 ["Actions"]
       35 GETTABLEKS                       R4 R4 K12 ["SetCurrentSettings"]
       37 CALL                             R3 1 1
       38 DUPCLOSURE                       R4 K13 [PROTO_2]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 RETURN                           R4 1
