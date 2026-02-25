PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 2 0
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K2 ["Tag"]
        9 LOADK                            R5 K3 ["Component-NotificationStatus"]
       10 SETTABLE                         R5 R3 R4
       11 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
       13 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       15 DUPTABLE                         R4 K6 [{"Container"}]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K0 ["createElement"]
       19 LOADK                            R6 K1 ["Frame"]
       20 NEWTABLE                         R7 2 0
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R8 R9 K2 ["Tag"]
       25 LOADK                            R9 K7 ["Component-InnerNotificationStatus"]
       26 SETTABLE                         R9 R7 R8
       27 LOADN                            R8 1
       28 SETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       30 DUPTABLE                         R8 K10 [{"Indicator", "ElapsedTime"}]
       31 GETUPVAL                         R10 0
       32 GETTABLEKS                       R9 R10 K0 ["createElement"]
       34 LOADK                            R10 K11 ["ImageLabel"]
       35 NEWTABLE                         R11 2 0
       37 GETUPVAL                         R13 0
       38 GETTABLEKS                       R12 R13 K2 ["Tag"]
       40 GETTABLEKS                       R13 R0 K12 ["ReadStatusIconTag"]
       42 SETTABLE                         R13 R11 R12
       43 LOADN                            R12 1
       44 SETTABLEKS                       R12 R11 K4 ["LayoutOrder"]
       46 CALL                             R9 2 1
       47 SETTABLEKS                       R9 R8 K8 ["Indicator"]
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R9 R10 K0 ["createElement"]
       52 LOADK                            R10 K13 ["TextLabel"]
       53 DUPTABLE                         R11 K15 [{"Text", "LayoutOrder"}]
       54 GETTABLEKS                       R12 R0 K9 ["ElapsedTime"]
       56 SETTABLEKS                       R12 R11 K14 ["Text"]
       58 LOADN                            R12 2
       59 SETTABLEKS                       R12 R11 K4 ["LayoutOrder"]
       61 CALL                             R9 2 1
       62 SETTABLEKS                       R9 R8 K9 ["ElapsedTime"]
       64 CALL                             R5 3 1
       65 SETTABLEKS                       R5 R4 K5 ["Container"]
       67 CALL                             R1 3 -1
       68 RETURN                           R1 -1

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
       18 RETURN                           R2 1
