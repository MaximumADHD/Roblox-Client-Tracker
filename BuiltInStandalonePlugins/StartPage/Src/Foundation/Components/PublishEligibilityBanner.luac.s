PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["openLink"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["openLink"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 2
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 3
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 3
       13 CALL                             R5 0 1
       14 GETUPVAL                         R6 4
       15 GETTABLEKS                       R6 R6 K1 ["createElement"]
       17 GETUPVAL                         R7 5
       18 DUPTABLE                         R8 K9 [{["ClipsDescendants"] = True, ["tag"] = "size-full-0 auto-y stroke-default radius-medium", ["stateLayer"], ["testId"] = "--start-page-PublishEligibilityBanner"}]
       19 DUPTABLE                         R9 K11 [{"affordance"}]
       20 GETUPVAL                         R10 6
       21 GETTABLEKS                       R10 R10 K12 ["None"]
       23 SETTABLEKS                       R10 R9 K10 ["affordance"]
       25 SETTABLEKS                       R9 R8 K6 ["stateLayer"]
       27 DUPTABLE                         R9 K14 [{"CityImage"}]
       28 GETUPVAL                         R10 4
       29 GETTABLEKS                       R10 R10 K1 ["createElement"]
       31 GETUPVAL                         R11 7
       32 DUPTABLE                         R12 K18 [{["ZIndex"] = 1, ["tag"] = "size-full-0 auto-y"}]
       33 DUPTABLE                         R13 K21 [{"BackgroundImage", "Container"}]
       34 GETUPVAL                         R14 4
       35 GETTABLEKS                       R14 R14 K1 ["createElement"]
       37 GETUPVAL                         R15 8
       38 DUPTABLE                         R16 K26 [{["Image"] = "rbxassetid://139623189013485", ["ScaleType"], ["tag"] = "align-x-right size-full padding-medium radius-medium bg-over-media-0"}]
       39 GETIMPORT                        R17 K29 [Enum.ScaleType.Crop]
       41 SETTABLEKS                       R17 R16 K24 ["ScaleType"]
       43 DUPTABLE                         R17 K31 [{"Gradient"}]
       44 GETUPVAL                         R18 4
       45 GETTABLEKS                       R18 R18 K1 ["createElement"]
       47 LOADK                            R19 K32 ["UIGradient"]
       48 DUPTABLE                         R20 K34 [{"Transparency"}]
       49 GETUPVAL                         R21 9
       50 SETTABLEKS                       R21 R20 K33 ["Transparency"]
       52 CALL                             R18 2 1
       53 SETTABLEKS                       R18 R17 K30 ["Gradient"]
       55 CALL                             R14 3 1
       56 SETTABLEKS                       R14 R13 K19 ["BackgroundImage"]
       58 GETUPVAL                         R14 4
       59 GETTABLEKS                       R14 R14 K1 ["createElement"]
       61 GETUPVAL                         R15 5
       62 DUPTABLE                         R16 K39 [{["ZIndex"] = 2, ["padding"], ["Size"], ["tag"] = "col gap-xlarge auto-y"}]
       63 DUPTABLE                         R17 K43 [{"left", "top", "bottom"}]
       64 GETIMPORT                        R18 K46 [UDim.new]
       66 LOADN                            R19 0
       67 GETTABLEKS                       R20 R1 K37 ["Size"]
       69 GETTABLEKS                       R20 R20 K47 ["Size_800"]
       71 CALL                             R18 2 1
       72 SETTABLEKS                       R18 R17 K40 ["left"]
       74 GETIMPORT                        R18 K46 [UDim.new]
       76 LOADN                            R19 0
       77 GETTABLEKS                       R20 R1 K37 ["Size"]
       79 GETTABLEKS                       R20 R20 K47 ["Size_800"]
       81 CALL                             R18 2 1
       82 SETTABLEKS                       R18 R17 K41 ["top"]
       84 GETIMPORT                        R18 K46 [UDim.new]
       86 LOADN                            R19 0
       87 GETTABLEKS                       R20 R1 K37 ["Size"]
       89 GETTABLEKS                       R20 R20 K47 ["Size_800"]
       91 CALL                             R18 2 1
       92 SETTABLEKS                       R18 R17 K42 ["bottom"]
       94 SETTABLEKS                       R17 R16 K36 ["padding"]
       96 GETIMPORT                        R17 K49 [UDim2.new]
       98 LOADK                            R18 K50 [0.5]
       99 LOADN                            R19 0
      100 LOADN                            R20 0
      101 LOADN                            R21 0
      102 CALL                             R17 4 1
      103 SETTABLEKS                       R17 R16 K37 ["Size"]
      105 DUPTABLE                         R17 K53 [{"Text", "Buttons"}]
      106 GETUPVAL                         R18 4
      107 GETTABLEKS                       R18 R18 K1 ["createElement"]
      109 GETUPVAL                         R19 7
      110 DUPTABLE                         R20 K56 [{["LayoutOrder"], ["tag"] = "col gap-small size-full-0 auto-y"}]
      111 MOVE                             R21 R3
      112 CALL                             R21 0 1
      113 SETTABLEKS                       R21 R20 K54 ["LayoutOrder"]
      115 DUPTABLE                         R21 K59 [{"Title", "Description"}]
      116 GETUPVAL                         R22 4
      117 GETTABLEKS                       R22 R22 K1 ["createElement"]
      119 GETUPVAL                         R23 10
      120 DUPTABLE                         R24 K61 [{["Text"], ["LayoutOrder"], ["tag"] = "size-full-0 auto-y text-heading-medium text-align-x-left content-emphasis"}]
      121 LOADK                            R27 K62 ["Plugin"]
      122 LOADK                            R28 K63 ["PublishEligibilityBanner.Title"]
      123 NAMECALL                         R25 R0 K64 ["getText"]
      125 CALL                             R25 3 1
      126 SETTABLEKS                       R25 R24 K51 ["Text"]
      128 MOVE                             R25 R4
      129 CALL                             R25 0 1
      130 SETTABLEKS                       R25 R24 K54 ["LayoutOrder"]
      132 CALL                             R22 2 1
      133 SETTABLEKS                       R22 R21 K57 ["Title"]
      135 GETUPVAL                         R22 4
      136 GETTABLEKS                       R22 R22 K1 ["createElement"]
      138 GETUPVAL                         R23 10
      139 DUPTABLE                         R24 K67 [{["Text"], ["TextWrapped"] = True, ["LayoutOrder"], ["tag"] = "size-full-0 auto-y text-body-medium text-align-x-left content-emphasis"}]
      140 LOADK                            R27 K62 ["Plugin"]
      141 LOADK                            R28 K68 ["PublishEligibilityBanner.Description"]
      142 NAMECALL                         R25 R0 K64 ["getText"]
      144 CALL                             R25 3 1
      145 SETTABLEKS                       R25 R24 K51 ["Text"]
      147 MOVE                             R25 R4
      148 CALL                             R25 0 1
      149 SETTABLEKS                       R25 R24 K54 ["LayoutOrder"]
      151 CALL                             R22 2 1
      152 SETTABLEKS                       R22 R21 K58 ["Description"]
      154 CALL                             R18 3 1
      155 SETTABLEKS                       R18 R17 K51 ["Text"]
      157 GETUPVAL                         R18 4
      158 GETTABLEKS                       R18 R18 K1 ["createElement"]
      160 GETUPVAL                         R19 7
      161 DUPTABLE                         R20 K70 [{["LayoutOrder"], ["tag"] = "row gap-small auto-xy"}]
      162 MOVE                             R21 R3
      163 CALL                             R21 0 1
      164 SETTABLEKS                       R21 R20 K54 ["LayoutOrder"]
      166 DUPTABLE                         R21 K73 [{"CheckEligibilityButton", "LearnMoreButton"}]
      167 GETUPVAL                         R22 4
      168 GETTABLEKS                       R22 R22 K1 ["createElement"]
      170 GETUPVAL                         R23 11
      171 DUPTABLE                         R24 K78 [{"size", "variant", "LayoutOrder", "onActivated", "text"}]
      172 GETUPVAL                         R25 12
      173 GETTABLEKS                       R25 R25 K79 ["Medium"]
      175 SETTABLEKS                       R25 R24 K74 ["size"]
      177 GETUPVAL                         R25 13
      178 GETTABLEKS                       R25 R25 K80 ["Emphasis"]
      180 SETTABLEKS                       R25 R24 K75 ["variant"]
      182 MOVE                             R25 R5
      183 CALL                             R25 0 1
      184 SETTABLEKS                       R25 R24 K54 ["LayoutOrder"]
      186 DUPCLOSURE                       R25 K81 [PROTO_0]
      187 CAPTURE                          UPVAL U14
      188 CAPTURE                          UPVAL U15
      189 SETTABLEKS                       R25 R24 K76 ["onActivated"]
      191 LOADK                            R27 K62 ["Plugin"]
      192 LOADK                            R28 K82 ["PublishEligibilityBanner.CheckEligibilityAction"]
      193 NAMECALL                         R25 R0 K64 ["getText"]
      195 CALL                             R25 3 1
      196 SETTABLEKS                       R25 R24 K77 ["text"]
      198 CALL                             R22 2 1
      199 SETTABLEKS                       R22 R21 K71 ["CheckEligibilityButton"]
      201 JUMPIFEQKS                       R2 K83 [""] ; [+34]
      203 GETUPVAL                         R22 4
      204 GETTABLEKS                       R22 R22 K1 ["createElement"]
      206 GETUPVAL                         R23 11
      207 DUPTABLE                         R24 K78 [{"size", "variant", "LayoutOrder", "onActivated", "text"}]
      208 GETUPVAL                         R25 12
      209 GETTABLEKS                       R25 R25 K79 ["Medium"]
      211 SETTABLEKS                       R25 R24 K74 ["size"]
      213 GETUPVAL                         R25 13
      214 GETTABLEKS                       R25 R25 K84 ["Standard"]
      216 SETTABLEKS                       R25 R24 K75 ["variant"]
      218 MOVE                             R25 R5
      219 CALL                             R25 0 1
      220 SETTABLEKS                       R25 R24 K54 ["LayoutOrder"]
      222 NEWCLOSURE                       R25 P1
      223 CAPTURE                          UPVAL U14
      224 CAPTURE                          VAL R2
      225 SETTABLEKS                       R25 R24 K76 ["onActivated"]
      227 LOADK                            R27 K62 ["Plugin"]
      228 LOADK                            R28 K85 ["PublishEligibilityBanner.LearnMoreAction"]
      229 NAMECALL                         R25 R0 K64 ["getText"]
      231 CALL                             R25 3 1
      232 SETTABLEKS                       R25 R24 K77 ["text"]
      234 CALL                             R22 2 1
      235 JUMP                             ; [+1]
      236 LOADNIL                          R22
      237 SETTABLEKS                       R22 R21 K72 ["LearnMoreButton"]
      239 CALL                             R18 3 1
      240 SETTABLEKS                       R18 R17 K52 ["Buttons"]
      242 CALL                             R14 3 1
      243 SETTABLEKS                       R14 R13 K20 ["Container"]
      245 CALL                             R10 3 1
      246 SETTABLEKS                       R10 R9 K13 ["CityImage"]
      248 CALL                             R6 3 -1
      249 RETURN                           R6 -1

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
       35 GETTABLEKS                       R6 R6 K14 ["Services"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R5 K15 ["StartPageManager"]
       40 GETIMPORT                        R7 K5 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Src"]
       44 GETTABLEKS                       R8 R8 K9 ["Util"]
       46 GETTABLEKS                       R8 R8 K16 ["Foundation"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R8 R7 K17 ["Text"]
       51 GETTABLEKS                       R9 R7 K18 ["Image"]
       53 GETTABLEKS                       R10 R7 K19 ["Button"]
       55 GETTABLEKS                       R11 R7 K20 ["View"]
       57 GETTABLEKS                       R12 R7 K21 ["Hooks"]
       59 GETTABLEKS                       R12 R12 K22 ["useTokens"]
       61 GETTABLEKS                       R13 R7 K23 ["Enums"]
       63 GETTABLEKS                       R13 R13 K24 ["ButtonVariant"]
       65 GETTABLEKS                       R14 R7 K23 ["Enums"]
       67 GETTABLEKS                       R14 R14 K25 ["InputSize"]
       69 GETTABLEKS                       R15 R7 K23 ["Enums"]
       71 GETTABLEKS                       R15 R15 K26 ["StateLayerAffordance"]
       73 GETIMPORT                        R16 K5 [require]
       75 GETTABLEKS                       R17 R0 K13 ["Src"]
       77 GETTABLEKS                       R17 R17 K16 ["Foundation"]
       79 GETTABLEKS                       R17 R17 K27 ["Components"]
       81 GETTABLEKS                       R17 R17 K28 ["Frame"]
       83 CALL                             R16 1 1
       84 GETIMPORT                        R17 K5 [require]
       86 GETTABLEKS                       R18 R0 K13 ["Src"]
       88 GETTABLEKS                       R18 R18 K29 ["SharedFlags"]
       90 GETTABLEKS                       R18 R18 K30 ["getFStringStartPagePublishEligibilityCheckLink"]
       92 CALL                             R17 1 1
       93 GETIMPORT                        R18 K5 [require]
       95 GETTABLEKS                       R19 R0 K13 ["Src"]
       97 GETTABLEKS                       R19 R19 K29 ["SharedFlags"]
       99 GETTABLEKS                       R19 R19 K31 ["getFStringStartPagePublishEligibilityLearnMoreLink"]
      101 CALL                             R18 1 1
      102 GETIMPORT                        R19 K34 [NumberSequence.new]
      104 NEWTABLE                         R20 0 3
      106 GETIMPORT                        R21 K36 [NumberSequenceKeypoint.new]
      108 LOADN                            R22 0
      109 LOADK                            R23 K37 [0.95]
      110 CALL                             R21 2 1
      111 GETIMPORT                        R22 K36 [NumberSequenceKeypoint.new]
      113 LOADK                            R23 K38 [0.7235]
      114 LOADK                            R24 K39 [0.1]
      115 CALL                             R22 2 1
      116 GETIMPORT                        R23 K36 [NumberSequenceKeypoint.new]
      118 LOADN                            R24 1
      119 LOADN                            R25 0
      120 CALL                             R23 2 -1
      121 SETLIST                          R20 R21 -1 [1]
      123 CALL                             R19 1 1
      124 DUPCLOSURE                       R20 K40 [PROTO_2]
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R18
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R17
      141 RETURN                           R20 1
