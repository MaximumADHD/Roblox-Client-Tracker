PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["props"]
        4 GETTABLEKS                       R1 R1 K1 ["PreviewInstance"]
        6 CALL                             R0 1 1
        7 NAMECALL                         R0 R0 K2 ["GetExtentsSize"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R2 R0 K4 ["Magnitude"]
       12 MULK                             R1 R2 K3 [0.8]
       13 LOADK                            R2 K5 [{-1, 1, -1}]
       14 GETTABLEKS                       R2 R2 K6 ["Unit"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K7 ["camera"]
       19 GETIMPORT                        R4 K10 [CFrame.identity]
       21 SETTABLEKS                       R4 R3 K11 ["Focus"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K7 ["camera"]
       26 GETIMPORT                        R4 K13 [CFrame.new]
       28 MUL                              R5 R1 R2
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K7 ["camera"]
       32 GETTABLEKS                       R6 R6 K11 ["Focus"]
       34 GETTABLEKS                       R6 R6 K14 ["Position"]
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R3 K8 ["CFrame"]
       39 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showContext"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K2 ["state"]
        5 GETTABLEKS                       R4 R4 K0 ["showContext"]
        7 NOT                              R3 R4
        8 SETTABLEKS                       R3 R2 K0 ["showContext"]
       10 NAMECALL                         R0 R0 K3 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["SelectedImportItem"]
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
        2 DUPTABLE                         R4 K3 [{["showContext"] = False}]
        3 NAMECALL                         R2 R0 K4 ["setState"]
        5 CALL                             R2 2 0
        6 LOADB                            R2 0
        7 SETTABLEKS                       R2 R0 K5 ["recenterCamera"]
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R0 K6 ["recenterModel"]
       12 GETIMPORT                        R2 K9 [CFrame.identity]
       14 SETTABLEKS                       R2 R0 K10 ["lastCamCFrame"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R3 R1 K11 ["PreviewInstance"]
       19 GETTABLEKS                       R4 R1 K12 ["ImportTree"]
       21 GETTABLEKS                       R6 R1 K13 ["SelectedImportItem"]
       23 GETTABLEKS                       R6 R6 K14 ["Id"]
       25 JUMPIFEQKS                       R6 K15 ["0"] ; [+2]
       27 LOADB                            R5 0 +1
       28 LOADB                            R5 1
       29 GETTABLEKS                       R6 R0 K16 ["state"]
       31 GETTABLEKS                       R6 R6 K1 ["showContext"]
       33 CALL                             R2 4 1
       34 SETTABLEKS                       R2 R0 K17 ["previewProps"]
       36 GETIMPORT                        R2 K20 [Instance.new]
       38 LOADK                            R3 K21 ["Camera"]
       39 CALL                             R2 1 1
       40 SETTABLEKS                       R2 R0 K22 ["camera"]
       42 NEWCLOSURE                       R2 P0
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R2 R0 K23 ["onClickCenterCamera"]
       47 NEWCLOSURE                       R2 P1
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R2 R0 K24 ["onClickToggleContext"]
       51 NEWCLOSURE                       R2 P2
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R2 R0 K25 ["onClickRigVisualization"]
       55 NEWCLOSURE                       R2 P3
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R2 R0 K26 ["isRigVisualized"]
       59 NEWCLOSURE                       R2 P4
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U2
       62 SETTABLEKS                       R2 R0 K27 ["loadAnimationIntoViewport"]
       64 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["SelectedImportItem"]
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
       21 GETTABLEKS                       R5 R0 K6 ["camera"]
       23 GETTABLEKS                       R5 R5 K7 ["CFrame"]
       25 SETTABLEKS                       R5 R0 K8 ["lastCamCFrame"]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R6 R1 K9 ["PreviewInstance"]
       30 GETTABLEKS                       R7 R1 K10 ["ImportTree"]
       32 GETTABLEKS                       R9 R1 K1 ["SelectedImportItem"]
       34 GETTABLEKS                       R9 R9 K11 ["Id"]
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
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K0 ["SelectedImportItem"]
        6 JUMPIFEQ                         R3 R2 ; [+4]
        8 GETTABLEKS                       R4 R0 K2 ["onClickCenterCamera"]
       10 CALL                             R4 0 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["Sizes"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
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
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K3 ["createElement"]
       29 GETUPVAL                         R9 1
       30 DUPTABLE                         R10 K19 [{["ZIndex"] = 1}]
       31 DUPTABLE                         R11 K21 [{"WorkspacePreview"}]
       32 GETUPVAL                         R12 0
       33 GETTABLEKS                       R12 R12 K3 ["createElement"]
       35 GETUPVAL                         R13 2
       36 DUPTABLE                         R14 K25 [{"Model", "ReferenceCamera", "Offset"}]
       37 GETTABLEKS                       R15 R0 K26 ["previewProps"]
       39 GETTABLEKS                       R15 R15 K27 ["workspacePreview"]
       41 SETTABLEKS                       R15 R14 K22 ["Model"]
       43 GETTABLEKS                       R15 R0 K28 ["camera"]
       45 SETTABLEKS                       R15 R14 K23 ["ReferenceCamera"]
       47 GETTABLEKS                       R15 R0 K26 ["previewProps"]
       49 GETTABLEKS                       R15 R15 K29 ["insertContextOffset"]
       51 SETTABLEKS                       R15 R14 K24 ["Offset"]
       53 CALL                             R12 2 1
       54 SETTABLEKS                       R12 R11 K20 ["WorkspacePreview"]
       56 CALL                             R8 3 1
       57 SETTABLEKS                       R8 R7 K11 ["WorkspacePreviewContainer"]
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R8 R8 K3 ["createElement"]
       62 GETUPVAL                         R9 3
       63 DUPTABLE                         R10 K35 [{"InsertContextCallback", "ResetCameraCallback", "ShouldShowWorkspaceToggle", "ShouldShowRigVisualizationToggle", "VisualizeRigCallback"}]
       64 GETTABLEKS                       R11 R0 K36 ["onClickToggleContext"]
       66 SETTABLEKS                       R11 R10 K30 ["InsertContextCallback"]
       68 GETTABLEKS                       R11 R0 K37 ["onClickCenterCamera"]
       70 SETTABLEKS                       R11 R10 K31 ["ResetCameraCallback"]
       72 GETTABLEKS                       R11 R1 K38 ["SelectedImportItem"]
       74 LOADK                            R13 K39 ["RootImportData"]
       75 NAMECALL                         R11 R11 K40 ["IsA"]
       77 CALL                             R11 2 1
       78 JUMPIFNOT                        R11 ; [+4]
       79 GETTABLEKS                       R11 R1 K38 ["SelectedImportItem"]
       81 GETTABLEKS                       R11 R11 K41 ["InsertInWorkspace"]
       83 SETTABLEKS                       R11 R10 K32 ["ShouldShowWorkspaceToggle"]
       85 GETTABLEKS                       R11 R1 K38 ["SelectedImportItem"]
       87 LOADK                            R13 K39 ["RootImportData"]
       88 NAMECALL                         R11 R11 K40 ["IsA"]
       90 CALL                             R11 2 1
       91 JUMPIFNOT                        R11 ; [+5]
       92 GETTABLEKS                       R11 R1 K42 ["AssetImportSession"]
       94 NAMECALL                         R11 R11 K43 ["isAvatar"]
       96 CALL                             R11 1 1
       97 SETTABLEKS                       R11 R10 K33 ["ShouldShowRigVisualizationToggle"]
       99 GETTABLEKS                       R11 R0 K44 ["onClickRigVisualization"]
      101 SETTABLEKS                       R11 R10 K34 ["VisualizeRigCallback"]
      103 CALL                             R8 2 1
      104 SETTABLEKS                       R8 R7 K12 ["PreviewControls"]
      106 GETUPVAL                         R8 0
      107 GETTABLEKS                       R8 R8 K3 ["createElement"]
      109 GETUPVAL                         R9 1
      110 DUPTABLE                         R10 K46 [{["ZIndex"] = 2}]
      111 DUPTABLE                         R11 K48 [{"PreviewRender"}]
      112 GETUPVAL                         R12 0
      113 GETTABLEKS                       R12 R12 K3 ["createElement"]
      115 GETUPVAL                         R13 4
      116 DUPTABLE                         R14 K59 [{["Model"], ["InitialDistance"], ["Camera"], ["FocusDirection"] = {-1, 1, -1}, ["RecenterCameraOnUpdate"], ["RecenterModelOnUpdate"], ["OnViewModelLoaded"], ["Ambient"], ["LightColor"], ["LightDirection"]}]
      117 GETTABLEKS                       R15 R0 K26 ["previewProps"]
      119 GETTABLEKS                       R15 R15 K60 ["model"]
      121 SETTABLEKS                       R15 R14 K22 ["Model"]
      123 GETTABLEKS                       R15 R0 K26 ["previewProps"]
      125 GETTABLEKS                       R15 R15 K61 ["initDist"]
      127 SETTABLEKS                       R15 R14 K49 ["InitialDistance"]
      129 GETTABLEKS                       R15 R0 K28 ["camera"]
      131 SETTABLEKS                       R15 R14 K50 ["Camera"]
      133 GETTABLEKS                       R15 R0 K62 ["recenterCamera"]
      135 SETTABLEKS                       R15 R14 K53 ["RecenterCameraOnUpdate"]
      137 GETTABLEKS                       R15 R0 K63 ["recenterModel"]
      139 SETTABLEKS                       R15 R14 K54 ["RecenterModelOnUpdate"]
      141 GETTABLEKS                       R15 R0 K64 ["loadAnimationIntoViewport"]
      143 SETTABLEKS                       R15 R14 K55 ["OnViewModelLoaded"]
      145 GETTABLEKS                       R15 R2 K65 ["PreviewWindow"]
      147 GETTABLEKS                       R15 R15 K66 ["Lighting"]
      149 GETTABLEKS                       R15 R15 K56 ["Ambient"]
      151 SETTABLEKS                       R15 R14 K56 ["Ambient"]
      153 GETTABLEKS                       R15 R2 K65 ["PreviewWindow"]
      155 GETTABLEKS                       R15 R15 K66 ["Lighting"]
      157 GETTABLEKS                       R15 R15 K67 ["Color"]
      159 SETTABLEKS                       R15 R14 K57 ["LightColor"]
      161 GETTABLEKS                       R15 R2 K65 ["PreviewWindow"]
      163 GETTABLEKS                       R15 R15 K66 ["Lighting"]
      165 GETTABLEKS                       R15 R15 K68 ["Direction"]
      167 SETTABLEKS                       R15 R14 K58 ["LightDirection"]
      169 CALL                             R12 2 1
      170 SETTABLEKS                       R12 R11 K47 ["PreviewRender"]
      172 CALL                             R8 3 1
      173 SETTABLEKS                       R8 R7 K13 ["PreviewRenderContainer"]
      175 GETTABLEKS                       R9 R0 K69 ["isRigVisualized"]
      177 CALL                             R9 0 1
      178 JUMPIFNOT                        R9 ; [+33]
      179 GETUPVAL                         R8 0
      180 GETTABLEKS                       R8 R8 K3 ["createElement"]
      182 GETUPVAL                         R9 1
      183 DUPTABLE                         R10 K71 [{["ZIndex"] = 3}]
      184 NEWTABLE                         R11 0 1
      186 GETUPVAL                         R12 0
      187 GETTABLEKS                       R12 R12 K3 ["createElement"]
      189 GETUPVAL                         R13 5
      190 DUPTABLE                         R14 K73 [{"PreviewInstance", "Camera", "AssetImportSession", "SelectedImportItem"}]
      191 GETTABLEKS                       R15 R1 K72 ["PreviewInstance"]
      193 SETTABLEKS                       R15 R14 K72 ["PreviewInstance"]
      195 GETTABLEKS                       R15 R0 K28 ["camera"]
      197 SETTABLEKS                       R15 R14 K50 ["Camera"]
      199 GETTABLEKS                       R15 R1 K42 ["AssetImportSession"]
      201 SETTABLEKS                       R15 R14 K42 ["AssetImportSession"]
      203 GETTABLEKS                       R15 R1 K38 ["SelectedImportItem"]
      205 SETTABLEKS                       R15 R14 K38 ["SelectedImportItem"]
      207 CALL                             R12 2 -1
      208 SETLIST                          R11 R12 -1 [1]
      210 CALL                             R8 3 1
      211 JUMP                             ; [+1]
      212 LOADNIL                          R8
      213 SETTABLEKS                       R8 R7 K14 ["RigVisualization"]
      215 GETUPVAL                         R8 0
      216 GETTABLEKS                       R8 R8 K3 ["createElement"]
      218 GETUPVAL                         R9 1
      219 DUPTABLE                         R10 K77 [{["Size"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 4}]
      220 GETIMPORT                        R11 K9 [UDim2.new]
      222 LOADN                            R12 0
      223 GETTABLEKS                       R13 R3 K78 ["IndicatorSize"]
      225 LOADN                            R14 0
      226 GETTABLEKS                       R15 R3 K78 ["IndicatorSize"]
      228 CALL                             R11 4 1
      229 SETTABLEKS                       R11 R10 K5 ["Size"]
      231 GETIMPORT                        R11 K9 [UDim2.new]
      233 LOADN                            R12 1
      234 GETTABLEKS                       R13 R3 K79 ["IndicatorOffset"]
      236 LOADN                            R14 1
      237 GETTABLEKS                       R15 R3 K79 ["IndicatorOffset"]
      239 CALL                             R11 4 1
      240 SETTABLEKS                       R11 R10 K74 ["Position"]
      242 GETIMPORT                        R11 K81 [Vector2.new]
      244 LOADN                            R12 1
      245 LOADN                            R13 1
      246 CALL                             R11 2 1
      247 SETTABLEKS                       R11 R10 K75 ["AnchorPoint"]
      249 DUPTABLE                         R11 K83 [{"AxisIndicator"}]
      250 GETUPVAL                         R12 0
      251 GETTABLEKS                       R12 R12 K3 ["createElement"]
      253 GETUPVAL                         R13 6
      254 DUPTABLE                         R14 K84 [{"ReferenceCamera"}]
      255 GETTABLEKS                       R15 R0 K28 ["camera"]
      257 SETTABLEKS                       R15 R14 K23 ["ReferenceCamera"]
      259 CALL                             R12 2 1
      260 SETTABLEKS                       R12 R11 K82 ["AxisIndicator"]
      262 CALL                             R8 3 1
      263 SETTABLEKS                       R8 R7 K15 ["AxisIndicatorContainer"]
      265 CALL                             R4 3 -1
      266 RETURN                           R4 -1

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
        1 GETTABLEKS                       R2 R0 K5 ["Preview"]
        3 GETTABLEKS                       R2 R2 K6 ["assetImportSession"]
        5 SETTABLEKS                       R2 R1 K0 ["AssetImportSession"]
        7 GETTABLEKS                       R2 R0 K5 ["Preview"]
        9 GETTABLEKS                       R2 R2 K7 ["importTree"]
       11 SETTABLEKS                       R2 R1 K1 ["ImportTree"]
       13 GETTABLEKS                       R2 R0 K5 ["Preview"]
       15 GETTABLEKS                       R2 R2 K8 ["previewInstance"]
       17 SETTABLEKS                       R2 R1 K2 ["PreviewInstance"]
       19 GETTABLEKS                       R2 R0 K5 ["Preview"]
       21 GETTABLEKS                       R2 R2 K9 ["selectedImportItem"]
       23 SETTABLEKS                       R2 R1 K3 ["SelectedImportItem"]
       25 RETURN                           R1 1

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
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R6 R3 K12 ["Style"]
       34 GETTABLEKS                       R6 R6 K13 ["Stylizer"]
       36 GETTABLEKS                       R7 R3 K14 ["UI"]
       38 GETTABLEKS                       R8 R7 K15 ["Pane"]
       40 GETTABLEKS                       R9 R7 K16 ["AssetRenderModel"]
       42 GETIMPORT                        R10 K5 [require]
       44 GETTABLEKS                       R11 R0 K17 ["Src"]
       46 GETTABLEKS                       R11 R11 K18 ["Components"]
       48 GETTABLEKS                       R11 R11 K19 ["Preview"]
       50 GETTABLEKS                       R11 R11 K20 ["WorkspacePreview"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K5 [require]
       55 GETTABLEKS                       R12 R0 K17 ["Src"]
       57 GETTABLEKS                       R12 R12 K18 ["Components"]
       59 GETTABLEKS                       R12 R12 K19 ["Preview"]
       61 GETTABLEKS                       R12 R12 K21 ["AxisIndicator"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K5 [require]
       66 GETTABLEKS                       R13 R0 K17 ["Src"]
       68 GETTABLEKS                       R13 R13 K18 ["Components"]
       70 GETTABLEKS                       R13 R13 K19 ["Preview"]
       72 GETTABLEKS                       R13 R13 K22 ["PreviewControls"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K5 [require]
       77 GETTABLEKS                       R14 R0 K17 ["Src"]
       79 GETTABLEKS                       R14 R14 K18 ["Components"]
       81 GETTABLEKS                       R14 R14 K19 ["Preview"]
       83 GETTABLEKS                       R14 R14 K23 ["RigVisualization"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K5 [require]
       88 GETTABLEKS                       R15 R0 K17 ["Src"]
       90 GETTABLEKS                       R15 R15 K24 ["Thunks"]
       92 GETTABLEKS                       R15 R15 K25 ["UpdatePreviewInstance"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K5 [require]
       97 GETTABLEKS                       R16 R0 K17 ["Src"]
       99 GETTABLEKS                       R16 R16 K26 ["Utility"]
      101 GETTABLEKS                       R16 R16 K27 ["getAssetPreviewProps"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K5 [require]
      106 GETTABLEKS                       R17 R0 K17 ["Src"]
      108 GETTABLEKS                       R17 R17 K26 ["Utility"]
      110 GETTABLEKS                       R17 R17 K28 ["getAssetRenderModel"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K5 [require]
      115 GETTABLEKS                       R18 R0 K17 ["Src"]
      117 GETTABLEKS                       R18 R18 K26 ["Utility"]
      119 GETTABLEKS                       R18 R18 K29 ["loadAnimation"]
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
