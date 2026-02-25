PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Localization"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R2 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R2 K3 ["IKMode"]
       10 GETTABLEKS                       R5 R2 K4 ["Height"]
       12 GETTABLEKS                       R6 R2 K5 ["LayoutOrder"]
       14 GETTABLEKS                       R7 R2 K6 ["SetIKMode"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R8 R9 K7 ["createElement"]
       19 LOADK                            R9 K8 ["Frame"]
       20 DUPTABLE                         R10 K13 [{"Size", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "LayoutOrder"}]
       21 GETIMPORT                        R11 K16 [UDim2.new]
       23 LOADN                            R12 1
       24 LOADN                            R13 0
       25 LOADN                            R14 0
       26 MOVE                             R15 R5
       27 CALL                             R11 4 1
       28 SETTABLEKS                       R11 R10 K9 ["Size"]
       30 GETTABLEKS                       R12 R3 K17 ["ikTheme"]
       32 GETTABLEKS                       R11 R12 K18 ["headerColor"]
       34 SETTABLEKS                       R11 R10 K10 ["BackgroundColor3"]
       36 LOADN                            R11 1
       37 SETTABLEKS                       R11 R10 K11 ["BorderSizePixel"]
       39 GETTABLEKS                       R12 R3 K17 ["ikTheme"]
       41 GETTABLEKS                       R11 R12 K19 ["headerBorder"]
       43 SETTABLEKS                       R11 R10 K12 ["BorderColor3"]
       45 SETTABLEKS                       R6 R10 K5 ["LayoutOrder"]
       47 DUPTABLE                         R11 K22 [{"IKModeLabel", "RadioButtonsFrame"}]
       48 GETUPVAL                         R13 0
       49 GETTABLEKS                       R12 R13 K7 ["createElement"]
       51 LOADK                            R13 K23 ["TextLabel"]
       52 DUPTABLE                         R14 K33 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "TextSize", "Font", "TextColor3", "TextXAlignment", "TextYAlignment", "Text", "LayoutOrder"}]
       53 GETIMPORT                        R15 K35 [Vector2.new]
       55 LOADN                            R16 0
       56 LOADK                            R17 K36 [0.5]
       57 CALL                             R15 2 1
       58 SETTABLEKS                       R15 R14 K24 ["AnchorPoint"]
       60 GETIMPORT                        R15 K16 [UDim2.new]
       62 LOADN                            R16 0
       63 LOADN                            R17 0
       64 LOADK                            R18 K36 [0.5]
       65 LOADN                            R19 0
       66 CALL                             R15 4 1
       67 SETTABLEKS                       R15 R14 K25 ["Position"]
       69 GETIMPORT                        R15 K16 [UDim2.new]
       71 LOADN                            R16 0
       72 LOADN                            R17 64
       73 LOADN                            R18 0
       74 GETUPVAL                         R20 1
       75 GETTABLEKS                       R19 R20 K37 ["TRACK_HEIGHT"]
       77 CALL                             R15 4 1
       78 SETTABLEKS                       R15 R14 K9 ["Size"]
       80 LOADN                            R15 1
       81 SETTABLEKS                       R15 R14 K26 ["BackgroundTransparency"]
       83 GETTABLEKS                       R16 R3 K17 ["ikTheme"]
       85 GETTABLEKS                       R15 R16 K38 ["textSize"]
       87 SETTABLEKS                       R15 R14 K27 ["TextSize"]
       89 GETTABLEKS                       R15 R3 K39 ["font"]
       91 SETTABLEKS                       R15 R14 K28 ["Font"]
       93 GETTABLEKS                       R16 R3 K17 ["ikTheme"]
       95 GETTABLEKS                       R15 R16 K40 ["textColor"]
       97 SETTABLEKS                       R15 R14 K29 ["TextColor3"]
       99 GETIMPORT                        R15 K43 [Enum.TextXAlignment.Center]
      101 SETTABLEKS                       R15 R14 K30 ["TextXAlignment"]
      103 GETIMPORT                        R15 K44 [Enum.TextYAlignment.Center]
      105 SETTABLEKS                       R15 R14 K31 ["TextYAlignment"]
      107 LOADK                            R17 K45 ["IKMenu"]
      108 LOADK                            R18 K3 ["IKMode"]
      109 NAMECALL                         R15 R1 K46 ["getText"]
      111 CALL                             R15 3 1
      112 SETTABLEKS                       R15 R14 K32 ["Text"]
      114 LOADN                            R15 0
      115 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      117 CALL                             R12 2 1
      118 SETTABLEKS                       R12 R11 K20 ["IKModeLabel"]
      120 GETUPVAL                         R13 0
      121 GETTABLEKS                       R12 R13 K7 ["createElement"]
      123 LOADK                            R13 K8 ["Frame"]
      124 DUPTABLE                         R14 K47 [{"BackgroundTransparency", "AnchorPoint", "Position", "Size", "LayoutOrder"}]
      125 LOADN                            R15 1
      126 SETTABLEKS                       R15 R14 K26 ["BackgroundTransparency"]
      128 GETIMPORT                        R15 K35 [Vector2.new]
      130 LOADN                            R16 1
      131 LOADK                            R17 K36 [0.5]
      132 CALL                             R15 2 1
      133 SETTABLEKS                       R15 R14 K24 ["AnchorPoint"]
      135 GETIMPORT                        R15 K16 [UDim2.new]
      137 LOADN                            R16 1
      138 LOADN                            R17 0
      139 LOADK                            R18 K36 [0.5]
      140 LOADN                            R19 0
      141 CALL                             R15 4 1
      142 SETTABLEKS                       R15 R14 K25 ["Position"]
      144 GETIMPORT                        R15 K16 [UDim2.new]
      146 LOADN                            R16 0
      147 LOADN                            R17 186
      148 LOADK                            R18 K36 [0.5]
      149 LOADN                            R19 0
      150 CALL                             R15 4 1
      151 SETTABLEKS                       R15 R14 K9 ["Size"]
      153 LOADN                            R15 1
      154 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      156 DUPTABLE                         R15 K49 [{"RadioButtons"}]
      157 GETUPVAL                         R17 0
      158 GETTABLEKS                       R16 R17 K7 ["createElement"]
      160 GETUPVAL                         R17 2
      161 DUPTABLE                         R18 K54 [{"Buttons", "SelectedKey", "FillDirection", "LayoutOrder", "OnClick"}]
      162 NEWTABLE                         R19 0 2
      164 DUPTABLE                         R20 K56 [{"Key", "Text"}]
      165 GETUPVAL                         R23 1
      166 GETTABLEKS                       R22 R23 K57 ["IK_MODE"]
      168 GETTABLEKS                       R21 R22 K58 ["BodyPart"]
      170 SETTABLEKS                       R21 R20 K55 ["Key"]
      172 LOADK                            R23 K45 ["IKMenu"]
      173 LOADK                            R24 K58 ["BodyPart"]
      174 NAMECALL                         R21 R1 K46 ["getText"]
      176 CALL                             R21 3 1
      177 SETTABLEKS                       R21 R20 K32 ["Text"]
      179 DUPTABLE                         R21 K56 [{"Key", "Text"}]
      180 GETUPVAL                         R24 1
      181 GETTABLEKS                       R23 R24 K57 ["IK_MODE"]
      183 GETTABLEKS                       R22 R23 K59 ["FullBody"]
      185 SETTABLEKS                       R22 R21 K55 ["Key"]
      187 LOADK                            R24 K45 ["IKMenu"]
      188 LOADK                            R25 K59 ["FullBody"]
      189 NAMECALL                         R22 R1 K46 ["getText"]
      191 CALL                             R22 3 1
      192 SETTABLEKS                       R22 R21 K32 ["Text"]
      194 SETLIST                          R19 R20 2 [1]
      196 SETTABLEKS                       R19 R18 K50 ["Buttons"]
      198 SETTABLEKS                       R4 R18 K51 ["SelectedKey"]
      200 GETIMPORT                        R19 K61 [Enum.FillDirection.Horizontal]
      202 SETTABLEKS                       R19 R18 K52 ["FillDirection"]
      204 LOADN                            R19 1
      205 SETTABLEKS                       R19 R18 K5 ["LayoutOrder"]
      207 SETTABLEKS                       R7 R18 K53 ["OnClick"]
      209 CALL                             R16 2 1
      210 SETTABLEKS                       R16 R15 K48 ["RadioButtons"]
      212 CALL                             R12 3 1
      213 SETTABLEKS                       R12 R11 K21 ["RadioButtonsFrame"]
      215 CALL                             R8 3 -1
      216 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R2 K9 ["UI"]
       23 GETTABLEKS                       R3 R4 K10 ["RadioButtonList"]
       25 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K12 ["withContext"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R9 R0 K13 ["Src"]
       33 GETTABLEKS                       R8 R9 K14 ["Util"]
       35 GETTABLEKS                       R7 R8 K15 ["Constants"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R1 K16 ["PureComponent"]
       40 LOADK                            R9 K17 ["IKModeButtons"]
       41 NAMECALL                         R7 R7 K18 ["extend"]
       43 CALL                             R7 2 1
       44 DUPCLOSURE                       R8 K19 [PROTO_0]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R8 R7 K20 ["render"]
       50 MOVE                             R8 R5
       51 DUPTABLE                         R9 K23 [{"Stylizer", "Localization"}]
       52 GETTABLEKS                       R10 R4 K21 ["Stylizer"]
       54 SETTABLEKS                       R10 R9 K21 ["Stylizer"]
       56 GETTABLEKS                       R10 R4 K22 ["Localization"]
       58 SETTABLEKS                       R10 R9 K22 ["Localization"]
       60 CALL                             R8 1 1
       61 MOVE                             R9 R7
       62 CALL                             R8 1 1
       63 MOVE                             R7 R8
       64 RETURN                           R7 1
