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
       14 GETUPVAL                         R7 4
       15 GETTABLEKS                       R6 R7 K1 ["createElement"]
       17 GETUPVAL                         R7 5
       18 DUPTABLE                         R8 K6 [{"ClipsDescendants", "tag", "stateLayer", "testId"}]
       19 LOADB                            R9 1
       20 SETTABLEKS                       R9 R8 K2 ["ClipsDescendants"]
       22 LOADK                            R9 K7 ["size-full-0 auto-y radius-medium stroke-default"]
       23 SETTABLEKS                       R9 R8 K3 ["tag"]
       25 DUPTABLE                         R9 K9 [{"affordance"}]
       26 GETUPVAL                         R11 6
       27 GETTABLEKS                       R10 R11 K10 ["None"]
       29 SETTABLEKS                       R10 R9 K8 ["affordance"]
       31 SETTABLEKS                       R9 R8 K4 ["stateLayer"]
       33 LOADK                            R9 K11 ["--start-page-PublishEligibilityBanner"]
       34 SETTABLEKS                       R9 R8 K5 ["testId"]
       36 DUPTABLE                         R9 K13 [{"CityImage"}]
       37 GETUPVAL                         R11 4
       38 GETTABLEKS                       R10 R11 K1 ["createElement"]
       40 GETUPVAL                         R11 7
       41 DUPTABLE                         R12 K15 [{"ZIndex", "tag"}]
       42 LOADN                            R13 1
       43 SETTABLEKS                       R13 R12 K14 ["ZIndex"]
       45 LOADK                            R13 K16 ["size-full-0 auto-y"]
       46 SETTABLEKS                       R13 R12 K3 ["tag"]
       48 DUPTABLE                         R13 K19 [{"BackgroundImage", "Container"}]
       49 GETUPVAL                         R15 4
       50 GETTABLEKS                       R14 R15 K1 ["createElement"]
       52 GETUPVAL                         R15 8
       53 DUPTABLE                         R16 K22 [{"Image", "ScaleType", "tag"}]
       54 LOADK                            R17 K23 ["rbxassetid://139623189013485"]
       55 SETTABLEKS                       R17 R16 K20 ["Image"]
       57 GETIMPORT                        R17 K26 [Enum.ScaleType.Crop]
       59 SETTABLEKS                       R17 R16 K21 ["ScaleType"]
       61 LOADK                            R17 K27 ["radius-medium size-full align-x-right padding-medium bg-over-media-0"]
       62 SETTABLEKS                       R17 R16 K3 ["tag"]
       64 DUPTABLE                         R17 K29 [{"Gradient"}]
       65 GETUPVAL                         R19 4
       66 GETTABLEKS                       R18 R19 K1 ["createElement"]
       68 LOADK                            R19 K30 ["UIGradient"]
       69 DUPTABLE                         R20 K32 [{"Transparency"}]
       70 GETUPVAL                         R21 9
       71 SETTABLEKS                       R21 R20 K31 ["Transparency"]
       73 CALL                             R18 2 1
       74 SETTABLEKS                       R18 R17 K28 ["Gradient"]
       76 CALL                             R14 3 1
       77 SETTABLEKS                       R14 R13 K17 ["BackgroundImage"]
       79 GETUPVAL                         R15 4
       80 GETTABLEKS                       R14 R15 K1 ["createElement"]
       82 GETUPVAL                         R15 5
       83 DUPTABLE                         R16 K35 [{"ZIndex", "padding", "Size", "tag"}]
       84 LOADN                            R17 2
       85 SETTABLEKS                       R17 R16 K14 ["ZIndex"]
       87 DUPTABLE                         R17 K39 [{"left", "top", "bottom"}]
       88 GETIMPORT                        R18 K42 [UDim.new]
       90 LOADN                            R19 0
       91 GETTABLEKS                       R21 R1 K34 ["Size"]
       93 GETTABLEKS                       R20 R21 K43 ["Size_800"]
       95 CALL                             R18 2 1
       96 SETTABLEKS                       R18 R17 K36 ["left"]
       98 GETIMPORT                        R18 K42 [UDim.new]
      100 LOADN                            R19 0
      101 GETTABLEKS                       R21 R1 K34 ["Size"]
      103 GETTABLEKS                       R20 R21 K43 ["Size_800"]
      105 CALL                             R18 2 1
      106 SETTABLEKS                       R18 R17 K37 ["top"]
      108 GETIMPORT                        R18 K42 [UDim.new]
      110 LOADN                            R19 0
      111 GETTABLEKS                       R21 R1 K34 ["Size"]
      113 GETTABLEKS                       R20 R21 K43 ["Size_800"]
      115 CALL                             R18 2 1
      116 SETTABLEKS                       R18 R17 K38 ["bottom"]
      118 SETTABLEKS                       R17 R16 K33 ["padding"]
      120 GETIMPORT                        R17 K45 [UDim2.new]
      122 LOADK                            R18 K46 [0.5]
      123 LOADN                            R19 0
      124 LOADN                            R20 0
      125 LOADN                            R21 0
      126 CALL                             R17 4 1
      127 SETTABLEKS                       R17 R16 K34 ["Size"]
      129 LOADK                            R17 K47 ["col auto-y gap-xlarge"]
      130 SETTABLEKS                       R17 R16 K3 ["tag"]
      132 DUPTABLE                         R17 K50 [{"Text", "Buttons"}]
      133 GETUPVAL                         R19 4
      134 GETTABLEKS                       R18 R19 K1 ["createElement"]
      136 GETUPVAL                         R19 7
      137 DUPTABLE                         R20 K52 [{"LayoutOrder", "tag"}]
      138 MOVE                             R21 R3
      139 CALL                             R21 0 1
      140 SETTABLEKS                       R21 R20 K51 ["LayoutOrder"]
      142 LOADK                            R21 K53 ["size-full-0 auto-y col gap-small"]
      143 SETTABLEKS                       R21 R20 K3 ["tag"]
      145 DUPTABLE                         R21 K56 [{"Title", "Description"}]
      146 GETUPVAL                         R23 4
      147 GETTABLEKS                       R22 R23 K1 ["createElement"]
      149 GETUPVAL                         R23 10
      150 DUPTABLE                         R24 K57 [{"Text", "LayoutOrder", "tag"}]
      151 LOADK                            R27 K58 ["Plugin"]
      152 LOADK                            R28 K59 ["PublishEligibilityBanner.Title"]
      153 NAMECALL                         R25 R0 K60 ["getText"]
      155 CALL                             R25 3 1
      156 SETTABLEKS                       R25 R24 K48 ["Text"]
      158 MOVE                             R25 R4
      159 CALL                             R25 0 1
      160 SETTABLEKS                       R25 R24 K51 ["LayoutOrder"]
      162 LOADK                            R25 K61 ["size-full-0 auto-y text-align-x-left content-emphasis text-heading-medium"]
      163 SETTABLEKS                       R25 R24 K3 ["tag"]
      165 CALL                             R22 2 1
      166 SETTABLEKS                       R22 R21 K54 ["Title"]
      168 GETUPVAL                         R23 4
      169 GETTABLEKS                       R22 R23 K1 ["createElement"]
      171 GETUPVAL                         R23 10
      172 DUPTABLE                         R24 K63 [{"Text", "TextWrapped", "LayoutOrder", "tag"}]
      173 LOADK                            R27 K58 ["Plugin"]
      174 LOADK                            R28 K64 ["PublishEligibilityBanner.Description"]
      175 NAMECALL                         R25 R0 K60 ["getText"]
      177 CALL                             R25 3 1
      178 SETTABLEKS                       R25 R24 K48 ["Text"]
      180 LOADB                            R25 1
      181 SETTABLEKS                       R25 R24 K62 ["TextWrapped"]
      183 MOVE                             R25 R4
      184 CALL                             R25 0 1
      185 SETTABLEKS                       R25 R24 K51 ["LayoutOrder"]
      187 LOADK                            R25 K65 ["size-full-0 auto-y text-align-x-left content-emphasis text-body-medium"]
      188 SETTABLEKS                       R25 R24 K3 ["tag"]
      190 CALL                             R22 2 1
      191 SETTABLEKS                       R22 R21 K55 ["Description"]
      193 CALL                             R18 3 1
      194 SETTABLEKS                       R18 R17 K48 ["Text"]
      196 GETUPVAL                         R19 4
      197 GETTABLEKS                       R18 R19 K1 ["createElement"]
      199 GETUPVAL                         R19 7
      200 DUPTABLE                         R20 K52 [{"LayoutOrder", "tag"}]
      201 MOVE                             R21 R3
      202 CALL                             R21 0 1
      203 SETTABLEKS                       R21 R20 K51 ["LayoutOrder"]
      205 LOADK                            R21 K66 ["row gap-small auto-xy"]
      206 SETTABLEKS                       R21 R20 K3 ["tag"]
      208 DUPTABLE                         R21 K69 [{"CheckEligibilityButton", "LearnMoreButton"}]
      209 GETUPVAL                         R23 4
      210 GETTABLEKS                       R22 R23 K1 ["createElement"]
      212 GETUPVAL                         R23 11
      213 DUPTABLE                         R24 K74 [{"size", "variant", "LayoutOrder", "onActivated", "text"}]
      214 GETUPVAL                         R26 12
      215 GETTABLEKS                       R25 R26 K75 ["Medium"]
      217 SETTABLEKS                       R25 R24 K70 ["size"]
      219 GETUPVAL                         R26 13
      220 GETTABLEKS                       R25 R26 K76 ["Emphasis"]
      222 SETTABLEKS                       R25 R24 K71 ["variant"]
      224 MOVE                             R25 R5
      225 CALL                             R25 0 1
      226 SETTABLEKS                       R25 R24 K51 ["LayoutOrder"]
      228 DUPCLOSURE                       R25 K77 [PROTO_0]
      229 CAPTURE                          UPVAL U14
      230 CAPTURE                          UPVAL U15
      231 SETTABLEKS                       R25 R24 K72 ["onActivated"]
      233 LOADK                            R27 K58 ["Plugin"]
      234 LOADK                            R28 K78 ["PublishEligibilityBanner.CheckEligibilityAction"]
      235 NAMECALL                         R25 R0 K60 ["getText"]
      237 CALL                             R25 3 1
      238 SETTABLEKS                       R25 R24 K73 ["text"]
      240 CALL                             R22 2 1
      241 SETTABLEKS                       R22 R21 K67 ["CheckEligibilityButton"]
      243 JUMPIFEQKS                       R2 K79 [""] ; [+34]
      245 GETUPVAL                         R23 4
      246 GETTABLEKS                       R22 R23 K1 ["createElement"]
      248 GETUPVAL                         R23 11
      249 DUPTABLE                         R24 K74 [{"size", "variant", "LayoutOrder", "onActivated", "text"}]
      250 GETUPVAL                         R26 12
      251 GETTABLEKS                       R25 R26 K75 ["Medium"]
      253 SETTABLEKS                       R25 R24 K70 ["size"]
      255 GETUPVAL                         R26 13
      256 GETTABLEKS                       R25 R26 K80 ["Standard"]
      258 SETTABLEKS                       R25 R24 K71 ["variant"]
      260 MOVE                             R25 R5
      261 CALL                             R25 0 1
      262 SETTABLEKS                       R25 R24 K51 ["LayoutOrder"]
      264 NEWCLOSURE                       R25 P1
      265 CAPTURE                          UPVAL U14
      266 CAPTURE                          VAL R2
      267 SETTABLEKS                       R25 R24 K72 ["onActivated"]
      269 LOADK                            R27 K58 ["Plugin"]
      270 LOADK                            R28 K81 ["PublishEligibilityBanner.LearnMoreAction"]
      271 NAMECALL                         R25 R0 K60 ["getText"]
      273 CALL                             R25 3 1
      274 SETTABLEKS                       R25 R24 K73 ["text"]
      276 CALL                             R22 2 1
      277 JUMP                             ; [+1]
      278 LOADNIL                          R22
      279 SETTABLEKS                       R22 R21 K68 ["LearnMoreButton"]
      281 CALL                             R18 3 1
      282 SETTABLEKS                       R18 R17 K49 ["Buttons"]
      284 CALL                             R14 3 1
      285 SETTABLEKS                       R14 R13 K18 ["Container"]
      287 CALL                             R10 3 1
      288 SETTABLEKS                       R10 R9 K12 ["CityImage"]
      290 CALL                             R6 3 -1
      291 RETURN                           R6 -1

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
       31 GETTABLEKS                       R8 R0 K13 ["Src"]
       33 GETTABLEKS                       R7 R8 K9 ["Util"]
       35 GETTABLEKS                       R6 R7 K14 ["Services"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R5 K15 ["StartPageManager"]
       40 GETIMPORT                        R7 K5 [require]
       42 GETTABLEKS                       R10 R0 K13 ["Src"]
       44 GETTABLEKS                       R9 R10 K9 ["Util"]
       46 GETTABLEKS                       R8 R9 K16 ["Foundation"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R8 R7 K17 ["Text"]
       51 GETTABLEKS                       R9 R7 K18 ["Image"]
       53 GETTABLEKS                       R10 R7 K19 ["Button"]
       55 GETTABLEKS                       R11 R7 K20 ["View"]
       57 GETTABLEKS                       R13 R7 K21 ["Hooks"]
       59 GETTABLEKS                       R12 R13 K22 ["useTokens"]
       61 GETTABLEKS                       R14 R7 K23 ["Enums"]
       63 GETTABLEKS                       R13 R14 K24 ["ButtonVariant"]
       65 GETTABLEKS                       R15 R7 K23 ["Enums"]
       67 GETTABLEKS                       R14 R15 K25 ["InputSize"]
       69 GETTABLEKS                       R16 R7 K23 ["Enums"]
       71 GETTABLEKS                       R15 R16 K26 ["StateLayerAffordance"]
       73 GETIMPORT                        R16 K5 [require]
       75 GETTABLEKS                       R20 R0 K13 ["Src"]
       77 GETTABLEKS                       R19 R20 K16 ["Foundation"]
       79 GETTABLEKS                       R18 R19 K27 ["Components"]
       81 GETTABLEKS                       R17 R18 K28 ["Frame"]
       83 CALL                             R16 1 1
       84 GETIMPORT                        R17 K5 [require]
       86 GETTABLEKS                       R20 R0 K13 ["Src"]
       88 GETTABLEKS                       R19 R20 K29 ["SharedFlags"]
       90 GETTABLEKS                       R18 R19 K30 ["getFStringStartPagePublishEligibilityCheckLink"]
       92 CALL                             R17 1 1
       93 GETIMPORT                        R18 K5 [require]
       95 GETTABLEKS                       R21 R0 K13 ["Src"]
       97 GETTABLEKS                       R20 R21 K29 ["SharedFlags"]
       99 GETTABLEKS                       R19 R20 K31 ["getFStringStartPagePublishEligibilityLearnMoreLink"]
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
