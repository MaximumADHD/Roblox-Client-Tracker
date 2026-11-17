PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["CFrame"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["CFrame"]
        7 GETTABLEKS                       R3 R3 K1 ["Position"]
        9 SUB                              R1 R2 R3
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R1 R1 K2 ["ToWorldSpace"]
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K0 ["CFrame"]
       16 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isOrbitDragging"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["isPanDragging"]
        6 LOADN                            R1 0
        7 SETTABLEKS                       R1 R0 K2 ["lastClickTime"]
        9 LOADB                            R1 0
       10 SETTABLEKS                       R1 R0 K3 ["initialCenter"]
       12 GETTABLEKS                       R1 R0 K4 ["props"]
       14 GETUPVAL                         R2 0
       15 CALL                             R2 0 1
       16 SETTABLEKS                       R2 R1 K5 ["Model"]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K6 ["createRef"]
       21 CALL                             R1 0 1
       22 SETTABLEKS                       R1 R0 K7 ["viewportFrameRef"]
       24 GETIMPORT                        R1 K10 [Instance.new]
       26 LOADK                            R2 K11 ["Camera"]
       27 CALL                             R1 1 1
       28 LOADK                            R2 K12 ["AxisCamera"]
       29 SETTABLEKS                       R2 R1 K13 ["Name"]
       31 GETTABLEKS                       R2 R0 K4 ["props"]
       33 GETTABLEKS                       R2 R2 K14 ["ReferenceCamera"]
       35 GETTABLEKS                       R4 R2 K15 ["CFrame"]
       37 GETTABLEKS                       R5 R2 K15 ["CFrame"]
       39 GETTABLEKS                       R5 R5 K16 ["Position"]
       41 SUB                              R3 R4 R5
       42 GETUPVAL                         R5 2
       43 NAMECALL                         R3 R3 K17 ["ToWorldSpace"]
       45 CALL                             R3 2 1
       46 SETTABLEKS                       R3 R1 K15 ["CFrame"]
       48 LOADK                            R5 K15 ["CFrame"]
       49 NAMECALL                         R3 R2 K18 ["GetPropertyChangedSignal"]
       51 CALL                             R3 2 1
       52 NEWCLOSURE                       R5 P0
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          UPVAL U2
       56 NAMECALL                         R3 R3 K19 ["Connect"]
       58 CALL                             R3 2 1
       59 SETTABLEKS                       R3 R0 K20 ["refCamCFrameChangedConnection"]
       61 SETTABLEKS                       R1 R0 K21 ["camera"]
       63 LOADNIL                          R3
       64 SETTABLEKS                       R3 R0 K22 ["viewportFrameModel"]
       66 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Model"]
        4 NAMECALL                         R2 R1 K2 ["Clone"]
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R0 K3 ["viewportFrameModel"]
        9 GETTABLEKS                       R2 R0 K4 ["viewportFrameRef"]
       11 NAMECALL                         R2 R2 K5 ["getValue"]
       13 CALL                             R2 1 1
       14 JUMPIFNOT                        R2 ; [+7]
       15 NAMECALL                         R3 R2 K6 ["ClearAllChildren"]
       17 CALL                             R3 1 0
       18 GETTABLEKS                       R3 R0 K3 ["viewportFrameModel"]
       20 SETTABLEKS                       R2 R3 K7 ["Parent"]
       22 RETURN                           R0 0

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["updateViewportModel"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["viewportFrameModel"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["viewportFrameModel"]
        5 NAMECALL                         R1 R1 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["viewportFrameModel"]
       11 GETTABLEKS                       R1 R0 K2 ["camera"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["camera"]
       16 NAMECALL                         R1 R1 K1 ["Destroy"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["camera"]
       22 GETTABLEKS                       R1 R0 K3 ["refCamCFrameChangedConnection"]
       24 NAMECALL                         R1 R1 K4 ["Disconnect"]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Position"]
        6 GETTABLEKS                       R4 R1 K3 ["Size"]
        8 JUMPIF                           R4 ; [+7]
        9 GETIMPORT                        R4 K6 [UDim2.new]
       11 LOADN                            R5 1
       12 LOADN                            R6 0
       13 LOADN                            R7 1
       14 LOADN                            R8 0
       15 CALL                             R4 4 1
       16 GETTABLEKS                       R5 R0 K7 ["camera"]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K8 ["createElement"]
       21 LOADK                            R7 K9 ["ViewportFrame"]
       22 NEWTABLE                         R8 8 0
       24 SETTABLEKS                       R2 R8 K1 ["LayoutOrder"]
       26 SETTABLEKS                       R3 R8 K2 ["Position"]
       28 SETTABLEKS                       R4 R8 K3 ["Size"]
       30 LOADN                            R9 0
       31 SETTABLEKS                       R9 R8 K10 ["BorderSizePixel"]
       33 LOADN                            R9 1
       34 SETTABLEKS                       R9 R8 K11 ["BackgroundTransparency"]
       36 SETTABLEKS                       R5 R8 K12 ["CurrentCamera"]
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R9 R9 K13 ["Ref"]
       41 GETTABLEKS                       R10 R0 K14 ["viewportFrameRef"]
       43 SETTABLE                         R10 R8 R9
       44 CALL                             R6 2 -1
       45 RETURN                           R6 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Utility"]
       20 GETTABLEKS                       R3 R3 K10 ["createAxisIndicator"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["PureComponent"]
       25 LOADK                            R5 K12 ["AxisIndicator"]
       26 NAMECALL                         R3 R3 K13 ["extend"]
       28 CALL                             R3 2 1
       29 GETIMPORT                        R4 K16 [CFrame.new]
       31 LOADN                            R5 0
       32 LOADN                            R6 0
       33 LOADN                            R7 6
       34 CALL                             R4 3 1
       35 DUPCLOSURE                       R5 K17 [PROTO_1]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R5 R3 K18 ["init"]
       41 DUPCLOSURE                       R5 K19 [PROTO_2]
       42 SETTABLEKS                       R5 R3 K20 ["updateViewportModel"]
       44 DUPCLOSURE                       R5 K21 [PROTO_3]
       45 SETTABLEKS                       R5 R3 K22 ["didMount"]
       47 DUPCLOSURE                       R5 K23 [PROTO_4]
       48 SETTABLEKS                       R5 R3 K24 ["willUnmount"]
       50 DUPCLOSURE                       R5 K25 [PROTO_5]
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R5 R3 K26 ["render"]
       54 RETURN                           R3 1
