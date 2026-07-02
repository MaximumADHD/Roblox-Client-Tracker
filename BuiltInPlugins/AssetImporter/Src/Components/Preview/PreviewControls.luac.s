PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K11 [{["VerticalAlignment"], ["Layout"], ["Size"], ["Position"], ["Spacing"], ["ZIndex"] = 4}]
       11 GETIMPORT                        R7 K14 [Enum.VerticalAlignment.Top]
       13 SETTABLEKS                       R7 R6 K4 ["VerticalAlignment"]
       15 GETIMPORT                        R7 K17 [Enum.FillDirection.Vertical]
       17 SETTABLEKS                       R7 R6 K5 ["Layout"]
       19 GETTABLEKS                       R7 R2 K18 ["PreviewWindow"]
       21 GETTABLEKS                       R7 R7 K19 ["PreviewButtonBar"]
       23 GETTABLEKS                       R7 R7 K6 ["Size"]
       25 SETTABLEKS                       R7 R6 K6 ["Size"]
       27 GETTABLEKS                       R7 R2 K18 ["PreviewWindow"]
       29 GETTABLEKS                       R7 R7 K19 ["PreviewButtonBar"]
       31 GETTABLEKS                       R7 R7 K7 ["Position"]
       33 SETTABLEKS                       R7 R6 K7 ["Position"]
       35 GETTABLEKS                       R7 R2 K18 ["PreviewWindow"]
       37 GETTABLEKS                       R7 R7 K19 ["PreviewButtonBar"]
       39 GETTABLEKS                       R7 R7 K8 ["Spacing"]
       41 SETTABLEKS                       R7 R6 K8 ["Spacing"]
       43 DUPTABLE                         R7 K23 [{"CameraResetButtonContainer", "InsertContextToggleButtonContainer", "RigVisualizationButtonContainer"}]
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R8 R8 K3 ["createElement"]
       47 GETUPVAL                         R9 1
       48 DUPTABLE                         R10 K27 [{["LayoutOrder"] = 1, ["Size"], ["AnchorPoint"]}]
       49 GETTABLEKS                       R11 R2 K18 ["PreviewWindow"]
       51 GETTABLEKS                       R11 R11 K28 ["OptionIconSize"]
       53 SETTABLEKS                       R11 R10 K6 ["Size"]
       55 GETIMPORT                        R11 K31 [Vector2.new]
       57 LOADN                            R12 1
       58 LOADN                            R13 0
       59 CALL                             R11 2 1
       60 SETTABLEKS                       R11 R10 K26 ["AnchorPoint"]
       62 DUPTABLE                         R11 K33 [{"CameraResetButton"}]
       63 GETUPVAL                         R12 0
       64 GETTABLEKS                       R12 R12 K3 ["createElement"]
       66 GETUPVAL                         R13 2
       67 DUPTABLE                         R14 K37 [{["OnClick"], ["Style"] = "RoundSubtle"}]
       68 GETTABLEKS                       R15 R0 K0 ["props"]
       70 GETTABLEKS                       R15 R15 K38 ["ResetCameraCallback"]
       72 SETTABLEKS                       R15 R14 K34 ["OnClick"]
       74 DUPTABLE                         R15 K40 [{"Icon"}]
       75 GETUPVAL                         R16 0
       76 GETTABLEKS                       R16 R16 K3 ["createElement"]
       78 GETUPVAL                         R17 3
       79 DUPTABLE                         R18 K42 [{"Image"}]
       80 GETTABLEKS                       R19 R2 K18 ["PreviewWindow"]
       82 GETTABLEKS                       R19 R19 K43 ["ResetCameraImage"]
       84 SETTABLEKS                       R19 R18 K41 ["Image"]
       86 DUPTABLE                         R19 K45 [{"Tooltip"}]
       87 GETUPVAL                         R20 0
       88 GETTABLEKS                       R20 R20 K3 ["createElement"]
       90 GETUPVAL                         R21 4
       91 DUPTABLE                         R22 K47 [{"Text"}]
       92 GETUPVAL                         R23 5
       93 MOVE                             R24 R3
       94 LOADK                            R25 K48 ["PreviewTooltip"]
       95 LOADK                            R26 K49 ["ResetCam"]
       96 CALL                             R23 3 1
       97 SETTABLEKS                       R23 R22 K46 ["Text"]
       99 CALL                             R20 2 1
      100 SETTABLEKS                       R20 R19 K44 ["Tooltip"]
      102 CALL                             R16 3 1
      103 SETTABLEKS                       R16 R15 K39 ["Icon"]
      105 CALL                             R12 3 1
      106 SETTABLEKS                       R12 R11 K32 ["CameraResetButton"]
      108 CALL                             R8 3 1
      109 SETTABLEKS                       R8 R7 K20 ["CameraResetButtonContainer"]
      111 GETTABLEKS                       R9 R1 K50 ["ShouldShowWorkspaceToggle"]
      113 JUMPIFNOT                        R9 ; [+66]
      114 GETUPVAL                         R8 0
      115 GETTABLEKS                       R8 R8 K3 ["createElement"]
      117 GETUPVAL                         R9 1
      118 DUPTABLE                         R10 K52 [{["LayoutOrder"] = 2, ["Size"], ["AnchorPoint"]}]
      119 GETTABLEKS                       R11 R2 K18 ["PreviewWindow"]
      121 GETTABLEKS                       R11 R11 K28 ["OptionIconSize"]
      123 SETTABLEKS                       R11 R10 K6 ["Size"]
      125 GETIMPORT                        R11 K31 [Vector2.new]
      127 LOADN                            R12 1
      128 LOADN                            R13 0
      129 CALL                             R11 2 1
      130 SETTABLEKS                       R11 R10 K26 ["AnchorPoint"]
      132 DUPTABLE                         R11 K54 [{"InsertContextToggleButton"}]
      133 GETUPVAL                         R12 0
      134 GETTABLEKS                       R12 R12 K3 ["createElement"]
      136 GETUPVAL                         R13 2
      137 DUPTABLE                         R14 K37 [{["OnClick"], ["Style"] = "RoundSubtle"}]
      138 GETTABLEKS                       R15 R0 K0 ["props"]
      140 GETTABLEKS                       R15 R15 K55 ["InsertContextCallback"]
      142 SETTABLEKS                       R15 R14 K34 ["OnClick"]
      144 DUPTABLE                         R15 K40 [{"Icon"}]
      145 GETUPVAL                         R16 0
      146 GETTABLEKS                       R16 R16 K3 ["createElement"]
      148 GETUPVAL                         R17 3
      149 DUPTABLE                         R18 K42 [{"Image"}]
      150 GETTABLEKS                       R19 R2 K18 ["PreviewWindow"]
      152 GETTABLEKS                       R19 R19 K56 ["ShowWorkspaceImage"]
      154 SETTABLEKS                       R19 R18 K41 ["Image"]
      156 DUPTABLE                         R19 K45 [{"Tooltip"}]
      157 GETUPVAL                         R20 0
      158 GETTABLEKS                       R20 R20 K3 ["createElement"]
      160 GETUPVAL                         R21 4
      161 DUPTABLE                         R22 K47 [{"Text"}]
      162 GETUPVAL                         R23 5
      163 MOVE                             R24 R3
      164 LOADK                            R25 K48 ["PreviewTooltip"]
      165 LOADK                            R26 K57 ["ToggleInsertContext"]
      166 CALL                             R23 3 1
      167 SETTABLEKS                       R23 R22 K46 ["Text"]
      169 CALL                             R20 2 1
      170 SETTABLEKS                       R20 R19 K44 ["Tooltip"]
      172 CALL                             R16 3 1
      173 SETTABLEKS                       R16 R15 K39 ["Icon"]
      175 CALL                             R12 3 1
      176 SETTABLEKS                       R12 R11 K53 ["InsertContextToggleButton"]
      178 CALL                             R8 3 1
      179 JUMP                             ; [+1]
      180 LOADNIL                          R8
      181 SETTABLEKS                       R8 R7 K21 ["InsertContextToggleButtonContainer"]
      183 GETTABLEKS                       R9 R1 K58 ["ShouldShowRigVisualizationToggle"]
      185 JUMPIFNOT                        R9 ; [+66]
      186 GETUPVAL                         R8 0
      187 GETTABLEKS                       R8 R8 K3 ["createElement"]
      189 GETUPVAL                         R9 1
      190 DUPTABLE                         R10 K60 [{["LayoutOrder"] = 3, ["Size"], ["AnchorPoint"]}]
      191 GETTABLEKS                       R11 R2 K18 ["PreviewWindow"]
      193 GETTABLEKS                       R11 R11 K28 ["OptionIconSize"]
      195 SETTABLEKS                       R11 R10 K6 ["Size"]
      197 GETIMPORT                        R11 K31 [Vector2.new]
      199 LOADN                            R12 1
      200 LOADN                            R13 0
      201 CALL                             R11 2 1
      202 SETTABLEKS                       R11 R10 K26 ["AnchorPoint"]
      204 DUPTABLE                         R11 K62 [{"RigVisualizationButton"}]
      205 GETUPVAL                         R12 0
      206 GETTABLEKS                       R12 R12 K3 ["createElement"]
      208 GETUPVAL                         R13 2
      209 DUPTABLE                         R14 K37 [{["OnClick"], ["Style"] = "RoundSubtle"}]
      210 GETTABLEKS                       R15 R0 K0 ["props"]
      212 GETTABLEKS                       R15 R15 K63 ["VisualizeRigCallback"]
      214 SETTABLEKS                       R15 R14 K34 ["OnClick"]
      216 DUPTABLE                         R15 K40 [{"Icon"}]
      217 GETUPVAL                         R16 0
      218 GETTABLEKS                       R16 R16 K3 ["createElement"]
      220 GETUPVAL                         R17 3
      221 DUPTABLE                         R18 K42 [{"Image"}]
      222 GETTABLEKS                       R19 R2 K18 ["PreviewWindow"]
      224 GETTABLEKS                       R19 R19 K64 ["ShowRigVisualizationImage"]
      226 SETTABLEKS                       R19 R18 K41 ["Image"]
      228 DUPTABLE                         R19 K45 [{"Tooltip"}]
      229 GETUPVAL                         R20 0
      230 GETTABLEKS                       R20 R20 K3 ["createElement"]
      232 GETUPVAL                         R21 4
      233 DUPTABLE                         R22 K47 [{"Text"}]
      234 GETUPVAL                         R23 5
      235 MOVE                             R24 R3
      236 LOADK                            R25 K48 ["PreviewTooltip"]
      237 LOADK                            R26 K65 ["RigVisualization"]
      238 CALL                             R23 3 1
      239 SETTABLEKS                       R23 R22 K46 ["Text"]
      241 CALL                             R20 2 1
      242 SETTABLEKS                       R20 R19 K44 ["Tooltip"]
      244 CALL                             R16 3 1
      245 SETTABLEKS                       R16 R15 K39 ["Icon"]
      247 CALL                             R12 3 1
      248 SETTABLEKS                       R12 R11 K61 ["RigVisualizationButton"]
      250 CALL                             R8 3 1
      251 JUMP                             ; [+1]
      252 LOADNIL                          R8
      253 SETTABLEKS                       R8 R7 K22 ["RigVisualizationButtonContainer"]
      255 CALL                             R4 3 -1
      256 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["RoactCompat"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R6 R5 K12 ["Pane"]
       29 GETTABLEKS                       R7 R5 K13 ["Button"]
       31 GETTABLEKS                       R8 R5 K14 ["Image"]
       33 GETTABLEKS                       R9 R5 K15 ["Tooltip"]
       35 GETTABLEKS                       R10 R3 K16 ["Localization"]
       37 GETTABLEKS                       R11 R2 K17 ["Style"]
       39 GETTABLEKS                       R11 R11 K18 ["Stylizer"]
       41 GETIMPORT                        R12 K5 [require]
       43 GETTABLEKS                       R13 R0 K19 ["Src"]
       45 GETTABLEKS                       R13 R13 K20 ["Utility"]
       47 GETTABLEKS                       R13 R13 K21 ["GetLocalizedString"]
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
