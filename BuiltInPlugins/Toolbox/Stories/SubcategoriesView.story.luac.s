PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"IconTile"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K5 [{"Size", "SubcategoryDict"}]
       12 GETIMPORT                        R7 K8 [UDim2.new]
       14 LOADN                            R8 1
       15 LOADN                            R9 0
       16 LOADN                            R10 0
       17 LOADN                            R11 200
       18 CALL                             R7 4 1
       19 SETTABLEKS                       R7 R6 K3 ["Size"]
       21 NEWTABLE                         R7 0 5
       23 DUPTABLE                         R8 K20 [{["displayName"] = "Category", ["children"], ["childCount"] = 0, ["index"] = 1, ["name"] = "1", ["path"], ["thumbnail"]}]
       24 NEWTABLE                         R9 0 0
       26 SETTABLEKS                       R9 R8 K11 ["children"]
       28 NEWTABLE                         R9 0 0
       30 SETTABLEKS                       R9 R8 K18 ["path"]
       32 DUPTABLE                         R9 K25 [{["assetId"] = 5657301130, ["backgroundColor"] = "#32a852"}]
       33 SETTABLEKS                       R9 R8 K19 ["thumbnail"]
       35 DUPTABLE                         R9 K29 [{["displayName"] = "Vehicle", ["children"], ["childCount"] = 0, ["index"] = 2, ["name"] = "2", ["path"], ["thumbnail"]}]
       36 NEWTABLE                         R10 0 0
       38 SETTABLEKS                       R10 R9 K11 ["children"]
       40 NEWTABLE                         R10 0 0
       42 SETTABLEKS                       R10 R9 K18 ["path"]
       44 DUPTABLE                         R10 K25 [{["assetId"] = 5657301130, ["backgroundColor"] = "#32a852"}]
       45 SETTABLEKS                       R10 R9 K19 ["thumbnail"]
       47 DUPTABLE                         R10 K33 [{["displayName"] = "3rd", ["children"], ["childCount"] = 0, ["index"] = 3, ["name"] = "3", ["path"], ["thumbnail"]}]
       48 NEWTABLE                         R11 0 0
       50 SETTABLEKS                       R11 R10 K11 ["children"]
       52 NEWTABLE                         R11 0 0
       54 SETTABLEKS                       R11 R10 K18 ["path"]
       56 DUPTABLE                         R11 K25 [{["assetId"] = 5657301130, ["backgroundColor"] = "#32a852"}]
       57 SETTABLEKS                       R11 R10 K19 ["thumbnail"]
       59 DUPTABLE                         R11 K35 [{["displayName"] = "4", ["children"], ["childCount"] = 0, ["index"] = 3, ["name"] = "4", ["path"], ["thumbnail"]}]
       60 NEWTABLE                         R12 0 0
       62 SETTABLEKS                       R12 R11 K11 ["children"]
       64 NEWTABLE                         R12 0 0
       66 SETTABLEKS                       R12 R11 K18 ["path"]
       68 DUPTABLE                         R12 K25 [{["assetId"] = 5657301130, ["backgroundColor"] = "#32a852"}]
       69 SETTABLEKS                       R12 R11 K19 ["thumbnail"]
       71 DUPTABLE                         R12 K37 [{["displayName"] = "5", ["children"], ["childCount"] = 0, ["name"] = "5", ["index"] = 3, ["path"], ["thumbnail"]}]
       72 NEWTABLE                         R13 0 0
       74 SETTABLEKS                       R13 R12 K11 ["children"]
       76 NEWTABLE                         R13 0 0
       78 SETTABLEKS                       R13 R12 K18 ["path"]
       80 DUPTABLE                         R13 K25 [{["assetId"] = 5657301130, ["backgroundColor"] = "#32a852"}]
       81 SETTABLEKS                       R13 R12 K19 ["thumbnail"]
       83 SETLIST                          R7 R8 5 [1]
       85 SETTABLEKS                       R7 R6 K4 ["SubcategoryDict"]
       87 CALL                             R4 2 1
       88 SETTABLEKS                       R4 R3 K1 ["IconTile"]
       90 CALL                             R0 3 -1
       91 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Packages"]
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K5 [require]
       16 GETTABLEKS                       R4 R0 K7 ["Stories"]
       18 GETTABLEKS                       R4 R4 K8 ["ToolboxStoryWrapper"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R5 K10 ["Components"]
       27 GETTABLEKS                       R5 R5 K11 ["Categorization"]
       29 GETTABLEKS                       R5 R5 K12 ["SubcategoriesView"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K13 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 DUPTABLE                         R6 K17 [{["summary"] = "A grid of Subcategory IconTiles with flexible widths.", ["stories"]}]
       36 NEWTABLE                         R7 0 1
       38 DUPTABLE                         R8 K21 [{["name"] = "SubcategoriesView", ["summary"] = "Example with 5 subcategories.", ["story"]}]
       39 DUPCLOSURE                       R9 K22 [PROTO_1]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R4
       43 SETTABLEKS                       R9 R8 K20 ["story"]
       45 SETLIST                          R7 R8 1 [1]
       47 SETTABLEKS                       R7 R6 K16 ["stories"]
       49 RETURN                           R6 1
