PROTO_0:
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
       14 GETTABLEKS                       R4 R4 K3 ["useContext"]
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K4 ["Context"]
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 5
       21 LOADB                            R6 0
       22 CALL                             R5 1 1
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R6 R6 K5 ["createElement"]
       26 GETUPVAL                         R7 6
       27 DUPTABLE                         R8 K11 [{"BackgroundColor", "BorderColor3", "BorderSizePixel", "Size", "ZIndex"}]
       28 GETTABLEKS                       R9 R1 K6 ["BackgroundColor"]
       30 SETTABLEKS                       R9 R8 K6 ["BackgroundColor"]
       32 GETTABLEKS                       R9 R1 K12 ["BorderColor"]
       34 SETTABLEKS                       R9 R8 K7 ["BorderColor3"]
       36 LOADN                            R9 1
       37 SETTABLEKS                       R9 R8 K8 ["BorderSizePixel"]
       39 GETIMPORT                        R9 K14 [UDim2.new]
       41 LOADN                            R10 0
       42 GETTABLEKS                       R11 R1 K15 ["Width"]
       44 LOADN                            R12 1
       45 LOADN                            R13 0
       46 CALL                             R9 4 1
       47 SETTABLEKS                       R9 R8 K9 ["Size"]
       49 LOADN                            R9 3
       50 SETTABLEKS                       R9 R8 K10 ["ZIndex"]
       52 DUPTABLE                         R9 K19 [{"Contents", "SettingsButton", "SettingsMenu"}]
       53 GETUPVAL                         R10 3
       54 GETTABLEKS                       R10 R10 K5 ["createElement"]
       56 GETUPVAL                         R11 6
       57 DUPTABLE                         R12 K22 [{"Layout", "VerticalAlignment"}]
       58 GETIMPORT                        R13 K26 [Enum.FillDirection.Vertical]
       60 SETTABLEKS                       R13 R12 K20 ["Layout"]
       62 GETIMPORT                        R13 K28 [Enum.VerticalAlignment.Top]
       64 SETTABLEKS                       R13 R12 K21 ["VerticalAlignment"]
       66 DUPTABLE                         R13 K34 [{"Back", "CheckBody", "CheckFace", "Test", "Publish"}]
       67 GETUPVAL                         R15 7
       68 CALL                             R15 0 1
       69 JUMPIFNOT                        R15 ; [+31]
       70 GETUPVAL                         R14 3
       71 GETTABLEKS                       R14 R14 K5 ["createElement"]
       73 GETUPVAL                         R15 8
       74 DUPTABLE                         R16 K40 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "OnClick"}]
       75 NAMECALL                         R17 R3 K41 ["getNextOrder"]
       77 CALL                             R17 1 1
       78 SETTABLEKS                       R17 R16 K35 ["LayoutOrder"]
       80 GETUPVAL                         R17 9
       81 GETTABLEKS                       R17 R17 K42 ["Enums"]
       83 GETTABLEKS                       R17 R17 K43 ["IconName"]
       85 GETTABLEKS                       R17 R17 K44 ["ArrowCurlToLeft"]
       87 SETTABLEKS                       R17 R16 K36 ["Icon"]
       89 LOADB                            R17 0
       90 SETTABLEKS                       R17 R16 K37 ["IsSelected"]
       92 LOADK                            R17 K29 ["Back"]
       93 SETTABLEKS                       R17 R16 K38 ["StageText"]
       95 GETTABLEKS                       R17 R0 K45 ["onBack"]
       97 SETTABLEKS                       R17 R16 K39 ["OnClick"]
       99 CALL                             R14 2 1
      100 JUMP                             ; [+1]
      101 LOADNIL                          R14
      102 SETTABLEKS                       R14 R13 K29 ["Back"]
      104 GETUPVAL                         R14 3
      105 GETTABLEKS                       R14 R14 K5 ["createElement"]
      107 GETUPVAL                         R15 8
      108 DUPTABLE                         R16 K47 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Enabled"}]
      109 NAMECALL                         R17 R3 K41 ["getNextOrder"]
      111 CALL                             R17 1 1
      112 SETTABLEKS                       R17 R16 K35 ["LayoutOrder"]
      114 LOADK                            R17 K48 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_body.png"]
      115 SETTABLEKS                       R17 R16 K36 ["Icon"]
      117 LOADB                            R17 0
      118 SETTABLEKS                       R17 R16 K37 ["IsSelected"]
      120 LOADK                            R17 K30 ["CheckBody"]
      121 SETTABLEKS                       R17 R16 K38 ["StageText"]
      123 LOADB                            R17 0
      124 SETTABLEKS                       R17 R16 K46 ["Enabled"]
      126 CALL                             R14 2 1
      127 SETTABLEKS                       R14 R13 K30 ["CheckBody"]
      129 GETUPVAL                         R14 3
      130 GETTABLEKS                       R14 R14 K5 ["createElement"]
      132 GETUPVAL                         R15 8
      133 DUPTABLE                         R16 K47 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Enabled"}]
      134 NAMECALL                         R17 R3 K41 ["getNextOrder"]
      136 CALL                             R17 1 1
      137 SETTABLEKS                       R17 R16 K35 ["LayoutOrder"]
      139 LOADK                            R17 K49 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_face.png"]
      140 SETTABLEKS                       R17 R16 K36 ["Icon"]
      142 LOADB                            R17 0
      143 SETTABLEKS                       R17 R16 K37 ["IsSelected"]
      145 LOADK                            R17 K31 ["CheckFace"]
      146 SETTABLEKS                       R17 R16 K38 ["StageText"]
      148 LOADB                            R17 0
      149 SETTABLEKS                       R17 R16 K46 ["Enabled"]
      151 CALL                             R14 2 1
      152 SETTABLEKS                       R14 R13 K31 ["CheckFace"]
      154 GETUPVAL                         R14 3
      155 GETTABLEKS                       R14 R14 K5 ["createElement"]
      157 GETUPVAL                         R15 8
      158 DUPTABLE                         R16 K47 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Enabled"}]
      159 NAMECALL                         R17 R3 K41 ["getNextOrder"]
      161 CALL                             R17 1 1
      162 SETTABLEKS                       R17 R16 K35 ["LayoutOrder"]
      164 LOADK                            R17 K50 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/test.png"]
      165 SETTABLEKS                       R17 R16 K36 ["Icon"]
      167 LOADB                            R17 0
      168 SETTABLEKS                       R17 R16 K37 ["IsSelected"]
      170 LOADK                            R17 K32 ["Test"]
      171 SETTABLEKS                       R17 R16 K38 ["StageText"]
      173 LOADB                            R17 0
      174 SETTABLEKS                       R17 R16 K46 ["Enabled"]
      176 CALL                             R14 2 1
      177 SETTABLEKS                       R14 R13 K32 ["Test"]
      179 GETUPVAL                         R14 3
      180 GETTABLEKS                       R14 R14 K5 ["createElement"]
      182 GETUPVAL                         R15 8
      183 DUPTABLE                         R16 K52 [{"LayoutOrder", "Icon", "IsSelected", "StageText", "Tooltip", "Enabled"}]
      184 NAMECALL                         R17 R3 K41 ["getNextOrder"]
      186 CALL                             R17 1 1
      187 SETTABLEKS                       R17 R16 K35 ["LayoutOrder"]
      189 LOADK                            R17 K53 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png"]
      190 SETTABLEKS                       R17 R16 K36 ["Icon"]
      192 LOADB                            R17 0
      193 SETTABLEKS                       R17 R16 K37 ["IsSelected"]
      195 LOADK                            R17 K33 ["Publish"]
      196 SETTABLEKS                       R17 R16 K38 ["StageText"]
      198 GETTABLEKS                       R18 R4 K54 ["canUploadBundles"]
      200 JUMPIFEQKNIL                     R18 ; [+33]
      202 GETTABLEKS                       R18 R4 K54 ["canUploadBundles"]
      204 GETTABLEKS                       R18 R18 K55 ["type"]
      206 JUMPIFNOTEQKS                    R18 K56 ["notAllowed"] ; [+27]
      208 GETTABLEKS                       R18 R4 K54 ["canUploadBundles"]
      210 GETTABLEKS                       R18 R18 K57 ["denyReason"]
      212 JUMPIFEQKS                       R18 K58 ["MissingPremiumSubscriptionTier"] ; [+7]
      214 GETTABLEKS                       R18 R4 K54 ["canUploadBundles"]
      216 GETTABLEKS                       R18 R18 K57 ["denyReason"]
      218 JUMPIFNOTEQKS                    R18 K59 ["MissingIdVerification"] ; [+15]
      220 LOADK                            R19 K0 ["StageSelector"]
      221 LOADK                            R21 K60 ["Publish_Deny_%*"]
      222 GETTABLEKS                       R23 R4 K54 ["canUploadBundles"]
      224 GETTABLEKS                       R23 R23 K57 ["denyReason"]
      226 NAMECALL                         R21 R21 K61 ["format"]
      228 CALL                             R21 2 1
      229 MOVE                             R20 R21
      230 NAMECALL                         R17 R2 K62 ["getText"]
      232 CALL                             R17 3 1
      233 JUMP                             ; [+1]
      234 LOADNIL                          R17
      235 SETTABLEKS                       R17 R16 K51 ["Tooltip"]
      237 LOADB                            R17 0
      238 SETTABLEKS                       R17 R16 K46 ["Enabled"]
      240 CALL                             R14 2 1
      241 SETTABLEKS                       R14 R13 K33 ["Publish"]
      243 CALL                             R10 3 1
      244 SETTABLEKS                       R10 R9 K16 ["Contents"]
      246 GETUPVAL                         R10 3
      247 GETTABLEKS                       R10 R10 K5 ["createElement"]
      249 GETUPVAL                         R11 8
      250 DUPTABLE                         R12 K65 [{"Icon", "IsSelected", "StageText", "AnchorPoint", "Position", "OnClick"}]
      251 LOADK                            R13 K66 ["rbxassetid://6663675885"]
      252 SETTABLEKS                       R13 R12 K36 ["Icon"]
      254 LOADB                            R13 0
      255 SETTABLEKS                       R13 R12 K37 ["IsSelected"]
      257 LOADK                            R13 K67 ["Settings"]
      258 SETTABLEKS                       R13 R12 K38 ["StageText"]
      260 GETIMPORT                        R13 K69 [Vector2.new]
      262 LOADN                            R14 0
      263 LOADN                            R15 1
      264 CALL                             R13 2 1
      265 SETTABLEKS                       R13 R12 K63 ["AnchorPoint"]
      267 GETIMPORT                        R13 K71 [UDim2.fromScale]
      269 LOADN                            R14 0
      270 LOADN                            R15 1
      271 CALL                             R13 2 1
      272 SETTABLEKS                       R13 R12 K64 ["Position"]
      274 GETTABLEKS                       R13 R5 K72 ["enable"]
      276 SETTABLEKS                       R13 R12 K39 ["OnClick"]
      278 CALL                             R10 2 1
      279 SETTABLEKS                       R10 R9 K17 ["SettingsButton"]
      281 GETTABLEKS                       R10 R5 K73 ["enabled"]
      283 JUMPIFNOT                        R10 ; [+13]
      284 GETUPVAL                         R10 3
      285 GETTABLEKS                       R10 R10 K5 ["createElement"]
      287 GETUPVAL                         R11 10
      288 DUPTABLE                         R12 K75 [{"type", "close"}]
      289 LOADK                            R13 K76 ["autoSetup"]
      290 SETTABLEKS                       R13 R12 K55 ["type"]
      292 GETTABLEKS                       R13 R5 K77 ["disable"]
      294 SETTABLEKS                       R13 R12 K74 ["close"]
      296 CALL                             R10 2 1
      297 SETTABLEKS                       R10 R9 K18 ["SettingsMenu"]
      299 CALL                             R6 3 -1
      300 RETURN                           R6 -1

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
       41 GETTABLEKS                       R6 R6 K13 ["Flags"]
       43 GETTABLEKS                       R6 R6 K14 ["getFFlagAvatarPreviewerAvatarScreenBack"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Hooks"]
       52 GETTABLEKS                       R7 R7 K16 ["useToggleState"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K10 ["Src"]
       59 GETTABLEKS                       R8 R8 K17 ["Components"]
       61 GETTABLEKS                       R8 R8 K18 ["AvatarSettings"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K10 ["Src"]
       68 GETTABLEKS                       R9 R9 K17 ["Components"]
       70 GETTABLEKS                       R9 R9 K19 ["UGCValidationContext"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K10 ["Src"]
       77 GETTABLEKS                       R10 R10 K17 ["Components"]
       79 GETTABLEKS                       R10 R10 K20 ["StageSelector"]
       81 GETTABLEKS                       R10 R10 K21 ["StageSelectorButton"]
       83 CALL                             R9 1 1
       84 GETTABLEKS                       R10 R1 K22 ["UI"]
       86 GETTABLEKS                       R11 R10 K23 ["Pane"]
       88 GETTABLEKS                       R12 R1 K24 ["Util"]
       90 GETTABLEKS                       R12 R12 K25 ["LayoutOrderIterator"]
       92 GETTABLEKS                       R13 R1 K26 ["ContextServices"]
       94 GETTABLEKS                       R13 R13 K27 ["Localization"]
       96 GETTABLEKS                       R14 R1 K26 ["ContextServices"]
       98 GETTABLEKS                       R14 R14 K28 ["Stylizer"]
      100 DUPCLOSURE                       R15 K29 [PROTO_0]
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R7
      112 RETURN                           R15 1
