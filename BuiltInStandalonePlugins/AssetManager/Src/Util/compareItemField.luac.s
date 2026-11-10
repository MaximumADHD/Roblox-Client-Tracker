PROTO_0:
        0 JUMPIFNOTEQ                      R0 R1 ; [+3]
        2 LOADN                            R3 0
        3 RETURN                           R3 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADN                            R3 1
        6 JUMP                             ; [+1]
        7 LOADN                            R3 -1
        8 JUMPIFNOTLT                      R0 R1 ; [+3]
       10 MOVE                             R4 R3
       11 RETURN                           R4 1
       12 MINUS                            R4 R3
       13 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["Utils"]
        3 GETTABLEKS                       R4 R4 K1 ["naturalCompare"]
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 CALL                             R4 2 1
        8 JUMPIFNOT                        R2 ; [+2]
        9 LOADN                            R5 -1
       10 JUMP                             ; [+1]
       11 LOADN                            R5 1
       12 MUL                              R3 R4 R5
       13 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["Utils"]
        3 GETTABLEKS                       R4 R4 K1 ["naturalCompare"]
        5 GETTABLEKS                       R5 R0 K2 ["Name"]
        7 GETTABLEKS                       R6 R1 K2 ["Name"]
        9 CALL                             R4 2 1
       10 JUMPIFNOT                        R2 ; [+2]
       11 LOADN                            R5 -1
       12 JUMP                             ; [+1]
       13 LOADN                            R5 1
       14 MUL                              R3 R4 R5
       15 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["None"]
        3 JUMPIFEQ                         R0 R3 ; [+2]
        5 JUMP                             ; [+1]
        6 LOADN                            R0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["None"]
       10 JUMPIFEQ                         R1 R3 ; [+2]
       12 JUMP                             ; [+1]
       13 LOADN                            R1 0
       14 MOVE                             R4 R0
       15 MOVE                             R5 R1
       16 JUMPIFNOTEQ                      R4 R5 ; [+3]
       18 LOADN                            R3 0
       19 RETURN                           R3 1
       20 JUMPIFNOT                        R2 ; [+2]
       21 LOADN                            R6 1
       22 JUMP                             ; [+1]
       23 LOADN                            R6 -1
       24 JUMPIFNOTLT                      R4 R5 ; [+3]
       26 MOVE                             R3 R6
       27 RETURN                           R3 1
       28 MINUS                            R3 R6
       29 RETURN                           R3 1

PROTO_4:
        0 JUMPIFNOTEQ                      R0 R1 ; [+3]
        2 LOADN                            R3 0
        3 RETURN                           R3 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADN                            R4 1
        6 JUMP                             ; [+1]
        7 LOADN                            R4 -1
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K11 ["AssetInfoField"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Flags"]
       36 GETTABLEKS                       R6 R6 K13 ["getFFlagAmrEnableVersioning"]
       38 CALL                             R5 1 1
       39 NEWTABLE                         R6 0 0
       41 DUPCLOSURE                       R7 K14 [PROTO_0]
       42 GETTABLEKS                       R8 R4 K15 ["DisplayName"]
       44 DUPCLOSURE                       R9 K16 [PROTO_1]
       45 CAPTURE                          VAL R1
       46 SETTABLE                         R9 R6 R8
       47 GETTABLEKS                       R8 R4 K17 ["Creator"]
       49 DUPCLOSURE                       R9 K18 [PROTO_2]
       50 CAPTURE                          VAL R1
       51 SETTABLE                         R9 R6 R8
       52 GETTABLEKS                       R8 R4 K19 ["VersionNumber"]
       54 MOVE                             R10 R5
       55 CALL                             R10 0 1
       56 JUMPIFNOT                        R10 ; [+3]
       57 DUPCLOSURE                       R9 K20 [PROTO_3]
       58 CAPTURE                          VAL R2
       59 JUMP                             ; [+1]
       60 LOADNIL                          R9
       61 SETTABLE                         R9 R6 R8
       62 GETTABLEKS                       R8 R3 K21 ["asList"]
       64 MOVE                             R9 R4
       65 CALL                             R8 1 3
       66 FORGPREP                         R8
       67 GETTABLE                         R13 R6 R12
       68 JUMPIF                           R13 ; [+2]
       69 DUPCLOSURE                       R13 K22 [PROTO_4]
       70 SETTABLE                         R13 R6 R12
       71 FORGLOOP                         R8 2 ; [-5]
       73 RETURN                           R6 1
