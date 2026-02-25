PROTO_0:
        0 DUPTABLE                         R1 K1 [{"index"}]
        1 LOADN                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["index"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"index"}]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R3 R3 K2 ["getCurrentPreviewAvatarIndex"]
        5 CALL                             R3 1 1
        6 SETTABLEKS                       R3 R2 K0 ["index"]
        8 NAMECALL                         R0 R0 K3 ["setState"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["PreviewContext"]
        4 NAMECALL                         R3 R2 K2 ["getPreviewModelChangedSignal"]
        6 CALL                             R3 1 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R2
       10 NAMECALL                         R3 R3 K3 ["Connect"]
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R0 K4 ["modelSelectionChangedHandle"]
       15 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R2 K2 ["index"]
        6 GETTABLEKS                       R4 R1 K3 ["PreviewContext"]
        8 GETTABLEKS                       R5 R1 K4 ["Stylizer"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K5 ["createElement"]
       13 LOADK                            R7 K6 ["ScreenGui"]
       14 DUPTABLE                         R8 K8 [{"ZIndexBehavior"}]
       15 GETIMPORT                        R9 K11 [Enum.ZIndexBehavior.Sibling]
       17 SETTABLEKS                       R9 R8 K7 ["ZIndexBehavior"]
       19 DUPTABLE                         R9 K13 [{"AvatarSelection"}]
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R10 R11 K5 ["createElement"]
       23 GETUPVAL                         R11 1
       24 DUPTABLE                         R12 K20 [{"PreviewAvatars", "SelectedIndex", "Size", "Position", "AnchorPoint", "Capacity"}]
       25 NAMECALL                         R13 R4 K21 ["getAvatars"]
       27 CALL                             R13 1 1
       28 SETTABLEKS                       R13 R12 K14 ["PreviewAvatars"]
       30 SETTABLEKS                       R3 R12 K15 ["SelectedIndex"]
       32 GETTABLEKS                       R13 R5 K16 ["Size"]
       34 SETTABLEKS                       R13 R12 K16 ["Size"]
       36 GETIMPORT                        R13 K24 [UDim2.fromScale]
       38 LOADK                            R14 K25 [0.5]
       39 LOADN                            R15 1
       40 CALL                             R13 2 1
       41 SETTABLEKS                       R13 R12 K17 ["Position"]
       43 GETIMPORT                        R13 K28 [Vector2.new]
       45 LOADK                            R14 K25 [0.5]
       46 LOADN                            R15 1
       47 CALL                             R13 2 1
       48 SETTABLEKS                       R13 R12 K18 ["AnchorPoint"]
       50 LOADN                            R13 3
       51 SETTABLEKS                       R13 R12 K19 ["Capacity"]
       53 CALL                             R10 2 1
       54 SETTABLEKS                       R10 R9 K12 ["AvatarSelection"]
       56 CALL                             R6 3 -1
       57 RETURN                           R6 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["modelSelectionChangedHandle"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["modelSelectionChangedHandle"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["modelSelectionChangedHandle"]
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["AvatarToolsShared"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R5 K8 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R2 K9 ["Components"]
       34 GETTABLEKS                       R5 R4 K10 ["PreviewAvatarWheel"]
       36 GETTABLEKS                       R6 R2 K11 ["Contexts"]
       38 GETTABLEKS                       R7 R6 K12 ["PreviewContext"]
       40 GETTABLEKS                       R8 R3 K13 ["ContextServices"]
       42 GETTABLEKS                       R9 R8 K14 ["withContext"]
       44 GETTABLEKS                       R10 R1 K15 ["PureComponent"]
       46 LOADK                            R12 K16 ["InExperiencePreviewerFrame"]
       47 NAMECALL                         R10 R10 K17 ["extend"]
       49 CALL                             R10 2 1
       50 DUPCLOSURE                       R11 K18 [PROTO_0]
       51 SETTABLEKS                       R11 R10 K19 ["init"]
       53 DUPCLOSURE                       R11 K20 [PROTO_2]
       54 SETTABLEKS                       R11 R10 K21 ["didMount"]
       56 DUPCLOSURE                       R11 K22 [PROTO_3]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R11 R10 K23 ["render"]
       61 DUPCLOSURE                       R11 K24 [PROTO_4]
       62 SETTABLEKS                       R11 R10 K25 ["willUnmount"]
       64 MOVE                             R11 R9
       65 DUPTABLE                         R12 K27 [{"Stylizer", "PreviewContext"}]
       66 GETTABLEKS                       R13 R8 K26 ["Stylizer"]
       68 SETTABLEKS                       R13 R12 K26 ["Stylizer"]
       70 SETTABLEKS                       R7 R12 K12 ["PreviewContext"]
       72 CALL                             R11 1 1
       73 MOVE                             R12 R10
       74 CALL                             R11 1 1
       75 MOVE                             R10 R11
       76 RETURN                           R10 1
