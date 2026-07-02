PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 4 0
        6 GETTABLEKS                       R4 R0 K2 ["Size"]
        8 SETTABLEKS                       R4 R3 K2 ["Size"]
       10 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
       12 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K4 ["Tag"]
       17 LOADK                            R5 K5 ["Component-NotificationText X-Column"]
       18 SETTABLE                         R5 R3 R4
       19 DUPTABLE                         R4 K8 [{"Subject", "Subline"}]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K0 ["createElement"]
       23 LOADK                            R6 K9 ["TextLabel"]
       24 DUPTABLE                         R7 K12 [{["Text"], ["LayoutOrder"] = 1}]
       25 GETTABLEKS                       R8 R0 K6 ["Subject"]
       27 SETTABLEKS                       R8 R7 K10 ["Text"]
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K6 ["Subject"]
       32 GETTABLEKS                       R6 R0 K7 ["Subline"]
       34 JUMPIFEQKNIL                     R6 ; [+16]
       36 GETTABLEKS                       R6 R0 K7 ["Subline"]
       38 JUMPIFEQKS                       R6 K13 [""] ; [+12]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K0 ["createElement"]
       43 LOADK                            R6 K9 ["TextLabel"]
       44 DUPTABLE                         R7 K15 [{["Text"], ["LayoutOrder"] = 2}]
       45 GETTABLEKS                       R8 R0 K7 ["Subline"]
       47 SETTABLEKS                       R8 R7 K10 ["Text"]
       49 CALL                             R5 2 1
       50 JUMP                             ; [+1]
       51 LOADNIL                          R5
       52 SETTABLEKS                       R5 R4 K7 ["Subline"]
       54 CALL                             R1 3 -1
       55 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K7 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 GETTABLEKS                       R3 R1 K8 ["memo"]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 -1
       22 RETURN                           R3 -1
