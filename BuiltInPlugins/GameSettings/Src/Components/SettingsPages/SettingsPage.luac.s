PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["scrollingFrameRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 JUMPIFNOT                        R1 ; [+22]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["props"]
        9 GETTABLEKS                       R2 R2 K3 ["Stylizer"]
       11 GETIMPORT                        R3 K6 [UDim2.new]
       13 LOADN                            R4 1
       14 LOADN                            R5 0
       15 LOADN                            R6 0
       16 GETTABLEKS                       R8 R0 K7 ["AbsoluteContentSize"]
       18 GETTABLEKS                       R8 R8 K8 ["Y"]
       20 GETTABLEKS                       R9 R2 K9 ["settingsPage"]
       22 GETTABLEKS                       R9 R9 K10 ["settingPadding"]
       24 ADD                              R7 R8 R9
       25 CALL                             R3 4 1
       26 SETTABLEKS                       R3 R1 K11 ["CanvasSize"]
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["scrollingFrameRef"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K2 ["contentHeightChanged"]
       10 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LoadState"]
        4 GETTABLEKS                       R3 R1 K2 ["SaveState"]
        6 GETTABLEKS                       R4 R1 K3 ["SettingsLoadJobs"]
        8 GETTABLEKS                       R5 R1 K4 ["PageId"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["Unloaded"]
       13 JUMPIFNOTEQ                      R2 R6 ; [+6]
       15 GETTABLEKS                       R6 R1 K6 ["LoadPageSettings"]
       17 MOVE                             R7 R5
       18 MOVE                             R8 R4
       19 CALL                             R6 2 0
       20 JUMPIFNOTEQKNIL                  R3 ; [+8]
       22 GETTABLEKS                       R6 R1 K7 ["SetPageSaveState"]
       24 MOVE                             R7 R5
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R8 R8 K8 ["Unsaved"]
       28 CALL                             R6 2 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R3 K1 ["PageId"]
        4 GETTABLEKS                       R5 R3 K2 ["SettingsSaveJobs"]
        6 GETTABLEKS                       R6 R3 K3 ["SaveState"]
        8 GETTABLEKS                       R7 R1 K3 ["SaveState"]
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R8 R8 K4 ["Pending"]
       13 JUMPIFNOTEQ                      R6 R8 ; [+8]
       15 JUMPIFEQ                         R6 R7 ; [+6]
       17 GETTABLEKS                       R8 R3 K5 ["SavePageSettings"]
       19 MOVE                             R9 R4
       20 MOVE                             R10 R5
       21 CALL                             R8 2 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LoadPageSettings"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Title"]
        6 GETTABLEKS                       R4 R1 K3 ["LoadState"]
        8 GETTABLEKS                       R5 R1 K4 ["SettingsLoadJobs"]
       10 GETTABLEKS                       R6 R1 K5 ["PageId"]
       12 LOADB                            R7 1
       13 GETTABLEKS                       R8 R1 K6 ["ShowHeader"]
       15 JUMPIFEQKNIL                     R8 ; [+3]
       17 GETTABLEKS                       R7 R1 K6 ["ShowHeader"]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K7 ["Loading"]
       22 JUMPIFNOTLE                      R4 R8 ; [+36]
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R8 R8 K8 ["createElement"]
       27 GETUPVAL                         R10 2
       28 JUMPIFNOT                        R10 ; [+2]
       29 GETUPVAL                         R9 3
       30 JUMP                             ; [+1]
       31 GETUPVAL                         R9 4
       32 NEWTABLE                         R10 0 0
       34 DUPTABLE                         R11 K9 [{"Loading"}]
       35 GETUPVAL                         R12 1
       36 GETTABLEKS                       R12 R12 K8 ["createElement"]
       38 GETUPVAL                         R13 5
       39 DUPTABLE                         R14 K12 [{"AnchorPoint", "Position"}]
       40 GETIMPORT                        R15 K15 [Vector2.new]
       42 LOADK                            R16 K16 [0.5]
       43 LOADK                            R17 K16 [0.5]
       44 CALL                             R15 2 1
       45 SETTABLEKS                       R15 R14 K10 ["AnchorPoint"]
       47 GETIMPORT                        R15 K19 [UDim2.fromScale]
       49 LOADK                            R16 K16 [0.5]
       50 LOADK                            R17 K16 [0.5]
       51 CALL                             R15 2 1
       52 SETTABLEKS                       R15 R14 K11 ["Position"]
       54 CALL                             R12 2 1
       55 SETTABLEKS                       R12 R11 K7 ["Loading"]
       57 CALL                             R8 3 -1
       58 RETURN                           R8 -1
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R8 R8 K20 ["LoadFailed"]
       62 JUMPIFNOTEQ                      R4 R8 ; [+14]
       64 GETUPVAL                         R8 1
       65 GETTABLEKS                       R8 R8 K8 ["createElement"]
       67 GETUPVAL                         R9 6
       68 DUPTABLE                         R10 K22 [{"OnRetry"}]
       69 NEWCLOSURE                       R11 P0
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R5
       73 SETTABLEKS                       R11 R10 K21 ["OnRetry"]
       75 CALL                             R8 2 -1
       76 RETURN                           R8 -1
       77 GETUPVAL                         R8 0
       78 GETTABLEKS                       R8 R8 K23 ["Loaded"]
       80 JUMPIFNOTEQ                      R4 R8 ; [+253]
       82 GETUPVAL                         R8 1
       83 GETTABLEKS                       R8 R8 K8 ["createElement"]
       85 GETUPVAL                         R9 7
       86 NEWTABLE                         R10 8 0
       88 GETIMPORT                        R11 K27 [Enum.AutomaticSize.Y]
       90 SETTABLEKS                       R11 R10 K28 ["AutomaticCanvasSize"]
       92 GETUPVAL                         R12 2
       93 JUMPIFNOT                        R12 ; [+3]
       94 GETIMPORT                        R11 K31 [Enum.FillDirection.Vertical]
       96 JUMP                             ; [+1]
       97 LOADNIL                          R11
       98 SETTABLEKS                       R11 R10 K32 ["Layout"]
      100 GETUPVAL                         R12 2
      101 JUMPIFNOT                        R12 ; [+26]
      102 DUPTABLE                         R11 K37 [{"Top", "Bottom", "Left", "Right"}]
      103 GETTABLEKS                       R12 R2 K38 ["settingsPage"]
      105 GETTABLEKS                       R12 R12 K39 ["marginY"]
      107 SETTABLEKS                       R12 R11 K33 ["Top"]
      109 GETTABLEKS                       R12 R2 K38 ["settingsPage"]
      111 GETTABLEKS                       R12 R12 K39 ["marginY"]
      113 SETTABLEKS                       R12 R11 K34 ["Bottom"]
      115 GETTABLEKS                       R12 R2 K38 ["settingsPage"]
      117 GETTABLEKS                       R12 R12 K40 ["marginX"]
      119 SETTABLEKS                       R12 R11 K35 ["Left"]
      121 GETTABLEKS                       R12 R2 K38 ["settingsPage"]
      123 GETTABLEKS                       R12 R12 K40 ["marginX"]
      125 SETTABLEKS                       R12 R11 K36 ["Right"]
      127 JUMP                             ; [+1]
      128 LOADNIL                          R11
      129 SETTABLEKS                       R11 R10 K41 ["Padding"]
      131 GETUPVAL                         R12 2
      132 JUMPIFNOT                        R12 ; [+9]
      133 GETIMPORT                        R11 K43 [UDim.new]
      135 LOADN                            R12 0
      136 GETTABLEKS                       R13 R2 K38 ["settingsPage"]
      138 GETTABLEKS                       R13 R13 K44 ["settingPadding"]
      140 CALL                             R11 2 1
      141 JUMP                             ; [+1]
      142 LOADNIL                          R11
      143 SETTABLEKS                       R11 R10 K45 ["Spacing"]
      145 GETUPVAL                         R11 1
      146 GETTABLEKS                       R11 R11 K46 ["Ref"]
      148 GETTABLEKS                       R12 R0 K47 ["scrollingFrameRef"]
      150 SETTABLE                         R12 R10 R11
      151 DUPTABLE                         R11 K50 [{"Layout", "Padding", "Header", "Content"}]
      152 GETUPVAL                         R13 2
      153 JUMPIFNOT                        R13 ; [+2]
      154 LOADNIL                          R12
      155 JUMP                             ; [+33]
      156 GETUPVAL                         R12 1
      157 GETTABLEKS                       R12 R12 K8 ["createElement"]
      159 LOADK                            R13 K51 ["UIListLayout"]
      160 NEWTABLE                         R14 4 0
      162 GETUPVAL                         R15 1
      163 GETTABLEKS                       R15 R15 K52 ["Change"]
      165 GETTABLEKS                       R15 R15 K53 ["AbsoluteContentSize"]
      167 GETTABLEKS                       R16 R0 K54 ["contentHeightChanged"]
      169 SETTABLE                         R16 R14 R15
      170 GETIMPORT                        R15 K57 [Enum.SortOrder.LayoutOrder]
      172 SETTABLEKS                       R15 R14 K55 ["SortOrder"]
      174 GETIMPORT                        R15 K31 [Enum.FillDirection.Vertical]
      176 SETTABLEKS                       R15 R14 K29 ["FillDirection"]
      178 GETIMPORT                        R15 K43 [UDim.new]
      180 LOADN                            R16 0
      181 GETTABLEKS                       R17 R2 K38 ["settingsPage"]
      183 GETTABLEKS                       R17 R17 K44 ["settingPadding"]
      185 CALL                             R15 2 1
      186 SETTABLEKS                       R15 R14 K41 ["Padding"]
      188 CALL                             R12 2 1
      189 SETTABLEKS                       R12 R11 K32 ["Layout"]
      191 GETUPVAL                         R13 2
      192 JUMPIFNOT                        R13 ; [+2]
      193 LOADNIL                          R12
      194 JUMP                             ; [+26]
      195 GETUPVAL                         R12 1
      196 GETTABLEKS                       R12 R12 K8 ["createElement"]
      198 LOADK                            R13 K58 ["UIPadding"]
      199 DUPTABLE                         R14 K61 [{"PaddingLeft", "PaddingRight"}]
      200 GETIMPORT                        R15 K43 [UDim.new]
      202 LOADN                            R16 0
      203 GETTABLEKS                       R17 R2 K38 ["settingsPage"]
      205 GETTABLEKS                       R17 R17 K40 ["marginX"]
      207 CALL                             R15 2 1
      208 SETTABLEKS                       R15 R14 K59 ["PaddingLeft"]
      210 GETIMPORT                        R15 K43 [UDim.new]
      212 LOADN                            R16 0
      213 GETTABLEKS                       R17 R2 K38 ["settingsPage"]
      215 GETTABLEKS                       R17 R17 K40 ["marginX"]
      217 CALL                             R15 2 1
      218 SETTABLEKS                       R15 R14 K60 ["PaddingRight"]
      220 CALL                             R12 2 1
      221 SETTABLEKS                       R12 R11 K41 ["Padding"]
      223 MOVE                             R12 R7
      224 JUMPIFNOT                        R12 ; [+35]
      225 GETUPVAL                         R13 2
      226 JUMPIFNOT                        R13 ; [+22]
      227 GETUPVAL                         R12 1
      228 GETTABLEKS                       R12 R12 K8 ["createElement"]
      230 GETUPVAL                         R13 8
      231 DUPTABLE                         R14 K65 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextSize"}]
      232 GETIMPORT                        R15 K67 [Enum.AutomaticSize.XY]
      234 SETTABLEKS                       R15 R14 K25 ["AutomaticSize"]
      236 LOADN                            R15 1
      237 SETTABLEKS                       R15 R14 K56 ["LayoutOrder"]
      239 LOADK                            R15 K2 ["Title"]
      240 SETTABLEKS                       R15 R14 K62 ["Style"]
      242 SETTABLEKS                       R3 R14 K63 ["Text"]
      244 LOADN                            R15 30
      245 SETTABLEKS                       R15 R14 K64 ["TextSize"]
      247 CALL                             R12 2 1
      248 JUMP                             ; [+11]
      249 GETUPVAL                         R12 1
      250 GETTABLEKS                       R12 R12 K8 ["createElement"]
      252 GETUPVAL                         R13 9
      253 DUPTABLE                         R14 K68 [{"LayoutOrder", "Title"}]
      254 LOADN                            R15 1
      255 SETTABLEKS                       R15 R14 K56 ["LayoutOrder"]
      257 SETTABLEKS                       R3 R14 K2 ["Title"]
      259 CALL                             R12 2 1
      260 SETTABLEKS                       R12 R11 K48 ["Header"]
      262 GETUPVAL                         R12 1
      263 GETTABLEKS                       R12 R12 K8 ["createElement"]
      265 GETUPVAL                         R14 2
      266 JUMPIFNOT                        R14 ; [+2]
      267 GETUPVAL                         R13 3
      268 JUMP                             ; [+1]
      269 GETUPVAL                         R13 10
      270 GETUPVAL                         R15 2
      271 JUMPIFNOT                        R15 ; [+19]
      272 DUPTABLE                         R14 K69 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing"}]
      273 GETIMPORT                        R15 K67 [Enum.AutomaticSize.XY]
      275 SETTABLEKS                       R15 R14 K25 ["AutomaticSize"]
      277 GETIMPORT                        R15 K31 [Enum.FillDirection.Vertical]
      279 SETTABLEKS                       R15 R14 K32 ["Layout"]
      281 LOADN                            R15 2
      282 SETTABLEKS                       R15 R14 K56 ["LayoutOrder"]
      284 GETTABLEKS                       R15 R2 K38 ["settingsPage"]
      286 GETTABLEKS                       R15 R15 K44 ["settingPadding"]
      288 SETTABLEKS                       R15 R14 K45 ["Spacing"]
      290 JUMP                             ; [+33]
      291 DUPTABLE                         R14 K74 [{"LayoutOrder", "BackgroundTransparency", "axis", "minimumSize", "contentPadding"}]
      292 LOADN                            R15 2
      293 SETTABLEKS                       R15 R14 K56 ["LayoutOrder"]
      295 LOADN                            R15 1
      296 SETTABLEKS                       R15 R14 K70 ["BackgroundTransparency"]
      298 GETUPVAL                         R15 10
      299 GETTABLEKS                       R15 R15 K75 ["Axis"]
      301 GETTABLEKS                       R15 R15 K30 ["Vertical"]
      303 SETTABLEKS                       R15 R14 K71 ["axis"]
      305 GETIMPORT                        R15 K76 [UDim2.new]
      307 LOADN                            R16 1
      308 LOADN                            R17 0
      309 LOADN                            R18 0
      310 LOADN                            R19 0
      311 CALL                             R15 4 1
      312 SETTABLEKS                       R15 R14 K72 ["minimumSize"]
      314 GETIMPORT                        R15 K43 [UDim.new]
      316 LOADN                            R16 0
      317 GETTABLEKS                       R17 R2 K38 ["settingsPage"]
      319 GETTABLEKS                       R17 R17 K44 ["settingPadding"]
      321 CALL                             R15 2 1
      322 SETTABLEKS                       R15 R14 K73 ["contentPadding"]
      324 GETTABLEKS                       R15 R0 K0 ["props"]
      326 GETTABLEKS                       R15 R15 K77 ["CreateChildren"]
      328 CALL                             R15 0 -1
      329 CALL                             R12 -1 1
      330 SETTABLEKS                       R12 R11 K49 ["Content"]
      332 CALL                             R8 3 -1
      333 RETURN                           R8 -1
      334 LOADNIL                          R8
      335 RETURN                           R8 1

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["PageId"]
        2 DUPTABLE                         R3 K3 [{"LoadState", "SaveState"}]
        3 GETTABLEKS                       R5 R0 K4 ["PageLoadState"]
        5 GETTABLE                         R4 R5 R2
        6 JUMPIF                           R4 ; [+3]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K5 ["Unloaded"]
       10 SETTABLEKS                       R4 R3 K1 ["LoadState"]
       12 GETTABLEKS                       R5 R0 K6 ["PageSaveState"]
       14 GETTABLE                         R4 R5 R2
       15 SETTABLEKS                       R4 R3 K2 ["SaveState"]
       17 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K3 [{"LoadPageSettings", "SavePageSettings", "SetPageSaveState"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["LoadPageSettings"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SavePageSettings"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetPageSaveState"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Flags"]
       17 GETTABLEKS                       R2 R2 K7 ["getFFlagGameSettingsFixMoreLayoutIssues"]
       19 CALL                             R1 1 1
       20 CALL                             R1 0 1
       21 GETIMPORT                        R2 K4 [require]
       23 GETTABLEKS                       R3 R0 K8 ["Packages"]
       25 GETTABLEKS                       R3 R3 K9 ["FitFrame"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K4 [require]
       30 GETTABLEKS                       R4 R0 K8 ["Packages"]
       32 GETTABLEKS                       R4 R4 K10 ["Roact"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K4 [require]
       37 GETTABLEKS                       R5 R0 K8 ["Packages"]
       39 GETTABLEKS                       R5 R5 K11 ["RoactRodux"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K4 [require]
       44 GETTABLEKS                       R6 R0 K8 ["Packages"]
       46 GETTABLEKS                       R6 R6 K12 ["Framework"]
       48 CALL                             R5 1 1
       49 GETTABLEKS                       R6 R5 K13 ["ContextServices"]
       51 GETTABLEKS                       R7 R6 K14 ["withContext"]
       53 GETTABLEKS                       R8 R5 K15 ["UI"]
       55 JUMPIFNOT                        R1 ; [+2]
       56 LOADNIL                          R9
       57 JUMP                             ; [+2]
       58 GETTABLEKS                       R9 R8 K16 ["Container"]
       60 GETTABLEKS                       R10 R8 K17 ["Pane"]
       62 GETTABLEKS                       R11 R8 K18 ["LoadingIndicator"]
       64 GETTABLEKS                       R12 R8 K19 ["ScrollingFrame"]
       66 GETTABLEKS                       R13 R8 K20 ["TextLabel"]
       68 JUMPIFNOT                        R1 ; [+2]
       69 LOADNIL                          R14
       70 JUMP                             ; [+2]
       71 GETTABLEKS                       R14 R2 K21 ["FitFrameOnAxis"]
       73 GETIMPORT                        R15 K4 [require]
       75 GETTABLEKS                       R16 R0 K5 ["Src"]
       77 GETTABLEKS                       R16 R16 K22 ["Components"]
       79 GETTABLEKS                       R16 R16 K23 ["Header"]
       81 CALL                             R15 1 1
       82 GETIMPORT                        R16 K4 [require]
       84 GETTABLEKS                       R17 R0 K5 ["Src"]
       86 GETTABLEKS                       R17 R17 K22 ["Components"]
       88 GETTABLEKS                       R17 R17 K24 ["SettingsPages"]
       90 GETTABLEKS                       R17 R17 K25 ["LoadFailedPage"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K4 [require]
       95 GETTABLEKS                       R18 R0 K5 ["Src"]
       97 GETTABLEKS                       R18 R18 K26 ["Thunks"]
       99 GETTABLEKS                       R18 R18 K27 ["LoadPageSettings"]
      101 CALL                             R17 1 1
      102 GETIMPORT                        R18 K4 [require]
      104 GETTABLEKS                       R19 R0 K5 ["Src"]
      106 GETTABLEKS                       R19 R19 K26 ["Thunks"]
      108 GETTABLEKS                       R19 R19 K28 ["SavePageSettings"]
      110 CALL                             R18 1 1
      111 GETIMPORT                        R19 K4 [require]
      113 GETTABLEKS                       R20 R0 K5 ["Src"]
      115 GETTABLEKS                       R20 R20 K29 ["Actions"]
      117 GETTABLEKS                       R20 R20 K30 ["SetPageSaveState"]
      119 CALL                             R19 1 1
      120 GETIMPORT                        R20 K4 [require]
      122 GETTABLEKS                       R21 R0 K5 ["Src"]
      124 GETTABLEKS                       R21 R21 K31 ["Util"]
      126 GETTABLEKS                       R21 R21 K32 ["LoadState"]
      128 CALL                             R20 1 1
      129 GETIMPORT                        R21 K4 [require]
      131 GETTABLEKS                       R22 R0 K5 ["Src"]
      133 GETTABLEKS                       R22 R22 K31 ["Util"]
      135 GETTABLEKS                       R22 R22 K33 ["SaveState"]
      137 CALL                             R21 1 1
      138 GETTABLEKS                       R22 R3 K34 ["Component"]
      140 GETIMPORT                        R24 K1 [script]
      142 GETTABLEKS                       R24 R24 K35 ["Name"]
      144 NAMECALL                         R22 R22 K36 ["extend"]
      146 CALL                             R22 2 1
      147 DUPCLOSURE                       R23 K37 [PROTO_1]
      148 CAPTURE                          VAL R3
      149 SETTABLEKS                       R23 R22 K38 ["init"]
      151 DUPCLOSURE                       R23 K39 [PROTO_2]
      152 CAPTURE                          VAL R20
      153 CAPTURE                          VAL R21
      154 SETTABLEKS                       R23 R22 K40 ["didMount"]
      156 DUPCLOSURE                       R23 K41 [PROTO_3]
      157 CAPTURE                          VAL R21
      158 SETTABLEKS                       R23 R22 K42 ["didUpdate"]
      160 DUPCLOSURE                       R23 K43 [PROTO_5]
      161 CAPTURE                          VAL R20
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R1
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R9
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R16
      168 CAPTURE                          VAL R12
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R15
      171 CAPTURE                          VAL R14
      172 SETTABLEKS                       R23 R22 K44 ["render"]
      174 MOVE                             R23 R7
      175 DUPTABLE                         R24 K46 [{"Stylizer"}]
      176 GETTABLEKS                       R25 R6 K45 ["Stylizer"]
      178 SETTABLEKS                       R25 R24 K45 ["Stylizer"]
      180 CALL                             R23 1 1
      181 MOVE                             R24 R22
      182 CALL                             R23 1 1
      183 MOVE                             R22 R23
      184 GETTABLEKS                       R23 R4 K47 ["connect"]
      186 DUPCLOSURE                       R24 K48 [PROTO_6]
      187 CAPTURE                          VAL R20
      188 DUPCLOSURE                       R25 K49 [PROTO_10]
      189 CAPTURE                          VAL R17
      190 CAPTURE                          VAL R18
      191 CAPTURE                          VAL R19
      192 CALL                             R23 2 1
      193 MOVE                             R24 R22
      194 CALL                             R23 1 1
      195 MOVE                             R22 R23
      196 RETURN                           R22 1
