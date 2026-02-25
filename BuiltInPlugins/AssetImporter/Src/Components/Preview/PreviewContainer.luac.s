PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["props"]
        4 GETTABLEKS                       R1 R2 K1 ["PreviewInstance"]
        6 CALL                             R0 1 1
        7 NAMECALL                         R0 R0 K2 ["GetExtentsSize"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R2 R0 K4 ["Magnitude"]
       12 MULK                             R1 R2 K3 [0.8]
       13 LOADK                            R3 K5 [{-1, 1, -1}]
       14 GETTABLEKS                       R2 R3 K6 ["Unit"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K7 ["camera"]
       19 GETIMPORT                        R4 K10 [CFrame.identity]
       21 SETTABLEKS                       R4 R3 K11 ["Focus"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K7 ["camera"]
       26 GETIMPORT                        R4 K13 [CFrame.new]
       28 MUL                              R5 R1 R2
       29 GETUPVAL                         R9 1
       30 GETTABLEKS                       R8 R9 K7 ["camera"]
       32 GETTABLEKS                       R7 R8 K11 ["Focus"]
       34 GETTABLEKS                       R6 R7 K14 ["Position"]
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R3 K8 ["CFrame"]
       39 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showContext"}]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K2 ["state"]
        5 GETTABLEKS                       R4 R5 K0 ["showContext"]
        7 NOT                              R3 R4
        8 SETTABLEKS                       R3 R2 K0 ["showContext"]
       10 NAMECALL                         R0 R0 K3 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["ImportTree"]
        5 GETTABLEKS                       R4 R0 K1 ["ImportTree"]
        7 GETTABLEKS                       R3 R4 K2 ["RigVisualization"]
        9 NOT                              R2 R3
       10 SETTABLEKS                       R2 R1 K2 ["RigVisualization"]
       12 GETTABLEKS                       R1 R0 K3 ["SelectedImportItem"]
       14 JUMPIFNOT                        R1 ; [+9]
       15 GETTABLEKS                       R1 R0 K3 ["SelectedImportItem"]
       17 NAMECALL                         R1 R1 K4 ["GetPreview"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R2 R0 K5 ["UpdatePreviewInstance"]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SelectedImportItem"]
        5 LOADK                            R3 K2 ["JointImportData"]
        6 NAMECALL                         R1 R1 K3 ["IsA"]
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R2 R0 K1 ["SelectedImportItem"]
       11 LOADK                            R4 K4 ["RootImportData"]
       12 NAMECALL                         R2 R2 K3 ["IsA"]
       14 CALL                             R2 2 1
       15 GETTABLEKS                       R5 R0 K6 ["ImportTree"]
       17 GETTABLEKS                       R4 R5 K5 ["RigVisualization"]
       19 JUMPIFNOT                        R4 ; [+2]
       20 MOVE                             R3 R2
       21 JUMPIF                           R3 ; [+1]
       22 MOVE                             R3 R1
       23 RETURN                           R3 1

PROTO_4:
        0 JUMPIFNOT                        R1 ; [+21]
        1 GETIMPORT                        R4 K1 [game]
        3 NAMECALL                         R2 R1 K2 ["IsDescendantOf"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+15]
        7 GETUPVAL                         R2 0
        8 NAMECALL                         R2 R2 K3 ["Disconnect"]
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 1
       12 LOADK                            R4 K4 ["KeyframeSequence"]
       13 LOADB                            R5 1
       14 NAMECALL                         R2 R2 K5 ["FindFirstChildWhichIsA"]
       16 CALL                             R2 3 1
       17 JUMPIFNOT                        R2 ; [+4]
       18 GETUPVAL                         R3 2
       19 GETUPVAL                         R4 1
       20 MOVE                             R5 R2
       21 CALL                             R3 2 0
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["SelectedImportItem"]
        5 LOADK                            R3 K2 ["AnimationImportData"]
        6 NAMECALL                         R1 R1 K3 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+12]
       10 LOADNIL                          R1
       11 GETTABLEKS                       R2 R0 K4 ["AncestryChanged"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          REF R1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U1
       17 NAMECALL                         R2 R2 K5 ["connect"]
       19 CALL                             R2 2 1
       20 MOVE                             R1 R2
       21 CLOSEUPVALS                      R1
       22 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 DUPTABLE                         R4 K2 [{"showContext"}]
        3 LOADB                            R5 0
        4 SETTABLEKS                       R5 R4 K1 ["showContext"]
        6 NAMECALL                         R2 R0 K3 ["setState"]
        8 CALL                             R2 2 0
        9 LOADB                            R2 0
       10 SETTABLEKS                       R2 R0 K4 ["recenterCamera"]
       12 LOADB                            R2 1
       13 SETTABLEKS                       R2 R0 K5 ["recenterModel"]
       15 GETIMPORT                        R2 K8 [CFrame.identity]
       17 SETTABLEKS                       R2 R0 K9 ["lastCamCFrame"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R3 R1 K10 ["PreviewInstance"]
       22 GETTABLEKS                       R4 R1 K11 ["ImportTree"]
       24 GETTABLEKS                       R7 R1 K12 ["SelectedImportItem"]
       26 GETTABLEKS                       R6 R7 K13 ["Id"]
       28 JUMPIFEQKS                       R6 K14 ["0"] ; [+2]
       30 LOADB                            R5 0 +1
       31 LOADB                            R5 1
       32 GETTABLEKS                       R7 R0 K15 ["state"]
       34 GETTABLEKS                       R6 R7 K1 ["showContext"]
       36 CALL                             R2 4 1
       37 SETTABLEKS                       R2 R0 K16 ["previewProps"]
       39 GETIMPORT                        R2 K19 [Instance.new]
       41 LOADK                            R3 K20 ["Camera"]
       42 CALL                             R2 1 1
       43 SETTABLEKS                       R2 R0 K21 ["camera"]
       45 NEWCLOSURE                       R2 P0
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R2 R0 K22 ["onClickCenterCamera"]
       50 NEWCLOSURE                       R2 P1
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R2 R0 K23 ["onClickToggleContext"]
       54 NEWCLOSURE                       R2 P2
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R2 R0 K24 ["onClickRigVisualization"]
       58 NEWCLOSURE                       R2 P3
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R2 R0 K25 ["isRigVisualized"]
       62 NEWCLOSURE                       R2 P4
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U2
       65 SETTABLEKS                       R2 R0 K26 ["loadAnimationIntoViewport"]
       67 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R4 K1 ["SelectedImportItem"]
        4 GETTABLEKS                       R4 R1 K1 ["SelectedImportItem"]
        6 LOADK                            R7 K2 ["RootImportData"]
        7 NAMECALL                         R5 R3 K3 ["IsA"]
        9 CALL                             R5 2 1
       10 JUMPIF                           R5 ; [+10]
       11 LOADK                            R7 K4 ["MeshImportData"]
       12 NAMECALL                         R5 R3 K3 ["IsA"]
       14 CALL                             R5 2 1
       15 JUMPIF                           R5 ; [+5]
       16 LOADK                            R7 K5 ["GroupImportData"]
       17 NAMECALL                         R5 R3 K3 ["IsA"]
       19 CALL                             R5 2 1
       20 JUMPIFNOT                        R5 ; [+6]
       21 GETTABLEKS                       R6 R0 K6 ["camera"]
       23 GETTABLEKS                       R5 R6 K7 ["CFrame"]
       25 SETTABLEKS                       R5 R0 K8 ["lastCamCFrame"]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R6 R1 K9 ["PreviewInstance"]
       30 GETTABLEKS                       R7 R1 K10 ["ImportTree"]
       32 GETTABLEKS                       R10 R1 K1 ["SelectedImportItem"]
       34 GETTABLEKS                       R9 R10 K11 ["Id"]
       36 JUMPIFEQKS                       R9 K12 ["0"] ; [+2]
       38 LOADB                            R8 0 +1
       39 LOADB                            R8 1
       40 GETTABLEKS                       R9 R2 K13 ["showContext"]
       42 CALL                             R5 4 1
       43 SETTABLEKS                       R5 R0 K14 ["previewProps"]
       45 LOADK                            R7 K2 ["RootImportData"]
       46 NAMECALL                         R5 R4 K3 ["IsA"]
       48 CALL                             R5 2 1
       49 JUMPIF                           R5 ; [+10]
       50 LOADK                            R7 K4 ["MeshImportData"]
       51 NAMECALL                         R5 R4 K3 ["IsA"]
       53 CALL                             R5 2 1
       54 JUMPIF                           R5 ; [+5]
       55 LOADK                            R7 K5 ["GroupImportData"]
       56 NAMECALL                         R5 R4 K3 ["IsA"]
       58 CALL                             R5 2 1
       59 JUMPIFNOT                        R5 ; [+10]
       60 GETTABLEKS                       R5 R0 K6 ["camera"]
       62 GETTABLEKS                       R6 R0 K8 ["lastCamCFrame"]
       64 SETTABLEKS                       R6 R5 K7 ["CFrame"]
       66 LOADB                            R5 0
       67 SETTABLEKS                       R5 R0 K15 ["recenterCamera"]
       69 RETURN                           R0 0
       70 LOADB                            R5 1
       71 SETTABLEKS                       R5 R0 K15 ["recenterCamera"]
       73 RETURN                           R0 0

PROTO_8:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["handleCameraTransition"]
        4 CALL                             R3 3 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["SelectedImportItem"]
        2 GETTABLEKS                       R4 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R4 K0 ["SelectedImportItem"]
        6 JUMPIFEQ                         R3 R2 ; [+4]
        8 GETTABLEKS                       R4 R0 K2 ["onClickCenterCamera"]
       10 CALL                             R4 0 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["Sizes"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K6 [{"LayoutOrder", "Size"}]
       11 GETTABLEKS                       R7 R1 K4 ["LayoutOrder"]
       13 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       15 GETIMPORT                        R7 K9 [UDim2.new]
       17 LOADN                            R8 1
       18 LOADN                            R9 0
       19 GETTABLEKS                       R10 R3 K10 ["PreviewRatio"]
       21 LOADN                            R11 0
       22 CALL                             R7 4 1
       23 SETTABLEKS                       R7 R6 K5 ["Size"]
       25 DUPTABLE                         R7 K16 [{"WorkspacePreviewContainer", "PreviewControls", "PreviewRenderContainer", "RigVisualization", "AxisIndicatorContainer"}]
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R8 R9 K3 ["createElement"]
       29 GETUPVAL                         R9 1
       30 DUPTABLE                         R10 K18 [{"ZIndex"}]
       31 LOADN                            R11 1
       32 SETTABLEKS                       R11 R10 K17 ["ZIndex"]
       34 DUPTABLE                         R11 K20 [{"WorkspacePreview"}]
       35 GETUPVAL                         R13 0
       36 GETTABLEKS                       R12 R13 K3 ["createElement"]
       38 GETUPVAL                         R13 2
       39 DUPTABLE                         R14 K24 [{"Model", "ReferenceCamera", "Offset"}]
       40 GETTABLEKS                       R16 R0 K25 ["previewProps"]
       42 GETTABLEKS                       R15 R16 K26 ["workspacePreview"]
       44 SETTABLEKS                       R15 R14 K21 ["Model"]
       46 GETTABLEKS                       R15 R0 K27 ["camera"]
       48 SETTABLEKS                       R15 R14 K22 ["ReferenceCamera"]
       50 GETTABLEKS                       R16 R0 K25 ["previewProps"]
       52 GETTABLEKS                       R15 R16 K28 ["insertContextOffset"]
       54 SETTABLEKS                       R15 R14 K23 ["Offset"]
       56 CALL                             R12 2 1
       57 SETTABLEKS                       R12 R11 K19 ["WorkspacePreview"]
       59 CALL                             R8 3 1
       60 SETTABLEKS                       R8 R7 K11 ["WorkspacePreviewContainer"]
       62 GETUPVAL                         R9 0
       63 GETTABLEKS                       R8 R9 K3 ["createElement"]
       65 GETUPVAL                         R9 3
       66 DUPTABLE                         R10 K34 [{"InsertContextCallback", "ResetCameraCallback", "ShouldShowWorkspaceToggle", "ShouldShowRigVisualizationToggle", "VisualizeRigCallback"}]
       67 GETTABLEKS                       R11 R0 K35 ["onClickToggleContext"]
       69 SETTABLEKS                       R11 R10 K29 ["InsertContextCallback"]
       71 GETTABLEKS                       R11 R0 K36 ["onClickCenterCamera"]
       73 SETTABLEKS                       R11 R10 K30 ["ResetCameraCallback"]
       75 GETTABLEKS                       R11 R1 K37 ["SelectedImportItem"]
       77 LOADK                            R13 K38 ["RootImportData"]
       78 NAMECALL                         R11 R11 K39 ["IsA"]
       80 CALL                             R11 2 1
       81 JUMPIFNOT                        R11 ; [+4]
       82 GETTABLEKS                       R12 R1 K37 ["SelectedImportItem"]
       84 GETTABLEKS                       R11 R12 K40 ["InsertInWorkspace"]
       86 SETTABLEKS                       R11 R10 K31 ["ShouldShowWorkspaceToggle"]
       88 GETTABLEKS                       R11 R1 K37 ["SelectedImportItem"]
       90 LOADK                            R13 K38 ["RootImportData"]
       91 NAMECALL                         R11 R11 K39 ["IsA"]
       93 CALL                             R11 2 1
       94 JUMPIFNOT                        R11 ; [+5]
       95 GETTABLEKS                       R11 R1 K41 ["AssetImportSession"]
       97 NAMECALL                         R11 R11 K42 ["isAvatar"]
       99 CALL                             R11 1 1
      100 SETTABLEKS                       R11 R10 K32 ["ShouldShowRigVisualizationToggle"]
      102 GETTABLEKS                       R11 R0 K43 ["onClickRigVisualization"]
      104 SETTABLEKS                       R11 R10 K33 ["VisualizeRigCallback"]
      106 CALL                             R8 2 1
      107 SETTABLEKS                       R8 R7 K12 ["PreviewControls"]
      109 GETUPVAL                         R9 0
      110 GETTABLEKS                       R8 R9 K3 ["createElement"]
      112 GETUPVAL                         R9 1
      113 DUPTABLE                         R10 K18 [{"ZIndex"}]
      114 LOADN                            R11 2
      115 SETTABLEKS                       R11 R10 K17 ["ZIndex"]
      117 DUPTABLE                         R11 K45 [{"PreviewRender"}]
      118 GETUPVAL                         R13 0
      119 GETTABLEKS                       R12 R13 K3 ["createElement"]
      121 GETUPVAL                         R13 4
      122 DUPTABLE                         R14 K55 [{"Model", "InitialDistance", "Camera", "FocusDirection", "RecenterCameraOnUpdate", "RecenterModelOnUpdate", "OnViewModelLoaded", "Ambient", "LightColor", "LightDirection"}]
      123 GETTABLEKS                       R16 R0 K25 ["previewProps"]
      125 GETTABLEKS                       R15 R16 K56 ["model"]
      127 SETTABLEKS                       R15 R14 K21 ["Model"]
      129 GETTABLEKS                       R16 R0 K25 ["previewProps"]
      131 GETTABLEKS                       R15 R16 K57 ["initDist"]
      133 SETTABLEKS                       R15 R14 K46 ["InitialDistance"]
      135 GETTABLEKS                       R15 R0 K27 ["camera"]
      137 SETTABLEKS                       R15 R14 K47 ["Camera"]
      139 LOADK                            R15 K58 [{-1, 1, -1}]
      140 SETTABLEKS                       R15 R14 K48 ["FocusDirection"]
      142 GETTABLEKS                       R15 R0 K59 ["recenterCamera"]
      144 SETTABLEKS                       R15 R14 K49 ["RecenterCameraOnUpdate"]
      146 GETTABLEKS                       R15 R0 K60 ["recenterModel"]
      148 SETTABLEKS                       R15 R14 K50 ["RecenterModelOnUpdate"]
      150 GETTABLEKS                       R15 R0 K61 ["loadAnimationIntoViewport"]
      152 SETTABLEKS                       R15 R14 K51 ["OnViewModelLoaded"]
      154 GETTABLEKS                       R17 R2 K62 ["PreviewWindow"]
      156 GETTABLEKS                       R16 R17 K63 ["Lighting"]
      158 GETTABLEKS                       R15 R16 K52 ["Ambient"]
      160 SETTABLEKS                       R15 R14 K52 ["Ambient"]
      162 GETTABLEKS                       R17 R2 K62 ["PreviewWindow"]
      164 GETTABLEKS                       R16 R17 K63 ["Lighting"]
      166 GETTABLEKS                       R15 R16 K64 ["Color"]
      168 SETTABLEKS                       R15 R14 K53 ["LightColor"]
      170 GETTABLEKS                       R17 R2 K62 ["PreviewWindow"]
      172 GETTABLEKS                       R16 R17 K63 ["Lighting"]
      174 GETTABLEKS                       R15 R16 K65 ["Direction"]
      176 SETTABLEKS                       R15 R14 K54 ["LightDirection"]
      178 CALL                             R12 2 1
      179 SETTABLEKS                       R12 R11 K44 ["PreviewRender"]
      181 CALL                             R8 3 1
      182 SETTABLEKS                       R8 R7 K13 ["PreviewRenderContainer"]
      184 GETTABLEKS                       R9 R0 K66 ["isRigVisualized"]
      186 CALL                             R9 0 1
      187 JUMPIFNOT                        R9 ; [+36]
      188 GETUPVAL                         R9 0
      189 GETTABLEKS                       R8 R9 K3 ["createElement"]
      191 GETUPVAL                         R9 1
      192 DUPTABLE                         R10 K18 [{"ZIndex"}]
      193 LOADN                            R11 3
      194 SETTABLEKS                       R11 R10 K17 ["ZIndex"]
      196 NEWTABLE                         R11 0 1
      198 GETUPVAL                         R13 0
      199 GETTABLEKS                       R12 R13 K3 ["createElement"]
      201 GETUPVAL                         R13 5
      202 DUPTABLE                         R14 K68 [{"PreviewInstance", "Camera", "AssetImportSession", "SelectedImportItem"}]
      203 GETTABLEKS                       R15 R1 K67 ["PreviewInstance"]
      205 SETTABLEKS                       R15 R14 K67 ["PreviewInstance"]
      207 GETTABLEKS                       R15 R0 K27 ["camera"]
      209 SETTABLEKS                       R15 R14 K47 ["Camera"]
      211 GETTABLEKS                       R15 R1 K41 ["AssetImportSession"]
      213 SETTABLEKS                       R15 R14 K41 ["AssetImportSession"]
      215 GETTABLEKS                       R15 R1 K37 ["SelectedImportItem"]
      217 SETTABLEKS                       R15 R14 K37 ["SelectedImportItem"]
      219 CALL                             R12 2 -1
      220 SETLIST                          R11 R12 -1 [1]
      222 CALL                             R8 3 1
      223 JUMP                             ; [+1]
      224 LOADNIL                          R8
      225 SETTABLEKS                       R8 R7 K14 ["RigVisualization"]
      227 GETUPVAL                         R9 0
      228 GETTABLEKS                       R8 R9 K3 ["createElement"]
      230 GETUPVAL                         R9 1
      231 DUPTABLE                         R10 K71 [{"Size", "Position", "AnchorPoint", "ZIndex"}]
      232 GETIMPORT                        R11 K9 [UDim2.new]
      234 LOADN                            R12 0
      235 GETTABLEKS                       R13 R3 K72 ["IndicatorSize"]
      237 LOADN                            R14 0
      238 GETTABLEKS                       R15 R3 K72 ["IndicatorSize"]
      240 CALL                             R11 4 1
      241 SETTABLEKS                       R11 R10 K5 ["Size"]
      243 GETIMPORT                        R11 K9 [UDim2.new]
      245 LOADN                            R12 1
      246 GETTABLEKS                       R13 R3 K73 ["IndicatorOffset"]
      248 LOADN                            R14 1
      249 GETTABLEKS                       R15 R3 K73 ["IndicatorOffset"]
      251 CALL                             R11 4 1
      252 SETTABLEKS                       R11 R10 K69 ["Position"]
      254 GETIMPORT                        R11 K75 [Vector2.new]
      256 LOADN                            R12 1
      257 LOADN                            R13 1
      258 CALL                             R11 2 1
      259 SETTABLEKS                       R11 R10 K70 ["AnchorPoint"]
      261 LOADN                            R11 4
      262 SETTABLEKS                       R11 R10 K17 ["ZIndex"]
      264 DUPTABLE                         R11 K77 [{"AxisIndicator"}]
      265 GETUPVAL                         R13 0
      266 GETTABLEKS                       R12 R13 K3 ["createElement"]
      268 GETUPVAL                         R13 6
      269 DUPTABLE                         R14 K78 [{"ReferenceCamera"}]
      270 GETTABLEKS                       R15 R0 K27 ["camera"]
      272 SETTABLEKS                       R15 R14 K22 ["ReferenceCamera"]
      274 CALL                             R12 2 1
      275 SETTABLEKS                       R12 R11 K76 ["AxisIndicator"]
      277 CALL                             R8 3 1
      278 SETTABLEKS                       R8 R7 K15 ["AxisIndicatorContainer"]
      280 CALL                             R4 3 -1
      281 RETURN                           R4 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R1 K1 [{"UpdatePreviewInstance"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["UpdatePreviewInstance"]
        6 RETURN                           R1 1

PROTO_13:
        0 DUPTABLE                         R1 K4 [{"AssetImportSession", "ImportTree", "PreviewInstance", "SelectedImportItem"}]
        1 GETTABLEKS                       R3 R0 K5 ["Preview"]
        3 GETTABLEKS                       R2 R3 K6 ["assetImportSession"]
        5 SETTABLEKS                       R2 R1 K0 ["AssetImportSession"]
        7 GETTABLEKS                       R3 R0 K5 ["Preview"]
        9 GETTABLEKS                       R2 R3 K7 ["importTree"]
       11 SETTABLEKS                       R2 R1 K1 ["ImportTree"]
       13 GETTABLEKS                       R3 R0 K5 ["Preview"]
       15 GETTABLEKS                       R2 R3 K8 ["previewInstance"]
       17 SETTABLEKS                       R2 R1 K2 ["PreviewInstance"]
       19 GETTABLEKS                       R3 R0 K5 ["Preview"]
       21 GETTABLEKS                       R2 R3 K9 ["selectedImportItem"]
       23 SETTABLEKS                       R2 R1 K3 ["SelectedImportItem"]
       25 RETURN                           R1 1

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
       18 GETTABLEKS                       R3 R4 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R7 R3 K12 ["Style"]
       34 GETTABLEKS                       R6 R7 K13 ["Stylizer"]
       36 GETTABLEKS                       R7 R3 K14 ["UI"]
       38 GETTABLEKS                       R8 R7 K15 ["Pane"]
       40 GETTABLEKS                       R9 R7 K16 ["AssetRenderModel"]
       42 GETIMPORT                        R10 K5 [require]
       44 GETTABLEKS                       R14 R0 K17 ["Src"]
       46 GETTABLEKS                       R13 R14 K18 ["Components"]
       48 GETTABLEKS                       R12 R13 K19 ["Preview"]
       50 GETTABLEKS                       R11 R12 K20 ["WorkspacePreview"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K5 [require]
       55 GETTABLEKS                       R15 R0 K17 ["Src"]
       57 GETTABLEKS                       R14 R15 K18 ["Components"]
       59 GETTABLEKS                       R13 R14 K19 ["Preview"]
       61 GETTABLEKS                       R12 R13 K21 ["AxisIndicator"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K5 [require]
       66 GETTABLEKS                       R16 R0 K17 ["Src"]
       68 GETTABLEKS                       R15 R16 K18 ["Components"]
       70 GETTABLEKS                       R14 R15 K19 ["Preview"]
       72 GETTABLEKS                       R13 R14 K22 ["PreviewControls"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K5 [require]
       77 GETTABLEKS                       R17 R0 K17 ["Src"]
       79 GETTABLEKS                       R16 R17 K18 ["Components"]
       81 GETTABLEKS                       R15 R16 K19 ["Preview"]
       83 GETTABLEKS                       R14 R15 K23 ["RigVisualization"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K5 [require]
       88 GETTABLEKS                       R17 R0 K17 ["Src"]
       90 GETTABLEKS                       R16 R17 K24 ["Thunks"]
       92 GETTABLEKS                       R15 R16 K25 ["UpdatePreviewInstance"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K5 [require]
       97 GETTABLEKS                       R18 R0 K17 ["Src"]
       99 GETTABLEKS                       R17 R18 K26 ["Utility"]
      101 GETTABLEKS                       R16 R17 K27 ["getAssetPreviewProps"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K5 [require]
      106 GETTABLEKS                       R19 R0 K17 ["Src"]
      108 GETTABLEKS                       R18 R19 K26 ["Utility"]
      110 GETTABLEKS                       R17 R18 K28 ["getAssetRenderModel"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K5 [require]
      115 GETTABLEKS                       R20 R0 K17 ["Src"]
      117 GETTABLEKS                       R19 R20 K26 ["Utility"]
      119 GETTABLEKS                       R18 R19 K29 ["loadAnimation"]
      121 CALL                             R17 1 1
      122 GETTABLEKS                       R18 R1 K30 ["PureComponent"]
      124 LOADK                            R20 K31 ["PreviewContainer"]
      125 NAMECALL                         R18 R18 K32 ["extend"]
      127 CALL                             R18 2 1
      128 DUPCLOSURE                       R19 K33 [PROTO_6]
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R17
      132 SETTABLEKS                       R19 R18 K34 ["init"]
      134 DUPCLOSURE                       R19 K35 [PROTO_7]
      135 CAPTURE                          VAL R15
      136 SETTABLEKS                       R19 R18 K36 ["handleCameraTransition"]
      138 DUPCLOSURE                       R19 K37 [PROTO_8]
      139 SETTABLEKS                       R19 R18 K38 ["willUpdate"]
      141 DUPCLOSURE                       R19 K39 [PROTO_9]
      142 SETTABLEKS                       R19 R18 K40 ["didUpdate"]
      144 DUPCLOSURE                       R19 K41 [PROTO_10]
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R11
      152 SETTABLEKS                       R19 R18 K42 ["render"]
      154 MOVE                             R19 R5
      155 DUPTABLE                         R20 K43 [{"Stylizer"}]
      156 SETTABLEKS                       R6 R20 K13 ["Stylizer"]
      158 CALL                             R19 1 1
      159 MOVE                             R20 R18
      160 CALL                             R19 1 1
      161 MOVE                             R18 R19
      162 DUPCLOSURE                       R19 K44 [PROTO_12]
      163 CAPTURE                          VAL R14
      164 DUPCLOSURE                       R20 K45 [PROTO_13]
      165 GETTABLEKS                       R21 R2 K46 ["connect"]
      167 MOVE                             R22 R20
      168 MOVE                             R23 R19
      169 CALL                             R21 2 1
      170 MOVE                             R22 R18
      171 CALL                             R21 1 -1
      172 RETURN                           R21 -1
