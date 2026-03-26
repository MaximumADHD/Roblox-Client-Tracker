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
       24 GETUPVAL                         R8 7
       25 CALL                             R8 0 1
       26 JUMPIFNOT                        R8 ; [+7]
       27 NEWTABLE                         R7 0 1
       29 GETTABLEKS                       R8 R0 K2 ["AssetPaths"]
       31 SETLIST                          R7 R8 1 [1]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R7
       35 CALL                             R5 2 1
       36 GETUPVAL                         R7 4
       37 GETTABLEKS                       R6 R7 K3 ["createElement"]
       39 GETUPVAL                         R7 8
       40 DUPTABLE                         R8 K5 [{"tag"}]
       41 LOADK                            R9 K6 ["col size-full padding-medium gap-medium"]
       42 SETTABLEKS                       R9 R8 K4 ["tag"]
       44 DUPTABLE                         R9 K10 [{"Header", "List", "Footer"}]
       45 GETUPVAL                         R11 4
       46 GETTABLEKS                       R10 R11 K3 ["createElement"]
       48 GETUPVAL                         R11 8
       49 DUPTABLE                         R12 K12 [{"LayoutOrder", "tag"}]
       50 LOADN                            R13 1
       51 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
       53 LOADK                            R13 K13 ["row size-full-0 auto-y align-y-center gap-medium"]
       54 SETTABLEKS                       R13 R12 K4 ["tag"]
       56 DUPTABLE                         R13 K16 [{"Icon", "Text"}]
       57 GETUPVAL                         R15 4
       58 GETTABLEKS                       R14 R15 K3 ["createElement"]
       60 GETUPVAL                         R15 9
       61 DUPTABLE                         R16 K21 [{"LayoutOrder", "name", "size", "style", "variant"}]
       62 LOADN                            R17 1
       63 SETTABLEKS                       R17 R16 K11 ["LayoutOrder"]
       65 GETUPVAL                         R20 10
       66 GETTABLEKS                       R19 R20 K22 ["Enums"]
       68 GETTABLEKS                       R18 R19 K23 ["IconName"]
       70 GETTABLEKS                       R17 R18 K24 ["TriangleExclamation"]
       72 SETTABLEKS                       R17 R16 K17 ["name"]
       74 GETUPVAL                         R20 10
       75 GETTABLEKS                       R19 R20 K22 ["Enums"]
       77 GETTABLEKS                       R18 R19 K25 ["IconSize"]
       79 GETTABLEKS                       R17 R18 K26 ["Large"]
       81 SETTABLEKS                       R17 R16 K18 ["size"]
       83 GETTABLEKS                       R19 R4 K27 ["Color"]
       85 GETTABLEKS                       R18 R19 K28 ["System"]
       87 GETTABLEKS                       R17 R18 K29 ["Warning"]
       89 SETTABLEKS                       R17 R16 K19 ["style"]
       91 GETUPVAL                         R20 10
       92 GETTABLEKS                       R19 R20 K22 ["Enums"]
       94 GETTABLEKS                       R18 R19 K30 ["IconVariant"]
       96 GETTABLEKS                       R17 R18 K31 ["Filled"]
       98 SETTABLEKS                       R17 R16 K20 ["variant"]
      100 CALL                             R14 2 1
      101 SETTABLEKS                       R14 R13 K14 ["Icon"]
      103 GETUPVAL                         R15 4
      104 GETTABLEKS                       R14 R15 K3 ["createElement"]
      106 GETUPVAL                         R15 8
      107 DUPTABLE                         R16 K12 [{"LayoutOrder", "tag"}]
      108 LOADN                            R17 2
      109 SETTABLEKS                       R17 R16 K11 ["LayoutOrder"]
      111 LOADK                            R17 K32 ["col fill auto-y gap-xsmall"]
      112 SETTABLEKS                       R17 R16 K4 ["tag"]
      114 DUPTABLE                         R17 K35 [{"Title", "Description"}]
      115 GETUPVAL                         R19 4
      116 GETTABLEKS                       R18 R19 K3 ["createElement"]
      118 GETUPVAL                         R19 11
      119 DUPTABLE                         R20 K36 [{"LayoutOrder", "Text", "tag"}]
      120 LOADN                            R21 1
      121 SETTABLEKS                       R21 R20 K11 ["LayoutOrder"]
      123 GETTABLEKS                       R21 R0 K33 ["Title"]
      125 SETTABLEKS                       R21 R20 K15 ["Text"]
      127 LOADK                            R21 K37 ["text-title-medium auto-xy"]
      128 SETTABLEKS                       R21 R20 K4 ["tag"]
      130 CALL                             R18 2 1
      131 SETTABLEKS                       R18 R17 K33 ["Title"]
      133 GETTABLEKS                       R19 R0 K34 ["Description"]
      135 JUMPIFEQKNIL                     R19 ; [+18]
      137 GETUPVAL                         R19 4
      138 GETTABLEKS                       R18 R19 K3 ["createElement"]
      140 GETUPVAL                         R19 11
      141 DUPTABLE                         R20 K36 [{"LayoutOrder", "Text", "tag"}]
      142 LOADN                            R21 2
      143 SETTABLEKS                       R21 R20 K11 ["LayoutOrder"]
      145 GETTABLEKS                       R21 R0 K34 ["Description"]
      147 SETTABLEKS                       R21 R20 K15 ["Text"]
      149 LOADK                            R21 K38 ["text-body-medium text-wrap auto-xy"]
      150 SETTABLEKS                       R21 R20 K4 ["tag"]
      152 CALL                             R18 2 1
      153 JUMP                             ; [+1]
      154 LOADNIL                          R18
      155 SETTABLEKS                       R18 R17 K34 ["Description"]
      157 CALL                             R14 3 1
      158 SETTABLEKS                       R14 R13 K15 ["Text"]
      160 CALL                             R10 3 1
      161 SETTABLEKS                       R10 R9 K7 ["Header"]
      163 GETUPVAL                         R11 4
      164 GETTABLEKS                       R10 R11 K3 ["createElement"]
      166 GETUPVAL                         R11 8
      167 DUPTABLE                         R12 K12 [{"LayoutOrder", "tag"}]
      168 LOADN                            R13 2
      169 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
      171 LOADK                            R13 K39 ["col size-full-0 fill stroke-emphasis radius-medium"]
      172 SETTABLEKS                       R13 R12 K4 ["tag"]
      174 DUPTABLE                         R13 K43 [{"HeaderRow", "HeaderRowStroke", "Items"}]
      175 GETUPVAL                         R15 4
      176 GETTABLEKS                       R14 R15 K3 ["createElement"]
      178 GETUPVAL                         R15 8
      179 DUPTABLE                         R16 K12 [{"LayoutOrder", "tag"}]
      180 LOADN                            R17 1
      181 SETTABLEKS                       R17 R16 K11 ["LayoutOrder"]
      183 LOADK                            R17 K44 ["row size-full-0 auto-y align-y-center padding-xsmall"]
      184 SETTABLEKS                       R17 R16 K4 ["tag"]
      186 DUPTABLE                         R17 K47 [{"NameText", "CreatorText"}]
      187 GETUPVAL                         R19 4
      188 GETTABLEKS                       R18 R19 K3 ["createElement"]
      190 GETUPVAL                         R19 11
      191 DUPTABLE                         R20 K36 [{"LayoutOrder", "Text", "tag"}]
      192 LOADN                            R21 1
      193 SETTABLEKS                       R21 R20 K11 ["LayoutOrder"]
      195 LOADK                            R23 K48 ["AssetProperty"]
      196 LOADK                            R24 K49 ["DisplayName"]
      197 NAMECALL                         R21 R3 K50 ["getText"]
      199 CALL                             R21 3 1
      200 SETTABLEKS                       R21 R20 K15 ["Text"]
      202 LOADK                            R21 K51 ["text-title-medium text-align-x-left fill auto-y"]
      203 SETTABLEKS                       R21 R20 K4 ["tag"]
      205 CALL                             R18 2 1
      206 SETTABLEKS                       R18 R17 K45 ["NameText"]
      208 GETUPVAL                         R19 4
      209 GETTABLEKS                       R18 R19 K3 ["createElement"]
      211 GETUPVAL                         R19 11
      212 DUPTABLE                         R20 K36 [{"LayoutOrder", "Text", "tag"}]
      213 LOADN                            R21 2
      214 SETTABLEKS                       R21 R20 K11 ["LayoutOrder"]
      216 LOADK                            R23 K48 ["AssetProperty"]
      217 LOADK                            R24 K52 ["Creator"]
      218 NAMECALL                         R21 R3 K50 ["getText"]
      220 CALL                             R21 3 1
      221 SETTABLEKS                       R21 R20 K15 ["Text"]
      223 LOADK                            R21 K51 ["text-title-medium text-align-x-left fill auto-y"]
      224 SETTABLEKS                       R21 R20 K4 ["tag"]
      226 CALL                             R18 2 1
      227 SETTABLEKS                       R18 R17 K46 ["CreatorText"]
      229 CALL                             R14 3 1
      230 SETTABLEKS                       R14 R13 K40 ["HeaderRow"]
      232 GETUPVAL                         R15 4
      233 GETTABLEKS                       R14 R15 K3 ["createElement"]
      235 GETUPVAL                         R15 12
      236 DUPTABLE                         R16 K54 [{"LayoutOrder", "orientation"}]
      237 LOADN                            R17 2
      238 SETTABLEKS                       R17 R16 K11 ["LayoutOrder"]
      240 GETUPVAL                         R20 10
      241 GETTABLEKS                       R19 R20 K22 ["Enums"]
      243 GETTABLEKS                       R18 R19 K55 ["DividerOrientation"]
      245 GETTABLEKS                       R17 R18 K56 ["Horizontal"]
      247 SETTABLEKS                       R17 R16 K53 ["orientation"]
      249 CALL                             R14 2 1
      250 SETTABLEKS                       R14 R13 K41 ["HeaderRowStroke"]
      252 GETUPVAL                         R15 4
      253 GETTABLEKS                       R14 R15 K3 ["createElement"]
      255 GETUPVAL                         R15 13
      256 DUPTABLE                         R16 K59 [{"LayoutOrder", "tag", "layout", "scroll"}]
      257 LOADN                            R17 3
      258 SETTABLEKS                       R17 R16 K11 ["LayoutOrder"]
      260 LOADK                            R17 K60 ["size-full-0 fill"]
      261 SETTABLEKS                       R17 R16 K4 ["tag"]
      263 DUPTABLE                         R17 K62 [{"FillDirection"}]
      264 GETIMPORT                        R18 K65 [Enum.FillDirection.Vertical]
      266 SETTABLEKS                       R18 R17 K61 ["FillDirection"]
      268 SETTABLEKS                       R17 R16 K57 ["layout"]
      270 DUPTABLE                         R17 K69 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      271 GETIMPORT                        R18 K72 [Enum.AutomaticSize.Y]
      273 SETTABLEKS                       R18 R17 K66 ["AutomaticCanvasSize"]
      275 GETIMPORT                        R18 K75 [UDim2.fromOffset]
      277 LOADN                            R19 0
      278 LOADN                            R20 0
      279 CALL                             R18 2 1
      280 SETTABLEKS                       R18 R17 K67 ["CanvasSize"]
      282 GETIMPORT                        R18 K76 [Enum.ScrollingDirection.Y]
      284 SETTABLEKS                       R18 R17 K68 ["ScrollingDirection"]
      286 SETTABLEKS                       R17 R16 K58 ["scroll"]
      288 GETUPVAL                         R18 14
      289 GETTABLEKS                       R17 R18 K77 ["map"]
      291 GETTABLEKS                       R18 R0 K2 ["AssetPaths"]
      293 DUPCLOSURE                       R19 K78 [PROTO_2]
      294 CAPTURE                          UPVAL U4
      295 CAPTURE                          UPVAL U15
      296 CALL                             R17 2 -1
      297 CALL                             R14 -1 1
      298 SETTABLEKS                       R14 R13 K42 ["Items"]
      300 CALL                             R10 3 1
      301 SETTABLEKS                       R10 R9 K8 ["List"]
      303 GETUPVAL                         R11 4
      304 GETTABLEKS                       R10 R11 K3 ["createElement"]
      306 GETUPVAL                         R11 8
      307 DUPTABLE                         R12 K12 [{"LayoutOrder", "tag"}]
      308 LOADN                            R13 3
      309 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
      311 LOADK                            R13 K79 ["row size-full-0 auto-y align-x-right align-y-center gap-small"]
      312 SETTABLEKS                       R13 R12 K4 ["tag"]
      314 DUPTABLE                         R13 K82 [{"NavigationButton", "CopyButton"}]
      315 GETTABLEKS                       R15 R0 K83 ["CanClose"]
      317 JUMPIFNOT                        R15 ; [+42]
      318 GETUPVAL                         R15 4
      319 GETTABLEKS                       R14 R15 K3 ["createElement"]
      321 GETUPVAL                         R15 16
      322 DUPTABLE                         R16 K87 [{"LayoutOrder", "text", "variant", "size", "onActivated", "testId"}]
      323 LOADN                            R17 1
      324 SETTABLEKS                       R17 R16 K11 ["LayoutOrder"]
      326 LOADK                            R19 K88 ["QuickShare"]
      327 LOADK                            R20 K89 ["CloseButton"]
      328 NAMECALL                         R17 R3 K50 ["getText"]
      330 CALL                             R17 3 1
      331 SETTABLEKS                       R17 R16 K84 ["text"]
      333 GETUPVAL                         R20 10
      334 GETTABLEKS                       R19 R20 K22 ["Enums"]
      336 GETTABLEKS                       R18 R19 K90 ["ButtonVariant"]
      338 GETTABLEKS                       R17 R18 K91 ["Standard"]
      340 SETTABLEKS                       R17 R16 K20 ["variant"]
      342 GETUPVAL                         R20 10
      343 GETTABLEKS                       R19 R20 K22 ["Enums"]
      345 GETTABLEKS                       R18 R19 K92 ["InputSize"]
      347 GETTABLEKS                       R17 R18 K93 ["Small"]
      349 SETTABLEKS                       R17 R16 K18 ["size"]
      351 GETTABLEKS                       R17 R0 K94 ["OnClose"]
      353 SETTABLEKS                       R17 R16 K85 ["onActivated"]
      355 LOADK                            R17 K95 ["asset-errors-close-button"]
      356 SETTABLEKS                       R17 R16 K86 ["testId"]
      358 CALL                             R14 2 1
      359 JUMP                             ; [+41]
      360 GETUPVAL                         R15 4
      361 GETTABLEKS                       R14 R15 K3 ["createElement"]
      363 GETUPVAL                         R15 16
      364 DUPTABLE                         R16 K87 [{"LayoutOrder", "text", "variant", "size", "onActivated", "testId"}]
      365 LOADN                            R17 1
      366 SETTABLEKS                       R17 R16 K11 ["LayoutOrder"]
      368 LOADK                            R19 K96 ["TopBar"]
      369 LOADK                            R20 K97 ["BackButton"]
      370 NAMECALL                         R17 R3 K50 ["getText"]
      372 CALL                             R17 3 1
      373 SETTABLEKS                       R17 R16 K84 ["text"]
      375 GETUPVAL                         R20 10
      376 GETTABLEKS                       R19 R20 K22 ["Enums"]
      378 GETTABLEKS                       R18 R19 K90 ["ButtonVariant"]
      380 GETTABLEKS                       R17 R18 K91 ["Standard"]
      382 SETTABLEKS                       R17 R16 K20 ["variant"]
      384 GETUPVAL                         R20 10
      385 GETTABLEKS                       R19 R20 K22 ["Enums"]
      387 GETTABLEKS                       R18 R19 K92 ["InputSize"]
      389 GETTABLEKS                       R17 R18 K93 ["Small"]
      391 SETTABLEKS                       R17 R16 K18 ["size"]
      393 GETTABLEKS                       R17 R0 K98 ["OnBack"]
      395 SETTABLEKS                       R17 R16 K85 ["onActivated"]
      397 LOADK                            R17 K99 ["asset-errors-back-button"]
      398 SETTABLEKS                       R17 R16 K86 ["testId"]
      400 CALL                             R14 2 1
      401 SETTABLEKS                       R14 R13 K80 ["NavigationButton"]
      403 GETUPVAL                         R15 4
      404 GETTABLEKS                       R14 R15 K3 ["createElement"]
      406 GETUPVAL                         R15 16
      407 DUPTABLE                         R16 K100 [{"LayoutOrder", "text", "variant", "size", "onActivated"}]
      408 LOADN                            R17 2
      409 SETTABLEKS                       R17 R16 K11 ["LayoutOrder"]
      411 LOADK                            R19 K101 ["ContextMenu"]
      412 LOADK                            R20 K102 ["CopyToClipboard"]
      413 NAMECALL                         R17 R3 K50 ["getText"]
      415 CALL                             R17 3 1
      416 SETTABLEKS                       R17 R16 K84 ["text"]
      418 GETUPVAL                         R20 10
      419 GETTABLEKS                       R19 R20 K22 ["Enums"]
      421 GETTABLEKS                       R18 R19 K90 ["ButtonVariant"]
      423 GETTABLEKS                       R17 R18 K103 ["Emphasis"]
      425 SETTABLEKS                       R17 R16 K20 ["variant"]
      427 GETUPVAL                         R20 10
      428 GETTABLEKS                       R19 R20 K22 ["Enums"]
      430 GETTABLEKS                       R18 R19 K92 ["InputSize"]
      432 GETTABLEKS                       R17 R18 K93 ["Small"]
      434 SETTABLEKS                       R17 R16 K18 ["size"]
      436 SETTABLEKS                       R5 R16 K85 ["onActivated"]
      438 CALL                             R14 2 1
      439 SETTABLEKS                       R14 R13 K81 ["CopyButton"]
      441 CALL                             R10 3 1
      442 SETTABLEKS                       R10 R9 K9 ["Footer"]
      444 CALL                             R6 3 -1
      445 RETURN                           R6 -1

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
      100 GETIMPORT                        R20 K5 [require]
      102 GETTABLEKS                       R23 R0 K6 ["Src"]
      104 GETTABLEKS                       R22 R23 K29 ["Flags"]
      106 GETTABLEKS                       R21 R22 K31 ["getFFlagAmrMiscCallbackFixes"]
      108 CALL                             R20 1 1
      109 DUPCLOSURE                       R21 K32 [PROTO_0]
      110 CAPTURE                          VAL R17
      111 CAPTURE                          VAL R16
      112 CAPTURE                          VAL R19
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R4
      120 DUPCLOSURE                       R22 K33 [PROTO_3]
      121 CAPTURE                          VAL R17
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R20
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R21
      137 CAPTURE                          VAL R9
      138 RETURN                           R22 1
