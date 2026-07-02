PROTO_0:
        0 DUPTABLE                         R2 K2 [{"Key", "Gui"}]
        1 SETTABLEKS                       R0 R2 K0 ["Key"]
        3 SETTABLEKS                       R1 R2 K1 ["Gui"]
        5 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"RowHovered"}]
        2 SETTABLEKS                       R0 R3 K0 ["RowHovered"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"ScrollPositionX", "ScrollPositionY"}]
        2 GETTABLEKS                       R4 R0 K3 ["X"]
        4 SETTABLEKS                       R4 R3 K0 ["ScrollPositionX"]
        6 GETTABLEKS                       R4 R0 K4 ["Y"]
        8 SETTABLEKS                       R4 R3 K1 ["ScrollPositionY"]
       10 NAMECALL                         R1 R1 K5 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"ToggleListView"}]
        1 GETTABLEKS                       R3 R0 K0 ["ToggleListView"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["ToggleListView"]
        6 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_5]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_7:
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
       34 DUPTABLE                         R1 K16 [{["ScrollPositionX"] = 0, ["ScrollPositionY"] = 0, ["RowHovered"] = "", ["ColHovered"] = "", ["ToggleListView"] = True}]
       35 SETTABLEKS                       R1 R0 K17 ["state"]
       37 RETURN                           R0 0

