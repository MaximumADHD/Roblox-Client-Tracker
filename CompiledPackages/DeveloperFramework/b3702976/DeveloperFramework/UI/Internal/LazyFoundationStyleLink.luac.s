PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+5]
        4 NEWTABLE                         R2 0 0
        6 GETUPVAL                         R3 0
        7 SETTABLE                         R2 R3 R0
        8 GETTABLE                         R3 R2 R1
        9 JUMPIFNOTEQKNIL                  R3 ; [+38]
       11 DUPTABLE                         R4 K3 [{[1] = 0, ["inserted"]}]
       12 GETIMPORT                        R6 K6 [table.find]
       14 NAMECALL                         R7 R0 K7 ["GetDerives"]
       16 CALL                             R7 1 1
       17 MOVE                             R8 R1
       18 CALL                             R6 2 1
       19 JUMPIFEQKNIL                     R6 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 SETTABLEKS                       R5 R4 K2 ["inserted"]
       25 MOVE                             R3 R4
       26 SETTABLE                         R3 R2 R1
       27 GETTABLEKS                       R4 R3 K2 ["inserted"]
       29 JUMPIFNOT                        R4 ; [+18]
       30 GETIMPORT                        R4 K9 [table.clone]
       32 NAMECALL                         R5 R0 K7 ["GetDerives"]
       34 CALL                             R5 1 -1
       35 CALL                             R4 -1 1
       36 LOADN                            R7 1
       37 FASTCALL3                        TABLE_INSERT R4 R7 R1
       39 MOVE                             R6 R4
       40 MOVE                             R8 R1
       41 GETIMPORT                        R5 K11 [table.insert]
       43 CALL                             R5 3 0
       44 MOVE                             R7 R4
       45 NAMECALL                         R5 R0 K12 ["SetDerives"]
       47 CALL                             R5 2 0
       48 GETTABLEKS                       R4 R3 K0 ["count"]
       50 ADDK                             R4 R4 K13 [1]
       51 SETTABLEKS                       R4 R3 K0 ["count"]
       53 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+2]
        3 GETTABLE                         R3 R2 R1
        4 JUMP                             ; [+1]
        5 LOADNIL                          R3
        6 JUMPIFNOTEQKNIL                  R3 ; [+2]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R4 R3 K0 ["count"]
       11 SUBK                             R4 R4 K1 [1]
       12 SETTABLEKS                       R4 R3 K0 ["count"]
       14 GETTABLEKS                       R4 R3 K0 ["count"]
       16 LOADN                            R5 0
       17 JUMPIFNOTLT                      R5 R4 ; [+2]
       19 RETURN                           R0 0
       20 LOADNIL                          R4
       21 SETTABLE                         R4 R2 R1
       22 GETTABLEKS                       R4 R3 K2 ["inserted"]
       24 JUMPIFNOT                        R4 ; [+21]
       25 NEWTABLE                         R4 0 0
       27 NAMECALL                         R5 R0 K3 ["GetDerives"]
       29 CALL                             R5 1 3
       30 FORGPREP                         R5
       31 JUMPIFEQ                         R9 R1 ; [+8]
       33 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       35 MOVE                             R11 R4
       36 MOVE                             R12 R9
       37 GETIMPORT                        R10 K6 [table.insert]
       39 CALL                             R10 2 0
       40 FORGLOOP                         R5 2 ; [-10]
       42 MOVE                             R7 R4
       43 NAMECALL                         R5 R0 K7 ["SetDerives"]
       45 CALL                             R5 2 0
       46 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R2 1
       10 CALL                             R0 2 0
       11 NEWCLOSURE                       R0 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["Design"]
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K1 ["useEffect"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 NEWTABLE                         R6 0 3
       16 MOVE                             R7 R2
       17 MOVE                             R8 R1
       18 MOVE                             R9 R3
       19 SETLIST                          R6 R7 3 [1]
       21 CALL                             R4 2 0
       22 JUMPIFNOTEQKNIL                  R1 ; [+5]
       24 JUMPIFNOTEQKNIL                  R2 ; [+3]
       26 LOADNIL                          R4
       27 RETURN                           R4 1
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K2 ["createElement"]
       31 LOADK                            R5 K3 ["StyleLink"]
       32 DUPTABLE                         R6 K5 [{"StyleSheet"}]
       33 OR                               R7 R2 R1
       34 SETTABLEKS                       R7 R6 K4 ["StyleSheet"]
       36 CALL                             R4 2 -1
       37 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["Hooks"]
       25 GETTABLEKS                       R3 R3 K10 ["useStyleSheet"]
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K2 ["UI"]
       31 GETTABLEKS                       R5 R5 K9 ["Hooks"]
       33 GETTABLEKS                       R5 R5 K11 ["useStudioThemeName"]
       35 CALL                             R4 1 1
       36 NEWTABLE                         R6 0 0
       38 DUPTABLE                         R7 K14 [{["__mode"] = "k"}]
       39 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       41 GETIMPORT                        R5 K16 [setmetatable]
       43 CALL                             R5 2 1
       44 DUPCLOSURE                       R6 K17 [PROTO_0]
       45 CAPTURE                          VAL R5
       46 DUPCLOSURE                       R7 K18 [PROTO_1]
       47 CAPTURE                          VAL R5
       48 DUPCLOSURE                       R8 K19 [PROTO_4]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R7
       54 RETURN                           R8 1
