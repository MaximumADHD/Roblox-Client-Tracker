PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getThemeName"]
        3 CALL                             R0 0 1
        4 JUMPIFEQKS                       R0 K1 ["Dark"] ; [+3]
        6 JUMPIFNOTEQKS                    R0 K2 ["Default"] ; [+5]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K3 ["RESET_CAM_DARK"]
       11 RETURN                           R1 1
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R1 R2 K4 ["RESET_CAM_LIGHT"]
       15 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETIMPORT                        R1 K2 [string.match]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K3 ["%d+$"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1
        7 LOADK                            R1 K4 [""]
        8 RETURN                           R1 1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 LOADK                            R3 K0 ["WorldModel"]
        5 NAMECALL                         R1 R0 K1 ["IsA"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+1]
        9 RETURN                           R0 1
       10 GETIMPORT                        R1 K4 [Instance.new]
       12 LOADK                            R2 K0 ["WorldModel"]
       13 CALL                             R1 1 1
       14 SETTABLEKS                       R1 R0 K5 ["Parent"]
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["Model"]
        5 JUMPIFNOTEQKNIL                  R1 ; [+3]
        7 LOADNIL                          R0
        8 JUMP                             ; [+14]
        9 LOADK                            R4 K2 ["WorldModel"]
       10 NAMECALL                         R2 R1 K3 ["IsA"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+2]
       14 MOVE                             R0 R1
       15 JUMP                             ; [+7]
       16 GETIMPORT                        R2 K6 [Instance.new]
       18 LOADK                            R3 K2 ["WorldModel"]
       19 CALL                             R2 1 1
       20 SETTABLEKS                       R2 R1 K7 ["Parent"]
       22 MOVE                             R0 R2
       23 NAMECALL                         R1 R0 K8 ["GetExtentsSize"]
       25 CALL                             R1 1 1
       26 GETTABLEKS                       R3 R1 K10 ["Magnitude"]
       28 MULK                             R2 R3 K9 [0.8]
       29 LOADK                            R4 K11 [{-1, 1, -1}]
       30 GETTABLEKS                       R3 R4 K12 ["Unit"]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R4 R5 K13 ["camera"]
       35 GETIMPORT                        R5 K15 [CFrame.new]
       37 CALL                             R5 0 1
       38 SETTABLEKS                       R5 R4 K16 ["Focus"]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R4 R5 K13 ["camera"]
       43 GETIMPORT                        R5 K15 [CFrame.new]
       45 MUL                              R6 R2 R3
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R9 R10 K13 ["camera"]
       49 GETTABLEKS                       R8 R9 K16 ["Focus"]
       51 GETTABLEKS                       R7 R8 K17 ["Position"]
       53 CALL                             R5 2 1
       54 SETTABLEKS                       R5 R4 K14 ["CFrame"]
       56 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Loaded"]
        5 LOADB                            R2 0
        6 GETUPVAL                         R3 1
        7 NAMECALL                         R0 R0 K2 ["Fire"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R1 ; [+76]
        1 GETIMPORT                        R4 K1 [game]
        3 NAMECALL                         R2 R1 K2 ["IsDescendantOf"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+70]
        7 GETUPVAL                         R2 0
        8 NAMECALL                         R2 R2 K3 ["Disconnect"]
       10 CALL                             R2 1 0
       11 LOADNIL                          R2
       12 GETUPVAL                         R3 1
       13 LOADK                            R5 K4 ["Humanoid"]
       14 LOADB                            R6 1
       15 NAMECALL                         R3 R3 K5 ["FindFirstChildWhichIsA"]
       17 CALL                             R3 3 1
       18 JUMPIFNOT                        R3 ; [+2]
       19 MOVE                             R2 R3
       20 JUMP                             ; [+1]
       21 RETURN                           R0 0
       22 LOADK                            R6 K6 ["Animator"]
       23 LOADB                            R7 1
       24 NAMECALL                         R4 R2 K5 ["FindFirstChildWhichIsA"]
       26 CALL                             R4 3 1
       27 JUMPIF                           R4 ; [+7]
       28 GETIMPORT                        R5 K9 [Instance.new]
       30 LOADK                            R6 K6 ["Animator"]
       31 CALL                             R5 1 1
       32 MOVE                             R4 R5
       33 SETTABLEKS                       R2 R4 K10 ["Parent"]
       35 GETIMPORT                        R5 K9 [Instance.new]
       37 LOADK                            R6 K11 ["Animation"]
       38 CALL                             R5 1 1
       39 GETUPVAL                         R6 2
       40 SETTABLEKS                       R6 R5 K12 ["AnimationId"]
       42 SETTABLEKS                       R2 R5 K10 ["Parent"]
       44 MOVE                             R8 R5
       45 NAMECALL                         R6 R4 K13 ["LoadAnimation"]
       47 CALL                             R6 2 1
       48 LOADB                            R7 1
       49 SETTABLEKS                       R7 R6 K14 ["Looped"]
       51 GETUPVAL                         R9 3
       52 GETTABLEKS                       R8 R9 K15 ["props"]
       54 GETTABLEKS                       R7 R8 K16 ["Loaded"]
       56 JUMPIFNOT                        R7 ; [+11]
       57 GETUPVAL                         R9 3
       58 GETTABLEKS                       R8 R9 K15 ["props"]
       60 GETTABLEKS                       R7 R8 K16 ["Loaded"]
       62 LOADB                            R9 1
       63 MOVE                             R10 R6
       64 MOVE                             R11 R4
       65 NAMECALL                         R7 R7 K17 ["Fire"]
       67 CALL                             R7 4 0
       68 GETUPVAL                         R8 1
       69 GETTABLEKS                       R7 R8 K18 ["Destroying"]
       71 NEWCLOSURE                       R9 P0
       72 CAPTURE                          UPVAL U3
       73 CAPTURE                          VAL R6
       74 NAMECALL                         R7 R7 K19 ["Connect"]
       76 CALL                             R7 2 0
       77 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["AnimationId"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 LOADNIL                          R2
        8 GETTABLEKS                       R3 R0 K2 ["AncestryChanged"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          REF R2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U0
       15 NAMECALL                         R3 R3 K3 ["Connect"]
       17 CALL                             R3 2 1
       18 MOVE                             R2 R3
       19 CLOSEUPVALS                      R2
       20 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Camera"]
        3 CALL                             R1 1 1
        4 SETTABLEKS                       R1 R0 K4 ["camera"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K5 ["resetCamera"]
       10 LOADB                            R1 0
       11 SETTABLEKS                       R1 R0 K6 ["clone"]
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K7 ["loadAnimation"]
       17 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["AnimationId"]
        2 GETTABLEKS                       R3 R1 K1 ["animationId"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+7]
        6 GETTABLEKS                       R2 R0 K2 ["Model"]
        8 GETTABLEKS                       R3 R1 K3 ["refModel"]
       10 JUMPIFEQ                         R2 R3 ; [+32]
       12 DUPTABLE                         R2 K5 [{"animationId", "refModel", "model"}]
       13 GETTABLEKS                       R3 R0 K0 ["AnimationId"]
       15 SETTABLEKS                       R3 R2 K1 ["animationId"]
       17 GETTABLEKS                       R4 R0 K2 ["Model"]
       19 JUMPIFNOT                        R4 ; [+3]
       20 GETTABLEKS                       R3 R0 K2 ["Model"]
       22 JUMP                             ; [+3]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K6 ["None"]
       26 SETTABLEKS                       R3 R2 K3 ["refModel"]
       28 GETTABLEKS                       R4 R0 K2 ["Model"]
       30 JUMPIFNOT                        R4 ; [+6]
       31 GETTABLEKS                       R3 R0 K2 ["Model"]
       33 NAMECALL                         R3 R3 K7 ["Clone"]
       35 CALL                             R3 1 1
       36 JUMP                             ; [+3]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R3 R4 K6 ["None"]
       40 SETTABLEKS                       R3 R2 K4 ["model"]
       42 RETURN                           R2 1
       43 LOADNIL                          R2
       44 RETURN                           R2 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Size"]
        4 GETTABLEKS                       R3 R1 K2 ["Position"]
        6 GETTABLEKS                       R5 R0 K3 ["state"]
        8 GETTABLEKS                       R4 R5 K4 ["model"]
       10 JUMPIF                           R4 ; [+4]
       11 GETIMPORT                        R4 K7 [Instance.new]
       13 LOADK                            R5 K8 ["Model"]
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R5 R1 K9 ["Label"]
       17 GETTABLEKS                       R6 R1 K10 ["AnimationId"]
       19 GETTABLEKS                       R7 R1 K11 ["Stylizer"]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R8 R9 K6 ["new"]
       24 CALL                             R8 0 1
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R9 R10 K12 ["createElement"]
       28 GETUPVAL                         R10 2
       29 DUPTABLE                         R11 K18 [{"Size", "AutomaticSize", "Position", "Padding", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
       30 GETIMPORT                        R12 K20 [UDim2.new]
       32 GETTABLEKS                       R14 R2 K21 ["X"]
       34 GETTABLEKS                       R13 R14 K22 ["Scale"]
       36 GETTABLEKS                       R15 R2 K21 ["X"]
       38 GETTABLEKS                       R14 R15 K23 ["Offset"]
       40 LOADN                            R15 0
       41 LOADN                            R16 0
       42 CALL                             R12 4 1
       43 SETTABLEKS                       R12 R11 K1 ["Size"]
       45 GETIMPORT                        R12 K26 [Enum.AutomaticSize.Y]
       47 SETTABLEKS                       R12 R11 K13 ["AutomaticSize"]
       49 SETTABLEKS                       R3 R11 K2 ["Position"]
       51 GETTABLEKS                       R12 R7 K14 ["Padding"]
       53 SETTABLEKS                       R12 R11 K14 ["Padding"]
       55 GETIMPORT                        R12 K29 [Enum.FillDirection.Vertical]
       57 SETTABLEKS                       R12 R11 K15 ["Layout"]
       59 GETIMPORT                        R12 K31 [Enum.HorizontalAlignment.Left]
       61 SETTABLEKS                       R12 R11 K16 ["HorizontalAlignment"]
       63 GETIMPORT                        R12 K33 [Enum.VerticalAlignment.Top]
       65 SETTABLEKS                       R12 R11 K17 ["VerticalAlignment"]
       67 DUPTABLE                         R12 K36 [{"Header", "Preview"}]
       68 GETUPVAL                         R14 1
       69 GETTABLEKS                       R13 R14 K12 ["createElement"]
       71 GETUPVAL                         R14 2
       72 DUPTABLE                         R15 K38 [{"LayoutOrder", "Size", "AutomaticSize", "Padding"}]
       73 NAMECALL                         R16 R8 K39 ["getNextOrder"]
       75 CALL                             R16 1 1
       76 SETTABLEKS                       R16 R15 K37 ["LayoutOrder"]
       78 GETIMPORT                        R16 K41 [UDim2.fromScale]
       80 LOADN                            R17 1
       81 LOADN                            R18 0
       82 CALL                             R16 2 1
       83 SETTABLEKS                       R16 R15 K1 ["Size"]
       85 GETIMPORT                        R16 K26 [Enum.AutomaticSize.Y]
       87 SETTABLEKS                       R16 R15 K13 ["AutomaticSize"]
       89 GETTABLEKS                       R16 R7 K14 ["Padding"]
       91 SETTABLEKS                       R16 R15 K14 ["Padding"]
       93 DUPTABLE                         R16 K43 [{"Label", "AssetId"}]
       94 GETUPVAL                         R18 1
       95 GETTABLEKS                       R17 R18 K12 ["createElement"]
       97 GETUPVAL                         R18 3
       98 DUPTABLE                         R19 K47 [{"Text", "Style", "Size", "TextXAlignment", "AutomaticSize"}]
       99 SETTABLEKS                       R5 R19 K44 ["Text"]
      101 LOADK                            R20 K48 ["Bold"]
      102 SETTABLEKS                       R20 R19 K45 ["Style"]
      104 GETIMPORT                        R20 K41 [UDim2.fromScale]
      106 LOADN                            R21 1
      107 LOADN                            R22 0
      108 CALL                             R20 2 1
      109 SETTABLEKS                       R20 R19 K1 ["Size"]
      111 GETIMPORT                        R20 K49 [Enum.TextXAlignment.Left]
      113 SETTABLEKS                       R20 R19 K46 ["TextXAlignment"]
      115 GETIMPORT                        R20 K51 [Enum.AutomaticSize.XY]
      117 SETTABLEKS                       R20 R19 K13 ["AutomaticSize"]
      119 CALL                             R17 2 1
      120 SETTABLEKS                       R17 R16 K9 ["Label"]
      122 GETUPVAL                         R18 1
      123 GETTABLEKS                       R17 R18 K12 ["createElement"]
      125 GETUPVAL                         R18 3
      126 DUPTABLE                         R19 K47 [{"Text", "Style", "Size", "TextXAlignment", "AutomaticSize"}]
      127 JUMPIFNOT                        R6 ; [+6]
      128 GETIMPORT                        R20 K54 [string.match]
      130 MOVE                             R21 R6
      131 LOADK                            R22 K55 ["%d+$"]
      132 CALL                             R20 2 1
      133 JUMP                             ; [+1]
      134 LOADK                            R20 K56 [""]
      135 SETTABLEKS                       R20 R19 K44 ["Text"]
      137 LOADK                            R20 K57 ["Body"]
      138 SETTABLEKS                       R20 R19 K45 ["Style"]
      140 GETIMPORT                        R20 K41 [UDim2.fromScale]
      142 LOADN                            R21 1
      143 LOADN                            R22 0
      144 CALL                             R20 2 1
      145 SETTABLEKS                       R20 R19 K1 ["Size"]
      147 GETIMPORT                        R20 K59 [Enum.TextXAlignment.Right]
      149 SETTABLEKS                       R20 R19 K46 ["TextXAlignment"]
      151 GETIMPORT                        R20 K51 [Enum.AutomaticSize.XY]
      153 SETTABLEKS                       R20 R19 K13 ["AutomaticSize"]
      155 CALL                             R17 2 1
      156 SETTABLEKS                       R17 R16 K42 ["AssetId"]
      158 CALL                             R13 3 1
      159 SETTABLEKS                       R13 R12 K34 ["Header"]
      161 GETUPVAL                         R14 1
      162 GETTABLEKS                       R13 R14 K12 ["createElement"]
      164 GETUPVAL                         R14 2
      165 DUPTABLE                         R15 K62 [{"LayoutOrder", "Style", "Padding", "BackgroundColor3", "Size", "SizeConstraint"}]
      166 NAMECALL                         R16 R8 K39 ["getNextOrder"]
      168 CALL                             R16 1 1
      169 SETTABLEKS                       R16 R15 K37 ["LayoutOrder"]
      171 LOADK                            R16 K63 ["RoundBox"]
      172 SETTABLEKS                       R16 R15 K45 ["Style"]
      174 GETTABLEKS                       R16 R7 K14 ["Padding"]
      176 SETTABLEKS                       R16 R15 K14 ["Padding"]
      178 GETTABLEKS                       R16 R7 K64 ["BackgroundColor"]
      180 SETTABLEKS                       R16 R15 K60 ["BackgroundColor3"]
      182 GETIMPORT                        R16 K41 [UDim2.fromScale]
      184 LOADN                            R17 1
      185 LOADN                            R18 1
      186 CALL                             R16 2 1
      187 SETTABLEKS                       R16 R15 K1 ["Size"]
      189 GETIMPORT                        R16 K66 [Enum.SizeConstraint.RelativeXX]
      191 SETTABLEKS                       R16 R15 K61 ["SizeConstraint"]
      193 DUPTABLE                         R16 K69 [{"PreviewRender", "CameraResetButton"}]
      194 GETUPVAL                         R18 1
      195 GETTABLEKS                       R17 R18 K12 ["createElement"]
      197 GETUPVAL                         R18 4
      198 DUPTABLE                         R19 K73 [{"Camera", "Model", "FocusDirection", "OnViewModelLoaded"}]
      199 GETTABLEKS                       R20 R0 K74 ["camera"]
      201 SETTABLEKS                       R20 R19 K70 ["Camera"]
      203 SETTABLEKS                       R4 R19 K8 ["Model"]
      205 LOADK                            R20 K75 [{-1, 1, -1}]
      206 SETTABLEKS                       R20 R19 K71 ["FocusDirection"]
      208 JUMPIFNOT                        R6 ; [+3]
      209 GETTABLEKS                       R20 R0 K76 ["loadAnimation"]
      211 JUMP                             ; [+1]
      212 LOADNIL                          R20
      213 SETTABLEKS                       R20 R19 K72 ["OnViewModelLoaded"]
      215 CALL                             R17 2 1
      216 SETTABLEKS                       R17 R16 K67 ["PreviewRender"]
      218 GETUPVAL                         R18 1
      219 GETTABLEKS                       R17 R18 K12 ["createElement"]
      221 GETUPVAL                         R18 5
      222 DUPTABLE                         R19 K79 [{"OnClick", "Style", "Size", "AnchorPoint", "Position"}]
      223 GETTABLEKS                       R20 R0 K80 ["resetCamera"]
      225 SETTABLEKS                       R20 R19 K77 ["OnClick"]
      227 LOADK                            R20 K81 ["RoundSubtle"]
      228 SETTABLEKS                       R20 R19 K45 ["Style"]
      230 GETTABLEKS                       R20 R7 K82 ["ResetButtonSize"]
      232 SETTABLEKS                       R20 R19 K1 ["Size"]
      234 GETIMPORT                        R20 K84 [Vector2.new]
      236 LOADN                            R21 1
      237 LOADN                            R22 0
      238 CALL                             R20 2 1
      239 SETTABLEKS                       R20 R19 K78 ["AnchorPoint"]
      241 GETIMPORT                        R20 K41 [UDim2.fromScale]
      243 LOADN                            R21 1
      244 LOADN                            R22 0
      245 CALL                             R20 2 1
      246 SETTABLEKS                       R20 R19 K2 ["Position"]
      248 DUPTABLE                         R20 K87 [{"Icon", "Tooltip"}]
      249 GETUPVAL                         R22 1
      250 GETTABLEKS                       R21 R22 K12 ["createElement"]
      252 GETUPVAL                         R22 6
      253 DUPTABLE                         R23 K89 [{"Image"}]
      254 GETUPVAL                         R26 7
      255 GETTABLEKS                       R25 R26 K90 ["getThemeName"]
      257 CALL                             R25 0 1
      258 JUMPIFEQKS                       R25 K91 ["Dark"] ; [+3]
      260 JUMPIFNOTEQKS                    R25 K92 ["Default"] ; [+5]
      262 GETUPVAL                         R26 8
      263 GETTABLEKS                       R24 R26 K93 ["RESET_CAM_DARK"]
      265 JUMP                             ; [+4]
      266 GETUPVAL                         R26 8
      267 GETTABLEKS                       R24 R26 K94 ["RESET_CAM_LIGHT"]
      269 JUMP                             ; [0]
      270 SETTABLEKS                       R24 R23 K88 ["Image"]
      272 CALL                             R21 2 1
      273 SETTABLEKS                       R21 R20 K85 ["Icon"]
      275 GETUPVAL                         R22 1
      276 GETTABLEKS                       R21 R22 K12 ["createElement"]
      278 GETUPVAL                         R22 9
      279 DUPTABLE                         R23 K95 [{"Text"}]
      280 LOADK                            R24 K96 ["Reset Camera"]
      281 SETTABLEKS                       R24 R23 K44 ["Text"]
      283 CALL                             R21 2 1
      284 SETTABLEKS                       R21 R20 K86 ["Tooltip"]
      286 CALL                             R17 3 1
      287 SETTABLEKS                       R17 R16 K68 ["CameraResetButton"]
      289 CALL                             R13 3 1
      290 SETTABLEKS                       R13 R12 K35 ["Preview"]
      292 CALL                             R9 3 -1
      293 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R3 K11 ["Analytics"]
       27 GETTABLEKS                       R6 R3 K12 ["Localization"]
       29 GETTABLEKS                       R7 R3 K13 ["Plugin"]
       31 GETTABLEKS                       R9 R2 K14 ["Style"]
       33 GETTABLEKS                       R8 R9 K15 ["Stylizer"]
       35 GETTABLEKS                       R10 R2 K14 ["Style"]
       37 GETTABLEKS                       R9 R10 K16 ["ThemeSwitcher"]
       39 GETTABLEKS                       R10 R2 K17 ["UI"]
       41 GETTABLEKS                       R11 R10 K18 ["Pane"]
       43 GETTABLEKS                       R12 R10 K19 ["AssetRenderModel"]
       45 GETTABLEKS                       R13 R10 K20 ["Button"]
       47 GETTABLEKS                       R14 R10 K21 ["Image"]
       49 GETTABLEKS                       R15 R10 K22 ["TextLabel"]
       51 GETTABLEKS                       R16 R10 K23 ["Tooltip"]
       53 GETTABLEKS                       R18 R2 K24 ["Util"]
       55 GETTABLEKS                       R17 R18 K25 ["LayoutOrderIterator"]
       57 GETIMPORT                        R18 K5 [require]
       59 GETTABLEKS                       R21 R0 K26 ["Src"]
       61 GETTABLEKS                       R20 R21 K27 ["Resources"]
       63 GETTABLEKS                       R19 R20 K28 ["Images"]
       65 CALL                             R18 1 1
       66 GETTABLEKS                       R19 R1 K29 ["PureComponent"]
       68 LOADK                            R21 K30 ["PreviewModelComponent"]
       69 NAMECALL                         R19 R19 K31 ["extend"]
       71 CALL                             R19 2 1
       72 DUPCLOSURE                       R20 K32 [PROTO_0]
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R18
       75 DUPCLOSURE                       R21 K33 [PROTO_1]
       76 GETIMPORT                        R22 K36 [Instance.new]
       78 LOADK                            R23 K37 ["WorldModel"]
       79 CALL                             R22 1 1
       80 GETIMPORT                        R23 K39 [game]
       82 LOADK                            R25 K40 ["AsyncRenamesUsedInLuaApps"]
       83 NAMECALL                         R23 R23 K41 ["GetEngineFeature"]
       85 CALL                             R23 2 1
       86 JUMPIFNOT                        R23 ; [+18]
       87 GETIMPORT                        R23 K39 [game]
       89 LOADK                            R25 K42 ["Players"]
       90 NAMECALL                         R23 R23 K43 ["GetService"]
       92 CALL                             R23 2 1
       93 GETIMPORT                        R25 K36 [Instance.new]
       95 LOADK                            R26 K44 ["HumanoidDescription"]
       96 CALL                             R25 1 1
       97 GETIMPORT                        R26 K48 [Enum.HumanoidRigType.R6]
       99 NAMECALL                         R23 R23 K49 ["CreateHumanoidModelFromDescriptionAsync"]
      101 CALL                             R23 3 1
      102 SETTABLEKS                       R22 R23 K50 ["Parent"]
      104 JUMP                             ; [+17]
      105 GETIMPORT                        R23 K39 [game]
      107 LOADK                            R25 K42 ["Players"]
      108 NAMECALL                         R23 R23 K43 ["GetService"]
      110 CALL                             R23 2 1
      111 GETIMPORT                        R25 K36 [Instance.new]
      113 LOADK                            R26 K44 ["HumanoidDescription"]
      114 CALL                             R25 1 1
      115 GETIMPORT                        R26 K48 [Enum.HumanoidRigType.R6]
      117 NAMECALL                         R23 R23 K51 ["CreateHumanoidModelFromDescription"]
      119 CALL                             R23 3 1
      120 SETTABLEKS                       R22 R23 K50 ["Parent"]
      122 DUPCLOSURE                       R23 K52 [PROTO_2]
      123 DUPCLOSURE                       R24 K53 [PROTO_7]
      124 SETTABLEKS                       R24 R19 K54 ["init"]
      126 DUPCLOSURE                       R24 K55 [PROTO_8]
      127 CAPTURE                          VAL R1
      128 SETTABLEKS                       R24 R19 K56 ["getDerivedStateFromProps"]
      130 DUPCLOSURE                       R24 K57 [PROTO_9]
      131 CAPTURE                          VAL R17
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R18
      140 CAPTURE                          VAL R16
      141 SETTABLEKS                       R24 R19 K58 ["render"]
      143 MOVE                             R24 R4
      144 DUPTABLE                         R25 K59 [{"Analytics", "Localization", "Stylizer", "Plugin"}]
      145 SETTABLEKS                       R5 R25 K11 ["Analytics"]
      147 SETTABLEKS                       R6 R25 K12 ["Localization"]
      149 SETTABLEKS                       R8 R25 K15 ["Stylizer"]
      151 SETTABLEKS                       R7 R25 K13 ["Plugin"]
      153 CALL                             R24 1 1
      154 MOVE                             R25 R19
      155 CALL                             R24 1 1
      156 MOVE                             R19 R24
      157 RETURN                           R19 1
