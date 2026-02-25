PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 4 0
        6 GETTABLEKS                       R4 R0 K2 ["Size"]
        8 SETTABLEKS                       R4 R3 K2 ["Size"]
       10 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
       12 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K4 ["Tag"]
       17 LOADK                            R5 K5 ["Component-NotificationText X-Column"]
       18 SETTABLE                         R5 R3 R4
       19 DUPTABLE                         R4 K8 [{"Subject", "Subline"}]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K0 ["createElement"]
       23 LOADK                            R6 K9 ["TextLabel"]
       24 DUPTABLE                         R7 K11 [{"Text", "LayoutOrder"}]
       25 GETTABLEKS                       R8 R0 K6 ["Subject"]
       27 SETTABLEKS                       R8 R7 K10 ["Text"]
       29 LOADN                            R8 1
       30 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       32 CALL                             R5 2 1
       33 SETTABLEKS                       R5 R4 K6 ["Subject"]
       35 GETTABLEKS                       R6 R0 K7 ["Subline"]
       37 JUMPIFEQKNIL                     R6 ; [+19]
       39 GETTABLEKS                       R6 R0 K7 ["Subline"]
       41 JUMPIFEQKS                       R6 K12 [""] ; [+15]
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R5 R6 K0 ["createElement"]
       46 LOADK                            R6 K9 ["TextLabel"]
       47 DUPTABLE                         R7 K11 [{"Text", "LayoutOrder"}]
       48 GETTABLEKS                       R8 R0 K7 ["Subline"]
       50 SETTABLEKS                       R8 R7 K10 ["Text"]
       52 LOADN                            R8 2
       53 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       55 CALL                             R5 2 1
       56 JUMP                             ; [+1]
       57 LOADNIL                          R5
       58 SETTABLEKS                       R5 R4 K7 ["Subline"]
       60 CALL                             R1 3 -1
       61 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K7 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 GETTABLEKS                       R3 R1 K8 ["memo"]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 -1
       22 RETURN                           R3 -1
