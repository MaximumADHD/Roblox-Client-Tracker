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
       27 GETUPVAL                         R4 3
       28 GETTABLEKS                       R4 R4 K7 ["createElement"]
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
      134 GETUPVAL                         R5 3
      135 GETTABLEKS                       R5 R5 K7 ["createElement"]
      137 GETUPVAL                         R6 3
      138 GETTABLEKS                       R6 R6 K43 ["Fragment"]
      140 NEWTABLE                         R7 0 0
      142 NEWTABLE                         R8 2 0
      144 SETTABLEKS                       R4 R8 K44 ["IconButton"]
      146 LOADK                            R10 K45 ["%*_Disabled"]
      147 GETTABLEKS                       R12 R0 K41 ["StageText"]
      149 NAMECALL                         R10 R10 K46 ["format"]
      151 CALL                             R10 2 1
      152 MOVE                             R9 R10
      153 GETUPVAL                         R10 3
      154 GETTABLEKS                       R10 R10 K7 ["createElement"]
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
      169 GETUPVAL                         R7 3
      170 GETTABLEKS                       R7 R7 K7 ["createElement"]
      172 GETUPVAL                         R8 5
      173 GETTABLEKS                       R8 R8 K51 ["View"]
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
      209 GETUPVAL                         R11 3
      210 GETTABLEKS                       R11 R11 K7 ["createElement"]
      212 GETUPVAL                         R12 5
      213 GETTABLEKS                       R12 R12 K34 ["Icon"]
      215 DUPTABLE                         R13 K63 [{"name", "variant", "size", "tag"}]
      216 GETUPVAL                         R14 5
      217 GETTABLEKS                       R14 R14 K64 ["Enums"]
      219 GETTABLEKS                       R14 R14 K65 ["IconName"]
      221 GETTABLEKS                       R14 R14 K66 ["CaretSmallDown"]
      223 SETTABLEKS                       R14 R13 K59 ["name"]
      225 GETUPVAL                         R14 5
      226 GETTABLEKS                       R14 R14 K64 ["Enums"]
      228 GETTABLEKS                       R14 R14 K67 ["IconVariant"]
      230 GETTABLEKS                       R14 R14 K68 ["Filled"]
      232 SETTABLEKS                       R14 R13 K60 ["variant"]
      234 GETUPVAL                         R14 5
      235 GETTABLEKS                       R14 R14 K64 ["Enums"]
      237 GETTABLEKS                       R14 R14 K13 ["IconSize"]
      239 GETTABLEKS                       R14 R14 K69 ["XSmall"]
      241 SETTABLEKS                       R14 R13 K61 ["size"]
      243 LOADK                            R14 K70 ["size-full-full content-system-contrast"]
      244 SETTABLEKS                       R14 R13 K62 ["tag"]
      246 CALL                             R11 2 1
      247 SETTABLEKS                       R11 R10 K34 ["Icon"]
      249 CALL                             R7 3 1
      250 SETTABLEKS                       R7 R6 K49 ["MenuIndicator"]
      252 GETUPVAL                         R7 3
      253 GETTABLEKS                       R7 R7 K7 ["createElement"]
      255 GETUPVAL                         R8 5
      256 GETTABLEKS                       R8 R8 K51 ["View"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setFoundationMenuOpen"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["enabled"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["setStage"]
        2 LOADK                            R3 K1 ["CheckBody"]
        3 NAMECALL                         R0 R0 K2 ["report"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K3 ["SetStage"]
        9 LOADK                            R1 K1 ["CheckBody"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["setStage"]
        2 LOADK                            R3 K1 ["CheckFace"]
        3 NAMECALL                         R0 R0 K2 ["report"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K3 ["SetStage"]
        9 LOADK                            R1 K1 ["CheckFace"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["testInExperience"]
        2 NAMECALL                         R0 R0 K1 ["report"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K2 ["test"]
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R2 R2 K3 ["PreviewDummy"]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K4 ["Avatar"]
       15 CALL                             R0 3 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enable"]
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
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["toggle"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["publish"]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R0 R0 K1 ["report"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K2 ["enable"]
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
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["new"]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 3
       14 NAMECALL                         R4 R4 K1 ["use"]
       16 CALL                             R4 1 1
       17 GETUPVAL                         R6 4
       18 CALL                             R6 0 1
       19 JUMPIFNOT                        R6 ; [+6]
       20 GETUPVAL                         R5 5
       21 GETTABLEKS                       R5 R5 K3 ["useContext"]
       23 GETUPVAL                         R6 6
       24 CALL                             R5 1 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R5
       27 GETUPVAL                         R6 5
       28 GETTABLEKS                       R6 R6 K3 ["useContext"]
       30 GETUPVAL                         R7 7
       31 CALL                             R6 1 1
       32 GETUPVAL                         R7 5
       33 GETTABLEKS                       R7 R7 K3 ["useContext"]
       35 GETUPVAL                         R8 8
       36 GETTABLEKS                       R8 R8 K4 ["Context"]
       38 CALL                             R7 1 1
       39 GETUPVAL                         R9 9
       40 CALL                             R9 0 1
       41 JUMPIFNOT                        R9 ; [+8]
       42 GETUPVAL                         R8 5
       43 GETTABLEKS                       R8 R8 K3 ["useContext"]
       45 GETUPVAL                         R9 10
       46 GETTABLEKS                       R9 R9 K4 ["Context"]
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
       65 GETUPVAL                         R11 5
       66 GETTABLEKS                       R11 R11 K5 ["useEffect"]
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
       85 GETUPVAL                         R11 5
       86 GETTABLEKS                       R11 R11 K9 ["createElement"]
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
      115 GETUPVAL                         R15 5
      116 GETTABLEKS                       R15 R15 K9 ["createElement"]
      118 GETUPVAL                         R16 13
      119 DUPTABLE                         R17 K26 [{"Layout", "VerticalAlignment"}]
      120 GETIMPORT                        R18 K30 [Enum.FillDirection.Vertical]
      122 SETTABLEKS                       R18 R17 K24 ["Layout"]
      124 GETIMPORT                        R18 K32 [Enum.VerticalAlignment.Top]
      126 SETTABLEKS                       R18 R17 K25 ["VerticalAlignment"]
      128 DUPTABLE                         R18 K37 [{"CheckBody", "CheckFace", "Test", "Publish"}]
      129 GETUPVAL                         R19 5
      130 GETTABLEKS                       R19 R19 K9 ["createElement"]
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
      154 GETUPVAL                         R19 5
      155 GETTABLEKS                       R19 R19 K9 ["createElement"]
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
      179 GETUPVAL                         R19 5
      180 GETTABLEKS                       R19 R19 K9 ["createElement"]
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
      204 GETUPVAL                         R19 5
      205 GETTABLEKS                       R19 R19 K9 ["createElement"]
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
      227 GETTABLEKS                       R23 R7 K51 ["canUploadBundles"]
      229 GETTABLEKS                       R23 R23 K7 ["type"]
      231 JUMPIFNOTEQKS                    R23 K52 ["notAllowed"] ; [+27]
      233 GETTABLEKS                       R23 R7 K51 ["canUploadBundles"]
      235 GETTABLEKS                       R23 R23 K53 ["denyReason"]
      237 JUMPIFEQKS                       R23 K54 ["MissingPremiumSubscriptionTier"] ; [+7]
      239 GETTABLEKS                       R23 R7 K51 ["canUploadBundles"]
      241 GETTABLEKS                       R23 R23 K53 ["denyReason"]
      243 JUMPIFNOTEQKS                    R23 K55 ["MissingIdVerification"] ; [+15]
      245 LOADK                            R24 K0 ["StageSelector"]
      246 LOADK                            R26 K56 ["Publish_Deny_%*"]
      247 GETTABLEKS                       R28 R7 K51 ["canUploadBundles"]
      249 GETTABLEKS                       R28 R28 K53 ["denyReason"]
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
      271 GETUPVAL                         R15 5
      272 GETTABLEKS                       R15 R15 K9 ["createElement"]
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
      309 GETUPVAL                         R15 5
      310 GETTABLEKS                       R15 R15 K9 ["createElement"]
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
      335 GETTABLEKS                       R13 R0 K74 ["Avatar"]
      337 GETTABLEKS                       R13 R13 K75 ["WorldModel"]
      339 CALL                             R12 1 1
      340 GETUPVAL                         R14 17
      341 CALL                             R14 0 1
      342 JUMPIFNOT                        R14 ; [+8]
      343 GETUPVAL                         R13 5
      344 GETTABLEKS                       R13 R13 K3 ["useContext"]
      346 GETUPVAL                         R14 18
      347 GETTABLEKS                       R14 R14 K4 ["Context"]
      349 CALL                             R13 1 1
      350 JUMP                             ; [+1]
      351 LOADNIL                          R13
      352 GETUPVAL                         R15 4
      353 CALL                             R15 0 1
      354 JUMPIFNOT                        R15 ; [+11]
      355 GETUPVAL                         R15 17
      356 CALL                             R15 0 1
      357 JUMPIF                           R15 ; [+8]
      358 GETUPVAL                         R14 5
      359 GETTABLEKS                       R14 R14 K3 ["useContext"]
      361 GETUPVAL                         R15 19
      362 GETTABLEKS                       R15 R15 K4 ["Context"]
      364 CALL                             R14 1 1
      365 JUMP                             ; [+1]
      366 LOADNIL                          R14
      367 GETUPVAL                         R16 17
      368 CALL                             R16 0 1
      369 JUMPIFNOT                        R16 ; [+3]
      370 GETTABLEKS                       R15 R13 K76 ["showLookSaveMenu"]
      372 JUMP                             ; [+7]
      373 GETUPVAL                         R16 4
      374 CALL                             R16 0 1
      375 JUMPIFNOT                        R16 ; [+3]
      376 GETTABLEKS                       R15 R14 K77 ["canCreateLook"]
      378 JUMP                             ; [+1]
      379 LOADB                            R15 0
      380 LOADB                            R16 1
      381 GETTABLEKS                       R17 R7 K51 ["canUploadBundles"]
      383 JUMPIFEQKNIL                     R17 ; [+9]
      385 GETTABLEKS                       R17 R7 K51 ["canUploadBundles"]
      387 GETTABLEKS                       R17 R17 K7 ["type"]
      389 JUMPIFNOTEQKS                    R17 K52 ["notAllowed"] ; [+2]
      391 LOADB                            R16 0 +1
      392 LOADB                            R16 1
      393 LOADNIL                          R17
      394 LOADNIL                          R18
      395 LOADNIL                          R19
      396 GETUPVAL                         R20 4
      397 CALL                             R20 0 1
      398 JUMPIFNOT                        R20 ; [+15]
      399 GETUPVAL                         R20 5
      400 GETTABLEKS                       R20 R20 K78 ["useState"]
      402 LOADK                            R21 K79 ["Closed"]
      403 CALL                             R20 1 2
      404 MOVE                             R17 R20
      405 MOVE                             R18 R21
      406 LOADB                            R20 1
      407 JUMPIFEQKS                       R17 K80 ["AvatarLook"] ; [+5]
      409 JUMPIFEQKS                       R17 K81 ["MakeupLook"] ; [+2]
      411 LOADB                            R20 0 +1
      412 LOADB                            R20 1
      413 MOVE                             R19 R20
      414 GETUPVAL                         R20 5
      415 GETTABLEKS                       R20 R20 K9 ["createElement"]
      417 GETUPVAL                         R21 13
      418 DUPTABLE                         R22 K82 [{"BackgroundColor", "Size", "ZIndex"}]
      419 GETTABLEKS                       R23 R1 K10 ["BackgroundColor"]
      421 SETTABLEKS                       R23 R22 K10 ["BackgroundColor"]
      423 GETIMPORT                        R23 K18 [UDim2.new]
      425 LOADN                            R24 0
      426 GETTABLEKS                       R25 R1 K19 ["Width"]
      428 LOADN                            R26 1
      429 LOADN                            R27 0
      430 CALL                             R23 4 1
      431 SETTABLEKS                       R23 R22 K13 ["Size"]
      433 LOADN                            R23 2
      434 SETTABLEKS                       R23 R22 K14 ["ZIndex"]
      436 DUPTABLE                         R23 K85 [{"Contents", "SettingsButton", "SettingsMenu", "SubmitDialog", "LookComposerDialog"}]
      437 GETUPVAL                         R24 5
      438 GETTABLEKS                       R24 R24 K9 ["createElement"]
      440 GETUPVAL                         R25 13
      441 DUPTABLE                         R26 K26 [{"Layout", "VerticalAlignment"}]
      442 GETIMPORT                        R27 K30 [Enum.FillDirection.Vertical]
      444 SETTABLEKS                       R27 R26 K24 ["Layout"]
      446 GETIMPORT                        R27 K32 [Enum.VerticalAlignment.Top]
      448 SETTABLEKS                       R27 R26 K25 ["VerticalAlignment"]
      450 DUPTABLE                         R27 K87 [{"CheckBody", "CheckFace", "Test", "LookSaveMenu", "Publish"}]
      451 GETUPVAL                         R28 5
      452 GETTABLEKS                       R28 R28 K9 ["createElement"]
      454 GETUPVAL                         R29 14
      455 DUPTABLE                         R30 K88 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      456 NAMECALL                         R31 R3 K44 ["getNextOrder"]
      458 CALL                             R31 1 1
      459 SETTABLEKS                       R31 R30 K38 ["LayoutOrder"]
      461 LOADK                            R31 K45 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_body.png"]
      462 SETTABLEKS                       R31 R30 K39 ["Icon"]
      464 GETTABLEKS                       R32 R0 K89 ["SelectedStage"]
      466 JUMPIFEQKS                       R32 K33 ["CheckBody"] ; [+2]
      468 LOADB                            R31 0 +1
      469 LOADB                            R31 1
      470 SETTABLEKS                       R31 R30 K40 ["IsSelected"]
      472 LOADK                            R31 K33 ["CheckBody"]
      473 SETTABLEKS                       R31 R30 K41 ["StageText"]
      475 NEWCLOSURE                       R31 P1
      476 CAPTURE                          VAL R4
      477 CAPTURE                          VAL R0
      478 SETTABLEKS                       R31 R30 K61 ["OnClick"]
      480 CALL                             R28 2 1
      481 SETTABLEKS                       R28 R27 K33 ["CheckBody"]
      483 GETUPVAL                         R28 5
      484 GETTABLEKS                       R28 R28 K9 ["createElement"]
      486 GETUPVAL                         R29 14
      487 DUPTABLE                         R30 K88 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      488 NAMECALL                         R31 R3 K44 ["getNextOrder"]
      490 CALL                             R31 1 1
      491 SETTABLEKS                       R31 R30 K38 ["LayoutOrder"]
      493 LOADK                            R31 K46 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_face.png"]
      494 SETTABLEKS                       R31 R30 K39 ["Icon"]
      496 GETTABLEKS                       R32 R0 K89 ["SelectedStage"]
      498 JUMPIFEQKS                       R32 K34 ["CheckFace"] ; [+2]
      500 LOADB                            R31 0 +1
      501 LOADB                            R31 1
      502 SETTABLEKS                       R31 R30 K40 ["IsSelected"]
      504 LOADK                            R31 K34 ["CheckFace"]
      505 SETTABLEKS                       R31 R30 K41 ["StageText"]
      507 NEWCLOSURE                       R31 P2
      508 CAPTURE                          VAL R4
      509 CAPTURE                          VAL R0
      510 SETTABLEKS                       R31 R30 K61 ["OnClick"]
      512 CALL                             R28 2 1
      513 SETTABLEKS                       R28 R27 K34 ["CheckFace"]
      515 GETUPVAL                         R28 5
      516 GETTABLEKS                       R28 R28 K9 ["createElement"]
      518 GETUPVAL                         R29 14
      519 DUPTABLE                         R30 K88 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      520 NAMECALL                         R31 R3 K44 ["getNextOrder"]
      522 CALL                             R31 1 1
      523 SETTABLEKS                       R31 R30 K38 ["LayoutOrder"]
      525 LOADK                            R31 K47 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/test.png"]
      526 SETTABLEKS                       R31 R30 K39 ["Icon"]
      528 LOADB                            R31 0
      529 SETTABLEKS                       R31 R30 K40 ["IsSelected"]
      531 LOADK                            R31 K35 ["Test"]
      532 SETTABLEKS                       R31 R30 K41 ["StageText"]
      534 NEWCLOSURE                       R31 P3
      535 CAPTURE                          VAL R4
      536 CAPTURE                          UPVAL U20
      537 CAPTURE                          VAL R6
      538 CAPTURE                          VAL R0
      539 SETTABLEKS                       R31 R30 K61 ["OnClick"]
      541 CALL                             R28 2 1
      542 SETTABLEKS                       R28 R27 K35 ["Test"]
      544 GETUPVAL                         R29 4
      545 CALL                             R29 0 1
      546 JUMPIFNOT                        R29 ; [+119]
      547 JUMPIFNOT                        R15 ; [+118]
      548 JUMPIFEQKNIL                     R10 ; [+117]
      550 GETUPVAL                         R28 5
      551 GETTABLEKS                       R28 R28 K9 ["createElement"]
      553 GETUPVAL                         R29 21
      554 DUPTABLE                         R30 K97 [{"LayoutOrder", "isOpen", "onClose", "onToggle", "onSaveToRoblox", "openAvatarLookComposer", "openMakeupLookComposer", "anchor"}]
      555 NAMECALL                         R31 R3 K44 ["getNextOrder"]
      557 CALL                             R31 1 1
      558 SETTABLEKS                       R31 R30 K38 ["LayoutOrder"]
      560 GETTABLEKS                       R31 R10 K6 ["enabled"]
      562 SETTABLEKS                       R31 R30 K90 ["isOpen"]
      564 GETTABLEKS                       R31 R10 K73 ["disable"]
      566 SETTABLEKS                       R31 R30 K91 ["onClose"]
      568 GETTABLEKS                       R31 R10 K98 ["toggle"]
      570 SETTABLEKS                       R31 R30 K92 ["onToggle"]
      572 NEWCLOSURE                       R31 P4
      573 CAPTURE                          VAL R11
      574 SETTABLEKS                       R31 R30 K93 ["onSaveToRoblox"]
      576 GETUPVAL                         R32 17
      577 CALL                             R32 0 1
      578 JUMPIFNOT                        R32 ; [+3]
      579 NEWCLOSURE                       R31 P5
      580 CAPTURE                          REF R18
      581 JUMP                             ; [+1]
      582 LOADNIL                          R31
      583 SETTABLEKS                       R31 R30 K94 ["openAvatarLookComposer"]
      585 NEWCLOSURE                       R31 P6
      586 CAPTURE                          REF R18
      587 SETTABLEKS                       R31 R30 K95 ["openMakeupLookComposer"]
      589 GETUPVAL                         R31 5
      590 GETTABLEKS                       R31 R31 K9 ["createElement"]
      592 GETUPVAL                         R32 14
      593 DUPTABLE                         R33 K100 [{"Icon", "IsSelected", "ShowMenuIndicator", "StageText", "Tooltip", "Enabled", "OnClick"}]
      594 LOADK                            R34 K50 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
      595 SETTABLEKS                       R34 R33 K39 ["Icon"]
      597 GETTABLEKS                       R34 R10 K6 ["enabled"]
      599 SETTABLEKS                       R34 R33 K40 ["IsSelected"]
      601 LOADB                            R34 1
      602 SETTABLEKS                       R34 R33 K99 ["ShowMenuIndicator"]
      604 LOADK                            R34 K36 ["Publish"]
      605 SETTABLEKS                       R34 R33 K41 ["StageText"]
      607 GETTABLEKS                       R35 R7 K51 ["canUploadBundles"]
      609 JUMPIFEQKNIL                     R35 ; [+33]
      611 GETTABLEKS                       R35 R7 K51 ["canUploadBundles"]
      613 GETTABLEKS                       R35 R35 K7 ["type"]
      615 JUMPIFNOTEQKS                    R35 K52 ["notAllowed"] ; [+27]
      617 GETTABLEKS                       R35 R7 K51 ["canUploadBundles"]
      619 GETTABLEKS                       R35 R35 K53 ["denyReason"]
      621 JUMPIFEQKS                       R35 K54 ["MissingPremiumSubscriptionTier"] ; [+7]
      623 GETTABLEKS                       R35 R7 K51 ["canUploadBundles"]
      625 GETTABLEKS                       R35 R35 K53 ["denyReason"]
      627 JUMPIFNOTEQKS                    R35 K55 ["MissingIdVerification"] ; [+15]
      629 LOADK                            R36 K0 ["StageSelector"]
      630 LOADK                            R38 K56 ["Publish_Deny_%*"]
      631 GETTABLEKS                       R40 R7 K51 ["canUploadBundles"]
      633 GETTABLEKS                       R40 R40 K53 ["denyReason"]
      635 NAMECALL                         R38 R38 K57 ["format"]
      637 CALL                             R38 2 1
      638 MOVE                             R37 R38
      639 NAMECALL                         R34 R2 K58 ["getText"]
      641 CALL                             R34 3 1
      642 JUMP                             ; [+5]
      643 LOADK                            R36 K86 ["LookSaveMenu"]
      644 LOADK                            R37 K101 ["Save"]
      645 NAMECALL                         R34 R2 K58 ["getText"]
      647 CALL                             R34 3 1
      648 SETTABLEKS                       R34 R33 K48 ["Tooltip"]
      650 JUMPIF                           R16 ; [+2]
      651 LOADB                            R34 0
      652 JUMP                             ; [+1]
      653 LOADNIL                          R34
      654 SETTABLEKS                       R34 R33 K42 ["Enabled"]
      656 NEWCLOSURE                       R34 P7
      657 CAPTURE                          VAL R16
      658 CAPTURE                          VAL R10
      659 SETTABLEKS                       R34 R33 K61 ["OnClick"]
      661 CALL                             R31 2 1
      662 SETTABLEKS                       R31 R30 K96 ["anchor"]
      664 CALL                             R28 2 1
      665 JUMP                             ; [+1]
      666 LOADNIL                          R28
      667 SETTABLEKS                       R28 R27 K86 ["LookSaveMenu"]
      669 GETUPVAL                         R29 4
      670 CALL                             R29 0 1
      671 JUMPIFNOT                        R29 ; [+1]
      672 JUMPIF                           R15 ; [+72]
      673 GETUPVAL                         R28 5
      674 GETTABLEKS                       R28 R28 K9 ["createElement"]
      676 GETUPVAL                         R29 14
      677 DUPTABLE                         R30 K102 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Tooltip", "Enabled", "OnClick"}]
      678 NAMECALL                         R31 R3 K44 ["getNextOrder"]
      680 CALL                             R31 1 1
      681 SETTABLEKS                       R31 R30 K38 ["LayoutOrder"]
      683 LOADK                            R31 K50 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
      684 SETTABLEKS                       R31 R30 K39 ["Icon"]
      686 LOADB                            R31 0
      687 SETTABLEKS                       R31 R30 K40 ["IsSelected"]
      689 LOADK                            R31 K36 ["Publish"]
      690 SETTABLEKS                       R31 R30 K41 ["StageText"]
      692 GETTABLEKS                       R32 R7 K51 ["canUploadBundles"]
      694 JUMPIFEQKNIL                     R32 ; [+33]
      696 GETTABLEKS                       R32 R7 K51 ["canUploadBundles"]
      698 GETTABLEKS                       R32 R32 K7 ["type"]
      700 JUMPIFNOTEQKS                    R32 K52 ["notAllowed"] ; [+27]
      702 GETTABLEKS                       R32 R7 K51 ["canUploadBundles"]
      704 GETTABLEKS                       R32 R32 K53 ["denyReason"]
      706 JUMPIFEQKS                       R32 K54 ["MissingPremiumSubscriptionTier"] ; [+7]
      708 GETTABLEKS                       R32 R7 K51 ["canUploadBundles"]
      710 GETTABLEKS                       R32 R32 K53 ["denyReason"]
      712 JUMPIFNOTEQKS                    R32 K55 ["MissingIdVerification"] ; [+15]
      714 LOADK                            R33 K0 ["StageSelector"]
      715 LOADK                            R35 K56 ["Publish_Deny_%*"]
      716 GETTABLEKS                       R37 R7 K51 ["canUploadBundles"]
      718 GETTABLEKS                       R37 R37 K53 ["denyReason"]
      720 NAMECALL                         R35 R35 K57 ["format"]
      722 CALL                             R35 2 1
      723 MOVE                             R34 R35
      724 NAMECALL                         R31 R2 K58 ["getText"]
      726 CALL                             R31 3 1
      727 JUMP                             ; [+1]
      728 LOADNIL                          R31
      729 SETTABLEKS                       R31 R30 K48 ["Tooltip"]
      731 JUMPIF                           R16 ; [+2]
      732 LOADB                            R31 0
      733 JUMP                             ; [+1]
      734 LOADNIL                          R31
      735 SETTABLEKS                       R31 R30 K42 ["Enabled"]
      737 NEWCLOSURE                       R31 P8
      738 CAPTURE                          VAL R4
      739 CAPTURE                          VAL R12
      740 CAPTURE                          VAL R11
      741 SETTABLEKS                       R31 R30 K61 ["OnClick"]
      743 CALL                             R28 2 1
      744 JUMP                             ; [+1]
      745 LOADNIL                          R28
      746 SETTABLEKS                       R28 R27 K36 ["Publish"]
      748 CALL                             R24 3 1
      749 SETTABLEKS                       R24 R23 K20 ["Contents"]
      751 GETUPVAL                         R24 5
      752 GETTABLEKS                       R24 R24 K9 ["createElement"]
      754 GETUPVAL                         R25 14
      755 DUPTABLE                         R26 K62 [{"Icon", "IsSelected", "StageText", "AnchorPoint", "Position", "OnClick"}]
      756 LOADK                            R27 K63 ["rbxassetid://6663675885"]
      757 SETTABLEKS                       R27 R26 K39 ["Icon"]
      759 LOADB                            R27 0
      760 SETTABLEKS                       R27 R26 K40 ["IsSelected"]
      762 LOADK                            R27 K64 ["Settings"]
      763 SETTABLEKS                       R27 R26 K41 ["StageText"]
      765 GETIMPORT                        R27 K66 [Vector2.new]
      767 LOADN                            R28 0
      768 LOADN                            R29 1
      769 CALL                             R27 2 1
      770 SETTABLEKS                       R27 R26 K59 ["AnchorPoint"]
      772 GETIMPORT                        R27 K68 [UDim2.fromScale]
      774 LOADN                            R28 0
      775 LOADN                            R29 1
      776 CALL                             R27 2 1
      777 SETTABLEKS                       R27 R26 K60 ["Position"]
      779 GETTABLEKS                       R27 R9 K69 ["enable"]
      781 SETTABLEKS                       R27 R26 K61 ["OnClick"]
      783 CALL                             R24 2 1
      784 SETTABLEKS                       R24 R23 K21 ["SettingsButton"]
      786 GETTABLEKS                       R24 R9 K6 ["enabled"]
      788 JUMPIFNOT                        R24 ; [+17]
      789 GETUPVAL                         R24 5
      790 GETTABLEKS                       R24 R24 K9 ["createElement"]
      792 GETUPVAL                         R25 15
      793 DUPTABLE                         R26 K104 [{"type", "avatar", "close"}]
      794 LOADK                            R27 K103 ["avatar"]
      795 SETTABLEKS                       R27 R26 K7 ["type"]
      797 GETTABLEKS                       R27 R0 K74 ["Avatar"]
      799 SETTABLEKS                       R27 R26 K103 ["avatar"]
      801 GETTABLEKS                       R27 R9 K73 ["disable"]
      803 SETTABLEKS                       R27 R26 K70 ["close"]
      805 CALL                             R24 2 1
      806 SETTABLEKS                       R24 R23 K22 ["SettingsMenu"]
      808 GETTABLEKS                       R24 R11 K6 ["enabled"]
      810 JUMPIFNOT                        R24 ; [+14]
      811 GETUPVAL                         R24 5
      812 GETTABLEKS                       R24 R24 K9 ["createElement"]
      814 GETUPVAL                         R25 22
      815 DUPTABLE                         R26 K105 [{"close", "avatar"}]
      816 GETTABLEKS                       R27 R11 K73 ["disable"]
      818 SETTABLEKS                       R27 R26 K70 ["close"]
      820 GETTABLEKS                       R27 R0 K74 ["Avatar"]
      822 SETTABLEKS                       R27 R26 K103 ["avatar"]
      824 CALL                             R24 2 1
      825 SETTABLEKS                       R24 R23 K83 ["SubmitDialog"]
      827 GETUPVAL                         R24 4
      828 CALL                             R24 0 1
      829 JUMPIFNOT                        R24 ; [+160]
      830 MOVE                             R24 R19
      831 JUMPIFNOT                        R24 ; [+158]
      832 GETUPVAL                         R24 5
      833 GETTABLEKS                       R24 R24 K9 ["createElement"]
      835 GETUPVAL                         R25 23
      836 DUPTABLE                         R26 K109 [{"dialogLookType", "equippedItems", "bodyScale", "onClose"}]
      837 SETTABLEKS                       R17 R26 K106 ["dialogLookType"]
      839 GETTABLEKS                       R27 R5 K107 ["equippedItems"]
      841 SETTABLEKS                       R27 R26 K107 ["equippedItems"]
      843 GETUPVAL                         R28 17
      844 CALL                             R28 0 1
      845 JUMPIFNOT                        R28 ; [+136]
      846 JUMPIFNOTEQKS                    R17 K80 ["AvatarLook"] ; [+135]
      848 DUPTABLE                         R27 K116 [{"bodyType", "depth", "head", "height", "proportion", "width"}]
      849 GETTABLEKS                       R29 R0 K74 ["Avatar"]
      851 GETTABLEKS                       R29 R29 K75 ["WorldModel"]
      853 GETTABLEKS                       R29 R29 K117 ["Humanoid"]
      855 LOADK                            R32 K118 ["BodyTypeScale"]
      856 NAMECALL                         R30 R29 K119 ["FindFirstChild"]
      858 CALL                             R30 2 1
      859 JUMPIFNOT                        R30 ; [+8]
      860 LOADK                            R33 K120 ["NumberValue"]
      861 NAMECALL                         R31 R30 K121 ["IsA"]
      863 CALL                             R31 2 1
      864 JUMPIFNOT                        R31 ; [+3]
      865 GETTABLEKS                       R28 R30 K122 ["Value"]
      867 JUMP                             ; [+1]
      868 LOADN                            R28 1
      869 SETTABLEKS                       R28 R27 K110 ["bodyType"]
      871 GETTABLEKS                       R29 R0 K74 ["Avatar"]
      873 GETTABLEKS                       R29 R29 K75 ["WorldModel"]
      875 GETTABLEKS                       R29 R29 K117 ["Humanoid"]
      877 LOADK                            R32 K123 ["BodyDepthScale"]
      878 NAMECALL                         R30 R29 K119 ["FindFirstChild"]
      880 CALL                             R30 2 1
      881 JUMPIFNOT                        R30 ; [+8]
      882 LOADK                            R33 K120 ["NumberValue"]
      883 NAMECALL                         R31 R30 K121 ["IsA"]
      885 CALL                             R31 2 1
      886 JUMPIFNOT                        R31 ; [+3]
      887 GETTABLEKS                       R28 R30 K122 ["Value"]
      889 JUMP                             ; [+1]
      890 LOADN                            R28 1
      891 SETTABLEKS                       R28 R27 K111 ["depth"]
      893 GETTABLEKS                       R29 R0 K74 ["Avatar"]
      895 GETTABLEKS                       R29 R29 K75 ["WorldModel"]
      897 GETTABLEKS                       R29 R29 K117 ["Humanoid"]
      899 LOADK                            R32 K124 ["HeadScale"]
      900 NAMECALL                         R30 R29 K119 ["FindFirstChild"]
      902 CALL                             R30 2 1
      903 JUMPIFNOT                        R30 ; [+8]
      904 LOADK                            R33 K120 ["NumberValue"]
      905 NAMECALL                         R31 R30 K121 ["IsA"]
      907 CALL                             R31 2 1
      908 JUMPIFNOT                        R31 ; [+3]
      909 GETTABLEKS                       R28 R30 K122 ["Value"]
      911 JUMP                             ; [+1]
      912 LOADN                            R28 1
      913 SETTABLEKS                       R28 R27 K112 ["head"]
      915 GETTABLEKS                       R29 R0 K74 ["Avatar"]
      917 GETTABLEKS                       R29 R29 K75 ["WorldModel"]
      919 GETTABLEKS                       R29 R29 K117 ["Humanoid"]
      921 LOADK                            R32 K125 ["BodyHeightScale"]
      922 NAMECALL                         R30 R29 K119 ["FindFirstChild"]
      924 CALL                             R30 2 1
      925 JUMPIFNOT                        R30 ; [+8]
      926 LOADK                            R33 K120 ["NumberValue"]
      927 NAMECALL                         R31 R30 K121 ["IsA"]
      929 CALL                             R31 2 1
      930 JUMPIFNOT                        R31 ; [+3]
      931 GETTABLEKS                       R28 R30 K122 ["Value"]
      933 JUMP                             ; [+1]
      934 LOADN                            R28 1
      935 SETTABLEKS                       R28 R27 K113 ["height"]
      937 GETTABLEKS                       R29 R0 K74 ["Avatar"]
      939 GETTABLEKS                       R29 R29 K75 ["WorldModel"]
      941 GETTABLEKS                       R29 R29 K117 ["Humanoid"]
      943 LOADK                            R32 K126 ["BodyProportionScale"]
      944 NAMECALL                         R30 R29 K119 ["FindFirstChild"]
      946 CALL                             R30 2 1
      947 JUMPIFNOT                        R30 ; [+8]
      948 LOADK                            R33 K120 ["NumberValue"]
      949 NAMECALL                         R31 R30 K121 ["IsA"]
      951 CALL                             R31 2 1
      952 JUMPIFNOT                        R31 ; [+3]
      953 GETTABLEKS                       R28 R30 K122 ["Value"]
      955 JUMP                             ; [+1]
      956 LOADN                            R28 1
      957 SETTABLEKS                       R28 R27 K114 ["proportion"]
      959 GETTABLEKS                       R29 R0 K74 ["Avatar"]
      961 GETTABLEKS                       R29 R29 K75 ["WorldModel"]
      963 GETTABLEKS                       R29 R29 K117 ["Humanoid"]
      965 LOADK                            R32 K127 ["BodyWidthScale"]
      966 NAMECALL                         R30 R29 K119 ["FindFirstChild"]
      968 CALL                             R30 2 1
      969 JUMPIFNOT                        R30 ; [+8]
      970 LOADK                            R33 K120 ["NumberValue"]
      971 NAMECALL                         R31 R30 K121 ["IsA"]
      973 CALL                             R31 2 1
      974 JUMPIFNOT                        R31 ; [+3]
      975 GETTABLEKS                       R28 R30 K122 ["Value"]
      977 JUMP                             ; [+1]
      978 LOADN                            R28 1
      979 SETTABLEKS                       R28 R27 K115 ["width"]
      981 JUMP                             ; [+1]
      982 LOADNIL                          R27
      983 SETTABLEKS                       R27 R26 K108 ["bodyScale"]
      985 NEWCLOSURE                       R27 P9
      986 CAPTURE                          REF R18
      987 SETTABLEKS                       R27 R26 K91 ["onClose"]
      989 CALL                             R24 2 1
      990 SETTABLEKS                       R24 R23 K84 ["LookComposerDialog"]
      992 CALL                             R20 3 -1
      993 CLOSEUPVALS                      R18
      994 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Resources"]
       34 GETTABLEKS                       R5 R5 K12 ["Theme"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K10 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Util"]
       50 GETTABLEKS                       R7 R7 K15 ["TestInExperienceUtil"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K10 ["Src"]
       57 GETTABLEKS                       R8 R8 K16 ["Hooks"]
       59 GETTABLEKS                       R8 R8 K17 ["useCreatedByAutoSetup"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K10 ["Src"]
       66 GETTABLEKS                       R9 R9 K16 ["Hooks"]
       68 GETTABLEKS                       R9 R9 K18 ["useToggleState"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K10 ["Src"]
       75 GETTABLEKS                       R10 R10 K19 ["Components"]
       77 GETTABLEKS                       R10 R10 K20 ["AvatarScreenContext"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K10 ["Src"]
       84 GETTABLEKS                       R11 R11 K19 ["Components"]
       86 GETTABLEKS                       R11 R11 K21 ["AvatarSettings"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K10 ["Src"]
       93 GETTABLEKS                       R12 R12 K14 ["Util"]
       95 GETTABLEKS                       R12 R12 K22 ["EquipmentStateContext"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K10 ["Src"]
      102 GETTABLEKS                       R13 R13 K19 ["Components"]
      104 GETTABLEKS                       R13 R13 K23 ["LookContext"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K10 ["Src"]
      111 GETTABLEKS                       R14 R14 K19 ["Components"]
      113 GETTABLEKS                       R14 R14 K24 ["DEPRECATED_LookContext"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R15 R0 K10 ["Src"]
      120 GETTABLEKS                       R15 R15 K19 ["Components"]
      122 GETTABLEKS                       R15 R15 K25 ["PlacesServiceContext"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K5 [require]
      127 GETTABLEKS                       R16 R0 K10 ["Src"]
      129 GETTABLEKS                       R16 R16 K19 ["Components"]
      131 GETTABLEKS                       R16 R16 K26 ["LookSaveMenu"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K5 [require]
      136 GETTABLEKS                       R17 R0 K10 ["Src"]
      138 GETTABLEKS                       R17 R17 K19 ["Components"]
      140 GETTABLEKS                       R17 R17 K27 ["SubmitDialog"]
      142 CALL                             R16 1 1
      143 GETIMPORT                        R17 K5 [require]
      145 GETTABLEKS                       R18 R0 K10 ["Src"]
      147 GETTABLEKS                       R18 R18 K19 ["Components"]
      149 GETTABLEKS                       R18 R18 K28 ["UGCValidationContext"]
      151 CALL                             R17 1 1
      152 GETIMPORT                        R18 K5 [require]
      154 GETTABLEKS                       R19 R0 K10 ["Src"]
      156 GETTABLEKS                       R19 R19 K19 ["Components"]
      158 GETTABLEKS                       R19 R19 K29 ["LookComposerDialog"]
      160 CALL                             R18 1 1
      161 GETIMPORT                        R19 K5 [require]
      163 GETTABLEKS                       R20 R0 K10 ["Src"]
      165 GETTABLEKS                       R20 R20 K30 ["Flags"]
      167 GETTABLEKS                       R20 R20 K31 ["getFFlagAvatarAutosetupOptionsInput"]
      169 CALL                             R19 1 1
      170 GETIMPORT                        R20 K5 [require]
      172 GETTABLEKS                       R21 R0 K10 ["Src"]
      174 GETTABLEKS                       R21 R21 K30 ["Flags"]
      176 GETTABLEKS                       R21 R21 K32 ["getFFlagAvatarPreviewerLookComposer"]
      178 CALL                             R20 1 1
      179 GETIMPORT                        R21 K5 [require]
      181 GETTABLEKS                       R22 R0 K10 ["Src"]
      183 GETTABLEKS                       R22 R22 K30 ["Flags"]
      185 GETTABLEKS                       R22 R22 K33 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
      187 CALL                             R21 1 1
      188 GETIMPORT                        R22 K5 [require]
      190 GETTABLEKS                       R23 R0 K10 ["Src"]
      192 GETTABLEKS                       R23 R23 K30 ["Flags"]
      194 GETTABLEKS                       R23 R23 K34 ["getFFlagAvatarPreviewerCatalogButtonUpdatedUi"]
      196 CALL                             R22 1 1
      197 GETTABLEKS                       R23 R1 K35 ["UI"]
      199 GETTABLEKS                       R24 R23 K36 ["IconButton"]
      201 GETTABLEKS                       R25 R23 K37 ["Pane"]
      203 GETTABLEKS                       R26 R1 K14 ["Util"]
      205 GETTABLEKS                       R26 R26 K38 ["LayoutOrderIterator"]
      207 GETTABLEKS                       R27 R1 K39 ["ContextServices"]
      209 GETTABLEKS                       R27 R27 K40 ["Analytics"]
      211 GETTABLEKS                       R28 R1 K39 ["ContextServices"]
      213 GETTABLEKS                       R28 R28 K41 ["Localization"]
      215 GETTABLEKS                       R29 R1 K39 ["ContextServices"]
      217 GETTABLEKS                       R29 R29 K42 ["Stylizer"]
      219 DUPCLOSURE                       R30 K43 [PROTO_0]
      220 DUPCLOSURE                       R31 K44 [PROTO_1]
      221 CAPTURE                          VAL R29
      222 CAPTURE                          VAL R28
      223 CAPTURE                          VAL R20
      224 CAPTURE                          VAL R3
      225 CAPTURE                          VAL R24
      226 CAPTURE                          VAL R2
      227 DUPCLOSURE                       R32 K45 [PROTO_12]
      228 CAPTURE                          VAL R29
      229 CAPTURE                          VAL R28
      230 CAPTURE                          VAL R26
      231 CAPTURE                          VAL R27
      232 CAPTURE                          VAL R20
      233 CAPTURE                          VAL R3
      234 CAPTURE                          VAL R11
      235 CAPTURE                          VAL R14
      236 CAPTURE                          VAL R17
      237 CAPTURE                          VAL R22
      238 CAPTURE                          VAL R9
      239 CAPTURE                          VAL R8
      240 CAPTURE                          VAL R19
      241 CAPTURE                          VAL R25
      242 CAPTURE                          VAL R31
      243 CAPTURE                          VAL R10
      244 CAPTURE                          VAL R7
      245 CAPTURE                          VAL R21
      246 CAPTURE                          VAL R12
      247 CAPTURE                          VAL R13
      248 CAPTURE                          VAL R6
      249 CAPTURE                          VAL R15
      250 CAPTURE                          VAL R16
      251 CAPTURE                          VAL R18
      252 RETURN                           R32 1
