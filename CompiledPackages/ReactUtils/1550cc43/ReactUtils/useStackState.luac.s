PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R1 K3 [table.insert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["current"]
       13 LENGTH                           R2 R3
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [table.remove]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["current"]
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["current"]
       10 LENGTH                           R2 R3
       11 CALL                             R1 1 0
       12 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["current"]
        6 LENGTH                           R2 R3
        7 GETTABLE                         R0 R1 R2
        8 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["current"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 LOADN                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 MOVE                             R2 R0
        4 JUMPIF                           R2 ; [+2]
        5 NEWTABLE                         R2 0 0
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R4 R1 K1 ["current"]
       10 JUMPIFNOTEQKNIL                  R4 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 GETUPVAL                         R4 1
       15 FASTCALL2                        ASSERT R3 R4 ; [+3]
       17 GETIMPORT                        R2 K3 [assert]
       19 CALL                             R2 2 0
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K4 ["useState"]
       23 GETTABLEKS                       R4 R1 K1 ["current"]
       25 LENGTH                           R3 R4
       26 CALL                             R2 1 2
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R3
       33 NEWTABLE                         R6 0 0
       35 CALL                             R4 2 1
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       39 NEWCLOSURE                       R6 P1
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 NEWTABLE                         R7 0 0
       44 CALL                             R5 2 1
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       48 NEWCLOSURE                       R7 P2
       49 CAPTURE                          VAL R1
       50 NEWTABLE                         R8 0 0
       52 CALL                             R6 2 1
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       56 NEWCLOSURE                       R8 P3
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R3
       59 NEWTABLE                         R9 0 0
       61 CALL                             R7 2 1
       62 DUPTABLE                         R8 K11 [{"push", "pop", "getTop", "clear", "size"}]
       63 SETTABLEKS                       R4 R8 K6 ["push"]
       65 SETTABLEKS                       R5 R8 K7 ["pop"]
       67 SETTABLEKS                       R6 R8 K8 ["getTop"]
       69 SETTABLEKS                       R7 R8 K9 ["clear"]
       71 SETTABLEKS                       R2 R8 K10 ["size"]
       73 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReactUtils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R0 K8 ["LUAU_ANALYZE_ERROR"]
       16 DUPCLOSURE                       R4 K9 [PROTO_4]
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R3
       19 RETURN                           R4 1
