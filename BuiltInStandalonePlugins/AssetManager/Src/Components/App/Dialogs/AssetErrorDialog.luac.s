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
       22 DUPTABLE                         R7 K5 [{["tag"] = "col gap-medium size-full padding-medium"}]
       23 DUPTABLE                         R8 K9 [{"Header", "List", "Footer"}]
       24 GETUPVAL                         R9 5
       25 GETTABLEKS                       R9 R9 K1 ["createElement"]
       27 GETUPVAL                         R10 6
       28 GETTABLEKS                       R10 R10 K2 ["View"]
       30 DUPTABLE                         R11 K13 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center gap-medium size-full-0 auto-y"}]
       31 DUPTABLE                         R12 K16 [{"Icon", "Text"}]
       32 GETUPVAL                         R13 5
       33 GETTABLEKS                       R13 R13 K1 ["createElement"]
       35 GETUPVAL                         R14 6
       36 GETTABLEKS                       R14 R14 K14 ["Icon"]
       38 DUPTABLE                         R15 K21 [{["LayoutOrder"] = 1, ["name"], ["size"], ["style"], ["variant"]}]
       39 GETUPVAL                         R16 6
       40 GETTABLEKS                       R16 R16 K22 ["Enums"]
       42 GETTABLEKS                       R16 R16 K23 ["IconName"]
       44 GETTABLEKS                       R16 R16 K24 ["TriangleExclamation"]
       46 SETTABLEKS                       R16 R15 K17 ["name"]
       48 GETUPVAL                         R16 6
       49 GETTABLEKS                       R16 R16 K22 ["Enums"]
       51 GETTABLEKS                       R16 R16 K25 ["IconSize"]
       53 GETTABLEKS                       R16 R16 K26 ["Large"]
       55 SETTABLEKS                       R16 R15 K18 ["size"]
       57 GETTABLEKS                       R16 R3 K27 ["Color"]
       59 GETTABLEKS                       R16 R16 K28 ["System"]
       61 GETTABLEKS                       R16 R16 K29 ["Warning"]
       63 SETTABLEKS                       R16 R15 K19 ["style"]
       65 GETUPVAL                         R16 6
       66 GETTABLEKS                       R16 R16 K22 ["Enums"]
       68 GETTABLEKS                       R16 R16 K30 ["IconVariant"]
       70 GETTABLEKS                       R16 R16 K31 ["Filled"]
       72 SETTABLEKS                       R16 R15 K20 ["variant"]
       74 CALL                             R13 2 1
       75 SETTABLEKS                       R13 R12 K14 ["Icon"]
       77 GETUPVAL                         R13 5
       78 GETTABLEKS                       R13 R13 K1 ["createElement"]
       80 GETUPVAL                         R14 6
       81 GETTABLEKS                       R14 R14 K2 ["View"]
       83 DUPTABLE                         R15 K34 [{["LayoutOrder"] = 2, ["tag"] = "col fill gap-xsmall auto-y"}]
       84 DUPTABLE                         R16 K37 [{"Title", "Description"}]
       85 GETUPVAL                         R17 5
       86 GETTABLEKS                       R17 R17 K1 ["createElement"]
       88 GETUPVAL                         R18 6
       89 GETTABLEKS                       R18 R18 K15 ["Text"]
       91 DUPTABLE                         R19 K39 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-title-medium"}]
       92 GETTABLEKS                       R20 R0 K35 ["Title"]
       94 SETTABLEKS                       R20 R19 K15 ["Text"]
       96 CALL                             R17 2 1
       97 SETTABLEKS                       R17 R16 K35 ["Title"]
       99 GETTABLEKS                       R18 R0 K36 ["Description"]
      101 JUMPIFEQKNIL                     R18 ; [+14]
      103 GETUPVAL                         R17 5
      104 GETTABLEKS                       R17 R17 K1 ["createElement"]
      106 GETUPVAL                         R18 6
      107 GETTABLEKS                       R18 R18 K15 ["Text"]
      109 DUPTABLE                         R19 K41 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "auto-xy text-body-medium text-wrap"}]
      110 GETTABLEKS                       R20 R0 K36 ["Description"]
      112 SETTABLEKS                       R20 R19 K15 ["Text"]
      114 CALL                             R17 2 1
      115 JUMP                             ; [+1]
      116 LOADNIL                          R17
      117 SETTABLEKS                       R17 R16 K36 ["Description"]
      119 CALL                             R13 3 1
      120 SETTABLEKS                       R13 R12 K15 ["Text"]
      122 CALL                             R9 3 1
      123 SETTABLEKS                       R9 R8 K6 ["Header"]
      125 GETUPVAL                         R9 5
      126 GETTABLEKS                       R9 R9 K1 ["createElement"]
      128 GETUPVAL                         R10 6
      129 GETTABLEKS                       R10 R10 K2 ["View"]
      131 DUPTABLE                         R11 K43 [{["LayoutOrder"] = 2, ["tag"] = "col fill size-full-0 stroke-emphasis radius-medium"}]
      132 DUPTABLE                         R12 K47 [{"HeaderRow", "HeaderRowStroke", "Items"}]
      133 GETUPVAL                         R13 5
      134 GETTABLEKS                       R13 R13 K1 ["createElement"]
      136 GETUPVAL                         R14 6
      137 GETTABLEKS                       R14 R14 K2 ["View"]
      139 DUPTABLE                         R15 K49 [{["LayoutOrder"] = 1, ["tag"] = "row align-y-center size-full-0 auto-y padding-xsmall"}]
      140 DUPTABLE                         R16 K52 [{"NameText", "CreatorText"}]
      141 GETUPVAL                         R17 5
      142 GETTABLEKS                       R17 R17 K1 ["createElement"]
      144 GETUPVAL                         R18 6
      145 GETTABLEKS                       R18 R18 K15 ["Text"]
      147 DUPTABLE                         R19 K54 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "fill auto-y text-title-medium text-align-x-left"}]
      148 LOADK                            R22 K55 ["AssetProperty"]
      149 LOADK                            R23 K56 ["DisplayName"]
      150 NAMECALL                         R20 R2 K57 ["getText"]
      152 CALL                             R20 3 1
      153 SETTABLEKS                       R20 R19 K15 ["Text"]
      155 CALL                             R17 2 1
      156 SETTABLEKS                       R17 R16 K50 ["NameText"]
      158 GETUPVAL                         R17 5
      159 GETTABLEKS                       R17 R17 K1 ["createElement"]
      161 GETUPVAL                         R18 6
      162 GETTABLEKS                       R18 R18 K15 ["Text"]
      164 DUPTABLE                         R19 K58 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "fill auto-y text-title-medium text-align-x-left"}]
      165 LOADK                            R22 K55 ["AssetProperty"]
      166 LOADK                            R23 K59 ["Creator"]
      167 NAMECALL                         R20 R2 K57 ["getText"]
      169 CALL                             R20 3 1
      170 SETTABLEKS                       R20 R19 K15 ["Text"]
      172 CALL                             R17 2 1
      173 SETTABLEKS                       R17 R16 K51 ["CreatorText"]
      175 CALL                             R13 3 1
      176 SETTABLEKS                       R13 R12 K44 ["HeaderRow"]
      178 GETUPVAL                         R13 5
      179 GETTABLEKS                       R13 R13 K1 ["createElement"]
      181 GETUPVAL                         R14 6
      182 GETTABLEKS                       R14 R14 K60 ["Divider"]
      184 DUPTABLE                         R15 K62 [{["LayoutOrder"] = 2, ["orientation"]}]
      185 GETUPVAL                         R16 6
      186 GETTABLEKS                       R16 R16 K22 ["Enums"]
      188 GETTABLEKS                       R16 R16 K63 ["DividerOrientation"]
      190 GETTABLEKS                       R16 R16 K64 ["Horizontal"]
      192 SETTABLEKS                       R16 R15 K61 ["orientation"]
      194 CALL                             R13 2 1
      195 SETTABLEKS                       R13 R12 K45 ["HeaderRowStroke"]
      197 GETUPVAL                         R13 5
      198 GETTABLEKS                       R13 R13 K1 ["createElement"]
      200 GETUPVAL                         R14 6
      201 GETTABLEKS                       R14 R14 K65 ["ScrollView"]
      203 DUPTABLE                         R15 K70 [{["LayoutOrder"] = 3, ["tag"] = "fill size-full-0", ["layout"], ["scroll"]}]
      204 DUPTABLE                         R16 K72 [{"FillDirection"}]
      205 GETIMPORT                        R17 K75 [Enum.FillDirection.Vertical]
      207 SETTABLEKS                       R17 R16 K71 ["FillDirection"]
      209 SETTABLEKS                       R16 R15 K68 ["layout"]
      211 DUPTABLE                         R16 K79 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      212 GETIMPORT                        R17 K82 [Enum.AutomaticSize.Y]
      214 SETTABLEKS                       R17 R16 K76 ["AutomaticCanvasSize"]
      216 GETIMPORT                        R17 K85 [UDim2.fromOffset]
      218 LOADN                            R18 0
      219 LOADN                            R19 0
      220 CALL                             R17 2 1
      221 SETTABLEKS                       R17 R16 K77 ["CanvasSize"]
      223 GETIMPORT                        R17 K86 [Enum.ScrollingDirection.Y]
      225 SETTABLEKS                       R17 R16 K78 ["ScrollingDirection"]
      227 SETTABLEKS                       R16 R15 K69 ["scroll"]
      229 GETUPVAL                         R16 7
      230 GETTABLEKS                       R16 R16 K87 ["map"]
      232 GETTABLEKS                       R17 R0 K88 ["AssetPaths"]
      234 DUPCLOSURE                       R18 K89 [PROTO_2]
      235 CAPTURE                          UPVAL U5
      236 CAPTURE                          UPVAL U8
      237 CALL                             R16 2 -1
      238 CALL                             R13 -1 1
      239 SETTABLEKS                       R13 R12 K46 ["Items"]
      241 CALL                             R9 3 1
      242 SETTABLEKS                       R9 R8 K7 ["List"]
      244 GETUPVAL                         R9 5
      245 GETTABLEKS                       R9 R9 K1 ["createElement"]
      247 GETUPVAL                         R10 6
      248 GETTABLEKS                       R10 R10 K2 ["View"]
      250 DUPTABLE                         R11 K91 [{["LayoutOrder"] = 3, ["tag"] = "row align-y-center size-full-0 auto-y"}]
      251 DUPTABLE                         R12 K94 [{"Link", "Buttons"}]
      252 GETUPVAL                         R13 5
      253 GETTABLEKS                       R13 R13 K1 ["createElement"]
      255 GETUPVAL                         R14 6
      256 GETTABLEKS                       R14 R14 K2 ["View"]
      258 DUPTABLE                         R15 K96 [{["tag"] = "align-y-center fill auto-y", ["LayoutOrder"] = 1}]
      259 GETTABLEKS                       R17 R0 K97 ["LinkText"]
      261 JUMPIFEQKNIL                     R17 ; [+23]
      263 GETTABLEKS                       R17 R0 K98 ["LinkUrl"]
      265 JUMPIFEQKNIL                     R17 ; [+19]
      267 GETUPVAL                         R16 5
      268 GETTABLEKS                       R16 R16 K1 ["createElement"]
      270 GETUPVAL                         R17 6
      271 GETTABLEKS                       R17 R17 K15 ["Text"]
      273 DUPTABLE                         R18 K101 [{["tag"] = "auto-xy text-label-small text-wrap text-align-x-left text-align-y-center content-link", ["Text"], ["onActivated"]}]
      274 GETTABLEKS                       R19 R0 K97 ["LinkText"]
      276 SETTABLEKS                       R19 R18 K15 ["Text"]
      278 NEWCLOSURE                       R19 P2
      279 CAPTURE                          UPVAL U9
      280 CAPTURE                          VAL R0
      281 SETTABLEKS                       R19 R18 K100 ["onActivated"]
      283 CALL                             R16 2 1
      284 JUMP                             ; [+1]
      285 LOADNIL                          R16
      286 CALL                             R13 3 1
      287 SETTABLEKS                       R13 R12 K92 ["Link"]
      289 GETUPVAL                         R13 5
      290 GETTABLEKS                       R13 R13 K1 ["createElement"]
      292 GETUPVAL                         R14 6
      293 GETTABLEKS                       R14 R14 K2 ["View"]
      295 DUPTABLE                         R15 K103 [{["tag"] = "row align-x-right align-y-center gap-small auto-xy", ["LayoutOrder"] = 2}]
      296 DUPTABLE                         R16 K106 [{"NavigationButton", "CopyButton"}]
      297 GETUPVAL                         R17 5
      298 GETTABLEKS                       R17 R17 K1 ["createElement"]
      300 GETUPVAL                         R18 6
      301 GETTABLEKS                       R18 R18 K107 ["Button"]
      303 DUPTABLE                         R19 K111 [{["LayoutOrder"] = 1, ["text"], ["variant"], ["size"], ["onActivated"], ["testId"] = "asset-errors-close-button"}]
      304 GETTABLEKS                       R21 R0 K112 ["CanClose"]
      306 JUMPIFNOT                        R21 ; [+6]
      307 LOADK                            R22 K113 ["QuickShare"]
      308 LOADK                            R23 K114 ["CloseButton"]
      309 NAMECALL                         R20 R2 K57 ["getText"]
      311 CALL                             R20 3 1
      312 JUMP                             ; [+5]
      313 LOADK                            R22 K115 ["TopBar"]
      314 LOADK                            R23 K116 ["BackButton"]
      315 NAMECALL                         R20 R2 K57 ["getText"]
      317 CALL                             R20 3 1
      318 SETTABLEKS                       R20 R19 K108 ["text"]
      320 GETUPVAL                         R20 6
      321 GETTABLEKS                       R20 R20 K22 ["Enums"]
      323 GETTABLEKS                       R20 R20 K117 ["ButtonVariant"]
      325 GETTABLEKS                       R20 R20 K118 ["Standard"]
      327 SETTABLEKS                       R20 R19 K20 ["variant"]
      329 GETUPVAL                         R20 6
      330 GETTABLEKS                       R20 R20 K22 ["Enums"]
      332 GETTABLEKS                       R20 R20 K119 ["InputSize"]
      334 GETTABLEKS                       R20 R20 K120 ["Small"]
      336 SETTABLEKS                       R20 R19 K18 ["size"]
      338 GETTABLEKS                       R21 R0 K112 ["CanClose"]
      340 JUMPIFNOT                        R21 ; [+3]
      341 GETTABLEKS                       R20 R0 K121 ["OnClose"]
      343 JUMP                             ; [+2]
      344 GETTABLEKS                       R20 R0 K122 ["OnBack"]
      346 SETTABLEKS                       R20 R19 K100 ["onActivated"]
      348 CALL                             R17 2 1
      349 SETTABLEKS                       R17 R16 K104 ["NavigationButton"]
      351 GETUPVAL                         R17 5
      352 GETTABLEKS                       R17 R17 K1 ["createElement"]
      354 GETUPVAL                         R18 6
      355 GETTABLEKS                       R18 R18 K107 ["Button"]
      357 DUPTABLE                         R19 K123 [{["LayoutOrder"] = 2, ["text"], ["variant"], ["size"], ["onActivated"]}]
      358 LOADK                            R22 K124 ["ContextMenu"]
      359 LOADK                            R23 K125 ["CopyToClipboard"]
      360 NAMECALL                         R20 R2 K57 ["getText"]
      362 CALL                             R20 3 1
      363 SETTABLEKS                       R20 R19 K108 ["text"]
      365 GETUPVAL                         R20 6
      366 GETTABLEKS                       R20 R20 K22 ["Enums"]
      368 GETTABLEKS                       R20 R20 K117 ["ButtonVariant"]
      370 GETTABLEKS                       R20 R20 K126 ["Emphasis"]
      372 SETTABLEKS                       R20 R19 K20 ["variant"]
      374 GETUPVAL                         R20 6
      375 GETTABLEKS                       R20 R20 K22 ["Enums"]
      377 GETTABLEKS                       R20 R20 K119 ["InputSize"]
      379 GETTABLEKS                       R20 R20 K120 ["Small"]
      381 SETTABLEKS                       R20 R19 K18 ["size"]
      383 SETTABLEKS                       R4 R19 K100 ["onActivated"]
      385 CALL                             R17 2 1
      386 SETTABLEKS                       R17 R16 K105 ["CopyButton"]
      388 CALL                             R13 3 1
      389 SETTABLEKS                       R13 R12 K93 ["Buttons"]
      391 CALL                             R9 3 1
      392 SETTABLEKS                       R9 R8 K8 ["Footer"]
      394 CALL                             R5 3 -1
      395 RETURN                           R5 -1

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
