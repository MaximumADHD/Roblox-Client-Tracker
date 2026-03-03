PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 LOADN                            R3 0
        9 LOADK                            R4 K1 [""]
       10 LOADK                            R5 K1 [""]
       11 GETUPVAL                         R6 2
       12 CALL                             R6 0 1
       13 JUMPIFNOT                        R6 ; [+50]
       14 NAMECALL                         R6 R1 K2 ["getItemsCache"]
       16 CALL                             R6 1 1
       17 NAMECALL                         R7 R2 K3 ["getCurrentScope"]
       19 CALL                             R7 1 1
       20 GETTABLEKS                       R8 R0 K4 ["AssetPath"]
       22 GETTABLEKS                       R11 R7 K5 ["Uid"]
       24 MOVE                             R12 R8
       25 GETUPVAL                         R15 3
       26 GETTABLEKS                       R14 R15 K6 ["AssetInfoField"]
       28 GETTABLEKS                       R13 R14 K7 ["Creator"]
       30 NAMECALL                         R9 R6 K8 ["getItemField"]
       32 CALL                             R9 4 1
       33 GETTABLEKS                       R12 R7 K5 ["Uid"]
       35 MOVE                             R13 R8
       36 GETUPVAL                         R16 3
       37 GETTABLEKS                       R15 R16 K6 ["AssetInfoField"]
       39 GETTABLEKS                       R14 R15 K10 ["AssetId"]
       41 NAMECALL                         R10 R6 K8 ["getItemField"]
       43 CALL                             R10 4 1
       44 ORK                              R3 R10 K9 [0]
       45 GETTABLEKS                       R12 R7 K5 ["Uid"]
       47 MOVE                             R13 R8
       48 GETUPVAL                         R16 3
       49 GETTABLEKS                       R15 R16 K6 ["AssetInfoField"]
       51 GETTABLEKS                       R14 R15 K11 ["DisplayName"]
       53 NAMECALL                         R10 R6 K8 ["getItemField"]
       55 CALL                             R10 4 1
       56 ORK                              R4 R10 K1 [""]
       57 JUMPIFEQKNIL                     R9 ; [+4]
       59 GETTABLEKS                       R5 R9 K12 ["Name"]
       61 JUMP                             ; [+30]
       62 LOADK                            R5 K1 [""]
       63 JUMP                             ; [+28]
       64 GETTABLEKS                       R9 R0 K4 ["AssetPath"]
       66 FASTCALL1                        TYPEOF R9 ; [+2]
       67 GETIMPORT                        R8 K14 [typeof]
       69 CALL                             R8 1 1
       70 JUMPIFEQKS                       R8 K15 ["number"] ; [+2]
       72 LOADB                            R7 0 +1
       73 LOADB                            R7 1
       74 FASTCALL1                        ASSERT R7 ; [+2]
       75 GETIMPORT                        R6 K17 [assert]
       77 CALL                             R6 1 0
       78 GETTABLEKS                       R3 R0 K4 ["AssetPath"]
       80 NAMECALL                         R7 R1 K18 ["getItems"]
       82 CALL                             R7 1 1
       83 GETTABLE                         R6 R7 R3
       84 JUMPIFEQKNIL                     R6 ; [+7]
       86 GETTABLEKS                       R4 R6 K11 ["DisplayName"]
       88 GETTABLEKS                       R7 R6 K7 ["Creator"]
       90 GETTABLEKS                       R5 R7 K12 ["Name"]
       92 GETUPVAL                         R7 4
       93 GETTABLEKS                       R6 R7 K19 ["createElement"]
       95 GETUPVAL                         R7 5
       96 DUPTABLE                         R8 K21 [{"tag"}]
       97 LOADK                            R9 K22 ["col size-full-0 auto-y data-testid=asset-error-row"]
       98 SETTABLEKS                       R9 R8 K20 ["tag"]
      100 DUPTABLE                         R9 K25 [{"Content", "BottomStroke"}]
      101 GETUPVAL                         R11 4
      102 GETTABLEKS                       R10 R11 K19 ["createElement"]
      104 GETUPVAL                         R11 5
      105 DUPTABLE                         R12 K27 [{"LayoutOrder", "tag"}]
      106 LOADN                            R13 1
      107 SETTABLEKS                       R13 R12 K26 ["LayoutOrder"]
      109 LOADK                            R13 K28 ["row size-full-0 auto-y align-y-center padding-small"]
      110 SETTABLEKS                       R13 R12 K20 ["tag"]
      112 DUPTABLE                         R13 K30 [{"AssetInfo", "Creator"}]
      113 GETUPVAL                         R15 4
      114 GETTABLEKS                       R14 R15 K19 ["createElement"]
      116 GETUPVAL                         R15 5
      117 DUPTABLE                         R16 K27 [{"LayoutOrder", "tag"}]
      118 LOADN                            R17 1
      119 SETTABLEKS                       R17 R16 K26 ["LayoutOrder"]
      121 LOADK                            R17 K31 ["row fill auto-y align-y-center gap-small"]
      122 SETTABLEKS                       R17 R16 K20 ["tag"]
      124 DUPTABLE                         R17 K33 [{"Thumbnail", "Name"}]
      125 GETUPVAL                         R19 4
      126 GETTABLEKS                       R18 R19 K19 ["createElement"]
      128 GETUPVAL                         R19 6
      129 DUPTABLE                         R20 K35 [{"LayoutOrder", "Image", "tag"}]
      130 LOADN                            R21 1
      131 SETTABLEKS                       R21 R20 K26 ["LayoutOrder"]
      133 LOADK                            R22 K36 ["rbxthumb://type=CreatorContextAsset&id=%*&w=150&h=150"]
      134 MOVE                             R24 R3
      135 NAMECALL                         R22 R22 K37 ["format"]
      137 CALL                             R22 2 1
      138 MOVE                             R21 R22
      139 SETTABLEKS                       R21 R20 K34 ["Image"]
      141 LOADK                            R21 K38 ["size-600 radius-small"]
      142 SETTABLEKS                       R21 R20 K20 ["tag"]
      144 CALL                             R18 2 1
      145 SETTABLEKS                       R18 R17 K32 ["Thumbnail"]
      147 GETUPVAL                         R19 4
      148 GETTABLEKS                       R18 R19 K19 ["createElement"]
      150 GETUPVAL                         R19 7
      151 DUPTABLE                         R20 K40 [{"LayoutOrder", "Text", "tag"}]
      152 LOADN                            R21 2
      153 SETTABLEKS                       R21 R20 K26 ["LayoutOrder"]
      155 SETTABLEKS                       R4 R20 K39 ["Text"]
      157 LOADK                            R21 K41 ["text-body-medium text-align-x-left text-truncate-split fill auto-y"]
      158 SETTABLEKS                       R21 R20 K20 ["tag"]
      160 CALL                             R18 2 1
      161 SETTABLEKS                       R18 R17 K12 ["Name"]
      163 CALL                             R14 3 1
      164 SETTABLEKS                       R14 R13 K29 ["AssetInfo"]
      166 GETUPVAL                         R15 4
      167 GETTABLEKS                       R14 R15 K19 ["createElement"]
      169 GETUPVAL                         R15 7
      170 DUPTABLE                         R16 K40 [{"LayoutOrder", "Text", "tag"}]
      171 LOADN                            R17 2
      172 SETTABLEKS                       R17 R16 K26 ["LayoutOrder"]
      174 SETTABLEKS                       R5 R16 K39 ["Text"]
      176 LOADK                            R17 K42 ["text-body-medium text-align-x-left fill auto-y"]
      177 SETTABLEKS                       R17 R16 K20 ["tag"]
      179 CALL                             R14 2 1
      180 SETTABLEKS                       R14 R13 K7 ["Creator"]
      182 CALL                             R10 3 1
      183 SETTABLEKS                       R10 R9 K23 ["Content"]
      185 GETUPVAL                         R11 4
      186 GETTABLEKS                       R10 R11 K19 ["createElement"]
      188 GETUPVAL                         R11 8
      189 DUPTABLE                         R12 K44 [{"LayoutOrder", "orientation"}]
      190 LOADN                            R13 2
      191 SETTABLEKS                       R13 R12 K26 ["LayoutOrder"]
      193 GETUPVAL                         R16 9
      194 GETTABLEKS                       R15 R16 K45 ["Enums"]
      196 GETTABLEKS                       R14 R15 K46 ["DividerOrientation"]
      198 GETTABLEKS                       R13 R14 K47 ["Horizontal"]
      200 SETTABLEKS                       R13 R12 K43 ["orientation"]
      202 CALL                             R10 2 1
      203 SETTABLEKS                       R10 R9 K24 ["BottomStroke"]
      205 CALL                             R6 3 -1
      206 RETURN                           R6 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R5 4
        5 GETTABLEKS                       R4 R5 K0 ["AssetPaths"]
        7 NEWTABLE                         R5 0 3
        9 GETUPVAL                         R8 5
       10 GETTABLEKS                       R7 R8 K1 ["AssetInfoField"]
       12 GETTABLEKS                       R6 R7 K2 ["AssetId"]
       14 GETUPVAL                         R9 5
       15 GETTABLEKS                       R8 R9 K1 ["AssetInfoField"]
       17 GETTABLEKS                       R7 R8 K3 ["DisplayName"]
       19 GETUPVAL                         R10 5
       20 GETTABLEKS                       R9 R10 K1 ["AssetInfoField"]
       22 GETTABLEKS                       R8 R9 K4 ["Creator"]
       24 SETLIST                          R5 R6 3 [1]
       26 CALL                             R0 5 0
       27 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K2 [{"AssetPath"}]
        5 SETTABLEKS                       R0 R4 K1 ["AssetPath"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 CALL                             R4 0 1
       14 GETUPVAL                         R6 4
       15 GETTABLEKS                       R5 R6 K1 ["useCallback"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U6
       24 CALL                             R5 1 1
       25 GETUPVAL                         R7 4
       26 GETTABLEKS                       R6 R7 K2 ["createElement"]
       28 GETUPVAL                         R7 7
       29 DUPTABLE                         R8 K4 [{"tag"}]
       30 LOADK                            R9 K5 ["col size-full padding-medium gap-medium"]
       31 SETTABLEKS                       R9 R8 K3 ["tag"]
       33 DUPTABLE                         R9 K9 [{"Header", "List", "Footer"}]
       34 GETUPVAL                         R11 4
       35 GETTABLEKS                       R10 R11 K2 ["createElement"]
       37 GETUPVAL                         R11 7
       38 DUPTABLE                         R12 K11 [{"LayoutOrder", "tag"}]
       39 LOADN                            R13 1
       40 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
       42 LOADK                            R13 K12 ["row size-full-0 auto-y align-y-center gap-medium"]
       43 SETTABLEKS                       R13 R12 K3 ["tag"]
       45 DUPTABLE                         R13 K15 [{"Icon", "Text"}]
       46 GETUPVAL                         R15 4
       47 GETTABLEKS                       R14 R15 K2 ["createElement"]
       49 GETUPVAL                         R15 8
       50 DUPTABLE                         R16 K20 [{"LayoutOrder", "name", "size", "style", "variant"}]
       51 LOADN                            R17 1
       52 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
       54 GETUPVAL                         R20 9
       55 GETTABLEKS                       R19 R20 K21 ["Enums"]
       57 GETTABLEKS                       R18 R19 K22 ["IconName"]
       59 GETTABLEKS                       R17 R18 K23 ["TriangleExclamation"]
       61 SETTABLEKS                       R17 R16 K16 ["name"]
       63 GETUPVAL                         R20 9
       64 GETTABLEKS                       R19 R20 K21 ["Enums"]
       66 GETTABLEKS                       R18 R19 K24 ["IconSize"]
       68 GETTABLEKS                       R17 R18 K25 ["Large"]
       70 SETTABLEKS                       R17 R16 K17 ["size"]
       72 GETTABLEKS                       R19 R4 K26 ["Color"]
       74 GETTABLEKS                       R18 R19 K27 ["System"]
       76 GETTABLEKS                       R17 R18 K28 ["Warning"]
       78 SETTABLEKS                       R17 R16 K18 ["style"]
       80 GETUPVAL                         R20 9
       81 GETTABLEKS                       R19 R20 K21 ["Enums"]
       83 GETTABLEKS                       R18 R19 K29 ["IconVariant"]
       85 GETTABLEKS                       R17 R18 K30 ["Filled"]
       87 SETTABLEKS                       R17 R16 K19 ["variant"]
       89 CALL                             R14 2 1
       90 SETTABLEKS                       R14 R13 K13 ["Icon"]
       92 GETUPVAL                         R15 4
       93 GETTABLEKS                       R14 R15 K2 ["createElement"]
       95 GETUPVAL                         R15 7
       96 DUPTABLE                         R16 K11 [{"LayoutOrder", "tag"}]
       97 LOADN                            R17 2
       98 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      100 LOADK                            R17 K31 ["col fill auto-y gap-xsmall"]
      101 SETTABLEKS                       R17 R16 K3 ["tag"]
      103 DUPTABLE                         R17 K34 [{"Title", "Description"}]
      104 GETUPVAL                         R19 4
      105 GETTABLEKS                       R18 R19 K2 ["createElement"]
      107 GETUPVAL                         R19 10
      108 DUPTABLE                         R20 K35 [{"LayoutOrder", "Text", "tag"}]
      109 LOADN                            R21 1
      110 SETTABLEKS                       R21 R20 K10 ["LayoutOrder"]
      112 GETTABLEKS                       R21 R0 K32 ["Title"]
      114 SETTABLEKS                       R21 R20 K14 ["Text"]
      116 LOADK                            R21 K36 ["text-title-medium auto-xy"]
      117 SETTABLEKS                       R21 R20 K3 ["tag"]
      119 CALL                             R18 2 1
      120 SETTABLEKS                       R18 R17 K32 ["Title"]
      122 GETTABLEKS                       R19 R0 K33 ["Description"]
      124 JUMPIFEQKNIL                     R19 ; [+18]
      126 GETUPVAL                         R19 4
      127 GETTABLEKS                       R18 R19 K2 ["createElement"]
      129 GETUPVAL                         R19 10
      130 DUPTABLE                         R20 K35 [{"LayoutOrder", "Text", "tag"}]
      131 LOADN                            R21 2
      132 SETTABLEKS                       R21 R20 K10 ["LayoutOrder"]
      134 GETTABLEKS                       R21 R0 K33 ["Description"]
      136 SETTABLEKS                       R21 R20 K14 ["Text"]
      138 LOADK                            R21 K37 ["text-body-medium text-wrap auto-xy"]
      139 SETTABLEKS                       R21 R20 K3 ["tag"]
      141 CALL                             R18 2 1
      142 JUMP                             ; [+1]
      143 LOADNIL                          R18
      144 SETTABLEKS                       R18 R17 K33 ["Description"]
      146 CALL                             R14 3 1
      147 SETTABLEKS                       R14 R13 K14 ["Text"]
      149 CALL                             R10 3 1
      150 SETTABLEKS                       R10 R9 K6 ["Header"]
      152 GETUPVAL                         R11 4
      153 GETTABLEKS                       R10 R11 K2 ["createElement"]
      155 GETUPVAL                         R11 7
      156 DUPTABLE                         R12 K11 [{"LayoutOrder", "tag"}]
      157 LOADN                            R13 2
      158 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
      160 LOADK                            R13 K38 ["col size-full-0 fill stroke-emphasis radius-medium"]
      161 SETTABLEKS                       R13 R12 K3 ["tag"]
      163 DUPTABLE                         R13 K42 [{"HeaderRow", "HeaderRowStroke", "Items"}]
      164 GETUPVAL                         R15 4
      165 GETTABLEKS                       R14 R15 K2 ["createElement"]
      167 GETUPVAL                         R15 7
      168 DUPTABLE                         R16 K11 [{"LayoutOrder", "tag"}]
      169 LOADN                            R17 1
      170 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      172 LOADK                            R17 K43 ["row size-full-0 auto-y align-y-center padding-xsmall"]
      173 SETTABLEKS                       R17 R16 K3 ["tag"]
      175 DUPTABLE                         R17 K46 [{"NameText", "CreatorText"}]
      176 GETUPVAL                         R19 4
      177 GETTABLEKS                       R18 R19 K2 ["createElement"]
      179 GETUPVAL                         R19 10
      180 DUPTABLE                         R20 K35 [{"LayoutOrder", "Text", "tag"}]
      181 LOADN                            R21 1
      182 SETTABLEKS                       R21 R20 K10 ["LayoutOrder"]
      184 LOADK                            R23 K47 ["AssetProperty"]
      185 LOADK                            R24 K48 ["DisplayName"]
      186 NAMECALL                         R21 R3 K49 ["getText"]
      188 CALL                             R21 3 1
      189 SETTABLEKS                       R21 R20 K14 ["Text"]
      191 LOADK                            R21 K50 ["text-title-medium text-align-x-left fill auto-y"]
      192 SETTABLEKS                       R21 R20 K3 ["tag"]
      194 CALL                             R18 2 1
      195 SETTABLEKS                       R18 R17 K44 ["NameText"]
      197 GETUPVAL                         R19 4
      198 GETTABLEKS                       R18 R19 K2 ["createElement"]
      200 GETUPVAL                         R19 10
      201 DUPTABLE                         R20 K35 [{"LayoutOrder", "Text", "tag"}]
      202 LOADN                            R21 2
      203 SETTABLEKS                       R21 R20 K10 ["LayoutOrder"]
      205 LOADK                            R23 K47 ["AssetProperty"]
      206 LOADK                            R24 K51 ["Creator"]
      207 NAMECALL                         R21 R3 K49 ["getText"]
      209 CALL                             R21 3 1
      210 SETTABLEKS                       R21 R20 K14 ["Text"]
      212 LOADK                            R21 K50 ["text-title-medium text-align-x-left fill auto-y"]
      213 SETTABLEKS                       R21 R20 K3 ["tag"]
      215 CALL                             R18 2 1
      216 SETTABLEKS                       R18 R17 K45 ["CreatorText"]
      218 CALL                             R14 3 1
      219 SETTABLEKS                       R14 R13 K39 ["HeaderRow"]
      221 GETUPVAL                         R15 4
      222 GETTABLEKS                       R14 R15 K2 ["createElement"]
      224 GETUPVAL                         R15 11
      225 DUPTABLE                         R16 K53 [{"LayoutOrder", "orientation"}]
      226 LOADN                            R17 2
      227 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      229 GETUPVAL                         R20 9
      230 GETTABLEKS                       R19 R20 K21 ["Enums"]
      232 GETTABLEKS                       R18 R19 K54 ["DividerOrientation"]
      234 GETTABLEKS                       R17 R18 K55 ["Horizontal"]
      236 SETTABLEKS                       R17 R16 K52 ["orientation"]
      238 CALL                             R14 2 1
      239 SETTABLEKS                       R14 R13 K40 ["HeaderRowStroke"]
      241 GETUPVAL                         R15 4
      242 GETTABLEKS                       R14 R15 K2 ["createElement"]
      244 GETUPVAL                         R15 12
      245 DUPTABLE                         R16 K57 [{"LayoutOrder", "tag", "scroll"}]
      246 LOADN                            R17 3
      247 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      249 LOADK                            R17 K58 ["col size-full-0 fill"]
      250 SETTABLEKS                       R17 R16 K3 ["tag"]
      252 DUPTABLE                         R17 K62 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      253 GETIMPORT                        R18 K66 [Enum.AutomaticSize.Y]
      255 SETTABLEKS                       R18 R17 K59 ["AutomaticCanvasSize"]
      257 GETIMPORT                        R18 K69 [UDim2.fromOffset]
      259 LOADN                            R19 0
      260 LOADN                            R20 0
      261 CALL                             R18 2 1
      262 SETTABLEKS                       R18 R17 K60 ["CanvasSize"]
      264 GETIMPORT                        R18 K70 [Enum.ScrollingDirection.Y]
      266 SETTABLEKS                       R18 R17 K61 ["ScrollingDirection"]
      268 SETTABLEKS                       R17 R16 K56 ["scroll"]
      270 GETUPVAL                         R18 13
      271 GETTABLEKS                       R17 R18 K71 ["map"]
      273 GETTABLEKS                       R18 R0 K72 ["AssetPaths"]
      275 DUPCLOSURE                       R19 K73 [PROTO_2]
      276 CAPTURE                          UPVAL U4
      277 CAPTURE                          UPVAL U14
      278 CALL                             R17 2 -1
      279 CALL                             R14 -1 1
      280 SETTABLEKS                       R14 R13 K41 ["Items"]
      282 CALL                             R10 3 1
      283 SETTABLEKS                       R10 R9 K7 ["List"]
      285 GETUPVAL                         R11 4
      286 GETTABLEKS                       R10 R11 K2 ["createElement"]
      288 GETUPVAL                         R11 7
      289 DUPTABLE                         R12 K11 [{"LayoutOrder", "tag"}]
      290 LOADN                            R13 3
      291 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
      293 LOADK                            R13 K74 ["row size-full-0 auto-y align-x-right align-y-center gap-small"]
      294 SETTABLEKS                       R13 R12 K3 ["tag"]
      296 DUPTABLE                         R13 K77 [{"NavigationButton", "CopyButton"}]
      297 GETTABLEKS                       R15 R0 K78 ["CanClose"]
      299 JUMPIFNOT                        R15 ; [+42]
      300 GETUPVAL                         R15 4
      301 GETTABLEKS                       R14 R15 K2 ["createElement"]
      303 GETUPVAL                         R15 15
      304 DUPTABLE                         R16 K82 [{"LayoutOrder", "text", "variant", "size", "onActivated", "testId"}]
      305 LOADN                            R17 1
      306 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      308 LOADK                            R19 K83 ["QuickShare"]
      309 LOADK                            R20 K84 ["CloseButton"]
      310 NAMECALL                         R17 R3 K49 ["getText"]
      312 CALL                             R17 3 1
      313 SETTABLEKS                       R17 R16 K79 ["text"]
      315 GETUPVAL                         R20 9
      316 GETTABLEKS                       R19 R20 K21 ["Enums"]
      318 GETTABLEKS                       R18 R19 K85 ["ButtonVariant"]
      320 GETTABLEKS                       R17 R18 K86 ["Standard"]
      322 SETTABLEKS                       R17 R16 K19 ["variant"]
      324 GETUPVAL                         R20 9
      325 GETTABLEKS                       R19 R20 K21 ["Enums"]
      327 GETTABLEKS                       R18 R19 K87 ["InputSize"]
      329 GETTABLEKS                       R17 R18 K88 ["Small"]
      331 SETTABLEKS                       R17 R16 K17 ["size"]
      333 GETTABLEKS                       R17 R0 K89 ["OnClose"]
      335 SETTABLEKS                       R17 R16 K80 ["onActivated"]
      337 LOADK                            R17 K90 ["asset-errors-close-button"]
      338 SETTABLEKS                       R17 R16 K81 ["testId"]
      340 CALL                             R14 2 1
      341 JUMP                             ; [+41]
      342 GETUPVAL                         R15 4
      343 GETTABLEKS                       R14 R15 K2 ["createElement"]
      345 GETUPVAL                         R15 15
      346 DUPTABLE                         R16 K82 [{"LayoutOrder", "text", "variant", "size", "onActivated", "testId"}]
      347 LOADN                            R17 1
      348 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      350 LOADK                            R19 K91 ["TopBar"]
      351 LOADK                            R20 K92 ["BackButton"]
      352 NAMECALL                         R17 R3 K49 ["getText"]
      354 CALL                             R17 3 1
      355 SETTABLEKS                       R17 R16 K79 ["text"]
      357 GETUPVAL                         R20 9
      358 GETTABLEKS                       R19 R20 K21 ["Enums"]
      360 GETTABLEKS                       R18 R19 K85 ["ButtonVariant"]
      362 GETTABLEKS                       R17 R18 K86 ["Standard"]
      364 SETTABLEKS                       R17 R16 K19 ["variant"]
      366 GETUPVAL                         R20 9
      367 GETTABLEKS                       R19 R20 K21 ["Enums"]
      369 GETTABLEKS                       R18 R19 K87 ["InputSize"]
      371 GETTABLEKS                       R17 R18 K88 ["Small"]
      373 SETTABLEKS                       R17 R16 K17 ["size"]
      375 GETTABLEKS                       R17 R0 K93 ["OnBack"]
      377 SETTABLEKS                       R17 R16 K80 ["onActivated"]
      379 LOADK                            R17 K94 ["asset-errors-back-button"]
      380 SETTABLEKS                       R17 R16 K81 ["testId"]
      382 CALL                             R14 2 1
      383 SETTABLEKS                       R14 R13 K75 ["NavigationButton"]
      385 GETUPVAL                         R15 4
      386 GETTABLEKS                       R14 R15 K2 ["createElement"]
      388 GETUPVAL                         R15 15
      389 DUPTABLE                         R16 K95 [{"LayoutOrder", "text", "variant", "size", "onActivated"}]
      390 LOADN                            R17 2
      391 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
      393 LOADK                            R19 K96 ["ContextMenu"]
      394 LOADK                            R20 K97 ["CopyToClipboard"]
      395 NAMECALL                         R17 R3 K49 ["getText"]
      397 CALL                             R17 3 1
      398 SETTABLEKS                       R17 R16 K79 ["text"]
      400 GETUPVAL                         R20 9
      401 GETTABLEKS                       R19 R20 K21 ["Enums"]
      403 GETTABLEKS                       R18 R19 K85 ["ButtonVariant"]
      405 GETTABLEKS                       R17 R18 K98 ["Emphasis"]
      407 SETTABLEKS                       R17 R16 K19 ["variant"]
      409 GETUPVAL                         R20 9
      410 GETTABLEKS                       R19 R20 K21 ["Enums"]
      412 GETTABLEKS                       R18 R19 K87 ["InputSize"]
      414 GETTABLEKS                       R17 R18 K88 ["Small"]
      416 SETTABLEKS                       R17 R16 K17 ["size"]
      418 SETTABLEKS                       R5 R16 K80 ["onActivated"]
      420 CALL                             R14 2 1
      421 SETTABLEKS                       R14 R13 K76 ["CopyButton"]
      423 CALL                             R10 3 1
      424 SETTABLEKS                       R10 R9 K8 ["Footer"]
      426 CALL                             R6 3 -1
      427 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R4 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Packages"]
       32 GETTABLEKS                       R5 R6 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R6 R4 K12 ["Hooks"]
       37 GETTABLEKS                       R5 R6 K13 ["useTokens"]
       39 GETTABLEKS                       R6 R4 K14 ["View"]
       41 GETTABLEKS                       R7 R4 K15 ["Text"]
       43 GETTABLEKS                       R8 R4 K16 ["Icon"]
       45 GETTABLEKS                       R9 R4 K17 ["Button"]
       47 GETTABLEKS                       R10 R4 K18 ["Divider"]
       49 GETTABLEKS                       R11 R4 K19 ["ScrollView"]
       51 GETTABLEKS                       R12 R4 K20 ["Image"]
       53 GETIMPORT                        R13 K5 [require]
       55 GETTABLEKS                       R15 R0 K8 ["Packages"]
       57 GETTABLEKS                       R14 R15 K21 ["Framework"]
       59 CALL                             R13 1 1
       60 GETTABLEKS                       R14 R13 K22 ["ContextServices"]
       62 GETTABLEKS                       R15 R14 K23 ["Localization"]
       64 GETIMPORT                        R16 K5 [require]
       66 GETTABLEKS                       R19 R0 K6 ["Src"]
       68 GETTABLEKS                       R18 R19 K24 ["Controllers"]
       70 GETTABLEKS                       R17 R18 K25 ["PluginController"]
       72 CALL                             R16 1 1
       73 GETIMPORT                        R17 K5 [require]
       75 GETTABLEKS                       R20 R0 K6 ["Src"]
       77 GETTABLEKS                       R19 R20 K24 ["Controllers"]
       79 GETTABLEKS                       R18 R19 K26 ["ItemsController"]
       81 CALL                             R17 1 1
       82 GETIMPORT                        R18 K5 [require]
       84 GETTABLEKS                       R21 R0 K6 ["Src"]
       86 GETTABLEKS                       R20 R21 K27 ["Util"]
       88 GETTABLEKS                       R19 R20 K28 ["copyAssetInfosToClipboard"]
       90 CALL                             R18 1 1
       91 GETIMPORT                        R19 K5 [require]
       93 GETTABLEKS                       R22 R0 K6 ["Src"]
       95 GETTABLEKS                       R21 R22 K29 ["Flags"]
       97 GETTABLEKS                       R20 R21 K30 ["getFFlagAmrUpdatedItemsCache"]
       99 CALL                             R19 1 1
      100 DUPCLOSURE                       R20 K31 [PROTO_0]
      101 CAPTURE                          VAL R17
      102 CAPTURE                          VAL R16
      103 CAPTURE                          VAL R19
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R4
      111 DUPCLOSURE                       R21 K32 [PROTO_3]
      112 CAPTURE                          VAL R17
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R18
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R20
      127 CAPTURE                          VAL R9
      128 RETURN                           R21 1
