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
       59 DUPTABLE                         R11 K19 [{["tag"] = "col size-full-0 auto-y", ["testId"] = "asset-error-row"}]
       60 DUPTABLE                         R12 K22 [{"Content", "BottomStroke"}]
       61 GETUPVAL                         R13 2
       62 GETTABLEKS                       R13 R13 K13 ["createElement"]
       64 GETUPVAL                         R14 3
       65 GETTABLEKS                       R14 R14 K14 ["View"]
       67 DUPTABLE                         R15 K26 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center size-full-0 auto-y padding-small"}]
       68 DUPTABLE                         R16 K28 [{"AssetInfo", "Creator"}]
       69 GETUPVAL                         R17 2
       70 GETTABLEKS                       R17 R17 K13 ["createElement"]
       72 GETUPVAL                         R18 3
       73 GETTABLEKS                       R18 R18 K14 ["View"]
       75 DUPTABLE                         R19 K30 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center fill gap-small auto-y"}]
       76 DUPTABLE                         R20 K32 [{"Thumbnail", "Name"}]
       77 GETUPVAL                         R21 2
       78 GETTABLEKS                       R21 R21 K13 ["createElement"]
       80 GETUPVAL                         R22 3
       81 GETTABLEKS                       R22 R22 K33 ["Image"]
       83 DUPTABLE                         R23 K35 [{["LayoutOrder"] = 1, ["Image"], ["tag"] = "size-600 radius-small"}]
       84 LOADK                            R25 K36 ["rbxthumb://type=CreatorContextAsset&id=%*&w=150&h=150"]
       85 MOVE                             R27 R6
       86 NAMECALL                         R25 R25 K37 ["format"]
       88 CALL                             R25 2 1
       89 MOVE                             R24 R25
       90 SETTABLEKS                       R24 R23 K33 ["Image"]
       92 CALL                             R21 2 1
       93 SETTABLEKS                       R21 R20 K31 ["Thumbnail"]
       95 GETUPVAL                         R21 2
       96 GETTABLEKS                       R21 R21 K13 ["createElement"]
       98 GETUPVAL                         R22 3
       99 GETTABLEKS                       R22 R22 K38 ["Text"]
      101 DUPTABLE                         R23 K41 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "fill auto-y text-body-medium text-align-x-left text-truncate-split"}]
      102 SETTABLEKS                       R7 R23 K38 ["Text"]
      104 CALL                             R21 2 1
      105 SETTABLEKS                       R21 R20 K12 ["Name"]
      107 CALL                             R17 3 1
      108 SETTABLEKS                       R17 R16 K27 ["AssetInfo"]
      110 GETUPVAL                         R17 2
      111 GETTABLEKS                       R17 R17 K13 ["createElement"]
      113 GETUPVAL                         R18 3
      114 GETTABLEKS                       R18 R18 K38 ["Text"]
      116 DUPTABLE                         R19 K43 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "fill auto-y text-body-medium text-align-x-left"}]
      117 SETTABLEKS                       R8 R19 K38 ["Text"]
      119 CALL                             R17 2 1
      120 SETTABLEKS                       R17 R16 K6 ["Creator"]
      122 CALL                             R13 3 1
      123 SETTABLEKS                       R13 R12 K20 ["Content"]
      125 GETUPVAL                         R13 2
      126 GETTABLEKS                       R13 R13 K13 ["createElement"]
      128 GETUPVAL                         R14 3
      129 GETTABLEKS                       R14 R14 K44 ["Divider"]
      131 DUPTABLE                         R15 K46 [{["LayoutOrder"] = 2, ["orientation"]}]
      132 GETUPVAL                         R16 3
      133 GETTABLEKS                       R16 R16 K47 ["Enums"]
      135 GETTABLEKS                       R16 R16 K48 ["DividerOrientation"]
      137 GETTABLEKS                       R16 R16 K49 ["Horizontal"]
      139 SETTABLEKS                       R16 R15 K45 ["orientation"]
      141 CALL                             R13 2 1
      142 SETTABLEKS                       R13 R12 K21 ["BottomStroke"]
      144 CALL                             R9 3 -1
      145 RETURN                           R9 -1

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
        9 GETTABLEKS                       R3 R3 K1 ["Hooks"]
       11 GETTABLEKS                       R3 R3 K2 ["useTokens"]
       13 CALL                             R3 0 1
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U4
       20 GETUPVAL                         R5 5
       21 GETTABLEKS                       R5 R5 K3 ["createElement"]
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R6 R6 K4 ["View"]
       26 DUPTABLE                         R7 K7 [{["tag"] = "col gap-medium size-full padding-medium"}]
       27 DUPTABLE                         R8 K11 [{"Header", "List", "Footer"}]
       28 GETUPVAL                         R9 5
       29 GETTABLEKS                       R9 R9 K3 ["createElement"]
       31 GETUPVAL                         R10 2
       32 GETTABLEKS                       R10 R10 K4 ["View"]
       34 DUPTABLE                         R11 K15 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center gap-medium size-full-0 auto-y"}]
       35 DUPTABLE                         R12 K18 [{"Icon", "Text"}]
       36 GETUPVAL                         R13 5
       37 GETTABLEKS                       R13 R13 K3 ["createElement"]
       39 GETUPVAL                         R14 2
       40 GETTABLEKS                       R14 R14 K16 ["Icon"]
       42 DUPTABLE                         R15 K23 [{["LayoutOrder"] = 1, ["name"], ["size"], ["style"], ["variant"]}]
       43 GETUPVAL                         R16 2
       44 GETTABLEKS                       R16 R16 K24 ["Enums"]
       46 GETTABLEKS                       R16 R16 K25 ["IconName"]
       48 GETTABLEKS                       R16 R16 K26 ["TriangleExclamation"]
       50 SETTABLEKS                       R16 R15 K19 ["name"]
       52 GETUPVAL                         R16 2
       53 GETTABLEKS                       R16 R16 K24 ["Enums"]
       55 GETTABLEKS                       R16 R16 K27 ["IconSize"]
       57 GETTABLEKS                       R16 R16 K28 ["Large"]
       59 SETTABLEKS                       R16 R15 K20 ["size"]
       61 GETTABLEKS                       R16 R3 K29 ["Color"]
       63 GETTABLEKS                       R16 R16 K30 ["System"]
       65 GETTABLEKS                       R16 R16 K31 ["Warning"]
       67 SETTABLEKS                       R16 R15 K21 ["style"]
       69 GETUPVAL                         R16 2
       70 GETTABLEKS                       R16 R16 K24 ["Enums"]
       72 GETTABLEKS                       R16 R16 K32 ["IconVariant"]
       74 GETTABLEKS                       R16 R16 K33 ["Filled"]
       76 SETTABLEKS                       R16 R15 K22 ["variant"]
       78 CALL                             R13 2 1
       79 SETTABLEKS                       R13 R12 K16 ["Icon"]
       81 GETUPVAL                         R13 5
       82 GETTABLEKS                       R13 R13 K3 ["createElement"]
       84 GETUPVAL                         R14 2
       85 GETTABLEKS                       R14 R14 K4 ["View"]
       87 DUPTABLE                         R15 K36 [{["LayoutOrder"] = 2, ["tag"] = "col fill gap-xsmall auto-y"}]
       88 DUPTABLE                         R16 K39 [{"Title", "Description"}]
       89 GETUPVAL                         R17 5
       90 GETTABLEKS                       R17 R17 K3 ["createElement"]
       92 GETUPVAL                         R18 2
       93 GETTABLEKS                       R18 R18 K17 ["Text"]
       95 DUPTABLE                         R19 K41 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-title-medium"}]
       96 GETTABLEKS                       R20 R0 K37 ["Title"]
       98 SETTABLEKS                       R20 R19 K17 ["Text"]
      100 CALL                             R17 2 1
      101 SETTABLEKS                       R17 R16 K37 ["Title"]
      103 GETTABLEKS                       R18 R0 K38 ["Description"]
      105 JUMPIFEQKNIL                     R18 ; [+14]
      107 GETUPVAL                         R17 5
      108 GETTABLEKS                       R17 R17 K3 ["createElement"]
      110 GETUPVAL                         R18 2
      111 GETTABLEKS                       R18 R18 K17 ["Text"]
      113 DUPTABLE                         R19 K43 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "auto-xy text-body-medium text-wrap"}]
      114 GETTABLEKS                       R20 R0 K38 ["Description"]
      116 SETTABLEKS                       R20 R19 K17 ["Text"]
      118 CALL                             R17 2 1
      119 JUMP                             ; [+1]
      120 LOADNIL                          R17
      121 SETTABLEKS                       R17 R16 K38 ["Description"]
      123 CALL                             R13 3 1
      124 SETTABLEKS                       R13 R12 K17 ["Text"]
      126 CALL                             R9 3 1
      127 SETTABLEKS                       R9 R8 K8 ["Header"]
      129 GETUPVAL                         R9 5
      130 GETTABLEKS                       R9 R9 K3 ["createElement"]
      132 GETUPVAL                         R10 2
      133 GETTABLEKS                       R10 R10 K4 ["View"]
      135 DUPTABLE                         R11 K45 [{["LayoutOrder"] = 2, ["tag"] = "col fill size-full-0 stroke-emphasis radius-medium"}]
      136 DUPTABLE                         R12 K49 [{"HeaderRow", "HeaderRowStroke", "Items"}]
      137 GETUPVAL                         R13 5
      138 GETTABLEKS                       R13 R13 K3 ["createElement"]
      140 GETUPVAL                         R14 2
      141 GETTABLEKS                       R14 R14 K4 ["View"]
      143 DUPTABLE                         R15 K51 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center size-full-0 auto-y padding-xsmall"}]
      144 DUPTABLE                         R16 K54 [{"NameText", "CreatorText"}]
      145 GETUPVAL                         R17 5
      146 GETTABLEKS                       R17 R17 K3 ["createElement"]
      148 GETUPVAL                         R18 2
      149 GETTABLEKS                       R18 R18 K17 ["Text"]
      151 DUPTABLE                         R19 K56 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "fill auto-y text-title-medium text-align-x-left"}]
      152 LOADK                            R22 K57 ["AssetProperty"]
      153 LOADK                            R23 K58 ["DisplayName"]
      154 NAMECALL                         R20 R2 K59 ["getText"]
      156 CALL                             R20 3 1
      157 SETTABLEKS                       R20 R19 K17 ["Text"]
      159 CALL                             R17 2 1
      160 SETTABLEKS                       R17 R16 K52 ["NameText"]
      162 GETUPVAL                         R17 5
      163 GETTABLEKS                       R17 R17 K3 ["createElement"]
      165 GETUPVAL                         R18 2
      166 GETTABLEKS                       R18 R18 K17 ["Text"]
      168 DUPTABLE                         R19 K60 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "fill auto-y text-title-medium text-align-x-left"}]
      169 LOADK                            R22 K57 ["AssetProperty"]
      170 LOADK                            R23 K61 ["Creator"]
      171 NAMECALL                         R20 R2 K59 ["getText"]
      173 CALL                             R20 3 1
      174 SETTABLEKS                       R20 R19 K17 ["Text"]
      176 CALL                             R17 2 1
      177 SETTABLEKS                       R17 R16 K53 ["CreatorText"]
      179 CALL                             R13 3 1
      180 SETTABLEKS                       R13 R12 K46 ["HeaderRow"]
      182 GETUPVAL                         R13 5
      183 GETTABLEKS                       R13 R13 K3 ["createElement"]
      185 GETUPVAL                         R14 2
      186 GETTABLEKS                       R14 R14 K62 ["Divider"]
      188 DUPTABLE                         R15 K64 [{["LayoutOrder"] = 2, ["orientation"]}]
      189 GETUPVAL                         R16 2
      190 GETTABLEKS                       R16 R16 K24 ["Enums"]
      192 GETTABLEKS                       R16 R16 K65 ["DividerOrientation"]
      194 GETTABLEKS                       R16 R16 K66 ["Horizontal"]
      196 SETTABLEKS                       R16 R15 K63 ["orientation"]
      198 CALL                             R13 2 1
      199 SETTABLEKS                       R13 R12 K47 ["HeaderRowStroke"]
      201 GETUPVAL                         R13 5
      202 GETTABLEKS                       R13 R13 K3 ["createElement"]
      204 GETUPVAL                         R14 2
      205 GETTABLEKS                       R14 R14 K67 ["ScrollView"]
      207 DUPTABLE                         R15 K72 [{["LayoutOrder"] = 3, ["tag"] = "fill size-full-0", ["layout"], ["scroll"]}]
      208 DUPTABLE                         R16 K74 [{"FillDirection"}]
      209 GETIMPORT                        R17 K77 [Enum.FillDirection.Vertical]
      211 SETTABLEKS                       R17 R16 K73 ["FillDirection"]
      213 SETTABLEKS                       R16 R15 K70 ["layout"]
      215 DUPTABLE                         R16 K81 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      216 GETIMPORT                        R17 K84 [Enum.AutomaticSize.Y]
      218 SETTABLEKS                       R17 R16 K78 ["AutomaticCanvasSize"]
      220 GETIMPORT                        R17 K87 [UDim2.fromOffset]
      222 LOADN                            R18 0
      223 LOADN                            R19 0
      224 CALL                             R17 2 1
      225 SETTABLEKS                       R17 R16 K79 ["CanvasSize"]
      227 GETIMPORT                        R17 K88 [Enum.ScrollingDirection.Y]
      229 SETTABLEKS                       R17 R16 K80 ["ScrollingDirection"]
      231 SETTABLEKS                       R16 R15 K71 ["scroll"]
      233 GETUPVAL                         R16 6
      234 GETTABLEKS                       R16 R16 K89 ["map"]
      236 GETTABLEKS                       R17 R0 K90 ["AssetPaths"]
      238 DUPCLOSURE                       R18 K91 [PROTO_2]
      239 CAPTURE                          UPVAL U5
      240 CAPTURE                          UPVAL U7
      241 CALL                             R16 2 -1
      242 CALL                             R13 -1 1
      243 SETTABLEKS                       R13 R12 K48 ["Items"]
      245 CALL                             R9 3 1
      246 SETTABLEKS                       R9 R8 K9 ["List"]
      248 GETUPVAL                         R9 5
      249 GETTABLEKS                       R9 R9 K3 ["createElement"]
      251 GETUPVAL                         R10 2
      252 GETTABLEKS                       R10 R10 K4 ["View"]
      254 DUPTABLE                         R11 K93 [{["LayoutOrder"] = 3, ["tag"] = "row align-y-center size-full-0 auto-y"}]
      255 DUPTABLE                         R12 K96 [{"Link", "Buttons"}]
      256 GETUPVAL                         R13 5
      257 GETTABLEKS                       R13 R13 K3 ["createElement"]
      259 GETUPVAL                         R14 2
      260 GETTABLEKS                       R14 R14 K4 ["View"]
      262 DUPTABLE                         R15 K98 [{["tag"] = "align-y-center fill auto-y", ["LayoutOrder"] = 1}]
      263 GETTABLEKS                       R17 R0 K99 ["LinkText"]
      265 JUMPIFEQKNIL                     R17 ; [+23]
      267 GETTABLEKS                       R17 R0 K100 ["LinkUrl"]
      269 JUMPIFEQKNIL                     R17 ; [+19]
      271 GETUPVAL                         R16 5
      272 GETTABLEKS                       R16 R16 K3 ["createElement"]
      274 GETUPVAL                         R17 2
      275 GETTABLEKS                       R17 R17 K17 ["Text"]
      277 DUPTABLE                         R18 K103 [{["tag"] = "auto-xy text-label-small text-wrap text-align-x-left text-align-y-center content-link", ["Text"], ["onActivated"]}]
      278 GETTABLEKS                       R19 R0 K99 ["LinkText"]
      280 SETTABLEKS                       R19 R18 K17 ["Text"]
      282 NEWCLOSURE                       R19 P2
      283 CAPTURE                          UPVAL U8
      284 CAPTURE                          VAL R0
      285 SETTABLEKS                       R19 R18 K102 ["onActivated"]
      287 CALL                             R16 2 1
      288 JUMP                             ; [+1]
      289 LOADNIL                          R16
      290 CALL                             R13 3 1
      291 SETTABLEKS                       R13 R12 K94 ["Link"]
      293 GETUPVAL                         R13 5
      294 GETTABLEKS                       R13 R13 K3 ["createElement"]
      296 GETUPVAL                         R14 2
      297 GETTABLEKS                       R14 R14 K4 ["View"]
      299 DUPTABLE                         R15 K105 [{["tag"] = "row align-x-right align-y-center gap-small auto-xy", ["LayoutOrder"] = 2}]
      300 DUPTABLE                         R16 K108 [{"NavigationButton", "CopyButton"}]
      301 GETUPVAL                         R17 5
      302 GETTABLEKS                       R17 R17 K3 ["createElement"]
      304 GETUPVAL                         R18 2
      305 GETTABLEKS                       R18 R18 K109 ["Button"]
      307 DUPTABLE                         R19 K113 [{["LayoutOrder"] = 1, ["text"], ["variant"], ["size"], ["onActivated"], ["testId"] = "asset-errors-close-button"}]
      308 GETTABLEKS                       R21 R0 K114 ["CanClose"]
      310 JUMPIFNOT                        R21 ; [+6]
      311 LOADK                            R22 K115 ["QuickShare"]
      312 LOADK                            R23 K116 ["CloseButton"]
      313 NAMECALL                         R20 R2 K59 ["getText"]
      315 CALL                             R20 3 1
      316 JUMP                             ; [+5]
      317 LOADK                            R22 K117 ["TopBar"]
      318 LOADK                            R23 K118 ["BackButton"]
      319 NAMECALL                         R20 R2 K59 ["getText"]
      321 CALL                             R20 3 1
      322 SETTABLEKS                       R20 R19 K110 ["text"]
      324 GETUPVAL                         R20 2
      325 GETTABLEKS                       R20 R20 K24 ["Enums"]
      327 GETTABLEKS                       R20 R20 K119 ["ButtonVariant"]
      329 GETTABLEKS                       R20 R20 K120 ["Standard"]
      331 SETTABLEKS                       R20 R19 K22 ["variant"]
      333 GETUPVAL                         R20 2
      334 GETTABLEKS                       R20 R20 K24 ["Enums"]
      336 GETTABLEKS                       R20 R20 K121 ["InputSize"]
      338 GETTABLEKS                       R20 R20 K122 ["Small"]
      340 SETTABLEKS                       R20 R19 K20 ["size"]
      342 GETTABLEKS                       R21 R0 K114 ["CanClose"]
      344 JUMPIFNOT                        R21 ; [+3]
      345 GETTABLEKS                       R20 R0 K123 ["OnClose"]
      347 JUMP                             ; [+2]
      348 GETTABLEKS                       R20 R0 K124 ["OnBack"]
      350 SETTABLEKS                       R20 R19 K102 ["onActivated"]
      352 CALL                             R17 2 1
      353 SETTABLEKS                       R17 R16 K106 ["NavigationButton"]
      355 GETUPVAL                         R17 5
      356 GETTABLEKS                       R17 R17 K3 ["createElement"]
      358 GETUPVAL                         R18 2
      359 GETTABLEKS                       R18 R18 K109 ["Button"]
      361 DUPTABLE                         R19 K125 [{["LayoutOrder"] = 2, ["text"], ["variant"], ["size"], ["onActivated"]}]
      362 LOADK                            R22 K126 ["ContextMenu"]
      363 LOADK                            R23 K127 ["CopyToClipboard"]
      364 NAMECALL                         R20 R2 K59 ["getText"]
      366 CALL                             R20 3 1
      367 SETTABLEKS                       R20 R19 K110 ["text"]
      369 GETUPVAL                         R20 2
      370 GETTABLEKS                       R20 R20 K24 ["Enums"]
      372 GETTABLEKS                       R20 R20 K119 ["ButtonVariant"]
      374 GETTABLEKS                       R20 R20 K128 ["Emphasis"]
      376 SETTABLEKS                       R20 R19 K22 ["variant"]
      378 GETUPVAL                         R20 2
      379 GETTABLEKS                       R20 R20 K24 ["Enums"]
      381 GETTABLEKS                       R20 R20 K121 ["InputSize"]
      383 GETTABLEKS                       R20 R20 K122 ["Small"]
      385 SETTABLEKS                       R20 R19 K20 ["size"]
      387 SETTABLEKS                       R4 R19 K102 ["onActivated"]
      389 CALL                             R17 2 1
      390 SETTABLEKS                       R17 R16 K107 ["CopyButton"]
      392 CALL                             R13 3 1
      393 SETTABLEKS                       R13 R12 K95 ["Buttons"]
      395 CALL                             R9 3 1
      396 SETTABLEKS                       R9 R8 K10 ["Footer"]
      398 CALL                             R5 3 -1
      399 RETURN                           R5 -1

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
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K12 ["Packages"]
       45 GETTABLEKS                       R7 R7 K16 ["Framework"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R6 K17 ["ContextServices"]
       50 GETTABLEKS                       R8 R7 K18 ["Localization"]
       52 GETIMPORT                        R9 K9 [require]
       54 GETTABLEKS                       R10 R1 K10 ["Src"]
       56 GETTABLEKS                       R10 R10 K19 ["Controllers"]
       58 GETTABLEKS                       R10 R10 K20 ["ItemsController"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K9 [require]
       63 GETTABLEKS                       R11 R1 K10 ["Src"]
       65 GETTABLEKS                       R11 R11 K21 ["Util"]
       67 GETTABLEKS                       R11 R11 K22 ["copyAssetInfosToClipboard"]
       69 CALL                             R10 1 1
       70 DUPCLOSURE                       R11 K23 [PROTO_0]
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R5
       75 DUPCLOSURE                       R12 K24 [PROTO_4]
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R0
       85 RETURN                           R12 1
