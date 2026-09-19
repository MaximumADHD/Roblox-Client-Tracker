PROTO_0:
        0 SETTABLE                         R1 R1 R0
        1 GETUPVAL                         R2 0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETIMPORT                        R7 K2 [task.spawn]
        7 MOVE                             R8 R5
        8 CALL                             R7 1 0
        9 FORGLOOP                         R2 1 ; [-5]
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [table.clone]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 GETUPVAL                         R1 2
        4 LOADB                            R2 1
        5 SETTABLE                         R2 R1 R0
        6 NEWCLOSURE                       R1 P1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K2 [{"useActionState", "trigger"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["useActionState"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["trigger"]
        7 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETIMPORT                        R2 K3 [table.clone]
        5 GETUPVAL                         R3 1
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 2
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K4 ["useEffect"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 NEWTABLE                         R5 0 0
       17 CALL                             R3 2 0
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K5 ["useCallback"]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R5 0 1
       25 MOVE                             R6 R1
       26 SETLIST                          R5 R6 1 [1]
       28 CALL                             R3 2 1
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       32 NEWCLOSURE                       R5 P2
       33 CAPTURE                          UPVAL U3
       34 NEWTABLE                         R6 0 0
       36 CALL                             R4 2 1
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       40 NEWCLOSURE                       R6 P3
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 NEWTABLE                         R7 0 2
       45 MOVE                             R8 R3
       46 MOVE                             R9 R4
       47 SETLIST                          R7 R8 2 [1]
       49 CALL                             R5 2 1
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K7 ["createElement"]
       53 GETUPVAL                         R7 4
       54 GETTABLEKS                       R7 R7 K8 ["Provider"]
       56 DUPTABLE                         R8 K10 [{"value"}]
       57 SETTABLEKS                       R5 R8 K9 ["value"]
       59 GETTABLEKS                       R9 R0 K11 ["children"]
       61 CALL                             R6 3 -1
       62 RETURN                           R6 -1

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 NEWTABLE                         R2 0 0
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R1
        8 DUPTABLE                         R4 K2 [{"setActionState", "triggeredActions"}]
        9 SETTABLEKS                       R3 R4 K0 ["setActionState"]
       11 SETTABLEKS                       R2 R4 K1 ["triggeredActions"]
       13 NEWCLOSURE                       R5 P1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U1
       19 MOVE                             R6 R5
       20 MOVE                             R7 R4
       21 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CrossEnvironment"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Context"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Types"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K10 [PROTO_8]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 RETURN                           R4 1
