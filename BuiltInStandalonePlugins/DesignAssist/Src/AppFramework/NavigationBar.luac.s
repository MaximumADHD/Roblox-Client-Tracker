PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Size"]
        2 GETTABLEKS                       R3 R3 K1 ["Size_600"]
        4 LOADNIL                          R4
        5 GETTABLEKS                       R5 R1 K2 ["userId"]
        7 JUMPIFEQKNIL                     R5 ; [+70]
        9 JUMPIFNOT                        R2 ; [+7]
       10 GETTABLEKS                       R5 R0 K3 ["Color"]
       12 GETTABLEKS                       R5 R5 K4 ["Content"]
       14 GETTABLEKS                       R5 R5 K5 ["Emphasis"]
       16 JUMP                             ; [+6]
       17 GETTABLEKS                       R5 R0 K3 ["Color"]
       19 GETTABLEKS                       R5 R5 K6 ["Stroke"]
       21 GETTABLEKS                       R5 R5 K7 ["Default"]
       23 JUMPIFNOT                        R2 ; [+5]
       24 GETTABLEKS                       R6 R0 K6 ["Stroke"]
       26 GETTABLEKS                       R6 R6 K8 ["Thicker"]
       28 JUMP                             ; [+4]
       29 GETTABLEKS                       R6 R0 K6 ["Stroke"]
       31 GETTABLEKS                       R6 R6 K9 ["Standard"]
       33 GETUPVAL                         R7 0
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R8 R8 K10 ["Image"]
       37 DUPTABLE                         R9 K17 [{["testId"] = "--appkit-nav-bar-avatar", ["Image"], ["ScaleType"], [4], ["stroke"], ["tag"] = "radius-circle"}]
       38 LOADK                            R11 K18 ["rbxthumb://type=AvatarHeadShot&id=%*&w=150&h=150"]
       39 GETTABLEKS                       R13 R1 K2 ["userId"]
       41 NAMECALL                         R11 R11 K19 ["format"]
       43 CALL                             R11 2 1
       44 MOVE                             R10 R11
       45 SETTABLEKS                       R10 R9 K10 ["Image"]
       47 GETIMPORT                        R10 K22 [Enum.ScaleType.Crop]
       49 SETTABLEKS                       R10 R9 K13 ["ScaleType"]
       51 GETIMPORT                        R10 K25 [UDim2.fromScale]
       53 LOADN                            R11 1
       54 LOADN                            R12 1
       55 CALL                             R10 2 1
       56 SETTABLEKS                       R10 R9 K0 ["Size"]
       58 DUPTABLE                         R10 K29 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
       59 GETTABLEKS                       R11 R5 K30 ["Color3"]
       61 SETTABLEKS                       R11 R10 K3 ["Color"]
       63 GETTABLEKS                       R11 R5 K26 ["Transparency"]
       65 SETTABLEKS                       R11 R10 K26 ["Transparency"]
       67 SETTABLEKS                       R6 R10 K27 ["Thickness"]
       69 GETIMPORT                        R11 K32 [Enum.BorderStrokePosition.Inner]
       71 SETTABLEKS                       R11 R10 K28 ["BorderStrokePosition"]
       73 SETTABLEKS                       R10 R9 K14 ["stroke"]
       75 CALL                             R7 2 1
       76 MOVE                             R4 R7
       77 JUMP                             ; [+121]
       78 GETTABLEKS                       R5 R1 K33 ["avatarSrc"]
       80 JUMPIFEQKNIL                     R5 ; [+60]
       82 GETUPVAL                         R5 0
       83 GETUPVAL                         R6 1
       84 GETTABLEKS                       R6 R6 K10 ["Image"]
       86 DUPTABLE                         R7 K34 [{["Image"], ["ScaleType"], [3], ["stroke"], ["tag"] = "radius-circle"}]
       87 GETTABLEKS                       R8 R1 K33 ["avatarSrc"]
       89 SETTABLEKS                       R8 R7 K10 ["Image"]
       91 GETIMPORT                        R8 K22 [Enum.ScaleType.Crop]
       93 SETTABLEKS                       R8 R7 K13 ["ScaleType"]
       95 GETIMPORT                        R8 K25 [UDim2.fromScale]
       97 LOADN                            R9 1
       98 LOADN                            R10 1
       99 CALL                             R8 2 1
      100 SETTABLEKS                       R8 R7 K0 ["Size"]
      102 JUMPIFNOT                        R2 ; [+32]
      103 DUPTABLE                         R8 K29 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      104 GETTABLEKS                       R9 R0 K3 ["Color"]
      106 GETTABLEKS                       R9 R9 K4 ["Content"]
      108 GETTABLEKS                       R9 R9 K5 ["Emphasis"]
      110 GETTABLEKS                       R9 R9 K30 ["Color3"]
      112 SETTABLEKS                       R9 R8 K3 ["Color"]
      114 GETTABLEKS                       R9 R0 K3 ["Color"]
      116 GETTABLEKS                       R9 R9 K4 ["Content"]
      118 GETTABLEKS                       R9 R9 K5 ["Emphasis"]
      120 GETTABLEKS                       R9 R9 K26 ["Transparency"]
      122 SETTABLEKS                       R9 R8 K26 ["Transparency"]
      124 GETTABLEKS                       R9 R0 K6 ["Stroke"]
      126 GETTABLEKS                       R9 R9 K8 ["Thicker"]
      128 SETTABLEKS                       R9 R8 K27 ["Thickness"]
      130 GETIMPORT                        R9 K32 [Enum.BorderStrokePosition.Inner]
      132 SETTABLEKS                       R9 R8 K28 ["BorderStrokePosition"]
      134 JUMP                             ; [+1]
      135 LOADNIL                          R8
      136 SETTABLEKS                       R8 R7 K14 ["stroke"]
      138 CALL                             R5 2 1
      139 MOVE                             R4 R5
      140 JUMP                             ; [+58]
      141 JUMPIFNOT                        R2 ; [+7]
      142 GETTABLEKS                       R6 R1 K35 ["activeIcon"]
      144 JUMPIFEQKNIL                     R6 ; [+4]
      146 GETTABLEKS                       R5 R1 K35 ["activeIcon"]
      148 JUMP                             ; [+2]
      149 GETTABLEKS                       R5 R1 K36 ["icon"]
      151 JUMPIFEQKNIL                     R5 ; [+46]
      153 GETUPVAL                         R6 0
      154 GETUPVAL                         R7 1
      155 GETTABLEKS                       R7 R7 K37 ["Icon"]
      157 DUPTABLE                         R8 K42 [{"name", "variant", "size", "style"}]
      158 SETTABLEKS                       R5 R8 K38 ["name"]
      160 JUMPIFNOT                        R2 ; [+8]
      161 GETUPVAL                         R9 1
      162 GETTABLEKS                       R9 R9 K43 ["Enums"]
      164 GETTABLEKS                       R9 R9 K44 ["IconVariant"]
      166 GETTABLEKS                       R9 R9 K45 ["Filled"]
      168 JUMP                             ; [+7]
      169 GETUPVAL                         R9 1
      170 GETTABLEKS                       R9 R9 K43 ["Enums"]
      172 GETTABLEKS                       R9 R9 K44 ["IconVariant"]
      174 GETTABLEKS                       R9 R9 K46 ["Regular"]
      176 SETTABLEKS                       R9 R8 K39 ["variant"]
      178 GETUPVAL                         R9 1
      179 GETTABLEKS                       R9 R9 K43 ["Enums"]
      181 GETTABLEKS                       R9 R9 K47 ["IconSize"]
      183 GETTABLEKS                       R9 R9 K48 ["Large"]
      185 SETTABLEKS                       R9 R8 K40 ["size"]
      187 GETTABLEKS                       R9 R0 K3 ["Color"]
      189 GETTABLEKS                       R9 R9 K4 ["Content"]
      191 GETTABLEKS                       R9 R9 K5 ["Emphasis"]
      193 SETTABLEKS                       R9 R8 K41 ["style"]
      195 CALL                             R6 2 1
      196 MOVE                             R4 R6
      197 JUMP                             ; [+1]
      198 LOADNIL                          R4
      199 DUPTABLE                         R5 K49 [{"Content"}]
      200 GETUPVAL                         R6 0
      201 GETUPVAL                         R7 1
      202 GETTABLEKS                       R7 R7 K50 ["View"]
      204 DUPTABLE                         R8 K52 [{[1], ["tag"] = "row align-x-center align-y-center"}]
      205 GETIMPORT                        R9 K25 [UDim2.fromScale]
      207 LOADN                            R10 1
      208 LOADN                            R11 1
      209 CALL                             R9 2 1
      210 SETTABLEKS                       R9 R8 K0 ["Size"]
      212 DUPTABLE                         R9 K54 [{"C"}]
      213 SETTABLEKS                       R4 R9 K53 ["C"]
      215 CALL                             R6 3 1
      216 SETTABLEKS                       R6 R5 K4 ["Content"]
      218 GETTABLEKS                       R6 R1 K55 ["hasStatus"]
      220 JUMPIFNOT                        R6 ; [+66]
      221 GETTABLEKS                       R6 R0 K0 ["Size"]
      223 GETTABLEKS                       R6 R6 K56 ["Size_300"]
      225 GETTABLEKS                       R7 R0 K0 ["Size"]
      227 GETTABLEKS                       R7 R7 K57 ["Size_50"]
      229 GETTABLEKS                       R8 R0 K6 ["Stroke"]
      231 GETTABLEKS                       R8 R8 K8 ["Thicker"]
      233 GETTABLEKS                       R9 R0 K3 ["Color"]
      235 GETTABLEKS                       R9 R9 K58 ["Surface"]
      237 GETTABLEKS                       R9 R9 K59 ["Surface_0"]
      239 GETUPVAL                         R10 0
      240 GETUPVAL                         R11 1
      241 GETTABLEKS                       R11 R11 K50 ["View"]
      243 DUPTABLE                         R12 K65 [{["AnchorPoint"], ["Position"], [3], ["ZIndex"] = 3, ["tag"] = "radius-circle bg-system-emphasis", ["stroke"]}]
      244 GETIMPORT                        R13 K68 [Vector2.new]
      246 LOADN                            R14 1
      247 LOADN                            R15 0
      248 CALL                             R13 2 1
      249 SETTABLEKS                       R13 R12 K60 ["AnchorPoint"]
      251 GETIMPORT                        R13 K69 [UDim2.new]
      253 LOADN                            R14 1
      254 MOVE                             R15 R7
      255 LOADN                            R16 0
      256 MINUS                            R17 R7
      257 CALL                             R13 4 1
      258 SETTABLEKS                       R13 R12 K61 ["Position"]
      260 GETIMPORT                        R13 K71 [UDim2.fromOffset]
      262 MOVE                             R14 R6
      263 MOVE                             R15 R6
      264 CALL                             R13 2 1
      265 SETTABLEKS                       R13 R12 K0 ["Size"]
      267 DUPTABLE                         R13 K29 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      268 GETTABLEKS                       R14 R9 K30 ["Color3"]
      270 SETTABLEKS                       R14 R13 K3 ["Color"]
      272 GETTABLEKS                       R14 R9 K26 ["Transparency"]
      274 SETTABLEKS                       R14 R13 K26 ["Transparency"]
      276 SETTABLEKS                       R8 R13 K27 ["Thickness"]
      278 GETIMPORT                        R14 K73 [Enum.BorderStrokePosition.Outer]
      280 SETTABLEKS                       R14 R13 K28 ["BorderStrokePosition"]
      282 SETTABLEKS                       R13 R12 K14 ["stroke"]
      284 CALL                             R10 2 1
      285 SETTABLEKS                       R10 R5 K74 ["Status"]
      287 GETUPVAL                         R6 0
      288 GETUPVAL                         R7 1
      289 GETTABLEKS                       R7 R7 K50 ["View"]
      291 DUPTABLE                         R8 K77 [{["LayoutOrder"] = 1, [2]}]
      292 GETIMPORT                        R9 K71 [UDim2.fromOffset]
      294 MOVE                             R10 R3
      295 MOVE                             R11 R3
      296 CALL                             R9 2 1
      297 SETTABLEKS                       R9 R8 K0 ["Size"]
      299 MOVE                             R9 R5
      300 CALL                             R6 3 -1
      301 RETURN                           R6 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R0 K2 ["item"]
        8 GETTABLEKS                       R4 R2 K3 ["disabled"]
       10 JUMPIFEQKB                       R4 TRUE ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 DUPTABLE                         R4 K5 [{"Leading"}]
       15 GETUPVAL                         R5 1
       16 MOVE                             R6 R1
       17 MOVE                             R7 R2
       18 GETTABLEKS                       R8 R0 K6 ["selected"]
       20 CALL                             R5 3 1
       21 SETTABLEKS                       R5 R4 K4 ["Leading"]
       23 GETTABLEKS                       R5 R2 K7 ["label"]
       25 JUMPIFEQKNIL                     R5 ; [+26]
       27 GETUPVAL                         R5 2
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K8 ["Text"]
       31 DUPTABLE                         R7 K15 [{["Text"], ["LayoutOrder"] = 2, ["Size"], ["AutomaticSize"], ["tag"] = "text-caption-small content-emphasis text-align-x-center text-truncate-end"}]
       32 GETTABLEKS                       R8 R2 K7 ["label"]
       34 SETTABLEKS                       R8 R7 K8 ["Text"]
       36 GETIMPORT                        R8 K18 [UDim2.new]
       38 LOADN                            R9 1
       39 LOADN                            R10 0
       40 LOADN                            R11 0
       41 LOADN                            R12 0
       42 CALL                             R8 4 1
       43 SETTABLEKS                       R8 R7 K11 ["Size"]
       45 GETIMPORT                        R8 K21 [Enum.AutomaticSize.Y]
       47 SETTABLEKS                       R8 R7 K12 ["AutomaticSize"]
       49 CALL                             R5 2 1
       50 SETTABLEKS                       R5 R4 K22 ["Label"]
       52 GETUPVAL                         R5 2
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R6 R6 K23 ["View"]
       56 DUPTABLE                         R7 K29 [{["testId"], ["onActivated"], ["isDisabled"], ["GroupTransparency"], ["LayoutOrder"], ["Size"], ["tag"] = "col align-x-center align-y-center gap-xsmall padding-y-small padding-x-xsmall radius-medium"}]
       57 LOADK                            R9 K30 ["--appkit-nav-bar-item-%*"]
       58 GETTABLEKS                       R11 R2 K31 ["key"]
       60 NAMECALL                         R9 R9 K32 ["format"]
       62 CALL                             R9 2 1
       63 MOVE                             R8 R9
       64 SETTABLEKS                       R8 R7 K24 ["testId"]
       66 JUMPIFNOT                        R3 ; [+2]
       67 LOADNIL                          R8
       68 JUMP                             ; [+2]
       69 GETTABLEKS                       R8 R0 K25 ["onActivated"]
       71 SETTABLEKS                       R8 R7 K25 ["onActivated"]
       73 SETTABLEKS                       R3 R7 K26 ["isDisabled"]
       75 JUMPIFNOT                        R3 ; [+2]
       76 LOADK                            R8 K33 [0.5]
       77 JUMP                             ; [+1]
       78 LOADNIL                          R8
       79 SETTABLEKS                       R8 R7 K27 ["GroupTransparency"]
       81 GETTABLEKS                       R8 R0 K9 ["LayoutOrder"]
       83 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       85 GETIMPORT                        R8 K18 [UDim2.new]
       87 GETTABLEKS                       R9 R0 K34 ["widthScale"]
       89 LOADN                            R10 0
       90 LOADN                            R11 1
       91 LOADN                            R12 0
       92 CALL                             R8 4 1
       93 SETTABLEKS                       R8 R7 K11 ["Size"]
       95 MOVE                             R8 R4
       96 CALL                             R5 3 -1
       97 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["key"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R0 K2 ["onSelect"]
        8 GETTABLEKS                       R3 R0 K3 ["items"]
       10 JUMPIF                           R3 ; [+4]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R4 R0 K4 ["userId"]
       14 CALL                             R3 1 1
       15 LENGTH                           R4 R3
       16 LOADN                            R6 0
       17 JUMPIFNOTLT                      R6 R4 ; [+3]
       19 DIVRK                            R5 K5 [1] R4
       20 JUMP                             ; [+1]
       21 LOADN                            R5 1
       22 NEWTABLE                         R6 0 0
       24 GETIMPORT                        R7 K7 [ipairs]
       26 MOVE                             R8 R3
       27 CALL                             R7 1 3
       28 FORGPREP_INEXT                   R7
       29 GETTABLEKS                       R12 R11 K8 ["key"]
       31 GETUPVAL                         R13 2
       32 GETUPVAL                         R14 3
       33 DUPTABLE                         R15 K14 [{"item", "selected", "LayoutOrder", "widthScale", "onActivated"}]
       34 SETTABLEKS                       R11 R15 K9 ["item"]
       36 GETTABLEKS                       R17 R0 K15 ["selectedKey"]
       38 GETTABLEKS                       R18 R11 K8 ["key"]
       40 JUMPIFEQ                         R17 R18 ; [+2]
       42 LOADB                            R16 0 +1
       43 LOADB                            R16 1
       44 SETTABLEKS                       R16 R15 K10 ["selected"]
       46 SETTABLEKS                       R10 R15 K11 ["LayoutOrder"]
       48 SETTABLEKS                       R5 R15 K12 ["widthScale"]
       50 NEWCLOSURE                       R16 P0
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R11
       53 SETTABLEKS                       R16 R15 K13 ["onActivated"]
       55 CALL                             R13 2 1
       56 SETTABLE                         R13 R6 R12
       57 FORGLOOP                         R7 2 [inext] ; [-29]
       59 GETTABLEKS                       R7 R1 K16 ["Size"]
       61 GETTABLEKS                       R7 R7 K17 ["Size_700"]
       63 GETTABLEKS                       R8 R1 K18 ["Padding"]
       65 GETTABLEKS                       R8 R8 K19 ["XSmall"]
       67 GETTABLEKS                       R12 R1 K16 ["Size"]
       69 GETTABLEKS                       R12 R12 K20 ["Size_600"]
       71 GETTABLEKS                       R13 R1 K21 ["Gap"]
       73 GETTABLEKS                       R13 R13 K19 ["XSmall"]
       75 ADD                              R11 R12 R13
       76 GETTABLEKS                       R12 R1 K16 ["Size"]
       78 GETTABLEKS                       R12 R12 K22 ["Size_500"]
       80 ADD                              R10 R11 R12
       81 GETTABLEKS                       R12 R1 K18 ["Padding"]
       83 GETTABLEKS                       R12 R12 K24 ["Small"]
       85 MULK                             R11 R12 K23 [2]
       86 ADD                              R9 R10 R11
       87 GETUPVAL                         R10 2
       88 GETUPVAL                         R11 0
       89 GETTABLEKS                       R11 R11 K25 ["View"]
       91 DUPTABLE                         R12 K32 [{["testId"] = "--appkit-nav-bar", ["Size"], ["AutomaticSize"], ["tag"] = "col bg-surface-0", ["padding"]}]
       92 GETIMPORT                        R13 K35 [UDim2.new]
       94 LOADN                            R14 1
       95 LOADN                            R15 0
       96 LOADN                            R16 0
       97 LOADN                            R17 0
       98 CALL                             R13 4 1
       99 SETTABLEKS                       R13 R12 K16 ["Size"]
      101 GETIMPORT                        R13 K38 [Enum.AutomaticSize.Y]
      103 SETTABLEKS                       R13 R12 K28 ["AutomaticSize"]
      105 DUPTABLE                         R13 K40 [{"top"}]
      106 GETIMPORT                        R14 K42 [UDim.new]
      108 LOADN                            R15 0
      109 MOVE                             R16 R8
      110 CALL                             R14 2 1
      111 SETTABLEKS                       R14 R13 K39 ["top"]
      113 SETTABLEKS                       R13 R12 K31 ["padding"]
      115 DUPTABLE                         R13 K46 [{"Hairline", "Tabs", "SafeArea"}]
      116 GETUPVAL                         R14 2
      117 GETUPVAL                         R15 0
      118 GETTABLEKS                       R15 R15 K25 ["View"]
      120 DUPTABLE                         R16 K51 [{["AnchorPoint"], ["Position"], ["Size"], ["ZIndex"] = 2, ["tag"] = "bg-shift-200"}]
      121 GETIMPORT                        R17 K53 [Vector2.new]
      123 LOADN                            R18 0
      124 LOADN                            R19 0
      125 CALL                             R17 2 1
      126 SETTABLEKS                       R17 R16 K47 ["AnchorPoint"]
      128 GETIMPORT                        R17 K55 [UDim2.fromScale]
      130 LOADN                            R18 0
      131 LOADN                            R19 0
      132 CALL                             R17 2 1
      133 SETTABLEKS                       R17 R16 K48 ["Position"]
      135 GETIMPORT                        R17 K35 [UDim2.new]
      137 LOADN                            R18 1
      138 LOADN                            R19 0
      139 LOADN                            R20 0
      140 GETTABLEKS                       R21 R1 K56 ["Stroke"]
      142 GETTABLEKS                       R21 R21 K57 ["Standard"]
      144 CALL                             R17 4 1
      145 SETTABLEKS                       R17 R16 K16 ["Size"]
      147 CALL                             R14 2 1
      148 SETTABLEKS                       R14 R13 K43 ["Hairline"]
      150 GETUPVAL                         R14 2
      151 GETUPVAL                         R15 0
      152 GETTABLEKS                       R15 R15 K25 ["View"]
      154 DUPTABLE                         R16 K59 [{["LayoutOrder"] = 1, ["Size"], ["tag"] = "row align-y-center"}]
      155 GETIMPORT                        R17 K35 [UDim2.new]
      157 LOADN                            R18 1
      158 LOADN                            R19 0
      159 LOADN                            R20 0
      160 MOVE                             R21 R9
      161 CALL                             R17 4 1
      162 SETTABLEKS                       R17 R16 K16 ["Size"]
      164 MOVE                             R17 R6
      165 CALL                             R14 3 1
      166 SETTABLEKS                       R14 R13 K44 ["Tabs"]
      168 GETUPVAL                         R14 2
      169 GETUPVAL                         R15 0
      170 GETTABLEKS                       R15 R15 K25 ["View"]
      172 DUPTABLE                         R16 K60 [{["LayoutOrder"] = 2, ["Size"]}]
      173 GETIMPORT                        R17 K35 [UDim2.new]
      175 LOADN                            R18 1
      176 LOADN                            R19 0
      177 LOADN                            R20 0
      178 MOVE                             R21 R7
      179 CALL                             R17 4 1
      180 SETTABLEKS                       R17 R16 K16 ["Size"]
      182 CALL                             R14 2 1
      183 SETTABLEKS                       R14 R13 K45 ["SafeArea"]
      185 CALL                             R10 3 -1
      186 RETURN                           R10 -1

PROTO_4:
        0 NEWTABLE                         R1 0 5
        2 DUPTABLE                         R2 K7 [{[1] = "home", ["icon"] = "house", ["activeIcon"] = "house", ["label"] = "Home"}]
        3 DUPTABLE                         R3 K10 [{[1] = "moments", ["icon"] = "moments", ["activeIcon"] = "moments", ["label"] = "Moments"}]
        4 DUPTABLE                         R4 K15 [{[1] = "me", ["label"] = "Me", ["userId"], ["userPresence"]}]
        5 JUMPIFEQKNIL                     R0 ; [+3]
        7 MOVE                             R5 R0
        8 JUMP                             ; [+1]
        9 LOADN                            R5 1
       10 SETTABLEKS                       R5 R4 K13 ["userId"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K16 ["Enums"]
       15 GETTABLEKS                       R5 R5 K17 ["UserPresence"]
       17 GETTABLEKS                       R5 R5 K18 ["Active"]
       19 SETTABLEKS                       R5 R4 K14 ["userPresence"]
       21 DUPTABLE                         R5 K24 [{[1] = "chat", ["icon"] = "speech-bubble-align-center", ["activeIcon"] = "speech-bubble-align-center", ["label"] = "Chat", ["hasStatus"] = True}]
       22 DUPTABLE                         R6 K28 [{[1] = "build", ["icon"] = "nebula", ["activeIcon"] = "nebula", ["label"] = "Build"}]
       23 SETLIST                          R1 R2 5 [1]
       25 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.NavigationBar must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Packages"]
       18 GETTABLEKS                       R2 R2 K10 ["React"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K8 [require]
       23 GETTABLEKS                       R3 R0 K9 ["Packages"]
       25 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K8 [require]
       30 GETIMPORT                        R4 K1 [script]
       32 GETTABLEKS                       R4 R4 K12 ["Parent"]
       34 GETTABLEKS                       R4 R4 K13 ["NavigationRail"]
       36 CALL                             R3 1 1
       37 GETTABLEKS                       R4 R1 K14 ["createElement"]
       39 DUPCLOSURE                       R5 K15 [PROTO_0]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R2
       42 DUPCLOSURE                       R6 K16 [PROTO_1]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R4
       46 LOADNIL                          R7
       47 NEWCLOSURE                       R8 P2
       48 CAPTURE                          VAL R2
       49 CAPTURE                          REF R7
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R6
       52 DUPCLOSURE                       R7 K17 [PROTO_4]
       53 CAPTURE                          VAL R2
       54 CLOSEUPVALS                      R7
       55 RETURN                           R8 1
