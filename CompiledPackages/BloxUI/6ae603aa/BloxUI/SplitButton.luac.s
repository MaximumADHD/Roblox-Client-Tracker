PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Blox"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["expr"]
       14 GETTABLEKS                       R3 R1 K8 ["template"]
       16 GETTABLEKS                       R4 R1 K9 ["Frame"]
       18 GETTABLEKS                       R5 R1 K10 ["ImageLabel"]
       20 GETTABLEKS                       R6 R1 K11 ["TextButton"]
       22 GETTABLEKS                       R7 R1 K12 ["TextLabel"]
       24 MOVE                             R8 R3
       25 LOADK                            R9 K13 ["SplitButton"]
       26 DUPTABLE                         R10 K18 [{"text", "icon", "onActivated", "onArrowActivated"}]
       27 LOADK                            R11 K19 ["Action"]
       28 SETTABLEKS                       R11 R10 K14 ["text"]
       30 LOADK                            R11 K20 [""]
       31 SETTABLEKS                       R11 R10 K15 ["icon"]
       33 DUPCLOSURE                       R11 K21 [PROTO_0]
       34 SETTABLEKS                       R11 R10 K16 ["onActivated"]
       36 DUPCLOSURE                       R11 K22 [PROTO_1]
       37 SETTABLEKS                       R11 R10 K17 ["onArrowActivated"]
       39 NEWTABLE                         R11 0 1
       41 MOVE                             R12 R4
       42 NEWTABLE                         R13 4 3
       44 LOADK                            R17 K13 ["SplitButton"]
       45 SETTABLEKS                       R17 R13 K23 ["Name"]
       47 LOADK                            R17 K24 ["split-button"]
       48 SETTABLEKS                       R17 R13 K25 ["Tags"]
       50 MOVE                             R17 R2
       51 LOADK                            R18 K26 ["api.childOrder"]
       52 CALL                             R17 1 1
       53 SETTABLEKS                       R17 R13 K27 ["LayoutOrder"]
       55 MOVE                             R14 R6
       56 NEWTABLE                         R15 4 1
       58 LOADK                            R17 K28 ["SplitMain"]
       59 SETTABLEKS                       R17 R15 K23 ["Name"]
       61 LOADK                            R17 K29 ["split-main"]
       62 SETTABLEKS                       R17 R15 K25 ["Tags"]
       64 MOVE                             R17 R2
       65 LOADK                            R18 K30 ["fn() onActivated()"]
       66 CALL                             R17 1 1
       67 SETTABLEKS                       R17 R15 K31 ["OnActivated"]
       69 MOVE                             R16 R4
       70 NEWTABLE                         R17 2 2
       72 LOADK                            R20 K32 ["SplitMainContent"]
       73 SETTABLEKS                       R20 R17 K23 ["Name"]
       75 LOADK                            R20 K33 ["box row gap-4 auto-xy"]
       76 SETTABLEKS                       R20 R17 K25 ["Tags"]
       78 MOVE                             R18 R5
       79 DUPTABLE                         R19 K36 [{"Name", "Tags", "Image", "Visible"}]
       80 LOADK                            R20 K37 ["SplitMainIcon"]
       81 SETTABLEKS                       R20 R19 K23 ["Name"]
       83 LOADK                            R20 K38 ["button-icon"]
       84 SETTABLEKS                       R20 R19 K25 ["Tags"]
       86 MOVE                             R20 R2
       87 LOADK                            R21 K15 ["icon"]
       88 CALL                             R20 1 1
       89 SETTABLEKS                       R20 R19 K34 ["Image"]
       91 MOVE                             R20 R2
       92 LOADK                            R21 K39 ["icon ~= ''"]
       93 CALL                             R20 1 1
       94 SETTABLEKS                       R20 R19 K35 ["Visible"]
       96 CALL                             R18 1 1
       97 MOVE                             R19 R7
       98 DUPTABLE                         R20 K41 [{"Name", "Tags", "Text"}]
       99 LOADK                            R21 K42 ["SplitMainLabel"]
      100 SETTABLEKS                       R21 R20 K23 ["Name"]
      102 LOADK                            R21 K43 ["button-label"]
      103 SETTABLEKS                       R21 R20 K25 ["Tags"]
      105 MOVE                             R21 R2
      106 LOADK                            R22 K14 ["text"]
      107 CALL                             R21 1 1
      108 SETTABLEKS                       R21 R20 K40 ["Text"]
      110 CALL                             R19 1 -1
      111 SETLIST                          R17 R18 -1 [1]
      113 CALL                             R16 1 -1
      114 SETLIST                          R15 R16 -1 [1]
      116 CALL                             R14 1 1
      117 MOVE                             R15 R4
      118 DUPTABLE                         R16 K44 [{"Name", "Tags"}]
      119 LOADK                            R17 K45 ["SplitDivider"]
      120 SETTABLEKS                       R17 R16 K23 ["Name"]
      122 LOADK                            R17 K46 ["split-divider"]
      123 SETTABLEKS                       R17 R16 K25 ["Tags"]
      125 CALL                             R15 1 1
      126 MOVE                             R16 R6
      127 NEWTABLE                         R17 4 1
      129 LOADK                            R19 K47 ["SplitArrow"]
      130 SETTABLEKS                       R19 R17 K23 ["Name"]
      132 LOADK                            R19 K48 ["split-arrow"]
      133 SETTABLEKS                       R19 R17 K25 ["Tags"]
      135 MOVE                             R19 R2
      136 LOADK                            R20 K49 ["fn() onArrowActivated()"]
      137 CALL                             R19 1 1
      138 SETTABLEKS                       R19 R17 K31 ["OnActivated"]
      140 MOVE                             R18 R7
      141 DUPTABLE                         R19 K53 [{"Name", "Text", "TextSize", "Position", "AnchorPoint"}]
      142 LOADK                            R20 K54 ["SplitArrowLabel"]
      143 SETTABLEKS                       R20 R19 K23 ["Name"]
      145 LOADK                            R20 K55 ["▾"]
      146 SETTABLEKS                       R20 R19 K40 ["Text"]
      148 LOADN                            R20 10
      149 SETTABLEKS                       R20 R19 K50 ["TextSize"]
      151 GETIMPORT                        R20 K58 [UDim2.fromScale]
      153 LOADK                            R21 K59 [0.5]
      154 LOADK                            R22 K59 [0.5]
      155 CALL                             R20 2 1
      156 SETTABLEKS                       R20 R19 K51 ["Position"]
      158 GETIMPORT                        R20 K62 [Vector2.new]
      160 LOADK                            R21 K59 [0.5]
      161 LOADK                            R22 K59 [0.5]
      162 CALL                             R20 2 1
      163 SETTABLEKS                       R20 R19 K52 ["AnchorPoint"]
      165 CALL                             R18 1 -1
      166 SETLIST                          R17 R18 -1 [1]
      168 CALL                             R16 1 -1
      169 SETLIST                          R13 R14 -1 [1]
      171 CALL                             R12 1 -1
      172 SETLIST                          R11 R12 -1 [1]
      174 CALL                             R8 3 1
      175 RETURN                           R8 1
