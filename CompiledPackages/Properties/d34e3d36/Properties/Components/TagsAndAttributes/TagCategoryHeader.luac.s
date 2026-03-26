PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["TagsAndAttributes"]
        2 LOADK                            R3 K1 ["TagsHeader"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 1
        6 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["add tag"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 DUPCLOSURE                       R2 K1 [PROTO_1]
        4 NEWTABLE                         R3 0 0
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 DUPTABLE                         R4 K8 [{"getCategoryName", "getExpanded", "setExpanded", "trailingIcon", "LayoutOrder", "Visible"}]
       10 GETUPVAL                         R5 3
       11 SETTABLEKS                       R5 R4 K2 ["getCategoryName"]
       13 GETTABLEKS                       R5 R0 K3 ["getExpanded"]
       15 SETTABLEKS                       R5 R4 K3 ["getExpanded"]
       17 GETTABLEKS                       R5 R0 K4 ["setExpanded"]
       19 SETTABLEKS                       R5 R4 K4 ["setExpanded"]
       21 DUPTABLE                         R5 K11 [{"name", "onActivated"}]
       22 GETUPVAL                         R7 4
       23 GETTABLEKS                       R6 R7 K12 ["PlusLarge"]
       25 SETTABLEKS                       R6 R5 K9 ["name"]
       27 SETTABLEKS                       R1 R5 K10 ["onActivated"]
       29 SETTABLEKS                       R5 R4 K5 ["trailingIcon"]
       31 GETTABLEKS                       R5 R0 K6 ["LayoutOrder"]
       33 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       35 GETTABLEKS                       R5 R0 K7 ["Visible"]
       37 SETTABLEKS                       R5 R4 K7 ["Visible"]
       39 CALL                             R2 2 -1
       40 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R5 R0 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["Util"]
       15 GETTABLEKS                       R3 R4 K9 ["CategoryHeader"]
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
       35 GETTABLEKS                       R9 R0 K13 ["Resources"]
       37 GETTABLEKS                       R8 R9 K14 ["Localization"]
       39 GETTABLEKS                       R7 R8 K15 ["Translator"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R4 K16 ["createElement"]
       44 GETTABLEKS                       R9 R3 K17 ["Enums"]
       46 GETTABLEKS                       R8 R9 K18 ["IconName"]
       48 DUPCLOSURE                       R9 K19 [PROTO_0]
       49 CAPTURE                          VAL R6
       50 DUPCLOSURE                       R10 K20 [PROTO_2]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R8
       56 GETTABLEKS                       R11 R4 K21 ["memo"]
       58 MOVE                             R12 R10
       59 CALL                             R11 1 -1
       60 RETURN                           R11 -1
