PROTO_0:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+8]
        5 LOADK                            R5 K1 ["NumberValue"]
        6 NAMECALL                         R3 R2 K2 ["IsA"]
        8 CALL                             R3 2 1
        9 JUMPIFNOT                        R3 ; [+3]
       10 GETTABLEKS                       R3 R2 K3 ["Value"]
       12 RETURN                           R3 1
       13 LOADN                            R3 1
       14 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["StageSelector"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 NAMECALL                         R2 R2 K1 ["use"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R4 R0 K2 ["Enabled"]
       11 JUMPIFNOTEQKB                    R4 FALSE ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 GETTABLEKS                       R4 R0 K3 ["ShowMenuIndicator"]
       17 JUMPIFEQKNIL                     R4 ; [+9]
       19 GETUPVAL                         R5 2
       20 CALL                             R5 0 1
       21 FASTCALL2K                       ASSERT R5 K4 ; [+4]
       23 LOADK                            R6 K4 ["Look Composer flag is required"]
       24 GETIMPORT                        R4 K6 [assert]
       26 CALL                             R4 2 0
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R4 R5 K7 ["createElement"]
       30 GETUPVAL                         R5 4
       31 DUPTABLE                         R6 K22 [{"AnchorPoint", "BackgroundColor", "BackgroundStyle", "IconColor", "IconScaleType", "IconSize", "LeftIcon", "LayoutOrder", "Size", "Padding", "Position", "TooltipStyle", "TooltipText", "OnClick"}]
       32 GETTABLEKS                       R8 R0 K3 ["ShowMenuIndicator"]
       34 JUMPIFNOT                        R8 ; [+6]
       35 GETIMPORT                        R7 K25 [Vector2.new]
       37 LOADN                            R8 0
       38 LOADN                            R9 0
       39 CALL                             R7 2 1
       40 JUMP                             ; [+2]
       41 GETTABLEKS                       R7 R0 K8 ["AnchorPoint"]
       43 SETTABLEKS                       R7 R6 K8 ["AnchorPoint"]
       45 GETTABLEKS                       R8 R0 K26 ["IsSelected"]
       47 JUMPIFNOT                        R8 ; [+3]
       48 GETTABLEKS                       R7 R1 K27 ["ButtonSelectedBackgroundColor"]
       50 JUMP                             ; [+2]
       51 GETTABLEKS                       R7 R1 K9 ["BackgroundColor"]
       53 SETTABLEKS                       R7 R6 K9 ["BackgroundColor"]
       55 LOADK                            R7 K28 ["SubtleBox"]
       56 SETTABLEKS                       R7 R6 K10 ["BackgroundStyle"]
       58 JUMPIFNOT                        R3 ; [+3]
       59 GETTABLEKS                       R7 R1 K11 ["IconColor"]
       61 JUMP                             ; [+2]
       62 GETTABLEKS                       R7 R1 K29 ["IconColorDisabled"]
       64 SETTABLEKS                       R7 R6 K11 ["IconColor"]
       66 GETIMPORT                        R7 K33 [Enum.ScaleType.Stretch]
       68 SETTABLEKS                       R7 R6 K12 ["IconScaleType"]
       70 GETTABLEKS                       R7 R1 K13 ["IconSize"]
       72 SETTABLEKS                       R7 R6 K13 ["IconSize"]
       74 GETTABLEKS                       R7 R0 K34 ["Icon"]
       76 SETTABLEKS                       R7 R6 K14 ["LeftIcon"]
       78 GETTABLEKS                       R8 R0 K3 ["ShowMenuIndicator"]
       80 JUMPIFNOT                        R8 ; [+2]
       81 LOADNIL                          R7
       82 JUMP                             ; [+2]
       83 GETTABLEKS                       R7 R0 K15 ["LayoutOrder"]
       85 SETTABLEKS                       R7 R6 K15 ["LayoutOrder"]
       87 GETIMPORT                        R7 K36 [UDim2.new]
       89 LOADN                            R8 1
       90 LOADN                            R9 0
       91 LOADN                            R10 0
       92 GETTABLEKS                       R11 R1 K37 ["ButtonHeight"]
       94 CALL                             R7 4 1
       95 SETTABLEKS                       R7 R6 K16 ["Size"]
       97 LOADN                            R7 0
       98 SETTABLEKS                       R7 R6 K17 ["Padding"]
      100 GETTABLEKS                       R8 R0 K3 ["ShowMenuIndicator"]
      102 JUMPIFNOT                        R8 ; [+4]
      103 GETIMPORT                        R7 K36 [UDim2.new]
      105 CALL                             R7 0 1
      106 JUMP                             ; [+2]
      107 GETTABLEKS                       R7 R0 K18 ["Position"]
      109 SETTABLEKS                       R7 R6 K18 ["Position"]
      111 LOADK                            R7 K38 ["NoDelay"]
      112 SETTABLEKS                       R7 R6 K19 ["TooltipStyle"]
      114 GETTABLEKS                       R7 R0 K39 ["Tooltip"]
      116 JUMPIF                           R7 ; [+6]
      117 LOADK                            R9 K40 ["Stages"]
      118 GETTABLEKS                       R10 R0 K41 ["StageText"]
      120 NAMECALL                         R7 R2 K42 ["getText"]
      122 CALL                             R7 3 1
      123 SETTABLEKS                       R7 R6 K20 ["TooltipText"]
      125 JUMPIFNOT                        R3 ; [+3]
      126 GETTABLEKS                       R7 R0 K21 ["OnClick"]
      128 JUMP                             ; [+1]
      129 LOADNIL                          R7
      130 SETTABLEKS                       R7 R6 K21 ["OnClick"]
      132 CALL                             R4 2 1
      133 JUMPIF                           R3 ; [+27]
      134 GETUPVAL                         R6 3
      135 GETTABLEKS                       R5 R6 K7 ["createElement"]
      137 GETUPVAL                         R7 3
      138 GETTABLEKS                       R6 R7 K43 ["Fragment"]
      140 NEWTABLE                         R7 0 0
      142 NEWTABLE                         R8 2 0
      144 SETTABLEKS                       R4 R8 K44 ["IconButton"]
      146 LOADK                            R10 K45 ["%*_Disabled"]
      147 GETTABLEKS                       R12 R0 K41 ["StageText"]
      149 NAMECALL                         R10 R10 K46 ["format"]
      151 CALL                             R10 2 1
      152 MOVE                             R9 R10
      153 GETUPVAL                         R11 3
      154 GETTABLEKS                       R10 R11 K7 ["createElement"]
      156 LOADK                            R11 K47 ["Folder"]
      157 CALL                             R10 1 1
      158 SETTABLE                         R10 R8 R9
      159 CALL                             R5 3 -1
      160 RETURN                           R5 -1
      161 GETTABLEKS                       R5 R0 K3 ["ShowMenuIndicator"]
      163 JUMPIFNOT                        R5 ; [+123]
      164 GETTABLEKS                       R5 R1 K48 ["MenuIndicatorSize"]
      166 DUPTABLE                         R6 K50 [{"IconButton", "MenuIndicator"}]
      167 SETTABLEKS                       R4 R6 K44 ["IconButton"]
      169 GETUPVAL                         R8 3
      170 GETTABLEKS                       R7 R8 K7 ["createElement"]
      172 GETUPVAL                         R9 5
      173 GETTABLEKS                       R8 R9 K51 ["View"]
      175 DUPTABLE                         R9 K55 [{"BackgroundTransparency", "AnchorPoint", "Position", "Size", "Rotation", "ZIndex"}]
      176 LOADN                            R10 1
      177 SETTABLEKS                       R10 R9 K52 ["BackgroundTransparency"]
      179 GETIMPORT                        R10 K25 [Vector2.new]
      181 LOADN                            R11 1
      182 LOADN                            R12 1
      183 CALL                             R10 2 1
      184 SETTABLEKS                       R10 R9 K8 ["AnchorPoint"]
      186 GETIMPORT                        R10 K36 [UDim2.new]
      188 LOADN                            R11 1
      189 LOADN                            R12 0
      190 LOADN                            R13 1
      191 LOADN                            R14 5
      192 CALL                             R10 4 1
      193 SETTABLEKS                       R10 R9 K18 ["Position"]
      195 GETIMPORT                        R10 K57 [UDim2.fromOffset]
      197 MOVE                             R11 R5
      198 MOVE                             R12 R5
      199 CALL                             R10 2 1
      200 SETTABLEKS                       R10 R9 K16 ["Size"]
      202 LOADN                            R10 211
      203 SETTABLEKS                       R10 R9 K53 ["Rotation"]
      205 LOADN                            R10 2
      206 SETTABLEKS                       R10 R9 K54 ["ZIndex"]
      208 DUPTABLE                         R10 K58 [{"Icon"}]
      209 GETUPVAL                         R12 3
      210 GETTABLEKS                       R11 R12 K7 ["createElement"]
      212 GETUPVAL                         R13 5
      213 GETTABLEKS                       R12 R13 K34 ["Icon"]
      215 DUPTABLE                         R13 K63 [{"name", "variant", "size", "tag"}]
      216 GETUPVAL                         R17 5
      217 GETTABLEKS                       R16 R17 K64 ["Enums"]
      219 GETTABLEKS                       R15 R16 K65 ["IconName"]
      221 GETTABLEKS                       R14 R15 K66 ["CaretSmallDown"]
      223 SETTABLEKS                       R14 R13 K59 ["name"]
      225 GETUPVAL                         R17 5
      226 GETTABLEKS                       R16 R17 K64 ["Enums"]
      228 GETTABLEKS                       R15 R16 K67 ["IconVariant"]
      230 GETTABLEKS                       R14 R15 K68 ["Filled"]
      232 SETTABLEKS                       R14 R13 K60 ["variant"]
      234 GETUPVAL                         R17 5
      235 GETTABLEKS                       R16 R17 K64 ["Enums"]
      237 GETTABLEKS                       R15 R16 K13 ["IconSize"]
      239 GETTABLEKS                       R14 R15 K69 ["XSmall"]
      241 SETTABLEKS                       R14 R13 K61 ["size"]
      243 LOADK                            R14 K70 ["size-full-full content-system-contrast"]
      244 SETTABLEKS                       R14 R13 K62 ["tag"]
      246 CALL                             R11 2 1
      247 SETTABLEKS                       R11 R10 K34 ["Icon"]
      249 CALL                             R7 3 1
      250 SETTABLEKS                       R7 R6 K49 ["MenuIndicator"]
      252 GETUPVAL                         R8 3
      253 GETTABLEKS                       R7 R8 K7 ["createElement"]
      255 GETUPVAL                         R9 5
      256 GETTABLEKS                       R8 R9 K51 ["View"]
      258 DUPTABLE                         R9 K71 [{"LayoutOrder", "Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
      259 GETTABLEKS                       R10 R0 K15 ["LayoutOrder"]
      261 SETTABLEKS                       R10 R9 K15 ["LayoutOrder"]
      263 GETIMPORT                        R10 K36 [UDim2.new]
      265 LOADN                            R11 1
      266 LOADN                            R12 0
      267 LOADN                            R13 0
      268 GETTABLEKS                       R14 R1 K37 ["ButtonHeight"]
      270 CALL                             R10 4 1
      271 SETTABLEKS                       R10 R9 K16 ["Size"]
      273 GETTABLEKS                       R10 R0 K8 ["AnchorPoint"]
      275 SETTABLEKS                       R10 R9 K8 ["AnchorPoint"]
      277 GETTABLEKS                       R10 R0 K18 ["Position"]
      279 SETTABLEKS                       R10 R9 K18 ["Position"]
      281 LOADN                            R10 1
      282 SETTABLEKS                       R10 R9 K52 ["BackgroundTransparency"]
      284 MOVE                             R10 R6
      285 CALL                             R7 3 -1
      286 RETURN                           R7 -1
      287 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setFoundationMenuOpen"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["enabled"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["setStage"]
        2 LOADK                            R3 K1 ["CheckBody"]
        3 NAMECALL                         R0 R0 K2 ["report"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K3 ["SetStage"]
        9 LOADK                            R1 K1 ["CheckBody"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["setStage"]
        2 LOADK                            R3 K1 ["CheckFace"]
        3 NAMECALL                         R0 R0 K2 ["report"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K3 ["SetStage"]
        9 LOADK                            R1 K1 ["CheckFace"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["testInExperience"]
        2 NAMECALL                         R0 R0 K1 ["report"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K2 ["test"]
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R2 R3 K3 ["PreviewDummy"]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R3 R4 K4 ["Avatar"]
       15 CALL                             R0 3 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["enable"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["AvatarLook"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["MakeupLook"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["toggle"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["publish"]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R0 R0 K1 ["report"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K2 ["enable"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Closed"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["StageSelector"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 NAMECALL                         R2 R2 K1 ["use"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K2 ["new"]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 3
       14 NAMECALL                         R4 R4 K1 ["use"]
       16 CALL                             R4 1 1
       17 GETUPVAL                         R6 4
       18 CALL                             R6 0 1
       19 JUMPIFNOT                        R6 ; [+6]
       20 GETUPVAL                         R6 5
       21 GETTABLEKS                       R5 R6 K3 ["useContext"]
       23 GETUPVAL                         R6 6
       24 CALL                             R5 1 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R5
       27 GETUPVAL                         R7 5
       28 GETTABLEKS                       R6 R7 K3 ["useContext"]
       30 GETUPVAL                         R7 7
       31 CALL                             R6 1 1
       32 GETUPVAL                         R8 5
       33 GETTABLEKS                       R7 R8 K3 ["useContext"]
       35 GETUPVAL                         R9 8
       36 GETTABLEKS                       R8 R9 K4 ["Context"]
       38 CALL                             R7 1 1
       39 GETUPVAL                         R9 9
       40 CALL                             R9 0 1
       41 JUMPIFNOT                        R9 ; [+8]
       42 GETUPVAL                         R9 5
       43 GETTABLEKS                       R8 R9 K3 ["useContext"]
       45 GETUPVAL                         R10 10
       46 GETTABLEKS                       R9 R10 K4 ["Context"]
       48 CALL                             R8 1 1
       49 JUMP                             ; [+1]
       50 LOADNIL                          R8
       51 GETUPVAL                         R9 11
       52 LOADB                            R10 0
       53 CALL                             R9 1 1
       54 GETUPVAL                         R11 4
       55 CALL                             R11 0 1
       56 JUMPIFNOT                        R11 ; [+4]
       57 GETUPVAL                         R10 11
       58 LOADB                            R11 0
       59 CALL                             R10 1 1
       60 JUMP                             ; [+1]
       61 LOADNIL                          R10
       62 GETUPVAL                         R11 9
       63 CALL                             R11 0 1
       64 JUMPIFNOT                        R11 ; [+13]
       65 GETUPVAL                         R12 5
       66 GETTABLEKS                       R11 R12 K5 ["useEffect"]
       68 NEWCLOSURE                       R12 P0
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R10
       71 NEWTABLE                         R13 0 1
       73 GETTABLEKS                       R14 R10 K6 ["enabled"]
       75 SETLIST                          R13 R14 1 [1]
       77 CALL                             R11 2 0
       78 GETUPVAL                         R11 12
       79 CALL                             R11 0 1
       80 JUMPIFNOT                        R11 ; [+245]
       81 GETTABLEKS                       R11 R0 K7 ["type"]
       83 JUMPIFNOTEQKS                    R11 K8 ["autosetup"] ; [+242]
       85 GETUPVAL                         R12 5
       86 GETTABLEKS                       R11 R12 K9 ["createElement"]
       88 GETUPVAL                         R12 13
       89 DUPTABLE                         R13 K15 [{"BackgroundColor", "BorderColor3", "BorderSizePixel", "Size", "ZIndex"}]
       90 GETTABLEKS                       R14 R1 K10 ["BackgroundColor"]
       92 SETTABLEKS                       R14 R13 K10 ["BackgroundColor"]
       94 GETTABLEKS                       R14 R1 K16 ["BorderColor"]
       96 SETTABLEKS                       R14 R13 K11 ["BorderColor3"]
       98 LOADN                            R14 1
       99 SETTABLEKS                       R14 R13 K12 ["BorderSizePixel"]
      101 GETIMPORT                        R14 K18 [UDim2.new]
      103 LOADN                            R15 0
      104 GETTABLEKS                       R16 R1 K19 ["Width"]
      106 LOADN                            R17 1
      107 LOADN                            R18 0
      108 CALL                             R14 4 1
      109 SETTABLEKS                       R14 R13 K13 ["Size"]
      111 LOADN                            R14 3
      112 SETTABLEKS                       R14 R13 K14 ["ZIndex"]
      114 DUPTABLE                         R14 K23 [{"Contents", "SettingsButton", "SettingsMenu"}]
      115 GETUPVAL                         R16 5
      116 GETTABLEKS                       R15 R16 K9 ["createElement"]
      118 GETUPVAL                         R16 13
      119 DUPTABLE                         R17 K26 [{"Layout", "VerticalAlignment"}]
      120 GETIMPORT                        R18 K30 [Enum.FillDirection.Vertical]
      122 SETTABLEKS                       R18 R17 K24 ["Layout"]
      124 GETIMPORT                        R18 K32 [Enum.VerticalAlignment.Top]
      126 SETTABLEKS                       R18 R17 K25 ["VerticalAlignment"]
      128 DUPTABLE                         R18 K37 [{"CheckBody", "CheckFace", "Test", "Publish"}]
      129 GETUPVAL                         R20 5
      130 GETTABLEKS                       R19 R20 K9 ["createElement"]
      132 GETUPVAL                         R20 14
      133 DUPTABLE                         R21 K43 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Enabled"}]
      134 NAMECALL                         R22 R3 K44 ["getNextOrder"]
      136 CALL                             R22 1 1
      137 SETTABLEKS                       R22 R21 K38 ["LayoutOrder"]
      139 LOADK                            R22 K45 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_body.png"]
      140 SETTABLEKS                       R22 R21 K39 ["Icon"]
      142 LOADB                            R22 0
      143 SETTABLEKS                       R22 R21 K40 ["IsSelected"]
      145 LOADK                            R22 K33 ["CheckBody"]
      146 SETTABLEKS                       R22 R21 K41 ["StageText"]
      148 LOADB                            R22 0
      149 SETTABLEKS                       R22 R21 K42 ["Enabled"]
      151 CALL                             R19 2 1
      152 SETTABLEKS                       R19 R18 K33 ["CheckBody"]
      154 GETUPVAL                         R20 5
      155 GETTABLEKS                       R19 R20 K9 ["createElement"]
      157 GETUPVAL                         R20 14
      158 DUPTABLE                         R21 K43 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Enabled"}]
      159 NAMECALL                         R22 R3 K44 ["getNextOrder"]
      161 CALL                             R22 1 1
      162 SETTABLEKS                       R22 R21 K38 ["LayoutOrder"]
      164 LOADK                            R22 K46 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_face.png"]
      165 SETTABLEKS                       R22 R21 K39 ["Icon"]
      167 LOADB                            R22 0
      168 SETTABLEKS                       R22 R21 K40 ["IsSelected"]
      170 LOADK                            R22 K34 ["CheckFace"]
      171 SETTABLEKS                       R22 R21 K41 ["StageText"]
      173 LOADB                            R22 0
      174 SETTABLEKS                       R22 R21 K42 ["Enabled"]
      176 CALL                             R19 2 1
      177 SETTABLEKS                       R19 R18 K34 ["CheckFace"]
      179 GETUPVAL                         R20 5
      180 GETTABLEKS                       R19 R20 K9 ["createElement"]
      182 GETUPVAL                         R20 14
      183 DUPTABLE                         R21 K43 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Enabled"}]
      184 NAMECALL                         R22 R3 K44 ["getNextOrder"]
      186 CALL                             R22 1 1
      187 SETTABLEKS                       R22 R21 K38 ["LayoutOrder"]
      189 LOADK                            R22 K47 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/test.png"]
      190 SETTABLEKS                       R22 R21 K39 ["Icon"]
      192 LOADB                            R22 0
      193 SETTABLEKS                       R22 R21 K40 ["IsSelected"]
      195 LOADK                            R22 K35 ["Test"]
      196 SETTABLEKS                       R22 R21 K41 ["StageText"]
      198 LOADB                            R22 0
      199 SETTABLEKS                       R22 R21 K42 ["Enabled"]
      201 CALL                             R19 2 1
      202 SETTABLEKS                       R19 R18 K35 ["Test"]
      204 GETUPVAL                         R20 5
      205 GETTABLEKS                       R19 R20 K9 ["createElement"]
      207 GETUPVAL                         R20 14
      208 DUPTABLE                         R21 K49 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Tooltip", "Enabled"}]
      209 NAMECALL                         R22 R3 K44 ["getNextOrder"]
      211 CALL                             R22 1 1
      212 SETTABLEKS                       R22 R21 K38 ["LayoutOrder"]
      214 LOADK                            R22 K50 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
      215 SETTABLEKS                       R22 R21 K39 ["Icon"]
      217 LOADB                            R22 0
      218 SETTABLEKS                       R22 R21 K40 ["IsSelected"]
      220 LOADK                            R22 K36 ["Publish"]
      221 SETTABLEKS                       R22 R21 K41 ["StageText"]
      223 GETTABLEKS                       R23 R7 K51 ["canUploadBundles"]
      225 JUMPIFEQKNIL                     R23 ; [+33]
      227 GETTABLEKS                       R24 R7 K51 ["canUploadBundles"]
      229 GETTABLEKS                       R23 R24 K7 ["type"]
      231 JUMPIFNOTEQKS                    R23 K52 ["notAllowed"] ; [+27]
      233 GETTABLEKS                       R24 R7 K51 ["canUploadBundles"]
      235 GETTABLEKS                       R23 R24 K53 ["denyReason"]
      237 JUMPIFEQKS                       R23 K54 ["MissingPremiumSubscriptionTier"] ; [+7]
      239 GETTABLEKS                       R24 R7 K51 ["canUploadBundles"]
      241 GETTABLEKS                       R23 R24 K53 ["denyReason"]
      243 JUMPIFNOTEQKS                    R23 K55 ["MissingIdVerification"] ; [+15]
      245 LOADK                            R24 K0 ["StageSelector"]
      246 LOADK                            R26 K56 ["Publish_Deny_%*"]
      247 GETTABLEKS                       R29 R7 K51 ["canUploadBundles"]
      249 GETTABLEKS                       R28 R29 K53 ["denyReason"]
      251 NAMECALL                         R26 R26 K57 ["format"]
      253 CALL                             R26 2 1
      254 MOVE                             R25 R26
      255 NAMECALL                         R22 R2 K58 ["getText"]
      257 CALL                             R22 3 1
      258 JUMP                             ; [+1]
      259 LOADNIL                          R22
      260 SETTABLEKS                       R22 R21 K48 ["Tooltip"]
      262 LOADB                            R22 0
      263 SETTABLEKS                       R22 R21 K42 ["Enabled"]
      265 CALL                             R19 2 1
      266 SETTABLEKS                       R19 R18 K36 ["Publish"]
      268 CALL                             R15 3 1
      269 SETTABLEKS                       R15 R14 K20 ["Contents"]
      271 GETUPVAL                         R16 5
      272 GETTABLEKS                       R15 R16 K9 ["createElement"]
      274 GETUPVAL                         R16 14
      275 DUPTABLE                         R17 K62 [{"Icon", "IsSelected", "StageText", "AnchorPoint", "Position", "OnClick"}]
      276 LOADK                            R18 K63 ["rbxassetid://6663675885"]
      277 SETTABLEKS                       R18 R17 K39 ["Icon"]
      279 LOADB                            R18 0
      280 SETTABLEKS                       R18 R17 K40 ["IsSelected"]
      282 LOADK                            R18 K64 ["Settings"]
      283 SETTABLEKS                       R18 R17 K41 ["StageText"]
      285 GETIMPORT                        R18 K66 [Vector2.new]
      287 LOADN                            R19 0
      288 LOADN                            R20 1
      289 CALL                             R18 2 1
      290 SETTABLEKS                       R18 R17 K59 ["AnchorPoint"]
      292 GETIMPORT                        R18 K68 [UDim2.fromScale]
      294 LOADN                            R19 0
      295 LOADN                            R20 1
      296 CALL                             R18 2 1
      297 SETTABLEKS                       R18 R17 K60 ["Position"]
      299 GETTABLEKS                       R18 R9 K69 ["enable"]
      301 SETTABLEKS                       R18 R17 K61 ["OnClick"]
      303 CALL                             R15 2 1
      304 SETTABLEKS                       R15 R14 K21 ["SettingsButton"]
      306 GETTABLEKS                       R15 R9 K6 ["enabled"]
      308 JUMPIFNOT                        R15 ; [+13]
      309 GETUPVAL                         R16 5
      310 GETTABLEKS                       R15 R16 K9 ["createElement"]
      312 GETUPVAL                         R16 15
      313 DUPTABLE                         R17 K71 [{"type", "close"}]
      314 LOADK                            R18 K72 ["autoSetup"]
      315 SETTABLEKS                       R18 R17 K7 ["type"]
      317 GETTABLEKS                       R18 R9 K73 ["disable"]
      319 SETTABLEKS                       R18 R17 K70 ["close"]
      321 CALL                             R15 2 1
      322 SETTABLEKS                       R15 R14 K22 ["SettingsMenu"]
      324 CALL                             R11 3 -1
      325 RETURN                           R11 -1
      326 GETUPVAL                         R11 11
      327 LOADB                            R12 0
      328 CALL                             R11 1 1
      329 MOVE                             R12 R0
      330 JUMPIFNOT                        R12 ; [+9]
      331 GETTABLEKS                       R12 R0 K74 ["Avatar"]
      333 JUMPIFNOT                        R12 ; [+6]
      334 GETUPVAL                         R12 16
      335 GETTABLEKS                       R14 R0 K74 ["Avatar"]
      337 GETTABLEKS                       R13 R14 K75 ["WorldModel"]
      339 CALL                             R12 1 1
      340 GETUPVAL                         R14 4
      341 CALL                             R14 0 1
      342 JUMPIFNOT                        R14 ; [+8]
      343 GETUPVAL                         R14 5
      344 GETTABLEKS                       R13 R14 K3 ["useContext"]
      346 GETUPVAL                         R15 17
      347 GETTABLEKS                       R14 R15 K4 ["Context"]
      349 CALL                             R13 1 1
      350 JUMP                             ; [+1]
      351 LOADNIL                          R13
      352 GETUPVAL                         R15 4
      353 CALL                             R15 0 1
      354 JUMPIFNOT                        R15 ; [+4]
      355 JUMPIFNOT                        R13 ; [+3]
      356 GETTABLEKS                       R14 R13 K76 ["canCreateLook"]
      358 JUMP                             ; [+1]
      359 LOADB                            R14 0
      360 LOADB                            R15 1
      361 GETTABLEKS                       R16 R7 K51 ["canUploadBundles"]
      363 JUMPIFEQKNIL                     R16 ; [+9]
      365 GETTABLEKS                       R17 R7 K51 ["canUploadBundles"]
      367 GETTABLEKS                       R16 R17 K7 ["type"]
      369 JUMPIFNOTEQKS                    R16 K52 ["notAllowed"] ; [+2]
      371 LOADB                            R15 0 +1
      372 LOADB                            R15 1
      373 LOADNIL                          R16
      374 LOADNIL                          R17
      375 LOADNIL                          R18
      376 GETUPVAL                         R19 4
      377 CALL                             R19 0 1
      378 JUMPIFNOT                        R19 ; [+15]
      379 GETUPVAL                         R20 5
      380 GETTABLEKS                       R19 R20 K77 ["useState"]
      382 LOADK                            R20 K78 ["Closed"]
      383 CALL                             R19 1 2
      384 MOVE                             R16 R19
      385 MOVE                             R17 R20
      386 LOADB                            R19 1
      387 JUMPIFEQKS                       R16 K79 ["AvatarLook"] ; [+5]
      389 JUMPIFEQKS                       R16 K80 ["MakeupLook"] ; [+2]
      391 LOADB                            R19 0 +1
      392 LOADB                            R19 1
      393 MOVE                             R18 R19
      394 GETUPVAL                         R20 5
      395 GETTABLEKS                       R19 R20 K9 ["createElement"]
      397 GETUPVAL                         R20 13
      398 DUPTABLE                         R21 K81 [{"BackgroundColor", "Size", "ZIndex"}]
      399 GETTABLEKS                       R22 R1 K10 ["BackgroundColor"]
      401 SETTABLEKS                       R22 R21 K10 ["BackgroundColor"]
      403 GETIMPORT                        R22 K18 [UDim2.new]
      405 LOADN                            R23 0
      406 GETTABLEKS                       R24 R1 K19 ["Width"]
      408 LOADN                            R25 1
      409 LOADN                            R26 0
      410 CALL                             R22 4 1
      411 SETTABLEKS                       R22 R21 K13 ["Size"]
      413 LOADN                            R22 2
      414 SETTABLEKS                       R22 R21 K14 ["ZIndex"]
      416 DUPTABLE                         R22 K84 [{"Contents", "SettingsButton", "SettingsMenu", "SubmitDialog", "LookComposerDialog"}]
      417 GETUPVAL                         R24 5
      418 GETTABLEKS                       R23 R24 K9 ["createElement"]
      420 GETUPVAL                         R24 13
      421 DUPTABLE                         R25 K26 [{"Layout", "VerticalAlignment"}]
      422 GETIMPORT                        R26 K30 [Enum.FillDirection.Vertical]
      424 SETTABLEKS                       R26 R25 K24 ["Layout"]
      426 GETIMPORT                        R26 K32 [Enum.VerticalAlignment.Top]
      428 SETTABLEKS                       R26 R25 K25 ["VerticalAlignment"]
      430 DUPTABLE                         R26 K86 [{"CheckBody", "CheckFace", "Test", "LookSaveMenu", "Publish"}]
      431 GETUPVAL                         R28 5
      432 GETTABLEKS                       R27 R28 K9 ["createElement"]
      434 GETUPVAL                         R28 14
      435 DUPTABLE                         R29 K87 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      436 NAMECALL                         R30 R3 K44 ["getNextOrder"]
      438 CALL                             R30 1 1
      439 SETTABLEKS                       R30 R29 K38 ["LayoutOrder"]
      441 LOADK                            R30 K45 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_body.png"]
      442 SETTABLEKS                       R30 R29 K39 ["Icon"]
      444 GETTABLEKS                       R31 R0 K88 ["SelectedStage"]
      446 JUMPIFEQKS                       R31 K33 ["CheckBody"] ; [+2]
      448 LOADB                            R30 0 +1
      449 LOADB                            R30 1
      450 SETTABLEKS                       R30 R29 K40 ["IsSelected"]
      452 LOADK                            R30 K33 ["CheckBody"]
      453 SETTABLEKS                       R30 R29 K41 ["StageText"]
      455 NEWCLOSURE                       R30 P1
      456 CAPTURE                          VAL R4
      457 CAPTURE                          VAL R0
      458 SETTABLEKS                       R30 R29 K61 ["OnClick"]
      460 CALL                             R27 2 1
      461 SETTABLEKS                       R27 R26 K33 ["CheckBody"]
      463 GETUPVAL                         R28 5
      464 GETTABLEKS                       R27 R28 K9 ["createElement"]
      466 GETUPVAL                         R28 14
      467 DUPTABLE                         R29 K87 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      468 NAMECALL                         R30 R3 K44 ["getNextOrder"]
      470 CALL                             R30 1 1
      471 SETTABLEKS                       R30 R29 K38 ["LayoutOrder"]
      473 LOADK                            R30 K46 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_face.png"]
      474 SETTABLEKS                       R30 R29 K39 ["Icon"]
      476 GETTABLEKS                       R31 R0 K88 ["SelectedStage"]
      478 JUMPIFEQKS                       R31 K34 ["CheckFace"] ; [+2]
      480 LOADB                            R30 0 +1
      481 LOADB                            R30 1
      482 SETTABLEKS                       R30 R29 K40 ["IsSelected"]
      484 LOADK                            R30 K34 ["CheckFace"]
      485 SETTABLEKS                       R30 R29 K41 ["StageText"]
      487 NEWCLOSURE                       R30 P2
      488 CAPTURE                          VAL R4
      489 CAPTURE                          VAL R0
      490 SETTABLEKS                       R30 R29 K61 ["OnClick"]
      492 CALL                             R27 2 1
      493 SETTABLEKS                       R27 R26 K34 ["CheckFace"]
      495 GETUPVAL                         R28 5
      496 GETTABLEKS                       R27 R28 K9 ["createElement"]
      498 GETUPVAL                         R28 14
      499 DUPTABLE                         R29 K87 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      500 NAMECALL                         R30 R3 K44 ["getNextOrder"]
      502 CALL                             R30 1 1
      503 SETTABLEKS                       R30 R29 K38 ["LayoutOrder"]
      505 LOADK                            R30 K47 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/test.png"]
      506 SETTABLEKS                       R30 R29 K39 ["Icon"]
      508 LOADB                            R30 0
      509 SETTABLEKS                       R30 R29 K40 ["IsSelected"]
      511 LOADK                            R30 K35 ["Test"]
      512 SETTABLEKS                       R30 R29 K41 ["StageText"]
      514 NEWCLOSURE                       R30 P3
      515 CAPTURE                          VAL R4
      516 CAPTURE                          UPVAL U18
      517 CAPTURE                          VAL R6
      518 CAPTURE                          VAL R0
      519 SETTABLEKS                       R30 R29 K61 ["OnClick"]
      521 CALL                             R27 2 1
      522 SETTABLEKS                       R27 R26 K35 ["Test"]
      524 GETUPVAL                         R28 4
      525 CALL                             R28 0 1
      526 JUMPIFNOT                        R28 ; [+119]
      527 JUMPIFNOT                        R14 ; [+118]
      528 JUMPIFEQKNIL                     R10 ; [+117]
      530 GETUPVAL                         R28 5
      531 GETTABLEKS                       R27 R28 K9 ["createElement"]
      533 GETUPVAL                         R28 19
      534 DUPTABLE                         R29 K96 [{"LayoutOrder", "isOpen", "onClose", "onToggle", "onSaveToRoblox", "openAvatarLookComposer", "openMakeupLookComposer", "anchor"}]
      535 NAMECALL                         R30 R3 K44 ["getNextOrder"]
      537 CALL                             R30 1 1
      538 SETTABLEKS                       R30 R29 K38 ["LayoutOrder"]
      540 GETTABLEKS                       R30 R10 K6 ["enabled"]
      542 SETTABLEKS                       R30 R29 K89 ["isOpen"]
      544 GETTABLEKS                       R30 R10 K73 ["disable"]
      546 SETTABLEKS                       R30 R29 K90 ["onClose"]
      548 GETTABLEKS                       R30 R10 K97 ["toggle"]
      550 SETTABLEKS                       R30 R29 K91 ["onToggle"]
      552 NEWCLOSURE                       R30 P4
      553 CAPTURE                          VAL R11
      554 SETTABLEKS                       R30 R29 K92 ["onSaveToRoblox"]
      556 GETUPVAL                         R31 20
      557 CALL                             R31 0 1
      558 JUMPIFNOT                        R31 ; [+3]
      559 NEWCLOSURE                       R30 P5
      560 CAPTURE                          REF R17
      561 JUMP                             ; [+1]
      562 LOADNIL                          R30
      563 SETTABLEKS                       R30 R29 K93 ["openAvatarLookComposer"]
      565 NEWCLOSURE                       R30 P6
      566 CAPTURE                          REF R17
      567 SETTABLEKS                       R30 R29 K94 ["openMakeupLookComposer"]
      569 GETUPVAL                         R31 5
      570 GETTABLEKS                       R30 R31 K9 ["createElement"]
      572 GETUPVAL                         R31 14
      573 DUPTABLE                         R32 K99 [{"Icon", "IsSelected", "ShowMenuIndicator", "StageText", "Tooltip", "Enabled", "OnClick"}]
      574 LOADK                            R33 K50 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
      575 SETTABLEKS                       R33 R32 K39 ["Icon"]
      577 GETTABLEKS                       R33 R10 K6 ["enabled"]
      579 SETTABLEKS                       R33 R32 K40 ["IsSelected"]
      581 LOADB                            R33 1
      582 SETTABLEKS                       R33 R32 K98 ["ShowMenuIndicator"]
      584 LOADK                            R33 K36 ["Publish"]
      585 SETTABLEKS                       R33 R32 K41 ["StageText"]
      587 GETTABLEKS                       R34 R7 K51 ["canUploadBundles"]
      589 JUMPIFEQKNIL                     R34 ; [+33]
      591 GETTABLEKS                       R35 R7 K51 ["canUploadBundles"]
      593 GETTABLEKS                       R34 R35 K7 ["type"]
      595 JUMPIFNOTEQKS                    R34 K52 ["notAllowed"] ; [+27]
      597 GETTABLEKS                       R35 R7 K51 ["canUploadBundles"]
      599 GETTABLEKS                       R34 R35 K53 ["denyReason"]
      601 JUMPIFEQKS                       R34 K54 ["MissingPremiumSubscriptionTier"] ; [+7]
      603 GETTABLEKS                       R35 R7 K51 ["canUploadBundles"]
      605 GETTABLEKS                       R34 R35 K53 ["denyReason"]
      607 JUMPIFNOTEQKS                    R34 K55 ["MissingIdVerification"] ; [+15]
      609 LOADK                            R35 K0 ["StageSelector"]
      610 LOADK                            R37 K56 ["Publish_Deny_%*"]
      611 GETTABLEKS                       R40 R7 K51 ["canUploadBundles"]
      613 GETTABLEKS                       R39 R40 K53 ["denyReason"]
      615 NAMECALL                         R37 R37 K57 ["format"]
      617 CALL                             R37 2 1
      618 MOVE                             R36 R37
      619 NAMECALL                         R33 R2 K58 ["getText"]
      621 CALL                             R33 3 1
      622 JUMP                             ; [+5]
      623 LOADK                            R35 K85 ["LookSaveMenu"]
      624 LOADK                            R36 K100 ["Save"]
      625 NAMECALL                         R33 R2 K58 ["getText"]
      627 CALL                             R33 3 1
      628 SETTABLEKS                       R33 R32 K48 ["Tooltip"]
      630 JUMPIF                           R15 ; [+2]
      631 LOADB                            R33 0
      632 JUMP                             ; [+1]
      633 LOADNIL                          R33
      634 SETTABLEKS                       R33 R32 K42 ["Enabled"]
      636 NEWCLOSURE                       R33 P7
      637 CAPTURE                          VAL R15
      638 CAPTURE                          VAL R10
      639 SETTABLEKS                       R33 R32 K61 ["OnClick"]
      641 CALL                             R30 2 1
      642 SETTABLEKS                       R30 R29 K95 ["anchor"]
      644 CALL                             R27 2 1
      645 JUMP                             ; [+1]
      646 LOADNIL                          R27
      647 SETTABLEKS                       R27 R26 K85 ["LookSaveMenu"]
      649 GETUPVAL                         R28 4
      650 CALL                             R28 0 1
      651 JUMPIFNOT                        R28 ; [+1]
      652 JUMPIF                           R14 ; [+72]
      653 GETUPVAL                         R28 5
      654 GETTABLEKS                       R27 R28 K9 ["createElement"]
      656 GETUPVAL                         R28 14
      657 DUPTABLE                         R29 K101 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Tooltip", "Enabled", "OnClick"}]
      658 NAMECALL                         R30 R3 K44 ["getNextOrder"]
      660 CALL                             R30 1 1
      661 SETTABLEKS                       R30 R29 K38 ["LayoutOrder"]
      663 LOADK                            R30 K50 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
      664 SETTABLEKS                       R30 R29 K39 ["Icon"]
      666 LOADB                            R30 0
      667 SETTABLEKS                       R30 R29 K40 ["IsSelected"]
      669 LOADK                            R30 K36 ["Publish"]
      670 SETTABLEKS                       R30 R29 K41 ["StageText"]
      672 GETTABLEKS                       R31 R7 K51 ["canUploadBundles"]
      674 JUMPIFEQKNIL                     R31 ; [+33]
      676 GETTABLEKS                       R32 R7 K51 ["canUploadBundles"]
      678 GETTABLEKS                       R31 R32 K7 ["type"]
      680 JUMPIFNOTEQKS                    R31 K52 ["notAllowed"] ; [+27]
      682 GETTABLEKS                       R32 R7 K51 ["canUploadBundles"]
      684 GETTABLEKS                       R31 R32 K53 ["denyReason"]
      686 JUMPIFEQKS                       R31 K54 ["MissingPremiumSubscriptionTier"] ; [+7]
      688 GETTABLEKS                       R32 R7 K51 ["canUploadBundles"]
      690 GETTABLEKS                       R31 R32 K53 ["denyReason"]
      692 JUMPIFNOTEQKS                    R31 K55 ["MissingIdVerification"] ; [+15]
      694 LOADK                            R32 K0 ["StageSelector"]
      695 LOADK                            R34 K56 ["Publish_Deny_%*"]
      696 GETTABLEKS                       R37 R7 K51 ["canUploadBundles"]
      698 GETTABLEKS                       R36 R37 K53 ["denyReason"]
      700 NAMECALL                         R34 R34 K57 ["format"]
      702 CALL                             R34 2 1
      703 MOVE                             R33 R34
      704 NAMECALL                         R30 R2 K58 ["getText"]
      706 CALL                             R30 3 1
      707 JUMP                             ; [+1]
      708 LOADNIL                          R30
      709 SETTABLEKS                       R30 R29 K48 ["Tooltip"]
      711 JUMPIF                           R15 ; [+2]
      712 LOADB                            R30 0
      713 JUMP                             ; [+1]
      714 LOADNIL                          R30
      715 SETTABLEKS                       R30 R29 K42 ["Enabled"]
      717 NEWCLOSURE                       R30 P8
      718 CAPTURE                          VAL R4
      719 CAPTURE                          VAL R12
      720 CAPTURE                          VAL R11
      721 SETTABLEKS                       R30 R29 K61 ["OnClick"]
      723 CALL                             R27 2 1
      724 JUMP                             ; [+1]
      725 LOADNIL                          R27
      726 SETTABLEKS                       R27 R26 K36 ["Publish"]
      728 CALL                             R23 3 1
      729 SETTABLEKS                       R23 R22 K20 ["Contents"]
      731 GETUPVAL                         R24 5
      732 GETTABLEKS                       R23 R24 K9 ["createElement"]
      734 GETUPVAL                         R24 14
      735 DUPTABLE                         R25 K62 [{"Icon", "IsSelected", "StageText", "AnchorPoint", "Position", "OnClick"}]
      736 LOADK                            R26 K63 ["rbxassetid://6663675885"]
      737 SETTABLEKS                       R26 R25 K39 ["Icon"]
      739 LOADB                            R26 0
      740 SETTABLEKS                       R26 R25 K40 ["IsSelected"]
      742 LOADK                            R26 K64 ["Settings"]
      743 SETTABLEKS                       R26 R25 K41 ["StageText"]
      745 GETIMPORT                        R26 K66 [Vector2.new]
      747 LOADN                            R27 0
      748 LOADN                            R28 1
      749 CALL                             R26 2 1
      750 SETTABLEKS                       R26 R25 K59 ["AnchorPoint"]
      752 GETIMPORT                        R26 K68 [UDim2.fromScale]
      754 LOADN                            R27 0
      755 LOADN                            R28 1
      756 CALL                             R26 2 1
      757 SETTABLEKS                       R26 R25 K60 ["Position"]
      759 GETTABLEKS                       R26 R9 K69 ["enable"]
      761 SETTABLEKS                       R26 R25 K61 ["OnClick"]
      763 CALL                             R23 2 1
      764 SETTABLEKS                       R23 R22 K21 ["SettingsButton"]
      766 GETTABLEKS                       R23 R9 K6 ["enabled"]
      768 JUMPIFNOT                        R23 ; [+17]
      769 GETUPVAL                         R24 5
      770 GETTABLEKS                       R23 R24 K9 ["createElement"]
      772 GETUPVAL                         R24 15
      773 DUPTABLE                         R25 K103 [{"type", "avatar", "close"}]
      774 LOADK                            R26 K102 ["avatar"]
      775 SETTABLEKS                       R26 R25 K7 ["type"]
      777 GETTABLEKS                       R26 R0 K74 ["Avatar"]
      779 SETTABLEKS                       R26 R25 K102 ["avatar"]
      781 GETTABLEKS                       R26 R9 K73 ["disable"]
      783 SETTABLEKS                       R26 R25 K70 ["close"]
      785 CALL                             R23 2 1
      786 SETTABLEKS                       R23 R22 K22 ["SettingsMenu"]
      788 GETTABLEKS                       R23 R11 K6 ["enabled"]
      790 JUMPIFNOT                        R23 ; [+14]
      791 GETUPVAL                         R24 5
      792 GETTABLEKS                       R23 R24 K9 ["createElement"]
      794 GETUPVAL                         R24 21
      795 DUPTABLE                         R25 K104 [{"close", "avatar"}]
      796 GETTABLEKS                       R26 R11 K73 ["disable"]
      798 SETTABLEKS                       R26 R25 K70 ["close"]
      800 GETTABLEKS                       R26 R0 K74 ["Avatar"]
      802 SETTABLEKS                       R26 R25 K102 ["avatar"]
      804 CALL                             R23 2 1
      805 SETTABLEKS                       R23 R22 K82 ["SubmitDialog"]
      807 GETUPVAL                         R23 4
      808 CALL                             R23 0 1
      809 JUMPIFNOT                        R23 ; [+160]
      810 MOVE                             R23 R18
      811 JUMPIFNOT                        R23 ; [+158]
      812 GETUPVAL                         R24 5
      813 GETTABLEKS                       R23 R24 K9 ["createElement"]
      815 GETUPVAL                         R24 22
      816 DUPTABLE                         R25 K108 [{"dialogLookType", "equippedItems", "bodyScale", "onClose"}]
      817 SETTABLEKS                       R16 R25 K105 ["dialogLookType"]
      819 GETTABLEKS                       R26 R5 K106 ["equippedItems"]
      821 SETTABLEKS                       R26 R25 K106 ["equippedItems"]
      823 GETUPVAL                         R27 20
      824 CALL                             R27 0 1
      825 JUMPIFNOT                        R27 ; [+136]
      826 JUMPIFNOTEQKS                    R16 K79 ["AvatarLook"] ; [+135]
      828 DUPTABLE                         R26 K115 [{"bodyType", "depth", "head", "height", "proportion", "width"}]
      829 GETTABLEKS                       R30 R0 K74 ["Avatar"]
      831 GETTABLEKS                       R29 R30 K75 ["WorldModel"]
      833 GETTABLEKS                       R28 R29 K116 ["Humanoid"]
      835 LOADK                            R31 K117 ["BodyTypeScale"]
      836 NAMECALL                         R29 R28 K118 ["FindFirstChild"]
      838 CALL                             R29 2 1
      839 JUMPIFNOT                        R29 ; [+8]
      840 LOADK                            R32 K119 ["NumberValue"]
      841 NAMECALL                         R30 R29 K120 ["IsA"]
      843 CALL                             R30 2 1
      844 JUMPIFNOT                        R30 ; [+3]
      845 GETTABLEKS                       R27 R29 K121 ["Value"]
      847 JUMP                             ; [+1]
      848 LOADN                            R27 1
      849 SETTABLEKS                       R27 R26 K109 ["bodyType"]
      851 GETTABLEKS                       R30 R0 K74 ["Avatar"]
      853 GETTABLEKS                       R29 R30 K75 ["WorldModel"]
      855 GETTABLEKS                       R28 R29 K116 ["Humanoid"]
      857 LOADK                            R31 K122 ["BodyDepthScale"]
      858 NAMECALL                         R29 R28 K118 ["FindFirstChild"]
      860 CALL                             R29 2 1
      861 JUMPIFNOT                        R29 ; [+8]
      862 LOADK                            R32 K119 ["NumberValue"]
      863 NAMECALL                         R30 R29 K120 ["IsA"]
      865 CALL                             R30 2 1
      866 JUMPIFNOT                        R30 ; [+3]
      867 GETTABLEKS                       R27 R29 K121 ["Value"]
      869 JUMP                             ; [+1]
      870 LOADN                            R27 1
      871 SETTABLEKS                       R27 R26 K110 ["depth"]
      873 GETTABLEKS                       R30 R0 K74 ["Avatar"]
      875 GETTABLEKS                       R29 R30 K75 ["WorldModel"]
      877 GETTABLEKS                       R28 R29 K116 ["Humanoid"]
      879 LOADK                            R31 K123 ["HeadScale"]
      880 NAMECALL                         R29 R28 K118 ["FindFirstChild"]
      882 CALL                             R29 2 1
      883 JUMPIFNOT                        R29 ; [+8]
      884 LOADK                            R32 K119 ["NumberValue"]
      885 NAMECALL                         R30 R29 K120 ["IsA"]
      887 CALL                             R30 2 1
      888 JUMPIFNOT                        R30 ; [+3]
      889 GETTABLEKS                       R27 R29 K121 ["Value"]
      891 JUMP                             ; [+1]
      892 LOADN                            R27 1
      893 SETTABLEKS                       R27 R26 K111 ["head"]
      895 GETTABLEKS                       R30 R0 K74 ["Avatar"]
      897 GETTABLEKS                       R29 R30 K75 ["WorldModel"]
      899 GETTABLEKS                       R28 R29 K116 ["Humanoid"]
      901 LOADK                            R31 K124 ["BodyHeightScale"]
      902 NAMECALL                         R29 R28 K118 ["FindFirstChild"]
      904 CALL                             R29 2 1
      905 JUMPIFNOT                        R29 ; [+8]
      906 LOADK                            R32 K119 ["NumberValue"]
      907 NAMECALL                         R30 R29 K120 ["IsA"]
      909 CALL                             R30 2 1
      910 JUMPIFNOT                        R30 ; [+3]
      911 GETTABLEKS                       R27 R29 K121 ["Value"]
      913 JUMP                             ; [+1]
      914 LOADN                            R27 1
      915 SETTABLEKS                       R27 R26 K112 ["height"]
      917 GETTABLEKS                       R30 R0 K74 ["Avatar"]
      919 GETTABLEKS                       R29 R30 K75 ["WorldModel"]
      921 GETTABLEKS                       R28 R29 K116 ["Humanoid"]
      923 LOADK                            R31 K125 ["BodyProportionScale"]
      924 NAMECALL                         R29 R28 K118 ["FindFirstChild"]
      926 CALL                             R29 2 1
      927 JUMPIFNOT                        R29 ; [+8]
      928 LOADK                            R32 K119 ["NumberValue"]
      929 NAMECALL                         R30 R29 K120 ["IsA"]
      931 CALL                             R30 2 1
      932 JUMPIFNOT                        R30 ; [+3]
      933 GETTABLEKS                       R27 R29 K121 ["Value"]
      935 JUMP                             ; [+1]
      936 LOADN                            R27 1
      937 SETTABLEKS                       R27 R26 K113 ["proportion"]
      939 GETTABLEKS                       R30 R0 K74 ["Avatar"]
      941 GETTABLEKS                       R29 R30 K75 ["WorldModel"]
      943 GETTABLEKS                       R28 R29 K116 ["Humanoid"]
      945 LOADK                            R31 K126 ["BodyWidthScale"]
      946 NAMECALL                         R29 R28 K118 ["FindFirstChild"]
      948 CALL                             R29 2 1
      949 JUMPIFNOT                        R29 ; [+8]
      950 LOADK                            R32 K119 ["NumberValue"]
      951 NAMECALL                         R30 R29 K120 ["IsA"]
      953 CALL                             R30 2 1
      954 JUMPIFNOT                        R30 ; [+3]
      955 GETTABLEKS                       R27 R29 K121 ["Value"]
      957 JUMP                             ; [+1]
      958 LOADN                            R27 1
      959 SETTABLEKS                       R27 R26 K114 ["width"]
      961 JUMP                             ; [+1]
      962 LOADNIL                          R26
      963 SETTABLEKS                       R26 R25 K107 ["bodyScale"]
      965 NEWCLOSURE                       R26 P9
      966 CAPTURE                          REF R17
      967 SETTABLEKS                       R26 R25 K90 ["onClose"]
      969 CALL                             R23 2 1
      970 SETTABLEKS                       R23 R22 K83 ["LookComposerDialog"]
      972 CALL                             R19 3 -1
      973 CLOSEUPVALS                      R17
      974 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Resources"]
       34 GETTABLEKS                       R5 R6 K12 ["Theme"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R7 K13 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K10 ["Src"]
       48 GETTABLEKS                       R8 R9 K14 ["Util"]
       50 GETTABLEKS                       R7 R8 K15 ["TestInExperienceUtil"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R10 R0 K10 ["Src"]
       57 GETTABLEKS                       R9 R10 K16 ["Hooks"]
       59 GETTABLEKS                       R8 R9 K17 ["useCreatedByAutoSetup"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R11 R0 K10 ["Src"]
       66 GETTABLEKS                       R10 R11 K16 ["Hooks"]
       68 GETTABLEKS                       R9 R10 K18 ["useToggleState"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R12 R0 K10 ["Src"]
       75 GETTABLEKS                       R11 R12 K19 ["Components"]
       77 GETTABLEKS                       R10 R11 K20 ["AvatarScreenContext"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R13 R0 K10 ["Src"]
       84 GETTABLEKS                       R12 R13 K19 ["Components"]
       86 GETTABLEKS                       R11 R12 K21 ["AvatarSettings"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R14 R0 K10 ["Src"]
       93 GETTABLEKS                       R13 R14 K14 ["Util"]
       95 GETTABLEKS                       R12 R13 K22 ["EquipmentStateContext"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R15 R0 K10 ["Src"]
      102 GETTABLEKS                       R14 R15 K19 ["Components"]
      104 GETTABLEKS                       R13 R14 K23 ["LookContext"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R16 R0 K10 ["Src"]
      111 GETTABLEKS                       R15 R16 K19 ["Components"]
      113 GETTABLEKS                       R14 R15 K24 ["PlacesServiceContext"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R17 R0 K10 ["Src"]
      120 GETTABLEKS                       R16 R17 K19 ["Components"]
      122 GETTABLEKS                       R15 R16 K25 ["LookSaveMenu"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K5 [require]
      127 GETTABLEKS                       R18 R0 K10 ["Src"]
      129 GETTABLEKS                       R17 R18 K19 ["Components"]
      131 GETTABLEKS                       R16 R17 K26 ["SubmitDialog"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K5 [require]
      136 GETTABLEKS                       R19 R0 K10 ["Src"]
      138 GETTABLEKS                       R18 R19 K19 ["Components"]
      140 GETTABLEKS                       R17 R18 K27 ["UGCValidationContext"]
      142 CALL                             R16 1 1
      143 GETIMPORT                        R17 K5 [require]
      145 GETTABLEKS                       R20 R0 K10 ["Src"]
      147 GETTABLEKS                       R19 R20 K19 ["Components"]
      149 GETTABLEKS                       R18 R19 K28 ["LookComposerDialog"]
      151 CALL                             R17 1 1
      152 GETIMPORT                        R18 K5 [require]
      154 GETTABLEKS                       R21 R0 K10 ["Src"]
      156 GETTABLEKS                       R20 R21 K29 ["Flags"]
      158 GETTABLEKS                       R19 R20 K30 ["getFFlagAvatarAutosetupOptionsInput"]
      160 CALL                             R18 1 1
      161 GETIMPORT                        R19 K5 [require]
      163 GETTABLEKS                       R22 R0 K10 ["Src"]
      165 GETTABLEKS                       R21 R22 K29 ["Flags"]
      167 GETTABLEKS                       R20 R21 K31 ["getFFlagAvatarPreviewerLookComposer"]
      169 CALL                             R19 1 1
      170 GETIMPORT                        R20 K5 [require]
      172 GETTABLEKS                       R23 R0 K10 ["Src"]
      174 GETTABLEKS                       R22 R23 K29 ["Flags"]
      176 GETTABLEKS                       R21 R22 K32 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
      178 CALL                             R20 1 1
      179 GETIMPORT                        R21 K5 [require]
      181 GETTABLEKS                       R24 R0 K10 ["Src"]
      183 GETTABLEKS                       R23 R24 K29 ["Flags"]
      185 GETTABLEKS                       R22 R23 K33 ["getFFlagAvatarPreviewerCatalogButtonUpdatedUi"]
      187 CALL                             R21 1 1
      188 GETTABLEKS                       R22 R1 K34 ["UI"]
      190 GETTABLEKS                       R23 R22 K35 ["IconButton"]
      192 GETTABLEKS                       R24 R22 K36 ["Pane"]
      194 GETTABLEKS                       R26 R1 K14 ["Util"]
      196 GETTABLEKS                       R25 R26 K37 ["LayoutOrderIterator"]
      198 GETTABLEKS                       R27 R1 K38 ["ContextServices"]
      200 GETTABLEKS                       R26 R27 K39 ["Analytics"]
      202 GETTABLEKS                       R28 R1 K38 ["ContextServices"]
      204 GETTABLEKS                       R27 R28 K40 ["Localization"]
      206 GETTABLEKS                       R29 R1 K38 ["ContextServices"]
      208 GETTABLEKS                       R28 R29 K41 ["Stylizer"]
      210 DUPCLOSURE                       R29 K42 [PROTO_0]
      211 DUPCLOSURE                       R30 K43 [PROTO_1]
      212 CAPTURE                          VAL R28
      213 CAPTURE                          VAL R27
      214 CAPTURE                          VAL R19
      215 CAPTURE                          VAL R3
      216 CAPTURE                          VAL R23
      217 CAPTURE                          VAL R2
      218 DUPCLOSURE                       R31 K44 [PROTO_12]
      219 CAPTURE                          VAL R28
      220 CAPTURE                          VAL R27
      221 CAPTURE                          VAL R25
      222 CAPTURE                          VAL R26
      223 CAPTURE                          VAL R19
      224 CAPTURE                          VAL R3
      225 CAPTURE                          VAL R11
      226 CAPTURE                          VAL R13
      227 CAPTURE                          VAL R16
      228 CAPTURE                          VAL R21
      229 CAPTURE                          VAL R9
      230 CAPTURE                          VAL R8
      231 CAPTURE                          VAL R18
      232 CAPTURE                          VAL R24
      233 CAPTURE                          VAL R30
      234 CAPTURE                          VAL R10
      235 CAPTURE                          VAL R7
      236 CAPTURE                          VAL R12
      237 CAPTURE                          VAL R6
      238 CAPTURE                          VAL R14
      239 CAPTURE                          VAL R20
      240 CAPTURE                          VAL R15
      241 CAPTURE                          VAL R17
      242 RETURN                           R31 1
