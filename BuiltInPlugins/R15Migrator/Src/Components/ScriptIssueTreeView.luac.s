PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["treeManager"]
        3 LOADB                            R2 1
        4 NAMECALL                         R0 R0 K1 ["areAllSelected"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["areAllSelected"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K1 ["treeManager"]
        8 NAMECALL                         R0 R0 K2 ["resetSelected"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R0 R1 K1 ["treeManager"]
       15 LOADB                            R2 1
       16 NAMECALL                         R0 R0 K3 ["selectAll"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["treeManager"]
        3 GETTABLEKS                       R3 R0 K1 ["item"]
        5 NAMECALL                         R1 R1 K2 ["toggleExpanded"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["treeManager"]
        3 GETTABLEKS                       R3 R0 K1 ["item"]
        5 NAMECALL                         R1 R1 K2 ["onItemClicked"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["ScriptConversionContext"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["treeManager"]
        8 GETTABLEKS                       R5 R0 K3 ["item"]
       10 MOVE                             R6 R2
       11 NAMECALL                         R3 R3 K4 ["onItemDoubleClicked"]
       13 CALL                             R3 3 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["treeManager"]
        3 NAMECALL                         R0 R0 K1 ["resetSelected"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["treeManager"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["onKeyPressed"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["treeManager"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["onKeyReleased"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["treeManager"]
        3 GETTABLEKS                       R3 R0 K1 ["item"]
        5 LOADB                            R4 1
        6 NAMECALL                         R1 R1 K2 ["onItemClicked"]
        8 CALL                             R1 3 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["treeManager"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K3 ["props"]
       16 GETTABLEKS                       R6 R0 K1 ["item"]
       18 NAMECALL                         R3 R3 K4 ["getRightClickContextInfo"]
       20 CALL                             R3 3 -1
       21 NAMECALL                         R1 R1 K5 ["show"]
       23 CALL                             R1 -1 0
       24 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R4 R0 K0 ["item"]
        2 DUPTABLE                         R5 K11 [{"Expanded", "Selected", "OnToggle", "OnClick", "OnRightClick", "OnDoubleClick", "Key", "Position", "Row", "Size"}]
        3 GETUPVAL                         R9 0
        4 GETTABLEKS                       R8 R9 K12 ["props"]
        6 GETTABLEKS                       R7 R8 K13 ["expansion"]
        8 GETTABLE                         R6 R7 R4
        9 SETTABLEKS                       R6 R5 K1 ["Expanded"]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K14 ["treeManager"]
       14 MOVE                             R8 R4
       15 NAMECALL                         R6 R6 K15 ["itemIsSelected"]
       17 CALL                             R6 2 1
       18 SETTABLEKS                       R6 R5 K2 ["Selected"]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K16 ["onToggle"]
       23 SETTABLEKS                       R6 R5 K3 ["OnToggle"]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R6 R7 K17 ["onClick"]
       28 SETTABLEKS                       R6 R5 K4 ["OnClick"]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K18 ["onRightClick"]
       33 SETTABLEKS                       R6 R5 K5 ["OnRightClick"]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K19 ["onDoubleClick"]
       38 SETTABLEKS                       R6 R5 K6 ["OnDoubleClick"]
       40 SETTABLEKS                       R1 R5 K7 ["Key"]
       42 SETTABLEKS                       R2 R5 K8 ["Position"]
       44 SETTABLEKS                       R0 R5 K9 ["Row"]
       46 SETTABLEKS                       R3 R5 K10 ["Size"]
       48 RETURN                           R5 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["range"]
        2 JUMPIFNOT                        R2 ; [+12]
        3 GETTABLEKS                       R2 R1 K0 ["range"]
        5 JUMPIFNOT                        R2 ; [+9]
        6 GETTABLEKS                       R3 R0 K0 ["range"]
        8 GETTABLEKS                       R4 R1 K0 ["range"]
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R3 R0 K1 ["key"]
       17 GETTABLEKS                       R4 R1 K1 ["key"]
       19 JUMPIFLT                         R4 R3 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["SetScriptExpansion"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["treeManager"]
        8 NAMECALL                         R1 R1 K3 ["getExpansionTable"]
       10 CALL                             R1 1 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["SetScriptSelection"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["treeManager"]
        8 NAMECALL                         R1 R1 K3 ["getSelectionList"]
       10 CALL                             R1 1 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["ref"]
        6 GETIMPORT                        R1 K4 [Vector2.zero]
        8 SETTABLEKS                       R1 R0 K5 ["canvasPosition"]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K6 ["areAllSelected"]
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K7 ["onAllSelectedChecked"]
       18 NEWCLOSURE                       R1 P2
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K8 ["onToggle"]
       22 NEWCLOSURE                       R1 P3
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K9 ["onClick"]
       26 NEWCLOSURE                       R1 P4
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K10 ["onDoubleClick"]
       30 NEWCLOSURE                       R1 P5
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K11 ["resetSelection"]
       34 NEWCLOSURE                       R1 P6
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K12 ["onKeyPressed"]
       38 NEWCLOSURE                       R1 P7
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K13 ["onKeyReleased"]
       42 NEWCLOSURE                       R1 P8
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U1
       45 SETTABLEKS                       R1 R0 K14 ["onRightClick"]
       47 NEWCLOSURE                       R1 P9
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R1 R0 K15 ["getRowProps"]
       51 DUPCLOSURE                       R1 K16 [PROTO_10]
       52 SETTABLEKS                       R1 R0 K17 ["comparator"]
       54 GETUPVAL                         R2 2
       55 GETTABLEKS                       R1 R2 K18 ["new"]
       57 CALL                             R1 0 1
       58 SETTABLEKS                       R1 R0 K19 ["treeManager"]
       60 GETTABLEKS                       R1 R0 K19 ["treeManager"]
       62 NEWCLOSURE                       R3 P11
       63 CAPTURE                          VAL R0
       64 NAMECALL                         R1 R1 K20 ["connectToExpandedChanged"]
       66 CALL                             R1 2 0
       67 GETTABLEKS                       R1 R0 K19 ["treeManager"]
       69 NEWCLOSURE                       R3 P12
       70 CAPTURE                          VAL R0
       71 NAMECALL                         R1 R1 K21 ["connectToSelectedChanged"]
       73 CALL                             R1 2 0
       74 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["ref"]
        2 NAMECALL                         R1 R1 K1 ["getValue"]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R3 R1 K2 ["TreeView"]
        7 GETTABLEKS                       R2 R3 K3 ["List"]
        9 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["preserveCanvasPosition"]
        3 JUMPIF                           R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["CanvasPosition"]
        8 SETTABLEKS                       R1 R0 K2 ["canvasPosition"]
       10 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["previousCanvasSize"]
        6 JUMPIFNOT                        R0 ; [+20]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K0 ["previousCanvasSize"]
       10 GETTABLEKS                       R1 R2 K1 ["Y"]
       12 GETTABLEKS                       R0 R1 K2 ["Offset"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K3 ["CanvasSize"]
       17 GETTABLEKS                       R2 R3 K1 ["Y"]
       19 GETTABLEKS                       R1 R2 K2 ["Offset"]
       21 JUMPIFNOTLT                      R1 R0 ; [+5]
       23 GETUPVAL                         R0 1
       24 LOADB                            R1 1
       25 SETTABLEKS                       R1 R0 K4 ["preserveCanvasPosition"]
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R0 R1 K4 ["preserveCanvasPosition"]
       30 JUMPIFNOT                        R0 ; [+28]
       31 GETUPVAL                         R1 1
       32 GETTABLEKS                       R0 R1 K5 ["canvasPosition"]
       34 JUMPIFNOT                        R0 ; [+24]
       35 GETUPVAL                         R2 1
       36 GETTABLEKS                       R1 R2 K5 ["canvasPosition"]
       38 GETTABLEKS                       R0 R1 K1 ["Y"]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R3 R4 K3 ["CanvasSize"]
       43 GETTABLEKS                       R2 R3 K1 ["Y"]
       45 GETTABLEKS                       R1 R2 K2 ["Offset"]
       47 JUMPIFNOTLE                      R0 R1 ; [+11]
       49 GETUPVAL                         R0 0
       50 GETUPVAL                         R2 1
       51 GETTABLEKS                       R1 R2 K5 ["canvasPosition"]
       53 SETTABLEKS                       R1 R0 K6 ["CanvasPosition"]
       55 GETUPVAL                         R0 1
       56 LOADB                            R1 0
       57 SETTABLEKS                       R1 R0 K4 ["preserveCanvasPosition"]
       59 GETUPVAL                         R0 1
       60 GETUPVAL                         R2 0
       61 GETTABLEKS                       R1 R2 K3 ["CanvasSize"]
       63 SETTABLEKS                       R1 R0 K0 ["previousCanvasSize"]
       65 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["filter"]
        4 GETTABLEKS                       R3 R1 K2 ["diagnostics"]
        6 GETTABLEKS                       R4 R1 K3 ["revertedScripts"]
        8 GETTABLEKS                       R5 R1 K4 ["initialIssueCounts"]
       10 GETTABLEKS                       R6 R1 K5 ["completedScripts"]
       12 GETTABLEKS                       R7 R1 K6 ["Localization"]
       14 GETTABLEKS                       R8 R1 K7 ["ScriptConversionContext"]
       16 NAMECALL                         R9 R0 K8 ["getScroller"]
       18 CALL                             R9 1 1
       19 LOADK                            R12 K9 ["CanvasPosition"]
       20 NAMECALL                         R10 R9 K10 ["GetPropertyChangedSignal"]
       22 CALL                             R10 2 1
       23 NEWCLOSURE                       R12 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R9
       26 NAMECALL                         R10 R10 K11 ["Connect"]
       28 CALL                             R10 2 1
       29 SETTABLEKS                       R10 R0 K12 ["onCanvasPositionChanged"]
       31 LOADK                            R12 K13 ["CanvasSize"]
       32 NAMECALL                         R10 R9 K10 ["GetPropertyChangedSignal"]
       34 CALL                             R10 2 1
       35 NEWCLOSURE                       R12 P1
       36 CAPTURE                          VAL R9
       37 CAPTURE                          VAL R0
       38 NAMECALL                         R10 R10 K11 ["Connect"]
       40 CALL                             R10 2 1
       41 SETTABLEKS                       R10 R0 K14 ["onCanvasSizeChanged"]
       43 GETTABLEKS                       R10 R0 K15 ["treeManager"]
       45 DUPTABLE                         R12 K16 [{"diagnostics", "completedScripts", "initialIssueCounts", "revertedScripts", "filter", "Localization", "ScriptConversionContext"}]
       46 SETTABLEKS                       R3 R12 K2 ["diagnostics"]
       48 SETTABLEKS                       R6 R12 K5 ["completedScripts"]
       50 SETTABLEKS                       R5 R12 K4 ["initialIssueCounts"]
       52 SETTABLEKS                       R4 R12 K3 ["revertedScripts"]
       54 LOADK                            R16 K17 ["ScriptConversion"]
       55 LOADK                            R17 K18 ["FilterNone"]
       56 NAMECALL                         R14 R7 K19 ["getText"]
       58 CALL                             R14 3 1
       59 JUMPIFEQ                         R2 R14 ; [+3]
       61 MOVE                             R13 R2
       62 JUMP                             ; [+1]
       63 LOADNIL                          R13
       64 SETTABLEKS                       R13 R12 K1 ["filter"]
       66 SETTABLEKS                       R7 R12 K6 ["Localization"]
       68 SETTABLEKS                       R8 R12 K7 ["ScriptConversionContext"]
       70 NAMECALL                         R10 R10 K20 ["buildTreeItems"]
       72 CALL                             R10 2 0
       73 GETTABLEKS                       R11 R0 K0 ["props"]
       75 GETTABLEKS                       R10 R11 K21 ["SetScriptExpansion"]
       77 GETTABLEKS                       R11 R0 K15 ["treeManager"]
       79 NAMECALL                         R11 R11 K22 ["getExpansionTable"]
       81 CALL                             R11 1 -1
       82 CALL                             R10 -1 0
       83 GETTABLEKS                       R11 R0 K0 ["props"]
       85 GETTABLEKS                       R10 R11 K23 ["SetScriptSelection"]
       87 GETTABLEKS                       R11 R0 K15 ["treeManager"]
       89 NAMECALL                         R11 R11 K24 ["getSelectionList"]
       91 CALL                             R11 1 -1
       92 CALL                             R10 -1 0
       93 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["selection"]
        4 GETTABLEKS                       R3 R1 K2 ["expansion"]
        6 GETTABLEKS                       R4 R1 K3 ["Size"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["Stylizer"]
       12 GETTABLEKS                       R7 R6 K6 ["SelectAllRow"]
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R8 R9 K7 ["createElement"]
       17 GETUPVAL                         R9 1
       18 DUPTABLE                         R10 K10 [{"Size", "ForwardRef", "LayoutOrder", "Layout"}]
       19 SETTABLEKS                       R4 R10 K3 ["Size"]
       21 GETTABLEKS                       R11 R0 K11 ["ref"]
       23 SETTABLEKS                       R11 R10 K8 ["ForwardRef"]
       25 SETTABLEKS                       R5 R10 K4 ["LayoutOrder"]
       27 GETIMPORT                        R11 K15 [Enum.FillDirection.Vertical]
       29 SETTABLEKS                       R11 R10 K9 ["Layout"]
       31 DUPTABLE                         R11 K18 [{"SelectAllRow", "TreeView", "KeyboardListener"}]
       32 GETUPVAL                         R13 0
       33 GETTABLEKS                       R12 R13 K7 ["createElement"]
       35 GETUPVAL                         R13 2
       36 DUPTABLE                         R14 K24 [{"IsChecked", "OnCheckboxClick", "RowHeight", "Padding", "OnResetPlugin"}]
       37 NAMECALL                         R15 R0 K25 ["areAllSelected"]
       39 CALL                             R15 1 1
       40 SETTABLEKS                       R15 R14 K19 ["IsChecked"]
       42 GETTABLEKS                       R15 R0 K26 ["onAllSelectedChecked"]
       44 SETTABLEKS                       R15 R14 K20 ["OnCheckboxClick"]
       46 GETTABLEKS                       R15 R7 K21 ["RowHeight"]
       48 SETTABLEKS                       R15 R14 K21 ["RowHeight"]
       50 GETTABLEKS                       R15 R7 K22 ["Padding"]
       52 SETTABLEKS                       R15 R14 K22 ["Padding"]
       54 GETTABLEKS                       R15 R1 K23 ["OnResetPlugin"]
       56 SETTABLEKS                       R15 R14 K23 ["OnResetPlugin"]
       58 CALL                             R12 2 1
       59 SETTABLEKS                       R12 R11 K6 ["SelectAllRow"]
       61 GETUPVAL                         R13 0
       62 GETTABLEKS                       R12 R13 K7 ["createElement"]
       64 GETUPVAL                         R13 3
       65 DUPTABLE                         R14 K34 [{"Size", "Expansion", "Selection", "RootItems", "ScrollingDirection", "RowComponent", "RowHeight", "GetRowProps", "SortChildren"}]
       66 GETIMPORT                        R15 K37 [UDim2.new]
       68 LOADN                            R16 1
       69 LOADN                            R17 0
       70 LOADN                            R18 1
       71 GETTABLEKS                       R20 R7 K21 ["RowHeight"]
       73 MINUS                            R19 R20
       74 CALL                             R15 4 1
       75 SETTABLEKS                       R15 R14 K3 ["Size"]
       77 SETTABLEKS                       R3 R14 K27 ["Expansion"]
       79 SETTABLEKS                       R2 R14 K28 ["Selection"]
       81 GETTABLEKS                       R15 R0 K38 ["treeManager"]
       83 NAMECALL                         R15 R15 K39 ["getItems"]
       85 CALL                             R15 1 1
       86 JUMPIF                           R15 ; [+2]
       87 NEWTABLE                         R15 0 0
       89 SETTABLEKS                       R15 R14 K29 ["RootItems"]
       91 GETIMPORT                        R15 K41 [Enum.ScrollingDirection.Y]
       93 SETTABLEKS                       R15 R14 K30 ["ScrollingDirection"]
       95 GETUPVAL                         R15 4
       96 SETTABLEKS                       R15 R14 K31 ["RowComponent"]
       98 GETTABLEKS                       R15 R6 K21 ["RowHeight"]
      100 SETTABLEKS                       R15 R14 K21 ["RowHeight"]
      102 GETTABLEKS                       R15 R0 K42 ["getRowProps"]
      104 SETTABLEKS                       R15 R14 K32 ["GetRowProps"]
      106 GETTABLEKS                       R15 R0 K43 ["comparator"]
      108 SETTABLEKS                       R15 R14 K33 ["SortChildren"]
      110 CALL                             R12 2 1
      111 SETTABLEKS                       R12 R11 K16 ["TreeView"]
      113 GETUPVAL                         R13 0
      114 GETTABLEKS                       R12 R13 K7 ["createElement"]
      116 GETUPVAL                         R13 5
      117 DUPTABLE                         R14 K46 [{"OnKeyPressed", "OnKeyReleased"}]
      118 GETTABLEKS                       R15 R0 K47 ["onKeyPressed"]
      120 SETTABLEKS                       R15 R14 K44 ["OnKeyPressed"]
      122 GETTABLEKS                       R15 R0 K48 ["onKeyReleased"]
      124 SETTABLEKS                       R15 R14 K45 ["OnKeyReleased"]
      126 CALL                             R12 2 1
      127 SETTABLEKS                       R12 R11 K17 ["KeyboardListener"]
      129 CALL                             R8 3 -1
      130 RETURN                           R8 -1

PROTO_19:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R3 K1 ["Localization"]
        4 JUMPIFNOT                        R4 ; [+55]
        5 GETTABLEKS                       R5 R3 K2 ["diagnostics"]
        7 GETTABLEKS                       R6 R1 K2 ["diagnostics"]
        9 JUMPIFNOTEQ                      R5 R6 ; [+7]
       11 GETTABLEKS                       R5 R3 K3 ["filter"]
       13 GETTABLEKS                       R6 R1 K3 ["filter"]
       15 JUMPIFEQ                         R5 R6 ; [+44]
       17 GETTABLEKS                       R5 R0 K4 ["treeManager"]
       19 DUPTABLE                         R7 K9 [{"diagnostics", "completedScripts", "initialIssueCounts", "revertedScripts", "filter", "Localization", "ScriptConversionContext"}]
       20 GETTABLEKS                       R8 R1 K2 ["diagnostics"]
       22 SETTABLEKS                       R8 R7 K2 ["diagnostics"]
       24 GETTABLEKS                       R8 R1 K5 ["completedScripts"]
       26 SETTABLEKS                       R8 R7 K5 ["completedScripts"]
       28 GETTABLEKS                       R8 R1 K6 ["initialIssueCounts"]
       30 SETTABLEKS                       R8 R7 K6 ["initialIssueCounts"]
       32 GETTABLEKS                       R8 R1 K7 ["revertedScripts"]
       34 SETTABLEKS                       R8 R7 K7 ["revertedScripts"]
       36 GETTABLEKS                       R9 R1 K3 ["filter"]
       38 LOADK                            R12 K10 ["ScriptConversion"]
       39 LOADK                            R13 K11 ["FilterNone"]
       40 NAMECALL                         R10 R4 K12 ["getText"]
       42 CALL                             R10 3 1
       43 JUMPIFEQ                         R9 R10 ; [+4]
       45 GETTABLEKS                       R8 R1 K3 ["filter"]
       47 JUMP                             ; [+1]
       48 LOADNIL                          R8
       49 SETTABLEKS                       R8 R7 K3 ["filter"]
       51 SETTABLEKS                       R4 R7 K1 ["Localization"]
       53 GETTABLEKS                       R8 R3 K8 ["ScriptConversionContext"]
       55 SETTABLEKS                       R8 R7 K8 ["ScriptConversionContext"]
       57 NAMECALL                         R5 R5 K13 ["buildTreeItems"]
       59 CALL                             R5 2 0
       60 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R4 K1 ["diagnostics"]
        4 GETTABLEKS                       R4 R1 K1 ["diagnostics"]
        6 JUMPIFNOTEQ                      R3 R4 ; [+9]
        8 GETTABLEKS                       R4 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R4 K2 ["filter"]
       12 GETTABLEKS                       R4 R1 K2 ["filter"]
       14 JUMPIFEQ                         R3 R4 ; [+21]
       16 GETTABLEKS                       R4 R0 K0 ["props"]
       18 GETTABLEKS                       R3 R4 K3 ["SetScriptExpansion"]
       20 GETTABLEKS                       R4 R0 K4 ["treeManager"]
       22 NAMECALL                         R4 R4 K5 ["getExpansionTable"]
       24 CALL                             R4 1 -1
       25 CALL                             R3 -1 0
       26 GETTABLEKS                       R4 R0 K0 ["props"]
       28 GETTABLEKS                       R3 R4 K6 ["SetScriptSelection"]
       30 GETTABLEKS                       R4 R0 K4 ["treeManager"]
       32 NAMECALL                         R4 R4 K7 ["getSelectionList"]
       34 CALL                             R4 1 -1
       35 CALL                             R3 -1 0
       36 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["treeManager"]
        2 NAMECALL                         R1 R1 K1 ["terminate"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["onCanvasSizeChanged"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETTABLEKS                       R1 R0 K2 ["onCanvasSizeChanged"]
       10 NAMECALL                         R1 R1 K3 ["Disconnect"]
       12 CALL                             R1 1 0
       13 GETTABLEKS                       R1 R0 K4 ["onCanvasPositionChanged"]
       15 JUMPIFNOT                        R1 ; [+5]
       16 GETTABLEKS                       R1 R0 K4 ["onCanvasPositionChanged"]
       18 NAMECALL                         R1 R1 K3 ["Disconnect"]
       20 CALL                             R1 1 0
       21 LOADB                            R1 0
       22 SETTABLEKS                       R1 R0 K5 ["preserveCanvasPosition"]
       24 RETURN                           R0 0

PROTO_22:
        0 DUPTABLE                         R2 K8 [{"expansion", "selection", "diagnostics", "completedScripts", "initialIssueCounts", "revertedScripts", "filter", "replaceRules"}]
        1 GETTABLEKS                       R4 R0 K9 ["ScriptConversion"]
        3 GETTABLEKS                       R3 R4 K0 ["expansion"]
        5 SETTABLEKS                       R3 R2 K0 ["expansion"]
        7 GETTABLEKS                       R4 R0 K9 ["ScriptConversion"]
        9 GETTABLEKS                       R3 R4 K1 ["selection"]
       11 SETTABLEKS                       R3 R2 K1 ["selection"]
       13 GETTABLEKS                       R4 R0 K9 ["ScriptConversion"]
       15 GETTABLEKS                       R3 R4 K2 ["diagnostics"]
       17 SETTABLEKS                       R3 R2 K2 ["diagnostics"]
       19 GETTABLEKS                       R4 R0 K9 ["ScriptConversion"]
       21 GETTABLEKS                       R3 R4 K3 ["completedScripts"]
       23 SETTABLEKS                       R3 R2 K3 ["completedScripts"]
       25 GETTABLEKS                       R4 R0 K9 ["ScriptConversion"]
       27 GETTABLEKS                       R3 R4 K4 ["initialIssueCounts"]
       29 SETTABLEKS                       R3 R2 K4 ["initialIssueCounts"]
       31 GETTABLEKS                       R4 R0 K9 ["ScriptConversion"]
       33 GETTABLEKS                       R3 R4 K5 ["revertedScripts"]
       35 SETTABLEKS                       R3 R2 K5 ["revertedScripts"]
       37 GETTABLEKS                       R4 R0 K9 ["ScriptConversion"]
       39 GETTABLEKS                       R3 R4 K6 ["filter"]
       41 SETTABLEKS                       R3 R2 K6 ["filter"]
       43 GETTABLEKS                       R4 R0 K9 ["ScriptConversion"]
       45 GETTABLEKS                       R3 R4 K7 ["replaceRules"]
       47 SETTABLEKS                       R3 R2 K7 ["replaceRules"]
       49 RETURN                           R2 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 LOADB                            R7 0
        5 MOVE                             R8 R2
        6 CALL                             R4 4 -1
        7 CALL                             R3 -1 0
        8 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R7 0
        1 GETUPVAL                         R8 1
        2 MOVE                             R9 R0
        3 MOVE                             R10 R1
        4 MOVE                             R11 R2
        5 MOVE                             R12 R3
        6 MOVE                             R13 R4
        7 MOVE                             R14 R5
        8 LOADB                            R15 1
        9 MOVE                             R16 R6
       10 CALL                             R8 8 -1
       11 CALL                             R7 -1 0
       12 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_32:
        0 DUPTABLE                         R1 K9 [{"OnScriptsReverted", "SetReplaceProgress", "SetProgressBarMessageKey", "SetScriptExpansion", "SetScriptSelection", "ReplaceWithRules", "ReplaceWithSuggestion", "RevertScripts", "UndoRevert"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["OnScriptsReverted"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetReplaceProgress"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetProgressBarMessageKey"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["SetScriptExpansion"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["SetScriptSelection"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R2 R1 K5 ["ReplaceWithRules"]
       31 NEWCLOSURE                       R2 P6
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U6
       34 SETTABLEKS                       R2 R1 K6 ["ReplaceWithSuggestion"]
       36 NEWCLOSURE                       R2 P7
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U7
       39 SETTABLEKS                       R2 R1 K7 ["RevertScripts"]
       41 NEWCLOSURE                       R2 P8
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U8
       44 SETTABLEKS                       R2 R1 K8 ["UndoRevert"]
       46 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R8 R0 K11 ["Src"]
       34 GETTABLEKS                       R7 R8 K12 ["Actions"]
       36 GETTABLEKS                       R6 R7 K13 ["SetReplaceProgress"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R9 R0 K11 ["Src"]
       43 GETTABLEKS                       R8 R9 K12 ["Actions"]
       45 GETTABLEKS                       R7 R8 K14 ["SetScriptSelection"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R10 R0 K11 ["Src"]
       52 GETTABLEKS                       R9 R10 K12 ["Actions"]
       54 GETTABLEKS                       R8 R9 K15 ["SetScriptExpansion"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R11 R0 K11 ["Src"]
       61 GETTABLEKS                       R10 R11 K12 ["Actions"]
       63 GETTABLEKS                       R9 R10 K16 ["SetProgressBarMessageKey"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETTABLEKS                       R12 R0 K11 ["Src"]
       70 GETTABLEKS                       R11 R12 K17 ["Thunks"]
       72 GETTABLEKS                       R10 R11 K18 ["OnScriptsReverted"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K5 [require]
       77 GETTABLEKS                       R13 R0 K11 ["Src"]
       79 GETTABLEKS                       R12 R13 K17 ["Thunks"]
       81 GETTABLEKS                       R11 R12 K19 ["ReplaceWithRules"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K5 [require]
       86 GETTABLEKS                       R14 R0 K11 ["Src"]
       88 GETTABLEKS                       R13 R14 K17 ["Thunks"]
       90 GETTABLEKS                       R12 R13 K20 ["ReplaceWithSuggestion"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K5 [require]
       95 GETTABLEKS                       R15 R0 K11 ["Src"]
       97 GETTABLEKS                       R14 R15 K17 ["Thunks"]
       99 GETTABLEKS                       R13 R14 K21 ["RevertScripts"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K5 [require]
      104 GETTABLEKS                       R16 R0 K11 ["Src"]
      106 GETTABLEKS                       R15 R16 K17 ["Thunks"]
      108 GETTABLEKS                       R14 R15 K22 ["UndoRevert"]
      110 CALL                             R13 1 1
      111 GETTABLEKS                       R15 R0 K11 ["Src"]
      113 GETTABLEKS                       R14 R15 K23 ["Components"]
      115 GETIMPORT                        R15 K5 [require]
      117 GETTABLEKS                       R16 R14 K24 ["ScriptIssueRow"]
      119 CALL                             R15 1 1
      120 GETIMPORT                        R16 K5 [require]
      122 GETTABLEKS                       R17 R14 K25 ["ScriptConversionRightClickMenu"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R18 R14 K26 ["SelectAllRow"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R21 R0 K11 ["Src"]
      134 GETTABLEKS                       R20 R21 K27 ["Contexts"]
      136 GETTABLEKS                       R19 R20 K28 ["ScriptConversionContext"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R22 R0 K11 ["Src"]
      143 GETTABLEKS                       R21 R22 K29 ["Util"]
      145 GETTABLEKS                       R20 R21 K30 ["ScriptTreeManager"]
      147 CALL                             R19 1 1
      148 GETIMPORT                        R20 K5 [require]
      150 GETTABLEKS                       R24 R0 K11 ["Src"]
      152 GETTABLEKS                       R23 R24 K29 ["Util"]
      154 GETTABLEKS                       R22 R23 K31 ["ScriptAnalysis"]
      156 GETTABLEKS                       R21 R22 K32 ["Constants"]
      158 CALL                             R20 1 1
      159 GETTABLEKS                       R21 R3 K33 ["UI"]
      161 GETTABLEKS                       R22 R21 K34 ["Pane"]
      163 GETTABLEKS                       R23 R21 K35 ["TreeView"]
      165 GETTABLEKS                       R24 R21 K36 ["KeyboardListener"]
      167 GETTABLEKS                       R25 R1 K37 ["PureComponent"]
      169 LOADK                            R27 K38 ["ScriptIssueTreeView"]
      170 NAMECALL                         R25 R25 K39 ["extend"]
      172 CALL                             R25 2 1
      173 DUPCLOSURE                       R26 K40 [PROTO_13]
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R16
      176 CAPTURE                          VAL R19
      177 SETTABLEKS                       R26 R25 K41 ["init"]
      179 DUPCLOSURE                       R26 K42 [PROTO_14]
      180 SETTABLEKS                       R26 R25 K43 ["getScroller"]
      182 DUPCLOSURE                       R26 K44 [PROTO_17]
      183 SETTABLEKS                       R26 R25 K45 ["didMount"]
      185 DUPCLOSURE                       R26 K46 [PROTO_18]
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R22
      188 CAPTURE                          VAL R17
      189 CAPTURE                          VAL R23
      190 CAPTURE                          VAL R15
      191 CAPTURE                          VAL R24
      192 SETTABLEKS                       R26 R25 K47 ["render"]
      194 DUPCLOSURE                       R26 K48 [PROTO_19]
      195 SETTABLEKS                       R26 R25 K49 ["willUpdate"]
      197 DUPCLOSURE                       R26 K50 [PROTO_20]
      198 SETTABLEKS                       R26 R25 K51 ["didUpdate"]
      200 DUPCLOSURE                       R26 K52 [PROTO_21]
      201 SETTABLEKS                       R26 R25 K53 ["willUnmount"]
      203 GETTABLEKS                       R26 R4 K54 ["withContext"]
      205 DUPTABLE                         R27 K59 [{"Analytics", "Plugin", "Localization", "Stylizer", "ScriptConversionContext"}]
      206 GETTABLEKS                       R28 R4 K55 ["Analytics"]
      208 SETTABLEKS                       R28 R27 K55 ["Analytics"]
      210 GETTABLEKS                       R28 R4 K56 ["Plugin"]
      212 SETTABLEKS                       R28 R27 K56 ["Plugin"]
      214 GETTABLEKS                       R28 R4 K57 ["Localization"]
      216 SETTABLEKS                       R28 R27 K57 ["Localization"]
      218 GETTABLEKS                       R28 R4 K58 ["Stylizer"]
      220 SETTABLEKS                       R28 R27 K58 ["Stylizer"]
      222 SETTABLEKS                       R18 R27 K28 ["ScriptConversionContext"]
      224 CALL                             R26 1 1
      225 MOVE                             R27 R25
      226 CALL                             R26 1 1
      227 MOVE                             R25 R26
      228 DUPCLOSURE                       R26 K60 [PROTO_22]
      229 DUPCLOSURE                       R27 K61 [PROTO_32]
      230 CAPTURE                          VAL R9
      231 CAPTURE                          VAL R5
      232 CAPTURE                          VAL R8
      233 CAPTURE                          VAL R7
      234 CAPTURE                          VAL R6
      235 CAPTURE                          VAL R10
      236 CAPTURE                          VAL R11
      237 CAPTURE                          VAL R12
      238 CAPTURE                          VAL R13
      239 GETTABLEKS                       R28 R2 K62 ["connect"]
      241 MOVE                             R29 R26
      242 MOVE                             R30 R27
      243 CALL                             R28 2 1
      244 MOVE                             R29 R25
      245 CALL                             R28 1 -1
      246 RETURN                           R28 -1
