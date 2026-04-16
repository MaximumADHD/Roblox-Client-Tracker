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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["enable"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["AvatarLook"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["MakeupLook"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["toggle"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["publish"]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R0 R0 K1 ["report"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K2 ["enable"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Closed"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
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
       39 GETUPVAL                         R8 9
       40 LOADB                            R9 0
       41 CALL                             R8 1 1
       42 GETUPVAL                         R10 4
       43 CALL                             R10 0 1
       44 JUMPIFNOT                        R10 ; [+4]
       45 GETUPVAL                         R9 9
       46 LOADB                            R10 0
       47 CALL                             R9 1 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R9
       50 GETUPVAL                         R10 10
       51 CALL                             R10 0 1
       52 JUMPIFNOT                        R10 ; [+245]
       53 GETTABLEKS                       R10 R0 K5 ["type"]
       55 JUMPIFNOTEQKS                    R10 K6 ["autosetup"] ; [+242]
       57 GETUPVAL                         R11 5
       58 GETTABLEKS                       R10 R11 K7 ["createElement"]
       60 GETUPVAL                         R11 11
       61 DUPTABLE                         R12 K13 [{"BackgroundColor", "BorderColor3", "BorderSizePixel", "Size", "ZIndex"}]
       62 GETTABLEKS                       R13 R1 K8 ["BackgroundColor"]
       64 SETTABLEKS                       R13 R12 K8 ["BackgroundColor"]
       66 GETTABLEKS                       R13 R1 K14 ["BorderColor"]
       68 SETTABLEKS                       R13 R12 K9 ["BorderColor3"]
       70 LOADN                            R13 1
       71 SETTABLEKS                       R13 R12 K10 ["BorderSizePixel"]
       73 GETIMPORT                        R13 K16 [UDim2.new]
       75 LOADN                            R14 0
       76 GETTABLEKS                       R15 R1 K17 ["Width"]
       78 LOADN                            R16 1
       79 LOADN                            R17 0
       80 CALL                             R13 4 1
       81 SETTABLEKS                       R13 R12 K11 ["Size"]
       83 LOADN                            R13 3
       84 SETTABLEKS                       R13 R12 K12 ["ZIndex"]
       86 DUPTABLE                         R13 K21 [{"Contents", "SettingsButton", "SettingsMenu"}]
       87 GETUPVAL                         R15 5
       88 GETTABLEKS                       R14 R15 K7 ["createElement"]
       90 GETUPVAL                         R15 11
       91 DUPTABLE                         R16 K24 [{"Layout", "VerticalAlignment"}]
       92 GETIMPORT                        R17 K28 [Enum.FillDirection.Vertical]
       94 SETTABLEKS                       R17 R16 K22 ["Layout"]
       96 GETIMPORT                        R17 K30 [Enum.VerticalAlignment.Top]
       98 SETTABLEKS                       R17 R16 K23 ["VerticalAlignment"]
      100 DUPTABLE                         R17 K35 [{"CheckBody", "CheckFace", "Test", "Publish"}]
      101 GETUPVAL                         R19 5
      102 GETTABLEKS                       R18 R19 K7 ["createElement"]
      104 GETUPVAL                         R19 12
      105 DUPTABLE                         R20 K41 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Enabled"}]
      106 NAMECALL                         R21 R3 K42 ["getNextOrder"]
      108 CALL                             R21 1 1
      109 SETTABLEKS                       R21 R20 K36 ["LayoutOrder"]
      111 LOADK                            R21 K43 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_body.png"]
      112 SETTABLEKS                       R21 R20 K37 ["Icon"]
      114 LOADB                            R21 0
      115 SETTABLEKS                       R21 R20 K38 ["IsSelected"]
      117 LOADK                            R21 K31 ["CheckBody"]
      118 SETTABLEKS                       R21 R20 K39 ["StageText"]
      120 LOADB                            R21 0
      121 SETTABLEKS                       R21 R20 K40 ["Enabled"]
      123 CALL                             R18 2 1
      124 SETTABLEKS                       R18 R17 K31 ["CheckBody"]
      126 GETUPVAL                         R19 5
      127 GETTABLEKS                       R18 R19 K7 ["createElement"]
      129 GETUPVAL                         R19 12
      130 DUPTABLE                         R20 K41 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Enabled"}]
      131 NAMECALL                         R21 R3 K42 ["getNextOrder"]
      133 CALL                             R21 1 1
      134 SETTABLEKS                       R21 R20 K36 ["LayoutOrder"]
      136 LOADK                            R21 K44 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_face.png"]
      137 SETTABLEKS                       R21 R20 K37 ["Icon"]
      139 LOADB                            R21 0
      140 SETTABLEKS                       R21 R20 K38 ["IsSelected"]
      142 LOADK                            R21 K32 ["CheckFace"]
      143 SETTABLEKS                       R21 R20 K39 ["StageText"]
      145 LOADB                            R21 0
      146 SETTABLEKS                       R21 R20 K40 ["Enabled"]
      148 CALL                             R18 2 1
      149 SETTABLEKS                       R18 R17 K32 ["CheckFace"]
      151 GETUPVAL                         R19 5
      152 GETTABLEKS                       R18 R19 K7 ["createElement"]
      154 GETUPVAL                         R19 12
      155 DUPTABLE                         R20 K41 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Enabled"}]
      156 NAMECALL                         R21 R3 K42 ["getNextOrder"]
      158 CALL                             R21 1 1
      159 SETTABLEKS                       R21 R20 K36 ["LayoutOrder"]
      161 LOADK                            R21 K45 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/test.png"]
      162 SETTABLEKS                       R21 R20 K37 ["Icon"]
      164 LOADB                            R21 0
      165 SETTABLEKS                       R21 R20 K38 ["IsSelected"]
      167 LOADK                            R21 K33 ["Test"]
      168 SETTABLEKS                       R21 R20 K39 ["StageText"]
      170 LOADB                            R21 0
      171 SETTABLEKS                       R21 R20 K40 ["Enabled"]
      173 CALL                             R18 2 1
      174 SETTABLEKS                       R18 R17 K33 ["Test"]
      176 GETUPVAL                         R19 5
      177 GETTABLEKS                       R18 R19 K7 ["createElement"]
      179 GETUPVAL                         R19 12
      180 DUPTABLE                         R20 K47 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Tooltip", "Enabled"}]
      181 NAMECALL                         R21 R3 K42 ["getNextOrder"]
      183 CALL                             R21 1 1
      184 SETTABLEKS                       R21 R20 K36 ["LayoutOrder"]
      186 LOADK                            R21 K48 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
      187 SETTABLEKS                       R21 R20 K37 ["Icon"]
      189 LOADB                            R21 0
      190 SETTABLEKS                       R21 R20 K38 ["IsSelected"]
      192 LOADK                            R21 K34 ["Publish"]
      193 SETTABLEKS                       R21 R20 K39 ["StageText"]
      195 GETTABLEKS                       R22 R7 K49 ["canUploadBundles"]
      197 JUMPIFEQKNIL                     R22 ; [+33]
      199 GETTABLEKS                       R23 R7 K49 ["canUploadBundles"]
      201 GETTABLEKS                       R22 R23 K5 ["type"]
      203 JUMPIFNOTEQKS                    R22 K50 ["notAllowed"] ; [+27]
      205 GETTABLEKS                       R23 R7 K49 ["canUploadBundles"]
      207 GETTABLEKS                       R22 R23 K51 ["denyReason"]
      209 JUMPIFEQKS                       R22 K52 ["MissingPremiumSubscriptionTier"] ; [+7]
      211 GETTABLEKS                       R23 R7 K49 ["canUploadBundles"]
      213 GETTABLEKS                       R22 R23 K51 ["denyReason"]
      215 JUMPIFNOTEQKS                    R22 K53 ["MissingIdVerification"] ; [+15]
      217 LOADK                            R23 K0 ["StageSelector"]
      218 LOADK                            R25 K54 ["Publish_Deny_%*"]
      219 GETTABLEKS                       R28 R7 K49 ["canUploadBundles"]
      221 GETTABLEKS                       R27 R28 K51 ["denyReason"]
      223 NAMECALL                         R25 R25 K55 ["format"]
      225 CALL                             R25 2 1
      226 MOVE                             R24 R25
      227 NAMECALL                         R21 R2 K56 ["getText"]
      229 CALL                             R21 3 1
      230 JUMP                             ; [+1]
      231 LOADNIL                          R21
      232 SETTABLEKS                       R21 R20 K46 ["Tooltip"]
      234 LOADB                            R21 0
      235 SETTABLEKS                       R21 R20 K40 ["Enabled"]
      237 CALL                             R18 2 1
      238 SETTABLEKS                       R18 R17 K34 ["Publish"]
      240 CALL                             R14 3 1
      241 SETTABLEKS                       R14 R13 K18 ["Contents"]
      243 GETUPVAL                         R15 5
      244 GETTABLEKS                       R14 R15 K7 ["createElement"]
      246 GETUPVAL                         R15 12
      247 DUPTABLE                         R16 K60 [{"Icon", "IsSelected", "StageText", "AnchorPoint", "Position", "OnClick"}]
      248 LOADK                            R17 K61 ["rbxassetid://6663675885"]
      249 SETTABLEKS                       R17 R16 K37 ["Icon"]
      251 LOADB                            R17 0
      252 SETTABLEKS                       R17 R16 K38 ["IsSelected"]
      254 LOADK                            R17 K62 ["Settings"]
      255 SETTABLEKS                       R17 R16 K39 ["StageText"]
      257 GETIMPORT                        R17 K64 [Vector2.new]
      259 LOADN                            R18 0
      260 LOADN                            R19 1
      261 CALL                             R17 2 1
      262 SETTABLEKS                       R17 R16 K57 ["AnchorPoint"]
      264 GETIMPORT                        R17 K66 [UDim2.fromScale]
      266 LOADN                            R18 0
      267 LOADN                            R19 1
      268 CALL                             R17 2 1
      269 SETTABLEKS                       R17 R16 K58 ["Position"]
      271 GETTABLEKS                       R17 R8 K67 ["enable"]
      273 SETTABLEKS                       R17 R16 K59 ["OnClick"]
      275 CALL                             R14 2 1
      276 SETTABLEKS                       R14 R13 K19 ["SettingsButton"]
      278 GETTABLEKS                       R14 R8 K68 ["enabled"]
      280 JUMPIFNOT                        R14 ; [+13]
      281 GETUPVAL                         R15 5
      282 GETTABLEKS                       R14 R15 K7 ["createElement"]
      284 GETUPVAL                         R15 13
      285 DUPTABLE                         R16 K70 [{"type", "close"}]
      286 LOADK                            R17 K71 ["autoSetup"]
      287 SETTABLEKS                       R17 R16 K5 ["type"]
      289 GETTABLEKS                       R17 R8 K72 ["disable"]
      291 SETTABLEKS                       R17 R16 K69 ["close"]
      293 CALL                             R14 2 1
      294 SETTABLEKS                       R14 R13 K20 ["SettingsMenu"]
      296 CALL                             R10 3 -1
      297 RETURN                           R10 -1
      298 GETUPVAL                         R10 9
      299 LOADB                            R11 0
      300 CALL                             R10 1 1
      301 MOVE                             R11 R0
      302 JUMPIFNOT                        R11 ; [+9]
      303 GETTABLEKS                       R11 R0 K73 ["Avatar"]
      305 JUMPIFNOT                        R11 ; [+6]
      306 GETUPVAL                         R11 14
      307 GETTABLEKS                       R13 R0 K73 ["Avatar"]
      309 GETTABLEKS                       R12 R13 K74 ["WorldModel"]
      311 CALL                             R11 1 1
      312 GETUPVAL                         R13 4
      313 CALL                             R13 0 1
      314 JUMPIFNOT                        R13 ; [+8]
      315 GETUPVAL                         R13 5
      316 GETTABLEKS                       R12 R13 K3 ["useContext"]
      318 GETUPVAL                         R14 15
      319 GETTABLEKS                       R13 R14 K4 ["Context"]
      321 CALL                             R12 1 1
      322 JUMP                             ; [+1]
      323 LOADNIL                          R12
      324 GETUPVAL                         R14 4
      325 CALL                             R14 0 1
      326 JUMPIFNOT                        R14 ; [+4]
      327 JUMPIFNOT                        R12 ; [+3]
      328 GETTABLEKS                       R13 R12 K75 ["canCreateLook"]
      330 JUMP                             ; [+1]
      331 LOADB                            R13 0
      332 LOADB                            R14 1
      333 GETTABLEKS                       R15 R7 K49 ["canUploadBundles"]
      335 JUMPIFEQKNIL                     R15 ; [+9]
      337 GETTABLEKS                       R16 R7 K49 ["canUploadBundles"]
      339 GETTABLEKS                       R15 R16 K5 ["type"]
      341 JUMPIFNOTEQKS                    R15 K50 ["notAllowed"] ; [+2]
      343 LOADB                            R14 0 +1
      344 LOADB                            R14 1
      345 LOADNIL                          R15
      346 LOADNIL                          R16
      347 LOADNIL                          R17
      348 GETUPVAL                         R18 4
      349 CALL                             R18 0 1
      350 JUMPIFNOT                        R18 ; [+15]
      351 GETUPVAL                         R19 5
      352 GETTABLEKS                       R18 R19 K76 ["useState"]
      354 LOADK                            R19 K77 ["Closed"]
      355 CALL                             R18 1 2
      356 MOVE                             R15 R18
      357 MOVE                             R16 R19
      358 LOADB                            R18 1
      359 JUMPIFEQKS                       R15 K78 ["AvatarLook"] ; [+5]
      361 JUMPIFEQKS                       R15 K79 ["MakeupLook"] ; [+2]
      363 LOADB                            R18 0 +1
      364 LOADB                            R18 1
      365 MOVE                             R17 R18
      366 GETUPVAL                         R19 5
      367 GETTABLEKS                       R18 R19 K7 ["createElement"]
      369 GETUPVAL                         R19 11
      370 DUPTABLE                         R20 K80 [{"BackgroundColor", "Size", "ZIndex"}]
      371 GETTABLEKS                       R21 R1 K8 ["BackgroundColor"]
      373 SETTABLEKS                       R21 R20 K8 ["BackgroundColor"]
      375 GETIMPORT                        R21 K16 [UDim2.new]
      377 LOADN                            R22 0
      378 GETTABLEKS                       R23 R1 K17 ["Width"]
      380 LOADN                            R24 1
      381 LOADN                            R25 0
      382 CALL                             R21 4 1
      383 SETTABLEKS                       R21 R20 K11 ["Size"]
      385 LOADN                            R21 2
      386 SETTABLEKS                       R21 R20 K12 ["ZIndex"]
      388 DUPTABLE                         R21 K83 [{"Contents", "SettingsButton", "SettingsMenu", "SubmitDialog", "LookComposerDialog"}]
      389 GETUPVAL                         R23 5
      390 GETTABLEKS                       R22 R23 K7 ["createElement"]
      392 GETUPVAL                         R23 11
      393 DUPTABLE                         R24 K24 [{"Layout", "VerticalAlignment"}]
      394 GETIMPORT                        R25 K28 [Enum.FillDirection.Vertical]
      396 SETTABLEKS                       R25 R24 K22 ["Layout"]
      398 GETIMPORT                        R25 K30 [Enum.VerticalAlignment.Top]
      400 SETTABLEKS                       R25 R24 K23 ["VerticalAlignment"]
      402 DUPTABLE                         R25 K85 [{"CheckBody", "CheckFace", "Test", "LookSaveMenu", "Publish"}]
      403 GETUPVAL                         R27 5
      404 GETTABLEKS                       R26 R27 K7 ["createElement"]
      406 GETUPVAL                         R27 12
      407 DUPTABLE                         R28 K86 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      408 NAMECALL                         R29 R3 K42 ["getNextOrder"]
      410 CALL                             R29 1 1
      411 SETTABLEKS                       R29 R28 K36 ["LayoutOrder"]
      413 LOADK                            R29 K43 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_body.png"]
      414 SETTABLEKS                       R29 R28 K37 ["Icon"]
      416 GETTABLEKS                       R30 R0 K87 ["SelectedStage"]
      418 JUMPIFEQKS                       R30 K31 ["CheckBody"] ; [+2]
      420 LOADB                            R29 0 +1
      421 LOADB                            R29 1
      422 SETTABLEKS                       R29 R28 K38 ["IsSelected"]
      424 LOADK                            R29 K31 ["CheckBody"]
      425 SETTABLEKS                       R29 R28 K39 ["StageText"]
      427 NEWCLOSURE                       R29 P0
      428 CAPTURE                          VAL R4
      429 CAPTURE                          VAL R0
      430 SETTABLEKS                       R29 R28 K59 ["OnClick"]
      432 CALL                             R26 2 1
      433 SETTABLEKS                       R26 R25 K31 ["CheckBody"]
      435 GETUPVAL                         R27 5
      436 GETTABLEKS                       R26 R27 K7 ["createElement"]
      438 GETUPVAL                         R27 12
      439 DUPTABLE                         R28 K86 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      440 NAMECALL                         R29 R3 K42 ["getNextOrder"]
      442 CALL                             R29 1 1
      443 SETTABLEKS                       R29 R28 K36 ["LayoutOrder"]
      445 LOADK                            R29 K44 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_face.png"]
      446 SETTABLEKS                       R29 R28 K37 ["Icon"]
      448 GETTABLEKS                       R30 R0 K87 ["SelectedStage"]
      450 JUMPIFEQKS                       R30 K32 ["CheckFace"] ; [+2]
      452 LOADB                            R29 0 +1
      453 LOADB                            R29 1
      454 SETTABLEKS                       R29 R28 K38 ["IsSelected"]
      456 LOADK                            R29 K32 ["CheckFace"]
      457 SETTABLEKS                       R29 R28 K39 ["StageText"]
      459 NEWCLOSURE                       R29 P1
      460 CAPTURE                          VAL R4
      461 CAPTURE                          VAL R0
      462 SETTABLEKS                       R29 R28 K59 ["OnClick"]
      464 CALL                             R26 2 1
      465 SETTABLEKS                       R26 R25 K32 ["CheckFace"]
      467 GETUPVAL                         R27 5
      468 GETTABLEKS                       R26 R27 K7 ["createElement"]
      470 GETUPVAL                         R27 12
      471 DUPTABLE                         R28 K86 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      472 NAMECALL                         R29 R3 K42 ["getNextOrder"]
      474 CALL                             R29 1 1
      475 SETTABLEKS                       R29 R28 K36 ["LayoutOrder"]
      477 LOADK                            R29 K45 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/test.png"]
      478 SETTABLEKS                       R29 R28 K37 ["Icon"]
      480 LOADB                            R29 0
      481 SETTABLEKS                       R29 R28 K38 ["IsSelected"]
      483 LOADK                            R29 K33 ["Test"]
      484 SETTABLEKS                       R29 R28 K39 ["StageText"]
      486 NEWCLOSURE                       R29 P2
      487 CAPTURE                          VAL R4
      488 CAPTURE                          UPVAL U16
      489 CAPTURE                          VAL R6
      490 CAPTURE                          VAL R0
      491 SETTABLEKS                       R29 R28 K59 ["OnClick"]
      493 CALL                             R26 2 1
      494 SETTABLEKS                       R26 R25 K33 ["Test"]
      496 GETUPVAL                         R27 4
      497 CALL                             R27 0 1
      498 JUMPIFNOT                        R27 ; [+119]
      499 JUMPIFNOT                        R13 ; [+118]
      500 JUMPIFEQKNIL                     R9 ; [+117]
      502 GETUPVAL                         R27 5
      503 GETTABLEKS                       R26 R27 K7 ["createElement"]
      505 GETUPVAL                         R27 17
      506 DUPTABLE                         R28 K95 [{"LayoutOrder", "isOpen", "onClose", "onToggle", "onSaveToRoblox", "openAvatarLookComposer", "openMakeupLookComposer", "anchor"}]
      507 NAMECALL                         R29 R3 K42 ["getNextOrder"]
      509 CALL                             R29 1 1
      510 SETTABLEKS                       R29 R28 K36 ["LayoutOrder"]
      512 GETTABLEKS                       R29 R9 K68 ["enabled"]
      514 SETTABLEKS                       R29 R28 K88 ["isOpen"]
      516 GETTABLEKS                       R29 R9 K72 ["disable"]
      518 SETTABLEKS                       R29 R28 K89 ["onClose"]
      520 GETTABLEKS                       R29 R9 K96 ["toggle"]
      522 SETTABLEKS                       R29 R28 K90 ["onToggle"]
      524 NEWCLOSURE                       R29 P3
      525 CAPTURE                          VAL R10
      526 SETTABLEKS                       R29 R28 K91 ["onSaveToRoblox"]
      528 GETUPVAL                         R30 18
      529 CALL                             R30 0 1
      530 JUMPIFNOT                        R30 ; [+3]
      531 NEWCLOSURE                       R29 P4
      532 CAPTURE                          REF R16
      533 JUMP                             ; [+1]
      534 LOADNIL                          R29
      535 SETTABLEKS                       R29 R28 K92 ["openAvatarLookComposer"]
      537 NEWCLOSURE                       R29 P5
      538 CAPTURE                          REF R16
      539 SETTABLEKS                       R29 R28 K93 ["openMakeupLookComposer"]
      541 GETUPVAL                         R30 5
      542 GETTABLEKS                       R29 R30 K7 ["createElement"]
      544 GETUPVAL                         R30 12
      545 DUPTABLE                         R31 K98 [{"Icon", "IsSelected", "ShowMenuIndicator", "StageText", "Tooltip", "Enabled", "OnClick"}]
      546 LOADK                            R32 K48 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
      547 SETTABLEKS                       R32 R31 K37 ["Icon"]
      549 GETTABLEKS                       R32 R9 K68 ["enabled"]
      551 SETTABLEKS                       R32 R31 K38 ["IsSelected"]
      553 LOADB                            R32 1
      554 SETTABLEKS                       R32 R31 K97 ["ShowMenuIndicator"]
      556 LOADK                            R32 K34 ["Publish"]
      557 SETTABLEKS                       R32 R31 K39 ["StageText"]
      559 GETTABLEKS                       R33 R7 K49 ["canUploadBundles"]
      561 JUMPIFEQKNIL                     R33 ; [+33]
      563 GETTABLEKS                       R34 R7 K49 ["canUploadBundles"]
      565 GETTABLEKS                       R33 R34 K5 ["type"]
      567 JUMPIFNOTEQKS                    R33 K50 ["notAllowed"] ; [+27]
      569 GETTABLEKS                       R34 R7 K49 ["canUploadBundles"]
      571 GETTABLEKS                       R33 R34 K51 ["denyReason"]
      573 JUMPIFEQKS                       R33 K52 ["MissingPremiumSubscriptionTier"] ; [+7]
      575 GETTABLEKS                       R34 R7 K49 ["canUploadBundles"]
      577 GETTABLEKS                       R33 R34 K51 ["denyReason"]
      579 JUMPIFNOTEQKS                    R33 K53 ["MissingIdVerification"] ; [+15]
      581 LOADK                            R34 K0 ["StageSelector"]
      582 LOADK                            R36 K54 ["Publish_Deny_%*"]
      583 GETTABLEKS                       R39 R7 K49 ["canUploadBundles"]
      585 GETTABLEKS                       R38 R39 K51 ["denyReason"]
      587 NAMECALL                         R36 R36 K55 ["format"]
      589 CALL                             R36 2 1
      590 MOVE                             R35 R36
      591 NAMECALL                         R32 R2 K56 ["getText"]
      593 CALL                             R32 3 1
      594 JUMP                             ; [+5]
      595 LOADK                            R34 K84 ["LookSaveMenu"]
      596 LOADK                            R35 K99 ["Save"]
      597 NAMECALL                         R32 R2 K56 ["getText"]
      599 CALL                             R32 3 1
      600 SETTABLEKS                       R32 R31 K46 ["Tooltip"]
      602 JUMPIF                           R14 ; [+2]
      603 LOADB                            R32 0
      604 JUMP                             ; [+1]
      605 LOADNIL                          R32
      606 SETTABLEKS                       R32 R31 K40 ["Enabled"]
      608 NEWCLOSURE                       R32 P6
      609 CAPTURE                          VAL R14
      610 CAPTURE                          VAL R9
      611 SETTABLEKS                       R32 R31 K59 ["OnClick"]
      613 CALL                             R29 2 1
      614 SETTABLEKS                       R29 R28 K94 ["anchor"]
      616 CALL                             R26 2 1
      617 JUMP                             ; [+1]
      618 LOADNIL                          R26
      619 SETTABLEKS                       R26 R25 K84 ["LookSaveMenu"]
      621 GETUPVAL                         R27 4
      622 CALL                             R27 0 1
      623 JUMPIFNOT                        R27 ; [+1]
      624 JUMPIF                           R13 ; [+72]
      625 GETUPVAL                         R27 5
      626 GETTABLEKS                       R26 R27 K7 ["createElement"]
      628 GETUPVAL                         R27 12
      629 DUPTABLE                         R28 K100 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Tooltip", "Enabled", "OnClick"}]
      630 NAMECALL                         R29 R3 K42 ["getNextOrder"]
      632 CALL                             R29 1 1
      633 SETTABLEKS                       R29 R28 K36 ["LayoutOrder"]
      635 LOADK                            R29 K48 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
      636 SETTABLEKS                       R29 R28 K37 ["Icon"]
      638 LOADB                            R29 0
      639 SETTABLEKS                       R29 R28 K38 ["IsSelected"]
      641 LOADK                            R29 K34 ["Publish"]
      642 SETTABLEKS                       R29 R28 K39 ["StageText"]
      644 GETTABLEKS                       R30 R7 K49 ["canUploadBundles"]
      646 JUMPIFEQKNIL                     R30 ; [+33]
      648 GETTABLEKS                       R31 R7 K49 ["canUploadBundles"]
      650 GETTABLEKS                       R30 R31 K5 ["type"]
      652 JUMPIFNOTEQKS                    R30 K50 ["notAllowed"] ; [+27]
      654 GETTABLEKS                       R31 R7 K49 ["canUploadBundles"]
      656 GETTABLEKS                       R30 R31 K51 ["denyReason"]
      658 JUMPIFEQKS                       R30 K52 ["MissingPremiumSubscriptionTier"] ; [+7]
      660 GETTABLEKS                       R31 R7 K49 ["canUploadBundles"]
      662 GETTABLEKS                       R30 R31 K51 ["denyReason"]
      664 JUMPIFNOTEQKS                    R30 K53 ["MissingIdVerification"] ; [+15]
      666 LOADK                            R31 K0 ["StageSelector"]
      667 LOADK                            R33 K54 ["Publish_Deny_%*"]
      668 GETTABLEKS                       R36 R7 K49 ["canUploadBundles"]
      670 GETTABLEKS                       R35 R36 K51 ["denyReason"]
      672 NAMECALL                         R33 R33 K55 ["format"]
      674 CALL                             R33 2 1
      675 MOVE                             R32 R33
      676 NAMECALL                         R29 R2 K56 ["getText"]
      678 CALL                             R29 3 1
      679 JUMP                             ; [+1]
      680 LOADNIL                          R29
      681 SETTABLEKS                       R29 R28 K46 ["Tooltip"]
      683 JUMPIF                           R14 ; [+2]
      684 LOADB                            R29 0
      685 JUMP                             ; [+1]
      686 LOADNIL                          R29
      687 SETTABLEKS                       R29 R28 K40 ["Enabled"]
      689 NEWCLOSURE                       R29 P7
      690 CAPTURE                          VAL R4
      691 CAPTURE                          VAL R11
      692 CAPTURE                          VAL R10
      693 SETTABLEKS                       R29 R28 K59 ["OnClick"]
      695 CALL                             R26 2 1
      696 JUMP                             ; [+1]
      697 LOADNIL                          R26
      698 SETTABLEKS                       R26 R25 K34 ["Publish"]
      700 CALL                             R22 3 1
      701 SETTABLEKS                       R22 R21 K18 ["Contents"]
      703 GETUPVAL                         R23 5
      704 GETTABLEKS                       R22 R23 K7 ["createElement"]
      706 GETUPVAL                         R23 12
      707 DUPTABLE                         R24 K60 [{"Icon", "IsSelected", "StageText", "AnchorPoint", "Position", "OnClick"}]
      708 LOADK                            R25 K61 ["rbxassetid://6663675885"]
      709 SETTABLEKS                       R25 R24 K37 ["Icon"]
      711 LOADB                            R25 0
      712 SETTABLEKS                       R25 R24 K38 ["IsSelected"]
      714 LOADK                            R25 K62 ["Settings"]
      715 SETTABLEKS                       R25 R24 K39 ["StageText"]
      717 GETIMPORT                        R25 K64 [Vector2.new]
      719 LOADN                            R26 0
      720 LOADN                            R27 1
      721 CALL                             R25 2 1
      722 SETTABLEKS                       R25 R24 K57 ["AnchorPoint"]
      724 GETIMPORT                        R25 K66 [UDim2.fromScale]
      726 LOADN                            R26 0
      727 LOADN                            R27 1
      728 CALL                             R25 2 1
      729 SETTABLEKS                       R25 R24 K58 ["Position"]
      731 GETTABLEKS                       R25 R8 K67 ["enable"]
      733 SETTABLEKS                       R25 R24 K59 ["OnClick"]
      735 CALL                             R22 2 1
      736 SETTABLEKS                       R22 R21 K19 ["SettingsButton"]
      738 GETTABLEKS                       R22 R8 K68 ["enabled"]
      740 JUMPIFNOT                        R22 ; [+17]
      741 GETUPVAL                         R23 5
      742 GETTABLEKS                       R22 R23 K7 ["createElement"]
      744 GETUPVAL                         R23 13
      745 DUPTABLE                         R24 K102 [{"type", "avatar", "close"}]
      746 LOADK                            R25 K101 ["avatar"]
      747 SETTABLEKS                       R25 R24 K5 ["type"]
      749 GETTABLEKS                       R25 R0 K73 ["Avatar"]
      751 SETTABLEKS                       R25 R24 K101 ["avatar"]
      753 GETTABLEKS                       R25 R8 K72 ["disable"]
      755 SETTABLEKS                       R25 R24 K69 ["close"]
      757 CALL                             R22 2 1
      758 SETTABLEKS                       R22 R21 K20 ["SettingsMenu"]
      760 GETTABLEKS                       R22 R10 K68 ["enabled"]
      762 JUMPIFNOT                        R22 ; [+14]
      763 GETUPVAL                         R23 5
      764 GETTABLEKS                       R22 R23 K7 ["createElement"]
      766 GETUPVAL                         R23 19
      767 DUPTABLE                         R24 K103 [{"close", "avatar"}]
      768 GETTABLEKS                       R25 R10 K72 ["disable"]
      770 SETTABLEKS                       R25 R24 K69 ["close"]
      772 GETTABLEKS                       R25 R0 K73 ["Avatar"]
      774 SETTABLEKS                       R25 R24 K101 ["avatar"]
      776 CALL                             R22 2 1
      777 SETTABLEKS                       R22 R21 K81 ["SubmitDialog"]
      779 GETUPVAL                         R22 4
      780 CALL                             R22 0 1
      781 JUMPIFNOT                        R22 ; [+160]
      782 MOVE                             R22 R17
      783 JUMPIFNOT                        R22 ; [+158]
      784 GETUPVAL                         R23 5
      785 GETTABLEKS                       R22 R23 K7 ["createElement"]
      787 GETUPVAL                         R23 20
      788 DUPTABLE                         R24 K107 [{"dialogLookType", "equippedItems", "bodyScale", "onClose"}]
      789 SETTABLEKS                       R15 R24 K104 ["dialogLookType"]
      791 GETTABLEKS                       R25 R5 K105 ["equippedItems"]
      793 SETTABLEKS                       R25 R24 K105 ["equippedItems"]
      795 GETUPVAL                         R26 18
      796 CALL                             R26 0 1
      797 JUMPIFNOT                        R26 ; [+136]
      798 JUMPIFNOTEQKS                    R15 K78 ["AvatarLook"] ; [+135]
      800 DUPTABLE                         R25 K114 [{"bodyType", "depth", "head", "height", "proportion", "width"}]
      801 GETTABLEKS                       R29 R0 K73 ["Avatar"]
      803 GETTABLEKS                       R28 R29 K74 ["WorldModel"]
      805 GETTABLEKS                       R27 R28 K115 ["Humanoid"]
      807 LOADK                            R30 K116 ["BodyTypeScale"]
      808 NAMECALL                         R28 R27 K117 ["FindFirstChild"]
      810 CALL                             R28 2 1
      811 JUMPIFNOT                        R28 ; [+8]
      812 LOADK                            R31 K118 ["NumberValue"]
      813 NAMECALL                         R29 R28 K119 ["IsA"]
      815 CALL                             R29 2 1
      816 JUMPIFNOT                        R29 ; [+3]
      817 GETTABLEKS                       R26 R28 K120 ["Value"]
      819 JUMP                             ; [+1]
      820 LOADN                            R26 1
      821 SETTABLEKS                       R26 R25 K108 ["bodyType"]
      823 GETTABLEKS                       R29 R0 K73 ["Avatar"]
      825 GETTABLEKS                       R28 R29 K74 ["WorldModel"]
      827 GETTABLEKS                       R27 R28 K115 ["Humanoid"]
      829 LOADK                            R30 K121 ["BodyDepthScale"]
      830 NAMECALL                         R28 R27 K117 ["FindFirstChild"]
      832 CALL                             R28 2 1
      833 JUMPIFNOT                        R28 ; [+8]
      834 LOADK                            R31 K118 ["NumberValue"]
      835 NAMECALL                         R29 R28 K119 ["IsA"]
      837 CALL                             R29 2 1
      838 JUMPIFNOT                        R29 ; [+3]
      839 GETTABLEKS                       R26 R28 K120 ["Value"]
      841 JUMP                             ; [+1]
      842 LOADN                            R26 1
      843 SETTABLEKS                       R26 R25 K109 ["depth"]
      845 GETTABLEKS                       R29 R0 K73 ["Avatar"]
      847 GETTABLEKS                       R28 R29 K74 ["WorldModel"]
      849 GETTABLEKS                       R27 R28 K115 ["Humanoid"]
      851 LOADK                            R30 K122 ["HeadScale"]
      852 NAMECALL                         R28 R27 K117 ["FindFirstChild"]
      854 CALL                             R28 2 1
      855 JUMPIFNOT                        R28 ; [+8]
      856 LOADK                            R31 K118 ["NumberValue"]
      857 NAMECALL                         R29 R28 K119 ["IsA"]
      859 CALL                             R29 2 1
      860 JUMPIFNOT                        R29 ; [+3]
      861 GETTABLEKS                       R26 R28 K120 ["Value"]
      863 JUMP                             ; [+1]
      864 LOADN                            R26 1
      865 SETTABLEKS                       R26 R25 K110 ["head"]
      867 GETTABLEKS                       R29 R0 K73 ["Avatar"]
      869 GETTABLEKS                       R28 R29 K74 ["WorldModel"]
      871 GETTABLEKS                       R27 R28 K115 ["Humanoid"]
      873 LOADK                            R30 K123 ["BodyHeightScale"]
      874 NAMECALL                         R28 R27 K117 ["FindFirstChild"]
      876 CALL                             R28 2 1
      877 JUMPIFNOT                        R28 ; [+8]
      878 LOADK                            R31 K118 ["NumberValue"]
      879 NAMECALL                         R29 R28 K119 ["IsA"]
      881 CALL                             R29 2 1
      882 JUMPIFNOT                        R29 ; [+3]
      883 GETTABLEKS                       R26 R28 K120 ["Value"]
      885 JUMP                             ; [+1]
      886 LOADN                            R26 1
      887 SETTABLEKS                       R26 R25 K111 ["height"]
      889 GETTABLEKS                       R29 R0 K73 ["Avatar"]
      891 GETTABLEKS                       R28 R29 K74 ["WorldModel"]
      893 GETTABLEKS                       R27 R28 K115 ["Humanoid"]
      895 LOADK                            R30 K124 ["BodyProportionScale"]
      896 NAMECALL                         R28 R27 K117 ["FindFirstChild"]
      898 CALL                             R28 2 1
      899 JUMPIFNOT                        R28 ; [+8]
      900 LOADK                            R31 K118 ["NumberValue"]
      901 NAMECALL                         R29 R28 K119 ["IsA"]
      903 CALL                             R29 2 1
      904 JUMPIFNOT                        R29 ; [+3]
      905 GETTABLEKS                       R26 R28 K120 ["Value"]
      907 JUMP                             ; [+1]
      908 LOADN                            R26 1
      909 SETTABLEKS                       R26 R25 K112 ["proportion"]
      911 GETTABLEKS                       R29 R0 K73 ["Avatar"]
      913 GETTABLEKS                       R28 R29 K74 ["WorldModel"]
      915 GETTABLEKS                       R27 R28 K115 ["Humanoid"]
      917 LOADK                            R30 K125 ["BodyWidthScale"]
      918 NAMECALL                         R28 R27 K117 ["FindFirstChild"]
      920 CALL                             R28 2 1
      921 JUMPIFNOT                        R28 ; [+8]
      922 LOADK                            R31 K118 ["NumberValue"]
      923 NAMECALL                         R29 R28 K119 ["IsA"]
      925 CALL                             R29 2 1
      926 JUMPIFNOT                        R29 ; [+3]
      927 GETTABLEKS                       R26 R28 K120 ["Value"]
      929 JUMP                             ; [+1]
      930 LOADN                            R26 1
      931 SETTABLEKS                       R26 R25 K113 ["width"]
      933 JUMP                             ; [+1]
      934 LOADNIL                          R25
      935 SETTABLEKS                       R25 R24 K106 ["bodyScale"]
      937 NEWCLOSURE                       R25 P8
      938 CAPTURE                          REF R16
      939 SETTABLEKS                       R25 R24 K89 ["onClose"]
      941 CALL                             R22 2 1
      942 SETTABLEKS                       R22 R21 K82 ["LookComposerDialog"]
      944 CALL                             R18 3 -1
      945 CLOSEUPVALS                      R16
      946 RETURN                           R18 -1

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
       77 GETTABLEKS                       R10 R11 K20 ["AvatarSettings"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R13 R0 K10 ["Src"]
       84 GETTABLEKS                       R12 R13 K14 ["Util"]
       86 GETTABLEKS                       R11 R12 K21 ["EquipmentStateContext"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R14 R0 K10 ["Src"]
       93 GETTABLEKS                       R13 R14 K19 ["Components"]
       95 GETTABLEKS                       R12 R13 K22 ["LookContext"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R15 R0 K10 ["Src"]
      102 GETTABLEKS                       R14 R15 K19 ["Components"]
      104 GETTABLEKS                       R13 R14 K23 ["PlacesServiceContext"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R16 R0 K10 ["Src"]
      111 GETTABLEKS                       R15 R16 K19 ["Components"]
      113 GETTABLEKS                       R14 R15 K24 ["LookSaveMenu"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R17 R0 K10 ["Src"]
      120 GETTABLEKS                       R16 R17 K19 ["Components"]
      122 GETTABLEKS                       R15 R16 K25 ["SubmitDialog"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K5 [require]
      127 GETTABLEKS                       R18 R0 K10 ["Src"]
      129 GETTABLEKS                       R17 R18 K19 ["Components"]
      131 GETTABLEKS                       R16 R17 K26 ["UGCValidationContext"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K5 [require]
      136 GETTABLEKS                       R19 R0 K10 ["Src"]
      138 GETTABLEKS                       R18 R19 K19 ["Components"]
      140 GETTABLEKS                       R17 R18 K27 ["LookComposerDialog"]
      142 CALL                             R16 1 1
      143 GETIMPORT                        R17 K5 [require]
      145 GETTABLEKS                       R20 R0 K10 ["Src"]
      147 GETTABLEKS                       R19 R20 K28 ["Flags"]
      149 GETTABLEKS                       R18 R19 K29 ["getFFlagAvatarAutosetupOptionsInput"]
      151 CALL                             R17 1 1
      152 GETIMPORT                        R18 K5 [require]
      154 GETTABLEKS                       R21 R0 K10 ["Src"]
      156 GETTABLEKS                       R20 R21 K28 ["Flags"]
      158 GETTABLEKS                       R19 R20 K30 ["getFFlagAvatarPreviewerLookComposer"]
      160 CALL                             R18 1 1
      161 GETIMPORT                        R19 K5 [require]
      163 GETTABLEKS                       R22 R0 K10 ["Src"]
      165 GETTABLEKS                       R21 R22 K28 ["Flags"]
      167 GETTABLEKS                       R20 R21 K31 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
      169 CALL                             R19 1 1
      170 GETTABLEKS                       R20 R1 K32 ["UI"]
      172 GETTABLEKS                       R21 R20 K33 ["IconButton"]
      174 GETTABLEKS                       R22 R20 K34 ["Pane"]
      176 GETTABLEKS                       R24 R1 K14 ["Util"]
      178 GETTABLEKS                       R23 R24 K35 ["LayoutOrderIterator"]
      180 GETTABLEKS                       R25 R1 K36 ["ContextServices"]
      182 GETTABLEKS                       R24 R25 K37 ["Analytics"]
      184 GETTABLEKS                       R26 R1 K36 ["ContextServices"]
      186 GETTABLEKS                       R25 R26 K38 ["Localization"]
      188 GETTABLEKS                       R27 R1 K36 ["ContextServices"]
      190 GETTABLEKS                       R26 R27 K39 ["Stylizer"]
      192 DUPCLOSURE                       R27 K40 [PROTO_0]
      193 DUPCLOSURE                       R28 K41 [PROTO_1]
      194 CAPTURE                          VAL R26
      195 CAPTURE                          VAL R25
      196 CAPTURE                          VAL R18
      197 CAPTURE                          VAL R3
      198 CAPTURE                          VAL R21
      199 CAPTURE                          VAL R2
      200 DUPCLOSURE                       R29 K42 [PROTO_11]
      201 CAPTURE                          VAL R26
      202 CAPTURE                          VAL R25
      203 CAPTURE                          VAL R23
      204 CAPTURE                          VAL R24
      205 CAPTURE                          VAL R18
      206 CAPTURE                          VAL R3
      207 CAPTURE                          VAL R10
      208 CAPTURE                          VAL R12
      209 CAPTURE                          VAL R15
      210 CAPTURE                          VAL R8
      211 CAPTURE                          VAL R17
      212 CAPTURE                          VAL R22
      213 CAPTURE                          VAL R28
      214 CAPTURE                          VAL R9
      215 CAPTURE                          VAL R7
      216 CAPTURE                          VAL R11
      217 CAPTURE                          VAL R6
      218 CAPTURE                          VAL R13
      219 CAPTURE                          VAL R19
      220 CAPTURE                          VAL R14
      221 CAPTURE                          VAL R16
      222 RETURN                           R29 1
