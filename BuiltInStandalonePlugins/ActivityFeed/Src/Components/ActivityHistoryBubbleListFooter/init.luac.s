PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 LOADK                            R3 K2 ["Frame"]
        6 NEWTABLE                         R4 2 0
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K3 ["Tag"]
       11 GETUPVAL                         R6 1
       12 LOADK                            R7 K4 ["X-Fill"]
       13 LOADK                            R8 K5 ["CX-Invisible"]
       14 LOADK                            R9 K6 ["Component-ActivityHistoryBubbleListFooter"]
       15 CALL                             R6 3 1
       16 SETTABLE                         R6 R4 R5
       17 GETTABLEKS                       R5 R1 K7 ["layoutOrder"]
       19 SETTABLEKS                       R5 R4 K8 ["LayoutOrder"]
       21 DUPTABLE                         R5 K10 [{"Title"}]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K1 ["createElement"]
       25 LOADK                            R7 K11 ["TextLabel"]
       26 NEWTABLE                         R8 2 0
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R9 R9 K3 ["Tag"]
       31 GETUPVAL                         R10 1
       32 LOADK                            R11 K12 ["X-Fit"]
       33 LOADK                            R12 K5 ["CX-Invisible"]
       34 CALL                             R10 2 1
       35 SETTABLE                         R10 R8 R9
       36 GETTABLEKS                       R9 R1 K13 ["title"]
       38 SETTABLEKS                       R9 R8 K14 ["Text"]
       40 CALL                             R6 2 1
       41 SETTABLEKS                       R6 R5 K9 ["Title"]
       43 CALL                             R2 3 -1
       44 RETURN                           R2 -1

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
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["Styling"]
       25 GETTABLEKS                       R3 R3 K9 ["joinTags"]
       27 GETTABLEKS                       R4 R1 K10 ["PureComponent"]
       29 LOADK                            R6 K11 ["ActivityHistoryBubbleListFooter"]
       30 NAMECALL                         R4 R4 K12 ["extend"]
       32 CALL                             R4 2 1
       33 DUPCLOSURE                       R5 K13 [PROTO_0]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R5 R4 K14 ["render"]
       38 RETURN                           R4 1
