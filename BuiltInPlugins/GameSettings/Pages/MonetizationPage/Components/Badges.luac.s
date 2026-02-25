PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetBadgeUploadUrl"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+14]
        5 FASTCALL1                        STRING_LEN R0 ; [+3]
        6 MOVE                             R2 R0
        7 GETIMPORT                        R1 K3 [string.len]
        9 CALL                             R1 1 1
       10 LOADN                            R2 0
       11 JUMPIFNOTLT                      R2 R1 ; [+7]
       13 GETUPVAL                         R1 1
       14 MOVE                             R3 R0
       15 NAMECALL                         R1 R1 K4 ["OpenBrowserWindow"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0
       19 GETIMPORT                        R1 K6 [error]
       21 LOADK                            R2 K7 ["Failed to open Badge Creation page"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOTEQ                      R0 R2 ; [+7]
        4 GETUPVAL                         R2 1
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K0 ["CopyToClipboard"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 2
       11 CALL                             R2 0 1
       12 JUMPIFNOTEQ                      R0 R2 ; [+26]
       14 GETUPVAL                         R2 1
       15 MOVE                             R4 R1
       16 NAMECALL                         R2 R2 K1 ["GetBadgeConfigureUrl"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+14]
       20 FASTCALL1                        STRING_LEN R2 ; [+3]
       21 MOVE                             R4 R2
       22 GETIMPORT                        R3 K4 [string.len]
       24 CALL                             R3 1 1
       25 LOADN                            R4 0
       26 JUMPIFNOTLT                      R4 R3 ; [+7]
       28 GETUPVAL                         R3 3
       29 MOVE                             R5 R2
       30 NAMECALL                         R3 R3 K5 ["OpenBrowserWindow"]
       32 CALL                             R3 2 0
       33 RETURN                           R0 0
       34 GETIMPORT                        R3 K7 [error]
       36 LOADK                            R4 K8 ["Failed to open Badge Configuration page"]
       37 CALL                             R3 1 0
       38 RETURN                           R0 0
       39 LOADB                            R3 0
       40 FASTCALL1                        ASSERT R3 ; [+2]
       41 GETIMPORT                        R2 K10 [assert]
       43 CALL                             R2 1 0
       44 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        9 GETTABLEKS                       R3 R1 K2 ["Localization"]
       11 GETTABLEKS                       R4 R1 K3 ["BadgeList"]
       13 GETTABLEKS                       R5 R1 K4 ["OnLoadMoreBadges"]
       15 GETTABLEKS                       R6 R1 K5 ["RefreshBadges"]
       17 GETTABLEKS                       R7 R1 K6 ["LayoutOrder"]
       19 LOADK                            R10 K7 ["General"]
       20 LOADK                            R11 K8 ["ButtonCreate"]
       21 NAMECALL                         R8 R3 K9 ["getText"]
       23 CALL                             R8 3 1
       24 GETUPVAL                         R9 1
       25 MOVE                             R11 R8
       26 GETTABLEKS                       R14 R2 K10 ["fontStyle"]
       28 GETTABLEKS                       R13 R14 K11 ["Normal"]
       30 GETTABLEKS                       R12 R13 K12 ["TextSize"]
       32 GETTABLEKS                       R15 R2 K10 ["fontStyle"]
       34 GETTABLEKS                       R14 R15 K11 ["Normal"]
       36 GETTABLEKS                       R13 R14 K13 ["Font"]
       38 GETIMPORT                        R14 K16 [Vector2.new]
       40 LOADK                            R15 K17 [∞]
       41 LOADK                            R16 K17 [∞]
       42 CALL                             R14 2 -1
       43 NAMECALL                         R9 R9 K18 ["GetTextSize"]
       45 CALL                             R9 -1 1
       46 NEWTABLE                         R10 0 3
       48 LOADK                            R13 K19 ["Monetization"]
       49 LOADK                            R14 K20 ["BadgeImage"]
       50 NAMECALL                         R11 R3 K9 ["getText"]
       52 CALL                             R11 3 1
       53 LOADK                            R14 K19 ["Monetization"]
       54 LOADK                            R15 K21 ["BadgeName"]
       55 NAMECALL                         R12 R3 K9 ["getText"]
       57 CALL                             R12 3 1
       58 LOADK                            R15 K19 ["Monetization"]
       59 LOADK                            R16 K22 ["BadgeDescription"]
       60 NAMECALL                         R13 R3 K9 ["getText"]
       62 CALL                             R13 3 -1
       63 SETLIST                          R10 R11 -1 [1]
       65 LOADK                            R13 K19 ["Monetization"]
       66 LOADK                            R14 K23 ["NoBadges"]
       67 NAMECALL                         R11 R3 K9 ["getText"]
       69 CALL                             R11 3 1
       70 GETUPVAL                         R13 2
       71 GETTABLEKS                       R12 R13 K24 ["createElement"]
       73 GETUPVAL                         R13 3
       74 DUPTABLE                         R14 K29 [{"axis", "minimumSize", "contentPadding", "BackgroundTransparency", "LayoutOrder"}]
       75 GETUPVAL                         R17 3
       76 GETTABLEKS                       R16 R17 K30 ["Axis"]
       78 GETTABLEKS                       R15 R16 K31 ["Vertical"]
       80 SETTABLEKS                       R15 R14 K25 ["axis"]
       82 GETIMPORT                        R15 K33 [UDim2.new]
       84 LOADN                            R16 1
       85 LOADN                            R17 0
       86 LOADN                            R18 0
       87 LOADN                            R19 0
       88 CALL                             R15 4 1
       89 SETTABLEKS                       R15 R14 K26 ["minimumSize"]
       91 GETIMPORT                        R15 K35 [UDim.new]
       93 LOADN                            R16 0
       94 GETTABLEKS                       R18 R2 K36 ["badges"]
       96 GETTABLEKS                       R17 R18 K37 ["headerPadding"]
       98 CALL                             R15 2 1
       99 SETTABLEKS                       R15 R14 K27 ["contentPadding"]
      101 LOADN                            R15 1
      102 SETTABLEKS                       R15 R14 K28 ["BackgroundTransparency"]
      104 SETTABLEKS                       R7 R14 K6 ["LayoutOrder"]
      106 DUPTABLE                         R15 K40 [{"BadgesTitle", "BadgesTable"}]
      107 GETUPVAL                         R17 2
      108 GETTABLEKS                       R16 R17 K24 ["createElement"]
      110 GETUPVAL                         R17 4
      111 DUPTABLE                         R18 K42 [{"LayoutOrder", "Title"}]
      112 LOADN                            R19 1
      113 SETTABLEKS                       R19 R18 K6 ["LayoutOrder"]
      115 LOADK                            R21 K19 ["Monetization"]
      116 LOADK                            R22 K43 ["Badges"]
      117 NAMECALL                         R19 R3 K9 ["getText"]
      119 CALL                             R19 3 1
      120 SETTABLEKS                       R19 R18 K41 ["Title"]
      122 DUPTABLE                         R19 K47 [{"Padding", "Layout", "CreateButton"}]
      123 GETUPVAL                         R21 2
      124 GETTABLEKS                       R20 R21 K24 ["createElement"]
      126 LOADK                            R21 K48 ["UIPadding"]
      127 DUPTABLE                         R22 K50 [{"PaddingRight"}]
      128 GETIMPORT                        R23 K35 [UDim.new]
      130 LOADN                            R24 0
      131 GETTABLEKS                       R26 R2 K36 ["badges"]
      133 GETTABLEKS                       R25 R26 K51 ["titlePadding"]
      135 CALL                             R23 2 1
      136 SETTABLEKS                       R23 R22 K49 ["PaddingRight"]
      138 CALL                             R20 2 1
      139 SETTABLEKS                       R20 R19 K44 ["Padding"]
      141 GETUPVAL                         R21 2
      142 GETTABLEKS                       R20 R21 K24 ["createElement"]
      144 LOADK                            R21 K52 ["UIListLayout"]
      145 DUPTABLE                         R22 K55 [{"HorizontalAlignment", "VerticalAlignment"}]
      146 GETIMPORT                        R23 K58 [Enum.HorizontalAlignment.Right]
      148 SETTABLEKS                       R23 R22 K53 ["HorizontalAlignment"]
      150 GETIMPORT                        R23 K60 [Enum.VerticalAlignment.Center]
      152 SETTABLEKS                       R23 R22 K54 ["VerticalAlignment"]
      154 CALL                             R20 2 1
      155 SETTABLEKS                       R20 R19 K45 ["Layout"]
      157 GETUPVAL                         R21 2
      158 GETTABLEKS                       R20 R21 K24 ["createElement"]
      160 GETUPVAL                         R21 5
      161 DUPTABLE                         R22 K65 [{"Style", "Text", "Size", "OnClick"}]
      162 LOADK                            R23 K66 ["GameSettingsPrimaryButton"]
      163 SETTABLEKS                       R23 R22 K61 ["Style"]
      165 SETTABLEKS                       R8 R22 K62 ["Text"]
      167 GETIMPORT                        R23 K33 [UDim2.new]
      169 LOADN                            R24 0
      170 GETTABLEKS                       R26 R9 K67 ["X"]
      172 GETTABLEKS                       R28 R2 K68 ["createButton"]
      174 GETTABLEKS                       R27 R28 K69 ["PaddingX"]
      176 ADD                              R25 R26 R27
      177 LOADN                            R26 0
      178 GETTABLEKS                       R28 R9 K70 ["Y"]
      180 GETTABLEKS                       R30 R2 K68 ["createButton"]
      182 GETTABLEKS                       R29 R30 K71 ["PaddingY"]
      184 ADD                              R27 R28 R29
      185 CALL                             R23 4 1
      186 SETTABLEKS                       R23 R22 K63 ["Size"]
      188 DUPCLOSURE                       R23 K72 [PROTO_0]
      189 CAPTURE                          UPVAL U6
      190 CAPTURE                          UPVAL U7
      191 SETTABLEKS                       R23 R22 K64 ["OnClick"]
      193 NEWTABLE                         R23 0 1
      195 GETUPVAL                         R25 2
      196 GETTABLEKS                       R24 R25 K24 ["createElement"]
      198 GETUPVAL                         R25 8
      199 DUPTABLE                         R26 K74 [{"Cursor"}]
      200 LOADK                            R27 K75 ["PointingHand"]
      201 SETTABLEKS                       R27 R26 K73 ["Cursor"]
      203 CALL                             R24 2 -1
      204 SETLIST                          R23 R24 -1 [1]
      206 CALL                             R20 3 1
      207 SETTABLEKS                       R20 R19 K46 ["CreateButton"]
      209 CALL                             R16 3 1
      210 SETTABLEKS                       R16 R15 K38 ["BadgesTitle"]
      212 GETUPVAL                         R17 2
      213 GETTABLEKS                       R16 R17 K24 ["createElement"]
      215 GETUPVAL                         R17 9
      216 DUPTABLE                         R18 K86 [{"Headers", "Data", "TableHeight", "LayoutOrder", "NextPageFunc", "ScrollingFrameNextPageRequestDistance", "EmptyText", "ShowTableBackground", "MenuItems", "OnItemClicked", "HeaderButton"}]
      217 SETTABLEKS                       R10 R18 K76 ["Headers"]
      219 SETTABLEKS                       R4 R18 K77 ["Data"]
      221 GETTABLEKS                       R21 R2 K88 ["table"]
      223 GETTABLEKS                       R20 R21 K89 ["height"]
      225 DIVK                             R19 R20 K87 [2]
      226 SETTABLEKS                       R19 R18 K78 ["TableHeight"]
      228 LOADN                            R19 2
      229 SETTABLEKS                       R19 R18 K6 ["LayoutOrder"]
      231 SETTABLEKS                       R5 R18 K79 ["NextPageFunc"]
      233 LOADN                            R19 200
      234 SETTABLEKS                       R19 R18 K80 ["ScrollingFrameNextPageRequestDistance"]
      236 SETTABLEKS                       R11 R18 K81 ["EmptyText"]
      238 LOADB                            R19 1
      239 SETTABLEKS                       R19 R18 K82 ["ShowTableBackground"]
      241 NEWTABLE                         R19 0 2
      243 DUPTABLE                         R20 K91 [{"Key", "Text"}]
      244 GETUPVAL                         R21 10
      245 CALL                             R21 0 1
      246 SETTABLEKS                       R21 R20 K90 ["Key"]
      248 LOADK                            R23 K7 ["General"]
      249 GETUPVAL                         R24 10
      250 CALL                             R24 0 -1
      251 NAMECALL                         R21 R3 K9 ["getText"]
      253 CALL                             R21 -1 1
      254 SETTABLEKS                       R21 R20 K62 ["Text"]
      256 DUPTABLE                         R21 K91 [{"Key", "Text"}]
      257 GETUPVAL                         R22 11
      258 CALL                             R22 0 1
      259 SETTABLEKS                       R22 R21 K90 ["Key"]
      261 LOADK                            R24 K7 ["General"]
      262 GETUPVAL                         R25 11
      263 CALL                             R25 0 -1
      264 NAMECALL                         R22 R3 K9 ["getText"]
      266 CALL                             R22 -1 1
      267 SETTABLEKS                       R22 R21 K62 ["Text"]
      269 SETLIST                          R19 R20 2 [1]
      271 SETTABLEKS                       R19 R18 K83 ["MenuItems"]
      273 DUPCLOSURE                       R19 K92 [PROTO_1]
      274 CAPTURE                          UPVAL U10
      275 CAPTURE                          UPVAL U6
      276 CAPTURE                          UPVAL U11
      277 CAPTURE                          UPVAL U7
      278 SETTABLEKS                       R19 R18 K84 ["OnItemClicked"]
      280 GETUPVAL                         R20 2
      281 GETTABLEKS                       R19 R20 K24 ["createElement"]
      283 LOADK                            R20 K93 ["ImageButton"]
      284 NEWTABLE                         R21 8 0
      286 LOADN                            R22 1
      287 SETTABLEKS                       R22 R21 K28 ["BackgroundTransparency"]
      289 GETTABLEKS                       R24 R2 K36 ["badges"]
      291 GETTABLEKS                       R23 R24 K94 ["refreshButton"]
      293 GETTABLEKS                       R22 R23 K95 ["icon"]
      295 SETTABLEKS                       R22 R21 K96 ["Image"]
      297 GETIMPORT                        R22 K33 [UDim2.new]
      299 LOADN                            R23 0
      300 GETTABLEKS                       R26 R2 K36 ["badges"]
      302 GETTABLEKS                       R25 R26 K94 ["refreshButton"]
      304 GETTABLEKS                       R24 R25 K97 ["size"]
      306 LOADN                            R25 0
      307 GETTABLEKS                       R28 R2 K36 ["badges"]
      309 GETTABLEKS                       R27 R28 K94 ["refreshButton"]
      311 GETTABLEKS                       R26 R27 K97 ["size"]
      313 CALL                             R22 4 1
      314 SETTABLEKS                       R22 R21 K63 ["Size"]
      316 GETIMPORT                        R22 K33 [UDim2.new]
      318 LOADK                            R23 K98 [0.5]
      319 GETTABLEKS                       R27 R2 K36 ["badges"]
      321 GETTABLEKS                       R26 R27 K94 ["refreshButton"]
      323 GETTABLEKS                       R25 R26 K99 ["offset"]
      325 GETTABLEKS                       R24 R25 K100 ["x"]
      327 LOADK                            R25 K98 [0.5]
      328 LOADN                            R26 0
      329 CALL                             R22 4 1
      330 SETTABLEKS                       R22 R21 K101 ["Position"]
      332 GETIMPORT                        R22 K16 [Vector2.new]
      334 LOADK                            R23 K98 [0.5]
      335 LOADK                            R24 K98 [0.5]
      336 CALL                             R22 2 1
      337 SETTABLEKS                       R22 R21 K102 ["AnchorPoint"]
      339 GETUPVAL                         R24 2
      340 GETTABLEKS                       R23 R24 K103 ["Event"]
      342 GETTABLEKS                       R22 R23 K104 ["Activated"]
      344 SETTABLE                         R6 R21 R22
      345 NEWTABLE                         R22 0 1
      347 GETUPVAL                         R24 2
      348 GETTABLEKS                       R23 R24 K24 ["createElement"]
      350 GETUPVAL                         R24 8
      351 DUPTABLE                         R25 K74 [{"Cursor"}]
      352 LOADK                            R26 K75 ["PointingHand"]
      353 SETTABLEKS                       R26 R25 K73 ["Cursor"]
      355 CALL                             R23 2 -1
      356 SETLIST                          R22 R23 -1 [1]
      358 CALL                             R19 3 1
      359 SETTABLEKS                       R19 R18 K85 ["HeaderButton"]
      361 CALL                             R16 2 1
      362 SETTABLEKS                       R16 R15 K39 ["BadgesTable"]
      364 CALL                             R12 3 -1
      365 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["FitFrame"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["Roact"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["PureComponent"]
       27 GETIMPORT                        R6 K1 [script]
       29 GETTABLEKS                       R5 R6 K9 ["Name"]
       31 NAMECALL                         R3 R3 K10 ["extend"]
       33 CALL                             R3 2 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R6 R0 K5 ["Packages"]
       38 GETTABLEKS                       R5 R6 K11 ["Framework"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R4 K12 ["ContextServices"]
       43 GETTABLEKS                       R6 R5 K13 ["withContext"]
       45 GETTABLEKS                       R7 R4 K14 ["UI"]
       47 GETTABLEKS                       R8 R7 K15 ["Button"]
       49 GETTABLEKS                       R9 R7 K16 ["HoverArea"]
       51 GETTABLEKS                       R10 R7 K17 ["TitledFrame"]
       53 GETIMPORT                        R11 K19 [game]
       55 LOADK                            R13 K20 ["TextService"]
       56 NAMECALL                         R11 R11 K21 ["GetService"]
       58 CALL                             R11 2 1
       59 GETIMPORT                        R12 K19 [game]
       61 LOADK                            R14 K22 ["StudioService"]
       62 NAMECALL                         R12 R12 K21 ["GetService"]
       64 CALL                             R12 2 1
       65 GETIMPORT                        R13 K19 [game]
       67 LOADK                            R15 K23 ["GuiService"]
       68 NAMECALL                         R13 R13 K21 ["GetService"]
       70 CALL                             R13 2 1
       71 GETIMPORT                        R14 K4 [require]
       73 GETTABLEKS                       R17 R0 K24 ["Src"]
       75 GETTABLEKS                       R16 R17 K25 ["Components"]
       77 GETTABLEKS                       R15 R16 K26 ["TableWithMenu"]
       79 CALL                             R14 1 1
       80 GETTABLEKS                       R15 R1 K27 ["FitFrameOnAxis"]
       82 GETIMPORT                        R16 K4 [require]
       84 GETTABLEKS                       R19 R0 K24 ["Src"]
       86 GETTABLEKS                       R18 R19 K28 ["Util"]
       88 GETTABLEKS                       R17 R18 K29 ["KeyProvider"]
       90 CALL                             R16 1 1
       91 GETTABLEKS                       R17 R16 K30 ["getCopyIdKeyName"]
       93 GETTABLEKS                       R18 R16 K31 ["getConfigureKeyName"]
       95 GETIMPORT                        R20 K4 [require]
       97 GETTABLEKS                       R23 R0 K24 ["Src"]
       99 GETTABLEKS                       R22 R23 K28 ["Util"]
      101 GETTABLEKS                       R21 R22 K32 ["GameSettingsUtilities"]
      103 CALL                             R20 1 1
      104 GETTABLEKS                       R19 R20 K33 ["shouldAllowBadges"]
      106 DUPCLOSURE                       R20 K34 [PROTO_2]
      107 CAPTURE                          VAL R19
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R17
      118 CAPTURE                          VAL R18
      119 SETTABLEKS                       R20 R3 K35 ["render"]
      121 MOVE                             R20 R6
      122 DUPTABLE                         R21 K38 [{"Localization", "Stylizer"}]
      123 GETTABLEKS                       R22 R5 K36 ["Localization"]
      125 SETTABLEKS                       R22 R21 K36 ["Localization"]
      127 GETTABLEKS                       R22 R5 K37 ["Stylizer"]
      129 SETTABLEKS                       R22 R21 K37 ["Stylizer"]
      131 CALL                             R20 1 1
      132 MOVE                             R21 R3
      133 CALL                             R20 1 1
      134 MOVE                             R3 R20
      135 RETURN                           R3 1
