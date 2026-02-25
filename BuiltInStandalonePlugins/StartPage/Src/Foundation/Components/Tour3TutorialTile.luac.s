PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K3 [{"telemetryType", "telemetrySubtype", "action"}]
        3 LOADK                            R4 K4 ["interaction"]
        4 SETTABLEKS                       R4 R3 K0 ["telemetryType"]
        6 LOADK                            R4 K5 ["tutorial_tile"]
        7 SETTABLEKS                       R4 R3 K1 ["telemetrySubtype"]
        9 LOADK                            R4 K6 ["close"]
       10 SETTABLEKS                       R4 R3 K2 ["action"]
       12 NAMECALL                         R0 R0 K7 ["log"]
       14 CALL                             R0 3 0
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R0 R1 K8 ["onClose"]
       18 JUMPIFNOT                        R0 ; [+4]
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R0 R1 K8 ["onClose"]
       22 CALL                             R0 0 0
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K3 [{"telemetryType", "telemetrySubtype", "action"}]
        3 LOADK                            R4 K4 ["interaction"]
        4 SETTABLEKS                       R4 R3 K0 ["telemetryType"]
        6 LOADK                            R4 K5 ["tutorial_tile"]
        7 SETTABLEKS                       R4 R3 K1 ["telemetrySubtype"]
        9 LOADK                            R4 K6 ["start_tour"]
       10 SETTABLEKS                       R4 R3 K2 ["action"]
       12 NAMECALL                         R0 R0 K7 ["log"]
       14 CALL                             R0 3 0
       15 GETUPVAL                         R0 2
       16 NAMECALL                         R0 R0 K8 ["startTutorial"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useBinding"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 NAMECALL                         R3 R3 K1 ["use"]
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 2
       10 NAMECALL                         R4 R4 K1 ["use"]
       12 CALL                             R4 1 1
       13 GETUPVAL                         R5 3
       14 CALL                             R5 0 1
       15 GETUPVAL                         R6 4
       16 CALL                             R6 0 1
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R7 R8 K2 ["useCallback"]
       20 NEWCLOSURE                       R8 P0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U5
       23 NEWTABLE                         R9 0 1
       25 MOVE                             R10 R2
       26 SETLIST                          R9 R10 1 [1]
       28 CALL                             R7 2 1
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R8 R9 K3 ["createElement"]
       32 GETUPVAL                         R9 6
       33 DUPTABLE                         R10 K9 [{"ClipsDescendants", "tag", "stateLayer", "onStateChanged", "testId"}]
       34 LOADB                            R11 1
       35 SETTABLEKS                       R11 R10 K4 ["ClipsDescendants"]
       37 LOADK                            R11 K10 ["size-full-0 auto-y radius-medium stroke-default"]
       38 SETTABLEKS                       R11 R10 K5 ["tag"]
       40 DUPTABLE                         R11 K12 [{"affordance"}]
       41 GETUPVAL                         R13 7
       42 GETTABLEKS                       R12 R13 K13 ["None"]
       44 SETTABLEKS                       R12 R11 K11 ["affordance"]
       46 SETTABLEKS                       R11 R10 K6 ["stateLayer"]
       48 SETTABLEKS                       R7 R10 K7 ["onStateChanged"]
       50 LOADK                            R11 K14 ["--start-page-TutorialTile"]
       51 SETTABLEKS                       R11 R10 K8 ["testId"]
       53 DUPTABLE                         R11 K16 [{"CityImage"}]
       54 GETUPVAL                         R13 0
       55 GETTABLEKS                       R12 R13 K3 ["createElement"]
       57 GETUPVAL                         R13 8
       58 DUPTABLE                         R14 K18 [{"ZIndex", "tag"}]
       59 LOADN                            R15 1
       60 SETTABLEKS                       R15 R14 K17 ["ZIndex"]
       62 LOADK                            R15 K19 ["size-full-0 auto-y"]
       63 SETTABLEKS                       R15 R14 K5 ["tag"]
       65 DUPTABLE                         R15 K22 [{"BackgroundImage", "Container"}]
       66 GETUPVAL                         R17 0
       67 GETTABLEKS                       R16 R17 K3 ["createElement"]
       69 GETUPVAL                         R17 9
       70 DUPTABLE                         R18 K25 [{"Image", "ScaleType", "tag"}]
       71 LOADK                            R19 K26 ["rbxasset://textures/StartPage/Tour3Screenshot.png"]
       72 SETTABLEKS                       R19 R18 K23 ["Image"]
       74 GETIMPORT                        R19 K29 [Enum.ScaleType.Crop]
       76 SETTABLEKS                       R19 R18 K24 ["ScaleType"]
       78 LOADK                            R19 K30 ["radius-medium size-full align-x-right padding-medium bg-over-media-0"]
       79 SETTABLEKS                       R19 R18 K5 ["tag"]
       81 DUPTABLE                         R19 K33 [{"Gradient", "CancelButton"}]
       82 GETUPVAL                         R21 0
       83 GETTABLEKS                       R20 R21 K3 ["createElement"]
       85 LOADK                            R21 K34 ["UIGradient"]
       86 DUPTABLE                         R22 K36 [{"Transparency"}]
       87 GETUPVAL                         R23 10
       88 SETTABLEKS                       R23 R22 K35 ["Transparency"]
       90 CALL                             R20 2 1
       91 SETTABLEKS                       R20 R19 K31 ["Gradient"]
       93 GETUPVAL                         R21 0
       94 GETTABLEKS                       R20 R21 K3 ["createElement"]
       96 GETUPVAL                         R21 11
       97 DUPTABLE                         R22 K39 [{"onActivated", "Visible"}]
       98 NEWCLOSURE                       R23 P1
       99 CAPTURE                          VAL R3
      100 CAPTURE                          UPVAL U12
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R23 R22 K37 ["onActivated"]
      104 SETTABLEKS                       R1 R22 K38 ["Visible"]
      106 CALL                             R20 2 1
      107 SETTABLEKS                       R20 R19 K32 ["CancelButton"]
      109 CALL                             R16 3 1
      110 SETTABLEKS                       R16 R15 K20 ["BackgroundImage"]
      112 GETUPVAL                         R17 0
      113 GETTABLEKS                       R16 R17 K3 ["createElement"]
      115 GETUPVAL                         R17 6
      116 DUPTABLE                         R18 K42 [{"ZIndex", "padding", "Size", "tag"}]
      117 LOADN                            R19 2
      118 SETTABLEKS                       R19 R18 K17 ["ZIndex"]
      120 DUPTABLE                         R19 K46 [{"left", "top", "bottom"}]
      121 GETIMPORT                        R20 K49 [UDim.new]
      123 LOADN                            R21 0
      124 GETTABLEKS                       R23 R6 K41 ["Size"]
      126 GETTABLEKS                       R22 R23 K50 ["Size_800"]
      128 CALL                             R20 2 1
      129 SETTABLEKS                       R20 R19 K43 ["left"]
      131 GETIMPORT                        R20 K49 [UDim.new]
      133 LOADN                            R21 0
      134 GETTABLEKS                       R23 R6 K41 ["Size"]
      136 GETTABLEKS                       R22 R23 K50 ["Size_800"]
      138 CALL                             R20 2 1
      139 SETTABLEKS                       R20 R19 K44 ["top"]
      141 GETIMPORT                        R20 K49 [UDim.new]
      143 LOADN                            R21 0
      144 GETTABLEKS                       R23 R6 K41 ["Size"]
      146 GETTABLEKS                       R22 R23 K50 ["Size_800"]
      148 CALL                             R20 2 1
      149 SETTABLEKS                       R20 R19 K45 ["bottom"]
      151 SETTABLEKS                       R19 R18 K40 ["padding"]
      153 GETIMPORT                        R19 K53 [UDim2.fromOffset]
      155 LOADN                            R20 89
      156 LOADN                            R21 0
      157 CALL                             R19 2 1
      158 SETTABLEKS                       R19 R18 K41 ["Size"]
      160 LOADK                            R19 K54 ["col auto-y gap-xlarge"]
      161 SETTABLEKS                       R19 R18 K5 ["tag"]
      163 DUPTABLE                         R19 K57 [{"Text", "Button"}]
      164 GETUPVAL                         R21 0
      165 GETTABLEKS                       R20 R21 K3 ["createElement"]
      167 GETUPVAL                         R21 8
      168 DUPTABLE                         R22 K58 [{"tag"}]
      169 LOADK                            R23 K59 ["col gap-small auto-xy"]
      170 SETTABLEKS                       R23 R22 K5 ["tag"]
      172 DUPTABLE                         R23 K62 [{"Title", "Description"}]
      173 GETUPVAL                         R25 0
      174 GETTABLEKS                       R24 R25 K3 ["createElement"]
      176 GETUPVAL                         R25 13
      177 DUPTABLE                         R26 K64 [{"Text", "LayoutOrder", "tag"}]
      178 LOADK                            R29 K65 ["Plugin"]
      179 LOADK                            R30 K66 ["TutorialTile.TourTitle"]
      180 NAMECALL                         R27 R4 K67 ["getText"]
      182 CALL                             R27 3 1
      183 SETTABLEKS                       R27 R26 K55 ["Text"]
      185 MOVE                             R27 R5
      186 CALL                             R27 0 1
      187 SETTABLEKS                       R27 R26 K63 ["LayoutOrder"]
      189 LOADK                            R27 K68 ["auto-xy text-align-x-left content-emphasis text-heading-medium"]
      190 SETTABLEKS                       R27 R26 K5 ["tag"]
      192 CALL                             R24 2 1
      193 SETTABLEKS                       R24 R23 K60 ["Title"]
      195 GETUPVAL                         R25 0
      196 GETTABLEKS                       R24 R25 K3 ["createElement"]
      198 GETUPVAL                         R25 13
      199 DUPTABLE                         R26 K70 [{"Text", "TextWrapped", "LayoutOrder", "tag"}]
      200 LOADK                            R29 K65 ["Plugin"]
      201 LOADK                            R30 K71 ["TutorialTile.TourDesc"]
      202 NAMECALL                         R27 R4 K67 ["getText"]
      204 CALL                             R27 3 1
      205 SETTABLEKS                       R27 R26 K55 ["Text"]
      207 LOADB                            R27 1
      208 SETTABLEKS                       R27 R26 K69 ["TextWrapped"]
      210 MOVE                             R27 R5
      211 CALL                             R27 0 1
      212 SETTABLEKS                       R27 R26 K63 ["LayoutOrder"]
      214 LOADK                            R27 K72 ["auto-xy text-align-x-left content-emphasis text-body-medium"]
      215 SETTABLEKS                       R27 R26 K5 ["tag"]
      217 CALL                             R24 2 1
      218 SETTABLEKS                       R24 R23 K61 ["Description"]
      220 CALL                             R20 3 1
      221 SETTABLEKS                       R20 R19 K55 ["Text"]
      223 GETUPVAL                         R21 0
      224 GETTABLEKS                       R20 R21 K3 ["createElement"]
      226 GETUPVAL                         R21 14
      227 DUPTABLE                         R22 K76 [{"size", "variant", "LayoutOrder", "onActivated", "text"}]
      228 GETUPVAL                         R24 15
      229 GETTABLEKS                       R23 R24 K77 ["Medium"]
      231 SETTABLEKS                       R23 R22 K73 ["size"]
      233 GETUPVAL                         R24 16
      234 GETTABLEKS                       R23 R24 K78 ["Emphasis"]
      236 SETTABLEKS                       R23 R22 K74 ["variant"]
      238 MOVE                             R23 R5
      239 CALL                             R23 0 1
      240 SETTABLEKS                       R23 R22 K63 ["LayoutOrder"]
      242 NEWCLOSURE                       R23 P2
      243 CAPTURE                          VAL R3
      244 CAPTURE                          UPVAL U12
      245 CAPTURE                          UPVAL U17
      246 SETTABLEKS                       R23 R22 K37 ["onActivated"]
      248 LOADK                            R25 K65 ["Plugin"]
      249 LOADK                            R26 K79 ["TutorialTile.StartButton"]
      250 NAMECALL                         R23 R4 K67 ["getText"]
      252 CALL                             R23 3 1
      253 SETTABLEKS                       R23 R22 K75 ["text"]
      255 CALL                             R20 2 1
      256 SETTABLEKS                       R20 R19 K56 ["Button"]
      258 CALL                             R16 3 1
      259 SETTABLEKS                       R16 R15 K21 ["Container"]
      261 CALL                             R12 3 1
      262 SETTABLEKS                       R12 R11 K15 ["CityImage"]
      264 CALL                             R8 3 -1
      265 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R2 K9 ["Util"]
       23 GETTABLEKS                       R3 R4 K10 ["counter"]
       25 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       27 GETTABLEKS                       R4 R5 K12 ["Localization"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R9 R0 K13 ["Src"]
       33 GETTABLEKS                       R8 R9 K9 ["Util"]
       35 GETTABLEKS                       R7 R8 K14 ["Telemetry"]
       37 GETTABLEKS                       R6 R7 K15 ["TelemetryContext"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R10 R0 K13 ["Src"]
       44 GETTABLEKS                       R9 R10 K9 ["Util"]
       46 GETTABLEKS                       R8 R9 K14 ["Telemetry"]
       48 GETTABLEKS                       R7 R8 K16 ["StartPageTelemetryEvent"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K13 ["Src"]
       55 GETTABLEKS                       R9 R10 K9 ["Util"]
       57 GETTABLEKS                       R8 R9 K17 ["Services"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R7 K18 ["StartPageManager"]
       62 GETIMPORT                        R9 K5 [require]
       64 GETTABLEKS                       R12 R0 K13 ["Src"]
       66 GETTABLEKS                       R11 R12 K9 ["Util"]
       68 GETTABLEKS                       R10 R11 K19 ["Foundation"]
       70 CALL                             R9 1 1
       71 GETTABLEKS                       R10 R9 K20 ["Text"]
       73 GETTABLEKS                       R11 R9 K21 ["Image"]
       75 GETTABLEKS                       R12 R9 K22 ["Button"]
       77 GETTABLEKS                       R13 R9 K23 ["View"]
       79 GETTABLEKS                       R15 R9 K24 ["Hooks"]
       81 GETTABLEKS                       R14 R15 K25 ["useTokens"]
       83 GETTABLEKS                       R16 R9 K26 ["Enums"]
       85 GETTABLEKS                       R15 R16 K27 ["ButtonVariant"]
       87 GETTABLEKS                       R17 R9 K26 ["Enums"]
       89 GETTABLEKS                       R16 R17 K28 ["InputSize"]
       91 GETTABLEKS                       R18 R9 K26 ["Enums"]
       93 GETTABLEKS                       R17 R18 K29 ["ControlState"]
       95 GETTABLEKS                       R19 R9 K26 ["Enums"]
       97 GETTABLEKS                       R18 R19 K30 ["StateLayerAffordance"]
       99 GETIMPORT                        R19 K5 [require]
      101 GETTABLEKS                       R23 R0 K13 ["Src"]
      103 GETTABLEKS                       R22 R23 K19 ["Foundation"]
      105 GETTABLEKS                       R21 R22 K31 ["Components"]
      107 GETTABLEKS                       R20 R21 K32 ["Frame"]
      109 CALL                             R19 1 1
      110 GETIMPORT                        R20 K5 [require]
      112 GETTABLEKS                       R24 R0 K13 ["Src"]
      114 GETTABLEKS                       R23 R24 K19 ["Foundation"]
      116 GETTABLEKS                       R22 R23 K31 ["Components"]
      118 GETTABLEKS                       R21 R22 K33 ["OverMediaCloseButton"]
      120 CALL                             R20 1 1
      121 GETIMPORT                        R21 K36 [NumberSequence.new]
      123 NEWTABLE                         R22 0 3
      125 GETIMPORT                        R23 K38 [NumberSequenceKeypoint.new]
      127 LOADN                            R24 0
      128 LOADK                            R25 K39 [0.95]
      129 CALL                             R23 2 1
      130 GETIMPORT                        R24 K38 [NumberSequenceKeypoint.new]
      132 LOADK                            R25 K40 [0.7235]
      133 LOADK                            R26 K41 [0.1]
      134 CALL                             R24 2 1
      135 GETIMPORT                        R25 K38 [NumberSequenceKeypoint.new]
      137 LOADN                            R26 1
      138 LOADN                            R27 0
      139 CALL                             R25 2 -1
      140 SETLIST                          R22 R23 -1 [1]
      142 CALL                             R21 1 1
      143 DUPCLOSURE                       R22 K42 [PROTO_3]
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R21
      155 CAPTURE                          VAL R20
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R15
      161 CAPTURE                          VAL R8
      162 RETURN                           R22 1
