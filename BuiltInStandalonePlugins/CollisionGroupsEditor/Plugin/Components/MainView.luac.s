PROTO_0:
        0 DUPTABLE                         R2 K2 [{"Key", "Gui"}]
        1 SETTABLEKS                       R0 R2 K0 ["Key"]
        3 SETTABLEKS                       R1 R2 K1 ["Gui"]
        5 RETURN                           R2 1

PROTO_1:
        0 LOADN                            R2 0
        1 GETTABLEKS                       R4 R0 K1 ["AbsoluteSize"]
        3 GETTABLEKS                       R4 R4 K2 ["X"]
        5 SUBK                             R3 R4 K0 [20]
        6 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
        8 GETIMPORT                        R1 K5 [math.max]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K6 ["state"]
       14 GETTABLEKS                       R2 R2 K7 ["availableWidth"]
       16 JUMPIFEQ                         R1 R2 ; [+8]
       18 GETUPVAL                         R2 0
       19 DUPTABLE                         R4 K8 [{"availableWidth"}]
       20 SETTABLEKS                       R1 R4 K7 ["availableWidth"]
       22 NAMECALL                         R2 R2 K9 ["setState"]
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["state"]
        7 GETTABLEKS                       R2 R2 K3 ["nameWidth"]
        9 JUMPIFEQ                         R1 R2 ; [+8]
       11 GETUPVAL                         R2 0
       12 DUPTABLE                         R4 K4 [{"nameWidth"}]
       13 SETTABLEKS                       R1 R4 K3 ["nameWidth"]
       15 NAMECALL                         R2 R2 K5 ["setState"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K3 [{[1] = 0, ["nameWidth"] = 0}]
        1 SETTABLEKS                       R1 R0 K4 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K5 ["onRootResized"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K6 ["onNameMeasured"]
       11 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Name"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Path"]
        8 GETTABLEKS                       R3 R0 K3 ["state"]
       10 GETTABLEKS                       R3 R3 K4 ["availableWidth"]
       12 GETTABLEKS                       R4 R0 K3 ["state"]
       14 GETTABLEKS                       R4 R4 K5 ["nameWidth"]
       16 LOADB                            R5 0
       17 LOADN                            R6 0
       18 JUMPIFNOTLT                      R6 R3 ; [+6]
       20 LOADN                            R6 0
       21 JUMPIFLT                         R6 R4 ; [+2]
       23 LOADB                            R5 0 +1
       24 LOADB                            R5 1
       25 LOADB                            R6 0
       26 JUMPIFEQKNIL                     R2 ; [+10]
       28 MOVE                             R6 R5
       29 JUMPIFNOT                        R6 ; [+7]
       30 SUB                              R8 R3 R4
       31 SUBK                             R7 R8 K6 [8]
       32 LOADN                            R8 40
       33 JUMPIFLE                         R8 R7 ; [+2]
       35 LOADB                            R6 0 +1
       36 LOADB                            R6 1
       37 DUPTABLE                         R7 K10 [{"Padding", "NameProbe", "WorldName"}]
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R8 R8 K11 ["createElement"]
       41 LOADK                            R9 K12 ["UIPadding"]
       42 DUPTABLE                         R10 K15 [{"PaddingLeft", "PaddingRight"}]
       43 GETIMPORT                        R11 K18 [UDim.new]
       45 LOADN                            R12 0
       46 LOADN                            R13 10
       47 CALL                             R11 2 1
       48 SETTABLEKS                       R11 R10 K13 ["PaddingLeft"]
       50 GETIMPORT                        R11 K18 [UDim.new]
       52 LOADN                            R12 0
       53 LOADN                            R13 10
       54 CALL                             R11 2 1
       55 SETTABLEKS                       R11 R10 K14 ["PaddingRight"]
       57 CALL                             R8 2 1
       58 SETTABLEKS                       R8 R7 K7 ["Padding"]
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R8 R8 K11 ["createElement"]
       63 LOADK                            R9 K19 ["Frame"]
       64 NEWTABLE                         R10 8 0
       66 GETIMPORT                        R11 K23 [Enum.AutomaticSize.X]
       68 SETTABLEKS                       R11 R10 K21 ["AutomaticSize"]
       70 LOADN                            R11 1
       71 SETTABLEKS                       R11 R10 K24 ["BackgroundTransparency"]
       73 GETIMPORT                        R11 K27 [UDim2.fromScale]
       75 LOADN                            R12 0
       76 LOADN                            R13 1
       77 CALL                             R11 2 1
       78 SETTABLEKS                       R11 R10 K28 ["Size"]
       80 LOADN                            R11 0
       81 SETTABLEKS                       R11 R10 K29 ["ZIndex"]
       83 GETUPVAL                         R11 0
       84 GETTABLEKS                       R11 R11 K30 ["Change"]
       86 GETTABLEKS                       R11 R11 K31 ["AbsoluteSize"]
       88 GETTABLEKS                       R12 R0 K32 ["onNameMeasured"]
       90 SETTABLE                         R12 R10 R11
       91 DUPTABLE                         R11 K34 [{"ProbeText"}]
       92 GETUPVAL                         R12 0
       93 GETTABLEKS                       R12 R12 K11 ["createElement"]
       95 GETUPVAL                         R13 1
       96 DUPTABLE                         R14 K38 [{["AutomaticSize"], ["Size"], ["Text"], ["TextTransparency"] = 1}]
       97 GETIMPORT                        R15 K23 [Enum.AutomaticSize.X]
       99 SETTABLEKS                       R15 R14 K21 ["AutomaticSize"]
      101 GETIMPORT                        R15 K27 [UDim2.fromScale]
      103 LOADN                            R16 0
      104 LOADN                            R17 1
      105 CALL                             R15 2 1
      106 SETTABLEKS                       R15 R14 K28 ["Size"]
      108 SETTABLEKS                       R1 R14 K35 ["Text"]
      110 CALL                             R12 2 1
      111 SETTABLEKS                       R12 R11 K33 ["ProbeText"]
      113 CALL                             R8 3 1
      114 SETTABLEKS                       R8 R7 K8 ["NameProbe"]
      116 GETUPVAL                         R8 0
      117 GETTABLEKS                       R8 R8 K11 ["createElement"]
      119 GETUPVAL                         R9 1
      120 DUPTABLE                         R10 K42 [{["Size"], ["Text"], ["TextXAlignment"], ["TextYAlignment"], ["TextTruncate"], ["ZIndex"] = 1}]
      121 JUMPIFNOT                        R5 ; [+14]
      122 GETIMPORT                        R11 K43 [UDim2.new]
      124 LOADN                            R12 0
      125 FASTCALL2                        MATH_MIN R4 R3 ; [+5]
      127 MOVE                             R14 R4
      128 MOVE                             R15 R3
      129 GETIMPORT                        R13 K46 [math.min]
      131 CALL                             R13 2 1
      132 LOADN                            R14 1
      133 LOADN                            R15 0
      134 CALL                             R11 4 1
      135 JUMP                             ; [+5]
      136 GETIMPORT                        R11 K27 [UDim2.fromScale]
      138 LOADN                            R12 1
      139 LOADN                            R13 1
      140 CALL                             R11 2 1
      141 SETTABLEKS                       R11 R10 K28 ["Size"]
      143 SETTABLEKS                       R1 R10 K35 ["Text"]
      145 GETIMPORT                        R11 K48 [Enum.TextXAlignment.Left]
      147 SETTABLEKS                       R11 R10 K39 ["TextXAlignment"]
      149 GETIMPORT                        R11 K50 [Enum.TextYAlignment.Center]
      151 SETTABLEKS                       R11 R10 K40 ["TextYAlignment"]
      153 GETIMPORT                        R11 K52 [Enum.TextTruncate.AtEnd]
      155 SETTABLEKS                       R11 R10 K41 ["TextTruncate"]
      157 CALL                             R8 2 1
      158 SETTABLEKS                       R8 R7 K9 ["WorldName"]
      160 JUMPIFNOT                        R6 ; [+39]
      161 GETUPVAL                         R8 0
      162 GETTABLEKS                       R8 R8 K11 ["createElement"]
      164 GETUPVAL                         R9 1
      165 DUPTABLE                         R10 K55 [{["Position"], ["Size"], ["Text"], ["TextXAlignment"], ["TextYAlignment"], ["TextTruncate"], ["TextTransparency"] = 0.5, ["ZIndex"] = 1}]
      166 GETIMPORT                        R11 K57 [UDim2.fromOffset]
      168 ADDK                             R12 R4 K6 [8]
      169 LOADN                            R13 0
      170 CALL                             R11 2 1
      171 SETTABLEKS                       R11 R10 K53 ["Position"]
      173 GETIMPORT                        R11 K43 [UDim2.new]
      175 LOADN                            R12 1
      176 ADDK                             R14 R4 K6 [8]
      177 MINUS                            R13 R14
      178 LOADN                            R14 1
      179 LOADN                            R15 0
      180 CALL                             R11 4 1
      181 SETTABLEKS                       R11 R10 K28 ["Size"]
      183 SETTABLEKS                       R2 R10 K35 ["Text"]
      185 GETIMPORT                        R11 K59 [Enum.TextXAlignment.Right]
      187 SETTABLEKS                       R11 R10 K39 ["TextXAlignment"]
      189 GETIMPORT                        R11 K50 [Enum.TextYAlignment.Center]
      191 SETTABLEKS                       R11 R10 K40 ["TextYAlignment"]
      193 GETIMPORT                        R11 K52 [Enum.TextTruncate.AtEnd]
      195 SETTABLEKS                       R11 R10 K41 ["TextTruncate"]
      197 CALL                             R8 2 1
      198 SETTABLEKS                       R8 R7 K60 ["WorldPath"]
      200 GETUPVAL                         R8 0
      201 GETTABLEKS                       R8 R8 K11 ["createElement"]
      203 LOADK                            R9 K19 ["Frame"]
      204 NEWTABLE                         R10 4 0
      206 LOADN                            R11 1
      207 SETTABLEKS                       R11 R10 K24 ["BackgroundTransparency"]
      209 GETIMPORT                        R11 K27 [UDim2.fromScale]
      211 LOADN                            R12 1
      212 LOADN                            R13 1
      213 CALL                             R11 2 1
      214 SETTABLEKS                       R11 R10 K28 ["Size"]
      216 GETUPVAL                         R11 0
      217 GETTABLEKS                       R11 R11 K30 ["Change"]
      219 GETTABLEKS                       R11 R11 K31 ["AbsoluteSize"]
      221 GETTABLEKS                       R12 R0 K61 ["onRootResized"]
      223 SETTABLE                         R12 R10 R11
      224 MOVE                             R11 R7
      225 CALL                             R8 3 -1
      226 RETURN                           R8 -1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createElement"]
        3 GETUPVAL                         R5 1
        4 DUPTABLE                         R6 K5 [{"LayoutOrder", "OnClick", "Size", "StyleModifier"}]
        5 SETTABLEKS                       R1 R6 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R2 R6 K2 ["OnClick"]
        9 GETIMPORT                        R7 K8 [UDim2.new]
       11 LOADN                            R8 1
       12 LOADN                            R9 0
       13 LOADN                            R10 0
       14 GETUPVAL                         R11 2
       15 GETTABLEKS                       R11 R11 K9 ["GroupRowHeight"]
       17 CALL                             R7 4 1
       18 SETTABLEKS                       R7 R6 K3 ["Size"]
       20 JUMPIFNOT                        R3 ; [+4]
       21 GETUPVAL                         R7 3
       22 GETTABLEKS                       R7 R7 K10 ["Hover"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R7
       26 SETTABLEKS                       R7 R6 K4 ["StyleModifier"]
       28 DUPTABLE                         R7 K12 [{"Content"}]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K0 ["createElement"]
       32 GETUPVAL                         R9 4
       33 DUPTABLE                         R10 K15 [{"Name", "Path"}]
       34 GETTABLEKS                       R11 R0 K16 ["Label"]
       36 SETTABLEKS                       R11 R10 K13 ["Name"]
       38 GETTABLEKS                       R11 R0 K14 ["Path"]
       40 SETTABLEKS                       R11 R10 K14 ["Path"]
       42 CALL                             R8 2 1
       43 SETTABLEKS                       R8 R7 K11 ["Content"]
       45 CALL                             R4 3 -1
       46 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"RowHovered"}]
        2 SETTABLEKS                       R0 R3 K0 ["RowHovered"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R2 ; [+13]
        1 GETUPVAL                         R3 0
        2 DUPTABLE                         R5 K1 [{"RowHovered"}]
        3 SETTABLEKS                       R1 R5 K0 ["RowHovered"]
        5 NAMECALL                         R3 R3 K2 ["setState"]
        7 CALL                             R3 2 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["rowHover"]
       11 SETTABLEKS                       R0 R3 K4 ["Gui"]
       13 RETURN                           R0 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K3 ["rowHover"]
       17 GETTABLEKS                       R3 R3 K4 ["Gui"]
       19 JUMPIFNOTEQ                      R3 R0 ; [+6]
       21 GETUPVAL                         R3 0
       22 DUPTABLE                         R5 K6 [{[1] = ""}]
       23 NAMECALL                         R3 R3 K2 ["setState"]
       25 CALL                             R3 2 0
       26 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOT                        R2 ; [+13]
        1 GETUPVAL                         R3 0
        2 DUPTABLE                         R5 K1 [{"ColHovered"}]
        3 SETTABLEKS                       R1 R5 K0 ["ColHovered"]
        5 NAMECALL                         R3 R3 K2 ["setState"]
        7 CALL                             R3 2 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["colHover"]
       11 SETTABLEKS                       R0 R3 K4 ["Gui"]
       13 RETURN                           R0 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K3 ["colHover"]
       17 GETTABLEKS                       R3 R3 K4 ["Gui"]
       19 JUMPIFNOTEQ                      R3 R0 ; [+6]
       21 GETUPVAL                         R3 0
       22 DUPTABLE                         R5 K6 [{[1] = ""}]
       23 NAMECALL                         R3 R3 K2 ["setState"]
       25 CALL                             R3 2 0
       26 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"ScrollPositionX", "ScrollPositionY"}]
        2 GETTABLEKS                       R4 R0 K3 ["X"]
        4 SETTABLEKS                       R4 R3 K0 ["ScrollPositionX"]
        6 GETTABLEKS                       R4 R0 K4 ["Y"]
        8 SETTABLEKS                       R4 R3 K1 ["ScrollPositionY"]
       10 NAMECALL                         R1 R1 K5 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K1 [{"ToggleListView"}]
        1 GETTABLEKS                       R3 R0 K0 ["ToggleListView"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["ToggleListView"]
        6 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_10]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 LOADN                            R2 0
        5 JUMPIFNOTLT                      R2 R1 ; [+15]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["state"]
       10 GETTABLEKS                       R2 R2 K3 ["WorldSelectorWidth"]
       12 JUMPIFEQ                         R1 R2 ; [+8]
       14 GETUPVAL                         R2 0
       15 DUPTABLE                         R4 K4 [{"WorldSelectorWidth"}]
       16 SETTABLEKS                       R1 R4 K3 ["WorldSelectorWidth"]
       18 NAMECALL                         R2 R2 K5 ["setState"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_13:
        0 GETGLOBAL                        R1 K0 ["hover"]
        2 LOADK                            R2 K1 [""]
        3 LOADNIL                          R3
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K2 ["rowHover"]
        7 GETGLOBAL                        R1 K0 ["hover"]
        9 LOADK                            R2 K1 [""]
       10 LOADNIL                          R3
       11 CALL                             R1 2 1
       12 SETTABLEKS                       R1 R0 K3 ["colHover"]
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K4 ["rowHoverForced"]
       18 NEWCLOSURE                       R1 P1
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K5 ["onRowHovered"]
       22 NEWCLOSURE                       R1 P2
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K6 ["onColHovered"]
       26 NEWCLOSURE                       R1 P3
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K7 ["onScrolled"]
       30 NEWCLOSURE                       R1 P4
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K8 ["onViewModeToggled"]
       34 GETUPVAL                         R1 0
       35 CALL                             R1 0 1
       36 JUMPIFNOT                        R1 ; [+4]
       37 NEWCLOSURE                       R1 P5
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K9 ["onWorldSelectorResized"]
       41 DUPTABLE                         R1 K18 [{["ScrollPositionX"] = 0, ["ScrollPositionY"] = 0, ["RowHovered"] = "", ["ColHovered"] = "", ["ToggleListView"] = True, ["WorldSelectorWidth"] = 0}]
       42 SETTABLEKS                       R1 R0 K19 ["state"]
       44 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnWorldChanged"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnUseWorkspaceCollisionGroupsChanged"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["UseWorkspaceCollisionGroups"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["MainView"]
        6 DUPTABLE                         R3 K6 [{"ControlsHeaderRow", "Header", "Middle"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K7 ["createElement"]
       10 GETUPVAL                         R5 1
       11 DUPTABLE                         R6 K18 [{["OnGroupAdded"], ["OnGroupDeleted"], ["OnGroupRenamed"], ["UISelectedId"], ["OnViewModeToggled"], ["ToggleListView"], ["LayoutOrder"] = 1, ["Groups"], ["Window"]}]
       12 GETTABLEKS                       R7 R1 K8 ["OnGroupAdded"]
       14 SETTABLEKS                       R7 R6 K8 ["OnGroupAdded"]
       16 GETTABLEKS                       R7 R1 K9 ["OnGroupDeleted"]
       18 SETTABLEKS                       R7 R6 K9 ["OnGroupDeleted"]
       20 GETTABLEKS                       R7 R1 K10 ["OnGroupRenamed"]
       22 SETTABLEKS                       R7 R6 K10 ["OnGroupRenamed"]
       24 GETTABLEKS                       R7 R1 K11 ["UISelectedId"]
       26 SETTABLEKS                       R7 R6 K11 ["UISelectedId"]
       28 GETTABLEKS                       R7 R0 K19 ["onViewModeToggled"]
       30 SETTABLEKS                       R7 R6 K12 ["OnViewModeToggled"]
       32 GETTABLEKS                       R7 R0 K20 ["state"]
       34 GETTABLEKS                       R7 R7 K13 ["ToggleListView"]
       36 SETTABLEKS                       R7 R6 K13 ["ToggleListView"]
       38 GETTABLEKS                       R7 R1 K16 ["Groups"]
       40 SETTABLEKS                       R7 R6 K16 ["Groups"]
       42 GETTABLEKS                       R7 R1 K17 ["Window"]
       44 SETTABLEKS                       R7 R6 K17 ["Window"]
       46 CALL                             R4 2 1
       47 SETTABLEKS                       R4 R3 K3 ["ControlsHeaderRow"]
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R4 R4 K7 ["createElement"]
       52 GETUPVAL                         R5 2
       53 DUPTABLE                         R6 K25 [{["Size"], ["LayoutOrder"] = 2, ["Layout"], ["HorizontalAlignment"]}]
       54 GETIMPORT                        R7 K28 [UDim2.new]
       56 LOADN                            R8 1
       57 LOADN                            R9 0
       58 LOADN                            R10 0
       59 GETUPVAL                         R11 3
       60 GETTABLEKS                       R11 R11 K29 ["GroupRowHeight"]
       62 CALL                             R7 4 1
       63 SETTABLEKS                       R7 R6 K21 ["Size"]
       65 GETIMPORT                        R7 K33 [Enum.FillDirection.Horizontal]
       67 SETTABLEKS                       R7 R6 K23 ["Layout"]
       69 GETIMPORT                        R7 K35 [Enum.HorizontalAlignment.Left]
       71 SETTABLEKS                       R7 R6 K24 ["HorizontalAlignment"]
       73 DUPTABLE                         R7 K38 [{"TableHeader", "ListHeader"}]
       74 GETUPVAL                         R8 0
       75 GETTABLEKS                       R8 R8 K7 ["createElement"]
       77 GETUPVAL                         R9 4
       78 DUPTABLE                         R10 K42 [{"LayoutOrder", "Groups", "ColHovered", "OnColHovered", "ScrollPositionX"}]
       79 GETTABLEKS                       R12 R0 K20 ["state"]
       81 GETTABLEKS                       R12 R12 K13 ["ToggleListView"]
       83 JUMPIFNOT                        R12 ; [+2]
       84 LOADN                            R11 2
       85 JUMP                             ; [+1]
       86 LOADN                            R11 1
       87 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
       89 GETTABLEKS                       R11 R1 K16 ["Groups"]
       91 SETTABLEKS                       R11 R10 K16 ["Groups"]
       93 GETTABLEKS                       R11 R0 K20 ["state"]
       95 GETTABLEKS                       R11 R11 K39 ["ColHovered"]
       97 SETTABLEKS                       R11 R10 K39 ["ColHovered"]
       99 GETTABLEKS                       R11 R0 K43 ["onColHovered"]
      101 SETTABLEKS                       R11 R10 K40 ["OnColHovered"]
      103 GETTABLEKS                       R11 R0 K20 ["state"]
      105 GETTABLEKS                       R11 R11 K41 ["ScrollPositionX"]
      107 SETTABLEKS                       R11 R10 K41 ["ScrollPositionX"]
      109 CALL                             R8 2 1
      110 SETTABLEKS                       R8 R7 K36 ["TableHeader"]
      112 GETUPVAL                         R8 0
      113 GETTABLEKS                       R8 R8 K7 ["createElement"]
      115 GETUPVAL                         R9 5
      116 DUPTABLE                         R10 K46 [{"LayoutOrder", "SelectedGroupName", "GroupCount"}]
      117 GETTABLEKS                       R12 R0 K20 ["state"]
      119 GETTABLEKS                       R12 R12 K13 ["ToggleListView"]
      121 JUMPIFNOT                        R12 ; [+2]
      122 LOADN                            R11 1
      123 JUMP                             ; [+1]
      124 LOADN                            R11 2
      125 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
      127 GETUPVAL                         R12 6
      128 GETTABLEKS                       R12 R12 K47 ["getSelectedGroup"]
      130 GETTABLEKS                       R13 R1 K16 ["Groups"]
      132 CALL                             R12 1 1
      133 JUMPIFEQKS                       R12 K48 [""] ; [+10]
      135 GETUPVAL                         R11 6
      136 GETTABLEKS                       R11 R11 K47 ["getSelectedGroup"]
      138 GETTABLEKS                       R12 R1 K16 ["Groups"]
      140 CALL                             R11 1 1
      141 GETTABLEKS                       R11 R11 K49 ["Name"]
      143 JUMP                             ; [+1]
      144 LOADK                            R11 K48 [""]
      145 SETTABLEKS                       R11 R10 K44 ["SelectedGroupName"]
      147 GETTABLEKS                       R12 R1 K16 ["Groups"]
      149 LENGTH                           R11 R12
      150 SETTABLEKS                       R11 R10 K45 ["GroupCount"]
      152 CALL                             R8 2 1
      153 SETTABLEKS                       R8 R7 K37 ["ListHeader"]
      155 CALL                             R4 3 1
      156 SETTABLEKS                       R4 R3 K4 ["Header"]
      158 GETUPVAL                         R4 0
      159 GETTABLEKS                       R4 R4 K7 ["createElement"]
      161 GETUPVAL                         R5 2
      162 DUPTABLE                         R6 K52 [{["Size"], ["LayoutOrder"] = 3, ["Layout"], ["HorizontalAlignment"], ["VerticalAlignment"]}]
      163 GETUPVAL                         R8 7
      164 CALL                             R8 0 1
      165 JUMPIFNOT                        R8 ; [+8]
      166 GETIMPORT                        R7 K28 [UDim2.new]
      168 LOADN                            R8 1
      169 LOADN                            R9 0
      170 LOADN                            R10 0
      171 LOADN                            R11 0
      172 CALL                             R7 4 1
      173 JUMP                             ; [+2]
      174 GETTABLEKS                       R7 R2 K53 ["MiddlePaneSize"]
      176 SETTABLEKS                       R7 R6 K21 ["Size"]
      178 GETIMPORT                        R7 K33 [Enum.FillDirection.Horizontal]
      180 SETTABLEKS                       R7 R6 K23 ["Layout"]
      182 GETIMPORT                        R7 K35 [Enum.HorizontalAlignment.Left]
      184 SETTABLEKS                       R7 R6 K24 ["HorizontalAlignment"]
      186 GETIMPORT                        R7 K55 [Enum.VerticalAlignment.Top]
      188 SETTABLEKS                       R7 R6 K51 ["VerticalAlignment"]
      190 DUPTABLE                         R7 K60 [{"Flex", "GroupLabelColumn", "GridFrame", "ListFrame"}]
      191 GETUPVAL                         R9 7
      192 CALL                             R9 0 1
      193 JUMPIFNOT                        R9 ; [+11]
      194 GETUPVAL                         R8 0
      195 GETTABLEKS                       R8 R8 K7 ["createElement"]
      197 LOADK                            R9 K61 ["UIFlexItem"]
      198 DUPTABLE                         R10 K63 [{"FlexMode"}]
      199 GETIMPORT                        R11 K66 [Enum.UIFlexMode.Fill]
      201 SETTABLEKS                       R11 R10 K62 ["FlexMode"]
      203 CALL                             R8 2 1
      204 JUMP                             ; [+1]
      205 LOADNIL                          R8
      206 SETTABLEKS                       R8 R7 K56 ["Flex"]
      208 GETUPVAL                         R8 0
      209 GETTABLEKS                       R8 R8 K7 ["createElement"]
      211 GETUPVAL                         R9 8
      212 DUPTABLE                         R10 K70 [{["LayoutOrder"] = 1, ["Groups"], ["Window"], ["RowHovered"], ["OnRowHovered"], ["ScrollPositionY"], ["ToggleListView"]}]
      213 GETTABLEKS                       R11 R1 K16 ["Groups"]
      215 SETTABLEKS                       R11 R10 K16 ["Groups"]
      217 GETTABLEKS                       R11 R1 K17 ["Window"]
      219 SETTABLEKS                       R11 R10 K17 ["Window"]
      221 GETTABLEKS                       R11 R0 K20 ["state"]
      223 GETTABLEKS                       R11 R11 K67 ["RowHovered"]
      225 SETTABLEKS                       R11 R10 K67 ["RowHovered"]
      227 GETTABLEKS                       R11 R0 K71 ["onRowHovered"]
      229 SETTABLEKS                       R11 R10 K68 ["OnRowHovered"]
      231 GETTABLEKS                       R11 R0 K20 ["state"]
      233 GETTABLEKS                       R11 R11 K69 ["ScrollPositionY"]
      235 SETTABLEKS                       R11 R10 K69 ["ScrollPositionY"]
      237 GETTABLEKS                       R11 R0 K20 ["state"]
      239 GETTABLEKS                       R11 R11 K13 ["ToggleListView"]
      241 SETTABLEKS                       R11 R10 K13 ["ToggleListView"]
      243 CALL                             R8 2 1
      244 SETTABLEKS                       R8 R7 K57 ["GroupLabelColumn"]
      246 GETUPVAL                         R8 0
      247 GETTABLEKS                       R8 R8 K7 ["createElement"]
      249 GETUPVAL                         R9 9
      250 DUPTABLE                         R10 K77 [{["Size"], ["AutomaticCanvasSize"], ["ScrollingDirection"], ["LayoutOrder"], ["OnScrollUpdate"], ["Layout"], ["Padding"] = 0}]
      251 GETTABLEKS                       R11 R2 K78 ["GridFrameSize"]
      253 SETTABLEKS                       R11 R10 K21 ["Size"]
      255 GETIMPORT                        R11 K81 [Enum.AutomaticSize.XY]
      257 SETTABLEKS                       R11 R10 K72 ["AutomaticCanvasSize"]
      259 GETIMPORT                        R11 K82 [Enum.ScrollingDirection.XY]
      261 SETTABLEKS                       R11 R10 K73 ["ScrollingDirection"]
      263 GETTABLEKS                       R12 R0 K20 ["state"]
      265 GETTABLEKS                       R12 R12 K13 ["ToggleListView"]
      267 JUMPIFNOT                        R12 ; [+2]
      268 LOADN                            R11 3
      269 JUMP                             ; [+1]
      270 LOADN                            R11 2
      271 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
      273 GETTABLEKS                       R11 R0 K83 ["onScrolled"]
      275 SETTABLEKS                       R11 R10 K74 ["OnScrollUpdate"]
      277 GETIMPORT                        R11 K33 [Enum.FillDirection.Horizontal]
      279 SETTABLEKS                       R11 R10 K23 ["Layout"]
      281 DUPTABLE                         R11 K85 [{"GroupCollisionMatrix"}]
      282 GETTABLEKS                       R13 R0 K20 ["state"]
      284 GETTABLEKS                       R13 R13 K13 ["ToggleListView"]
      286 NOT                              R12 R13
      287 JUMPIFNOT                        R12 ; [+24]
      288 GETUPVAL                         R12 0
      289 GETTABLEKS                       R12 R12 K7 ["createElement"]
      291 GETUPVAL                         R13 10
      292 DUPTABLE                         R14 K86 [{"Groups", "RowHovered", "OnColHovered", "OnRowHovered"}]
      293 GETTABLEKS                       R15 R1 K16 ["Groups"]
      295 SETTABLEKS                       R15 R14 K16 ["Groups"]
      297 GETTABLEKS                       R15 R0 K20 ["state"]
      299 GETTABLEKS                       R15 R15 K67 ["RowHovered"]
      301 SETTABLEKS                       R15 R14 K67 ["RowHovered"]
      303 GETTABLEKS                       R15 R0 K43 ["onColHovered"]
      305 SETTABLEKS                       R15 R14 K40 ["OnColHovered"]
      307 GETTABLEKS                       R15 R0 K71 ["onRowHovered"]
      309 SETTABLEKS                       R15 R14 K68 ["OnRowHovered"]
      311 CALL                             R12 2 1
      312 SETTABLEKS                       R12 R11 K84 ["GroupCollisionMatrix"]
      314 CALL                             R8 3 1
      315 SETTABLEKS                       R8 R7 K58 ["GridFrame"]
      317 GETTABLEKS                       R8 R0 K20 ["state"]
      319 GETTABLEKS                       R8 R8 K13 ["ToggleListView"]
      321 JUMPIFNOT                        R8 ; [+63]
      322 GETUPVAL                         R8 0
      323 GETTABLEKS                       R8 R8 K7 ["createElement"]
      325 GETUPVAL                         R9 9
      326 DUPTABLE                         R10 K87 [{"Size", "AutomaticCanvasSize", "LayoutOrder", "Layout", "ScrollingDirection"}]
      327 GETTABLEKS                       R11 R2 K88 ["ListFrameSize"]
      329 SETTABLEKS                       R11 R10 K21 ["Size"]
      331 GETIMPORT                        R11 K81 [Enum.AutomaticSize.XY]
      333 SETTABLEKS                       R11 R10 K72 ["AutomaticCanvasSize"]
      335 GETTABLEKS                       R12 R0 K20 ["state"]
      337 GETTABLEKS                       R12 R12 K13 ["ToggleListView"]
      339 JUMPIFNOT                        R12 ; [+2]
      340 LOADN                            R11 2
      341 JUMP                             ; [+1]
      342 LOADN                            R11 3
      343 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
      345 GETIMPORT                        R11 K33 [Enum.FillDirection.Horizontal]
      347 SETTABLEKS                       R11 R10 K23 ["Layout"]
      349 GETIMPORT                        R11 K90 [Enum.ScrollingDirection.Y]
      351 SETTABLEKS                       R11 R10 K73 ["ScrollingDirection"]
      353 DUPTABLE                         R11 K92 [{"GroupListView"}]
      354 GETUPVAL                         R12 0
      355 GETTABLEKS                       R12 R12 K7 ["createElement"]
      357 GETUPVAL                         R13 6
      358 DUPTABLE                         R14 K93 [{"Groups", "UISelectedId", "RowHovered", "OnColHovered", "OnRowHovered"}]
      359 GETTABLEKS                       R15 R1 K16 ["Groups"]
      361 SETTABLEKS                       R15 R14 K16 ["Groups"]
      363 GETTABLEKS                       R15 R1 K11 ["UISelectedId"]
      365 SETTABLEKS                       R15 R14 K11 ["UISelectedId"]
      367 GETTABLEKS                       R15 R0 K20 ["state"]
      369 GETTABLEKS                       R15 R15 K67 ["RowHovered"]
      371 SETTABLEKS                       R15 R14 K67 ["RowHovered"]
      373 GETTABLEKS                       R15 R0 K43 ["onColHovered"]
      375 SETTABLEKS                       R15 R14 K40 ["OnColHovered"]
      377 GETTABLEKS                       R15 R0 K71 ["onRowHovered"]
      379 SETTABLEKS                       R15 R14 K68 ["OnRowHovered"]
      381 CALL                             R12 2 1
      382 SETTABLEKS                       R12 R11 K91 ["GroupListView"]
      384 CALL                             R8 3 1
      385 SETTABLEKS                       R8 R7 K59 ["ListFrame"]
      387 CALL                             R4 3 1
      388 SETTABLEKS                       R4 R3 K5 ["Middle"]
      390 GETUPVAL                         R4 7
      391 CALL                             R4 0 1
      392 JUMPIFNOT                        R4 ; [+437]
      393 GETTABLEKS                       R5 R1 K94 ["Worlds"]
      395 LENGTH                           R4 R5
      396 LOADN                            R5 1
      397 JUMPIFNOTLT                      R5 R4 ; [+432]
      399 NEWTABLE                         R4 0 0
      401 GETTABLEKS                       R5 R1 K94 ["Worlds"]
      403 LOADNIL                          R6
      404 LOADNIL                          R7
      405 FORGPREP                         R5
      406 GETTABLEKS                       R11 R9 K95 ["Path"]
      408 GETTABLEKS                       R12 R9 K49 ["Name"]
      410 JUMPIFEQ                         R11 R12 ; [+4]
      412 GETTABLEKS                       R10 R9 K95 ["Path"]
      414 JUMP                             ; [+1]
      415 LOADNIL                          R10
      416 DUPTABLE                         R13 K97 [{"Label", "Path"}]
      417 GETTABLEKS                       R14 R9 K49 ["Name"]
      419 SETTABLEKS                       R14 R13 K96 ["Label"]
      421 SETTABLEKS                       R10 R13 K95 ["Path"]
      423 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
      425 MOVE                             R12 R4
      426 GETIMPORT                        R11 K100 [table.insert]
      428 CALL                             R11 2 0
      429 FORGLOOP                         R5 2 ; [-24]
      431 GETTABLEKS                       R6 R1 K101 ["ActiveWorldIndex"]
      433 GETTABLE                         R5 R4 R6
      434 GETTABLEKS                       R7 R1 K94 ["Worlds"]
      436 GETTABLEKS                       R8 R1 K101 ["ActiveWorldIndex"]
      438 GETTABLE                         R6 R7 R8
      439 LOADB                            R7 0
      440 JUMPIFEQKNIL                     R6 ; [+3]
      442 GETTABLEKS                       R7 R6 K102 ["IsWorldModel"]
      444 GETTABLEKS                       R8 R1 K103 ["Localization"]
      446 GETUPVAL                         R9 0
      447 GETTABLEKS                       R9 R9 K7 ["createElement"]
      449 GETUPVAL                         R10 2
      450 DUPTABLE                         R11 K104 [{["Size"], ["AutomaticSize"], ["LayoutOrder"] = 0, ["Layout"]}]
      451 GETIMPORT                        R12 K106 [UDim2.fromScale]
      453 LOADN                            R13 1
      454 LOADN                            R14 0
      455 CALL                             R12 2 1
      456 SETTABLEKS                       R12 R11 K21 ["Size"]
      458 GETIMPORT                        R12 K107 [Enum.AutomaticSize.Y]
      460 SETTABLEKS                       R12 R11 K79 ["AutomaticSize"]
      462 GETIMPORT                        R12 K109 [Enum.FillDirection.Vertical]
      464 SETTABLEKS                       R12 R11 K23 ["Layout"]
      466 DUPTABLE                         R12 K112 [{"Margin", "Panel"}]
      467 GETUPVAL                         R13 0
      468 GETTABLEKS                       R13 R13 K7 ["createElement"]
      470 LOADK                            R14 K113 ["UIPadding"]
      471 DUPTABLE                         R15 K117 [{"PaddingTop", "PaddingLeft", "PaddingRight"}]
      472 GETIMPORT                        R16 K119 [UDim.new]
      474 LOADN                            R17 0
      475 LOADN                            R18 5
      476 CALL                             R16 2 1
      477 SETTABLEKS                       R16 R15 K114 ["PaddingTop"]
      479 GETIMPORT                        R16 K119 [UDim.new]
      481 LOADN                            R17 0
      482 LOADN                            R18 5
      483 CALL                             R16 2 1
      484 SETTABLEKS                       R16 R15 K115 ["PaddingLeft"]
      486 GETIMPORT                        R16 K119 [UDim.new]
      488 LOADN                            R17 0
      489 LOADN                            R18 5
      490 CALL                             R16 2 1
      491 SETTABLEKS                       R16 R15 K116 ["PaddingRight"]
      493 CALL                             R13 2 1
      494 SETTABLEKS                       R13 R12 K110 ["Margin"]
      496 GETUPVAL                         R13 0
      497 GETTABLEKS                       R13 R13 K7 ["createElement"]
      499 GETUPVAL                         R14 2
      500 DUPTABLE                         R15 K124 [{["Style"] = "WorldPanel", ["Size"], ["AutomaticSize"], ["Layout"], ["HorizontalAlignment"], ["Spacing"] = 4}]
      501 GETIMPORT                        R16 K106 [UDim2.fromScale]
      503 LOADN                            R17 1
      504 LOADN                            R18 0
      505 CALL                             R16 2 1
      506 SETTABLEKS                       R16 R15 K21 ["Size"]
      508 GETIMPORT                        R16 K107 [Enum.AutomaticSize.Y]
      510 SETTABLEKS                       R16 R15 K79 ["AutomaticSize"]
      512 GETIMPORT                        R16 K109 [Enum.FillDirection.Vertical]
      514 SETTABLEKS                       R16 R15 K23 ["Layout"]
      516 GETIMPORT                        R16 K126 [Enum.HorizontalAlignment.Center]
      518 SETTABLEKS                       R16 R15 K24 ["HorizontalAlignment"]
      520 DUPTABLE                         R16 K129 [{"Padding", "DropdownRow", "WorldSetting"}]
      521 GETUPVAL                         R17 0
      522 GETTABLEKS                       R17 R17 K7 ["createElement"]
      524 LOADK                            R18 K113 ["UIPadding"]
      525 DUPTABLE                         R19 K131 [{"PaddingBottom"}]
      526 GETIMPORT                        R20 K119 [UDim.new]
      528 LOADN                            R21 0
      529 LOADN                            R22 6
      530 CALL                             R20 2 1
      531 SETTABLEKS                       R20 R19 K130 ["PaddingBottom"]
      533 CALL                             R17 2 1
      534 SETTABLEKS                       R17 R16 K75 ["Padding"]
      536 GETUPVAL                         R17 0
      537 GETTABLEKS                       R17 R17 K7 ["createElement"]
      539 LOADK                            R18 K132 ["Frame"]
      540 NEWTABLE                         R19 4 0
      542 LOADN                            R20 1
      543 SETTABLEKS                       R20 R19 K133 ["BackgroundTransparency"]
      545 GETIMPORT                        R20 K28 [UDim2.new]
      547 LOADN                            R21 1
      548 LOADN                            R22 0
      549 LOADN                            R23 0
      550 GETUPVAL                         R24 3
      551 GETTABLEKS                       R24 R24 K29 ["GroupRowHeight"]
      553 CALL                             R20 4 1
      554 SETTABLEKS                       R20 R19 K21 ["Size"]
      556 LOADN                            R20 1
      557 SETTABLEKS                       R20 R19 K14 ["LayoutOrder"]
      559 GETUPVAL                         R20 0
      560 GETTABLEKS                       R20 R20 K134 ["Change"]
      562 GETTABLEKS                       R20 R20 K135 ["AbsoluteSize"]
      564 GETTABLEKS                       R21 R0 K136 ["onWorldSelectorResized"]
      566 SETTABLE                         R21 R19 R20
      567 DUPTABLE                         R20 K139 [{"Input", "SelectedOverlay"}]
      568 GETUPVAL                         R21 0
      569 GETTABLEKS                       R21 R21 K7 ["createElement"]
      571 GETUPVAL                         R22 11
      572 DUPTABLE                         R23 K148 [{["Items"], ["SelectedIndex"], ["OnItemActivated"], ["OnRenderItem"], ["HideText"] = True, ["ItemHeight"], ["Size"], ["Width"]}]
      573 SETTABLEKS                       R4 R23 K140 ["Items"]
      575 GETTABLEKS                       R24 R1 K101 ["ActiveWorldIndex"]
      577 SETTABLEKS                       R24 R23 K141 ["SelectedIndex"]
      579 NEWCLOSURE                       R24 P0
      580 CAPTURE                          VAL R1
      581 SETTABLEKS                       R24 R23 K142 ["OnItemActivated"]
      583 GETUPVAL                         R24 12
      584 SETTABLEKS                       R24 R23 K143 ["OnRenderItem"]
      586 GETUPVAL                         R24 3
      587 GETTABLEKS                       R24 R24 K29 ["GroupRowHeight"]
      589 SETTABLEKS                       R24 R23 K146 ["ItemHeight"]
      591 GETIMPORT                        R24 K28 [UDim2.new]
      593 LOADN                            R25 1
      594 LOADN                            R26 0
      595 LOADN                            R27 0
      596 GETUPVAL                         R28 3
      597 GETTABLEKS                       R28 R28 K29 ["GroupRowHeight"]
      599 CALL                             R24 4 1
      600 SETTABLEKS                       R24 R23 K21 ["Size"]
      602 GETTABLEKS                       R25 R0 K20 ["state"]
      604 GETTABLEKS                       R25 R25 K149 ["WorldSelectorWidth"]
      606 LOADN                            R26 0
      607 JUMPIFNOTLT                      R26 R25 ; [+6]
      609 GETTABLEKS                       R24 R0 K20 ["state"]
      611 GETTABLEKS                       R24 R24 K149 ["WorldSelectorWidth"]
      613 JUMP                             ; [+1]
      614 LOADNIL                          R24
      615 SETTABLEKS                       R24 R23 K147 ["Width"]
      617 CALL                             R21 2 1
      618 SETTABLEKS                       R21 R20 K137 ["Input"]
      620 JUMPIFNOT                        R5 ; [+33]
      621 GETUPVAL                         R21 0
      622 GETTABLEKS                       R21 R21 K7 ["createElement"]
      624 LOADK                            R22 K132 ["Frame"]
      625 DUPTABLE                         R23 K153 [{["Active"] = False, ["BackgroundTransparency"] = 1, ["ZIndex"] = 2, ["Size"]}]
      626 GETIMPORT                        R24 K28 [UDim2.new]
      628 LOADN                            R25 1
      629 LOADN                            R26 -24
      630 LOADN                            R27 1
      631 LOADN                            R28 0
      632 CALL                             R24 4 1
      633 SETTABLEKS                       R24 R23 K21 ["Size"]
      635 DUPTABLE                         R24 K155 [{"Content"}]
      636 GETUPVAL                         R25 0
      637 GETTABLEKS                       R25 R25 K7 ["createElement"]
      639 GETUPVAL                         R26 13
      640 DUPTABLE                         R27 K156 [{"Name", "Path"}]
      641 GETTABLEKS                       R28 R5 K96 ["Label"]
      643 SETTABLEKS                       R28 R27 K49 ["Name"]
      645 GETTABLEKS                       R28 R5 K95 ["Path"]
      647 SETTABLEKS                       R28 R27 K95 ["Path"]
      649 CALL                             R25 2 1
      650 SETTABLEKS                       R25 R24 K154 ["Content"]
      652 CALL                             R21 3 1
      653 JUMP                             ; [+1]
      654 LOADNIL                          R21
      655 SETTABLEKS                       R21 R20 K138 ["SelectedOverlay"]
      657 CALL                             R17 3 1
      658 SETTABLEKS                       R17 R16 K127 ["DropdownRow"]
      660 JUMPIFNOT                        R7 ; [+123]
      661 GETUPVAL                         R17 0
      662 GETTABLEKS                       R17 R17 K7 ["createElement"]
      664 GETUPVAL                         R18 2
      665 DUPTABLE                         R19 K157 [{["LayoutOrder"] = 2, ["Size"], ["AutomaticSize"], ["Layout"], ["HorizontalAlignment"], ["VerticalAlignment"], ["Spacing"] = 4}]
      666 GETIMPORT                        R20 K28 [UDim2.new]
      668 LOADN                            R21 1
      669 LOADN                            R22 0
      670 LOADN                            R23 0
      671 LOADN                            R24 0
      672 CALL                             R20 4 1
      673 SETTABLEKS                       R20 R19 K21 ["Size"]
      675 GETIMPORT                        R20 K107 [Enum.AutomaticSize.Y]
      677 SETTABLEKS                       R20 R19 K79 ["AutomaticSize"]
      679 GETIMPORT                        R20 K33 [Enum.FillDirection.Horizontal]
      681 SETTABLEKS                       R20 R19 K23 ["Layout"]
      683 GETIMPORT                        R20 K126 [Enum.HorizontalAlignment.Center]
      685 SETTABLEKS                       R20 R19 K24 ["HorizontalAlignment"]
      687 GETIMPORT                        R20 K158 [Enum.VerticalAlignment.Center]
      689 SETTABLEKS                       R20 R19 K51 ["VerticalAlignment"]
      691 DUPTABLE                         R20 K160 [{"Checkbox", "Label"}]
      692 GETUPVAL                         R21 0
      693 GETTABLEKS                       R21 R21 K7 ["createElement"]
      695 GETUPVAL                         R22 14
      696 DUPTABLE                         R23 K163 [{["LayoutOrder"] = 1, ["Checked"], ["OnClick"]}]
      697 GETTABLEKS                       R24 R6 K164 ["UseWorkspaceCollisionGroups"]
      699 SETTABLEKS                       R24 R23 K161 ["Checked"]
      701 NEWCLOSURE                       R24 P1
      702 CAPTURE                          VAL R1
      703 CAPTURE                          VAL R6
      704 SETTABLEKS                       R24 R23 K162 ["OnClick"]
      706 CALL                             R21 2 1
      707 SETTABLEKS                       R21 R20 K159 ["Checkbox"]
      709 GETUPVAL                         R21 0
      710 GETTABLEKS                       R21 R21 K7 ["createElement"]
      712 GETUPVAL                         R22 15
      713 DUPTABLE                         R23 K169 [{["LayoutOrder"] = 2, ["AutomaticSize"], ["Size"], ["Text"], ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"]}]
      714 GETIMPORT                        R24 K81 [Enum.AutomaticSize.XY]
      716 SETTABLEKS                       R24 R23 K79 ["AutomaticSize"]
      718 GETIMPORT                        R24 K106 [UDim2.fromScale]
      720 LOADN                            R25 0
      721 LOADN                            R26 0
      722 CALL                             R24 2 1
      723 SETTABLEKS                       R24 R23 K21 ["Size"]
      725 LOADK                            R26 K170 ["Actions"]
      726 LOADK                            R27 K164 ["UseWorkspaceCollisionGroups"]
      727 NAMECALL                         R24 R8 K171 ["getText"]
      729 CALL                             R24 3 1
      730 SETTABLEKS                       R24 R23 K165 ["Text"]
      732 GETIMPORT                        R24 K173 [Enum.TextTruncate.AtEnd]
      734 SETTABLEKS                       R24 R23 K166 ["TextTruncate"]
      736 GETIMPORT                        R24 K174 [Enum.TextXAlignment.Left]
      738 SETTABLEKS                       R24 R23 K167 ["TextXAlignment"]
      740 GETIMPORT                        R24 K175 [Enum.TextYAlignment.Center]
      742 SETTABLEKS                       R24 R23 K168 ["TextYAlignment"]
      744 DUPTABLE                         R24 K177 [{"MaxWidth"}]
      745 GETTABLEKS                       R26 R0 K20 ["state"]
      747 GETTABLEKS                       R26 R26 K149 ["WorldSelectorWidth"]
      749 LOADN                            R27 0
      750 JUMPIFNOTLT                      R27 R26 ; [+25]
      752 GETUPVAL                         R25 0
      753 GETTABLEKS                       R25 R25 K7 ["createElement"]
      755 LOADK                            R26 K178 ["UISizeConstraint"]
      756 DUPTABLE                         R27 K180 [{"MaxSize"}]
      757 GETIMPORT                        R28 K182 [Vector2.new]
      759 LOADN                            R30 0
      760 GETTABLEKS                       R32 R0 K20 ["state"]
      762 GETTABLEKS                       R32 R32 K149 ["WorldSelectorWidth"]
      764 SUBK                             R31 R32 K183 [24]
      765 FASTCALL2                        MATH_MAX R30 R31 ; [+3]
      767 GETIMPORT                        R29 K186 [math.max]
      769 CALL                             R29 2 1
      770 LOADK                            R30 K187 [∞]
      771 CALL                             R28 2 1
      772 SETTABLEKS                       R28 R27 K179 ["MaxSize"]
      774 CALL                             R25 2 1
      775 JUMP                             ; [+1]
      776 LOADNIL                          R25
      777 SETTABLEKS                       R25 R24 K176 ["MaxWidth"]
      779 CALL                             R21 3 1
      780 SETTABLEKS                       R21 R20 K96 ["Label"]
      782 CALL                             R17 3 1
      783 JUMP                             ; [+38]
      784 GETUPVAL                         R17 0
      785 GETTABLEKS                       R17 R17 K7 ["createElement"]
      787 GETUPVAL                         R18 15
      788 DUPTABLE                         R19 K190 [{["LayoutOrder"] = 2, ["AutomaticSize"], ["Size"], ["Text"], ["TextTransparency"] = 0.5, ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"]}]
      789 GETIMPORT                        R20 K107 [Enum.AutomaticSize.Y]
      791 SETTABLEKS                       R20 R19 K79 ["AutomaticSize"]
      793 GETIMPORT                        R20 K28 [UDim2.new]
      795 LOADN                            R21 1
      796 LOADN                            R22 0
      797 LOADN                            R23 0
      798 LOADN                            R24 0
      799 CALL                             R20 4 1
      800 SETTABLEKS                       R20 R19 K21 ["Size"]
      802 LOADK                            R22 K191 ["Info"]
      803 LOADK                            R23 K192 ["WorkspaceOwnsCollisionGroups"]
      804 NAMECALL                         R20 R8 K171 ["getText"]
      806 CALL                             R20 3 1
      807 SETTABLEKS                       R20 R19 K165 ["Text"]
      809 GETIMPORT                        R20 K173 [Enum.TextTruncate.AtEnd]
      811 SETTABLEKS                       R20 R19 K166 ["TextTruncate"]
      813 GETIMPORT                        R20 K193 [Enum.TextXAlignment.Center]
      815 SETTABLEKS                       R20 R19 K167 ["TextXAlignment"]
      817 GETIMPORT                        R20 K175 [Enum.TextYAlignment.Center]
      819 SETTABLEKS                       R20 R19 K168 ["TextYAlignment"]
      821 CALL                             R17 2 1
      822 SETTABLEKS                       R17 R16 K128 ["WorldSetting"]
      824 CALL                             R13 3 1
      825 SETTABLEKS                       R13 R12 K111 ["Panel"]
      827 CALL                             R9 3 1
      828 SETTABLEKS                       R9 R3 K194 ["WorldSelector"]
      830 GETUPVAL                         R4 0
      831 GETTABLEKS                       R4 R4 K7 ["createElement"]
      833 GETUPVAL                         R5 16
      834 DUPTABLE                         R6 K197 [{"Enabled", "OnClose"}]
      835 GETTABLEKS                       R7 R1 K198 ["GroupRenameDialogOpen"]
      837 SETTABLEKS                       R7 R6 K195 ["Enabled"]
      839 GETTABLEKS                       R7 R1 K199 ["OnGroupRenameDialogClosed"]
      841 SETTABLEKS                       R7 R6 K196 ["OnClose"]
      843 CALL                             R4 2 1
      844 SETTABLEKS                       R4 R3 K200 ["GroupRenameDialog"]
      846 GETUPVAL                         R4 0
      847 GETTABLEKS                       R4 R4 K7 ["createElement"]
      849 GETUPVAL                         R5 2
      850 DUPTABLE                         R6 K202 [{["Style"] = "Box", ["Layout"], ["VerticalAlignment"]}]
      851 GETIMPORT                        R7 K109 [Enum.FillDirection.Vertical]
      853 SETTABLEKS                       R7 R6 K23 ["Layout"]
      855 GETIMPORT                        R7 K55 [Enum.VerticalAlignment.Top]
      857 SETTABLEKS                       R7 R6 K51 ["VerticalAlignment"]
      859 MOVE                             R7 R3
      860 CALL                             R4 3 -1
      861 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R2 K9 ["UI"]
       27 GETTABLEKS                       R5 R4 K10 ["Pane"]
       29 GETTABLEKS                       R6 R4 K11 ["ScrollingFrame"]
       31 GETTABLEKS                       R7 R4 K12 ["TextLabel"]
       33 GETTABLEKS                       R8 R4 K13 ["Checkbox"]
       35 GETTABLEKS                       R9 R4 K14 ["DEPRECATED_Button"]
       37 GETTABLEKS                       R10 R2 K15 ["Util"]
       39 GETTABLEKS                       R10 R10 K16 ["StyleModifier"]
       41 GETIMPORT                        R11 K4 [require]
       43 GETIMPORT                        R12 K1 [script]
       45 GETTABLEKS                       R12 R12 K2 ["Parent"]
       47 GETTABLEKS                       R12 R12 K2 ["Parent"]
       49 GETTABLEKS                       R12 R12 K17 ["Constants"]
       51 CALL                             R11 1 1
       52 GETIMPORT                        R12 K4 [require]
       54 GETIMPORT                        R13 K1 [script]
       56 GETTABLEKS                       R13 R13 K2 ["Parent"]
       58 GETTABLEKS                       R13 R13 K18 ["ControlsHeaderRow"]
       60 CALL                             R12 1 1
       61 GETIMPORT                        R13 K4 [require]
       63 GETIMPORT                        R14 K1 [script]
       65 GETTABLEKS                       R14 R14 K2 ["Parent"]
       67 GETTABLEKS                       R14 R14 K19 ["GroupCollisionMatrix"]
       69 CALL                             R13 1 1
       70 GETIMPORT                        R14 K4 [require]
       72 GETIMPORT                        R15 K1 [script]
       74 GETTABLEKS                       R15 R15 K2 ["Parent"]
       76 GETTABLEKS                       R15 R15 K20 ["GroupLabelColumn"]
       78 CALL                             R14 1 1
       79 GETIMPORT                        R15 K4 [require]
       81 GETIMPORT                        R16 K1 [script]
       83 GETTABLEKS                       R16 R16 K2 ["Parent"]
       85 GETTABLEKS                       R16 R16 K21 ["GroupListView"]
       87 CALL                             R15 1 1
       88 GETIMPORT                        R16 K4 [require]
       90 GETIMPORT                        R17 K1 [script]
       92 GETTABLEKS                       R17 R17 K2 ["Parent"]
       94 GETTABLEKS                       R17 R17 K22 ["ListHeader"]
       96 CALL                             R16 1 1
       97 GETIMPORT                        R17 K4 [require]
       99 GETIMPORT                        R18 K1 [script]
      101 GETTABLEKS                       R18 R18 K2 ["Parent"]
      103 GETTABLEKS                       R18 R18 K23 ["TableHeader"]
      105 CALL                             R17 1 1
      106 GETIMPORT                        R18 K4 [require]
      108 GETIMPORT                        R19 K1 [script]
      110 GETTABLEKS                       R19 R19 K2 ["Parent"]
      112 GETTABLEKS                       R19 R19 K24 ["GroupRenameDialog"]
      114 CALL                             R18 1 1
      115 GETTABLEKS                       R19 R2 K9 ["UI"]
      117 GETTABLEKS                       R19 R19 K25 ["SelectInput"]
      119 GETIMPORT                        R20 K4 [require]
      121 GETIMPORT                        R21 K1 [script]
      123 GETTABLEKS                       R21 R21 K2 ["Parent"]
      125 GETTABLEKS                       R21 R21 K2 ["Parent"]
      127 GETTABLEKS                       R21 R21 K26 ["getEngineFeatureMultiworldCollisionGroups"]
      129 CALL                             R20 1 1
      130 GETTABLEKS                       R21 R1 K27 ["Component"]
      132 LOADK                            R23 K28 ["MainView"]
      133 NAMECALL                         R21 R21 K29 ["extend"]
      135 CALL                             R21 2 1
      136 DUPCLOSURE                       R22 K30 [PROTO_0]
      137 SETGLOBAL                        R22 K31 ["hover"]
      139 GETTABLEKS                       R22 R1 K32 ["PureComponent"]
      141 LOADK                            R24 K33 ["WorldRow"]
      142 NAMECALL                         R22 R22 K29 ["extend"]
      144 CALL                             R22 2 1
      145 DUPCLOSURE                       R23 K34 [PROTO_3]
      146 SETTABLEKS                       R23 R22 K35 ["init"]
      148 DUPCLOSURE                       R23 K36 [PROTO_4]
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R7
      151 SETTABLEKS                       R23 R22 K37 ["render"]
      153 DUPCLOSURE                       R23 K38 [PROTO_5]
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R22
      159 DUPCLOSURE                       R24 K39 [PROTO_13]
      160 CAPTURE                          VAL R20
      161 SETTABLEKS                       R24 R21 K35 ["init"]
      163 DUPCLOSURE                       R24 K40 [PROTO_16]
      164 CAPTURE                          VAL R1
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R5
      167 CAPTURE                          VAL R11
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R15
      171 CAPTURE                          VAL R20
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R13
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R23
      177 CAPTURE                          VAL R22
      178 CAPTURE                          VAL R8
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R18
      181 SETTABLEKS                       R24 R21 K37 ["render"]
      183 GETTABLEKS                       R24 R3 K41 ["withContext"]
      185 DUPTABLE                         R25 K44 [{"Stylizer", "Localization"}]
      186 GETTABLEKS                       R26 R3 K42 ["Stylizer"]
      188 SETTABLEKS                       R26 R25 K42 ["Stylizer"]
      190 GETTABLEKS                       R26 R3 K43 ["Localization"]
      192 SETTABLEKS                       R26 R25 K43 ["Localization"]
      194 CALL                             R24 1 1
      195 MOVE                             R25 R21
      196 CALL                             R24 1 1
      197 MOVE                             R21 R24
      198 RETURN                           R21 1
