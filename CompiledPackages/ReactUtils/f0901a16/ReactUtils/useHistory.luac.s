PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["current"]
        6 JUMPIFNOTEQKNIL                  R1 ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 GETUPVAL                         R5 2
       11 FASTCALL2                        ASSERT R4 R5 ; [+3]
       13 GETIMPORT                        R3 K2 [assert]
       15 CALL                             R3 2 0
       16 JUMPIFNOTEQKNIL                  R2 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 GETUPVAL                         R5 2
       21 FASTCALL2                        ASSERT R4 R5 ; [+3]
       23 GETIMPORT                        R3 K2 [assert]
       25 CALL                             R3 2 0
       26 GETTABLE                         R3 R1 R0
       27 JUMPIFNOT                        R3 ; [+4]
       28 GETTABLE                         R4 R1 R0
       29 LENGTH                           R3 R4
       30 JUMPIFNOTEQKN                    R3 K3 [0] ; [+2]
       32 RETURN                           R0 0
       33 GETTABLE                         R3 R2 R0
       34 JUMPIF                           R3 ; [+3]
       35 NEWTABLE                         R3 0 0
       37 SETTABLE                         R3 R2 R0
       38 GETTABLE                         R4 R1 R0
       39 LENGTH                           R3 R4
       40 GETTABLE                         R5 R1 R0
       41 GETTABLE                         R4 R5 R3
       42 GETTABLE                         R6 R2 R0
       43 GETUPVAL                         R7 3
       44 GETTABLEKS                       R7 R7 K0 ["current"]
       46 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
       48 GETIMPORT                        R5 K6 [table.insert]
       50 CALL                             R5 2 0
       51 GETIMPORT                        R5 K8 [table.remove]
       53 GETTABLE                         R6 R1 R0
       54 MOVE                             R7 R3
       55 CALL                             R5 2 0
       56 GETUPVAL                         R5 3
       57 SETTABLEKS                       R4 R5 K0 ["current"]
       59 GETUPVAL                         R5 4
       60 MOVE                             R6 R4
       61 CALL                             R5 1 0
       62 GETUPVAL                         R5 0
       63 SETTABLEKS                       R1 R5 K0 ["current"]
       65 GETUPVAL                         R5 1
       66 SETTABLEKS                       R2 R5 K0 ["current"]
       68 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["current"]
        6 JUMPIFNOTEQKNIL                  R1 ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 GETUPVAL                         R5 2
       11 FASTCALL2                        ASSERT R4 R5 ; [+3]
       13 GETIMPORT                        R3 K2 [assert]
       15 CALL                             R3 2 0
       16 JUMPIFNOTEQKNIL                  R2 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 GETUPVAL                         R5 2
       21 FASTCALL2                        ASSERT R4 R5 ; [+3]
       23 GETIMPORT                        R3 K2 [assert]
       25 CALL                             R3 2 0
       26 GETTABLE                         R3 R2 R0
       27 JUMPIFNOT                        R3 ; [+4]
       28 GETTABLE                         R4 R2 R0
       29 LENGTH                           R3 R4
       30 JUMPIFNOTEQKN                    R3 K3 [0] ; [+2]
       32 RETURN                           R0 0
       33 GETTABLE                         R4 R2 R0
       34 LENGTH                           R3 R4
       35 GETTABLE                         R5 R2 R0
       36 GETTABLE                         R4 R5 R3
       37 GETTABLE                         R6 R1 R0
       38 GETUPVAL                         R7 3
       39 GETTABLEKS                       R7 R7 K0 ["current"]
       41 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
       43 GETIMPORT                        R5 K6 [table.insert]
       45 CALL                             R5 2 0
       46 GETIMPORT                        R5 K8 [table.remove]
       48 GETTABLE                         R6 R2 R0
       49 MOVE                             R7 R3
       50 CALL                             R5 2 0
       51 JUMPIFNOTEQKNIL                  R4 ; [+2]
       53 LOADB                            R6 0 +1
       54 LOADB                            R6 1
       55 GETUPVAL                         R7 2
       56 FASTCALL2                        ASSERT R6 R7 ; [+3]
       58 GETIMPORT                        R5 K2 [assert]
       60 CALL                             R5 2 0
       61 GETUPVAL                         R5 3
       62 SETTABLEKS                       R4 R5 K0 ["current"]
       64 GETUPVAL                         R5 4
       65 MOVE                             R6 R4
       66 CALL                             R5 1 0
       67 GETUPVAL                         R5 0
       68 SETTABLEKS                       R1 R5 K0 ["current"]
       70 GETUPVAL                         R5 1
       71 SETTABLEKS                       R2 R5 K0 ["current"]
       73 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnUndo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 NAMECALL                         R0 R0 K1 ["Connect"]
       11 CALL                             R0 2 1
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["OnRedo"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 NAMECALL                         R1 R1 K1 ["Connect"]
       23 CALL                             R1 2 1
       24 NEWCLOSURE                       R2 P2
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R1
       27 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["current"]
        5 GETUPVAL                         R0 1
        6 NEWTABLE                         R1 0 0
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R4 0 +1
        6 LOADB                            R4 1
        7 GETUPVAL                         R5 1
        8 FASTCALL2                        ASSERT R4 R5 ; [+3]
       10 GETIMPORT                        R3 K2 [assert]
       12 CALL                             R3 2 0
       13 GETTABLE                         R3 R2 R0
       14 JUMPIF                           R3 ; [+3]
       15 NEWTABLE                         R3 0 0
       17 SETTABLE                         R3 R2 R0
       18 GETUPVAL                         R3 2
       19 NEWTABLE                         R4 0 0
       21 SETTABLEKS                       R4 R3 K0 ["current"]
       23 GETUPVAL                         R3 3
       24 MOVE                             R5 R0
       25 NAMECALL                         R3 R3 K3 ["SetWaypoint"]
       27 CALL                             R3 2 0
       28 GETUPVAL                         R4 4
       29 GETTABLEKS                       R4 R4 K0 ["current"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K5 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFNOTEQKS                    R3 K6 ["table"] ; [+13]
       37 GETTABLE                         R4 R2 R0
       38 GETIMPORT                        R5 K8 [table.clone]
       40 GETUPVAL                         R6 4
       41 GETTABLEKS                       R6 R6 K0 ["current"]
       43 CALL                             R5 1 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R3 K10 [table.insert]
       47 CALL                             R3 -1 0
       48 JUMP                             ; [+9]
       49 GETTABLE                         R4 R2 R0
       50 GETUPVAL                         R5 4
       51 GETTABLEKS                       R5 R5 K0 ["current"]
       53 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       55 GETIMPORT                        R3 K10 [table.insert]
       57 CALL                             R3 2 0
       58 GETUPVAL                         R3 4
       59 SETTABLEKS                       R1 R3 K0 ["current"]
       61 GETUPVAL                         R3 0
       62 SETTABLEKS                       R2 R3 K0 ["current"]
       64 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useRef"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["useRef"]
        8 NEWTABLE                         R5 0 0
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K0 ["useRef"]
       14 NEWTABLE                         R6 0 0
       16 CALL                             R5 1 1
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K1 ["useEffect"]
       20 NEWCLOSURE                       R7 P0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R5
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R1
       27 MOVE                             R8 R2
       28 CALL                             R6 2 0
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K1 ["useEffect"]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R5
       35 MOVE                             R8 R2
       36 CALL                             R6 2 0
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       40 NEWCLOSURE                       R7 P2
       41 CAPTURE                          VAL R4
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          VAL R5
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          VAL R3
       46 MOVE                             R8 R2
       47 CALL                             R6 2 1
       48 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["ReactUtils"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["React"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R1 K12 ["LUAU_ANALYZE_ERROR"]
       22 DUPCLOSURE                       R5 K13 [PROTO_6]
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R4
       26 RETURN                           R5 1
