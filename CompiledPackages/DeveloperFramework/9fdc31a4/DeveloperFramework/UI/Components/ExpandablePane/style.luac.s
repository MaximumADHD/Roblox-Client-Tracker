MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETTABLEKS                       R1 R0 K5 ["Style"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["StyleKey"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Style"]
       20 GETTABLEKS                       R4 R4 K9 ["Themes"]
       22 GETTABLEKS                       R4 R4 K10 ["FoundationDark"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K7 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Util"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K7 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Util"]
       34 GETTABLEKS                       R6 R6 K12 ["StyleModifier"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R4 K13 ["deepCopy"]
       39 GETIMPORT                        R7 K7 [require]
       41 GETTABLEKS                       R8 R0 K2 ["UI"]
       43 GETTABLEKS                       R8 R8 K14 ["Components"]
       45 GETTABLEKS                       R8 R8 K15 ["UIFolderData"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K7 [require]
       50 GETTABLEKS                       R9 R7 K16 ["Pane"]
       52 GETTABLEKS                       R9 R9 K17 ["style"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K7 [require]
       57 GETTABLEKS                       R10 R0 K4 ["Parent"]
       59 GETTABLEKS                       R10 R10 K18 ["Dash"]
       61 CALL                             R9 1 1
       62 GETTABLEKS                       R10 R9 K19 ["join"]
       64 MOVE                             R11 R6
       65 MOVE                             R12 R8
       66 CALL                             R11 1 1
       67 GETTABLEKS                       R12 R11 K20 ["&Box"]
       69 GETTABLEKS                       R13 R11 K21 ["&RoundBox"]
       71 GETTABLEKS                       R14 R11 K22 ["&BorderBox"]
       73 DUPTABLE                         R15 K25 [{"Content", "Header"}]
       74 DUPTABLE                         R16 K29 [{["Padding"], ["Spacing"] = 10}]
       75 DUPTABLE                         R17 K35 [{["Left"] = 18, ["Top"] = 10, ["Right"] = 18, ["Bottom"] = 10}]
       76 SETTABLEKS                       R17 R16 K26 ["Padding"]
       78 SETTABLEKS                       R16 R15 K23 ["Content"]
       80 DUPTABLE                         R16 K42 [{["Arrow"], ["HorizontalAlignment"], ["Padding"], ["Size"], ["Spacing"] = 6, ["Text"], ["VerticalAlignment"]}]
       81 NEWTABLE                         R17 8 0
       83 GETTABLEKS                       R18 R2 K43 ["MainText"]
       85 SETTABLEKS                       R18 R17 K44 ["Color"]
       87 LOADK                            R18 K45 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
       88 SETTABLEKS                       R18 R17 K46 ["Image"]
       90 GETIMPORT                        R18 K49 [Vector2.new]
       92 LOADN                            R19 12
       93 LOADN                            R20 0
       94 CALL                             R18 2 1
       95 SETTABLEKS                       R18 R17 K50 ["ImageRectOffset"]
       97 GETIMPORT                        R18 K49 [Vector2.new]
       99 LOADN                            R19 12
      100 LOADN                            R20 12
      101 CALL                             R18 2 1
      102 SETTABLEKS                       R18 R17 K51 ["ImageRectSize"]
      104 GETIMPORT                        R18 K54 [UDim2.fromOffset]
      106 LOADN                            R19 12
      107 LOADN                            R20 12
      108 CALL                             R18 2 1
      109 SETTABLEKS                       R18 R17 K38 ["Size"]
      111 GETTABLEKS                       R18 R5 K55 ["Selected"]
      113 DUPTABLE                         R19 K56 [{"ImageRectOffset"}]
      114 GETIMPORT                        R20 K49 [Vector2.new]
      116 LOADN                            R21 24
      117 LOADN                            R22 0
      118 CALL                             R20 2 1
      119 SETTABLEKS                       R20 R19 K50 ["ImageRectOffset"]
      121 SETTABLE                         R19 R17 R18
      122 SETTABLEKS                       R17 R16 K36 ["Arrow"]
      124 GETIMPORT                        R17 K58 [Enum.HorizontalAlignment.Left]
      126 SETTABLEKS                       R17 R16 K37 ["HorizontalAlignment"]
      128 DUPTABLE                         R17 K59 [{["Left"] = 10, ["Right"] = 10}]
      129 SETTABLEKS                       R17 R16 K26 ["Padding"]
      131 GETIMPORT                        R17 K60 [UDim2.new]
      133 LOADN                            R18 1
      134 LOADN                            R19 0
      135 LOADN                            R20 0
      136 LOADN                            R21 32
      137 CALL                             R17 4 1
      138 SETTABLEKS                       R17 R16 K38 ["Size"]
      140 DUPTABLE                         R17 K64 [{["Font"], ["TextColor"], ["TextSize"] = 18}]
      141 GETIMPORT                        R18 K66 [Enum.Font.SourceSansBold]
      143 SETTABLEKS                       R18 R17 K61 ["Font"]
      145 GETTABLEKS                       R18 R2 K67 ["TitlebarText"]
      147 SETTABLEKS                       R18 R17 K62 ["TextColor"]
      149 SETTABLEKS                       R17 R16 K40 ["Text"]
      151 GETIMPORT                        R17 K69 [Enum.VerticalAlignment.Center]
      153 SETTABLEKS                       R17 R16 K41 ["VerticalAlignment"]
      155 SETTABLEKS                       R16 R15 K24 ["Header"]
      157 MOVE                             R16 R10
      158 MOVE                             R17 R15
      159 NEWTABLE                         R18 8 0
      161 SETTABLEKS                       R12 R18 K20 ["&Box"]
      163 SETTABLEKS                       R14 R18 K22 ["&BorderBox"]
      165 SETTABLEKS                       R13 R18 K21 ["&RoundBox"]
      167 MOVE                             R19 R10
      168 MOVE                             R20 R12
      169 DUPTABLE                         R21 K70 [{"Header"}]
      170 MOVE                             R22 R10
      171 GETTABLEKS                       R23 R15 K24 ["Header"]
      173 DUPTABLE                         R24 K72 [{"Background"}]
      174 GETTABLEKS                       R25 R2 K73 ["Titlebar"]
      176 SETTABLEKS                       R25 R24 K71 ["Background"]
      178 CALL                             R22 2 1
      179 SETTABLEKS                       R22 R21 K24 ["Header"]
      181 CALL                             R19 2 1
      182 SETTABLEKS                       R19 R18 K74 ["&Section"]
      184 MOVE                             R19 R10
      185 MOVE                             R20 R12
      186 DUPTABLE                         R21 K70 [{"Header"}]
      187 MOVE                             R22 R10
      188 GETTABLEKS                       R23 R15 K24 ["Header"]
      190 DUPTABLE                         R24 K75 [{"Background", "Text"}]
      191 GETTABLEKS                       R25 R2 K73 ["Titlebar"]
      193 SETTABLEKS                       R25 R24 K71 ["Background"]
      195 DUPTABLE                         R25 K76 [{"Font", "TextColor", "TextSize"}]
      196 GETIMPORT                        R26 K78 [Enum.Font.BuilderSansBold]
      198 SETTABLEKS                       R26 R25 K61 ["Font"]
      200 GETTABLEKS                       R26 R2 K67 ["TitlebarText"]
      202 SETTABLEKS                       R26 R25 K62 ["TextColor"]
      204 MOVE                             R26 R3
      205 LOADN                            R27 1
      206 CALL                             R26 1 1
      207 GETTABLEKS                       R26 R26 K79 ["Typography"]
      209 GETTABLEKS                       R26 R26 K80 ["TitleSmall"]
      211 GETTABLEKS                       R26 R26 K81 ["FontSize"]
      213 SETTABLEKS                       R26 R25 K63 ["TextSize"]
      215 SETTABLEKS                       R25 R24 K40 ["Text"]
      217 CALL                             R22 2 1
      218 SETTABLEKS                       R22 R21 K24 ["Header"]
      220 CALL                             R19 2 1
      221 SETTABLEKS                       R19 R18 K82 ["&SectionTitleSmall"]
      223 MOVE                             R19 R10
      224 MOVE                             R20 R12
      225 DUPTABLE                         R21 K70 [{"Header"}]
      226 MOVE                             R22 R10
      227 GETTABLEKS                       R23 R15 K24 ["Header"]
      229 DUPTABLE                         R24 K75 [{"Background", "Text"}]
      230 GETTABLEKS                       R25 R2 K73 ["Titlebar"]
      232 SETTABLEKS                       R25 R24 K71 ["Background"]
      234 DUPTABLE                         R25 K84 [{["Font"], ["TextColor"], ["TextSize"] = 32}]
      235 GETIMPORT                        R26 K66 [Enum.Font.SourceSansBold]
      237 SETTABLEKS                       R26 R25 K61 ["Font"]
      239 GETTABLEKS                       R26 R2 K67 ["TitlebarText"]
      241 SETTABLEKS                       R26 R25 K62 ["TextColor"]
      243 SETTABLEKS                       R25 R24 K40 ["Text"]
      245 CALL                             R22 2 1
      246 SETTABLEKS                       R22 R21 K24 ["Header"]
      248 CALL                             R19 2 1
      249 SETTABLEKS                       R19 R18 K85 ["&Title"]
      251 CALL                             R16 2 -1
      252 RETURN                           R16 -1
