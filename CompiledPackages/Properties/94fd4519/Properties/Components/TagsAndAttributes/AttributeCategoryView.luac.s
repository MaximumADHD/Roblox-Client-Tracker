PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["add attribute"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 DUPTABLE                         R4 K5 [{"categoryName", "layoutOrder", "trailingIcon"}]
        8 GETUPVAL                         R5 3
        9 LOADK                            R7 K6 ["TagsAndAttributes"]
       10 LOADK                            R8 K7 ["AttributesHeader"]
       11 NAMECALL                         R5 R5 K8 ["getText"]
       13 CALL                             R5 3 1
       14 SETTABLEKS                       R5 R4 K2 ["categoryName"]
       16 GETTABLEKS                       R5 R0 K3 ["layoutOrder"]
       18 SETTABLEKS                       R5 R4 K3 ["layoutOrder"]
       20 DUPTABLE                         R5 K11 [{"name", "onActivated"}]
       21 GETUPVAL                         R7 4
       22 GETTABLEKS                       R6 R7 K12 ["PlusLarge"]
       24 SETTABLEKS                       R6 R5 K9 ["name"]
       26 SETTABLEKS                       R1 R5 K10 ["onActivated"]
       28 SETTABLEKS                       R5 R4 K4 ["trailingIcon"]
       30 GETUPVAL                         R5 1
       31 GETUPVAL                         R6 5
       32 DUPTABLE                         R7 K16 [{"session", "attributes", "labelWidthBinding"}]
       33 GETTABLEKS                       R8 R0 K13 ["session"]
       35 SETTABLEKS                       R8 R7 K13 ["session"]
       37 GETTABLEKS                       R8 R0 K14 ["attributes"]
       39 SETTABLEKS                       R8 R7 K14 ["attributes"]
       41 GETTABLEKS                       R8 R0 K15 ["labelWidthBinding"]
       43 SETTABLEKS                       R8 R7 K15 ["labelWidthBinding"]
       45 CALL                             R5 2 -1
       46 CALL                             R2 -1 -1
       47 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R5 R0 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["TagsAndAttributes"]
       15 GETTABLEKS                       R3 R4 K9 ["AttributeList"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R6 R0 K7 ["Components"]
       22 GETTABLEKS                       R5 R6 K10 ["Util"]
       24 GETTABLEKS                       R4 R5 K11 ["CategoryView"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R1 K12 ["Foundation"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K13 ["PropertyTypes"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R1 K14 ["React"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K15 ["RpcTypes"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R11 R0 K16 ["Resources"]
       51 GETTABLEKS                       R10 R11 K17 ["Localization"]
       53 GETTABLEKS                       R9 R10 K18 ["Translator"]
       55 CALL                             R8 1 1
       56 GETTABLEKS                       R9 R6 K19 ["createElement"]
       58 GETTABLEKS                       R11 R4 K20 ["Enums"]
       60 GETTABLEKS                       R10 R11 K21 ["IconName"]
       62 DUPCLOSURE                       R11 K22 [PROTO_1]
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R2
       69 RETURN                           R11 1
