PROTO_0:
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

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["enable"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["AvatarLook"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["MakeupLook"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["toggle"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["publish"]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R0 R0 K1 ["report"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K2 ["enable"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Closed"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
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
      347 GETUPVAL                         R17 4
      348 CALL                             R17 0 1
      349 JUMPIFNOT                        R17 ; [+7]
      350 GETUPVAL                         R18 5
      351 GETTABLEKS                       R17 R18 K76 ["useState"]
      353 LOADK                            R18 K77 ["Closed"]
      354 CALL                             R17 1 2
      355 MOVE                             R15 R17
      356 MOVE                             R16 R18
      357 GETUPVAL                         R18 5
      358 GETTABLEKS                       R17 R18 K7 ["createElement"]
      360 GETUPVAL                         R18 11
      361 DUPTABLE                         R19 K78 [{"BackgroundColor", "Size", "ZIndex"}]
      362 GETTABLEKS                       R20 R1 K8 ["BackgroundColor"]
      364 SETTABLEKS                       R20 R19 K8 ["BackgroundColor"]
      366 GETIMPORT                        R20 K16 [UDim2.new]
      368 LOADN                            R21 0
      369 GETTABLEKS                       R22 R1 K17 ["Width"]
      371 LOADN                            R23 1
      372 LOADN                            R24 0
      373 CALL                             R20 4 1
      374 SETTABLEKS                       R20 R19 K11 ["Size"]
      376 LOADN                            R20 2
      377 SETTABLEKS                       R20 R19 K12 ["ZIndex"]
      379 DUPTABLE                         R20 K81 [{"Contents", "SettingsButton", "SettingsMenu", "SubmitDialog", "LookComposerDialog"}]
      380 GETUPVAL                         R22 5
      381 GETTABLEKS                       R21 R22 K7 ["createElement"]
      383 GETUPVAL                         R22 11
      384 DUPTABLE                         R23 K24 [{"Layout", "VerticalAlignment"}]
      385 GETIMPORT                        R24 K28 [Enum.FillDirection.Vertical]
      387 SETTABLEKS                       R24 R23 K22 ["Layout"]
      389 GETIMPORT                        R24 K30 [Enum.VerticalAlignment.Top]
      391 SETTABLEKS                       R24 R23 K23 ["VerticalAlignment"]
      393 DUPTABLE                         R24 K83 [{"CheckBody", "CheckFace", "Test", "LookSaveMenu", "Publish"}]
      394 GETUPVAL                         R26 5
      395 GETTABLEKS                       R25 R26 K7 ["createElement"]
      397 GETUPVAL                         R26 12
      398 DUPTABLE                         R27 K84 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      399 NAMECALL                         R28 R3 K42 ["getNextOrder"]
      401 CALL                             R28 1 1
      402 SETTABLEKS                       R28 R27 K36 ["LayoutOrder"]
      404 LOADK                            R28 K43 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_body.png"]
      405 SETTABLEKS                       R28 R27 K37 ["Icon"]
      407 GETTABLEKS                       R29 R0 K85 ["SelectedStage"]
      409 JUMPIFEQKS                       R29 K31 ["CheckBody"] ; [+2]
      411 LOADB                            R28 0 +1
      412 LOADB                            R28 1
      413 SETTABLEKS                       R28 R27 K38 ["IsSelected"]
      415 LOADK                            R28 K31 ["CheckBody"]
      416 SETTABLEKS                       R28 R27 K39 ["StageText"]
      418 NEWCLOSURE                       R28 P0
      419 CAPTURE                          VAL R4
      420 CAPTURE                          VAL R0
      421 SETTABLEKS                       R28 R27 K59 ["OnClick"]
      423 CALL                             R25 2 1
      424 SETTABLEKS                       R25 R24 K31 ["CheckBody"]
      426 GETUPVAL                         R26 5
      427 GETTABLEKS                       R25 R26 K7 ["createElement"]
      429 GETUPVAL                         R26 12
      430 DUPTABLE                         R27 K84 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      431 NAMECALL                         R28 R3 K42 ["getNextOrder"]
      433 CALL                             R28 1 1
      434 SETTABLEKS                       R28 R27 K36 ["LayoutOrder"]
      436 LOADK                            R28 K44 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_face.png"]
      437 SETTABLEKS                       R28 R27 K37 ["Icon"]
      439 GETTABLEKS                       R29 R0 K85 ["SelectedStage"]
      441 JUMPIFEQKS                       R29 K32 ["CheckFace"] ; [+2]
      443 LOADB                            R28 0 +1
      444 LOADB                            R28 1
      445 SETTABLEKS                       R28 R27 K38 ["IsSelected"]
      447 LOADK                            R28 K32 ["CheckFace"]
      448 SETTABLEKS                       R28 R27 K39 ["StageText"]
      450 NEWCLOSURE                       R28 P1
      451 CAPTURE                          VAL R4
      452 CAPTURE                          VAL R0
      453 SETTABLEKS                       R28 R27 K59 ["OnClick"]
      455 CALL                             R25 2 1
      456 SETTABLEKS                       R25 R24 K32 ["CheckFace"]
      458 GETUPVAL                         R26 5
      459 GETTABLEKS                       R25 R26 K7 ["createElement"]
      461 GETUPVAL                         R26 12
      462 DUPTABLE                         R27 K84 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      463 NAMECALL                         R28 R3 K42 ["getNextOrder"]
      465 CALL                             R28 1 1
      466 SETTABLEKS                       R28 R27 K36 ["LayoutOrder"]
      468 LOADK                            R28 K45 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/test.png"]
      469 SETTABLEKS                       R28 R27 K37 ["Icon"]
      471 LOADB                            R28 0
      472 SETTABLEKS                       R28 R27 K38 ["IsSelected"]
      474 LOADK                            R28 K33 ["Test"]
      475 SETTABLEKS                       R28 R27 K39 ["StageText"]
      477 NEWCLOSURE                       R28 P2
      478 CAPTURE                          VAL R4
      479 CAPTURE                          UPVAL U16
      480 CAPTURE                          VAL R6
      481 CAPTURE                          VAL R0
      482 SETTABLEKS                       R28 R27 K59 ["OnClick"]
      484 CALL                             R25 2 1
      485 SETTABLEKS                       R25 R24 K33 ["Test"]
      487 GETUPVAL                         R26 4
      488 CALL                             R26 0 1
      489 JUMPIFNOT                        R26 ; [+119]
      490 JUMPIFNOT                        R13 ; [+118]
      491 JUMPIFEQKNIL                     R9 ; [+117]
      493 GETUPVAL                         R26 5
      494 GETTABLEKS                       R25 R26 K7 ["createElement"]
      496 GETUPVAL                         R26 17
      497 DUPTABLE                         R27 K93 [{"LayoutOrder", "isOpen", "onClose", "onToggle", "onSaveToRoblox", "openAvatarLookComposer", "openMakeupLookComposer", "anchor"}]
      498 NAMECALL                         R28 R3 K42 ["getNextOrder"]
      500 CALL                             R28 1 1
      501 SETTABLEKS                       R28 R27 K36 ["LayoutOrder"]
      503 GETTABLEKS                       R28 R9 K68 ["enabled"]
      505 SETTABLEKS                       R28 R27 K86 ["isOpen"]
      507 GETTABLEKS                       R28 R9 K72 ["disable"]
      509 SETTABLEKS                       R28 R27 K87 ["onClose"]
      511 GETTABLEKS                       R28 R9 K94 ["toggle"]
      513 SETTABLEKS                       R28 R27 K88 ["onToggle"]
      515 NEWCLOSURE                       R28 P3
      516 CAPTURE                          VAL R10
      517 SETTABLEKS                       R28 R27 K89 ["onSaveToRoblox"]
      519 GETUPVAL                         R29 18
      520 CALL                             R29 0 1
      521 JUMPIFNOT                        R29 ; [+3]
      522 NEWCLOSURE                       R28 P4
      523 CAPTURE                          REF R16
      524 JUMP                             ; [+1]
      525 LOADNIL                          R28
      526 SETTABLEKS                       R28 R27 K90 ["openAvatarLookComposer"]
      528 NEWCLOSURE                       R28 P5
      529 CAPTURE                          REF R16
      530 SETTABLEKS                       R28 R27 K91 ["openMakeupLookComposer"]
      532 GETUPVAL                         R29 5
      533 GETTABLEKS                       R28 R29 K7 ["createElement"]
      535 GETUPVAL                         R29 12
      536 DUPTABLE                         R30 K96 [{"Icon", "IsSelected", "ShowMenuIndicator", "StageText", "Tooltip", "Enabled", "OnClick"}]
      537 LOADK                            R31 K48 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
      538 SETTABLEKS                       R31 R30 K37 ["Icon"]
      540 GETTABLEKS                       R31 R9 K68 ["enabled"]
      542 SETTABLEKS                       R31 R30 K38 ["IsSelected"]
      544 LOADB                            R31 1
      545 SETTABLEKS                       R31 R30 K95 ["ShowMenuIndicator"]
      547 LOADK                            R31 K34 ["Publish"]
      548 SETTABLEKS                       R31 R30 K39 ["StageText"]
      550 GETTABLEKS                       R32 R7 K49 ["canUploadBundles"]
      552 JUMPIFEQKNIL                     R32 ; [+33]
      554 GETTABLEKS                       R33 R7 K49 ["canUploadBundles"]
      556 GETTABLEKS                       R32 R33 K5 ["type"]
      558 JUMPIFNOTEQKS                    R32 K50 ["notAllowed"] ; [+27]
      560 GETTABLEKS                       R33 R7 K49 ["canUploadBundles"]
      562 GETTABLEKS                       R32 R33 K51 ["denyReason"]
      564 JUMPIFEQKS                       R32 K52 ["MissingPremiumSubscriptionTier"] ; [+7]
      566 GETTABLEKS                       R33 R7 K49 ["canUploadBundles"]
      568 GETTABLEKS                       R32 R33 K51 ["denyReason"]
      570 JUMPIFNOTEQKS                    R32 K53 ["MissingIdVerification"] ; [+15]
      572 LOADK                            R33 K0 ["StageSelector"]
      573 LOADK                            R35 K54 ["Publish_Deny_%*"]
      574 GETTABLEKS                       R38 R7 K49 ["canUploadBundles"]
      576 GETTABLEKS                       R37 R38 K51 ["denyReason"]
      578 NAMECALL                         R35 R35 K55 ["format"]
      580 CALL                             R35 2 1
      581 MOVE                             R34 R35
      582 NAMECALL                         R31 R2 K56 ["getText"]
      584 CALL                             R31 3 1
      585 JUMP                             ; [+5]
      586 LOADK                            R33 K82 ["LookSaveMenu"]
      587 LOADK                            R34 K97 ["Save"]
      588 NAMECALL                         R31 R2 K56 ["getText"]
      590 CALL                             R31 3 1
      591 SETTABLEKS                       R31 R30 K46 ["Tooltip"]
      593 JUMPIF                           R14 ; [+2]
      594 LOADB                            R31 0
      595 JUMP                             ; [+1]
      596 LOADNIL                          R31
      597 SETTABLEKS                       R31 R30 K40 ["Enabled"]
      599 NEWCLOSURE                       R31 P6
      600 CAPTURE                          VAL R14
      601 CAPTURE                          VAL R9
      602 SETTABLEKS                       R31 R30 K59 ["OnClick"]
      604 CALL                             R28 2 1
      605 SETTABLEKS                       R28 R27 K92 ["anchor"]
      607 CALL                             R25 2 1
      608 JUMP                             ; [+1]
      609 LOADNIL                          R25
      610 SETTABLEKS                       R25 R24 K82 ["LookSaveMenu"]
      612 GETUPVAL                         R26 4
      613 CALL                             R26 0 1
      614 JUMPIFNOT                        R26 ; [+1]
      615 JUMPIF                           R13 ; [+72]
      616 GETUPVAL                         R26 5
      617 GETTABLEKS                       R25 R26 K7 ["createElement"]
      619 GETUPVAL                         R26 12
      620 DUPTABLE                         R27 K98 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Tooltip", "Enabled", "OnClick"}]
      621 NAMECALL                         R28 R3 K42 ["getNextOrder"]
      623 CALL                             R28 1 1
      624 SETTABLEKS                       R28 R27 K36 ["LayoutOrder"]
      626 LOADK                            R28 K48 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
      627 SETTABLEKS                       R28 R27 K37 ["Icon"]
      629 LOADB                            R28 0
      630 SETTABLEKS                       R28 R27 K38 ["IsSelected"]
      632 LOADK                            R28 K34 ["Publish"]
      633 SETTABLEKS                       R28 R27 K39 ["StageText"]
      635 GETTABLEKS                       R29 R7 K49 ["canUploadBundles"]
      637 JUMPIFEQKNIL                     R29 ; [+33]
      639 GETTABLEKS                       R30 R7 K49 ["canUploadBundles"]
      641 GETTABLEKS                       R29 R30 K5 ["type"]
      643 JUMPIFNOTEQKS                    R29 K50 ["notAllowed"] ; [+27]
      645 GETTABLEKS                       R30 R7 K49 ["canUploadBundles"]
      647 GETTABLEKS                       R29 R30 K51 ["denyReason"]
      649 JUMPIFEQKS                       R29 K52 ["MissingPremiumSubscriptionTier"] ; [+7]
      651 GETTABLEKS                       R30 R7 K49 ["canUploadBundles"]
      653 GETTABLEKS                       R29 R30 K51 ["denyReason"]
      655 JUMPIFNOTEQKS                    R29 K53 ["MissingIdVerification"] ; [+15]
      657 LOADK                            R30 K0 ["StageSelector"]
      658 LOADK                            R32 K54 ["Publish_Deny_%*"]
      659 GETTABLEKS                       R35 R7 K49 ["canUploadBundles"]
      661 GETTABLEKS                       R34 R35 K51 ["denyReason"]
      663 NAMECALL                         R32 R32 K55 ["format"]
      665 CALL                             R32 2 1
      666 MOVE                             R31 R32
      667 NAMECALL                         R28 R2 K56 ["getText"]
      669 CALL                             R28 3 1
      670 JUMP                             ; [+1]
      671 LOADNIL                          R28
      672 SETTABLEKS                       R28 R27 K46 ["Tooltip"]
      674 JUMPIF                           R14 ; [+2]
      675 LOADB                            R28 0
      676 JUMP                             ; [+1]
      677 LOADNIL                          R28
      678 SETTABLEKS                       R28 R27 K40 ["Enabled"]
      680 NEWCLOSURE                       R28 P7
      681 CAPTURE                          VAL R4
      682 CAPTURE                          VAL R11
      683 CAPTURE                          VAL R10
      684 SETTABLEKS                       R28 R27 K59 ["OnClick"]
      686 CALL                             R25 2 1
      687 JUMP                             ; [+1]
      688 LOADNIL                          R25
      689 SETTABLEKS                       R25 R24 K34 ["Publish"]
      691 CALL                             R21 3 1
      692 SETTABLEKS                       R21 R20 K18 ["Contents"]
      694 GETUPVAL                         R22 5
      695 GETTABLEKS                       R21 R22 K7 ["createElement"]
      697 GETUPVAL                         R22 12
      698 DUPTABLE                         R23 K60 [{"Icon", "IsSelected", "StageText", "AnchorPoint", "Position", "OnClick"}]
      699 LOADK                            R24 K61 ["rbxassetid://6663675885"]
      700 SETTABLEKS                       R24 R23 K37 ["Icon"]
      702 LOADB                            R24 0
      703 SETTABLEKS                       R24 R23 K38 ["IsSelected"]
      705 LOADK                            R24 K62 ["Settings"]
      706 SETTABLEKS                       R24 R23 K39 ["StageText"]
      708 GETIMPORT                        R24 K64 [Vector2.new]
      710 LOADN                            R25 0
      711 LOADN                            R26 1
      712 CALL                             R24 2 1
      713 SETTABLEKS                       R24 R23 K57 ["AnchorPoint"]
      715 GETIMPORT                        R24 K66 [UDim2.fromScale]
      717 LOADN                            R25 0
      718 LOADN                            R26 1
      719 CALL                             R24 2 1
      720 SETTABLEKS                       R24 R23 K58 ["Position"]
      722 GETTABLEKS                       R24 R8 K67 ["enable"]
      724 SETTABLEKS                       R24 R23 K59 ["OnClick"]
      726 CALL                             R21 2 1
      727 SETTABLEKS                       R21 R20 K19 ["SettingsButton"]
      729 GETTABLEKS                       R21 R8 K68 ["enabled"]
      731 JUMPIFNOT                        R21 ; [+17]
      732 GETUPVAL                         R22 5
      733 GETTABLEKS                       R21 R22 K7 ["createElement"]
      735 GETUPVAL                         R22 13
      736 DUPTABLE                         R23 K100 [{"type", "avatar", "close"}]
      737 LOADK                            R24 K99 ["avatar"]
      738 SETTABLEKS                       R24 R23 K5 ["type"]
      740 GETTABLEKS                       R24 R0 K73 ["Avatar"]
      742 SETTABLEKS                       R24 R23 K99 ["avatar"]
      744 GETTABLEKS                       R24 R8 K72 ["disable"]
      746 SETTABLEKS                       R24 R23 K69 ["close"]
      748 CALL                             R21 2 1
      749 SETTABLEKS                       R21 R20 K20 ["SettingsMenu"]
      751 GETTABLEKS                       R21 R10 K68 ["enabled"]
      753 JUMPIFNOT                        R21 ; [+14]
      754 GETUPVAL                         R22 5
      755 GETTABLEKS                       R21 R22 K7 ["createElement"]
      757 GETUPVAL                         R22 19
      758 DUPTABLE                         R23 K101 [{"close", "avatar"}]
      759 GETTABLEKS                       R24 R10 K72 ["disable"]
      761 SETTABLEKS                       R24 R23 K69 ["close"]
      763 GETTABLEKS                       R24 R0 K73 ["Avatar"]
      765 SETTABLEKS                       R24 R23 K99 ["avatar"]
      767 CALL                             R21 2 1
      768 SETTABLEKS                       R21 R20 K79 ["SubmitDialog"]
      770 GETUPVAL                         R22 4
      771 CALL                             R22 0 1
      772 JUMPIFNOT                        R22 ; [+3]
      773 LOADB                            R21 1
      774 JUMPIFEQKS                       R15 K102 ["AvatarLook"] ; [+20]
      776 LOADB                            R21 0
      777 JUMPIFNOTEQKS                    R15 K103 ["MakeupLook"] ; [+17]
      779 GETUPVAL                         R22 5
      780 GETTABLEKS                       R21 R22 K7 ["createElement"]
      782 GETUPVAL                         R22 20
      783 DUPTABLE                         R23 K106 [{"dialogLookType", "equippedItems", "onClose"}]
      784 SETTABLEKS                       R15 R23 K104 ["dialogLookType"]
      786 GETTABLEKS                       R24 R5 K105 ["equippedItems"]
      788 SETTABLEKS                       R24 R23 K105 ["equippedItems"]
      790 NEWCLOSURE                       R24 P8
      791 CAPTURE                          REF R16
      792 SETTABLEKS                       R24 R23 K87 ["onClose"]
      794 CALL                             R21 2 1
      795 SETTABLEKS                       R21 R20 K80 ["LookComposerDialog"]
      797 CALL                             R17 3 -1
      798 CLOSEUPVALS                      R16
      799 RETURN                           R17 -1

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
      193 CAPTURE                          VAL R26
      194 CAPTURE                          VAL R25
      195 CAPTURE                          VAL R18
      196 CAPTURE                          VAL R3
      197 CAPTURE                          VAL R21
      198 CAPTURE                          VAL R2
      199 DUPCLOSURE                       R28 K41 [PROTO_10]
      200 CAPTURE                          VAL R26
      201 CAPTURE                          VAL R25
      202 CAPTURE                          VAL R23
      203 CAPTURE                          VAL R24
      204 CAPTURE                          VAL R18
      205 CAPTURE                          VAL R3
      206 CAPTURE                          VAL R10
      207 CAPTURE                          VAL R12
      208 CAPTURE                          VAL R15
      209 CAPTURE                          VAL R8
      210 CAPTURE                          VAL R17
      211 CAPTURE                          VAL R22
      212 CAPTURE                          VAL R27
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R7
      215 CAPTURE                          VAL R11
      216 CAPTURE                          VAL R6
      217 CAPTURE                          VAL R13
      218 CAPTURE                          VAL R19
      219 CAPTURE                          VAL R14
      220 CAPTURE                          VAL R16
      221 RETURN                           R28 1
