PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R2 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R2 K3 ["IKMode"]
       10 GETTABLEKS                       R5 R2 K4 ["Height"]
       12 GETTABLEKS                       R6 R2 K5 ["LayoutOrder"]
       14 GETTABLEKS                       R7 R2 K6 ["SetIKMode"]
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R8 R8 K7 ["createElement"]
       19 LOADK                            R9 K8 ["Frame"]
       20 DUPTABLE                         R10 K14 [{["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"], ["LayoutOrder"]}]
       21 GETIMPORT                        R11 K17 [UDim2.new]
       23 LOADN                            R12 1
       24 LOADN                            R13 0
       25 LOADN                            R14 0
       26 MOVE                             R15 R5
       27 CALL                             R11 4 1
       28 SETTABLEKS                       R11 R10 K9 ["Size"]
       30 GETTABLEKS                       R11 R3 K18 ["ikTheme"]
       32 GETTABLEKS                       R11 R11 K19 ["headerColor"]
       34 SETTABLEKS                       R11 R10 K10 ["BackgroundColor3"]
       36 GETTABLEKS                       R11 R3 K18 ["ikTheme"]
       38 GETTABLEKS                       R11 R11 K20 ["headerBorder"]
       40 SETTABLEKS                       R11 R10 K13 ["BorderColor3"]
       42 SETTABLEKS                       R6 R10 K5 ["LayoutOrder"]
       44 DUPTABLE                         R11 K23 [{"IKModeLabel", "RadioButtonsFrame"}]
       45 GETUPVAL                         R12 0
       46 GETTABLEKS                       R12 R12 K7 ["createElement"]
       48 LOADK                            R13 K24 ["TextLabel"]
       49 DUPTABLE                         R14 K35 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["TextSize"], ["Font"], ["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["Text"], ["LayoutOrder"] = 0}]
       50 GETIMPORT                        R15 K37 [Vector2.new]
       52 LOADN                            R16 0
       53 LOADK                            R17 K38 [0.5]
       54 CALL                             R15 2 1
       55 SETTABLEKS                       R15 R14 K25 ["AnchorPoint"]
       57 GETIMPORT                        R15 K17 [UDim2.new]
       59 LOADN                            R16 0
       60 LOADN                            R17 0
       61 LOADK                            R18 K38 [0.5]
       62 LOADN                            R19 0
       63 CALL                             R15 4 1
       64 SETTABLEKS                       R15 R14 K26 ["Position"]
       66 GETIMPORT                        R15 K17 [UDim2.new]
       68 LOADN                            R16 0
       69 LOADN                            R17 64
       70 LOADN                            R18 0
       71 GETUPVAL                         R19 1
       72 GETTABLEKS                       R19 R19 K39 ["TRACK_HEIGHT"]
       74 CALL                             R15 4 1
       75 SETTABLEKS                       R15 R14 K9 ["Size"]
       77 GETTABLEKS                       R15 R3 K18 ["ikTheme"]
       79 GETTABLEKS                       R15 R15 K40 ["textSize"]
       81 SETTABLEKS                       R15 R14 K28 ["TextSize"]
       83 GETTABLEKS                       R15 R3 K41 ["font"]
       85 SETTABLEKS                       R15 R14 K29 ["Font"]
       87 GETTABLEKS                       R15 R3 K18 ["ikTheme"]
       89 GETTABLEKS                       R15 R15 K42 ["textColor"]
       91 SETTABLEKS                       R15 R14 K30 ["TextColor3"]
       93 GETIMPORT                        R15 K45 [Enum.TextXAlignment.Center]
       95 SETTABLEKS                       R15 R14 K31 ["TextXAlignment"]
       97 GETIMPORT                        R15 K46 [Enum.TextYAlignment.Center]
       99 SETTABLEKS                       R15 R14 K32 ["TextYAlignment"]
      101 LOADK                            R17 K47 ["IKMenu"]
      102 LOADK                            R18 K3 ["IKMode"]
      103 NAMECALL                         R15 R1 K48 ["getText"]
      105 CALL                             R15 3 1
      106 SETTABLEKS                       R15 R14 K33 ["Text"]
      108 CALL                             R12 2 1
      109 SETTABLEKS                       R12 R11 K21 ["IKModeLabel"]
      111 GETUPVAL                         R12 0
      112 GETTABLEKS                       R12 R12 K7 ["createElement"]
      114 LOADK                            R13 K8 ["Frame"]
      115 DUPTABLE                         R14 K49 [{["BackgroundTransparency"] = 1, ["AnchorPoint"], ["Position"], ["Size"], ["LayoutOrder"] = 1}]
      116 GETIMPORT                        R15 K37 [Vector2.new]
      118 LOADN                            R16 1
      119 LOADK                            R17 K38 [0.5]
      120 CALL                             R15 2 1
      121 SETTABLEKS                       R15 R14 K25 ["AnchorPoint"]
      123 GETIMPORT                        R15 K17 [UDim2.new]
      125 LOADN                            R16 1
      126 LOADN                            R17 0
      127 LOADK                            R18 K38 [0.5]
      128 LOADN                            R19 0
      129 CALL                             R15 4 1
      130 SETTABLEKS                       R15 R14 K26 ["Position"]
      132 GETIMPORT                        R15 K17 [UDim2.new]
      134 LOADN                            R16 0
      135 LOADN                            R17 186
      136 LOADK                            R18 K38 [0.5]
      137 LOADN                            R19 0
      138 CALL                             R15 4 1
      139 SETTABLEKS                       R15 R14 K9 ["Size"]
      141 DUPTABLE                         R15 K51 [{"RadioButtons"}]
      142 GETUPVAL                         R16 0
      143 GETTABLEKS                       R16 R16 K7 ["createElement"]
      145 GETUPVAL                         R17 2
      146 DUPTABLE                         R18 K56 [{["Buttons"], ["SelectedKey"], ["FillDirection"], ["LayoutOrder"] = 1, ["OnClick"]}]
      147 NEWTABLE                         R19 0 2
      149 DUPTABLE                         R20 K58 [{"Key", "Text"}]
      150 GETUPVAL                         R21 1
      151 GETTABLEKS                       R21 R21 K59 ["IK_MODE"]
      153 GETTABLEKS                       R21 R21 K60 ["BodyPart"]
      155 SETTABLEKS                       R21 R20 K57 ["Key"]
      157 LOADK                            R23 K47 ["IKMenu"]
      158 LOADK                            R24 K60 ["BodyPart"]
      159 NAMECALL                         R21 R1 K48 ["getText"]
      161 CALL                             R21 3 1
      162 SETTABLEKS                       R21 R20 K33 ["Text"]
      164 DUPTABLE                         R21 K58 [{"Key", "Text"}]
      165 GETUPVAL                         R22 1
      166 GETTABLEKS                       R22 R22 K59 ["IK_MODE"]
      168 GETTABLEKS                       R22 R22 K61 ["FullBody"]
      170 SETTABLEKS                       R22 R21 K57 ["Key"]
      172 LOADK                            R24 K47 ["IKMenu"]
      173 LOADK                            R25 K61 ["FullBody"]
      174 NAMECALL                         R22 R1 K48 ["getText"]
      176 CALL                             R22 3 1
      177 SETTABLEKS                       R22 R21 K33 ["Text"]
      179 SETLIST                          R19 R20 2 [1]
      181 SETTABLEKS                       R19 R18 K52 ["Buttons"]
      183 SETTABLEKS                       R4 R18 K53 ["SelectedKey"]
      185 GETIMPORT                        R19 K63 [Enum.FillDirection.Horizontal]
      187 SETTABLEKS                       R19 R18 K54 ["FillDirection"]
      189 SETTABLEKS                       R7 R18 K55 ["OnClick"]
      191 CALL                             R16 2 1
      192 SETTABLEKS                       R16 R15 K50 ["RadioButtons"]
      194 CALL                             R12 3 1
      195 SETTABLEKS                       R12 R11 K22 ["RadioButtonsFrame"]
      197 CALL                             R8 3 -1
      198 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R3 R3 K10 ["RadioButtonList"]
       25 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K12 ["withContext"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R0 K13 ["Src"]
       33 GETTABLEKS                       R7 R7 K14 ["Util"]
       35 GETTABLEKS                       R7 R7 K15 ["Constants"]
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
