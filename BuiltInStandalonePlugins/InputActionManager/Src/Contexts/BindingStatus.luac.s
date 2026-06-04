PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIF                           R2 ; [+3]
        5 NEWTABLE                         R3 0 0
        7 RETURN                           R3 1
        8 GETTABLE                         R3 R2 R1
        9 JUMPIF                           R3 ; [+2]
       10 NEWTABLE                         R3 0 0
       12 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLE                         R3 R2 R1
        7 JUMPIF                           R3 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R6 K3 [table.clone]
       11 GETUPVAL                         R9 1
       12 GETTABLEKS                       R9 R9 K0 ["current"]
       14 GETTABLE                         R8 R9 R0
       15 JUMPIF                           R8 ; [+3]
       16 NEWTABLE                         R7 0 0
       18 JUMP                             ; [+4]
       19 GETTABLE                         R7 R8 R1
       20 JUMPIF                           R7 ; [+2]
       21 NEWTABLE                         R7 0 0
       23 CALL                             R6 1 -1
       24 NAMECALL                         R4 R3 K4 ["Fire"]
       26 CALL                             R4 -1 0
       27 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIF                           R2 ; [+6]
        5 NEWTABLE                         R2 0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["current"]
       10 SETTABLE                         R2 R3 R0
       11 GETTABLE                         R3 R2 R1
       12 JUMPIF                           R3 ; [+6]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K1 ["new"]
       16 CALL                             R4 0 1
       17 MOVE                             R3 R4
       18 SETTABLE                         R3 R2 R1
       19 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+2]
        5 GETTABLE                         R3 R2 R1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R3
        8 JUMPIFNOT                        R3 ; [+5]
        9 LENGTH                           R4 R3
       10 LOADN                            R5 0
       11 JUMPIFNOTLT                      R5 R4 ; [+2]
       13 RETURN                           R0 0
       14 JUMPIFNOT                        R2 ; [+2]
       15 LOADNIL                          R4
       16 SETTABLE                         R4 R2 R1
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K0 ["current"]
       20 GETTABLE                         R4 R5 R0
       21 JUMPIFNOT                        R4 ; [+2]
       22 LOADNIL                          R5
       23 SETTABLE                         R5 R4 R1
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETTABLE                         R4 R3 R0
        4 JUMPIF                           R4 ; [+3]
        5 NEWTABLE                         R4 0 0
        7 SETTABLE                         R4 R3 R0
        8 GETTABLE                         R4 R3 R0
        9 GETTABLE                         R6 R4 R1
       10 JUMPIFNOTEQKNIL                  R6 ; [+2]
       12 LOADB                            R5 0 +1
       13 LOADB                            R5 1
       14 GETTABLE                         R6 R4 R1
       15 JUMPIF                           R6 ; [+3]
       16 NEWTABLE                         R6 0 0
       18 SETTABLE                         R6 R4 R1
       19 GETTABLE                         R6 R4 R1
       20 GETIMPORT                        R7 K3 [table.find]
       22 MOVE                             R8 R6
       23 MOVE                             R9 R2
       24 CALL                             R7 2 1
       25 JUMPIF                           R7 ; [+7]
       26 FASTCALL2                        TABLE_INSERT R6 R2 ; [+5]
       28 MOVE                             R8 R6
       29 MOVE                             R9 R2
       30 GETIMPORT                        R7 K5 [table.insert]
       32 CALL                             R7 2 0
       33 JUMPIF                           R5 ; [+19]
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R8 R8 K0 ["current"]
       37 GETTABLE                         R7 R8 R0
       38 JUMPIF                           R7 ; [+6]
       39 NEWTABLE                         R7 0 0
       41 GETUPVAL                         R8 1
       42 GETTABLEKS                       R8 R8 K0 ["current"]
       44 SETTABLE                         R7 R8 R0
       45 GETTABLE                         R8 R7 R1
       46 JUMPIF                           R8 ; [+6]
       47 GETUPVAL                         R9 2
       48 GETTABLEKS                       R9 R9 K6 ["new"]
       50 CALL                             R9 0 1
       51 MOVE                             R8 R9
       52 SETTABLE                         R8 R7 R1
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R8 R8 K0 ["current"]
       56 GETTABLE                         R7 R8 R0
       57 JUMPIF                           R7 ; [+1]
       58 RETURN                           R0 0
       59 GETTABLE                         R8 R7 R1
       60 JUMPIF                           R8 ; [+1]
       61 RETURN                           R0 0
       62 GETIMPORT                        R11 K8 [table.clone]
       64 GETUPVAL                         R14 0
       65 GETTABLEKS                       R14 R14 K0 ["current"]
       67 GETTABLE                         R13 R14 R0
       68 JUMPIF                           R13 ; [+3]
       69 NEWTABLE                         R12 0 0
       71 JUMP                             ; [+4]
       72 GETTABLE                         R12 R13 R1
       73 JUMPIF                           R12 ; [+2]
       74 NEWTABLE                         R12 0 0
       76 CALL                             R11 1 -1
       77 NAMECALL                         R9 R8 K9 ["Fire"]
       79 CALL                             R9 -1 0
       80 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["current"]
        3 GETTABLE                         R3 R4 R0
        4 JUMPIF                           R3 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLE                         R4 R3 R1
        7 JUMPIF                           R4 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R5 K3 [table.find]
       11 MOVE                             R6 R4
       12 MOVE                             R7 R2
       13 CALL                             R5 2 1
       14 JUMPIFNOT                        R5 ; [+5]
       15 GETIMPORT                        R6 K5 [table.remove]
       17 MOVE                             R7 R4
       18 MOVE                             R8 R5
       19 CALL                             R6 2 0
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R7 R7 K0 ["current"]
       23 GETTABLE                         R6 R7 R0
       24 JUMPIF                           R6 ; [+1]
       25 JUMP                             ; [+21]
       26 GETTABLE                         R7 R6 R1
       27 JUMPIF                           R7 ; [+1]
       28 JUMP                             ; [+18]
       29 GETIMPORT                        R10 K7 [table.clone]
       31 GETUPVAL                         R13 0
       32 GETTABLEKS                       R13 R13 K0 ["current"]
       34 GETTABLE                         R12 R13 R0
       35 JUMPIF                           R12 ; [+3]
       36 NEWTABLE                         R11 0 0
       38 JUMP                             ; [+4]
       39 GETTABLE                         R11 R12 R1
       40 JUMPIF                           R11 ; [+2]
       41 NEWTABLE                         R11 0 0
       43 CALL                             R10 1 -1
       44 NAMECALL                         R8 R7 K8 ["Fire"]
       46 CALL                             R8 -1 0
       47 LENGTH                           R6 R4
       48 JUMPIFNOTEQKN                    R6 K9 [0] ; [+25]
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R7 R7 K0 ["current"]
       53 GETTABLE                         R6 R7 R0
       54 JUMPIFNOT                        R6 ; [+2]
       55 GETTABLE                         R7 R6 R1
       56 JUMP                             ; [+1]
       57 LOADNIL                          R7
       58 JUMPIFNOT                        R7 ; [+5]
       59 LENGTH                           R8 R7
       60 LOADN                            R9 0
       61 JUMPIFNOTLT                      R9 R8 ; [+2]
       63 RETURN                           R0 0
       64 JUMPIFNOT                        R6 ; [+2]
       65 LOADNIL                          R8
       66 SETTABLE                         R8 R6 R1
       67 GETUPVAL                         R9 1
       68 GETTABLEKS                       R9 R9 K0 ["current"]
       70 GETTABLE                         R8 R9 R0
       71 JUMPIFNOT                        R8 ; [+2]
       72 LOADNIL                          R9
       73 SETTABLE                         R9 R8 R1
       74 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K3 ["current"]
        5 GETTABLE                         R4 R5 R0
        6 JUMPIF                           R4 ; [+3]
        7 NEWTABLE                         R3 0 0
        9 JUMP                             ; [+4]
       10 GETTABLE                         R3 R4 R1
       11 JUMPIF                           R3 ; [+2]
       12 NEWTABLE                         R3 0 0
       14 CALL                             R2 1 -1
       15 RETURN                           R2 -1

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["current"]
        3 GETTABLE                         R3 R4 R0
        4 JUMPIFNOT                        R3 ; [+2]
        5 GETTABLE                         R4 R3 R1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R4
        8 JUMPIF                           R4 ; [+2]
        9 DUPCLOSURE                       R5 K1 [PROTO_7]
       10 RETURN                           R5 1
       11 MOVE                             R7 R2
       12 NAMECALL                         R5 R4 K2 ["Connect"]
       14 CALL                             R5 2 1
       15 NEWCLOSURE                       R6 P1
       16 CAPTURE                          VAL R5
       17 RETURN                           R6 1

