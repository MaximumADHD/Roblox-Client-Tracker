PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+6]
        7 MOVE                             R1 R0
        8 GETUPVAL                         R2 0
        9 CALL                             R1 1 1
       10 SETUPVAL                         R1 0
       11 JUMP                             ; [+1]
       12 SETUPVAL                         R0 0
       13 GETUPVAL                         R1 1
       14 GETUPVAL                         R3 0
       15 NAMECALL                         R1 R1 K3 ["Fire"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["createBinding"]
        8 GETUPVAL                         R1 2
        9 CALL                             R0 1 2
       10 GETUPVAL                         R2 3
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K1 ["Connect"]
       14 CALL                             R2 2 0
       15 SETUPVAL                         R0 0
       16 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          REF R0
        6 CAPTURE                          VAL R1
        7 LOADNIL                          R3
        8 DUPTABLE                         R4 K4 [{"get", "getBinding", "changedSignal"}]
        9 NEWCLOSURE                       R5 P1
       10 CAPTURE                          REF R0
       11 SETTABLEKS                       R5 R4 K1 ["get"]
       13 NEWCLOSURE                       R5 P2
       14 CAPTURE                          REF R3
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          REF R0
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R5 R4 K2 ["getBinding"]
       20 SETTABLEKS                       R1 R4 K3 ["changedSignal"]
       22 MOVE                             R5 R2
       23 CLOSEUPVALS                      R0
       24 RETURN                           R4 2

PROTO_4:
        0 LOADB                            R2 1
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+5]
        8 GETIMPORT                        R2 K4 [table.isfrozen]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       14 LOADK                            R3 K5 ["Observable.use can only be used on frozen state"]
       15 GETIMPORT                        R1 K7 [assert]
       17 CALL                             R1 2 0
       18 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 LOADB                            R3 1
        5 FASTCALL1                        TYPEOF R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K2 [typeof]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+5]
       12 GETIMPORT                        R3 K5 [table.isfrozen]
       14 MOVE                             R4 R1
       15 CALL                             R3 1 1
       16 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       18 LOADK                            R4 K6 ["Observable.use can only be used on frozen state"]
       19 GETIMPORT                        R2 K8 [assert]
       21 CALL                             R2 2 0
       22 MOVE                             R0 R1
       23 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K2 [typeof]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K3 ["function"] ; [+6]
       11 GETUPVAL                         R1 1
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 LOADB                            R4 1
       18 FASTCALL1                        TYPEOF R0 ; [+3]
       19 MOVE                             R6 R0
       20 GETIMPORT                        R5 K2 [typeof]
       22 CALL                             R5 1 1
       23 JUMPIFNOTEQKS                    R5 K4 ["table"] ; [+5]
       25 GETIMPORT                        R4 K6 [table.isfrozen]
       27 MOVE                             R5 R0
       28 CALL                             R4 1 1
       29 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       31 LOADK                            R5 K7 ["Observable.use can only be used on frozen state"]
       32 GETIMPORT                        R3 K9 [assert]
       34 CALL                             R3 2 0
       35 MOVE                             R2 R0
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

PROTO_8:
        0 DUPCLOSURE                       R1 K0 [PROTO_4]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K1 ["useState"]
        4 NEWCLOSURE                       R3 P1
        5 CAPTURE                          VAL R0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       10 NEWCLOSURE                       R5 P2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R3
       13 NEWTABLE                         R6 0 1
       15 MOVE                             R7 R0
       16 SETLIST                          R6 R7 1 [1]
       18 CALL                             R4 2 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K3 ["useEffect"]
       22 MOVE                             R6 R4
       23 NEWTABLE                         R7 0 1
       25 MOVE                             R8 R4
       26 SETLIST                          R7 R8 1 [1]
       28 CALL                             R5 2 0
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R6 R0 K4 ["changedSignal"]
       32 MOVE                             R7 R4
       33 NEWTABLE                         R8 0 1
       35 MOVE                             R9 R4
       36 SETLIST                          R8 R9 1 [1]
       38 CALL                             R5 3 0
       39 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+7]
        5 MOVE                             R1 R0
        6 CALL                             R1 0 0
        7 GETUPVAL                         R1 0
        8 LOADNIL                          R2
        9 SETTABLEKS                       R2 R1 K0 ["current"]
       11 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["get"]
        5 CALL                             R2 0 -1
        6 CALL                             R1 -1 1
        7 SETTABLEKS                       R1 R0 K1 ["current"]
        9 GETUPVAL                         R0 3
       10 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R1 ; [+7]
        5 MOVE                             R2 R1
        6 CALL                             R2 0 0
        7 GETUPVAL                         R2 0
        8 LOADNIL                          R3
        9 SETTABLEKS                       R3 R2 K0 ["current"]
       11 GETUPVAL                         R1 0
       12 GETUPVAL                         R2 1
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 SETTABLEKS                       R2 R1 K0 ["current"]
       17 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useRef"]
        3 LOADNIL                          R4
        4 CALL                             R3 1 1
        5 GETIMPORT                        R4 K3 [table.clone]
        7 MOVE                             R5 R2
        8 CALL                             R4 1 1
        9 FASTCALL2                        TABLE_INSERT R4 R0 ; [+5]
       11 MOVE                             R6 R4
       12 MOVE                             R7 R0
       13 GETIMPORT                        R5 K5 [table.insert]
       15 CALL                             R5 2 0
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R3
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K6 ["useEffect"]
       21 NEWCLOSURE                       R7 P1
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R5
       26 MOVE                             R8 R4
       27 CALL                             R6 2 0
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R7 R0 K7 ["changedSignal"]
       31 NEWCLOSURE                       R8 P2
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R1
       34 MOVE                             R9 R4
       35 CALL                             R6 3 0
       36 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["create"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Signal"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Hooks"]
       29 GETTABLEKS                       R4 R4 K12 ["useEventConnection"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 4 0
       34 DUPCLOSURE                       R5 K13 [PROTO_3]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R5 R4 K14 ["create"]
       39 DUPCLOSURE                       R5 K15 [PROTO_8]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 SETTABLEKS                       R5 R4 K16 ["use"]
       44 DUPCLOSURE                       R5 K17 [PROTO_12]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R5 R4 K18 ["useEffect"]
       49 DUPCLOSURE                       R5 K19 [PROTO_14]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R5 R4 K20 ["useState"]
       54 RETURN                           R4 1
