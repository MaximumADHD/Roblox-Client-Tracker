PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["MaterialVariant"]
        2 JUMPIFNOT                        R1 ; [+15]
        3 LOADB                            R1 0
        4 GETTABLEKS                       R2 R0 K0 ["MaterialVariant"]
        6 GETTABLEKS                       R2 R2 K1 ["Name"]
        8 GETUPVAL                         R3 0
        9 JUMPIFNOTEQ                      R2 R3 ; [+8]
       11 GETTABLEKS                       R2 R0 K2 ["Material"]
       13 GETUPVAL                         R3 1
       14 JUMPIFEQ                         R2 R3 ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKB                    R0 FALSE ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R0
        4 MOVE                             R6 R3
        5 NEWCLOSURE                       R7 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CALL                             R4 3 0
        9 GETUPVAL                         R4 1
       10 MOVE                             R5 R3
       11 DUPCLOSURE                       R6 K0 [PROTO_1]
       12 CALL                             R4 2 1
       13 LENGTH                           R6 R4
       14 LOADN                            R7 1
       15 JUMPIFLT                         R7 R6 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K9 ["Dash"]
       25 GETTABLEKS                       R3 R3 K10 ["filter"]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K11 ["Util"]
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R6 R4 K12 ["MapMaterials"]
       35 CALL                             R5 1 1
       36 DUPCLOSURE                       R6 K13 [PROTO_2]
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R3
       39 RETURN                           R6 1
