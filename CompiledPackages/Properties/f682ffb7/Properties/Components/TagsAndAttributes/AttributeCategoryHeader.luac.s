PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["TagsAndAttributes"]
        2 LOADK                            R3 K1 ["AttributesHeader"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 1
        6 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["add attribute"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 DUPCLOSURE                       R2 K1 [PROTO_1]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 DUPTABLE                         R4 K8 [{"getCategoryName", "getExpanded", "setExpanded", "trailingIcon", "LayoutOrder", "Visible"}]
        8 GETUPVAL                         R5 3
        9 SETTABLEKS                       R5 R4 K2 ["getCategoryName"]
       11 GETTABLEKS                       R5 R0 K3 ["getExpanded"]
       13 SETTABLEKS                       R5 R4 K3 ["getExpanded"]
       15 GETTABLEKS                       R5 R0 K4 ["setExpanded"]
       17 SETTABLEKS                       R5 R4 K4 ["setExpanded"]
       19 DUPTABLE                         R5 K11 [{"name", "onActivated"}]
       20 GETUPVAL                         R6 4
       21 GETTABLEKS                       R6 R6 K12 ["PlusLarge"]
       23 SETTABLEKS                       R6 R5 K9 ["name"]
       25 SETTABLEKS                       R1 R5 K10 ["onActivated"]
       27 SETTABLEKS                       R5 R4 K5 ["trailingIcon"]
       29 GETTABLEKS                       R5 R0 K6 ["LayoutOrder"]
       31 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       33 GETTABLEKS                       R5 R0 K7 ["Visible"]
       35 SETTABLEKS                       R5 R4 K7 ["Visible"]
       37 CALL                             R2 2 -1
       38 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Util"]
       15 GETTABLEKS                       R3 R3 K9 ["CategoryHeader"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K10 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K11 ["React"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K12 ["Signals"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Resources"]
       37 GETTABLEKS                       R7 R7 K14 ["Localization"]
       39 GETTABLEKS                       R7 R7 K15 ["Translator"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R4 K16 ["createElement"]
       44 GETTABLEKS                       R8 R3 K17 ["Enums"]
       46 GETTABLEKS                       R8 R8 K18 ["IconName"]
       48 DUPCLOSURE                       R9 K19 [PROTO_0]
       49 CAPTURE                          VAL R6
       50 DUPCLOSURE                       R10 K20 [PROTO_2]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R8
       56 RETURN                           R10 1
