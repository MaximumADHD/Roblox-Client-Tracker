PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"IconTile"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["createElement"]
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
       23 DUPTABLE                         R8 K16 [{"displayName", "children", "childCount", "index", "name", "path", "thumbnail"}]
       24 LOADK                            R9 K17 ["Category"]
       25 SETTABLEKS                       R9 R8 K9 ["displayName"]
       27 NEWTABLE                         R9 0 0
       29 SETTABLEKS                       R9 R8 K10 ["children"]
       31 LOADN                            R9 0
       32 SETTABLEKS                       R9 R8 K11 ["childCount"]
       34 LOADN                            R9 1
       35 SETTABLEKS                       R9 R8 K12 ["index"]
       37 LOADK                            R9 K18 ["1"]
       38 SETTABLEKS                       R9 R8 K13 ["name"]
       40 NEWTABLE                         R9 0 0
       42 SETTABLEKS                       R9 R8 K14 ["path"]
       44 DUPTABLE                         R9 K21 [{"assetId", "backgroundColor"}]
       45 LOADK                            R10 K22 [5657301130]
       46 SETTABLEKS                       R10 R9 K19 ["assetId"]
       48 LOADK                            R10 K23 ["#32a852"]
       49 SETTABLEKS                       R10 R9 K20 ["backgroundColor"]
       51 SETTABLEKS                       R9 R8 K15 ["thumbnail"]
       53 DUPTABLE                         R9 K16 [{"displayName", "children", "childCount", "index", "name", "path", "thumbnail"}]
       54 LOADK                            R10 K24 ["Vehicle"]
       55 SETTABLEKS                       R10 R9 K9 ["displayName"]
       57 NEWTABLE                         R10 0 0
       59 SETTABLEKS                       R10 R9 K10 ["children"]
       61 LOADN                            R10 0
       62 SETTABLEKS                       R10 R9 K11 ["childCount"]
       64 LOADN                            R10 2
       65 SETTABLEKS                       R10 R9 K12 ["index"]
       67 LOADK                            R10 K25 ["2"]
       68 SETTABLEKS                       R10 R9 K13 ["name"]
       70 NEWTABLE                         R10 0 0
       72 SETTABLEKS                       R10 R9 K14 ["path"]
       74 DUPTABLE                         R10 K21 [{"assetId", "backgroundColor"}]
       75 LOADK                            R11 K22 [5657301130]
       76 SETTABLEKS                       R11 R10 K19 ["assetId"]
       78 LOADK                            R11 K23 ["#32a852"]
       79 SETTABLEKS                       R11 R10 K20 ["backgroundColor"]
       81 SETTABLEKS                       R10 R9 K15 ["thumbnail"]
       83 DUPTABLE                         R10 K16 [{"displayName", "children", "childCount", "index", "name", "path", "thumbnail"}]
       84 LOADK                            R11 K26 ["3rd"]
       85 SETTABLEKS                       R11 R10 K9 ["displayName"]
       87 NEWTABLE                         R11 0 0
       89 SETTABLEKS                       R11 R10 K10 ["children"]
       91 LOADN                            R11 0
       92 SETTABLEKS                       R11 R10 K11 ["childCount"]
       94 LOADN                            R11 3
       95 SETTABLEKS                       R11 R10 K12 ["index"]
       97 LOADK                            R11 K27 ["3"]
       98 SETTABLEKS                       R11 R10 K13 ["name"]
      100 NEWTABLE                         R11 0 0
      102 SETTABLEKS                       R11 R10 K14 ["path"]
      104 DUPTABLE                         R11 K21 [{"assetId", "backgroundColor"}]
      105 LOADK                            R12 K22 [5657301130]
      106 SETTABLEKS                       R12 R11 K19 ["assetId"]
      108 LOADK                            R12 K23 ["#32a852"]
      109 SETTABLEKS                       R12 R11 K20 ["backgroundColor"]
      111 SETTABLEKS                       R11 R10 K15 ["thumbnail"]
      113 DUPTABLE                         R11 K16 [{"displayName", "children", "childCount", "index", "name", "path", "thumbnail"}]
      114 LOADK                            R12 K28 ["4"]
      115 SETTABLEKS                       R12 R11 K9 ["displayName"]
      117 NEWTABLE                         R12 0 0
      119 SETTABLEKS                       R12 R11 K10 ["children"]
      121 LOADN                            R12 0
      122 SETTABLEKS                       R12 R11 K11 ["childCount"]
      124 LOADN                            R12 3
      125 SETTABLEKS                       R12 R11 K12 ["index"]
      127 LOADK                            R12 K28 ["4"]
      128 SETTABLEKS                       R12 R11 K13 ["name"]
      130 NEWTABLE                         R12 0 0
      132 SETTABLEKS                       R12 R11 K14 ["path"]
      134 DUPTABLE                         R12 K21 [{"assetId", "backgroundColor"}]
      135 LOADK                            R13 K22 [5657301130]
      136 SETTABLEKS                       R13 R12 K19 ["assetId"]
      138 LOADK                            R13 K23 ["#32a852"]
      139 SETTABLEKS                       R13 R12 K20 ["backgroundColor"]
      141 SETTABLEKS                       R12 R11 K15 ["thumbnail"]
      143 DUPTABLE                         R12 K29 [{"displayName", "children", "childCount", "name", "index", "path", "thumbnail"}]
      144 LOADK                            R13 K30 ["5"]
      145 SETTABLEKS                       R13 R12 K9 ["displayName"]
      147 NEWTABLE                         R13 0 0
      149 SETTABLEKS                       R13 R12 K10 ["children"]
      151 LOADN                            R13 0
      152 SETTABLEKS                       R13 R12 K11 ["childCount"]
      154 LOADK                            R13 K30 ["5"]
      155 SETTABLEKS                       R13 R12 K13 ["name"]
      157 LOADN                            R13 3
      158 SETTABLEKS                       R13 R12 K12 ["index"]
      160 NEWTABLE                         R13 0 0
      162 SETTABLEKS                       R13 R12 K14 ["path"]
      164 DUPTABLE                         R13 K21 [{"assetId", "backgroundColor"}]
      165 LOADK                            R14 K22 [5657301130]
      166 SETTABLEKS                       R14 R13 K19 ["assetId"]
      168 LOADK                            R14 K23 ["#32a852"]
      169 SETTABLEKS                       R14 R13 K20 ["backgroundColor"]
      171 SETTABLEKS                       R13 R12 K15 ["thumbnail"]
      173 SETLIST                          R7 R8 5 [1]
      175 SETTABLEKS                       R7 R6 K4 ["SubcategoryDict"]
      177 CALL                             R4 2 1
      178 SETTABLEKS                       R4 R3 K1 ["IconTile"]
      180 CALL                             R0 3 -1
      181 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Packages"]
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K5 [require]
       16 GETTABLEKS                       R5 R0 K7 ["Stories"]
       18 GETTABLEKS                       R4 R5 K8 ["ToolboxStoryWrapper"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R8 R0 K9 ["Src"]
       25 GETTABLEKS                       R7 R8 K10 ["Components"]
       27 GETTABLEKS                       R6 R7 K11 ["Categorization"]
       29 GETTABLEKS                       R5 R6 K12 ["SubcategoriesView"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K13 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 DUPTABLE                         R6 K16 [{"summary", "stories"}]
       36 LOADK                            R7 K17 ["A grid of Subcategory IconTiles with flexible widths."]
       37 SETTABLEKS                       R7 R6 K14 ["summary"]
       39 NEWTABLE                         R7 0 1
       41 DUPTABLE                         R8 K20 [{"name", "summary", "story"}]
       42 LOADK                            R9 K12 ["SubcategoriesView"]
       43 SETTABLEKS                       R9 R8 K18 ["name"]
       45 LOADK                            R9 K21 ["Example with 5 subcategories."]
       46 SETTABLEKS                       R9 R8 K14 ["summary"]
       48 DUPCLOSURE                       R9 K22 [PROTO_1]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R9 R8 K19 ["story"]
       54 SETLIST                          R7 R8 1 [1]
       56 SETTABLEKS                       R7 R6 K15 ["stories"]
       58 RETURN                           R6 1
