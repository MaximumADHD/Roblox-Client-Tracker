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
        8 JUMP                             ; [+5]
        9 GETIMPORT                        R2 K3 [warn]
       11 LOADK                            R3 K4 ["Flag Editor failed to load flags:"]
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 GETIMPORT                        R2 K1 [pcall]
       16 GETUPVAL                         R3 2
       17 CALL                             R2 1 2
       18 MOVE                             R0 R2
       19 MOVE                             R1 R3
       20 JUMPIFNOT                        R0 ; [+4]
       21 GETUPVAL                         R2 3
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 RETURN                           R0 0
       25 GETIMPORT                        R2 K3 [warn]
       27 LOADK                            R3 K5 ["Flag Editor failed to load overrides:"]
       28 MOVE                             R4 R1
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["useState"]
        9 NEWTABLE                         R4 0 0
       11 CALL                             R3 1 2
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K1 ["useEffect"]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R4
       20 NEWTABLE                         R7 0 0
       22 CALL                             R5 2 0
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R7 0 1
       32 MOVE                             R8 R0
       33 SETLIST                          R7 R8 1 [1]
       35 CALL                             R5 2 1
       36 DUPTABLE                         R6 K6 [{"flags", "overrides", "saveOverrides"}]
       37 SETTABLEKS                       R1 R6 K3 ["flags"]
       39 SETTABLEKS                       R3 R6 K4 ["overrides"]
       41 SETTABLEKS                       R5 R6 K5 ["saveOverrides"]
       43 RETURN                           R6 1

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
       22 GETIMPORT                        R5 K1 [script]
       24 GETTABLEKS                       R5 R5 K4 ["Parent"]
       26 GETTABLEKS                       R5 R5 K12 ["FlagUtils"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K10 [require]
       31 GETIMPORT                        R6 K1 [script]
       33 GETTABLEKS                       R6 R6 K4 ["Parent"]
       35 GETTABLEKS                       R6 R6 K13 ["Settings"]
       37 CALL                             R5 1 1
       38 DUPCLOSURE                       R6 K14 [PROTO_0]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R5
       41 DUPCLOSURE                       R7 K15 [PROTO_1]
       42 CAPTURE                          VAL R5
       43 DUPCLOSURE                       R8 K16 [PROTO_2]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R5
       46 DUPCLOSURE                       R9 K17 [PROTO_5]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R8
       51 RETURN                           R9 1
