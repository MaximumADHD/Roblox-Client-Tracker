PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OnCancel"]
        4 GETTABLEKS                       R3 R1 K2 ["OnContinue"]
        6 GETTABLEKS                       R4 R1 K3 ["Localization"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["provide"]
       11 NEWTABLE                         R6 0 3
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K5 ["new"]
       16 GETIMPORT                        R8 K7 [plugin]
       18 CALL                             R7 1 1
       19 GETUPVAL                         R8 2
       20 CALL                             R8 0 1
       21 MOVE                             R9 R4
       22 SETLIST                          R6 R7 3 [1]
       24 NEWTABLE                         R7 0 1
       26 GETUPVAL                         R9 3
       27 GETTABLEKS                       R8 R9 K8 ["createElement"]
       29 GETUPVAL                         R9 4
       30 DUPTABLE                         R10 K9 [{"OnCancel", "OnContinue"}]
       31 SETTABLEKS                       R2 R10 K1 ["OnCancel"]
       33 SETTABLEKS                       R3 R10 K2 ["OnContinue"]
       35 CALL                             R8 2 -1
       36 SETLIST                          R7 R8 -1 [1]
       38 CALL                             R5 2 -1
       39 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R3 K6 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R4 K7 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R6 K9 ["Resources"]
       27 GETTABLEKS                       R4 R5 K10 ["MakeTheme"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R8 R0 K8 ["Src"]
       34 GETTABLEKS                       R7 R8 K11 ["Components"]
       36 GETTABLEKS                       R6 R7 K12 ["PublishWarning"]
       38 GETTABLEKS                       R5 R6 K13 ["PublishWarningDialog"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R1 K14 ["PureComponent"]
       43 LOADK                            R7 K15 ["PublishWarningPlugin"]
       44 NAMECALL                         R5 R5 K16 ["extend"]
       46 CALL                             R5 2 1
       47 GETTABLEKS                       R6 R2 K17 ["ContextServices"]
       49 GETTABLEKS                       R7 R6 K18 ["Plugin"]
       51 DUPCLOSURE                       R8 K19 [PROTO_0]
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R8 R5 K20 ["render"]
       59 RETURN                           R5 1
