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
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["toggle"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["publish"]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R0 R0 K1 ["report"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K2 ["enable"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_7:
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
       18 GETTABLEKS                       R5 R6 K3 ["useContext"]
       20 GETUPVAL                         R6 5
       21 CALL                             R5 1 1
       22 GETUPVAL                         R7 4
       23 GETTABLEKS                       R6 R7 K3 ["useContext"]
       25 GETUPVAL                         R8 6
       26 GETTABLEKS                       R7 R8 K4 ["Context"]
       28 CALL                             R6 1 1
       29 GETUPVAL                         R7 7
       30 LOADB                            R8 0
       31 CALL                             R7 1 1
       32 GETUPVAL                         R9 8
       33 CALL                             R9 0 1
       34 JUMPIFNOT                        R9 ; [+4]
       35 GETUPVAL                         R8 7
       36 LOADB                            R9 0
       37 CALL                             R8 1 1
       38 JUMP                             ; [+1]
       39 LOADNIL                          R8
       40 GETUPVAL                         R9 9
       41 CALL                             R9 0 1
       42 JUMPIFNOT                        R9 ; [+245]
       43 GETTABLEKS                       R9 R0 K5 ["type"]
       45 JUMPIFNOTEQKS                    R9 K6 ["autosetup"] ; [+242]
       47 GETUPVAL                         R10 4
       48 GETTABLEKS                       R9 R10 K7 ["createElement"]
       50 GETUPVAL                         R10 10
       51 DUPTABLE                         R11 K13 [{"BackgroundColor", "BorderColor3", "BorderSizePixel", "Size", "ZIndex"}]
       52 GETTABLEKS                       R12 R1 K8 ["BackgroundColor"]
       54 SETTABLEKS                       R12 R11 K8 ["BackgroundColor"]
       56 GETTABLEKS                       R12 R1 K14 ["BorderColor"]
       58 SETTABLEKS                       R12 R11 K9 ["BorderColor3"]
       60 LOADN                            R12 1
       61 SETTABLEKS                       R12 R11 K10 ["BorderSizePixel"]
       63 GETIMPORT                        R12 K16 [UDim2.new]
       65 LOADN                            R13 0
       66 GETTABLEKS                       R14 R1 K17 ["Width"]
       68 LOADN                            R15 1
       69 LOADN                            R16 0
       70 CALL                             R12 4 1
       71 SETTABLEKS                       R12 R11 K11 ["Size"]
       73 LOADN                            R12 3
       74 SETTABLEKS                       R12 R11 K12 ["ZIndex"]
       76 DUPTABLE                         R12 K21 [{"Contents", "SettingsButton", "SettingsMenu"}]
       77 GETUPVAL                         R14 4
       78 GETTABLEKS                       R13 R14 K7 ["createElement"]
       80 GETUPVAL                         R14 10
       81 DUPTABLE                         R15 K24 [{"Layout", "VerticalAlignment"}]
       82 GETIMPORT                        R16 K28 [Enum.FillDirection.Vertical]
       84 SETTABLEKS                       R16 R15 K22 ["Layout"]
       86 GETIMPORT                        R16 K30 [Enum.VerticalAlignment.Top]
       88 SETTABLEKS                       R16 R15 K23 ["VerticalAlignment"]
       90 DUPTABLE                         R16 K35 [{"CheckBody", "CheckFace", "Test", "Publish"}]
       91 GETUPVAL                         R18 4
       92 GETTABLEKS                       R17 R18 K7 ["createElement"]
       94 GETUPVAL                         R18 11
       95 DUPTABLE                         R19 K41 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Enabled"}]
       96 NAMECALL                         R20 R3 K42 ["getNextOrder"]
       98 CALL                             R20 1 1
       99 SETTABLEKS                       R20 R19 K36 ["LayoutOrder"]
      101 LOADK                            R20 K43 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_body.png"]
      102 SETTABLEKS                       R20 R19 K37 ["Icon"]
      104 LOADB                            R20 0
      105 SETTABLEKS                       R20 R19 K38 ["IsSelected"]
      107 LOADK                            R20 K31 ["CheckBody"]
      108 SETTABLEKS                       R20 R19 K39 ["StageText"]
      110 LOADB                            R20 0
      111 SETTABLEKS                       R20 R19 K40 ["Enabled"]
      113 CALL                             R17 2 1
      114 SETTABLEKS                       R17 R16 K31 ["CheckBody"]
      116 GETUPVAL                         R18 4
      117 GETTABLEKS                       R17 R18 K7 ["createElement"]
      119 GETUPVAL                         R18 11
      120 DUPTABLE                         R19 K41 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Enabled"}]
      121 NAMECALL                         R20 R3 K42 ["getNextOrder"]
      123 CALL                             R20 1 1
      124 SETTABLEKS                       R20 R19 K36 ["LayoutOrder"]
      126 LOADK                            R20 K44 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_face.png"]
      127 SETTABLEKS                       R20 R19 K37 ["Icon"]
      129 LOADB                            R20 0
      130 SETTABLEKS                       R20 R19 K38 ["IsSelected"]
      132 LOADK                            R20 K32 ["CheckFace"]
      133 SETTABLEKS                       R20 R19 K39 ["StageText"]
      135 LOADB                            R20 0
      136 SETTABLEKS                       R20 R19 K40 ["Enabled"]
      138 CALL                             R17 2 1
      139 SETTABLEKS                       R17 R16 K32 ["CheckFace"]
      141 GETUPVAL                         R18 4
      142 GETTABLEKS                       R17 R18 K7 ["createElement"]
      144 GETUPVAL                         R18 11
      145 DUPTABLE                         R19 K41 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Enabled"}]
      146 NAMECALL                         R20 R3 K42 ["getNextOrder"]
      148 CALL                             R20 1 1
      149 SETTABLEKS                       R20 R19 K36 ["LayoutOrder"]
      151 LOADK                            R20 K45 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/test.png"]
      152 SETTABLEKS                       R20 R19 K37 ["Icon"]
      154 LOADB                            R20 0
      155 SETTABLEKS                       R20 R19 K38 ["IsSelected"]
      157 LOADK                            R20 K33 ["Test"]
      158 SETTABLEKS                       R20 R19 K39 ["StageText"]
      160 LOADB                            R20 0
      161 SETTABLEKS                       R20 R19 K40 ["Enabled"]
      163 CALL                             R17 2 1
      164 SETTABLEKS                       R17 R16 K33 ["Test"]
      166 GETUPVAL                         R18 4
      167 GETTABLEKS                       R17 R18 K7 ["createElement"]
      169 GETUPVAL                         R18 11
      170 DUPTABLE                         R19 K47 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Tooltip", "Enabled"}]
      171 NAMECALL                         R20 R3 K42 ["getNextOrder"]
      173 CALL                             R20 1 1
      174 SETTABLEKS                       R20 R19 K36 ["LayoutOrder"]
      176 LOADK                            R20 K48 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
      177 SETTABLEKS                       R20 R19 K37 ["Icon"]
      179 LOADB                            R20 0
      180 SETTABLEKS                       R20 R19 K38 ["IsSelected"]
      182 LOADK                            R20 K34 ["Publish"]
      183 SETTABLEKS                       R20 R19 K39 ["StageText"]
      185 GETTABLEKS                       R21 R6 K49 ["canUploadBundles"]
      187 JUMPIFEQKNIL                     R21 ; [+33]
      189 GETTABLEKS                       R22 R6 K49 ["canUploadBundles"]
      191 GETTABLEKS                       R21 R22 K5 ["type"]
      193 JUMPIFNOTEQKS                    R21 K50 ["notAllowed"] ; [+27]
      195 GETTABLEKS                       R22 R6 K49 ["canUploadBundles"]
      197 GETTABLEKS                       R21 R22 K51 ["denyReason"]
      199 JUMPIFEQKS                       R21 K52 ["MissingPremiumSubscriptionTier"] ; [+7]
      201 GETTABLEKS                       R22 R6 K49 ["canUploadBundles"]
      203 GETTABLEKS                       R21 R22 K51 ["denyReason"]
      205 JUMPIFNOTEQKS                    R21 K53 ["MissingIdVerification"] ; [+15]
      207 LOADK                            R22 K0 ["StageSelector"]
      208 LOADK                            R24 K54 ["Publish_Deny_%*"]
      209 GETTABLEKS                       R27 R6 K49 ["canUploadBundles"]
      211 GETTABLEKS                       R26 R27 K51 ["denyReason"]
      213 NAMECALL                         R24 R24 K55 ["format"]
      215 CALL                             R24 2 1
      216 MOVE                             R23 R24
      217 NAMECALL                         R20 R2 K56 ["getText"]
      219 CALL                             R20 3 1
      220 JUMP                             ; [+1]
      221 LOADNIL                          R20
      222 SETTABLEKS                       R20 R19 K46 ["Tooltip"]
      224 LOADB                            R20 0
      225 SETTABLEKS                       R20 R19 K40 ["Enabled"]
      227 CALL                             R17 2 1
      228 SETTABLEKS                       R17 R16 K34 ["Publish"]
      230 CALL                             R13 3 1
      231 SETTABLEKS                       R13 R12 K18 ["Contents"]
      233 GETUPVAL                         R14 4
      234 GETTABLEKS                       R13 R14 K7 ["createElement"]
      236 GETUPVAL                         R14 11
      237 DUPTABLE                         R15 K60 [{"Icon", "IsSelected", "StageText", "AnchorPoint", "Position", "OnClick"}]
      238 LOADK                            R16 K61 ["rbxassetid://6663675885"]
      239 SETTABLEKS                       R16 R15 K37 ["Icon"]
      241 LOADB                            R16 0
      242 SETTABLEKS                       R16 R15 K38 ["IsSelected"]
      244 LOADK                            R16 K62 ["Settings"]
      245 SETTABLEKS                       R16 R15 K39 ["StageText"]
      247 GETIMPORT                        R16 K64 [Vector2.new]
      249 LOADN                            R17 0
      250 LOADN                            R18 1
      251 CALL                             R16 2 1
      252 SETTABLEKS                       R16 R15 K57 ["AnchorPoint"]
      254 GETIMPORT                        R16 K66 [UDim2.fromScale]
      256 LOADN                            R17 0
      257 LOADN                            R18 1
      258 CALL                             R16 2 1
      259 SETTABLEKS                       R16 R15 K58 ["Position"]
      261 GETTABLEKS                       R16 R7 K67 ["enable"]
      263 SETTABLEKS                       R16 R15 K59 ["OnClick"]
      265 CALL                             R13 2 1
      266 SETTABLEKS                       R13 R12 K19 ["SettingsButton"]
      268 GETTABLEKS                       R13 R7 K68 ["enabled"]
      270 JUMPIFNOT                        R13 ; [+13]
      271 GETUPVAL                         R14 4
      272 GETTABLEKS                       R13 R14 K7 ["createElement"]
      274 GETUPVAL                         R14 12
      275 DUPTABLE                         R15 K70 [{"type", "close"}]
      276 LOADK                            R16 K71 ["autoSetup"]
      277 SETTABLEKS                       R16 R15 K5 ["type"]
      279 GETTABLEKS                       R16 R7 K72 ["disable"]
      281 SETTABLEKS                       R16 R15 K69 ["close"]
      283 CALL                             R13 2 1
      284 SETTABLEKS                       R13 R12 K20 ["SettingsMenu"]
      286 CALL                             R9 3 -1
      287 RETURN                           R9 -1
      288 GETUPVAL                         R9 7
      289 LOADB                            R10 0
      290 CALL                             R9 1 1
      291 MOVE                             R10 R0
      292 JUMPIFNOT                        R10 ; [+9]
      293 GETTABLEKS                       R10 R0 K73 ["Avatar"]
      295 JUMPIFNOT                        R10 ; [+6]
      296 GETUPVAL                         R10 13
      297 GETTABLEKS                       R12 R0 K73 ["Avatar"]
      299 GETTABLEKS                       R11 R12 K74 ["WorldModel"]
      301 CALL                             R10 1 1
      302 GETUPVAL                         R12 8
      303 CALL                             R12 0 1
      304 JUMPIFNOT                        R12 ; [+8]
      305 GETUPVAL                         R12 4
      306 GETTABLEKS                       R11 R12 K3 ["useContext"]
      308 GETUPVAL                         R13 14
      309 GETTABLEKS                       R12 R13 K4 ["Context"]
      311 CALL                             R11 1 1
      312 JUMP                             ; [+1]
      313 LOADNIL                          R11
      314 GETUPVAL                         R13 8
      315 CALL                             R13 0 1
      316 JUMPIFNOT                        R13 ; [+4]
      317 JUMPIFNOT                        R11 ; [+3]
      318 GETTABLEKS                       R12 R11 K75 ["canCreateLook"]
      320 JUMP                             ; [+1]
      321 LOADB                            R12 0
      322 LOADB                            R13 1
      323 GETTABLEKS                       R14 R6 K49 ["canUploadBundles"]
      325 JUMPIFEQKNIL                     R14 ; [+9]
      327 GETTABLEKS                       R15 R6 K49 ["canUploadBundles"]
      329 GETTABLEKS                       R14 R15 K5 ["type"]
      331 JUMPIFNOTEQKS                    R14 K50 ["notAllowed"] ; [+2]
      333 LOADB                            R13 0 +1
      334 LOADB                            R13 1
      335 GETUPVAL                         R15 4
      336 GETTABLEKS                       R14 R15 K7 ["createElement"]
      338 GETUPVAL                         R15 10
      339 DUPTABLE                         R16 K76 [{"BackgroundColor", "Size", "ZIndex"}]
      340 GETTABLEKS                       R17 R1 K8 ["BackgroundColor"]
      342 SETTABLEKS                       R17 R16 K8 ["BackgroundColor"]
      344 GETIMPORT                        R17 K16 [UDim2.new]
      346 LOADN                            R18 0
      347 GETTABLEKS                       R19 R1 K17 ["Width"]
      349 LOADN                            R20 1
      350 LOADN                            R21 0
      351 CALL                             R17 4 1
      352 SETTABLEKS                       R17 R16 K11 ["Size"]
      354 LOADN                            R17 2
      355 SETTABLEKS                       R17 R16 K12 ["ZIndex"]
      357 DUPTABLE                         R17 K78 [{"Contents", "SettingsButton", "SettingsMenu", "SubmitDialog"}]
      358 GETUPVAL                         R19 4
      359 GETTABLEKS                       R18 R19 K7 ["createElement"]
      361 GETUPVAL                         R19 10
      362 DUPTABLE                         R20 K24 [{"Layout", "VerticalAlignment"}]
      363 GETIMPORT                        R21 K28 [Enum.FillDirection.Vertical]
      365 SETTABLEKS                       R21 R20 K22 ["Layout"]
      367 GETIMPORT                        R21 K30 [Enum.VerticalAlignment.Top]
      369 SETTABLEKS                       R21 R20 K23 ["VerticalAlignment"]
      371 DUPTABLE                         R21 K80 [{"CheckBody", "CheckFace", "Test", "LookSaveMenu", "Publish"}]
      372 GETUPVAL                         R23 4
      373 GETTABLEKS                       R22 R23 K7 ["createElement"]
      375 GETUPVAL                         R23 11
      376 DUPTABLE                         R24 K81 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      377 NAMECALL                         R25 R3 K42 ["getNextOrder"]
      379 CALL                             R25 1 1
      380 SETTABLEKS                       R25 R24 K36 ["LayoutOrder"]
      382 LOADK                            R25 K43 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_body.png"]
      383 SETTABLEKS                       R25 R24 K37 ["Icon"]
      385 GETTABLEKS                       R26 R0 K82 ["SelectedStage"]
      387 JUMPIFEQKS                       R26 K31 ["CheckBody"] ; [+2]
      389 LOADB                            R25 0 +1
      390 LOADB                            R25 1
      391 SETTABLEKS                       R25 R24 K38 ["IsSelected"]
      393 LOADK                            R25 K31 ["CheckBody"]
      394 SETTABLEKS                       R25 R24 K39 ["StageText"]
      396 NEWCLOSURE                       R25 P0
      397 CAPTURE                          VAL R4
      398 CAPTURE                          VAL R0
      399 SETTABLEKS                       R25 R24 K59 ["OnClick"]
      401 CALL                             R22 2 1
      402 SETTABLEKS                       R22 R21 K31 ["CheckBody"]
      404 GETUPVAL                         R23 4
      405 GETTABLEKS                       R22 R23 K7 ["createElement"]
      407 GETUPVAL                         R23 11
      408 DUPTABLE                         R24 K81 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      409 NAMECALL                         R25 R3 K42 ["getNextOrder"]
      411 CALL                             R25 1 1
      412 SETTABLEKS                       R25 R24 K36 ["LayoutOrder"]
      414 LOADK                            R25 K44 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_face.png"]
      415 SETTABLEKS                       R25 R24 K37 ["Icon"]
      417 GETTABLEKS                       R26 R0 K82 ["SelectedStage"]
      419 JUMPIFEQKS                       R26 K32 ["CheckFace"] ; [+2]
      421 LOADB                            R25 0 +1
      422 LOADB                            R25 1
      423 SETTABLEKS                       R25 R24 K38 ["IsSelected"]
      425 LOADK                            R25 K32 ["CheckFace"]
      426 SETTABLEKS                       R25 R24 K39 ["StageText"]
      428 NEWCLOSURE                       R25 P1
      429 CAPTURE                          VAL R4
      430 CAPTURE                          VAL R0
      431 SETTABLEKS                       R25 R24 K59 ["OnClick"]
      433 CALL                             R22 2 1
      434 SETTABLEKS                       R22 R21 K32 ["CheckFace"]
      436 GETUPVAL                         R23 4
      437 GETTABLEKS                       R22 R23 K7 ["createElement"]
      439 GETUPVAL                         R23 11
      440 DUPTABLE                         R24 K81 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
      441 NAMECALL                         R25 R3 K42 ["getNextOrder"]
      443 CALL                             R25 1 1
      444 SETTABLEKS                       R25 R24 K36 ["LayoutOrder"]
      446 LOADK                            R25 K45 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/test.png"]
      447 SETTABLEKS                       R25 R24 K37 ["Icon"]
      449 LOADB                            R25 0
      450 SETTABLEKS                       R25 R24 K38 ["IsSelected"]
      452 LOADK                            R25 K33 ["Test"]
      453 SETTABLEKS                       R25 R24 K39 ["StageText"]
      455 NEWCLOSURE                       R25 P2
      456 CAPTURE                          VAL R4
      457 CAPTURE                          UPVAL U15
      458 CAPTURE                          VAL R5
      459 CAPTURE                          VAL R0
      460 SETTABLEKS                       R25 R24 K59 ["OnClick"]
      462 CALL                             R22 2 1
      463 SETTABLEKS                       R22 R21 K33 ["Test"]
      465 GETUPVAL                         R23 8
      466 CALL                             R23 0 1
      467 JUMPIFNOT                        R23 ; [+106]
      468 JUMPIFNOT                        R12 ; [+105]
      469 JUMPIFEQKNIL                     R8 ; [+104]
      471 GETUPVAL                         R23 4
      472 GETTABLEKS                       R22 R23 K7 ["createElement"]
      474 GETUPVAL                         R23 16
      475 DUPTABLE                         R24 K88 [{"LayoutOrder", "isOpen", "onClose", "onToggle", "onSaveToRoblox", "anchor"}]
      476 NAMECALL                         R25 R3 K42 ["getNextOrder"]
      478 CALL                             R25 1 1
      479 SETTABLEKS                       R25 R24 K36 ["LayoutOrder"]
      481 GETTABLEKS                       R25 R8 K68 ["enabled"]
      483 SETTABLEKS                       R25 R24 K83 ["isOpen"]
      485 GETTABLEKS                       R25 R8 K72 ["disable"]
      487 SETTABLEKS                       R25 R24 K84 ["onClose"]
      489 GETTABLEKS                       R25 R8 K89 ["toggle"]
      491 SETTABLEKS                       R25 R24 K85 ["onToggle"]
      493 NEWCLOSURE                       R25 P3
      494 CAPTURE                          VAL R9
      495 SETTABLEKS                       R25 R24 K86 ["onSaveToRoblox"]
      497 GETUPVAL                         R26 4
      498 GETTABLEKS                       R25 R26 K7 ["createElement"]
      500 GETUPVAL                         R26 11
      501 DUPTABLE                         R27 K91 [{"Icon", "IsSelected", "ShowMenuIndicator", "StageText", "Tooltip", "Enabled", "OnClick"}]
      502 LOADK                            R28 K48 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
      503 SETTABLEKS                       R28 R27 K37 ["Icon"]
      505 GETTABLEKS                       R28 R8 K68 ["enabled"]
      507 SETTABLEKS                       R28 R27 K38 ["IsSelected"]
      509 LOADB                            R28 1
      510 SETTABLEKS                       R28 R27 K90 ["ShowMenuIndicator"]
      512 LOADK                            R28 K34 ["Publish"]
      513 SETTABLEKS                       R28 R27 K39 ["StageText"]
      515 GETTABLEKS                       R29 R6 K49 ["canUploadBundles"]
      517 JUMPIFEQKNIL                     R29 ; [+33]
      519 GETTABLEKS                       R30 R6 K49 ["canUploadBundles"]
      521 GETTABLEKS                       R29 R30 K5 ["type"]
      523 JUMPIFNOTEQKS                    R29 K50 ["notAllowed"] ; [+27]
      525 GETTABLEKS                       R30 R6 K49 ["canUploadBundles"]
      527 GETTABLEKS                       R29 R30 K51 ["denyReason"]
      529 JUMPIFEQKS                       R29 K52 ["MissingPremiumSubscriptionTier"] ; [+7]
      531 GETTABLEKS                       R30 R6 K49 ["canUploadBundles"]
      533 GETTABLEKS                       R29 R30 K51 ["denyReason"]
      535 JUMPIFNOTEQKS                    R29 K53 ["MissingIdVerification"] ; [+15]
      537 LOADK                            R30 K0 ["StageSelector"]
      538 LOADK                            R32 K54 ["Publish_Deny_%*"]
      539 GETTABLEKS                       R35 R6 K49 ["canUploadBundles"]
      541 GETTABLEKS                       R34 R35 K51 ["denyReason"]
      543 NAMECALL                         R32 R32 K55 ["format"]
      545 CALL                             R32 2 1
      546 MOVE                             R31 R32
      547 NAMECALL                         R28 R2 K56 ["getText"]
      549 CALL                             R28 3 1
      550 JUMP                             ; [+5]
      551 LOADK                            R30 K79 ["LookSaveMenu"]
      552 LOADK                            R31 K92 ["Save"]
      553 NAMECALL                         R28 R2 K56 ["getText"]
      555 CALL                             R28 3 1
      556 SETTABLEKS                       R28 R27 K46 ["Tooltip"]
      558 JUMPIF                           R13 ; [+2]
      559 LOADB                            R28 0
      560 JUMP                             ; [+1]
      561 LOADNIL                          R28
      562 SETTABLEKS                       R28 R27 K40 ["Enabled"]
      564 NEWCLOSURE                       R28 P4
      565 CAPTURE                          VAL R13
      566 CAPTURE                          VAL R8
      567 SETTABLEKS                       R28 R27 K59 ["OnClick"]
      569 CALL                             R25 2 1
      570 SETTABLEKS                       R25 R24 K87 ["anchor"]
      572 CALL                             R22 2 1
      573 JUMP                             ; [+1]
      574 LOADNIL                          R22
      575 SETTABLEKS                       R22 R21 K79 ["LookSaveMenu"]
      577 GETUPVAL                         R23 8
      578 CALL                             R23 0 1
      579 JUMPIFNOT                        R23 ; [+1]
      580 JUMPIF                           R12 ; [+72]
      581 GETUPVAL                         R23 4
      582 GETTABLEKS                       R22 R23 K7 ["createElement"]
      584 GETUPVAL                         R23 11
      585 DUPTABLE                         R24 K93 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Tooltip", "Enabled", "OnClick"}]
      586 NAMECALL                         R25 R3 K42 ["getNextOrder"]
      588 CALL                             R25 1 1
      589 SETTABLEKS                       R25 R24 K36 ["LayoutOrder"]
      591 LOADK                            R25 K48 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
      592 SETTABLEKS                       R25 R24 K37 ["Icon"]
      594 LOADB                            R25 0
      595 SETTABLEKS                       R25 R24 K38 ["IsSelected"]
      597 LOADK                            R25 K34 ["Publish"]
      598 SETTABLEKS                       R25 R24 K39 ["StageText"]
      600 GETTABLEKS                       R26 R6 K49 ["canUploadBundles"]
      602 JUMPIFEQKNIL                     R26 ; [+33]
      604 GETTABLEKS                       R27 R6 K49 ["canUploadBundles"]
      606 GETTABLEKS                       R26 R27 K5 ["type"]
      608 JUMPIFNOTEQKS                    R26 K50 ["notAllowed"] ; [+27]
      610 GETTABLEKS                       R27 R6 K49 ["canUploadBundles"]
      612 GETTABLEKS                       R26 R27 K51 ["denyReason"]
      614 JUMPIFEQKS                       R26 K52 ["MissingPremiumSubscriptionTier"] ; [+7]
      616 GETTABLEKS                       R27 R6 K49 ["canUploadBundles"]
      618 GETTABLEKS                       R26 R27 K51 ["denyReason"]
      620 JUMPIFNOTEQKS                    R26 K53 ["MissingIdVerification"] ; [+15]
      622 LOADK                            R27 K0 ["StageSelector"]
      623 LOADK                            R29 K54 ["Publish_Deny_%*"]
      624 GETTABLEKS                       R32 R6 K49 ["canUploadBundles"]
      626 GETTABLEKS                       R31 R32 K51 ["denyReason"]
      628 NAMECALL                         R29 R29 K55 ["format"]
      630 CALL                             R29 2 1
      631 MOVE                             R28 R29
      632 NAMECALL                         R25 R2 K56 ["getText"]
      634 CALL                             R25 3 1
      635 JUMP                             ; [+1]
      636 LOADNIL                          R25
      637 SETTABLEKS                       R25 R24 K46 ["Tooltip"]
      639 JUMPIF                           R13 ; [+2]
      640 LOADB                            R25 0
      641 JUMP                             ; [+1]
      642 LOADNIL                          R25
      643 SETTABLEKS                       R25 R24 K40 ["Enabled"]
      645 NEWCLOSURE                       R25 P5
      646 CAPTURE                          VAL R4
      647 CAPTURE                          VAL R10
      648 CAPTURE                          VAL R9
      649 SETTABLEKS                       R25 R24 K59 ["OnClick"]
      651 CALL                             R22 2 1
      652 JUMP                             ; [+1]
      653 LOADNIL                          R22
      654 SETTABLEKS                       R22 R21 K34 ["Publish"]
      656 CALL                             R18 3 1
      657 SETTABLEKS                       R18 R17 K18 ["Contents"]
      659 GETUPVAL                         R19 4
      660 GETTABLEKS                       R18 R19 K7 ["createElement"]
      662 GETUPVAL                         R19 11
      663 DUPTABLE                         R20 K60 [{"Icon", "IsSelected", "StageText", "AnchorPoint", "Position", "OnClick"}]
      664 LOADK                            R21 K61 ["rbxassetid://6663675885"]
      665 SETTABLEKS                       R21 R20 K37 ["Icon"]
      667 LOADB                            R21 0
      668 SETTABLEKS                       R21 R20 K38 ["IsSelected"]
      670 LOADK                            R21 K62 ["Settings"]
      671 SETTABLEKS                       R21 R20 K39 ["StageText"]
      673 GETIMPORT                        R21 K64 [Vector2.new]
      675 LOADN                            R22 0
      676 LOADN                            R23 1
      677 CALL                             R21 2 1
      678 SETTABLEKS                       R21 R20 K57 ["AnchorPoint"]
      680 GETIMPORT                        R21 K66 [UDim2.fromScale]
      682 LOADN                            R22 0
      683 LOADN                            R23 1
      684 CALL                             R21 2 1
      685 SETTABLEKS                       R21 R20 K58 ["Position"]
      687 GETTABLEKS                       R21 R7 K67 ["enable"]
      689 SETTABLEKS                       R21 R20 K59 ["OnClick"]
      691 CALL                             R18 2 1
      692 SETTABLEKS                       R18 R17 K19 ["SettingsButton"]
      694 GETTABLEKS                       R18 R7 K68 ["enabled"]
      696 JUMPIFNOT                        R18 ; [+17]
      697 GETUPVAL                         R19 4
      698 GETTABLEKS                       R18 R19 K7 ["createElement"]
      700 GETUPVAL                         R19 12
      701 DUPTABLE                         R20 K95 [{"type", "avatar", "close"}]
      702 LOADK                            R21 K94 ["avatar"]
      703 SETTABLEKS                       R21 R20 K5 ["type"]
      705 GETTABLEKS                       R21 R0 K73 ["Avatar"]
      707 SETTABLEKS                       R21 R20 K94 ["avatar"]
      709 GETTABLEKS                       R21 R7 K72 ["disable"]
      711 SETTABLEKS                       R21 R20 K69 ["close"]
      713 CALL                             R18 2 1
      714 SETTABLEKS                       R18 R17 K20 ["SettingsMenu"]
      716 GETTABLEKS                       R18 R9 K68 ["enabled"]
      718 JUMPIFNOT                        R18 ; [+14]
      719 GETUPVAL                         R19 4
      720 GETTABLEKS                       R18 R19 K7 ["createElement"]
      722 GETUPVAL                         R19 17
      723 DUPTABLE                         R20 K96 [{"close", "avatar"}]
      724 GETTABLEKS                       R21 R9 K72 ["disable"]
      726 SETTABLEKS                       R21 R20 K69 ["close"]
      728 GETTABLEKS                       R21 R0 K73 ["Avatar"]
      730 SETTABLEKS                       R21 R20 K94 ["avatar"]
      732 CALL                             R18 2 1
      733 SETTABLEKS                       R18 R17 K77 ["SubmitDialog"]
      735 CALL                             R14 3 -1
      736 RETURN                           R14 -1

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
       84 GETTABLEKS                       R12 R13 K19 ["Components"]
       86 GETTABLEKS                       R11 R12 K21 ["LookContext"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R14 R0 K10 ["Src"]
       93 GETTABLEKS                       R13 R14 K19 ["Components"]
       95 GETTABLEKS                       R12 R13 K22 ["PlacesServiceContext"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R15 R0 K10 ["Src"]
      102 GETTABLEKS                       R14 R15 K19 ["Components"]
      104 GETTABLEKS                       R13 R14 K23 ["LookSaveMenu"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R16 R0 K10 ["Src"]
      111 GETTABLEKS                       R15 R16 K19 ["Components"]
      113 GETTABLEKS                       R14 R15 K24 ["SubmitDialog"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R17 R0 K10 ["Src"]
      120 GETTABLEKS                       R16 R17 K19 ["Components"]
      122 GETTABLEKS                       R15 R16 K25 ["UGCValidationContext"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K5 [require]
      127 GETTABLEKS                       R18 R0 K10 ["Src"]
      129 GETTABLEKS                       R17 R18 K26 ["Flags"]
      131 GETTABLEKS                       R16 R17 K27 ["getFFlagAvatarAutosetupOptionsInput"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K5 [require]
      136 GETTABLEKS                       R19 R0 K10 ["Src"]
      138 GETTABLEKS                       R18 R19 K26 ["Flags"]
      140 GETTABLEKS                       R17 R18 K28 ["getFFlagAvatarPreviewerLookComposer"]
      142 CALL                             R16 1 1
      143 GETTABLEKS                       R17 R1 K29 ["UI"]
      145 GETTABLEKS                       R18 R17 K30 ["IconButton"]
      147 GETTABLEKS                       R19 R17 K31 ["Pane"]
      149 GETTABLEKS                       R21 R1 K14 ["Util"]
      151 GETTABLEKS                       R20 R21 K32 ["LayoutOrderIterator"]
      153 GETTABLEKS                       R22 R1 K33 ["ContextServices"]
      155 GETTABLEKS                       R21 R22 K34 ["Analytics"]
      157 GETTABLEKS                       R23 R1 K33 ["ContextServices"]
      159 GETTABLEKS                       R22 R23 K35 ["Localization"]
      161 GETTABLEKS                       R24 R1 K33 ["ContextServices"]
      163 GETTABLEKS                       R23 R24 K36 ["Stylizer"]
      165 DUPCLOSURE                       R24 K37 [PROTO_0]
      166 CAPTURE                          VAL R23
      167 CAPTURE                          VAL R22
      168 CAPTURE                          VAL R16
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R18
      171 CAPTURE                          VAL R2
      172 DUPCLOSURE                       R25 K38 [PROTO_7]
      173 CAPTURE                          VAL R23
      174 CAPTURE                          VAL R22
      175 CAPTURE                          VAL R20
      176 CAPTURE                          VAL R21
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R14
      180 CAPTURE                          VAL R8
      181 CAPTURE                          VAL R16
      182 CAPTURE                          VAL R15
      183 CAPTURE                          VAL R19
      184 CAPTURE                          VAL R24
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R7
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R6
      189 CAPTURE                          VAL R12
      190 CAPTURE                          VAL R13
      191 RETURN                           R25 1
