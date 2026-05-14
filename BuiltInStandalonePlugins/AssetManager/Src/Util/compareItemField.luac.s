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
        0 GETIMPORT                        R4 K2 [string.lower]
        2 MOVE                             R5 R0
        3 CALL                             R4 1 1
        4 GETIMPORT                        R5 K2 [string.lower]
        6 MOVE                             R6 R1
        7 CALL                             R5 1 1
        8 JUMPIFNOTEQ                      R4 R5 ; [+3]
       10 LOADN                            R3 0
       11 RETURN                           R3 1
       12 JUMPIFNOT                        R2 ; [+2]
       13 LOADN                            R6 1
       14 JUMP                             ; [+1]
       15 LOADN                            R6 255
       16 JUMPIFNOTLT                      R4 R5 ; [+3]
       18 MOVE                             R3 R6
       19 RETURN                           R3 1
       20 MINUS                            R3 R6
       21 RETURN                           R3 1

PROTO_2:
        0 GETIMPORT                        R4 K2 [string.lower]
        2 GETTABLEKS                       R5 R0 K3 ["Name"]
        4 CALL                             R4 1 1
        5 GETIMPORT                        R5 K2 [string.lower]
        7 GETTABLEKS                       R6 R1 K3 ["Name"]
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
        0 JUMPIFNOTEQ                      R0 R1 ; [+3]
        2 LOADN                            R3 0
        3 RETURN                           R3 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADN                            R4 1
        6 JUMP                             ; [+1]
        7 LOADN                            R4 255
        8 JUMPIFNOTLT                      R0 R1 ; [+3]
       10 MOVE                             R3 R4
       11 RETURN                           R3 1
       12 MINUS                            R3 R4
       13 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["AssetInfoField"]
       16 NEWTABLE                         R3 0 0
       18 DUPCLOSURE                       R4 K9 [PROTO_0]
       19 GETTABLEKS                       R5 R2 K10 ["DisplayName"]
       21 DUPCLOSURE                       R6 K11 [PROTO_1]
       22 SETTABLE                         R6 R3 R5
       23 GETTABLEKS                       R5 R2 K12 ["Creator"]
       25 DUPCLOSURE                       R6 K13 [PROTO_2]
       26 SETTABLE                         R6 R3 R5
       27 GETTABLEKS                       R5 R1 K14 ["asList"]
       29 MOVE                             R6 R2
       30 CALL                             R5 1 3
       31 FORGPREP                         R5
       32 GETTABLE                         R10 R3 R9
       33 JUMPIF                           R10 ; [+2]
       34 DUPCLOSURE                       R10 K15 [PROTO_3]
       35 SETTABLE                         R10 R3 R9
       36 FORGLOOP                         R5 2 ; [-5]
       38 RETURN                           R3 1
