PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"SubcategoriesSwimlaneView"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K7 [{"CategoryName", "OnClickBack", "OnClickSeeAllAssets", "SubcategoryDict"}]
       12 GETUPVAL                         R7 3
       13 GETTABLEKS                       R7 R7 K8 ["FREE_MODELS"]
       15 GETTABLEKS                       R7 R7 K9 ["name"]
       17 SETTABLEKS                       R7 R6 K3 ["CategoryName"]
       19 DUPCLOSURE                       R7 K10 [PROTO_0]
       20 SETTABLEKS                       R7 R6 K4 ["OnClickBack"]
       22 DUPCLOSURE                       R7 K11 [PROTO_1]
       23 SETTABLEKS                       R7 R6 K5 ["OnClickSeeAllAssets"]
       25 NEWTABLE                         R7 0 5
       27 DUPTABLE                         R8 K22 [{["displayName"] = "Category", ["children"], ["childCount"] = 0, ["index"] = 1, ["name"] = "1", ["path"], ["thumbnail"]}]
       28 NEWTABLE                         R9 0 0
       30 SETTABLEKS                       R9 R8 K14 ["children"]
       32 NEWTABLE                         R9 0 0
       34 SETTABLEKS                       R9 R8 K20 ["path"]
       36 DUPTABLE                         R9 K27 [{["assetId"] = 5657301130, ["backgroundColor"] = "#32a852"}]
       37 SETTABLEKS                       R9 R8 K21 ["thumbnail"]
       39 DUPTABLE                         R9 K31 [{["displayName"] = "Vehicle", ["children"], ["childCount"] = 0, ["index"] = 2, ["name"] = "2", ["path"], ["thumbnail"]}]
       40 NEWTABLE                         R10 0 0
       42 SETTABLEKS                       R10 R9 K14 ["children"]
       44 NEWTABLE                         R10 0 0
       46 SETTABLEKS                       R10 R9 K20 ["path"]
       48 DUPTABLE                         R10 K27 [{["assetId"] = 5657301130, ["backgroundColor"] = "#32a852"}]
       49 SETTABLEKS                       R10 R9 K21 ["thumbnail"]
       51 DUPTABLE                         R10 K35 [{["displayName"] = "3rd", ["children"], ["childCount"] = 0, ["index"] = 3, ["name"] = "3", ["path"], ["thumbnail"]}]
       52 NEWTABLE                         R11 0 0
       54 SETTABLEKS                       R11 R10 K14 ["children"]
       56 NEWTABLE                         R11 0 0
       58 SETTABLEKS                       R11 R10 K20 ["path"]
       60 DUPTABLE                         R11 K27 [{["assetId"] = 5657301130, ["backgroundColor"] = "#32a852"}]
       61 SETTABLEKS                       R11 R10 K21 ["thumbnail"]
       63 DUPTABLE                         R11 K37 [{["displayName"] = "4", ["children"], ["childCount"] = 0, ["index"] = 3, ["name"] = "4", ["path"], ["thumbnail"]}]
       64 NEWTABLE                         R12 0 0
       66 SETTABLEKS                       R12 R11 K14 ["children"]
       68 NEWTABLE                         R12 0 0
       70 SETTABLEKS                       R12 R11 K20 ["path"]
       72 DUPTABLE                         R12 K27 [{["assetId"] = 5657301130, ["backgroundColor"] = "#32a852"}]
       73 SETTABLEKS                       R12 R11 K21 ["thumbnail"]
       75 DUPTABLE                         R12 K39 [{["displayName"] = "5", ["children"], ["childCount"] = 0, ["name"] = "5", ["index"] = 3, ["path"], ["thumbnail"]}]
       76 NEWTABLE                         R13 0 0
       78 SETTABLEKS                       R13 R12 K14 ["children"]
       80 NEWTABLE                         R13 0 0
       82 SETTABLEKS                       R13 R12 K20 ["path"]
       84 DUPTABLE                         R13 K27 [{["assetId"] = 5657301130, ["backgroundColor"] = "#32a852"}]
       85 SETTABLEKS                       R13 R12 K21 ["thumbnail"]
       87 SETLIST                          R7 R8 5 [1]
       89 SETTABLEKS                       R7 R6 K6 ["SubcategoryDict"]
       91 CALL                             R4 2 1
       92 SETTABLEKS                       R4 R3 K1 ["SubcategoriesSwimlaneView"]
       94 CALL                             R0 3 -1
       95 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["MockWrapper"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Types"]
       29 GETTABLEKS                       R4 R4 K12 ["Category"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K13 ["Parent"]
       38 GETTABLEKS                       R5 R5 K14 ["SubcategoriesSwimlaneView"]
       40 CALL                             R4 1 1
       41 DUPTABLE                         R5 K18 [{["summary"] = "A grid of Subcategory IconTiles with flexible widths.", ["story"]}]
       42 DUPCLOSURE                       R6 K19 [PROTO_2]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R6 R5 K17 ["story"]
       49 RETURN                           R5 1
