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
       27 DUPTABLE                         R8 K13 [{["BackgroundColor"], ["BorderColor3"], ["BorderSizePixel"] = 1, ["Size"], ["ZIndex"] = 3}]
       28 GETTABLEKS                       R9 R1 K6 ["BackgroundColor"]
       30 SETTABLEKS                       R9 R8 K6 ["BackgroundColor"]
       32 GETTABLEKS                       R9 R1 K14 ["BorderColor"]
       34 SETTABLEKS                       R9 R8 K7 ["BorderColor3"]
       36 GETIMPORT                        R9 K16 [UDim2.new]
       38 LOADN                            R10 0
       39 GETTABLEKS                       R11 R1 K17 ["Width"]
       41 LOADN                            R12 1
       42 LOADN                            R13 0
       43 CALL                             R9 4 1
       44 SETTABLEKS                       R9 R8 K10 ["Size"]
       46 DUPTABLE                         R9 K21 [{"Contents", "SettingsButton", "SettingsMenu"}]
       47 GETUPVAL                         R10 3
       48 GETTABLEKS                       R10 R10 K5 ["createElement"]
       50 GETUPVAL                         R11 6
       51 DUPTABLE                         R12 K24 [{"Layout", "VerticalAlignment"}]
       52 GETIMPORT                        R13 K28 [Enum.FillDirection.Vertical]
       54 SETTABLEKS                       R13 R12 K22 ["Layout"]
       56 GETIMPORT                        R13 K30 [Enum.VerticalAlignment.Top]
       58 SETTABLEKS                       R13 R12 K23 ["VerticalAlignment"]
       60 DUPTABLE                         R13 K36 [{"Back", "CheckBody", "CheckFace", "Test", "Publish"}]
       61 GETUPVAL                         R15 7
       62 CALL                             R15 0 1
       63 JUMPIFNOT                        R15 ; [+25]
       64 GETUPVAL                         R14 3
       65 GETTABLEKS                       R14 R14 K5 ["createElement"]
       67 GETUPVAL                         R15 8
       68 DUPTABLE                         R16 K43 [{["LayoutOrder"], ["Icon"], ["IsSelected"] = False, ["StageText"] = "Back", ["OnClick"]}]
       69 NAMECALL                         R17 R3 K44 ["getNextOrder"]
       71 CALL                             R17 1 1
       72 SETTABLEKS                       R17 R16 K37 ["LayoutOrder"]
       74 GETUPVAL                         R17 9
       75 GETTABLEKS                       R17 R17 K45 ["Enums"]
       77 GETTABLEKS                       R17 R17 K46 ["IconName"]
       79 GETTABLEKS                       R17 R17 K47 ["ArrowCurlToLeft"]
       81 SETTABLEKS                       R17 R16 K38 ["Icon"]
       83 GETTABLEKS                       R17 R0 K48 ["onBack"]
       85 SETTABLEKS                       R17 R16 K42 ["OnClick"]
       87 CALL                             R14 2 1
       88 JUMP                             ; [+1]
       89 LOADNIL                          R14
       90 SETTABLEKS                       R14 R13 K31 ["Back"]
       92 GETUPVAL                         R14 3
       93 GETTABLEKS                       R14 R14 K5 ["createElement"]
       95 GETUPVAL                         R15 8
       96 DUPTABLE                         R16 K51 [{["LayoutOrder"], ["Icon"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_body.png", ["IsSelected"] = False, ["StageText"] = "CheckBody", ["Enabled"] = False}]
       97 NAMECALL                         R17 R3 K44 ["getNextOrder"]
       99 CALL                             R17 1 1
      100 SETTABLEKS                       R17 R16 K37 ["LayoutOrder"]
      102 CALL                             R14 2 1
      103 SETTABLEKS                       R14 R13 K32 ["CheckBody"]
      105 GETUPVAL                         R14 3
      106 GETTABLEKS                       R14 R14 K5 ["createElement"]
      108 GETUPVAL                         R15 8
      109 DUPTABLE                         R16 K53 [{["LayoutOrder"], ["Icon"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/check_face.png", ["IsSelected"] = False, ["StageText"] = "CheckFace", ["Enabled"] = False}]
      110 NAMECALL                         R17 R3 K44 ["getNextOrder"]
      112 CALL                             R17 1 1
      113 SETTABLEKS                       R17 R16 K37 ["LayoutOrder"]
      115 CALL                             R14 2 1
      116 SETTABLEKS                       R14 R13 K33 ["CheckFace"]
      118 GETUPVAL                         R14 3
      119 GETTABLEKS                       R14 R14 K5 ["createElement"]
      121 GETUPVAL                         R15 8
      122 DUPTABLE                         R16 K55 [{["LayoutOrder"], ["Icon"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/test.png", ["IsSelected"] = False, ["StageText"] = "Test", ["Enabled"] = False}]
      123 NAMECALL                         R17 R3 K44 ["getNextOrder"]
      125 CALL                             R17 1 1
      126 SETTABLEKS                       R17 R16 K37 ["LayoutOrder"]
      128 CALL                             R14 2 1
      129 SETTABLEKS                       R14 R13 K34 ["Test"]
      131 GETUPVAL                         R14 3
      132 GETTABLEKS                       R14 R14 K5 ["createElement"]
      134 GETUPVAL                         R15 8
      135 DUPTABLE                         R16 K58 [{["LayoutOrder"], ["Icon"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/publish.png", ["IsSelected"] = False, ["StageText"] = "Publish", ["Tooltip"], ["Enabled"] = False}]
      136 NAMECALL                         R17 R3 K44 ["getNextOrder"]
      138 CALL                             R17 1 1
      139 SETTABLEKS                       R17 R16 K37 ["LayoutOrder"]
      141 GETTABLEKS                       R18 R4 K59 ["canUploadBundles"]
      143 JUMPIFEQKNIL                     R18 ; [+33]
      145 GETTABLEKS                       R18 R4 K59 ["canUploadBundles"]
      147 GETTABLEKS                       R18 R18 K60 ["type"]
      149 JUMPIFNOTEQKS                    R18 K61 ["notAllowed"] ; [+27]
      151 GETTABLEKS                       R18 R4 K59 ["canUploadBundles"]
      153 GETTABLEKS                       R18 R18 K62 ["denyReason"]
      155 JUMPIFEQKS                       R18 K63 ["MissingPremiumSubscriptionTier"] ; [+7]
      157 GETTABLEKS                       R18 R4 K59 ["canUploadBundles"]
      159 GETTABLEKS                       R18 R18 K62 ["denyReason"]
      161 JUMPIFNOTEQKS                    R18 K64 ["MissingIdVerification"] ; [+15]
      163 LOADK                            R19 K0 ["StageSelector"]
      164 LOADK                            R21 K65 ["Publish_Deny_%*"]
      165 GETTABLEKS                       R23 R4 K59 ["canUploadBundles"]
      167 GETTABLEKS                       R23 R23 K62 ["denyReason"]
      169 NAMECALL                         R21 R21 K66 ["format"]
      171 CALL                             R21 2 1
      172 MOVE                             R20 R21
      173 NAMECALL                         R17 R2 K67 ["getText"]
      175 CALL                             R17 3 1
      176 JUMP                             ; [+1]
      177 LOADNIL                          R17
      178 SETTABLEKS                       R17 R16 K57 ["Tooltip"]
      180 CALL                             R14 2 1
      181 SETTABLEKS                       R14 R13 K35 ["Publish"]
      183 CALL                             R10 3 1
      184 SETTABLEKS                       R10 R9 K18 ["Contents"]
      186 GETUPVAL                         R10 3
      187 GETTABLEKS                       R10 R10 K5 ["createElement"]
      189 GETUPVAL                         R11 8
      190 DUPTABLE                         R12 K72 [{["Icon"] = "rbxassetid://6663675885", ["IsSelected"] = False, ["StageText"] = "Settings", ["AnchorPoint"], ["Position"], ["OnClick"]}]
      191 GETIMPORT                        R13 K74 [Vector2.new]
      193 LOADN                            R14 0
      194 LOADN                            R15 1
      195 CALL                             R13 2 1
      196 SETTABLEKS                       R13 R12 K70 ["AnchorPoint"]
      198 GETIMPORT                        R13 K76 [UDim2.fromScale]
      200 LOADN                            R14 0
      201 LOADN                            R15 1
      202 CALL                             R13 2 1
      203 SETTABLEKS                       R13 R12 K71 ["Position"]
      205 GETTABLEKS                       R13 R5 K77 ["enable"]
      207 SETTABLEKS                       R13 R12 K42 ["OnClick"]
      209 CALL                             R10 2 1
      210 SETTABLEKS                       R10 R9 K19 ["SettingsButton"]
      212 GETTABLEKS                       R10 R5 K78 ["enabled"]
      214 JUMPIFNOT                        R10 ; [+10]
      215 GETUPVAL                         R10 3
      216 GETTABLEKS                       R10 R10 K5 ["createElement"]
      218 GETUPVAL                         R11 10
      219 DUPTABLE                         R12 K81 [{["type"] = "autoSetup", ["close"]}]
      220 GETTABLEKS                       R13 R5 K82 ["disable"]
      222 SETTABLEKS                       R13 R12 K80 ["close"]
      224 CALL                             R10 2 1
      225 SETTABLEKS                       R10 R9 K20 ["SettingsMenu"]
      227 CALL                             R6 3 -1
      228 RETURN                           R6 -1

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
