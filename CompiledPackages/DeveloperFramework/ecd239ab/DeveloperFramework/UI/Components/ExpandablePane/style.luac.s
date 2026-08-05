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
       57 GETTABLEKS                       R10 R0 K18 ["SharedFlags"]
       59 GETTABLEKS                       R10 R10 K19 ["getFFlagDevFrameworkAdjustTextFontSize"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K7 [require]
       64 GETTABLEKS                       R11 R0 K18 ["SharedFlags"]
       66 GETTABLEKS                       R11 R11 K20 ["getFFlagDevFrameworkExpandablePaneAddTitle"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K7 [require]
       71 GETTABLEKS                       R12 R0 K4 ["Parent"]
       73 GETTABLEKS                       R12 R12 K21 ["Dash"]
       75 CALL                             R11 1 1
       76 GETTABLEKS                       R12 R11 K22 ["join"]
       78 MOVE                             R13 R6
       79 MOVE                             R14 R8
       80 CALL                             R13 1 1
       81 GETTABLEKS                       R14 R13 K23 ["&Box"]
       83 GETTABLEKS                       R15 R13 K24 ["&RoundBox"]
       85 GETTABLEKS                       R16 R13 K25 ["&BorderBox"]
       87 MOVE                             R18 R9
       88 CALL                             R18 0 1
       89 JUMPIFNOT                        R18 ; [+4]
       90 MOVE                             R17 R3
       91 LOADN                            R18 1
       92 CALL                             R17 1 1
       93 JUMP                             ; [+1]
       94 LOADNIL                          R17
       95 DUPTABLE                         R18 K28 [{"Content", "Header"}]
       96 DUPTABLE                         R19 K32 [{["Padding"], ["Spacing"] = 10}]
       97 DUPTABLE                         R20 K38 [{["Left"] = 18, ["Top"] = 10, ["Right"] = 18, ["Bottom"] = 10}]
       98 SETTABLEKS                       R20 R19 K29 ["Padding"]
      100 SETTABLEKS                       R19 R18 K26 ["Content"]
      102 DUPTABLE                         R19 K45 [{["Arrow"], ["HorizontalAlignment"], ["Padding"], ["Size"], ["Spacing"] = 6, ["Text"], ["VerticalAlignment"]}]
      103 NEWTABLE                         R20 8 0
      105 GETTABLEKS                       R21 R2 K46 ["MainText"]
      107 SETTABLEKS                       R21 R20 K47 ["Color"]
      109 LOADK                            R21 K48 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
      110 SETTABLEKS                       R21 R20 K49 ["Image"]
      112 GETIMPORT                        R21 K52 [Vector2.new]
      114 LOADN                            R22 12
      115 LOADN                            R23 0
      116 CALL                             R21 2 1
      117 SETTABLEKS                       R21 R20 K53 ["ImageRectOffset"]
      119 GETIMPORT                        R21 K52 [Vector2.new]
      121 LOADN                            R22 12
      122 LOADN                            R23 12
      123 CALL                             R21 2 1
      124 SETTABLEKS                       R21 R20 K54 ["ImageRectSize"]
      126 GETIMPORT                        R21 K57 [UDim2.fromOffset]
      128 LOADN                            R22 12
      129 LOADN                            R23 12
      130 CALL                             R21 2 1
      131 SETTABLEKS                       R21 R20 K41 ["Size"]
      133 GETTABLEKS                       R21 R5 K58 ["Selected"]
      135 DUPTABLE                         R22 K59 [{"ImageRectOffset"}]
      136 GETIMPORT                        R23 K52 [Vector2.new]
      138 LOADN                            R24 24
      139 LOADN                            R25 0
      140 CALL                             R23 2 1
      141 SETTABLEKS                       R23 R22 K53 ["ImageRectOffset"]
      143 SETTABLE                         R22 R20 R21
      144 SETTABLEKS                       R20 R19 K39 ["Arrow"]
      146 GETIMPORT                        R20 K61 [Enum.HorizontalAlignment.Left]
      148 SETTABLEKS                       R20 R19 K40 ["HorizontalAlignment"]
      150 DUPTABLE                         R20 K62 [{["Left"] = 10, ["Right"] = 10}]
      151 SETTABLEKS                       R20 R19 K29 ["Padding"]
      153 GETIMPORT                        R20 K63 [UDim2.new]
      155 LOADN                            R21 1
      156 LOADN                            R22 0
      157 LOADN                            R23 0
      158 LOADN                            R24 32
      159 CALL                             R20 4 1
      160 SETTABLEKS                       R20 R19 K41 ["Size"]
      162 DUPTABLE                         R20 K67 [{["Font"], ["TextColor"], ["TextSize"] = 18}]
      163 GETIMPORT                        R21 K69 [Enum.Font.SourceSansBold]
      165 SETTABLEKS                       R21 R20 K64 ["Font"]
      167 GETTABLEKS                       R21 R2 K70 ["TitlebarText"]
      169 SETTABLEKS                       R21 R20 K65 ["TextColor"]
      171 SETTABLEKS                       R20 R19 K43 ["Text"]
      173 GETIMPORT                        R20 K72 [Enum.VerticalAlignment.Center]
      175 SETTABLEKS                       R20 R19 K44 ["VerticalAlignment"]
      177 SETTABLEKS                       R19 R18 K27 ["Header"]
      179 MOVE                             R19 R12
      180 MOVE                             R20 R18
      181 NEWTABLE                         R21 8 0
      183 SETTABLEKS                       R14 R21 K23 ["&Box"]
      185 SETTABLEKS                       R16 R21 K25 ["&BorderBox"]
      187 SETTABLEKS                       R15 R21 K24 ["&RoundBox"]
      189 MOVE                             R22 R12
      190 MOVE                             R23 R14
      191 DUPTABLE                         R24 K73 [{"Header"}]
      192 MOVE                             R25 R12
      193 GETTABLEKS                       R26 R18 K27 ["Header"]
      195 DUPTABLE                         R27 K75 [{"Background"}]
      196 GETTABLEKS                       R28 R2 K76 ["Titlebar"]
      198 SETTABLEKS                       R28 R27 K74 ["Background"]
      200 CALL                             R25 2 1
      201 SETTABLEKS                       R25 R24 K27 ["Header"]
      203 CALL                             R22 2 1
      204 SETTABLEKS                       R22 R21 K77 ["&Section"]
      206 MOVE                             R23 R9
      207 CALL                             R23 0 1
      208 JUMPIFNOT                        R23 ; [+35]
      209 MOVE                             R22 R12
      210 MOVE                             R23 R14
      211 DUPTABLE                         R24 K73 [{"Header"}]
      212 MOVE                             R25 R12
      213 GETTABLEKS                       R26 R18 K27 ["Header"]
      215 DUPTABLE                         R27 K78 [{"Background", "Text"}]
      216 GETTABLEKS                       R28 R2 K76 ["Titlebar"]
      218 SETTABLEKS                       R28 R27 K74 ["Background"]
      220 DUPTABLE                         R28 K79 [{"Font", "TextColor", "TextSize"}]
      221 GETIMPORT                        R29 K81 [Enum.Font.BuilderSansBold]
      223 SETTABLEKS                       R29 R28 K64 ["Font"]
      225 GETTABLEKS                       R29 R2 K70 ["TitlebarText"]
      227 SETTABLEKS                       R29 R28 K65 ["TextColor"]
      229 GETTABLEKS                       R29 R17 K82 ["Typography"]
      231 GETTABLEKS                       R29 R29 K83 ["TitleSmall"]
      233 GETTABLEKS                       R29 R29 K84 ["FontSize"]
      235 SETTABLEKS                       R29 R28 K66 ["TextSize"]
      237 SETTABLEKS                       R28 R27 K43 ["Text"]
      239 CALL                             R25 2 1
      240 SETTABLEKS                       R25 R24 K27 ["Header"]
      242 CALL                             R22 2 1
      243 JUMP                             ; [+1]
      244 LOADNIL                          R22
      245 SETTABLEKS                       R22 R21 K85 ["&SectionTitleSmall"]
      247 MOVE                             R23 R10
      248 CALL                             R23 0 1
      249 JUMPIFNOT                        R23 ; [+27]
      250 MOVE                             R22 R12
      251 MOVE                             R23 R14
      252 DUPTABLE                         R24 K73 [{"Header"}]
      253 MOVE                             R25 R12
      254 GETTABLEKS                       R26 R18 K27 ["Header"]
      256 DUPTABLE                         R27 K78 [{"Background", "Text"}]
      257 GETTABLEKS                       R28 R2 K76 ["Titlebar"]
      259 SETTABLEKS                       R28 R27 K74 ["Background"]
      261 DUPTABLE                         R28 K87 [{["Font"], ["TextColor"], ["TextSize"] = 32}]
      262 GETIMPORT                        R29 K69 [Enum.Font.SourceSansBold]
      264 SETTABLEKS                       R29 R28 K64 ["Font"]
      266 GETTABLEKS                       R29 R2 K70 ["TitlebarText"]
      268 SETTABLEKS                       R29 R28 K65 ["TextColor"]
      270 SETTABLEKS                       R28 R27 K43 ["Text"]
      272 CALL                             R25 2 1
      273 SETTABLEKS                       R25 R24 K27 ["Header"]
      275 CALL                             R22 2 1
      276 JUMP                             ; [+1]
      277 LOADNIL                          R22
      278 SETTABLEKS                       R22 R21 K88 ["&Title"]
      280 CALL                             R19 2 -1
      281 RETURN                           R19 -1
