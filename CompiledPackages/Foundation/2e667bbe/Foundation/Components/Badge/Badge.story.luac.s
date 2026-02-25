PROTO_0:
        0 LOADB                            R1 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["Primary"]
        4 JUMPIFEQ                         R0 R2 ; [+8]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["Secondary"]
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
        1 GETTABLEKS                       R3 R0 K0 ["controls"]
        3 GETTABLEKS                       R2 R3 K1 ["disableBadgeTruncation"]
        5 SETTABLEKS                       R2 R1 K2 ["FoundationDisableBadgeTruncation"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R3 R0 K0 ["controls"]
       10 GETTABLEKS                       R2 R3 K3 ["updateBadgeDesign"]
       12 SETTABLEKS                       R2 R1 K4 ["FoundationUpdateBadgeDesign"]
       14 GETUPVAL                         R1 1
       15 CALL                             R1 0 1
       16 GETTABLEKS                       R4 R0 K0 ["controls"]
       18 GETTABLEKS                       R3 R4 K3 ["updateBadgeDesign"]
       20 JUMPIFNOT                        R3 ; [+2]
       21 GETUPVAL                         R2 2
       22 JUMP                             ; [+1]
       23 GETUPVAL                         R2 3
       24 GETUPVAL                         R4 4
       25 GETTABLEKS                       R3 R4 K5 ["useState"]
       27 NEWTABLE                         R4 0 0
       29 CALL                             R3 1 2
       30 GETUPVAL                         R6 4
       31 GETTABLEKS                       R5 R6 K6 ["useEffect"]
       33 NEWCLOSURE                       R6 P0
       34 CAPTURE                          VAL R4
       35 CAPTURE                          UPVAL U5
       36 NEWTABLE                         R7 0 1
       38 LOADK                            R8 K7 [21070012]
       39 SETLIST                          R7 R8 1 [1]
       41 CALL                             R5 2 0
       42 GETTABLEKS                       R6 R0 K0 ["controls"]
       44 GETTABLEKS                       R5 R6 K8 ["onTile"]
       46 JUMPIFNOT                        R5 ; [+214]
       47 GETUPVAL                         R6 4
       48 GETTABLEKS                       R5 R6 K9 ["createElement"]
       50 GETUPVAL                         R7 6
       51 GETTABLEKS                       R6 R7 K10 ["Root"]
       53 DUPTABLE                         R7 K14 [{"isContained", "FillDirection", "Size"}]
       54 LOADB                            R8 1
       55 SETTABLEKS                       R8 R7 K11 ["isContained"]
       57 GETIMPORT                        R8 K17 [Enum.FillDirection.Vertical]
       59 SETTABLEKS                       R8 R7 K12 ["FillDirection"]
       61 GETUPVAL                         R8 7
       62 SETTABLEKS                       R8 R7 K13 ["Size"]
       64 DUPTABLE                         R8 K20 [{"TileMedia", "TileContent"}]
       65 GETUPVAL                         R10 4
       66 GETTABLEKS                       R9 R10 K9 ["createElement"]
       68 GETUPVAL                         R11 6
       69 GETTABLEKS                       R10 R11 K21 ["Media"]
       71 DUPTABLE                         R11 K26 [{"id", "type", "aspectRatio", "background"}]
       72 LOADK                            R12 K7 [21070012]
       73 SETTABLEKS                       R12 R11 K22 ["id"]
       75 GETUPVAL                         R13 8
       76 GETTABLEKS                       R12 R13 K27 ["Asset"]
       78 SETTABLEKS                       R12 R11 K23 ["type"]
       80 LOADN                            R12 1
       81 SETTABLEKS                       R12 R11 K24 ["aspectRatio"]
       83 DUPTABLE                         R12 K29 [{"image"}]
       84 LOADK                            R14 K30 ["component_assets/itemBG_"]
       85 GETTABLEKS                       R18 R1 K31 ["Config"]
       87 GETTABLEKS                       R17 R18 K32 ["Theme"]
       89 GETTABLEKS                       R16 R17 K33 ["Name"]
       91 GETUPVAL                         R18 9
       92 GETTABLEKS                       R17 R18 K34 ["Dark"]
       94 JUMPIFNOTEQ                      R16 R17 ; [+3]
       96 LOADK                            R15 K35 ["dark"]
       97 JUMP                             ; [+1]
       98 LOADK                            R15 K36 ["light"]
       99 CONCAT                           R13 R14 R15
      100 SETTABLEKS                       R13 R12 K28 ["image"]
      102 SETTABLEKS                       R12 R11 K25 ["background"]
      104 DUPTABLE                         R12 K39 [{"UIListLayout", "Badge"}]
      105 GETUPVAL                         R14 4
      106 GETTABLEKS                       R13 R14 K9 ["createElement"]
      108 LOADK                            R14 K37 ["UIListLayout"]
      109 DUPTABLE                         R15 K43 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      110 GETIMPORT                        R16 K17 [Enum.FillDirection.Vertical]
      112 SETTABLEKS                       R16 R15 K12 ["FillDirection"]
      114 GETIMPORT                        R16 K45 [Enum.HorizontalAlignment.Left]
      116 SETTABLEKS                       R16 R15 K40 ["HorizontalAlignment"]
      118 GETIMPORT                        R16 K47 [Enum.VerticalAlignment.Bottom]
      120 SETTABLEKS                       R16 R15 K41 ["VerticalAlignment"]
      122 GETIMPORT                        R16 K49 [Enum.SortOrder.LayoutOrder]
      124 SETTABLEKS                       R16 R15 K42 ["SortOrder"]
      126 CALL                             R13 2 1
      127 SETTABLEKS                       R13 R12 K37 ["UIListLayout"]
      129 GETUPVAL                         R14 4
      130 GETTABLEKS                       R13 R14 K9 ["createElement"]
      132 MOVE                             R14 R2
      133 DUPTABLE                         R15 K55 [{"text", "icon", "size", "isDisabled", "variant"}]
      134 GETTABLEKS                       R17 R0 K0 ["controls"]
      136 GETTABLEKS                       R16 R17 K50 ["text"]
      138 SETTABLEKS                       R16 R15 K50 ["text"]
      140 GETTABLEKS                       R18 R0 K0 ["controls"]
      142 GETTABLEKS                       R17 R18 K51 ["icon"]
      144 JUMPIFEQKS                       R17 K56 [""] ; [+6]
      146 GETTABLEKS                       R17 R0 K0 ["controls"]
      148 GETTABLEKS                       R16 R17 K51 ["icon"]
      150 JUMP                             ; [+1]
      151 LOADNIL                          R16
      152 SETTABLEKS                       R16 R15 K51 ["icon"]
      154 GETTABLEKS                       R17 R0 K0 ["controls"]
      156 GETTABLEKS                       R16 R17 K52 ["size"]
      158 SETTABLEKS                       R16 R15 K52 ["size"]
      160 GETTABLEKS                       R17 R0 K0 ["controls"]
      162 GETTABLEKS                       R16 R17 K53 ["isDisabled"]
      164 SETTABLEKS                       R16 R15 K53 ["isDisabled"]
      166 GETTABLEKS                       R17 R0 K0 ["controls"]
      168 GETTABLEKS                       R16 R17 K54 ["variant"]
      170 SETTABLEKS                       R16 R15 K54 ["variant"]
      172 CALL                             R13 2 1
      173 SETTABLEKS                       R13 R12 K38 ["Badge"]
      175 CALL                             R9 3 1
      176 SETTABLEKS                       R9 R8 K18 ["TileMedia"]
      178 GETUPVAL                         R10 4
      179 GETTABLEKS                       R9 R10 K9 ["createElement"]
      181 GETUPVAL                         R11 6
      182 GETTABLEKS                       R10 R11 K57 ["Content"]
      184 NEWTABLE                         R11 0 0
      186 DUPTABLE                         R12 K59 [{"TileHeader"}]
      187 GETUPVAL                         R14 4
      188 GETTABLEKS                       R13 R14 K9 ["createElement"]
      190 GETUPVAL                         R15 6
      191 GETTABLEKS                       R14 R15 K60 ["Header"]
      193 DUPTABLE                         R15 K64 [{"title", "subtitle", "spacing"}]
      194 DUPTABLE                         R16 K68 [{"text", "isLoading", "fontStyle", "numLines"}]
      195 GETTABLEKS                       R17 R3 K33 ["Name"]
      197 SETTABLEKS                       R17 R16 K50 ["text"]
      199 GETTABLEKS                       R18 R3 K33 ["Name"]
      201 JUMPIFEQKNIL                     R18 ; [+2]
      203 LOADB                            R17 0 +1
      204 LOADB                            R17 1
      205 SETTABLEKS                       R17 R16 K65 ["isLoading"]
      207 GETTABLEKS                       R18 R1 K69 ["Typography"]
      209 GETTABLEKS                       R17 R18 K70 ["HeadingSmall"]
      211 SETTABLEKS                       R17 R16 K66 ["fontStyle"]
      213 LOADN                            R17 2
      214 SETTABLEKS                       R17 R16 K67 ["numLines"]
      216 SETTABLEKS                       R16 R15 K61 ["title"]
      218 DUPTABLE                         R16 K72 [{"text", "isLoading", "fontStyle", "colorStyle"}]
      219 GETTABLEKS                       R17 R3 K73 ["PriceText"]
      221 SETTABLEKS                       R17 R16 K50 ["text"]
      223 GETTABLEKS                       R18 R3 K73 ["PriceText"]
      225 JUMPIFEQKNIL                     R18 ; [+2]
      227 LOADB                            R17 0 +1
      228 LOADB                            R17 1
      229 SETTABLEKS                       R17 R16 K65 ["isLoading"]
      231 GETTABLEKS                       R18 R1 K69 ["Typography"]
      233 GETTABLEKS                       R17 R18 K74 ["BodyLarge"]
      235 SETTABLEKS                       R17 R16 K66 ["fontStyle"]
      237 GETTABLEKS                       R19 R1 K75 ["Color"]
      239 GETTABLEKS                       R18 R19 K57 ["Content"]
      241 GETTABLEKS                       R17 R18 K76 ["Muted"]
      243 SETTABLEKS                       R17 R16 K71 ["colorStyle"]
      245 SETTABLEKS                       R16 R15 K62 ["subtitle"]
      247 GETTABLEKS                       R17 R1 K77 ["Gap"]
      249 GETTABLEKS                       R16 R17 K78 ["Small"]
      251 SETTABLEKS                       R16 R15 K63 ["spacing"]
      253 CALL                             R13 2 1
      254 SETTABLEKS                       R13 R12 K58 ["TileHeader"]
      256 CALL                             R9 3 1
      257 SETTABLEKS                       R9 R8 K19 ["TileContent"]
      259 CALL                             R5 3 -1
      260 RETURN                           R5 -1
      261 GETUPVAL                         R6 4
      262 GETTABLEKS                       R5 R6 K9 ["createElement"]
      264 MOVE                             R6 R2
      265 DUPTABLE                         R7 K55 [{"text", "icon", "size", "isDisabled", "variant"}]
      266 GETTABLEKS                       R9 R0 K0 ["controls"]
      268 GETTABLEKS                       R8 R9 K50 ["text"]
      270 SETTABLEKS                       R8 R7 K50 ["text"]
      272 GETTABLEKS                       R10 R0 K0 ["controls"]
      274 GETTABLEKS                       R9 R10 K51 ["icon"]
      276 JUMPIFEQKS                       R9 K56 [""] ; [+6]
      278 GETTABLEKS                       R9 R0 K0 ["controls"]
      280 GETTABLEKS                       R8 R9 K51 ["icon"]
      282 JUMP                             ; [+1]
      283 LOADNIL                          R8
      284 SETTABLEKS                       R8 R7 K51 ["icon"]
      286 GETTABLEKS                       R9 R0 K0 ["controls"]
      288 GETTABLEKS                       R8 R9 K52 ["size"]
      290 SETTABLEKS                       R8 R7 K52 ["size"]
      292 GETTABLEKS                       R9 R0 K0 ["controls"]
      294 GETTABLEKS                       R8 R9 K53 ["isDisabled"]
      296 SETTABLEKS                       R8 R7 K53 ["isDisabled"]
      298 GETTABLEKS                       R9 R0 K0 ["controls"]
      300 GETTABLEKS                       R8 R9 K54 ["variant"]
      302 SETTABLEKS                       R8 R7 K54 ["variant"]
      304 CALL                             R5 2 -1
      305 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["col gap-small auto-xy align-x-center"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K0 ["createElement"]
       11 GETUPVAL                         R5 2
       12 DUPTABLE                         R6 K5 [{"tag", "Text"}]
       13 LOADK                            R7 K6 ["auto-xy text-align-x-center text-caption-small"]
       14 SETTABLEKS                       R7 R6 K1 ["tag"]
       16 SETTABLEKS                       R0 R6 K4 ["Text"]
       18 CALL                             R4 2 1
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K0 ["createElement"]
       22 GETUPVAL                         R6 3
       23 DUPTABLE                         R7 K12 [{"text", "icon", "size", "isDisabled", "variant"}]
       24 GETUPVAL                         R10 4
       25 GETTABLEKS                       R9 R10 K13 ["controls"]
       27 GETTABLEKS                       R8 R9 K7 ["text"]
       29 SETTABLEKS                       R8 R7 K7 ["text"]
       31 GETUPVAL                         R11 4
       32 GETTABLEKS                       R10 R11 K13 ["controls"]
       34 GETTABLEKS                       R9 R10 K8 ["icon"]
       36 JUMPIFEQKS                       R9 K14 [""] ; [+7]
       38 GETUPVAL                         R10 4
       39 GETTABLEKS                       R9 R10 K13 ["controls"]
       41 GETTABLEKS                       R8 R9 K8 ["icon"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R8
       45 SETTABLEKS                       R8 R7 K8 ["icon"]
       47 GETUPVAL                         R10 4
       48 GETTABLEKS                       R9 R10 K13 ["controls"]
       50 GETTABLEKS                       R8 R9 K9 ["size"]
       52 SETTABLEKS                       R8 R7 K9 ["size"]
       54 GETUPVAL                         R10 4
       55 GETTABLEKS                       R9 R10 K13 ["controls"]
       57 GETTABLEKS                       R8 R9 K10 ["isDisabled"]
       59 SETTABLEKS                       R8 R7 K10 ["isDisabled"]
       61 SETTABLEKS                       R0 R7 K11 ["variant"]
       63 CALL                             R5 2 -1
       64 CALL                             R1 -1 -1
       65 RETURN                           R1 -1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R3 K1 ["updateBadgeDesign"]
        4 JUMPIFNOT                        R2 ; [+2]
        5 GETUPVAL                         R1 0
        6 JUMP                             ; [+1]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K2 ["createElement"]
       11 GETUPVAL                         R3 3
       12 DUPTABLE                         R4 K4 [{"tag"}]
       13 LOADK                            R5 K5 ["row wrap auto-xy gap-xxlarge"]
       14 SETTABLEKS                       R5 R4 K3 ["tag"]
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R5 R6 K6 ["map"]
       19 GETUPVAL                         R6 5
       20 NEWCLOSURE                       R7 P0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R0
       26 CALL                             R5 2 -1
       27 CALL                             R2 -1 -1
       28 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["col gap-small auto-xy align-x-center"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K0 ["createElement"]
       11 GETUPVAL                         R5 2
       12 DUPTABLE                         R6 K5 [{"tag", "Text"}]
       13 LOADK                            R7 K6 ["auto-xy text-align-x-center text-caption-small"]
       14 SETTABLEKS                       R7 R6 K1 ["tag"]
       16 SETTABLEKS                       R0 R6 K4 ["Text"]
       18 CALL                             R4 2 1
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K0 ["createElement"]
       22 GETUPVAL                         R6 3
       23 DUPTABLE                         R7 K12 [{"text", "icon", "size", "isDisabled", "variant"}]
       24 GETUPVAL                         R10 4
       25 GETTABLEKS                       R9 R10 K13 ["controls"]
       27 GETTABLEKS                       R8 R9 K7 ["text"]
       29 SETTABLEKS                       R8 R7 K7 ["text"]
       31 GETUPVAL                         R11 4
       32 GETTABLEKS                       R10 R11 K13 ["controls"]
       34 GETTABLEKS                       R9 R10 K8 ["icon"]
       36 JUMPIFEQKS                       R9 K14 [""] ; [+7]
       38 GETUPVAL                         R10 4
       39 GETTABLEKS                       R9 R10 K13 ["controls"]
       41 GETTABLEKS                       R8 R9 K8 ["icon"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R8
       45 SETTABLEKS                       R8 R7 K8 ["icon"]
       47 GETUPVAL                         R10 4
       48 GETTABLEKS                       R9 R10 K13 ["controls"]
       50 GETTABLEKS                       R8 R9 K9 ["size"]
       52 SETTABLEKS                       R8 R7 K9 ["size"]
       54 GETUPVAL                         R10 4
       55 GETTABLEKS                       R9 R10 K13 ["controls"]
       57 GETTABLEKS                       R8 R9 K10 ["isDisabled"]
       59 SETTABLEKS                       R8 R7 K10 ["isDisabled"]
       61 SETTABLEKS                       R0 R7 K11 ["variant"]
       63 CALL                             R5 2 -1
       64 CALL                             R1 -1 -1
       65 RETURN                           R1 -1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R3 K1 ["updateBadgeDesign"]
        4 JUMPIFNOT                        R2 ; [+2]
        5 GETUPVAL                         R1 0
        6 JUMP                             ; [+1]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K2 ["createElement"]
       11 GETUPVAL                         R3 3
       12 DUPTABLE                         R4 K4 [{"tag"}]
       13 LOADK                            R5 K5 ["row wrap auto-xy gap-xxlarge"]
       14 SETTABLEKS                       R5 R4 K3 ["tag"]
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R5 R6 K6 ["map"]
       19 NEWTABLE                         R6 0 2
       21 GETUPVAL                         R8 5
       22 GETTABLEKS                       R7 R8 K7 ["Primary"]
       24 GETUPVAL                         R9 5
       25 GETTABLEKS                       R8 R9 K8 ["Secondary"]
       27 SETLIST                          R6 R7 2 [1]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R0
       35 CALL                             R5 2 -1
       36 CALL                             R2 -1 -1
       37 RETURN                           R2 -1

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
       27 GETTABLEKS                       R7 R1 K13 ["Components"]
       29 GETTABLEKS                       R6 R7 K14 ["Tile"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K10 [require]
       34 GETTABLEKS                       R8 R1 K15 ["Enums"]
       36 GETTABLEKS                       R7 R8 K16 ["MediaType"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K10 [require]
       41 GETTABLEKS                       R9 R1 K15 ["Enums"]
       43 GETTABLEKS                       R8 R9 K17 ["Theme"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K10 [require]
       48 GETTABLEKS                       R10 R1 K13 ["Components"]
       50 GETTABLEKS                       R9 R10 K18 ["View"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K10 [require]
       55 GETTABLEKS                       R11 R1 K13 ["Components"]
       57 GETTABLEKS                       R10 R11 K19 ["Text"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K10 [require]
       62 GETTABLEKS                       R13 R1 K13 ["Components"]
       64 GETTABLEKS                       R12 R13 K20 ["Badge"]
       66 GETTABLEKS                       R11 R12 K20 ["Badge"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K10 [require]
       71 GETTABLEKS                       R14 R1 K13 ["Components"]
       73 GETTABLEKS                       R13 R14 K20 ["Badge"]
       75 GETTABLEKS                       R12 R13 K21 ["Badge_DEPRECATED"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K10 [require]
       80 GETTABLEKS                       R14 R1 K15 ["Enums"]
       82 GETTABLEKS                       R13 R14 K22 ["BadgeVariant"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K10 [require]
       87 GETTABLEKS                       R16 R1 K23 ["Providers"]
       89 GETTABLEKS                       R15 R16 K24 ["Style"]
       91 GETTABLEKS                       R14 R15 K25 ["useTokens"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K10 [require]
       96 GETTABLEKS                       R16 R1 K26 ["Utility"]
       98 GETTABLEKS                       R15 R16 K27 ["Flags"]
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
      115 DUPTABLE                         R17 K37 [{"summary", "stories", "controls"}]
      116 LOADK                            R18 K20 ["Badge"]
      117 SETTABLEKS                       R18 R17 K34 ["summary"]
      119 NEWTABLE                         R18 0 3
      121 DUPTABLE                         R19 K40 [{"name", "story"}]
      122 LOADK                            R20 K41 ["Base"]
      123 SETTABLEKS                       R20 R19 K38 ["name"]
      125 DUPCLOSURE                       R20 K42 [PROTO_3]
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R0
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R7
      136 SETTABLEKS                       R20 R19 K39 ["story"]
      138 DUPTABLE                         R20 K40 [{"name", "story"}]
      139 LOADK                            R21 K43 ["All variants"]
      140 SETTABLEKS                       R21 R20 K38 ["name"]
      142 DUPCLOSURE                       R21 K44 [PROTO_5]
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R9
      150 SETTABLEKS                       R21 R20 K39 ["story"]
      152 DUPTABLE                         R21 K40 [{"name", "story"}]
      153 LOADK                            R22 K45 ["Deprecated variants"]
      154 SETTABLEKS                       R22 R21 K38 ["name"]
      156 DUPCLOSURE                       R22 K46 [PROTO_7]
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R11
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R12
      163 CAPTURE                          VAL R9
      164 SETTABLEKS                       R22 R21 K39 ["story"]
      166 SETLIST                          R18 R19 3 [1]
      168 SETTABLEKS                       R18 R17 K35 ["stories"]
      170 DUPTABLE                         R18 K53 [{"text", "icon", "variant", "onTile", "disableBadgeTruncation", "updateBadgeDesign"}]
      171 LOADK                            R19 K54 ["Label"]
      172 SETTABLEKS                       R19 R18 K47 ["text"]
      174 NEWTABLE                         R19 0 5
      176 LOADK                            R20 K55 ["diamond-simplified"]
      177 LOADK                            R21 K56 ["house"]
      178 LOADK                            R22 K57 ["icons/placeholder/placeholderOn_small"]
      179 LOADK                            R23 K58 ["icons/menu/clothing/limited_on"]
      180 LOADK                            R24 K59 [""]
      181 SETLIST                          R19 R20 5 [1]
      183 SETTABLEKS                       R19 R18 K48 ["icon"]
      185 SETTABLEKS                       R16 R18 K49 ["variant"]
      187 LOADB                            R19 0
      188 SETTABLEKS                       R19 R18 K50 ["onTile"]
      190 GETTABLEKS                       R19 R14 K60 ["FoundationDisableBadgeTruncation"]
      192 SETTABLEKS                       R19 R18 K51 ["disableBadgeTruncation"]
      194 GETTABLEKS                       R19 R14 K61 ["FoundationUpdateBadgeDesign"]
      196 SETTABLEKS                       R19 R18 K52 ["updateBadgeDesign"]
      198 SETTABLEKS                       R18 R17 K36 ["controls"]
      200 RETURN                           R17 1
