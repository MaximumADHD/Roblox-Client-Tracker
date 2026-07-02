PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{[1] = "interaction", ["telemetrySubtype"] = "tutorial_tile", ["action"] = "close"}]
        3 NAMECALL                         R0 R0 K7 ["log"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K8 ["onClose"]
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K8 ["onClose"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{[1] = "interaction", ["telemetrySubtype"] = "tutorial_tile", ["action"] = "start_tour"}]
        3 NAMECALL                         R0 R0 K7 ["log"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 2
        7 NAMECALL                         R0 R0 K8 ["startTutorial"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBinding"]
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
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       20 NEWCLOSURE                       R8 P0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U5
       23 NEWTABLE                         R9 0 1
       25 MOVE                             R10 R2
       26 SETLIST                          R9 R10 1 [1]
       28 CALL                             R7 2 1
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K3 ["createElement"]
       32 GETUPVAL                         R9 6
       33 DUPTABLE                         R10 K12 [{["ClipsDescendants"] = True, ["tag"] = "size-full-0 auto-y stroke-default radius-medium", ["stateLayer"], ["onStateChanged"], ["testId"] = "--start-page-TutorialTile"}]
       34 DUPTABLE                         R11 K14 [{"affordance"}]
       35 GETUPVAL                         R12 7
       36 GETTABLEKS                       R12 R12 K15 ["None"]
       38 SETTABLEKS                       R12 R11 K13 ["affordance"]
       40 SETTABLEKS                       R11 R10 K8 ["stateLayer"]
       42 SETTABLEKS                       R7 R10 K9 ["onStateChanged"]
       44 DUPTABLE                         R11 K17 [{"CityImage"}]
       45 GETUPVAL                         R12 0
       46 GETTABLEKS                       R12 R12 K3 ["createElement"]
       48 GETUPVAL                         R13 8
       49 DUPTABLE                         R14 K21 [{["ZIndex"] = 1, ["tag"] = "size-full-0 auto-y"}]
       50 DUPTABLE                         R15 K24 [{"BackgroundImage", "Container"}]
       51 GETUPVAL                         R16 0
       52 GETTABLEKS                       R16 R16 K3 ["createElement"]
       54 GETUPVAL                         R17 9
       55 DUPTABLE                         R18 K29 [{["Image"] = "rbxasset://textures/StartPage/Tour3Screenshot.png", ["ScaleType"], ["tag"] = "align-x-right size-full padding-medium radius-medium bg-over-media-0"}]
       56 GETIMPORT                        R19 K32 [Enum.ScaleType.Crop]
       58 SETTABLEKS                       R19 R18 K27 ["ScaleType"]
       60 DUPTABLE                         R19 K35 [{"Gradient", "CancelButton"}]
       61 GETUPVAL                         R20 0
       62 GETTABLEKS                       R20 R20 K3 ["createElement"]
       64 LOADK                            R21 K36 ["UIGradient"]
       65 DUPTABLE                         R22 K38 [{"Transparency"}]
       66 GETUPVAL                         R23 10
       67 SETTABLEKS                       R23 R22 K37 ["Transparency"]
       69 CALL                             R20 2 1
       70 SETTABLEKS                       R20 R19 K33 ["Gradient"]
       72 GETUPVAL                         R20 0
       73 GETTABLEKS                       R20 R20 K3 ["createElement"]
       75 GETUPVAL                         R21 11
       76 DUPTABLE                         R22 K41 [{"onActivated", "Visible"}]
       77 NEWCLOSURE                       R23 P1
       78 CAPTURE                          VAL R3
       79 CAPTURE                          UPVAL U12
       80 CAPTURE                          VAL R0
       81 SETTABLEKS                       R23 R22 K39 ["onActivated"]
       83 SETTABLEKS                       R1 R22 K40 ["Visible"]
       85 CALL                             R20 2 1
       86 SETTABLEKS                       R20 R19 K34 ["CancelButton"]
       88 CALL                             R16 3 1
       89 SETTABLEKS                       R16 R15 K22 ["BackgroundImage"]
       91 GETUPVAL                         R16 0
       92 GETTABLEKS                       R16 R16 K3 ["createElement"]
       94 GETUPVAL                         R17 6
       95 DUPTABLE                         R18 K46 [{["ZIndex"] = 2, ["padding"], ["Size"], ["tag"] = "col gap-xlarge auto-y"}]
       96 DUPTABLE                         R19 K50 [{"left", "top", "bottom"}]
       97 GETIMPORT                        R20 K53 [UDim.new]
       99 LOADN                            R21 0
      100 GETTABLEKS                       R22 R6 K44 ["Size"]
      102 GETTABLEKS                       R22 R22 K54 ["Size_800"]
      104 CALL                             R20 2 1
      105 SETTABLEKS                       R20 R19 K47 ["left"]
      107 GETIMPORT                        R20 K53 [UDim.new]
      109 LOADN                            R21 0
      110 GETTABLEKS                       R22 R6 K44 ["Size"]
      112 GETTABLEKS                       R22 R22 K54 ["Size_800"]
      114 CALL                             R20 2 1
      115 SETTABLEKS                       R20 R19 K48 ["top"]
      117 GETIMPORT                        R20 K53 [UDim.new]
      119 LOADN                            R21 0
      120 GETTABLEKS                       R22 R6 K44 ["Size"]
      122 GETTABLEKS                       R22 R22 K54 ["Size_800"]
      124 CALL                             R20 2 1
      125 SETTABLEKS                       R20 R19 K49 ["bottom"]
      127 SETTABLEKS                       R19 R18 K43 ["padding"]
      129 GETIMPORT                        R19 K57 [UDim2.fromOffset]
      131 LOADN                            R20 345
      132 LOADN                            R21 0
      133 CALL                             R19 2 1
      134 SETTABLEKS                       R19 R18 K44 ["Size"]
      136 DUPTABLE                         R19 K60 [{"Text", "Button"}]
      137 GETUPVAL                         R20 0
      138 GETTABLEKS                       R20 R20 K3 ["createElement"]
      140 GETUPVAL                         R21 8
      141 DUPTABLE                         R22 K62 [{["tag"] = "col gap-small auto-xy"}]
      142 DUPTABLE                         R23 K65 [{"Title", "Description"}]
      143 GETUPVAL                         R24 0
      144 GETTABLEKS                       R24 R24 K3 ["createElement"]
      146 GETUPVAL                         R25 13
      147 DUPTABLE                         R26 K68 [{["Text"], ["LayoutOrder"], ["tag"] = "auto-xy text-heading-medium text-align-x-left content-emphasis"}]
      148 LOADK                            R29 K69 ["Plugin"]
      149 LOADK                            R30 K70 ["TutorialTile.TourTitle"]
      150 NAMECALL                         R27 R4 K71 ["getText"]
      152 CALL                             R27 3 1
      153 SETTABLEKS                       R27 R26 K58 ["Text"]
      155 MOVE                             R27 R5
      156 CALL                             R27 0 1
      157 SETTABLEKS                       R27 R26 K66 ["LayoutOrder"]
      159 CALL                             R24 2 1
      160 SETTABLEKS                       R24 R23 K63 ["Title"]
      162 GETUPVAL                         R24 0
      163 GETTABLEKS                       R24 R24 K3 ["createElement"]
      165 GETUPVAL                         R25 13
      166 DUPTABLE                         R26 K74 [{["Text"], ["TextWrapped"] = True, ["LayoutOrder"], ["tag"] = "auto-xy text-body-medium text-align-x-left content-emphasis"}]
      167 LOADK                            R29 K69 ["Plugin"]
      168 LOADK                            R30 K75 ["TutorialTile.TourDesc"]
      169 NAMECALL                         R27 R4 K71 ["getText"]
      171 CALL                             R27 3 1
      172 SETTABLEKS                       R27 R26 K58 ["Text"]
      174 MOVE                             R27 R5
      175 CALL                             R27 0 1
      176 SETTABLEKS                       R27 R26 K66 ["LayoutOrder"]
      178 CALL                             R24 2 1
      179 SETTABLEKS                       R24 R23 K64 ["Description"]
      181 CALL                             R20 3 1
      182 SETTABLEKS                       R20 R19 K58 ["Text"]
      184 GETUPVAL                         R20 0
      185 GETTABLEKS                       R20 R20 K3 ["createElement"]
      187 GETUPVAL                         R21 14
      188 DUPTABLE                         R22 K79 [{"size", "variant", "LayoutOrder", "onActivated", "text"}]
      189 GETUPVAL                         R23 15
      190 GETTABLEKS                       R23 R23 K80 ["Medium"]
      192 SETTABLEKS                       R23 R22 K76 ["size"]
      194 GETUPVAL                         R23 16
      195 GETTABLEKS                       R23 R23 K81 ["Emphasis"]
      197 SETTABLEKS                       R23 R22 K77 ["variant"]
      199 MOVE                             R23 R5
      200 CALL                             R23 0 1
      201 SETTABLEKS                       R23 R22 K66 ["LayoutOrder"]
      203 NEWCLOSURE                       R23 P2
      204 CAPTURE                          VAL R3
      205 CAPTURE                          UPVAL U12
      206 CAPTURE                          UPVAL U17
      207 SETTABLEKS                       R23 R22 K39 ["onActivated"]
      209 LOADK                            R25 K69 ["Plugin"]
      210 LOADK                            R26 K82 ["TutorialTile.StartButton"]
      211 NAMECALL                         R23 R4 K71 ["getText"]
      213 CALL                             R23 3 1
      214 SETTABLEKS                       R23 R22 K78 ["text"]
      216 CALL                             R20 2 1
      217 SETTABLEKS                       R20 R19 K59 ["Button"]
      219 CALL                             R16 3 1
      220 SETTABLEKS                       R16 R15 K23 ["Container"]
      222 CALL                             R12 3 1
      223 SETTABLEKS                       R12 R11 K16 ["CityImage"]
      225 CALL                             R8 3 -1
      226 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Util"]
       23 GETTABLEKS                       R3 R3 K10 ["counter"]
       25 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       27 GETTABLEKS                       R4 R4 K12 ["Localization"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R0 K13 ["Src"]
       33 GETTABLEKS                       R6 R6 K9 ["Util"]
       35 GETTABLEKS                       R6 R6 K14 ["Telemetry"]
       37 GETTABLEKS                       R6 R6 K15 ["TelemetryContext"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Src"]
       44 GETTABLEKS                       R7 R7 K9 ["Util"]
       46 GETTABLEKS                       R7 R7 K14 ["Telemetry"]
       48 GETTABLEKS                       R7 R7 K16 ["StartPageTelemetryEvent"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K13 ["Src"]
       55 GETTABLEKS                       R8 R8 K9 ["Util"]
       57 GETTABLEKS                       R8 R8 K17 ["Services"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R7 K18 ["StartPageManager"]
       62 GETIMPORT                        R9 K5 [require]
       64 GETTABLEKS                       R10 R0 K13 ["Src"]
       66 GETTABLEKS                       R10 R10 K9 ["Util"]
       68 GETTABLEKS                       R10 R10 K19 ["Foundation"]
       70 CALL                             R9 1 1
       71 GETTABLEKS                       R10 R9 K20 ["Text"]
       73 GETTABLEKS                       R11 R9 K21 ["Image"]
       75 GETTABLEKS                       R12 R9 K22 ["Button"]
       77 GETTABLEKS                       R13 R9 K23 ["View"]
       79 GETTABLEKS                       R14 R9 K24 ["Hooks"]
       81 GETTABLEKS                       R14 R14 K25 ["useTokens"]
       83 GETTABLEKS                       R15 R9 K26 ["Enums"]
       85 GETTABLEKS                       R15 R15 K27 ["ButtonVariant"]
       87 GETTABLEKS                       R16 R9 K26 ["Enums"]
       89 GETTABLEKS                       R16 R16 K28 ["InputSize"]
       91 GETTABLEKS                       R17 R9 K26 ["Enums"]
       93 GETTABLEKS                       R17 R17 K29 ["ControlState"]
       95 GETTABLEKS                       R18 R9 K26 ["Enums"]
       97 GETTABLEKS                       R18 R18 K30 ["StateLayerAffordance"]
       99 GETIMPORT                        R19 K5 [require]
      101 GETTABLEKS                       R20 R0 K13 ["Src"]
      103 GETTABLEKS                       R20 R20 K19 ["Foundation"]
      105 GETTABLEKS                       R20 R20 K31 ["Components"]
      107 GETTABLEKS                       R20 R20 K32 ["Frame"]
      109 CALL                             R19 1 1
      110 GETIMPORT                        R20 K5 [require]
      112 GETTABLEKS                       R21 R0 K13 ["Src"]
      114 GETTABLEKS                       R21 R21 K19 ["Foundation"]
      116 GETTABLEKS                       R21 R21 K31 ["Components"]
      118 GETTABLEKS                       R21 R21 K33 ["OverMediaCloseButton"]
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
