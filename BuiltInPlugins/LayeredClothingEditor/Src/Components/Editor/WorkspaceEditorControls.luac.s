PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["EditingCage"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["EDIT_MODE"]
        8 GETTABLEKS                       R2 R2 K3 ["Mesh"]
       10 JUMPIFNOTEQ                      R1 R2 ; [+2]
       12 LOADB                            R0 0 +1
       13 LOADB                            R0 1
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["ToolMode"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["TOOL_MODE"]
        8 GETTABLEKS                       R2 R2 K3 ["Point"]
       10 JUMPIFEQ                         R1 R2 ; [+2]
       12 LOADB                            R0 0 +1
       13 LOADB                            R0 1
       14 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["menuOptionFunctions"]
        3 GETTABLE                         R2 R3 R1
        4 CALL                             R2 0 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["updateCageLocationsFromInstance"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["EditingItemContext"]
        5 NAMECALL                         R1 R1 K2 ["getItem"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R0 K3 ["LuaMeshEditingModuleContext"]
       10 JUMPIFNOT                        R1 ; [+19]
       11 GETTABLEKS                       R3 R1 K4 ["Parent"]
       13 JUMPIFNOT                        R3 ; [+16]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R5 R1 K4 ["Parent"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R1
       20 NAMECALL                         R3 R3 K5 ["bringAvatarToView"]
       22 CALL                             R3 3 0
       23 GETTABLEKS                       R3 R0 K6 ["Analytics"]
       25 LOADK                            R5 K7 ["CenterAvatarToCamera"]
       26 NAMECALL                         R3 R3 K8 ["getHandler"]
       28 CALL                             R3 2 1
       29 CALL                             R3 0 0
       30 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["LuaMeshEditingModuleContext"]
        5 JUMPIFNOT                        R0 ; [+3]
        6 NAMECALL                         R1 R0 K2 ["resetTools"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Localization"]
        5 GETTABLEKS                       R2 R0 K2 ["EditingCage"]
        7 GETTABLEKS                       R3 R0 K3 ["ToolMode"]
        9 NEWTABLE                         R4 0 0
       11 MOVE                             R6 R4
       12 LOADK                            R9 K4 ["Editor"]
       13 LOADK                            R10 K5 ["BringMannequinToView"]
       14 NAMECALL                         R7 R1 K6 ["getText"]
       16 CALL                             R7 3 -1
       17 FASTCALL                         TABLE_INSERT ; [+2]
       18 GETIMPORT                        R5 K9 [table.insert]
       20 CALL                             R5 -1 0
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K10 ["TOOL_MODE"]
       24 GETTABLEKS                       R5 R5 K11 ["Point"]
       26 JUMPIFNOTEQ                      R3 R5 ; [+30]
       28 GETIMPORT                        R5 K15 [Enum.CageType.Outer]
       30 JUMPIFNOTEQ                      R2 R5 ; [+12]
       32 MOVE                             R6 R4
       33 LOADK                            R9 K16 ["Reset"]
       34 LOADK                            R10 K17 ["OuterCage"]
       35 NAMECALL                         R7 R1 K6 ["getText"]
       37 CALL                             R7 3 -1
       38 FASTCALL                         TABLE_INSERT ; [+2]
       39 GETIMPORT                        R5 K9 [table.insert]
       41 CALL                             R5 -1 0
       42 RETURN                           R4 1
       43 GETIMPORT                        R5 K19 [Enum.CageType.Inner]
       45 JUMPIFNOTEQ                      R2 R5 ; [+11]
       47 MOVE                             R6 R4
       48 LOADK                            R9 K16 ["Reset"]
       49 LOADK                            R10 K20 ["InnerCage"]
       50 NAMECALL                         R7 R1 K6 ["getText"]
       52 CALL                             R7 3 -1
       53 FASTCALL                         TABLE_INSERT ; [+2]
       54 GETIMPORT                        R5 K9 [table.insert]
       56 CALL                             R5 -1 0
       57 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        5 GETTABLEKS                       R2 R2 K2 ["VisibilityControlsOffset"]
        7 GETTABLEKS                       R3 R0 K3 ["Container"]
        9 LOADK                            R5 K4 ["CageControls"]
       10 NAMECALL                         R3 R3 K5 ["FindFirstChild"]
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R4 R0 K3 ["Container"]
       15 LOADK                            R6 K6 ["VisibilityControls"]
       16 NAMECALL                         R4 R4 K5 ["FindFirstChild"]
       18 CALL                             R4 2 1
       19 LOADN                            R5 0
       20 LOADN                            R6 0
       21 JUMPIFNOT                        R3 ; [+20]
       22 GETUPVAL                         R7 0
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R9 R9 K7 ["maxCageControlsWidth"]
       26 GETTABLEKS                       R10 R3 K8 ["AbsoluteSize"]
       28 GETTABLEKS                       R10 R10 K9 ["X"]
       30 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       32 GETIMPORT                        R8 K12 [math.max]
       34 CALL                             R8 2 1
       35 SETTABLEKS                       R8 R7 K7 ["maxCageControlsWidth"]
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K7 ["maxCageControlsWidth"]
       40 ADD                              R5 R5 R7
       41 MOVE                             R6 R5
       42 JUMPIFNOT                        R4 ; [+19]
       43 GETUPVAL                         R7 0
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R9 R9 K13 ["maxVisibilityControlsWidth"]
       47 GETTABLEKS                       R10 R4 K8 ["AbsoluteSize"]
       49 GETTABLEKS                       R10 R10 K9 ["X"]
       51 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       53 GETIMPORT                        R8 K12 [math.max]
       55 CALL                             R8 2 1
       56 SETTABLEKS                       R8 R7 K13 ["maxVisibilityControlsWidth"]
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R7 R7 K13 ["maxVisibilityControlsWidth"]
       61 ADD                              R5 R5 R7
       62 GETUPVAL                         R7 0
       63 DUPTABLE                         R9 K16 [{"shouldStack", "narrowLayout"}]
       64 GETTABLEKS                       R11 R0 K8 ["AbsoluteSize"]
       66 GETTABLEKS                       R11 R11 K9 ["X"]
       68 ADD                              R12 R5 R2
       69 JUMPIFLE                         R11 R12 ; [+2]
       71 LOADB                            R10 0 +1
       72 LOADB                            R10 1
       73 SETTABLEKS                       R10 R9 K14 ["shouldStack"]
       75 GETTABLEKS                       R11 R0 K8 ["AbsoluteSize"]
       77 GETTABLEKS                       R11 R11 K9 ["X"]
       79 ADD                              R12 R6 R2
       80 JUMPIFLE                         R11 R12 ; [+2]
       82 LOADB                            R10 0 +1
       83 LOADB                            R10 1
       84 SETTABLEKS                       R10 R9 K15 ["narrowLayout"]
       86 NAMECALL                         R7 R7 K17 ["setState"]
       88 CALL                             R7 2 0
       89 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"narrowLayout", "shouldStack"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["narrowLayout"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["shouldStack"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K4 ["createRef"]
       12 CALL                             R1 0 1
       13 SETTABLEKS                       R1 R0 K5 ["controlsRef"]
       15 GETIMPORT                        R1 K8 [Instance.new]
       17 LOADK                            R2 K9 ["ScreenGui"]
       18 CALL                             R1 1 1
       19 SETTABLEKS                       R1 R0 K9 ["ScreenGui"]
       21 GETTABLEKS                       R1 R0 K9 ["ScreenGui"]
       23 GETIMPORT                        R2 K11 [game]
       25 LOADK                            R4 K12 ["CoreGui"]
       26 NAMECALL                         R2 R2 K13 ["GetService"]
       28 CALL                             R2 2 1
       29 SETTABLEKS                       R2 R1 K14 ["Parent"]
       31 GETTABLEKS                       R1 R0 K9 ["ScreenGui"]
       33 LOADK                            R2 K15 ["WorkspaceEditorControls"]
       34 SETTABLEKS                       R2 R1 K16 ["Name"]
       36 GETTABLEKS                       R1 R0 K9 ["ScreenGui"]
       38 GETIMPORT                        R2 K20 [Enum.ZIndexBehavior.Sibling]
       40 SETTABLEKS                       R2 R1 K18 ["ZIndexBehavior"]
       42 LOADN                            R1 0
       43 SETTABLEKS                       R1 R0 K21 ["maxCageControlsWidth"]
       45 LOADN                            R1 0
       46 SETTABLEKS                       R1 R0 K22 ["maxVisibilityControlsWidth"]
       48 GETUPVAL                         R1 1
       49 GETTABLEKS                       R1 R1 K7 ["new"]
       51 GETTABLEKS                       R2 R0 K9 ["ScreenGui"]
       53 CALL                             R1 1 1
       54 SETTABLEKS                       R1 R0 K23 ["focus"]
       56 NEWCLOSURE                       R1 P0
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U2
       59 SETTABLEKS                       R1 R0 K24 ["shouldShowCageControls"]
       61 NEWCLOSURE                       R1 P1
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U2
       64 SETTABLEKS                       R1 R0 K25 ["isCageEditing"]
       66 NEWCLOSURE                       R1 P2
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R1 R0 K26 ["onMenuOptionClicked"]
       70 NEWCLOSURE                       R1 P3
       71 CAPTURE                          VAL R0
       72 CAPTURE                          UPVAL U3
       73 SETTABLEKS                       R1 R0 K27 ["bringMannequinToView"]
       75 NEWCLOSURE                       R1 P4
       76 CAPTURE                          VAL R0
       77 SETTABLEKS                       R1 R0 K28 ["resetPoints"]
       79 NEWTABLE                         R1 0 2
       81 GETTABLEKS                       R2 R0 K27 ["bringMannequinToView"]
       83 GETTABLEKS                       R3 R0 K28 ["resetPoints"]
       85 SETLIST                          R1 R2 2 [1]
       87 SETTABLEKS                       R1 R0 K29 ["menuOptionFunctions"]
       89 NEWCLOSURE                       R1 P5
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U2
       92 SETTABLEKS                       R1 R0 K30 ["getMenuOptions"]
       94 NEWCLOSURE                       R1 P6
       95 CAPTURE                          VAL R0
       96 SETTABLEKS                       R1 R0 K31 ["onScreenSizeChanged"]
       98 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["IsControlsPanelBlockerActive"]
        6 JUMPIFNOT                        R3 ; [+2]
        7 LOADNIL                          R4
        8 RETURN                           R4 1
        9 GETTABLEKS                       R4 R1 K3 ["EditingCage"]
       11 GETTABLEKS                       R5 R1 K4 ["ToolMode"]
       13 GETTABLEKS                       R6 R1 K5 ["Stylizer"]
       15 GETTABLEKS                       R7 R6 K6 ["VisibilityControlsOffset"]
       17 GETTABLEKS                       R8 R6 K7 ["PaneOffsetY"]
       19 GETTABLEKS                       R9 R0 K8 ["getMenuOptions"]
       21 CALL                             R9 0 1
       22 GETTABLEKS                       R10 R0 K9 ["shouldShowCageControls"]
       24 CALL                             R10 0 1
       25 GETTABLEKS                       R11 R0 K10 ["isCageEditing"]
       27 CALL                             R11 0 1
       28 GETTABLEKS                       R12 R2 K11 ["narrowLayout"]
       30 GETTABLEKS                       R13 R2 K12 ["shouldStack"]
       32 GETUPVAL                         R14 0
       33 GETTABLEKS                       R14 R14 K13 ["new"]
       35 CALL                             R14 0 1
       36 LOADNIL                          R15
       37 JUMPIFNOT                        R13 ; [+3]
       38 GETIMPORT                        R15 K17 [Enum.FillDirection.Vertical]
       40 JUMP                             ; [+4]
       41 JUMPIFNOT                        R10 ; [+1]
       42 JUMPIF                           R11 ; [+2]
       43 GETIMPORT                        R15 K19 [Enum.FillDirection.Horizontal]
       45 GETIMPORT                        R16 K21 [Vector2.new]
       47 LOADN                            R17 0
       48 LOADN                            R18 0
       49 CALL                             R16 2 1
       50 JUMPIFNOT                        R10 ; [+7]
       51 JUMPIFNOT                        R11 ; [+6]
       52 GETIMPORT                        R17 K21 [Vector2.new]
       54 LOADN                            R18 1
       55 LOADN                            R19 0
       56 CALL                             R17 2 1
       57 MOVE                             R16 R17
       58 GETUPVAL                         R17 1
       59 GETTABLEKS                       R17 R17 K22 ["provide"]
       61 NEWTABLE                         R18 0 1
       63 GETTABLEKS                       R19 R0 K23 ["focus"]
       65 SETLIST                          R18 R19 1 [1]
       67 DUPTABLE                         R19 K25 [{"Child"}]
       68 GETUPVAL                         R20 2
       69 GETTABLEKS                       R20 R20 K26 ["createElement"]
       71 GETUPVAL                         R21 2
       72 GETTABLEKS                       R21 R21 K27 ["Portal"]
       74 DUPTABLE                         R22 K29 [{"target"}]
       75 GETTABLEKS                       R23 R0 K30 ["ScreenGui"]
       77 SETTABLEKS                       R23 R22 K28 ["target"]
       79 DUPTABLE                         R23 K32 [{"AccessoryFittingToolControls"}]
       80 GETUPVAL                         R24 2
       81 GETTABLEKS                       R24 R24 K26 ["createElement"]
       83 LOADK                            R25 K33 ["Frame"]
       84 NEWTABLE                         R26 8 0
       86 LOADN                            R27 1
       87 SETTABLEKS                       R27 R26 K34 ["BackgroundTransparency"]
       89 GETIMPORT                        R27 K36 [UDim2.new]
       91 LOADN                            R28 0
       92 LOADN                            R29 0
       93 LOADN                            R30 0
       94 MOVE                             R31 R8
       95 CALL                             R27 4 1
       96 SETTABLEKS                       R27 R26 K37 ["Position"]
       98 GETIMPORT                        R27 K36 [UDim2.new]
      100 LOADN                            R28 1
      101 LOADN                            R29 0
      102 LOADN                            R30 1
      103 MINUS                            R31 R8
      104 CALL                             R27 4 1
      105 SETTABLEKS                       R27 R26 K38 ["Size"]
      107 GETUPVAL                         R27 2
      108 GETTABLEKS                       R27 R27 K39 ["Change"]
      110 GETTABLEKS                       R27 R27 K40 ["AbsoluteSize"]
      112 GETTABLEKS                       R28 R0 K41 ["onScreenSizeChanged"]
      114 SETTABLE                         R28 R26 R27
      115 GETUPVAL                         R27 2
      116 GETTABLEKS                       R27 R27 K42 ["Ref"]
      118 GETTABLEKS                       R28 R0 K43 ["controlsRef"]
      120 SETTABLE                         R28 R26 R27
      121 DUPTABLE                         R27 K45 [{"Container"}]
      122 GETUPVAL                         R28 2
      123 GETTABLEKS                       R28 R28 K26 ["createElement"]
      125 GETUPVAL                         R29 3
      126 DUPTABLE                         R30 K49 [{"Layout", "HorizontalAlignment", "VerticalAlignment"}]
      127 SETTABLEKS                       R15 R30 K46 ["Layout"]
      129 GETIMPORT                        R31 K51 [Enum.HorizontalAlignment.Left]
      131 SETTABLEKS                       R31 R30 K47 ["HorizontalAlignment"]
      133 GETIMPORT                        R31 K53 [Enum.VerticalAlignment.Top]
      135 SETTABLEKS                       R31 R30 K48 ["VerticalAlignment"]
      137 DUPTABLE                         R31 K56 [{"CageControls", "VisibilityControls"}]
      138 MOVE                             R32 R10
      139 JUMPIFNOT                        R32 ; [+26]
      140 GETUPVAL                         R32 2
      141 GETTABLEKS                       R32 R32 K26 ["createElement"]
      143 GETUPVAL                         R33 4
      144 DUPTABLE                         R34 K62 [{"EditingCage", "LayoutOrder", "ShowMinimal", "ToolMode", "MenuOptions", "OnMenuOptionClicked", "ShowOptionsButton"}]
      145 SETTABLEKS                       R4 R34 K3 ["EditingCage"]
      147 NAMECALL                         R35 R14 K63 ["getNextOrder"]
      149 CALL                             R35 1 1
      150 SETTABLEKS                       R35 R34 K57 ["LayoutOrder"]
      152 SETTABLEKS                       R12 R34 K58 ["ShowMinimal"]
      154 SETTABLEKS                       R5 R34 K4 ["ToolMode"]
      156 SETTABLEKS                       R9 R34 K59 ["MenuOptions"]
      158 GETTABLEKS                       R35 R0 K64 ["onMenuOptionClicked"]
      160 SETTABLEKS                       R35 R34 K60 ["OnMenuOptionClicked"]
      162 NOT                              R35 R13
      163 SETTABLEKS                       R35 R34 K61 ["ShowOptionsButton"]
      165 CALL                             R32 2 1
      166 SETTABLEKS                       R32 R31 K54 ["CageControls"]
      168 GETUPVAL                         R32 2
      169 GETTABLEKS                       R32 R32 K26 ["createElement"]
      171 GETUPVAL                         R33 5
      172 DUPTABLE                         R34 K67 [{"AnchorPoint", "LayoutOrder", "Offset", "ToolMode", "MenuOptions", "OnMenuOptionClicked", "ShowOptionsButton"}]
      173 SETTABLEKS                       R16 R34 K65 ["AnchorPoint"]
      175 NAMECALL                         R35 R14 K63 ["getNextOrder"]
      177 CALL                             R35 1 1
      178 SETTABLEKS                       R35 R34 K57 ["LayoutOrder"]
      180 SETTABLEKS                       R7 R34 K66 ["Offset"]
      182 SETTABLEKS                       R5 R34 K4 ["ToolMode"]
      184 SETTABLEKS                       R9 R34 K59 ["MenuOptions"]
      186 GETTABLEKS                       R35 R0 K64 ["onMenuOptionClicked"]
      188 SETTABLEKS                       R35 R34 K60 ["OnMenuOptionClicked"]
      190 MOVE                             R35 R13
      191 JUMPIF                           R35 ; [+1]
      192 NOT                              R35 R10
      193 SETTABLEKS                       R35 R34 K61 ["ShowOptionsButton"]
      195 CALL                             R32 2 1
      196 SETTABLEKS                       R32 R31 K55 ["VisibilityControls"]
      198 CALL                             R28 3 1
      199 SETTABLEKS                       R28 R27 K44 ["Container"]
      201 CALL                             R24 3 1
      202 SETTABLEKS                       R24 R23 K31 ["AccessoryFittingToolControls"]
      204 CALL                             R20 3 1
      205 SETTABLEKS                       R20 R19 K24 ["Child"]
      207 CALL                             R17 2 -1
      208 RETURN                           R17 -1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["ToolMode"]
        4 GETTABLEKS                       R3 R1 K1 ["ToolMode"]
        6 JUMPIFEQ                         R2 R3 ; [+14]
        8 LOADN                            R2 0
        9 SETTABLEKS                       R2 R0 K2 ["maxCageControlsWidth"]
       11 LOADN                            R2 0
       12 SETTABLEKS                       R2 R0 K3 ["maxVisibilityControlsWidth"]
       14 GETTABLEKS                       R2 R0 K4 ["onScreenSizeChanged"]
       16 GETTABLEKS                       R3 R0 K5 ["controlsRef"]
       18 GETTABLEKS                       R3 R3 K6 ["current"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["ScreenGui"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["ScreenGui"]
        5 NAMECALL                         R1 R1 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["controlsPanelBlocker"]
        2 GETTABLEKS                       R3 R0 K1 ["selectItem"]
        4 GETTABLEKS                       R4 R0 K2 ["status"]
        6 DUPTABLE                         R5 K6 [{"EditingCage", "IsControlsPanelBlockerActive", "ToolMode"}]
        7 GETTABLEKS                       R6 R3 K7 ["editingCage"]
        9 SETTABLEKS                       R6 R5 K3 ["EditingCage"]
       11 GETTABLEKS                       R6 R2 K8 ["isActive"]
       13 SETTABLEKS                       R6 R5 K4 ["IsControlsPanelBlockerActive"]
       15 GETTABLEKS                       R6 R4 K9 ["toolMode"]
       17 SETTABLEKS                       R6 R5 K5 ["ToolMode"]
       19 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["AvatarToolsShared"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K9 ["Contexts"]
       34 GETTABLEKS                       R4 R4 K10 ["LuaMeshEditingModuleContext"]
       36 GETTABLEKS                       R5 R3 K9 ["Contexts"]
       38 GETTABLEKS                       R5 R5 K11 ["EditingItemContext"]
       40 GETTABLEKS                       R6 R3 K12 ["Util"]
       42 GETTABLEKS                       R6 R6 K13 ["AccessoryAndBodyToolShared"]
       44 GETTABLEKS                       R6 R6 K14 ["AvatarUtil"]
       46 GETIMPORT                        R7 K4 [require]
       48 GETTABLEKS                       R8 R0 K5 ["Packages"]
       50 GETTABLEKS                       R8 R8 K15 ["Framework"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R8 R7 K16 ["ContextServices"]
       55 GETTABLEKS                       R9 R8 K17 ["withContext"]
       57 GETTABLEKS                       R10 R8 K18 ["Focus"]
       59 GETTABLEKS                       R11 R7 K19 ["UI"]
       61 GETTABLEKS                       R12 R11 K20 ["Pane"]
       63 GETTABLEKS                       R13 R7 K12 ["Util"]
       65 GETTABLEKS                       R14 R13 K21 ["LayoutOrderIterator"]
       67 GETIMPORT                        R15 K4 [require]
       69 GETTABLEKS                       R16 R0 K22 ["Src"]
       71 GETTABLEKS                       R16 R16 K23 ["Components"]
       73 GETTABLEKS                       R16 R16 K24 ["Editor"]
       75 GETTABLEKS                       R16 R16 K25 ["CageControls"]
       77 CALL                             R15 1 1
       78 GETIMPORT                        R16 K4 [require]
       80 GETTABLEKS                       R17 R0 K22 ["Src"]
       82 GETTABLEKS                       R17 R17 K23 ["Components"]
       84 GETTABLEKS                       R17 R17 K24 ["Editor"]
       86 GETTABLEKS                       R17 R17 K26 ["VisibilityControls"]
       88 CALL                             R16 1 1
       89 GETIMPORT                        R17 K4 [require]
       91 GETTABLEKS                       R18 R0 K22 ["Src"]
       93 GETTABLEKS                       R18 R18 K12 ["Util"]
       95 GETTABLEKS                       R18 R18 K27 ["Constants"]
       97 CALL                             R17 1 1
       98 GETTABLEKS                       R18 R1 K28 ["PureComponent"]
      100 LOADK                            R20 K29 ["WorkspaceEditorControls"]
      101 NAMECALL                         R18 R18 K30 ["extend"]
      103 CALL                             R18 2 1
      104 DUPCLOSURE                       R19 K31 [PROTO_8]
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R17
      108 CAPTURE                          VAL R6
      109 SETTABLEKS                       R19 R18 K32 ["init"]
      111 DUPCLOSURE                       R19 K33 [PROTO_9]
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R16
      118 SETTABLEKS                       R19 R18 K34 ["render"]
      120 DUPCLOSURE                       R19 K35 [PROTO_10]
      121 SETTABLEKS                       R19 R18 K36 ["didUpdate"]
      123 DUPCLOSURE                       R19 K37 [PROTO_11]
      124 SETTABLEKS                       R19 R18 K38 ["willUnmount"]
      126 MOVE                             R19 R9
      127 DUPTABLE                         R20 K42 [{"Analytics", "Localization", "EditingItemContext", "LuaMeshEditingModuleContext", "Stylizer"}]
      128 GETTABLEKS                       R21 R8 K39 ["Analytics"]
      130 SETTABLEKS                       R21 R20 K39 ["Analytics"]
      132 GETTABLEKS                       R21 R8 K40 ["Localization"]
      134 SETTABLEKS                       R21 R20 K40 ["Localization"]
      136 SETTABLEKS                       R5 R20 K11 ["EditingItemContext"]
      138 SETTABLEKS                       R4 R20 K10 ["LuaMeshEditingModuleContext"]
      140 GETTABLEKS                       R21 R8 K41 ["Stylizer"]
      142 SETTABLEKS                       R21 R20 K41 ["Stylizer"]
      144 CALL                             R19 1 1
      145 MOVE                             R20 R18
      146 CALL                             R19 1 1
      147 MOVE                             R18 R19
      148 DUPCLOSURE                       R19 K43 [PROTO_12]
      149 GETTABLEKS                       R20 R2 K44 ["connect"]
      151 MOVE                             R21 R19
      152 LOADNIL                          R22
      153 CALL                             R20 2 1
      154 MOVE                             R21 R18
      155 CALL                             R20 1 -1
      156 RETURN                           R20 -1
