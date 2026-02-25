PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["viewportFrameRef"]
        2 NAMECALL                         R2 R2 K1 ["getValue"]
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+21]
        6 GETTABLEKS                       R3 R1 K2 ["Model"]
        8 NAMECALL                         R3 R3 K3 ["Clone"]
       10 CALL                             R3 1 1
       11 SETTABLEKS                       R3 R0 K4 ["viewportFrameModel"]
       13 GETTABLEKS                       R3 R0 K4 ["viewportFrameModel"]
       15 GETTABLEKS                       R5 R1 K5 ["Offset"]
       17 NAMECALL                         R3 R3 K6 ["PivotTo"]
       19 CALL                             R3 2 0
       20 NAMECALL                         R3 R2 K7 ["ClearAllChildren"]
       22 CALL                             R3 1 0
       23 GETTABLEKS                       R3 R0 K4 ["viewportFrameModel"]
       25 SETTABLEKS                       R2 R3 K8 ["Parent"]
       27 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createRef"]
        5 CALL                             R2 0 1
        6 SETTABLEKS                       R2 R0 K2 ["viewportFrameRef"]
        8 GETTABLEKS                       R2 R1 K3 ["ReferenceCamera"]
       10 SETTABLEKS                       R2 R0 K4 ["camera"]
       12 LOADNIL                          R2
       13 SETTABLEKS                       R2 R0 K5 ["viewportFrameModel"]
       15 GETTABLEKS                       R2 R1 K6 ["Model"]
       17 JUMPIFNOT                        R2 ; [+4]
       18 MOVE                             R4 R1
       19 NAMECALL                         R2 R0 K7 ["updateViewportModel"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["viewportFrameModel"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["viewportFrameModel"]
        5 NAMECALL                         R1 R1 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["viewportFrameModel"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["viewportFrameRef"]
        2 NAMECALL                         R2 R2 K1 ["getValue"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R1 K2 ["Model"]
        7 JUMPIFNOT                        R3 ; [+5]
        8 MOVE                             R5 R1
        9 NAMECALL                         R3 R0 K3 ["updateViewportModel"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R3 R0 K4 ["viewportFrameModel"]
       15 NAMECALL                         R3 R3 K5 ["Destroy"]
       17 CALL                             R3 1 0
       18 LOADNIL                          R3
       19 SETTABLEKS                       R3 R0 K4 ["viewportFrameModel"]
       21 NAMECALL                         R3 R2 K6 ["ClearAllChildren"]
       23 CALL                             R3 1 0
       24 RETURN                           R0 0

PROTO_4:
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
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K8 ["createElement"]
       21 LOADK                            R7 K9 ["ViewportFrame"]
       22 NEWTABLE                         R8 8 0
       24 SETTABLEKS                       R2 R8 K1 ["LayoutOrder"]
       26 SETTABLEKS                       R3 R8 K2 ["Position"]
       28 SETTABLEKS                       R4 R8 K3 ["Size"]
       30 LOADN                            R9 0
       31 SETTABLEKS                       R9 R8 K10 ["BorderSizePixel"]
       33 LOADN                            R9 1
       34 SETTABLEKS                       R9 R8 K11 ["BackgroundTransparency"]
       36 LOADK                            R9 K12 [0.7]
       37 SETTABLEKS                       R9 R8 K13 ["ImageTransparency"]
       39 SETTABLEKS                       R5 R8 K14 ["CurrentCamera"]
       41 GETUPVAL                         R10 0
       42 GETTABLEKS                       R9 R10 K15 ["Ref"]
       44 GETTABLEKS                       R10 R0 K16 ["viewportFrameRef"]
       46 SETTABLE                         R10 R8 R9
       47 CALL                             R6 2 -1
       48 RETURN                           R6 -1

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
       14 GETTABLEKS                       R2 R1 K8 ["PureComponent"]
       16 LOADK                            R4 K9 ["WorkspacePreview"]
       17 NAMECALL                         R2 R2 K10 ["extend"]
       19 CALL                             R2 2 1
       20 DUPCLOSURE                       R3 K11 [PROTO_0]
       21 SETTABLEKS                       R3 R2 K12 ["updateViewportModel"]
       23 DUPCLOSURE                       R3 K13 [PROTO_1]
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R3 R2 K14 ["init"]
       27 DUPCLOSURE                       R3 K15 [PROTO_2]
       28 SETTABLEKS                       R3 R2 K16 ["willUnmount"]
       30 DUPCLOSURE                       R3 K17 [PROTO_3]
       31 SETTABLEKS                       R3 R2 K18 ["willUpdate"]
       33 DUPCLOSURE                       R3 K19 [PROTO_4]
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R3 R2 K20 ["render"]
       37 RETURN                           R2 1
