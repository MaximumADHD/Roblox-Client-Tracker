PROTO_0:
        0 DUPTABLE                         R1 K4 [{[1] = "PlaceHolder", ["nameAbove"] = "PlaceHolder", ["type"]}]
        1 SETTABLEKS                       R0 R1 K3 ["type"]
        3 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K0 ["name"]
        5 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getCollapsedCategories"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R0
        7 CALL                             R4 1 1
        8 GETTABLE                         R3 R1 R4
        9 JUMPIFEQKNIL                     R3 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K0 ["nameAbove"]
        5 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getCollapsedCategories"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+3]
       10 LOADB                            R3 0
       11 RETURN                           R3 1
       12 GETTABLE                         R4 R1 R2
       13 JUMPIFNOTEQKNIL                  R4 ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 1
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createComputed"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R1
        5 CALL                             R4 1 1
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K0 ["createComputed"]
        9 NEWCLOSURE                       R6 P1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R4
       12 CALL                             R5 1 1
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K0 ["createComputed"]
       16 NEWCLOSURE                       R7 P2
       17 CAPTURE                          VAL R1
       18 CALL                             R6 1 1
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K0 ["createComputed"]
       22 NEWCLOSURE                       R8 P3
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R6
       25 CALL                             R7 1 1
       26 NEWCLOSURE                       R8 P4
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R4
       29 JUMPIFNOTEQKS                    R0 K1 ["Tags"] ; [+16]
       31 GETUPVAL                         R9 3
       32 GETUPVAL                         R10 4
       33 DUPTABLE                         R11 K7 [{"getExpanded", "setExpanded", "getIsCategoryHeaderDirectlyAbove", "LayoutOrder", "Visible"}]
       34 SETTABLEKS                       R5 R11 K2 ["getExpanded"]
       36 SETTABLEKS                       R8 R11 K3 ["setExpanded"]
       38 SETTABLEKS                       R7 R11 K4 ["getIsCategoryHeaderDirectlyAbove"]
       40 SETTABLEKS                       R2 R11 K5 ["LayoutOrder"]
       42 SETTABLEKS                       R3 R11 K6 ["Visible"]
       44 CALL                             R9 2 -1
       45 RETURN                           R9 -1
       46 JUMPIFNOTEQKS                    R0 K8 ["Attributes"] ; [+16]
       48 GETUPVAL                         R9 3
       49 GETUPVAL                         R10 5
       50 DUPTABLE                         R11 K7 [{"getExpanded", "setExpanded", "getIsCategoryHeaderDirectlyAbove", "LayoutOrder", "Visible"}]
       51 SETTABLEKS                       R5 R11 K2 ["getExpanded"]
       53 SETTABLEKS                       R8 R11 K3 ["setExpanded"]
       55 SETTABLEKS                       R7 R11 K4 ["getIsCategoryHeaderDirectlyAbove"]
       57 SETTABLEKS                       R2 R11 K5 ["LayoutOrder"]
       59 SETTABLEKS                       R3 R11 K6 ["Visible"]
       61 CALL                             R9 2 -1
       62 RETURN                           R9 -1
       63 GETUPVAL                         R9 3
       64 GETUPVAL                         R10 6
       65 DUPTABLE                         R11 K10 [{"getCategoryName", "getExpanded", "setExpanded", "getIsCategoryHeaderDirectlyAbove", "LayoutOrder", "Visible"}]
       66 SETTABLEKS                       R4 R11 K9 ["getCategoryName"]
       68 SETTABLEKS                       R5 R11 K2 ["getExpanded"]
       70 SETTABLEKS                       R8 R11 K3 ["setExpanded"]
       72 SETTABLEKS                       R7 R11 K4 ["getIsCategoryHeaderDirectlyAbove"]
       74 SETTABLEKS                       R2 R11 K5 ["LayoutOrder"]
       76 SETTABLEKS                       R3 R11 K6 ["Visible"]
       78 CALL                             R9 2 -1
       79 RETURN                           R9 -1

PROTO_7:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getSearch"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K1 [""] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["TagsAndAttributes"]
       15 GETTABLEKS                       R3 R3 K9 ["AttributeCategoryHeader"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K7 ["Components"]
       22 GETTABLEKS                       R4 R4 K10 ["Util"]
       24 GETTABLEKS                       R4 R4 K11 ["CategoryHeader"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K12 ["PropertyEditorTypes"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K13 ["PropertyTypes"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R1 K14 ["React"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R1 K15 ["Signals"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K7 ["Components"]
       51 GETTABLEKS                       R9 R9 K8 ["TagsAndAttributes"]
       53 GETTABLEKS                       R9 R9 K16 ["TagCategoryHeader"]
       55 CALL                             R8 1 1
       56 GETTABLEKS                       R9 R6 K17 ["createElement"]
       58 DUPCLOSURE                       R10 K18 [PROTO_0]
       59 DUPCLOSURE                       R11 K19 [PROTO_7]
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R3
       65 DUPCLOSURE                       R12 K20 [PROTO_9]
       66 DUPTABLE                         R13 K24 [{"createPlaceHolderCategoryRowParams", "createRenderCategoryRowFromInterface", "createIsCategoryRowVisible"}]
       67 SETTABLEKS                       R10 R13 K21 ["createPlaceHolderCategoryRowParams"]
       69 SETTABLEKS                       R11 R13 K22 ["createRenderCategoryRowFromInterface"]
       71 SETTABLEKS                       R12 R13 K23 ["createIsCategoryRowVisible"]
       73 RETURN                           R13 1
