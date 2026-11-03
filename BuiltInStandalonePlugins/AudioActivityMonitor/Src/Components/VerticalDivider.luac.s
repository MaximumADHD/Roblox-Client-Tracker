PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 GETTABLEKS                       R2 R2 K1 ["Parent"]
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R4 R1 K2 ["X"]
       14 GETTABLEKS                       R5 R2 K3 ["AbsolutePosition"]
       16 GETTABLEKS                       R5 R5 K2 ["X"]
       18 SUB                              R3 R4 R5
       19 LOADK                            R6 K4 ["ScrollingFrame"]
       20 NAMECALL                         R4 R2 K5 ["IsA"]
       22 CALL                             R4 2 1
       23 JUMPIFNOT                        R4 ; [+5]
       24 GETTABLEKS                       R4 R2 K6 ["CanvasPosition"]
       26 GETTABLEKS                       R4 R4 K2 ["X"]
       28 ADD                              R3 R3 R4
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K7 ["ResizeColumnTo"]
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K8 ["ColumnIndex"]
       35 MOVE                             R6 R3
       36 CALL                             R4 2 0
       37 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnResizeFinished"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["ColumnIndex"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Enums"]
        3 GETTABLEKS                       R2 R2 K1 ["ControlState"]
        5 GETTABLEKS                       R2 R2 K2 ["Hover"]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R0
       13 NEWCLOSURE                       R5 P1
       14 CAPTURE                          VAL R0
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K2 ["createElement"]
       18 GETUPVAL                         R7 1
       19 DUPTABLE                         R8 K9 [{["Position"], ["ZIndex"] = 10, ["tag"] = "size-0-full stroke-default stroke-thin", ["ref"]}]
       20 GETIMPORT                        R9 K12 [UDim2.fromOffset]
       22 GETTABLEKS                       R10 R0 K13 ["DividerX"]
       24 LOADN                            R11 0
       25 CALL                             R9 2 1
       26 SETTABLEKS                       R9 R8 K3 ["Position"]
       28 SETTABLEKS                       R3 R8 K8 ["ref"]
       30 DUPTABLE                         R9 K15 [{"Inflate"}]
       31 GETUPVAL                         R10 0
       32 GETTABLEKS                       R10 R10 K2 ["createElement"]
       34 GETUPVAL                         R11 1
       35 DUPTABLE                         R12 K20 [{["Size"], ["tag"] = "anchor-center-center position-center-center", ["stateLayer"], ["onStateChanged"]}]
       36 GETIMPORT                        R13 K22 [UDim2.new]
       38 LOADN                            R14 1
       39 LOADN                            R15 12
       40 LOADN                            R16 1
       41 LOADN                            R17 0
       42 CALL                             R13 4 1
       43 SETTABLEKS                       R13 R12 K16 ["Size"]
       45 DUPTABLE                         R13 K24 [{"affordance"}]
       46 GETUPVAL                         R14 2
       47 GETTABLEKS                       R14 R14 K25 ["Enums"]
       49 GETTABLEKS                       R14 R14 K26 ["StateLayerAffordance"]
       51 GETTABLEKS                       R14 R14 K27 ["None"]
       53 SETTABLEKS                       R14 R13 K23 ["affordance"]
       55 SETTABLEKS                       R13 R12 K18 ["stateLayer"]
       57 NEWCLOSURE                       R13 P2
       58 CAPTURE                          UPVAL U2
       59 CAPTURE                          VAL R2
       60 SETTABLEKS                       R13 R12 K19 ["onStateChanged"]
       62 DUPTABLE                         R13 K29 [{"InputDetector"}]
       63 GETUPVAL                         R14 0
       64 GETTABLEKS                       R14 R14 K2 ["createElement"]
       66 LOADK                            R15 K30 ["UIDragDetector"]
       67 NEWTABLE                         R16 4 0
       69 GETIMPORT                        R17 K34 [Enum.UIDragDetectorDragStyle.Scriptable]
       71 SETTABLEKS                       R17 R16 K35 ["DragStyle"]
       73 GETUPVAL                         R17 0
       74 GETTABLEKS                       R17 R17 K36 ["Event"]
       76 GETTABLEKS                       R17 R17 K37 ["DragContinue"]
       78 SETTABLE                         R4 R16 R17
       79 GETUPVAL                         R17 0
       80 GETTABLEKS                       R17 R17 K36 ["Event"]
       82 GETTABLEKS                       R17 R17 K38 ["DragEnd"]
       84 SETTABLE                         R5 R16 R17
       85 CALL                             R14 2 1
       86 SETTABLEKS                       R14 R13 K28 ["InputDetector"]
       88 CALL                             R10 3 1
       89 SETTABLEKS                       R10 R9 K14 ["Inflate"]
       91 CALL                             R6 3 -1
       92 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 DUPCLOSURE                       R4 K10 [PROTO_3]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R2
       27 RETURN                           R4 1
