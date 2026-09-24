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
        2 JUMPIFNOT                        R3 ; [+10]
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R2 ; [+2]
        8 LOADN                            R5 -1
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
       28 LOADN                            R6 -1
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
       10 LOADN                            R5 -1
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
       32 LOADN                            R6 -1
       33 JUMPIFNOTLT                      R4 R5 ; [+3]
       35 MOVE                             R3 R6
       36 RETURN                           R3 1
       37 MINUS                            R3 R6
       38 RETURN                           R3 1

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
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["AssetInfoField"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Util"]
       29 GETTABLEKS                       R5 R5 K12 ["naturalCompare"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R6 K13 ["Flags"]
       38 GETTABLEKS                       R6 R6 K14 ["getFFlagAmrNaturalSortOrder"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R7 K13 ["Flags"]
       47 GETTABLEKS                       R7 R7 K15 ["getFFlagAmrEnableVersioning"]
       49 CALL                             R6 1 1
       50 NEWTABLE                         R7 0 0
       52 DUPCLOSURE                       R8 K16 [PROTO_0]
       53 GETTABLEKS                       R9 R3 K17 ["DisplayName"]
       55 DUPCLOSURE                       R10 K18 [PROTO_1]
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R4
       58 SETTABLE                         R10 R7 R9
       59 GETTABLEKS                       R9 R3 K19 ["Creator"]
       61 DUPCLOSURE                       R10 K20 [PROTO_2]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R4
       64 SETTABLE                         R10 R7 R9
       65 GETTABLEKS                       R9 R3 K21 ["VersionNumber"]
       67 MOVE                             R11 R6
       68 CALL                             R11 0 1
       69 JUMPIFNOT                        R11 ; [+3]
       70 DUPCLOSURE                       R10 K22 [PROTO_3]
       71 CAPTURE                          VAL R1
       72 JUMP                             ; [+1]
       73 LOADNIL                          R10
       74 SETTABLE                         R10 R7 R9
       75 GETTABLEKS                       R9 R2 K23 ["asList"]
       77 MOVE                             R10 R3
       78 CALL                             R9 1 3
       79 FORGPREP                         R9
       80 GETTABLE                         R14 R7 R13
       81 JUMPIF                           R14 ; [+2]
       82 DUPCLOSURE                       R14 K24 [PROTO_4]
       83 SETTABLE                         R14 R7 R13
       84 FORGLOOP                         R9 2 ; [-5]
       86 RETURN                           R7 1
