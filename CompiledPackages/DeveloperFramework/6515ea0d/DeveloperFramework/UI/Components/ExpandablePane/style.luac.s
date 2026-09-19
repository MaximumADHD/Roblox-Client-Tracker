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
       64 GETTABLEKS                       R11 R0 K4 ["Parent"]
       66 GETTABLEKS                       R11 R11 K20 ["Dash"]
       68 CALL                             R10 1 1
       69 GETTABLEKS                       R11 R10 K21 ["join"]
       71 MOVE                             R12 R6
       72 MOVE                             R13 R8
       73 CALL                             R12 1 1
       74 GETTABLEKS                       R13 R12 K22 ["&Box"]
       76 GETTABLEKS                       R14 R12 K23 ["&RoundBox"]
       78 GETTABLEKS                       R15 R12 K24 ["&BorderBox"]
       80 MOVE                             R17 R9
       81 CALL                             R17 0 1
       82 JUMPIFNOT                        R17 ; [+4]
       83 MOVE                             R16 R3
       84 LOADN                            R17 1
       85 CALL                             R16 1 1
       86 JUMP                             ; [+1]
       87 LOADNIL                          R16
       88 DUPTABLE                         R17 K27 [{"Content", "Header"}]
       89 DUPTABLE                         R18 K31 [{["Padding"], ["Spacing"] = 10}]
       90 DUPTABLE                         R19 K37 [{["Left"] = 18, ["Top"] = 10, ["Right"] = 18, ["Bottom"] = 10}]
       91 SETTABLEKS                       R19 R18 K28 ["Padding"]
       93 SETTABLEKS                       R18 R17 K25 ["Content"]
       95 DUPTABLE                         R18 K44 [{["Arrow"], ["HorizontalAlignment"], ["Padding"], ["Size"], ["Spacing"] = 6, ["Text"], ["VerticalAlignment"]}]
       96 NEWTABLE                         R19 8 0
       98 GETTABLEKS                       R20 R2 K45 ["MainText"]
      100 SETTABLEKS                       R20 R19 K46 ["Color"]
      102 LOADK                            R20 K47 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
      103 SETTABLEKS                       R20 R19 K48 ["Image"]
      105 GETIMPORT                        R20 K51 [Vector2.new]
      107 LOADN                            R21 12
      108 LOADN                            R22 0
      109 CALL                             R20 2 1
      110 SETTABLEKS                       R20 R19 K52 ["ImageRectOffset"]
      112 GETIMPORT                        R20 K51 [Vector2.new]
      114 LOADN                            R21 12
      115 LOADN                            R22 12
      116 CALL                             R20 2 1
      117 SETTABLEKS                       R20 R19 K53 ["ImageRectSize"]
      119 GETIMPORT                        R20 K56 [UDim2.fromOffset]
      121 LOADN                            R21 12
      122 LOADN                            R22 12
      123 CALL                             R20 2 1
      124 SETTABLEKS                       R20 R19 K40 ["Size"]
      126 GETTABLEKS                       R20 R5 K57 ["Selected"]
      128 DUPTABLE                         R21 K58 [{"ImageRectOffset"}]
      129 GETIMPORT                        R22 K51 [Vector2.new]
      131 LOADN                            R23 24
      132 LOADN                            R24 0
      133 CALL                             R22 2 1
      134 SETTABLEKS                       R22 R21 K52 ["ImageRectOffset"]
      136 SETTABLE                         R21 R19 R20
      137 SETTABLEKS                       R19 R18 K38 ["Arrow"]
      139 GETIMPORT                        R19 K60 [Enum.HorizontalAlignment.Left]
      141 SETTABLEKS                       R19 R18 K39 ["HorizontalAlignment"]
      143 DUPTABLE                         R19 K61 [{["Left"] = 10, ["Right"] = 10}]
      144 SETTABLEKS                       R19 R18 K28 ["Padding"]
      146 GETIMPORT                        R19 K62 [UDim2.new]
      148 LOADN                            R20 1
      149 LOADN                            R21 0
      150 LOADN                            R22 0
      151 LOADN                            R23 32
      152 CALL                             R19 4 1
      153 SETTABLEKS                       R19 R18 K40 ["Size"]
      155 DUPTABLE                         R19 K66 [{["Font"], ["TextColor"], ["TextSize"] = 18}]
      156 GETIMPORT                        R20 K68 [Enum.Font.SourceSansBold]
      158 SETTABLEKS                       R20 R19 K63 ["Font"]
      160 GETTABLEKS                       R20 R2 K69 ["TitlebarText"]
      162 SETTABLEKS                       R20 R19 K64 ["TextColor"]
      164 SETTABLEKS                       R19 R18 K42 ["Text"]
      166 GETIMPORT                        R19 K71 [Enum.VerticalAlignment.Center]
      168 SETTABLEKS                       R19 R18 K43 ["VerticalAlignment"]
      170 SETTABLEKS                       R18 R17 K26 ["Header"]
      172 MOVE                             R18 R11
      173 MOVE                             R19 R17
      174 NEWTABLE                         R20 8 0
      176 SETTABLEKS                       R13 R20 K22 ["&Box"]
      178 SETTABLEKS                       R15 R20 K24 ["&BorderBox"]
      180 SETTABLEKS                       R14 R20 K23 ["&RoundBox"]
      182 MOVE                             R21 R11
      183 MOVE                             R22 R13
      184 DUPTABLE                         R23 K72 [{"Header"}]
      185 MOVE                             R24 R11
      186 GETTABLEKS                       R25 R17 K26 ["Header"]
      188 DUPTABLE                         R26 K74 [{"Background"}]
      189 GETTABLEKS                       R27 R2 K75 ["Titlebar"]
      191 SETTABLEKS                       R27 R26 K73 ["Background"]
      193 CALL                             R24 2 1
      194 SETTABLEKS                       R24 R23 K26 ["Header"]
      196 CALL                             R21 2 1
      197 SETTABLEKS                       R21 R20 K76 ["&Section"]
      199 MOVE                             R22 R9
      200 CALL                             R22 0 1
      201 JUMPIFNOT                        R22 ; [+35]
      202 MOVE                             R21 R11
      203 MOVE                             R22 R13
      204 DUPTABLE                         R23 K72 [{"Header"}]
      205 MOVE                             R24 R11
      206 GETTABLEKS                       R25 R17 K26 ["Header"]
      208 DUPTABLE                         R26 K77 [{"Background", "Text"}]
      209 GETTABLEKS                       R27 R2 K75 ["Titlebar"]
      211 SETTABLEKS                       R27 R26 K73 ["Background"]
      213 DUPTABLE                         R27 K78 [{"Font", "TextColor", "TextSize"}]
      214 GETIMPORT                        R28 K80 [Enum.Font.BuilderSansBold]
      216 SETTABLEKS                       R28 R27 K63 ["Font"]
      218 GETTABLEKS                       R28 R2 K69 ["TitlebarText"]
      220 SETTABLEKS                       R28 R27 K64 ["TextColor"]
      222 GETTABLEKS                       R28 R16 K81 ["Typography"]
      224 GETTABLEKS                       R28 R28 K82 ["TitleSmall"]
      226 GETTABLEKS                       R28 R28 K83 ["FontSize"]
      228 SETTABLEKS                       R28 R27 K65 ["TextSize"]
      230 SETTABLEKS                       R27 R26 K42 ["Text"]
      232 CALL                             R24 2 1
      233 SETTABLEKS                       R24 R23 K26 ["Header"]
      235 CALL                             R21 2 1
      236 JUMP                             ; [+1]
      237 LOADNIL                          R21
      238 SETTABLEKS                       R21 R20 K84 ["&SectionTitleSmall"]
      240 MOVE                             R21 R11
      241 MOVE                             R22 R13
      242 DUPTABLE                         R23 K72 [{"Header"}]
      243 MOVE                             R24 R11
      244 GETTABLEKS                       R25 R17 K26 ["Header"]
      246 DUPTABLE                         R26 K77 [{"Background", "Text"}]
      247 GETTABLEKS                       R27 R2 K75 ["Titlebar"]
      249 SETTABLEKS                       R27 R26 K73 ["Background"]
      251 DUPTABLE                         R27 K86 [{["Font"], ["TextColor"], ["TextSize"] = 32}]
      252 GETIMPORT                        R28 K68 [Enum.Font.SourceSansBold]
      254 SETTABLEKS                       R28 R27 K63 ["Font"]
      256 GETTABLEKS                       R28 R2 K69 ["TitlebarText"]
      258 SETTABLEKS                       R28 R27 K64 ["TextColor"]
      260 SETTABLEKS                       R27 R26 K42 ["Text"]
      262 CALL                             R24 2 1
      263 SETTABLEKS                       R24 R23 K26 ["Header"]
      265 CALL                             R21 2 1
      266 SETTABLEKS                       R21 R20 K87 ["&Title"]
      268 CALL                             R18 2 -1
      269 RETURN                           R18 -1
