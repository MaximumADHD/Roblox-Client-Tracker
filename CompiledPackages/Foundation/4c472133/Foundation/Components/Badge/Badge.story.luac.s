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
        6 NAMECALL                         R0 R0 K3 ["GetProductInfoAsync"]
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
       32 JUMPIFNOT                        R5 ; [+202]
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R5 R5 K6 ["createElement"]
       36 GETUPVAL                         R6 5
       37 GETTABLEKS                       R6 R6 K7 ["Root"]
       39 DUPTABLE                         R7 K12 [{["isContained"] = True, ["FillDirection"], ["Size"]}]
       40 GETIMPORT                        R8 K15 [Enum.FillDirection.Vertical]
       42 SETTABLEKS                       R8 R7 K10 ["FillDirection"]
       44 GETUPVAL                         R8 6
       45 SETTABLEKS                       R8 R7 K11 ["Size"]
       47 DUPTABLE                         R8 K18 [{"TileMedia", "TileContent"}]
       48 GETUPVAL                         R9 3
       49 GETTABLEKS                       R9 R9 K6 ["createElement"]
       51 GETUPVAL                         R10 5
       52 GETTABLEKS                       R10 R10 K19 ["Media"]
       54 DUPTABLE                         R11 K25 [{["id"] = 21070012, ["type"], ["aspectRatio"] = 1, ["background"]}]
       55 GETUPVAL                         R12 7
       56 GETTABLEKS                       R12 R12 K26 ["Asset"]
       58 SETTABLEKS                       R12 R11 K21 ["type"]
       60 DUPTABLE                         R12 K28 [{"image"}]
       61 LOADK                            R14 K29 ["component_assets/itemBG_"]
       62 GETTABLEKS                       R16 R1 K30 ["Config"]
       64 GETTABLEKS                       R16 R16 K31 ["Theme"]
       66 GETTABLEKS                       R16 R16 K32 ["Name"]
       68 GETUPVAL                         R17 8
       69 GETTABLEKS                       R17 R17 K33 ["Dark"]
       71 JUMPIFNOTEQ                      R16 R17 ; [+3]
       73 LOADK                            R15 K34 ["dark"]
       74 JUMP                             ; [+1]
       75 LOADK                            R15 K35 ["light"]
       76 CONCAT                           R13 R14 R15
       77 SETTABLEKS                       R13 R12 K27 ["image"]
       79 SETTABLEKS                       R12 R11 K24 ["background"]
       81 DUPTABLE                         R12 K38 [{"UIListLayout", "Badge"}]
       82 GETUPVAL                         R13 3
       83 GETTABLEKS                       R13 R13 K6 ["createElement"]
       85 LOADK                            R14 K36 ["UIListLayout"]
       86 DUPTABLE                         R15 K42 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
       87 GETIMPORT                        R16 K15 [Enum.FillDirection.Vertical]
       89 SETTABLEKS                       R16 R15 K10 ["FillDirection"]
       91 GETIMPORT                        R16 K44 [Enum.HorizontalAlignment.Left]
       93 SETTABLEKS                       R16 R15 K39 ["HorizontalAlignment"]
       95 GETIMPORT                        R16 K46 [Enum.VerticalAlignment.Bottom]
       97 SETTABLEKS                       R16 R15 K40 ["VerticalAlignment"]
       99 GETIMPORT                        R16 K48 [Enum.SortOrder.LayoutOrder]
      101 SETTABLEKS                       R16 R15 K41 ["SortOrder"]
      103 CALL                             R13 2 1
      104 SETTABLEKS                       R13 R12 K36 ["UIListLayout"]
      106 GETUPVAL                         R13 3
      107 GETTABLEKS                       R13 R13 K6 ["createElement"]
      109 MOVE                             R14 R2
      110 DUPTABLE                         R15 K54 [{"text", "icon", "size", "isDisabled", "variant"}]
      111 GETTABLEKS                       R16 R0 K0 ["controls"]
      113 GETTABLEKS                       R16 R16 K49 ["text"]
      115 SETTABLEKS                       R16 R15 K49 ["text"]
      117 GETTABLEKS                       R17 R0 K0 ["controls"]
      119 GETTABLEKS                       R17 R17 K50 ["icon"]
      121 JUMPIFEQKS                       R17 K55 [""] ; [+6]
      123 GETTABLEKS                       R16 R0 K0 ["controls"]
      125 GETTABLEKS                       R16 R16 K50 ["icon"]
      127 JUMP                             ; [+1]
      128 LOADNIL                          R16
      129 SETTABLEKS                       R16 R15 K50 ["icon"]
      131 GETTABLEKS                       R16 R0 K0 ["controls"]
      133 GETTABLEKS                       R16 R16 K51 ["size"]
      135 SETTABLEKS                       R16 R15 K51 ["size"]
      137 GETTABLEKS                       R16 R0 K0 ["controls"]
      139 GETTABLEKS                       R16 R16 K52 ["isDisabled"]
      141 SETTABLEKS                       R16 R15 K52 ["isDisabled"]
      143 GETTABLEKS                       R16 R0 K0 ["controls"]
      145 GETTABLEKS                       R16 R16 K53 ["variant"]
      147 SETTABLEKS                       R16 R15 K53 ["variant"]
      149 CALL                             R13 2 1
      150 SETTABLEKS                       R13 R12 K37 ["Badge"]
      152 CALL                             R9 3 1
      153 SETTABLEKS                       R9 R8 K16 ["TileMedia"]
      155 GETUPVAL                         R9 3
      156 GETTABLEKS                       R9 R9 K6 ["createElement"]
      158 GETUPVAL                         R10 5
      159 GETTABLEKS                       R10 R10 K56 ["Content"]
      161 NEWTABLE                         R11 0 0
      163 DUPTABLE                         R12 K58 [{"TileHeader"}]
      164 GETUPVAL                         R13 3
      165 GETTABLEKS                       R13 R13 K6 ["createElement"]
      167 GETUPVAL                         R14 5
      168 GETTABLEKS                       R14 R14 K59 ["Header"]
      170 DUPTABLE                         R15 K63 [{"title", "subtitle", "spacing"}]
      171 DUPTABLE                         R16 K68 [{["text"], ["isLoading"], ["fontStyle"], ["numLines"] = 2}]
      172 GETTABLEKS                       R17 R3 K32 ["Name"]
      174 SETTABLEKS                       R17 R16 K49 ["text"]
      176 GETTABLEKS                       R18 R3 K32 ["Name"]
      178 JUMPIFEQKNIL                     R18 ; [+2]
      180 LOADB                            R17 0 +1
      181 LOADB                            R17 1
      182 SETTABLEKS                       R17 R16 K64 ["isLoading"]
      184 GETTABLEKS                       R17 R1 K69 ["Typography"]
      186 GETTABLEKS                       R17 R17 K70 ["HeadingSmall"]
      188 SETTABLEKS                       R17 R16 K65 ["fontStyle"]
      190 SETTABLEKS                       R16 R15 K60 ["title"]
      192 DUPTABLE                         R16 K72 [{"text", "isLoading", "fontStyle", "colorStyle"}]
      193 GETTABLEKS                       R17 R3 K73 ["PriceText"]
      195 SETTABLEKS                       R17 R16 K49 ["text"]
      197 GETTABLEKS                       R18 R3 K73 ["PriceText"]
      199 JUMPIFEQKNIL                     R18 ; [+2]
      201 LOADB                            R17 0 +1
      202 LOADB                            R17 1
      203 SETTABLEKS                       R17 R16 K64 ["isLoading"]
      205 GETTABLEKS                       R17 R1 K69 ["Typography"]
      207 GETTABLEKS                       R17 R17 K74 ["BodyLarge"]
      209 SETTABLEKS                       R17 R16 K65 ["fontStyle"]
      211 GETTABLEKS                       R17 R1 K75 ["Color"]
      213 GETTABLEKS                       R17 R17 K56 ["Content"]
      215 GETTABLEKS                       R17 R17 K76 ["Muted"]
      217 SETTABLEKS                       R17 R16 K71 ["colorStyle"]
      219 SETTABLEKS                       R16 R15 K61 ["subtitle"]
      221 GETTABLEKS                       R16 R1 K77 ["Gap"]
      223 GETTABLEKS                       R16 R16 K78 ["Small"]
      225 SETTABLEKS                       R16 R15 K62 ["spacing"]
      227 CALL                             R13 2 1
      228 SETTABLEKS                       R13 R12 K57 ["TileHeader"]
      230 CALL                             R9 3 1
      231 SETTABLEKS                       R9 R8 K17 ["TileContent"]
      233 CALL                             R5 3 -1
      234 RETURN                           R5 -1
      235 GETUPVAL                         R5 3
      236 GETTABLEKS                       R5 R5 K6 ["createElement"]
      238 MOVE                             R6 R2
      239 DUPTABLE                         R7 K54 [{"text", "icon", "size", "isDisabled", "variant"}]
      240 GETTABLEKS                       R8 R0 K0 ["controls"]
      242 GETTABLEKS                       R8 R8 K49 ["text"]
      244 SETTABLEKS                       R8 R7 K49 ["text"]
      246 GETTABLEKS                       R9 R0 K0 ["controls"]
      248 GETTABLEKS                       R9 R9 K50 ["icon"]
      250 JUMPIFEQKS                       R9 K55 [""] ; [+6]
      252 GETTABLEKS                       R8 R0 K0 ["controls"]
      254 GETTABLEKS                       R8 R8 K50 ["icon"]
      256 JUMP                             ; [+1]
      257 LOADNIL                          R8
      258 SETTABLEKS                       R8 R7 K50 ["icon"]
      260 GETTABLEKS                       R8 R0 K0 ["controls"]
      262 GETTABLEKS                       R8 R8 K51 ["size"]
      264 SETTABLEKS                       R8 R7 K51 ["size"]
      266 GETTABLEKS                       R8 R0 K0 ["controls"]
      268 GETTABLEKS                       R8 R8 K52 ["isDisabled"]
      270 SETTABLEKS                       R8 R7 K52 ["isDisabled"]
      272 GETTABLEKS                       R8 R0 K0 ["controls"]
      274 GETTABLEKS                       R8 R8 K53 ["variant"]
      276 SETTABLEKS                       R8 R7 K53 ["variant"]
      278 CALL                             R5 2 -1
      279 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["tag"] = "col align-x-center gap-small auto-xy"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["createElement"]
        8 GETUPVAL                         R5 2
        9 DUPTABLE                         R6 K6 [{["tag"] = "auto-xy text-caption-small text-align-x-center", ["Text"]}]
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
       12 DUPTABLE                         R4 K5 [{["tag"] = "row wrap gap-xxlarge auto-xy"}]
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
        4 DUPTABLE                         R3 K3 [{["tag"] = "col align-x-center gap-small auto-xy"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["createElement"]
        8 GETUPVAL                         R5 2
        9 DUPTABLE                         R6 K6 [{["tag"] = "auto-xy text-caption-small text-align-x-center", ["Text"]}]
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
       12 DUPTABLE                         R4 K5 [{["tag"] = "row wrap gap-xxlarge auto-xy"}]
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
      108 DUPTABLE                         R16 K35 [{["summary"] = "Badge", ["stories"], ["controls"]}]
      109 NEWTABLE                         R17 0 3
      111 DUPTABLE                         R18 K39 [{["name"] = "Base", ["story"]}]
      112 DUPCLOSURE                       R19 K40 [PROTO_3]
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R6
      122 SETTABLEKS                       R19 R18 K38 ["story"]
      124 DUPTABLE                         R19 K42 [{["name"] = "All variants", ["story"]}]
      125 DUPCLOSURE                       R20 K43 [PROTO_5]
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R11
      133 SETTABLEKS                       R20 R19 K38 ["story"]
      135 DUPTABLE                         R20 K45 [{["name"] = "Deprecated variants", ["story"]}]
      136 DUPCLOSURE                       R21 K46 [PROTO_7]
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R11
      144 SETTABLEKS                       R21 R20 K38 ["story"]
      146 SETLIST                          R17 R18 3 [1]
      148 SETTABLEKS                       R17 R16 K33 ["stories"]
      150 DUPTABLE                         R17 K53 [{["text"] = "Label", ["icon"], ["variant"], ["onTile"] = False}]
      151 NEWTABLE                         R18 0 5
      153 LOADK                            R19 K54 ["diamond-simplified"]
      154 LOADK                            R20 K55 ["house"]
      155 LOADK                            R21 K56 ["icons/placeholder/placeholderOn_small"]
      156 LOADK                            R22 K57 ["icons/menu/clothing/limited_on"]
      157 LOADK                            R23 K58 [""]
      158 SETLIST                          R18 R19 5 [1]
      160 SETTABLEKS                       R18 R17 K49 ["icon"]
      162 SETTABLEKS                       R15 R17 K50 ["variant"]
      164 SETTABLEKS                       R17 R16 K34 ["controls"]
      166 RETURN                           R16 1
