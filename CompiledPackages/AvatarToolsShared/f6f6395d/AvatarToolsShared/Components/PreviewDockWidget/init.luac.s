PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["PreviewContext"]
        5 GETTABLEKS                       R3 R1 K2 ["UserInputType"]
        7 GETIMPORT                        R4 K5 [Enum.UserInputType.Keyboard]
        9 JUMPIFNOTEQ                      R3 R4 ; [+22]
       11 GETTABLEKS                       R3 R1 K6 ["KeyCode"]
       13 GETIMPORT                        R4 K8 [Enum.KeyCode.Left]
       15 JUMPIFNOTEQ                      R3 R4 ; [+6]
       17 LOADB                            R5 0
       18 NAMECALL                         R3 R2 K9 ["cyclePreviewAvatarIndex"]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0
       22 GETTABLEKS                       R3 R1 K6 ["KeyCode"]
       24 GETIMPORT                        R4 K11 [Enum.KeyCode.Right]
       26 JUMPIFNOTEQ                      R3 R4 ; [+5]
       28 LOADB                            R5 1
       29 NAMECALL                         R3 R2 K9 ["cyclePreviewAvatarIndex"]
       31 CALL                             R3 2 0
       32 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onInputBegan"]
        4 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["PreviewContext"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K16 [{["Id"] = "PreviewWidget", ["Title"] = "Preview Widget", ["Name"] = "Preview Widget", ["ZIndexBehavior"], ["InitialDockState"], ["InitialEnabled"], ["Size"], ["MinSize"], ["OnClose"], ["Enabled"]}]
       11 GETIMPORT                        R7 K19 [Enum.ZIndexBehavior.Sibling]
       13 SETTABLEKS                       R7 R6 K9 ["ZIndexBehavior"]
       15 GETTABLEKS                       R7 R1 K10 ["InitialDockState"]
       17 SETTABLEKS                       R7 R6 K10 ["InitialDockState"]
       19 GETTABLEKS                       R7 R1 K11 ["InitialEnabled"]
       21 SETTABLEKS                       R7 R6 K11 ["InitialEnabled"]
       23 GETTABLEKS                       R7 R3 K12 ["Size"]
       25 SETTABLEKS                       R7 R6 K12 ["Size"]
       27 GETTABLEKS                       R7 R3 K13 ["MinSize"]
       29 SETTABLEKS                       R7 R6 K13 ["MinSize"]
       31 GETTABLEKS                       R7 R1 K14 ["OnClose"]
       33 JUMPIF                           R7 ; [+1]
       34 DUPCLOSURE                       R7 K20 [PROTO_2]
       35 SETTABLEKS                       R7 R6 K14 ["OnClose"]
       37 GETTABLEKS                       R7 R1 K15 ["Enabled"]
       39 SETTABLEKS                       R7 R6 K15 ["Enabled"]
       41 DUPTABLE                         R7 K22 [{"Container"}]
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R8 R8 K3 ["createElement"]
       45 LOADK                            R9 K23 ["Frame"]
       46 NEWTABLE                         R10 2 0
       48 GETIMPORT                        R11 K26 [UDim2.new]
       50 LOADN                            R12 1
       51 LOADN                            R13 0
       52 LOADN                            R14 1
       53 LOADN                            R15 0
       54 CALL                             R11 4 1
       55 SETTABLEKS                       R11 R10 K12 ["Size"]
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K27 ["Event"]
       60 GETTABLEKS                       R11 R11 K28 ["InputBegan"]
       62 GETTABLEKS                       R12 R0 K29 ["onInputBegan"]
       64 SETTABLE                         R12 R10 R11
       65 DUPTABLE                         R11 K31 [{"PreviewViewportFrame"}]
       66 GETUPVAL                         R12 0
       67 GETTABLEKS                       R12 R12 K3 ["createElement"]
       69 GETUPVAL                         R13 2
       70 DUPTABLE                         R14 K33 [{"Size", "OnCapacityReached"}]
       71 GETIMPORT                        R15 K26 [UDim2.new]
       73 LOADN                            R16 1
       74 LOADN                            R17 0
       75 LOADN                            R18 1
       76 LOADN                            R19 0
       77 CALL                             R15 4 1
       78 SETTABLEKS                       R15 R14 K12 ["Size"]
       80 GETTABLEKS                       R15 R0 K0 ["props"]
       82 GETTABLEKS                       R15 R15 K32 ["OnCapacityReached"]
       84 SETTABLEKS                       R15 R14 K32 ["OnCapacityReached"]
       86 CALL                             R12 2 1
       87 SETTABLEKS                       R12 R11 K30 ["PreviewViewportFrame"]
       89 CALL                             R8 3 1
       90 SETTABLEKS                       R8 R7 K21 ["Container"]
       92 CALL                             R4 3 -1
       93 RETURN                           R4 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PreviewContext"]
        4 NAMECALL                         R1 R1 K2 ["getAvatars"]
        6 CALL                             R1 1 1
        7 GETIMPORT                        R2 K4 [ipairs]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 3
       11 FORGPREP_INEXT                   R2
       12 GETTABLEKS                       R7 R6 K5 ["model"]
       14 JUMPIFNOT                        R7 ; [+5]
       15 GETTABLEKS                       R7 R6 K5 ["model"]
       17 LOADNIL                          R8
       18 SETTABLEKS                       R8 R7 K6 ["Parent"]
       20 FORGLOOP                         R2 2 [inext] ; [-9]
       22 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K6 ["AvatarToolsShared"]
       16 GETTABLEKS                       R3 R2 K7 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["AccessoryAndBodyToolShared"]
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R2 K9 ["Components"]
       24 GETTABLEKS                       R5 R5 K10 ["PreviewViewportFrame"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R6 R0 K11 ["Framework"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K12 ["ContextServices"]
       34 GETTABLEKS                       R7 R6 K13 ["withContext"]
       36 GETIMPORT                        R8 K4 [require]
       38 GETTABLEKS                       R9 R2 K14 ["Contexts"]
       40 GETTABLEKS                       R9 R9 K15 ["PreviewContext"]
       42 CALL                             R8 1 1
       43 GETTABLEKS                       R9 R5 K16 ["UI"]
       45 GETTABLEKS                       R10 R9 K17 ["DockWidget"]
       47 GETTABLEKS                       R11 R1 K18 ["PureComponent"]
       49 LOADK                            R13 K19 ["PreviewDockWidget"]
       50 NAMECALL                         R11 R11 K20 ["extend"]
       52 CALL                             R11 2 1
       53 DUPTABLE                         R12 K25 [{["InitialDockState"], ["InitialEnabled"] = True, ["Enabled"] = True}]
       54 GETIMPORT                        R13 K28 [Enum.InitialDockState.Left]
       56 SETTABLEKS                       R13 R12 K21 ["InitialDockState"]
       58 SETTABLEKS                       R12 R11 K29 ["defaultProps"]
       60 DUPCLOSURE                       R12 K30 [PROTO_1]
       61 SETTABLEKS                       R12 R11 K31 ["init"]
       63 DUPCLOSURE                       R12 K32 [PROTO_3]
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R4
       67 SETTABLEKS                       R12 R11 K33 ["render"]
       69 DUPCLOSURE                       R12 K34 [PROTO_4]
       70 SETTABLEKS                       R12 R11 K35 ["willUnmount"]
       72 MOVE                             R12 R7
       73 DUPTABLE                         R13 K38 [{"Stylizer", "Plugin", "PreviewContext"}]
       74 GETTABLEKS                       R14 R6 K36 ["Stylizer"]
       76 SETTABLEKS                       R14 R13 K36 ["Stylizer"]
       78 GETTABLEKS                       R14 R6 K37 ["Plugin"]
       80 SETTABLEKS                       R14 R13 K37 ["Plugin"]
       82 SETTABLEKS                       R8 R13 K15 ["PreviewContext"]
       84 CALL                             R12 1 1
       85 MOVE                             R13 R11
       86 CALL                             R12 1 1
       87 MOVE                             R11 R12
       88 RETURN                           R11 1
