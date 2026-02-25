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
        3 GETTABLEKS                       R2 R3 K1 ["updateBadgeDesign"]
        5 SETTABLEKS                       R2 R1 K2 ["FoundationUpdateBadgeDesign"]
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 1
        9 GETTABLEKS                       R4 R0 K0 ["controls"]
       11 GETTABLEKS                       R3 R4 K1 ["updateBadgeDesign"]
       13 JUMPIFNOT                        R3 ; [+2]
       14 GETUPVAL                         R2 2
       15 JUMP                             ; [+1]
       16 GETUPVAL                         R2 3
       17 GETUPVAL                         R4 4
       18 GETTABLEKS                       R3 R4 K3 ["useState"]
       20 NEWTABLE                         R4 0 0
       22 CALL                             R3 1 2
       23 GETUPVAL                         R6 4
       24 GETTABLEKS                       R5 R6 K4 ["useEffect"]
       26 NEWCLOSURE                       R6 P0
       27 CAPTURE                          VAL R4
       28 CAPTURE                          UPVAL U5
       29 NEWTABLE                         R7 0 1
       31 LOADK                            R8 K5 [21070012]
       32 SETLIST                          R7 R8 1 [1]
       34 CALL                             R5 2 0
       35 GETTABLEKS                       R6 R0 K0 ["controls"]
       37 GETTABLEKS                       R5 R6 K6 ["onTile"]
       39 JUMPIFNOT                        R5 ; [+214]
       40 GETUPVAL                         R6 4
       41 GETTABLEKS                       R5 R6 K7 ["createElement"]
       43 GETUPVAL                         R7 6
       44 GETTABLEKS                       R6 R7 K8 ["Root"]
       46 DUPTABLE                         R7 K12 [{"isContained", "FillDirection", "Size"}]
       47 LOADB                            R8 1
       48 SETTABLEKS                       R8 R7 K9 ["isContained"]
       50 GETIMPORT                        R8 K15 [Enum.FillDirection.Vertical]
       52 SETTABLEKS                       R8 R7 K10 ["FillDirection"]
       54 GETUPVAL                         R8 7
       55 SETTABLEKS                       R8 R7 K11 ["Size"]
       57 DUPTABLE                         R8 K18 [{"TileMedia", "TileContent"}]
       58 GETUPVAL                         R10 4
       59 GETTABLEKS                       R9 R10 K7 ["createElement"]
       61 GETUPVAL                         R11 6
       62 GETTABLEKS                       R10 R11 K19 ["Media"]
       64 DUPTABLE                         R11 K24 [{"id", "type", "aspectRatio", "background"}]
       65 LOADK                            R12 K5 [21070012]
       66 SETTABLEKS                       R12 R11 K20 ["id"]
       68 GETUPVAL                         R13 8
       69 GETTABLEKS                       R12 R13 K25 ["Asset"]
       71 SETTABLEKS                       R12 R11 K21 ["type"]
       73 LOADN                            R12 1
       74 SETTABLEKS                       R12 R11 K22 ["aspectRatio"]
       76 DUPTABLE                         R12 K27 [{"image"}]
       77 LOADK                            R14 K28 ["component_assets/itemBG_"]
       78 GETTABLEKS                       R18 R1 K29 ["Config"]
       80 GETTABLEKS                       R17 R18 K30 ["Theme"]
       82 GETTABLEKS                       R16 R17 K31 ["Name"]
       84 GETUPVAL                         R18 9
       85 GETTABLEKS                       R17 R18 K32 ["Dark"]
       87 JUMPIFNOTEQ                      R16 R17 ; [+3]
       89 LOADK                            R15 K33 ["dark"]
       90 JUMP                             ; [+1]
       91 LOADK                            R15 K34 ["light"]
       92 CONCAT                           R13 R14 R15
       93 SETTABLEKS                       R13 R12 K26 ["image"]
       95 SETTABLEKS                       R12 R11 K23 ["background"]
       97 DUPTABLE                         R12 K37 [{"UIListLayout", "Badge"}]
       98 GETUPVAL                         R14 4
       99 GETTABLEKS                       R13 R14 K7 ["createElement"]
      101 LOADK                            R14 K35 ["UIListLayout"]
      102 DUPTABLE                         R15 K41 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      103 GETIMPORT                        R16 K15 [Enum.FillDirection.Vertical]
      105 SETTABLEKS                       R16 R15 K10 ["FillDirection"]
      107 GETIMPORT                        R16 K43 [Enum.HorizontalAlignment.Left]
      109 SETTABLEKS                       R16 R15 K38 ["HorizontalAlignment"]
      111 GETIMPORT                        R16 K45 [Enum.VerticalAlignment.Bottom]
      113 SETTABLEKS                       R16 R15 K39 ["VerticalAlignment"]
      115 GETIMPORT                        R16 K47 [Enum.SortOrder.LayoutOrder]
      117 SETTABLEKS                       R16 R15 K40 ["SortOrder"]
      119 CALL                             R13 2 1
      120 SETTABLEKS                       R13 R12 K35 ["UIListLayout"]
      122 GETUPVAL                         R14 4
      123 GETTABLEKS                       R13 R14 K7 ["createElement"]
      125 MOVE                             R14 R2
      126 DUPTABLE                         R15 K53 [{"text", "icon", "size", "isDisabled", "variant"}]
      127 GETTABLEKS                       R17 R0 K0 ["controls"]
      129 GETTABLEKS                       R16 R17 K48 ["text"]
      131 SETTABLEKS                       R16 R15 K48 ["text"]
      133 GETTABLEKS                       R18 R0 K0 ["controls"]
      135 GETTABLEKS                       R17 R18 K49 ["icon"]
      137 JUMPIFEQKS                       R17 K54 [""] ; [+6]
      139 GETTABLEKS                       R17 R0 K0 ["controls"]
      141 GETTABLEKS                       R16 R17 K49 ["icon"]
      143 JUMP                             ; [+1]
      144 LOADNIL                          R16
      145 SETTABLEKS                       R16 R15 K49 ["icon"]
      147 GETTABLEKS                       R17 R0 K0 ["controls"]
      149 GETTABLEKS                       R16 R17 K50 ["size"]
      151 SETTABLEKS                       R16 R15 K50 ["size"]
      153 GETTABLEKS                       R17 R0 K0 ["controls"]
      155 GETTABLEKS                       R16 R17 K51 ["isDisabled"]
      157 SETTABLEKS                       R16 R15 K51 ["isDisabled"]
      159 GETTABLEKS                       R17 R0 K0 ["controls"]
      161 GETTABLEKS                       R16 R17 K52 ["variant"]
      163 SETTABLEKS                       R16 R15 K52 ["variant"]
      165 CALL                             R13 2 1
      166 SETTABLEKS                       R13 R12 K36 ["Badge"]
      168 CALL                             R9 3 1
      169 SETTABLEKS                       R9 R8 K16 ["TileMedia"]
      171 GETUPVAL                         R10 4
      172 GETTABLEKS                       R9 R10 K7 ["createElement"]
      174 GETUPVAL                         R11 6
      175 GETTABLEKS                       R10 R11 K55 ["Content"]
      177 NEWTABLE                         R11 0 0
      179 DUPTABLE                         R12 K57 [{"TileHeader"}]
      180 GETUPVAL                         R14 4
      181 GETTABLEKS                       R13 R14 K7 ["createElement"]
      183 GETUPVAL                         R15 6
      184 GETTABLEKS                       R14 R15 K58 ["Header"]
      186 DUPTABLE                         R15 K62 [{"title", "subtitle", "spacing"}]
      187 DUPTABLE                         R16 K66 [{"text", "isLoading", "fontStyle", "numLines"}]
      188 GETTABLEKS                       R17 R3 K31 ["Name"]
      190 SETTABLEKS                       R17 R16 K48 ["text"]
      192 GETTABLEKS                       R18 R3 K31 ["Name"]
      194 JUMPIFEQKNIL                     R18 ; [+2]
      196 LOADB                            R17 0 +1
      197 LOADB                            R17 1
      198 SETTABLEKS                       R17 R16 K63 ["isLoading"]
      200 GETTABLEKS                       R18 R1 K67 ["Typography"]
      202 GETTABLEKS                       R17 R18 K68 ["HeadingSmall"]
      204 SETTABLEKS                       R17 R16 K64 ["fontStyle"]
      206 LOADN                            R17 2
      207 SETTABLEKS                       R17 R16 K65 ["numLines"]
      209 SETTABLEKS                       R16 R15 K59 ["title"]
      211 DUPTABLE                         R16 K70 [{"text", "isLoading", "fontStyle", "colorStyle"}]
      212 GETTABLEKS                       R17 R3 K71 ["PriceText"]
      214 SETTABLEKS                       R17 R16 K48 ["text"]
      216 GETTABLEKS                       R18 R3 K71 ["PriceText"]
      218 JUMPIFEQKNIL                     R18 ; [+2]
      220 LOADB                            R17 0 +1
      221 LOADB                            R17 1
      222 SETTABLEKS                       R17 R16 K63 ["isLoading"]
      224 GETTABLEKS                       R18 R1 K67 ["Typography"]
      226 GETTABLEKS                       R17 R18 K72 ["BodyLarge"]
      228 SETTABLEKS                       R17 R16 K64 ["fontStyle"]
      230 GETTABLEKS                       R19 R1 K73 ["Color"]
      232 GETTABLEKS                       R18 R19 K55 ["Content"]
      234 GETTABLEKS                       R17 R18 K74 ["Muted"]
      236 SETTABLEKS                       R17 R16 K69 ["colorStyle"]
      238 SETTABLEKS                       R16 R15 K60 ["subtitle"]
      240 GETTABLEKS                       R17 R1 K75 ["Gap"]
      242 GETTABLEKS                       R16 R17 K76 ["Small"]
      244 SETTABLEKS                       R16 R15 K61 ["spacing"]
      246 CALL                             R13 2 1
      247 SETTABLEKS                       R13 R12 K56 ["TileHeader"]
      249 CALL                             R9 3 1
      250 SETTABLEKS                       R9 R8 K17 ["TileContent"]
      252 CALL                             R5 3 -1
      253 RETURN                           R5 -1
      254 GETUPVAL                         R6 4
      255 GETTABLEKS                       R5 R6 K7 ["createElement"]
      257 MOVE                             R6 R2
      258 DUPTABLE                         R7 K53 [{"text", "icon", "size", "isDisabled", "variant"}]
      259 GETTABLEKS                       R9 R0 K0 ["controls"]
      261 GETTABLEKS                       R8 R9 K48 ["text"]
      263 SETTABLEKS                       R8 R7 K48 ["text"]
      265 GETTABLEKS                       R10 R0 K0 ["controls"]
      267 GETTABLEKS                       R9 R10 K49 ["icon"]
      269 JUMPIFEQKS                       R9 K54 [""] ; [+6]
      271 GETTABLEKS                       R9 R0 K0 ["controls"]
      273 GETTABLEKS                       R8 R9 K49 ["icon"]
      275 JUMP                             ; [+1]
      276 LOADNIL                          R8
      277 SETTABLEKS                       R8 R7 K49 ["icon"]
      279 GETTABLEKS                       R9 R0 K0 ["controls"]
      281 GETTABLEKS                       R8 R9 K50 ["size"]
      283 SETTABLEKS                       R8 R7 K50 ["size"]
      285 GETTABLEKS                       R9 R0 K0 ["controls"]
      287 GETTABLEKS                       R8 R9 K51 ["isDisabled"]
      289 SETTABLEKS                       R8 R7 K51 ["isDisabled"]
      291 GETTABLEKS                       R9 R0 K0 ["controls"]
      293 GETTABLEKS                       R8 R9 K52 ["variant"]
      295 SETTABLEKS                       R8 R7 K52 ["variant"]
      297 CALL                             R5 2 -1
      298 RETURN                           R5 -1

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
       17 GETTABLEKS                       R4 R2 K11 ["Dash"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["React"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R7 R1 K13 ["Enums"]
       29 GETTABLEKS                       R6 R7 K14 ["MediaType"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K10 [require]
       34 GETTABLEKS                       R8 R1 K13 ["Enums"]
       36 GETTABLEKS                       R7 R8 K15 ["Theme"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K10 [require]
       41 GETTABLEKS                       R9 R1 K16 ["Components"]
       43 GETTABLEKS                       R8 R9 K17 ["Tile"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K10 [require]
       48 GETTABLEKS                       R10 R1 K13 ["Enums"]
       50 GETTABLEKS                       R9 R10 K18 ["BadgeVariant"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K10 [require]
       55 GETTABLEKS                       R12 R1 K16 ["Components"]
       57 GETTABLEKS                       R11 R12 K19 ["Badge"]
       59 GETTABLEKS                       R10 R11 K20 ["Badge_DEPRECATED"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K10 [require]
       64 GETTABLEKS                       R13 R1 K16 ["Components"]
       66 GETTABLEKS                       R12 R13 K19 ["Badge"]
       68 GETTABLEKS                       R11 R12 K19 ["Badge"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K10 [require]
       73 GETTABLEKS                       R13 R1 K16 ["Components"]
       75 GETTABLEKS                       R12 R13 K21 ["Text"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K10 [require]
       80 GETTABLEKS                       R14 R1 K16 ["Components"]
       82 GETTABLEKS                       R13 R14 K22 ["View"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K10 [require]
       87 GETTABLEKS                       R15 R1 K23 ["Utility"]
       89 GETTABLEKS                       R14 R15 K24 ["Flags"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K10 [require]
       94 GETTABLEKS                       R17 R1 K25 ["Providers"]
       96 GETTABLEKS                       R16 R17 K26 ["Style"]
       98 GETTABLEKS                       R15 R16 K27 ["useTokens"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K30 [UDim2.fromOffset]
      103 LOADN                            R16 150
      104 LOADN                            R17 240
      105 CALL                             R15 2 1
      106 GETTABLEKS                       R16 R3 K31 ["filter"]
      108 GETTABLEKS                       R17 R3 K32 ["values"]
      110 MOVE                             R18 R8
      111 CALL                             R17 1 1
      112 DUPCLOSURE                       R18 K33 [PROTO_0]
      113 CAPTURE                          VAL R8
      114 CALL                             R16 2 1
      115 DUPTABLE                         R17 K37 [{"summary", "stories", "controls"}]
      116 LOADK                            R18 K19 ["Badge"]
      117 SETTABLEKS                       R18 R17 K34 ["summary"]
      119 NEWTABLE                         R18 0 3
      121 DUPTABLE                         R19 K40 [{"name", "story"}]
      122 LOADK                            R20 K41 ["Base"]
      123 SETTABLEKS                       R20 R19 K38 ["name"]
      125 DUPCLOSURE                       R20 K42 [PROTO_3]
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R0
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R6
      136 SETTABLEKS                       R20 R19 K39 ["story"]
      138 DUPTABLE                         R20 K40 [{"name", "story"}]
      139 LOADK                            R21 K43 ["All variants"]
      140 SETTABLEKS                       R21 R20 K38 ["name"]
      142 DUPCLOSURE                       R21 K44 [PROTO_5]
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R11
      150 SETTABLEKS                       R21 R20 K39 ["story"]
      152 DUPTABLE                         R21 K40 [{"name", "story"}]
      153 LOADK                            R22 K45 ["Deprecated variants"]
      154 SETTABLEKS                       R22 R21 K38 ["name"]
      156 DUPCLOSURE                       R22 K46 [PROTO_7]
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R9
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R12
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R11
      164 SETTABLEKS                       R22 R21 K39 ["story"]
      166 SETLIST                          R18 R19 3 [1]
      168 SETTABLEKS                       R18 R17 K35 ["stories"]
      170 DUPTABLE                         R18 K52 [{"text", "icon", "variant", "onTile", "updateBadgeDesign"}]
      171 LOADK                            R19 K53 ["Label"]
      172 SETTABLEKS                       R19 R18 K47 ["text"]
      174 NEWTABLE                         R19 0 5
      176 LOADK                            R20 K54 ["diamond-simplified"]
      177 LOADK                            R21 K55 ["house"]
      178 LOADK                            R22 K56 ["icons/placeholder/placeholderOn_small"]
      179 LOADK                            R23 K57 ["icons/menu/clothing/limited_on"]
      180 LOADK                            R24 K58 [""]
      181 SETLIST                          R19 R20 5 [1]
      183 SETTABLEKS                       R19 R18 K48 ["icon"]
      185 SETTABLEKS                       R16 R18 K49 ["variant"]
      187 LOADB                            R19 0
      188 SETTABLEKS                       R19 R18 K50 ["onTile"]
      190 GETTABLEKS                       R19 R13 K59 ["FoundationUpdateBadgeDesign"]
      192 SETTABLEKS                       R19 R18 K51 ["updateBadgeDesign"]
      194 SETTABLEKS                       R18 R17 K36 ["controls"]
      196 RETURN                           R17 1
