PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Stylizer"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{["tag"] = "row flex-x-between align-y-center gap-medium size-full"}]
        7 DUPTABLE                         R5 K8 [{"Padding", "Spacer", "CopyLinkButton"}]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K1 ["createElement"]
       11 LOADK                            R7 K9 ["UIPadding"]
       12 DUPTABLE                         R8 K13 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
       13 GETTABLEKS                       R9 R1 K14 ["header"]
       15 GETTABLEKS                       R9 R9 K15 ["paddingTop"]
       17 SETTABLEKS                       R9 R8 K10 ["PaddingTop"]
       19 GETTABLEKS                       R9 R1 K14 ["header"]
       21 GETTABLEKS                       R9 R9 K16 ["paddingLeft"]
       23 SETTABLEKS                       R9 R8 K11 ["PaddingLeft"]
       25 GETTABLEKS                       R9 R1 K14 ["header"]
       27 GETTABLEKS                       R9 R9 K17 ["paddingRight"]
       29 SETTABLEKS                       R9 R8 K12 ["PaddingRight"]
       31 CALL                             R6 2 1
       32 SETTABLEKS                       R6 R5 K5 ["Padding"]
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K1 ["createElement"]
       37 GETUPVAL                         R7 1
       38 DUPTABLE                         R8 K20 [{["LayoutOrder"] = 2}]
       39 CALL                             R6 2 1
       40 SETTABLEKS                       R6 R5 K6 ["Spacer"]
       42 GETUPVAL                         R6 2
       43 JUMPIFNOT                        R6 ; [+13]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K1 ["createElement"]
       47 GETUPVAL                         R7 3
       48 GETUPVAL                         R8 4
       49 GETTABLEKS                       R8 R8 K21 ["Dictionary"]
       51 GETTABLEKS                       R8 R8 K22 ["join"]
       53 DUPTABLE                         R9 K24 [{["LayoutOrder"] = 3}]
       54 MOVE                             R10 R0
       55 CALL                             R8 2 -1
       56 CALL                             R6 -1 1
       57 SETTABLEKS                       R6 R5 K7 ["CopyLinkButton"]
       59 CALL                             R2 3 -1
       60 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Collab8864_ShowCopyLinkButton"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Src"]
       19 GETTABLEKS                       R3 R3 K10 ["Components"]
       21 GETTABLEKS                       R3 R3 K11 ["CopyLinkButton"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [require]
       26 GETTABLEKS                       R4 R1 K12 ["Packages"]
       28 GETTABLEKS                       R4 R4 K13 ["React"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K8 [require]
       33 GETTABLEKS                       R5 R1 K12 ["Packages"]
       35 GETTABLEKS                       R5 R5 K14 ["Foundation"]
       37 CALL                             R4 1 1
       38 GETTABLEKS                       R5 R4 K15 ["View"]
       40 GETIMPORT                        R6 K8 [require]
       42 GETTABLEKS                       R7 R1 K12 ["Packages"]
       44 GETTABLEKS                       R7 R7 K16 ["Cryo"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K8 [require]
       49 GETTABLEKS                       R8 R1 K9 ["Src"]
       51 GETTABLEKS                       R8 R8 K17 ["Types"]
       53 CALL                             R7 1 1
       54 DUPCLOSURE                       R8 K18 [PROTO_0]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R6
       60 RETURN                           R8 1
