PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLE                         R1 R0 R2
       11 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+5]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["Portal"]
        6 RETURN                           R1 1
        7 GETUPVAL                         R2 2
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K2 [typeof]
       12 CALL                             R3 1 1
       13 GETTABLE                         R1 R2 R3
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Symbol"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["strict"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R5 K3 [script]
       23 GETTABLEKS                       R4 R5 K4 ["Parent"]
       25 GETTABLEKS                       R3 R4 K7 ["Portal"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K9 [newproxy]
       30 LOADB                            R4 1
       31 CALL                             R3 1 1
       32 DUPTABLE                         R4 K14 [{"Portal", "Host", "Function", "Stateful", "Fragment"}]
       33 GETTABLEKS                       R5 R0 K15 ["named"]
       35 LOADK                            R6 K7 ["Portal"]
       36 CALL                             R5 1 1
       37 SETTABLEKS                       R5 R4 K7 ["Portal"]
       39 GETTABLEKS                       R5 R0 K15 ["named"]
       41 LOADK                            R6 K10 ["Host"]
       42 CALL                             R5 1 1
       43 SETTABLEKS                       R5 R4 K10 ["Host"]
       45 GETTABLEKS                       R5 R0 K15 ["named"]
       47 LOADK                            R6 K11 ["Function"]
       48 CALL                             R5 1 1
       49 SETTABLEKS                       R5 R4 K11 ["Function"]
       51 GETTABLEKS                       R5 R0 K15 ["named"]
       53 LOADK                            R6 K12 ["Stateful"]
       54 CALL                             R5 1 1
       55 SETTABLEKS                       R5 R4 K12 ["Stateful"]
       57 GETTABLEKS                       R5 R0 K15 ["named"]
       59 LOADK                            R6 K13 ["Fragment"]
       60 CALL                             R5 1 1
       61 SETTABLEKS                       R5 R4 K13 ["Fragment"]
       63 DUPCLOSURE                       R5 K16 [PROTO_0]
       64 CAPTURE                          VAL R3
       65 SETTABLEKS                       R5 R4 K17 ["of"]
       67 NEWTABLE                         R5 4 0
       69 GETTABLEKS                       R6 R4 K10 ["Host"]
       71 SETTABLEKS                       R6 R5 K18 ["string"]
       73 GETTABLEKS                       R6 R4 K11 ["Function"]
       75 SETTABLEKS                       R6 R5 K19 ["function"]
       77 GETTABLEKS                       R6 R4 K12 ["Stateful"]
       79 SETTABLEKS                       R6 R5 K20 ["table"]
       81 DUPCLOSURE                       R6 K21 [PROTO_1]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R5
       85 SETTABLEKS                       R6 R4 K22 ["fromComponent"]
       87 FASTCALL1                        GETMETATABLE R3 ; [+3]
       88 MOVE                             R7 R3
       89 GETIMPORT                        R6 K24 [getmetatable]
       91 CALL                             R6 1 1
       92 SETTABLEKS                       R4 R6 K25 ["__index"]
       94 MOVE                             R6 R1
       95 MOVE                             R7 R4
       96 LOADK                            R8 K26 ["ElementKind"]
       97 CALL                             R6 2 0
       98 RETURN                           R3 1
