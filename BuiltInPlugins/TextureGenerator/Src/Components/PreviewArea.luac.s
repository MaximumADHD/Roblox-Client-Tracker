PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Size", "LayoutOrder"}]
        5 GETTABLEKS                       R4 R0 K1 ["Size"]
        7 SETTABLEKS                       R4 R3 K1 ["Size"]
        9 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
       11 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       13 DUPTABLE                         R4 K8 [{"BackButton", "RerollButton", "SaveButton", "DEPRECATED_SaveButton"}]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K0 ["createElement"]
       17 GETUPVAL                         R6 2
       18 DUPTABLE                         R7 K13 [{["LayoutOrder"] = 1, ["Size"], ["OnClick"], ["Style"] = "Round"}]
       19 GETIMPORT                        R8 K16 [UDim2.fromOffset]
       21 LOADN                            R9 32
       22 LOADN                            R10 32
       23 CALL                             R8 2 1
       24 SETTABLEKS                       R8 R7 K1 ["Size"]
       26 GETTABLEKS                       R8 R0 K17 ["OnBackButtonClick"]
       28 SETTABLEKS                       R8 R7 K10 ["OnClick"]
       30 DUPTABLE                         R8 K19 [{"Icon"}]
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R9 R9 K0 ["createElement"]
       34 GETUPVAL                         R10 3
       35 DUPTABLE                         R11 K25 [{["AnchorPoint"], ["Image"] = "rbxasset://textures/StudioSharedUI/Undo.png", ["Position"], ["Size"], ["Style"] = "Colored"}]
       36 GETIMPORT                        R12 K28 [Vector2.new]
       38 LOADK                            R13 K29 [0.5]
       39 LOADK                            R14 K29 [0.5]
       40 CALL                             R12 2 1
       41 SETTABLEKS                       R12 R11 K20 ["AnchorPoint"]
       43 GETIMPORT                        R12 K31 [UDim2.fromScale]
       45 LOADK                            R13 K29 [0.5]
       46 LOADK                            R14 K29 [0.5]
       47 CALL                             R12 2 1
       48 SETTABLEKS                       R12 R11 K23 ["Position"]
       50 GETIMPORT                        R12 K16 [UDim2.fromOffset]
       52 LOADN                            R13 16
       53 LOADN                            R14 16
       54 CALL                             R12 2 1
       55 SETTABLEKS                       R12 R11 K1 ["Size"]
       57 CALL                             R9 2 1
       58 SETTABLEKS                       R9 R8 K18 ["Icon"]
       60 CALL                             R5 3 1
       61 SETTABLEKS                       R5 R4 K4 ["BackButton"]
       63 GETUPVAL                         R6 4
       64 CALL                             R6 0 1
       65 JUMPIFNOT                        R6 ; [+68]
       66 GETUPVAL                         R5 0
       67 GETTABLEKS                       R5 R5 K0 ["createElement"]
       69 GETUPVAL                         R6 5
       70 DUPTABLE                         R7 K38 [{["LayoutOrder"] = 2, ["AnchorPoint"], ["Disabled"], ["LeftIcon"], ["Size"], ["Position"], ["Style"] = "Primary", ["StyleModifier"], ["TooltipText"], ["OnClick"]}]
       71 GETIMPORT                        R8 K28 [Vector2.new]
       73 LOADN                            R9 1
       74 LOADK                            R10 K29 [0.5]
       75 CALL                             R8 2 1
       76 SETTABLEKS                       R8 R7 K20 ["AnchorPoint"]
       78 GETTABLEKS                       R9 R0 K39 ["Enabled"]
       80 NOT                              R8 R9
       81 SETTABLEKS                       R8 R7 K33 ["Disabled"]
       83 GETTABLEKS                       R8 R0 K11 ["Style"]
       85 GETTABLEKS                       R8 R8 K40 ["RerollIcon"]
       87 SETTABLEKS                       R8 R7 K34 ["LeftIcon"]
       89 GETIMPORT                        R8 K16 [UDim2.fromOffset]
       91 LOADN                            R9 32
       92 LOADN                            R10 32
       93 CALL                             R8 2 1
       94 SETTABLEKS                       R8 R7 K1 ["Size"]
       96 GETIMPORT                        R8 K41 [UDim2.new]
       98 LOADN                            R9 1
       99 GETTABLEKS                       R12 R0 K11 ["Style"]
      101 GETTABLEKS                       R12 R12 K43 ["GenerateButtonSize"]
      103 GETTABLEKS                       R12 R12 K44 ["X"]
      105 GETTABLEKS                       R12 R12 K45 ["Offset"]
      107 MINUS                            R11 R12
      108 SUBK                             R10 R11 K42 [5]
      109 LOADK                            R11 K29 [0.5]
      110 LOADN                            R12 0
      111 CALL                             R8 4 1
      112 SETTABLEKS                       R8 R7 K23 ["Position"]
      114 GETTABLEKS                       R9 R0 K39 ["Enabled"]
      116 JUMPIF                           R9 ; [+4]
      117 GETUPVAL                         R8 6
      118 GETTABLEKS                       R8 R8 K33 ["Disabled"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R8
      122 SETTABLEKS                       R8 R7 K36 ["StyleModifier"]
      124 GETTABLEKS                       R8 R0 K46 ["RerollTooltipText"]
      126 SETTABLEKS                       R8 R7 K37 ["TooltipText"]
      128 GETTABLEKS                       R8 R0 K47 ["OnRerollButtonClick"]
      130 SETTABLEKS                       R8 R7 K10 ["OnClick"]
      132 CALL                             R5 2 1
      133 JUMP                             ; [+1]
      134 LOADNIL                          R5
      135 SETTABLEKS                       R5 R4 K5 ["RerollButton"]
      137 GETUPVAL                         R6 4
      138 CALL                             R6 0 1
      139 JUMPIFNOT                        R6 ; [+60]
      140 GETUPVAL                         R5 0
      141 GETTABLEKS                       R5 R5 K0 ["createElement"]
      143 GETUPVAL                         R6 5
      144 DUPTABLE                         R7 K50 [{["LayoutOrder"] = 3, ["AnchorPoint"], ["Disabled"], ["Position"], ["Size"], ["Style"], ["StyleModifier"], ["Text"], ["TooltipText"], ["OnClick"]}]
      145 GETIMPORT                        R8 K28 [Vector2.new]
      147 LOADN                            R9 1
      148 LOADK                            R10 K29 [0.5]
      149 CALL                             R8 2 1
      150 SETTABLEKS                       R8 R7 K20 ["AnchorPoint"]
      152 GETTABLEKS                       R9 R0 K39 ["Enabled"]
      154 NOT                              R8 R9
      155 SETTABLEKS                       R8 R7 K33 ["Disabled"]
      157 GETIMPORT                        R8 K31 [UDim2.fromScale]
      159 LOADN                            R9 1
      160 LOADK                            R10 K29 [0.5]
      161 CALL                             R8 2 1
      162 SETTABLEKS                       R8 R7 K23 ["Position"]
      164 GETTABLEKS                       R8 R0 K11 ["Style"]
      166 GETTABLEKS                       R8 R8 K43 ["GenerateButtonSize"]
      168 SETTABLEKS                       R8 R7 K1 ["Size"]
      170 GETTABLEKS                       R8 R0 K11 ["Style"]
      172 GETTABLEKS                       R8 R8 K51 ["GenerateButtonStyle"]
      174 SETTABLEKS                       R8 R7 K11 ["Style"]
      176 GETTABLEKS                       R9 R0 K39 ["Enabled"]
      178 JUMPIF                           R9 ; [+4]
      179 GETUPVAL                         R8 6
      180 GETTABLEKS                       R8 R8 K33 ["Disabled"]
      182 JUMP                             ; [+1]
      183 LOADNIL                          R8
      184 SETTABLEKS                       R8 R7 K36 ["StyleModifier"]
      186 GETTABLEKS                       R8 R0 K52 ["GenerateButtonText"]
      188 SETTABLEKS                       R8 R7 K49 ["Text"]
      190 GETTABLEKS                       R8 R0 K53 ["QuotaTooltipText"]
      192 SETTABLEKS                       R8 R7 K37 ["TooltipText"]
      194 GETTABLEKS                       R8 R0 K54 ["OnGenerateButtonClick"]
      196 SETTABLEKS                       R8 R7 K10 ["OnClick"]
      198 CALL                             R5 2 1
      199 JUMP                             ; [+1]
      200 LOADNIL                          R5
      201 SETTABLEKS                       R5 R4 K6 ["SaveButton"]
      203 GETUPVAL                         R6 4
      204 CALL                             R6 0 1
      205 JUMPIF                           R6 ; [+68]
      206 GETUPVAL                         R5 0
      207 GETTABLEKS                       R5 R5 K0 ["createElement"]
      209 GETUPVAL                         R6 2
      210 DUPTABLE                         R7 K55 [{["LayoutOrder"] = 3, ["AnchorPoint"], ["OnClick"], ["Position"], ["Size"], ["Style"], ["StyleModifier"], ["Text"]}]
      211 GETIMPORT                        R8 K28 [Vector2.new]
      213 LOADN                            R9 1
      214 LOADK                            R10 K29 [0.5]
      215 CALL                             R8 2 1
      216 SETTABLEKS                       R8 R7 K20 ["AnchorPoint"]
      218 GETTABLEKS                       R8 R0 K54 ["OnGenerateButtonClick"]
      220 SETTABLEKS                       R8 R7 K10 ["OnClick"]
      222 GETIMPORT                        R8 K31 [UDim2.fromScale]
      224 LOADN                            R9 1
      225 LOADK                            R10 K29 [0.5]
      226 CALL                             R8 2 1
      227 SETTABLEKS                       R8 R7 K23 ["Position"]
      229 GETTABLEKS                       R8 R0 K11 ["Style"]
      231 GETTABLEKS                       R8 R8 K43 ["GenerateButtonSize"]
      233 SETTABLEKS                       R8 R7 K1 ["Size"]
      235 GETTABLEKS                       R8 R0 K11 ["Style"]
      237 GETTABLEKS                       R8 R8 K51 ["GenerateButtonStyle"]
      239 SETTABLEKS                       R8 R7 K11 ["Style"]
      241 GETTABLEKS                       R9 R0 K39 ["Enabled"]
      243 JUMPIF                           R9 ; [+4]
      244 GETUPVAL                         R8 6
      245 GETTABLEKS                       R8 R8 K33 ["Disabled"]
      247 JUMP                             ; [+1]
      248 LOADNIL                          R8
      249 SETTABLEKS                       R8 R7 K36 ["StyleModifier"]
      251 GETTABLEKS                       R8 R0 K52 ["GenerateButtonText"]
      253 SETTABLEKS                       R8 R7 K49 ["Text"]
      255 DUPTABLE                         R8 K57 [{"QuotaTooltip"}]
      256 GETUPVAL                         R9 0
      257 GETTABLEKS                       R9 R9 K0 ["createElement"]
      259 GETUPVAL                         R10 7
      260 DUPTABLE                         R11 K59 [{"Text", "TextXAlignment"}]
      261 GETTABLEKS                       R12 R0 K53 ["QuotaTooltipText"]
      263 SETTABLEKS                       R12 R11 K49 ["Text"]
      265 GETIMPORT                        R12 K62 [Enum.TextXAlignment.Left]
      267 SETTABLEKS                       R12 R11 K58 ["TextXAlignment"]
      269 CALL                             R9 2 1
      270 SETTABLEKS                       R9 R8 K56 ["QuotaTooltip"]
      272 CALL                             R5 3 1
      273 JUMP                             ; [+1]
      274 LOADNIL                          R5
      275 SETTABLEKS                       R5 R4 K7 ["DEPRECATED_SaveButton"]
      277 CALL                             R1 3 -1
      278 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K2 ["ThresholdTime"]
        6 ORK                              R1 R2 K1 [180]
        7 GETIMPORT                        R3 K5 [os.clock]
        9 CALL                             R3 0 1
       10 GETTABLEKS                       R4 R0 K6 ["startTime"]
       12 SUB                              R2 R3 R4
       13 JUMPIFNOTLT                      R1 R2 ; [+37]
       15 GETUPVAL                         R3 2
       16 NAMECALL                         R3 R3 K7 ["Disconnect"]
       18 CALL                             R3 1 0
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K8 ["addError"]
       22 GETUPVAL                         R4 4
       23 LOADK                            R5 K9 ["Timeout"]
       24 GETUPVAL                         R6 5
       25 LOADK                            R8 K10 ["PreviewArea"]
       26 LOADK                            R9 K11 ["TimeoutTitle"]
       27 NAMECALL                         R6 R6 K12 ["getText"]
       29 CALL                             R6 3 1
       30 GETUPVAL                         R7 5
       31 LOADK                            R9 K10 ["PreviewArea"]
       32 LOADK                            R10 K13 ["TimeoutDescription"]
       33 NAMECALL                         R7 R7 K12 ["getText"]
       35 CALL                             R7 3 1
       36 LOADK                            R8 K14 ["error"]
       37 CALL                             R3 5 0
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R3 R3 K15 ["removePreview"]
       41 GETTABLEKS                       R4 R0 K16 ["uuid"]
       43 CALL                             R3 1 0
       44 GETUPVAL                         R3 6
       45 GETTABLEKS                       R3 R3 K17 ["cancelGenerationRequest"]
       47 GETTABLEKS                       R4 R0 K16 ["uuid"]
       49 CALL                             R3 1 0
       50 RETURN                           R0 0
       51 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 GETUPVAL                         R1 4
        5 GETTABLEKS                       R1 R1 K0 ["RenderStepped"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U2
       15 NAMECALL                         R1 R1 K1 ["Connect"]
       17 CALL                             R1 2 1
       18 SETUPVAL                         R1 3
       19 GETUPVAL                         R1 9
       20 GETUPVAL                         R2 3
       21 SETTABLEKS                       R2 R1 K2 ["current"]
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PreviewData"]
        3 GETTABLEKS                       R0 R0 K1 ["meshParts"]
        5 JUMPIFNOT                        R0 ; [+55]
        6 GETIMPORT                        R1 K4 [Instance.new]
        8 LOADK                            R2 K5 ["Model"]
        9 CALL                             R1 1 1
       10 MOVE                             R2 R0
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 GETUPVAL                         R7 1
       15 MOVE                             R8 R6
       16 CALL                             R7 1 1
       17 JUMPIFNOT                        R7 ; [+40]
       18 GETUPVAL                         R8 2
       19 CALL                             R8 0 1
       20 JUMPIFNOT                        R8 ; [+35]
       21 LOADK                            R8 K6 [""]
       22 SETTABLEKS                       R8 R7 K7 ["TextureID"]
       24 GETIMPORT                        R8 K9 [Color3.new]
       26 LOADN                            R9 163
       27 LOADN                            R10 162
       28 LOADN                            R11 165
       29 CALL                             R8 3 1
       30 SETTABLEKS                       R8 R7 K10 ["Color"]
       32 GETIMPORT                        R8 K12 [BrickColor.new]
       34 LOADK                            R9 K13 ["Medium stone grey"]
       35 CALL                             R8 1 1
       36 SETTABLEKS                       R8 R7 K11 ["BrickColor"]
       38 GETIMPORT                        R8 K17 [Enum.Material.Plastic]
       40 SETTABLEKS                       R8 R7 K15 ["Material"]
       42 NAMECALL                         R8 R7 K18 ["GetChildren"]
       44 CALL                             R8 1 3
       45 FORGPREP                         R8
       46 LOADK                            R15 K19 ["SurfaceAppearance"]
       47 NAMECALL                         R13 R12 K20 ["IsA"]
       49 CALL                             R13 2 1
       50 JUMPIFNOT                        R13 ; [+3]
       51 NAMECALL                         R13 R12 K21 ["Destroy"]
       53 CALL                             R13 1 0
       54 FORGLOOP                         R8 2 ; [-9]
       56 SETTABLEKS                       R1 R7 K22 ["Parent"]
       58 FORGLOOP                         R2 2 ; [-45]
       60 RETURN                           R1 1
       61 LOADNIL                          R1
       62 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PreviewData"]
        3 GETTABLEKS                       R0 R0 K1 ["rotation"]
        5 GETIMPORT                        R2 K4 [CFrame.fromEulerAnglesYXZ]
        7 GETTABLEKS                       R5 R0 K5 ["X"]
        9 FASTCALL1                        MATH_RAD R5 ; [+2]
       10 GETIMPORT                        R4 K8 [math.rad]
       12 CALL                             R4 1 1
       13 MINUS                            R3 R4
       14 GETTABLEKS                       R6 R0 K9 ["Y"]
       16 FASTCALL1                        MATH_RAD R6 ; [+2]
       17 GETIMPORT                        R5 K8 [math.rad]
       19 CALL                             R5 1 1
       20 MINUS                            R4 R5
       21 GETTABLEKS                       R7 R0 K10 ["Z"]
       23 FASTCALL1                        MATH_RAD R7 ; [+2]
       24 GETIMPORT                        R6 K8 [math.rad]
       26 CALL                             R6 1 1
       27 MINUS                            R5 R6
       28 CALL                             R2 3 1
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R3 R3 K11 ["INITIAL_FOCUS_DIRECTION"]
       32 MUL                              R1 R2 R3
       33 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["PreviewData"]
        5 GETTABLEKS                       R1 R1 K3 ["allPreviews"]
        7 CALL                             R0 1 3
        8 FORGPREP_INEXT                   R0
        9 GETTABLEKS                       R5 R4 K4 ["previewAngle"]
       11 JUMPIFNOTEQKS                    R5 K5 ["PreviewFront"] ; [+5]
       13 GETUPVAL                         R5 1
       14 LOADN                            R6 0
       15 SETTABLE                         R6 R5 R3
       16 JUMP                             ; [+14]
       17 GETIMPORT                        R5 K8 [string.gsub]
       19 GETTABLEKS                       R6 R4 K4 ["previewAngle"]
       21 LOADK                            R7 K9 ["Preview"]
       22 LOADK                            R8 K10 [""]
       23 CALL                             R5 3 1
       24 GETUPVAL                         R6 1
       25 FASTCALL1                        TONUMBER R5 ; [+3]
       26 MOVE                             R8 R5
       27 GETIMPORT                        R7 K12 [tonumber]
       29 CALL                             R7 1 1
       30 SETTABLE                         R7 R6 R3
       31 FORGLOOP                         R0 2 [inext] ; [-23]
       33 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 LOADN                            R2 0
        5 JUMPIFNOTLT                      R2 R1 ; [+5]
        7 JUMPIFNOT                        R0 ; [+3]
        8 NAMECALL                         R1 R0 K1 ["Disconnect"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["current"]
        4 GETTABLE                         R0 R1 R2
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K0 ["current"]
        9 GETTABLE                         R1 R2 R3
       10 JUMPIFNOT                        R0 ; [+1]
       11 JUMPIF                           R1 ; [+1]
       12 RETURN                           R0 0
       13 JUMPIFNOTEQKN                    R0 K1 [270] ; [+4]
       15 JUMPIFNOTEQKN                    R1 K2 [0] ; [+2]
       17 LOADN                            R1 360
       18 JUMPIFNOTEQKN                    R1 K1 [270] ; [+4]
       20 JUMPIFNOTEQKN                    R0 K2 [0] ; [+2]
       22 LOADN                            R0 360
       23 GETIMPORT                        R3 K4 [tick]
       25 CALL                             R3 0 1
       26 GETUPVAL                         R4 3
       27 SUB                              R2 R3 R4
       28 DIVK                             R3 R2 K5 [0.2]
       29 SUB                              R6 R1 R0
       30 MUL                              R5 R6 R3
       31 ADD                              R4 R0 R5
       32 GETUPVAL                         R5 4
       33 GETUPVAL                         R6 5
       34 GETUPVAL                         R7 6
       35 GETIMPORT                        R8 K8 [CFrame.fromEulerAnglesYXZ]
       37 GETUPVAL                         R11 7
       38 GETTABLEKS                       R11 R11 K9 ["X"]
       40 FASTCALL1                        MATH_RAD R11 ; [+2]
       41 GETIMPORT                        R10 K12 [math.rad]
       43 CALL                             R10 1 1
       44 MINUS                            R9 R10
       45 GETUPVAL                         R12 7
       46 GETTABLEKS                       R12 R12 K13 ["Y"]
       48 ADD                              R11 R4 R12
       49 FASTCALL1                        MATH_RAD R11 ; [+2]
       50 GETIMPORT                        R10 K12 [math.rad]
       52 CALL                             R10 1 1
       53 GETUPVAL                         R13 7
       54 GETTABLEKS                       R13 R13 K14 ["Z"]
       56 FASTCALL1                        MATH_RAD R13 ; [+2]
       57 GETIMPORT                        R12 K12 [math.rad]
       59 CALL                             R12 1 1
       60 MINUS                            R11 R12
       61 CALL                             R8 3 -1
       62 CALL                             R6 -1 1
       63 SETTABLEKS                       R6 R5 K6 ["CFrame"]
       65 LOADK                            R5 K5 [0.2]
       66 JUMPIFNOTLE                      R5 R2 ; [+9]
       68 GETUPVAL                         R5 8
       69 NAMECALL                         R5 R5 K15 ["Disconnect"]
       71 CALL                             R5 1 0
       72 GETUPVAL                         R5 9
       73 LOADB                            R6 0
       74 CALL                             R5 1 0
       75 RETURN                           R0 0
       76 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PreviewData"]
        3 GETTABLEKS                       R0 R0 K1 ["rotation"]
        5 GETIMPORT                        R1 K3 [tick]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 1
        9 LOADB                            R3 1
       10 CALL                             R2 1 0
       11 LOADNIL                          R2
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K4 ["RenderStepped"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          UPVAL U7
       22 CAPTURE                          UPVAL U8
       23 CAPTURE                          VAL R0
       24 CAPTURE                          REF R2
       25 CAPTURE                          UPVAL U1
       26 NAMECALL                         R3 R3 K5 ["Connect"]
       28 CALL                             R3 2 1
       29 MOVE                             R2 R3
       30 CLOSEUPVALS                      R2
       31 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R3 2
        7 MOD                              R2 R0 R3
        8 ADDK                             R1 R2 K0 [1]
        9 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 SUBK                             R1 R0 K0 [1]
        7 JUMPIFNOTEQKN                    R1 K1 [0] ; [+3]
        9 GETUPVAL                         R2 2
       10 RETURN                           R2 1
       11 MOVE                             R2 R1
       12 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["status"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["STATUS"]
        5 GETTABLEKS                       R3 R3 K2 ["COMPLETED"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_15:
        0 LOADN                            R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["generations"]
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 GETTABLEKS                       R6 R5 K1 ["status"]
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R7 R7 K2 ["STATUS"]
       12 GETTABLEKS                       R7 R7 K3 ["PENDING"]
       14 JUMPIFNOTEQ                      R6 R7 ; [+2]
       16 ADDK                             R0 R0 K4 [1]
       17 FORGLOOP                         R1 2 ; [-11]
       19 GETUPVAL                         R1 2
       20 CALL                             R1 0 1
       21 JUMPIFNOTLE                      R1 R0 ; [+3]
       23 LOADB                            R1 1
       24 RETURN                           R1 1
       25 LOADB                            R1 0
       26 RETURN                           R1 1

PROTO_16:
        0 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 GETUPVAL                         R2 2
        4 NOT                              R1 R2
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PreviewData"]
        3 GETTABLEKS                       R0 R0 K1 ["previewUrlCount"]
        5 JUMPIFNOTEQKN                    R0 K2 [4] ; [+9]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["PreviewData"]
       10 GETTABLEKS                       R0 R0 K3 ["imageFailed"]
       12 LOADN                            R1 2
       13 JUMPIFLE                         R1 R0 ; [+16]
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K0 ["PreviewData"]
       18 GETTABLEKS                       R0 R0 K1 ["previewUrlCount"]
       20 JUMPIFNOTEQKN                    R0 K4 [3] ; [+40]
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K0 ["PreviewData"]
       25 GETTABLEKS                       R0 R0 K3 ["imageFailed"]
       27 LOADN                            R1 1
       28 JUMPIFNOTLE                      R1 R0 ; [+32]
       30 GETUPVAL                         R0 1
       31 GETTABLEKS                       R0 R0 K5 ["addError"]
       33 GETUPVAL                         R1 2
       34 GETUPVAL                         R2 3
       35 GETUPVAL                         R3 4
       36 CALL                             R1 2 1
       37 LOADK                            R2 K6 ["ImageFailed"]
       38 GETUPVAL                         R3 5
       39 LOADK                            R5 K7 ["EntryArea"]
       40 LOADK                            R6 K8 ["ErrorAlertTitle"]
       41 NAMECALL                         R3 R3 K9 ["getText"]
       43 CALL                             R3 3 1
       44 GETUPVAL                         R4 5
       45 LOADK                            R6 K10 ["PreviewArea"]
       46 LOADK                            R7 K6 ["ImageFailed"]
       47 NAMECALL                         R4 R4 K9 ["getText"]
       49 CALL                             R4 3 1
       50 LOADK                            R5 K11 ["error"]
       51 CALL                             R0 5 0
       52 GETUPVAL                         R0 1
       53 GETTABLEKS                       R0 R0 K12 ["removePreview"]
       55 GETUPVAL                         R1 0
       56 GETTABLEKS                       R1 R1 K0 ["PreviewData"]
       58 GETTABLEKS                       R1 R1 K13 ["uuid"]
       60 CALL                             R0 1 0
       61 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removePreview"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["PreviewData"]
        6 GETTABLEKS                       R1 R1 K2 ["uuid"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K3 ["cancelGenerationRequest"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K1 ["PreviewData"]
       15 GETTABLEKS                       R1 R1 K2 ["uuid"]
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 3
       19 CALL                             R0 0 1
       20 JUMPIFNOT                        R0 ; [+6]
       21 GETUPVAL                         R0 4
       22 JUMPIFNOT                        R0 ; [+4]
       23 GETUPVAL                         R0 4
       24 NAMECALL                         R0 R0 K4 ["Disconnect"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createPartGroup"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["previewTexture"]
        9 MOVE                             R2 R0
       10 GETUPVAL                         R3 2
       11 GETUPVAL                         R4 3
       12 CALL                             R1 3 -1
       13 RETURN                           R1 -1
       14 GETUPVAL                         R1 4
       15 LOADK                            R3 K2 ["PromptEntry"]
       16 LOADK                            R4 K3 ["PartGroupError"]
       17 NAMECALL                         R1 R1 K4 ["getText"]
       19 CALL                             R1 3 -1
       20 RETURN                           R1 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["removePreview"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["PreviewData"]
        9 GETTABLEKS                       R1 R1 K2 ["uuid"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 GETTABLEKS                       R0 R0 K3 ["promptText"]
       15 GETUPVAL                         R1 4
       16 GETUPVAL                         R2 3
       17 CALL                             R1 1 1
       18 LOADNIL                          R2
       19 SETTABLEKS                       R2 R1 K4 ["seed"]
       21 GETUPVAL                         R2 5
       22 GETUPVAL                         R3 6
       23 GETUPVAL                         R4 7
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K5 ["rotation"]
       28 NAMECALL                         R3 R3 K6 ["ToEulerAnglesYXZ"]
       30 CALL                             R3 1 3
       31 FASTCALL1                        MATH_DEG R3 ; [+3]
       32 MOVE                             R8 R3
       33 GETIMPORT                        R7 K9 [math.deg]
       35 CALL                             R7 1 1
       36 FASTCALL1                        MATH_DEG R4 ; [+3]
       37 MOVE                             R9 R4
       38 GETIMPORT                        R8 K9 [math.deg]
       40 CALL                             R8 1 1
       41 FASTCALL1                        MATH_DEG R5 ; [+3]
       42 MOVE                             R10 R5
       43 GETIMPORT                        R9 K9 [math.deg]
       45 CALL                             R9 1 1
       46 FASTCALL                         VECTOR ; [+2]
       47 GETIMPORT                        R6 K12 [Vector3.new]
       49 CALL                             R6 3 1
       50 GETIMPORT                        R7 K14 [pcall]
       52 NEWCLOSURE                       R8 P0
       53 CAPTURE                          UPVAL U7
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R1
       57 CAPTURE                          UPVAL U8
       58 CALL                             R7 1 2
       59 GETUPVAL                         R9 0
       60 LOADB                            R10 1
       61 CALL                             R9 1 0
       62 JUMPIFNOT                        R7 ; [+7]
       63 FASTCALL1                        TYPEOF R8 ; [+3]
       64 MOVE                             R10 R8
       65 GETIMPORT                        R9 K16 [typeof]
       67 CALL                             R9 1 1
       68 JUMPIFNOTEQKS                    R9 K17 ["string"] ; [+16]
       70 GETUPVAL                         R9 1
       71 GETTABLEKS                       R9 R9 K18 ["addError"]
       73 MOVE                             R10 R2
       74 MOVE                             R11 R8
       75 GETUPVAL                         R12 8
       76 LOADK                            R14 K19 ["EntryArea"]
       77 LOADK                            R15 K20 ["ErrorAlertTitle"]
       78 NAMECALL                         R12 R12 K21 ["getText"]
       80 CALL                             R12 3 1
       81 MOVE                             R13 R8
       82 LOADK                            R14 K22 ["error"]
       83 CALL                             R9 5 0
       84 RETURN                           R0 0
       85 GETUPVAL                         R9 6
       86 SETTABLEKS                       R9 R8 K23 ["meshParts"]
       88 SETTABLEKS                       R6 R8 K5 ["rotation"]
       90 GETUPVAL                         R9 3
       91 GETTABLEKS                       R9 R9 K24 ["smartUVUnwrap"]
       93 SETTABLEKS                       R9 R8 K24 ["smartUVUnwrap"]
       95 GETUPVAL                         R9 3
       96 GETTABLEKS                       R9 R9 K25 ["promptMasking"]
       98 SETTABLEKS                       R9 R8 K25 ["promptMasking"]
      100 GETUPVAL                         R9 1
      101 GETTABLEKS                       R9 R9 K26 ["addOrUpdatePreview"]
      103 MOVE                             R10 R8
      104 CALL                             R9 1 0
      105 DUPTABLE                         R9 K28 [{"hash", "uuid"}]
      106 SETTABLEKS                       R2 R9 K27 ["hash"]
      108 GETTABLEKS                       R10 R8 K2 ["uuid"]
      110 SETTABLEKS                       R10 R9 K2 ["uuid"]
      112 GETUPVAL                         R10 1
      113 GETTABLEKS                       R10 R10 K29 ["addOrUpdateModelToPreview"]
      115 MOVE                             R11 R9
      116 CALL                             R10 1 0
      117 GETUPVAL                         R10 9
      118 LOADK                            R12 K30 ["GeneratedPreview"]
      119 GETUPVAL                         R13 6
      120 MOVE                             R14 R0
      121 GETUPVAL                         R15 3
      122 GETTABLEKS                       R15 R15 K4 ["seed"]
      124 MOVE                             R16 R6
      125 GETUPVAL                         R17 3
      126 GETTABLEKS                       R17 R17 K24 ["smartUVUnwrap"]
      128 GETUPVAL                         R18 3
      129 GETTABLEKS                       R18 R18 K25 ["promptMasking"]
      131 GETTABLEKS                       R19 R8 K2 ["uuid"]
      133 NAMECALL                         R10 R10 K31 ["report"]
      135 CALL                             R10 9 0
      136 GETUPVAL                         R10 10
      137 GETUPVAL                         R11 11
      138 GETUPVAL                         R12 1
      139 GETUPVAL                         R13 7
      140 CALL                             R10 3 0
      141 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["generateTexture"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["PreviewData"]
        6 GETTABLEKS                       R1 R1 K2 ["uuid"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETIMPORT                        R0 K1 [pcall]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CALL                             R0 1 2
        9 FASTCALL1                        TYPEOF R1 ; [+3]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K3 [typeof]
       13 CALL                             R2 1 1
       14 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+6]
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K5 ["MAX_GENERATIONS_MESSAGE"]
       19 JUMPIFEQ                         R1 R2 ; [+10]
       21 GETUPVAL                         R2 4
       22 GETTABLEKS                       R2 R2 K6 ["removePreview"]
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K7 ["PreviewData"]
       27 GETTABLEKS                       R3 R3 K8 ["uuid"]
       29 CALL                             R2 1 0
       30 GETUPVAL                         R2 0
       31 LOADB                            R3 1
       32 CALL                             R2 1 0
       33 LOADNIL                          R2
       34 JUMPIFNOT                        R0 ; [+7]
       35 MOVE                             R2 R1
       36 GETIMPORT                        R3 K10 [tick]
       38 CALL                             R3 0 1
       39 SETTABLEKS                       R3 R2 K11 ["startTime"]
       41 JUMP                             ; [+23]
       42 DUPTABLE                         R3 K14 [{"uuid", "status", "errors"}]
       43 GETUPVAL                         R4 2
       44 GETTABLEKS                       R4 R4 K7 ["PreviewData"]
       46 GETTABLEKS                       R4 R4 K8 ["uuid"]
       48 SETTABLEKS                       R4 R3 K8 ["uuid"]
       50 GETUPVAL                         R4 3
       51 GETTABLEKS                       R4 R4 K15 ["STATUS"]
       53 GETTABLEKS                       R4 R4 K16 ["FAILED"]
       55 SETTABLEKS                       R4 R3 K12 ["status"]
       57 NEWTABLE                         R4 0 1
       59 MOVE                             R5 R1
       60 SETLIST                          R4 R5 1 [1]
       62 SETTABLEKS                       R4 R3 K13 ["errors"]
       64 MOVE                             R2 R3
       65 GETUPVAL                         R4 2
       66 GETTABLEKS                       R4 R4 K7 ["PreviewData"]
       68 GETTABLEKS                       R4 R4 K17 ["allPreviews"]
       70 GETTABLEN                        R3 R4 1
       71 SETTABLEKS                       R3 R2 K18 ["previewImage"]
       73 GETUPVAL                         R3 5
       74 SETTABLEKS                       R3 R2 K19 ["meshParts"]
       76 GETUPVAL                         R3 1
       77 GETTABLEKS                       R3 R3 K20 ["createPartGroup"]
       79 GETUPVAL                         R4 5
       80 CALL                             R3 1 1
       81 SETTABLEKS                       R3 R2 K21 ["partGroup"]
       83 GETUPVAL                         R3 2
       84 GETTABLEKS                       R3 R3 K7 ["PreviewData"]
       86 GETTABLEKS                       R3 R3 K22 ["rotation"]
       88 SETTABLEKS                       R3 R2 K22 ["rotation"]
       90 GETUPVAL                         R3 2
       91 GETTABLEKS                       R3 R3 K7 ["PreviewData"]
       93 GETTABLEKS                       R3 R3 K23 ["seed"]
       95 SETTABLEKS                       R3 R2 K23 ["seed"]
       97 GETUPVAL                         R3 2
       98 GETTABLEKS                       R3 R3 K7 ["PreviewData"]
      100 GETTABLEKS                       R3 R3 K24 ["prompt"]
      102 SETTABLEKS                       R3 R2 K24 ["prompt"]
      104 GETUPVAL                         R3 6
      105 GETTABLEKS                       R3 R3 K25 ["smartUVUnwrap"]
      107 SETTABLEKS                       R3 R2 K25 ["smartUVUnwrap"]
      109 GETUPVAL                         R3 6
      110 GETTABLEKS                       R3 R3 K26 ["promptMasking"]
      112 SETTABLEKS                       R3 R2 K26 ["promptMasking"]
      114 GETUPVAL                         R3 7
      115 GETUPVAL                         R4 5
      116 GETUPVAL                         R5 1
      117 CALL                             R3 2 1
      118 GETUPVAL                         R4 8
      119 GETTABLEKS                       R4 R4 K27 ["updateGeneration"]
      121 DUPTABLE                         R5 K30 [{"action", "uuid", "data"}]
      122 GETUPVAL                         R6 3
      123 GETTABLEKS                       R6 R6 K31 ["GENERATION_ACTIONS"]
      125 GETTABLEKS                       R6 R6 K32 ["UPDATE"]
      127 SETTABLEKS                       R6 R5 K28 ["action"]
      129 GETTABLEKS                       R6 R2 K8 ["uuid"]
      131 SETTABLEKS                       R6 R5 K8 ["uuid"]
      133 SETTABLEKS                       R2 R5 K29 ["data"]
      135 CALL                             R4 1 0
      136 GETUPVAL                         R4 8
      137 GETTABLEKS                       R4 R4 K33 ["updateModelToGenerations"]
      139 DUPTABLE                         R5 K35 [{"action", "hash", "uuid"}]
      140 GETUPVAL                         R6 3
      141 GETTABLEKS                       R6 R6 K31 ["GENERATION_ACTIONS"]
      143 GETTABLEKS                       R6 R6 K36 ["ADD"]
      145 SETTABLEKS                       R6 R5 K28 ["action"]
      147 SETTABLEKS                       R3 R5 K34 ["hash"]
      149 GETTABLEKS                       R6 R2 K8 ["uuid"]
      151 SETTABLEKS                       R6 R5 K8 ["uuid"]
      153 CALL                             R4 1 0
      154 GETUPVAL                         R4 9
      155 LOADK                            R6 K37 ["GeneratedTexture"]
      156 GETUPVAL                         R7 2
      157 GETTABLEKS                       R7 R7 K7 ["PreviewData"]
      159 GETTABLEKS                       R7 R7 K38 ["serverId"]
      161 GETUPVAL                         R8 5
      162 GETTABLEKS                       R9 R2 K24 ["prompt"]
      164 GETTABLEKS                       R10 R2 K23 ["seed"]
      166 GETTABLEKS                       R11 R2 K22 ["rotation"]
      168 GETTABLEKS                       R12 R2 K25 ["smartUVUnwrap"]
      170 GETTABLEKS                       R13 R2 K26 ["promptMasking"]
      172 GETTABLEKS                       R14 R2 K8 ["uuid"]
      174 NAMECALL                         R4 R4 K39 ["report"]
      176 CALL                             R4 10 0
      177 GETUPVAL                         R4 10
      178 GETUPVAL                         R5 8
      179 GETUPVAL                         R6 4
      180 GETUPVAL                         R7 1
      181 CALL                             R4 3 0
      182 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+2]
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+2]
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K1 ["useContext"]
       13 GETUPVAL                         R5 4
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K1 ["useContext"]
       18 GETUPVAL                         R6 5
       19 CALL                             R5 1 1
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R6 R6 K1 ["useContext"]
       23 GETUPVAL                         R7 6
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 3
       26 GETTABLEKS                       R7 R7 K1 ["useContext"]
       28 GETUPVAL                         R8 7
       29 CALL                             R7 1 1
       30 LOADNIL                          R8
       31 GETUPVAL                         R9 3
       32 GETTABLEKS                       R9 R9 K2 ["useRef"]
       34 MOVE                             R10 R8
       35 CALL                             R9 1 1
       36 GETUPVAL                         R10 8
       37 CALL                             R10 0 1
       38 JUMPIFNOT                        R10 ; [+30]
       39 GETUPVAL                         R10 3
       40 GETTABLEKS                       R10 R10 K3 ["createRef"]
       42 GETTABLEKS                       R11 R0 K4 ["PreviewData"]
       44 CALL                             R10 1 1
       45 GETTABLEKS                       R11 R0 K4 ["PreviewData"]
       47 SETTABLEKS                       R11 R10 K5 ["current"]
       49 GETUPVAL                         R11 3
       50 GETTABLEKS                       R11 R11 K6 ["useEffect"]
       52 NEWCLOSURE                       R12 P0
       53 CAPTURE                          UPVAL U9
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R7
       56 CAPTURE                          REF R8
       57 CAPTURE                          UPVAL U10
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R9
       63 NEWTABLE                         R13 0 1
       65 MOVE                             R14 R3
       66 SETLIST                          R13 R14 1 [1]
       68 CALL                             R11 2 0
       69 LOADK                            R12 K7 ["PreviewArea"]
       70 LOADK                            R13 K8 ["SaveApply"]
       71 NAMECALL                         R10 R2 K9 ["getText"]
       73 CALL                             R10 3 1
       74 GETIMPORT                        R11 K12 [string.format]
       76 LOADK                            R14 K13 ["General"]
       77 LOADK                            R15 K14 ["QuotaTooltip"]
       78 NAMECALL                         R12 R2 K9 ["getText"]
       80 CALL                             R12 3 1
       81 GETTABLEKS                       R13 R4 K15 ["quota"]
       83 GETTABLEKS                       R14 R4 K16 ["total"]
       85 GETTABLEKS                       R15 R4 K16 ["total"]
       87 CALL                             R11 4 1
       88 LOADK                            R14 K7 ["PreviewArea"]
       89 LOADK                            R15 K17 ["Reroll"]
       90 NAMECALL                         R12 R2 K9 ["getText"]
       92 CALL                             R12 3 1
       93 GETTABLEKS                       R13 R0 K4 ["PreviewData"]
       95 GETTABLEKS                       R13 R13 K18 ["prompt"]
       97 GETUPVAL                         R14 3
       98 GETTABLEKS                       R14 R14 K19 ["useState"]
      100 LOADB                            R15 0
      101 CALL                             R14 1 2
      102 GETUPVAL                         R16 3
      103 GETTABLEKS                       R16 R16 K2 ["useRef"]
      105 GETIMPORT                        R17 K22 [Instance.new]
      107 LOADK                            R18 K23 ["Camera"]
      108 CALL                             R17 1 -1
      109 CALL                             R16 -1 1
      110 GETTABLEKS                       R17 R16 K5 ["current"]
      112 GETUPVAL                         R18 3
      113 GETTABLEKS                       R18 R18 K24 ["useMemo"]
      115 NEWCLOSURE                       R19 P1
      116 CAPTURE                          VAL R0
      117 CAPTURE                          UPVAL U11
      118 CAPTURE                          UPVAL U12
      119 NEWTABLE                         R20 0 1
      121 GETTABLEKS                       R21 R0 K4 ["PreviewData"]
      123 GETTABLEKS                       R21 R21 K25 ["meshParts"]
      125 SETLIST                          R20 R21 1 [1]
      127 CALL                             R18 2 1
      128 GETUPVAL                         R19 3
      129 GETTABLEKS                       R19 R19 K24 ["useMemo"]
      131 NEWCLOSURE                       R20 P2
      132 CAPTURE                          VAL R0
      133 CAPTURE                          UPVAL U13
      134 NEWTABLE                         R21 0 1
      136 GETTABLEKS                       R22 R0 K4 ["PreviewData"]
      138 GETTABLEKS                       R22 R22 K26 ["rotation"]
      140 SETLIST                          R21 R22 1 [1]
      142 CALL                             R19 2 1
      143 GETUPVAL                         R20 3
      144 GETTABLEKS                       R20 R20 K19 ["useState"]
      146 LOADN                            R21 1
      147 CALL                             R20 1 2
      148 GETUPVAL                         R22 3
      149 GETTABLEKS                       R22 R22 K19 ["useState"]
      151 LOADN                            R23 1
      152 CALL                             R22 1 2
      153 GETTABLEKS                       R25 R0 K4 ["PreviewData"]
      155 GETTABLEKS                       R25 R25 K27 ["allPreviews"]
      157 GETTABLE                         R24 R25 R22
      158 GETTABLEKS                       R26 R0 K4 ["PreviewData"]
      160 GETTABLEKS                       R26 R26 K27 ["allPreviews"]
      162 LENGTH                           R25 R26
      163 NEWTABLE                         R26 0 0
      165 GETUPVAL                         R27 12
      166 CALL                             R27 0 1
      167 JUMPIFNOT                        R27 ; [+16]
      168 GETUPVAL                         R27 3
      169 GETTABLEKS                       R27 R27 K6 ["useEffect"]
      171 NEWCLOSURE                       R28 P3
      172 CAPTURE                          VAL R0
      173 CAPTURE                          VAL R26
      174 NEWTABLE                         R29 0 2
      176 MOVE                             R30 R26
      177 GETTABLEKS                       R31 R0 K4 ["PreviewData"]
      179 GETTABLEKS                       R31 R31 K27 ["allPreviews"]
      181 SETLIST                          R29 R30 2 [1]
      183 CALL                             R27 2 0
      184 GETUPVAL                         R27 8
      185 CALL                             R27 0 1
      186 JUMPIFNOT                        R27 ; [+12]
      187 GETUPVAL                         R27 3
      188 GETTABLEKS                       R27 R27 K6 ["useEffect"]
      190 NEWCLOSURE                       R28 P4
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R25
      193 NEWTABLE                         R29 0 1
      195 MOVE                             R30 R25
      196 SETLIST                          R29 R30 1 [1]
      198 CALL                             R27 2 0
      199 GETUPVAL                         R27 3
      200 GETTABLEKS                       R27 R27 K2 ["useRef"]
      202 MOVE                             R28 R20
      203 CALL                             R27 1 1
      204 SETTABLEKS                       R20 R27 K5 ["current"]
      206 GETUPVAL                         R28 3
      207 GETTABLEKS                       R28 R28 K2 ["useRef"]
      209 MOVE                             R29 R22
      210 CALL                             R28 1 1
      211 SETTABLEKS                       R22 R28 K5 ["current"]
      213 GETUPVAL                         R29 3
      214 GETTABLEKS                       R29 R29 K28 ["useCallback"]
      216 NEWCLOSURE                       R30 P5
      217 CAPTURE                          VAL R0
      218 CAPTURE                          VAL R15
      219 CAPTURE                          UPVAL U10
      220 CAPTURE                          VAL R26
      221 CAPTURE                          VAL R27
      222 CAPTURE                          VAL R28
      223 CAPTURE                          VAL R17
      224 CAPTURE                          UPVAL U14
      225 CAPTURE                          VAL R18
      226 NEWTABLE                         R31 0 1
      228 MOVE                             R32 R26
      229 SETLIST                          R31 R32 1 [1]
      231 CALL                             R29 2 1
      232 GETUPVAL                         R30 3
      233 GETTABLEKS                       R30 R30 K28 ["useCallback"]
      235 NEWCLOSURE                       R31 P6
      236 CAPTURE                          VAL R23
      237 CAPTURE                          UPVAL U12
      238 CAPTURE                          VAL R21
      239 CAPTURE                          VAL R25
      240 NEWTABLE                         R32 0 1
      242 MOVE                             R33 R25
      243 SETLIST                          R32 R33 1 [1]
      245 CALL                             R30 2 1
      246 GETUPVAL                         R31 3
      247 GETTABLEKS                       R31 R31 K28 ["useCallback"]
      249 NEWCLOSURE                       R32 P7
      250 CAPTURE                          VAL R23
      251 CAPTURE                          UPVAL U12
      252 CAPTURE                          VAL R21
      253 CAPTURE                          VAL R25
      254 NEWTABLE                         R33 0 1
      256 MOVE                             R34 R25
      257 SETLIST                          R33 R34 1 [1]
      259 CALL                             R31 2 1
      260 GETUPVAL                         R32 3
      261 GETTABLEKS                       R32 R32 K6 ["useEffect"]
      263 NEWCLOSURE                       R33 P8
      264 CAPTURE                          VAL R23
      265 NEWTABLE                         R34 0 1
      267 GETTABLEKS                       R35 R0 K4 ["PreviewData"]
      269 GETTABLEKS                       R35 R35 K29 ["uuid"]
      271 SETLIST                          R34 R35 1 [1]
      273 CALL                             R32 2 0
      274 GETUPVAL                         R33 15
      275 GETTABLEKS                       R33 R33 K30 ["find"]
      277 GETTABLEKS                       R34 R0 K4 ["PreviewData"]
      279 GETTABLEKS                       R34 R34 K27 ["allPreviews"]
      281 DUPCLOSURE                       R35 K31 [PROTO_14]
      282 CAPTURE                          UPVAL U13
      283 CALL                             R33 2 1
      284 JUMPIFNOTEQKNIL                  R33 ; [+2]
      286 LOADB                            R32 0 +1
      287 LOADB                            R32 1
      288 LOADB                            R33 0
      289 JUMPIFEQKNIL                     R24 ; [+12]
      291 GETTABLEKS                       R34 R24 K32 ["status"]
      293 GETUPVAL                         R35 13
      294 GETTABLEKS                       R35 R35 K33 ["STATUS"]
      296 GETTABLEKS                       R35 R35 K34 ["COMPLETED"]
      298 JUMPIFEQ                         R34 R35 ; [+2]
      300 LOADB                            R33 0 +1
      301 LOADB                            R33 1
      302 GETUPVAL                         R34 3
      303 GETTABLEKS                       R34 R34 K24 ["useMemo"]
      305 NEWCLOSURE                       R35 P10
      306 CAPTURE                          VAL R4
      307 CAPTURE                          UPVAL U13
      308 CAPTURE                          UPVAL U16
      309 NEWTABLE                         R36 0 1
      311 GETTABLEKS                       R37 R4 K35 ["generations"]
      313 SETLIST                          R36 R37 1 [1]
      315 CALL                             R34 2 1
      316 LOADNIL                          R35
      317 LOADNIL                          R36
      318 GETTABLEKS                       R37 R0 K36 ["Enabled"]
      320 JUMPIFNOT                        R37 ; [+4]
      321 GETTABLEKS                       R35 R0 K36 ["Enabled"]
      323 DUPCLOSURE                       R36 K37 [PROTO_16]
      324 JUMP                             ; [+7]
      325 GETUPVAL                         R37 3
      326 GETTABLEKS                       R37 R37 K19 ["useState"]
      328 LOADB                            R38 0
      329 CALL                             R37 1 2
      330 MOVE                             R35 R37
      331 MOVE                             R36 R38
      332 GETUPVAL                         R37 3
      333 GETTABLEKS                       R37 R37 K6 ["useEffect"]
      335 NEWCLOSURE                       R38 P12
      336 CAPTURE                          REF R36
      337 CAPTURE                          VAL R32
      338 CAPTURE                          VAL R34
      339 NEWTABLE                         R39 0 2
      341 MOVE                             R40 R32
      342 MOVE                             R41 R34
      343 SETLIST                          R39 R40 2 [1]
      345 CALL                             R37 2 0
      346 GETUPVAL                         R37 3
      347 GETTABLEKS                       R37 R37 K6 ["useEffect"]
      349 NEWCLOSURE                       R38 P13
      350 CAPTURE                          VAL R0
      351 CAPTURE                          VAL R5
      352 CAPTURE                          UPVAL U9
      353 CAPTURE                          VAL R3
      354 CAPTURE                          VAL R7
      355 CAPTURE                          VAL R2
      356 NEWTABLE                         R39 0 2
      358 GETTABLEKS                       R40 R0 K4 ["PreviewData"]
      360 GETTABLEKS                       R40 R40 K38 ["imageFailed"]
      362 GETTABLEKS                       R41 R0 K4 ["PreviewData"]
      364 GETTABLEKS                       R41 R41 K39 ["previewUrlCount"]
      366 SETLIST                          R39 R40 2 [1]
      368 CALL                             R37 2 0
      369 GETUPVAL                         R37 3
      370 GETTABLEKS                       R37 R37 K28 ["useCallback"]
      372 NEWCLOSURE                       R38 P14
      373 CAPTURE                          VAL R5
      374 CAPTURE                          VAL R0
      375 CAPTURE                          VAL R7
      376 CAPTURE                          UPVAL U8
      377 CAPTURE                          REF R8
      378 NEWTABLE                         R39 0 3
      380 GETTABLEKS                       R40 R0 K4 ["PreviewData"]
      382 GETTABLEKS                       R40 R40 K29 ["uuid"]
      384 GETTABLEKS                       R41 R5 K40 ["removePreview"]
      386 MOVE                             R42 R8
      387 SETLIST                          R39 R40 3 [1]
      389 CALL                             R37 2 1
      390 GETUPVAL                         R38 3
      391 GETTABLEKS                       R38 R38 K28 ["useCallback"]
      393 NEWCLOSURE                       R39 P15
      394 CAPTURE                          REF R36
      395 CAPTURE                          VAL R5
      396 CAPTURE                          VAL R0
      397 CAPTURE                          VAL R6
      398 CAPTURE                          UPVAL U17
      399 CAPTURE                          UPVAL U9
      400 CAPTURE                          VAL R3
      401 CAPTURE                          VAL R7
      402 CAPTURE                          VAL R2
      403 CAPTURE                          VAL R1
      404 CAPTURE                          UPVAL U18
      405 CAPTURE                          VAL R4
      406 NEWTABLE                         R40 0 6
      408 MOVE                             R41 R35
      409 MOVE                             R42 R3
      410 GETTABLEKS                       R43 R5 K41 ["addOrUpdatePreview"]
      412 GETTABLEKS                       R44 R5 K42 ["addOrUpdateModelToPreview"]
      414 MOVE                             R45 R6
      415 MOVE                             R46 R7
      416 SETLIST                          R40 R41 6 [1]
      418 CALL                             R38 2 1
      419 GETUPVAL                         R39 3
      420 GETTABLEKS                       R39 R39 K28 ["useCallback"]
      422 NEWCLOSURE                       R40 P16
      423 CAPTURE                          REF R36
      424 CAPTURE                          VAL R7
      425 CAPTURE                          VAL R0
      426 CAPTURE                          UPVAL U13
      427 CAPTURE                          VAL R5
      428 CAPTURE                          VAL R3
      429 CAPTURE                          VAL R6
      430 CAPTURE                          UPVAL U9
      431 CAPTURE                          VAL R4
      432 CAPTURE                          VAL R1
      433 CAPTURE                          UPVAL U18
      434 NEWTABLE                         R41 0 7
      436 MOVE                             R42 R3
      437 GETTABLEKS                       R43 R4 K43 ["updateGeneration"]
      439 GETTABLEKS                       R44 R4 K44 ["updateModelToGenerations"]
      441 GETTABLEKS                       R45 R5 K40 ["removePreview"]
      443 GETTABLEKS                       R46 R6 K45 ["smartUVUnwrap"]
      445 GETTABLEKS                       R47 R0 K4 ["PreviewData"]
      447 MOVE                             R48 R7
      448 SETLIST                          R41 R42 7 [1]
      450 CALL                             R39 2 1
      451 GETUPVAL                         R40 19
      452 GETTABLEKS                       R40 R40 K21 ["new"]
      454 CALL                             R40 0 1
      455 GETUPVAL                         R41 20
      456 LOADK                            R43 K7 ["PreviewArea"]
      457 NAMECALL                         R41 R41 K0 ["use"]
      459 CALL                             R41 2 1
      460 LOADNIL                          R42
      461 GETUPVAL                         R43 12
      462 CALL                             R43 0 1
      463 JUMPIFNOT                        R43 ; [+5]
      464 MOVE                             R43 R33
      465 JUMPIFNOT                        R43 ; [+1]
      466 NOT                              R43 R14
      467 MOVE                             R42 R43
      468 JUMP                             ; [+1]
      469 MOVE                             R42 R33
      470 GETUPVAL                         R43 3
      471 GETTABLEKS                       R43 R43 K46 ["createElement"]
      473 GETUPVAL                         R44 21
      474 DUPTABLE                         R45 K56 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["VerticalAlignment"], ["LayoutOrder"], ["Padding"], ["Size"], ["Style"] = "Box"}]
      475 GETIMPORT                        R46 K59 [Enum.AutomaticSize.Y]
      477 SETTABLEKS                       R46 R45 K47 ["AutomaticSize"]
      479 GETIMPORT                        R46 K61 [Enum.HorizontalAlignment.Center]
      481 SETTABLEKS                       R46 R45 K48 ["HorizontalAlignment"]
      483 GETIMPORT                        R46 K64 [Enum.FillDirection.Vertical]
      485 SETTABLEKS                       R46 R45 K49 ["Layout"]
      487 GETIMPORT                        R46 K65 [Enum.VerticalAlignment.Center]
      489 SETTABLEKS                       R46 R45 K50 ["VerticalAlignment"]
      491 GETTABLEKS                       R46 R0 K51 ["LayoutOrder"]
      493 SETTABLEKS                       R46 R45 K51 ["LayoutOrder"]
      495 GETTABLEKS                       R46 R41 K52 ["Padding"]
      497 SETTABLEKS                       R46 R45 K52 ["Padding"]
      499 GETTABLEKS                       R46 R41 K53 ["Size"]
      501 SETTABLEKS                       R46 R45 K53 ["Size"]
      503 DUPTABLE                         R46 K69 [{"PreviewLabel", "Display", "PreviewActionArea"}]
      504 GETUPVAL                         R48 12
      505 CALL                             R48 0 1
      506 JUMPIF                           R48 ; [+34]
      507 GETUPVAL                         R47 3
      508 GETTABLEKS                       R47 R47 K46 ["createElement"]
      510 GETUPVAL                         R48 22
      511 DUPTABLE                         R49 K76 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["RichText"] = True, ["Size"], ["Text"], ["Style"], ["TextXAlignment"], ["TextYAlignment"]}]
      512 GETIMPORT                        R50 K78 [Enum.AutomaticSize.X]
      514 SETTABLEKS                       R50 R49 K47 ["AutomaticSize"]
      516 GETTABLEKS                       R50 R41 K79 ["PreviewLabelSize"]
      518 SETTABLEKS                       R50 R49 K53 ["Size"]
      520 LOADK                            R52 K13 ["General"]
      521 LOADK                            R53 K80 ["Preview"]
      522 NAMECALL                         R50 R2 K9 ["getText"]
      524 CALL                             R50 3 1
      525 SETTABLEKS                       R50 R49 K73 ["Text"]
      527 GETTABLEKS                       R50 R41 K81 ["PreviewLabelStyle"]
      529 SETTABLEKS                       R50 R49 K54 ["Style"]
      531 GETIMPORT                        R50 K83 [Enum.TextXAlignment.Left]
      533 SETTABLEKS                       R50 R49 K74 ["TextXAlignment"]
      535 GETIMPORT                        R50 K84 [Enum.TextYAlignment.Center]
      537 SETTABLEKS                       R50 R49 K75 ["TextYAlignment"]
      539 CALL                             R47 2 1
      540 JUMP                             ; [+1]
      541 LOADNIL                          R47
      542 SETTABLEKS                       R47 R46 K66 ["PreviewLabel"]
      544 GETUPVAL                         R47 3
      545 GETTABLEKS                       R47 R47 K46 ["createElement"]
      547 GETUPVAL                         R48 21
      548 DUPTABLE                         R49 K88 [{["AnchorPoint"], ["LayoutOrder"] = 2, ["Position"], ["Size"]}]
      549 GETIMPORT                        R50 K90 [Vector2.new]
      551 LOADK                            R51 K91 [0.5]
      552 LOADK                            R52 K91 [0.5]
      553 CALL                             R50 2 1
      554 SETTABLEKS                       R50 R49 K85 ["AnchorPoint"]
      556 GETIMPORT                        R50 K94 [UDim2.fromScale]
      558 LOADK                            R51 K91 [0.5]
      559 LOADK                            R52 K91 [0.5]
      560 CALL                             R50 2 1
      561 SETTABLEKS                       R50 R49 K87 ["Position"]
      563 GETTABLEKS                       R50 R41 K53 ["Size"]
      565 SETTABLEKS                       R50 R49 K53 ["Size"]
      567 DUPTABLE                         R50 K98 [{"UIPadding", "ImageContainer", "Controls"}]
      568 GETUPVAL                         R51 3
      569 GETTABLEKS                       R51 R51 K46 ["createElement"]
      571 LOADK                            R52 K95 ["UIPadding"]
      572 DUPTABLE                         R53 K101 [{"PaddingLeft", "PaddingRight"}]
      573 GETIMPORT                        R54 K103 [UDim.new]
      575 LOADN                            R55 0
      576 LOADN                            R56 8
      577 CALL                             R54 2 1
      578 SETTABLEKS                       R54 R53 K99 ["PaddingLeft"]
      580 GETIMPORT                        R54 K103 [UDim.new]
      582 LOADN                            R55 0
      583 LOADN                            R56 8
      584 CALL                             R54 2 1
      585 SETTABLEKS                       R54 R53 K100 ["PaddingRight"]
      587 CALL                             R51 2 1
      588 SETTABLEKS                       R51 R50 K95 ["UIPadding"]
      590 GETUPVAL                         R51 3
      591 GETTABLEKS                       R51 R51 K46 ["createElement"]
      593 GETUPVAL                         R52 21
      594 DUPTABLE                         R53 K106 [{"BackgroundColor3", "AnchorPoint", "Position", "ZIndex"}]
      595 GETIMPORT                        R54 K108 [Color3.new]
      597 LOADN                            R55 0
      598 LOADN                            R56 0
      599 LOADN                            R57 0
      600 CALL                             R54 3 1
      601 SETTABLEKS                       R54 R53 K104 ["BackgroundColor3"]
      603 GETIMPORT                        R54 K90 [Vector2.new]
      605 LOADK                            R55 K91 [0.5]
      606 LOADK                            R56 K91 [0.5]
      607 CALL                             R54 2 1
      608 SETTABLEKS                       R54 R53 K85 ["AnchorPoint"]
      610 GETIMPORT                        R54 K94 [UDim2.fromScale]
      612 LOADK                            R55 K91 [0.5]
      613 LOADK                            R56 K91 [0.5]
      614 CALL                             R54 2 1
      615 SETTABLEKS                       R54 R53 K87 ["Position"]
      617 NAMECALL                         R54 R40 K109 ["getNextOrder"]
      619 CALL                             R54 1 1
      620 SETTABLEKS                       R54 R53 K105 ["ZIndex"]
      622 DUPTABLE                         R54 K114 [{"Corner", "Image", "AssetRenderModel", "LoadingIndicator"}]
      623 GETUPVAL                         R55 3
      624 GETTABLEKS                       R55 R55 K46 ["createElement"]
      626 LOADK                            R56 K115 ["UICorner"]
      627 CALL                             R55 1 1
      628 SETTABLEKS                       R55 R54 K110 ["Corner"]
      630 JUMPIFNOT                        R42 ; [+47]
      631 GETUPVAL                         R55 3
      632 GETTABLEKS                       R55 R55 K46 ["createElement"]
      634 GETUPVAL                         R56 23
      635 DUPTABLE                         R57 K116 [{"AnchorPoint", "Position", "Size", "Image"}]
      636 GETIMPORT                        R58 K90 [Vector2.new]
      638 LOADK                            R59 K91 [0.5]
      639 LOADK                            R60 K91 [0.5]
      640 CALL                             R58 2 1
      641 SETTABLEKS                       R58 R57 K85 ["AnchorPoint"]
      643 GETIMPORT                        R58 K94 [UDim2.fromScale]
      645 LOADK                            R59 K91 [0.5]
      646 LOADK                            R60 K91 [0.5]
      647 CALL                             R58 2 1
      648 SETTABLEKS                       R58 R57 K87 ["Position"]
      650 GETUPVAL                         R59 12
      651 CALL                             R59 0 1
      652 JUMPIFNOT                        R59 ; [+8]
      653 GETIMPORT                        R58 K117 [UDim2.new]
      655 LOADN                            R59 1
      656 LOADN                            R60 0
      657 LOADN                            R61 1
      658 LOADN                            R62 -32
      659 CALL                             R58 4 1
      660 JUMP                             ; [+1]
      661 LOADNIL                          R58
      662 SETTABLEKS                       R58 R57 K53 ["Size"]
      664 GETTABLEKS                       R58 R24 K118 ["previewId"]
      666 SETTABLEKS                       R58 R57 K111 ["Image"]
      668 DUPTABLE                         R58 K120 [{"UIAspectRatioConstraint"}]
      669 GETUPVAL                         R59 3
      670 GETTABLEKS                       R59 R59 K46 ["createElement"]
      672 LOADK                            R60 K119 ["UIAspectRatioConstraint"]
      673 CALL                             R59 1 1
      674 SETTABLEKS                       R59 R58 K119 ["UIAspectRatioConstraint"]
      676 CALL                             R55 3 1
      677 JUMP                             ; [+1]
      678 LOADNIL                          R55
      679 SETTABLEKS                       R55 R54 K111 ["Image"]
      681 JUMPIFNOT                        R33 ; [+4]
      682 GETUPVAL                         R56 12
      683 CALL                             R56 0 1
      684 JUMPIFNOT                        R56 ; [+69]
      685 JUMPIFNOT                        R14 ; [+68]
      686 GETUPVAL                         R55 3
      687 GETTABLEKS                       R55 R55 K46 ["createElement"]
      689 GETUPVAL                         R56 24
      690 DUPTABLE                         R57 K131 [{["BackgroundColor3"], ["Camera"], ["DisablePan"], ["DisableZoom"], ["LayoutOrder"], ["Model"], ["ShouldMuteModelSounds"] = True, ["Size"], ["Static"] = True, ["FocusDirection"], ["LightColor"], ["LightDirection"] = {1, 1, 1}, ["EnableSky"] = True}]
      691 GETTABLEKS                       R58 R41 K132 ["BackgroundColor"]
      693 SETTABLEKS                       R58 R57 K104 ["BackgroundColor3"]
      695 GETUPVAL                         R59 12
      696 CALL                             R59 0 1
      697 JUMPIFNOT                        R59 ; [+2]
      698 MOVE                             R58 R17
      699 JUMP                             ; [+1]
      700 LOADNIL                          R58
      701 SETTABLEKS                       R58 R57 K23 ["Camera"]
      703 GETUPVAL                         R59 12
      704 CALL                             R59 0 1
      705 JUMPIFNOT                        R59 ; [+2]
      706 LOADNIL                          R58
      707 JUMP                             ; [+2]
      708 GETTABLEKS                       R58 R41 K121 ["DisablePan"]
      710 SETTABLEKS                       R58 R57 K121 ["DisablePan"]
      712 GETUPVAL                         R59 12
      713 CALL                             R59 0 1
      714 JUMPIFNOT                        R59 ; [+2]
      715 LOADNIL                          R58
      716 JUMP                             ; [+2]
      717 GETTABLEKS                       R58 R41 K122 ["DisableZoom"]
      719 SETTABLEKS                       R58 R57 K122 ["DisableZoom"]
      721 NAMECALL                         R58 R40 K109 ["getNextOrder"]
      723 CALL                             R58 1 1
      724 SETTABLEKS                       R58 R57 K51 ["LayoutOrder"]
      726 SETTABLEKS                       R18 R57 K123 ["Model"]
      728 GETUPVAL                         R59 12
      729 CALL                             R59 0 1
      730 JUMPIFNOT                        R59 ; [+8]
      731 GETIMPORT                        R58 K117 [UDim2.new]
      733 LOADN                            R59 1
      734 LOADN                            R60 0
      735 LOADN                            R61 1
      736 LOADN                            R62 -32
      737 CALL                             R58 4 1
      738 JUMP                             ; [+1]
      739 LOADNIL                          R58
      740 SETTABLEKS                       R58 R57 K53 ["Size"]
      742 SETTABLEKS                       R19 R57 K126 ["FocusDirection"]
      744 GETIMPORT                        R58 K108 [Color3.new]
      746 LOADN                            R59 0
      747 LOADN                            R60 0
      748 LOADN                            R61 0
      749 CALL                             R58 3 1
      750 SETTABLEKS                       R58 R57 K127 ["LightColor"]
      752 CALL                             R55 2 1
      753 JUMP                             ; [+1]
      754 LOADNIL                          R55
      755 SETTABLEKS                       R55 R54 K112 ["AssetRenderModel"]
      757 JUMPIF                           R33 ; [+21]
      758 GETUPVAL                         R55 3
      759 GETTABLEKS                       R55 R55 K46 ["createElement"]
      761 GETUPVAL                         R56 25
      762 DUPTABLE                         R57 K133 [{"AnchorPoint", "Position"}]
      763 GETIMPORT                        R58 K90 [Vector2.new]
      765 LOADK                            R59 K91 [0.5]
      766 LOADK                            R60 K91 [0.5]
      767 CALL                             R58 2 1
      768 SETTABLEKS                       R58 R57 K85 ["AnchorPoint"]
      770 GETIMPORT                        R58 K94 [UDim2.fromScale]
      772 LOADK                            R59 K91 [0.5]
      773 LOADK                            R60 K91 [0.5]
      774 CALL                             R58 2 1
      775 SETTABLEKS                       R58 R57 K87 ["Position"]
      777 CALL                             R55 2 1
      778 JUMP                             ; [+1]
      779 LOADNIL                          R55
      780 SETTABLEKS                       R55 R54 K113 ["LoadingIndicator"]
      782 CALL                             R51 3 1
      783 SETTABLEKS                       R51 R50 K96 ["ImageContainer"]
      785 MOVE                             R51 R32
      786 JUMPIFNOT                        R51 ; [+153]
      787 GETUPVAL                         R51 3
      788 GETTABLEKS                       R51 R51 K46 ["createElement"]
      790 GETUPVAL                         R52 21
      791 DUPTABLE                         R53 K134 [{"Size", "AnchorPoint", "Layout", "Position", "ZIndex"}]
      792 GETUPVAL                         R55 12
      793 CALL                             R55 0 1
      794 JUMPIFNOT                        R55 ; [+8]
      795 GETIMPORT                        R54 K117 [UDim2.new]
      797 LOADN                            R55 0
      798 LOADN                            R56 50
      799 LOADN                            R57 0
      800 LOADN                            R58 32
      801 CALL                             R54 4 1
      802 JUMP                             ; [+1]
      803 LOADNIL                          R54
      804 SETTABLEKS                       R54 R53 K53 ["Size"]
      806 GETUPVAL                         R55 12
      807 CALL                             R55 0 1
      808 JUMPIFNOT                        R55 ; [+6]
      809 GETIMPORT                        R54 K90 [Vector2.new]
      811 LOADK                            R55 K91 [0.5]
      812 LOADN                            R56 1
      813 CALL                             R54 2 1
      814 JUMP                             ; [+1]
      815 LOADNIL                          R54
      816 SETTABLEKS                       R54 R53 K85 ["AnchorPoint"]
      818 GETUPVAL                         R55 12
      819 CALL                             R55 0 1
      820 JUMPIFNOT                        R55 ; [+3]
      821 GETIMPORT                        R54 K136 [Enum.FillDirection.Horizontal]
      823 JUMP                             ; [+1]
      824 LOADNIL                          R54
      825 SETTABLEKS                       R54 R53 K49 ["Layout"]
      827 GETUPVAL                         R55 12
      828 CALL                             R55 0 1
      829 JUMPIFNOT                        R55 ; [+6]
      830 GETIMPORT                        R54 K94 [UDim2.fromScale]
      832 LOADK                            R55 K91 [0.5]
      833 LOADN                            R56 1
      834 CALL                             R54 2 1
      835 JUMP                             ; [+1]
      836 LOADNIL                          R54
      837 SETTABLEKS                       R54 R53 K87 ["Position"]
      839 NAMECALL                         R54 R40 K109 ["getNextOrder"]
      841 CALL                             R54 1 1
      842 SETTABLEKS                       R54 R53 K105 ["ZIndex"]
      844 DUPTABLE                         R54 K139 [{"PreviousButton", "NextButton"}]
      845 GETUPVAL                         R55 3
      846 GETTABLEKS                       R55 R55 K46 ["createElement"]
      848 GETUPVAL                         R56 26
      849 DUPTABLE                         R57 K143 [{["AnchorPoint"], ["LayoutOrder"], ["LeftIcon"], ["Position"], ["Style"] = "PreviewAreaImageRotateButton", ["OnClick"]}]
      850 GETIMPORT                        R58 K90 [Vector2.new]
      852 LOADN                            R59 0
      853 LOADK                            R60 K91 [0.5]
      854 CALL                             R58 2 1
      855 SETTABLEKS                       R58 R57 K85 ["AnchorPoint"]
      857 GETUPVAL                         R59 12
      858 CALL                             R59 0 1
      859 JUMPIFNOT                        R59 ; [+2]
      860 LOADN                            R58 1
      861 JUMP                             ; [+1]
      862 LOADNIL                          R58
      863 SETTABLEKS                       R58 R57 K51 ["LayoutOrder"]
      865 GETTABLEKS                       R58 R41 K140 ["LeftIcon"]
      867 SETTABLEKS                       R58 R57 K140 ["LeftIcon"]
      869 GETUPVAL                         R59 12
      870 CALL                             R59 0 1
      871 JUMPIFNOT                        R59 ; [+2]
      872 LOADNIL                          R58
      873 JUMP                             ; [+7]
      874 GETIMPORT                        R58 K117 [UDim2.new]
      876 LOADN                            R59 0
      877 LOADN                            R60 8
      878 LOADK                            R61 K91 [0.5]
      879 LOADN                            R62 0
      880 CALL                             R58 4 1
      881 SETTABLEKS                       R58 R57 K87 ["Position"]
      883 NEWCLOSURE                       R58 P17
      884 CAPTURE                          VAL R31
      885 CAPTURE                          UPVAL U12
      886 CAPTURE                          VAL R29
      887 SETTABLEKS                       R58 R57 K142 ["OnClick"]
      889 CALL                             R55 2 1
      890 SETTABLEKS                       R55 R54 K137 ["PreviousButton"]
      892 GETUPVAL                         R55 3
      893 GETTABLEKS                       R55 R55 K46 ["createElement"]
      895 GETUPVAL                         R56 26
      896 DUPTABLE                         R57 K143 [{["AnchorPoint"], ["LayoutOrder"], ["LeftIcon"], ["Position"], ["Style"] = "PreviewAreaImageRotateButton", ["OnClick"]}]
      897 GETIMPORT                        R58 K90 [Vector2.new]
      899 LOADN                            R59 1
      900 LOADK                            R60 K91 [0.5]
      901 CALL                             R58 2 1
      902 SETTABLEKS                       R58 R57 K85 ["AnchorPoint"]
      904 GETUPVAL                         R59 12
      905 CALL                             R59 0 1
      906 JUMPIFNOT                        R59 ; [+2]
      907 LOADN                            R58 2
      908 JUMP                             ; [+1]
      909 LOADNIL                          R58
      910 SETTABLEKS                       R58 R57 K51 ["LayoutOrder"]
      912 GETTABLEKS                       R58 R41 K144 ["RightIcon"]
      914 SETTABLEKS                       R58 R57 K140 ["LeftIcon"]
      916 GETUPVAL                         R59 12
      917 CALL                             R59 0 1
      918 JUMPIFNOT                        R59 ; [+2]
      919 LOADNIL                          R58
      920 JUMP                             ; [+7]
      921 GETIMPORT                        R58 K117 [UDim2.new]
      923 LOADN                            R59 1
      924 LOADN                            R60 -8
      925 LOADK                            R61 K91 [0.5]
      926 LOADN                            R62 0
      927 CALL                             R58 4 1
      928 SETTABLEKS                       R58 R57 K87 ["Position"]
      930 NEWCLOSURE                       R58 P18
      931 CAPTURE                          VAL R30
      932 CAPTURE                          UPVAL U12
      933 CAPTURE                          VAL R29
      934 SETTABLEKS                       R58 R57 K142 ["OnClick"]
      936 CALL                             R55 2 1
      937 SETTABLEKS                       R55 R54 K138 ["NextButton"]
      939 CALL                             R51 3 1
      940 SETTABLEKS                       R51 R50 K97 ["Controls"]
      942 CALL                             R47 3 1
      943 SETTABLEKS                       R47 R46 K67 ["Display"]
      945 GETUPVAL                         R47 3
      946 GETTABLEKS                       R47 R47 K46 ["createElement"]
      948 GETUPVAL                         R48 21
      949 DUPTABLE                         R49 K147 [{["LayoutOrder"] = 4, ["Padding"] = 10, ["Size"]}]
      950 GETIMPORT                        R50 K117 [UDim2.new]
      952 LOADN                            R51 1
      953 LOADN                            R52 0
      954 LOADN                            R53 0
      955 LOADN                            R54 140
      956 CALL                             R50 4 1
      957 SETTABLEKS                       R50 R49 K53 ["Size"]
      959 DUPTABLE                         R50 K149 [{"TextInput"}]
      960 GETUPVAL                         R51 3
      961 GETTABLEKS                       R51 R51 K46 ["createElement"]
      963 GETUPVAL                         R52 27
      964 DUPTABLE                         R53 K154 [{["BottomComponent"], ["BottomComponentProps"], ["Disabled"] = True, ["MultiLine"] = True, ["Text"], ["Size"]}]
      965 GETUPVAL                         R54 28
      966 SETTABLEKS                       R54 R53 K150 ["BottomComponent"]
      968 DUPTABLE                         R54 K161 [{"Enabled", "OnBackButtonClick", "GenerateButtonText", "OnGenerateButtonClick", "OnRerollButtonClick", "RerollTooltipText", "QuotaTooltipText", "Size", "Style"}]
      969 SETTABLEKS                       R35 R54 K36 ["Enabled"]
      971 SETTABLEKS                       R37 R54 K155 ["OnBackButtonClick"]
      973 SETTABLEKS                       R10 R54 K156 ["GenerateButtonText"]
      975 SETTABLEKS                       R39 R54 K157 ["OnGenerateButtonClick"]
      977 SETTABLEKS                       R38 R54 K158 ["OnRerollButtonClick"]
      979 SETTABLEKS                       R12 R54 K159 ["RerollTooltipText"]
      981 SETTABLEKS                       R11 R54 K160 ["QuotaTooltipText"]
      983 GETIMPORT                        R55 K117 [UDim2.new]
      985 LOADN                            R56 1
      986 LOADN                            R57 0
      987 LOADN                            R58 0
      988 LOADN                            R59 32
      989 CALL                             R55 4 1
      990 SETTABLEKS                       R55 R54 K53 ["Size"]
      992 SETTABLEKS                       R41 R54 K54 ["Style"]
      994 SETTABLEKS                       R54 R53 K151 ["BottomComponentProps"]
      996 SETTABLEKS                       R13 R53 K73 ["Text"]
      998 GETIMPORT                        R54 K117 [UDim2.new]
     1000 LOADN                            R55 1
     1001 LOADN                            R56 0
     1002 LOADN                            R57 0
     1003 LOADN                            R58 120
     1004 CALL                             R54 4 1
     1005 SETTABLEKS                       R54 R53 K53 ["Size"]
     1007 CALL                             R51 2 1
     1008 SETTABLEKS                       R51 R50 K148 ["TextInput"]
     1010 CALL                             R47 3 1
     1011 SETTABLEKS                       R47 R46 K68 ["PreviewActionArea"]
     1013 CALL                             R43 3 -1
     1014 CLOSEUPVALS                      R8
     1015 RETURN                           R43 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["RunService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["Framework"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K14 ["ContextServices"]
       36 GETTABLEKS                       R6 R5 K15 ["withContext"]
       38 GETTABLEKS                       R7 R5 K16 ["Analytics"]
       40 GETTABLEKS                       R8 R5 K17 ["Localization"]
       42 GETTABLEKS                       R9 R5 K18 ["Stylizer"]
       44 GETIMPORT                        R10 K9 [require]
       46 GETTABLEKS                       R11 R0 K19 ["Src"]
       48 GETTABLEKS                       R11 R11 K20 ["Components"]
       50 GETTABLEKS                       R11 R11 K21 ["TextureGenerationServiceContext"]
       52 CALL                             R10 1 1
       53 GETTABLEKS                       R11 R4 K22 ["UI"]
       55 GETTABLEKS                       R12 R11 K23 ["AssetRenderModel"]
       57 GETTABLEKS                       R13 R11 K24 ["Button"]
       59 GETTABLEKS                       R14 R11 K25 ["IconButton"]
       61 GETTABLEKS                       R15 R11 K26 ["Image"]
       63 GETTABLEKS                       R16 R11 K27 ["LoadingIndicator"]
       65 GETTABLEKS                       R17 R11 K28 ["Pane"]
       67 GETTABLEKS                       R18 R11 K29 ["TextInput"]
       69 GETTABLEKS                       R19 R11 K30 ["TextLabel"]
       71 GETTABLEKS                       R20 R11 K31 ["Tooltip"]
       73 GETTABLEKS                       R21 R0 K19 ["Src"]
       75 GETTABLEKS                       R21 R21 K32 ["Hooks"]
       77 GETIMPORT                        R22 K9 [require]
       79 GETTABLEKS                       R23 R21 K33 ["useSelectedMeshParts"]
       81 CALL                             R22 1 1
       82 GETTABLEKS                       R23 R4 K34 ["Style"]
       84 GETTABLEKS                       R23 R23 K18 ["Stylizer"]
       86 GETTABLEKS                       R24 R4 K35 ["Util"]
       88 GETTABLEKS                       R24 R24 K36 ["StyleModifier"]
       90 GETTABLEKS                       R25 R4 K35 ["Util"]
       92 GETTABLEKS                       R25 R25 K37 ["LayoutOrderIterator"]
       94 GETTABLEKS                       R26 R0 K19 ["Src"]
       96 GETTABLEKS                       R26 R26 K35 ["Util"]
       98 GETIMPORT                        R27 K9 [require]
      100 GETTABLEKS                       R28 R26 K38 ["centerCameraOnModelForRotation"]
      102 CALL                             R27 1 1
      103 GETIMPORT                        R28 K9 [require]
      105 GETTABLEKS                       R29 R26 K39 ["cloneIgnoreArchivable"]
      107 CALL                             R28 1 1
      108 GETIMPORT                        R29 K9 [require]
      110 GETTABLEKS                       R30 R26 K40 ["Constants"]
      112 CALL                             R29 1 1
      113 GETIMPORT                        R30 K9 [require]
      115 GETTABLEKS                       R31 R26 K41 ["createHashFromMeshParts"]
      117 CALL                             R30 1 1
      118 GETIMPORT                        R31 K9 [require]
      120 GETTABLEKS                       R32 R26 K42 ["createOptionsFromContext"]
      122 CALL                             R31 1 1
      123 GETIMPORT                        R32 K9 [require]
      125 GETTABLEKS                       R33 R26 K43 ["fetchAndSetQuotas"]
      127 CALL                             R32 1 1
      128 GETIMPORT                        R33 K9 [require]
      130 GETTABLEKS                       R34 R26 K44 ["GenerationsContext"]
      132 CALL                             R33 1 1
      133 GETIMPORT                        R34 K9 [require]
      135 GETTABLEKS                       R35 R26 K45 ["PreviewsContext"]
      137 CALL                             R34 1 1
      138 GETIMPORT                        R35 K9 [require]
      140 GETTABLEKS                       R36 R26 K46 ["OptionsContext"]
      142 CALL                             R35 1 1
      143 GETIMPORT                        R36 K9 [require]
      145 GETTABLEKS                       R37 R0 K19 ["Src"]
      147 GETTABLEKS                       R37 R37 K47 ["Flags"]
      149 GETTABLEKS                       R37 R37 K48 ["getFIntTextureGeneratorMaxConcurrentGenerations"]
      151 CALL                             R36 1 1
      152 GETIMPORT                        R37 K9 [require]
      154 GETTABLEKS                       R38 R0 K19 ["Src"]
      156 GETTABLEKS                       R38 R38 K47 ["Flags"]
      158 GETTABLEKS                       R38 R38 K49 ["getFFlagTextureGeneratorPreviewAnimation"]
      160 CALL                             R37 1 1
      161 GETIMPORT                        R38 K9 [require]
      163 GETTABLEKS                       R39 R0 K19 ["Src"]
      165 GETTABLEKS                       R39 R39 K47 ["Flags"]
      167 GETTABLEKS                       R39 R39 K50 ["getFFlagTextureGeneratorRerollButton"]
      169 CALL                             R38 1 1
      170 GETIMPORT                        R39 K9 [require]
      172 GETTABLEKS                       R40 R0 K19 ["Src"]
      174 GETTABLEKS                       R40 R40 K47 ["Flags"]
      176 GETTABLEKS                       R40 R40 K51 ["getFFlagTextureGeneratorBugFixes"]
      178 CALL                             R39 1 1
      179 GETIMPORT                        R40 K9 [require]
      181 GETTABLEKS                       R41 R0 K19 ["Src"]
      183 GETTABLEKS                       R41 R41 K52 ["Types"]
      185 CALL                             R40 1 1
      186 DUPCLOSURE                       R41 K53 [PROTO_0]
      187 CAPTURE                          VAL R3
      188 CAPTURE                          VAL R17
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R15
      191 CAPTURE                          VAL R38
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R24
      194 CAPTURE                          VAL R20
      195 DUPCLOSURE                       R42 K54 [PROTO_26]
      196 CAPTURE                          VAL R7
      197 CAPTURE                          VAL R8
      198 CAPTURE                          VAL R22
      199 CAPTURE                          VAL R3
      200 CAPTURE                          VAL R33
      201 CAPTURE                          VAL R34
      202 CAPTURE                          VAL R35
      203 CAPTURE                          VAL R10
      204 CAPTURE                          VAL R39
      205 CAPTURE                          VAL R30
      206 CAPTURE                          VAL R1
      207 CAPTURE                          VAL R28
      208 CAPTURE                          VAL R37
      209 CAPTURE                          VAL R29
      210 CAPTURE                          VAL R27
      211 CAPTURE                          VAL R2
      212 CAPTURE                          VAL R36
      213 CAPTURE                          VAL R31
      214 CAPTURE                          VAL R32
      215 CAPTURE                          VAL R25
      216 CAPTURE                          VAL R23
      217 CAPTURE                          VAL R17
      218 CAPTURE                          VAL R19
      219 CAPTURE                          VAL R15
      220 CAPTURE                          VAL R12
      221 CAPTURE                          VAL R16
      222 CAPTURE                          VAL R14
      223 CAPTURE                          VAL R18
      224 CAPTURE                          VAL R41
      225 RETURN                           R42 1
