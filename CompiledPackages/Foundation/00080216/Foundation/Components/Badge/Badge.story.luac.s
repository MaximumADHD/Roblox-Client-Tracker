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
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R0 K0 ["controls"]
        4 GETTABLEKS                       R3 R3 K1 ["updateBadgeDesign"]
        6 JUMPIFNOT                        R3 ; [+2]
        7 GETUPVAL                         R2 1
        8 JUMP                             ; [+1]
        9 GETUPVAL                         R2 2
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K2 ["useState"]
       13 NEWTABLE                         R4 0 0
       15 CALL                             R3 1 2
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K3 ["useEffect"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R4
       21 CAPTURE                          UPVAL U4
       22 NEWTABLE                         R7 0 1
       24 LOADK                            R8 K4 [21070012]
       25 SETLIST                          R7 R8 1 [1]
       27 CALL                             R5 2 0
       28 GETTABLEKS                       R5 R0 K0 ["controls"]
       30 GETTABLEKS                       R5 R5 K5 ["onTile"]
       32 JUMPIFNOT                        R5 ; [+214]
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R5 R5 K6 ["createElement"]
       36 GETUPVAL                         R6 5
       37 GETTABLEKS                       R6 R6 K7 ["Root"]
       39 DUPTABLE                         R7 K11 [{"isContained", "FillDirection", "Size"}]
       40 LOADB                            R8 1
       41 SETTABLEKS                       R8 R7 K8 ["isContained"]
       43 GETIMPORT                        R8 K14 [Enum.FillDirection.Vertical]
       45 SETTABLEKS                       R8 R7 K9 ["FillDirection"]
       47 GETUPVAL                         R8 6
       48 SETTABLEKS                       R8 R7 K10 ["Size"]
       50 DUPTABLE                         R8 K17 [{"TileMedia", "TileContent"}]
       51 GETUPVAL                         R9 3
       52 GETTABLEKS                       R9 R9 K6 ["createElement"]
       54 GETUPVAL                         R10 5
       55 GETTABLEKS                       R10 R10 K18 ["Media"]
       57 DUPTABLE                         R11 K23 [{"id", "type", "aspectRatio", "background"}]
       58 LOADK                            R12 K4 [21070012]
       59 SETTABLEKS                       R12 R11 K19 ["id"]
       61 GETUPVAL                         R12 7
       62 GETTABLEKS                       R12 R12 K24 ["Asset"]
       64 SETTABLEKS                       R12 R11 K20 ["type"]
       66 LOADN                            R12 1
       67 SETTABLEKS                       R12 R11 K21 ["aspectRatio"]
       69 DUPTABLE                         R12 K26 [{"image"}]
       70 LOADK                            R14 K27 ["component_assets/itemBG_"]
       71 GETTABLEKS                       R16 R1 K28 ["Config"]
       73 GETTABLEKS                       R16 R16 K29 ["Theme"]
       75 GETTABLEKS                       R16 R16 K30 ["Name"]
       77 GETUPVAL                         R17 8
       78 GETTABLEKS                       R17 R17 K31 ["Dark"]
       80 JUMPIFNOTEQ                      R16 R17 ; [+3]
       82 LOADK                            R15 K32 ["dark"]
       83 JUMP                             ; [+1]
       84 LOADK                            R15 K33 ["light"]
       85 CONCAT                           R13 R14 R15
       86 SETTABLEKS                       R13 R12 K25 ["image"]
       88 SETTABLEKS                       R12 R11 K22 ["background"]
       90 DUPTABLE                         R12 K36 [{"UIListLayout", "Badge"}]
       91 GETUPVAL                         R13 3
       92 GETTABLEKS                       R13 R13 K6 ["createElement"]
       94 LOADK                            R14 K34 ["UIListLayout"]
       95 DUPTABLE                         R15 K40 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
       96 GETIMPORT                        R16 K14 [Enum.FillDirection.Vertical]
       98 SETTABLEKS                       R16 R15 K9 ["FillDirection"]
      100 GETIMPORT                        R16 K42 [Enum.HorizontalAlignment.Left]
      102 SETTABLEKS                       R16 R15 K37 ["HorizontalAlignment"]
      104 GETIMPORT                        R16 K44 [Enum.VerticalAlignment.Bottom]
      106 SETTABLEKS                       R16 R15 K38 ["VerticalAlignment"]
      108 GETIMPORT                        R16 K46 [Enum.SortOrder.LayoutOrder]
      110 SETTABLEKS                       R16 R15 K39 ["SortOrder"]
      112 CALL                             R13 2 1
      113 SETTABLEKS                       R13 R12 K34 ["UIListLayout"]
      115 GETUPVAL                         R13 3
      116 GETTABLEKS                       R13 R13 K6 ["createElement"]
      118 MOVE                             R14 R2
      119 DUPTABLE                         R15 K52 [{"text", "icon", "size", "isDisabled", "variant"}]
      120 GETTABLEKS                       R16 R0 K0 ["controls"]
      122 GETTABLEKS                       R16 R16 K47 ["text"]
      124 SETTABLEKS                       R16 R15 K47 ["text"]
      126 GETTABLEKS                       R17 R0 K0 ["controls"]
      128 GETTABLEKS                       R17 R17 K48 ["icon"]
      130 JUMPIFEQKS                       R17 K53 [""] ; [+6]
      132 GETTABLEKS                       R16 R0 K0 ["controls"]
      134 GETTABLEKS                       R16 R16 K48 ["icon"]
      136 JUMP                             ; [+1]
      137 LOADNIL                          R16
      138 SETTABLEKS                       R16 R15 K48 ["icon"]
      140 GETTABLEKS                       R16 R0 K0 ["controls"]
      142 GETTABLEKS                       R16 R16 K49 ["size"]
      144 SETTABLEKS                       R16 R15 K49 ["size"]
      146 GETTABLEKS                       R16 R0 K0 ["controls"]
      148 GETTABLEKS                       R16 R16 K50 ["isDisabled"]
      150 SETTABLEKS                       R16 R15 K50 ["isDisabled"]
      152 GETTABLEKS                       R16 R0 K0 ["controls"]
      154 GETTABLEKS                       R16 R16 K51 ["variant"]
      156 SETTABLEKS                       R16 R15 K51 ["variant"]
      158 CALL                             R13 2 1
      159 SETTABLEKS                       R13 R12 K35 ["Badge"]
      161 CALL                             R9 3 1
      162 SETTABLEKS                       R9 R8 K15 ["TileMedia"]
      164 GETUPVAL                         R9 3
      165 GETTABLEKS                       R9 R9 K6 ["createElement"]
      167 GETUPVAL                         R10 5
      168 GETTABLEKS                       R10 R10 K54 ["Content"]
      170 NEWTABLE                         R11 0 0
      172 DUPTABLE                         R12 K56 [{"TileHeader"}]
      173 GETUPVAL                         R13 3
      174 GETTABLEKS                       R13 R13 K6 ["createElement"]
      176 GETUPVAL                         R14 5
      177 GETTABLEKS                       R14 R14 K57 ["Header"]
      179 DUPTABLE                         R15 K61 [{"title", "subtitle", "spacing"}]
      180 DUPTABLE                         R16 K65 [{"text", "isLoading", "fontStyle", "numLines"}]
      181 GETTABLEKS                       R17 R3 K30 ["Name"]
      183 SETTABLEKS                       R17 R16 K47 ["text"]
      185 GETTABLEKS                       R18 R3 K30 ["Name"]
      187 JUMPIFEQKNIL                     R18 ; [+2]
      189 LOADB                            R17 0 +1
      190 LOADB                            R17 1
      191 SETTABLEKS                       R17 R16 K62 ["isLoading"]
      193 GETTABLEKS                       R17 R1 K66 ["Typography"]
      195 GETTABLEKS                       R17 R17 K67 ["HeadingSmall"]
      197 SETTABLEKS                       R17 R16 K63 ["fontStyle"]
      199 LOADN                            R17 2
      200 SETTABLEKS                       R17 R16 K64 ["numLines"]
      202 SETTABLEKS                       R16 R15 K58 ["title"]
      204 DUPTABLE                         R16 K69 [{"text", "isLoading", "fontStyle", "colorStyle"}]
      205 GETTABLEKS                       R17 R3 K70 ["PriceText"]
      207 SETTABLEKS                       R17 R16 K47 ["text"]
      209 GETTABLEKS                       R18 R3 K70 ["PriceText"]
      211 JUMPIFEQKNIL                     R18 ; [+2]
      213 LOADB                            R17 0 +1
      214 LOADB                            R17 1
      215 SETTABLEKS                       R17 R16 K62 ["isLoading"]
      217 GETTABLEKS                       R17 R1 K66 ["Typography"]
      219 GETTABLEKS                       R17 R17 K71 ["BodyLarge"]
      221 SETTABLEKS                       R17 R16 K63 ["fontStyle"]
      223 GETTABLEKS                       R17 R1 K72 ["Color"]
      225 GETTABLEKS                       R17 R17 K54 ["Content"]
      227 GETTABLEKS                       R17 R17 K73 ["Muted"]
      229 SETTABLEKS                       R17 R16 K68 ["colorStyle"]
      231 SETTABLEKS                       R16 R15 K59 ["subtitle"]
      233 GETTABLEKS                       R16 R1 K74 ["Gap"]
      235 GETTABLEKS                       R16 R16 K75 ["Small"]
      237 SETTABLEKS                       R16 R15 K60 ["spacing"]
      239 CALL                             R13 2 1
      240 SETTABLEKS                       R13 R12 K55 ["TileHeader"]
      242 CALL                             R9 3 1
      243 SETTABLEKS                       R9 R8 K16 ["TileContent"]
      245 CALL                             R5 3 -1
      246 RETURN                           R5 -1
      247 GETUPVAL                         R5 3
      248 GETTABLEKS                       R5 R5 K6 ["createElement"]
      250 MOVE                             R6 R2
      251 DUPTABLE                         R7 K52 [{"text", "icon", "size", "isDisabled", "variant"}]
      252 GETTABLEKS                       R8 R0 K0 ["controls"]
      254 GETTABLEKS                       R8 R8 K47 ["text"]
      256 SETTABLEKS                       R8 R7 K47 ["text"]
      258 GETTABLEKS                       R9 R0 K0 ["controls"]
      260 GETTABLEKS                       R9 R9 K48 ["icon"]
      262 JUMPIFEQKS                       R9 K53 [""] ; [+6]
      264 GETTABLEKS                       R8 R0 K0 ["controls"]
      266 GETTABLEKS                       R8 R8 K48 ["icon"]
      268 JUMP                             ; [+1]
      269 LOADNIL                          R8
      270 SETTABLEKS                       R8 R7 K48 ["icon"]
      272 GETTABLEKS                       R8 R0 K0 ["controls"]
      274 GETTABLEKS                       R8 R8 K49 ["size"]
      276 SETTABLEKS                       R8 R7 K49 ["size"]
      278 GETTABLEKS                       R8 R0 K0 ["controls"]
      280 GETTABLEKS                       R8 R8 K50 ["isDisabled"]
      282 SETTABLEKS                       R8 R7 K50 ["isDisabled"]
      284 GETTABLEKS                       R8 R0 K0 ["controls"]
      286 GETTABLEKS                       R8 R8 K51 ["variant"]
      288 SETTABLEKS                       R8 R7 K51 ["variant"]
      290 CALL                             R5 2 -1
      291 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["col align-x-center gap-small auto-xy"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["createElement"]
       11 GETUPVAL                         R5 2
       12 DUPTABLE                         R6 K5 [{"tag", "Text"}]
       13 LOADK                            R7 K6 ["auto-xy text-caption-small text-align-x-center"]
       14 SETTABLEKS                       R7 R6 K1 ["tag"]
       16 SETTABLEKS                       R0 R6 K4 ["Text"]
       18 CALL                             R4 2 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K0 ["createElement"]
       22 GETUPVAL                         R6 3
       23 DUPTABLE                         R7 K12 [{"text", "icon", "size", "isDisabled", "variant"}]
       24 GETUPVAL                         R8 4
       25 GETTABLEKS                       R8 R8 K13 ["controls"]
       27 GETTABLEKS                       R8 R8 K7 ["text"]
       29 SETTABLEKS                       R8 R7 K7 ["text"]
       31 GETUPVAL                         R9 4
       32 GETTABLEKS                       R9 R9 K13 ["controls"]
       34 GETTABLEKS                       R9 R9 K8 ["icon"]
       36 JUMPIFEQKS                       R9 K14 [""] ; [+7]
       38 GETUPVAL                         R8 4
       39 GETTABLEKS                       R8 R8 K13 ["controls"]
       41 GETTABLEKS                       R8 R8 K8 ["icon"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R8
       45 SETTABLEKS                       R8 R7 K8 ["icon"]
       47 GETUPVAL                         R8 4
       48 GETTABLEKS                       R8 R8 K13 ["controls"]
       50 GETTABLEKS                       R8 R8 K9 ["size"]
       52 SETTABLEKS                       R8 R7 K9 ["size"]
       54 GETUPVAL                         R8 4
       55 GETTABLEKS                       R8 R8 K13 ["controls"]
       57 GETTABLEKS                       R8 R8 K10 ["isDisabled"]
       59 SETTABLEKS                       R8 R7 K10 ["isDisabled"]
       61 SETTABLEKS                       R0 R7 K11 ["variant"]
       63 CALL                             R5 2 -1
       64 CALL                             R1 -1 -1
       65 RETURN                           R1 -1

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
       12 DUPTABLE                         R4 K4 [{"tag"}]
       13 LOADK                            R5 K5 ["row wrap gap-xxlarge auto-xy"]
       14 SETTABLEKS                       R5 R4 K3 ["tag"]
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K6 ["map"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["col align-x-center gap-small auto-xy"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["createElement"]
       11 GETUPVAL                         R5 2
       12 DUPTABLE                         R6 K5 [{"tag", "Text"}]
       13 LOADK                            R7 K6 ["auto-xy text-caption-small text-align-x-center"]
       14 SETTABLEKS                       R7 R6 K1 ["tag"]
       16 SETTABLEKS                       R0 R6 K4 ["Text"]
       18 CALL                             R4 2 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K0 ["createElement"]
       22 GETUPVAL                         R6 3
       23 DUPTABLE                         R7 K12 [{"text", "icon", "size", "isDisabled", "variant"}]
       24 GETUPVAL                         R8 4
       25 GETTABLEKS                       R8 R8 K13 ["controls"]
       27 GETTABLEKS                       R8 R8 K7 ["text"]
       29 SETTABLEKS                       R8 R7 K7 ["text"]
       31 GETUPVAL                         R9 4
       32 GETTABLEKS                       R9 R9 K13 ["controls"]
       34 GETTABLEKS                       R9 R9 K8 ["icon"]
       36 JUMPIFEQKS                       R9 K14 [""] ; [+7]
       38 GETUPVAL                         R8 4
       39 GETTABLEKS                       R8 R8 K13 ["controls"]
       41 GETTABLEKS                       R8 R8 K8 ["icon"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R8
       45 SETTABLEKS                       R8 R7 K8 ["icon"]
       47 GETUPVAL                         R8 4
       48 GETTABLEKS                       R8 R8 K13 ["controls"]
       50 GETTABLEKS                       R8 R8 K9 ["size"]
       52 SETTABLEKS                       R8 R7 K9 ["size"]
       54 GETUPVAL                         R8 4
       55 GETTABLEKS                       R8 R8 K13 ["controls"]
       57 GETTABLEKS                       R8 R8 K10 ["isDisabled"]
       59 SETTABLEKS                       R8 R7 K10 ["isDisabled"]
       61 SETTABLEKS                       R0 R7 K11 ["variant"]
       63 CALL                             R5 2 -1
       64 CALL                             R1 -1 -1
       65 RETURN                           R1 -1

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
       12 DUPTABLE                         R4 K4 [{"tag"}]
       13 LOADK                            R5 K5 ["row wrap gap-xxlarge auto-xy"]
       14 SETTABLEKS                       R5 R4 K3 ["tag"]
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K6 ["map"]
       19 NEWTABLE                         R6 0 2
       21 GETUPVAL                         R7 5
       22 GETTABLEKS                       R7 R7 K7 ["Primary"]
       24 GETUPVAL                         R8 5
       25 GETTABLEKS                       R8 R8 K8 ["Secondary"]
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
       17 GETTABLEKS                       R4 R2 K11 ["Dash"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["React"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R1 K13 ["Enums"]
       29 GETTABLEKS                       R6 R6 K14 ["MediaType"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K10 [require]
       34 GETTABLEKS                       R7 R1 K13 ["Enums"]
       36 GETTABLEKS                       R7 R7 K15 ["Theme"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K10 [require]
       41 GETTABLEKS                       R8 R1 K16 ["Components"]
       43 GETTABLEKS                       R8 R8 K17 ["Tile"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K10 [require]
       48 GETTABLEKS                       R9 R1 K13 ["Enums"]
       50 GETTABLEKS                       R9 R9 K18 ["BadgeVariant"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K10 [require]
       55 GETTABLEKS                       R10 R1 K16 ["Components"]
       57 GETTABLEKS                       R10 R10 K19 ["Badge"]
       59 GETTABLEKS                       R10 R10 K20 ["Badge_DEPRECATED"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K10 [require]
       64 GETTABLEKS                       R11 R1 K16 ["Components"]
       66 GETTABLEKS                       R11 R11 K19 ["Badge"]
       68 GETTABLEKS                       R11 R11 K19 ["Badge"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K10 [require]
       73 GETTABLEKS                       R12 R1 K16 ["Components"]
       75 GETTABLEKS                       R12 R12 K21 ["Text"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K10 [require]
       80 GETTABLEKS                       R13 R1 K16 ["Components"]
       82 GETTABLEKS                       R13 R13 K22 ["View"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K10 [require]
       87 GETTABLEKS                       R14 R1 K23 ["Providers"]
       89 GETTABLEKS                       R14 R14 K24 ["Style"]
       91 GETTABLEKS                       R14 R14 K25 ["useTokens"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K28 [UDim2.fromOffset]
       96 LOADN                            R15 150
       97 LOADN                            R16 240
       98 CALL                             R14 2 1
       99 GETTABLEKS                       R15 R3 K29 ["filter"]
      101 GETTABLEKS                       R16 R3 K30 ["values"]
      103 MOVE                             R17 R8
      104 CALL                             R16 1 1
      105 DUPCLOSURE                       R17 K31 [PROTO_0]
      106 CAPTURE                          VAL R8
      107 CALL                             R15 2 1
      108 DUPTABLE                         R16 K35 [{"summary", "stories", "controls"}]
      109 LOADK                            R17 K19 ["Badge"]
      110 SETTABLEKS                       R17 R16 K32 ["summary"]
      112 NEWTABLE                         R17 0 3
      114 DUPTABLE                         R18 K38 [{"name", "story"}]
      115 LOADK                            R19 K39 ["Base"]
      116 SETTABLEKS                       R19 R18 K36 ["name"]
      118 DUPCLOSURE                       R19 K40 [PROTO_3]
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R6
      128 SETTABLEKS                       R19 R18 K37 ["story"]
      130 DUPTABLE                         R19 K38 [{"name", "story"}]
      131 LOADK                            R20 K41 ["All variants"]
      132 SETTABLEKS                       R20 R19 K36 ["name"]
      134 DUPCLOSURE                       R20 K42 [PROTO_5]
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R11
      142 SETTABLEKS                       R20 R19 K37 ["story"]
      144 DUPTABLE                         R20 K38 [{"name", "story"}]
      145 LOADK                            R21 K43 ["Deprecated variants"]
      146 SETTABLEKS                       R21 R20 K36 ["name"]
      148 DUPCLOSURE                       R21 K44 [PROTO_7]
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R11
      156 SETTABLEKS                       R21 R20 K37 ["story"]
      158 SETLIST                          R17 R18 3 [1]
      160 SETTABLEKS                       R17 R16 K33 ["stories"]
      162 DUPTABLE                         R17 K49 [{"text", "icon", "variant", "onTile"}]
      163 LOADK                            R18 K50 ["Label"]
      164 SETTABLEKS                       R18 R17 K45 ["text"]
      166 NEWTABLE                         R18 0 5
      168 LOADK                            R19 K51 ["diamond-simplified"]
      169 LOADK                            R20 K52 ["house"]
      170 LOADK                            R21 K53 ["icons/placeholder/placeholderOn_small"]
      171 LOADK                            R22 K54 ["icons/menu/clothing/limited_on"]
      172 LOADK                            R23 K55 [""]
      173 SETLIST                          R18 R19 5 [1]
      175 SETTABLEKS                       R18 R17 K46 ["icon"]
      177 SETTABLEKS                       R15 R17 K47 ["variant"]
      179 LOADB                            R18 0
      180 SETTABLEKS                       R18 R17 K48 ["onTile"]
      182 SETTABLEKS                       R17 R16 K34 ["controls"]
      184 RETURN                           R16 1
