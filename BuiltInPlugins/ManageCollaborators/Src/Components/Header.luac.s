PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Stylizer"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{["tag"] = "row flex-x-between align-y-center gap-medium size-full"}]
        7 DUPTABLE                         R5 K7 [{"Padding", "Spacer"}]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K1 ["createElement"]
       11 LOADK                            R7 K8 ["UIPadding"]
       12 DUPTABLE                         R8 K12 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
       13 GETTABLEKS                       R9 R1 K13 ["header"]
       15 GETTABLEKS                       R9 R9 K14 ["paddingTop"]
       17 SETTABLEKS                       R9 R8 K9 ["PaddingTop"]
       19 GETTABLEKS                       R9 R1 K13 ["header"]
       21 GETTABLEKS                       R9 R9 K15 ["paddingLeft"]
       23 SETTABLEKS                       R9 R8 K10 ["PaddingLeft"]
       25 GETTABLEKS                       R9 R1 K13 ["header"]
       27 GETTABLEKS                       R9 R9 K16 ["paddingRight"]
       29 SETTABLEKS                       R9 R8 K11 ["PaddingRight"]
       31 CALL                             R6 2 1
       32 SETTABLEKS                       R6 R5 K5 ["Padding"]
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K1 ["createElement"]
       37 GETUPVAL                         R7 1
       38 DUPTABLE                         R8 K19 [{["LayoutOrder"] = 2}]
       39 CALL                             R6 2 1
       40 SETTABLEKS                       R6 R5 K6 ["Spacer"]
       42 CALL                             R2 3 -1
       43 RETURN                           R2 -1

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
       20 GETTABLEKS                       R3 R3 K7 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["View"]
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R5 R0 K9 ["Src"]
       29 GETTABLEKS                       R5 R5 K10 ["Types"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K11 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 RETURN                           R5 1
