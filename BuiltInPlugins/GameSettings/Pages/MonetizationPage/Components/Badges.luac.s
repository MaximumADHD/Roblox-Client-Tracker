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
       26 GETTABLEKS                       R12 R2 K10 ["fontStyle"]
       28 GETTABLEKS                       R12 R12 K11 ["Normal"]
       30 GETTABLEKS                       R12 R12 K12 ["TextSize"]
       32 GETTABLEKS                       R13 R2 K10 ["fontStyle"]
       34 GETTABLEKS                       R13 R13 K11 ["Normal"]
       36 GETTABLEKS                       R13 R13 K13 ["Font"]
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
       70 GETUPVAL                         R12 2
       71 GETTABLEKS                       R12 R12 K24 ["createElement"]
       73 GETUPVAL                         R13 3
       74 DUPTABLE                         R14 K30 [{["axis"], ["minimumSize"], ["contentPadding"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
       75 GETUPVAL                         R15 3
       76 GETTABLEKS                       R15 R15 K31 ["Axis"]
       78 GETTABLEKS                       R15 R15 K32 ["Vertical"]
       80 SETTABLEKS                       R15 R14 K25 ["axis"]
       82 GETIMPORT                        R15 K34 [UDim2.new]
       84 LOADN                            R16 1
       85 LOADN                            R17 0
       86 LOADN                            R18 0
       87 LOADN                            R19 0
       88 CALL                             R15 4 1
       89 SETTABLEKS                       R15 R14 K26 ["minimumSize"]
       91 GETIMPORT                        R15 K36 [UDim.new]
       93 LOADN                            R16 0
       94 GETTABLEKS                       R17 R2 K37 ["badges"]
       96 GETTABLEKS                       R17 R17 K38 ["headerPadding"]
       98 CALL                             R15 2 1
       99 SETTABLEKS                       R15 R14 K27 ["contentPadding"]
      101 SETTABLEKS                       R7 R14 K6 ["LayoutOrder"]
      103 DUPTABLE                         R15 K41 [{"BadgesTitle", "BadgesTable"}]
      104 GETUPVAL                         R16 2
      105 GETTABLEKS                       R16 R16 K24 ["createElement"]
      107 GETUPVAL                         R17 4
      108 DUPTABLE                         R18 K43 [{["LayoutOrder"] = 1, ["Title"]}]
      109 LOADK                            R21 K19 ["Monetization"]
      110 LOADK                            R22 K44 ["Badges"]
      111 NAMECALL                         R19 R3 K9 ["getText"]
      113 CALL                             R19 3 1
      114 SETTABLEKS                       R19 R18 K42 ["Title"]
      116 DUPTABLE                         R19 K48 [{"Padding", "Layout", "CreateButton"}]
      117 GETUPVAL                         R20 2
      118 GETTABLEKS                       R20 R20 K24 ["createElement"]
      120 LOADK                            R21 K49 ["UIPadding"]
      121 DUPTABLE                         R22 K51 [{"PaddingRight"}]
      122 GETIMPORT                        R23 K36 [UDim.new]
      124 LOADN                            R24 0
      125 GETTABLEKS                       R25 R2 K37 ["badges"]
      127 GETTABLEKS                       R25 R25 K52 ["titlePadding"]
      129 CALL                             R23 2 1
      130 SETTABLEKS                       R23 R22 K50 ["PaddingRight"]
      132 CALL                             R20 2 1
      133 SETTABLEKS                       R20 R19 K45 ["Padding"]
      135 GETUPVAL                         R20 2
      136 GETTABLEKS                       R20 R20 K24 ["createElement"]
      138 LOADK                            R21 K53 ["UIListLayout"]
      139 DUPTABLE                         R22 K56 [{"HorizontalAlignment", "VerticalAlignment"}]
      140 GETIMPORT                        R23 K59 [Enum.HorizontalAlignment.Right]
      142 SETTABLEKS                       R23 R22 K54 ["HorizontalAlignment"]
      144 GETIMPORT                        R23 K61 [Enum.VerticalAlignment.Center]
      146 SETTABLEKS                       R23 R22 K55 ["VerticalAlignment"]
      148 CALL                             R20 2 1
      149 SETTABLEKS                       R20 R19 K46 ["Layout"]
      151 GETUPVAL                         R20 2
      152 GETTABLEKS                       R20 R20 K24 ["createElement"]
      154 GETUPVAL                         R21 5
      155 DUPTABLE                         R22 K67 [{["Style"] = "GameSettingsPrimaryButton", ["Text"], ["Size"], ["OnClick"]}]
      156 SETTABLEKS                       R8 R22 K64 ["Text"]
      158 GETIMPORT                        R23 K34 [UDim2.new]
      160 LOADN                            R24 0
      161 GETTABLEKS                       R26 R9 K68 ["X"]
      163 GETTABLEKS                       R27 R2 K69 ["createButton"]
      165 GETTABLEKS                       R27 R27 K70 ["PaddingX"]
      167 ADD                              R25 R26 R27
      168 LOADN                            R26 0
      169 GETTABLEKS                       R28 R9 K71 ["Y"]
      171 GETTABLEKS                       R29 R2 K69 ["createButton"]
      173 GETTABLEKS                       R29 R29 K72 ["PaddingY"]
      175 ADD                              R27 R28 R29
      176 CALL                             R23 4 1
      177 SETTABLEKS                       R23 R22 K65 ["Size"]
      179 DUPCLOSURE                       R23 K73 [PROTO_0]
      180 CAPTURE                          UPVAL U6
      181 CAPTURE                          UPVAL U7
      182 SETTABLEKS                       R23 R22 K66 ["OnClick"]
      184 NEWTABLE                         R23 0 1
      186 GETUPVAL                         R24 2
      187 GETTABLEKS                       R24 R24 K24 ["createElement"]
      189 GETUPVAL                         R25 8
      190 DUPTABLE                         R26 K76 [{["Cursor"] = "PointingHand"}]
      191 CALL                             R24 2 -1
      192 SETLIST                          R23 R24 -1 [1]
      194 CALL                             R20 3 1
      195 SETTABLEKS                       R20 R19 K47 ["CreateButton"]
      197 CALL                             R16 3 1
      198 SETTABLEKS                       R16 R15 K39 ["BadgesTitle"]
      200 GETUPVAL                         R16 2
      201 GETTABLEKS                       R16 R16 K24 ["createElement"]
      203 GETUPVAL                         R17 9
      204 DUPTABLE                         R18 K90 [{["Headers"], ["Data"], ["TableHeight"], ["LayoutOrder"] = 2, ["NextPageFunc"], ["ScrollingFrameNextPageRequestDistance"] = 200, ["EmptyText"], ["ShowTableBackground"] = True, ["MenuItems"], ["OnItemClicked"], ["HeaderButton"]}]
      205 SETTABLEKS                       R10 R18 K77 ["Headers"]
      207 SETTABLEKS                       R4 R18 K78 ["Data"]
      209 GETTABLEKS                       R20 R2 K91 ["table"]
      211 GETTABLEKS                       R20 R20 K92 ["height"]
      213 DIVK                             R19 R20 K80 [2]
      214 SETTABLEKS                       R19 R18 K79 ["TableHeight"]
      216 SETTABLEKS                       R5 R18 K81 ["NextPageFunc"]
      218 SETTABLEKS                       R11 R18 K84 ["EmptyText"]
      220 NEWTABLE                         R19 0 2
      222 DUPTABLE                         R20 K94 [{"Key", "Text"}]
      223 GETUPVAL                         R21 10
      224 CALL                             R21 0 1
      225 SETTABLEKS                       R21 R20 K93 ["Key"]
      227 LOADK                            R23 K7 ["General"]
      228 GETUPVAL                         R24 10
      229 CALL                             R24 0 -1
      230 NAMECALL                         R21 R3 K9 ["getText"]
      232 CALL                             R21 -1 1
      233 SETTABLEKS                       R21 R20 K64 ["Text"]
      235 DUPTABLE                         R21 K94 [{"Key", "Text"}]
      236 GETUPVAL                         R22 11
      237 CALL                             R22 0 1
      238 SETTABLEKS                       R22 R21 K93 ["Key"]
      240 LOADK                            R24 K7 ["General"]
      241 GETUPVAL                         R25 11
      242 CALL                             R25 0 -1
      243 NAMECALL                         R22 R3 K9 ["getText"]
      245 CALL                             R22 -1 1
      246 SETTABLEKS                       R22 R21 K64 ["Text"]
      248 SETLIST                          R19 R20 2 [1]
      250 SETTABLEKS                       R19 R18 K87 ["MenuItems"]
      252 DUPCLOSURE                       R19 K95 [PROTO_1]
      253 CAPTURE                          UPVAL U10
      254 CAPTURE                          UPVAL U6
      255 CAPTURE                          UPVAL U11
      256 CAPTURE                          UPVAL U7
      257 SETTABLEKS                       R19 R18 K88 ["OnItemClicked"]
      259 GETUPVAL                         R19 2
      260 GETTABLEKS                       R19 R19 K24 ["createElement"]
      262 LOADK                            R20 K96 ["ImageButton"]
      263 NEWTABLE                         R21 8 0
      265 LOADN                            R22 1
      266 SETTABLEKS                       R22 R21 K28 ["BackgroundTransparency"]
      268 GETTABLEKS                       R22 R2 K37 ["badges"]
      270 GETTABLEKS                       R22 R22 K97 ["refreshButton"]
      272 GETTABLEKS                       R22 R22 K98 ["icon"]
      274 SETTABLEKS                       R22 R21 K99 ["Image"]
      276 GETIMPORT                        R22 K34 [UDim2.new]
      278 LOADN                            R23 0
      279 GETTABLEKS                       R24 R2 K37 ["badges"]
      281 GETTABLEKS                       R24 R24 K97 ["refreshButton"]
      283 GETTABLEKS                       R24 R24 K100 ["size"]
      285 LOADN                            R25 0
      286 GETTABLEKS                       R26 R2 K37 ["badges"]
      288 GETTABLEKS                       R26 R26 K97 ["refreshButton"]
      290 GETTABLEKS                       R26 R26 K100 ["size"]
      292 CALL                             R22 4 1
      293 SETTABLEKS                       R22 R21 K65 ["Size"]
      295 GETIMPORT                        R22 K34 [UDim2.new]
      297 LOADK                            R23 K101 [0.5]
      298 GETTABLEKS                       R24 R2 K37 ["badges"]
      300 GETTABLEKS                       R24 R24 K97 ["refreshButton"]
      302 GETTABLEKS                       R24 R24 K102 ["offset"]
      304 GETTABLEKS                       R24 R24 K103 ["x"]
      306 LOADK                            R25 K101 [0.5]
      307 LOADN                            R26 0
      308 CALL                             R22 4 1
      309 SETTABLEKS                       R22 R21 K104 ["Position"]
      311 GETIMPORT                        R22 K16 [Vector2.new]
      313 LOADK                            R23 K101 [0.5]
      314 LOADK                            R24 K101 [0.5]
      315 CALL                             R22 2 1
      316 SETTABLEKS                       R22 R21 K105 ["AnchorPoint"]
      318 GETUPVAL                         R22 2
      319 GETTABLEKS                       R22 R22 K106 ["Event"]
      321 GETTABLEKS                       R22 R22 K107 ["Activated"]
      323 SETTABLE                         R6 R21 R22
      324 NEWTABLE                         R22 0 1
      326 GETUPVAL                         R23 2
      327 GETTABLEKS                       R23 R23 K24 ["createElement"]
      329 GETUPVAL                         R24 8
      330 DUPTABLE                         R25 K76 [{["Cursor"] = "PointingHand"}]
      331 CALL                             R23 2 -1
      332 SETLIST                          R22 R23 -1 [1]
      334 CALL                             R19 3 1
      335 SETTABLEKS                       R19 R18 K89 ["HeaderButton"]
      337 CALL                             R16 2 1
      338 SETTABLEKS                       R16 R15 K40 ["BadgesTable"]
      340 CALL                             R12 3 -1
      341 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["FitFrame"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Roact"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["PureComponent"]
       27 GETIMPORT                        R5 K1 [script]
       29 GETTABLEKS                       R5 R5 K9 ["Name"]
       31 NAMECALL                         R3 R3 K10 ["extend"]
       33 CALL                             R3 2 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K5 ["Packages"]
       38 GETTABLEKS                       R5 R5 K11 ["Framework"]
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
       73 GETTABLEKS                       R15 R0 K24 ["Src"]
       75 GETTABLEKS                       R15 R15 K25 ["Components"]
       77 GETTABLEKS                       R15 R15 K26 ["TableWithMenu"]
       79 CALL                             R14 1 1
       80 GETTABLEKS                       R15 R1 K27 ["FitFrameOnAxis"]
       82 GETIMPORT                        R16 K4 [require]
       84 GETTABLEKS                       R17 R0 K24 ["Src"]
       86 GETTABLEKS                       R17 R17 K28 ["Util"]
       88 GETTABLEKS                       R17 R17 K29 ["KeyProvider"]
       90 CALL                             R16 1 1
       91 GETTABLEKS                       R17 R16 K30 ["getCopyIdKeyName"]
       93 GETTABLEKS                       R18 R16 K31 ["getConfigureKeyName"]
       95 GETIMPORT                        R19 K4 [require]
       97 GETTABLEKS                       R20 R0 K24 ["Src"]
       99 GETTABLEKS                       R20 R20 K28 ["Util"]
      101 GETTABLEKS                       R20 R20 K32 ["GameSettingsUtilities"]
      103 CALL                             R19 1 1
      104 GETTABLEKS                       R19 R19 K33 ["shouldAllowBadges"]
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
