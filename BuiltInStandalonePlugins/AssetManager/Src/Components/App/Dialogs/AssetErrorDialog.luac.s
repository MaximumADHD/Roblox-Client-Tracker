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
       95 GETUPVAL                         R8 5
       96 GETTABLEKS                       R7 R8 K20 ["View"]
       98 DUPTABLE                         R8 K22 [{"tag"}]
       99 LOADK                            R9 K23 ["col size-full-0 auto-y data-testid=asset-error-row"]
      100 SETTABLEKS                       R9 R8 K21 ["tag"]
      102 DUPTABLE                         R9 K26 [{"Content", "BottomStroke"}]
      103 GETUPVAL                         R11 4
      104 GETTABLEKS                       R10 R11 K19 ["createElement"]
      106 GETUPVAL                         R12 5
      107 GETTABLEKS                       R11 R12 K20 ["View"]
      109 DUPTABLE                         R12 K28 [{"LayoutOrder", "tag"}]
      110 LOADN                            R13 1
      111 SETTABLEKS                       R13 R12 K27 ["LayoutOrder"]
      113 LOADK                            R13 K29 ["row size-full-0 auto-y align-y-center padding-small"]
      114 SETTABLEKS                       R13 R12 K21 ["tag"]
      116 DUPTABLE                         R13 K31 [{"AssetInfo", "Creator"}]
      117 GETUPVAL                         R15 4
      118 GETTABLEKS                       R14 R15 K19 ["createElement"]
      120 GETUPVAL                         R16 5
      121 GETTABLEKS                       R15 R16 K20 ["View"]
      123 DUPTABLE                         R16 K28 [{"LayoutOrder", "tag"}]
      124 LOADN                            R17 1
      125 SETTABLEKS                       R17 R16 K27 ["LayoutOrder"]
      127 LOADK                            R17 K32 ["row fill auto-y align-y-center gap-small"]
      128 SETTABLEKS                       R17 R16 K21 ["tag"]
      130 DUPTABLE                         R17 K34 [{"Thumbnail", "Name"}]
      131 GETUPVAL                         R19 4
      132 GETTABLEKS                       R18 R19 K19 ["createElement"]
      134 GETUPVAL                         R20 5
      135 GETTABLEKS                       R19 R20 K35 ["Image"]
      137 DUPTABLE                         R20 K36 [{"LayoutOrder", "Image", "tag"}]
      138 LOADN                            R21 1
      139 SETTABLEKS                       R21 R20 K27 ["LayoutOrder"]
      141 LOADK                            R22 K37 ["rbxthumb://type=CreatorContextAsset&id=%*&w=150&h=150"]
      142 MOVE                             R24 R3
      143 NAMECALL                         R22 R22 K38 ["format"]
      145 CALL                             R22 2 1
      146 MOVE                             R21 R22
      147 SETTABLEKS                       R21 R20 K35 ["Image"]
      149 LOADK                            R21 K39 ["size-600 radius-small"]
      150 SETTABLEKS                       R21 R20 K21 ["tag"]
      152 CALL                             R18 2 1
      153 SETTABLEKS                       R18 R17 K33 ["Thumbnail"]
      155 GETUPVAL                         R19 4
      156 GETTABLEKS                       R18 R19 K19 ["createElement"]
      158 GETUPVAL                         R20 5
      159 GETTABLEKS                       R19 R20 K40 ["Text"]
      161 DUPTABLE                         R20 K41 [{"LayoutOrder", "Text", "tag"}]
      162 LOADN                            R21 2
      163 SETTABLEKS                       R21 R20 K27 ["LayoutOrder"]
      165 SETTABLEKS                       R4 R20 K40 ["Text"]
      167 LOADK                            R21 K42 ["text-body-medium text-align-x-left text-truncate-split fill auto-y"]
      168 SETTABLEKS                       R21 R20 K21 ["tag"]
      170 CALL                             R18 2 1
      171 SETTABLEKS                       R18 R17 K12 ["Name"]
      173 CALL                             R14 3 1
      174 SETTABLEKS                       R14 R13 K30 ["AssetInfo"]
      176 GETUPVAL                         R15 4
      177 GETTABLEKS                       R14 R15 K19 ["createElement"]
      179 GETUPVAL                         R16 5
      180 GETTABLEKS                       R15 R16 K40 ["Text"]
      182 DUPTABLE                         R16 K41 [{"LayoutOrder", "Text", "tag"}]
      183 LOADN                            R17 2
      184 SETTABLEKS                       R17 R16 K27 ["LayoutOrder"]
      186 SETTABLEKS                       R5 R16 K40 ["Text"]
      188 LOADK                            R17 K43 ["text-body-medium text-align-x-left fill auto-y"]
      189 SETTABLEKS                       R17 R16 K21 ["tag"]
      191 CALL                             R14 2 1
      192 SETTABLEKS                       R14 R13 K7 ["Creator"]
      194 CALL                             R10 3 1
      195 SETTABLEKS                       R10 R9 K24 ["Content"]
      197 GETUPVAL                         R11 4
      198 GETTABLEKS                       R10 R11 K19 ["createElement"]
      200 GETUPVAL                         R12 5
      201 GETTABLEKS                       R11 R12 K44 ["Divider"]
      203 DUPTABLE                         R12 K46 [{"LayoutOrder", "orientation"}]
      204 LOADN                            R13 2
      205 SETTABLEKS                       R13 R12 K27 ["LayoutOrder"]
      207 GETUPVAL                         R16 5
      208 GETTABLEKS                       R15 R16 K47 ["Enums"]
      210 GETTABLEKS                       R14 R15 K48 ["DividerOrientation"]
      212 GETTABLEKS                       R13 R14 K49 ["Horizontal"]
      214 SETTABLEKS                       R13 R12 K45 ["orientation"]
      216 CALL                             R10 2 1
      217 SETTABLEKS                       R10 R9 K25 ["BottomStroke"]
      219 CALL                             R6 3 -1
      220 RETURN                           R6 -1

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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["LinkUrl"]
        4 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_4:
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
       39 GETUPVAL                         R8 8
       40 GETTABLEKS                       R7 R8 K4 ["View"]
       42 DUPTABLE                         R8 K6 [{"tag"}]
       43 LOADK                            R9 K7 ["col size-full padding-medium gap-medium"]
       44 SETTABLEKS                       R9 R8 K5 ["tag"]
       46 DUPTABLE                         R9 K11 [{"Header", "List", "Footer"}]
       47 GETUPVAL                         R11 4
       48 GETTABLEKS                       R10 R11 K3 ["createElement"]
       50 GETUPVAL                         R12 8
       51 GETTABLEKS                       R11 R12 K4 ["View"]
       53 DUPTABLE                         R12 K13 [{"LayoutOrder", "tag"}]
       54 LOADN                            R13 1
       55 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
       57 LOADK                            R13 K14 ["row size-full-0 auto-y align-y-center gap-medium"]
       58 SETTABLEKS                       R13 R12 K5 ["tag"]
       60 DUPTABLE                         R13 K17 [{"Icon", "Text"}]
       61 GETUPVAL                         R15 4
       62 GETTABLEKS                       R14 R15 K3 ["createElement"]
       64 GETUPVAL                         R16 8
       65 GETTABLEKS                       R15 R16 K15 ["Icon"]
       67 DUPTABLE                         R16 K22 [{"LayoutOrder", "name", "size", "style", "variant"}]
       68 LOADN                            R17 1
       69 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
       71 GETUPVAL                         R20 8
       72 GETTABLEKS                       R19 R20 K23 ["Enums"]
       74 GETTABLEKS                       R18 R19 K24 ["IconName"]
       76 GETTABLEKS                       R17 R18 K25 ["TriangleExclamation"]
       78 SETTABLEKS                       R17 R16 K18 ["name"]
       80 GETUPVAL                         R20 8
       81 GETTABLEKS                       R19 R20 K23 ["Enums"]
       83 GETTABLEKS                       R18 R19 K26 ["IconSize"]
       85 GETTABLEKS                       R17 R18 K27 ["Large"]
       87 SETTABLEKS                       R17 R16 K19 ["size"]
       89 GETTABLEKS                       R19 R4 K28 ["Color"]
       91 GETTABLEKS                       R18 R19 K29 ["System"]
       93 GETTABLEKS                       R17 R18 K30 ["Warning"]
       95 SETTABLEKS                       R17 R16 K20 ["style"]
       97 GETUPVAL                         R20 8
       98 GETTABLEKS                       R19 R20 K23 ["Enums"]
      100 GETTABLEKS                       R18 R19 K31 ["IconVariant"]
      102 GETTABLEKS                       R17 R18 K32 ["Filled"]
      104 SETTABLEKS                       R17 R16 K21 ["variant"]
      106 CALL                             R14 2 1
      107 SETTABLEKS                       R14 R13 K15 ["Icon"]
      109 GETUPVAL                         R15 4
      110 GETTABLEKS                       R14 R15 K3 ["createElement"]
      112 GETUPVAL                         R16 8
      113 GETTABLEKS                       R15 R16 K4 ["View"]
      115 DUPTABLE                         R16 K13 [{"LayoutOrder", "tag"}]
      116 LOADN                            R17 2
      117 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      119 LOADK                            R17 K33 ["col fill auto-y gap-xsmall"]
      120 SETTABLEKS                       R17 R16 K5 ["tag"]
      122 DUPTABLE                         R17 K36 [{"Title", "Description"}]
      123 GETUPVAL                         R19 4
      124 GETTABLEKS                       R18 R19 K3 ["createElement"]
      126 GETUPVAL                         R20 8
      127 GETTABLEKS                       R19 R20 K16 ["Text"]
      129 DUPTABLE                         R20 K37 [{"LayoutOrder", "Text", "tag"}]
      130 LOADN                            R21 1
      131 SETTABLEKS                       R21 R20 K12 ["LayoutOrder"]
      133 GETTABLEKS                       R21 R0 K34 ["Title"]
      135 SETTABLEKS                       R21 R20 K16 ["Text"]
      137 LOADK                            R21 K38 ["text-title-medium auto-xy"]
      138 SETTABLEKS                       R21 R20 K5 ["tag"]
      140 CALL                             R18 2 1
      141 SETTABLEKS                       R18 R17 K34 ["Title"]
      143 GETTABLEKS                       R19 R0 K35 ["Description"]
      145 JUMPIFEQKNIL                     R19 ; [+20]
      147 GETUPVAL                         R19 4
      148 GETTABLEKS                       R18 R19 K3 ["createElement"]
      150 GETUPVAL                         R20 8
      151 GETTABLEKS                       R19 R20 K16 ["Text"]
      153 DUPTABLE                         R20 K37 [{"LayoutOrder", "Text", "tag"}]
      154 LOADN                            R21 2
      155 SETTABLEKS                       R21 R20 K12 ["LayoutOrder"]
      157 GETTABLEKS                       R21 R0 K35 ["Description"]
      159 SETTABLEKS                       R21 R20 K16 ["Text"]
      161 LOADK                            R21 K39 ["text-body-medium text-wrap auto-xy"]
      162 SETTABLEKS                       R21 R20 K5 ["tag"]
      164 CALL                             R18 2 1
      165 JUMP                             ; [+1]
      166 LOADNIL                          R18
      167 SETTABLEKS                       R18 R17 K35 ["Description"]
      169 CALL                             R14 3 1
      170 SETTABLEKS                       R14 R13 K16 ["Text"]
      172 CALL                             R10 3 1
      173 SETTABLEKS                       R10 R9 K8 ["Header"]
      175 GETUPVAL                         R11 4
      176 GETTABLEKS                       R10 R11 K3 ["createElement"]
      178 GETUPVAL                         R12 8
      179 GETTABLEKS                       R11 R12 K4 ["View"]
      181 DUPTABLE                         R12 K13 [{"LayoutOrder", "tag"}]
      182 LOADN                            R13 2
      183 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
      185 LOADK                            R13 K40 ["col size-full-0 fill stroke-emphasis radius-medium"]
      186 SETTABLEKS                       R13 R12 K5 ["tag"]
      188 DUPTABLE                         R13 K44 [{"HeaderRow", "HeaderRowStroke", "Items"}]
      189 GETUPVAL                         R15 4
      190 GETTABLEKS                       R14 R15 K3 ["createElement"]
      192 GETUPVAL                         R16 8
      193 GETTABLEKS                       R15 R16 K4 ["View"]
      195 DUPTABLE                         R16 K13 [{"LayoutOrder", "tag"}]
      196 LOADN                            R17 1
      197 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      199 LOADK                            R17 K45 ["row size-full-0 auto-y align-y-center padding-xsmall"]
      200 SETTABLEKS                       R17 R16 K5 ["tag"]
      202 DUPTABLE                         R17 K48 [{"NameText", "CreatorText"}]
      203 GETUPVAL                         R19 4
      204 GETTABLEKS                       R18 R19 K3 ["createElement"]
      206 GETUPVAL                         R20 8
      207 GETTABLEKS                       R19 R20 K16 ["Text"]
      209 DUPTABLE                         R20 K37 [{"LayoutOrder", "Text", "tag"}]
      210 LOADN                            R21 1
      211 SETTABLEKS                       R21 R20 K12 ["LayoutOrder"]
      213 LOADK                            R23 K49 ["AssetProperty"]
      214 LOADK                            R24 K50 ["DisplayName"]
      215 NAMECALL                         R21 R3 K51 ["getText"]
      217 CALL                             R21 3 1
      218 SETTABLEKS                       R21 R20 K16 ["Text"]
      220 LOADK                            R21 K52 ["text-title-medium text-align-x-left fill auto-y"]
      221 SETTABLEKS                       R21 R20 K5 ["tag"]
      223 CALL                             R18 2 1
      224 SETTABLEKS                       R18 R17 K46 ["NameText"]
      226 GETUPVAL                         R19 4
      227 GETTABLEKS                       R18 R19 K3 ["createElement"]
      229 GETUPVAL                         R20 8
      230 GETTABLEKS                       R19 R20 K16 ["Text"]
      232 DUPTABLE                         R20 K37 [{"LayoutOrder", "Text", "tag"}]
      233 LOADN                            R21 2
      234 SETTABLEKS                       R21 R20 K12 ["LayoutOrder"]
      236 LOADK                            R23 K49 ["AssetProperty"]
      237 LOADK                            R24 K53 ["Creator"]
      238 NAMECALL                         R21 R3 K51 ["getText"]
      240 CALL                             R21 3 1
      241 SETTABLEKS                       R21 R20 K16 ["Text"]
      243 LOADK                            R21 K52 ["text-title-medium text-align-x-left fill auto-y"]
      244 SETTABLEKS                       R21 R20 K5 ["tag"]
      246 CALL                             R18 2 1
      247 SETTABLEKS                       R18 R17 K47 ["CreatorText"]
      249 CALL                             R14 3 1
      250 SETTABLEKS                       R14 R13 K41 ["HeaderRow"]
      252 GETUPVAL                         R15 4
      253 GETTABLEKS                       R14 R15 K3 ["createElement"]
      255 GETUPVAL                         R16 8
      256 GETTABLEKS                       R15 R16 K54 ["Divider"]
      258 DUPTABLE                         R16 K56 [{"LayoutOrder", "orientation"}]
      259 LOADN                            R17 2
      260 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      262 GETUPVAL                         R20 8
      263 GETTABLEKS                       R19 R20 K23 ["Enums"]
      265 GETTABLEKS                       R18 R19 K57 ["DividerOrientation"]
      267 GETTABLEKS                       R17 R18 K58 ["Horizontal"]
      269 SETTABLEKS                       R17 R16 K55 ["orientation"]
      271 CALL                             R14 2 1
      272 SETTABLEKS                       R14 R13 K42 ["HeaderRowStroke"]
      274 GETUPVAL                         R15 4
      275 GETTABLEKS                       R14 R15 K3 ["createElement"]
      277 GETUPVAL                         R16 8
      278 GETTABLEKS                       R15 R16 K59 ["ScrollView"]
      280 DUPTABLE                         R16 K62 [{"LayoutOrder", "tag", "layout", "scroll"}]
      281 LOADN                            R17 3
      282 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      284 LOADK                            R17 K63 ["size-full-0 fill"]
      285 SETTABLEKS                       R17 R16 K5 ["tag"]
      287 DUPTABLE                         R17 K65 [{"FillDirection"}]
      288 GETIMPORT                        R18 K68 [Enum.FillDirection.Vertical]
      290 SETTABLEKS                       R18 R17 K64 ["FillDirection"]
      292 SETTABLEKS                       R17 R16 K60 ["layout"]
      294 DUPTABLE                         R17 K72 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      295 GETIMPORT                        R18 K75 [Enum.AutomaticSize.Y]
      297 SETTABLEKS                       R18 R17 K69 ["AutomaticCanvasSize"]
      299 GETIMPORT                        R18 K78 [UDim2.fromOffset]
      301 LOADN                            R19 0
      302 LOADN                            R20 0
      303 CALL                             R18 2 1
      304 SETTABLEKS                       R18 R17 K70 ["CanvasSize"]
      306 GETIMPORT                        R18 K79 [Enum.ScrollingDirection.Y]
      308 SETTABLEKS                       R18 R17 K71 ["ScrollingDirection"]
      310 SETTABLEKS                       R17 R16 K61 ["scroll"]
      312 GETUPVAL                         R18 9
      313 GETTABLEKS                       R17 R18 K80 ["map"]
      315 GETTABLEKS                       R18 R0 K2 ["AssetPaths"]
      317 DUPCLOSURE                       R19 K81 [PROTO_2]
      318 CAPTURE                          UPVAL U4
      319 CAPTURE                          UPVAL U10
      320 CALL                             R17 2 -1
      321 CALL                             R14 -1 1
      322 SETTABLEKS                       R14 R13 K43 ["Items"]
      324 CALL                             R10 3 1
      325 SETTABLEKS                       R10 R9 K9 ["List"]
      327 GETUPVAL                         R11 4
      328 GETTABLEKS                       R10 R11 K3 ["createElement"]
      330 GETUPVAL                         R12 8
      331 GETTABLEKS                       R11 R12 K4 ["View"]
      333 DUPTABLE                         R12 K13 [{"LayoutOrder", "tag"}]
      334 LOADN                            R13 3
      335 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
      337 LOADK                            R13 K82 ["row size-full-0 auto-y align-y-center"]
      338 SETTABLEKS                       R13 R12 K5 ["tag"]
      340 DUPTABLE                         R13 K85 [{"Link", "Buttons"}]
      341 GETUPVAL                         R15 4
      342 GETTABLEKS                       R14 R15 K3 ["createElement"]
      344 GETUPVAL                         R16 8
      345 GETTABLEKS                       R15 R16 K4 ["View"]
      347 DUPTABLE                         R16 K86 [{"tag", "LayoutOrder"}]
      348 LOADK                            R17 K87 ["fill auto-y align-y-center"]
      349 SETTABLEKS                       R17 R16 K5 ["tag"]
      351 LOADN                            R17 1
      352 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      354 GETTABLEKS                       R18 R0 K88 ["LinkText"]
      356 JUMPIFEQKNIL                     R18 ; [+26]
      358 GETTABLEKS                       R18 R0 K89 ["LinkUrl"]
      360 JUMPIFEQKNIL                     R18 ; [+22]
      362 GETUPVAL                         R18 4
      363 GETTABLEKS                       R17 R18 K3 ["createElement"]
      365 GETUPVAL                         R19 8
      366 GETTABLEKS                       R18 R19 K16 ["Text"]
      368 DUPTABLE                         R19 K91 [{"tag", "Text", "onActivated"}]
      369 LOADK                            R20 K92 ["text-align-x-left text-align-y-center content-link text-label-small text-wrap auto-xy"]
      370 SETTABLEKS                       R20 R19 K5 ["tag"]
      372 GETTABLEKS                       R20 R0 K88 ["LinkText"]
      374 SETTABLEKS                       R20 R19 K16 ["Text"]
      376 NEWCLOSURE                       R20 P2
      377 CAPTURE                          UPVAL U11
      378 CAPTURE                          VAL R0
      379 SETTABLEKS                       R20 R19 K90 ["onActivated"]
      381 CALL                             R17 2 1
      382 JUMP                             ; [+1]
      383 LOADNIL                          R17
      384 CALL                             R14 3 1
      385 SETTABLEKS                       R14 R13 K83 ["Link"]
      387 GETUPVAL                         R15 4
      388 GETTABLEKS                       R14 R15 K3 ["createElement"]
      390 GETUPVAL                         R16 8
      391 GETTABLEKS                       R15 R16 K4 ["View"]
      393 DUPTABLE                         R16 K86 [{"tag", "LayoutOrder"}]
      394 LOADK                            R17 K93 ["row auto-xy align-x-right align-y-center gap-small"]
      395 SETTABLEKS                       R17 R16 K5 ["tag"]
      397 LOADN                            R17 2
      398 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      400 DUPTABLE                         R17 K96 [{"NavigationButton", "CopyButton"}]
      401 GETUPVAL                         R19 4
      402 GETTABLEKS                       R18 R19 K3 ["createElement"]
      404 GETUPVAL                         R20 8
      405 GETTABLEKS                       R19 R20 K97 ["Button"]
      407 DUPTABLE                         R20 K100 [{"LayoutOrder", "text", "variant", "size", "onActivated", "testId"}]
      408 LOADN                            R21 1
      409 SETTABLEKS                       R21 R20 K12 ["LayoutOrder"]
      411 GETTABLEKS                       R22 R0 K101 ["CanClose"]
      413 JUMPIFNOT                        R22 ; [+6]
      414 LOADK                            R23 K102 ["QuickShare"]
      415 LOADK                            R24 K103 ["CloseButton"]
      416 NAMECALL                         R21 R3 K51 ["getText"]
      418 CALL                             R21 3 1
      419 JUMP                             ; [+5]
      420 LOADK                            R23 K104 ["TopBar"]
      421 LOADK                            R24 K105 ["BackButton"]
      422 NAMECALL                         R21 R3 K51 ["getText"]
      424 CALL                             R21 3 1
      425 SETTABLEKS                       R21 R20 K98 ["text"]
      427 GETUPVAL                         R24 8
      428 GETTABLEKS                       R23 R24 K23 ["Enums"]
      430 GETTABLEKS                       R22 R23 K106 ["ButtonVariant"]
      432 GETTABLEKS                       R21 R22 K107 ["Standard"]
      434 SETTABLEKS                       R21 R20 K21 ["variant"]
      436 GETUPVAL                         R24 8
      437 GETTABLEKS                       R23 R24 K23 ["Enums"]
      439 GETTABLEKS                       R22 R23 K108 ["InputSize"]
      441 GETTABLEKS                       R21 R22 K109 ["Small"]
      443 SETTABLEKS                       R21 R20 K19 ["size"]
      445 GETTABLEKS                       R22 R0 K101 ["CanClose"]
      447 JUMPIFNOT                        R22 ; [+3]
      448 GETTABLEKS                       R21 R0 K110 ["OnClose"]
      450 JUMP                             ; [+2]
      451 GETTABLEKS                       R21 R0 K111 ["OnBack"]
      453 SETTABLEKS                       R21 R20 K90 ["onActivated"]
      455 LOADK                            R21 K112 ["asset-errors-close-button"]
      456 SETTABLEKS                       R21 R20 K99 ["testId"]
      458 CALL                             R18 2 1
      459 SETTABLEKS                       R18 R17 K94 ["NavigationButton"]
      461 GETUPVAL                         R19 4
      462 GETTABLEKS                       R18 R19 K3 ["createElement"]
      464 GETUPVAL                         R20 8
      465 GETTABLEKS                       R19 R20 K97 ["Button"]
      467 DUPTABLE                         R20 K113 [{"LayoutOrder", "text", "variant", "size", "onActivated"}]
      468 LOADN                            R21 2
      469 SETTABLEKS                       R21 R20 K12 ["LayoutOrder"]
      471 LOADK                            R23 K114 ["ContextMenu"]
      472 LOADK                            R24 K115 ["CopyToClipboard"]
      473 NAMECALL                         R21 R3 K51 ["getText"]
      475 CALL                             R21 3 1
      476 SETTABLEKS                       R21 R20 K98 ["text"]
      478 GETUPVAL                         R24 8
      479 GETTABLEKS                       R23 R24 K23 ["Enums"]
      481 GETTABLEKS                       R22 R23 K106 ["ButtonVariant"]
      483 GETTABLEKS                       R21 R22 K116 ["Emphasis"]
      485 SETTABLEKS                       R21 R20 K21 ["variant"]
      487 GETUPVAL                         R24 8
      488 GETTABLEKS                       R23 R24 K23 ["Enums"]
      490 GETTABLEKS                       R22 R23 K108 ["InputSize"]
      492 GETTABLEKS                       R21 R22 K109 ["Small"]
      494 SETTABLEKS                       R21 R20 K19 ["size"]
      496 SETTABLEKS                       R5 R20 K90 ["onActivated"]
      498 CALL                             R18 2 1
      499 SETTABLEKS                       R18 R17 K95 ["CopyButton"]
      501 CALL                             R14 3 1
      502 SETTABLEKS                       R14 R13 K84 ["Buttons"]
      504 CALL                             R10 3 1
      505 SETTABLEKS                       R10 R9 K10 ["Footer"]
      507 CALL                             R6 3 -1
      508 RETURN                           R6 -1

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
       15 GETTABLEKS                       R4 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R4 K11 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K12 ["Packages"]
       24 GETTABLEKS                       R4 R5 K13 ["Dash"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R1 K12 ["Packages"]
       31 GETTABLEKS                       R5 R6 K14 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R1 K12 ["Packages"]
       38 GETTABLEKS                       R6 R7 K15 ["Foundation"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R7 R5 K16 ["Hooks"]
       43 GETTABLEKS                       R6 R7 K17 ["useTokens"]
       45 GETIMPORT                        R7 K9 [require]
       47 GETTABLEKS                       R9 R1 K12 ["Packages"]
       49 GETTABLEKS                       R8 R9 K18 ["Framework"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R7 K19 ["ContextServices"]
       54 GETTABLEKS                       R9 R8 K20 ["Localization"]
       56 GETIMPORT                        R10 K9 [require]
       58 GETTABLEKS                       R13 R1 K10 ["Src"]
       60 GETTABLEKS                       R12 R13 K21 ["Controllers"]
       62 GETTABLEKS                       R11 R12 K22 ["PluginController"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K9 [require]
       67 GETTABLEKS                       R14 R1 K10 ["Src"]
       69 GETTABLEKS                       R13 R14 K21 ["Controllers"]
       71 GETTABLEKS                       R12 R13 K23 ["ItemsController"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K9 [require]
       76 GETTABLEKS                       R15 R1 K10 ["Src"]
       78 GETTABLEKS                       R14 R15 K24 ["Util"]
       80 GETTABLEKS                       R13 R14 K25 ["copyAssetInfosToClipboard"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K9 [require]
       85 GETTABLEKS                       R16 R1 K10 ["Src"]
       87 GETTABLEKS                       R15 R16 K26 ["Flags"]
       89 GETTABLEKS                       R14 R15 K27 ["getFFlagAmrUpdatedItemsCache"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K9 [require]
       94 GETTABLEKS                       R17 R1 K10 ["Src"]
       96 GETTABLEKS                       R16 R17 K26 ["Flags"]
       98 GETTABLEKS                       R15 R16 K28 ["getFFlagAmrMiscCallbackFixes"]
      100 CALL                             R14 1 1
      101 DUPCLOSURE                       R15 K29 [PROTO_0]
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R5
      108 DUPCLOSURE                       R16 K30 [PROTO_4]
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R0
      121 RETURN                           R16 1
