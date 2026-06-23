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
       32 JUMPIFNOT                        R5 ; [+229]
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
      119 DUPTABLE                         R15 K53 [{"text", "icon", "size", "isDisabled", "variant", "shape"}]
      120 GETTABLEKS                       R16 R0 K0 ["controls"]
      122 GETTABLEKS                       R16 R16 K47 ["text"]
      124 SETTABLEKS                       R16 R15 K47 ["text"]
      126 GETTABLEKS                       R17 R0 K0 ["controls"]
      128 GETTABLEKS                       R17 R17 K48 ["icon"]
      130 JUMPIFEQKS                       R17 K54 [""] ; [+15]
      132 DUPTABLE                         R16 K57 [{"name", "position"}]
      133 GETTABLEKS                       R17 R0 K0 ["controls"]
      135 GETTABLEKS                       R17 R17 K48 ["icon"]
      137 SETTABLEKS                       R17 R16 K55 ["name"]
      139 GETTABLEKS                       R17 R0 K0 ["controls"]
      141 GETTABLEKS                       R17 R17 K58 ["iconPosition"]
      143 SETTABLEKS                       R17 R16 K56 ["position"]
      145 JUMP                             ; [+1]
      146 LOADNIL                          R16
      147 SETTABLEKS                       R16 R15 K48 ["icon"]
      149 GETTABLEKS                       R16 R0 K0 ["controls"]
      151 GETTABLEKS                       R16 R16 K49 ["size"]
      153 SETTABLEKS                       R16 R15 K49 ["size"]
      155 GETTABLEKS                       R16 R0 K0 ["controls"]
      157 GETTABLEKS                       R16 R16 K50 ["isDisabled"]
      159 SETTABLEKS                       R16 R15 K50 ["isDisabled"]
      161 GETTABLEKS                       R16 R0 K0 ["controls"]
      163 GETTABLEKS                       R16 R16 K51 ["variant"]
      165 SETTABLEKS                       R16 R15 K51 ["variant"]
      167 GETTABLEKS                       R16 R0 K0 ["controls"]
      169 GETTABLEKS                       R16 R16 K52 ["shape"]
      171 SETTABLEKS                       R16 R15 K52 ["shape"]
      173 CALL                             R13 2 1
      174 SETTABLEKS                       R13 R12 K35 ["Badge"]
      176 CALL                             R9 3 1
      177 SETTABLEKS                       R9 R8 K15 ["TileMedia"]
      179 GETUPVAL                         R9 3
      180 GETTABLEKS                       R9 R9 K6 ["createElement"]
      182 GETUPVAL                         R10 5
      183 GETTABLEKS                       R10 R10 K59 ["Content"]
      185 NEWTABLE                         R11 0 0
      187 DUPTABLE                         R12 K61 [{"TileHeader"}]
      188 GETUPVAL                         R13 3
      189 GETTABLEKS                       R13 R13 K6 ["createElement"]
      191 GETUPVAL                         R14 5
      192 GETTABLEKS                       R14 R14 K62 ["Header"]
      194 DUPTABLE                         R15 K66 [{"title", "subtitle", "spacing"}]
      195 DUPTABLE                         R16 K70 [{"text", "isLoading", "fontStyle", "numLines"}]
      196 GETTABLEKS                       R17 R3 K30 ["Name"]
      198 SETTABLEKS                       R17 R16 K47 ["text"]
      200 GETTABLEKS                       R18 R3 K30 ["Name"]
      202 JUMPIFEQKNIL                     R18 ; [+2]
      204 LOADB                            R17 0 +1
      205 LOADB                            R17 1
      206 SETTABLEKS                       R17 R16 K67 ["isLoading"]
      208 GETTABLEKS                       R17 R1 K71 ["Typography"]
      210 GETTABLEKS                       R17 R17 K72 ["HeadingSmall"]
      212 SETTABLEKS                       R17 R16 K68 ["fontStyle"]
      214 LOADN                            R17 2
      215 SETTABLEKS                       R17 R16 K69 ["numLines"]
      217 SETTABLEKS                       R16 R15 K63 ["title"]
      219 DUPTABLE                         R16 K74 [{"text", "isLoading", "fontStyle", "colorStyle"}]
      220 GETTABLEKS                       R17 R3 K75 ["PriceText"]
      222 SETTABLEKS                       R17 R16 K47 ["text"]
      224 GETTABLEKS                       R18 R3 K75 ["PriceText"]
      226 JUMPIFEQKNIL                     R18 ; [+2]
      228 LOADB                            R17 0 +1
      229 LOADB                            R17 1
      230 SETTABLEKS                       R17 R16 K67 ["isLoading"]
      232 GETTABLEKS                       R17 R1 K71 ["Typography"]
      234 GETTABLEKS                       R17 R17 K76 ["BodyLarge"]
      236 SETTABLEKS                       R17 R16 K68 ["fontStyle"]
      238 GETTABLEKS                       R17 R1 K77 ["Color"]
      240 GETTABLEKS                       R17 R17 K59 ["Content"]
      242 GETTABLEKS                       R17 R17 K78 ["Muted"]
      244 SETTABLEKS                       R17 R16 K73 ["colorStyle"]
      246 SETTABLEKS                       R16 R15 K64 ["subtitle"]
      248 GETTABLEKS                       R16 R1 K79 ["Gap"]
      250 GETTABLEKS                       R16 R16 K80 ["Small"]
      252 SETTABLEKS                       R16 R15 K65 ["spacing"]
      254 CALL                             R13 2 1
      255 SETTABLEKS                       R13 R12 K60 ["TileHeader"]
      257 CALL                             R9 3 1
      258 SETTABLEKS                       R9 R8 K16 ["TileContent"]
      260 CALL                             R5 3 -1
      261 RETURN                           R5 -1
      262 GETUPVAL                         R5 3
      263 GETTABLEKS                       R5 R5 K6 ["createElement"]
      265 MOVE                             R6 R2
      266 DUPTABLE                         R7 K53 [{"text", "icon", "size", "isDisabled", "variant", "shape"}]
      267 GETTABLEKS                       R8 R0 K0 ["controls"]
      269 GETTABLEKS                       R8 R8 K47 ["text"]
      271 SETTABLEKS                       R8 R7 K47 ["text"]
      273 GETTABLEKS                       R9 R0 K0 ["controls"]
      275 GETTABLEKS                       R9 R9 K48 ["icon"]
      277 JUMPIFEQKS                       R9 K54 [""] ; [+15]
      279 DUPTABLE                         R8 K57 [{"name", "position"}]
      280 GETTABLEKS                       R9 R0 K0 ["controls"]
      282 GETTABLEKS                       R9 R9 K48 ["icon"]
      284 SETTABLEKS                       R9 R8 K55 ["name"]
      286 GETTABLEKS                       R9 R0 K0 ["controls"]
      288 GETTABLEKS                       R9 R9 K58 ["iconPosition"]
      290 SETTABLEKS                       R9 R8 K56 ["position"]
      292 JUMP                             ; [+1]
      293 LOADNIL                          R8
      294 SETTABLEKS                       R8 R7 K48 ["icon"]
      296 GETTABLEKS                       R8 R0 K0 ["controls"]
      298 GETTABLEKS                       R8 R8 K49 ["size"]
      300 SETTABLEKS                       R8 R7 K49 ["size"]
      302 GETTABLEKS                       R8 R0 K0 ["controls"]
      304 GETTABLEKS                       R8 R8 K50 ["isDisabled"]
      306 SETTABLEKS                       R8 R7 K50 ["isDisabled"]
      308 GETTABLEKS                       R8 R0 K0 ["controls"]
      310 GETTABLEKS                       R8 R8 K51 ["variant"]
      312 SETTABLEKS                       R8 R7 K51 ["variant"]
      314 GETTABLEKS                       R8 R0 K0 ["controls"]
      316 GETTABLEKS                       R8 R8 K52 ["shape"]
      318 SETTABLEKS                       R8 R7 K52 ["shape"]
      320 CALL                             R5 2 -1
      321 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K3 [{"tag", "LayoutOrder"}]
        5 LOADK                            R5 K4 ["col align-x-center gap-small auto-xy"]
        6 SETTABLEKS                       R5 R4 K1 ["tag"]
        8 SETTABLEKS                       R1 R4 K2 ["LayoutOrder"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["createElement"]
       13 GETUPVAL                         R6 2
       14 DUPTABLE                         R7 K6 [{"tag", "Text", "LayoutOrder"}]
       15 LOADK                            R8 K7 ["auto-xy text-caption-small text-align-x-center"]
       16 SETTABLEKS                       R8 R7 K1 ["tag"]
       18 SETTABLEKS                       R0 R7 K5 ["Text"]
       20 LOADN                            R8 1
       21 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       23 CALL                             R5 2 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K0 ["createElement"]
       27 GETUPVAL                         R7 3
       28 DUPTABLE                         R8 K14 [{"text", "icon", "size", "isDisabled", "variant", "shape", "LayoutOrder"}]
       29 GETUPVAL                         R9 4
       30 GETTABLEKS                       R9 R9 K15 ["controls"]
       32 GETTABLEKS                       R9 R9 K8 ["text"]
       34 SETTABLEKS                       R9 R8 K8 ["text"]
       36 GETUPVAL                         R10 4
       37 GETTABLEKS                       R10 R10 K15 ["controls"]
       39 GETTABLEKS                       R10 R10 K9 ["icon"]
       41 JUMPIFEQKS                       R10 K16 [""] ; [+17]
       43 DUPTABLE                         R9 K19 [{"name", "position"}]
       44 GETUPVAL                         R10 4
       45 GETTABLEKS                       R10 R10 K15 ["controls"]
       47 GETTABLEKS                       R10 R10 K9 ["icon"]
       49 SETTABLEKS                       R10 R9 K17 ["name"]
       51 GETUPVAL                         R10 4
       52 GETTABLEKS                       R10 R10 K15 ["controls"]
       54 GETTABLEKS                       R10 R10 K20 ["iconPosition"]
       56 SETTABLEKS                       R10 R9 K18 ["position"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R9
       60 SETTABLEKS                       R9 R8 K9 ["icon"]
       62 GETUPVAL                         R9 4
       63 GETTABLEKS                       R9 R9 K15 ["controls"]
       65 GETTABLEKS                       R9 R9 K10 ["size"]
       67 SETTABLEKS                       R9 R8 K10 ["size"]
       69 GETUPVAL                         R9 4
       70 GETTABLEKS                       R9 R9 K15 ["controls"]
       72 GETTABLEKS                       R9 R9 K11 ["isDisabled"]
       74 SETTABLEKS                       R9 R8 K11 ["isDisabled"]
       76 SETTABLEKS                       R0 R8 K12 ["variant"]
       78 GETUPVAL                         R9 4
       79 GETTABLEKS                       R9 R9 K15 ["controls"]
       81 GETTABLEKS                       R9 R9 K13 ["shape"]
       83 SETTABLEKS                       R9 R8 K13 ["shape"]
       85 LOADN                            R9 2
       86 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       88 CALL                             R6 2 -1
       89 CALL                             R2 -1 -1
       90 RETURN                           R2 -1

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K3 [{"tag", "LayoutOrder"}]
        5 LOADK                            R5 K4 ["col align-x-center gap-small auto-xy"]
        6 SETTABLEKS                       R5 R4 K1 ["tag"]
        8 SETTABLEKS                       R1 R4 K2 ["LayoutOrder"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["createElement"]
       13 GETUPVAL                         R6 2
       14 DUPTABLE                         R7 K6 [{"tag", "Text", "LayoutOrder"}]
       15 LOADK                            R8 K7 ["auto-xy text-caption-small text-align-x-center"]
       16 SETTABLEKS                       R8 R7 K1 ["tag"]
       18 SETTABLEKS                       R0 R7 K5 ["Text"]
       20 LOADN                            R8 1
       21 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       23 CALL                             R5 2 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K0 ["createElement"]
       27 GETUPVAL                         R7 3
       28 DUPTABLE                         R8 K14 [{"text", "icon", "size", "isDisabled", "variant", "shape", "LayoutOrder"}]
       29 GETUPVAL                         R9 4
       30 GETTABLEKS                       R9 R9 K15 ["controls"]
       32 GETTABLEKS                       R9 R9 K8 ["text"]
       34 SETTABLEKS                       R9 R8 K8 ["text"]
       36 GETUPVAL                         R10 4
       37 GETTABLEKS                       R10 R10 K15 ["controls"]
       39 GETTABLEKS                       R10 R10 K9 ["icon"]
       41 JUMPIFEQKS                       R10 K16 [""] ; [+17]
       43 DUPTABLE                         R9 K19 [{"name", "position"}]
       44 GETUPVAL                         R10 4
       45 GETTABLEKS                       R10 R10 K15 ["controls"]
       47 GETTABLEKS                       R10 R10 K9 ["icon"]
       49 SETTABLEKS                       R10 R9 K17 ["name"]
       51 GETUPVAL                         R10 4
       52 GETTABLEKS                       R10 R10 K15 ["controls"]
       54 GETTABLEKS                       R10 R10 K20 ["iconPosition"]
       56 SETTABLEKS                       R10 R9 K18 ["position"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R9
       60 SETTABLEKS                       R9 R8 K9 ["icon"]
       62 GETUPVAL                         R9 4
       63 GETTABLEKS                       R9 R9 K15 ["controls"]
       65 GETTABLEKS                       R9 R9 K10 ["size"]
       67 SETTABLEKS                       R9 R8 K10 ["size"]
       69 GETUPVAL                         R9 4
       70 GETTABLEKS                       R9 R9 K15 ["controls"]
       72 GETTABLEKS                       R9 R9 K11 ["isDisabled"]
       74 SETTABLEKS                       R9 R8 K11 ["isDisabled"]
       76 GETUPVAL                         R9 4
       77 GETTABLEKS                       R9 R9 K15 ["controls"]
       79 GETTABLEKS                       R9 R9 K12 ["variant"]
       81 SETTABLEKS                       R9 R8 K12 ["variant"]
       83 SETTABLEKS                       R0 R8 K13 ["shape"]
       85 LOADN                            R9 2
       86 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       88 CALL                             R6 2 -1
       89 CALL                             R2 -1 -1
       90 RETURN                           R2 -1

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
       19 GETUPVAL                         R6 4
       20 GETTABLEKS                       R6 R6 K7 ["values"]
       22 GETUPVAL                         R7 5
       23 CALL                             R6 1 1
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R0
       30 CALL                             R5 2 -1
       31 CALL                             R2 -1 -1
       32 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K3 [{"tag", "LayoutOrder"}]
        5 LOADK                            R5 K4 ["col align-x-center gap-small auto-xy"]
        6 SETTABLEKS                       R5 R4 K1 ["tag"]
        8 SETTABLEKS                       R1 R4 K2 ["LayoutOrder"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["createElement"]
       13 GETUPVAL                         R6 2
       14 DUPTABLE                         R7 K6 [{"tag", "Text", "LayoutOrder"}]
       15 LOADK                            R8 K7 ["auto-xy text-caption-small text-align-x-center"]
       16 SETTABLEKS                       R8 R7 K1 ["tag"]
       18 SETTABLEKS                       R0 R7 K5 ["Text"]
       20 LOADN                            R8 1
       21 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       23 CALL                             R5 2 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K0 ["createElement"]
       27 GETUPVAL                         R7 3
       28 DUPTABLE                         R8 K14 [{"text", "icon", "size", "isDisabled", "variant", "shape", "LayoutOrder"}]
       29 GETUPVAL                         R9 4
       30 GETTABLEKS                       R9 R9 K15 ["controls"]
       32 GETTABLEKS                       R9 R9 K8 ["text"]
       34 SETTABLEKS                       R9 R8 K8 ["text"]
       36 GETUPVAL                         R10 4
       37 GETTABLEKS                       R10 R10 K15 ["controls"]
       39 GETTABLEKS                       R10 R10 K9 ["icon"]
       41 JUMPIFEQKS                       R10 K16 [""] ; [+17]
       43 DUPTABLE                         R9 K19 [{"name", "position"}]
       44 GETUPVAL                         R10 4
       45 GETTABLEKS                       R10 R10 K15 ["controls"]
       47 GETTABLEKS                       R10 R10 K9 ["icon"]
       49 SETTABLEKS                       R10 R9 K17 ["name"]
       51 GETUPVAL                         R10 4
       52 GETTABLEKS                       R10 R10 K15 ["controls"]
       54 GETTABLEKS                       R10 R10 K20 ["iconPosition"]
       56 SETTABLEKS                       R10 R9 K18 ["position"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R9
       60 SETTABLEKS                       R9 R8 K9 ["icon"]
       62 GETUPVAL                         R9 4
       63 GETTABLEKS                       R9 R9 K15 ["controls"]
       65 GETTABLEKS                       R9 R9 K10 ["size"]
       67 SETTABLEKS                       R9 R8 K10 ["size"]
       69 GETUPVAL                         R9 4
       70 GETTABLEKS                       R9 R9 K15 ["controls"]
       72 GETTABLEKS                       R9 R9 K11 ["isDisabled"]
       74 SETTABLEKS                       R9 R8 K11 ["isDisabled"]
       76 SETTABLEKS                       R0 R8 K12 ["variant"]
       78 GETUPVAL                         R9 4
       79 GETTABLEKS                       R9 R9 K15 ["controls"]
       81 GETTABLEKS                       R9 R9 K13 ["shape"]
       83 SETTABLEKS                       R9 R8 K13 ["shape"]
       85 LOADN                            R9 2
       86 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       88 CALL                             R6 2 -1
       89 CALL                             R2 -1 -1
       90 RETURN                           R2 -1

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
      136 DUPTABLE                         R21 K40 [{"summary", "stories", "controls"}]
      137 LOADK                            R22 K22 ["Badge"]
      138 SETTABLEKS                       R22 R21 K37 ["summary"]
      140 NEWTABLE                         R22 0 4
      142 DUPTABLE                         R23 K43 [{"name", "story"}]
      143 LOADK                            R24 K44 ["Base"]
      144 SETTABLEKS                       R24 R23 K41 ["name"]
      146 DUPCLOSURE                       R24 K45 [PROTO_3]
      147 CAPTURE                          VAL R18
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R0
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R7
      156 SETTABLEKS                       R24 R23 K42 ["story"]
      158 DUPTABLE                         R24 K43 [{"name", "story"}]
      159 LOADK                            R25 K46 ["All variants"]
      160 SETTABLEKS                       R25 R24 K41 ["name"]
      162 DUPCLOSURE                       R25 K47 [PROTO_5]
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R5
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R20
      169 CAPTURE                          VAL R16
      170 SETTABLEKS                       R25 R24 K42 ["story"]
      172 DUPTABLE                         R25 K43 [{"name", "story"}]
      173 LOADK                            R26 K48 ["All shapes"]
      174 SETTABLEKS                       R26 R25 K41 ["name"]
      176 DUPCLOSURE                       R26 K49 [PROTO_7]
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R12
      179 CAPTURE                          VAL R5
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R9
      183 CAPTURE                          VAL R16
      184 SETTABLEKS                       R26 R25 K42 ["story"]
      186 DUPTABLE                         R26 K43 [{"name", "story"}]
      187 LOADK                            R27 K50 ["Deprecated variants"]
      188 SETTABLEKS                       R27 R26 K41 ["name"]
      190 DUPCLOSURE                       R27 K51 [PROTO_9]
      191 CAPTURE                          VAL R13
      192 CAPTURE                          VAL R12
      193 CAPTURE                          VAL R5
      194 CAPTURE                          VAL R17
      195 CAPTURE                          VAL R4
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R16
      198 SETTABLEKS                       R27 R26 K42 ["story"]
      200 SETLIST                          R22 R23 4 [1]
      202 SETTABLEKS                       R22 R21 K38 ["stories"]
      204 DUPTABLE                         R22 K60 [{"text", "icon", "variant", "shape", "iconPosition", "size", "updateBadgeDesign", "onTile"}]
      205 LOADK                            R23 K61 ["Label"]
      206 SETTABLEKS                       R23 R22 K52 ["text"]
      208 NEWTABLE                         R23 0 7
      210 GETTABLEKS                       R24 R15 K62 ["CirclePlus"]
      212 GETTABLEKS                       R25 R15 K63 ["Diamond"]
      214 GETTABLEKS                       R26 R15 K64 ["DiamondSimplified"]
      216 GETTABLEKS                       R27 R15 K65 ["House"]
      218 LOADK                            R28 K66 ["icons/placeholder/placeholderOn_small"]
      219 LOADK                            R29 K67 ["icons/menu/clothing/limited_on"]
      220 LOADK                            R30 K68 [""]
      221 SETLIST                          R23 R24 7 [1]
      223 SETTABLEKS                       R23 R22 K53 ["icon"]
      225 SETTABLEKS                       R20 R22 K54 ["variant"]
      227 GETTABLEKS                       R23 R4 K35 ["values"]
      229 MOVE                             R24 R9
      230 CALL                             R23 1 1
      231 SETTABLEKS                       R23 R22 K55 ["shape"]
      233 GETTABLEKS                       R23 R4 K35 ["values"]
      235 MOVE                             R24 R14
      236 CALL                             R23 1 1
      237 SETTABLEKS                       R23 R22 K56 ["iconPosition"]
      239 GETTABLEKS                       R23 R4 K35 ["values"]
      241 MOVE                             R24 R10
      242 CALL                             R23 1 1
      243 SETTABLEKS                       R23 R22 K57 ["size"]
      245 LOADB                            R23 1
      246 SETTABLEKS                       R23 R22 K58 ["updateBadgeDesign"]
      248 LOADB                            R23 0
      249 SETTABLEKS                       R23 R22 K59 ["onTile"]
      251 SETTABLEKS                       R22 R21 K39 ["controls"]
      253 RETURN                           R21 1
