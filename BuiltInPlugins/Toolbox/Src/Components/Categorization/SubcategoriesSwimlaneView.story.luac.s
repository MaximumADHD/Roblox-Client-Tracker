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
       27 DUPTABLE                         R8 K18 [{"displayName", "children", "childCount", "index", "name", "path", "thumbnail"}]
       28 LOADK                            R9 K19 ["Category"]
       29 SETTABLEKS                       R9 R8 K12 ["displayName"]
       31 NEWTABLE                         R9 0 0
       33 SETTABLEKS                       R9 R8 K13 ["children"]
       35 LOADN                            R9 0
       36 SETTABLEKS                       R9 R8 K14 ["childCount"]
       38 LOADN                            R9 1
       39 SETTABLEKS                       R9 R8 K15 ["index"]
       41 LOADK                            R9 K20 ["1"]
       42 SETTABLEKS                       R9 R8 K9 ["name"]
       44 NEWTABLE                         R9 0 0
       46 SETTABLEKS                       R9 R8 K16 ["path"]
       48 DUPTABLE                         R9 K23 [{"assetId", "backgroundColor"}]
       49 LOADK                            R10 K24 [5657301130]
       50 SETTABLEKS                       R10 R9 K21 ["assetId"]
       52 LOADK                            R10 K25 ["#32a852"]
       53 SETTABLEKS                       R10 R9 K22 ["backgroundColor"]
       55 SETTABLEKS                       R9 R8 K17 ["thumbnail"]
       57 DUPTABLE                         R9 K18 [{"displayName", "children", "childCount", "index", "name", "path", "thumbnail"}]
       58 LOADK                            R10 K26 ["Vehicle"]
       59 SETTABLEKS                       R10 R9 K12 ["displayName"]
       61 NEWTABLE                         R10 0 0
       63 SETTABLEKS                       R10 R9 K13 ["children"]
       65 LOADN                            R10 0
       66 SETTABLEKS                       R10 R9 K14 ["childCount"]
       68 LOADN                            R10 2
       69 SETTABLEKS                       R10 R9 K15 ["index"]
       71 LOADK                            R10 K27 ["2"]
       72 SETTABLEKS                       R10 R9 K9 ["name"]
       74 NEWTABLE                         R10 0 0
       76 SETTABLEKS                       R10 R9 K16 ["path"]
       78 DUPTABLE                         R10 K23 [{"assetId", "backgroundColor"}]
       79 LOADK                            R11 K24 [5657301130]
       80 SETTABLEKS                       R11 R10 K21 ["assetId"]
       82 LOADK                            R11 K25 ["#32a852"]
       83 SETTABLEKS                       R11 R10 K22 ["backgroundColor"]
       85 SETTABLEKS                       R10 R9 K17 ["thumbnail"]
       87 DUPTABLE                         R10 K18 [{"displayName", "children", "childCount", "index", "name", "path", "thumbnail"}]
       88 LOADK                            R11 K28 ["3rd"]
       89 SETTABLEKS                       R11 R10 K12 ["displayName"]
       91 NEWTABLE                         R11 0 0
       93 SETTABLEKS                       R11 R10 K13 ["children"]
       95 LOADN                            R11 0
       96 SETTABLEKS                       R11 R10 K14 ["childCount"]
       98 LOADN                            R11 3
       99 SETTABLEKS                       R11 R10 K15 ["index"]
      101 LOADK                            R11 K29 ["3"]
      102 SETTABLEKS                       R11 R10 K9 ["name"]
      104 NEWTABLE                         R11 0 0
      106 SETTABLEKS                       R11 R10 K16 ["path"]
      108 DUPTABLE                         R11 K23 [{"assetId", "backgroundColor"}]
      109 LOADK                            R12 K24 [5657301130]
      110 SETTABLEKS                       R12 R11 K21 ["assetId"]
      112 LOADK                            R12 K25 ["#32a852"]
      113 SETTABLEKS                       R12 R11 K22 ["backgroundColor"]
      115 SETTABLEKS                       R11 R10 K17 ["thumbnail"]
      117 DUPTABLE                         R11 K18 [{"displayName", "children", "childCount", "index", "name", "path", "thumbnail"}]
      118 LOADK                            R12 K30 ["4"]
      119 SETTABLEKS                       R12 R11 K12 ["displayName"]
      121 NEWTABLE                         R12 0 0
      123 SETTABLEKS                       R12 R11 K13 ["children"]
      125 LOADN                            R12 0
      126 SETTABLEKS                       R12 R11 K14 ["childCount"]
      128 LOADN                            R12 3
      129 SETTABLEKS                       R12 R11 K15 ["index"]
      131 LOADK                            R12 K30 ["4"]
      132 SETTABLEKS                       R12 R11 K9 ["name"]
      134 NEWTABLE                         R12 0 0
      136 SETTABLEKS                       R12 R11 K16 ["path"]
      138 DUPTABLE                         R12 K23 [{"assetId", "backgroundColor"}]
      139 LOADK                            R13 K24 [5657301130]
      140 SETTABLEKS                       R13 R12 K21 ["assetId"]
      142 LOADK                            R13 K25 ["#32a852"]
      143 SETTABLEKS                       R13 R12 K22 ["backgroundColor"]
      145 SETTABLEKS                       R12 R11 K17 ["thumbnail"]
      147 DUPTABLE                         R12 K31 [{"displayName", "children", "childCount", "name", "index", "path", "thumbnail"}]
      148 LOADK                            R13 K32 ["5"]
      149 SETTABLEKS                       R13 R12 K12 ["displayName"]
      151 NEWTABLE                         R13 0 0
      153 SETTABLEKS                       R13 R12 K13 ["children"]
      155 LOADN                            R13 0
      156 SETTABLEKS                       R13 R12 K14 ["childCount"]
      158 LOADK                            R13 K32 ["5"]
      159 SETTABLEKS                       R13 R12 K9 ["name"]
      161 LOADN                            R13 3
      162 SETTABLEKS                       R13 R12 K15 ["index"]
      164 NEWTABLE                         R13 0 0
      166 SETTABLEKS                       R13 R12 K16 ["path"]
      168 DUPTABLE                         R13 K23 [{"assetId", "backgroundColor"}]
      169 LOADK                            R14 K24 [5657301130]
      170 SETTABLEKS                       R14 R13 K21 ["assetId"]
      172 LOADK                            R14 K25 ["#32a852"]
      173 SETTABLEKS                       R14 R13 K22 ["backgroundColor"]
      175 SETTABLEKS                       R13 R12 K17 ["thumbnail"]
      177 SETLIST                          R7 R8 5 [1]
      179 SETTABLEKS                       R7 R6 K6 ["SubcategoryDict"]
      181 CALL                             R4 2 1
      182 SETTABLEKS                       R4 R3 K1 ["SubcategoriesSwimlaneView"]
      184 CALL                             R0 3 -1
      185 RETURN                           R0 -1

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
       41 DUPTABLE                         R5 K17 [{"summary", "story"}]
       42 LOADK                            R6 K18 ["A grid of Subcategory IconTiles with flexible widths."]
       43 SETTABLEKS                       R6 R5 K15 ["summary"]
       45 DUPCLOSURE                       R6 K19 [PROTO_2]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R3
       50 SETTABLEKS                       R6 R5 K16 ["story"]
       52 RETURN                           R5 1
