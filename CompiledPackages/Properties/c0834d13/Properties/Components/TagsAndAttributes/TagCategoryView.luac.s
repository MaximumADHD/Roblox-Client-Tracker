PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["add tag"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 NEWTABLE                         R3 0 0
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 DUPTABLE                         R4 K5 [{"categoryName", "layoutOrder", "trailingIcon"}]
       10 GETUPVAL                         R5 3
       11 LOADK                            R7 K6 ["TagsAndAttributes"]
       12 LOADK                            R8 K7 ["TagsHeader"]
       13 NAMECALL                         R5 R5 K8 ["getText"]
       15 CALL                             R5 3 1
       16 SETTABLEKS                       R5 R4 K2 ["categoryName"]
       18 GETTABLEKS                       R5 R0 K3 ["layoutOrder"]
       20 SETTABLEKS                       R5 R4 K3 ["layoutOrder"]
       22 DUPTABLE                         R5 K11 [{"name", "onActivated"}]
       23 GETUPVAL                         R7 4
       24 GETTABLEKS                       R6 R7 K12 ["PlusLarge"]
       26 SETTABLEKS                       R6 R5 K9 ["name"]
       28 SETTABLEKS                       R1 R5 K10 ["onActivated"]
       30 SETTABLEKS                       R5 R4 K4 ["trailingIcon"]
       32 GETUPVAL                         R5 1
       33 GETUPVAL                         R6 5
       34 DUPTABLE                         R7 K14 [{"tags"}]
       35 GETTABLEKS                       R8 R0 K13 ["tags"]
       37 SETTABLEKS                       R8 R7 K13 ["tags"]
       39 CALL                             R5 2 -1
       40 CALL                             R2 -1 -1
       41 RETURN                           R2 -1

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
       15 GETTABLEKS                       R3 R4 K9 ["CategoryView"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K10 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["PropertyTypes"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K12 ["React"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R9 R0 K7 ["Components"]
       37 GETTABLEKS                       R8 R9 K13 ["TagsAndAttributes"]
       39 GETTABLEKS                       R7 R8 K14 ["TagList"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R10 R0 K15 ["Resources"]
       46 GETTABLEKS                       R9 R10 K16 ["Localization"]
       48 GETTABLEKS                       R8 R9 K17 ["Translator"]
       50 CALL                             R7 1 1
       51 GETTABLEKS                       R8 R5 K18 ["createElement"]
       53 GETTABLEKS                       R10 R3 K19 ["Enums"]
       55 GETTABLEKS                       R9 R10 K20 ["IconName"]
       57 DUPCLOSURE                       R10 K21 [PROTO_1]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R6
       64 RETURN                           R10 1
