PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["PreviewContext"]
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
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K14 [{"Id", "Title", "Name", "ZIndexBehavior", "InitialDockState", "InitialEnabled", "Size", "MinSize", "OnClose", "Enabled"}]
       11 LOADK                            R7 K15 ["PreviewWidget"]
       12 SETTABLEKS                       R7 R6 K4 ["Id"]
       14 LOADK                            R7 K16 ["Preview Widget"]
       15 SETTABLEKS                       R7 R6 K5 ["Title"]
       17 LOADK                            R7 K16 ["Preview Widget"]
       18 SETTABLEKS                       R7 R6 K6 ["Name"]
       20 GETIMPORT                        R7 K19 [Enum.ZIndexBehavior.Sibling]
       22 SETTABLEKS                       R7 R6 K7 ["ZIndexBehavior"]
       24 GETTABLEKS                       R7 R1 K8 ["InitialDockState"]
       26 SETTABLEKS                       R7 R6 K8 ["InitialDockState"]
       28 GETTABLEKS                       R7 R1 K9 ["InitialEnabled"]
       30 SETTABLEKS                       R7 R6 K9 ["InitialEnabled"]
       32 GETTABLEKS                       R7 R3 K10 ["Size"]
       34 SETTABLEKS                       R7 R6 K10 ["Size"]
       36 GETTABLEKS                       R7 R3 K11 ["MinSize"]
       38 SETTABLEKS                       R7 R6 K11 ["MinSize"]
       40 GETTABLEKS                       R7 R1 K12 ["OnClose"]
       42 JUMPIF                           R7 ; [+1]
       43 DUPCLOSURE                       R7 K20 [PROTO_2]
       44 SETTABLEKS                       R7 R6 K12 ["OnClose"]
       46 GETTABLEKS                       R7 R1 K13 ["Enabled"]
       48 SETTABLEKS                       R7 R6 K13 ["Enabled"]
       50 DUPTABLE                         R7 K22 [{"Container"}]
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R8 R9 K3 ["createElement"]
       54 LOADK                            R9 K23 ["Frame"]
       55 NEWTABLE                         R10 2 0
       57 GETIMPORT                        R11 K26 [UDim2.new]
       59 LOADN                            R12 1
       60 LOADN                            R13 0
       61 LOADN                            R14 1
       62 LOADN                            R15 0
       63 CALL                             R11 4 1
       64 SETTABLEKS                       R11 R10 K10 ["Size"]
       66 GETUPVAL                         R13 0
       67 GETTABLEKS                       R12 R13 K27 ["Event"]
       69 GETTABLEKS                       R11 R12 K28 ["InputBegan"]
       71 GETTABLEKS                       R12 R0 K29 ["onInputBegan"]
       73 SETTABLE                         R12 R10 R11
       74 DUPTABLE                         R11 K31 [{"PreviewViewportFrame"}]
       75 GETUPVAL                         R13 0
       76 GETTABLEKS                       R12 R13 K3 ["createElement"]
       78 GETUPVAL                         R13 2
       79 DUPTABLE                         R14 K33 [{"Size", "OnCapacityReached"}]
       80 GETIMPORT                        R15 K26 [UDim2.new]
       82 LOADN                            R16 1
       83 LOADN                            R17 0
       84 LOADN                            R18 1
       85 LOADN                            R19 0
       86 CALL                             R15 4 1
       87 SETTABLEKS                       R15 R14 K10 ["Size"]
       89 GETTABLEKS                       R16 R0 K0 ["props"]
       91 GETTABLEKS                       R15 R16 K32 ["OnCapacityReached"]
       93 SETTABLEKS                       R15 R14 K32 ["OnCapacityReached"]
       95 CALL                             R12 2 1
       96 SETTABLEKS                       R12 R11 K30 ["PreviewViewportFrame"]
       98 CALL                             R8 3 1
       99 SETTABLEKS                       R8 R7 K21 ["Container"]
      101 CALL                             R4 3 -1
      102 RETURN                           R4 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["PreviewContext"]
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K6 ["AvatarToolsShared"]
       16 GETTABLEKS                       R4 R2 K7 ["Util"]
       18 GETTABLEKS                       R3 R4 K8 ["AccessoryAndBodyToolShared"]
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R6 R2 K9 ["Components"]
       24 GETTABLEKS                       R5 R6 K10 ["PreviewViewportFrame"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R6 R0 K11 ["Framework"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K12 ["ContextServices"]
       34 GETTABLEKS                       R7 R6 K13 ["withContext"]
       36 GETIMPORT                        R8 K4 [require]
       38 GETTABLEKS                       R10 R2 K14 ["Contexts"]
       40 GETTABLEKS                       R9 R10 K15 ["PreviewContext"]
       42 CALL                             R8 1 1
       43 GETTABLEKS                       R9 R5 K16 ["UI"]
       45 GETTABLEKS                       R10 R9 K17 ["DockWidget"]
       47 GETTABLEKS                       R11 R1 K18 ["PureComponent"]
       49 LOADK                            R13 K19 ["PreviewDockWidget"]
       50 NAMECALL                         R11 R11 K20 ["extend"]
       52 CALL                             R11 2 1
       53 DUPTABLE                         R12 K24 [{"InitialDockState", "InitialEnabled", "Enabled"}]
       54 GETIMPORT                        R13 K27 [Enum.InitialDockState.Left]
       56 SETTABLEKS                       R13 R12 K21 ["InitialDockState"]
       58 LOADB                            R13 1
       59 SETTABLEKS                       R13 R12 K22 ["InitialEnabled"]
       61 LOADB                            R13 1
       62 SETTABLEKS                       R13 R12 K23 ["Enabled"]
       64 SETTABLEKS                       R12 R11 K28 ["defaultProps"]
       66 DUPCLOSURE                       R12 K29 [PROTO_1]
       67 SETTABLEKS                       R12 R11 K30 ["init"]
       69 DUPCLOSURE                       R12 K31 [PROTO_3]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R4
       73 SETTABLEKS                       R12 R11 K32 ["render"]
       75 DUPCLOSURE                       R12 K33 [PROTO_4]
       76 SETTABLEKS                       R12 R11 K34 ["willUnmount"]
       78 MOVE                             R12 R7
       79 DUPTABLE                         R13 K37 [{"Stylizer", "Plugin", "PreviewContext"}]
       80 GETTABLEKS                       R14 R6 K35 ["Stylizer"]
       82 SETTABLEKS                       R14 R13 K35 ["Stylizer"]
       84 GETTABLEKS                       R14 R6 K36 ["Plugin"]
       86 SETTABLEKS                       R14 R13 K36 ["Plugin"]
       88 SETTABLEKS                       R8 R13 K15 ["PreviewContext"]
       90 CALL                             R12 1 1
       91 MOVE                             R13 R11
       92 CALL                             R12 1 1
       93 MOVE                             R11 R12
       94 RETURN                           R11 1