PROTO_8:
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
      163 GETTABLEKS                       R7 R2 K53 ["MiddlePaneSize"]
      165 SETTABLEKS                       R7 R6 K21 ["Size"]
      167 GETIMPORT                        R7 K33 [Enum.FillDirection.Horizontal]
      169 SETTABLEKS                       R7 R6 K23 ["Layout"]
      171 GETIMPORT                        R7 K35 [Enum.HorizontalAlignment.Left]
      173 SETTABLEKS                       R7 R6 K24 ["HorizontalAlignment"]
      175 GETIMPORT                        R7 K55 [Enum.VerticalAlignment.Top]
      177 SETTABLEKS                       R7 R6 K51 ["VerticalAlignment"]
      179 DUPTABLE                         R7 K59 [{"GroupLabelColumn", "GridFrame", "ListFrame"}]
      180 GETUPVAL                         R8 0
      181 GETTABLEKS                       R8 R8 K7 ["createElement"]
      183 GETUPVAL                         R9 7
      184 DUPTABLE                         R10 K63 [{["LayoutOrder"] = 1, ["Groups"], ["Window"], ["RowHovered"], ["OnRowHovered"], ["ScrollPositionY"], ["ToggleListView"]}]
      185 GETTABLEKS                       R11 R1 K16 ["Groups"]
      187 SETTABLEKS                       R11 R10 K16 ["Groups"]
      189 GETTABLEKS                       R11 R1 K17 ["Window"]
      191 SETTABLEKS                       R11 R10 K17 ["Window"]
      193 GETTABLEKS                       R11 R0 K20 ["state"]
      195 GETTABLEKS                       R11 R11 K60 ["RowHovered"]
      197 SETTABLEKS                       R11 R10 K60 ["RowHovered"]
      199 GETTABLEKS                       R11 R0 K64 ["onRowHovered"]
      201 SETTABLEKS                       R11 R10 K61 ["OnRowHovered"]
      203 GETTABLEKS                       R11 R0 K20 ["state"]
      205 GETTABLEKS                       R11 R11 K62 ["ScrollPositionY"]
      207 SETTABLEKS                       R11 R10 K62 ["ScrollPositionY"]
      209 GETTABLEKS                       R11 R0 K20 ["state"]
      211 GETTABLEKS                       R11 R11 K13 ["ToggleListView"]
      213 SETTABLEKS                       R11 R10 K13 ["ToggleListView"]
      215 CALL                             R8 2 1
      216 SETTABLEKS                       R8 R7 K56 ["GroupLabelColumn"]
      218 GETUPVAL                         R8 0
      219 GETTABLEKS                       R8 R8 K7 ["createElement"]
      221 GETUPVAL                         R9 8
      222 DUPTABLE                         R10 K70 [{["Size"], ["AutomaticCanvasSize"], ["ScrollingDirection"], ["LayoutOrder"], ["OnScrollUpdate"], ["Layout"], ["Padding"] = 0}]
      223 GETTABLEKS                       R11 R2 K71 ["GridFrameSize"]
      225 SETTABLEKS                       R11 R10 K21 ["Size"]
      227 GETIMPORT                        R11 K74 [Enum.AutomaticSize.XY]
      229 SETTABLEKS                       R11 R10 K65 ["AutomaticCanvasSize"]
      231 GETIMPORT                        R11 K75 [Enum.ScrollingDirection.XY]
      233 SETTABLEKS                       R11 R10 K66 ["ScrollingDirection"]
      235 GETTABLEKS                       R12 R0 K20 ["state"]
      237 GETTABLEKS                       R12 R12 K13 ["ToggleListView"]
      239 JUMPIFNOT                        R12 ; [+2]
      240 LOADN                            R11 3
      241 JUMP                             ; [+1]
      242 LOADN                            R11 2
      243 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
      245 GETTABLEKS                       R11 R0 K76 ["onScrolled"]
      247 SETTABLEKS                       R11 R10 K67 ["OnScrollUpdate"]
      249 GETIMPORT                        R11 K33 [Enum.FillDirection.Horizontal]
      251 SETTABLEKS                       R11 R10 K23 ["Layout"]
      253 DUPTABLE                         R11 K78 [{"GroupCollisionMatrix"}]
      254 GETTABLEKS                       R13 R0 K20 ["state"]
      256 GETTABLEKS                       R13 R13 K13 ["ToggleListView"]
      258 NOT                              R12 R13
      259 JUMPIFNOT                        R12 ; [+24]
      260 GETUPVAL                         R12 0
      261 GETTABLEKS                       R12 R12 K7 ["createElement"]
      263 GETUPVAL                         R13 9
      264 DUPTABLE                         R14 K79 [{"Groups", "RowHovered", "OnColHovered", "OnRowHovered"}]
      265 GETTABLEKS                       R15 R1 K16 ["Groups"]
      267 SETTABLEKS                       R15 R14 K16 ["Groups"]
      269 GETTABLEKS                       R15 R0 K20 ["state"]
      271 GETTABLEKS                       R15 R15 K60 ["RowHovered"]
      273 SETTABLEKS                       R15 R14 K60 ["RowHovered"]
      275 GETTABLEKS                       R15 R0 K43 ["onColHovered"]
      277 SETTABLEKS                       R15 R14 K40 ["OnColHovered"]
      279 GETTABLEKS                       R15 R0 K64 ["onRowHovered"]
      281 SETTABLEKS                       R15 R14 K61 ["OnRowHovered"]
      283 CALL                             R12 2 1
      284 SETTABLEKS                       R12 R11 K77 ["GroupCollisionMatrix"]
      286 CALL                             R8 3 1
      287 SETTABLEKS                       R8 R7 K57 ["GridFrame"]
      289 GETTABLEKS                       R8 R0 K20 ["state"]
      291 GETTABLEKS                       R8 R8 K13 ["ToggleListView"]
      293 JUMPIFNOT                        R8 ; [+63]
      294 GETUPVAL                         R8 0
      295 GETTABLEKS                       R8 R8 K7 ["createElement"]
      297 GETUPVAL                         R9 8
      298 DUPTABLE                         R10 K80 [{"Size", "AutomaticCanvasSize", "LayoutOrder", "Layout", "ScrollingDirection"}]
      299 GETTABLEKS                       R11 R2 K81 ["ListFrameSize"]
      301 SETTABLEKS                       R11 R10 K21 ["Size"]
      303 GETIMPORT                        R11 K74 [Enum.AutomaticSize.XY]
      305 SETTABLEKS                       R11 R10 K65 ["AutomaticCanvasSize"]
      307 GETTABLEKS                       R12 R0 K20 ["state"]
      309 GETTABLEKS                       R12 R12 K13 ["ToggleListView"]
      311 JUMPIFNOT                        R12 ; [+2]
      312 LOADN                            R11 2
      313 JUMP                             ; [+1]
      314 LOADN                            R11 3
      315 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
      317 GETIMPORT                        R11 K33 [Enum.FillDirection.Horizontal]
      319 SETTABLEKS                       R11 R10 K23 ["Layout"]
      321 GETIMPORT                        R11 K83 [Enum.ScrollingDirection.Y]
      323 SETTABLEKS                       R11 R10 K66 ["ScrollingDirection"]
      325 DUPTABLE                         R11 K85 [{"GroupListView"}]
      326 GETUPVAL                         R12 0
      327 GETTABLEKS                       R12 R12 K7 ["createElement"]
      329 GETUPVAL                         R13 6
      330 DUPTABLE                         R14 K86 [{"Groups", "UISelectedId", "RowHovered", "OnColHovered", "OnRowHovered"}]
      331 GETTABLEKS                       R15 R1 K16 ["Groups"]
      333 SETTABLEKS                       R15 R14 K16 ["Groups"]
      335 GETTABLEKS                       R15 R1 K11 ["UISelectedId"]
      337 SETTABLEKS                       R15 R14 K11 ["UISelectedId"]
      339 GETTABLEKS                       R15 R0 K20 ["state"]
      341 GETTABLEKS                       R15 R15 K60 ["RowHovered"]
      343 SETTABLEKS                       R15 R14 K60 ["RowHovered"]
      345 GETTABLEKS                       R15 R0 K43 ["onColHovered"]
      347 SETTABLEKS                       R15 R14 K40 ["OnColHovered"]
      349 GETTABLEKS                       R15 R0 K64 ["onRowHovered"]
      351 SETTABLEKS                       R15 R14 K61 ["OnRowHovered"]
      353 CALL                             R12 2 1
      354 SETTABLEKS                       R12 R11 K84 ["GroupListView"]
      356 CALL                             R8 3 1
      357 SETTABLEKS                       R8 R7 K58 ["ListFrame"]
      359 CALL                             R4 3 1
      360 SETTABLEKS                       R4 R3 K5 ["Middle"]
      362 GETUPVAL                         R4 0
      363 GETTABLEKS                       R4 R4 K7 ["createElement"]
      365 GETUPVAL                         R5 10
      366 DUPTABLE                         R6 K89 [{"Enabled", "OnClose"}]
      367 GETTABLEKS                       R7 R1 K90 ["GroupRenameDialogOpen"]
      369 SETTABLEKS                       R7 R6 K87 ["Enabled"]
      371 GETTABLEKS                       R7 R1 K91 ["OnGroupRenameDialogClosed"]
      373 SETTABLEKS                       R7 R6 K88 ["OnClose"]
      375 CALL                             R4 2 1
      376 SETTABLEKS                       R4 R3 K92 ["GroupRenameDialog"]
      378 GETUPVAL                         R4 0
      379 GETTABLEKS                       R4 R4 K7 ["createElement"]
      381 GETUPVAL                         R5 2
      382 DUPTABLE                         R6 K95 [{["Style"] = "Box", ["Layout"], ["VerticalAlignment"]}]
      383 GETIMPORT                        R7 K97 [Enum.FillDirection.Vertical]
      385 SETTABLEKS                       R7 R6 K23 ["Layout"]
      387 GETIMPORT                        R7 K55 [Enum.VerticalAlignment.Top]
      389 SETTABLEKS                       R7 R6 K51 ["VerticalAlignment"]
      391 MOVE                             R7 R3
      392 CALL                             R4 3 -1
      393 RETURN                           R4 -1

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
       31 GETIMPORT                        R7 K4 [require]
       33 GETIMPORT                        R8 K1 [script]
       35 GETTABLEKS                       R8 R8 K2 ["Parent"]
       37 GETTABLEKS                       R8 R8 K2 ["Parent"]
       39 GETTABLEKS                       R8 R8 K12 ["Constants"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K4 [require]
       44 GETIMPORT                        R9 K1 [script]
       46 GETTABLEKS                       R9 R9 K2 ["Parent"]
       48 GETTABLEKS                       R9 R9 K13 ["ControlsHeaderRow"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K4 [require]
       53 GETIMPORT                        R10 K1 [script]
       55 GETTABLEKS                       R10 R10 K2 ["Parent"]
       57 GETTABLEKS                       R10 R10 K14 ["GroupCollisionMatrix"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K4 [require]
       62 GETIMPORT                        R11 K1 [script]
       64 GETTABLEKS                       R11 R11 K2 ["Parent"]
       66 GETTABLEKS                       R11 R11 K15 ["GroupLabelColumn"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K4 [require]
       71 GETIMPORT                        R12 K1 [script]
       73 GETTABLEKS                       R12 R12 K2 ["Parent"]
       75 GETTABLEKS                       R12 R12 K16 ["GroupListView"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K4 [require]
       80 GETIMPORT                        R13 K1 [script]
       82 GETTABLEKS                       R13 R13 K2 ["Parent"]
       84 GETTABLEKS                       R13 R13 K17 ["ListHeader"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K4 [require]
       89 GETIMPORT                        R14 K1 [script]
       91 GETTABLEKS                       R14 R14 K2 ["Parent"]
       93 GETTABLEKS                       R14 R14 K18 ["TableHeader"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K4 [require]
       98 GETIMPORT                        R15 K1 [script]
      100 GETTABLEKS                       R15 R15 K2 ["Parent"]
      102 GETTABLEKS                       R15 R15 K19 ["GroupRenameDialog"]
      104 CALL                             R14 1 1
      105 GETTABLEKS                       R15 R1 K20 ["Component"]
      107 LOADK                            R17 K21 ["MainView"]
      108 NAMECALL                         R15 R15 K22 ["extend"]
      110 CALL                             R15 2 1
      111 DUPCLOSURE                       R16 K23 [PROTO_0]
      112 SETGLOBAL                        R16 K24 ["hover"]
      114 DUPCLOSURE                       R16 K25 [PROTO_7]
      115 SETTABLEKS                       R16 R15 K26 ["init"]
      117 DUPCLOSURE                       R16 K27 [PROTO_8]
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R14
      129 SETTABLEKS                       R16 R15 K28 ["render"]
      131 GETTABLEKS                       R16 R3 K29 ["withContext"]
      133 DUPTABLE                         R17 K32 [{"Stylizer", "Localization"}]
      134 GETTABLEKS                       R18 R3 K30 ["Stylizer"]
      136 SETTABLEKS                       R18 R17 K30 ["Stylizer"]
      138 GETTABLEKS                       R18 R3 K31 ["Localization"]
      140 SETTABLEKS                       R18 R17 K31 ["Localization"]
      142 CALL                             R16 1 1
      143 MOVE                             R17 R15
      144 CALL                             R16 1 1
      145 MOVE                             R15 R16
      146 RETURN                           R15 1
