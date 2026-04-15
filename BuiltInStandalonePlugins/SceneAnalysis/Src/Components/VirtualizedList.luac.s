PROTO_0:
        0 GETIMPORT                        R3 K1 [settings]
        2 CALL                             R3 0 1
        3 GETTABLEKS                       R2 R3 K2 ["Studio"]
        5 GETTABLEKS                       R1 R2 K3 ["Theme"]
        7 GETTABLEKS                       R0 R1 K4 ["Name"]
        9 GETUPVAL                         R2 0
       10 GETTABLE                         R1 R2 R0
       11 JUMPIF                           R1 ; [+3]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K5 ["Dark"]
       15 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R5 K1 [settings]
        3 CALL                             R5 0 1
        4 GETTABLEKS                       R4 R5 K2 ["Studio"]
        6 GETTABLEKS                       R3 R4 K3 ["Theme"]
        8 GETTABLEKS                       R2 R3 K4 ["Name"]
       10 GETUPVAL                         R3 1
       11 GETTABLE                         R1 R3 R2
       12 JUMPIF                           R1 ; [+3]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R1 R3 K5 ["Dark"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K1 [settings]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R1 R2 K2 ["Studio"]
        5 GETTABLEKS                       R0 R1 K3 ["ThemeChanged"]
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
        1 LOADK                            R2 K0 ["SceneAnalysis_ColumnOverrides"]
        2 NAMECALL                         R0 R0 K1 ["GetSetting"]
        4 CALL                             R0 2 1
        5 FASTCALL1                        TYPE R0 ; [+3]
        6 MOVE                             R3 R0
        7 GETIMPORT                        R2 K3 [type]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K4 ["table"] ; [+3]
       12 MOVE                             R1 R0
       13 JUMPIF                           R1 ; [+2]
       14 NEWTABLE                         R1 0 0
       16 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["get"]
        3 CALL                             R2 0 1
        4 GETIMPORT                        R3 K3 [table.clone]
        6 MOVE                             R4 R2
        7 CALL                             R3 1 1
        8 SETTABLE                         R1 R3 R0
        9 GETUPVAL                         R4 1
       10 MOVE                             R5 R3
       11 CALL                             R4 1 0
       12 GETUPVAL                         R4 2
       13 LOADK                            R6 K4 ["SceneAnalysis_ColumnOverrides"]
       14 MOVE                             R7 R3
       15 NAMECALL                         R4 R4 K5 ["SetSetting"]
       17 CALL                             R4 3 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETIMPORT                        R2 K3 [table.clone]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 LOADNIL                          R3
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K4 ["getColumns"]
       12 CALL                             R4 0 3
       13 FORGPREP                         R4
       14 GETTABLEKS                       R9 R8 K5 ["id"]
       16 JUMPIFNOTEQ                      R9 R0 ; [+3]
       18 MOVE                             R3 R8
       19 JUMP                             ; [+2]
       20 FORGLOOP                         R4 2 ; [-7]
       22 JUMPIFNOT                        R3 ; [+65]
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R6 R7 K7 ["getTotalCountObservable"]
       26 CALL                             R6 0 1
       27 GETTABLEKS                       R5 R6 K0 ["get"]
       29 CALL                             R5 0 1
       30 ORK                              R4 R5 K6 [0]
       31 GETTABLEKS                       R6 R3 K9 ["minWidth"]
       33 ORK                              R5 R6 K8 [50]
       34 LOADN                            R8 1
       35 MOVE                             R6 R4
       36 LOADN                            R7 1
       37 FORNPREP                         R6
       38 GETUPVAL                         R10 1
       39 GETTABLEKS                       R9 R10 K10 ["getNodeAtIndex"]
       41 MOVE                             R10 R8
       42 CALL                             R9 1 1
       43 JUMPIFNOT                        R9 ; [+33]
       44 GETTABLEKS                       R12 R3 K12 ["cell"]
       46 MOVE                             R13 R9
       47 CALL                             R12 1 1
       48 ORK                              R11 R12 K11 [""]
       49 FASTCALL1                        TOSTRING R11 ; [+2]
       50 GETIMPORT                        R10 K14 [tostring]
       52 CALL                             R10 1 1
       53 GETUPVAL                         R11 2
       54 MOVE                             R13 R10
       55 LOADK                            R14 K15 [17.598]
       56 GETUPVAL                         R16 3
       57 GETTABLEKS                       R15 R16 K16 ["defaultFont"]
       59 GETIMPORT                        R16 K19 [Vector2.new]
       61 LOADN                            R17 16
       62 LOADN                            R18 16
       63 CALL                             R16 2 -1
       64 NAMECALL                         R11 R11 K20 ["GetTextSize"]
       66 CALL                             R11 -1 1
       67 GETTABLEKS                       R15 R11 K22 ["X"]
       69 ADDK                             R14 R15 K21 [20]
       70 FASTCALL2                        MATH_MAX R5 R14 ; [+4]
       72 MOVE                             R13 R5
       73 GETIMPORT                        R12 K25 [math.max]
       75 CALL                             R12 2 1
       76 MOVE                             R5 R12
       77 FORNLOOP                         R6
       78 SETTABLE                         R5 R2 R0
       79 GETUPVAL                         R6 4
       80 MOVE                             R7 R2
       81 CALL                             R6 1 0
       82 GETUPVAL                         R6 5
       83 LOADK                            R8 K26 ["SceneAnalysis_ColumnOverrides"]
       84 MOVE                             R9 R2
       85 NAMECALL                         R6 R6 K27 ["SetSetting"]
       87 CALL                             R6 3 0
       88 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADN                            R3 0
        2 GETTABLEKS                       R6 R0 K0 ["AbsoluteSize"]
        4 GETTABLEKS                       R5 R6 K1 ["X"]
        6 GETUPVAL                         R6 1
        7 SUB                              R4 R5 R6
        8 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       10 GETIMPORT                        R2 K4 [math.max]
       12 CALL                             R2 2 1
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setSort"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["selectedNodeId"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setSort"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["scrollRef"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["scrollRef"]
        7 GETTABLEKS                       R1 R2 K1 ["current"]
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

PROTO_17:
        0 LOADN                            R2 0
        1 ORK                              R5 R0 K0 [1]
        2 SUBK                             R4 R5 K0 [1]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K1 ["rowHeight"]
        6 MUL                              R3 R4 R5
        7 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
        9 GETIMPORT                        R1 K4 [math.max]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K5 ["scrollRef"]
       15 JUMPIFNOT                        R2 ; [+5]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K5 ["scrollRef"]
       19 GETTABLEKS                       R2 R3 K6 ["current"]
       21 JUMPIFNOT                        R2 ; [+25]
       22 GETTABLEKS                       R4 R2 K7 ["CanvasPosition"]
       24 GETTABLEKS                       R3 R4 K8 ["Y"]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R5 R6 K10 ["windowHeight"]
       29 ORK                              R4 R5 K9 [0]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R5 R6 K1 ["rowHeight"]
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

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["scrollRef"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["scrollRef"]
        7 GETTABLEKS                       R0 R1 K1 ["current"]
        9 JUMPIFNOT                        R0 ; [+5]
       10 GETTABLEKS                       R2 R0 K2 ["CanvasPosition"]
       12 GETTABLEKS                       R1 R2 K3 ["Y"]
       14 JUMPIF                           R1 ; [+1]
       15 LOADN                            R1 0
       16 RETURN                           R1 1

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getColumns"]
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

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["get"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R1 R2 K1 ["column"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["lastSortKey"]
        9 JUMPIFEQ                         R1 R2 ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R1 R2 K0 ["get"]
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

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["get"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R1 R2 K1 ["column"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["firstSortKey"]
        9 JUMPIFEQ                         R1 R2 ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R1 R2 K0 ["get"]
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

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["id"]
        3 GETTABLE                         R1 R0 R2
        4 JUMPIF                           R1 ; [+9]
        5 GETIMPORT                        R1 K3 [UDim2.new]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K4 ["width"]
       10 LOADN                            R3 0
       11 LOADN                            R4 1
       12 LOADN                            R5 0
       13 CALL                             R1 4 1
       14 RETURN                           R1 1

PROTO_24:
        0 DUPTABLE                         R0 K2 [{"HeaderPadding", "HeaderLayout"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K3 ["createElement"]
        4 LOADK                            R2 K4 ["UIPadding"]
        5 DUPTABLE                         R3 K9 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
        6 GETIMPORT                        R4 K12 [UDim.new]
        8 LOADN                            R5 0
        9 LOADN                            R6 8
       10 CALL                             R4 2 1
       11 SETTABLEKS                       R4 R3 K5 ["PaddingLeft"]
       13 GETIMPORT                        R4 K12 [UDim.new]
       15 LOADN                            R5 0
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R6 R7 K13 ["scrollBarThickness"]
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
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R1 R2 K3 ["createElement"]
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
       63 GETUPVAL                         R2 2
       64 GETTABLEKS                       R1 R2 K29 ["minOrder"]
       66 GETUPVAL                         R3 2
       67 GETTABLEKS                       R2 R3 K30 ["maxOrder"]
       69 GETUPVAL                         R4 3
       70 GETTABLEKS                       R3 R4 K31 ["getColumns"]
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
       88 GETUPVAL                         R12 0
       89 GETTABLEKS                       R11 R12 K3 ["createElement"]
       91 GETUPVAL                         R12 4
       92 DUPTABLE                         R13 K45 [{"id", "text", "headerKey", "column", "size", "layoutOrder", "sortStateObservable", "onSort", "onResize", "onDoubleClick", "hideResizer", "onHoverChange"}]
       93 GETTABLEKS                       R14 R7 K33 ["id"]
       95 SETTABLEKS                       R14 R13 K33 ["id"]
       97 GETTABLEKS                       R14 R7 K46 ["headerText"]
       99 SETTABLEKS                       R14 R13 K34 ["text"]
      101 GETTABLEKS                       R14 R7 K35 ["headerKey"]
      103 SETTABLEKS                       R14 R13 K35 ["headerKey"]
      105 GETTABLEKS                       R14 R7 K47 ["sortKey"]
      107 SETTABLEKS                       R14 R13 K36 ["column"]
      109 GETUPVAL                         R15 5
      110 GETTABLEKS                       R14 R15 K48 ["getBinding"]
      112 CALL                             R14 0 1
      113 NEWCLOSURE                       R16 P0
      114 CAPTURE                          VAL R7
      115 NAMECALL                         R14 R14 K49 ["map"]
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
      136 JUMPIF                           R9 ; [+2]
      137 GETUPVAL                         R14 9
      138 JUMP                             ; [+1]
      139 LOADNIL                          R14
      140 SETTABLEKS                       R14 R13 K42 ["onDoubleClick"]
      142 SETTABLEKS                       R9 R13 K43 ["hideResizer"]
      144 JUMPIFNOT                        R8 ; [+2]
      145 GETUPVAL                         R14 10
      146 JUMP                             ; [+4]
      147 JUMPIFNOT                        R9 ; [+2]
      148 GETUPVAL                         R14 11
      149 JUMP                             ; [+1]
      150 LOADNIL                          R14
      151 SETTABLEKS                       R14 R13 K44 ["onHoverChange"]
      153 CALL                             R11 2 1
      154 SETTABLE                         R11 R0 R10
      155 FORGLOOP                         R3 2 ; [-82]
      157 RETURN                           R0 1

PROTO_25:
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
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R8 R9 K3 ["rowHeight"]
       19 MUL                              R7 R0 R8
       20 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       22 GETIMPORT                        R5 K6 [math.max]
       24 CALL                             R5 2 1
       25 CALL                             R1 4 -1
       26 RETURN                           R1 -1

PROTO_26:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 LOADN                            R2 0
        3 GETTABLEKS                       R3 R0 K3 ["yPosition"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_27:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 LOADK                            R3 K1 ["Frame"]
        4 DUPTABLE                         R4 K6 [{"BackgroundTransparency", "Position", "Size", "ZIndex"}]
        5 LOADN                            R5 1
        6 SETTABLEKS                       R5 R4 K2 ["BackgroundTransparency"]
        8 GETTABLEKS                       R5 R0 K7 ["getBinding"]
       10 CALL                             R5 0 1
       11 DUPCLOSURE                       R7 K8 [PROTO_26]
       12 NAMECALL                         R5 R5 K9 ["map"]
       14 CALL                             R5 2 1
       15 SETTABLEKS                       R5 R4 K3 ["Position"]
       17 GETIMPORT                        R5 K12 [UDim2.new]
       19 LOADN                            R6 1
       20 LOADN                            R7 253
       21 LOADN                            R8 0
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R9 R10 K13 ["rowHeight"]
       25 CALL                             R5 4 1
       26 SETTABLEKS                       R5 R4 K4 ["Size"]
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R5 R6 K5 ["ZIndex"]
       31 SETTABLEKS                       R5 R4 K5 ["ZIndex"]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R5 R6 K0 ["createElement"]
       36 GETUPVAL                         R6 3
       37 DUPTABLE                         R7 K25 [{"visibleNodeObservable", "hoveredNodeId", "selectedNodeId", "selectedIdsHash", "setSelectedNodeId", "setSelectedIdsHash", "columnWidths", "treemapContext", "query", "queryInfo", "deselectOnReselect"}]
       38 SETTABLEKS                       R0 R7 K14 ["visibleNodeObservable"]
       40 GETUPVAL                         R8 4
       41 SETTABLEKS                       R8 R7 K15 ["hoveredNodeId"]
       43 GETUPVAL                         R8 5
       44 SETTABLEKS                       R8 R7 K16 ["selectedNodeId"]
       46 GETUPVAL                         R8 6
       47 SETTABLEKS                       R8 R7 K17 ["selectedIdsHash"]
       49 GETUPVAL                         R8 7
       50 SETTABLEKS                       R8 R7 K18 ["setSelectedNodeId"]
       52 GETUPVAL                         R8 8
       53 SETTABLEKS                       R8 R7 K19 ["setSelectedIdsHash"]
       55 GETUPVAL                         R8 9
       56 SETTABLEKS                       R8 R7 K20 ["columnWidths"]
       58 GETUPVAL                         R9 2
       59 GETTABLEKS                       R8 R9 K21 ["treemapContext"]
       61 SETTABLEKS                       R8 R7 K21 ["treemapContext"]
       63 GETUPVAL                         R9 2
       64 GETTABLEKS                       R8 R9 K22 ["query"]
       66 SETTABLEKS                       R8 R7 K22 ["query"]
       68 GETUPVAL                         R9 2
       69 GETTABLEKS                       R8 R9 K23 ["queryInfo"]
       71 SETTABLEKS                       R8 R7 K23 ["queryInfo"]
       73 GETUPVAL                         R9 2
       74 GETTABLEKS                       R8 R9 K24 ["deselectOnReselect"]
       76 SETTABLEKS                       R8 R7 K24 ["deselectOnReselect"]
       78 CALL                             R5 2 -1
       79 CALL                             R2 -1 -1
       80 RETURN                           R2 -1

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["query"]
        2 GETTABLEKS                       R3 R2 K1 ["getSortStateObservable"]
        4 CALL                             R3 0 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K2 ["Plugin"]
        8 NAMECALL                         R4 R4 K3 ["use"]
       10 CALL                             R4 1 1
       11 NAMECALL                         R4 R4 K4 ["get"]
       13 CALL                             R4 1 1
       14 GETIMPORT                        R5 K6 [game]
       16 LOADK                            R7 K7 ["TextService"]
       17 NAMECALL                         R5 R5 K8 ["GetService"]
       19 CALL                             R5 2 1
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R6 R7 K9 ["useState"]
       23 GETUPVAL                         R7 2
       24 CALL                             R6 1 2
       25 GETUPVAL                         R9 1
       26 GETTABLEKS                       R8 R9 K10 ["useEffect"]
       28 NEWCLOSURE                       R9 P0
       29 CAPTURE                          VAL R7
       30 CAPTURE                          UPVAL U3
       31 NEWTABLE                         R10 0 0
       33 CALL                             R8 2 0
       34 GETUPVAL                         R9 1
       35 GETTABLEKS                       R8 R9 K11 ["useMemo"]
       37 NEWCLOSURE                       R9 P1
       38 CAPTURE                          VAL R4
       39 NEWTABLE                         R10 0 1
       41 MOVE                             R11 R4
       42 SETLIST                          R10 R11 1 [1]
       44 CALL                             R8 2 1
       45 GETUPVAL                         R10 4
       46 GETTABLEKS                       R9 R10 K9 ["useState"]
       48 MOVE                             R10 R8
       49 CALL                             R9 1 2
       50 GETUPVAL                         R12 1
       51 GETTABLEKS                       R11 R12 K12 ["useCallback"]
       53 NEWCLOSURE                       R12 P2
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R4
       57 NEWTABLE                         R13 0 3
       59 MOVE                             R14 R4
       60 MOVE                             R15 R10
       61 MOVE                             R16 R9
       62 SETLIST                          R13 R14 3 [1]
       64 CALL                             R11 2 1
       65 GETUPVAL                         R13 1
       66 GETTABLEKS                       R12 R13 K12 ["useCallback"]
       68 NEWCLOSURE                       R13 P3
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R5
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R4
       75 NEWTABLE                         R14 0 4
       77 MOVE                             R15 R4
       78 MOVE                             R16 R2
       79 MOVE                             R17 R10
       80 MOVE                             R18 R9
       81 SETLIST                          R14 R15 4 [1]
       83 CALL                             R12 2 1
       84 GETUPVAL                         R14 4
       85 GETTABLEKS                       R13 R14 K9 ["useState"]
       87 LOADN                            R14 0
       88 CALL                             R13 1 2
       89 GETUPVAL                         R15 6
       90 GETTABLEKS                       R16 R2 K13 ["getColumns"]
       92 CALL                             R16 0 1
       93 MOVE                             R17 R13
       94 MOVE                             R18 R9
       95 CALL                             R15 3 1
       96 GETUPVAL                         R21 5
       97 GETTABLEKS                       R20 R21 K16 ["scrollBarThickness"]
       99 ADDK                             R19 R20 K15 [2]
      100 ADDK                             R18 R19 K15 [2]
      101 ADDK                             R17 R18 K14 [8]
      102 GETUPVAL                         R19 5
      103 GETTABLEKS                       R18 R19 K16 ["scrollBarThickness"]
      105 ADD                              R16 R17 R18
      106 GETUPVAL                         R18 1
      107 GETTABLEKS                       R17 R18 K12 ["useCallback"]
      109 NEWCLOSURE                       R18 P4
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R16
      112 NEWTABLE                         R19 0 1
      114 MOVE                             R20 R14
      115 SETLIST                          R19 R20 1 [1]
      117 CALL                             R17 2 1
      118 GETUPVAL                         R19 1
      119 GETTABLEKS                       R18 R19 K12 ["useCallback"]
      121 NEWCLOSURE                       R19 P5
      122 CAPTURE                          VAL R2
      123 NEWTABLE                         R20 0 1
      125 MOVE                             R21 R2
      126 SETLIST                          R20 R21 1 [1]
      128 CALL                             R18 2 1
      129 GETUPVAL                         R19 7
      130 GETTABLEKS                       R20 R0 K0 ["query"]
      132 GETTABLEKS                       R21 R0 K17 ["windowHeight"]
      134 GETTABLEKS                       R22 R0 K18 ["scrollHeightObservable"]
      136 CALL                             R19 3 1
      137 GETUPVAL                         R21 4
      138 GETTABLEKS                       R20 R21 K9 ["useState"]
      140 LOADNIL                          R21
      141 CALL                             R20 1 2
      142 GETUPVAL                         R23 4
      143 GETTABLEKS                       R22 R23 K9 ["useState"]
      145 GETTABLEKS                       R23 R0 K19 ["selectedNodeId"]
      147 CALL                             R22 1 2
      148 GETUPVAL                         R25 4
      149 GETTABLEKS                       R24 R25 K9 ["useState"]
      151 LOADNIL                          R25
      152 CALL                             R24 1 2
      153 GETUPVAL                         R27 1
      154 GETTABLEKS                       R26 R27 K10 ["useEffect"]
      156 NEWCLOSURE                       R27 P6
      157 CAPTURE                          VAL R23
      158 CAPTURE                          VAL R0
      159 NEWTABLE                         R28 0 1
      161 GETTABLEKS                       R29 R0 K19 ["selectedNodeId"]
      163 SETLIST                          R28 R29 1 [1]
      165 CALL                             R26 2 0
      166 GETUPVAL                         R26 8
      167 MOVE                             R27 R21
      168 MOVE                             R28 R19
      169 GETTABLEKS                       R29 R0 K18 ["scrollHeightObservable"]
      171 GETTABLEKS                       R30 R0 K20 ["scrollRef"]
      173 CALL                             R26 4 0
      174 GETUPVAL                         R27 1
      175 GETTABLEKS                       R26 R27 K21 ["useImperativeHandle"]
      177 MOVE                             R27 R1
      178 NEWCLOSURE                       R28 P7
      179 CAPTURE                          VAL R23
      180 CAPTURE                          VAL R25
      181 CAPTURE                          VAL R21
      182 CAPTURE                          VAL R2
      183 CAPTURE                          VAL R0
      184 CAPTURE                          UPVAL U5
      185 NEWTABLE                         R29 0 5
      187 GETTABLEKS                       R30 R0 K20 ["scrollRef"]
      189 MOVE                             R31 R23
      190 MOVE                             R32 R25
      191 MOVE                             R33 R21
      192 GETTABLEKS                       R34 R0 K17 ["windowHeight"]
      194 SETLIST                          R29 R30 5 [1]
      196 CALL                             R26 3 0
      197 GETUPVAL                         R27 1
      198 GETTABLEKS                       R26 R27 K11 ["useMemo"]
      200 NEWCLOSURE                       R27 P8
      201 CAPTURE                          VAL R2
      202 NEWTABLE                         R28 0 1
      204 MOVE                             R29 R2
      205 SETLIST                          R28 R29 1 [1]
      207 CALL                             R26 2 1
      208 GETUPVAL                         R28 1
      209 GETTABLEKS                       R27 R28 K22 ["useRef"]
      211 LOADNIL                          R28
      212 CALL                             R27 1 1
      213 GETUPVAL                         R28 9
      214 MOVE                             R29 R27
      215 CALL                             R28 1 1
      216 GETUPVAL                         R30 4
      217 GETTABLEKS                       R29 R30 K9 ["useState"]
      219 LOADB                            R30 0
      220 CALL                             R29 1 2
      221 GETUPVAL                         R32 1
      222 GETTABLEKS                       R31 R32 K12 ["useCallback"]
      224 NEWCLOSURE                       R32 P9
      225 CAPTURE                          VAL R3
      226 CAPTURE                          VAL R26
      227 CAPTURE                          VAL R29
      228 CAPTURE                          VAL R28
      229 NEWTABLE                         R33 0 4
      231 MOVE                             R34 R3
      232 MOVE                             R35 R26
      233 MOVE                             R36 R29
      234 MOVE                             R37 R28
      235 SETLIST                          R33 R34 4 [1]
      237 CALL                             R31 2 1
      238 GETUPVAL                         R33 4
      239 GETTABLEKS                       R32 R33 K10 ["useEffect"]
      241 MOVE                             R33 R3
      242 MOVE                             R34 R31
      243 NEWTABLE                         R35 0 1
      245 MOVE                             R36 R31
      246 SETLIST                          R35 R36 1 [1]
      248 CALL                             R32 3 0
      249 GETUPVAL                         R33 4
      250 GETTABLEKS                       R32 R33 K10 ["useEffect"]
      252 MOVE                             R33 R29
      253 MOVE                             R34 R31
      254 NEWTABLE                         R35 0 1
      256 MOVE                             R36 R31
      257 SETLIST                          R35 R36 1 [1]
      259 CALL                             R32 3 0
      260 GETUPVAL                         R33 1
      261 GETTABLEKS                       R32 R33 K22 ["useRef"]
      263 LOADNIL                          R33
      264 CALL                             R32 1 1
      265 GETUPVAL                         R33 9
      266 MOVE                             R34 R32
      267 CALL                             R33 1 1
      268 GETUPVAL                         R35 4
      269 GETTABLEKS                       R34 R35 K9 ["useState"]
      271 LOADB                            R35 0
      272 CALL                             R34 1 2
      273 GETUPVAL                         R37 1
      274 GETTABLEKS                       R36 R37 K12 ["useCallback"]
      276 NEWCLOSURE                       R37 P10
      277 CAPTURE                          VAL R3
      278 CAPTURE                          VAL R26
      279 CAPTURE                          VAL R34
      280 CAPTURE                          VAL R33
      281 NEWTABLE                         R38 0 4
      283 MOVE                             R39 R3
      284 MOVE                             R40 R26
      285 MOVE                             R41 R34
      286 MOVE                             R42 R33
      287 SETLIST                          R38 R39 4 [1]
      289 CALL                             R36 2 1
      290 GETUPVAL                         R38 4
      291 GETTABLEKS                       R37 R38 K10 ["useEffect"]
      293 MOVE                             R38 R3
      294 MOVE                             R39 R36
      295 NEWTABLE                         R40 0 1
      297 MOVE                             R41 R36
      298 SETLIST                          R40 R41 1 [1]
      300 CALL                             R37 3 0
      301 GETUPVAL                         R38 4
      302 GETTABLEKS                       R37 R38 K10 ["useEffect"]
      304 MOVE                             R38 R34
      305 MOVE                             R39 R36
      306 NEWTABLE                         R40 0 1
      308 MOVE                             R41 R36
      309 SETLIST                          R40 R41 1 [1]
      311 CALL                             R37 3 0
      312 GETUPVAL                         R38 1
      313 GETTABLEKS                       R37 R38 K11 ["useMemo"]
      315 NEWCLOSURE                       R38 P11
      316 CAPTURE                          UPVAL U1
      317 CAPTURE                          UPVAL U5
      318 CAPTURE                          VAL R26
      319 CAPTURE                          VAL R2
      320 CAPTURE                          UPVAL U10
      321 CAPTURE                          VAL R15
      322 CAPTURE                          VAL R3
      323 CAPTURE                          VAL R18
      324 CAPTURE                          VAL R11
      325 CAPTURE                          VAL R12
      326 CAPTURE                          VAL R35
      327 CAPTURE                          VAL R30
      328 NEWTABLE                         R39 0 8
      330 MOVE                             R40 R15
      331 MOVE                             R41 R26
      332 MOVE                             R42 R3
      333 MOVE                             R43 R18
      334 MOVE                             R44 R11
      335 MOVE                             R45 R12
      336 MOVE                             R46 R35
      337 MOVE                             R47 R30
      338 SETLIST                          R39 R40 8 [1]
      340 CALL                             R37 2 1
      341 GETUPVAL                         R39 5
      342 GETTABLEKS                       R38 R39 K16 ["scrollBarThickness"]
      344 ADDK                             R39 R38 K15 [2]
      345 GETUPVAL                         R41 1
      346 GETTABLEKS                       R40 R41 K23 ["createElement"]
      348 LOADK                            R41 K24 ["Frame"]
      349 NEWTABLE                         R42 4 0
      351 GETIMPORT                        R43 K27 [UDim2.new]
      353 LOADN                            R44 1
      354 LOADN                            R45 0
      355 LOADN                            R46 1
      356 LOADN                            R47 0
      357 CALL                             R43 4 1
      358 SETTABLEKS                       R43 R42 K28 ["Size"]
      360 LOADN                            R43 1
      361 SETTABLEKS                       R43 R42 K29 ["BackgroundTransparency"]
      363 GETUPVAL                         R45 1
      364 GETTABLEKS                       R44 R45 K30 ["Change"]
      366 GETTABLEKS                       R43 R44 K31 ["AbsoluteSize"]
      368 SETTABLE                         R17 R42 R43
      369 DUPTABLE                         R43 K38 [{"BorderFrame", "Content", "CornerFillLeft", "HeaderDivider", "CornerFill", "ScrollingFrame"}]
      370 GETUPVAL                         R45 1
      371 GETTABLEKS                       R44 R45 K23 ["createElement"]
      373 LOADK                            R45 K24 ["Frame"]
      374 DUPTABLE                         R46 K41 [{"Size", "Position", "BackgroundTransparency", "ZIndex"}]
      375 GETIMPORT                        R47 K27 [UDim2.new]
      377 LOADN                            R48 1
      378 LOADN                            R51 2
      379 ADD                              R50 R51 R39
      380 MINUS                            R49 R50
      381 LOADN                            R50 1
      382 LOADN                            R51 252
      383 CALL                             R47 4 1
      384 SETTABLEKS                       R47 R46 K28 ["Size"]
      386 GETIMPORT                        R47 K43 [UDim2.fromOffset]
      388 LOADN                            R48 2
      389 LOADN                            R49 2
      390 CALL                             R47 2 1
      391 SETTABLEKS                       R47 R46 K39 ["Position"]
      393 LOADN                            R47 1
      394 SETTABLEKS                       R47 R46 K29 ["BackgroundTransparency"]
      396 LOADN                            R47 2
      397 SETTABLEKS                       R47 R46 K40 ["ZIndex"]
      399 DUPTABLE                         R47 K46 [{"Corner", "Stroke"}]
      400 GETUPVAL                         R49 1
      401 GETTABLEKS                       R48 R49 K23 ["createElement"]
      403 LOADK                            R49 K47 ["UICorner"]
      404 DUPTABLE                         R50 K49 [{"CornerRadius"}]
      405 GETIMPORT                        R51 K51 [UDim.new]
      407 LOADN                            R52 0
      408 LOADN                            R53 8
      409 CALL                             R51 2 1
      410 SETTABLEKS                       R51 R50 K48 ["CornerRadius"]
      412 CALL                             R48 2 1
      413 SETTABLEKS                       R48 R47 K44 ["Corner"]
      415 GETUPVAL                         R49 1
      416 GETTABLEKS                       R48 R49 K23 ["createElement"]
      418 LOADK                            R49 K52 ["UIStroke"]
      419 DUPTABLE                         R50 K56 [{"Color", "Transparency", "Thickness"}]
      420 SETTABLEKS                       R6 R50 K53 ["Color"]
      422 LOADK                            R51 K57 [0.88]
      423 SETTABLEKS                       R51 R50 K54 ["Transparency"]
      425 LOADN                            R51 1
      426 SETTABLEKS                       R51 R50 K55 ["Thickness"]
      428 CALL                             R48 2 1
      429 SETTABLEKS                       R48 R47 K45 ["Stroke"]
      431 CALL                             R44 3 1
      432 SETTABLEKS                       R44 R43 K32 ["BorderFrame"]
      434 GETUPVAL                         R45 1
      435 GETTABLEKS                       R44 R45 K23 ["createElement"]
      437 LOADK                            R45 K24 ["Frame"]
      438 DUPTABLE                         R46 K59 [{"Size", "Position", "BackgroundTransparency", "ClipsDescendants", "ZIndex"}]
      439 GETIMPORT                        R47 K27 [UDim2.new]
      441 LOADN                            R48 1
      442 LOADN                            R51 2
      443 ADD                              R50 R51 R39
      444 MINUS                            R49 R50
      445 LOADN                            R50 0
      446 GETUPVAL                         R53 5
      447 GETTABLEKS                       R52 R53 K61 ["headerHeight"]
      449 ADDK                             R51 R52 K60 [1]
      450 CALL                             R47 4 1
      451 SETTABLEKS                       R47 R46 K28 ["Size"]
      453 GETIMPORT                        R47 K43 [UDim2.fromOffset]
      455 LOADN                            R48 2
      456 LOADN                            R49 0
      457 CALL                             R47 2 1
      458 SETTABLEKS                       R47 R46 K39 ["Position"]
      460 LOADN                            R47 1
      461 SETTABLEKS                       R47 R46 K29 ["BackgroundTransparency"]
      463 LOADB                            R47 1
      464 SETTABLEKS                       R47 R46 K58 ["ClipsDescendants"]
      466 LOADN                            R47 1
      467 SETTABLEKS                       R47 R46 K40 ["ZIndex"]
      469 DUPTABLE                         R47 K63 [{"Corner", "Headers"}]
      470 GETUPVAL                         R49 1
      471 GETTABLEKS                       R48 R49 K23 ["createElement"]
      473 LOADK                            R49 K47 ["UICorner"]
      474 DUPTABLE                         R50 K49 [{"CornerRadius"}]
      475 GETIMPORT                        R51 K51 [UDim.new]
      477 LOADN                            R52 0
      478 LOADN                            R53 8
      479 CALL                             R51 2 1
      480 SETTABLEKS                       R51 R50 K48 ["CornerRadius"]
      482 CALL                             R48 2 1
      483 SETTABLEKS                       R48 R47 K44 ["Corner"]
      485 GETUPVAL                         R49 1
      486 GETTABLEKS                       R48 R49 K23 ["createElement"]
      488 LOADK                            R49 K24 ["Frame"]
      489 DUPTABLE                         R50 K65 [{"Size", "BorderSizePixel", "BackgroundTransparency"}]
      490 GETIMPORT                        R51 K27 [UDim2.new]
      492 LOADN                            R52 1
      493 LOADN                            R53 0
      494 LOADN                            R54 0
      495 GETUPVAL                         R57 5
      496 GETTABLEKS                       R56 R57 K61 ["headerHeight"]
      498 ADDK                             R55 R56 K60 [1]
      499 CALL                             R51 4 1
      500 SETTABLEKS                       R51 R50 K28 ["Size"]
      502 LOADN                            R51 0
      503 SETTABLEKS                       R51 R50 K64 ["BorderSizePixel"]
      505 LOADN                            R51 1
      506 SETTABLEKS                       R51 R50 K29 ["BackgroundTransparency"]
      508 MOVE                             R51 R37
      509 CALL                             R48 3 1
      510 SETTABLEKS                       R48 R47 K62 ["Headers"]
      512 CALL                             R44 3 1
      513 SETTABLEKS                       R44 R43 K33 ["Content"]
      515 GETUPVAL                         R45 1
      516 GETTABLEKS                       R44 R45 K23 ["createElement"]
      518 LOADK                            R45 K24 ["Frame"]
      519 DUPTABLE                         R46 K59 [{"Size", "Position", "BackgroundTransparency", "ClipsDescendants", "ZIndex"}]
      520 GETIMPORT                        R47 K43 [UDim2.fromOffset]
      522 LOADN                            R48 8
      523 GETUPVAL                         R52 5
      524 GETTABLEKS                       R51 R52 K61 ["headerHeight"]
      526 SUBK                             R50 R51 K60 [1]
      527 SUBK                             R49 R50 K15 [2]
      528 CALL                             R47 2 1
      529 SETTABLEKS                       R47 R46 K28 ["Size"]
      531 GETIMPORT                        R47 K43 [UDim2.fromOffset]
      533 LOADN                            R48 2
      534 LOADN                            R49 2
      535 CALL                             R47 2 1
      536 SETTABLEKS                       R47 R46 K39 ["Position"]
      538 LOADN                            R47 1
      539 SETTABLEKS                       R47 R46 K29 ["BackgroundTransparency"]
      541 LOADB                            R47 1
      542 SETTABLEKS                       R47 R46 K58 ["ClipsDescendants"]
      544 LOADN                            R47 2
      545 SETTABLEKS                       R47 R46 K40 ["ZIndex"]
      547 DUPTABLE                         R47 K67 [{"Fill"}]
      548 GETUPVAL                         R49 1
      549 GETTABLEKS                       R48 R49 K23 ["createElement"]
      551 LOADK                            R49 K24 ["Frame"]
      552 NEWTABLE                         R50 8 0
      554 GETIMPORT                        R51 K27 [UDim2.new]
      556 LOADN                            R52 0
      557 LOADN                            R53 16
      558 LOADN                            R54 1
      559 LOADN                            R55 8
      560 CALL                             R51 4 1
      561 SETTABLEKS                       R51 R50 K28 ["Size"]
      563 GETIMPORT                        R51 K43 [UDim2.fromOffset]
      565 LOADN                            R52 0
      566 LOADN                            R53 0
      567 CALL                             R51 2 1
      568 SETTABLEKS                       R51 R50 K39 ["Position"]
      570 LOADN                            R51 0
      571 SETTABLEKS                       R51 R50 K64 ["BorderSizePixel"]
      573 SETTABLEKS                       R32 R50 K68 ["ref"]
      575 GETUPVAL                         R52 1
      576 GETTABLEKS                       R51 R52 K69 ["Tag"]
      578 LOADK                            R52 K70 ["SceneAnalysis-BackgroundColor"]
      579 SETTABLE                         R52 R50 R51
      580 DUPTABLE                         R51 K71 [{"Corner"}]
      581 GETUPVAL                         R53 1
      582 GETTABLEKS                       R52 R53 K23 ["createElement"]
      584 LOADK                            R53 K47 ["UICorner"]
      585 DUPTABLE                         R54 K49 [{"CornerRadius"}]
      586 GETIMPORT                        R55 K51 [UDim.new]
      588 LOADN                            R56 0
      589 LOADN                            R57 8
      590 CALL                             R55 2 1
      591 SETTABLEKS                       R55 R54 K48 ["CornerRadius"]
      593 CALL                             R52 2 1
      594 SETTABLEKS                       R52 R51 K44 ["Corner"]
      596 CALL                             R48 3 1
      597 SETTABLEKS                       R48 R47 K66 ["Fill"]
      599 CALL                             R44 3 1
      600 SETTABLEKS                       R44 R43 K34 ["CornerFillLeft"]
      602 GETUPVAL                         R45 1
      603 GETTABLEKS                       R44 R45 K23 ["createElement"]
      605 LOADK                            R45 K24 ["Frame"]
      606 NEWTABLE                         R46 8 0
      608 GETIMPORT                        R47 K27 [UDim2.new]
      610 LOADN                            R48 1
      611 LOADN                            R51 2
      612 ADD                              R50 R51 R39
      613 MINUS                            R49 R50
      614 LOADN                            R50 0
      615 LOADN                            R51 1
      616 CALL                             R47 4 1
      617 SETTABLEKS                       R47 R46 K28 ["Size"]
      619 GETIMPORT                        R47 K43 [UDim2.fromOffset]
      621 LOADN                            R48 2
      622 GETUPVAL                         R51 5
      623 GETTABLEKS                       R50 R51 K61 ["headerHeight"]
      625 SUBK                             R49 R50 K60 [1]
      626 CALL                             R47 2 1
      627 SETTABLEKS                       R47 R46 K39 ["Position"]
      629 LOADN                            R47 0
      630 SETTABLEKS                       R47 R46 K64 ["BorderSizePixel"]
      632 LOADN                            R47 1
      633 SETTABLEKS                       R47 R46 K40 ["ZIndex"]
      635 GETUPVAL                         R48 1
      636 GETTABLEKS                       R47 R48 K69 ["Tag"]
      638 LOADK                            R48 K72 ["SceneAnalysis-StrokeDefault"]
      639 SETTABLE                         R48 R46 R47
      640 CALL                             R44 2 1
      641 SETTABLEKS                       R44 R43 K35 ["HeaderDivider"]
      643 GETUPVAL                         R45 1
      644 GETTABLEKS                       R44 R45 K23 ["createElement"]
      646 LOADK                            R45 K24 ["Frame"]
      647 DUPTABLE                         R46 K74 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency", "ClipsDescendants", "ZIndex"}]
      648 GETIMPORT                        R47 K43 [UDim2.fromOffset]
      650 LOADN                            R48 13
      651 GETUPVAL                         R52 5
      652 GETTABLEKS                       R51 R52 K61 ["headerHeight"]
      654 SUBK                             R50 R51 K60 [1]
      655 SUBK                             R49 R50 K15 [2]
      656 CALL                             R47 2 1
      657 SETTABLEKS                       R47 R46 K28 ["Size"]
      659 GETIMPORT                        R47 K27 [UDim2.new]
      661 LOADN                            R48 1
      662 SUBK                             R50 R39 K60 [1]
      663 MINUS                            R49 R50
      664 LOADN                            R50 0
      665 LOADN                            R51 2
      666 CALL                             R47 4 1
      667 SETTABLEKS                       R47 R46 K39 ["Position"]
      669 GETIMPORT                        R47 K76 [Vector2.new]
      671 LOADN                            R48 1
      672 LOADN                            R49 0
      673 CALL                             R47 2 1
      674 SETTABLEKS                       R47 R46 K73 ["AnchorPoint"]
      676 LOADN                            R47 1
      677 SETTABLEKS                       R47 R46 K29 ["BackgroundTransparency"]
      679 LOADB                            R47 1
      680 SETTABLEKS                       R47 R46 K58 ["ClipsDescendants"]
      682 LOADN                            R47 1
      683 SETTABLEKS                       R47 R46 K40 ["ZIndex"]
      685 DUPTABLE                         R47 K67 [{"Fill"}]
      686 GETUPVAL                         R49 1
      687 GETTABLEKS                       R48 R49 K23 ["createElement"]
      689 LOADK                            R49 K24 ["Frame"]
      690 NEWTABLE                         R50 8 0
      692 GETIMPORT                        R51 K27 [UDim2.new]
      694 LOADN                            R52 0
      695 LOADN                            R53 16
      696 LOADN                            R54 1
      697 LOADN                            R55 8
      698 CALL                             R51 4 1
      699 SETTABLEKS                       R51 R50 K28 ["Size"]
      701 GETIMPORT                        R51 K27 [UDim2.new]
      703 LOADN                            R52 1
      704 LOADN                            R53 0
      705 LOADN                            R54 0
      706 LOADN                            R55 0
      707 CALL                             R51 4 1
      708 SETTABLEKS                       R51 R50 K39 ["Position"]
      710 GETIMPORT                        R51 K76 [Vector2.new]
      712 LOADN                            R52 1
      713 LOADN                            R53 0
      714 CALL                             R51 2 1
      715 SETTABLEKS                       R51 R50 K73 ["AnchorPoint"]
      717 LOADN                            R51 0
      718 SETTABLEKS                       R51 R50 K64 ["BorderSizePixel"]
      720 SETTABLEKS                       R27 R50 K68 ["ref"]
      722 GETUPVAL                         R52 1
      723 GETTABLEKS                       R51 R52 K69 ["Tag"]
      725 LOADK                            R52 K70 ["SceneAnalysis-BackgroundColor"]
      726 SETTABLE                         R52 R50 R51
      727 DUPTABLE                         R51 K71 [{"Corner"}]
      728 GETUPVAL                         R53 1
      729 GETTABLEKS                       R52 R53 K23 ["createElement"]
      731 LOADK                            R53 K47 ["UICorner"]
      732 DUPTABLE                         R54 K49 [{"CornerRadius"}]
      733 GETIMPORT                        R55 K51 [UDim.new]
      735 LOADN                            R56 0
      736 LOADN                            R57 8
      737 CALL                             R55 2 1
      738 SETTABLEKS                       R55 R54 K48 ["CornerRadius"]
      740 CALL                             R52 2 1
      741 SETTABLEKS                       R52 R51 K44 ["Corner"]
      743 CALL                             R48 3 1
      744 SETTABLEKS                       R48 R47 K66 ["Fill"]
      746 CALL                             R44 3 1
      747 SETTABLEKS                       R44 R43 K36 ["CornerFill"]
      749 GETUPVAL                         R45 1
      750 GETTABLEKS                       R44 R45 K23 ["createElement"]
      752 LOADK                            R45 K37 ["ScrollingFrame"]
      753 NEWTABLE                         R46 16 0
      755 GETIMPORT                        R47 K27 [UDim2.new]
      757 LOADN                            R48 1
      758 LOADN                            R49 253
      759 LOADN                            R50 1
      760 GETUPVAL                         R56 5
      761 GETTABLEKS                       R55 R56 K61 ["headerHeight"]
      763 MINUS                            R54 R55
      764 SUBK                             R53 R54 K60 [1]
      765 SUBK                             R52 R53 K15 [2]
      766 SUBK                             R51 R52 K15 [2]
      767 CALL                             R47 4 1
      768 SETTABLEKS                       R47 R46 K28 ["Size"]
      770 GETIMPORT                        R47 K43 [UDim2.fromOffset]
      772 LOADN                            R48 1
      773 GETUPVAL                         R50 5
      774 GETTABLEKS                       R49 R50 K61 ["headerHeight"]
      776 CALL                             R47 2 1
      777 SETTABLEKS                       R47 R46 K39 ["Position"]
      779 LOADB                            R47 0
      780 SETTABLEKS                       R47 R46 K77 ["SmoothScroll"]
      782 GETUPVAL                         R50 5
      783 GETTABLEKS                       R49 R50 K79 ["rowHeight"]
      785 GETUPVAL                         R51 11
      786 GETTABLEKS                       R50 R51 K80 ["SCROLL_RATE"]
      788 MUL                              R48 R49 R50
      789 DIVK                             R47 R48 K78 [140]
      790 SETTABLEKS                       R47 R46 K81 ["ScrollRate"]
      792 LOADN                            R47 1
      793 SETTABLEKS                       R47 R46 K29 ["BackgroundTransparency"]
      795 LOADN                            R47 0
      796 SETTABLEKS                       R47 R46 K64 ["BorderSizePixel"]
      798 GETTABLEKS                       R48 R2 K82 ["getTotalCountObservable"]
      800 CALL                             R48 0 1
      801 GETTABLEKS                       R47 R48 K83 ["getBinding"]
      803 CALL                             R47 0 1
      804 DUPCLOSURE                       R49 K84 [PROTO_25]
      805 CAPTURE                          UPVAL U5
      806 NAMECALL                         R47 R47 K85 ["map"]
      808 CALL                             R47 2 1
      809 SETTABLEKS                       R47 R46 K86 ["CanvasSize"]
      811 SUBK                             R47 R38 K87 [4]
      812 SETTABLEKS                       R47 R46 K88 ["ScrollBarThickness"]
      814 GETIMPORT                        R47 K92 [Enum.ScrollBarInset.Always]
      816 SETTABLEKS                       R47 R46 K93 ["VerticalScrollBarInset"]
      818 GETIMPORT                        R47 K95 [Enum.ScrollBarInset.None]
      820 SETTABLEKS                       R47 R46 K96 ["HorizontalScrollBarInset"]
      822 LOADB                            R47 1
      823 SETTABLEKS                       R47 R46 K58 ["ClipsDescendants"]
      825 LOADN                            R47 1
      826 SETTABLEKS                       R47 R46 K40 ["ZIndex"]
      828 GETTABLEKS                       R47 R0 K20 ["scrollRef"]
      830 SETTABLEKS                       R47 R46 K68 ["ref"]
      832 GETUPVAL                         R49 1
      833 GETTABLEKS                       R48 R49 K30 ["Change"]
      835 GETTABLEKS                       R47 R48 K31 ["AbsoluteSize"]
      837 GETTABLEKS                       R48 R0 K97 ["onAbsoluteSizeChange"]
      839 SETTABLE                         R48 R46 R47
      840 GETUPVAL                         R49 1
      841 GETTABLEKS                       R48 R49 K30 ["Change"]
      843 GETTABLEKS                       R47 R48 K98 ["CanvasPosition"]
      845 GETTABLEKS                       R48 R0 K99 ["onCanvasPositionChange"]
      847 SETTABLE                         R48 R46 R47
      848 GETUPVAL                         R48 1
      849 GETTABLEKS                       R47 R48 K69 ["Tag"]
      851 LOADK                            R48 K100 ["SceneAnalysis-ScrollingFrame"]
      852 SETTABLE                         R48 R46 R47
      853 GETUPVAL                         R47 12
      854 MOVE                             R48 R19
      855 NEWCLOSURE                       R49 P13
      856 CAPTURE                          UPVAL U1
      857 CAPTURE                          UPVAL U5
      858 CAPTURE                          VAL R0
      859 CAPTURE                          UPVAL U13
      860 CAPTURE                          VAL R20
      861 CAPTURE                          VAL R22
      862 CAPTURE                          VAL R24
      863 CAPTURE                          VAL R23
      864 CAPTURE                          VAL R25
      865 CAPTURE                          VAL R15
      866 CALL                             R47 2 1
      867 CALL                             R44 3 1
      868 SETTABLEKS                       R44 R43 K37 ["ScrollingFrame"]
      870 CALL                             R40 3 -1
      871 RETURN                           R40 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R7 R0 K10 ["Src"]
       27 GETTABLEKS                       R6 R7 K11 ["Resources"]
       29 GETTABLEKS                       R5 R6 K12 ["StyleConstants"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R8 R0 K10 ["Src"]
       36 GETTABLEKS                       R7 R8 K11 ["Resources"]
       38 GETTABLEKS                       R6 R7 K13 ["Constants"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R9 R0 K10 ["Src"]
       45 GETTABLEKS                       R8 R9 K14 ["Util"]
       47 GETTABLEKS                       R7 R8 K15 ["mapValues"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R10 R0 K10 ["Src"]
       54 GETTABLEKS                       R9 R10 K16 ["Components"]
       56 GETTABLEKS                       R8 R9 K17 ["ListRowNode"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R11 R0 K10 ["Src"]
       63 GETTABLEKS                       R10 R11 K16 ["Components"]
       65 GETTABLEKS                       R9 R10 K18 ["SortableHeader"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R12 R0 K10 ["Src"]
       72 GETTABLEKS                       R11 R12 K19 ["Hooks"]
       74 GETTABLEKS                       R10 R11 K20 ["useListRange"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K5 [require]
       79 GETTABLEKS                       R13 R0 K10 ["Src"]
       81 GETTABLEKS                       R12 R13 K19 ["Hooks"]
       83 GETTABLEKS                       R11 R12 K21 ["useResponsiveColumnWidths"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R14 R0 K10 ["Src"]
       90 GETTABLEKS                       R13 R14 K19 ["Hooks"]
       92 GETTABLEKS                       R12 R13 K22 ["useHoverTracker"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K5 [require]
       97 GETTABLEKS                       R15 R0 K10 ["Src"]
       99 GETTABLEKS                       R14 R15 K19 ["Hooks"]
      101 GETTABLEKS                       R13 R14 K23 ["useImperativeTagger"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K5 [require]
      106 GETTABLEKS                       R16 R0 K10 ["Src"]
      108 GETTABLEKS                       R15 R16 K14 ["Util"]
      110 GETTABLEKS                       R14 R15 K24 ["Observable"]
      112 CALL                             R13 1 1
      113 DUPTABLE                         R14 K27 [{"Dark", "Light"}]
      114 GETIMPORT                        R15 K30 [Color3.fromRGB]
      116 LOADN                            R16 208
      117 LOADN                            R17 217
      118 LOADN                            R18 251
      119 CALL                             R15 3 1
      120 SETTABLEKS                       R15 R14 K25 ["Dark"]
      122 GETIMPORT                        R15 K30 [Color3.fromRGB]
      124 LOADN                            R16 27
      125 LOADN                            R17 37
      126 LOADN                            R18 75
      127 CALL                             R15 3 1
      128 SETTABLEKS                       R15 R14 K26 ["Light"]
      130 DUPCLOSURE                       R15 K31 [PROTO_0]
      131 CAPTURE                          VAL R14
      132 GETTABLEKS                       R16 R1 K32 ["forwardRef"]
      134 DUPCLOSURE                       R17 K33 [PROTO_28]
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R7
      149 CALL                             R16 1 1
      150 RETURN                           R16 1