PROTO_10:
        0 DUPTABLE                         R0 K4 [{"getKeyCodeUsage", "addKeyCodeUsage", "removeKeyCodeUsage", "onKeyCodeUsageChanged"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["getKeyCodeUsage"]
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K1 ["addKeyCodeUsage"]
        8 GETUPVAL                         R1 2
        9 SETTABLEKS                       R1 R0 K2 ["removeKeyCodeUsage"]
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          UPVAL U3
       13 SETTABLEKS                       R1 R0 K3 ["onKeyCodeUsageChanged"]
       15 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["useRef"]
        9 NEWTABLE                         R3 0 0
       11 CALL                             R2 1 1
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R1
       14 NEWCLOSURE                       R4 P1
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R1
       17 NEWCLOSURE                       R5 P2
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U1
       20 NEWCLOSURE                       R6 P3
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K1 ["useCallback"]
       26 NEWCLOSURE                       R8 P4
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U1
       30 NEWTABLE                         R9 0 0
       32 CALL                             R7 2 1
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R8 R8 K1 ["useCallback"]
       36 NEWCLOSURE                       R9 P5
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R10 0 0
       41 CALL                             R8 2 1
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R9 R9 K2 ["useMemo"]
       45 NEWCLOSURE                       R10 P6
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R2
       50 NEWTABLE                         R11 0 2
       52 MOVE                             R12 R7
       53 MOVE                             R13 R8
       54 SETLIST                          R11 R12 2 [1]
       56 CALL                             R9 2 1
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R10 R10 K3 ["createElement"]
       60 GETUPVAL                         R11 2
       61 GETTABLEKS                       R11 R11 K4 ["Provider"]
       63 DUPTABLE                         R12 K6 [{"value"}]
       64 SETTABLEKS                       R9 R12 K5 ["value"]
       66 GETTABLEKS                       R13 R0 K7 ["children"]
       68 CALL                             R10 3 -1
       69 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Signal"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K12 ["createContext"]
       37 DUPTABLE                         R6 K17 [{"getKeyCodeUsage", "addKeyCodeUsage", "removeKeyCodeUsage", "onKeyCodeUsageChanged"}]
       38 GETTABLEKS                       R7 R2 K18 ["createUnimplemented"]
       40 LOADK                            R8 K13 ["getKeyCodeUsage"]
       41 CALL                             R7 1 1
       42 SETTABLEKS                       R7 R6 K13 ["getKeyCodeUsage"]
       44 GETTABLEKS                       R7 R2 K18 ["createUnimplemented"]
       46 LOADK                            R8 K14 ["addKeyCodeUsage"]
       47 CALL                             R7 1 1
       48 SETTABLEKS                       R7 R6 K14 ["addKeyCodeUsage"]
       50 GETTABLEKS                       R7 R2 K18 ["createUnimplemented"]
       52 LOADK                            R8 K15 ["removeKeyCodeUsage"]
       53 CALL                             R7 1 1
       54 SETTABLEKS                       R7 R6 K15 ["removeKeyCodeUsage"]
       56 GETTABLEKS                       R7 R2 K18 ["createUnimplemented"]
       58 LOADK                            R8 K16 ["onKeyCodeUsageChanged"]
       59 CALL                             R7 1 1
       60 SETTABLEKS                       R7 R6 K16 ["onKeyCodeUsageChanged"]
       62 CALL                             R5 1 1
       63 DUPCLOSURE                       R6 K19 [PROTO_11]
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R5
       67 DUPTABLE                         R7 K22 [{"Context", "Provider"}]
       68 SETTABLEKS                       R5 R7 K20 ["Context"]
       70 SETTABLEKS                       R6 R7 K21 ["Provider"]
       72 RETURN                           R7 1
