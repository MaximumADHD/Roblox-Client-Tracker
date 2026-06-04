PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["gameId"]
        3 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R3 K2 ["gameId"]
        7 NEWTABLE                         R4 0 1
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R3
       11 SETLIST                          R4 R5 1 [1]
       13 RETURN                           R4 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R2 0 1
        2 DUPCLOSURE                       R3 K0 [PROTO_2]
        3 SETLIST                          R2 R3 1 [1]
        5 RETURN                           R2 1

PROTO_4:
        0 DUPTABLE                         R2 K1 [{"GameId"}]
        1 MOVE                             R3 R0
        2 LOADK                            R4 K2 ["gameId"]
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R3 R2 K0 ["GameId"]
        6 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K7 [{"LayoutOrder", "Layout", "AutomaticSize", "HorizontalAlignment", "Size", "Spacing"}]
        5 GETUPVAL                         R6 2
        6 NAMECALL                         R6 R6 K8 ["getNextOrder"]
        8 CALL                             R6 1 1
        9 SETTABLEKS                       R6 R5 K1 ["LayoutOrder"]
       11 GETIMPORT                        R6 K12 [Enum.FillDirection.Vertical]
       13 SETTABLEKS                       R6 R5 K2 ["Layout"]
       15 GETIMPORT                        R6 K14 [Enum.AutomaticSize.Y]
       17 SETTABLEKS                       R6 R5 K3 ["AutomaticSize"]
       19 GETIMPORT                        R6 K16 [Enum.HorizontalAlignment.Left]
       21 SETTABLEKS                       R6 R5 K4 ["HorizontalAlignment"]
       23 GETIMPORT                        R6 K19 [UDim2.fromScale]
       25 LOADN                            R7 1
       26 LOADN                            R8 0
       27 CALL                             R6 2 1
       28 SETTABLEKS                       R6 R5 K5 ["Size"]
       30 GETIMPORT                        R6 K22 [UDim.new]
       32 LOADN                            R7 0
       33 LOADN                            R8 4
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K6 ["Spacing"]
       37 DUPTABLE                         R6 K25 [{"Link", "Description"}]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K0 ["createElement"]
       41 GETUPVAL                         R8 3
       42 DUPTABLE                         R9 K31 [{"LayoutOrder", "Text", "OnClick", "Font", "TextSize", "TextXAlignment", "AutomaticSize"}]
       43 GETUPVAL                         R10 2
       44 NAMECALL                         R10 R10 K8 ["getNextOrder"]
       46 CALL                             R10 1 1
       47 SETTABLEKS                       R10 R9 K1 ["LayoutOrder"]
       49 SETTABLEKS                       R0 R9 K26 ["Text"]
       51 SETTABLEKS                       R2 R9 K27 ["OnClick"]
       53 GETUPVAL                         R10 4
       54 GETTABLEKS                       R10 R10 K32 ["fontStyle"]
       56 GETTABLEKS                       R10 R10 K33 ["Subtitle"]
       58 GETTABLEKS                       R10 R10 K28 ["Font"]
       60 SETTABLEKS                       R10 R9 K28 ["Font"]
       62 GETUPVAL                         R10 4
       63 GETTABLEKS                       R10 R10 K32 ["fontStyle"]
       65 GETTABLEKS                       R10 R10 K33 ["Subtitle"]
       67 GETTABLEKS                       R10 R10 K29 ["TextSize"]
       69 SETTABLEKS                       R10 R9 K29 ["TextSize"]
       71 GETIMPORT                        R10 K34 [Enum.TextXAlignment.Left]
       73 SETTABLEKS                       R10 R9 K30 ["TextXAlignment"]
       75 GETIMPORT                        R10 K36 [Enum.AutomaticSize.XY]
       77 SETTABLEKS                       R10 R9 K3 ["AutomaticSize"]
       79 CALL                             R7 2 1
       80 SETTABLEKS                       R7 R6 K23 ["Link"]
       82 GETUPVAL                         R7 0
       83 GETTABLEKS                       R7 R7 K0 ["createElement"]
       85 GETUPVAL                         R8 5
       86 DUPTABLE                         R9 K39 [{"LayoutOrder", "Text", "TextXAlignment", "Size", "AutomaticSize", "Font", "TextSize", "Style", "TextWrapped"}]
       87 GETUPVAL                         R10 2
       88 NAMECALL                         R10 R10 K8 ["getNextOrder"]
       90 CALL                             R10 1 1
       91 SETTABLEKS                       R10 R9 K1 ["LayoutOrder"]
       93 SETTABLEKS                       R1 R9 K26 ["Text"]
       95 GETIMPORT                        R10 K34 [Enum.TextXAlignment.Left]
       97 SETTABLEKS                       R10 R9 K30 ["TextXAlignment"]
       99 GETIMPORT                        R10 K19 [UDim2.fromScale]
      101 LOADN                            R11 1
      102 LOADN                            R12 0
      103 CALL                             R10 2 1
      104 SETTABLEKS                       R10 R9 K5 ["Size"]
      106 GETIMPORT                        R10 K14 [Enum.AutomaticSize.Y]
      108 SETTABLEKS                       R10 R9 K3 ["AutomaticSize"]
      110 GETUPVAL                         R10 4
      111 GETTABLEKS                       R10 R10 K32 ["fontStyle"]
      113 GETTABLEKS                       R10 R10 K33 ["Subtitle"]
      115 GETTABLEKS                       R10 R10 K28 ["Font"]
      117 SETTABLEKS                       R10 R9 K28 ["Font"]
      119 GETUPVAL                         R10 4
      120 GETTABLEKS                       R10 R10 K32 ["fontStyle"]
      122 GETTABLEKS                       R10 R10 K33 ["Subtitle"]
      124 GETTABLEKS                       R10 R10 K29 ["TextSize"]
      126 SETTABLEKS                       R10 R9 K29 ["TextSize"]
      128 LOADK                            R10 K40 ["SubText"]
      129 SETTABLEKS                       R10 R9 K37 ["Style"]
      131 LOADB                            R10 1
      132 SETTABLEKS                       R10 R9 K38 ["TextWrapped"]
      134 CALL                             R7 2 1
      135 SETTABLEKS                       R7 R6 K24 ["Description"]
      137 CALL                             R3 3 -1
      138 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Stylizer"]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U5
       12 DUPTABLE                         R3 K10 [{"HeaderGroup", "Access", "GeneralSettings", "ContentMaturity", "Places", "Monetization", "Engagement", "Localization"}]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K11 ["createElement"]
       16 GETUPVAL                         R5 2
       17 DUPTABLE                         R6 K18 [{"LayoutOrder", "Layout", "AutomaticSize", "HorizontalAlignment", "Size", "Spacing"}]
       18 GETUPVAL                         R7 3
       19 NAMECALL                         R7 R7 K19 ["getNextOrder"]
       21 CALL                             R7 1 1
       22 SETTABLEKS                       R7 R6 K12 ["LayoutOrder"]
       24 GETIMPORT                        R7 K23 [Enum.FillDirection.Vertical]
       26 SETTABLEKS                       R7 R6 K13 ["Layout"]
       28 GETIMPORT                        R7 K25 [Enum.AutomaticSize.Y]
       30 SETTABLEKS                       R7 R6 K14 ["AutomaticSize"]
       32 GETIMPORT                        R7 K27 [Enum.HorizontalAlignment.Left]
       34 SETTABLEKS                       R7 R6 K15 ["HorizontalAlignment"]
       36 GETIMPORT                        R7 K30 [UDim2.fromScale]
       38 LOADN                            R8 1
       39 LOADN                            R9 0
       40 CALL                             R7 2 1
       41 SETTABLEKS                       R7 R6 K16 ["Size"]
       43 GETIMPORT                        R7 K33 [UDim.new]
       45 LOADN                            R8 0
       46 LOADN                            R9 4
       47 CALL                             R7 2 1
       48 SETTABLEKS                       R7 R6 K17 ["Spacing"]
       50 DUPTABLE                         R7 K36 [{"Title", "AdditionalSettings"}]
       51 GETUPVAL                         R8 1
       52 GETTABLEKS                       R8 R8 K11 ["createElement"]
       54 GETUPVAL                         R9 5
       55 DUPTABLE                         R10 K41 [{"LayoutOrder", "Style", "Text", "TextSize", "TextXAlignment", "AutomaticSize"}]
       56 LOADN                            R11 1
       57 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
       59 LOADK                            R11 K34 ["Title"]
       60 SETTABLEKS                       R11 R10 K37 ["Style"]
       62 GETUPVAL                         R11 6
       63 LOADK                            R13 K42 ["CreatorHub"]
       64 LOADK                            R14 K43 ["PageTitle"]
       65 NAMECALL                         R11 R11 K44 ["getText"]
       67 CALL                             R11 3 1
       68 SETTABLEKS                       R11 R10 K38 ["Text"]
       70 LOADN                            R11 30
       71 SETTABLEKS                       R11 R10 K39 ["TextSize"]
       73 GETIMPORT                        R11 K45 [Enum.TextXAlignment.Left]
       75 SETTABLEKS                       R11 R10 K40 ["TextXAlignment"]
       77 GETIMPORT                        R11 K47 [Enum.AutomaticSize.XY]
       79 SETTABLEKS                       R11 R10 K14 ["AutomaticSize"]
       81 CALL                             R8 2 1
       82 SETTABLEKS                       R8 R7 K34 ["Title"]
       84 GETUPVAL                         R8 1
       85 GETTABLEKS                       R8 R8 K11 ["createElement"]
       87 GETUPVAL                         R9 5
       88 DUPTABLE                         R10 K49 [{"LayoutOrder", "Text", "TextXAlignment", "Size", "AutomaticSize", "Font", "TextSize"}]
       89 LOADN                            R11 2
       90 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
       92 GETUPVAL                         R11 6
       93 LOADK                            R13 K42 ["CreatorHub"]
       94 LOADK                            R14 K35 ["AdditionalSettings"]
       95 NAMECALL                         R11 R11 K44 ["getText"]
       97 CALL                             R11 3 1
       98 SETTABLEKS                       R11 R10 K38 ["Text"]
      100 GETIMPORT                        R11 K45 [Enum.TextXAlignment.Left]
      102 SETTABLEKS                       R11 R10 K40 ["TextXAlignment"]
      104 GETIMPORT                        R11 K30 [UDim2.fromScale]
      106 LOADN                            R12 1
      107 LOADN                            R13 0
      108 CALL                             R11 2 1
      109 SETTABLEKS                       R11 R10 K16 ["Size"]
      111 GETIMPORT                        R11 K25 [Enum.AutomaticSize.Y]
      113 SETTABLEKS                       R11 R10 K14 ["AutomaticSize"]
      115 GETTABLEKS                       R11 R1 K50 ["fontStyle"]
      117 GETTABLEKS                       R11 R11 K51 ["Subtitle"]
      119 GETTABLEKS                       R11 R11 K48 ["Font"]
      121 SETTABLEKS                       R11 R10 K48 ["Font"]
      123 GETTABLEKS                       R11 R1 K50 ["fontStyle"]
      125 GETTABLEKS                       R11 R11 K51 ["Subtitle"]
      127 GETTABLEKS                       R11 R11 K39 ["TextSize"]
      129 SETTABLEKS                       R11 R10 K39 ["TextSize"]
      131 CALL                             R8 2 1
      132 SETTABLEKS                       R8 R7 K35 ["AdditionalSettings"]
      134 CALL                             R4 3 1
      135 SETTABLEKS                       R4 R3 K2 ["HeaderGroup"]
      137 MOVE                             R4 R2
      138 GETUPVAL                         R5 6
      139 LOADK                            R7 K42 ["CreatorHub"]
      140 LOADK                            R8 K52 ["AccessLocation"]
      141 NAMECALL                         R5 R5 K44 ["getText"]
      143 CALL                             R5 3 1
      144 GETUPVAL                         R6 6
      145 LOADK                            R8 K42 ["CreatorHub"]
      146 LOADK                            R9 K3 ["Access"]
      147 NAMECALL                         R6 R6 K44 ["getText"]
      149 CALL                             R6 3 1
      150 GETUPVAL                         R7 7
      151 GETTABLEKS                       R7 R7 K53 ["OpenExperienceAccess"]
      153 GETTABLEKS                       R8 R0 K54 ["GameId"]
      155 CALL                             R7 1 -1
      156 CALL                             R4 -1 1
      157 SETTABLEKS                       R4 R3 K3 ["Access"]
      159 MOVE                             R4 R2
      160 GETUPVAL                         R5 6
      161 LOADK                            R7 K42 ["CreatorHub"]
      162 LOADK                            R8 K55 ["ConfigureSettingsLocation"]
      163 NAMECALL                         R5 R5 K44 ["getText"]
      165 CALL                             R5 3 1
      166 GETUPVAL                         R6 6
      167 LOADK                            R8 K42 ["CreatorHub"]
      168 LOADK                            R9 K56 ["ConfigureSettings"]
      169 NAMECALL                         R6 R6 K44 ["getText"]
      171 CALL                             R6 3 1
      172 GETUPVAL                         R7 7
      173 GETTABLEKS                       R7 R7 K57 ["OpenExperienceSettings"]
      175 GETTABLEKS                       R8 R0 K54 ["GameId"]
      177 CALL                             R7 1 -1
      178 CALL                             R4 -1 1
      179 SETTABLEKS                       R4 R3 K4 ["GeneralSettings"]
      181 MOVE                             R4 R2
      182 GETUPVAL                         R5 6
      183 LOADK                            R7 K42 ["CreatorHub"]
      184 LOADK                            R8 K58 ["ContentMaturityLocation"]
      185 NAMECALL                         R5 R5 K44 ["getText"]
      187 CALL                             R5 3 1
      188 GETUPVAL                         R6 6
      189 LOADK                            R8 K42 ["CreatorHub"]
      190 LOADK                            R9 K5 ["ContentMaturity"]
      191 NAMECALL                         R6 R6 K44 ["getText"]
      193 CALL                             R6 3 1
      194 GETUPVAL                         R7 7
      195 GETTABLEKS                       R7 R7 K59 ["OpenExperienceQuestionnaire"]
      197 GETTABLEKS                       R8 R0 K54 ["GameId"]
      199 CALL                             R7 1 -1
      200 CALL                             R4 -1 1
      201 SETTABLEKS                       R4 R3 K5 ["ContentMaturity"]
      203 MOVE                             R4 R2
      204 GETUPVAL                         R5 6
      205 LOADK                            R7 K42 ["CreatorHub"]
      206 LOADK                            R8 K60 ["PlacesLocation"]
      207 NAMECALL                         R5 R5 K44 ["getText"]
      209 CALL                             R5 3 1
      210 GETUPVAL                         R6 6
      211 LOADK                            R8 K42 ["CreatorHub"]
      212 LOADK                            R9 K6 ["Places"]
      213 NAMECALL                         R6 R6 K44 ["getText"]
      215 CALL                             R6 3 1
      216 GETUPVAL                         R7 7
      217 GETTABLEKS                       R7 R7 K61 ["OpenPlaceConfiguration"]
      219 GETTABLEKS                       R8 R0 K54 ["GameId"]
      221 CALL                             R7 1 -1
      222 CALL                             R4 -1 1
      223 SETTABLEKS                       R4 R3 K6 ["Places"]
      225 MOVE                             R4 R2
      226 GETUPVAL                         R5 6
      227 LOADK                            R7 K42 ["CreatorHub"]
      228 LOADK                            R8 K62 ["MonetizationLocation"]
      229 NAMECALL                         R5 R5 K44 ["getText"]
      231 CALL                             R5 3 1
      232 GETUPVAL                         R6 6
      233 LOADK                            R8 K42 ["CreatorHub"]
      234 LOADK                            R9 K7 ["Monetization"]
      235 NAMECALL                         R6 R6 K44 ["getText"]
      237 CALL                             R6 3 1
      238 GETUPVAL                         R7 7
      239 GETTABLEKS                       R7 R7 K63 ["OpenDevProductSettings"]
      241 GETTABLEKS                       R8 R0 K54 ["GameId"]
      243 CALL                             R7 1 -1
      244 CALL                             R4 -1 1
      245 SETTABLEKS                       R4 R3 K7 ["Monetization"]
      247 MOVE                             R4 R2
      248 GETUPVAL                         R5 6
      249 LOADK                            R7 K42 ["CreatorHub"]
      250 LOADK                            R8 K64 ["EngagementLocation"]
      251 NAMECALL                         R5 R5 K44 ["getText"]
      253 CALL                             R5 3 1
      254 GETUPVAL                         R6 6
      255 LOADK                            R8 K42 ["CreatorHub"]
      256 LOADK                            R9 K8 ["Engagement"]
      257 NAMECALL                         R6 R6 K44 ["getText"]
      259 CALL                             R6 3 1
      260 GETUPVAL                         R7 7
      261 GETTABLEKS                       R7 R7 K65 ["OpenBadgesSettings"]
      263 GETTABLEKS                       R8 R0 K54 ["GameId"]
      265 CALL                             R7 1 -1
      266 CALL                             R4 -1 1
      267 SETTABLEKS                       R4 R3 K8 ["Engagement"]
      269 MOVE                             R4 R2
      270 GETUPVAL                         R5 6
      271 LOADK                            R7 K42 ["CreatorHub"]
      272 LOADK                            R8 K66 ["LocalizationLocation"]
      273 NAMECALL                         R5 R5 K44 ["getText"]
      275 CALL                             R5 3 1
      276 GETUPVAL                         R6 6
      277 LOADK                            R8 K42 ["CreatorHub"]
      278 LOADK                            R9 K9 ["Localization"]
      279 NAMECALL                         R6 R6 K44 ["getText"]
      281 CALL                             R6 3 1
      282 GETUPVAL                         R7 7
      283 GETTABLEKS                       R7 R7 K67 ["OpenLocalizationSettings"]
      285 GETTABLEKS                       R8 R0 K54 ["GameId"]
      287 CALL                             R7 1 -1
      288 CALL                             R4 -1 1
      289 SETTABLEKS                       R4 R3 K9 ["Localization"]
      291 RETURN                           R3 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R1 K2 ["Localization"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          VAL R3
       16 CAPTURE                          UPVAL U5
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K3 ["createElement"]
       20 GETUPVAL                         R6 6
       21 DUPTABLE                         R7 K10 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "ShowHeader", "CreateChildren"}]
       22 GETUPVAL                         R8 7
       23 SETTABLEKS                       R8 R7 K4 ["SettingsLoadJobs"]
       25 GETUPVAL                         R8 8
       26 SETTABLEKS                       R8 R7 K5 ["SettingsSaveJobs"]
       28 LOADK                            R10 K11 ["CreatorHub"]
       29 LOADK                            R11 K12 ["PageTitle"]
       30 NAMECALL                         R8 R3 K13 ["getText"]
       32 CALL                             R8 3 1
       33 SETTABLEKS                       R8 R7 K6 ["Title"]
       35 LOADK                            R8 K11 ["CreatorHub"]
       36 SETTABLEKS                       R8 R7 K7 ["PageId"]
       38 LOADB                            R8 0
       39 SETTABLEKS                       R8 R7 K8 ["ShowHeader"]
       41 SETTABLEKS                       R4 R7 K9 ["CreateChildren"]
       43 CALL                             R5 2 -1
       44 RETURN                           R5 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Settings"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_9:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 DUPTABLE                         R4 K1 [{"GameId"}]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R6 R0 K2 ["Settings"]
        9 LOADK                            R7 K3 ["gameId"]
       10 CALL                             R5 2 1
       11 SETTABLEKS                       R5 R4 K0 ["GameId"]
       13 MOVE                             R3 R4
       14 RETURN                           R3 1

