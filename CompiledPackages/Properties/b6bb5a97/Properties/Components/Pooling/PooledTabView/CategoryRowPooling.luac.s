PROTO_0:
        0 DUPTABLE                         R1 K2 [{"name", "type"}]
        1 LOADK                            R2 K3 ["PlaceHolder"]
        2 SETTABLEKS                       R2 R1 K0 ["name"]
        4 SETTABLEKS                       R0 R1 K1 ["type"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K0 ["name"]
        5 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getCollapsedCategories"]
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
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 1
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["createComputed"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R1
        5 CALL                             R4 1 1
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K0 ["createComputed"]
        9 NEWCLOSURE                       R6 P1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R4
       12 CALL                             R5 1 1
       13 NEWCLOSURE                       R6 P2
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R4
       16 JUMPIFNOTEQKS                    R0 K1 ["Tags"] ; [+14]
       18 GETUPVAL                         R7 3
       19 GETUPVAL                         R8 4
       20 DUPTABLE                         R9 K6 [{"getExpanded", "setExpanded", "LayoutOrder", "Visible"}]
       21 SETTABLEKS                       R5 R9 K2 ["getExpanded"]
       23 SETTABLEKS                       R6 R9 K3 ["setExpanded"]
       25 SETTABLEKS                       R2 R9 K4 ["LayoutOrder"]
       27 SETTABLEKS                       R3 R9 K5 ["Visible"]
       29 CALL                             R7 2 -1
       30 RETURN                           R7 -1
       31 JUMPIFNOTEQKS                    R0 K7 ["Attributes"] ; [+14]
       33 GETUPVAL                         R7 3
       34 GETUPVAL                         R8 5
       35 DUPTABLE                         R9 K6 [{"getExpanded", "setExpanded", "LayoutOrder", "Visible"}]
       36 SETTABLEKS                       R5 R9 K2 ["getExpanded"]
       38 SETTABLEKS                       R6 R9 K3 ["setExpanded"]
       40 SETTABLEKS                       R2 R9 K4 ["LayoutOrder"]
       42 SETTABLEKS                       R3 R9 K5 ["Visible"]
       44 CALL                             R7 2 -1
       45 RETURN                           R7 -1
       46 GETUPVAL                         R7 3
       47 GETUPVAL                         R8 6
       48 DUPTABLE                         R9 K9 [{"getCategoryName", "getExpanded", "setExpanded", "LayoutOrder", "Visible"}]
       49 SETTABLEKS                       R4 R9 K8 ["getCategoryName"]
       51 SETTABLEKS                       R5 R9 K2 ["getExpanded"]
       53 SETTABLEKS                       R6 R9 K3 ["setExpanded"]
       55 SETTABLEKS                       R2 R9 K4 ["LayoutOrder"]
       57 SETTABLEKS                       R3 R9 K5 ["Visible"]
       59 CALL                             R7 2 -1
       60 RETURN                           R7 -1

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 RETURN                           R2 1

PROTO_6:
        0 MOVE                             R2 R1
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["getTab"]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 DUPTABLE                         R4 K4 [{"General", "AttributesAndTags", "All"}]
        9 DUPTABLE                         R5 K6 [{"Properties"}]
       10 LOADB                            R6 1
       11 SETTABLEKS                       R6 R5 K5 ["Properties"]
       13 SETTABLEKS                       R5 R4 K1 ["General"]
       15 DUPTABLE                         R5 K9 [{"Attributes", "Tags"}]
       16 LOADB                            R6 1
       17 SETTABLEKS                       R6 R5 K7 ["Attributes"]
       19 LOADB                            R6 1
       20 SETTABLEKS                       R6 R5 K8 ["Tags"]
       22 SETTABLEKS                       R5 R4 K2 ["AttributesAndTags"]
       24 DUPTABLE                         R5 K10 [{"Properties", "Attributes", "Tags"}]
       25 LOADB                            R6 1
       26 SETTABLEKS                       R6 R5 K5 ["Properties"]
       28 LOADB                            R6 1
       29 SETTABLEKS                       R6 R5 K7 ["Attributes"]
       31 LOADB                            R6 1
       32 SETTABLEKS                       R6 R5 K8 ["Tags"]
       34 SETTABLEKS                       R5 R4 K3 ["All"]
       36 GETTABLE                         R6 R4 R3
       37 GETTABLEKS                       R7 R2 K11 ["type"]
       39 GETTABLE                         R5 R6 R7
       40 JUMPIFNOTEQKNIL                  R5 ; [+3]
       42 LOADB                            R5 0
       43 RETURN                           R5 1
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R6 R7 K12 ["getSearch"]
       47 MOVE                             R7 R0
       48 CALL                             R6 1 1
       49 JUMPIFEQKS                       R6 K13 [""] ; [+2]
       51 LOADB                            R5 0 +1
       52 LOADB                            R5 1
       53 RETURN                           R5 1

PROTO_7:
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
       11 GETTABLEKS                       R5 R0 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["TagsAndAttributes"]
       15 GETTABLEKS                       R3 R4 K9 ["AttributeCategoryHeader"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R6 R0 K7 ["Components"]
       22 GETTABLEKS                       R5 R6 K10 ["Util"]
       24 GETTABLEKS                       R4 R5 K11 ["CategoryHeader"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K12 ["PropertyEditorTypes"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K13 ["React"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R1 K14 ["Signals"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R10 R0 K7 ["Components"]
       46 GETTABLEKS                       R9 R10 K8 ["TagsAndAttributes"]
       48 GETTABLEKS                       R8 R9 K15 ["TagCategoryHeader"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R10 R0 K10 ["Util"]
       55 GETTABLEKS                       R9 R10 K16 ["categorizeProperties"]
       57 CALL                             R8 1 1
       58 GETTABLEKS                       R9 R5 K17 ["createElement"]
       60 DUPTABLE                         R10 K20 [{"Properties", "Tags", "Attributes"}]
       61 LOADN                            R11 40
       62 SETTABLEKS                       R11 R10 K2 ["Properties"]
       64 LOADN                            R11 1
       65 SETTABLEKS                       R11 R10 K18 ["Tags"]
       67 LOADN                            R11 1
       68 SETTABLEKS                       R11 R10 K19 ["Attributes"]
       70 DUPCLOSURE                       R11 K21 [PROTO_0]
       71 DUPCLOSURE                       R12 K22 [PROTO_5]
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R3
       77 DUPCLOSURE                       R13 K23 [PROTO_7]
       78 DUPTABLE                         R14 K28 [{"intialCategoryRowCaches", "createPlaceHolderCategoryRowParams", "createRenderCategoryRowFromInterface", "createIsCategoryRowVisible"}]
       79 SETTABLEKS                       R10 R14 K24 ["intialCategoryRowCaches"]
       81 SETTABLEKS                       R11 R14 K25 ["createPlaceHolderCategoryRowParams"]
       83 SETTABLEKS                       R12 R14 K26 ["createRenderCategoryRowFromInterface"]
       85 SETTABLEKS                       R13 R14 K27 ["createIsCategoryRowVisible"]
       87 RETURN                           R14 1
