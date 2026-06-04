PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R2 R1 K1 ["getItemsCache"]
        6 CALL                             R2 1 1
        7 NAMECALL                         R3 R1 K2 ["getCurrentShownScope"]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R4 R0 K3 ["AssetPath"]
       12 GETTABLEKS                       R7 R3 K4 ["Uid"]
       14 MOVE                             R8 R4
       15 GETUPVAL                         R9 1
       16 GETTABLEKS                       R9 R9 K5 ["AssetInfoField"]
       18 GETTABLEKS                       R9 R9 K6 ["Creator"]
       20 NAMECALL                         R5 R2 K7 ["getItemField"]
       22 CALL                             R5 4 1
       23 GETTABLEKS                       R9 R3 K4 ["Uid"]
       25 MOVE                             R10 R4
       26 GETUPVAL                         R11 1
       27 GETTABLEKS                       R11 R11 K5 ["AssetInfoField"]
       29 GETTABLEKS                       R11 R11 K9 ["AssetId"]
       31 NAMECALL                         R7 R2 K7 ["getItemField"]
       33 CALL                             R7 4 1
       34 ORK                              R6 R7 K8 [0]
       35 GETTABLEKS                       R10 R3 K4 ["Uid"]
       37 MOVE                             R11 R4
       38 GETUPVAL                         R12 1
       39 GETTABLEKS                       R12 R12 K5 ["AssetInfoField"]
       41 GETTABLEKS                       R12 R12 K11 ["DisplayName"]
       43 NAMECALL                         R8 R2 K7 ["getItemField"]
       45 CALL                             R8 4 1
       46 ORK                              R7 R8 K10 [""]
       47 JUMPIFEQKNIL                     R5 ; [+4]
       49 GETTABLEKS                       R8 R5 K12 ["Name"]
       51 JUMP                             ; [+1]
       52 LOADK                            R8 K10 [""]
       53 GETUPVAL                         R9 2
       54 GETTABLEKS                       R9 R9 K13 ["createElement"]
       56 GETUPVAL                         R10 3
       57 GETTABLEKS                       R10 R10 K14 ["View"]
       59 DUPTABLE                         R11 K16 [{"tag"}]
       60 LOADK                            R12 K17 ["col size-full-0 auto-y data-testid=asset-error-row"]
       61 SETTABLEKS                       R12 R11 K15 ["tag"]
       63 DUPTABLE                         R12 K20 [{"Content", "BottomStroke"}]
       64 GETUPVAL                         R13 2
       65 GETTABLEKS                       R13 R13 K13 ["createElement"]
       67 GETUPVAL                         R14 3
       68 GETTABLEKS                       R14 R14 K14 ["View"]
       70 DUPTABLE                         R15 K22 [{"LayoutOrder", "tag"}]
       71 LOADN                            R16 1
       72 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
       74 LOADK                            R16 K23 ["row size-full-0 auto-y align-y-center padding-small"]
       75 SETTABLEKS                       R16 R15 K15 ["tag"]
       77 DUPTABLE                         R16 K25 [{"AssetInfo", "Creator"}]
       78 GETUPVAL                         R17 2
       79 GETTABLEKS                       R17 R17 K13 ["createElement"]
       81 GETUPVAL                         R18 3
       82 GETTABLEKS                       R18 R18 K14 ["View"]
       84 DUPTABLE                         R19 K22 [{"LayoutOrder", "tag"}]
       85 LOADN                            R20 1
       86 SETTABLEKS                       R20 R19 K21 ["LayoutOrder"]
       88 LOADK                            R20 K26 ["row fill auto-y align-y-center gap-small"]
       89 SETTABLEKS                       R20 R19 K15 ["tag"]
       91 DUPTABLE                         R20 K28 [{"Thumbnail", "Name"}]
       92 GETUPVAL                         R21 2
       93 GETTABLEKS                       R21 R21 K13 ["createElement"]
       95 GETUPVAL                         R22 3
       96 GETTABLEKS                       R22 R22 K29 ["Image"]
       98 DUPTABLE                         R23 K30 [{"LayoutOrder", "Image", "tag"}]
       99 LOADN                            R24 1
      100 SETTABLEKS                       R24 R23 K21 ["LayoutOrder"]
      102 LOADK                            R25 K31 ["rbxthumb://type=CreatorContextAsset&id=%*&w=150&h=150"]
      103 MOVE                             R27 R6
      104 NAMECALL                         R25 R25 K32 ["format"]
      106 CALL                             R25 2 1
      107 MOVE                             R24 R25
      108 SETTABLEKS                       R24 R23 K29 ["Image"]
      110 LOADK                            R24 K33 ["size-600 radius-small"]
      111 SETTABLEKS                       R24 R23 K15 ["tag"]
      113 CALL                             R21 2 1
      114 SETTABLEKS                       R21 R20 K27 ["Thumbnail"]
      116 GETUPVAL                         R21 2
      117 GETTABLEKS                       R21 R21 K13 ["createElement"]
      119 GETUPVAL                         R22 3
      120 GETTABLEKS                       R22 R22 K34 ["Text"]
      122 DUPTABLE                         R23 K35 [{"LayoutOrder", "Text", "tag"}]
      123 LOADN                            R24 2
      124 SETTABLEKS                       R24 R23 K21 ["LayoutOrder"]
      126 SETTABLEKS                       R7 R23 K34 ["Text"]
      128 LOADK                            R24 K36 ["text-body-medium text-align-x-left text-truncate-split fill auto-y"]
      129 SETTABLEKS                       R24 R23 K15 ["tag"]
      131 CALL                             R21 2 1
      132 SETTABLEKS                       R21 R20 K12 ["Name"]
      134 CALL                             R17 3 1
      135 SETTABLEKS                       R17 R16 K24 ["AssetInfo"]
      137 GETUPVAL                         R17 2
      138 GETTABLEKS                       R17 R17 K13 ["createElement"]
      140 GETUPVAL                         R18 3
      141 GETTABLEKS                       R18 R18 K34 ["Text"]
      143 DUPTABLE                         R19 K35 [{"LayoutOrder", "Text", "tag"}]
      144 LOADN                            R20 2
      145 SETTABLEKS                       R20 R19 K21 ["LayoutOrder"]
      147 SETTABLEKS                       R8 R19 K34 ["Text"]
      149 LOADK                            R20 K37 ["text-body-medium text-align-x-left fill auto-y"]
      150 SETTABLEKS                       R20 R19 K15 ["tag"]
      152 CALL                             R17 2 1
      153 SETTABLEKS                       R17 R16 K6 ["Creator"]
      155 CALL                             R13 3 1
      156 SETTABLEKS                       R13 R12 K18 ["Content"]
      158 GETUPVAL                         R13 2
      159 GETTABLEKS                       R13 R13 K13 ["createElement"]
      161 GETUPVAL                         R14 3
      162 GETTABLEKS                       R14 R14 K38 ["Divider"]
      164 DUPTABLE                         R15 K40 [{"LayoutOrder", "orientation"}]
      165 LOADN                            R16 2
      166 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      168 GETUPVAL                         R16 3
      169 GETTABLEKS                       R16 R16 K41 ["Enums"]
      171 GETTABLEKS                       R16 R16 K42 ["DividerOrientation"]
      173 GETTABLEKS                       R16 R16 K43 ["Horizontal"]
      175 SETTABLEKS                       R16 R15 K39 ["orientation"]
      177 CALL                             R13 2 1
      178 SETTABLEKS                       R13 R12 K19 ["BottomStroke"]
      180 CALL                             R9 3 -1
      181 RETURN                           R9 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETTABLEKS                       R3 R3 K0 ["AssetPaths"]
        6 NEWTABLE                         R4 0 3
        8 GETUPVAL                         R5 4
        9 GETTABLEKS                       R5 R5 K1 ["AssetInfoField"]
       11 GETTABLEKS                       R5 R5 K2 ["AssetId"]
       13 GETUPVAL                         R6 4
       14 GETTABLEKS                       R6 R6 K1 ["AssetInfoField"]
       16 GETTABLEKS                       R6 R6 K3 ["DisplayName"]
       18 GETUPVAL                         R7 4
       19 GETTABLEKS                       R7 R7 K1 ["AssetInfoField"]
       21 GETTABLEKS                       R7 R7 K4 ["Creator"]
       23 SETLIST                          R4 R5 3 [1]
       25 CALL                             R0 4 0
       26 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K2 [{"AssetPath"}]
        5 SETTABLEKS                       R0 R4 K1 ["AssetPath"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["LinkUrl"]
        4 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U4
       16 GETUPVAL                         R5 5
       17 GETTABLEKS                       R5 R5 K1 ["createElement"]
       19 GETUPVAL                         R6 6
       20 GETTABLEKS                       R6 R6 K2 ["View"]
       22 DUPTABLE                         R7 K4 [{"tag"}]
       23 LOADK                            R8 K5 ["col size-full padding-medium gap-medium"]
       24 SETTABLEKS                       R8 R7 K3 ["tag"]
       26 DUPTABLE                         R8 K9 [{"Header", "List", "Footer"}]
       27 GETUPVAL                         R9 5
       28 GETTABLEKS                       R9 R9 K1 ["createElement"]
       30 GETUPVAL                         R10 6
       31 GETTABLEKS                       R10 R10 K2 ["View"]
       33 DUPTABLE                         R11 K11 [{"LayoutOrder", "tag"}]
       34 LOADN                            R12 1
       35 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
       37 LOADK                            R12 K12 ["row size-full-0 auto-y align-y-center gap-medium"]
       38 SETTABLEKS                       R12 R11 K3 ["tag"]
       40 DUPTABLE                         R12 K15 [{"Icon", "Text"}]
       41 GETUPVAL                         R13 5
       42 GETTABLEKS                       R13 R13 K1 ["createElement"]
       44 GETUPVAL                         R14 6
       45 GETTABLEKS                       R14 R14 K13 ["Icon"]
       47 DUPTABLE                         R15 K20 [{"LayoutOrder", "name", "size", "style", "variant"}]
       48 LOADN                            R16 1
       49 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
       51 GETUPVAL                         R16 6
       52 GETTABLEKS                       R16 R16 K21 ["Enums"]
       54 GETTABLEKS                       R16 R16 K22 ["IconName"]
       56 GETTABLEKS                       R16 R16 K23 ["TriangleExclamation"]
       58 SETTABLEKS                       R16 R15 K16 ["name"]
       60 GETUPVAL                         R16 6
       61 GETTABLEKS                       R16 R16 K21 ["Enums"]
       63 GETTABLEKS                       R16 R16 K24 ["IconSize"]
       65 GETTABLEKS                       R16 R16 K25 ["Large"]
       67 SETTABLEKS                       R16 R15 K17 ["size"]
       69 GETTABLEKS                       R16 R3 K26 ["Color"]
       71 GETTABLEKS                       R16 R16 K27 ["System"]
       73 GETTABLEKS                       R16 R16 K28 ["Warning"]
       75 SETTABLEKS                       R16 R15 K18 ["style"]
       77 GETUPVAL                         R16 6
       78 GETTABLEKS                       R16 R16 K21 ["Enums"]
       80 GETTABLEKS                       R16 R16 K29 ["IconVariant"]
       82 GETTABLEKS                       R16 R16 K30 ["Filled"]
       84 SETTABLEKS                       R16 R15 K19 ["variant"]
       86 CALL                             R13 2 1
       87 SETTABLEKS                       R13 R12 K13 ["Icon"]
       89 GETUPVAL                         R13 5
       90 GETTABLEKS                       R13 R13 K1 ["createElement"]
       92 GETUPVAL                         R14 6
       93 GETTABLEKS                       R14 R14 K2 ["View"]
       95 DUPTABLE                         R15 K11 [{"LayoutOrder", "tag"}]
       96 LOADN                            R16 2
       97 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
       99 LOADK                            R16 K31 ["col fill auto-y gap-xsmall"]
      100 SETTABLEKS                       R16 R15 K3 ["tag"]
      102 DUPTABLE                         R16 K34 [{"Title", "Description"}]
      103 GETUPVAL                         R17 5
      104 GETTABLEKS                       R17 R17 K1 ["createElement"]
      106 GETUPVAL                         R18 6
      107 GETTABLEKS                       R18 R18 K14 ["Text"]
      109 DUPTABLE                         R19 K35 [{"LayoutOrder", "Text", "tag"}]
      110 LOADN                            R20 1
      111 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      113 GETTABLEKS                       R20 R0 K32 ["Title"]
      115 SETTABLEKS                       R20 R19 K14 ["Text"]
      117 LOADK                            R20 K36 ["text-title-medium auto-xy"]
      118 SETTABLEKS                       R20 R19 K3 ["tag"]
      120 CALL                             R17 2 1
      121 SETTABLEKS                       R17 R16 K32 ["Title"]
      123 GETTABLEKS                       R18 R0 K33 ["Description"]
      125 JUMPIFEQKNIL                     R18 ; [+20]
      127 GETUPVAL                         R17 5
      128 GETTABLEKS                       R17 R17 K1 ["createElement"]
      130 GETUPVAL                         R18 6
      131 GETTABLEKS                       R18 R18 K14 ["Text"]
      133 DUPTABLE                         R19 K35 [{"LayoutOrder", "Text", "tag"}]
      134 LOADN                            R20 2
      135 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      137 GETTABLEKS                       R20 R0 K33 ["Description"]
      139 SETTABLEKS                       R20 R19 K14 ["Text"]
      141 LOADK                            R20 K37 ["text-body-medium text-wrap auto-xy"]
      142 SETTABLEKS                       R20 R19 K3 ["tag"]
      144 CALL                             R17 2 1
      145 JUMP                             ; [+1]
      146 LOADNIL                          R17
      147 SETTABLEKS                       R17 R16 K33 ["Description"]
      149 CALL                             R13 3 1
      150 SETTABLEKS                       R13 R12 K14 ["Text"]
      152 CALL                             R9 3 1
      153 SETTABLEKS                       R9 R8 K6 ["Header"]
      155 GETUPVAL                         R9 5
      156 GETTABLEKS                       R9 R9 K1 ["createElement"]
      158 GETUPVAL                         R10 6
      159 GETTABLEKS                       R10 R10 K2 ["View"]
      161 DUPTABLE                         R11 K11 [{"LayoutOrder", "tag"}]
      162 LOADN                            R12 2
      163 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      165 LOADK                            R12 K38 ["col size-full-0 fill stroke-emphasis radius-medium"]
      166 SETTABLEKS                       R12 R11 K3 ["tag"]
      168 DUPTABLE                         R12 K42 [{"HeaderRow", "HeaderRowStroke", "Items"}]
      169 GETUPVAL                         R13 5
      170 GETTABLEKS                       R13 R13 K1 ["createElement"]
      172 GETUPVAL                         R14 6
      173 GETTABLEKS                       R14 R14 K2 ["View"]
      175 DUPTABLE                         R15 K11 [{"LayoutOrder", "tag"}]
      176 LOADN                            R16 1
      177 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
      179 LOADK                            R16 K43 ["row size-full-0 auto-y align-y-center padding-xsmall"]
      180 SETTABLEKS                       R16 R15 K3 ["tag"]
      182 DUPTABLE                         R16 K46 [{"NameText", "CreatorText"}]
      183 GETUPVAL                         R17 5
      184 GETTABLEKS                       R17 R17 K1 ["createElement"]
      186 GETUPVAL                         R18 6
      187 GETTABLEKS                       R18 R18 K14 ["Text"]
      189 DUPTABLE                         R19 K35 [{"LayoutOrder", "Text", "tag"}]
      190 LOADN                            R20 1
      191 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      193 LOADK                            R22 K47 ["AssetProperty"]
      194 LOADK                            R23 K48 ["DisplayName"]
      195 NAMECALL                         R20 R2 K49 ["getText"]
      197 CALL                             R20 3 1
      198 SETTABLEKS                       R20 R19 K14 ["Text"]
      200 LOADK                            R20 K50 ["text-title-medium text-align-x-left fill auto-y"]
      201 SETTABLEKS                       R20 R19 K3 ["tag"]
      203 CALL                             R17 2 1
      204 SETTABLEKS                       R17 R16 K44 ["NameText"]
      206 GETUPVAL                         R17 5
      207 GETTABLEKS                       R17 R17 K1 ["createElement"]
      209 GETUPVAL                         R18 6
      210 GETTABLEKS                       R18 R18 K14 ["Text"]
      212 DUPTABLE                         R19 K35 [{"LayoutOrder", "Text", "tag"}]
      213 LOADN                            R20 2
      214 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      216 LOADK                            R22 K47 ["AssetProperty"]
      217 LOADK                            R23 K51 ["Creator"]
      218 NAMECALL                         R20 R2 K49 ["getText"]
      220 CALL                             R20 3 1
      221 SETTABLEKS                       R20 R19 K14 ["Text"]
      223 LOADK                            R20 K50 ["text-title-medium text-align-x-left fill auto-y"]
      224 SETTABLEKS                       R20 R19 K3 ["tag"]
      226 CALL                             R17 2 1
      227 SETTABLEKS                       R17 R16 K45 ["CreatorText"]
      229 CALL                             R13 3 1
      230 SETTABLEKS                       R13 R12 K39 ["HeaderRow"]
      232 GETUPVAL                         R13 5
      233 GETTABLEKS                       R13 R13 K1 ["createElement"]
      235 GETUPVAL                         R14 6
      236 GETTABLEKS                       R14 R14 K52 ["Divider"]
      238 DUPTABLE                         R15 K54 [{"LayoutOrder", "orientation"}]
      239 LOADN                            R16 2
      240 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
      242 GETUPVAL                         R16 6
      243 GETTABLEKS                       R16 R16 K21 ["Enums"]
      245 GETTABLEKS                       R16 R16 K55 ["DividerOrientation"]
      247 GETTABLEKS                       R16 R16 K56 ["Horizontal"]
      249 SETTABLEKS                       R16 R15 K53 ["orientation"]
      251 CALL                             R13 2 1
      252 SETTABLEKS                       R13 R12 K40 ["HeaderRowStroke"]
      254 GETUPVAL                         R13 5
      255 GETTABLEKS                       R13 R13 K1 ["createElement"]
      257 GETUPVAL                         R14 6
      258 GETTABLEKS                       R14 R14 K57 ["ScrollView"]
      260 DUPTABLE                         R15 K60 [{"LayoutOrder", "tag", "layout", "scroll"}]
      261 LOADN                            R16 3
      262 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
      264 LOADK                            R16 K61 ["size-full-0 fill"]
      265 SETTABLEKS                       R16 R15 K3 ["tag"]
      267 DUPTABLE                         R16 K63 [{"FillDirection"}]
      268 GETIMPORT                        R17 K66 [Enum.FillDirection.Vertical]
      270 SETTABLEKS                       R17 R16 K62 ["FillDirection"]
      272 SETTABLEKS                       R16 R15 K58 ["layout"]
      274 DUPTABLE                         R16 K70 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      275 GETIMPORT                        R17 K73 [Enum.AutomaticSize.Y]
      277 SETTABLEKS                       R17 R16 K67 ["AutomaticCanvasSize"]
      279 GETIMPORT                        R17 K76 [UDim2.fromOffset]
      281 LOADN                            R18 0
      282 LOADN                            R19 0
      283 CALL                             R17 2 1
      284 SETTABLEKS                       R17 R16 K68 ["CanvasSize"]
      286 GETIMPORT                        R17 K77 [Enum.ScrollingDirection.Y]
      288 SETTABLEKS                       R17 R16 K69 ["ScrollingDirection"]
      290 SETTABLEKS                       R16 R15 K59 ["scroll"]
      292 GETUPVAL                         R16 7
      293 GETTABLEKS                       R16 R16 K78 ["map"]
      295 GETTABLEKS                       R17 R0 K79 ["AssetPaths"]
      297 DUPCLOSURE                       R18 K80 [PROTO_2]
      298 CAPTURE                          UPVAL U5
      299 CAPTURE                          UPVAL U8
      300 CALL                             R16 2 -1
      301 CALL                             R13 -1 1
      302 SETTABLEKS                       R13 R12 K41 ["Items"]
      304 CALL                             R9 3 1
      305 SETTABLEKS                       R9 R8 K7 ["List"]
      307 GETUPVAL                         R9 5
      308 GETTABLEKS                       R9 R9 K1 ["createElement"]
      310 GETUPVAL                         R10 6
      311 GETTABLEKS                       R10 R10 K2 ["View"]
      313 DUPTABLE                         R11 K11 [{"LayoutOrder", "tag"}]
      314 LOADN                            R12 3
      315 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      317 LOADK                            R12 K81 ["row size-full-0 auto-y align-y-center"]
      318 SETTABLEKS                       R12 R11 K3 ["tag"]
      320 DUPTABLE                         R12 K84 [{"Link", "Buttons"}]
      321 GETUPVAL                         R13 5
      322 GETTABLEKS                       R13 R13 K1 ["createElement"]
      324 GETUPVAL                         R14 6
      325 GETTABLEKS                       R14 R14 K2 ["View"]
      327 DUPTABLE                         R15 K85 [{"tag", "LayoutOrder"}]
      328 LOADK                            R16 K86 ["fill auto-y align-y-center"]
      329 SETTABLEKS                       R16 R15 K3 ["tag"]
      331 LOADN                            R16 1
      332 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
      334 GETTABLEKS                       R17 R0 K87 ["LinkText"]
      336 JUMPIFEQKNIL                     R17 ; [+26]
      338 GETTABLEKS                       R17 R0 K88 ["LinkUrl"]
      340 JUMPIFEQKNIL                     R17 ; [+22]
      342 GETUPVAL                         R16 5
      343 GETTABLEKS                       R16 R16 K1 ["createElement"]
      345 GETUPVAL                         R17 6
      346 GETTABLEKS                       R17 R17 K14 ["Text"]
      348 DUPTABLE                         R18 K90 [{"tag", "Text", "onActivated"}]
      349 LOADK                            R19 K91 ["text-align-x-left text-align-y-center content-link text-label-small text-wrap auto-xy"]
      350 SETTABLEKS                       R19 R18 K3 ["tag"]
      352 GETTABLEKS                       R19 R0 K87 ["LinkText"]
      354 SETTABLEKS                       R19 R18 K14 ["Text"]
      356 NEWCLOSURE                       R19 P2
      357 CAPTURE                          UPVAL U9
      358 CAPTURE                          VAL R0
      359 SETTABLEKS                       R19 R18 K89 ["onActivated"]
      361 CALL                             R16 2 1
      362 JUMP                             ; [+1]
      363 LOADNIL                          R16
      364 CALL                             R13 3 1
      365 SETTABLEKS                       R13 R12 K82 ["Link"]
      367 GETUPVAL                         R13 5
      368 GETTABLEKS                       R13 R13 K1 ["createElement"]
      370 GETUPVAL                         R14 6
      371 GETTABLEKS                       R14 R14 K2 ["View"]
      373 DUPTABLE                         R15 K85 [{"tag", "LayoutOrder"}]
      374 LOADK                            R16 K92 ["row auto-xy align-x-right align-y-center gap-small"]
      375 SETTABLEKS                       R16 R15 K3 ["tag"]
      377 LOADN                            R16 2
      378 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
      380 DUPTABLE                         R16 K95 [{"NavigationButton", "CopyButton"}]
      381 GETUPVAL                         R17 5
      382 GETTABLEKS                       R17 R17 K1 ["createElement"]
      384 GETUPVAL                         R18 6
      385 GETTABLEKS                       R18 R18 K96 ["Button"]
      387 DUPTABLE                         R19 K99 [{"LayoutOrder", "text", "variant", "size", "onActivated", "testId"}]
      388 LOADN                            R20 1
      389 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      391 GETTABLEKS                       R21 R0 K100 ["CanClose"]
      393 JUMPIFNOT                        R21 ; [+6]
      394 LOADK                            R22 K101 ["QuickShare"]
      395 LOADK                            R23 K102 ["CloseButton"]
      396 NAMECALL                         R20 R2 K49 ["getText"]
      398 CALL                             R20 3 1
      399 JUMP                             ; [+5]
      400 LOADK                            R22 K103 ["TopBar"]
      401 LOADK                            R23 K104 ["BackButton"]
      402 NAMECALL                         R20 R2 K49 ["getText"]
      404 CALL                             R20 3 1
      405 SETTABLEKS                       R20 R19 K97 ["text"]
      407 GETUPVAL                         R20 6
      408 GETTABLEKS                       R20 R20 K21 ["Enums"]
      410 GETTABLEKS                       R20 R20 K105 ["ButtonVariant"]
      412 GETTABLEKS                       R20 R20 K106 ["Standard"]
      414 SETTABLEKS                       R20 R19 K19 ["variant"]
      416 GETUPVAL                         R20 6
      417 GETTABLEKS                       R20 R20 K21 ["Enums"]
      419 GETTABLEKS                       R20 R20 K107 ["InputSize"]
      421 GETTABLEKS                       R20 R20 K108 ["Small"]
      423 SETTABLEKS                       R20 R19 K17 ["size"]
      425 GETTABLEKS                       R21 R0 K100 ["CanClose"]
      427 JUMPIFNOT                        R21 ; [+3]
      428 GETTABLEKS                       R20 R0 K109 ["OnClose"]
      430 JUMP                             ; [+2]
      431 GETTABLEKS                       R20 R0 K110 ["OnBack"]
      433 SETTABLEKS                       R20 R19 K89 ["onActivated"]
      435 LOADK                            R20 K111 ["asset-errors-close-button"]
      436 SETTABLEKS                       R20 R19 K98 ["testId"]
      438 CALL                             R17 2 1
      439 SETTABLEKS                       R17 R16 K93 ["NavigationButton"]
      441 GETUPVAL                         R17 5
      442 GETTABLEKS                       R17 R17 K1 ["createElement"]
      444 GETUPVAL                         R18 6
      445 GETTABLEKS                       R18 R18 K96 ["Button"]
      447 DUPTABLE                         R19 K112 [{"LayoutOrder", "text", "variant", "size", "onActivated"}]
      448 LOADN                            R20 2
      449 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      451 LOADK                            R22 K113 ["ContextMenu"]
      452 LOADK                            R23 K114 ["CopyToClipboard"]
      453 NAMECALL                         R20 R2 K49 ["getText"]
      455 CALL                             R20 3 1
      456 SETTABLEKS                       R20 R19 K97 ["text"]
      458 GETUPVAL                         R20 6
      459 GETTABLEKS                       R20 R20 K21 ["Enums"]
      461 GETTABLEKS                       R20 R20 K105 ["ButtonVariant"]
      463 GETTABLEKS                       R20 R20 K115 ["Emphasis"]
      465 SETTABLEKS                       R20 R19 K19 ["variant"]
      467 GETUPVAL                         R20 6
      468 GETTABLEKS                       R20 R20 K21 ["Enums"]
      470 GETTABLEKS                       R20 R20 K107 ["InputSize"]
      472 GETTABLEKS                       R20 R20 K108 ["Small"]
      474 SETTABLEKS                       R20 R19 K17 ["size"]
      476 SETTABLEKS                       R4 R19 K89 ["onActivated"]
      478 CALL                             R17 2 1
      479 SETTABLEKS                       R17 R16 K94 ["CopyButton"]
      481 CALL                             R13 3 1
      482 SETTABLEKS                       R13 R12 K83 ["Buttons"]
      484 CALL                             R9 3 1
      485 SETTABLEKS                       R9 R8 K8 ["Footer"]
      487 CALL                             R5 3 -1
      488 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["BrowserService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssetManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Packages"]
       24 GETTABLEKS                       R4 R4 K13 ["Dash"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K12 ["Packages"]
       31 GETTABLEKS                       R5 R5 K14 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K12 ["Packages"]
       38 GETTABLEKS                       R6 R6 K15 ["Foundation"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K16 ["Hooks"]
       43 GETTABLEKS                       R6 R6 K17 ["useTokens"]
       45 GETIMPORT                        R7 K9 [require]
       47 GETTABLEKS                       R8 R1 K12 ["Packages"]
       49 GETTABLEKS                       R8 R8 K18 ["Framework"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R7 K19 ["ContextServices"]
       54 GETTABLEKS                       R9 R8 K20 ["Localization"]
       56 GETIMPORT                        R10 K9 [require]
       58 GETTABLEKS                       R11 R1 K10 ["Src"]
       60 GETTABLEKS                       R11 R11 K21 ["Controllers"]
       62 GETTABLEKS                       R11 R11 K22 ["ItemsController"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K9 [require]
       67 GETTABLEKS                       R12 R1 K10 ["Src"]
       69 GETTABLEKS                       R12 R12 K23 ["Util"]
       71 GETTABLEKS                       R12 R12 K24 ["copyAssetInfosToClipboard"]
       73 CALL                             R11 1 1
       74 DUPCLOSURE                       R12 K25 [PROTO_0]
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R5
       79 DUPCLOSURE                       R13 K26 [PROTO_4]
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R0
       90 RETURN                           R13 1
