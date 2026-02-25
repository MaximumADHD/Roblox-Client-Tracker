PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Stylizer"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K3 [{"tag"}]
        7 LOADK                            R5 K4 ["size-full row gap-medium align-y-center flex-x-between"]
        8 SETTABLEKS                       R5 R4 K2 ["tag"]
       10 DUPTABLE                         R5 K8 [{"Padding", "Spacer", "CopyLinkButton"}]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K1 ["createElement"]
       14 LOADK                            R7 K9 ["UIPadding"]
       15 DUPTABLE                         R8 K13 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
       16 GETTABLEKS                       R10 R1 K14 ["header"]
       18 GETTABLEKS                       R9 R10 K15 ["paddingTop"]
       20 SETTABLEKS                       R9 R8 K10 ["PaddingTop"]
       22 GETTABLEKS                       R10 R1 K14 ["header"]
       24 GETTABLEKS                       R9 R10 K16 ["paddingLeft"]
       26 SETTABLEKS                       R9 R8 K11 ["PaddingLeft"]
       28 GETTABLEKS                       R10 R1 K14 ["header"]
       30 GETTABLEKS                       R9 R10 K17 ["paddingRight"]
       32 SETTABLEKS                       R9 R8 K12 ["PaddingRight"]
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K5 ["Padding"]
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R6 R7 K1 ["createElement"]
       40 GETUPVAL                         R7 1
       41 DUPTABLE                         R8 K19 [{"LayoutOrder"}]
       42 LOADN                            R9 2
       43 SETTABLEKS                       R9 R8 K18 ["LayoutOrder"]
       45 CALL                             R6 2 1
       46 SETTABLEKS                       R6 R5 K6 ["Spacer"]
       48 GETUPVAL                         R6 2
       49 JUMPIFNOT                        R6 ; [+16]
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R6 R7 K1 ["createElement"]
       53 GETUPVAL                         R7 3
       54 GETUPVAL                         R10 4
       55 GETTABLEKS                       R9 R10 K20 ["Dictionary"]
       57 GETTABLEKS                       R8 R9 K21 ["join"]
       59 DUPTABLE                         R9 K19 [{"LayoutOrder"}]
       60 LOADN                            R10 3
       61 SETTABLEKS                       R10 R9 K18 ["LayoutOrder"]
       63 MOVE                             R10 R0
       64 CALL                             R8 2 -1
       65 CALL                             R6 -1 1
       66 SETTABLEKS                       R6 R5 K7 ["CopyLinkButton"]
       68 CALL                             R2 3 -1
       69 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Collab8864_ShowCopyLinkButton"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R5 R1 K9 ["Src"]
       19 GETTABLEKS                       R4 R5 K10 ["Components"]
       21 GETTABLEKS                       R3 R4 K11 ["CopyLinkButton"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [require]
       26 GETTABLEKS                       R5 R1 K12 ["Packages"]
       28 GETTABLEKS                       R4 R5 K13 ["React"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K8 [require]
       33 GETTABLEKS                       R6 R1 K12 ["Packages"]
       35 GETTABLEKS                       R5 R6 K14 ["Foundation"]
       37 CALL                             R4 1 1
       38 GETTABLEKS                       R5 R4 K15 ["View"]
       40 GETIMPORT                        R6 K8 [require]
       42 GETTABLEKS                       R8 R1 K12 ["Packages"]
       44 GETTABLEKS                       R7 R8 K16 ["Cryo"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K8 [require]
       49 GETTABLEKS                       R9 R1 K9 ["Src"]
       51 GETTABLEKS                       R8 R9 K17 ["Types"]
       53 CALL                             R7 1 1
       54 DUPCLOSURE                       R8 K18 [PROTO_0]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R6
       60 RETURN                           R8 1
