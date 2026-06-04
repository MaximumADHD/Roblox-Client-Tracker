PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* %* IconButton (%*) activated"]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 GETUPVAL                         R6 2
        6 NAMECALL                         R2 R2 K3 ["format"]
        8 CALL                             R2 4 1
        9 MOVE                             R1 R2
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{"icon", "variant", "onActivated", "isDisabled", "size", "isCircular"}]
        5 DUPTABLE                         R4 K9 [{"name", "variant"}]
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R5 R5 K10 ["controls"]
        9 GETTABLEKS                       R5 R5 K8 ["name"]
       11 SETTABLEKS                       R5 R4 K8 ["name"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K10 ["controls"]
       16 GETTABLEKS                       R5 R5 K2 ["variant"]
       18 SETTABLEKS                       R5 R4 K2 ["variant"]
       20 SETTABLEKS                       R4 R3 K1 ["icon"]
       22 GETUPVAL                         R4 3
       23 SETTABLEKS                       R4 R3 K2 ["variant"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       31 GETUPVAL                         R4 5
       32 GETTABLEKS                       R4 R4 K4 ["isDisabled"]
       34 SETTABLEKS                       R4 R3 K4 ["isDisabled"]
       36 SETTABLEKS                       R0 R3 K5 ["size"]
       38 GETUPVAL                         R4 5
       39 GETTABLEKS                       R4 R4 K6 ["isCircular"]
       41 SETTABLEKS                       R4 R3 K6 ["isCircular"]
       43 CALL                             R1 2 -1
       44 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R1 K1 ["colorMode"]
        4 DUPTABLE                         R3 K2 [{"colorMode"}]
        5 SETTABLEKS                       R2 R3 K1 ["colorMode"]
        7 GETUPVAL                         R4 0
        8 CALL                             R4 0 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["createElement"]
       12 GETUPVAL                         R6 2
       13 DUPTABLE                         R7 K6 [{"tag", "backgroundStyle"}]
       14 LOADK                            R8 K7 ["row align-y-center gap-medium size-0 auto-xy padding-medium radius-medium"]
       15 SETTABLEKS                       R8 R7 K4 ["tag"]
       17 GETUPVAL                         R9 3
       18 GETUPVAL                         R10 4
       19 GETTABLEKS                       R10 R10 K8 ["OverMedia"]
       21 JUMPIFNOTEQ                      R9 R10 ; [+10]
       23 GETTABLEKS                       R8 R4 K9 ["Color"]
       25 GETTABLEKS                       R8 R8 K10 ["Extended"]
       27 GETTABLEKS                       R8 R8 K11 ["White"]
       29 GETTABLEKS                       R8 R8 K12 ["White_100"]
       31 JUMP                             ; [+8]
       32 JUMPIFNOT                        R2 ; [+6]
       33 GETTABLE                         R8 R4 R2
       34 GETTABLEKS                       R8 R8 K13 ["Surface"]
       36 GETTABLEKS                       R8 R8 K14 ["Surface_100"]
       38 JUMP                             ; [+1]
       39 LOADNIL                          R8
       40 SETTABLEKS                       R8 R7 K5 ["backgroundStyle"]
       42 DUPTABLE                         R8 K17 [{"Gradient", "IconButtons"}]
       43 GETUPVAL                         R10 3
       44 GETUPVAL                         R11 4
       45 GETTABLEKS                       R11 R11 K8 ["OverMedia"]
       47 JUMPIFNOTEQ                      R10 R11 ; [+45]
       49 GETUPVAL                         R9 1
       50 GETTABLEKS                       R9 R9 K3 ["createElement"]
       52 LOADK                            R10 K18 ["UIGradient"]
       53 DUPTABLE                         R11 K19 [{"Color"}]
       54 GETIMPORT                        R12 K22 [ColorSequence.new]
       56 NEWTABLE                         R13 0 2
       58 GETIMPORT                        R14 K24 [ColorSequenceKeypoint.new]
       60 LOADN                            R15 0
       61 GETTABLEKS                       R16 R4 K9 ["Color"]
       63 GETTABLEKS                       R16 R16 K10 ["Extended"]
       65 GETTABLEKS                       R16 R16 K25 ["Green"]
       67 GETTABLEKS                       R16 R16 K26 ["Green_500"]
       69 GETTABLEKS                       R16 R16 K27 ["Color3"]
       71 CALL                             R14 2 1
       72 GETIMPORT                        R15 K24 [ColorSequenceKeypoint.new]
       74 LOADN                            R16 1
       75 GETTABLEKS                       R17 R4 K9 ["Color"]
       77 GETTABLEKS                       R17 R17 K10 ["Extended"]
       79 GETTABLEKS                       R17 R17 K28 ["Blue"]
       81 GETTABLEKS                       R17 R17 K29 ["Blue_500"]
       83 GETTABLEKS                       R17 R17 K27 ["Color3"]
       85 CALL                             R15 2 -1
       86 SETLIST                          R13 R14 -1 [1]
       88 CALL                             R12 1 1
       89 SETTABLEKS                       R12 R11 K9 ["Color"]
       91 CALL                             R9 2 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R9
       94 SETTABLEKS                       R9 R8 K15 ["Gradient"]
       96 GETUPVAL                         R9 1
       97 GETTABLEKS                       R9 R9 K3 ["createElement"]
       99 GETUPVAL                         R10 5
      100 GETTABLEKS                       R10 R10 K30 ["Provider"]
      102 DUPTABLE                         R11 K32 [{"value"}]
      103 SETTABLEKS                       R3 R11 K31 ["value"]
      105 GETUPVAL                         R12 6
      106 GETTABLEKS                       R12 R12 K33 ["map"]
      108 NEWTABLE                         R13 0 4
      110 GETUPVAL                         R14 7
      111 GETTABLEKS                       R14 R14 K34 ["Large"]
      113 GETUPVAL                         R15 7
      114 GETTABLEKS                       R15 R15 K35 ["Medium"]
      116 GETUPVAL                         R16 7
      117 GETTABLEKS                       R16 R16 K36 ["Small"]
      119 GETUPVAL                         R17 7
      120 GETTABLEKS                       R17 R17 K37 ["XSmall"]
      122 SETLIST                          R13 R14 4 [1]
      124 NEWCLOSURE                       R14 P0
      125 CAPTURE                          UPVAL U1
      126 CAPTURE                          UPVAL U8
      127 CAPTURE                          VAL R0
      128 CAPTURE                          UPVAL U3
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R1
      131 CALL                             R12 2 -1
      132 CALL                             R9 -1 1
      133 SETTABLEKS                       R9 R8 K16 ["IconButtons"]
      135 CALL                             R5 3 -1
      136 RETURN                           R5 -1

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"name", "story"}]
        1 SETTABLEKS                       R0 R1 K0 ["name"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 SETTABLEKS                       R2 R1 K1 ["story"]
       15 RETURN                           R1 1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R1 K1 ["colorMode"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 DUPTABLE                         R4 K4 [{"Default", "FixedWidth"}]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K5 ["createElement"]
       10 GETUPVAL                         R6 2
       11 DUPTABLE                         R7 K8 [{"LayoutOrder", "tag"}]
       12 LOADN                            R8 1
       13 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
       15 LOADK                            R8 K9 ["col gap-xxsmall auto-xy"]
       16 SETTABLEKS                       R8 R7 K7 ["tag"]
       18 DUPTABLE                         R8 K12 [{"Label", "Row"}]
       19 GETUPVAL                         R9 1
       20 GETTABLEKS                       R9 R9 K5 ["createElement"]
       22 GETUPVAL                         R10 3
       23 DUPTABLE                         R11 K14 [{"Text", "tag", "LayoutOrder"}]
       24 LOADK                            R12 K15 ["Default (fixed square)"]
       25 SETTABLEKS                       R12 R11 K13 ["Text"]
       27 LOADK                            R12 K16 ["auto-xy text-body-small"]
       28 SETTABLEKS                       R12 R11 K7 ["tag"]
       30 LOADN                            R12 1
       31 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       33 CALL                             R9 2 1
       34 SETTABLEKS                       R9 R8 K10 ["Label"]
       36 GETUPVAL                         R9 1
       37 GETTABLEKS                       R9 R9 K5 ["createElement"]
       39 GETUPVAL                         R10 2
       40 DUPTABLE                         R11 K17 [{"tag", "LayoutOrder"}]
       41 LOADK                            R12 K18 ["row gap-medium auto-xy"]
       42 SETTABLEKS                       R12 R11 K7 ["tag"]
       44 LOADN                            R12 2
       45 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       47 NEWTABLE                         R12 0 1
       49 GETUPVAL                         R13 1
       50 GETTABLEKS                       R13 R13 K5 ["createElement"]
       52 GETUPVAL                         R14 4
       53 DUPTABLE                         R15 K23 [{"icon", "variant", "onActivated", "size"}]
       54 DUPTABLE                         R16 K25 [{"name", "variant"}]
       55 GETTABLEKS                       R17 R1 K24 ["name"]
       57 SETTABLEKS                       R17 R16 K24 ["name"]
       59 GETTABLEKS                       R17 R1 K20 ["variant"]
       61 SETTABLEKS                       R17 R16 K20 ["variant"]
       63 SETTABLEKS                       R16 R15 K19 ["icon"]
       65 GETUPVAL                         R16 5
       66 GETTABLEKS                       R16 R16 K26 ["Emphasis"]
       68 SETTABLEKS                       R16 R15 K20 ["variant"]
       70 DUPCLOSURE                       R16 K27 [PROTO_4]
       71 SETTABLEKS                       R16 R15 K21 ["onActivated"]
       73 GETUPVAL                         R16 6
       74 GETTABLEKS                       R16 R16 K28 ["Medium"]
       76 SETTABLEKS                       R16 R15 K22 ["size"]
       78 CALL                             R13 2 -1
       79 SETLIST                          R12 R13 -1 [1]
       81 CALL                             R9 3 1
       82 SETTABLEKS                       R9 R8 K11 ["Row"]
       84 CALL                             R5 3 1
       85 SETTABLEKS                       R5 R4 K2 ["Default"]
       87 GETUPVAL                         R5 1
       88 GETTABLEKS                       R5 R5 K5 ["createElement"]
       90 GETUPVAL                         R6 2
       91 DUPTABLE                         R7 K8 [{"LayoutOrder", "tag"}]
       92 LOADN                            R8 2
       93 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
       95 LOADK                            R8 K9 ["col gap-xxsmall auto-xy"]
       96 SETTABLEKS                       R8 R7 K7 ["tag"]
       98 DUPTABLE                         R8 K12 [{"Label", "Row"}]
       99 GETUPVAL                         R9 1
      100 GETTABLEKS                       R9 R9 K5 ["createElement"]
      102 GETUPVAL                         R10 3
      103 DUPTABLE                         R11 K14 [{"Text", "tag", "LayoutOrder"}]
      104 LOADK                            R12 K29 ["Fixed width (0, 200px)"]
      105 SETTABLEKS                       R12 R11 K13 ["Text"]
      107 LOADK                            R12 K16 ["auto-xy text-body-small"]
      108 SETTABLEKS                       R12 R11 K7 ["tag"]
      110 LOADN                            R12 1
      111 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      113 CALL                             R9 2 1
      114 SETTABLEKS                       R9 R8 K10 ["Label"]
      116 GETUPVAL                         R9 1
      117 GETTABLEKS                       R9 R9 K5 ["createElement"]
      119 GETUPVAL                         R10 2
      120 DUPTABLE                         R11 K17 [{"tag", "LayoutOrder"}]
      121 LOADK                            R12 K18 ["row gap-medium auto-xy"]
      122 SETTABLEKS                       R12 R11 K7 ["tag"]
      124 LOADN                            R12 2
      125 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      127 NEWTABLE                         R12 0 1
      129 GETUPVAL                         R13 1
      130 GETTABLEKS                       R13 R13 K5 ["createElement"]
      132 GETUPVAL                         R14 4
      133 DUPTABLE                         R15 K31 [{"icon", "variant", "onActivated", "size", "width"}]
      134 DUPTABLE                         R16 K25 [{"name", "variant"}]
      135 GETTABLEKS                       R17 R1 K24 ["name"]
      137 SETTABLEKS                       R17 R16 K24 ["name"]
      139 GETTABLEKS                       R17 R1 K20 ["variant"]
      141 SETTABLEKS                       R17 R16 K20 ["variant"]
      143 SETTABLEKS                       R16 R15 K19 ["icon"]
      145 GETUPVAL                         R16 5
      146 GETTABLEKS                       R16 R16 K26 ["Emphasis"]
      148 SETTABLEKS                       R16 R15 K20 ["variant"]
      150 DUPCLOSURE                       R16 K32 [PROTO_5]
      151 SETTABLEKS                       R16 R15 K21 ["onActivated"]
      153 GETUPVAL                         R16 6
      154 GETTABLEKS                       R16 R16 K28 ["Medium"]
      156 SETTABLEKS                       R16 R15 K22 ["size"]
      158 GETIMPORT                        R16 K35 [UDim.new]
      160 LOADN                            R17 0
      161 LOADN                            R18 200
      162 CALL                             R16 2 1
      163 SETTABLEKS                       R16 R15 K30 ["width"]
      165 CALL                             R13 2 -1
      166 SETLIST                          R12 R13 -1 [1]
      168 CALL                             R9 3 1
      169 SETTABLEKS                       R9 R8 K11 ["Row"]
      171 CALL                             R5 3 1
      172 SETTABLEKS                       R5 R4 K3 ["FixedWidth"]
      174 GETUPVAL                         R5 7
      175 GETTABLEKS                       R5 R5 K36 ["FoundationIconButtonFillBehavior"]
      177 JUMPIFNOT                        R5 ; [+101]
      178 GETUPVAL                         R5 1
      179 GETTABLEKS                       R5 R5 K5 ["createElement"]
      181 GETUPVAL                         R6 2
      182 DUPTABLE                         R7 K8 [{"LayoutOrder", "tag"}]
      183 LOADN                            R8 4
      184 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
      186 LOADK                            R8 K9 ["col gap-xxsmall auto-xy"]
      187 SETTABLEKS                       R8 R7 K7 ["tag"]
      189 DUPTABLE                         R8 K12 [{"Label", "Row"}]
      190 GETUPVAL                         R9 1
      191 GETTABLEKS                       R9 R9 K5 ["createElement"]
      193 GETUPVAL                         R10 3
      194 DUPTABLE                         R11 K14 [{"Text", "tag", "LayoutOrder"}]
      195 LOADK                            R12 K37 ["fillBehavior.Fill takes precedence over width=200px"]
      196 SETTABLEKS                       R12 R11 K13 ["Text"]
      198 LOADK                            R12 K16 ["auto-xy text-body-small"]
      199 SETTABLEKS                       R12 R11 K7 ["tag"]
      201 LOADN                            R12 1
      202 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      204 CALL                             R9 2 1
      205 SETTABLEKS                       R9 R8 K10 ["Label"]
      207 GETUPVAL                         R9 1
      208 GETTABLEKS                       R9 R9 K5 ["createElement"]
      210 GETUPVAL                         R10 2
      211 DUPTABLE                         R11 K39 [{"tag", "LayoutOrder", "Size"}]
      212 LOADK                            R12 K40 ["row size-full-0 auto-xy"]
      213 SETTABLEKS                       R12 R11 K7 ["tag"]
      215 LOADN                            R12 2
      216 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      218 GETIMPORT                        R12 K42 [UDim2.new]
      220 LOADN                            R13 1
      221 LOADN                            R14 0
      222 LOADN                            R15 0
      223 LOADN                            R16 60
      224 CALL                             R12 4 1
      225 SETTABLEKS                       R12 R11 K38 ["Size"]
      227 NEWTABLE                         R12 0 1
      229 GETUPVAL                         R13 1
      230 GETTABLEKS                       R13 R13 K5 ["createElement"]
      232 GETUPVAL                         R14 4
      233 DUPTABLE                         R15 K44 [{"icon", "variant", "onActivated", "size", "width", "fillBehavior"}]
      234 DUPTABLE                         R16 K25 [{"name", "variant"}]
      235 GETTABLEKS                       R17 R1 K24 ["name"]
      237 SETTABLEKS                       R17 R16 K24 ["name"]
      239 GETTABLEKS                       R17 R1 K20 ["variant"]
      241 SETTABLEKS                       R17 R16 K20 ["variant"]
      243 SETTABLEKS                       R16 R15 K19 ["icon"]
      245 GETUPVAL                         R16 5
      246 GETTABLEKS                       R16 R16 K26 ["Emphasis"]
      248 SETTABLEKS                       R16 R15 K20 ["variant"]
      250 DUPCLOSURE                       R16 K45 [PROTO_6]
      251 SETTABLEKS                       R16 R15 K21 ["onActivated"]
      253 GETUPVAL                         R16 6
      254 GETTABLEKS                       R16 R16 K28 ["Medium"]
      256 SETTABLEKS                       R16 R15 K22 ["size"]
      258 GETIMPORT                        R16 K35 [UDim.new]
      260 LOADN                            R17 0
      261 LOADN                            R18 200
      262 CALL                             R16 2 1
      263 SETTABLEKS                       R16 R15 K30 ["width"]
      265 GETUPVAL                         R16 8
      266 GETTABLEKS                       R16 R16 K46 ["Fill"]
      268 SETTABLEKS                       R16 R15 K43 ["fillBehavior"]
      270 CALL                             R13 2 -1
      271 SETLIST                          R12 R13 -1 [1]
      273 CALL                             R9 3 1
      274 SETTABLEKS                       R9 R8 K11 ["Row"]
      276 CALL                             R5 3 1
      277 SETTABLEKS                       R5 R4 K47 ["FillBehaviorTakesPrecedence"]
      279 GETUPVAL                         R5 1
      280 GETTABLEKS                       R5 R5 K5 ["createElement"]
      282 GETUPVAL                         R6 2
      283 DUPTABLE                         R7 K49 [{"tag", "backgroundStyle"}]
      284 LOADK                            R8 K50 ["col gap-large size-full-0 auto-xy padding-large radius-medium"]
      285 SETTABLEKS                       R8 R7 K7 ["tag"]
      287 JUMPIFNOT                        R2 ; [+6]
      288 GETTABLE                         R8 R3 R2
      289 GETTABLEKS                       R8 R8 K51 ["Surface"]
      291 GETTABLEKS                       R8 R8 K52 ["Surface_100"]
      293 JUMP                             ; [+1]
      294 LOADNIL                          R8
      295 SETTABLEKS                       R8 R7 K48 ["backgroundStyle"]
      297 MOVE                             R8 R4
      298 CALL                             R5 3 -1
      299 RETURN                           R5 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* IconButton row %* activated"]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 NAMECALL                         R2 R2 K3 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* IconButton row %* activated"]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 NAMECALL                         R2 R2 K3 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["%* IconButton row %* activated"]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 NAMECALL                         R2 R2 K3 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R1 K1 ["colorMode"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R5 R1 K2 ["fillBehavior"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K3 ["None"]
       11 JUMPIFNOTEQ                      R5 R6 ; [+3]
       13 LOADNIL                          R4
       14 JUMP                             ; [+2]
       15 GETTABLEKS                       R4 R1 K2 ["fillBehavior"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K4 ["createElement"]
       20 GETUPVAL                         R6 2
       21 DUPTABLE                         R7 K7 [{"tag", "backgroundStyle"}]
       22 LOADK                            R8 K8 ["row gap-medium size-full-0 auto-y padding-medium radius-medium"]
       23 SETTABLEKS                       R8 R7 K5 ["tag"]
       25 JUMPIFNOT                        R2 ; [+6]
       26 GETTABLE                         R8 R3 R2
       27 GETTABLEKS                       R8 R8 K9 ["Surface"]
       29 GETTABLEKS                       R8 R8 K10 ["Surface_100"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R8
       33 SETTABLEKS                       R8 R7 K6 ["backgroundStyle"]
       35 DUPTABLE                         R8 K14 [{"One", "Two", "Three"}]
       36 GETUPVAL                         R9 1
       37 GETTABLEKS                       R9 R9 K4 ["createElement"]
       39 GETUPVAL                         R10 3
       40 DUPTABLE                         R11 K21 [{"icon", "variant", "onActivated", "isDisabled", "size", "isCircular", "fillBehavior"}]
       41 DUPTABLE                         R12 K23 [{"name", "variant"}]
       42 GETTABLEKS                       R13 R1 K22 ["name"]
       44 SETTABLEKS                       R13 R12 K22 ["name"]
       46 GETTABLEKS                       R13 R1 K16 ["variant"]
       48 SETTABLEKS                       R13 R12 K16 ["variant"]
       50 SETTABLEKS                       R12 R11 K15 ["icon"]
       52 GETUPVAL                         R12 4
       53 GETTABLEKS                       R12 R12 K24 ["Emphasis"]
       55 SETTABLEKS                       R12 R11 K16 ["variant"]
       57 NEWCLOSURE                       R12 P0
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R12 R11 K17 ["onActivated"]
       62 GETTABLEKS                       R12 R1 K18 ["isDisabled"]
       64 SETTABLEKS                       R12 R11 K18 ["isDisabled"]
       66 GETUPVAL                         R12 5
       67 GETTABLEKS                       R12 R12 K25 ["Medium"]
       69 SETTABLEKS                       R12 R11 K19 ["size"]
       71 GETTABLEKS                       R12 R1 K20 ["isCircular"]
       73 SETTABLEKS                       R12 R11 K20 ["isCircular"]
       75 SETTABLEKS                       R4 R11 K2 ["fillBehavior"]
       77 CALL                             R9 2 1
       78 SETTABLEKS                       R9 R8 K11 ["One"]
       80 GETUPVAL                         R9 1
       81 GETTABLEKS                       R9 R9 K4 ["createElement"]
       83 GETUPVAL                         R10 3
       84 DUPTABLE                         R11 K21 [{"icon", "variant", "onActivated", "isDisabled", "size", "isCircular", "fillBehavior"}]
       85 DUPTABLE                         R12 K23 [{"name", "variant"}]
       86 GETTABLEKS                       R13 R1 K22 ["name"]
       88 SETTABLEKS                       R13 R12 K22 ["name"]
       90 GETTABLEKS                       R13 R1 K16 ["variant"]
       92 SETTABLEKS                       R13 R12 K16 ["variant"]
       94 SETTABLEKS                       R12 R11 K15 ["icon"]
       96 GETUPVAL                         R12 4
       97 GETTABLEKS                       R12 R12 K26 ["Utility"]
       99 SETTABLEKS                       R12 R11 K16 ["variant"]
      101 NEWCLOSURE                       R12 P1
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R4
      104 SETTABLEKS                       R12 R11 K17 ["onActivated"]
      106 GETTABLEKS                       R12 R1 K18 ["isDisabled"]
      108 SETTABLEKS                       R12 R11 K18 ["isDisabled"]
      110 GETUPVAL                         R12 5
      111 GETTABLEKS                       R12 R12 K25 ["Medium"]
      113 SETTABLEKS                       R12 R11 K19 ["size"]
      115 GETTABLEKS                       R12 R1 K20 ["isCircular"]
      117 SETTABLEKS                       R12 R11 K20 ["isCircular"]
      119 SETTABLEKS                       R4 R11 K2 ["fillBehavior"]
      121 CALL                             R9 2 1
      122 SETTABLEKS                       R9 R8 K12 ["Two"]
      124 GETUPVAL                         R9 1
      125 GETTABLEKS                       R9 R9 K4 ["createElement"]
      127 GETUPVAL                         R10 3
      128 DUPTABLE                         R11 K21 [{"icon", "variant", "onActivated", "isDisabled", "size", "isCircular", "fillBehavior"}]
      129 DUPTABLE                         R12 K23 [{"name", "variant"}]
      130 GETTABLEKS                       R13 R1 K22 ["name"]
      132 SETTABLEKS                       R13 R12 K22 ["name"]
      134 GETTABLEKS                       R13 R1 K16 ["variant"]
      136 SETTABLEKS                       R13 R12 K16 ["variant"]
      138 SETTABLEKS                       R12 R11 K15 ["icon"]
      140 GETUPVAL                         R12 4
      141 GETTABLEKS                       R12 R12 K26 ["Utility"]
      143 SETTABLEKS                       R12 R11 K16 ["variant"]
      145 NEWCLOSURE                       R12 P2
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R4
      148 SETTABLEKS                       R12 R11 K17 ["onActivated"]
      150 GETTABLEKS                       R12 R1 K18 ["isDisabled"]
      152 SETTABLEKS                       R12 R11 K18 ["isDisabled"]
      154 GETUPVAL                         R12 5
      155 GETTABLEKS                       R12 R12 K25 ["Medium"]
      157 SETTABLEKS                       R12 R11 K19 ["size"]
      159 GETTABLEKS                       R12 R1 K20 ["isCircular"]
      161 SETTABLEKS                       R12 R11 K20 ["isCircular"]
      163 SETTABLEKS                       R4 R11 K2 ["fillBehavior"]
      165 CALL                             R9 2 1
      166 SETTABLEKS                       R9 R8 K13 ["Three"]
      168 CALL                             R5 3 -1
      169 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Enums"]
       28 GETTABLEKS                       R6 R6 K11 ["ColorMode"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K10 ["Enums"]
       35 GETTABLEKS                       R7 R7 K12 ["FillBehavior"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K13 ["Components"]
       42 GETTABLEKS                       R8 R8 K14 ["IconButton"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K15 ["Providers"]
       49 GETTABLEKS                       R9 R9 K16 ["Style"]
       51 GETTABLEKS                       R9 R9 K17 ["PresentationContext"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K13 ["Components"]
       58 GETTABLEKS                       R10 R10 K18 ["Text"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K13 ["Components"]
       65 GETTABLEKS                       R11 R11 K19 ["View"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K15 ["Providers"]
       72 GETTABLEKS                       R12 R12 K16 ["Style"]
       74 GETTABLEKS                       R12 R12 K20 ["useTokens"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K10 ["Enums"]
       81 GETTABLEKS                       R13 R13 K21 ["InputSize"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K10 ["Enums"]
       88 GETTABLEKS                       R14 R14 K22 ["ButtonVariant"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R15 R0 K23 ["Utility"]
       95 GETTABLEKS                       R15 R15 K24 ["Flags"]
       97 CALL                             R14 1 1
       98 NEWTABLE                         R15 0 5
      100 GETTABLEKS                       R16 R13 K23 ["Utility"]
      102 GETTABLEKS                       R17 R13 K25 ["Standard"]
      104 GETTABLEKS                       R18 R13 K26 ["Emphasis"]
      106 GETTABLEKS                       R19 R13 K27 ["OverMedia"]
      108 GETTABLEKS                       R20 R13 K28 ["Alert"]
      110 SETLIST                          R15 R16 5 [1]
      112 GETTABLEKS                       R16 R3 K29 ["map"]
      114 MOVE                             R17 R15
      115 DUPCLOSURE                       R18 K30 [PROTO_3]
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R7
      124 CALL                             R16 2 1
      125 DUPTABLE                         R19 K34 [{"name", "summary", "story"}]
      126 LOADK                            R20 K35 ["Width"]
      127 SETTABLEKS                       R20 R19 K31 ["name"]
      129 LOADK                            R20 K36 ["Width, fillBehavior, and precedence. Default uses the fixed square size from the variant system. Width (scale or offset) overrides. fillBehavior.Fill takes precedence over width."]
      130 SETTABLEKS                       R20 R19 K32 ["summary"]
      132 DUPCLOSURE                       R20 K37 [PROTO_7]
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R6
      142 SETTABLEKS                       R20 R19 K33 ["story"]
      144 FASTCALL2                        TABLE_INSERT R16 R19 ; [+4]
      146 MOVE                             R18 R16
      147 GETIMPORT                        R17 K40 [table.insert]
      149 CALL                             R17 2 0
      150 GETTABLEKS                       R17 R14 K41 ["FoundationIconButtonFillBehavior"]
      152 JUMPIFNOT                        R17 ; [+19]
      153 DUPTABLE                         R19 K42 [{"name", "story"}]
      154 LOADK                            R20 K12 ["FillBehavior"]
      155 SETTABLEKS                       R20 R19 K31 ["name"]
      157 DUPCLOSURE                       R20 K43 [PROTO_11]
      158 CAPTURE                          VAL R11
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R10
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R13
      163 CAPTURE                          VAL R12
      164 SETTABLEKS                       R20 R19 K33 ["story"]
      166 FASTCALL2                        TABLE_INSERT R16 R19 ; [+4]
      168 MOVE                             R18 R16
      169 GETIMPORT                        R17 K40 [table.insert]
      171 CALL                             R17 2 0
      172 DUPTABLE                         R17 K46 [{"summary", "stories", "controls"}]
      173 LOADK                            R18 K14 ["IconButton"]
      174 SETTABLEKS                       R18 R17 K32 ["summary"]
      176 SETTABLEKS                       R16 R17 K44 ["stories"]
      178 DUPTABLE                         R18 K52 [{"name", "variant", "isDisabled", "isCircular", "colorMode", "fillBehavior"}]
      179 NEWTABLE                         R19 0 6
      181 LOADK                            R20 K53 ["play-small"]
      182 LOADK                            R21 K54 ["play-large"]
      183 LOADK                            R22 K55 ["play-xlarge"]
      184 LOADK                            R23 K56 ["robux"]
      185 LOADK                            R24 K57 ["heart"]
      186 LOADK                            R25 K58 ["glasses"]
      187 SETLIST                          R19 R20 6 [1]
      189 SETTABLEKS                       R19 R18 K31 ["name"]
      191 GETTABLEKS                       R19 R3 K59 ["values"]
      193 GETTABLEKS                       R20 R2 K60 ["IconVariant"]
      195 CALL                             R19 1 1
      196 SETTABLEKS                       R19 R18 K47 ["variant"]
      198 LOADB                            R19 0
      199 SETTABLEKS                       R19 R18 K48 ["isDisabled"]
      201 LOADB                            R19 0
      202 SETTABLEKS                       R19 R18 K49 ["isCircular"]
      204 GETTABLEKS                       R19 R3 K59 ["values"]
      206 MOVE                             R20 R5
      207 CALL                             R19 1 1
      208 SETTABLEKS                       R19 R18 K50 ["colorMode"]
      210 GETTABLEKS                       R20 R14 K41 ["FoundationIconButtonFillBehavior"]
      212 JUMPIFNOT                        R20 ; [+11]
      213 NEWTABLE                         R19 0 3
      215 GETTABLEKS                       R20 R4 K61 ["None"]
      217 GETTABLEKS                       R21 R6 K62 ["Fit"]
      219 GETTABLEKS                       R22 R6 K63 ["Fill"]
      221 SETLIST                          R19 R20 3 [1]
      223 JUMP                             ; [+1]
      224 LOADNIL                          R19
      225 SETTABLEKS                       R19 R18 K51 ["fillBehavior"]
      227 SETTABLEKS                       R18 R17 K45 ["controls"]
      229 RETURN                           R17 1
