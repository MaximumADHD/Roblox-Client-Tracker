PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["BloxUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Blox"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["expr"]
       16 GETTABLEKS                       R4 R2 K9 ["template"]
       18 GETTABLEKS                       R5 R2 K10 ["Frame"]
       20 GETTABLEKS                       R6 R2 K11 ["ImageLabel"]
       22 GETTABLEKS                       R7 R2 K12 ["TextButton"]
       24 GETTABLEKS                       R8 R2 K13 ["TextLabel"]
       26 MOVE                             R9 R4
       27 LOADK                            R10 K14 ["SplitButton"]
       28 DUPTABLE                         R11 K19 [{"text", "icon", "onActivated", "onArrowActivated"}]
       29 LOADK                            R12 K20 ["Action"]
       30 SETTABLEKS                       R12 R11 K15 ["text"]
       32 LOADK                            R12 K21 [""]
       33 SETTABLEKS                       R12 R11 K16 ["icon"]
       35 DUPCLOSURE                       R12 K22 [PROTO_0]
       36 SETTABLEKS                       R12 R11 K17 ["onActivated"]
       38 DUPCLOSURE                       R12 K23 [PROTO_1]
       39 SETTABLEKS                       R12 R11 K18 ["onArrowActivated"]
       41 NEWTABLE                         R12 0 1
       43 MOVE                             R13 R5
       44 NEWTABLE                         R14 4 3
       46 LOADK                            R18 K14 ["SplitButton"]
       47 SETTABLEKS                       R18 R14 K24 ["Name"]
       49 LOADK                            R18 K25 ["split-button"]
       50 SETTABLEKS                       R18 R14 K26 ["Tags"]
       52 MOVE                             R18 R3
       53 LOADK                            R19 K27 ["api.childOrder"]
       54 CALL                             R18 1 1
       55 SETTABLEKS                       R18 R14 K28 ["LayoutOrder"]
       57 MOVE                             R15 R7
       58 NEWTABLE                         R16 4 1
       60 LOADK                            R18 K29 ["SplitMain"]
       61 SETTABLEKS                       R18 R16 K24 ["Name"]
       63 LOADK                            R18 K30 ["split-main"]
       64 SETTABLEKS                       R18 R16 K26 ["Tags"]
       66 MOVE                             R18 R3
       67 LOADK                            R19 K31 ["fn() onActivated()"]
       68 CALL                             R18 1 1
       69 SETTABLEKS                       R18 R16 K32 ["OnActivated"]
       71 MOVE                             R17 R5
       72 NEWTABLE                         R18 2 2
       74 LOADK                            R21 K33 ["SplitMainContent"]
       75 SETTABLEKS                       R21 R18 K24 ["Name"]
       77 LOADK                            R21 K34 ["box row gap-4 auto-xy"]
       78 SETTABLEKS                       R21 R18 K26 ["Tags"]
       80 MOVE                             R19 R6
       81 DUPTABLE                         R20 K37 [{"Name", "Tags", "Image", "Visible"}]
       82 LOADK                            R21 K38 ["SplitMainIcon"]
       83 SETTABLEKS                       R21 R20 K24 ["Name"]
       85 LOADK                            R21 K39 ["button-icon"]
       86 SETTABLEKS                       R21 R20 K26 ["Tags"]
       88 MOVE                             R21 R3
       89 LOADK                            R22 K16 ["icon"]
       90 CALL                             R21 1 1
       91 SETTABLEKS                       R21 R20 K35 ["Image"]
       93 MOVE                             R21 R3
       94 LOADK                            R22 K40 ["icon ~= ''"]
       95 CALL                             R21 1 1
       96 SETTABLEKS                       R21 R20 K36 ["Visible"]
       98 CALL                             R19 1 1
       99 MOVE                             R20 R8
      100 DUPTABLE                         R21 K42 [{"Name", "Tags", "Text"}]
      101 LOADK                            R22 K43 ["SplitMainLabel"]
      102 SETTABLEKS                       R22 R21 K24 ["Name"]
      104 LOADK                            R22 K44 ["button-label"]
      105 SETTABLEKS                       R22 R21 K26 ["Tags"]
      107 MOVE                             R22 R3
      108 LOADK                            R23 K15 ["text"]
      109 CALL                             R22 1 1
      110 SETTABLEKS                       R22 R21 K41 ["Text"]
      112 CALL                             R20 1 -1
      113 SETLIST                          R18 R19 -1 [1]
      115 CALL                             R17 1 -1
      116 SETLIST                          R16 R17 -1 [1]
      118 CALL                             R15 1 1
      119 MOVE                             R16 R5
      120 DUPTABLE                         R17 K45 [{"Name", "Tags"}]
      121 LOADK                            R18 K46 ["SplitDivider"]
      122 SETTABLEKS                       R18 R17 K24 ["Name"]
      124 LOADK                            R18 K47 ["split-divider"]
      125 SETTABLEKS                       R18 R17 K26 ["Tags"]
      127 CALL                             R16 1 1
      128 MOVE                             R17 R7
      129 NEWTABLE                         R18 4 1
      131 LOADK                            R20 K48 ["SplitArrow"]
      132 SETTABLEKS                       R20 R18 K24 ["Name"]
      134 LOADK                            R20 K49 ["split-arrow"]
      135 SETTABLEKS                       R20 R18 K26 ["Tags"]
      137 MOVE                             R20 R3
      138 LOADK                            R21 K50 ["fn() onArrowActivated()"]
      139 CALL                             R20 1 1
      140 SETTABLEKS                       R20 R18 K32 ["OnActivated"]
      142 MOVE                             R19 R8
      143 DUPTABLE                         R20 K54 [{"Name", "Text", "TextSize", "Position", "AnchorPoint"}]
      144 LOADK                            R21 K55 ["SplitArrowLabel"]
      145 SETTABLEKS                       R21 R20 K24 ["Name"]
      147 LOADK                            R21 K56 ["▾"]
      148 SETTABLEKS                       R21 R20 K41 ["Text"]
      150 LOADN                            R21 10
      151 SETTABLEKS                       R21 R20 K51 ["TextSize"]
      153 GETIMPORT                        R21 K59 [UDim2.fromScale]
      155 LOADK                            R22 K60 [0.5]
      156 LOADK                            R23 K60 [0.5]
      157 CALL                             R21 2 1
      158 SETTABLEKS                       R21 R20 K52 ["Position"]
      160 GETIMPORT                        R21 K63 [Vector2.new]
      162 LOADK                            R22 K60 [0.5]
      163 LOADK                            R23 K60 [0.5]
      164 CALL                             R21 2 1
      165 SETTABLEKS                       R21 R20 K53 ["AnchorPoint"]
      167 CALL                             R19 1 -1
      168 SETLIST                          R18 R19 -1 [1]
      170 CALL                             R17 1 -1
      171 SETLIST                          R14 R15 -1 [1]
      173 CALL                             R13 1 -1
      174 SETLIST                          R12 R13 -1 [1]
      176 CALL                             R9 3 1
      177 RETURN                           R9 1
