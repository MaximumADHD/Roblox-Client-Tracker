PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Size", "LayoutOrder"}]
        5 GETTABLEKS                       R4 R0 K1 ["Size"]
        7 SETTABLEKS                       R4 R3 K1 ["Size"]
        9 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
       11 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       13 DUPTABLE                         R4 K8 [{"BackButton", "RerollButton", "SaveButton", "DEPRECATED_SaveButton"}]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K0 ["createElement"]
       17 GETUPVAL                         R6 2
       18 DUPTABLE                         R7 K11 [{"LayoutOrder", "Size", "OnClick", "Style"}]
       19 LOADN                            R8 1
       20 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       22 GETIMPORT                        R8 K14 [UDim2.fromOffset]
       24 LOADN                            R9 32
       25 LOADN                            R10 32
       26 CALL                             R8 2 1
       27 SETTABLEKS                       R8 R7 K1 ["Size"]
       29 GETTABLEKS                       R8 R0 K15 ["OnBackButtonClick"]
       31 SETTABLEKS                       R8 R7 K9 ["OnClick"]
       33 LOADK                            R8 K16 ["Round"]
       34 SETTABLEKS                       R8 R7 K10 ["Style"]
       36 DUPTABLE                         R8 K18 [{"Icon"}]
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R9 R10 K0 ["createElement"]
       40 GETUPVAL                         R10 3
       41 DUPTABLE                         R11 K22 [{"AnchorPoint", "Image", "Position", "Size", "Style"}]
       42 GETIMPORT                        R12 K25 [Vector2.new]
       44 LOADK                            R13 K26 [0.5]
       45 LOADK                            R14 K26 [0.5]
       46 CALL                             R12 2 1
       47 SETTABLEKS                       R12 R11 K19 ["AnchorPoint"]
       49 LOADK                            R12 K27 ["rbxasset://textures/StudioSharedUI/Undo.png"]
       50 SETTABLEKS                       R12 R11 K20 ["Image"]
       52 GETIMPORT                        R12 K29 [UDim2.fromScale]
       54 LOADK                            R13 K26 [0.5]
       55 LOADK                            R14 K26 [0.5]
       56 CALL                             R12 2 1
       57 SETTABLEKS                       R12 R11 K21 ["Position"]
       59 GETIMPORT                        R12 K14 [UDim2.fromOffset]
       61 LOADN                            R13 16
       62 LOADN                            R14 16
       63 CALL                             R12 2 1
       64 SETTABLEKS                       R12 R11 K1 ["Size"]
       66 LOADK                            R12 K30 ["Colored"]
       67 SETTABLEKS                       R12 R11 K10 ["Style"]
       69 CALL                             R9 2 1
       70 SETTABLEKS                       R9 R8 K17 ["Icon"]
       72 CALL                             R5 3 1
       73 SETTABLEKS                       R5 R4 K4 ["BackButton"]
       75 GETUPVAL                         R6 4
       76 CALL                             R6 0 1
       77 JUMPIFNOT                        R6 ; [+74]
       78 GETUPVAL                         R6 0
       79 GETTABLEKS                       R5 R6 K0 ["createElement"]
       81 GETUPVAL                         R6 5
       82 DUPTABLE                         R7 K35 [{"LayoutOrder", "AnchorPoint", "Disabled", "LeftIcon", "Size", "Position", "Style", "StyleModifier", "TooltipText", "OnClick"}]
       83 LOADN                            R8 2
       84 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       86 GETIMPORT                        R8 K25 [Vector2.new]
       88 LOADN                            R9 1
       89 LOADK                            R10 K26 [0.5]
       90 CALL                             R8 2 1
       91 SETTABLEKS                       R8 R7 K19 ["AnchorPoint"]
       93 GETTABLEKS                       R9 R0 K36 ["Enabled"]
       95 NOT                              R8 R9
       96 SETTABLEKS                       R8 R7 K31 ["Disabled"]
       98 GETTABLEKS                       R9 R0 K10 ["Style"]
      100 GETTABLEKS                       R8 R9 K37 ["RerollIcon"]
      102 SETTABLEKS                       R8 R7 K32 ["LeftIcon"]
      104 GETIMPORT                        R8 K14 [UDim2.fromOffset]
      106 LOADN                            R9 32
      107 LOADN                            R10 32
      108 CALL                             R8 2 1
      109 SETTABLEKS                       R8 R7 K1 ["Size"]
      111 GETIMPORT                        R8 K38 [UDim2.new]
      113 LOADN                            R9 1
      114 GETTABLEKS                       R15 R0 K10 ["Style"]
      116 GETTABLEKS                       R14 R15 K40 ["GenerateButtonSize"]
      118 GETTABLEKS                       R13 R14 K41 ["X"]
      120 GETTABLEKS                       R12 R13 K42 ["Offset"]
      122 MINUS                            R11 R12
      123 SUBK                             R10 R11 K39 [5]
      124 LOADK                            R11 K26 [0.5]
      125 LOADN                            R12 0
      126 CALL                             R8 4 1
      127 SETTABLEKS                       R8 R7 K21 ["Position"]
      129 LOADK                            R8 K43 ["Primary"]
      130 SETTABLEKS                       R8 R7 K10 ["Style"]
      132 GETTABLEKS                       R9 R0 K36 ["Enabled"]
      134 JUMPIF                           R9 ; [+4]
      135 GETUPVAL                         R9 6
      136 GETTABLEKS                       R8 R9 K31 ["Disabled"]
      138 JUMP                             ; [+1]
      139 LOADNIL                          R8
      140 SETTABLEKS                       R8 R7 K33 ["StyleModifier"]
      142 GETTABLEKS                       R8 R0 K44 ["RerollTooltipText"]
      144 SETTABLEKS                       R8 R7 K34 ["TooltipText"]
      146 GETTABLEKS                       R8 R0 K45 ["OnRerollButtonClick"]
      148 SETTABLEKS                       R8 R7 K9 ["OnClick"]
      150 CALL                             R5 2 1
      151 JUMP                             ; [+1]
      152 LOADNIL                          R5
      153 SETTABLEKS                       R5 R4 K5 ["RerollButton"]
      155 GETUPVAL                         R6 4
      156 CALL                             R6 0 1
      157 JUMPIFNOT                        R6 ; [+63]
      158 GETUPVAL                         R6 0
      159 GETTABLEKS                       R5 R6 K0 ["createElement"]
      161 GETUPVAL                         R6 5
      162 DUPTABLE                         R7 K47 [{"LayoutOrder", "AnchorPoint", "Disabled", "Position", "Size", "Style", "StyleModifier", "Text", "TooltipText", "OnClick"}]
      163 LOADN                            R8 3
      164 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
      166 GETIMPORT                        R8 K25 [Vector2.new]
      168 LOADN                            R9 1
      169 LOADK                            R10 K26 [0.5]
      170 CALL                             R8 2 1
      171 SETTABLEKS                       R8 R7 K19 ["AnchorPoint"]
      173 GETTABLEKS                       R9 R0 K36 ["Enabled"]
      175 NOT                              R8 R9
      176 SETTABLEKS                       R8 R7 K31 ["Disabled"]
      178 GETIMPORT                        R8 K29 [UDim2.fromScale]
      180 LOADN                            R9 1
      181 LOADK                            R10 K26 [0.5]
      182 CALL                             R8 2 1
      183 SETTABLEKS                       R8 R7 K21 ["Position"]
      185 GETTABLEKS                       R9 R0 K10 ["Style"]
      187 GETTABLEKS                       R8 R9 K40 ["GenerateButtonSize"]
      189 SETTABLEKS                       R8 R7 K1 ["Size"]
      191 GETTABLEKS                       R9 R0 K10 ["Style"]
      193 GETTABLEKS                       R8 R9 K48 ["GenerateButtonStyle"]
      195 SETTABLEKS                       R8 R7 K10 ["Style"]
      197 GETTABLEKS                       R9 R0 K36 ["Enabled"]
      199 JUMPIF                           R9 ; [+4]
      200 GETUPVAL                         R9 6
      201 GETTABLEKS                       R8 R9 K31 ["Disabled"]
      203 JUMP                             ; [+1]
      204 LOADNIL                          R8
      205 SETTABLEKS                       R8 R7 K33 ["StyleModifier"]
      207 GETTABLEKS                       R8 R0 K49 ["GenerateButtonText"]
      209 SETTABLEKS                       R8 R7 K46 ["Text"]
      211 GETTABLEKS                       R8 R0 K50 ["QuotaTooltipText"]
      213 SETTABLEKS                       R8 R7 K34 ["TooltipText"]
      215 GETTABLEKS                       R8 R0 K51 ["OnGenerateButtonClick"]
      217 SETTABLEKS                       R8 R7 K9 ["OnClick"]
      219 CALL                             R5 2 1
      220 JUMP                             ; [+1]
      221 LOADNIL                          R5
      222 SETTABLEKS                       R5 R4 K6 ["SaveButton"]
      224 GETUPVAL                         R6 4
      225 CALL                             R6 0 1
      226 JUMPIF                           R6 ; [+71]
      227 GETUPVAL                         R6 0
      228 GETTABLEKS                       R5 R6 K0 ["createElement"]
      230 GETUPVAL                         R6 2
      231 DUPTABLE                         R7 K52 [{"LayoutOrder", "AnchorPoint", "OnClick", "Position", "Size", "Style", "StyleModifier", "Text"}]
      232 LOADN                            R8 3
      233 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
      235 GETIMPORT                        R8 K25 [Vector2.new]
      237 LOADN                            R9 1
      238 LOADK                            R10 K26 [0.5]
      239 CALL                             R8 2 1
      240 SETTABLEKS                       R8 R7 K19 ["AnchorPoint"]
      242 GETTABLEKS                       R8 R0 K51 ["OnGenerateButtonClick"]
      244 SETTABLEKS                       R8 R7 K9 ["OnClick"]
      246 GETIMPORT                        R8 K29 [UDim2.fromScale]
      248 LOADN                            R9 1
      249 LOADK                            R10 K26 [0.5]
      250 CALL                             R8 2 1
      251 SETTABLEKS                       R8 R7 K21 ["Position"]
      253 GETTABLEKS                       R9 R0 K10 ["Style"]
      255 GETTABLEKS                       R8 R9 K40 ["GenerateButtonSize"]
      257 SETTABLEKS                       R8 R7 K1 ["Size"]
      259 GETTABLEKS                       R9 R0 K10 ["Style"]
      261 GETTABLEKS                       R8 R9 K48 ["GenerateButtonStyle"]
      263 SETTABLEKS                       R8 R7 K10 ["Style"]
      265 GETTABLEKS                       R9 R0 K36 ["Enabled"]
      267 JUMPIF                           R9 ; [+4]
      268 GETUPVAL                         R9 6
      269 GETTABLEKS                       R8 R9 K31 ["Disabled"]
      271 JUMP                             ; [+1]
      272 LOADNIL                          R8
      273 SETTABLEKS                       R8 R7 K33 ["StyleModifier"]
      275 GETTABLEKS                       R8 R0 K49 ["GenerateButtonText"]
      277 SETTABLEKS                       R8 R7 K46 ["Text"]
      279 DUPTABLE                         R8 K54 [{"QuotaTooltip"}]
      280 GETUPVAL                         R10 0
      281 GETTABLEKS                       R9 R10 K0 ["createElement"]
      283 GETUPVAL                         R10 7
      284 DUPTABLE                         R11 K56 [{"Text", "TextXAlignment"}]
      285 GETTABLEKS                       R12 R0 K50 ["QuotaTooltipText"]
      287 SETTABLEKS                       R12 R11 K46 ["Text"]
      289 GETIMPORT                        R12 K59 [Enum.TextXAlignment.Left]
      291 SETTABLEKS                       R12 R11 K55 ["TextXAlignment"]
      293 CALL                             R9 2 1
      294 SETTABLEKS                       R9 R8 K53 ["QuotaTooltip"]
      296 CALL                             R5 3 1
      297 JUMP                             ; [+1]
      298 LOADNIL                          R5
      299 SETTABLEKS                       R5 R4 K7 ["DEPRECATED_SaveButton"]
      301 CALL                             R1 3 -1
      302 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K2 ["ThresholdTime"]
        6 ORK                              R1 R2 K1 [180]
        7 GETIMPORT                        R3 K5 [os.clock]
        9 CALL                             R3 0 1
       10 GETTABLEKS                       R4 R0 K6 ["startTime"]
       12 SUB                              R2 R3 R4
       13 JUMPIFNOTLT                      R1 R2 ; [+37]
       15 GETUPVAL                         R3 2
       16 NAMECALL                         R3 R3 K7 ["Disconnect"]
       18 CALL                             R3 1 0
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R3 R4 K8 ["addError"]
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
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R3 R4 K15 ["removePreview"]
       41 GETTABLEKS                       R4 R0 K16 ["uuid"]
       43 CALL                             R3 1 0
       44 GETUPVAL                         R4 6
       45 GETTABLEKS                       R3 R4 K17 ["cancelGenerationRequest"]
       47 GETTABLEKS                       R4 R0 K16 ["uuid"]
       49 CALL                             R3 1 0
       50 RETURN                           R0 0
       51 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 GETUPVAL                         R2 4
        5 GETTABLEKS                       R1 R2 K0 ["RenderStepped"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["PreviewData"]
        3 GETTABLEKS                       R0 R1 K1 ["meshParts"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["PreviewData"]
        3 GETTABLEKS                       R0 R1 K1 ["rotation"]
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
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R3 R4 K11 ["INITIAL_FOCUS_DIRECTION"]
       32 MUL                              R1 R2 R3
       33 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K2 ["PreviewData"]
        5 GETTABLEKS                       R1 R3 K3 ["allPreviews"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 LOADN                            R2 0
        5 JUMPIFNOTLT                      R2 R1 ; [+5]
        7 JUMPIFNOT                        R0 ; [+3]
        8 NAMECALL                         R1 R0 K1 ["Disconnect"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["current"]
        4 GETTABLE                         R0 R1 R2
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K0 ["current"]
        9 GETTABLE                         R1 R2 R3
       10 JUMPIFNOT                        R0 ; [+1]
       11 JUMPIF                           R1 ; [+1]
       12 RETURN                           R0 0
       13 JUMPIFNOTEQKN                    R0 K1 [270] ; [+4]
       15 JUMPIFNOTEQKN                    R1 K2 [0] ; [+2]
       17 LOADN                            R1 104
       18 JUMPIFNOTEQKN                    R1 K1 [270] ; [+4]
       20 JUMPIFNOTEQKN                    R0 K2 [0] ; [+2]
       22 LOADN                            R0 104
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
       37 GETUPVAL                         R12 7
       38 GETTABLEKS                       R11 R12 K9 ["X"]
       40 FASTCALL1                        MATH_RAD R11 ; [+2]
       41 GETIMPORT                        R10 K12 [math.rad]
       43 CALL                             R10 1 1
       44 MINUS                            R9 R10
       45 GETUPVAL                         R13 7
       46 GETTABLEKS                       R12 R13 K13 ["Y"]
       48 ADD                              R11 R4 R12
       49 FASTCALL1                        MATH_RAD R11 ; [+2]
       50 GETIMPORT                        R10 K12 [math.rad]
       52 CALL                             R10 1 1
       53 GETUPVAL                         R14 7
       54 GETTABLEKS                       R13 R14 K14 ["Z"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["PreviewData"]
        3 GETTABLEKS                       R0 R1 K1 ["rotation"]
        5 GETIMPORT                        R1 K3 [tick]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 1
        9 LOADB                            R3 1
       10 CALL                             R2 1 0
       11 LOADNIL                          R2
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K4 ["RenderStepped"]
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
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["STATUS"]
        5 GETTABLEKS                       R3 R4 K2 ["COMPLETED"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_15:
        0 LOADN                            R0 0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R1 R4 K0 ["generations"]
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 GETTABLEKS                       R6 R5 K1 ["status"]
        9 GETUPVAL                         R9 1
       10 GETTABLEKS                       R8 R9 K2 ["STATUS"]
       12 GETTABLEKS                       R7 R8 K3 ["PENDING"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["PreviewData"]
        3 GETTABLEKS                       R0 R1 K1 ["previewUrlCount"]
        5 JUMPIFNOTEQKN                    R0 K2 [4] ; [+9]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["PreviewData"]
       10 GETTABLEKS                       R0 R1 K3 ["imageFailed"]
       12 LOADN                            R1 2
       13 JUMPIFLE                         R1 R0 ; [+16]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K0 ["PreviewData"]
       18 GETTABLEKS                       R0 R1 K1 ["previewUrlCount"]
       20 JUMPIFNOTEQKN                    R0 K4 [3] ; [+40]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R1 R2 K0 ["PreviewData"]
       25 GETTABLEKS                       R0 R1 K3 ["imageFailed"]
       27 LOADN                            R1 1
       28 JUMPIFNOTLE                      R1 R0 ; [+32]
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R0 R1 K5 ["addError"]
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
       52 GETUPVAL                         R1 1
       53 GETTABLEKS                       R0 R1 K12 ["removePreview"]
       55 GETUPVAL                         R3 0
       56 GETTABLEKS                       R2 R3 K0 ["PreviewData"]
       58 GETTABLEKS                       R1 R2 K13 ["uuid"]
       60 CALL                             R0 1 0
       61 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["removePreview"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["PreviewData"]
        6 GETTABLEKS                       R1 R2 K2 ["uuid"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R0 R1 K3 ["cancelGenerationRequest"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K1 ["PreviewData"]
       15 GETTABLEKS                       R1 R2 K2 ["uuid"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createPartGroup"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["previewTexture"]
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
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["removePreview"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K1 ["PreviewData"]
        9 GETTABLEKS                       R1 R2 K2 ["uuid"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R0 R1 K3 ["promptText"]
       15 GETUPVAL                         R1 4
       16 GETUPVAL                         R2 3
       17 CALL                             R1 1 1
       18 LOADNIL                          R2
       19 SETTABLEKS                       R2 R1 K4 ["seed"]
       21 GETUPVAL                         R2 5
       22 GETUPVAL                         R3 6
       23 GETUPVAL                         R4 7
       24 CALL                             R2 2 1
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R3 R4 K5 ["rotation"]
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
       70 GETUPVAL                         R10 1
       71 GETTABLEKS                       R9 R10 K18 ["addError"]
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
       90 GETUPVAL                         R10 3
       91 GETTABLEKS                       R9 R10 K24 ["smartUVUnwrap"]
       93 SETTABLEKS                       R9 R8 K24 ["smartUVUnwrap"]
       95 GETUPVAL                         R10 3
       96 GETTABLEKS                       R9 R10 K25 ["promptMasking"]
       98 SETTABLEKS                       R9 R8 K25 ["promptMasking"]
      100 GETUPVAL                         R10 1
      101 GETTABLEKS                       R9 R10 K26 ["addOrUpdatePreview"]
      103 MOVE                             R10 R8
      104 CALL                             R9 1 0
      105 DUPTABLE                         R9 K28 [{"hash", "uuid"}]
      106 SETTABLEKS                       R2 R9 K27 ["hash"]
      108 GETTABLEKS                       R10 R8 K2 ["uuid"]
      110 SETTABLEKS                       R10 R9 K2 ["uuid"]
      112 GETUPVAL                         R11 1
      113 GETTABLEKS                       R10 R11 K29 ["addOrUpdateModelToPreview"]
      115 MOVE                             R11 R9
      116 CALL                             R10 1 0
      117 GETUPVAL                         R10 9
      118 LOADK                            R12 K30 ["GeneratedPreview"]
      119 GETUPVAL                         R13 6
      120 MOVE                             R14 R0
      121 GETUPVAL                         R16 3
      122 GETTABLEKS                       R15 R16 K4 ["seed"]
      124 MOVE                             R16 R6
      125 GETUPVAL                         R18 3
      126 GETTABLEKS                       R17 R18 K24 ["smartUVUnwrap"]
      128 GETUPVAL                         R19 3
      129 GETTABLEKS                       R18 R19 K25 ["promptMasking"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["generateTexture"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["PreviewData"]
        6 GETTABLEKS                       R1 R2 K2 ["uuid"]
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
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R2 R3 K5 ["MAX_GENERATIONS_MESSAGE"]
       19 JUMPIFEQ                         R1 R2 ; [+10]
       21 GETUPVAL                         R3 4
       22 GETTABLEKS                       R2 R3 K6 ["removePreview"]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R4 R5 K7 ["PreviewData"]
       27 GETTABLEKS                       R3 R4 K8 ["uuid"]
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
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R5 R6 K7 ["PreviewData"]
       46 GETTABLEKS                       R4 R5 K8 ["uuid"]
       48 SETTABLEKS                       R4 R3 K8 ["uuid"]
       50 GETUPVAL                         R6 3
       51 GETTABLEKS                       R5 R6 K15 ["STATUS"]
       53 GETTABLEKS                       R4 R5 K16 ["FAILED"]
       55 SETTABLEKS                       R4 R3 K12 ["status"]
       57 NEWTABLE                         R4 0 1
       59 MOVE                             R5 R1
       60 SETLIST                          R4 R5 1 [1]
       62 SETTABLEKS                       R4 R3 K13 ["errors"]
       64 MOVE                             R2 R3
       65 GETUPVAL                         R6 2
       66 GETTABLEKS                       R5 R6 K7 ["PreviewData"]
       68 GETTABLEKS                       R4 R5 K17 ["allPreviews"]
       70 GETTABLEN                        R3 R4 1
       71 SETTABLEKS                       R3 R2 K18 ["previewImage"]
       73 GETUPVAL                         R3 5
       74 SETTABLEKS                       R3 R2 K19 ["meshParts"]
       76 GETUPVAL                         R4 1
       77 GETTABLEKS                       R3 R4 K20 ["createPartGroup"]
       79 GETUPVAL                         R4 5
       80 CALL                             R3 1 1
       81 SETTABLEKS                       R3 R2 K21 ["partGroup"]
       83 GETUPVAL                         R5 2
       84 GETTABLEKS                       R4 R5 K7 ["PreviewData"]
       86 GETTABLEKS                       R3 R4 K22 ["rotation"]
       88 SETTABLEKS                       R3 R2 K22 ["rotation"]
       90 GETUPVAL                         R5 2
       91 GETTABLEKS                       R4 R5 K7 ["PreviewData"]
       93 GETTABLEKS                       R3 R4 K23 ["seed"]
       95 SETTABLEKS                       R3 R2 K23 ["seed"]
       97 GETUPVAL                         R5 2
       98 GETTABLEKS                       R4 R5 K7 ["PreviewData"]
      100 GETTABLEKS                       R3 R4 K24 ["prompt"]
      102 SETTABLEKS                       R3 R2 K24 ["prompt"]
      104 GETUPVAL                         R4 6
      105 GETTABLEKS                       R3 R4 K25 ["smartUVUnwrap"]
      107 SETTABLEKS                       R3 R2 K25 ["smartUVUnwrap"]
      109 GETUPVAL                         R4 6
      110 GETTABLEKS                       R3 R4 K26 ["promptMasking"]
      112 SETTABLEKS                       R3 R2 K26 ["promptMasking"]
      114 GETUPVAL                         R3 7
      115 GETUPVAL                         R4 5
      116 GETUPVAL                         R5 1
      117 CALL                             R3 2 1
      118 GETUPVAL                         R5 8
      119 GETTABLEKS                       R4 R5 K27 ["updateGeneration"]
      121 DUPTABLE                         R5 K30 [{"action", "uuid", "data"}]
      122 GETUPVAL                         R8 3
      123 GETTABLEKS                       R7 R8 K31 ["GENERATION_ACTIONS"]
      125 GETTABLEKS                       R6 R7 K32 ["UPDATE"]
      127 SETTABLEKS                       R6 R5 K28 ["action"]
      129 GETTABLEKS                       R6 R2 K8 ["uuid"]
      131 SETTABLEKS                       R6 R5 K8 ["uuid"]
      133 SETTABLEKS                       R2 R5 K29 ["data"]
      135 CALL                             R4 1 0
      136 GETUPVAL                         R5 8
      137 GETTABLEKS                       R4 R5 K33 ["updateModelToGenerations"]
      139 DUPTABLE                         R5 K35 [{"action", "hash", "uuid"}]
      140 GETUPVAL                         R8 3
      141 GETTABLEKS                       R7 R8 K31 ["GENERATION_ACTIONS"]
      143 GETTABLEKS                       R6 R7 K36 ["ADD"]
      145 SETTABLEKS                       R6 R5 K28 ["action"]
      147 SETTABLEKS                       R3 R5 K34 ["hash"]
      149 GETTABLEKS                       R6 R2 K8 ["uuid"]
      151 SETTABLEKS                       R6 R5 K8 ["uuid"]
      153 CALL                             R4 1 0
      154 GETUPVAL                         R4 9
      155 LOADK                            R6 K37 ["GeneratedTexture"]
      156 GETUPVAL                         R9 2
      157 GETTABLEKS                       R8 R9 K7 ["PreviewData"]
      159 GETTABLEKS                       R7 R8 K38 ["serverId"]
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
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R4 R5 K1 ["useContext"]
       13 GETUPVAL                         R5 4
       14 CALL                             R4 1 1
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R5 R6 K1 ["useContext"]
       18 GETUPVAL                         R6 5
       19 CALL                             R5 1 1
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R6 R7 K1 ["useContext"]
       23 GETUPVAL                         R7 6
       24 CALL                             R6 1 1
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R7 R8 K1 ["useContext"]
       28 GETUPVAL                         R8 7
       29 CALL                             R7 1 1
       30 LOADNIL                          R8
       31 GETUPVAL                         R10 3
       32 GETTABLEKS                       R9 R10 K2 ["useRef"]
       34 MOVE                             R10 R8
       35 CALL                             R9 1 1
       36 GETUPVAL                         R10 8
       37 CALL                             R10 0 1
       38 JUMPIFNOT                        R10 ; [+30]
       39 GETUPVAL                         R11 3
       40 GETTABLEKS                       R10 R11 K3 ["createRef"]
       42 GETTABLEKS                       R11 R0 K4 ["PreviewData"]
       44 CALL                             R10 1 1
       45 GETTABLEKS                       R11 R0 K4 ["PreviewData"]
       47 SETTABLEKS                       R11 R10 K5 ["current"]
       49 GETUPVAL                         R12 3
       50 GETTABLEKS                       R11 R12 K6 ["useEffect"]
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
       93 GETTABLEKS                       R14 R0 K4 ["PreviewData"]
       95 GETTABLEKS                       R13 R14 K18 ["prompt"]
       97 GETUPVAL                         R15 3
       98 GETTABLEKS                       R14 R15 K19 ["useState"]
      100 LOADB                            R15 0
      101 CALL                             R14 1 2
      102 GETUPVAL                         R17 3
      103 GETTABLEKS                       R16 R17 K2 ["useRef"]
      105 GETIMPORT                        R17 K22 [Instance.new]
      107 LOADK                            R18 K23 ["Camera"]
      108 CALL                             R17 1 -1
      109 CALL                             R16 -1 1
      110 GETTABLEKS                       R17 R16 K5 ["current"]
      112 GETUPVAL                         R19 3
      113 GETTABLEKS                       R18 R19 K24 ["useMemo"]
      115 NEWCLOSURE                       R19 P1
      116 CAPTURE                          VAL R0
      117 CAPTURE                          UPVAL U11
      118 CAPTURE                          UPVAL U12
      119 NEWTABLE                         R20 0 1
      121 GETTABLEKS                       R22 R0 K4 ["PreviewData"]
      123 GETTABLEKS                       R21 R22 K25 ["meshParts"]
      125 SETLIST                          R20 R21 1 [1]
      127 CALL                             R18 2 1
      128 GETUPVAL                         R20 3
      129 GETTABLEKS                       R19 R20 K24 ["useMemo"]
      131 NEWCLOSURE                       R20 P2
      132 CAPTURE                          VAL R0
      133 CAPTURE                          UPVAL U13
      134 NEWTABLE                         R21 0 1
      136 GETTABLEKS                       R23 R0 K4 ["PreviewData"]
      138 GETTABLEKS                       R22 R23 K26 ["rotation"]
      140 SETLIST                          R21 R22 1 [1]
      142 CALL                             R19 2 1
      143 GETUPVAL                         R21 3
      144 GETTABLEKS                       R20 R21 K19 ["useState"]
      146 LOADN                            R21 1
      147 CALL                             R20 1 2
      148 GETUPVAL                         R23 3
      149 GETTABLEKS                       R22 R23 K19 ["useState"]
      151 LOADN                            R23 1
      152 CALL                             R22 1 2
      153 GETTABLEKS                       R26 R0 K4 ["PreviewData"]
      155 GETTABLEKS                       R25 R26 K27 ["allPreviews"]
      157 GETTABLE                         R24 R25 R22
      158 GETTABLEKS                       R27 R0 K4 ["PreviewData"]
      160 GETTABLEKS                       R26 R27 K27 ["allPreviews"]
      162 LENGTH                           R25 R26
      163 NEWTABLE                         R26 0 0
      165 GETUPVAL                         R27 12
      166 CALL                             R27 0 1
      167 JUMPIFNOT                        R27 ; [+16]
      168 GETUPVAL                         R28 3
      169 GETTABLEKS                       R27 R28 K6 ["useEffect"]
      171 NEWCLOSURE                       R28 P3
      172 CAPTURE                          VAL R0
      173 CAPTURE                          VAL R26
      174 NEWTABLE                         R29 0 2
      176 MOVE                             R30 R26
      177 GETTABLEKS                       R32 R0 K4 ["PreviewData"]
      179 GETTABLEKS                       R31 R32 K27 ["allPreviews"]
      181 SETLIST                          R29 R30 2 [1]
      183 CALL                             R27 2 0
      184 GETUPVAL                         R27 8
      185 CALL                             R27 0 1
      186 JUMPIFNOT                        R27 ; [+12]
      187 GETUPVAL                         R28 3
      188 GETTABLEKS                       R27 R28 K6 ["useEffect"]
      190 NEWCLOSURE                       R28 P4
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R25
      193 NEWTABLE                         R29 0 1
      195 MOVE                             R30 R25
      196 SETLIST                          R29 R30 1 [1]
      198 CALL                             R27 2 0
      199 GETUPVAL                         R28 3
      200 GETTABLEKS                       R27 R28 K2 ["useRef"]
      202 MOVE                             R28 R20
      203 CALL                             R27 1 1
      204 SETTABLEKS                       R20 R27 K5 ["current"]
      206 GETUPVAL                         R29 3
      207 GETTABLEKS                       R28 R29 K2 ["useRef"]
      209 MOVE                             R29 R22
      210 CALL                             R28 1 1
      211 SETTABLEKS                       R22 R28 K5 ["current"]
      213 GETUPVAL                         R30 3
      214 GETTABLEKS                       R29 R30 K28 ["useCallback"]
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
      232 GETUPVAL                         R31 3
      233 GETTABLEKS                       R30 R31 K28 ["useCallback"]
      235 NEWCLOSURE                       R31 P6
      236 CAPTURE                          VAL R23
      237 CAPTURE                          UPVAL U12
      238 CAPTURE                          VAL R21
      239 CAPTURE                          VAL R25
      240 NEWTABLE                         R32 0 1
      242 MOVE                             R33 R25
      243 SETLIST                          R32 R33 1 [1]
      245 CALL                             R30 2 1
      246 GETUPVAL                         R32 3
      247 GETTABLEKS                       R31 R32 K28 ["useCallback"]
      249 NEWCLOSURE                       R32 P7
      250 CAPTURE                          VAL R23
      251 CAPTURE                          UPVAL U12
      252 CAPTURE                          VAL R21
      253 CAPTURE                          VAL R25
      254 NEWTABLE                         R33 0 1
      256 MOVE                             R34 R25
      257 SETLIST                          R33 R34 1 [1]
      259 CALL                             R31 2 1
      260 GETUPVAL                         R33 3
      261 GETTABLEKS                       R32 R33 K6 ["useEffect"]
      263 NEWCLOSURE                       R33 P8
      264 CAPTURE                          VAL R23
      265 NEWTABLE                         R34 0 1
      267 GETTABLEKS                       R36 R0 K4 ["PreviewData"]
      269 GETTABLEKS                       R35 R36 K29 ["uuid"]
      271 SETLIST                          R34 R35 1 [1]
      273 CALL                             R32 2 0
      274 GETUPVAL                         R34 15
      275 GETTABLEKS                       R33 R34 K30 ["find"]
      277 GETTABLEKS                       R35 R0 K4 ["PreviewData"]
      279 GETTABLEKS                       R34 R35 K27 ["allPreviews"]
      281 DUPCLOSURE                       R35 K31 [PROTO_14]
      282 CAPTURE                          UPVAL U13
      283 CALL                             R33 2 1
      284 JUMPIFNOTEQKNIL                  R33 ; [+2]
      286 LOADB                            R32 0 +1
      287 LOADB                            R32 1
      288 LOADB                            R33 0
      289 JUMPIFEQKNIL                     R24 ; [+12]
      291 GETTABLEKS                       R34 R24 K32 ["status"]
      293 GETUPVAL                         R37 13
      294 GETTABLEKS                       R36 R37 K33 ["STATUS"]
      296 GETTABLEKS                       R35 R36 K34 ["COMPLETED"]
      298 JUMPIFEQ                         R34 R35 ; [+2]
      300 LOADB                            R33 0 +1
      301 LOADB                            R33 1
      302 GETUPVAL                         R35 3
      303 GETTABLEKS                       R34 R35 K24 ["useMemo"]
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
      325 GETUPVAL                         R38 3
      326 GETTABLEKS                       R37 R38 K19 ["useState"]
      328 LOADB                            R38 0
      329 CALL                             R37 1 2
      330 MOVE                             R35 R37
      331 MOVE                             R36 R38
      332 GETUPVAL                         R38 3
      333 GETTABLEKS                       R37 R38 K6 ["useEffect"]
      335 NEWCLOSURE                       R38 P12
      336 CAPTURE                          REF R36
      337 CAPTURE                          VAL R32
      338 CAPTURE                          VAL R34
      339 NEWTABLE                         R39 0 2
      341 MOVE                             R40 R32
      342 MOVE                             R41 R34
      343 SETLIST                          R39 R40 2 [1]
      345 CALL                             R37 2 0
      346 GETUPVAL                         R38 3
      347 GETTABLEKS                       R37 R38 K6 ["useEffect"]
      349 NEWCLOSURE                       R38 P13
      350 CAPTURE                          VAL R0
      351 CAPTURE                          VAL R5
      352 CAPTURE                          UPVAL U9
      353 CAPTURE                          VAL R3
      354 CAPTURE                          VAL R7
      355 CAPTURE                          VAL R2
      356 NEWTABLE                         R39 0 2
      358 GETTABLEKS                       R41 R0 K4 ["PreviewData"]
      360 GETTABLEKS                       R40 R41 K38 ["imageFailed"]
      362 GETTABLEKS                       R42 R0 K4 ["PreviewData"]
      364 GETTABLEKS                       R41 R42 K39 ["previewUrlCount"]
      366 SETLIST                          R39 R40 2 [1]
      368 CALL                             R37 2 0
      369 GETUPVAL                         R38 3
      370 GETTABLEKS                       R37 R38 K28 ["useCallback"]
      372 NEWCLOSURE                       R38 P14
      373 CAPTURE                          VAL R5
      374 CAPTURE                          VAL R0
      375 CAPTURE                          VAL R7
      376 CAPTURE                          UPVAL U8
      377 CAPTURE                          REF R8
      378 NEWTABLE                         R39 0 3
      380 GETTABLEKS                       R41 R0 K4 ["PreviewData"]
      382 GETTABLEKS                       R40 R41 K29 ["uuid"]
      384 GETTABLEKS                       R41 R5 K40 ["removePreview"]
      386 MOVE                             R42 R8
      387 SETLIST                          R39 R40 3 [1]
      389 CALL                             R37 2 1
      390 GETUPVAL                         R39 3
      391 GETTABLEKS                       R38 R39 K28 ["useCallback"]
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
      419 GETUPVAL                         R40 3
      420 GETTABLEKS                       R39 R40 K28 ["useCallback"]
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
      451 GETUPVAL                         R41 19
      452 GETTABLEKS                       R40 R41 K21 ["new"]
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
      470 GETUPVAL                         R44 3
      471 GETTABLEKS                       R43 R44 K46 ["createElement"]
      473 GETUPVAL                         R44 21
      474 DUPTABLE                         R45 K55 [{"AutomaticSize", "HorizontalAlignment", "Layout", "VerticalAlignment", "LayoutOrder", "Padding", "Size", "Style"}]
      475 GETIMPORT                        R46 K58 [Enum.AutomaticSize.Y]
      477 SETTABLEKS                       R46 R45 K47 ["AutomaticSize"]
      479 GETIMPORT                        R46 K60 [Enum.HorizontalAlignment.Center]
      481 SETTABLEKS                       R46 R45 K48 ["HorizontalAlignment"]
      483 GETIMPORT                        R46 K63 [Enum.FillDirection.Vertical]
      485 SETTABLEKS                       R46 R45 K49 ["Layout"]
      487 GETIMPORT                        R46 K64 [Enum.VerticalAlignment.Center]
      489 SETTABLEKS                       R46 R45 K50 ["VerticalAlignment"]
      491 GETTABLEKS                       R46 R0 K51 ["LayoutOrder"]
      493 SETTABLEKS                       R46 R45 K51 ["LayoutOrder"]
      495 GETTABLEKS                       R46 R41 K52 ["Padding"]
      497 SETTABLEKS                       R46 R45 K52 ["Padding"]
      499 GETTABLEKS                       R46 R41 K53 ["Size"]
      501 SETTABLEKS                       R46 R45 K53 ["Size"]
      503 LOADK                            R46 K65 ["Box"]
      504 SETTABLEKS                       R46 R45 K54 ["Style"]
      506 DUPTABLE                         R46 K69 [{"PreviewLabel", "Display", "PreviewActionArea"}]
      507 GETUPVAL                         R48 12
      508 CALL                             R48 0 1
      509 JUMPIF                           R48 ; [+40]
      510 GETUPVAL                         R48 3
      511 GETTABLEKS                       R47 R48 K46 ["createElement"]
      513 GETUPVAL                         R48 22
      514 DUPTABLE                         R49 K74 [{"AutomaticSize", "LayoutOrder", "RichText", "Size", "Text", "Style", "TextXAlignment", "TextYAlignment"}]
      515 GETIMPORT                        R50 K76 [Enum.AutomaticSize.X]
      517 SETTABLEKS                       R50 R49 K47 ["AutomaticSize"]
      519 LOADN                            R50 1
      520 SETTABLEKS                       R50 R49 K51 ["LayoutOrder"]
      522 LOADB                            R50 1
      523 SETTABLEKS                       R50 R49 K70 ["RichText"]
      525 GETTABLEKS                       R50 R41 K77 ["PreviewLabelSize"]
      527 SETTABLEKS                       R50 R49 K53 ["Size"]
      529 LOADK                            R52 K13 ["General"]
      530 LOADK                            R53 K78 ["Preview"]
      531 NAMECALL                         R50 R2 K9 ["getText"]
      533 CALL                             R50 3 1
      534 SETTABLEKS                       R50 R49 K71 ["Text"]
      536 GETTABLEKS                       R50 R41 K79 ["PreviewLabelStyle"]
      538 SETTABLEKS                       R50 R49 K54 ["Style"]
      540 GETIMPORT                        R50 K81 [Enum.TextXAlignment.Left]
      542 SETTABLEKS                       R50 R49 K72 ["TextXAlignment"]
      544 GETIMPORT                        R50 K82 [Enum.TextYAlignment.Center]
      546 SETTABLEKS                       R50 R49 K73 ["TextYAlignment"]
      548 CALL                             R47 2 1
      549 JUMP                             ; [+1]
      550 LOADNIL                          R47
      551 SETTABLEKS                       R47 R46 K66 ["PreviewLabel"]
      553 GETUPVAL                         R48 3
      554 GETTABLEKS                       R47 R48 K46 ["createElement"]
      556 GETUPVAL                         R48 21
      557 DUPTABLE                         R49 K85 [{"AnchorPoint", "LayoutOrder", "Position", "Size"}]
      558 GETIMPORT                        R50 K87 [Vector2.new]
      560 LOADK                            R51 K88 [0.5]
      561 LOADK                            R52 K88 [0.5]
      562 CALL                             R50 2 1
      563 SETTABLEKS                       R50 R49 K83 ["AnchorPoint"]
      565 LOADN                            R50 2
      566 SETTABLEKS                       R50 R49 K51 ["LayoutOrder"]
      568 GETIMPORT                        R50 K91 [UDim2.fromScale]
      570 LOADK                            R51 K88 [0.5]
      571 LOADK                            R52 K88 [0.5]
      572 CALL                             R50 2 1
      573 SETTABLEKS                       R50 R49 K84 ["Position"]
      575 GETTABLEKS                       R50 R41 K53 ["Size"]
      577 SETTABLEKS                       R50 R49 K53 ["Size"]
      579 DUPTABLE                         R50 K95 [{"UIPadding", "ImageContainer", "Controls"}]
      580 GETUPVAL                         R52 3
      581 GETTABLEKS                       R51 R52 K46 ["createElement"]
      583 LOADK                            R52 K92 ["UIPadding"]
      584 DUPTABLE                         R53 K98 [{"PaddingLeft", "PaddingRight"}]
      585 GETIMPORT                        R54 K100 [UDim.new]
      587 LOADN                            R55 0
      588 LOADN                            R56 8
      589 CALL                             R54 2 1
      590 SETTABLEKS                       R54 R53 K96 ["PaddingLeft"]
      592 GETIMPORT                        R54 K100 [UDim.new]
      594 LOADN                            R55 0
      595 LOADN                            R56 8
      596 CALL                             R54 2 1
      597 SETTABLEKS                       R54 R53 K97 ["PaddingRight"]
      599 CALL                             R51 2 1
      600 SETTABLEKS                       R51 R50 K92 ["UIPadding"]
      602 GETUPVAL                         R52 3
      603 GETTABLEKS                       R51 R52 K46 ["createElement"]
      605 GETUPVAL                         R52 21
      606 DUPTABLE                         R53 K103 [{"BackgroundColor3", "AnchorPoint", "Position", "ZIndex"}]
      607 GETIMPORT                        R54 K105 [Color3.new]
      609 LOADN                            R55 0
      610 LOADN                            R56 0
      611 LOADN                            R57 0
      612 CALL                             R54 3 1
      613 SETTABLEKS                       R54 R53 K101 ["BackgroundColor3"]
      615 GETIMPORT                        R54 K87 [Vector2.new]
      617 LOADK                            R55 K88 [0.5]
      618 LOADK                            R56 K88 [0.5]
      619 CALL                             R54 2 1
      620 SETTABLEKS                       R54 R53 K83 ["AnchorPoint"]
      622 GETIMPORT                        R54 K91 [UDim2.fromScale]
      624 LOADK                            R55 K88 [0.5]
      625 LOADK                            R56 K88 [0.5]
      626 CALL                             R54 2 1
      627 SETTABLEKS                       R54 R53 K84 ["Position"]
      629 NAMECALL                         R54 R40 K106 ["getNextOrder"]
      631 CALL                             R54 1 1
      632 SETTABLEKS                       R54 R53 K102 ["ZIndex"]
      634 DUPTABLE                         R54 K111 [{"Corner", "Image", "AssetRenderModel", "LoadingIndicator"}]
      635 GETUPVAL                         R56 3
      636 GETTABLEKS                       R55 R56 K46 ["createElement"]
      638 LOADK                            R56 K112 ["UICorner"]
      639 CALL                             R55 1 1
      640 SETTABLEKS                       R55 R54 K107 ["Corner"]
      642 JUMPIFNOT                        R42 ; [+47]
      643 GETUPVAL                         R56 3
      644 GETTABLEKS                       R55 R56 K46 ["createElement"]
      646 GETUPVAL                         R56 23
      647 DUPTABLE                         R57 K113 [{"AnchorPoint", "Position", "Size", "Image"}]
      648 GETIMPORT                        R58 K87 [Vector2.new]
      650 LOADK                            R59 K88 [0.5]
      651 LOADK                            R60 K88 [0.5]
      652 CALL                             R58 2 1
      653 SETTABLEKS                       R58 R57 K83 ["AnchorPoint"]
      655 GETIMPORT                        R58 K91 [UDim2.fromScale]
      657 LOADK                            R59 K88 [0.5]
      658 LOADK                            R60 K88 [0.5]
      659 CALL                             R58 2 1
      660 SETTABLEKS                       R58 R57 K84 ["Position"]
      662 GETUPVAL                         R59 12
      663 CALL                             R59 0 1
      664 JUMPIFNOT                        R59 ; [+8]
      665 GETIMPORT                        R58 K114 [UDim2.new]
      667 LOADN                            R59 1
      668 LOADN                            R60 0
      669 LOADN                            R61 1
      670 LOADN                            R62 224
      671 CALL                             R58 4 1
      672 JUMP                             ; [+1]
      673 LOADNIL                          R58
      674 SETTABLEKS                       R58 R57 K53 ["Size"]
      676 GETTABLEKS                       R58 R24 K115 ["previewId"]
      678 SETTABLEKS                       R58 R57 K108 ["Image"]
      680 DUPTABLE                         R58 K117 [{"UIAspectRatioConstraint"}]
      681 GETUPVAL                         R60 3
      682 GETTABLEKS                       R59 R60 K46 ["createElement"]
      684 LOADK                            R60 K116 ["UIAspectRatioConstraint"]
      685 CALL                             R59 1 1
      686 SETTABLEKS                       R59 R58 K116 ["UIAspectRatioConstraint"]
      688 CALL                             R55 3 1
      689 JUMP                             ; [+1]
      690 LOADNIL                          R55
      691 SETTABLEKS                       R55 R54 K108 ["Image"]
      693 JUMPIFNOT                        R33 ; [+4]
      694 GETUPVAL                         R56 12
      695 CALL                             R56 0 1
      696 JUMPIFNOT                        R56 ; [+81]
      697 JUMPIFNOT                        R14 ; [+80]
      698 GETUPVAL                         R56 3
      699 GETTABLEKS                       R55 R56 K46 ["createElement"]
      701 GETUPVAL                         R56 24
      702 DUPTABLE                         R57 K127 [{"BackgroundColor3", "Camera", "DisablePan", "DisableZoom", "LayoutOrder", "Model", "ShouldMuteModelSounds", "Size", "Static", "FocusDirection", "LightColor", "LightDirection", "EnableSky"}]
      703 GETTABLEKS                       R58 R41 K128 ["BackgroundColor"]
      705 SETTABLEKS                       R58 R57 K101 ["BackgroundColor3"]
      707 GETUPVAL                         R59 12
      708 CALL                             R59 0 1
      709 JUMPIFNOT                        R59 ; [+2]
      710 MOVE                             R58 R17
      711 JUMP                             ; [+1]
      712 LOADNIL                          R58
      713 SETTABLEKS                       R58 R57 K23 ["Camera"]
      715 GETUPVAL                         R59 12
      716 CALL                             R59 0 1
      717 JUMPIFNOT                        R59 ; [+2]
      718 LOADNIL                          R58
      719 JUMP                             ; [+2]
      720 GETTABLEKS                       R58 R41 K118 ["DisablePan"]
      722 SETTABLEKS                       R58 R57 K118 ["DisablePan"]
      724 GETUPVAL                         R59 12
      725 CALL                             R59 0 1
      726 JUMPIFNOT                        R59 ; [+2]
      727 LOADNIL                          R58
      728 JUMP                             ; [+2]
      729 GETTABLEKS                       R58 R41 K119 ["DisableZoom"]
      731 SETTABLEKS                       R58 R57 K119 ["DisableZoom"]
      733 NAMECALL                         R58 R40 K106 ["getNextOrder"]
      735 CALL                             R58 1 1
      736 SETTABLEKS                       R58 R57 K51 ["LayoutOrder"]
      738 SETTABLEKS                       R18 R57 K120 ["Model"]
      740 LOADB                            R58 1
      741 SETTABLEKS                       R58 R57 K121 ["ShouldMuteModelSounds"]
      743 GETUPVAL                         R59 12
      744 CALL                             R59 0 1
      745 JUMPIFNOT                        R59 ; [+8]
      746 GETIMPORT                        R58 K114 [UDim2.new]
      748 LOADN                            R59 1
      749 LOADN                            R60 0
      750 LOADN                            R61 1
      751 LOADN                            R62 224
      752 CALL                             R58 4 1
      753 JUMP                             ; [+1]
      754 LOADNIL                          R58
      755 SETTABLEKS                       R58 R57 K53 ["Size"]
      757 LOADB                            R58 1
      758 SETTABLEKS                       R58 R57 K122 ["Static"]
      760 SETTABLEKS                       R19 R57 K123 ["FocusDirection"]
      762 GETIMPORT                        R58 K105 [Color3.new]
      764 LOADN                            R59 0
      765 LOADN                            R60 0
      766 LOADN                            R61 0
      767 CALL                             R58 3 1
      768 SETTABLEKS                       R58 R57 K124 ["LightColor"]
      770 LOADK                            R58 K129 [{1, 1, 1}]
      771 SETTABLEKS                       R58 R57 K125 ["LightDirection"]
      773 LOADB                            R58 1
      774 SETTABLEKS                       R58 R57 K126 ["EnableSky"]
      776 CALL                             R55 2 1
      777 JUMP                             ; [+1]
      778 LOADNIL                          R55
      779 SETTABLEKS                       R55 R54 K109 ["AssetRenderModel"]
      781 JUMPIF                           R33 ; [+21]
      782 GETUPVAL                         R56 3
      783 GETTABLEKS                       R55 R56 K46 ["createElement"]
      785 GETUPVAL                         R56 25
      786 DUPTABLE                         R57 K130 [{"AnchorPoint", "Position"}]
      787 GETIMPORT                        R58 K87 [Vector2.new]
      789 LOADK                            R59 K88 [0.5]
      790 LOADK                            R60 K88 [0.5]
      791 CALL                             R58 2 1
      792 SETTABLEKS                       R58 R57 K83 ["AnchorPoint"]
      794 GETIMPORT                        R58 K91 [UDim2.fromScale]
      796 LOADK                            R59 K88 [0.5]
      797 LOADK                            R60 K88 [0.5]
      798 CALL                             R58 2 1
      799 SETTABLEKS                       R58 R57 K84 ["Position"]
      801 CALL                             R55 2 1
      802 JUMP                             ; [+1]
      803 LOADNIL                          R55
      804 SETTABLEKS                       R55 R54 K110 ["LoadingIndicator"]
      806 CALL                             R51 3 1
      807 SETTABLEKS                       R51 R50 K93 ["ImageContainer"]
      809 MOVE                             R51 R32
      810 JUMPIFNOT                        R51 ; [+159]
      811 GETUPVAL                         R52 3
      812 GETTABLEKS                       R51 R52 K46 ["createElement"]
      814 GETUPVAL                         R52 21
      815 DUPTABLE                         R53 K131 [{"Size", "AnchorPoint", "Layout", "Position", "ZIndex"}]
      816 GETUPVAL                         R55 12
      817 CALL                             R55 0 1
      818 JUMPIFNOT                        R55 ; [+8]
      819 GETIMPORT                        R54 K114 [UDim2.new]
      821 LOADN                            R55 0
      822 LOADN                            R56 50
      823 LOADN                            R57 0
      824 LOADN                            R58 32
      825 CALL                             R54 4 1
      826 JUMP                             ; [+1]
      827 LOADNIL                          R54
      828 SETTABLEKS                       R54 R53 K53 ["Size"]
      830 GETUPVAL                         R55 12
      831 CALL                             R55 0 1
      832 JUMPIFNOT                        R55 ; [+6]
      833 GETIMPORT                        R54 K87 [Vector2.new]
      835 LOADK                            R55 K88 [0.5]
      836 LOADN                            R56 1
      837 CALL                             R54 2 1
      838 JUMP                             ; [+1]
      839 LOADNIL                          R54
      840 SETTABLEKS                       R54 R53 K83 ["AnchorPoint"]
      842 GETUPVAL                         R55 12
      843 CALL                             R55 0 1
      844 JUMPIFNOT                        R55 ; [+3]
      845 GETIMPORT                        R54 K133 [Enum.FillDirection.Horizontal]
      847 JUMP                             ; [+1]
      848 LOADNIL                          R54
      849 SETTABLEKS                       R54 R53 K49 ["Layout"]
      851 GETUPVAL                         R55 12
      852 CALL                             R55 0 1
      853 JUMPIFNOT                        R55 ; [+6]
      854 GETIMPORT                        R54 K91 [UDim2.fromScale]
      856 LOADK                            R55 K88 [0.5]
      857 LOADN                            R56 1
      858 CALL                             R54 2 1
      859 JUMP                             ; [+1]
      860 LOADNIL                          R54
      861 SETTABLEKS                       R54 R53 K84 ["Position"]
      863 NAMECALL                         R54 R40 K106 ["getNextOrder"]
      865 CALL                             R54 1 1
      866 SETTABLEKS                       R54 R53 K102 ["ZIndex"]
      868 DUPTABLE                         R54 K136 [{"PreviousButton", "NextButton"}]
      869 GETUPVAL                         R56 3
      870 GETTABLEKS                       R55 R56 K46 ["createElement"]
      872 GETUPVAL                         R56 26
      873 DUPTABLE                         R57 K139 [{"AnchorPoint", "LayoutOrder", "LeftIcon", "Position", "Style", "OnClick"}]
      874 GETIMPORT                        R58 K87 [Vector2.new]
      876 LOADN                            R59 0
      877 LOADK                            R60 K88 [0.5]
      878 CALL                             R58 2 1
      879 SETTABLEKS                       R58 R57 K83 ["AnchorPoint"]
      881 GETUPVAL                         R59 12
      882 CALL                             R59 0 1
      883 JUMPIFNOT                        R59 ; [+2]
      884 LOADN                            R58 1
      885 JUMP                             ; [+1]
      886 LOADNIL                          R58
      887 SETTABLEKS                       R58 R57 K51 ["LayoutOrder"]
      889 GETTABLEKS                       R58 R41 K137 ["LeftIcon"]
      891 SETTABLEKS                       R58 R57 K137 ["LeftIcon"]
      893 GETUPVAL                         R59 12
      894 CALL                             R59 0 1
      895 JUMPIFNOT                        R59 ; [+2]
      896 LOADNIL                          R58
      897 JUMP                             ; [+7]
      898 GETIMPORT                        R58 K114 [UDim2.new]
      900 LOADN                            R59 0
      901 LOADN                            R60 8
      902 LOADK                            R61 K88 [0.5]
      903 LOADN                            R62 0
      904 CALL                             R58 4 1
      905 SETTABLEKS                       R58 R57 K84 ["Position"]
      907 LOADK                            R58 K140 ["PreviewAreaImageRotateButton"]
      908 SETTABLEKS                       R58 R57 K54 ["Style"]
      910 NEWCLOSURE                       R58 P17
      911 CAPTURE                          VAL R31
      912 CAPTURE                          UPVAL U12
      913 CAPTURE                          VAL R29
      914 SETTABLEKS                       R58 R57 K138 ["OnClick"]
      916 CALL                             R55 2 1
      917 SETTABLEKS                       R55 R54 K134 ["PreviousButton"]
      919 GETUPVAL                         R56 3
      920 GETTABLEKS                       R55 R56 K46 ["createElement"]
      922 GETUPVAL                         R56 26
      923 DUPTABLE                         R57 K139 [{"AnchorPoint", "LayoutOrder", "LeftIcon", "Position", "Style", "OnClick"}]
      924 GETIMPORT                        R58 K87 [Vector2.new]
      926 LOADN                            R59 1
      927 LOADK                            R60 K88 [0.5]
      928 CALL                             R58 2 1
      929 SETTABLEKS                       R58 R57 K83 ["AnchorPoint"]
      931 GETUPVAL                         R59 12
      932 CALL                             R59 0 1
      933 JUMPIFNOT                        R59 ; [+2]
      934 LOADN                            R58 2
      935 JUMP                             ; [+1]
      936 LOADNIL                          R58
      937 SETTABLEKS                       R58 R57 K51 ["LayoutOrder"]
      939 GETTABLEKS                       R58 R41 K141 ["RightIcon"]
      941 SETTABLEKS                       R58 R57 K137 ["LeftIcon"]
      943 GETUPVAL                         R59 12
      944 CALL                             R59 0 1
      945 JUMPIFNOT                        R59 ; [+2]
      946 LOADNIL                          R58
      947 JUMP                             ; [+7]
      948 GETIMPORT                        R58 K114 [UDim2.new]
      950 LOADN                            R59 1
      951 LOADN                            R60 248
      952 LOADK                            R61 K88 [0.5]
      953 LOADN                            R62 0
      954 CALL                             R58 4 1
      955 SETTABLEKS                       R58 R57 K84 ["Position"]
      957 LOADK                            R58 K140 ["PreviewAreaImageRotateButton"]
      958 SETTABLEKS                       R58 R57 K54 ["Style"]
      960 NEWCLOSURE                       R58 P18
      961 CAPTURE                          VAL R30
      962 CAPTURE                          UPVAL U12
      963 CAPTURE                          VAL R29
      964 SETTABLEKS                       R58 R57 K138 ["OnClick"]
      966 CALL                             R55 2 1
      967 SETTABLEKS                       R55 R54 K135 ["NextButton"]
      969 CALL                             R51 3 1
      970 SETTABLEKS                       R51 R50 K94 ["Controls"]
      972 CALL                             R47 3 1
      973 SETTABLEKS                       R47 R46 K67 ["Display"]
      975 GETUPVAL                         R48 3
      976 GETTABLEKS                       R47 R48 K46 ["createElement"]
      978 GETUPVAL                         R48 21
      979 DUPTABLE                         R49 K142 [{"LayoutOrder", "Padding", "Size"}]
      980 LOADN                            R50 4
      981 SETTABLEKS                       R50 R49 K51 ["LayoutOrder"]
      983 LOADN                            R50 10
      984 SETTABLEKS                       R50 R49 K52 ["Padding"]
      986 GETIMPORT                        R50 K114 [UDim2.new]
      988 LOADN                            R51 1
      989 LOADN                            R52 0
      990 LOADN                            R53 0
      991 LOADN                            R54 140
      992 CALL                             R50 4 1
      993 SETTABLEKS                       R50 R49 K53 ["Size"]
      995 DUPTABLE                         R50 K144 [{"TextInput"}]
      996 GETUPVAL                         R52 3
      997 GETTABLEKS                       R51 R52 K46 ["createElement"]
      999 GETUPVAL                         R52 27
     1000 DUPTABLE                         R53 K149 [{"BottomComponent", "BottomComponentProps", "Disabled", "MultiLine", "Text", "Size"}]
     1001 GETUPVAL                         R54 28
     1002 SETTABLEKS                       R54 R53 K145 ["BottomComponent"]
     1004 DUPTABLE                         R54 K156 [{"Enabled", "OnBackButtonClick", "GenerateButtonText", "OnGenerateButtonClick", "OnRerollButtonClick", "RerollTooltipText", "QuotaTooltipText", "Size", "Style"}]
     1005 SETTABLEKS                       R35 R54 K36 ["Enabled"]
     1007 SETTABLEKS                       R37 R54 K150 ["OnBackButtonClick"]
     1009 SETTABLEKS                       R10 R54 K151 ["GenerateButtonText"]
     1011 SETTABLEKS                       R39 R54 K152 ["OnGenerateButtonClick"]
     1013 SETTABLEKS                       R38 R54 K153 ["OnRerollButtonClick"]
     1015 SETTABLEKS                       R12 R54 K154 ["RerollTooltipText"]
     1017 SETTABLEKS                       R11 R54 K155 ["QuotaTooltipText"]
     1019 GETIMPORT                        R55 K114 [UDim2.new]
     1021 LOADN                            R56 1
     1022 LOADN                            R57 0
     1023 LOADN                            R58 0
     1024 LOADN                            R59 32
     1025 CALL                             R55 4 1
     1026 SETTABLEKS                       R55 R54 K53 ["Size"]
     1028 SETTABLEKS                       R41 R54 K54 ["Style"]
     1030 SETTABLEKS                       R54 R53 K146 ["BottomComponentProps"]
     1032 LOADB                            R54 1
     1033 SETTABLEKS                       R54 R53 K147 ["Disabled"]
     1035 LOADB                            R54 1
     1036 SETTABLEKS                       R54 R53 K148 ["MultiLine"]
     1038 SETTABLEKS                       R13 R53 K71 ["Text"]
     1040 GETIMPORT                        R54 K114 [UDim2.new]
     1042 LOADN                            R55 1
     1043 LOADN                            R56 0
     1044 LOADN                            R57 0
     1045 LOADN                            R58 120
     1046 CALL                             R54 4 1
     1047 SETTABLEKS                       R54 R53 K53 ["Size"]
     1049 CALL                             R51 2 1
     1050 SETTABLEKS                       R51 R50 K143 ["TextInput"]
     1052 CALL                             R47 3 1
     1053 SETTABLEKS                       R47 R46 K68 ["PreviewActionArea"]
     1055 CALL                             R43 3 -1
     1056 CLOSEUPVALS                      R8
     1057 RETURN                           R43 -1

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
       15 GETTABLEKS                       R4 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["Framework"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K14 ["ContextServices"]
       36 GETTABLEKS                       R6 R5 K15 ["withContext"]
       38 GETTABLEKS                       R7 R5 K16 ["Analytics"]
       40 GETTABLEKS                       R8 R5 K17 ["Localization"]
       42 GETTABLEKS                       R9 R5 K18 ["Stylizer"]
       44 GETIMPORT                        R10 K9 [require]
       46 GETTABLEKS                       R13 R0 K19 ["Src"]
       48 GETTABLEKS                       R12 R13 K20 ["Components"]
       50 GETTABLEKS                       R11 R12 K21 ["TextureGenerationServiceContext"]
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
       73 GETTABLEKS                       R22 R0 K19 ["Src"]
       75 GETTABLEKS                       R21 R22 K32 ["Hooks"]
       77 GETIMPORT                        R22 K9 [require]
       79 GETTABLEKS                       R23 R21 K33 ["useSelectedMeshParts"]
       81 CALL                             R22 1 1
       82 GETTABLEKS                       R24 R4 K34 ["Style"]
       84 GETTABLEKS                       R23 R24 K18 ["Stylizer"]
       86 GETTABLEKS                       R25 R4 K35 ["Util"]
       88 GETTABLEKS                       R24 R25 K36 ["StyleModifier"]
       90 GETTABLEKS                       R26 R4 K35 ["Util"]
       92 GETTABLEKS                       R25 R26 K37 ["LayoutOrderIterator"]
       94 GETTABLEKS                       R27 R0 K19 ["Src"]
       96 GETTABLEKS                       R26 R27 K35 ["Util"]
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
      145 GETTABLEKS                       R39 R0 K19 ["Src"]
      147 GETTABLEKS                       R38 R39 K47 ["Flags"]
      149 GETTABLEKS                       R37 R38 K48 ["getFIntTextureGeneratorMaxConcurrentGenerations"]
      151 CALL                             R36 1 1
      152 GETIMPORT                        R37 K9 [require]
      154 GETTABLEKS                       R40 R0 K19 ["Src"]
      156 GETTABLEKS                       R39 R40 K47 ["Flags"]
      158 GETTABLEKS                       R38 R39 K49 ["getFFlagTextureGeneratorPreviewAnimation"]
      160 CALL                             R37 1 1
      161 GETIMPORT                        R38 K9 [require]
      163 GETTABLEKS                       R41 R0 K19 ["Src"]
      165 GETTABLEKS                       R40 R41 K47 ["Flags"]
      167 GETTABLEKS                       R39 R40 K50 ["getFFlagTextureGeneratorRerollButton"]
      169 CALL                             R38 1 1
      170 GETIMPORT                        R39 K9 [require]
      172 GETTABLEKS                       R42 R0 K19 ["Src"]
      174 GETTABLEKS                       R41 R42 K47 ["Flags"]
      176 GETTABLEKS                       R40 R41 K51 ["getFFlagTextureGeneratorBugFixes"]
      178 CALL                             R39 1 1
      179 GETIMPORT                        R40 K9 [require]
      181 GETTABLEKS                       R42 R0 K19 ["Src"]
      183 GETTABLEKS                       R41 R42 K52 ["Types"]
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
