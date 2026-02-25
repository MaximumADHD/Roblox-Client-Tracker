PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["viewportFrameModel"]
        3 LOADNIL                          R2
        4 LOADK                            R5 K1 ["Model"]
        5 NAMECALL                         R3 R0 K2 ["IsA"]
        7 CALL                             R3 2 1
        8 JUMPIFNOT                        R3 ; [+7]
        9 NAMECALL                         R3 R0 K3 ["GetBoundingBox"]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R4 R3 K4 ["Position"]
       14 MINUS                            R2 R4
       15 JUMP                             ; [+5]
       16 GETTABLEKS                       R4 R0 K5 ["CFrame"]
       18 GETTABLEKS                       R3 R4 K4 ["Position"]
       20 MINUS                            R2 R3
       21 MOVE                             R5 R2
       22 NAMECALL                         R3 R1 K6 ["TranslateBy"]
       24 CALL                             R3 2 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["viewportFrameRef"]
        6 GETTABLEKS                       R2 R0 K2 ["props"]
        8 GETTABLEKS                       R1 R2 K3 ["Camera"]
       10 SETTABLEKS                       R1 R0 K4 ["camera"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K5 ["viewportFrameModel"]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K6 ["centerModel"]
       19 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["AssetImportSession"]
        4 GETTABLEKS                       R4 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R4 K2 ["SelectedImportItem"]
        8 NAMECALL                         R1 R1 K3 ["GetRigVisualization"]
       10 CALL                             R1 2 1
       11 NAMECALL                         R2 R1 K4 ["Clone"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R0 K5 ["viewportFrameModel"]
       16 GETTABLEKS                       R3 R0 K0 ["props"]
       18 GETTABLEKS                       R2 R3 K6 ["PreviewInstance"]
       20 GETTABLEKS                       R3 R0 K7 ["centerModel"]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 0
       24 GETTABLEKS                       R3 R0 K8 ["viewportFrameRef"]
       26 NAMECALL                         R3 R3 K9 ["getValue"]
       28 CALL                             R3 1 1
       29 JUMPIFNOT                        R3 ; [+4]
       30 GETTABLEKS                       R4 R0 K5 ["viewportFrameModel"]
       32 SETTABLEKS                       R3 R4 K10 ["Parent"]
       34 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["viewportFrameModel"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["viewportFrameModel"]
        5 NAMECALL                         R1 R1 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["viewportFrameModel"]
       11 NAMECALL                         R1 R0 K2 ["addViewportModel"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["addViewportModel"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["viewportFrameModel"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["viewportFrameModel"]
        5 NAMECALL                         R1 R1 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["viewportFrameModel"]
       11 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Position"]
        6 JUMPIF                           R3 ; [+7]
        7 GETIMPORT                        R3 K5 [UDim2.new]
        9 LOADN                            R4 0
       10 LOADN                            R5 0
       11 LOADN                            R6 0
       12 LOADN                            R7 0
       13 CALL                             R3 4 1
       14 GETTABLEKS                       R4 R1 K6 ["Size"]
       16 JUMPIF                           R4 ; [+7]
       17 GETIMPORT                        R4 K5 [UDim2.new]
       19 LOADN                            R5 1
       20 LOADN                            R6 0
       21 LOADN                            R7 1
       22 LOADN                            R8 0
       23 CALL                             R4 4 1
       24 GETTABLEKS                       R5 R0 K7 ["camera"]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R6 R7 K8 ["createElement"]
       29 LOADK                            R7 K9 ["ViewportFrame"]
       30 NEWTABLE                         R8 8 0
       32 SETTABLEKS                       R2 R8 K1 ["LayoutOrder"]
       34 SETTABLEKS                       R3 R8 K2 ["Position"]
       36 SETTABLEKS                       R4 R8 K6 ["Size"]
       38 LOADN                            R9 0
       39 SETTABLEKS                       R9 R8 K10 ["BorderSizePixel"]
       41 LOADN                            R9 1
       42 SETTABLEKS                       R9 R8 K11 ["BackgroundTransparency"]
       44 SETTABLEKS                       R5 R8 K12 ["CurrentCamera"]
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R9 R10 K13 ["Ref"]
       49 GETTABLEKS                       R10 R0 K14 ["viewportFrameRef"]
       51 SETTABLE                         R10 R8 R9
       52 CALL                             R6 2 -1
       53 RETURN                           R6 -1

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
       16 LOADK                            R4 K9 ["RigVisualization"]
       17 NAMECALL                         R2 R2 K10 ["extend"]
       19 CALL                             R2 2 1
       20 DUPCLOSURE                       R3 K11 [PROTO_1]
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R3 R2 K12 ["init"]
       24 DUPCLOSURE                       R3 K13 [PROTO_2]
       25 SETTABLEKS                       R3 R2 K14 ["addViewportModel"]
       27 DUPCLOSURE                       R3 K15 [PROTO_3]
       28 SETTABLEKS                       R3 R2 K16 ["didUpdate"]
       30 DUPCLOSURE                       R3 K17 [PROTO_4]
       31 SETTABLEKS                       R3 R2 K18 ["didMount"]
       33 DUPCLOSURE                       R3 K19 [PROTO_5]
       34 SETTABLEKS                       R3 R2 K20 ["willUnmount"]
       36 DUPCLOSURE                       R3 K21 [PROTO_6]
       37 CAPTURE                          VAL R1
       38 SETTABLEKS                       R3 R2 K22 ["render"]
       40 RETURN                           R2 1
