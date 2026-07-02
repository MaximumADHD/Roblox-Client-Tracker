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
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 NEWTABLE                         R3 0 0
        7 CALL                             R2 1 2
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K1 ["useEffect"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          UPVAL U2
       14 NEWTABLE                         R6 0 1
       16 LOADK                            R7 K2 [21070012]
       17 SETLIST                          R6 R7 1 [1]
       19 CALL                             R4 2 0
       20 GETTABLEKS                       R4 R0 K3 ["controls"]
       22 GETTABLEKS                       R4 R4 K4 ["onTile"]
       24 JUMPIFNOT                        R4 ; [+217]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K5 ["createElement"]
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R5 R5 K6 ["Root"]
       31 DUPTABLE                         R6 K11 [{["isContained"] = True, ["FillDirection"], ["Size"]}]
       32 GETIMPORT                        R7 K14 [Enum.FillDirection.Vertical]
       34 SETTABLEKS                       R7 R6 K9 ["FillDirection"]
       36 GETUPVAL                         R7 4
       37 SETTABLEKS                       R7 R6 K10 ["Size"]
       39 DUPTABLE                         R7 K17 [{"TileMedia", "TileContent"}]
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R8 R8 K5 ["createElement"]
       43 GETUPVAL                         R9 3
       44 GETTABLEKS                       R9 R9 K18 ["Media"]
       46 DUPTABLE                         R10 K24 [{["id"] = 21070012, ["type"], ["aspectRatio"] = 1, ["background"]}]
       47 GETUPVAL                         R11 5
       48 GETTABLEKS                       R11 R11 K25 ["Asset"]
       50 SETTABLEKS                       R11 R10 K20 ["type"]
       52 DUPTABLE                         R11 K27 [{"image"}]
       53 LOADK                            R13 K28 ["component_assets/itemBG_"]
       54 GETTABLEKS                       R15 R1 K29 ["Config"]
       56 GETTABLEKS                       R15 R15 K30 ["Theme"]
       58 GETTABLEKS                       R15 R15 K31 ["Name"]
       60 GETUPVAL                         R16 6
       61 GETTABLEKS                       R16 R16 K32 ["Dark"]
       63 JUMPIFNOTEQ                      R15 R16 ; [+3]
       65 LOADK                            R14 K33 ["dark"]
       66 JUMP                             ; [+1]
       67 LOADK                            R14 K34 ["light"]
       68 CONCAT                           R12 R13 R14
       69 SETTABLEKS                       R12 R11 K26 ["image"]
       71 SETTABLEKS                       R11 R10 K23 ["background"]
       73 DUPTABLE                         R11 K37 [{"UIListLayout", "Badge"}]
       74 GETUPVAL                         R12 1
       75 GETTABLEKS                       R12 R12 K5 ["createElement"]
       77 LOADK                            R13 K35 ["UIListLayout"]
       78 DUPTABLE                         R14 K41 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
       79 GETIMPORT                        R15 K14 [Enum.FillDirection.Vertical]
       81 SETTABLEKS                       R15 R14 K9 ["FillDirection"]
       83 GETIMPORT                        R15 K43 [Enum.HorizontalAlignment.Left]
       85 SETTABLEKS                       R15 R14 K38 ["HorizontalAlignment"]
       87 GETIMPORT                        R15 K45 [Enum.VerticalAlignment.Bottom]
       89 SETTABLEKS                       R15 R14 K39 ["VerticalAlignment"]
       91 GETIMPORT                        R15 K47 [Enum.SortOrder.LayoutOrder]
       93 SETTABLEKS                       R15 R14 K40 ["SortOrder"]
       95 CALL                             R12 2 1
       96 SETTABLEKS                       R12 R11 K35 ["UIListLayout"]
       98 GETUPVAL                         R12 1
       99 GETTABLEKS                       R12 R12 K5 ["createElement"]
      101 GETUPVAL                         R13 7
      102 DUPTABLE                         R14 K54 [{"text", "icon", "size", "isDisabled", "variant", "shape"}]
      103 GETTABLEKS                       R15 R0 K3 ["controls"]
      105 GETTABLEKS                       R15 R15 K48 ["text"]
      107 SETTABLEKS                       R15 R14 K48 ["text"]
      109 GETTABLEKS                       R16 R0 K3 ["controls"]
      111 GETTABLEKS                       R16 R16 K49 ["icon"]
      113 JUMPIFEQKS                       R16 K55 [""] ; [+15]
      115 DUPTABLE                         R15 K58 [{"name", "position"}]
      116 GETTABLEKS                       R16 R0 K3 ["controls"]
      118 GETTABLEKS                       R16 R16 K49 ["icon"]
      120 SETTABLEKS                       R16 R15 K56 ["name"]
      122 GETTABLEKS                       R16 R0 K3 ["controls"]
      124 GETTABLEKS                       R16 R16 K59 ["iconPosition"]
      126 SETTABLEKS                       R16 R15 K57 ["position"]
      128 JUMP                             ; [+1]
      129 LOADNIL                          R15
      130 SETTABLEKS                       R15 R14 K49 ["icon"]
      132 GETTABLEKS                       R15 R0 K3 ["controls"]
      134 GETTABLEKS                       R15 R15 K50 ["size"]
      136 SETTABLEKS                       R15 R14 K50 ["size"]
      138 GETTABLEKS                       R15 R0 K3 ["controls"]
      140 GETTABLEKS                       R15 R15 K51 ["isDisabled"]
      142 SETTABLEKS                       R15 R14 K51 ["isDisabled"]
      144 GETTABLEKS                       R15 R0 K3 ["controls"]
      146 GETTABLEKS                       R15 R15 K52 ["variant"]
      148 SETTABLEKS                       R15 R14 K52 ["variant"]
      150 GETTABLEKS                       R15 R0 K3 ["controls"]
      152 GETTABLEKS                       R15 R15 K53 ["shape"]
      154 SETTABLEKS                       R15 R14 K53 ["shape"]
      156 CALL                             R12 2 1
      157 SETTABLEKS                       R12 R11 K36 ["Badge"]
      159 CALL                             R8 3 1
      160 SETTABLEKS                       R8 R7 K15 ["TileMedia"]
      162 GETUPVAL                         R8 1
      163 GETTABLEKS                       R8 R8 K5 ["createElement"]
      165 GETUPVAL                         R9 3
      166 GETTABLEKS                       R9 R9 K60 ["Content"]
      168 NEWTABLE                         R10 0 0
      170 DUPTABLE                         R11 K62 [{"TileHeader"}]
      171 GETUPVAL                         R12 1
      172 GETTABLEKS                       R12 R12 K5 ["createElement"]
      174 GETUPVAL                         R13 3
      175 GETTABLEKS                       R13 R13 K63 ["Header"]
      177 DUPTABLE                         R14 K67 [{"title", "subtitle", "spacing"}]
      178 DUPTABLE                         R15 K72 [{["text"], ["isLoading"], ["fontStyle"], ["numLines"] = 2}]
      179 GETTABLEKS                       R16 R2 K31 ["Name"]
      181 SETTABLEKS                       R16 R15 K48 ["text"]
      183 GETTABLEKS                       R17 R2 K31 ["Name"]
      185 JUMPIFEQKNIL                     R17 ; [+2]
      187 LOADB                            R16 0 +1
      188 LOADB                            R16 1
      189 SETTABLEKS                       R16 R15 K68 ["isLoading"]
      191 GETTABLEKS                       R16 R1 K73 ["Typography"]
      193 GETTABLEKS                       R16 R16 K74 ["HeadingSmall"]
      195 SETTABLEKS                       R16 R15 K69 ["fontStyle"]
      197 SETTABLEKS                       R15 R14 K64 ["title"]
      199 DUPTABLE                         R15 K76 [{"text", "isLoading", "fontStyle", "colorStyle"}]
      200 GETTABLEKS                       R16 R2 K77 ["PriceText"]
      202 SETTABLEKS                       R16 R15 K48 ["text"]
      204 GETTABLEKS                       R17 R2 K77 ["PriceText"]
      206 JUMPIFEQKNIL                     R17 ; [+2]
      208 LOADB                            R16 0 +1
      209 LOADB                            R16 1
      210 SETTABLEKS                       R16 R15 K68 ["isLoading"]
      212 GETTABLEKS                       R16 R1 K73 ["Typography"]
      214 GETTABLEKS                       R16 R16 K78 ["BodyLarge"]
      216 SETTABLEKS                       R16 R15 K69 ["fontStyle"]
      218 GETTABLEKS                       R16 R1 K79 ["Color"]
      220 GETTABLEKS                       R16 R16 K60 ["Content"]
      222 GETTABLEKS                       R16 R16 K80 ["Muted"]
      224 SETTABLEKS                       R16 R15 K75 ["colorStyle"]
      226 SETTABLEKS                       R15 R14 K65 ["subtitle"]
      228 GETTABLEKS                       R15 R1 K81 ["Gap"]
      230 GETTABLEKS                       R15 R15 K82 ["Small"]
      232 SETTABLEKS                       R15 R14 K66 ["spacing"]
      234 CALL                             R12 2 1
      235 SETTABLEKS                       R12 R11 K61 ["TileHeader"]
      237 CALL                             R8 3 1
      238 SETTABLEKS                       R8 R7 K16 ["TileContent"]
      240 CALL                             R4 3 -1
      241 RETURN                           R4 -1
      242 GETUPVAL                         R4 1
      243 GETTABLEKS                       R4 R4 K5 ["createElement"]
      245 GETUPVAL                         R5 7
      246 DUPTABLE                         R6 K54 [{"text", "icon", "size", "isDisabled", "variant", "shape"}]
      247 GETTABLEKS                       R7 R0 K3 ["controls"]
      249 GETTABLEKS                       R7 R7 K48 ["text"]
      251 SETTABLEKS                       R7 R6 K48 ["text"]
      253 GETTABLEKS                       R8 R0 K3 ["controls"]
      255 GETTABLEKS                       R8 R8 K49 ["icon"]
      257 JUMPIFEQKS                       R8 K55 [""] ; [+15]
      259 DUPTABLE                         R7 K58 [{"name", "position"}]
      260 GETTABLEKS                       R8 R0 K3 ["controls"]
      262 GETTABLEKS                       R8 R8 K49 ["icon"]
      264 SETTABLEKS                       R8 R7 K56 ["name"]
      266 GETTABLEKS                       R8 R0 K3 ["controls"]
      268 GETTABLEKS                       R8 R8 K59 ["iconPosition"]
      270 SETTABLEKS                       R8 R7 K57 ["position"]
      272 JUMP                             ; [+1]
      273 LOADNIL                          R7
      274 SETTABLEKS                       R7 R6 K49 ["icon"]
      276 GETTABLEKS                       R7 R0 K3 ["controls"]
      278 GETTABLEKS                       R7 R7 K50 ["size"]
      280 SETTABLEKS                       R7 R6 K50 ["size"]
      282 GETTABLEKS                       R7 R0 K3 ["controls"]
      284 GETTABLEKS                       R7 R7 K51 ["isDisabled"]
      286 SETTABLEKS                       R7 R6 K51 ["isDisabled"]
      288 GETTABLEKS                       R7 R0 K3 ["controls"]
      290 GETTABLEKS                       R7 R7 K52 ["variant"]
      292 SETTABLEKS                       R7 R6 K52 ["variant"]
      294 GETTABLEKS                       R7 R0 K3 ["controls"]
      296 GETTABLEKS                       R7 R7 K53 ["shape"]
      298 SETTABLEKS                       R7 R6 K53 ["shape"]
      300 CALL                             R4 2 -1
      301 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{["tag"] = "col align-x-center gap-small auto-xy", ["LayoutOrder"]}]
        5 SETTABLEKS                       R1 R4 K3 ["LayoutOrder"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["createElement"]
       10 GETUPVAL                         R6 2
       11 DUPTABLE                         R7 K8 [{["tag"] = "auto-xy text-caption-small text-align-x-center", ["Text"], ["LayoutOrder"] = 1}]
       12 SETTABLEKS                       R0 R7 K6 ["Text"]
       14 CALL                             R5 2 1
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K0 ["createElement"]
       18 GETUPVAL                         R7 3
       19 DUPTABLE                         R8 K16 [{["text"], ["icon"], ["size"], ["isDisabled"], ["variant"], ["shape"], ["LayoutOrder"] = 2}]
       20 GETUPVAL                         R9 4
       21 GETTABLEKS                       R9 R9 K17 ["controls"]
       23 GETTABLEKS                       R9 R9 K9 ["text"]
       25 SETTABLEKS                       R9 R8 K9 ["text"]
       27 GETUPVAL                         R10 4
       28 GETTABLEKS                       R10 R10 K17 ["controls"]
       30 GETTABLEKS                       R10 R10 K10 ["icon"]
       32 JUMPIFEQKS                       R10 K18 [""] ; [+17]
       34 DUPTABLE                         R9 K21 [{"name", "position"}]
       35 GETUPVAL                         R10 4
       36 GETTABLEKS                       R10 R10 K17 ["controls"]
       38 GETTABLEKS                       R10 R10 K10 ["icon"]
       40 SETTABLEKS                       R10 R9 K19 ["name"]
       42 GETUPVAL                         R10 4
       43 GETTABLEKS                       R10 R10 K17 ["controls"]
       45 GETTABLEKS                       R10 R10 K22 ["iconPosition"]
       47 SETTABLEKS                       R10 R9 K20 ["position"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R9
       51 SETTABLEKS                       R9 R8 K10 ["icon"]
       53 GETUPVAL                         R9 4
       54 GETTABLEKS                       R9 R9 K17 ["controls"]
       56 GETTABLEKS                       R9 R9 K11 ["size"]
       58 SETTABLEKS                       R9 R8 K11 ["size"]
       60 GETUPVAL                         R9 4
       61 GETTABLEKS                       R9 R9 K17 ["controls"]
       63 GETTABLEKS                       R9 R9 K12 ["isDisabled"]
       65 SETTABLEKS                       R9 R8 K12 ["isDisabled"]
       67 SETTABLEKS                       R0 R8 K13 ["variant"]
       69 GETUPVAL                         R9 4
       70 GETTABLEKS                       R9 R9 K17 ["controls"]
       72 GETTABLEKS                       R9 R9 K14 ["shape"]
       74 SETTABLEKS                       R9 R8 K14 ["shape"]
       76 CALL                             R6 2 -1
       77 CALL                             R2 -1 -1
       78 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["tag"] = "row wrap gap-xxlarge auto-xy"}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K4 ["map"]
        8 GETUPVAL                         R5 3
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          VAL R0
       15 CALL                             R4 2 -1
       16 CALL                             R1 -1 -1
       17 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{["tag"] = "col align-x-center gap-small auto-xy", ["LayoutOrder"]}]
        5 SETTABLEKS                       R1 R4 K3 ["LayoutOrder"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["createElement"]
       10 GETUPVAL                         R6 2
       11 DUPTABLE                         R7 K8 [{["tag"] = "auto-xy text-caption-small text-align-x-center", ["Text"], ["LayoutOrder"] = 1}]
       12 SETTABLEKS                       R0 R7 K6 ["Text"]
       14 CALL                             R5 2 1
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K0 ["createElement"]
       18 GETUPVAL                         R7 3
       19 DUPTABLE                         R8 K16 [{["text"], ["icon"], ["size"], ["isDisabled"], ["variant"], ["shape"], ["LayoutOrder"] = 2}]
       20 GETUPVAL                         R9 4
       21 GETTABLEKS                       R9 R9 K17 ["controls"]
       23 GETTABLEKS                       R9 R9 K9 ["text"]
       25 SETTABLEKS                       R9 R8 K9 ["text"]
       27 GETUPVAL                         R10 4
       28 GETTABLEKS                       R10 R10 K17 ["controls"]
       30 GETTABLEKS                       R10 R10 K10 ["icon"]
       32 JUMPIFEQKS                       R10 K18 [""] ; [+17]
       34 DUPTABLE                         R9 K21 [{"name", "position"}]
       35 GETUPVAL                         R10 4
       36 GETTABLEKS                       R10 R10 K17 ["controls"]
       38 GETTABLEKS                       R10 R10 K10 ["icon"]
       40 SETTABLEKS                       R10 R9 K19 ["name"]
       42 GETUPVAL                         R10 4
       43 GETTABLEKS                       R10 R10 K17 ["controls"]
       45 GETTABLEKS                       R10 R10 K22 ["iconPosition"]
       47 SETTABLEKS                       R10 R9 K20 ["position"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R9
       51 SETTABLEKS                       R9 R8 K10 ["icon"]
       53 GETUPVAL                         R9 4
       54 GETTABLEKS                       R9 R9 K17 ["controls"]
       56 GETTABLEKS                       R9 R9 K11 ["size"]
       58 SETTABLEKS                       R9 R8 K11 ["size"]
       60 GETUPVAL                         R9 4
       61 GETTABLEKS                       R9 R9 K17 ["controls"]
       63 GETTABLEKS                       R9 R9 K12 ["isDisabled"]
       65 SETTABLEKS                       R9 R8 K12 ["isDisabled"]
       67 GETUPVAL                         R9 4
       68 GETTABLEKS                       R9 R9 K17 ["controls"]
       70 GETTABLEKS                       R9 R9 K13 ["variant"]
       72 SETTABLEKS                       R9 R8 K13 ["variant"]
       74 SETTABLEKS                       R0 R8 K14 ["shape"]
       76 CALL                             R6 2 -1
       77 CALL                             R2 -1 -1
       78 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["tag"] = "row wrap gap-xxlarge auto-xy"}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K4 ["map"]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K5 ["values"]
       11 GETUPVAL                         R6 3
       12 CALL                             R5 1 1
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          VAL R0
       19 CALL                             R4 2 -1
       20 CALL                             R1 -1 -1
       21 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{["tag"] = "col align-x-center gap-small auto-xy", ["LayoutOrder"]}]
        5 SETTABLEKS                       R1 R4 K3 ["LayoutOrder"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["createElement"]
       10 GETUPVAL                         R6 2
       11 DUPTABLE                         R7 K8 [{["tag"] = "auto-xy text-caption-small text-align-x-center", ["Text"], ["LayoutOrder"] = 1}]
       12 SETTABLEKS                       R0 R7 K6 ["Text"]
       14 CALL                             R5 2 1
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K0 ["createElement"]
       18 GETUPVAL                         R7 3
       19 DUPTABLE                         R8 K16 [{["text"], ["icon"], ["size"], ["isDisabled"], ["variant"], ["shape"], ["LayoutOrder"] = 2}]
       20 GETUPVAL                         R9 4
       21 GETTABLEKS                       R9 R9 K17 ["controls"]
       23 GETTABLEKS                       R9 R9 K9 ["text"]
       25 SETTABLEKS                       R9 R8 K9 ["text"]
       27 GETUPVAL                         R10 4
       28 GETTABLEKS                       R10 R10 K17 ["controls"]
       30 GETTABLEKS                       R10 R10 K10 ["icon"]
       32 JUMPIFEQKS                       R10 K18 [""] ; [+17]
       34 DUPTABLE                         R9 K21 [{"name", "position"}]
       35 GETUPVAL                         R10 4
       36 GETTABLEKS                       R10 R10 K17 ["controls"]
       38 GETTABLEKS                       R10 R10 K10 ["icon"]
       40 SETTABLEKS                       R10 R9 K19 ["name"]
       42 GETUPVAL                         R10 4
       43 GETTABLEKS                       R10 R10 K17 ["controls"]
       45 GETTABLEKS                       R10 R10 K22 ["iconPosition"]
       47 SETTABLEKS                       R10 R9 K20 ["position"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R9
       51 SETTABLEKS                       R9 R8 K10 ["icon"]
       53 GETUPVAL                         R9 4
       54 GETTABLEKS                       R9 R9 K17 ["controls"]
       56 GETTABLEKS                       R9 R9 K11 ["size"]
       58 SETTABLEKS                       R9 R8 K11 ["size"]
       60 GETUPVAL                         R9 4
       61 GETTABLEKS                       R9 R9 K17 ["controls"]
       63 GETTABLEKS                       R9 R9 K12 ["isDisabled"]
       65 SETTABLEKS                       R9 R8 K12 ["isDisabled"]
       67 SETTABLEKS                       R0 R8 K13 ["variant"]
       69 GETUPVAL                         R9 4
       70 GETTABLEKS                       R9 R9 K17 ["controls"]
       72 GETTABLEKS                       R9 R9 K14 ["shape"]
       74 SETTABLEKS                       R9 R8 K14 ["shape"]
       76 CALL                             R6 2 -1
       77 CALL                             R2 -1 -1
       78 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["tag"] = "row wrap gap-xxlarge auto-xy"}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K4 ["map"]
        8 NEWTABLE                         R5 0 2
       10 GETUPVAL                         R6 3
       11 GETTABLEKS                       R6 R6 K5 ["Primary"]
       13 GETUPVAL                         R7 3
       14 GETTABLEKS                       R7 R7 K6 ["Secondary"]
       16 SETLIST                          R5 R6 2 [1]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          VAL R0
       24 CALL                             R4 2 -1
       25 CALL                             R1 -1 -1
       26 RETURN                           R1 -1

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
       17 GETTABLEKS                       R4 R2 K11 ["BuilderIcons"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["Dash"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["React"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R1 K14 ["Enums"]
       34 GETTABLEKS                       R7 R7 K15 ["MediaType"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K10 [require]
       39 GETTABLEKS                       R8 R1 K14 ["Enums"]
       41 GETTABLEKS                       R8 R8 K16 ["Theme"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K10 [require]
       46 GETTABLEKS                       R9 R1 K17 ["Components"]
       48 GETTABLEKS                       R9 R9 K18 ["Tile"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K10 [require]
       53 GETTABLEKS                       R10 R1 K17 ["Components"]
       55 GETTABLEKS                       R10 R10 K19 ["Badge"]
       57 GETTABLEKS                       R10 R10 K19 ["Badge"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K10 [require]
       62 GETTABLEKS                       R11 R1 K14 ["Enums"]
       64 GETTABLEKS                       R11 R11 K20 ["BadgeShape"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K10 [require]
       69 GETTABLEKS                       R12 R1 K14 ["Enums"]
       71 GETTABLEKS                       R12 R12 K21 ["BadgeSize"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K10 [require]
       76 GETTABLEKS                       R13 R1 K14 ["Enums"]
       78 GETTABLEKS                       R13 R13 K22 ["BadgeVariant"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K10 [require]
       83 GETTABLEKS                       R14 R1 K14 ["Enums"]
       85 GETTABLEKS                       R14 R14 K23 ["IconPosition"]
       87 CALL                             R13 1 1
       88 GETTABLEKS                       R14 R3 K24 ["Icon"]
       90 GETIMPORT                        R15 K10 [require]
       92 GETTABLEKS                       R16 R1 K17 ["Components"]
       94 GETTABLEKS                       R16 R16 K25 ["Text"]
       96 CALL                             R15 1 1
       97 GETIMPORT                        R16 K10 [require]
       99 GETTABLEKS                       R17 R1 K17 ["Components"]
      101 GETTABLEKS                       R17 R17 K26 ["View"]
      103 CALL                             R16 1 1
      104 GETIMPORT                        R17 K10 [require]
      106 GETTABLEKS                       R18 R1 K27 ["Providers"]
      108 GETTABLEKS                       R18 R18 K28 ["Style"]
      110 GETTABLEKS                       R18 R18 K29 ["useTokens"]
      112 CALL                             R17 1 1
      113 GETIMPORT                        R18 K32 [UDim2.fromOffset]
      115 LOADN                            R19 150
      116 LOADN                            R20 240
      117 CALL                             R18 2 1
      118 GETTABLEKS                       R19 R4 K33 ["filter"]
      120 GETTABLEKS                       R20 R4 K34 ["values"]
      122 MOVE                             R21 R12
      123 CALL                             R20 1 1
      124 DUPCLOSURE                       R21 K35 [PROTO_0]
      125 CAPTURE                          VAL R12
      126 CALL                             R19 2 1
      127 DUPTABLE                         R20 K39 [{["summary"] = "Badge", ["stories"], ["controls"]}]
      128 NEWTABLE                         R21 0 4
      130 DUPTABLE                         R22 K43 [{["name"] = "Base", ["story"]}]
      131 DUPCLOSURE                       R23 K44 [PROTO_3]
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R0
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R18
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R9
      140 SETTABLEKS                       R23 R22 K42 ["story"]
      142 DUPTABLE                         R23 K46 [{["name"] = "All variants", ["story"]}]
      143 DUPCLOSURE                       R24 K47 [PROTO_5]
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R19
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R9
      150 SETTABLEKS                       R24 R23 K42 ["story"]
      152 DUPTABLE                         R24 K49 [{["name"] = "All shapes", ["story"]}]
      153 DUPCLOSURE                       R25 K50 [PROTO_7]
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R9
      160 SETTABLEKS                       R25 R24 K42 ["story"]
      162 DUPTABLE                         R25 K52 [{["name"] = "Deprecated variants", ["story"]}]
      163 DUPCLOSURE                       R26 K53 [PROTO_9]
      164 CAPTURE                          VAL R5
      165 CAPTURE                          VAL R16
      166 CAPTURE                          VAL R4
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R9
      170 SETTABLEKS                       R26 R25 K42 ["story"]
      172 SETLIST                          R21 R22 4 [1]
      174 SETTABLEKS                       R21 R20 K37 ["stories"]
      176 DUPTABLE                         R21 K63 [{["text"] = "Label", ["icon"], ["variant"], ["shape"], ["iconPosition"], ["size"], ["onTile"] = False}]
      177 NEWTABLE                         R22 0 7
      179 GETTABLEKS                       R23 R14 K64 ["CirclePlus"]
      181 GETTABLEKS                       R24 R14 K65 ["Diamond"]
      183 GETTABLEKS                       R25 R14 K66 ["DiamondSimplified"]
      185 GETTABLEKS                       R26 R14 K67 ["House"]
      187 LOADK                            R27 K68 ["icons/placeholder/placeholderOn_small"]
      188 LOADK                            R28 K69 ["icons/menu/clothing/limited_on"]
      189 LOADK                            R29 K70 [""]
      190 SETLIST                          R22 R23 7 [1]
      192 SETTABLEKS                       R22 R21 K56 ["icon"]
      194 SETTABLEKS                       R19 R21 K57 ["variant"]
      196 GETTABLEKS                       R22 R4 K34 ["values"]
      198 MOVE                             R23 R10
      199 CALL                             R22 1 1
      200 SETTABLEKS                       R22 R21 K58 ["shape"]
      202 GETTABLEKS                       R22 R4 K34 ["values"]
      204 MOVE                             R23 R13
      205 CALL                             R22 1 1
      206 SETTABLEKS                       R22 R21 K59 ["iconPosition"]
      208 GETTABLEKS                       R22 R4 K34 ["values"]
      210 MOVE                             R23 R11
      211 CALL                             R22 1 1
      212 SETTABLEKS                       R22 R21 K60 ["size"]
      214 SETTABLEKS                       R21 R20 K38 ["controls"]
      216 RETURN                           R20 1
