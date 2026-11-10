PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["NormalizeFlags"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["GetFFlags"]
        6 CALL                             R1 0 -1
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GetFFlagOverrides"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R2 K1 [next]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+3]
        6 LOADK                            R1 K2 ["{}"]
        7 JUMP                             ; [+5]
        8 GETUPVAL                         R1 0
        9 MOVE                             R3 R0
       10 NAMECALL                         R1 R1 K3 ["JSONEncode"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K4 ["SetFFlagOverrides"]
       16 MOVE                             R3 R1
       17 CALL                             R2 1 1
       18 JUMPIF                           R2 ; [+4]
       19 GETIMPORT                        R2 K6 [error]
       21 LOADK                            R3 K7 ["SetFFlagOverrides returned false"]
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0
        9 GETIMPORT                        R2 K3 [warn]
       11 LOADK                            R3 K4 ["Flag Editor failed to load flags:"]
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0
        9 GETIMPORT                        R2 K3 [warn]
       11 LOADK                            R3 K4 ["Flag Editor failed to load overrides:"]
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 2
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R0
        8 CALL                             R3 1 0
        9 GETUPVAL                         R3 2
       10 JUMPIFNOT                        R3 ; [+2]
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 0
       13 LOADB                            R3 1
       14 RETURN                           R3 1
       15 GETIMPORT                        R3 K3 [warn]
       17 LOADK                            R4 K4 ["Flag Editor failed to save overrides:"]
       18 MOVE                             R5 R2
       19 CALL                             R3 2 0
       20 LOADB                            R3 0
       21 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 NEWTABLE                         R3 0 0
        5 CALL                             R2 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["useState"]
        9 NEWTABLE                         R5 0 0
       11 CALL                             R4 1 2
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K1 ["useCallback"]
       15 NEWCLOSURE                       R7 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R3
       18 NEWTABLE                         R8 0 0
       20 CALL                             R6 2 1
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R7 R7 K2 ["useEffect"]
       24 NEWCLOSURE                       R8 P1
       25 CAPTURE                          VAL R6
       26 NEWTABLE                         R9 0 2
       28 MOVE                             R10 R1
       29 MOVE                             R11 R6
       30 SETLIST                          R9 R10 2 [1]
       32 CALL                             R7 2 0
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K2 ["useEffect"]
       36 NEWCLOSURE                       R8 P2
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          VAL R5
       39 NEWTABLE                         R9 0 0
       41 CALL                             R7 2 0
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R7 R7 K1 ["useCallback"]
       45 NEWCLOSURE                       R8 P3
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R0
       49 NEWTABLE                         R9 0 1
       51 MOVE                             R10 R0
       52 SETLIST                          R9 R10 1 [1]
       54 CALL                             R7 2 1
       55 DUPTABLE                         R8 K7 [{"flags", "overrides", "reload", "saveOverrides"}]
       56 SETTABLEKS                       R2 R8 K3 ["flags"]
       58 SETTABLEKS                       R4 R8 K4 ["overrides"]
       60 SETTABLEKS                       R6 R8 K5 ["reload"]
       62 SETTABLEKS                       R7 R8 K6 ["saveOverrides"]
       64 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FlagEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [game]
       11 LOADK                            R4 K7 ["HttpService"]
       12 NAMECALL                         R2 R2 K8 ["GetService"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R1 K11 ["React"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R0 K12 ["FlagUtils"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R0 K13 ["Settings"]
       29 CALL                             R5 1 1
       30 DUPCLOSURE                       R6 K14 [PROTO_0]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R5
       33 DUPCLOSURE                       R7 K15 [PROTO_1]
       34 CAPTURE                          VAL R5
       35 DUPCLOSURE                       R8 K16 [PROTO_2]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R5
       38 DUPCLOSURE                       R9 K17 [PROTO_7]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R8
       43 RETURN                           R9 1
