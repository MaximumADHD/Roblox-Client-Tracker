PROTO_0:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["widget"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["cleanupFunc"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["createBinding"]
        9 GETTABLEKS                       R2 R0 K3 ["props"]
       11 GETTABLEKS                       R2 R2 K4 ["onCloseCallback"]
       13 CALL                             R1 1 2
       14 SETTABLEKS                       R1 R0 K4 ["onCloseCallback"]
       16 SETTABLEKS                       R2 R0 K5 ["updateOnCloseCallback"]
       18 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["localization"]
        3 LOADK                            R3 K1 ["FaceControlEditor"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K2 ["getText"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onCloseCallback"]
        3 NAMECALL                         R0 R0 K1 ["getValue"]
        5 CALL                             R0 1 1
        6 JUMPIFNOT                        R0 ; [+2]
        7 MOVE                             R1 R0
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 GETIMPORT                        R2 K3 [DockWidgetPluginGuiInfo.new]
        7 GETIMPORT                        R3 K7 [Enum.InitialDockState.Left]
        9 LOADB                            R4 1
       10 LOADB                            R5 1
       11 LOADN                            R6 300
       12 LOADN                            R7 600
       13 LOADN                            R8 300
       14 LOADN                            R9 600
       15 CALL                             R2 7 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R4 R0 K8 ["plugin"]
       19 LOADK                            R6 K9 ["FaceControlEditor"]
       20 MOVE                             R7 R2
       21 NAMECALL                         R4 R4 K10 ["CreateDockWidgetPluginGui"]
       23 CALL                             R4 3 1
       24 SETTABLEKS                       R4 R3 K11 ["widget"]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K11 ["widget"]
       29 GETTABLEKS                       R4 R0 K12 ["localization"]
       31 LOADK                            R6 K9 ["FaceControlEditor"]
       32 LOADK                            R7 K13 ["Title"]
       33 NAMECALL                         R4 R4 K14 ["getText"]
       35 CALL                             R4 3 1
       36 SETTABLEKS                       R4 R3 K13 ["Title"]
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R3 R3 K11 ["widget"]
       41 GETTABLEKS                       R4 R0 K12 ["localization"]
       43 LOADK                            R6 K9 ["FaceControlEditor"]
       44 LOADK                            R7 K15 ["Name"]
       45 NAMECALL                         R4 R4 K14 ["getText"]
       47 CALL                             R4 3 1
       48 SETTABLEKS                       R4 R3 K15 ["Name"]
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R3 R3 K11 ["widget"]
       53 GETIMPORT                        R4 K18 [Enum.ZIndexBehavior.Sibling]
       55 SETTABLEKS                       R4 R3 K16 ["ZIndexBehavior"]
       57 GETUPVAL                         R3 0
       58 GETTABLEKS                       R3 R3 K11 ["widget"]
       60 NEWCLOSURE                       R5 P1
       61 CAPTURE                          UPVAL U0
       62 NAMECALL                         R3 R3 K19 ["BindToClose"]
       64 CALL                             R3 2 0
       65 GETUPVAL                         R3 0
       66 GETUPVAL                         R4 1
       67 GETTABLEKS                       R4 R4 K20 ["setup"]
       69 GETTABLEKS                       R4 R4 K21 ["mount"]
       71 GETUPVAL                         R5 0
       72 GETTABLEKS                       R5 R5 K11 ["widget"]
       74 GETTABLEKS                       R6 R0 K8 ["plugin"]
       76 GETTABLEKS                       R7 R0 K22 ["updateContextFunction"]
       78 GETTABLEKS                       R8 R0 K23 ["animationContext"]
       80 GETTABLEKS                       R8 R8 K24 ["RootInstance"]
       82 MOVE                             R9 R1
       83 CALL                             R4 5 1
       84 SETTABLEKS                       R4 R3 K25 ["cleanupFunc"]
       86 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["localization"]
        5 LOADK                            R3 K2 ["FaceControlEditor"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K3 ["getText"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["onCloseCallback"]
        4 GETTABLEKS                       R3 R1 K1 ["onCloseCallback"]
        6 JUMPIFEQ                         R2 R3 ; [+8]
        8 GETTABLEKS                       R2 R0 K2 ["updateOnCloseCallback"]
       10 GETTABLEKS                       R3 R0 K0 ["props"]
       12 GETTABLEKS                       R3 R3 K1 ["onCloseCallback"]
       14 CALL                             R2 1 0
       15 GETTABLEKS                       R2 R1 K3 ["animationContext"]
       17 GETTABLEKS                       R3 R0 K0 ["props"]
       19 GETTABLEKS                       R3 R3 K3 ["animationContext"]
       21 GETTABLEKS                       R4 R0 K4 ["widget"]
       23 JUMPIFNOT                        R4 ; [+35]
       24 GETTABLEKS                       R4 R2 K5 ["RootInstance"]
       26 GETTABLEKS                       R5 R3 K5 ["RootInstance"]
       28 JUMPIFEQ                         R4 R5 ; [+30]
       30 GETTABLEKS                       R4 R0 K6 ["cleanupFunc"]
       32 JUMPIFNOT                        R4 ; [+3]
       33 GETTABLEKS                       R4 R0 K6 ["cleanupFunc"]
       35 CALL                             R4 0 0
       36 NEWCLOSURE                       R4 P0
       37 CAPTURE                          VAL R0
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K7 ["setup"]
       41 GETTABLEKS                       R5 R5 K8 ["mount"]
       43 GETTABLEKS                       R6 R0 K4 ["widget"]
       45 GETTABLEKS                       R7 R0 K0 ["props"]
       47 GETTABLEKS                       R7 R7 K9 ["plugin"]
       49 GETTABLEKS                       R8 R0 K0 ["props"]
       51 GETTABLEKS                       R8 R8 K10 ["updateContextFunction"]
       53 GETTABLEKS                       R9 R3 K5 ["RootInstance"]
       55 MOVE                             R10 R4
       56 CALL                             R5 5 1
       57 SETTABLEKS                       R5 R0 K6 ["cleanupFunc"]
       59 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["cleanupFunc"]
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R1 R0 K1 ["cleanupFunc"]
        8 CALL                             R1 0 0
        9 GETTABLEKS                       R1 R0 K2 ["widget"]
       11 JUMPIFNOT                        R1 ; [+5]
       12 GETTABLEKS                       R1 R0 K2 ["widget"]
       14 NAMECALL                         R1 R1 K3 ["Destroy"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["FaceControlEditorComponent"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Component"]
       23 LOADK                            R5 K10 ["FaceControlEditorWidget"]
       24 NAMECALL                         R3 R3 K11 ["extend"]
       26 CALL                             R3 2 1
       27 DUPCLOSURE                       R4 K12 [PROTO_0]
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R4 R3 K13 ["init"]
       31 DUPCLOSURE                       R4 K14 [PROTO_1]
       32 SETTABLEKS                       R4 R3 K15 ["render"]
       34 DUPCLOSURE                       R4 K16 [PROTO_5]
       35 CAPTURE                          VAL R2
       36 SETTABLEKS                       R4 R3 K17 ["didMount"]
       38 DUPCLOSURE                       R4 K18 [PROTO_7]
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R4 R3 K19 ["didUpdate"]
       42 DUPCLOSURE                       R4 K20 [PROTO_8]
       43 SETTABLEKS                       R4 R3 K21 ["willUnmount"]
       45 RETURN                           R3 1
