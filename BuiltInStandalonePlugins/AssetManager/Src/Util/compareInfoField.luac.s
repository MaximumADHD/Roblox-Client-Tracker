PROTO_0:
        0 JUMPIFNOTEQ                      R0 R1 ; [+3]
        2 LOADN                            R3 0
        3 RETURN                           R3 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADN                            R3 1
        6 JUMP                             ; [+1]
        7 LOADN                            R3 255
        8 JUMPIFNOTLT                      R0 R1 ; [+3]
       10 MOVE                             R4 R3
       11 RETURN                           R4 1
       12 MINUS                            R4 R3
       13 RETURN                           R4 1

PROTO_1:
        0 GETTABLE                         R5 R0 R3
        1 GETTABLE                         R6 R1 R3
        2 JUMPIFNOTEQ                      R5 R6 ; [+3]
        4 LOADN                            R4 0
        5 RETURN                           R4 1
        6 JUMPIFNOT                        R2 ; [+2]
        7 LOADN                            R7 1
        8 JUMP                             ; [+1]
        9 LOADN                            R7 255
       10 JUMPIFNOTLT                      R5 R6 ; [+3]
       12 MOVE                             R4 R7
       13 RETURN                           R4 1
       14 MINUS                            R4 R7
       15 RETURN                           R4 1

PROTO_2:
        0 GETIMPORT                        R4 K2 [string.lower]
        2 GETTABLEKS                       R5 R0 K3 ["DisplayName"]
        4 CALL                             R4 1 1
        5 GETIMPORT                        R5 K2 [string.lower]
        7 GETTABLEKS                       R6 R1 K3 ["DisplayName"]
        9 CALL                             R5 1 1
       10 JUMPIFNOTEQ                      R4 R5 ; [+3]
       12 LOADN                            R3 0
       13 RETURN                           R3 1
       14 JUMPIFNOT                        R2 ; [+2]
       15 LOADN                            R6 1
       16 JUMP                             ; [+1]
       17 LOADN                            R6 255
       18 JUMPIFNOTLT                      R4 R5 ; [+3]
       20 MOVE                             R3 R6
       21 RETURN                           R3 1
       22 MINUS                            R3 R6
       23 RETURN                           R3 1

PROTO_3:
        0 GETIMPORT                        R4 K2 [string.lower]
        2 GETTABLEKS                       R6 R0 K3 ["Creator"]
        4 GETTABLEKS                       R5 R6 K4 ["Name"]
        6 CALL                             R4 1 1
        7 GETIMPORT                        R5 K2 [string.lower]
        9 GETTABLEKS                       R7 R1 K3 ["Creator"]
       11 GETTABLEKS                       R6 R7 K4 ["Name"]
       13 CALL                             R5 1 1
       14 JUMPIFNOTEQ                      R4 R5 ; [+3]
       16 LOADN                            R3 0
       17 RETURN                           R3 1
       18 JUMPIFNOT                        R2 ; [+2]
       19 LOADN                            R6 1
       20 JUMP                             ; [+1]
       21 LOADN                            R6 255
       22 JUMPIFNOTLT                      R4 R5 ; [+3]
       24 MOVE                             R3 R6
       25 RETURN                           R3 1
       26 MINUS                            R3 R6
       27 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R5 R0 R4
        2 GETTABLE                         R6 R1 R4
        3 JUMPIFNOTEQ                      R5 R6 ; [+3]
        5 LOADN                            R3 0
        6 RETURN                           R3 1
        7 JUMPIFNOT                        R2 ; [+2]
        8 LOADN                            R7 1
        9 JUMP                             ; [+1]
       10 LOADN                            R7 255
       11 JUMPIFNOTLT                      R5 R6 ; [+3]
       13 MOVE                             R3 R7
       14 RETURN                           R3 1
       15 MINUS                            R3 R7
       16 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["AssetInfoField"]
       16 NEWTABLE                         R3 0 0
       18 DUPCLOSURE                       R4 K9 [PROTO_0]
       19 DUPCLOSURE                       R5 K10 [PROTO_1]
       20 GETTABLEKS                       R6 R2 K11 ["DisplayName"]
       22 DUPCLOSURE                       R7 K12 [PROTO_2]
       23 SETTABLE                         R7 R3 R6
       24 GETTABLEKS                       R6 R2 K13 ["Creator"]
       26 DUPCLOSURE                       R7 K14 [PROTO_3]
       27 SETTABLE                         R7 R3 R6
       28 GETTABLEKS                       R6 R1 K15 ["getEnumAsList"]
       30 MOVE                             R7 R2
       31 CALL                             R6 1 3
       32 FORGPREP                         R6
       33 GETTABLE                         R11 R3 R10
       34 JUMPIF                           R11 ; [+3]
       35 NEWCLOSURE                       R11 P4
       36 CAPTURE                          VAL R10
       37 SETTABLE                         R11 R3 R10
       38 FORGLOOP                         R6 2 ; [-6]
       40 RETURN                           R3 1
