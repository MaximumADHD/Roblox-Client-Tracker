MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R0 K5 ["Style"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["StyleKey"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R6 R0 K5 ["Style"]
       20 GETTABLEKS                       R5 R6 K9 ["Themes"]
       22 GETTABLEKS                       R4 R5 K10 ["FoundationDark"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K7 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Util"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K7 [require]
       32 GETTABLEKS                       R7 R0 K11 ["Util"]
       34 GETTABLEKS                       R6 R7 K12 ["StyleModifier"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R4 K13 ["deepCopy"]
       39 GETIMPORT                        R7 K7 [require]
       41 GETTABLEKS                       R10 R0 K2 ["UI"]
       43 GETTABLEKS                       R9 R10 K14 ["Components"]
       45 GETTABLEKS                       R8 R9 K15 ["UIFolderData"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K7 [require]
       50 GETTABLEKS                       R10 R7 K16 ["Pane"]
       52 GETTABLEKS                       R9 R10 K17 ["style"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K7 [require]
       57 GETTABLEKS                       R11 R0 K18 ["SharedFlags"]
       59 GETTABLEKS                       R10 R11 K19 ["getFFlagDevFrameworkAdjustTextFontSize"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K7 [require]
       64 GETTABLEKS                       R12 R0 K18 ["SharedFlags"]
       66 GETTABLEKS                       R11 R12 K20 ["getFFlagDevFrameworkExpandablePaneAddTitle"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K7 [require]
       71 GETTABLEKS                       R13 R0 K4 ["Parent"]
       73 GETTABLEKS                       R12 R13 K21 ["Dash"]
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
       96 DUPTABLE                         R19 K31 [{"Padding", "Spacing"}]
       97 DUPTABLE                         R20 K36 [{"Left", "Top", "Right", "Bottom"}]
       98 LOADN                            R21 18
       99 SETTABLEKS                       R21 R20 K32 ["Left"]
      101 LOADN                            R21 10
      102 SETTABLEKS                       R21 R20 K33 ["Top"]
      104 LOADN                            R21 18
      105 SETTABLEKS                       R21 R20 K34 ["Right"]
      107 LOADN                            R21 10
      108 SETTABLEKS                       R21 R20 K35 ["Bottom"]
      110 SETTABLEKS                       R20 R19 K29 ["Padding"]
      112 LOADN                            R20 10
      113 SETTABLEKS                       R20 R19 K30 ["Spacing"]
      115 SETTABLEKS                       R19 R18 K26 ["Content"]
      117 DUPTABLE                         R19 K42 [{"Arrow", "HorizontalAlignment", "Padding", "Size", "Spacing", "Text", "VerticalAlignment"}]
      118 NEWTABLE                         R20 8 0
      120 GETTABLEKS                       R21 R2 K43 ["MainText"]
      122 SETTABLEKS                       R21 R20 K44 ["Color"]
      124 LOADK                            R21 K45 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
      125 SETTABLEKS                       R21 R20 K46 ["Image"]
      127 GETIMPORT                        R21 K49 [Vector2.new]
      129 LOADN                            R22 12
      130 LOADN                            R23 0
      131 CALL                             R21 2 1
      132 SETTABLEKS                       R21 R20 K50 ["ImageRectOffset"]
      134 GETIMPORT                        R21 K49 [Vector2.new]
      136 LOADN                            R22 12
      137 LOADN                            R23 12
      138 CALL                             R21 2 1
      139 SETTABLEKS                       R21 R20 K51 ["ImageRectSize"]
      141 GETIMPORT                        R21 K54 [UDim2.fromOffset]
      143 LOADN                            R22 12
      144 LOADN                            R23 12
      145 CALL                             R21 2 1
      146 SETTABLEKS                       R21 R20 K39 ["Size"]
      148 GETTABLEKS                       R21 R5 K55 ["Selected"]
      150 DUPTABLE                         R22 K56 [{"ImageRectOffset"}]
      151 GETIMPORT                        R23 K49 [Vector2.new]
      153 LOADN                            R24 24
      154 LOADN                            R25 0
      155 CALL                             R23 2 1
      156 SETTABLEKS                       R23 R22 K50 ["ImageRectOffset"]
      158 SETTABLE                         R22 R20 R21
      159 SETTABLEKS                       R20 R19 K37 ["Arrow"]
      161 GETIMPORT                        R20 K58 [Enum.HorizontalAlignment.Left]
      163 SETTABLEKS                       R20 R19 K38 ["HorizontalAlignment"]
      165 DUPTABLE                         R20 K59 [{"Left", "Right"}]
      166 LOADN                            R21 10
      167 SETTABLEKS                       R21 R20 K32 ["Left"]
      169 LOADN                            R21 10
      170 SETTABLEKS                       R21 R20 K34 ["Right"]
      172 SETTABLEKS                       R20 R19 K29 ["Padding"]
      174 GETIMPORT                        R20 K60 [UDim2.new]
      176 LOADN                            R21 1
      177 LOADN                            R22 0
      178 LOADN                            R23 0
      179 LOADN                            R24 32
      180 CALL                             R20 4 1
      181 SETTABLEKS                       R20 R19 K39 ["Size"]
      183 LOADN                            R20 6
      184 SETTABLEKS                       R20 R19 K30 ["Spacing"]
      186 DUPTABLE                         R20 K64 [{"Font", "TextColor", "TextSize"}]
      187 GETIMPORT                        R21 K66 [Enum.Font.SourceSansBold]
      189 SETTABLEKS                       R21 R20 K61 ["Font"]
      191 GETTABLEKS                       R21 R2 K67 ["TitlebarText"]
      193 SETTABLEKS                       R21 R20 K62 ["TextColor"]
      195 LOADN                            R21 18
      196 SETTABLEKS                       R21 R20 K63 ["TextSize"]
      198 SETTABLEKS                       R20 R19 K40 ["Text"]
      200 GETIMPORT                        R20 K69 [Enum.VerticalAlignment.Center]
      202 SETTABLEKS                       R20 R19 K41 ["VerticalAlignment"]
      204 SETTABLEKS                       R19 R18 K27 ["Header"]
      206 MOVE                             R19 R12
      207 MOVE                             R20 R18
      208 NEWTABLE                         R21 8 0
      210 SETTABLEKS                       R14 R21 K23 ["&Box"]
      212 SETTABLEKS                       R16 R21 K25 ["&BorderBox"]
      214 SETTABLEKS                       R15 R21 K24 ["&RoundBox"]
      216 MOVE                             R22 R12
      217 MOVE                             R23 R14
      218 DUPTABLE                         R24 K70 [{"Header"}]
      219 MOVE                             R25 R12
      220 GETTABLEKS                       R26 R18 K27 ["Header"]
      222 DUPTABLE                         R27 K72 [{"Background"}]
      223 GETTABLEKS                       R28 R2 K73 ["Titlebar"]
      225 SETTABLEKS                       R28 R27 K71 ["Background"]
      227 CALL                             R25 2 1
      228 SETTABLEKS                       R25 R24 K27 ["Header"]
      230 CALL                             R22 2 1
      231 SETTABLEKS                       R22 R21 K74 ["&Section"]
      233 MOVE                             R23 R9
      234 CALL                             R23 0 1
      235 JUMPIFNOT                        R23 ; [+35]
      236 MOVE                             R22 R12
      237 MOVE                             R23 R14
      238 DUPTABLE                         R24 K70 [{"Header"}]
      239 MOVE                             R25 R12
      240 GETTABLEKS                       R26 R18 K27 ["Header"]
      242 DUPTABLE                         R27 K75 [{"Background", "Text"}]
      243 GETTABLEKS                       R28 R2 K73 ["Titlebar"]
      245 SETTABLEKS                       R28 R27 K71 ["Background"]
      247 DUPTABLE                         R28 K64 [{"Font", "TextColor", "TextSize"}]
      248 GETIMPORT                        R29 K77 [Enum.Font.BuilderSansBold]
      250 SETTABLEKS                       R29 R28 K61 ["Font"]
      252 GETTABLEKS                       R29 R2 K67 ["TitlebarText"]
      254 SETTABLEKS                       R29 R28 K62 ["TextColor"]
      256 GETTABLEKS                       R31 R17 K78 ["Typography"]
      258 GETTABLEKS                       R30 R31 K79 ["TitleSmall"]
      260 GETTABLEKS                       R29 R30 K80 ["FontSize"]
      262 SETTABLEKS                       R29 R28 K63 ["TextSize"]
      264 SETTABLEKS                       R28 R27 K40 ["Text"]
      266 CALL                             R25 2 1
      267 SETTABLEKS                       R25 R24 K27 ["Header"]
      269 CALL                             R22 2 1
      270 JUMP                             ; [+1]
      271 LOADNIL                          R22
      272 SETTABLEKS                       R22 R21 K81 ["&SectionTitleSmall"]
      274 MOVE                             R23 R10
      275 CALL                             R23 0 1
      276 JUMPIFNOT                        R23 ; [+30]
      277 MOVE                             R22 R12
      278 MOVE                             R23 R14
      279 DUPTABLE                         R24 K70 [{"Header"}]
      280 MOVE                             R25 R12
      281 GETTABLEKS                       R26 R18 K27 ["Header"]
      283 DUPTABLE                         R27 K75 [{"Background", "Text"}]
      284 GETTABLEKS                       R28 R2 K73 ["Titlebar"]
      286 SETTABLEKS                       R28 R27 K71 ["Background"]
      288 DUPTABLE                         R28 K64 [{"Font", "TextColor", "TextSize"}]
      289 GETIMPORT                        R29 K66 [Enum.Font.SourceSansBold]
      291 SETTABLEKS                       R29 R28 K61 ["Font"]
      293 GETTABLEKS                       R29 R2 K67 ["TitlebarText"]
      295 SETTABLEKS                       R29 R28 K62 ["TextColor"]
      297 LOADN                            R29 32
      298 SETTABLEKS                       R29 R28 K63 ["TextSize"]
      300 SETTABLEKS                       R28 R27 K40 ["Text"]
      302 CALL                             R25 2 1
      303 SETTABLEKS                       R25 R24 K27 ["Header"]
      305 CALL                             R22 2 1
      306 JUMP                             ; [+1]
      307 LOADNIL                          R22
      308 SETTABLEKS                       R22 R21 K82 ["&Title"]
      310 CALL                             R19 2 -1
      311 RETURN                           R19 -1
