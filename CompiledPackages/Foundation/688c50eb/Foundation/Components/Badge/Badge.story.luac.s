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
       32 JUMPIFNOT                        R5 ; [+217]
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
      110 DUPTABLE                         R15 K55 [{"text", "icon", "size", "isDisabled", "variant", "shape"}]
      111 GETTABLEKS                       R16 R0 K0 ["controls"]
      113 GETTABLEKS                       R16 R16 K49 ["text"]
      115 SETTABLEKS                       R16 R15 K49 ["text"]
      117 GETTABLEKS                       R17 R0 K0 ["controls"]
      119 GETTABLEKS                       R17 R17 K50 ["icon"]
      121 JUMPIFEQKS                       R17 K56 [""] ; [+15]
      123 DUPTABLE                         R16 K59 [{"name", "position"}]
      124 GETTABLEKS                       R17 R0 K0 ["controls"]
      126 GETTABLEKS                       R17 R17 K50 ["icon"]
      128 SETTABLEKS                       R17 R16 K57 ["name"]
      130 GETTABLEKS                       R17 R0 K0 ["controls"]
      132 GETTABLEKS                       R17 R17 K60 ["iconPosition"]
      134 SETTABLEKS                       R17 R16 K58 ["position"]
      136 JUMP                             ; [+1]
      137 LOADNIL                          R16
      138 SETTABLEKS                       R16 R15 K50 ["icon"]
      140 GETTABLEKS                       R16 R0 K0 ["controls"]
      142 GETTABLEKS                       R16 R16 K51 ["size"]
      144 SETTABLEKS                       R16 R15 K51 ["size"]
      146 GETTABLEKS                       R16 R0 K0 ["controls"]
      148 GETTABLEKS                       R16 R16 K52 ["isDisabled"]
      150 SETTABLEKS                       R16 R15 K52 ["isDisabled"]
      152 GETTABLEKS                       R16 R0 K0 ["controls"]
      154 GETTABLEKS                       R16 R16 K53 ["variant"]
      156 SETTABLEKS                       R16 R15 K53 ["variant"]
      158 GETTABLEKS                       R16 R0 K0 ["controls"]
      160 GETTABLEKS                       R16 R16 K54 ["shape"]
      162 SETTABLEKS                       R16 R15 K54 ["shape"]
      164 CALL                             R13 2 1
      165 SETTABLEKS                       R13 R12 K37 ["Badge"]
      167 CALL                             R9 3 1
      168 SETTABLEKS                       R9 R8 K16 ["TileMedia"]
      170 GETUPVAL                         R9 3
      171 GETTABLEKS                       R9 R9 K6 ["createElement"]
      173 GETUPVAL                         R10 5
      174 GETTABLEKS                       R10 R10 K61 ["Content"]
      176 NEWTABLE                         R11 0 0
      178 DUPTABLE                         R12 K63 [{"TileHeader"}]
      179 GETUPVAL                         R13 3
      180 GETTABLEKS                       R13 R13 K6 ["createElement"]
      182 GETUPVAL                         R14 5
      183 GETTABLEKS                       R14 R14 K64 ["Header"]
      185 DUPTABLE                         R15 K68 [{"title", "subtitle", "spacing"}]
      186 DUPTABLE                         R16 K73 [{["text"], ["isLoading"], ["fontStyle"], ["numLines"] = 2}]
      187 GETTABLEKS                       R17 R3 K32 ["Name"]
      189 SETTABLEKS                       R17 R16 K49 ["text"]
      191 GETTABLEKS                       R18 R3 K32 ["Name"]
      193 JUMPIFEQKNIL                     R18 ; [+2]
      195 LOADB                            R17 0 +1
      196 LOADB                            R17 1
      197 SETTABLEKS                       R17 R16 K69 ["isLoading"]
      199 GETTABLEKS                       R17 R1 K74 ["Typography"]
      201 GETTABLEKS                       R17 R17 K75 ["HeadingSmall"]
      203 SETTABLEKS                       R17 R16 K70 ["fontStyle"]
      205 SETTABLEKS                       R16 R15 K65 ["title"]
      207 DUPTABLE                         R16 K77 [{"text", "isLoading", "fontStyle", "colorStyle"}]
      208 GETTABLEKS                       R17 R3 K78 ["PriceText"]
      210 SETTABLEKS                       R17 R16 K49 ["text"]
      212 GETTABLEKS                       R18 R3 K78 ["PriceText"]
      214 JUMPIFEQKNIL                     R18 ; [+2]
      216 LOADB                            R17 0 +1
      217 LOADB                            R17 1
      218 SETTABLEKS                       R17 R16 K69 ["isLoading"]
      220 GETTABLEKS                       R17 R1 K74 ["Typography"]
      222 GETTABLEKS                       R17 R17 K79 ["BodyLarge"]
      224 SETTABLEKS                       R17 R16 K70 ["fontStyle"]
      226 GETTABLEKS                       R17 R1 K80 ["Color"]
      228 GETTABLEKS                       R17 R17 K61 ["Content"]
      230 GETTABLEKS                       R17 R17 K81 ["Muted"]
      232 SETTABLEKS                       R17 R16 K76 ["colorStyle"]
      234 SETTABLEKS                       R16 R15 K66 ["subtitle"]
      236 GETTABLEKS                       R16 R1 K82 ["Gap"]
      238 GETTABLEKS                       R16 R16 K83 ["Small"]
      240 SETTABLEKS                       R16 R15 K67 ["spacing"]
      242 CALL                             R13 2 1
      243 SETTABLEKS                       R13 R12 K62 ["TileHeader"]
      245 CALL                             R9 3 1
      246 SETTABLEKS                       R9 R8 K17 ["TileContent"]
      248 CALL                             R5 3 -1
      249 RETURN                           R5 -1
      250 GETUPVAL                         R5 3
      251 GETTABLEKS                       R5 R5 K6 ["createElement"]
      253 MOVE                             R6 R2
      254 DUPTABLE                         R7 K55 [{"text", "icon", "size", "isDisabled", "variant", "shape"}]
      255 GETTABLEKS                       R8 R0 K0 ["controls"]
      257 GETTABLEKS                       R8 R8 K49 ["text"]
      259 SETTABLEKS                       R8 R7 K49 ["text"]
      261 GETTABLEKS                       R9 R0 K0 ["controls"]
      263 GETTABLEKS                       R9 R9 K50 ["icon"]
      265 JUMPIFEQKS                       R9 K56 [""] ; [+15]
      267 DUPTABLE                         R8 K59 [{"name", "position"}]
      268 GETTABLEKS                       R9 R0 K0 ["controls"]
      270 GETTABLEKS                       R9 R9 K50 ["icon"]
      272 SETTABLEKS                       R9 R8 K57 ["name"]
      274 GETTABLEKS                       R9 R0 K0 ["controls"]
      276 GETTABLEKS                       R9 R9 K60 ["iconPosition"]
      278 SETTABLEKS                       R9 R8 K58 ["position"]
      280 JUMP                             ; [+1]
      281 LOADNIL                          R8
      282 SETTABLEKS                       R8 R7 K50 ["icon"]
      284 GETTABLEKS                       R8 R0 K0 ["controls"]
      286 GETTABLEKS                       R8 R8 K51 ["size"]
      288 SETTABLEKS                       R8 R7 K51 ["size"]
      290 GETTABLEKS                       R8 R0 K0 ["controls"]
      292 GETTABLEKS                       R8 R8 K52 ["isDisabled"]
      294 SETTABLEKS                       R8 R7 K52 ["isDisabled"]
      296 GETTABLEKS                       R8 R0 K0 ["controls"]
      298 GETTABLEKS                       R8 R8 K53 ["variant"]
      300 SETTABLEKS                       R8 R7 K53 ["variant"]
      302 GETTABLEKS                       R8 R0 K0 ["controls"]
      304 GETTABLEKS                       R8 R8 K54 ["shape"]
      306 SETTABLEKS                       R8 R7 K54 ["shape"]
      308 CALL                             R5 2 -1
      309 RETURN                           R5 -1

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
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R6 R6 K7 ["values"]
       19 GETUPVAL                         R7 5
       20 CALL                             R6 1 1
       21 NEWCLOSURE                       R7 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U6
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R0
       27 CALL                             R5 2 -1
       28 CALL                             R2 -1 -1
       29 RETURN                           R2 -1

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
       53 GETTABLEKS                       R10 R1 K14 ["Enums"]
       55 GETTABLEKS                       R10 R10 K19 ["BadgeShape"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K10 [require]
       60 GETTABLEKS                       R11 R1 K14 ["Enums"]
       62 GETTABLEKS                       R11 R11 K20 ["BadgeSize"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K10 [require]
       67 GETTABLEKS                       R12 R1 K14 ["Enums"]
       69 GETTABLEKS                       R12 R12 K21 ["BadgeVariant"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K10 [require]
       74 GETTABLEKS                       R13 R1 K17 ["Components"]
       76 GETTABLEKS                       R13 R13 K22 ["Badge"]
       78 GETTABLEKS                       R13 R13 K23 ["Badge_DEPRECATED"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K10 [require]
       83 GETTABLEKS                       R14 R1 K17 ["Components"]
       85 GETTABLEKS                       R14 R14 K22 ["Badge"]
       87 GETTABLEKS                       R14 R14 K22 ["Badge"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K10 [require]
       92 GETTABLEKS                       R15 R1 K14 ["Enums"]
       94 GETTABLEKS                       R15 R15 K24 ["IconPosition"]
       96 CALL                             R14 1 1
       97 GETTABLEKS                       R15 R3 K25 ["Icon"]
       99 GETIMPORT                        R16 K10 [require]
      101 GETTABLEKS                       R17 R1 K17 ["Components"]
      103 GETTABLEKS                       R17 R17 K26 ["Text"]
      105 CALL                             R16 1 1
      106 GETIMPORT                        R17 K10 [require]
      108 GETTABLEKS                       R18 R1 K17 ["Components"]
      110 GETTABLEKS                       R18 R18 K27 ["View"]
      112 CALL                             R17 1 1
      113 GETIMPORT                        R18 K10 [require]
      115 GETTABLEKS                       R19 R1 K28 ["Providers"]
      117 GETTABLEKS                       R19 R19 K29 ["Style"]
      119 GETTABLEKS                       R19 R19 K30 ["useTokens"]
      121 CALL                             R18 1 1
      122 GETIMPORT                        R19 K33 [UDim2.fromOffset]
      124 LOADN                            R20 150
      125 LOADN                            R21 240
      126 CALL                             R19 2 1
      127 GETTABLEKS                       R20 R4 K34 ["filter"]
      129 GETTABLEKS                       R21 R4 K35 ["values"]
      131 MOVE                             R22 R11
      132 CALL                             R21 1 1
      133 DUPCLOSURE                       R22 K36 [PROTO_0]
      134 CAPTURE                          VAL R11
      135 CALL                             R20 2 1
      136 DUPTABLE                         R21 K40 [{["summary"] = "Badge", ["stories"], ["controls"]}]
      137 NEWTABLE                         R22 0 4
      139 DUPTABLE                         R23 K44 [{["name"] = "Base", ["story"]}]
      140 DUPCLOSURE                       R24 K45 [PROTO_3]
      141 CAPTURE                          VAL R18
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R0
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R19
      148 CAPTURE                          VAL R6
      149 CAPTURE                          VAL R7
      150 SETTABLEKS                       R24 R23 K43 ["story"]
      152 DUPTABLE                         R24 K47 [{["name"] = "All variants", ["story"]}]
      153 DUPCLOSURE                       R25 K48 [PROTO_5]
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R17
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R20
      160 CAPTURE                          VAL R16
      161 SETTABLEKS                       R25 R24 K43 ["story"]
      163 DUPTABLE                         R25 K50 [{["name"] = "All shapes", ["story"]}]
      164 DUPCLOSURE                       R26 K51 [PROTO_7]
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R12
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R16
      172 SETTABLEKS                       R26 R25 K43 ["story"]
      174 DUPTABLE                         R26 K53 [{["name"] = "Deprecated variants", ["story"]}]
      175 DUPCLOSURE                       R27 K54 [PROTO_9]
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R5
      179 CAPTURE                          VAL R17
      180 CAPTURE                          VAL R4
      181 CAPTURE                          VAL R11
      182 CAPTURE                          VAL R16
      183 SETTABLEKS                       R27 R26 K43 ["story"]
      185 SETLIST                          R22 R23 4 [1]
      187 SETTABLEKS                       R22 R21 K38 ["stories"]
      189 DUPTABLE                         R22 K66 [{["text"] = "Label", ["icon"], ["variant"], ["shape"], ["iconPosition"], ["size"], ["updateBadgeDesign"] = True, ["onTile"] = False}]
      190 NEWTABLE                         R23 0 7
      192 GETTABLEKS                       R24 R15 K67 ["CirclePlus"]
      194 GETTABLEKS                       R25 R15 K68 ["Diamond"]
      196 GETTABLEKS                       R26 R15 K69 ["DiamondSimplified"]
      198 GETTABLEKS                       R27 R15 K70 ["House"]
      200 LOADK                            R28 K71 ["icons/placeholder/placeholderOn_small"]
      201 LOADK                            R29 K72 ["icons/menu/clothing/limited_on"]
      202 LOADK                            R30 K73 [""]
      203 SETLIST                          R23 R24 7 [1]
      205 SETTABLEKS                       R23 R22 K57 ["icon"]
      207 SETTABLEKS                       R20 R22 K58 ["variant"]
      209 GETTABLEKS                       R23 R4 K35 ["values"]
      211 MOVE                             R24 R9
      212 CALL                             R23 1 1
      213 SETTABLEKS                       R23 R22 K59 ["shape"]
      215 GETTABLEKS                       R23 R4 K35 ["values"]
      217 MOVE                             R24 R14
      218 CALL                             R23 1 1
      219 SETTABLEKS                       R23 R22 K60 ["iconPosition"]
      221 GETTABLEKS                       R23 R4 K35 ["values"]
      223 MOVE                             R24 R10
      224 CALL                             R23 1 1
      225 SETTABLEKS                       R23 R22 K61 ["size"]
      227 SETTABLEKS                       R22 R21 K39 ["controls"]
      229 RETURN                           R21 1
