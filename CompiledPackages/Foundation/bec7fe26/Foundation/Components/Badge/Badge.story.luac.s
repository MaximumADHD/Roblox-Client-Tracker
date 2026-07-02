PROTO_0:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Primary"]
        4 JUMPIFEQ                         R0 R2 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["Secondary"]
        9 JUMPIFNOTEQ                      R0 R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [wait]
        2 LOADN                            R1 2
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 LOADK                            R2 K2 [21070012]
        6 NAMECALL                         R0 R0 K3 ["GetProductInfo"]
        8 CALL                             R0 2 1
        9 GETTABLEKS                       R1 R0 K4 ["IsPublicDomain"]
       11 JUMPIFNOT                        R1 ; [+7]
       12 LOADN                            R1 0
       13 SETTABLEKS                       R1 R0 K5 ["PriceInRobux"]
       15 LOADK                            R1 K6 ["Free"]
       16 SETTABLEKS                       R1 R0 K7 ["PriceText"]
       18 JUMP                             ; [+22]
       19 GETTABLEKS                       R3 R0 K5 ["PriceInRobux"]
       21 JUMPIFNOTEQKNIL                  R3 ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 FASTCALL2K                       ASSERT R2 K8 ; [+4]
       27 LOADK                            R3 K8 ["Item price will not be nil"]
       28 GETIMPORT                        R1 K10 [assert]
       30 CALL                             R1 2 0
       31 LOADK                            R2 K11 [""]
       32 GETTABLEKS                       R4 R0 K5 ["PriceInRobux"]
       34 FASTCALL1                        TOSTRING R4 ; [+2]
       35 GETIMPORT                        R3 K13 [tostring]
       37 CALL                             R3 1 1
       38 CONCAT                           R1 R2 R3
       39 SETTABLEKS                       R1 R0 K7 ["PriceText"]
       41 GETUPVAL                         R1 1
       42 MOVE                             R2 R0
       43 CALL                             R1 1 0
       44 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K1 [spawn]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["controls"]
        3 GETTABLEKS                       R2 R2 K1 ["updateBadgeDesign"]
        5 SETTABLEKS                       R2 R1 K2 ["FoundationUpdateBadgeDesign"]
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 1
        9 GETTABLEKS                       R3 R0 K0 ["controls"]
       11 GETTABLEKS                       R3 R3 K1 ["updateBadgeDesign"]
       13 JUMPIFNOT                        R3 ; [+2]
       14 GETUPVAL                         R2 2
       15 JUMP                             ; [+1]
       16 GETUPVAL                         R2 3
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K3 ["useState"]
       20 NEWTABLE                         R4 0 0
       22 CALL                             R3 1 2
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       26 NEWCLOSURE                       R6 P0
       27 CAPTURE                          VAL R4
       28 CAPTURE                          UPVAL U5
       29 NEWTABLE                         R7 0 1
       31 LOADK                            R8 K5 [21070012]
       32 SETLIST                          R7 R8 1 [1]
       34 CALL                             R5 2 0
       35 GETTABLEKS                       R5 R0 K0 ["controls"]
       37 GETTABLEKS                       R5 R5 K6 ["onTile"]
       39 JUMPIFNOT                        R5 ; [+202]
       40 GETUPVAL                         R5 4
       41 GETTABLEKS                       R5 R5 K7 ["createElement"]
       43 GETUPVAL                         R6 6
       44 GETTABLEKS                       R6 R6 K8 ["Root"]
       46 DUPTABLE                         R7 K13 [{["isContained"] = True, ["FillDirection"], ["Size"]}]
       47 GETIMPORT                        R8 K16 [Enum.FillDirection.Vertical]
       49 SETTABLEKS                       R8 R7 K11 ["FillDirection"]
       51 GETUPVAL                         R8 7
       52 SETTABLEKS                       R8 R7 K12 ["Size"]
       54 DUPTABLE                         R8 K19 [{"TileMedia", "TileContent"}]
       55 GETUPVAL                         R9 4
       56 GETTABLEKS                       R9 R9 K7 ["createElement"]
       58 GETUPVAL                         R10 6
       59 GETTABLEKS                       R10 R10 K20 ["Media"]
       61 DUPTABLE                         R11 K26 [{["id"] = 21070012, ["type"], ["aspectRatio"] = 1, ["background"]}]
       62 GETUPVAL                         R12 8
       63 GETTABLEKS                       R12 R12 K27 ["Asset"]
       65 SETTABLEKS                       R12 R11 K22 ["type"]
       67 DUPTABLE                         R12 K29 [{"image"}]
       68 LOADK                            R14 K30 ["component_assets/itemBG_"]
       69 GETTABLEKS                       R16 R1 K31 ["Config"]
       71 GETTABLEKS                       R16 R16 K32 ["Theme"]
       73 GETTABLEKS                       R16 R16 K33 ["Name"]
       75 GETUPVAL                         R17 9
       76 GETTABLEKS                       R17 R17 K34 ["Dark"]
       78 JUMPIFNOTEQ                      R16 R17 ; [+3]
       80 LOADK                            R15 K35 ["dark"]
       81 JUMP                             ; [+1]
       82 LOADK                            R15 K36 ["light"]
       83 CONCAT                           R13 R14 R15
       84 SETTABLEKS                       R13 R12 K28 ["image"]
       86 SETTABLEKS                       R12 R11 K25 ["background"]
       88 DUPTABLE                         R12 K39 [{"UIListLayout", "Badge"}]
       89 GETUPVAL                         R13 4
       90 GETTABLEKS                       R13 R13 K7 ["createElement"]
       92 LOADK                            R14 K37 ["UIListLayout"]
       93 DUPTABLE                         R15 K43 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
       94 GETIMPORT                        R16 K16 [Enum.FillDirection.Vertical]
       96 SETTABLEKS                       R16 R15 K11 ["FillDirection"]
       98 GETIMPORT                        R16 K45 [Enum.HorizontalAlignment.Left]
      100 SETTABLEKS                       R16 R15 K40 ["HorizontalAlignment"]
      102 GETIMPORT                        R16 K47 [Enum.VerticalAlignment.Bottom]
      104 SETTABLEKS                       R16 R15 K41 ["VerticalAlignment"]
      106 GETIMPORT                        R16 K49 [Enum.SortOrder.LayoutOrder]
      108 SETTABLEKS                       R16 R15 K42 ["SortOrder"]
      110 CALL                             R13 2 1
      111 SETTABLEKS                       R13 R12 K37 ["UIListLayout"]
      113 GETUPVAL                         R13 4
      114 GETTABLEKS                       R13 R13 K7 ["createElement"]
      116 MOVE                             R14 R2
      117 DUPTABLE                         R15 K55 [{"text", "icon", "size", "isDisabled", "variant"}]
      118 GETTABLEKS                       R16 R0 K0 ["controls"]
      120 GETTABLEKS                       R16 R16 K50 ["text"]
      122 SETTABLEKS                       R16 R15 K50 ["text"]
      124 GETTABLEKS                       R17 R0 K0 ["controls"]
      126 GETTABLEKS                       R17 R17 K51 ["icon"]
      128 JUMPIFEQKS                       R17 K56 [""] ; [+6]
      130 GETTABLEKS                       R16 R0 K0 ["controls"]
      132 GETTABLEKS                       R16 R16 K51 ["icon"]
      134 JUMP                             ; [+1]
      135 LOADNIL                          R16
      136 SETTABLEKS                       R16 R15 K51 ["icon"]
      138 GETTABLEKS                       R16 R0 K0 ["controls"]
      140 GETTABLEKS                       R16 R16 K52 ["size"]
      142 SETTABLEKS                       R16 R15 K52 ["size"]
      144 GETTABLEKS                       R16 R0 K0 ["controls"]
      146 GETTABLEKS                       R16 R16 K53 ["isDisabled"]
      148 SETTABLEKS                       R16 R15 K53 ["isDisabled"]
      150 GETTABLEKS                       R16 R0 K0 ["controls"]
      152 GETTABLEKS                       R16 R16 K54 ["variant"]
      154 SETTABLEKS                       R16 R15 K54 ["variant"]
      156 CALL                             R13 2 1
      157 SETTABLEKS                       R13 R12 K38 ["Badge"]
      159 CALL                             R9 3 1
      160 SETTABLEKS                       R9 R8 K17 ["TileMedia"]
      162 GETUPVAL                         R9 4
      163 GETTABLEKS                       R9 R9 K7 ["createElement"]
      165 GETUPVAL                         R10 6
      166 GETTABLEKS                       R10 R10 K57 ["Content"]
      168 NEWTABLE                         R11 0 0
      170 DUPTABLE                         R12 K59 [{"TileHeader"}]
      171 GETUPVAL                         R13 4
      172 GETTABLEKS                       R13 R13 K7 ["createElement"]
      174 GETUPVAL                         R14 6
      175 GETTABLEKS                       R14 R14 K60 ["Header"]
      177 DUPTABLE                         R15 K64 [{"title", "subtitle", "spacing"}]
      178 DUPTABLE                         R16 K69 [{["text"], ["isLoading"], ["fontStyle"], ["numLines"] = 2}]
      179 GETTABLEKS                       R17 R3 K33 ["Name"]
      181 SETTABLEKS                       R17 R16 K50 ["text"]
      183 GETTABLEKS                       R18 R3 K33 ["Name"]
      185 JUMPIFEQKNIL                     R18 ; [+2]
      187 LOADB                            R17 0 +1
      188 LOADB                            R17 1
      189 SETTABLEKS                       R17 R16 K65 ["isLoading"]
      191 GETTABLEKS                       R17 R1 K70 ["Typography"]
      193 GETTABLEKS                       R17 R17 K71 ["HeadingSmall"]
      195 SETTABLEKS                       R17 R16 K66 ["fontStyle"]
      197 SETTABLEKS                       R16 R15 K61 ["title"]
      199 DUPTABLE                         R16 K73 [{"text", "isLoading", "fontStyle", "colorStyle"}]
      200 GETTABLEKS                       R17 R3 K74 ["PriceText"]
      202 SETTABLEKS                       R17 R16 K50 ["text"]
      204 GETTABLEKS                       R18 R3 K74 ["PriceText"]
      206 JUMPIFEQKNIL                     R18 ; [+2]
      208 LOADB                            R17 0 +1
      209 LOADB                            R17 1
      210 SETTABLEKS                       R17 R16 K65 ["isLoading"]
      212 GETTABLEKS                       R17 R1 K70 ["Typography"]
      214 GETTABLEKS                       R17 R17 K75 ["BodyLarge"]
      216 SETTABLEKS                       R17 R16 K66 ["fontStyle"]
      218 GETTABLEKS                       R17 R1 K76 ["Color"]
      220 GETTABLEKS                       R17 R17 K57 ["Content"]
      222 GETTABLEKS                       R17 R17 K77 ["Muted"]
      224 SETTABLEKS                       R17 R16 K72 ["colorStyle"]
      226 SETTABLEKS                       R16 R15 K62 ["subtitle"]
      228 GETTABLEKS                       R16 R1 K78 ["Gap"]
      230 GETTABLEKS                       R16 R16 K79 ["Small"]
      232 SETTABLEKS                       R16 R15 K63 ["spacing"]
      234 CALL                             R13 2 1
      235 SETTABLEKS                       R13 R12 K58 ["TileHeader"]
      237 CALL                             R9 3 1
      238 SETTABLEKS                       R9 R8 K18 ["TileContent"]
      240 CALL                             R5 3 -1
      241 RETURN                           R5 -1
      242 GETUPVAL                         R5 4
      243 GETTABLEKS                       R5 R5 K7 ["createElement"]
      245 MOVE                             R6 R2
      246 DUPTABLE                         R7 K55 [{"text", "icon", "size", "isDisabled", "variant"}]
      247 GETTABLEKS                       R8 R0 K0 ["controls"]
      249 GETTABLEKS                       R8 R8 K50 ["text"]
      251 SETTABLEKS                       R8 R7 K50 ["text"]
      253 GETTABLEKS                       R9 R0 K0 ["controls"]
      255 GETTABLEKS                       R9 R9 K51 ["icon"]
      257 JUMPIFEQKS                       R9 K56 [""] ; [+6]
      259 GETTABLEKS                       R8 R0 K0 ["controls"]
      261 GETTABLEKS                       R8 R8 K51 ["icon"]
      263 JUMP                             ; [+1]
      264 LOADNIL                          R8
      265 SETTABLEKS                       R8 R7 K51 ["icon"]
      267 GETTABLEKS                       R8 R0 K0 ["controls"]
      269 GETTABLEKS                       R8 R8 K52 ["size"]
      271 SETTABLEKS                       R8 R7 K52 ["size"]
      273 GETTABLEKS                       R8 R0 K0 ["controls"]
      275 GETTABLEKS                       R8 R8 K53 ["isDisabled"]
      277 SETTABLEKS                       R8 R7 K53 ["isDisabled"]
      279 GETTABLEKS                       R8 R0 K0 ["controls"]
      281 GETTABLEKS                       R8 R8 K54 ["variant"]
      283 SETTABLEKS                       R8 R7 K54 ["variant"]
      285 CALL                             R5 2 -1
      286 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["tag"] = "col gap-small auto-xy align-x-center"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["createElement"]
        8 GETUPVAL                         R5 2
        9 DUPTABLE                         R6 K6 [{["tag"] = "auto-xy text-align-x-center text-caption-small", ["Text"]}]
       10 SETTABLEKS                       R0 R6 K5 ["Text"]
       12 CALL                             R4 2 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K0 ["createElement"]
       16 GETUPVAL                         R6 3
       17 DUPTABLE                         R7 K12 [{"text", "icon", "size", "isDisabled", "variant"}]
       18 GETUPVAL                         R8 4
       19 GETTABLEKS                       R8 R8 K13 ["controls"]
       21 GETTABLEKS                       R8 R8 K7 ["text"]
       23 SETTABLEKS                       R8 R7 K7 ["text"]
       25 GETUPVAL                         R9 4
       26 GETTABLEKS                       R9 R9 K13 ["controls"]
       28 GETTABLEKS                       R9 R9 K8 ["icon"]
       30 JUMPIFEQKS                       R9 K14 [""] ; [+7]
       32 GETUPVAL                         R8 4
       33 GETTABLEKS                       R8 R8 K13 ["controls"]
       35 GETTABLEKS                       R8 R8 K8 ["icon"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R8
       39 SETTABLEKS                       R8 R7 K8 ["icon"]
       41 GETUPVAL                         R8 4
       42 GETTABLEKS                       R8 R8 K13 ["controls"]
       44 GETTABLEKS                       R8 R8 K9 ["size"]
       46 SETTABLEKS                       R8 R7 K9 ["size"]
       48 GETUPVAL                         R8 4
       49 GETTABLEKS                       R8 R8 K13 ["controls"]
       51 GETTABLEKS                       R8 R8 K10 ["isDisabled"]
       53 SETTABLEKS                       R8 R7 K10 ["isDisabled"]
       55 SETTABLEKS                       R0 R7 K11 ["variant"]
       57 CALL                             R5 2 -1
       58 CALL                             R1 -1 -1
       59 RETURN                           R1 -1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R2 K1 ["updateBadgeDesign"]
        4 JUMPIFNOT                        R2 ; [+2]
        5 GETUPVAL                         R1 0
        6 JUMP                             ; [+1]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["createElement"]
       11 GETUPVAL                         R3 3
       12 DUPTABLE                         R4 K5 [{["tag"] = "row wrap auto-xy gap-xxlarge"}]
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R5 R5 K6 ["map"]
       16 GETUPVAL                         R6 5
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 CALL                             R5 2 -1
       24 CALL                             R2 -1 -1
       25 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["tag"] = "col gap-small auto-xy align-x-center"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["createElement"]
        8 GETUPVAL                         R5 2
        9 DUPTABLE                         R6 K6 [{["tag"] = "auto-xy text-align-x-center text-caption-small", ["Text"]}]
       10 SETTABLEKS                       R0 R6 K5 ["Text"]
       12 CALL                             R4 2 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K0 ["createElement"]
       16 GETUPVAL                         R6 3
       17 DUPTABLE                         R7 K12 [{"text", "icon", "size", "isDisabled", "variant"}]
       18 GETUPVAL                         R8 4
       19 GETTABLEKS                       R8 R8 K13 ["controls"]
       21 GETTABLEKS                       R8 R8 K7 ["text"]
       23 SETTABLEKS                       R8 R7 K7 ["text"]
       25 GETUPVAL                         R9 4
       26 GETTABLEKS                       R9 R9 K13 ["controls"]
       28 GETTABLEKS                       R9 R9 K8 ["icon"]
       30 JUMPIFEQKS                       R9 K14 [""] ; [+7]
       32 GETUPVAL                         R8 4
       33 GETTABLEKS                       R8 R8 K13 ["controls"]
       35 GETTABLEKS                       R8 R8 K8 ["icon"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R8
       39 SETTABLEKS                       R8 R7 K8 ["icon"]
       41 GETUPVAL                         R8 4
       42 GETTABLEKS                       R8 R8 K13 ["controls"]
       44 GETTABLEKS                       R8 R8 K9 ["size"]
       46 SETTABLEKS                       R8 R7 K9 ["size"]
       48 GETUPVAL                         R8 4
       49 GETTABLEKS                       R8 R8 K13 ["controls"]
       51 GETTABLEKS                       R8 R8 K10 ["isDisabled"]
       53 SETTABLEKS                       R8 R7 K10 ["isDisabled"]
       55 SETTABLEKS                       R0 R7 K11 ["variant"]
       57 CALL                             R5 2 -1
       58 CALL                             R1 -1 -1
       59 RETURN                           R1 -1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R2 K1 ["updateBadgeDesign"]
        4 JUMPIFNOT                        R2 ; [+2]
        5 GETUPVAL                         R1 0
        6 JUMP                             ; [+1]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["createElement"]
       11 GETUPVAL                         R3 3
       12 DUPTABLE                         R4 K5 [{["tag"] = "row wrap auto-xy gap-xxlarge"}]
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R5 R5 K6 ["map"]
       16 NEWTABLE                         R6 0 2
       18 GETUPVAL                         R7 5
       19 GETTABLEKS                       R7 R7 K7 ["Primary"]
       21 GETUPVAL                         R8 5
       22 GETTABLEKS                       R8 R8 K8 ["Secondary"]
       24 SETLIST                          R6 R7 2 [1]
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R0
       32 CALL                             R5 2 -1
       33 CALL                             R2 -1 -1
       34 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MarketplaceService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Foundation"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["React"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["Dash"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R1 K13 ["Components"]
       29 GETTABLEKS                       R6 R6 K14 ["Tile"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K10 [require]
       34 GETTABLEKS                       R7 R1 K15 ["Enums"]
       36 GETTABLEKS                       R7 R7 K16 ["MediaType"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K10 [require]
       41 GETTABLEKS                       R8 R1 K15 ["Enums"]
       43 GETTABLEKS                       R8 R8 K17 ["Theme"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K10 [require]
       48 GETTABLEKS                       R9 R1 K13 ["Components"]
       50 GETTABLEKS                       R9 R9 K18 ["View"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K10 [require]
       55 GETTABLEKS                       R10 R1 K13 ["Components"]
       57 GETTABLEKS                       R10 R10 K19 ["Text"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K10 [require]
       62 GETTABLEKS                       R11 R1 K13 ["Components"]
       64 GETTABLEKS                       R11 R11 K20 ["Badge"]
       66 GETTABLEKS                       R11 R11 K20 ["Badge"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K10 [require]
       71 GETTABLEKS                       R12 R1 K13 ["Components"]
       73 GETTABLEKS                       R12 R12 K20 ["Badge"]
       75 GETTABLEKS                       R12 R12 K21 ["Badge_DEPRECATED"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K10 [require]
       80 GETTABLEKS                       R13 R1 K15 ["Enums"]
       82 GETTABLEKS                       R13 R13 K22 ["BadgeVariant"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K10 [require]
       87 GETTABLEKS                       R14 R1 K23 ["Providers"]
       89 GETTABLEKS                       R14 R14 K24 ["Style"]
       91 GETTABLEKS                       R14 R14 K25 ["useTokens"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K10 [require]
       96 GETTABLEKS                       R15 R1 K26 ["Utility"]
       98 GETTABLEKS                       R15 R15 K27 ["Flags"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K30 [UDim2.fromOffset]
      103 LOADN                            R16 150
      104 LOADN                            R17 240
      105 CALL                             R15 2 1
      106 GETTABLEKS                       R16 R4 K31 ["filter"]
      108 GETTABLEKS                       R17 R4 K32 ["values"]
      110 MOVE                             R18 R12
      111 CALL                             R17 1 1
      112 DUPCLOSURE                       R18 K33 [PROTO_0]
      113 CAPTURE                          VAL R12
      114 CALL                             R16 2 1
      115 DUPTABLE                         R17 K37 [{["summary"] = "Badge", ["stories"], ["controls"]}]
      116 NEWTABLE                         R18 0 3
      118 DUPTABLE                         R19 K41 [{["name"] = "Base", ["story"]}]
      119 DUPCLOSURE                       R20 K42 [PROTO_3]
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R0
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R7
      130 SETTABLEKS                       R20 R19 K40 ["story"]
      132 DUPTABLE                         R20 K44 [{["name"] = "All variants", ["story"]}]
      133 DUPCLOSURE                       R21 K45 [PROTO_5]
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R16
      140 CAPTURE                          VAL R9
      141 SETTABLEKS                       R21 R20 K40 ["story"]
      143 DUPTABLE                         R21 K47 [{["name"] = "Deprecated variants", ["story"]}]
      144 DUPCLOSURE                       R22 K48 [PROTO_7]
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R9
      152 SETTABLEKS                       R22 R21 K40 ["story"]
      154 SETLIST                          R18 R19 3 [1]
      156 SETTABLEKS                       R18 R17 K35 ["stories"]
      158 DUPTABLE                         R18 K56 [{["text"] = "Label", ["icon"], ["variant"], ["onTile"] = False, ["updateBadgeDesign"]}]
      159 NEWTABLE                         R19 0 5
      161 LOADK                            R20 K57 ["diamond-simplified"]
      162 LOADK                            R21 K58 ["house"]
      163 LOADK                            R22 K59 ["icons/placeholder/placeholderOn_small"]
      164 LOADK                            R23 K60 ["icons/menu/clothing/limited_on"]
      165 LOADK                            R24 K61 [""]
      166 SETLIST                          R19 R20 5 [1]
      168 SETTABLEKS                       R19 R18 K51 ["icon"]
      170 SETTABLEKS                       R16 R18 K52 ["variant"]
      172 GETTABLEKS                       R19 R14 K62 ["FoundationUpdateBadgeDesign"]
      174 SETTABLEKS                       R19 R18 K55 ["updateBadgeDesign"]
      176 SETTABLEKS                       R18 R17 K36 ["controls"]
      178 RETURN                           R17 1
