PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["variant"]
        2 JUMPIFNOTEQKS                    R4 K1 ["Icon"] ; [+3]
        4 LOADNIL                          R3
        5 JUMP                             ; [+2]
        6 GETTABLEKS                       R3 R0 K2 ["status"]
        8 GETTABLEKS                       R4 R0 K3 ["image"]
       10 JUMPIFNOTEQKNIL                  R4 ; [+12]
       12 GETTABLEKS                       R5 R0 K4 ["userId"]
       14 JUMPIFEQKNIL                     R5 ; [+8]
       16 LOADK                            R5 K5 ["rbxthumb://type=AvatarHeadShot&id=%*&w=150&h=150"]
       17 GETTABLEKS                       R7 R0 K4 ["userId"]
       19 NAMECALL                         R5 R5 K6 ["format"]
       21 CALL                             R5 2 1
       22 MOVE                             R4 R5
       23 LOADNIL                          R5
       24 GETTABLEKS                       R6 R0 K0 ["variant"]
       26 JUMPIFNOTEQKS                    R6 K1 ["Icon"] ; [+30]
       28 GETUPVAL                         R6 0
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R7 R7 K7 ["View"]
       32 DUPTABLE                         R8 K10 [{["tag"] = "size-full row align-x-center align-y-center bg-shift-200 radius-circle"}]
       33 DUPTABLE                         R9 K11 [{"Icon"}]
       34 GETUPVAL                         R10 0
       35 GETUPVAL                         R11 1
       36 GETTABLEKS                       R11 R11 K1 ["Icon"]
       38 DUPTABLE                         R12 K14 [{"name", "size"}]
       39 GETTABLEKS                       R14 R0 K16 ["icon"]
       41 ORK                              R13 R14 K15 ["person"]
       42 SETTABLEKS                       R13 R12 K12 ["name"]
       44 MULK                             R14 R1 K17 [0.4]
       45 FASTCALL1                        MATH_ROUND R14 ; [+2]
       46 GETIMPORT                        R13 K20 [math.round]
       48 CALL                             R13 1 1
       49 SETTABLEKS                       R13 R12 K13 ["size"]
       51 CALL                             R10 2 1
       52 SETTABLEKS                       R10 R9 K1 ["Icon"]
       54 CALL                             R6 3 1
       55 MOVE                             R5 R6
       56 JUMP                             ; [+48]
       57 JUMPIFEQKNIL                     R4 ; [+15]
       59 GETUPVAL                         R6 0
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R7 R7 K21 ["Image"]
       63 DUPTABLE                         R8 K24 [{["Image"], ["ScaleType"], ["tag"] = "size-full radius-circle"}]
       64 SETTABLEKS                       R4 R8 K21 ["Image"]
       66 GETIMPORT                        R9 K27 [Enum.ScaleType.Crop]
       68 SETTABLEKS                       R9 R8 K22 ["ScaleType"]
       70 CALL                             R6 2 1
       71 MOVE                             R5 R6
       72 JUMP                             ; [+32]
       73 GETUPVAL                         R6 0
       74 GETUPVAL                         R7 1
       75 GETTABLEKS                       R7 R7 K7 ["View"]
       77 DUPTABLE                         R8 K10 [{["tag"] = "size-full row align-x-center align-y-center bg-shift-200 radius-circle"}]
       78 DUPTABLE                         R9 K29 [{"Initials"}]
       79 GETUPVAL                         R10 0
       80 GETUPVAL                         R11 1
       81 GETTABLEKS                       R11 R11 K30 ["Text"]
       83 DUPTABLE                         R12 K32 [{["Text"], ["tag"] = "text-title-medium content-default"}]
       84 GETIMPORT                        R13 K35 [string.upper]
       86 GETTABLEKS                       R15 R0 K36 ["initials"]
       88 JUMPIF                           R15 ; [+2]
       89 GETTABLEKS                       R15 R0 K37 ["title"]
       91 LOADN                            R16 1
       92 LOADN                            R17 2
       93 FASTCALL                         STRING_SUB ; [+2]
       94 GETIMPORT                        R14 K39 [string.sub]
       96 CALL                             R14 3 1
       97 CALL                             R13 1 1
       98 SETTABLEKS                       R13 R12 K30 ["Text"]
      100 CALL                             R10 2 1
      101 SETTABLEKS                       R10 R9 K28 ["Initials"]
      103 CALL                             R6 3 1
      104 MOVE                             R5 R6
      105 DUPTABLE                         R6 K41 [{"Surface"}]
      106 GETUPVAL                         R7 0
      107 GETUPVAL                         R8 1
      108 GETTABLEKS                       R8 R8 K7 ["View"]
      110 DUPTABLE                         R9 K45 [{["ClipsDescendants"] = True, ["tag"] = "size-full radius-circle bg-surface-0"}]
      111 DUPTABLE                         R10 K47 [{"Inner"}]
      112 SETTABLEKS                       R5 R10 K46 ["Inner"]
      114 CALL                             R7 3 1
      115 SETTABLEKS                       R7 R6 K40 ["Surface"]
      117 JUMPIFNOTEQKS                    R3 K48 ["InExperience"] ; [+50]
      119 LOADN                            R8 3
      120 MULK                             R10 R1 K49 [0.042]
      121 FASTCALL1                        MATH_ROUND R10 ; [+2]
      122 GETIMPORT                        R9 K20 [math.round]
      124 CALL                             R9 1 1
      125 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
      127 GETIMPORT                        R7 K51 [math.max]
      129 CALL                             R7 2 1
      130 GETUPVAL                         R8 0
      131 GETUPVAL                         R9 1
      132 GETTABLEKS                       R9 R9 K7 ["View"]
      134 DUPTABLE                         R10 K55 [{["ZIndex"] = 2, ["tag"] = "size-full radius-circle", ["stroke"]}]
      135 DUPTABLE                         R11 K60 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      136 GETTABLEKS                       R12 R2 K56 ["Color"]
      138 GETTABLEKS                       R12 R12 K61 ["System"]
      140 GETTABLEKS                       R12 R12 K62 ["Emphasis"]
      142 GETTABLEKS                       R12 R12 K63 ["Color3"]
      144 SETTABLEKS                       R12 R11 K56 ["Color"]
      146 GETTABLEKS                       R12 R2 K56 ["Color"]
      148 GETTABLEKS                       R12 R12 K61 ["System"]
      150 GETTABLEKS                       R12 R12 K62 ["Emphasis"]
      152 GETTABLEKS                       R12 R12 K57 ["Transparency"]
      154 SETTABLEKS                       R12 R11 K57 ["Transparency"]
      156 SETTABLEKS                       R7 R11 K58 ["Thickness"]
      158 GETIMPORT                        R12 K64 [Enum.BorderStrokePosition.Inner]
      160 SETTABLEKS                       R12 R11 K59 ["BorderStrokePosition"]
      162 SETTABLEKS                       R11 R10 K54 ["stroke"]
      164 CALL                             R8 2 1
      165 SETTABLEKS                       R8 R6 K65 ["Ring"]
      167 JUMP                             ; [+150]
      168 JUMPIFEQKS                       R3 K66 ["Active"] ; [+3]
      170 JUMPIFNOTEQKS                    R3 K67 ["Away"] ; [+147]
      172 MULK                             R8 R1 K68 [0.208]
      173 FASTCALL1                        MATH_ROUND R8 ; [+2]
      174 GETIMPORT                        R7 K20 [math.round]
      176 CALL                             R7 1 1
      177 LOADN                            R9 2
      178 MULK                             R11 R1 K69 [0.021]
      179 FASTCALL1                        MATH_ROUND R11 ; [+2]
      180 GETIMPORT                        R10 K20 [math.round]
      182 CALL                             R10 1 1
      183 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
      185 GETIMPORT                        R8 K51 [math.max]
      187 CALL                             R8 2 1
      188 MULK                             R10 R8 K53 [2]
      189 ADD                              R9 R7 R10
      190 DUPTABLE                         R10 K76 [{["AnchorPoint"], ["Position"], ["Size"], ["ZIndex"] = 3, ["tag"] = "radius-circle bg-surface-100", ["layout"]}]
      191 GETIMPORT                        R11 K79 [Vector2.new]
      193 LOADN                            R12 1
      194 LOADN                            R13 1
      195 CALL                             R11 2 1
      196 SETTABLEKS                       R11 R10 K70 ["AnchorPoint"]
      198 GETIMPORT                        R11 K81 [UDim2.new]
      200 LOADN                            R12 1
      201 MINUS                            R13 R8
      202 LOADN                            R14 1
      203 MULK                             R18 R1 K49 [0.042]
      204 FASTCALL1                        MATH_ROUND R18 ; [+2]
      205 GETIMPORT                        R17 K20 [math.round]
      207 CALL                             R17 1 1
      208 ADD                              R16 R17 R8
      209 MINUS                            R15 R16
      210 CALL                             R11 4 1
      211 SETTABLEKS                       R11 R10 K71 ["Position"]
      213 GETIMPORT                        R11 K83 [UDim2.fromOffset]
      215 MOVE                             R12 R9
      216 MOVE                             R13 R9
      217 CALL                             R11 2 1
      218 SETTABLEKS                       R11 R10 K72 ["Size"]
      220 DUPTABLE                         R11 K87 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
      221 GETIMPORT                        R12 K89 [Enum.FillDirection.Vertical]
      223 SETTABLEKS                       R12 R11 K84 ["FillDirection"]
      225 GETIMPORT                        R12 K91 [Enum.HorizontalAlignment.Center]
      227 SETTABLEKS                       R12 R11 K85 ["HorizontalAlignment"]
      229 GETIMPORT                        R12 K92 [Enum.VerticalAlignment.Center]
      231 SETTABLEKS                       R12 R11 K86 ["VerticalAlignment"]
      233 SETTABLEKS                       R11 R10 K75 ["layout"]
      235 LOADNIL                          R11
      236 JUMPIFNOTEQKS                    R3 K66 ["Active"] ; [+16]
      238 GETUPVAL                         R12 0
      239 GETUPVAL                         R13 1
      240 GETTABLEKS                       R13 R13 K7 ["View"]
      242 DUPTABLE                         R14 K94 [{["Size"], ["tag"] = "radius-circle bg-system-success"}]
      243 GETIMPORT                        R15 K83 [UDim2.fromOffset]
      245 MOVE                             R16 R7
      246 MOVE                             R17 R7
      247 CALL                             R15 2 1
      248 SETTABLEKS                       R15 R14 K72 ["Size"]
      250 CALL                             R12 2 1
      251 MOVE                             R11 R12
      252 JUMP                             ; [+54]
      253 LOADN                            R13 2
      254 MULK                             R15 R7 K95 [0.25]
      255 FASTCALL1                        MATH_ROUND R15 ; [+2]
      256 GETIMPORT                        R14 K20 [math.round]
      258 CALL                             R14 1 1
      259 FASTCALL2                        MATH_MAX R13 R14 ; [+3]
      261 GETIMPORT                        R12 K51 [math.max]
      263 CALL                             R12 2 1
      264 GETUPVAL                         R13 0
      265 GETUPVAL                         R14 1
      266 GETTABLEKS                       R14 R14 K7 ["View"]
      268 DUPTABLE                         R15 K97 [{["Size"], ["tag"] = "radius-circle", ["stroke"]}]
      269 GETIMPORT                        R16 K83 [UDim2.fromOffset]
      271 MOVE                             R17 R7
      272 MOVE                             R18 R7
      273 CALL                             R16 2 1
      274 SETTABLEKS                       R16 R15 K72 ["Size"]
      276 DUPTABLE                         R16 K60 [{"Color", "Transparency", "Thickness", "BorderStrokePosition"}]
      277 GETTABLEKS                       R17 R2 K56 ["Color"]
      279 GETTABLEKS                       R17 R17 K98 ["Content"]
      281 GETTABLEKS                       R17 R17 K99 ["Default"]
      283 GETTABLEKS                       R17 R17 K63 ["Color3"]
      285 SETTABLEKS                       R17 R16 K56 ["Color"]
      287 GETTABLEKS                       R17 R2 K56 ["Color"]
      289 GETTABLEKS                       R17 R17 K98 ["Content"]
      291 GETTABLEKS                       R17 R17 K99 ["Default"]
      293 GETTABLEKS                       R17 R17 K57 ["Transparency"]
      295 SETTABLEKS                       R17 R16 K57 ["Transparency"]
      297 SETTABLEKS                       R12 R16 K58 ["Thickness"]
      299 GETIMPORT                        R17 K64 [Enum.BorderStrokePosition.Inner]
      301 SETTABLEKS                       R17 R16 K59 ["BorderStrokePosition"]
      303 SETTABLEKS                       R16 R15 K54 ["stroke"]
      305 CALL                             R13 2 1
      306 MOVE                             R11 R13
      307 GETUPVAL                         R12 0
      308 GETUPVAL                         R13 1
      309 GETTABLEKS                       R13 R13 K7 ["View"]
      311 MOVE                             R14 R10
      312 DUPTABLE                         R15 K101 [{"Dot"}]
      313 SETTABLEKS                       R11 R15 K100 ["Dot"]
      315 CALL                             R12 3 1
      316 SETTABLEKS                       R12 R6 K102 ["Status"]
      318 GETUPVAL                         R7 0
      319 GETUPVAL                         R8 1
      320 GETTABLEKS                       R8 R8 K7 ["View"]
      322 DUPTABLE                         R9 K105 [{["LayoutOrder"] = 1, ["Size"]}]
      323 GETIMPORT                        R10 K83 [UDim2.fromOffset]
      325 MOVE                             R11 R1
      326 MOVE                             R12 R1
      327 CALL                             R10 2 1
      328 SETTABLEKS                       R10 R9 K72 ["Size"]
      330 MOVE                             R10 R6
      331 CALL                             R7 3 -1
      332 RETURN                           R7 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R3 R0 K3 ["size"]
        8 ORK                              R2 R3 K2 [152]
        9 GETTABLEKS                       R4 R0 K4 ["isDisabled"]
       11 JUMPIFEQKB                       R4 TRUE ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 DUPTABLE                         R4 K6 [{"Title"}]
       16 GETUPVAL                         R5 1
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K7 ["Text"]
       20 DUPTABLE                         R7 K17 [{["Text"], ["LayoutOrder"] = 1, ["Size"], ["AutomaticSize"], ["TextWrapped"] = False, ["TextTruncate"], ["tag"] = "text-title-small content-emphasis text-align-x-center"}]
       21 GETTABLEKS                       R8 R0 K18 ["title"]
       23 SETTABLEKS                       R8 R7 K7 ["Text"]
       25 GETIMPORT                        R8 K21 [UDim2.new]
       27 LOADN                            R9 1
       28 LOADN                            R10 0
       29 LOADN                            R11 0
       30 LOADN                            R12 0
       31 CALL                             R8 4 1
       32 SETTABLEKS                       R8 R7 K10 ["Size"]
       34 GETIMPORT                        R8 K24 [Enum.AutomaticSize.Y]
       36 SETTABLEKS                       R8 R7 K11 ["AutomaticSize"]
       38 GETIMPORT                        R8 K26 [Enum.TextTruncate.AtEnd]
       40 SETTABLEKS                       R8 R7 K14 ["TextTruncate"]
       42 CALL                             R5 2 1
       43 SETTABLEKS                       R5 R4 K5 ["Title"]
       45 GETTABLEKS                       R5 R0 K27 ["metadata"]
       47 JUMPIFEQKNIL                     R5 ; [+30]
       49 GETUPVAL                         R5 1
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K7 ["Text"]
       53 DUPTABLE                         R7 K30 [{["Text"], ["LayoutOrder"] = 2, ["Size"], ["AutomaticSize"], ["TextWrapped"] = False, ["TextTruncate"], ["tag"] = "text-body-small content-default text-align-x-center"}]
       54 GETTABLEKS                       R8 R0 K27 ["metadata"]
       56 SETTABLEKS                       R8 R7 K7 ["Text"]
       58 GETIMPORT                        R8 K21 [UDim2.new]
       60 LOADN                            R9 1
       61 LOADN                            R10 0
       62 LOADN                            R11 0
       63 LOADN                            R12 0
       64 CALL                             R8 4 1
       65 SETTABLEKS                       R8 R7 K10 ["Size"]
       67 GETIMPORT                        R8 K24 [Enum.AutomaticSize.Y]
       69 SETTABLEKS                       R8 R7 K11 ["AutomaticSize"]
       71 GETIMPORT                        R8 K26 [Enum.TextTruncate.AtEnd]
       73 SETTABLEKS                       R8 R7 K14 ["TextTruncate"]
       75 CALL                             R5 2 1
       76 SETTABLEKS                       R5 R4 K31 ["Metadata"]
       78 GETUPVAL                         R5 1
       79 GETUPVAL                         R6 0
       80 GETTABLEKS                       R6 R6 K32 ["View"]
       82 DUPTABLE                         R7 K38 [{["testId"] = "--appkit-button-tile", ["onActivated"], ["GroupTransparency"], ["LayoutOrder"], ["Size"], ["AutomaticSize"], ["layout"]}]
       83 JUMPIFNOT                        R3 ; [+2]
       84 LOADNIL                          R8
       85 JUMP                             ; [+2]
       86 GETTABLEKS                       R8 R0 K35 ["onActivated"]
       88 SETTABLEKS                       R8 R7 K35 ["onActivated"]
       90 JUMPIFNOT                        R3 ; [+2]
       91 LOADK                            R8 K39 [0.5]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R8
       94 SETTABLEKS                       R8 R7 K36 ["GroupTransparency"]
       96 GETTABLEKS                       R8 R0 K8 ["LayoutOrder"]
       98 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
      100 GETIMPORT                        R8 K21 [UDim2.new]
      102 LOADN                            R9 0
      103 MOVE                             R10 R2
      104 LOADN                            R11 0
      105 LOADN                            R12 0
      106 CALL                             R8 4 1
      107 SETTABLEKS                       R8 R7 K10 ["Size"]
      109 GETIMPORT                        R8 K24 [Enum.AutomaticSize.Y]
      111 SETTABLEKS                       R8 R7 K11 ["AutomaticSize"]
      113 DUPTABLE                         R8 K44 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
      114 GETIMPORT                        R9 K46 [Enum.FillDirection.Vertical]
      116 SETTABLEKS                       R9 R8 K40 ["FillDirection"]
      118 GETIMPORT                        R9 K48 [Enum.HorizontalAlignment.Center]
      120 SETTABLEKS                       R9 R8 K41 ["HorizontalAlignment"]
      122 GETIMPORT                        R9 K49 [Enum.SortOrder.LayoutOrder]
      124 SETTABLEKS                       R9 R8 K42 ["SortOrder"]
      126 GETIMPORT                        R9 K51 [UDim.new]
      128 LOADN                            R10 0
      129 GETTABLEKS                       R11 R1 K52 ["Gap"]
      131 GETTABLEKS                       R11 R11 K53 ["Small"]
      133 CALL                             R9 2 1
      134 SETTABLEKS                       R9 R8 K43 ["Padding"]
      136 SETTABLEKS                       R8 R7 K37 ["layout"]
      138 DUPTABLE                         R8 K56 [{"Graphic", "Labels"}]
      139 GETUPVAL                         R9 2
      140 MOVE                             R10 R0
      141 MOVE                             R11 R2
      142 MOVE                             R12 R1
      143 CALL                             R9 3 1
      144 SETTABLEKS                       R9 R8 K54 ["Graphic"]
      146 GETUPVAL                         R9 1
      147 GETUPVAL                         R10 0
      148 GETTABLEKS                       R10 R10 K32 ["View"]
      150 DUPTABLE                         R11 K57 [{["LayoutOrder"] = 2, ["Size"], ["AutomaticSize"], ["layout"]}]
      151 GETIMPORT                        R12 K21 [UDim2.new]
      153 LOADN                            R13 1
      154 LOADN                            R14 0
      155 LOADN                            R15 0
      156 LOADN                            R16 0
      157 CALL                             R12 4 1
      158 SETTABLEKS                       R12 R11 K10 ["Size"]
      160 GETIMPORT                        R12 K24 [Enum.AutomaticSize.Y]
      162 SETTABLEKS                       R12 R11 K11 ["AutomaticSize"]
      164 DUPTABLE                         R12 K58 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
      165 GETIMPORT                        R13 K46 [Enum.FillDirection.Vertical]
      167 SETTABLEKS                       R13 R12 K40 ["FillDirection"]
      169 GETIMPORT                        R13 K48 [Enum.HorizontalAlignment.Center]
      171 SETTABLEKS                       R13 R12 K41 ["HorizontalAlignment"]
      173 GETIMPORT                        R13 K49 [Enum.SortOrder.LayoutOrder]
      175 SETTABLEKS                       R13 R12 K42 ["SortOrder"]
      177 SETTABLEKS                       R12 R11 K37 ["layout"]
      179 MOVE                             R12 R4
      180 CALL                             R9 3 1
      181 SETTABLEKS                       R9 R8 K55 ["Labels"]
      183 CALL                             R5 3 -1
      184 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useRegion"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K3 ["useResponsiveTileWidth"]
       13 GETTABLEKS                       R4 R0 K4 ["visible"]
       15 JUMPIF                           R4 ; [+1]
       16 GETUPVAL                         R4 2
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R6 R3 K5 ["tileWidth"]
       20 LOADN                            R7 48
       21 LOADN                            R8 160
       22 FASTCALL                         MATH_CLAMP ; [+2]
       23 GETIMPORT                        R5 K8 [math.clamp]
       25 CALL                             R5 3 1
       26 FASTCALL1                        MATH_ROUND R5 ; [+2]
       27 GETIMPORT                        R4 K10 [math.round]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R6 R1 K11 ["Size"]
       32 GETTABLEKS                       R6 R6 K12 ["Size_1300"]
       34 ADD                              R5 R4 R6
       35 NEWTABLE                         R6 0 0
       37 GETTABLEKS                       R7 R0 K13 ["connections"]
       39 LOADNIL                          R8
       40 LOADNIL                          R9
       41 FORGPREP                         R7
       42 GETTABLEKS                       R12 R11 K14 ["key"]
       44 GETUPVAL                         R13 3
       45 GETUPVAL                         R14 4
       46 DUPTABLE                         R15 K27 [{"title", "metadata", "variant", "userId", "image", "initials", "status", "icon", "isDisabled", "size", "onActivated", "LayoutOrder"}]
       47 GETTABLEKS                       R16 R11 K15 ["title"]
       49 SETTABLEKS                       R16 R15 K15 ["title"]
       51 GETTABLEKS                       R16 R11 K16 ["metadata"]
       53 SETTABLEKS                       R16 R15 K16 ["metadata"]
       55 GETTABLEKS                       R16 R11 K17 ["variant"]
       57 SETTABLEKS                       R16 R15 K17 ["variant"]
       59 GETTABLEKS                       R16 R11 K18 ["userId"]
       61 SETTABLEKS                       R16 R15 K18 ["userId"]
       63 GETTABLEKS                       R16 R11 K19 ["image"]
       65 SETTABLEKS                       R16 R15 K19 ["image"]
       67 GETTABLEKS                       R16 R11 K20 ["initials"]
       69 SETTABLEKS                       R16 R15 K20 ["initials"]
       71 GETTABLEKS                       R16 R11 K21 ["status"]
       73 SETTABLEKS                       R16 R15 K21 ["status"]
       75 GETTABLEKS                       R16 R11 K22 ["icon"]
       77 SETTABLEKS                       R16 R15 K22 ["icon"]
       79 GETTABLEKS                       R16 R11 K23 ["isDisabled"]
       81 SETTABLEKS                       R16 R15 K23 ["isDisabled"]
       83 SETTABLEKS                       R4 R15 K24 ["size"]
       85 GETTABLEKS                       R16 R11 K28 ["onSelect"]
       87 SETTABLEKS                       R16 R15 K25 ["onActivated"]
       89 SETTABLEKS                       R10 R15 K26 ["LayoutOrder"]
       91 CALL                             R13 2 1
       92 SETTABLE                         R13 R6 R12
       93 FORGLOOP                         R7 2 ; [-52]
       95 GETUPVAL                         R7 3
       96 GETUPVAL                         R8 0
       97 GETTABLEKS                       R8 R8 K29 ["ScrollView"]
       99 DUPTABLE                         R9 K34 [{["testId"] = "--appkit-connection-carousel", ["LayoutOrder"], ["Size"], ["scroll"], ["layout"]}]
      100 GETTABLEKS                       R10 R0 K26 ["LayoutOrder"]
      102 SETTABLEKS                       R10 R9 K26 ["LayoutOrder"]
      104 GETIMPORT                        R10 K37 [UDim2.new]
      106 LOADN                            R11 1
      107 LOADN                            R12 0
      108 LOADN                            R13 0
      109 MOVE                             R14 R5
      110 CALL                             R10 4 1
      111 SETTABLEKS                       R10 R9 K11 ["Size"]
      113 DUPTABLE                         R10 K41 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
      114 GETIMPORT                        R11 K44 [Enum.ScrollingDirection.X]
      116 SETTABLEKS                       R11 R10 K38 ["ScrollingDirection"]
      118 GETIMPORT                        R11 K46 [Enum.AutomaticSize.X]
      120 SETTABLEKS                       R11 R10 K39 ["AutomaticCanvasSize"]
      122 GETIMPORT                        R11 K48 [UDim2.fromOffset]
      124 LOADN                            R12 0
      125 LOADN                            R13 0
      126 CALL                             R11 2 1
      127 SETTABLEKS                       R11 R10 K40 ["CanvasSize"]
      129 SETTABLEKS                       R10 R9 K32 ["scroll"]
      131 DUPTABLE                         R10 K52 [{"FillDirection", "SortOrder", "Padding"}]
      132 GETIMPORT                        R11 K54 [Enum.FillDirection.Horizontal]
      134 SETTABLEKS                       R11 R10 K49 ["FillDirection"]
      136 GETIMPORT                        R11 K55 [Enum.SortOrder.LayoutOrder]
      138 SETTABLEKS                       R11 R10 K50 ["SortOrder"]
      140 GETIMPORT                        R11 K57 [UDim.new]
      142 LOADN                            R12 0
      143 GETTABLEKS                       R13 R2 K58 ["gutter"]
      145 CALL                             R11 2 1
      146 SETTABLEKS                       R11 R10 K51 ["Padding"]
      148 SETTABLEKS                       R10 R9 K33 ["layout"]
      150 MOVE                             R10 R6
      151 CALL                             R7 3 -1
      152 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.ButtonTile must run inside the DesignAssist plugin tree"]
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
       34 GETTABLEKS                       R4 R4 K13 ["Hooks"]
       36 CALL                             R3 1 1
       37 GETTABLEKS                       R4 R1 K14 ["createElement"]
       39 DUPCLOSURE                       R5 K15 [PROTO_0]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R2
       42 DUPCLOSURE                       R6 K16 [PROTO_1]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R5
       46 DUPTABLE                         R7 K24 [{["l"] = 12, ["m"] = 12, ["s"] = 6, ["xs"] = 4}]
       47 DUPCLOSURE                       R8 K25 [PROTO_2]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R6
       53 DUPTABLE                         R9 K28 [{"ButtonTile", "ConnectionCarousel"}]
       54 SETTABLEKS                       R6 R9 K26 ["ButtonTile"]
       56 SETTABLEKS                       R8 R9 K27 ["ConnectionCarousel"]
       58 RETURN                           R9 1
