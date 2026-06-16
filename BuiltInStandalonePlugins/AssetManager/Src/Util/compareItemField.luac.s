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
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+10]
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R2 ; [+2]
        8 LOADN                            R5 255
        9 JUMP                             ; [+1]
       10 LOADN                            R5 1
       11 MUL                              R3 R4 R5
       12 RETURN                           R3 1
       13 GETIMPORT                        R4 K2 [string.lower]
       15 MOVE                             R5 R0
       16 CALL                             R4 1 1
       17 GETIMPORT                        R5 K2 [string.lower]
       19 MOVE                             R6 R1
       20 CALL                             R5 1 1
       21 JUMPIFNOTEQ                      R4 R5 ; [+3]
       23 LOADN                            R3 0
       24 RETURN                           R3 1
       25 JUMPIFNOT                        R2 ; [+2]
       26 LOADN                            R6 1
       27 JUMP                             ; [+1]
       28 LOADN                            R6 255
       29 JUMPIFNOTLT                      R4 R5 ; [+3]
       31 MOVE                             R3 R6
       32 RETURN                           R3 1
       33 MINUS                            R3 R6
       34 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+12]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R5 R0 K0 ["Name"]
        6 GETTABLEKS                       R6 R1 K0 ["Name"]
        8 CALL                             R4 2 1
        9 JUMPIFNOT                        R2 ; [+2]
       10 LOADN                            R5 255
       11 JUMP                             ; [+1]
       12 LOADN                            R5 1
       13 MUL                              R3 R4 R5
       14 RETURN                           R3 1
       15 GETIMPORT                        R4 K3 [string.lower]
       17 GETTABLEKS                       R5 R0 K0 ["Name"]
       19 CALL                             R4 1 1
       20 GETIMPORT                        R5 K3 [string.lower]
       22 GETTABLEKS                       R6 R1 K0 ["Name"]
       24 CALL                             R5 1 1
       25 JUMPIFNOTEQ                      R4 R5 ; [+3]
       27 LOADN                            R3 0
       28 RETURN                           R3 1
       29 JUMPIFNOT                        R2 ; [+2]
       30 LOADN                            R6 1
       31 JUMP                             ; [+1]
       32 LOADN                            R6 255
       33 JUMPIFNOTLT                      R4 R5 ; [+3]
       35 MOVE                             R3 R6
       36 RETURN                           R3 1
       37 MINUS                            R3 R6
       38 RETURN                           R3 1

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
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R4 K9 ["Util"]
       22 GETTABLEKS                       R4 R4 K10 ["naturalCompare"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R5 K11 ["Flags"]
       31 GETTABLEKS                       R5 R5 K12 ["getFFlagAmrNaturalSortOrder"]
       33 CALL                             R4 1 1
       34 NEWTABLE                         R5 0 0
       36 DUPCLOSURE                       R6 K13 [PROTO_0]
       37 GETTABLEKS                       R7 R2 K14 ["DisplayName"]
       39 DUPCLOSURE                       R8 K15 [PROTO_1]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 SETTABLE                         R8 R5 R7
       43 GETTABLEKS                       R7 R2 K16 ["Creator"]
       45 DUPCLOSURE                       R8 K17 [PROTO_2]
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 SETTABLE                         R8 R5 R7
       49 GETTABLEKS                       R7 R1 K18 ["asList"]
       51 MOVE                             R8 R2
       52 CALL                             R7 1 3
       53 FORGPREP                         R7
       54 GETTABLE                         R12 R5 R11
       55 JUMPIF                           R12 ; [+2]
       56 DUPCLOSURE                       R12 K19 [PROTO_3]
       57 SETTABLE                         R12 R5 R11
       58 FORGLOOP                         R7 2 ; [-5]
       60 RETURN                           R5 1
