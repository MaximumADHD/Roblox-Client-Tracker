PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K10 [{"VerticalAlignment", "Layout", "Size", "Position", "Spacing", "ZIndex"}]
       11 GETIMPORT                        R7 K13 [Enum.VerticalAlignment.Top]
       13 SETTABLEKS                       R7 R6 K4 ["VerticalAlignment"]
       15 GETIMPORT                        R7 K16 [Enum.FillDirection.Vertical]
       17 SETTABLEKS                       R7 R6 K5 ["Layout"]
       19 GETTABLEKS                       R9 R2 K17 ["PreviewWindow"]
       21 GETTABLEKS                       R8 R9 K18 ["PreviewButtonBar"]
       23 GETTABLEKS                       R7 R8 K6 ["Size"]
       25 SETTABLEKS                       R7 R6 K6 ["Size"]
       27 GETTABLEKS                       R9 R2 K17 ["PreviewWindow"]
       29 GETTABLEKS                       R8 R9 K18 ["PreviewButtonBar"]
       31 GETTABLEKS                       R7 R8 K7 ["Position"]
       33 SETTABLEKS                       R7 R6 K7 ["Position"]
       35 GETTABLEKS                       R9 R2 K17 ["PreviewWindow"]
       37 GETTABLEKS                       R8 R9 K18 ["PreviewButtonBar"]
       39 GETTABLEKS                       R7 R8 K8 ["Spacing"]
       41 SETTABLEKS                       R7 R6 K8 ["Spacing"]
       43 LOADN                            R7 4
       44 SETTABLEKS                       R7 R6 K9 ["ZIndex"]
       46 DUPTABLE                         R7 K22 [{"CameraResetButtonContainer", "InsertContextToggleButtonContainer", "RigVisualizationButtonContainer"}]
       47 GETUPVAL                         R9 0
       48 GETTABLEKS                       R8 R9 K3 ["createElement"]
       50 GETUPVAL                         R9 1
       51 DUPTABLE                         R10 K25 [{"LayoutOrder", "Size", "AnchorPoint"}]
       52 LOADN                            R11 1
       53 SETTABLEKS                       R11 R10 K23 ["LayoutOrder"]
       55 GETTABLEKS                       R12 R2 K17 ["PreviewWindow"]
       57 GETTABLEKS                       R11 R12 K26 ["OptionIconSize"]
       59 SETTABLEKS                       R11 R10 K6 ["Size"]
       61 GETIMPORT                        R11 K29 [Vector2.new]
       63 LOADN                            R12 1
       64 LOADN                            R13 0
       65 CALL                             R11 2 1
       66 SETTABLEKS                       R11 R10 K24 ["AnchorPoint"]
       68 DUPTABLE                         R11 K31 [{"CameraResetButton"}]
       69 GETUPVAL                         R13 0
       70 GETTABLEKS                       R12 R13 K3 ["createElement"]
       72 GETUPVAL                         R13 2
       73 DUPTABLE                         R14 K34 [{"OnClick", "Style"}]
       74 GETTABLEKS                       R16 R0 K0 ["props"]
       76 GETTABLEKS                       R15 R16 K35 ["ResetCameraCallback"]
       78 SETTABLEKS                       R15 R14 K32 ["OnClick"]
       80 LOADK                            R15 K36 ["RoundSubtle"]
       81 SETTABLEKS                       R15 R14 K33 ["Style"]
       83 DUPTABLE                         R15 K38 [{"Icon"}]
       84 GETUPVAL                         R17 0
       85 GETTABLEKS                       R16 R17 K3 ["createElement"]
       87 GETUPVAL                         R17 3
       88 DUPTABLE                         R18 K40 [{"Image"}]
       89 GETTABLEKS                       R20 R2 K17 ["PreviewWindow"]
       91 GETTABLEKS                       R19 R20 K41 ["ResetCameraImage"]
       93 SETTABLEKS                       R19 R18 K39 ["Image"]
       95 DUPTABLE                         R19 K43 [{"Tooltip"}]
       96 GETUPVAL                         R21 0
       97 GETTABLEKS                       R20 R21 K3 ["createElement"]
       99 GETUPVAL                         R21 4
      100 DUPTABLE                         R22 K45 [{"Text"}]
      101 GETUPVAL                         R23 5
      102 MOVE                             R24 R3
      103 LOADK                            R25 K46 ["PreviewTooltip"]
      104 LOADK                            R26 K47 ["ResetCam"]
      105 CALL                             R23 3 1
      106 SETTABLEKS                       R23 R22 K44 ["Text"]
      108 CALL                             R20 2 1
      109 SETTABLEKS                       R20 R19 K42 ["Tooltip"]
      111 CALL                             R16 3 1
      112 SETTABLEKS                       R16 R15 K37 ["Icon"]
      114 CALL                             R12 3 1
      115 SETTABLEKS                       R12 R11 K30 ["CameraResetButton"]
      117 CALL                             R8 3 1
      118 SETTABLEKS                       R8 R7 K19 ["CameraResetButtonContainer"]
      120 GETTABLEKS                       R9 R1 K48 ["ShouldShowWorkspaceToggle"]
      122 JUMPIFNOT                        R9 ; [+72]
      123 GETUPVAL                         R9 0
      124 GETTABLEKS                       R8 R9 K3 ["createElement"]
      126 GETUPVAL                         R9 1
      127 DUPTABLE                         R10 K25 [{"LayoutOrder", "Size", "AnchorPoint"}]
      128 LOADN                            R11 2
      129 SETTABLEKS                       R11 R10 K23 ["LayoutOrder"]
      131 GETTABLEKS                       R12 R2 K17 ["PreviewWindow"]
      133 GETTABLEKS                       R11 R12 K26 ["OptionIconSize"]
      135 SETTABLEKS                       R11 R10 K6 ["Size"]
      137 GETIMPORT                        R11 K29 [Vector2.new]
      139 LOADN                            R12 1
      140 LOADN                            R13 0
      141 CALL                             R11 2 1
      142 SETTABLEKS                       R11 R10 K24 ["AnchorPoint"]
      144 DUPTABLE                         R11 K50 [{"InsertContextToggleButton"}]
      145 GETUPVAL                         R13 0
      146 GETTABLEKS                       R12 R13 K3 ["createElement"]
      148 GETUPVAL                         R13 2
      149 DUPTABLE                         R14 K34 [{"OnClick", "Style"}]
      150 GETTABLEKS                       R16 R0 K0 ["props"]
      152 GETTABLEKS                       R15 R16 K51 ["InsertContextCallback"]
      154 SETTABLEKS                       R15 R14 K32 ["OnClick"]
      156 LOADK                            R15 K36 ["RoundSubtle"]
      157 SETTABLEKS                       R15 R14 K33 ["Style"]
      159 DUPTABLE                         R15 K38 [{"Icon"}]
      160 GETUPVAL                         R17 0
      161 GETTABLEKS                       R16 R17 K3 ["createElement"]
      163 GETUPVAL                         R17 3
      164 DUPTABLE                         R18 K40 [{"Image"}]
      165 GETTABLEKS                       R20 R2 K17 ["PreviewWindow"]
      167 GETTABLEKS                       R19 R20 K52 ["ShowWorkspaceImage"]
      169 SETTABLEKS                       R19 R18 K39 ["Image"]
      171 DUPTABLE                         R19 K43 [{"Tooltip"}]
      172 GETUPVAL                         R21 0
      173 GETTABLEKS                       R20 R21 K3 ["createElement"]
      175 GETUPVAL                         R21 4
      176 DUPTABLE                         R22 K45 [{"Text"}]
      177 GETUPVAL                         R23 5
      178 MOVE                             R24 R3
      179 LOADK                            R25 K46 ["PreviewTooltip"]
      180 LOADK                            R26 K53 ["ToggleInsertContext"]
      181 CALL                             R23 3 1
      182 SETTABLEKS                       R23 R22 K44 ["Text"]
      184 CALL                             R20 2 1
      185 SETTABLEKS                       R20 R19 K42 ["Tooltip"]
      187 CALL                             R16 3 1
      188 SETTABLEKS                       R16 R15 K37 ["Icon"]
      190 CALL                             R12 3 1
      191 SETTABLEKS                       R12 R11 K49 ["InsertContextToggleButton"]
      193 CALL                             R8 3 1
      194 JUMP                             ; [+1]
      195 LOADNIL                          R8
      196 SETTABLEKS                       R8 R7 K20 ["InsertContextToggleButtonContainer"]
      198 GETTABLEKS                       R9 R1 K54 ["ShouldShowRigVisualizationToggle"]
      200 JUMPIFNOT                        R9 ; [+72]
      201 GETUPVAL                         R9 0
      202 GETTABLEKS                       R8 R9 K3 ["createElement"]
      204 GETUPVAL                         R9 1
      205 DUPTABLE                         R10 K25 [{"LayoutOrder", "Size", "AnchorPoint"}]
      206 LOADN                            R11 3
      207 SETTABLEKS                       R11 R10 K23 ["LayoutOrder"]
      209 GETTABLEKS                       R12 R2 K17 ["PreviewWindow"]
      211 GETTABLEKS                       R11 R12 K26 ["OptionIconSize"]
      213 SETTABLEKS                       R11 R10 K6 ["Size"]
      215 GETIMPORT                        R11 K29 [Vector2.new]
      217 LOADN                            R12 1
      218 LOADN                            R13 0
      219 CALL                             R11 2 1
      220 SETTABLEKS                       R11 R10 K24 ["AnchorPoint"]
      222 DUPTABLE                         R11 K56 [{"RigVisualizationButton"}]
      223 GETUPVAL                         R13 0
      224 GETTABLEKS                       R12 R13 K3 ["createElement"]
      226 GETUPVAL                         R13 2
      227 DUPTABLE                         R14 K34 [{"OnClick", "Style"}]
      228 GETTABLEKS                       R16 R0 K0 ["props"]
      230 GETTABLEKS                       R15 R16 K57 ["VisualizeRigCallback"]
      232 SETTABLEKS                       R15 R14 K32 ["OnClick"]
      234 LOADK                            R15 K36 ["RoundSubtle"]
      235 SETTABLEKS                       R15 R14 K33 ["Style"]
      237 DUPTABLE                         R15 K38 [{"Icon"}]
      238 GETUPVAL                         R17 0
      239 GETTABLEKS                       R16 R17 K3 ["createElement"]
      241 GETUPVAL                         R17 3
      242 DUPTABLE                         R18 K40 [{"Image"}]
      243 GETTABLEKS                       R20 R2 K17 ["PreviewWindow"]
      245 GETTABLEKS                       R19 R20 K58 ["ShowRigVisualizationImage"]
      247 SETTABLEKS                       R19 R18 K39 ["Image"]
      249 DUPTABLE                         R19 K43 [{"Tooltip"}]
      250 GETUPVAL                         R21 0
      251 GETTABLEKS                       R20 R21 K3 ["createElement"]
      253 GETUPVAL                         R21 4
      254 DUPTABLE                         R22 K45 [{"Text"}]
      255 GETUPVAL                         R23 5
      256 MOVE                             R24 R3
      257 LOADK                            R25 K46 ["PreviewTooltip"]
      258 LOADK                            R26 K59 ["RigVisualization"]
      259 CALL                             R23 3 1
      260 SETTABLEKS                       R23 R22 K44 ["Text"]
      262 CALL                             R20 2 1
      263 SETTABLEKS                       R20 R19 K42 ["Tooltip"]
      265 CALL                             R16 3 1
      266 SETTABLEKS                       R16 R15 K37 ["Icon"]
      268 CALL                             R12 3 1
      269 SETTABLEKS                       R12 R11 K55 ["RigVisualizationButton"]
      271 CALL                             R8 3 1
      272 JUMP                             ; [+1]
      273 LOADNIL                          R8
      274 SETTABLEKS                       R8 R7 K21 ["RigVisualizationButtonContainer"]
      276 CALL                             R4 3 -1
      277 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["RoactCompat"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R6 R5 K12 ["Pane"]
       29 GETTABLEKS                       R7 R5 K13 ["Button"]
       31 GETTABLEKS                       R8 R5 K14 ["Image"]
       33 GETTABLEKS                       R9 R5 K15 ["Tooltip"]
       35 GETTABLEKS                       R10 R3 K16 ["Localization"]
       37 GETTABLEKS                       R12 R2 K17 ["Style"]
       39 GETTABLEKS                       R11 R12 K18 ["Stylizer"]
       41 GETIMPORT                        R12 K5 [require]
       43 GETTABLEKS                       R15 R0 K19 ["Src"]
       45 GETTABLEKS                       R14 R15 K20 ["Utility"]
       47 GETTABLEKS                       R13 R14 K21 ["GetLocalizedString"]
       49 CALL                             R12 1 1
       50 GETTABLEKS                       R13 R1 K22 ["PureComponent"]
       52 LOADK                            R15 K23 ["PreviewControls"]
       53 NAMECALL                         R13 R13 K24 ["extend"]
       55 CALL                             R13 2 1
       56 DUPCLOSURE                       R14 K25 [PROTO_0]
       57 SETTABLEKS                       R14 R13 K26 ["init"]
       59 DUPCLOSURE                       R14 K27 [PROTO_1]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R12
       66 SETTABLEKS                       R14 R13 K28 ["render"]
       68 MOVE                             R14 R4
       69 DUPTABLE                         R15 K29 [{"Localization", "Stylizer"}]
       70 SETTABLEKS                       R10 R15 K16 ["Localization"]
       72 SETTABLEKS                       R11 R15 K18 ["Stylizer"]
       74 CALL                             R14 1 1
       75 MOVE                             R15 R13
       76 CALL                             R14 1 1
       77 MOVE                             R13 R14
       78 RETURN                           R13 1
