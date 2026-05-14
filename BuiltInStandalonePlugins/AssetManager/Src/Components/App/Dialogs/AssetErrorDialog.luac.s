PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 NAMECALL                         R3 R1 K1 ["getItemsCache"]
       10 CALL                             R3 1 1
       11 NAMECALL                         R4 R2 K2 ["getCurrentScope"]
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R5 R0 K3 ["AssetPath"]
       16 GETTABLEKS                       R8 R4 K4 ["Uid"]
       18 MOVE                             R9 R5
       19 GETUPVAL                         R10 2
       20 GETTABLEKS                       R10 R10 K5 ["AssetInfoField"]
       22 GETTABLEKS                       R10 R10 K6 ["Creator"]
       24 NAMECALL                         R6 R3 K7 ["getItemField"]
       26 CALL                             R6 4 1
       27 GETTABLEKS                       R10 R4 K4 ["Uid"]
       29 MOVE                             R11 R5
       30 GETUPVAL                         R12 2
       31 GETTABLEKS                       R12 R12 K5 ["AssetInfoField"]
       33 GETTABLEKS                       R12 R12 K9 ["AssetId"]
       35 NAMECALL                         R8 R3 K7 ["getItemField"]
       37 CALL                             R8 4 1
       38 ORK                              R7 R8 K8 [0]
       39 GETTABLEKS                       R11 R4 K4 ["Uid"]
       41 MOVE                             R12 R5
       42 GETUPVAL                         R13 2
       43 GETTABLEKS                       R13 R13 K5 ["AssetInfoField"]
       45 GETTABLEKS                       R13 R13 K11 ["DisplayName"]
       47 NAMECALL                         R9 R3 K7 ["getItemField"]
       49 CALL                             R9 4 1
       50 ORK                              R8 R9 K10 [""]
       51 JUMPIFEQKNIL                     R6 ; [+4]
       53 GETTABLEKS                       R9 R6 K12 ["Name"]
       55 JUMP                             ; [+1]
       56 LOADK                            R9 K10 [""]
       57 GETUPVAL                         R10 3
       58 GETTABLEKS                       R10 R10 K13 ["createElement"]
       60 GETUPVAL                         R11 4
       61 GETTABLEKS                       R11 R11 K14 ["View"]
       63 DUPTABLE                         R12 K16 [{"tag"}]
       64 LOADK                            R13 K17 ["col size-full-0 auto-y data-testid=asset-error-row"]
       65 SETTABLEKS                       R13 R12 K15 ["tag"]
       67 DUPTABLE                         R13 K20 [{"Content", "BottomStroke"}]
       68 GETUPVAL                         R14 3
       69 GETTABLEKS                       R14 R14 K13 ["createElement"]
       71 GETUPVAL                         R15 4
       72 GETTABLEKS                       R15 R15 K14 ["View"]
       74 DUPTABLE                         R16 K22 [{"LayoutOrder", "tag"}]
       75 LOADN                            R17 1
       76 SETTABLEKS                       R17 R16 K21 ["LayoutOrder"]
       78 LOADK                            R17 K23 ["row size-full-0 auto-y align-y-center padding-small"]
       79 SETTABLEKS                       R17 R16 K15 ["tag"]
       81 DUPTABLE                         R17 K25 [{"AssetInfo", "Creator"}]
       82 GETUPVAL                         R18 3
       83 GETTABLEKS                       R18 R18 K13 ["createElement"]
       85 GETUPVAL                         R19 4
       86 GETTABLEKS                       R19 R19 K14 ["View"]
       88 DUPTABLE                         R20 K22 [{"LayoutOrder", "tag"}]
       89 LOADN                            R21 1
       90 SETTABLEKS                       R21 R20 K21 ["LayoutOrder"]
       92 LOADK                            R21 K26 ["row fill auto-y align-y-center gap-small"]
       93 SETTABLEKS                       R21 R20 K15 ["tag"]
       95 DUPTABLE                         R21 K28 [{"Thumbnail", "Name"}]
       96 GETUPVAL                         R22 3
       97 GETTABLEKS                       R22 R22 K13 ["createElement"]
       99 GETUPVAL                         R23 4
      100 GETTABLEKS                       R23 R23 K29 ["Image"]
      102 DUPTABLE                         R24 K30 [{"LayoutOrder", "Image", "tag"}]
      103 LOADN                            R25 1
      104 SETTABLEKS                       R25 R24 K21 ["LayoutOrder"]
      106 LOADK                            R26 K31 ["rbxthumb://type=CreatorContextAsset&id=%*&w=150&h=150"]
      107 MOVE                             R28 R7
      108 NAMECALL                         R26 R26 K32 ["format"]
      110 CALL                             R26 2 1
      111 MOVE                             R25 R26
      112 SETTABLEKS                       R25 R24 K29 ["Image"]
      114 LOADK                            R25 K33 ["size-600 radius-small"]
      115 SETTABLEKS                       R25 R24 K15 ["tag"]
      117 CALL                             R22 2 1
      118 SETTABLEKS                       R22 R21 K27 ["Thumbnail"]
      120 GETUPVAL                         R22 3
      121 GETTABLEKS                       R22 R22 K13 ["createElement"]
      123 GETUPVAL                         R23 4
      124 GETTABLEKS                       R23 R23 K34 ["Text"]
      126 DUPTABLE                         R24 K35 [{"LayoutOrder", "Text", "tag"}]
      127 LOADN                            R25 2
      128 SETTABLEKS                       R25 R24 K21 ["LayoutOrder"]
      130 SETTABLEKS                       R8 R24 K34 ["Text"]
      132 LOADK                            R25 K36 ["text-body-medium text-align-x-left text-truncate-split fill auto-y"]
      133 SETTABLEKS                       R25 R24 K15 ["tag"]
      135 CALL                             R22 2 1
      136 SETTABLEKS                       R22 R21 K12 ["Name"]
      138 CALL                             R18 3 1
      139 SETTABLEKS                       R18 R17 K24 ["AssetInfo"]
      141 GETUPVAL                         R18 3
      142 GETTABLEKS                       R18 R18 K13 ["createElement"]
      144 GETUPVAL                         R19 4
      145 GETTABLEKS                       R19 R19 K34 ["Text"]
      147 DUPTABLE                         R20 K35 [{"LayoutOrder", "Text", "tag"}]
      148 LOADN                            R21 2
      149 SETTABLEKS                       R21 R20 K21 ["LayoutOrder"]
      151 SETTABLEKS                       R9 R20 K34 ["Text"]
      153 LOADK                            R21 K37 ["text-body-medium text-align-x-left fill auto-y"]
      154 SETTABLEKS                       R21 R20 K15 ["tag"]
      156 CALL                             R18 2 1
      157 SETTABLEKS                       R18 R17 K6 ["Creator"]
      159 CALL                             R14 3 1
      160 SETTABLEKS                       R14 R13 K18 ["Content"]
      162 GETUPVAL                         R14 3
      163 GETTABLEKS                       R14 R14 K13 ["createElement"]
      165 GETUPVAL                         R15 4
      166 GETTABLEKS                       R15 R15 K38 ["Divider"]
      168 DUPTABLE                         R16 K40 [{"LayoutOrder", "orientation"}]
      169 LOADN                            R17 2
      170 SETTABLEKS                       R17 R16 K21 ["LayoutOrder"]
      172 GETUPVAL                         R17 4
      173 GETTABLEKS                       R17 R17 K41 ["Enums"]
      175 GETTABLEKS                       R17 R17 K42 ["DividerOrientation"]
      177 GETTABLEKS                       R17 R17 K43 ["Horizontal"]
      179 SETTABLEKS                       R17 R16 K39 ["orientation"]
      181 CALL                             R14 2 1
      182 SETTABLEKS                       R14 R13 K19 ["BottomStroke"]
      184 CALL                             R10 3 -1
      185 RETURN                           R10 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 GETTABLEKS                       R4 R4 K0 ["AssetPaths"]
        7 NEWTABLE                         R5 0 3
        9 GETUPVAL                         R6 5
       10 GETTABLEKS                       R6 R6 K1 ["AssetInfoField"]
       12 GETTABLEKS                       R6 R6 K2 ["AssetId"]
       14 GETUPVAL                         R7 5
       15 GETTABLEKS                       R7 R7 K1 ["AssetInfoField"]
       17 GETTABLEKS                       R7 R7 K3 ["DisplayName"]
       19 GETUPVAL                         R8 5
       20 GETTABLEKS                       R8 R8 K1 ["AssetInfoField"]
       22 GETTABLEKS                       R8 R8 K4 ["Creator"]
       24 SETLIST                          R5 R6 3 [1]
       26 CALL                             R0 5 0
       27 RETURN                           R0 0

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
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 CALL                             R4 0 1
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U5
       21 GETUPVAL                         R6 6
       22 GETTABLEKS                       R6 R6 K1 ["createElement"]
       24 GETUPVAL                         R7 7
       25 GETTABLEKS                       R7 R7 K2 ["View"]
       27 DUPTABLE                         R8 K4 [{"tag"}]
       28 LOADK                            R9 K5 ["col size-full padding-medium gap-medium"]
       29 SETTABLEKS                       R9 R8 K3 ["tag"]
       31 DUPTABLE                         R9 K9 [{"Header", "List", "Footer"}]
       32 GETUPVAL                         R10 6
       33 GETTABLEKS                       R10 R10 K1 ["createElement"]
       35 GETUPVAL                         R11 7
       36 GETTABLEKS                       R11 R11 K2 ["View"]
       38 DUPTABLE                         R12 K11 [{"LayoutOrder", "tag"}]
       39 LOADN                            R13 1
       40 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
       42 LOADK                            R13 K12 ["row size-full-0 auto-y align-y-center gap-medium"]
       43 SETTABLEKS                       R13 R12 K3 ["tag"]
       45 DUPTABLE                         R13 K15 [{"Icon", "Text"}]
       46 GETUPVAL                         R14 6
       47 GETTABLEKS                       R14 R14 K1 ["createElement"]
       49 GETUPVAL                         R15 7
       50 GETTABLEKS                       R15 R15 K13 ["Icon"]
       52 DUPTABLE                         R16 K20 [{"LayoutOrder", "name", "size", "style", "variant"}]
       53 LOADN                            R17 1
       54 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
       56 GETUPVAL                         R17 7
       57 GETTABLEKS                       R17 R17 K21 ["Enums"]
       59 GETTABLEKS                       R17 R17 K22 ["IconName"]
       61 GETTABLEKS                       R17 R17 K23 ["TriangleExclamation"]
       63 SETTABLEKS                       R17 R16 K16 ["name"]
       65 GETUPVAL                         R17 7
       66 GETTABLEKS                       R17 R17 K21 ["Enums"]
       68 GETTABLEKS                       R17 R17 K24 ["IconSize"]
       70 GETTABLEKS                       R17 R17 K25 ["Large"]
       72 SETTABLEKS                       R17 R16 K17 ["size"]
       74 GETTABLEKS                       R17 R4 K26 ["Color"]
       76 GETTABLEKS                       R17 R17 K27 ["System"]
       78 GETTABLEKS                       R17 R17 K28 ["Warning"]
       80 SETTABLEKS                       R17 R16 K18 ["style"]
       82 GETUPVAL                         R17 7
       83 GETTABLEKS                       R17 R17 K21 ["Enums"]
       85 GETTABLEKS                       R17 R17 K29 ["IconVariant"]
       87 GETTABLEKS                       R17 R17 K30 ["Filled"]
       89 SETTABLEKS                       R17 R16 K19 ["variant"]
       91 CALL                             R14 2 1
       92 SETTABLEKS                       R14 R13 K13 ["Icon"]
       94 GETUPVAL                         R14 6
       95 GETTABLEKS                       R14 R14 K1 ["createElement"]
       97 GETUPVAL                         R15 7
       98 GETTABLEKS                       R15 R15 K2 ["View"]
      100 DUPTABLE                         R16 K11 [{"LayoutOrder", "tag"}]
      101 LOADN                            R17 2
      102 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      104 LOADK                            R17 K31 ["col fill auto-y gap-xsmall"]
      105 SETTABLEKS                       R17 R16 K3 ["tag"]
      107 DUPTABLE                         R17 K34 [{"Title", "Description"}]
      108 GETUPVAL                         R18 6
      109 GETTABLEKS                       R18 R18 K1 ["createElement"]
      111 GETUPVAL                         R19 7
      112 GETTABLEKS                       R19 R19 K14 ["Text"]
      114 DUPTABLE                         R20 K35 [{"LayoutOrder", "Text", "tag"}]
      115 LOADN                            R21 1
      116 SETTABLEKS                       R21 R20 K10 ["LayoutOrder"]
      118 GETTABLEKS                       R21 R0 K32 ["Title"]
      120 SETTABLEKS                       R21 R20 K14 ["Text"]
      122 LOADK                            R21 K36 ["text-title-medium auto-xy"]
      123 SETTABLEKS                       R21 R20 K3 ["tag"]
      125 CALL                             R18 2 1
      126 SETTABLEKS                       R18 R17 K32 ["Title"]
      128 GETTABLEKS                       R19 R0 K33 ["Description"]
      130 JUMPIFEQKNIL                     R19 ; [+20]
      132 GETUPVAL                         R18 6
      133 GETTABLEKS                       R18 R18 K1 ["createElement"]
      135 GETUPVAL                         R19 7
      136 GETTABLEKS                       R19 R19 K14 ["Text"]
      138 DUPTABLE                         R20 K35 [{"LayoutOrder", "Text", "tag"}]
      139 LOADN                            R21 2
      140 SETTABLEKS                       R21 R20 K10 ["LayoutOrder"]
      142 GETTABLEKS                       R21 R0 K33 ["Description"]
      144 SETTABLEKS                       R21 R20 K14 ["Text"]
      146 LOADK                            R21 K37 ["text-body-medium text-wrap auto-xy"]
      147 SETTABLEKS                       R21 R20 K3 ["tag"]
      149 CALL                             R18 2 1
      150 JUMP                             ; [+1]
      151 LOADNIL                          R18
      152 SETTABLEKS                       R18 R17 K33 ["Description"]
      154 CALL                             R14 3 1
      155 SETTABLEKS                       R14 R13 K14 ["Text"]
      157 CALL                             R10 3 1
      158 SETTABLEKS                       R10 R9 K6 ["Header"]
      160 GETUPVAL                         R10 6
      161 GETTABLEKS                       R10 R10 K1 ["createElement"]
      163 GETUPVAL                         R11 7
      164 GETTABLEKS                       R11 R11 K2 ["View"]
      166 DUPTABLE                         R12 K11 [{"LayoutOrder", "tag"}]
      167 LOADN                            R13 2
      168 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
      170 LOADK                            R13 K38 ["col size-full-0 fill stroke-emphasis radius-medium"]
      171 SETTABLEKS                       R13 R12 K3 ["tag"]
      173 DUPTABLE                         R13 K42 [{"HeaderRow", "HeaderRowStroke", "Items"}]
      174 GETUPVAL                         R14 6
      175 GETTABLEKS                       R14 R14 K1 ["createElement"]
      177 GETUPVAL                         R15 7
      178 GETTABLEKS                       R15 R15 K2 ["View"]
      180 DUPTABLE                         R16 K11 [{"LayoutOrder", "tag"}]
      181 LOADN                            R17 1
      182 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      184 LOADK                            R17 K43 ["row size-full-0 auto-y align-y-center padding-xsmall"]
      185 SETTABLEKS                       R17 R16 K3 ["tag"]
      187 DUPTABLE                         R17 K46 [{"NameText", "CreatorText"}]
      188 GETUPVAL                         R18 6
      189 GETTABLEKS                       R18 R18 K1 ["createElement"]
      191 GETUPVAL                         R19 7
      192 GETTABLEKS                       R19 R19 K14 ["Text"]
      194 DUPTABLE                         R20 K35 [{"LayoutOrder", "Text", "tag"}]
      195 LOADN                            R21 1
      196 SETTABLEKS                       R21 R20 K10 ["LayoutOrder"]
      198 LOADK                            R23 K47 ["AssetProperty"]
      199 LOADK                            R24 K48 ["DisplayName"]
      200 NAMECALL                         R21 R3 K49 ["getText"]
      202 CALL                             R21 3 1
      203 SETTABLEKS                       R21 R20 K14 ["Text"]
      205 LOADK                            R21 K50 ["text-title-medium text-align-x-left fill auto-y"]
      206 SETTABLEKS                       R21 R20 K3 ["tag"]
      208 CALL                             R18 2 1
      209 SETTABLEKS                       R18 R17 K44 ["NameText"]
      211 GETUPVAL                         R18 6
      212 GETTABLEKS                       R18 R18 K1 ["createElement"]
      214 GETUPVAL                         R19 7
      215 GETTABLEKS                       R19 R19 K14 ["Text"]
      217 DUPTABLE                         R20 K35 [{"LayoutOrder", "Text", "tag"}]
      218 LOADN                            R21 2
      219 SETTABLEKS                       R21 R20 K10 ["LayoutOrder"]
      221 LOADK                            R23 K47 ["AssetProperty"]
      222 LOADK                            R24 K51 ["Creator"]
      223 NAMECALL                         R21 R3 K49 ["getText"]
      225 CALL                             R21 3 1
      226 SETTABLEKS                       R21 R20 K14 ["Text"]
      228 LOADK                            R21 K50 ["text-title-medium text-align-x-left fill auto-y"]
      229 SETTABLEKS                       R21 R20 K3 ["tag"]
      231 CALL                             R18 2 1
      232 SETTABLEKS                       R18 R17 K45 ["CreatorText"]
      234 CALL                             R14 3 1
      235 SETTABLEKS                       R14 R13 K39 ["HeaderRow"]
      237 GETUPVAL                         R14 6
      238 GETTABLEKS                       R14 R14 K1 ["createElement"]
      240 GETUPVAL                         R15 7
      241 GETTABLEKS                       R15 R15 K52 ["Divider"]
      243 DUPTABLE                         R16 K54 [{"LayoutOrder", "orientation"}]
      244 LOADN                            R17 2
      245 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      247 GETUPVAL                         R17 7
      248 GETTABLEKS                       R17 R17 K21 ["Enums"]
      250 GETTABLEKS                       R17 R17 K55 ["DividerOrientation"]
      252 GETTABLEKS                       R17 R17 K56 ["Horizontal"]
      254 SETTABLEKS                       R17 R16 K53 ["orientation"]
      256 CALL                             R14 2 1
      257 SETTABLEKS                       R14 R13 K40 ["HeaderRowStroke"]
      259 GETUPVAL                         R14 6
      260 GETTABLEKS                       R14 R14 K1 ["createElement"]
      262 GETUPVAL                         R15 7
      263 GETTABLEKS                       R15 R15 K57 ["ScrollView"]
      265 DUPTABLE                         R16 K60 [{"LayoutOrder", "tag", "layout", "scroll"}]
      266 LOADN                            R17 3
      267 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      269 LOADK                            R17 K61 ["size-full-0 fill"]
      270 SETTABLEKS                       R17 R16 K3 ["tag"]
      272 DUPTABLE                         R17 K63 [{"FillDirection"}]
      273 GETIMPORT                        R18 K66 [Enum.FillDirection.Vertical]
      275 SETTABLEKS                       R18 R17 K62 ["FillDirection"]
      277 SETTABLEKS                       R17 R16 K58 ["layout"]
      279 DUPTABLE                         R17 K70 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      280 GETIMPORT                        R18 K73 [Enum.AutomaticSize.Y]
      282 SETTABLEKS                       R18 R17 K67 ["AutomaticCanvasSize"]
      284 GETIMPORT                        R18 K76 [UDim2.fromOffset]
      286 LOADN                            R19 0
      287 LOADN                            R20 0
      288 CALL                             R18 2 1
      289 SETTABLEKS                       R18 R17 K68 ["CanvasSize"]
      291 GETIMPORT                        R18 K77 [Enum.ScrollingDirection.Y]
      293 SETTABLEKS                       R18 R17 K69 ["ScrollingDirection"]
      295 SETTABLEKS                       R17 R16 K59 ["scroll"]
      297 GETUPVAL                         R17 8
      298 GETTABLEKS                       R17 R17 K78 ["map"]
      300 GETTABLEKS                       R18 R0 K79 ["AssetPaths"]
      302 DUPCLOSURE                       R19 K80 [PROTO_2]
      303 CAPTURE                          UPVAL U6
      304 CAPTURE                          UPVAL U9
      305 CALL                             R17 2 -1
      306 CALL                             R14 -1 1
      307 SETTABLEKS                       R14 R13 K41 ["Items"]
      309 CALL                             R10 3 1
      310 SETTABLEKS                       R10 R9 K7 ["List"]
      312 GETUPVAL                         R10 6
      313 GETTABLEKS                       R10 R10 K1 ["createElement"]
      315 GETUPVAL                         R11 7
      316 GETTABLEKS                       R11 R11 K2 ["View"]
      318 DUPTABLE                         R12 K11 [{"LayoutOrder", "tag"}]
      319 LOADN                            R13 3
      320 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
      322 LOADK                            R13 K81 ["row size-full-0 auto-y align-y-center"]
      323 SETTABLEKS                       R13 R12 K3 ["tag"]
      325 DUPTABLE                         R13 K84 [{"Link", "Buttons"}]
      326 GETUPVAL                         R14 6
      327 GETTABLEKS                       R14 R14 K1 ["createElement"]
      329 GETUPVAL                         R15 7
      330 GETTABLEKS                       R15 R15 K2 ["View"]
      332 DUPTABLE                         R16 K85 [{"tag", "LayoutOrder"}]
      333 LOADK                            R17 K86 ["fill auto-y align-y-center"]
      334 SETTABLEKS                       R17 R16 K3 ["tag"]
      336 LOADN                            R17 1
      337 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      339 GETTABLEKS                       R18 R0 K87 ["LinkText"]
      341 JUMPIFEQKNIL                     R18 ; [+26]
      343 GETTABLEKS                       R18 R0 K88 ["LinkUrl"]
      345 JUMPIFEQKNIL                     R18 ; [+22]
      347 GETUPVAL                         R17 6
      348 GETTABLEKS                       R17 R17 K1 ["createElement"]
      350 GETUPVAL                         R18 7
      351 GETTABLEKS                       R18 R18 K14 ["Text"]
      353 DUPTABLE                         R19 K90 [{"tag", "Text", "onActivated"}]
      354 LOADK                            R20 K91 ["text-align-x-left text-align-y-center content-link text-label-small text-wrap auto-xy"]
      355 SETTABLEKS                       R20 R19 K3 ["tag"]
      357 GETTABLEKS                       R20 R0 K87 ["LinkText"]
      359 SETTABLEKS                       R20 R19 K14 ["Text"]
      361 NEWCLOSURE                       R20 P2
      362 CAPTURE                          UPVAL U10
      363 CAPTURE                          VAL R0
      364 SETTABLEKS                       R20 R19 K89 ["onActivated"]
      366 CALL                             R17 2 1
      367 JUMP                             ; [+1]
      368 LOADNIL                          R17
      369 CALL                             R14 3 1
      370 SETTABLEKS                       R14 R13 K82 ["Link"]
      372 GETUPVAL                         R14 6
      373 GETTABLEKS                       R14 R14 K1 ["createElement"]
      375 GETUPVAL                         R15 7
      376 GETTABLEKS                       R15 R15 K2 ["View"]
      378 DUPTABLE                         R16 K85 [{"tag", "LayoutOrder"}]
      379 LOADK                            R17 K92 ["row auto-xy align-x-right align-y-center gap-small"]
      380 SETTABLEKS                       R17 R16 K3 ["tag"]
      382 LOADN                            R17 2
      383 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      385 DUPTABLE                         R17 K95 [{"NavigationButton", "CopyButton"}]
      386 GETUPVAL                         R18 6
      387 GETTABLEKS                       R18 R18 K1 ["createElement"]
      389 GETUPVAL                         R19 7
      390 GETTABLEKS                       R19 R19 K96 ["Button"]
      392 DUPTABLE                         R20 K99 [{"LayoutOrder", "text", "variant", "size", "onActivated", "testId"}]
      393 LOADN                            R21 1
      394 SETTABLEKS                       R21 R20 K10 ["LayoutOrder"]
      396 GETTABLEKS                       R22 R0 K100 ["CanClose"]
      398 JUMPIFNOT                        R22 ; [+6]
      399 LOADK                            R23 K101 ["QuickShare"]
      400 LOADK                            R24 K102 ["CloseButton"]
      401 NAMECALL                         R21 R3 K49 ["getText"]
      403 CALL                             R21 3 1
      404 JUMP                             ; [+5]
      405 LOADK                            R23 K103 ["TopBar"]
      406 LOADK                            R24 K104 ["BackButton"]
      407 NAMECALL                         R21 R3 K49 ["getText"]
      409 CALL                             R21 3 1
      410 SETTABLEKS                       R21 R20 K97 ["text"]
      412 GETUPVAL                         R21 7
      413 GETTABLEKS                       R21 R21 K21 ["Enums"]
      415 GETTABLEKS                       R21 R21 K105 ["ButtonVariant"]
      417 GETTABLEKS                       R21 R21 K106 ["Standard"]
      419 SETTABLEKS                       R21 R20 K19 ["variant"]
      421 GETUPVAL                         R21 7
      422 GETTABLEKS                       R21 R21 K21 ["Enums"]
      424 GETTABLEKS                       R21 R21 K107 ["InputSize"]
      426 GETTABLEKS                       R21 R21 K108 ["Small"]
      428 SETTABLEKS                       R21 R20 K17 ["size"]
      430 GETTABLEKS                       R22 R0 K100 ["CanClose"]
      432 JUMPIFNOT                        R22 ; [+3]
      433 GETTABLEKS                       R21 R0 K109 ["OnClose"]
      435 JUMP                             ; [+2]
      436 GETTABLEKS                       R21 R0 K110 ["OnBack"]
      438 SETTABLEKS                       R21 R20 K89 ["onActivated"]
      440 LOADK                            R21 K111 ["asset-errors-close-button"]
      441 SETTABLEKS                       R21 R20 K98 ["testId"]
      443 CALL                             R18 2 1
      444 SETTABLEKS                       R18 R17 K93 ["NavigationButton"]
      446 GETUPVAL                         R18 6
      447 GETTABLEKS                       R18 R18 K1 ["createElement"]
      449 GETUPVAL                         R19 7
      450 GETTABLEKS                       R19 R19 K96 ["Button"]
      452 DUPTABLE                         R20 K112 [{"LayoutOrder", "text", "variant", "size", "onActivated"}]
      453 LOADN                            R21 2
      454 SETTABLEKS                       R21 R20 K10 ["LayoutOrder"]
      456 LOADK                            R23 K113 ["ContextMenu"]
      457 LOADK                            R24 K114 ["CopyToClipboard"]
      458 NAMECALL                         R21 R3 K49 ["getText"]
      460 CALL                             R21 3 1
      461 SETTABLEKS                       R21 R20 K97 ["text"]
      463 GETUPVAL                         R21 7
      464 GETTABLEKS                       R21 R21 K21 ["Enums"]
      466 GETTABLEKS                       R21 R21 K105 ["ButtonVariant"]
      468 GETTABLEKS                       R21 R21 K115 ["Emphasis"]
      470 SETTABLEKS                       R21 R20 K19 ["variant"]
      472 GETUPVAL                         R21 7
      473 GETTABLEKS                       R21 R21 K21 ["Enums"]
      475 GETTABLEKS                       R21 R21 K107 ["InputSize"]
      477 GETTABLEKS                       R21 R21 K108 ["Small"]
      479 SETTABLEKS                       R21 R20 K17 ["size"]
      481 SETTABLEKS                       R5 R20 K89 ["onActivated"]
      483 CALL                             R18 2 1
      484 SETTABLEKS                       R18 R17 K94 ["CopyButton"]
      486 CALL                             R14 3 1
      487 SETTABLEKS                       R14 R13 K83 ["Buttons"]
      489 CALL                             R10 3 1
      490 SETTABLEKS                       R10 R9 K8 ["Footer"]
      492 CALL                             R6 3 -1
      493 RETURN                           R6 -1

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
       62 GETTABLEKS                       R11 R11 K22 ["PluginController"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K9 [require]
       67 GETTABLEKS                       R12 R1 K10 ["Src"]
       69 GETTABLEKS                       R12 R12 K21 ["Controllers"]
       71 GETTABLEKS                       R12 R12 K23 ["ItemsController"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K9 [require]
       76 GETTABLEKS                       R13 R1 K10 ["Src"]
       78 GETTABLEKS                       R13 R13 K24 ["Util"]
       80 GETTABLEKS                       R13 R13 K25 ["copyAssetInfosToClipboard"]
       82 CALL                             R12 1 1
       83 DUPCLOSURE                       R13 K26 [PROTO_0]
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R5
       89 DUPCLOSURE                       R14 K27 [PROTO_4]
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R0
      101 RETURN                           R14 1
