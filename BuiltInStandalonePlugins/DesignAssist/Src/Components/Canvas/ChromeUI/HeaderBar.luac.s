PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["IconButton"]
        6 DUPTABLE                         R3 K8 [{"LayoutOrder", "icon", "variant", "size", "isDisabled", "onActivated"}]
        7 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       11 GETTABLEKS                       R4 R0 K3 ["icon"]
       13 SETTABLEKS                       R4 R3 K3 ["icon"]
       15 GETTABLEKS                       R5 R0 K9 ["selected"]
       17 JUMPIFNOT                        R5 ; [+8]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K10 ["Enums"]
       21 GETTABLEKS                       R4 R4 K11 ["ButtonVariant"]
       23 GETTABLEKS                       R4 R4 K12 ["Standard"]
       25 JUMP                             ; [+7]
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K10 ["Enums"]
       29 GETTABLEKS                       R4 R4 K11 ["ButtonVariant"]
       31 GETTABLEKS                       R4 R4 K13 ["Utility"]
       33 SETTABLEKS                       R4 R3 K4 ["variant"]
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K10 ["Enums"]
       38 GETTABLEKS                       R4 R4 K14 ["InputSize"]
       40 GETTABLEKS                       R4 R4 K15 ["XSmall"]
       42 SETTABLEKS                       R4 R3 K5 ["size"]
       44 GETTABLEKS                       R5 R0 K16 ["disabled"]
       46 JUMPIFEQKB                       R5 TRUE ; [+2]
       48 LOADB                            R4 0 +1
       49 LOADB                            R4 1
       50 SETTABLEKS                       R4 R3 K6 ["isDisabled"]
       52 GETTABLEKS                       R4 R0 K7 ["onActivated"]
       54 SETTABLEKS                       R4 R3 K7 ["onActivated"]
       56 CALL                             R1 2 -1
       57 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["selected"]
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R1 R0 K1 ["tokens"]
        5 GETTABLEKS                       R1 R1 K2 ["Color"]
        7 GETTABLEKS                       R1 R1 K3 ["ActionSoftEmphasis"]
        9 JUMP                             ; [+6]
       10 GETTABLEKS                       R1 R0 K1 ["tokens"]
       12 GETTABLEKS                       R1 R1 K2 ["Color"]
       14 GETTABLEKS                       R1 R1 K4 ["ActionUtility"]
       16 GETTABLEKS                       R3 R0 K5 ["disabled"]
       18 JUMPIFNOT                        R3 ; [+9]
       19 GETTABLEKS                       R2 R0 K1 ["tokens"]
       21 GETTABLEKS                       R2 R2 K2 ["Color"]
       23 GETTABLEKS                       R2 R2 K6 ["Content"]
       25 GETTABLEKS                       R2 R2 K7 ["Muted"]
       27 JUMP                             ; [+2]
       28 GETTABLEKS                       R2 R1 K8 ["Foreground"]
       30 GETTABLEKS                       R3 R1 K9 ["Border"]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K10 ["createElement"]
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K11 ["View"]
       38 DUPTABLE                         R6 K19 [{["LayoutOrder"], ["Size"], ["tag"] = "row align-x-center align-y-center radius-small", ["backgroundStyle"], ["stroke"], ["onActivated"]}]
       39 GETTABLEKS                       R7 R0 K12 ["LayoutOrder"]
       41 SETTABLEKS                       R7 R6 K12 ["LayoutOrder"]
       43 GETIMPORT                        R7 K22 [UDim2.fromOffset]
       45 LOADN                            R8 24
       46 LOADN                            R9 24
       47 CALL                             R7 2 1
       48 SETTABLEKS                       R7 R6 K13 ["Size"]
       50 GETTABLEKS                       R7 R1 K23 ["Background"]
       52 SETTABLEKS                       R7 R6 K16 ["backgroundStyle"]
       54 JUMPIFNOT                        R3 ; [+10]
       55 DUPTABLE                         R7 K27 [{["Color"], ["Transparency"], ["Thickness"] = 1}]
       56 GETTABLEKS                       R8 R3 K28 ["Color3"]
       58 SETTABLEKS                       R8 R7 K2 ["Color"]
       60 GETTABLEKS                       R8 R3 K24 ["Transparency"]
       62 SETTABLEKS                       R8 R7 K24 ["Transparency"]
       64 JUMP                             ; [+1]
       65 LOADNIL                          R7
       66 SETTABLEKS                       R7 R6 K17 ["stroke"]
       68 GETTABLEKS                       R8 R0 K5 ["disabled"]
       70 JUMPIFNOT                        R8 ; [+2]
       71 LOADNIL                          R7
       72 JUMP                             ; [+2]
       73 GETTABLEKS                       R7 R0 K18 ["onActivated"]
       75 SETTABLEKS                       R7 R6 K18 ["onActivated"]
       77 DUPTABLE                         R7 K30 [{"Icon"}]
       78 GETUPVAL                         R8 0
       79 GETTABLEKS                       R8 R8 K10 ["createElement"]
       81 LOADK                            R9 K31 ["ImageLabel"]
       82 DUPTABLE                         R10 K39 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["Image"], ["ImageColor3"], ["ImageTransparency"], ["ScaleType"]}]
       83 GETIMPORT                        R11 K22 [UDim2.fromOffset]
       85 LOADN                            R12 16
       86 LOADN                            R13 16
       87 CALL                             R11 2 1
       88 SETTABLEKS                       R11 R10 K13 ["Size"]
       90 GETTABLEKS                       R11 R0 K40 ["image"]
       92 SETTABLEKS                       R11 R10 K35 ["Image"]
       94 GETTABLEKS                       R11 R2 K28 ["Color3"]
       96 SETTABLEKS                       R11 R10 K36 ["ImageColor3"]
       98 GETTABLEKS                       R11 R2 K24 ["Transparency"]
      100 SETTABLEKS                       R11 R10 K37 ["ImageTransparency"]
      102 GETIMPORT                        R11 K43 [Enum.ScaleType.Fit]
      104 SETTABLEKS                       R11 R10 K38 ["ScaleType"]
      106 CALL                             R8 2 1
      107 SETTABLEKS                       R8 R7 K29 ["Icon"]
      109 CALL                             R4 3 -1
      110 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["themeOverride"]
        3 JUMPIFNOTEQKS                    R1 K1 ["light"] ; [+3]
        5 LOADK                            R0 K2 ["dark"]
        6 JUMP                             ; [+1]
        7 LOADK                            R0 K1 ["light"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K3 ["canvasState"]
       11 LOADK                            R3 K0 ["themeOverride"]
       12 MOVE                             R4 R0
       13 NAMECALL                         R1 R1 K4 ["set"]
       15 CALL                             R1 3 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["canvasState"]
        3 LOADK                            R2 K1 ["panMode"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K2 ["set"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["canvasState"]
        3 LOADK                            R2 K1 ["panMode"]
        4 LOADB                            R3 1
        5 NAMECALL                         R0 R0 K2 ["set"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["canvasState"]
        3 LOADK                            R2 K1 ["storyControlsPinned"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["storyControlsPinned"]
        7 NOT                              R3 R4
        8 NAMECALL                         R0 R0 K2 ["set"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 NEWCLOSURE                       R2 P1
        3 CAPTURE                          VAL R0
        4 NEWCLOSURE                       R3 P2
        5 CAPTURE                          VAL R0
        6 NEWCLOSURE                       R4 P3
        7 CAPTURE                          VAL R0
        8 GETTABLEKS                       R6 R0 K0 ["panModeActive"]
       10 NOT                              R5 R6
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K1 ["createElement"]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K2 ["View"]
       17 DUPTABLE                         R8 K6 [{["Size"], ["tag"] = "bg-surface-0"}]
       18 GETIMPORT                        R9 K9 [UDim2.fromScale]
       20 LOADN                            R10 1
       21 LOADN                            R11 1
       22 CALL                             R9 2 1
       23 SETTABLEKS                       R9 R8 K3 ["Size"]
       25 DUPTABLE                         R9 K14 [{"LeftTools", "CenterTools", "RightControls", "BottomDivider"}]
       26 GETUPVAL                         R10 0
       27 GETTABLEKS                       R10 R10 K1 ["createElement"]
       29 GETUPVAL                         R11 1
       30 GETTABLEKS                       R11 R11 K2 ["View"]
       32 DUPTABLE                         R12 K20 [{["AnchorPoint"], ["Position"], ["Size"], ["tag"] = "row align-y-center", ["LayoutOrder"] = 1}]
       33 GETIMPORT                        R13 K23 [Vector2.new]
       35 LOADN                            R14 0
       36 LOADK                            R15 K24 [0.5]
       37 CALL                             R13 2 1
       38 SETTABLEKS                       R13 R12 K15 ["AnchorPoint"]
       40 GETIMPORT                        R13 K25 [UDim2.new]
       42 LOADN                            R14 0
       43 LOADN                            R15 12
       44 LOADK                            R16 K24 [0.5]
       45 LOADN                            R17 0
       46 CALL                             R13 4 1
       47 SETTABLEKS                       R13 R12 K16 ["Position"]
       49 GETIMPORT                        R13 K27 [UDim2.fromOffset]
       51 LOADN                            R14 24
       52 LOADN                            R15 24
       53 CALL                             R13 2 1
       54 SETTABLEKS                       R13 R12 K3 ["Size"]
       56 DUPTABLE                         R13 K29 [{"Insert"}]
       57 GETUPVAL                         R14 0
       58 GETTABLEKS                       R14 R14 K1 ["createElement"]
       60 GETUPVAL                         R15 2
       61 DUPTABLE                         R16 K32 [{["LayoutOrder"] = 1, ["icon"], ["onActivated"]}]
       62 GETUPVAL                         R17 1
       63 GETTABLEKS                       R17 R17 K33 ["Enums"]
       65 GETTABLEKS                       R17 R17 K34 ["IconName"]
       67 GETTABLEKS                       R17 R17 K35 ["PlusLarge"]
       69 SETTABLEKS                       R17 R16 K30 ["icon"]
       71 DUPCLOSURE                       R17 K36 [PROTO_6]
       72 SETTABLEKS                       R17 R16 K31 ["onActivated"]
       74 CALL                             R14 2 1
       75 SETTABLEKS                       R14 R13 K28 ["Insert"]
       77 CALL                             R10 3 1
       78 SETTABLEKS                       R10 R9 K10 ["LeftTools"]
       80 GETUPVAL                         R10 0
       81 GETTABLEKS                       R10 R10 K1 ["createElement"]
       83 GETUPVAL                         R11 1
       84 GETTABLEKS                       R11 R11 K2 ["View"]
       86 DUPTABLE                         R12 K39 [{["AnchorPoint"], ["Position"], ["Size"], ["tag"] = "row align-y-center", ["ZIndex"] = 2}]
       87 GETIMPORT                        R13 K23 [Vector2.new]
       89 LOADK                            R14 K24 [0.5]
       90 LOADK                            R15 K24 [0.5]
       91 CALL                             R13 2 1
       92 SETTABLEKS                       R13 R12 K15 ["AnchorPoint"]
       94 GETIMPORT                        R13 K9 [UDim2.fromScale]
       96 LOADK                            R14 K24 [0.5]
       97 LOADK                            R15 K24 [0.5]
       98 CALL                             R13 2 1
       99 SETTABLEKS                       R13 R12 K16 ["Position"]
      101 GETIMPORT                        R13 K27 [UDim2.fromOffset]
      103 LOADN                            R14 102
      104 LOADN                            R15 24
      105 CALL                             R13 2 1
      106 SETTABLEKS                       R13 R12 K3 ["Size"]
      108 DUPTABLE                         R13 K47 [{"Interact", "InteractGap", "Pan", "PanGap", "Comments", "CommentsGap", "StoryControls"}]
      109 GETUPVAL                         R14 0
      110 GETTABLEKS                       R14 R14 K1 ["createElement"]
      112 GETUPVAL                         R15 3
      113 DUPTABLE                         R16 K52 [{["LayoutOrder"] = 1, ["image"] = "rbxassetid://136142781388478", ["selected"], ["tokens"], ["onActivated"]}]
      114 SETTABLEKS                       R5 R16 K50 ["selected"]
      116 GETTABLEKS                       R17 R0 K51 ["tokens"]
      118 SETTABLEKS                       R17 R16 K51 ["tokens"]
      120 SETTABLEKS                       R2 R16 K31 ["onActivated"]
      122 CALL                             R14 2 1
      123 SETTABLEKS                       R14 R13 K40 ["Interact"]
      125 GETUPVAL                         R14 0
      126 GETTABLEKS                       R14 R14 K1 ["createElement"]
      128 GETUPVAL                         R15 1
      129 GETTABLEKS                       R15 R15 K2 ["View"]
      131 DUPTABLE                         R16 K53 [{["LayoutOrder"] = 2, ["Size"]}]
      132 GETIMPORT                        R17 K27 [UDim2.fromOffset]
      134 LOADN                            R18 2
      135 LOADN                            R19 24
      136 CALL                             R17 2 1
      137 SETTABLEKS                       R17 R16 K3 ["Size"]
      139 CALL                             R14 2 1
      140 SETTABLEKS                       R14 R13 K41 ["InteractGap"]
      142 GETUPVAL                         R14 0
      143 GETTABLEKS                       R14 R14 K1 ["createElement"]
      145 GETUPVAL                         R15 3
      146 DUPTABLE                         R16 K56 [{["LayoutOrder"] = 3, ["image"] = "rbxassetid://127140552071717", ["selected"], ["tokens"], ["onActivated"]}]
      147 GETTABLEKS                       R17 R0 K0 ["panModeActive"]
      149 SETTABLEKS                       R17 R16 K50 ["selected"]
      151 GETTABLEKS                       R17 R0 K51 ["tokens"]
      153 SETTABLEKS                       R17 R16 K51 ["tokens"]
      155 SETTABLEKS                       R3 R16 K31 ["onActivated"]
      157 CALL                             R14 2 1
      158 SETTABLEKS                       R14 R13 K42 ["Pan"]
      160 GETUPVAL                         R14 0
      161 GETTABLEKS                       R14 R14 K1 ["createElement"]
      163 GETUPVAL                         R15 1
      164 GETTABLEKS                       R15 R15 K2 ["View"]
      166 DUPTABLE                         R16 K58 [{["LayoutOrder"] = 4, ["Size"]}]
      167 GETIMPORT                        R17 K27 [UDim2.fromOffset]
      169 LOADN                            R18 2
      170 LOADN                            R19 24
      171 CALL                             R17 2 1
      172 SETTABLEKS                       R17 R16 K3 ["Size"]
      174 CALL                             R14 2 1
      175 SETTABLEKS                       R14 R13 K43 ["PanGap"]
      177 GETUPVAL                         R14 0
      178 GETTABLEKS                       R14 R14 K1 ["createElement"]
      180 GETUPVAL                         R15 3
      181 DUPTABLE                         R16 K63 [{["LayoutOrder"] = 5, ["image"] = "rbxassetid://130551547775106", ["disabled"] = True, ["tokens"], ["onActivated"]}]
      182 GETTABLEKS                       R17 R0 K51 ["tokens"]
      184 SETTABLEKS                       R17 R16 K51 ["tokens"]
      186 DUPCLOSURE                       R17 K64 [PROTO_7]
      187 SETTABLEKS                       R17 R16 K31 ["onActivated"]
      189 CALL                             R14 2 1
      190 SETTABLEKS                       R14 R13 K44 ["Comments"]
      192 GETUPVAL                         R14 0
      193 GETTABLEKS                       R14 R14 K1 ["createElement"]
      195 GETUPVAL                         R15 1
      196 GETTABLEKS                       R15 R15 K2 ["View"]
      198 DUPTABLE                         R16 K66 [{["LayoutOrder"] = 6, ["Size"]}]
      199 GETIMPORT                        R17 K27 [UDim2.fromOffset]
      201 LOADN                            R18 2
      202 LOADN                            R19 24
      203 CALL                             R17 2 1
      204 SETTABLEKS                       R17 R16 K3 ["Size"]
      206 CALL                             R14 2 1
      207 SETTABLEKS                       R14 R13 K45 ["CommentsGap"]
      209 GETUPVAL                         R14 0
      210 GETTABLEKS                       R14 R14 K1 ["createElement"]
      212 GETUPVAL                         R15 3
      213 DUPTABLE                         R16 K69 [{["LayoutOrder"] = 7, ["image"] = "rbxassetid://100763158473339", ["selected"], ["tokens"], ["onActivated"]}]
      214 GETTABLEKS                       R17 R0 K70 ["storyControlsPinned"]
      216 SETTABLEKS                       R17 R16 K50 ["selected"]
      218 GETTABLEKS                       R17 R0 K51 ["tokens"]
      220 SETTABLEKS                       R17 R16 K51 ["tokens"]
      222 SETTABLEKS                       R4 R16 K31 ["onActivated"]
      224 CALL                             R14 2 1
      225 SETTABLEKS                       R14 R13 K46 ["StoryControls"]
      227 CALL                             R10 3 1
      228 SETTABLEKS                       R10 R9 K11 ["CenterTools"]
      230 GETUPVAL                         R10 0
      231 GETTABLEKS                       R10 R10 K1 ["createElement"]
      233 GETUPVAL                         R11 1
      234 GETTABLEKS                       R11 R11 K2 ["View"]
      236 DUPTABLE                         R12 K72 [{["AnchorPoint"], ["Position"], ["Size"], ["tag"] = "row align-y-center align-x-right", ["LayoutOrder"] = 3}]
      237 GETIMPORT                        R13 K23 [Vector2.new]
      239 LOADN                            R14 1
      240 LOADK                            R15 K24 [0.5]
      241 CALL                             R13 2 1
      242 SETTABLEKS                       R13 R12 K15 ["AnchorPoint"]
      244 GETIMPORT                        R13 K25 [UDim2.new]
      246 LOADN                            R14 1
      247 LOADN                            R15 -12
      248 LOADK                            R16 K24 [0.5]
      249 LOADN                            R17 0
      250 CALL                             R13 4 1
      251 SETTABLEKS                       R13 R12 K16 ["Position"]
      253 GETIMPORT                        R13 K27 [UDim2.fromOffset]
      255 LOADN                            R14 149
      256 LOADN                            R15 24
      257 CALL                             R13 2 1
      258 SETTABLEKS                       R13 R12 K3 ["Size"]
      260 DUPTABLE                         R13 K78 [{"Theme", "ThemeDeviceGap", "Device", "DeviceZoomGap", "Zoom"}]
      261 GETUPVAL                         R14 0
      262 GETTABLEKS                       R14 R14 K1 ["createElement"]
      264 GETUPVAL                         R15 3
      265 DUPTABLE                         R16 K80 [{["LayoutOrder"] = 1, ["image"] = "rbxassetid://112647932102578", ["tokens"], ["onActivated"]}]
      266 GETTABLEKS                       R17 R0 K51 ["tokens"]
      268 SETTABLEKS                       R17 R16 K51 ["tokens"]
      270 SETTABLEKS                       R1 R16 K31 ["onActivated"]
      272 CALL                             R14 2 1
      273 SETTABLEKS                       R14 R13 K73 ["Theme"]
      275 GETUPVAL                         R14 0
      276 GETTABLEKS                       R14 R14 K1 ["createElement"]
      278 GETUPVAL                         R15 1
      279 GETTABLEKS                       R15 R15 K2 ["View"]
      281 DUPTABLE                         R16 K53 [{["LayoutOrder"] = 2, ["Size"]}]
      282 GETIMPORT                        R17 K27 [UDim2.fromOffset]
      284 LOADN                            R18 4
      285 LOADN                            R19 24
      286 CALL                             R17 2 1
      287 SETTABLEKS                       R17 R16 K3 ["Size"]
      289 CALL                             R14 2 1
      290 SETTABLEKS                       R14 R13 K74 ["ThemeDeviceGap"]
      292 GETTABLEKS                       R15 R0 K81 ["deviceProfile"]
      294 JUMPIFNOT                        R15 ; [+27]
      295 GETUPVAL                         R14 0
      296 GETTABLEKS                       R14 R14 K1 ["createElement"]
      298 GETUPVAL                         R15 4
      299 DUPTABLE                         R16 K87 [{["LayoutOrder"] = 5, ["profile"], ["useInsets"], ["tokens"], ["chromeControlHeight"], ["canvasState"], ["triggerMode"] = "icon"}]
      300 GETTABLEKS                       R17 R0 K81 ["deviceProfile"]
      302 SETTABLEKS                       R17 R16 K82 ["profile"]
      304 GETTABLEKS                       R17 R0 K83 ["useInsets"]
      306 SETTABLEKS                       R17 R16 K83 ["useInsets"]
      308 GETTABLEKS                       R17 R0 K51 ["tokens"]
      310 SETTABLEKS                       R17 R16 K51 ["tokens"]
      312 GETTABLEKS                       R17 R0 K84 ["chromeControlHeight"]
      314 SETTABLEKS                       R17 R16 K84 ["chromeControlHeight"]
      316 GETTABLEKS                       R17 R0 K85 ["canvasState"]
      318 SETTABLEKS                       R17 R16 K85 ["canvasState"]
      320 CALL                             R14 2 1
      321 JUMP                             ; [+1]
      322 LOADNIL                          R14
      323 SETTABLEKS                       R14 R13 K75 ["Device"]
      325 GETUPVAL                         R14 0
      326 GETTABLEKS                       R14 R14 K1 ["createElement"]
      328 GETUPVAL                         R15 1
      329 GETTABLEKS                       R15 R15 K2 ["View"]
      331 DUPTABLE                         R16 K66 [{["LayoutOrder"] = 6, ["Size"]}]
      332 GETIMPORT                        R17 K27 [UDim2.fromOffset]
      334 LOADN                            R18 4
      335 LOADN                            R19 24
      336 CALL                             R17 2 1
      337 SETTABLEKS                       R17 R16 K3 ["Size"]
      339 CALL                             R14 2 1
      340 SETTABLEKS                       R14 R13 K76 ["DeviceZoomGap"]
      342 GETUPVAL                         R14 0
      343 GETTABLEKS                       R14 R14 K1 ["createElement"]
      345 GETUPVAL                         R15 1
      346 GETTABLEKS                       R15 R15 K2 ["View"]
      348 DUPTABLE                         R16 K88 [{["LayoutOrder"] = 7, ["Size"]}]
      349 GETIMPORT                        R17 K27 [UDim2.fromOffset]
      351 LOADN                            R18 65
      352 GETTABLEKS                       R19 R0 K84 ["chromeControlHeight"]
      354 CALL                             R17 2 1
      355 SETTABLEKS                       R17 R16 K3 ["Size"]
      357 DUPTABLE                         R17 K90 [{"Menu"}]
      358 GETUPVAL                         R18 0
      359 GETTABLEKS                       R18 R18 K1 ["createElement"]
      361 GETUPVAL                         R19 5
      362 DUPTABLE                         R20 K92 [{"zoomScale", "tokens", "chromeControlHeight", "canvasState"}]
      363 GETTABLEKS                       R21 R0 K91 ["zoomScale"]
      365 SETTABLEKS                       R21 R20 K91 ["zoomScale"]
      367 GETTABLEKS                       R21 R0 K51 ["tokens"]
      369 SETTABLEKS                       R21 R20 K51 ["tokens"]
      371 GETTABLEKS                       R21 R0 K84 ["chromeControlHeight"]
      373 SETTABLEKS                       R21 R20 K84 ["chromeControlHeight"]
      375 GETTABLEKS                       R21 R0 K85 ["canvasState"]
      377 SETTABLEKS                       R21 R20 K85 ["canvasState"]
      379 CALL                             R18 2 1
      380 SETTABLEKS                       R18 R17 K89 ["Menu"]
      382 CALL                             R14 3 1
      383 SETTABLEKS                       R14 R13 K77 ["Zoom"]
      385 CALL                             R10 3 1
      386 SETTABLEKS                       R10 R9 K12 ["RightControls"]
      388 GETUPVAL                         R10 0
      389 GETTABLEKS                       R10 R10 K1 ["createElement"]
      391 GETUPVAL                         R11 1
      392 GETTABLEKS                       R11 R11 K2 ["View"]
      394 DUPTABLE                         R12 K94 [{["AnchorPoint"], ["Position"], ["Size"], ["backgroundStyle"], ["ZIndex"] = 3}]
      395 GETIMPORT                        R13 K23 [Vector2.new]
      397 LOADN                            R14 0
      398 LOADN                            R15 1
      399 CALL                             R13 2 1
      400 SETTABLEKS                       R13 R12 K15 ["AnchorPoint"]
      402 GETIMPORT                        R13 K25 [UDim2.new]
      404 LOADN                            R14 0
      405 LOADN                            R15 12
      406 LOADN                            R16 1
      407 LOADN                            R17 0
      408 CALL                             R13 4 1
      409 SETTABLEKS                       R13 R12 K16 ["Position"]
      411 GETIMPORT                        R13 K25 [UDim2.new]
      413 LOADN                            R14 1
      414 LOADN                            R15 -24
      415 LOADN                            R16 0
      416 LOADN                            R17 1
      417 CALL                             R13 4 1
      418 SETTABLEKS                       R13 R12 K3 ["Size"]
      420 GETTABLEKS                       R13 R0 K51 ["tokens"]
      422 GETTABLEKS                       R13 R13 K95 ["Color"]
      424 GETTABLEKS                       R13 R13 K96 ["Stroke"]
      426 GETTABLEKS                       R13 R13 K97 ["Default"]
      428 SETTABLEKS                       R13 R12 K93 ["backgroundStyle"]
      430 CALL                             R10 2 1
      431 SETTABLEKS                       R10 R9 K13 ["BottomDivider"]
      433 CALL                             R6 3 -1
      434 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["DeviceDropdown"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R3 R3 K10 ["DeviceDropdown"]
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K9 ["Parent"]
       38 GETTABLEKS                       R5 R5 K11 ["ZoomMenu"]
       40 CALL                             R4 1 1
       41 DUPTABLE                         R5 K22 [{["Interact"] = "rbxassetid://136142781388478", ["Pan"] = "rbxassetid://127140552071717", ["Comments"] = "rbxassetid://130551547775106", ["StoryControls"] = "rbxassetid://100763158473339", ["Theme"] = "rbxassetid://112647932102578"}]
       42 DUPCLOSURE                       R6 K23 [PROTO_0]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R2
       45 DUPCLOSURE                       R7 K24 [PROTO_1]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 DUPCLOSURE                       R8 K25 [PROTO_8]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 RETURN                           R8 1
