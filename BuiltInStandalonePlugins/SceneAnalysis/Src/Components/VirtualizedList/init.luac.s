PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["Theme"]
        7 GETTABLEKS                       R0 R0 K4 ["Name"]
        9 GETUPVAL                         R2 0
       10 GETTABLE                         R1 R2 R0
       11 JUMPIF                           R1 ; [+3]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K5 ["Dark"]
       15 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [settings]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R2 R2 K2 ["Studio"]
        6 GETTABLEKS                       R2 R2 K3 ["Theme"]
        8 GETTABLEKS                       R2 R2 K4 ["Name"]
       10 GETUPVAL                         R3 1
       11 GETTABLE                         R1 R3 R2
       12 JUMPIF                           R1 ; [+3]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K5 ["Dark"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["ThemeChanged"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 1
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+15]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["id"]
        7 JUMPIF                           R0 ; [+1]
        8 LOADK                            R0 K1 ["default"]
        9 LOADK                            R2 K2 ["SceneAnalysis_ColumnOverrides_"]
       10 FASTCALL1                        TOSTRING R0 ; [+3]
       11 MOVE                             R4 R0
       12 GETIMPORT                        R3 K4 [tostring]
       14 CALL                             R3 1 1
       15 CONCAT                           R1 R2 R3
       16 RETURN                           R1 1
       17 LOADK                            R0 K5 ["SceneAnalysis_ColumnOverrides"]
       18 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetSetting"]
        4 CALL                             R0 2 1
        5 FASTCALL1                        TYPE R0 ; [+3]
        6 MOVE                             R3 R0
        7 GETIMPORT                        R2 K2 [type]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+3]
       12 MOVE                             R1 R0
       13 JUMPIF                           R1 ; [+2]
       14 NEWTABLE                         R1 0 0
       16 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["applyResizeStart"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["get"]
        9 CALL                             R2 0 1
       10 JUMPIF                           R2 ; [+2]
       11 NEWTABLE                         R2 0 0
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K1 ["get"]
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 4
       18 CALL                             R1 3 2
       19 JUMPIFNOT                        R2 ; [+9]
       20 GETUPVAL                         R3 5
       21 MOVE                             R4 R1
       22 CALL                             R3 1 0
       23 GETUPVAL                         R3 6
       24 GETUPVAL                         R5 7
       25 MOVE                             R6 R1
       26 NAMECALL                         R3 R3 K2 ["SetSetting"]
       28 CALL                             R3 3 0
       29 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+27]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["applyResize"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["current"]
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R4 R4 K2 ["getColumns"]
       11 CALL                             R4 0 1
       12 MOVE                             R5 R0
       13 MOVE                             R6 R1
       14 GETUPVAL                         R7 4
       15 GETTABLEKS                       R7 R7 K3 ["get"]
       17 CALL                             R7 0 -1
       18 CALL                             R2 -1 1
       19 GETUPVAL                         R3 5
       20 MOVE                             R4 R2
       21 CALL                             R3 1 0
       22 GETUPVAL                         R3 6
       23 GETUPVAL                         R5 7
       24 MOVE                             R6 R2
       25 NAMECALL                         R3 R3 K4 ["SetSetting"]
       27 CALL                             R3 3 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R2 4
       30 GETTABLEKS                       R2 R2 K3 ["get"]
       32 CALL                             R2 0 1
       33 GETIMPORT                        R3 K7 [table.clone]
       35 MOVE                             R4 R2
       36 CALL                             R3 1 1
       37 SETTABLE                         R1 R3 R0
       38 GETUPVAL                         R4 5
       39 MOVE                             R5 R3
       40 CALL                             R4 1 0
       41 GETUPVAL                         R4 6
       42 GETUPVAL                         R6 7
       43 MOVE                             R7 R3
       44 NAMECALL                         R4 R4 K4 ["SetSetting"]
       46 CALL                             R4 3 0
       47 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["getTotalCountObservable"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R2 R2 K2 ["get"]
        6 CALL                             R2 0 1
        7 ORK                              R1 R2 K0 [0]
        8 GETTABLEKS                       R3 R0 K4 ["minWidth"]
       10 ORK                              R2 R3 K3 [50]
       11 LOADN                            R5 1
       12 MOVE                             R3 R1
       13 LOADN                            R4 1
       14 FORNPREP                         R3
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K5 ["getNodeAtIndex"]
       18 MOVE                             R7 R5
       19 CALL                             R6 1 1
       20 JUMPIFNOT                        R6 ; [+33]
       21 GETTABLEKS                       R9 R0 K7 ["cell"]
       23 MOVE                             R10 R6
       24 CALL                             R9 1 1
       25 ORK                              R8 R9 K6 [""]
       26 FASTCALL1                        TOSTRING R8 ; [+2]
       27 GETIMPORT                        R7 K9 [tostring]
       29 CALL                             R7 1 1
       30 GETUPVAL                         R8 1
       31 MOVE                             R10 R7
       32 LOADK                            R11 K10 [17.598]
       33 GETUPVAL                         R12 2
       34 GETTABLEKS                       R12 R12 K11 ["defaultFont"]
       36 GETIMPORT                        R13 K14 [Vector2.new]
       38 LOADN                            R14 16
       39 LOADN                            R15 16
       40 CALL                             R13 2 -1
       41 NAMECALL                         R8 R8 K15 ["GetTextSize"]
       43 CALL                             R8 -1 1
       44 GETTABLEKS                       R12 R8 K17 ["X"]
       46 ADDK                             R11 R12 K16 [20]
       47 FASTCALL2                        MATH_MAX R2 R11 ; [+4]
       49 MOVE                             R10 R2
       50 GETIMPORT                        R9 K20 [math.max]
       52 CALL                             R9 2 1
       53 MOVE                             R2 R9
       54 FORNLOOP                         R3
       55 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+29]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["applyDoubleClick"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["getColumns"]
        8 CALL                             R2 0 1
        9 MOVE                             R3 R0
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K2 ["get"]
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R5 R5 K2 ["get"]
       17 CALL                             R5 0 1
       18 GETUPVAL                         R6 5
       19 CALL                             R1 5 2
       20 JUMPIFNOT                        R2 ; [+9]
       21 GETUPVAL                         R3 6
       22 MOVE                             R4 R1
       23 CALL                             R3 1 0
       24 GETUPVAL                         R3 7
       25 GETUPVAL                         R5 8
       26 MOVE                             R6 R1
       27 NAMECALL                         R3 R3 K3 ["SetSetting"]
       29 CALL                             R3 3 0
       30 RETURN                           R0 0
       31 LOADNIL                          R1
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K1 ["getColumns"]
       35 CALL                             R2 0 3
       36 FORGPREP                         R2
       37 GETTABLEKS                       R7 R6 K4 ["id"]
       39 JUMPIFNOTEQ                      R7 R0 ; [+3]
       41 MOVE                             R1 R6
       42 JUMP                             ; [+2]
       43 FORGLOOP                         R2 2 ; [-7]
       45 JUMPIFNOT                        R1 ; [+21]
       46 GETUPVAL                         R2 5
       47 MOVE                             R3 R1
       48 CALL                             R2 1 1
       49 GETUPVAL                         R3 4
       50 GETTABLEKS                       R3 R3 K2 ["get"]
       52 CALL                             R3 0 1
       53 GETIMPORT                        R4 K7 [table.clone]
       55 MOVE                             R5 R3
       56 CALL                             R4 1 1
       57 SETTABLE                         R2 R4 R0
       58 GETUPVAL                         R5 6
       59 MOVE                             R6 R4
       60 CALL                             R5 1 0
       61 GETUPVAL                         R5 7
       62 GETUPVAL                         R7 8
       63 MOVE                             R8 R4
       64 NAMECALL                         R5 R5 K3 ["SetSetting"]
       66 CALL                             R5 3 0
       67 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 LOADN                            R3 0
        2 GETTABLEKS                       R5 R0 K0 ["AbsoluteSize"]
        4 GETTABLEKS                       R5 R5 K1 ["X"]
        6 GETUPVAL                         R6 1
        7 SUB                              R4 R5 R6
        8 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       10 GETIMPORT                        R2 K4 [math.max]
       12 CALL                             R2 2 1
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setSort"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["selectedNodeId"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setSort"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["scrollRef"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["scrollRef"]
        7 GETTABLEKS                       R1 R1 K1 ["current"]
        9 JUMPIFNOT                        R1 ; [+13]
       10 GETIMPORT                        R2 K4 [Vector2.new]
       12 LOADN                            R3 0
       13 LOADN                            R5 0
       14 FASTCALL2                        MATH_MAX R5 R0 ; [+4]
       16 MOVE                             R6 R0
       17 GETIMPORT                        R4 K7 [math.max]
       19 CALL                             R4 2 1
       20 CALL                             R2 2 1
       21 SETTABLEKS                       R2 R1 K8 ["CanvasPosition"]
       23 RETURN                           R0 0

PROTO_21:
        0 LOADN                            R2 0
        1 ORK                              R5 R0 K0 [1]
        2 SUBK                             R4 R5 K0 [1]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["rowHeight"]
        6 MUL                              R3 R4 R5
        7 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
        9 GETIMPORT                        R1 K4 [math.max]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K5 ["scrollRef"]
       15 JUMPIFNOT                        R2 ; [+5]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K5 ["scrollRef"]
       19 GETTABLEKS                       R2 R2 K6 ["current"]
       21 JUMPIFNOT                        R2 ; [+25]
       22 GETTABLEKS                       R3 R2 K7 ["CanvasPosition"]
       24 GETTABLEKS                       R3 R3 K8 ["Y"]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K10 ["windowHeight"]
       29 ORK                              R4 R5 K9 [0]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K1 ["rowHeight"]
       33 JUMPIFNOTLE                      R3 R1 ; [+6]
       35 ADD                              R6 R1 R5
       36 ADD                              R7 R3 R4
       37 JUMPIFNOTLE                      R6 R7 ; [+2]
       39 RETURN                           R0 0
       40 GETIMPORT                        R6 K13 [Vector2.new]
       42 LOADN                            R7 0
       43 MOVE                             R8 R1
       44 CALL                             R6 2 1
       45 SETTABLEKS                       R6 R2 K7 ["CanvasPosition"]
       47 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["scrollRef"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["scrollRef"]
        7 GETTABLEKS                       R0 R0 K1 ["current"]
        9 JUMPIFNOT                        R0 ; [+5]
       10 GETTABLEKS                       R1 R0 K2 ["CanvasPosition"]
       12 GETTABLEKS                       R1 R1 K3 ["Y"]
       14 JUMPIF                           R1 ; [+1]
       15 LOADN                            R1 0
       16 RETURN                           R1 1

PROTO_23:
        0 DUPTABLE                         R0 K9 [{"setSelectedNodeId", "setSelectedIdsHash", "clearSelected", "setHoveredNodeId", "clearHovered", "setSort", "scrollToY", "scrollToIndex", "getScrollY"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["setSelectedNodeId"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R1 R0 K1 ["setSelectedIdsHash"]
        9 NEWCLOSURE                       R1 P2
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 SETTABLEKS                       R1 R0 K2 ["clearSelected"]
       14 NEWCLOSURE                       R1 P3
       15 CAPTURE                          UPVAL U2
       16 SETTABLEKS                       R1 R0 K3 ["setHoveredNodeId"]
       18 NEWCLOSURE                       R1 P4
       19 CAPTURE                          UPVAL U2
       20 SETTABLEKS                       R1 R0 K4 ["clearHovered"]
       22 NEWCLOSURE                       R1 P5
       23 CAPTURE                          UPVAL U3
       24 SETTABLEKS                       R1 R0 K5 ["setSort"]
       26 NEWCLOSURE                       R1 P6
       27 CAPTURE                          UPVAL U4
       28 SETTABLEKS                       R1 R0 K6 ["scrollToY"]
       30 NEWCLOSURE                       R1 P7
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U4
       33 SETTABLEKS                       R1 R0 K7 ["scrollToIndex"]
       35 NEWCLOSURE                       R1 P8
       36 CAPTURE                          UPVAL U4
       37 SETTABLEKS                       R1 R0 K8 ["getScrollY"]
       39 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getColumns"]
        3 CALL                             R0 0 1
        4 LOADK                            R1 K1 [∞]
        5 LOADN                            R2 0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 MOVE                             R5 R0
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 GETTABLEKS                       R10 R9 K2 ["order"]
       14 JUMPIFNOTLT                      R2 R10 ; [+5]
       16 GETTABLEKS                       R2 R9 K2 ["order"]
       18 GETTABLEKS                       R4 R9 K3 ["sortKey"]
       20 GETTABLEKS                       R10 R9 K2 ["order"]
       22 JUMPIFNOTLT                      R10 R1 ; [+5]
       24 GETTABLEKS                       R1 R9 K2 ["order"]
       26 GETTABLEKS                       R3 R9 K3 ["sortKey"]
       28 FORGLOOP                         R5 2 ; [-17]
       30 DUPTABLE                         R5 K8 [{"minOrder", "maxOrder", "firstSortKey", "lastSortKey"}]
       31 SETTABLEKS                       R1 R5 K4 ["minOrder"]
       33 SETTABLEKS                       R2 R5 K5 ["maxOrder"]
       35 SETTABLEKS                       R3 R5 K6 ["firstSortKey"]
       37 SETTABLEKS                       R4 R5 K7 ["lastSortKey"]
       39 RETURN                           R5 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R1 R1 K1 ["column"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["lastSortKey"]
        9 JUMPIFEQ                         R1 R2 ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K0 ["get"]
       16 CALL                             R1 0 1
       17 GETUPVAL                         R2 3
       18 LOADK                            R3 K3 ["highlight"]
       19 JUMPIF                           R0 ; [+1]
       20 JUMPIFNOT                        R1 ; [+2]
       21 LOADK                            R4 K4 ["SceneAnalysis-Hovered"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R4
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R1 R1 K1 ["column"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["firstSortKey"]
        9 JUMPIFEQ                         R1 R2 ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K0 ["get"]
       16 CALL                             R1 0 1
       17 GETUPVAL                         R2 3
       18 LOADK                            R3 K3 ["highlight"]
       19 JUMPIF                           R0 ; [+1]
       20 JUMPIFNOT                        R1 ; [+2]
       21 LOADK                            R4 K4 ["SceneAnalysis-Hovered"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R4
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["id"]
        3 GETTABLE                         R1 R0 R2
        4 JUMPIF                           R1 ; [+9]
        5 GETIMPORT                        R1 K3 [UDim2.new]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K4 ["width"]
       10 LOADN                            R3 0
       11 LOADN                            R4 1
       12 LOADN                            R5 0
       13 CALL                             R1 4 1
       14 RETURN                           R1 1

PROTO_28:
        0 DUPTABLE                         R0 K2 [{"HeaderPadding", "HeaderLayout"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["createElement"]
        4 LOADK                            R2 K4 ["UIPadding"]
        5 DUPTABLE                         R3 K9 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
        6 GETIMPORT                        R4 K12 [UDim.new]
        8 LOADN                            R5 0
        9 LOADN                            R6 8
       10 CALL                             R4 2 1
       11 SETTABLEKS                       R4 R3 K5 ["PaddingLeft"]
       13 GETIMPORT                        R4 K12 [UDim.new]
       15 LOADN                            R5 0
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K13 ["scrollBarThickness"]
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K6 ["PaddingRight"]
       22 GETIMPORT                        R4 K12 [UDim.new]
       24 LOADN                            R5 0
       25 LOADN                            R6 2
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R3 K7 ["PaddingTop"]
       29 GETIMPORT                        R4 K12 [UDim.new]
       31 LOADN                            R5 0
       32 LOADN                            R6 2
       33 CALL                             R4 2 1
       34 SETTABLEKS                       R4 R3 K8 ["PaddingBottom"]
       36 CALL                             R1 2 1
       37 SETTABLEKS                       R1 R0 K0 ["HeaderPadding"]
       39 GETUPVAL                         R1 0
       40 GETTABLEKS                       R1 R1 K3 ["createElement"]
       42 LOADK                            R2 K14 ["UIListLayout"]
       43 DUPTABLE                         R3 K19 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
       44 GETIMPORT                        R4 K22 [Enum.FillDirection.Horizontal]
       46 SETTABLEKS                       R4 R3 K15 ["FillDirection"]
       48 GETIMPORT                        R4 K24 [Enum.HorizontalAlignment.Left]
       50 SETTABLEKS                       R4 R3 K16 ["HorizontalAlignment"]
       52 GETIMPORT                        R4 K26 [Enum.VerticalAlignment.Center]
       54 SETTABLEKS                       R4 R3 K17 ["VerticalAlignment"]
       56 GETIMPORT                        R4 K28 [Enum.SortOrder.LayoutOrder]
       58 SETTABLEKS                       R4 R3 K18 ["SortOrder"]
       60 CALL                             R1 2 1
       61 SETTABLEKS                       R1 R0 K1 ["HeaderLayout"]
       63 GETUPVAL                         R1 2
       64 GETTABLEKS                       R1 R1 K29 ["minOrder"]
       66 GETUPVAL                         R2 2
       67 GETTABLEKS                       R2 R2 K30 ["maxOrder"]
       69 GETUPVAL                         R3 3
       70 GETTABLEKS                       R3 R3 K31 ["getColumns"]
       72 CALL                             R3 0 3
       73 FORGPREP                         R3
       74 GETTABLEKS                       R9 R7 K32 ["order"]
       76 JUMPIFEQ                         R9 R1 ; [+2]
       78 LOADB                            R8 0 +1
       79 LOADB                            R8 1
       80 GETTABLEKS                       R10 R7 K32 ["order"]
       82 JUMPIFEQ                         R10 R2 ; [+2]
       84 LOADB                            R9 0 +1
       85 LOADB                            R9 1
       86 GETTABLEKS                       R10 R7 K33 ["id"]
       88 GETUPVAL                         R11 0
       89 GETTABLEKS                       R11 R11 K3 ["createElement"]
       91 GETUPVAL                         R12 4
       92 DUPTABLE                         R13 K46 [{"id", "text", "headerKey", "column", "size", "layoutOrder", "sortStateObservable", "onSort", "onResize", "onResizeStart", "onDoubleClick", "hideResizer", "onHoverChange"}]
       93 GETTABLEKS                       R14 R7 K33 ["id"]
       95 SETTABLEKS                       R14 R13 K33 ["id"]
       97 GETTABLEKS                       R14 R7 K47 ["headerText"]
       99 SETTABLEKS                       R14 R13 K34 ["text"]
      101 GETTABLEKS                       R14 R7 K35 ["headerKey"]
      103 SETTABLEKS                       R14 R13 K35 ["headerKey"]
      105 GETTABLEKS                       R14 R7 K48 ["sortKey"]
      107 SETTABLEKS                       R14 R13 K36 ["column"]
      109 GETUPVAL                         R14 5
      110 GETTABLEKS                       R14 R14 K49 ["getBinding"]
      112 CALL                             R14 0 1
      113 NEWCLOSURE                       R16 P0
      114 CAPTURE                          VAL R7
      115 NAMECALL                         R14 R14 K50 ["map"]
      117 CALL                             R14 2 1
      118 SETTABLEKS                       R14 R13 K37 ["size"]
      120 GETTABLEKS                       R14 R7 K32 ["order"]
      122 SETTABLEKS                       R14 R13 K38 ["layoutOrder"]
      124 GETUPVAL                         R14 6
      125 SETTABLEKS                       R14 R13 K39 ["sortStateObservable"]
      127 GETUPVAL                         R14 7
      128 SETTABLEKS                       R14 R13 K40 ["onSort"]
      130 JUMPIF                           R9 ; [+2]
      131 GETUPVAL                         R14 8
      132 JUMP                             ; [+1]
      133 LOADNIL                          R14
      134 SETTABLEKS                       R14 R13 K41 ["onResize"]
      136 JUMPIF                           R9 ; [+4]
      137 GETUPVAL                         R15 9
      138 JUMPIFNOT                        R15 ; [+2]
      139 GETUPVAL                         R14 10
      140 JUMP                             ; [+1]
      141 LOADNIL                          R14
      142 SETTABLEKS                       R14 R13 K42 ["onResizeStart"]
      144 JUMPIF                           R9 ; [+2]
      145 GETUPVAL                         R14 11
      146 JUMP                             ; [+1]
      147 LOADNIL                          R14
      148 SETTABLEKS                       R14 R13 K43 ["onDoubleClick"]
      150 SETTABLEKS                       R9 R13 K44 ["hideResizer"]
      152 JUMPIFNOT                        R8 ; [+2]
      153 GETUPVAL                         R14 12
      154 JUMP                             ; [+4]
      155 JUMPIFNOT                        R9 ; [+2]
      156 GETUPVAL                         R14 13
      157 JUMP                             ; [+1]
      158 LOADNIL                          R14
      159 SETTABLEKS                       R14 R13 K45 ["onHoverChange"]
      161 CALL                             R11 2 1
      162 SETTABLE                         R11 R0 R10
      163 FORGLOOP                         R3 2 ; [-90]
      165 RETURN                           R0 1

PROTO_29:
        0 JUMPIFNOTEQKNIL                  R0 ; [+9]
        2 GETIMPORT                        R1 K2 [UDim2.new]
        4 LOADN                            R2 0
        5 LOADN                            R3 0
        6 LOADN                            R4 0
        7 LOADN                            R5 0
        8 CALL                             R1 4 -1
        9 RETURN                           R1 -1
       10 GETIMPORT                        R1 K2 [UDim2.new]
       12 LOADN                            R2 0
       13 LOADN                            R3 0
       14 LOADN                            R4 0
       15 LOADN                            R6 0
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R8 R8 K3 ["rowHeight"]
       19 MUL                              R7 R0 R8
       20 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       22 GETIMPORT                        R5 K6 [math.max]
       24 CALL                             R5 2 1
       25 CALL                             R1 4 -1
       26 RETURN                           R1 -1

PROTO_30:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 LOADN                            R2 0
        3 GETTABLEKS                       R3 R0 K3 ["yPosition"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 LOADK                            R3 K1 ["Frame"]
        4 DUPTABLE                         R4 K7 [{"BackgroundTransparency", "ClipsDescendants", "Position", "Size", "ZIndex"}]
        5 LOADN                            R5 1
        6 SETTABLEKS                       R5 R4 K2 ["BackgroundTransparency"]
        8 GETUPVAL                         R5 1
        9 SETTABLEKS                       R5 R4 K3 ["ClipsDescendants"]
       11 GETTABLEKS                       R5 R0 K8 ["getBinding"]
       13 CALL                             R5 0 1
       14 DUPCLOSURE                       R7 K9 [PROTO_30]
       15 NAMECALL                         R5 R5 K10 ["map"]
       17 CALL                             R5 2 1
       18 SETTABLEKS                       R5 R4 K4 ["Position"]
       20 GETIMPORT                        R5 K13 [UDim2.new]
       22 LOADN                            R6 1
       23 LOADN                            R7 253
       24 LOADN                            R8 0
       25 GETUPVAL                         R9 2
       26 GETTABLEKS                       R9 R9 K14 ["rowHeight"]
       28 CALL                             R5 4 1
       29 SETTABLEKS                       R5 R4 K5 ["Size"]
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R5 R5 K6 ["ZIndex"]
       34 SETTABLEKS                       R5 R4 K6 ["ZIndex"]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K0 ["createElement"]
       39 GETUPVAL                         R6 4
       40 DUPTABLE                         R7 K24 [{"visibleNodeObservable", "hoveredNodeId", "selectedNodeId", "selectedIdsHash", "columnWidths", "onNodeClicked", "onNodeRightClicked", "query", "queryInfo"}]
       41 SETTABLEKS                       R0 R7 K15 ["visibleNodeObservable"]
       43 GETUPVAL                         R8 5
       44 SETTABLEKS                       R8 R7 K16 ["hoveredNodeId"]
       46 GETUPVAL                         R8 6
       47 SETTABLEKS                       R8 R7 K17 ["selectedNodeId"]
       49 GETUPVAL                         R8 7
       50 SETTABLEKS                       R8 R7 K18 ["selectedIdsHash"]
       52 GETUPVAL                         R8 8
       53 SETTABLEKS                       R8 R7 K19 ["columnWidths"]
       55 GETUPVAL                         R8 3
       56 GETTABLEKS                       R8 R8 K20 ["onNodeClicked"]
       58 SETTABLEKS                       R8 R7 K20 ["onNodeClicked"]
       60 GETUPVAL                         R8 3
       61 GETTABLEKS                       R8 R8 K21 ["onNodeRightClicked"]
       63 SETTABLEKS                       R8 R7 K21 ["onNodeRightClicked"]
       65 GETUPVAL                         R8 3
       66 GETTABLEKS                       R8 R8 K22 ["query"]
       68 SETTABLEKS                       R8 R7 K22 ["query"]
       70 GETUPVAL                         R8 3
       71 GETTABLEKS                       R8 R8 K23 ["queryInfo"]
       73 SETTABLEKS                       R8 R7 K23 ["queryInfo"]
       75 CALL                             R5 2 -1
       76 CALL                             R2 -1 -1
       77 RETURN                           R2 -1

PROTO_32:
        0 GETTABLEKS                       R2 R0 K0 ["query"]
        2 GETTABLEKS                       R3 R2 K1 ["getSortStateObservable"]
        4 CALL                             R3 0 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["Plugin"]
        8 NAMECALL                         R4 R4 K3 ["use"]
       10 CALL                             R4 1 1
       11 NAMECALL                         R4 R4 K4 ["get"]
       13 CALL                             R4 1 1
       14 GETIMPORT                        R5 K6 [game]
       16 LOADK                            R7 K7 ["TextService"]
       17 NAMECALL                         R5 R5 K8 ["GetService"]
       19 CALL                             R5 2 1
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K9 ["useState"]
       23 GETUPVAL                         R7 2
       24 CALL                             R6 1 2
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R8 R8 K10 ["useEffect"]
       28 NEWCLOSURE                       R9 P0
       29 CAPTURE                          VAL R7
       30 CAPTURE                          UPVAL U3
       31 NEWTABLE                         R10 0 0
       33 CALL                             R8 2 0
       34 GETTABLEKS                       R8 R0 K11 ["queryInfo"]
       36 GETUPVAL                         R9 1
       37 GETTABLEKS                       R9 R9 K12 ["useMemo"]
       39 NEWCLOSURE                       R10 P1
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          VAL R8
       42 NEWTABLE                         R11 0 1
       44 MOVE                             R12 R8
       45 SETLIST                          R11 R12 1 [1]
       47 CALL                             R9 2 1
       48 GETUPVAL                         R10 1
       49 GETTABLEKS                       R10 R10 K12 ["useMemo"]
       51 NEWCLOSURE                       R11 P2
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R9
       54 NEWTABLE                         R12 0 2
       56 MOVE                             R13 R4
       57 MOVE                             R14 R9
       58 SETLIST                          R12 R13 2 [1]
       60 CALL                             R10 2 1
       61 GETUPVAL                         R11 5
       62 GETTABLEKS                       R11 R11 K9 ["useState"]
       64 MOVE                             R12 R10
       65 CALL                             R11 1 2
       66 GETUPVAL                         R13 1
       67 GETTABLEKS                       R13 R13 K10 ["useEffect"]
       69 NEWCLOSURE                       R14 P3
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          VAL R12
       72 CAPTURE                          VAL R10
       73 NEWTABLE                         R15 0 2
       75 MOVE                             R16 R10
       76 MOVE                             R17 R12
       77 SETLIST                          R15 R16 2 [1]
       79 CALL                             R13 2 0
       80 GETUPVAL                         R13 5
       81 GETTABLEKS                       R13 R13 K9 ["useState"]
       83 LOADN                            R14 0
       84 CALL                             R13 1 2
       85 GETUPVAL                         R15 6
       86 GETTABLEKS                       R16 R2 K13 ["getColumns"]
       88 CALL                             R16 0 1
       89 MOVE                             R17 R13
       90 MOVE                             R18 R11
       91 CALL                             R15 3 1
       92 GETUPVAL                         R16 1
       93 GETTABLEKS                       R16 R16 K14 ["useRef"]
       95 LOADNIL                          R17
       96 CALL                             R16 1 1
       97 GETUPVAL                         R17 1
       98 GETTABLEKS                       R17 R17 K15 ["useCallback"]
      100 NEWCLOSURE                       R18 P4
      101 CAPTURE                          UPVAL U4
      102 CAPTURE                          UPVAL U7
      103 CAPTURE                          VAL R15
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R16
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R9
      109 NEWTABLE                         R19 0 5
      111 MOVE                             R20 R15
      112 MOVE                             R21 R4
      113 MOVE                             R22 R9
      114 MOVE                             R23 R12
      115 MOVE                             R24 R11
      116 SETLIST                          R19 R20 5 [1]
      118 CALL                             R17 2 1
      119 GETUPVAL                         R18 1
      120 GETTABLEKS                       R18 R18 K15 ["useCallback"]
      122 NEWCLOSURE                       R19 P5
      123 CAPTURE                          UPVAL U4
      124 CAPTURE                          UPVAL U7
      125 CAPTURE                          VAL R16
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R9
      131 NEWTABLE                         R20 0 5
      133 MOVE                             R21 R4
      134 MOVE                             R22 R2
      135 MOVE                             R23 R9
      136 MOVE                             R24 R12
      137 MOVE                             R25 R11
      138 SETLIST                          R20 R21 5 [1]
      140 CALL                             R18 2 1
      141 NEWCLOSURE                       R19 P6
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R5
      144 CAPTURE                          UPVAL U8
      145 GETUPVAL                         R20 1
      146 GETTABLEKS                       R20 R20 K15 ["useCallback"]
      148 NEWCLOSURE                       R21 P7
      149 CAPTURE                          UPVAL U4
      150 CAPTURE                          UPVAL U7
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R19
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R9
      158 NEWTABLE                         R22 0 6
      160 MOVE                             R23 R13
      161 MOVE                             R24 R4
      162 MOVE                             R25 R9
      163 MOVE                             R26 R2
      164 MOVE                             R27 R12
      165 MOVE                             R28 R11
      166 SETLIST                          R22 R23 6 [1]
      168 CALL                             R20 2 1
      169 GETUPVAL                         R25 8
      170 GETTABLEKS                       R25 R25 K18 ["scrollBarThickness"]
      172 ADDK                             R24 R25 K17 [2]
      173 ADDK                             R23 R24 K17 [2]
      174 ADDK                             R22 R23 K16 [8]
      175 GETUPVAL                         R23 8
      176 GETTABLEKS                       R23 R23 K18 ["scrollBarThickness"]
      178 ADD                              R21 R22 R23
      179 GETUPVAL                         R22 1
      180 GETTABLEKS                       R22 R22 K15 ["useCallback"]
      182 NEWCLOSURE                       R23 P8
      183 CAPTURE                          VAL R14
      184 CAPTURE                          VAL R21
      185 NEWTABLE                         R24 0 1
      187 MOVE                             R25 R14
      188 SETLIST                          R24 R25 1 [1]
      190 CALL                             R22 2 1
      191 GETUPVAL                         R23 1
      192 GETTABLEKS                       R23 R23 K15 ["useCallback"]
      194 NEWCLOSURE                       R24 P9
      195 CAPTURE                          VAL R2
      196 NEWTABLE                         R25 0 1
      198 MOVE                             R26 R2
      199 SETLIST                          R25 R26 1 [1]
      201 CALL                             R23 2 1
      202 GETUPVAL                         R24 9
      203 GETTABLEKS                       R25 R0 K0 ["query"]
      205 GETTABLEKS                       R26 R0 K19 ["windowHeight"]
      207 GETTABLEKS                       R27 R0 K20 ["scrollHeightObservable"]
      209 CALL                             R24 3 1
      210 GETUPVAL                         R25 5
      211 GETTABLEKS                       R25 R25 K9 ["useState"]
      213 LOADNIL                          R26
      214 CALL                             R25 1 2
      215 GETUPVAL                         R27 5
      216 GETTABLEKS                       R27 R27 K9 ["useState"]
      218 GETTABLEKS                       R28 R0 K21 ["selectedNodeId"]
      220 CALL                             R27 1 2
      221 GETUPVAL                         R29 5
      222 GETTABLEKS                       R29 R29 K9 ["useState"]
      224 LOADNIL                          R30
      225 CALL                             R29 1 2
      226 GETUPVAL                         R31 1
      227 GETTABLEKS                       R31 R31 K10 ["useEffect"]
      229 NEWCLOSURE                       R32 P10
      230 CAPTURE                          VAL R28
      231 CAPTURE                          VAL R0
      232 NEWTABLE                         R33 0 1
      234 GETTABLEKS                       R34 R0 K21 ["selectedNodeId"]
      236 SETLIST                          R33 R34 1 [1]
      238 CALL                             R31 2 0
      239 GETUPVAL                         R31 10
      240 MOVE                             R32 R26
      241 MOVE                             R33 R24
      242 GETTABLEKS                       R34 R0 K20 ["scrollHeightObservable"]
      244 GETTABLEKS                       R35 R0 K22 ["scrollRef"]
      246 CALL                             R31 4 0
      247 GETUPVAL                         R31 1
      248 GETTABLEKS                       R31 R31 K23 ["useImperativeHandle"]
      250 MOVE                             R32 R1
      251 NEWCLOSURE                       R33 P11
      252 CAPTURE                          VAL R28
      253 CAPTURE                          VAL R30
      254 CAPTURE                          VAL R26
      255 CAPTURE                          VAL R2
      256 CAPTURE                          VAL R0
      257 CAPTURE                          UPVAL U8
      258 NEWTABLE                         R34 0 5
      260 GETTABLEKS                       R35 R0 K22 ["scrollRef"]
      262 MOVE                             R36 R28
      263 MOVE                             R37 R30
      264 MOVE                             R38 R26
      265 GETTABLEKS                       R39 R0 K19 ["windowHeight"]
      267 SETLIST                          R34 R35 5 [1]
      269 CALL                             R31 3 0
      270 GETUPVAL                         R31 1
      271 GETTABLEKS                       R31 R31 K12 ["useMemo"]
      273 NEWCLOSURE                       R32 P12
      274 CAPTURE                          VAL R2
      275 NEWTABLE                         R33 0 1
      277 MOVE                             R34 R2
      278 SETLIST                          R33 R34 1 [1]
      280 CALL                             R31 2 1
      281 GETUPVAL                         R32 1
      282 GETTABLEKS                       R32 R32 K14 ["useRef"]
      284 LOADNIL                          R33
      285 CALL                             R32 1 1
      286 GETUPVAL                         R33 11
      287 MOVE                             R34 R32
      288 CALL                             R33 1 1
      289 GETUPVAL                         R34 5
      290 GETTABLEKS                       R34 R34 K9 ["useState"]
      292 LOADB                            R35 0
      293 CALL                             R34 1 2
      294 GETUPVAL                         R36 1
      295 GETTABLEKS                       R36 R36 K15 ["useCallback"]
      297 NEWCLOSURE                       R37 P13
      298 CAPTURE                          VAL R3
      299 CAPTURE                          VAL R31
      300 CAPTURE                          VAL R34
      301 CAPTURE                          VAL R33
      302 NEWTABLE                         R38 0 4
      304 MOVE                             R39 R3
      305 MOVE                             R40 R31
      306 MOVE                             R41 R34
      307 MOVE                             R42 R33
      308 SETLIST                          R38 R39 4 [1]
      310 CALL                             R36 2 1
      311 GETUPVAL                         R37 5
      312 GETTABLEKS                       R37 R37 K10 ["useEffect"]
      314 MOVE                             R38 R3
      315 MOVE                             R39 R36
      316 NEWTABLE                         R40 0 1
      318 MOVE                             R41 R36
      319 SETLIST                          R40 R41 1 [1]
      321 CALL                             R37 3 0
      322 GETUPVAL                         R37 5
      323 GETTABLEKS                       R37 R37 K10 ["useEffect"]
      325 MOVE                             R38 R34
      326 MOVE                             R39 R36
      327 NEWTABLE                         R40 0 1
      329 MOVE                             R41 R36
      330 SETLIST                          R40 R41 1 [1]
      332 CALL                             R37 3 0
      333 GETUPVAL                         R37 1
      334 GETTABLEKS                       R37 R37 K14 ["useRef"]
      336 LOADNIL                          R38
      337 CALL                             R37 1 1
      338 GETUPVAL                         R38 11
      339 MOVE                             R39 R37
      340 CALL                             R38 1 1
      341 GETUPVAL                         R39 5
      342 GETTABLEKS                       R39 R39 K9 ["useState"]
      344 LOADB                            R40 0
      345 CALL                             R39 1 2
      346 GETUPVAL                         R41 1
      347 GETTABLEKS                       R41 R41 K15 ["useCallback"]
      349 NEWCLOSURE                       R42 P14
      350 CAPTURE                          VAL R3
      351 CAPTURE                          VAL R31
      352 CAPTURE                          VAL R39
      353 CAPTURE                          VAL R38
      354 NEWTABLE                         R43 0 4
      356 MOVE                             R44 R3
      357 MOVE                             R45 R31
      358 MOVE                             R46 R39
      359 MOVE                             R47 R38
      360 SETLIST                          R43 R44 4 [1]
      362 CALL                             R41 2 1
      363 GETUPVAL                         R42 5
      364 GETTABLEKS                       R42 R42 K10 ["useEffect"]
      366 MOVE                             R43 R3
      367 MOVE                             R44 R41
      368 NEWTABLE                         R45 0 1
      370 MOVE                             R46 R41
      371 SETLIST                          R45 R46 1 [1]
      373 CALL                             R42 3 0
      374 GETUPVAL                         R42 5
      375 GETTABLEKS                       R42 R42 K10 ["useEffect"]
      377 MOVE                             R43 R39
      378 MOVE                             R44 R41
      379 NEWTABLE                         R45 0 1
      381 MOVE                             R46 R41
      382 SETLIST                          R45 R46 1 [1]
      384 CALL                             R42 3 0
      385 GETUPVAL                         R42 1
      386 GETTABLEKS                       R42 R42 K12 ["useMemo"]
      388 NEWCLOSURE                       R43 P15
      389 CAPTURE                          UPVAL U1
      390 CAPTURE                          UPVAL U8
      391 CAPTURE                          VAL R31
      392 CAPTURE                          VAL R2
      393 CAPTURE                          UPVAL U12
      394 CAPTURE                          VAL R15
      395 CAPTURE                          VAL R3
      396 CAPTURE                          VAL R23
      397 CAPTURE                          VAL R18
      398 CAPTURE                          UPVAL U4
      399 CAPTURE                          VAL R17
      400 CAPTURE                          VAL R20
      401 CAPTURE                          VAL R40
      402 CAPTURE                          VAL R35
      403 NEWTABLE                         R44 0 9
      405 MOVE                             R45 R15
      406 MOVE                             R46 R31
      407 MOVE                             R47 R3
      408 MOVE                             R48 R23
      409 MOVE                             R49 R18
      410 MOVE                             R50 R17
      411 MOVE                             R51 R20
      412 MOVE                             R52 R40
      413 MOVE                             R53 R35
      414 SETLIST                          R44 R45 9 [1]
      416 CALL                             R42 2 1
      417 GETUPVAL                         R43 8
      418 GETTABLEKS                       R43 R43 K18 ["scrollBarThickness"]
      420 ADDK                             R44 R43 K17 [2]
      421 GETUPVAL                         R45 1
      422 GETTABLEKS                       R45 R45 K24 ["createElement"]
      424 LOADK                            R46 K25 ["Frame"]
      425 NEWTABLE                         R47 4 0
      427 GETIMPORT                        R48 K28 [UDim2.new]
      429 LOADN                            R49 1
      430 LOADN                            R50 0
      431 LOADN                            R51 1
      432 LOADN                            R52 0
      433 CALL                             R48 4 1
      434 SETTABLEKS                       R48 R47 K29 ["Size"]
      436 LOADN                            R48 1
      437 SETTABLEKS                       R48 R47 K30 ["BackgroundTransparency"]
      439 GETUPVAL                         R48 1
      440 GETTABLEKS                       R48 R48 K31 ["Change"]
      442 GETTABLEKS                       R48 R48 K32 ["AbsoluteSize"]
      444 SETTABLE                         R22 R47 R48
      445 DUPTABLE                         R48 K39 [{"BorderFrame", "Content", "CornerFillLeft", "HeaderDivider", "CornerFill", "ScrollingFrame"}]
      446 GETUPVAL                         R49 1
      447 GETTABLEKS                       R49 R49 K24 ["createElement"]
      449 LOADK                            R50 K25 ["Frame"]
      450 DUPTABLE                         R51 K42 [{"Size", "Position", "BackgroundTransparency", "ZIndex"}]
      451 GETIMPORT                        R52 K28 [UDim2.new]
      453 LOADN                            R53 1
      454 LOADN                            R56 2
      455 ADD                              R55 R56 R44
      456 MINUS                            R54 R55
      457 LOADN                            R55 1
      458 LOADN                            R56 252
      459 CALL                             R52 4 1
      460 SETTABLEKS                       R52 R51 K29 ["Size"]
      462 GETIMPORT                        R52 K44 [UDim2.fromOffset]
      464 LOADN                            R53 2
      465 LOADN                            R54 2
      466 CALL                             R52 2 1
      467 SETTABLEKS                       R52 R51 K40 ["Position"]
      469 LOADN                            R52 1
      470 SETTABLEKS                       R52 R51 K30 ["BackgroundTransparency"]
      472 LOADN                            R52 2
      473 SETTABLEKS                       R52 R51 K41 ["ZIndex"]
      475 DUPTABLE                         R52 K47 [{"Corner", "Stroke"}]
      476 GETUPVAL                         R53 1
      477 GETTABLEKS                       R53 R53 K24 ["createElement"]
      479 LOADK                            R54 K48 ["UICorner"]
      480 DUPTABLE                         R55 K50 [{"CornerRadius"}]
      481 GETIMPORT                        R56 K52 [UDim.new]
      483 LOADN                            R57 0
      484 LOADN                            R58 8
      485 CALL                             R56 2 1
      486 SETTABLEKS                       R56 R55 K49 ["CornerRadius"]
      488 CALL                             R53 2 1
      489 SETTABLEKS                       R53 R52 K45 ["Corner"]
      491 GETUPVAL                         R53 1
      492 GETTABLEKS                       R53 R53 K24 ["createElement"]
      494 LOADK                            R54 K53 ["UIStroke"]
      495 DUPTABLE                         R55 K57 [{"Color", "Transparency", "Thickness"}]
      496 SETTABLEKS                       R6 R55 K54 ["Color"]
      498 LOADK                            R56 K58 [0.88]
      499 SETTABLEKS                       R56 R55 K55 ["Transparency"]
      501 LOADN                            R56 1
      502 SETTABLEKS                       R56 R55 K56 ["Thickness"]
      504 CALL                             R53 2 1
      505 SETTABLEKS                       R53 R52 K46 ["Stroke"]
      507 CALL                             R49 3 1
      508 SETTABLEKS                       R49 R48 K33 ["BorderFrame"]
      510 GETUPVAL                         R49 1
      511 GETTABLEKS                       R49 R49 K24 ["createElement"]
      513 LOADK                            R50 K25 ["Frame"]
      514 DUPTABLE                         R51 K60 [{"Size", "Position", "BackgroundTransparency", "ClipsDescendants", "ZIndex"}]
      515 GETIMPORT                        R52 K28 [UDim2.new]
      517 LOADN                            R53 1
      518 LOADN                            R56 2
      519 ADD                              R55 R56 R44
      520 MINUS                            R54 R55
      521 LOADN                            R55 0
      522 GETUPVAL                         R57 8
      523 GETTABLEKS                       R57 R57 K62 ["headerHeight"]
      525 ADDK                             R56 R57 K61 [1]
      526 CALL                             R52 4 1
      527 SETTABLEKS                       R52 R51 K29 ["Size"]
      529 GETIMPORT                        R52 K44 [UDim2.fromOffset]
      531 LOADN                            R53 2
      532 LOADN                            R54 0
      533 CALL                             R52 2 1
      534 SETTABLEKS                       R52 R51 K40 ["Position"]
      536 LOADN                            R52 1
      537 SETTABLEKS                       R52 R51 K30 ["BackgroundTransparency"]
      539 LOADB                            R52 1
      540 SETTABLEKS                       R52 R51 K59 ["ClipsDescendants"]
      542 LOADN                            R52 1
      543 SETTABLEKS                       R52 R51 K41 ["ZIndex"]
      545 DUPTABLE                         R52 K64 [{"Corner", "Headers"}]
      546 GETUPVAL                         R53 1
      547 GETTABLEKS                       R53 R53 K24 ["createElement"]
      549 LOADK                            R54 K48 ["UICorner"]
      550 DUPTABLE                         R55 K50 [{"CornerRadius"}]
      551 GETIMPORT                        R56 K52 [UDim.new]
      553 LOADN                            R57 0
      554 LOADN                            R58 8
      555 CALL                             R56 2 1
      556 SETTABLEKS                       R56 R55 K49 ["CornerRadius"]
      558 CALL                             R53 2 1
      559 SETTABLEKS                       R53 R52 K45 ["Corner"]
      561 GETUPVAL                         R53 1
      562 GETTABLEKS                       R53 R53 K24 ["createElement"]
      564 LOADK                            R54 K25 ["Frame"]
      565 DUPTABLE                         R55 K66 [{"Size", "BorderSizePixel", "BackgroundTransparency"}]
      566 GETIMPORT                        R56 K28 [UDim2.new]
      568 LOADN                            R57 1
      569 LOADN                            R58 0
      570 LOADN                            R59 0
      571 GETUPVAL                         R61 8
      572 GETTABLEKS                       R61 R61 K62 ["headerHeight"]
      574 ADDK                             R60 R61 K61 [1]
      575 CALL                             R56 4 1
      576 SETTABLEKS                       R56 R55 K29 ["Size"]
      578 LOADN                            R56 0
      579 SETTABLEKS                       R56 R55 K65 ["BorderSizePixel"]
      581 LOADN                            R56 1
      582 SETTABLEKS                       R56 R55 K30 ["BackgroundTransparency"]
      584 MOVE                             R56 R42
      585 CALL                             R53 3 1
      586 SETTABLEKS                       R53 R52 K63 ["Headers"]
      588 CALL                             R49 3 1
      589 SETTABLEKS                       R49 R48 K34 ["Content"]
      591 GETUPVAL                         R49 1
      592 GETTABLEKS                       R49 R49 K24 ["createElement"]
      594 LOADK                            R50 K25 ["Frame"]
      595 DUPTABLE                         R51 K60 [{"Size", "Position", "BackgroundTransparency", "ClipsDescendants", "ZIndex"}]
      596 GETIMPORT                        R52 K44 [UDim2.fromOffset]
      598 LOADN                            R53 8
      599 GETUPVAL                         R56 8
      600 GETTABLEKS                       R56 R56 K62 ["headerHeight"]
      602 SUBK                             R55 R56 K61 [1]
      603 SUBK                             R54 R55 K17 [2]
      604 CALL                             R52 2 1
      605 SETTABLEKS                       R52 R51 K29 ["Size"]
      607 GETIMPORT                        R52 K44 [UDim2.fromOffset]
      609 LOADN                            R53 2
      610 LOADN                            R54 2
      611 CALL                             R52 2 1
      612 SETTABLEKS                       R52 R51 K40 ["Position"]
      614 LOADN                            R52 1
      615 SETTABLEKS                       R52 R51 K30 ["BackgroundTransparency"]
      617 LOADB                            R52 1
      618 SETTABLEKS                       R52 R51 K59 ["ClipsDescendants"]
      620 LOADN                            R52 2
      621 SETTABLEKS                       R52 R51 K41 ["ZIndex"]
      623 DUPTABLE                         R52 K68 [{"Fill"}]
      624 GETUPVAL                         R53 1
      625 GETTABLEKS                       R53 R53 K24 ["createElement"]
      627 LOADK                            R54 K25 ["Frame"]
      628 NEWTABLE                         R55 8 0
      630 GETIMPORT                        R56 K28 [UDim2.new]
      632 LOADN                            R57 0
      633 LOADN                            R58 16
      634 LOADN                            R59 1
      635 LOADN                            R60 8
      636 CALL                             R56 4 1
      637 SETTABLEKS                       R56 R55 K29 ["Size"]
      639 GETIMPORT                        R56 K44 [UDim2.fromOffset]
      641 LOADN                            R57 0
      642 LOADN                            R58 0
      643 CALL                             R56 2 1
      644 SETTABLEKS                       R56 R55 K40 ["Position"]
      646 LOADN                            R56 0
      647 SETTABLEKS                       R56 R55 K65 ["BorderSizePixel"]
      649 SETTABLEKS                       R37 R55 K69 ["ref"]
      651 GETUPVAL                         R56 1
      652 GETTABLEKS                       R56 R56 K70 ["Tag"]
      654 LOADK                            R57 K71 ["SceneAnalysis-BackgroundColor"]
      655 SETTABLE                         R57 R55 R56
      656 DUPTABLE                         R56 K72 [{"Corner"}]
      657 GETUPVAL                         R57 1
      658 GETTABLEKS                       R57 R57 K24 ["createElement"]
      660 LOADK                            R58 K48 ["UICorner"]
      661 DUPTABLE                         R59 K50 [{"CornerRadius"}]
      662 GETIMPORT                        R60 K52 [UDim.new]
      664 LOADN                            R61 0
      665 LOADN                            R62 8
      666 CALL                             R60 2 1
      667 SETTABLEKS                       R60 R59 K49 ["CornerRadius"]
      669 CALL                             R57 2 1
      670 SETTABLEKS                       R57 R56 K45 ["Corner"]
      672 CALL                             R53 3 1
      673 SETTABLEKS                       R53 R52 K67 ["Fill"]
      675 CALL                             R49 3 1
      676 SETTABLEKS                       R49 R48 K35 ["CornerFillLeft"]
      678 GETUPVAL                         R49 1
      679 GETTABLEKS                       R49 R49 K24 ["createElement"]
      681 LOADK                            R50 K25 ["Frame"]
      682 NEWTABLE                         R51 8 0
      684 GETIMPORT                        R52 K28 [UDim2.new]
      686 LOADN                            R53 1
      687 LOADN                            R56 2
      688 ADD                              R55 R56 R44
      689 MINUS                            R54 R55
      690 LOADN                            R55 0
      691 LOADN                            R56 1
      692 CALL                             R52 4 1
      693 SETTABLEKS                       R52 R51 K29 ["Size"]
      695 GETIMPORT                        R52 K44 [UDim2.fromOffset]
      697 LOADN                            R53 2
      698 GETUPVAL                         R55 8
      699 GETTABLEKS                       R55 R55 K62 ["headerHeight"]
      701 SUBK                             R54 R55 K61 [1]
      702 CALL                             R52 2 1
      703 SETTABLEKS                       R52 R51 K40 ["Position"]
      705 LOADN                            R52 0
      706 SETTABLEKS                       R52 R51 K65 ["BorderSizePixel"]
      708 LOADN                            R52 1
      709 SETTABLEKS                       R52 R51 K41 ["ZIndex"]
      711 GETUPVAL                         R52 1
      712 GETTABLEKS                       R52 R52 K70 ["Tag"]
      714 LOADK                            R53 K73 ["SceneAnalysis-StrokeDefault"]
      715 SETTABLE                         R53 R51 R52
      716 CALL                             R49 2 1
      717 SETTABLEKS                       R49 R48 K36 ["HeaderDivider"]
      719 GETUPVAL                         R49 1
      720 GETTABLEKS                       R49 R49 K24 ["createElement"]
      722 LOADK                            R50 K25 ["Frame"]
      723 DUPTABLE                         R51 K75 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency", "ClipsDescendants", "ZIndex"}]
      724 GETIMPORT                        R52 K44 [UDim2.fromOffset]
      726 LOADN                            R53 13
      727 GETUPVAL                         R56 8
      728 GETTABLEKS                       R56 R56 K62 ["headerHeight"]
      730 SUBK                             R55 R56 K61 [1]
      731 SUBK                             R54 R55 K17 [2]
      732 CALL                             R52 2 1
      733 SETTABLEKS                       R52 R51 K29 ["Size"]
      735 GETIMPORT                        R52 K28 [UDim2.new]
      737 LOADN                            R53 1
      738 SUBK                             R55 R44 K61 [1]
      739 MINUS                            R54 R55
      740 LOADN                            R55 0
      741 LOADN                            R56 2
      742 CALL                             R52 4 1
      743 SETTABLEKS                       R52 R51 K40 ["Position"]
      745 GETIMPORT                        R52 K77 [Vector2.new]
      747 LOADN                            R53 1
      748 LOADN                            R54 0
      749 CALL                             R52 2 1
      750 SETTABLEKS                       R52 R51 K74 ["AnchorPoint"]
      752 LOADN                            R52 1
      753 SETTABLEKS                       R52 R51 K30 ["BackgroundTransparency"]
      755 LOADB                            R52 1
      756 SETTABLEKS                       R52 R51 K59 ["ClipsDescendants"]
      758 LOADN                            R52 1
      759 SETTABLEKS                       R52 R51 K41 ["ZIndex"]
      761 DUPTABLE                         R52 K68 [{"Fill"}]
      762 GETUPVAL                         R53 1
      763 GETTABLEKS                       R53 R53 K24 ["createElement"]
      765 LOADK                            R54 K25 ["Frame"]
      766 NEWTABLE                         R55 8 0
      768 GETIMPORT                        R56 K28 [UDim2.new]
      770 LOADN                            R57 0
      771 LOADN                            R58 16
      772 LOADN                            R59 1
      773 LOADN                            R60 8
      774 CALL                             R56 4 1
      775 SETTABLEKS                       R56 R55 K29 ["Size"]
      777 GETIMPORT                        R56 K28 [UDim2.new]
      779 LOADN                            R57 1
      780 LOADN                            R58 0
      781 LOADN                            R59 0
      782 LOADN                            R60 0
      783 CALL                             R56 4 1
      784 SETTABLEKS                       R56 R55 K40 ["Position"]
      786 GETIMPORT                        R56 K77 [Vector2.new]
      788 LOADN                            R57 1
      789 LOADN                            R58 0
      790 CALL                             R56 2 1
      791 SETTABLEKS                       R56 R55 K74 ["AnchorPoint"]
      793 LOADN                            R56 0
      794 SETTABLEKS                       R56 R55 K65 ["BorderSizePixel"]
      796 SETTABLEKS                       R32 R55 K69 ["ref"]
      798 GETUPVAL                         R56 1
      799 GETTABLEKS                       R56 R56 K70 ["Tag"]
      801 LOADK                            R57 K71 ["SceneAnalysis-BackgroundColor"]
      802 SETTABLE                         R57 R55 R56
      803 DUPTABLE                         R56 K72 [{"Corner"}]
      804 GETUPVAL                         R57 1
      805 GETTABLEKS                       R57 R57 K24 ["createElement"]
      807 LOADK                            R58 K48 ["UICorner"]
      808 DUPTABLE                         R59 K50 [{"CornerRadius"}]
      809 GETIMPORT                        R60 K52 [UDim.new]
      811 LOADN                            R61 0
      812 LOADN                            R62 8
      813 CALL                             R60 2 1
      814 SETTABLEKS                       R60 R59 K49 ["CornerRadius"]
      816 CALL                             R57 2 1
      817 SETTABLEKS                       R57 R56 K45 ["Corner"]
      819 CALL                             R53 3 1
      820 SETTABLEKS                       R53 R52 K67 ["Fill"]
      822 CALL                             R49 3 1
      823 SETTABLEKS                       R49 R48 K37 ["CornerFill"]
      825 GETUPVAL                         R49 1
      826 GETTABLEKS                       R49 R49 K24 ["createElement"]
      828 LOADK                            R50 K38 ["ScrollingFrame"]
      829 NEWTABLE                         R51 16 0
      831 GETIMPORT                        R52 K28 [UDim2.new]
      833 LOADN                            R53 1
      834 LOADN                            R54 253
      835 LOADN                            R55 1
      836 GETUPVAL                         R60 8
      837 GETTABLEKS                       R60 R60 K62 ["headerHeight"]
      839 MINUS                            R59 R60
      840 SUBK                             R58 R59 K61 [1]
      841 SUBK                             R57 R58 K17 [2]
      842 SUBK                             R56 R57 K17 [2]
      843 CALL                             R52 4 1
      844 SETTABLEKS                       R52 R51 K29 ["Size"]
      846 GETIMPORT                        R52 K44 [UDim2.fromOffset]
      848 LOADN                            R53 1
      849 GETUPVAL                         R54 8
      850 GETTABLEKS                       R54 R54 K62 ["headerHeight"]
      852 CALL                             R52 2 1
      853 SETTABLEKS                       R52 R51 K40 ["Position"]
      855 LOADB                            R52 0
      856 SETTABLEKS                       R52 R51 K78 ["SmoothScroll"]
      858 GETUPVAL                         R54 8
      859 GETTABLEKS                       R54 R54 K80 ["rowHeight"]
      861 GETUPVAL                         R55 13
      862 GETTABLEKS                       R55 R55 K81 ["SCROLL_RATE"]
      864 MUL                              R53 R54 R55
      865 DIVK                             R52 R53 K79 [140]
      866 SETTABLEKS                       R52 R51 K82 ["ScrollRate"]
      868 LOADN                            R52 1
      869 SETTABLEKS                       R52 R51 K30 ["BackgroundTransparency"]
      871 LOADN                            R52 0
      872 SETTABLEKS                       R52 R51 K65 ["BorderSizePixel"]
      874 GETTABLEKS                       R52 R2 K83 ["getTotalCountObservable"]
      876 CALL                             R52 0 1
      877 GETTABLEKS                       R52 R52 K84 ["getBinding"]
      879 CALL                             R52 0 1
      880 DUPCLOSURE                       R54 K85 [PROTO_29]
      881 CAPTURE                          UPVAL U8
      882 NAMECALL                         R52 R52 K86 ["map"]
      884 CALL                             R52 2 1
      885 SETTABLEKS                       R52 R51 K87 ["CanvasSize"]
      887 SUBK                             R52 R43 K88 [4]
      888 SETTABLEKS                       R52 R51 K89 ["ScrollBarThickness"]
      890 GETIMPORT                        R52 K93 [Enum.ScrollBarInset.Always]
      892 SETTABLEKS                       R52 R51 K94 ["VerticalScrollBarInset"]
      894 GETIMPORT                        R52 K96 [Enum.ScrollBarInset.None]
      896 SETTABLEKS                       R52 R51 K97 ["HorizontalScrollBarInset"]
      898 LOADB                            R52 1
      899 SETTABLEKS                       R52 R51 K59 ["ClipsDescendants"]
      901 LOADN                            R52 1
      902 SETTABLEKS                       R52 R51 K41 ["ZIndex"]
      904 GETTABLEKS                       R52 R0 K22 ["scrollRef"]
      906 SETTABLEKS                       R52 R51 K69 ["ref"]
      908 GETUPVAL                         R52 1
      909 GETTABLEKS                       R52 R52 K31 ["Change"]
      911 GETTABLEKS                       R52 R52 K32 ["AbsoluteSize"]
      913 GETTABLEKS                       R53 R0 K98 ["onAbsoluteSizeChange"]
      915 SETTABLE                         R53 R51 R52
      916 GETUPVAL                         R52 1
      917 GETTABLEKS                       R52 R52 K31 ["Change"]
      919 GETTABLEKS                       R52 R52 K99 ["CanvasPosition"]
      921 GETTABLEKS                       R53 R0 K100 ["onCanvasPositionChange"]
      923 SETTABLE                         R53 R51 R52
      924 GETUPVAL                         R52 1
      925 GETTABLEKS                       R52 R52 K70 ["Tag"]
      927 LOADK                            R53 K101 ["SceneAnalysis-ScrollingFrame"]
      928 SETTABLE                         R53 R51 R52
      929 GETUPVAL                         R52 14
      930 MOVE                             R53 R24
      931 NEWCLOSURE                       R54 P17
      932 CAPTURE                          UPVAL U1
      933 CAPTURE                          UPVAL U4
      934 CAPTURE                          UPVAL U8
      935 CAPTURE                          VAL R0
      936 CAPTURE                          UPVAL U15
      937 CAPTURE                          VAL R25
      938 CAPTURE                          VAL R27
      939 CAPTURE                          VAL R29
      940 CAPTURE                          VAL R15
      941 CALL                             R52 2 1
      942 CALL                             R49 3 1
      943 SETTABLEKS                       R49 R48 K38 ["ScrollingFrame"]
      945 CALL                             R45 3 -1
      946 RETURN                           R45 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Resources"]
       29 GETTABLEKS                       R5 R5 K12 ["StyleConstants"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Src"]
       36 GETTABLEKS                       R6 R6 K11 ["Resources"]
       38 GETTABLEKS                       R6 R6 K13 ["Constants"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K10 ["Src"]
       45 GETTABLEKS                       R7 R7 K14 ["Util"]
       47 GETTABLEKS                       R7 R7 K15 ["mapValues"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K10 ["Src"]
       54 GETTABLEKS                       R8 R8 K16 ["Components"]
       56 GETTABLEKS                       R8 R8 K17 ["ListRowNode"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R9 R0 K10 ["Src"]
       63 GETTABLEKS                       R9 R9 K16 ["Components"]
       65 GETTABLEKS                       R9 R9 K18 ["SortableHeader"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R0 K10 ["Src"]
       72 GETTABLEKS                       R10 R10 K19 ["Hooks"]
       74 GETTABLEKS                       R10 R10 K20 ["useListRange"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K5 [require]
       79 GETTABLEKS                       R11 R0 K10 ["Src"]
       81 GETTABLEKS                       R11 R11 K19 ["Hooks"]
       83 GETTABLEKS                       R11 R11 K21 ["useResponsiveColumnWidths"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R12 R0 K10 ["Src"]
       90 GETTABLEKS                       R12 R12 K19 ["Hooks"]
       92 GETTABLEKS                       R12 R12 K22 ["useHoverTracker"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K5 [require]
       97 GETTABLEKS                       R13 R0 K10 ["Src"]
       99 GETTABLEKS                       R13 R13 K19 ["Hooks"]
      101 GETTABLEKS                       R13 R13 K23 ["useImperativeTagger"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K5 [require]
      106 GETTABLEKS                       R14 R0 K10 ["Src"]
      108 GETTABLEKS                       R14 R14 K14 ["Util"]
      110 GETTABLEKS                       R14 R14 K24 ["Observable"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R14 K5 [require]
      115 GETIMPORT                        R15 K1 [script]
      117 GETTABLEKS                       R15 R15 K25 ["columnResizeHelpers"]
      119 CALL                             R14 1 1
      120 GETIMPORT                        R15 K5 [require]
      122 GETTABLEKS                       R16 R0 K26 ["Bin"]
      124 GETTABLEKS                       R16 R16 K27 ["Common"]
      126 GETTABLEKS                       R16 R16 K28 ["defineLuaFlags"]
      128 CALL                             R15 1 1
      129 GETTABLEKS                       R16 R15 K29 ["getFFlagSceneAnalysisBugfixesMay2026"]
      131 CALL                             R16 0 1
      132 DUPTABLE                         R17 K32 [{"Dark", "Light"}]
      133 GETIMPORT                        R18 K35 [Color3.fromRGB]
      135 LOADN                            R19 208
      136 LOADN                            R20 217
      137 LOADN                            R21 251
      138 CALL                             R18 3 1
      139 SETTABLEKS                       R18 R17 K30 ["Dark"]
      141 GETIMPORT                        R18 K35 [Color3.fromRGB]
      143 LOADN                            R19 27
      144 LOADN                            R20 37
      145 LOADN                            R21 75
      146 CALL                             R18 3 1
      147 SETTABLEKS                       R18 R17 K31 ["Light"]
      149 DUPCLOSURE                       R18 K36 [PROTO_0]
      150 CAPTURE                          VAL R17
      151 GETTABLEKS                       R19 R1 K37 ["forwardRef"]
      153 DUPCLOSURE                       R20 K38 [PROTO_32]
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R18
      157 CAPTURE                          VAL R17
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R10
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R7
      170 CALL                             R19 1 1
      171 RETURN                           R19 1
