PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["canvasRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETIMPORT                        R2 K4 [UDim2.new]
        8 LOADN                            R3 1
        9 LOADN                            R4 0
       10 LOADN                            R5 0
       11 MOVE                             R6 R0
       12 CALL                             R2 4 1
       13 SETTABLEKS                       R2 R1 K5 ["CanvasSize"]
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["canvasRef"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K2 ["contentHeightChanged"]
       10 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["addTemplates"]
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 1 0
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["Ref"]
        9 GETTABLEKS                       R5 R0 K2 ["canvasRef"]
       11 SETTABLE                         R5 R3 R4
       12 NEWTABLE                         R4 0 1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K0 ["createElement"]
       17 LOADK                            R6 K3 ["Frame"]
       18 DUPTABLE                         R7 K7 [{"Size", "BorderSizePixel", "BackgroundTransparency"}]
       19 GETIMPORT                        R8 K10 [UDim2.new]
       21 LOADN                            R9 1
       22 LOADN                            R10 0
       23 LOADN                            R11 1
       24 LOADN                            R12 0
       25 CALL                             R8 4 1
       26 SETTABLEKS                       R8 R7 K4 ["Size"]
       28 LOADN                            R8 0
       29 SETTABLEKS                       R8 R7 K5 ["BorderSizePixel"]
       31 LOADN                            R8 1
       32 SETTABLEKS                       R8 R7 K6 ["BackgroundTransparency"]
       34 DUPTABLE                         R8 K12 [{"MorpherTemplateContainer"}]
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K0 ["createElement"]
       38 GETUPVAL                         R10 2
       39 DUPTABLE                         R11 K19 [{"ThemeData", "StateTemplates", "IsEnabled", "Mouse", "clobberTemplate", "ContentHeightChanged"}]
       40 GETTABLEKS                       R12 R0 K20 ["props"]
       42 GETTABLEKS                       R12 R12 K21 ["StateTheme"]
       44 SETTABLEKS                       R12 R11 K13 ["ThemeData"]
       46 GETTABLEKS                       R12 R0 K20 ["props"]
       48 GETTABLEKS                       R12 R12 K14 ["StateTemplates"]
       50 SETTABLEKS                       R12 R11 K14 ["StateTemplates"]
       52 LOADB                            R12 1
       53 SETTABLEKS                       R12 R11 K15 ["IsEnabled"]
       55 GETTABLEKS                       R12 R0 K20 ["props"]
       57 GETTABLEKS                       R12 R12 K16 ["Mouse"]
       59 SETTABLEKS                       R12 R11 K16 ["Mouse"]
       61 GETTABLEKS                       R12 R0 K20 ["props"]
       63 GETTABLEKS                       R12 R12 K17 ["clobberTemplate"]
       65 SETTABLEKS                       R12 R11 K17 ["clobberTemplate"]
       67 GETTABLEKS                       R12 R0 K22 ["contentHeightChanged"]
       69 SETTABLEKS                       R12 R11 K18 ["ContentHeightChanged"]
       71 CALL                             R9 2 1
       72 SETTABLEKS                       R9 R8 K11 ["MorpherTemplateContainer"]
       74 CALL                             R5 3 -1
       75 SETLIST                          R4 R5 -1 [1]
       77 CALL                             R1 3 -1
       78 RETURN                           R1 -1

PROTO_4:
        0 DUPTABLE                         R2 K2 [{"StateTemplates", "StateTheme"}]
        1 GETTABLEKS                       R3 R0 K3 ["MorpherEditorRoot"]
        3 GETTABLEKS                       R3 R3 K4 ["StateMorpher"]
        5 GETTABLEKS                       R3 R3 K0 ["StateTemplates"]
        7 SETTABLEKS                       R3 R2 K0 ["StateTemplates"]
        9 GETTABLEKS                       R3 R0 K3 ["MorpherEditorRoot"]
       11 GETTABLEKS                       R3 R3 K4 ["StateMorpher"]
       13 GETTABLEKS                       R3 R3 K1 ["StateTheme"]
       15 SETTABLEKS                       R3 R2 K1 ["StateTheme"]
       17 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 -1
        4 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K2 [{"addTemplates", "clobberTemplate"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["addTemplates"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["clobberTemplate"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R1 K2 ["Parent"]
       15 GETTABLEKS                       R1 R1 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R3 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R3 K6 ["Roact"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R1 K5 ["Packages"]
       28 GETTABLEKS                       R4 R4 K7 ["RoactRodux"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R1 K8 ["RoactStudioWidgets"]
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Actions"]
       37 GETTABLEKS                       R6 R6 K10 ["TemplatesAdd"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R7 R0 K9 ["Actions"]
       44 GETTABLEKS                       R7 R7 K11 ["TemplatesClobberTemplate"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R8 R0 K12 ["Components"]
       51 GETTABLEKS                       R8 R8 K13 ["MorpherTemplateContainer"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K4 [require]
       56 GETTABLEKS                       R9 R4 K14 ["StyledScrollingFrame"]
       58 CALL                             R8 1 1
       59 GETTABLEKS                       R9 R2 K15 ["Component"]
       61 LOADK                            R11 K16 ["ComponentRootPanel"]
       62 NAMECALL                         R9 R9 K17 ["extend"]
       64 CALL                             R9 2 1
       65 DUPCLOSURE                       R10 K18 [PROTO_1]
       66 CAPTURE                          VAL R2
       67 SETTABLEKS                       R10 R9 K19 ["init"]
       69 DUPCLOSURE                       R10 K20 [PROTO_2]
       70 SETTABLEKS                       R10 R9 K21 ["didMount"]
       72 DUPCLOSURE                       R10 K22 [PROTO_3]
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R7
       76 SETTABLEKS                       R10 R9 K23 ["render"]
       78 GETTABLEKS                       R10 R3 K24 ["UNSTABLE_connect2"]
       80 DUPCLOSURE                       R11 K25 [PROTO_4]
       81 DUPCLOSURE                       R12 K26 [PROTO_7]
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R6
       84 CALL                             R10 2 1
       85 MOVE                             R11 R9
       86 CALL                             R10 1 1
       87 MOVE                             R9 R10
       88 RETURN                           R9 1