PROTO_10:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 GETTABLEKS                       R1 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETIMPORT                        R2 K4 [require]
       15 GETTABLEKS                       R3 R1 K5 ["Packages"]
       17 GETTABLEKS                       R3 R3 K6 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R1 K5 ["Packages"]
       24 GETTABLEKS                       R4 R4 K7 ["RoactRodux"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R1 K5 ["Packages"]
       31 GETTABLEKS                       R5 R5 K8 ["Framework"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R6 R1 K9 ["Src"]
       38 GETTABLEKS                       R6 R6 K10 ["Util"]
       40 GETTABLEKS                       R6 R6 K11 ["BrowserUtils"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R4 K12 ["ContextServices"]
       45 GETTABLEKS                       R7 R6 K13 ["withContext"]
       47 GETIMPORT                        R8 K4 [require]
       49 GETTABLEKS                       R9 R1 K9 ["Src"]
       51 GETTABLEKS                       R9 R9 K14 ["Components"]
       53 GETTABLEKS                       R9 R9 K15 ["SettingsPages"]
       55 GETTABLEKS                       R9 R9 K16 ["SettingsPage"]
       57 CALL                             R8 1 1
       58 GETTABLEKS                       R9 R4 K17 ["UI"]
       60 GETTABLEKS                       R10 R9 K18 ["LinkText"]
       62 GETTABLEKS                       R11 R9 K19 ["Pane"]
       64 GETTABLEKS                       R12 R9 K20 ["TextLabel"]
       66 GETTABLEKS                       R13 R4 K10 ["Util"]
       68 GETTABLEKS                       R14 R13 K21 ["LayoutOrderIterator"]
       70 GETTABLEKS                       R15 R2 K22 ["PureComponent"]
       72 GETIMPORT                        R17 K1 [script]
       74 GETTABLEKS                       R17 R17 K23 ["Name"]
       76 NAMECALL                         R15 R15 K24 ["extend"]
       78 CALL                             R15 2 1
       79 DUPCLOSURE                       R16 K25 [PROTO_1]
       80 DUPCLOSURE                       R17 K26 [PROTO_3]
       81 DUPCLOSURE                       R18 K27 [PROTO_4]
       82 DUPCLOSURE                       R19 K28 [PROTO_7]
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R16
       91 CAPTURE                          VAL R17
       92 SETTABLEKS                       R19 R15 K29 ["render"]
       94 MOVE                             R19 R7
       95 DUPTABLE                         R20 K33 [{"Localization", "Stylizer", "Mouse"}]
       96 GETTABLEKS                       R21 R6 K30 ["Localization"]
       98 SETTABLEKS                       R21 R20 K30 ["Localization"]
      100 GETTABLEKS                       R21 R6 K31 ["Stylizer"]
      102 SETTABLEKS                       R21 R20 K31 ["Stylizer"]
      104 GETTABLEKS                       R21 R6 K32 ["Mouse"]
      106 SETTABLEKS                       R21 R20 K32 ["Mouse"]
      108 CALL                             R19 1 1
      109 MOVE                             R20 R15
      110 CALL                             R19 1 1
      111 MOVE                             R15 R19
      112 GETIMPORT                        R19 K4 [require]
      114 GETTABLEKS                       R20 R1 K9 ["Src"]
      116 GETTABLEKS                       R20 R20 K34 ["Networking"]
      118 GETTABLEKS                       R20 R20 K35 ["settingFromState"]
      120 CALL                             R19 1 1
      121 GETTABLEKS                       R20 R3 K36 ["connect"]
      123 DUPCLOSURE                       R21 K37 [PROTO_9]
      124 CAPTURE                          VAL R19
      125 DUPCLOSURE                       R22 K38 [PROTO_10]
      126 CALL                             R20 2 1
      127 MOVE                             R21 R15
      128 CALL                             R20 1 1
      129 MOVE                             R15 R20
      130 LOADK                            R20 K39 ["CreatorHub"]
      131 SETTABLEKS                       R20 R15 K40 ["LocalizationId"]
      133 RETURN                           R15 1
