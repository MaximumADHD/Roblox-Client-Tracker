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
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+14]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["Utils"]
        6 GETTABLEKS                       R4 R4 K1 ["naturalCompare"]
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 CALL                             R4 2 1
       11 JUMPIFNOT                        R2 ; [+2]
       12 LOADN                            R5 -1
       13 JUMP                             ; [+1]
       14 LOADN                            R5 1
       15 MUL                              R3 R4 R5
       16 RETURN                           R3 1
       17 GETIMPORT                        R4 K4 [string.lower]
       19 MOVE                             R5 R0
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K4 [string.lower]
       23 MOVE                             R6 R1
       24 CALL                             R5 1 1
       25 JUMPIFNOTEQ                      R4 R5 ; [+3]
       27 LOADN                            R3 0
       28 RETURN                           R3 1
       29 JUMPIFNOT                        R2 ; [+2]
       30 LOADN                            R6 1
       31 JUMP                             ; [+1]
       32 LOADN                            R6 -1
       33 JUMPIFNOTLT                      R4 R5 ; [+3]
       35 MOVE                             R3 R6
       36 RETURN                           R3 1
       37 MINUS                            R3 R6
       38 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+16]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["Utils"]
        6 GETTABLEKS                       R4 R4 K1 ["naturalCompare"]
        8 GETTABLEKS                       R5 R0 K2 ["Name"]
       10 GETTABLEKS                       R6 R1 K2 ["Name"]
       12 CALL                             R4 2 1
       13 JUMPIFNOT                        R2 ; [+2]
       14 LOADN                            R5 -1
       15 JUMP                             ; [+1]
       16 LOADN                            R5 1
       17 MUL                              R3 R4 R5
       18 RETURN                           R3 1
       19 GETIMPORT                        R4 K5 [string.lower]
       21 GETTABLEKS                       R5 R0 K2 ["Name"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K5 [string.lower]
       26 GETTABLEKS                       R6 R1 K2 ["Name"]
       28 CALL                             R5 1 1
       29 JUMPIFNOTEQ                      R4 R5 ; [+3]
       31 LOADN                            R3 0
       32 RETURN                           R3 1
       33 JUMPIFNOT                        R2 ; [+2]
       34 LOADN                            R6 1
       35 JUMP                             ; [+1]
       36 LOADN                            R6 -1
       37 JUMPIFNOTLT                      R4 R5 ; [+3]
       39 MOVE                             R3 R6
       40 RETURN                           R3 1
       41 MINUS                            R3 R6
       42 RETURN                           R3 1

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
       36 GETTABLEKS                       R6 R6 K13 ["getFFlagAmrNaturalSortOrder"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K9 ["Src"]
       43 GETTABLEKS                       R7 R7 K12 ["Flags"]
       45 GETTABLEKS                       R7 R7 K14 ["getFFlagAmrEnableVersioning"]
       47 CALL                             R6 1 1
       48 NEWTABLE                         R7 0 0
       50 DUPCLOSURE                       R8 K15 [PROTO_0]
       51 GETTABLEKS                       R9 R4 K16 ["DisplayName"]
       53 DUPCLOSURE                       R10 K17 [PROTO_1]
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R1
       56 SETTABLE                         R10 R7 R9
       57 GETTABLEKS                       R9 R4 K18 ["Creator"]
       59 DUPCLOSURE                       R10 K19 [PROTO_2]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R1
       62 SETTABLE                         R10 R7 R9
       63 GETTABLEKS                       R9 R4 K20 ["VersionNumber"]
       65 MOVE                             R11 R6
       66 CALL                             R11 0 1
       67 JUMPIFNOT                        R11 ; [+3]
       68 DUPCLOSURE                       R10 K21 [PROTO_3]
       69 CAPTURE                          VAL R2
       70 JUMP                             ; [+1]
       71 LOADNIL                          R10
       72 SETTABLE                         R10 R7 R9
       73 GETTABLEKS                       R9 R3 K22 ["asList"]
       75 MOVE                             R10 R4
       76 CALL                             R9 1 3
       77 FORGPREP                         R9
       78 GETTABLE                         R14 R7 R13
       79 JUMPIF                           R14 ; [+2]
       80 DUPCLOSURE                       R14 K23 [PROTO_4]
       81 SETTABLE                         R14 R7 R13
       82 FORGLOOP                         R9 2 ; [-5]
       84 RETURN                           R7 1
