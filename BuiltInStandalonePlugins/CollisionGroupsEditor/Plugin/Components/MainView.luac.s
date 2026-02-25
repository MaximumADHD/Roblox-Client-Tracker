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
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K3 ["rowHover"]
       11 SETTABLEKS                       R0 R3 K4 ["Gui"]
       13 RETURN                           R0 0
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K3 ["rowHover"]
       17 GETTABLEKS                       R3 R4 K4 ["Gui"]
       19 JUMPIFNOTEQ                      R3 R0 ; [+9]
       21 GETUPVAL                         R3 0
       22 DUPTABLE                         R5 K1 [{"RowHovered"}]
       23 LOADK                            R6 K5 [""]
       24 SETTABLEKS                       R6 R5 K0 ["RowHovered"]
       26 NAMECALL                         R3 R3 K2 ["setState"]
       28 CALL                             R3 2 0
       29 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R2 ; [+13]
        1 GETUPVAL                         R3 0
        2 DUPTABLE                         R5 K1 [{"ColHovered"}]
        3 SETTABLEKS                       R1 R5 K0 ["ColHovered"]
        5 NAMECALL                         R3 R3 K2 ["setState"]
        7 CALL                             R3 2 0
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K3 ["colHover"]
       11 SETTABLEKS                       R0 R3 K4 ["Gui"]
       13 RETURN                           R0 0
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K3 ["colHover"]
       17 GETTABLEKS                       R3 R4 K4 ["Gui"]
       19 JUMPIFNOTEQ                      R3 R0 ; [+9]
       21 GETUPVAL                         R3 0
       22 DUPTABLE                         R5 K1 [{"ColHovered"}]
       23 LOADK                            R6 K5 [""]
       24 SETTABLEKS                       R6 R5 K0 ["ColHovered"]
       26 NAMECALL                         R3 R3 K2 ["setState"]
       28 CALL                             R3 2 0
       29 RETURN                           R0 0

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
       34 DUPTABLE                         R1 K14 [{"ScrollPositionX", "ScrollPositionY", "RowHovered", "ColHovered", "ToggleListView"}]
       35 LOADN                            R2 0
       36 SETTABLEKS                       R2 R1 K9 ["ScrollPositionX"]
       38 LOADN                            R2 0
       39 SETTABLEKS                       R2 R1 K10 ["ScrollPositionY"]
       41 LOADK                            R2 K1 [""]
       42 SETTABLEKS                       R2 R1 K11 ["RowHovered"]
       44 LOADK                            R2 K1 [""]
       45 SETTABLEKS                       R2 R1 K12 ["ColHovered"]
       47 LOADB                            R2 1
       48 SETTABLEKS                       R2 R1 K13 ["ToggleListView"]
       50 SETTABLEKS                       R1 R0 K15 ["state"]
       52 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R3 K2 ["MainView"]
        6 DUPTABLE                         R3 K6 [{"ControlsHeaderRow", "Header", "Middle"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K7 ["createElement"]
       10 GETUPVAL                         R5 1
       11 DUPTABLE                         R6 K17 [{"OnGroupAdded", "OnGroupDeleted", "OnGroupRenamed", "UISelectedId", "OnViewModeToggled", "ToggleListView", "LayoutOrder", "Groups", "Window"}]
       12 GETTABLEKS                       R7 R1 K8 ["OnGroupAdded"]
       14 SETTABLEKS                       R7 R6 K8 ["OnGroupAdded"]
       16 GETTABLEKS                       R7 R1 K9 ["OnGroupDeleted"]
       18 SETTABLEKS                       R7 R6 K9 ["OnGroupDeleted"]
       20 GETTABLEKS                       R7 R1 K10 ["OnGroupRenamed"]
       22 SETTABLEKS                       R7 R6 K10 ["OnGroupRenamed"]
       24 GETTABLEKS                       R7 R1 K11 ["UISelectedId"]
       26 SETTABLEKS                       R7 R6 K11 ["UISelectedId"]
       28 GETTABLEKS                       R7 R0 K18 ["onViewModeToggled"]
       30 SETTABLEKS                       R7 R6 K12 ["OnViewModeToggled"]
       32 GETTABLEKS                       R8 R0 K19 ["state"]
       34 GETTABLEKS                       R7 R8 K13 ["ToggleListView"]
       36 SETTABLEKS                       R7 R6 K13 ["ToggleListView"]
       38 LOADN                            R7 1
       39 SETTABLEKS                       R7 R6 K14 ["LayoutOrder"]
       41 GETTABLEKS                       R7 R1 K15 ["Groups"]
       43 SETTABLEKS                       R7 R6 K15 ["Groups"]
       45 GETTABLEKS                       R7 R1 K16 ["Window"]
       47 SETTABLEKS                       R7 R6 K16 ["Window"]
       49 CALL                             R4 2 1
       50 SETTABLEKS                       R4 R3 K3 ["ControlsHeaderRow"]
       52 GETUPVAL                         R5 0
       53 GETTABLEKS                       R4 R5 K7 ["createElement"]
       55 GETUPVAL                         R5 2
       56 DUPTABLE                         R6 K23 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
       57 GETIMPORT                        R7 K26 [UDim2.new]
       59 LOADN                            R8 1
       60 LOADN                            R9 0
       61 LOADN                            R10 0
       62 GETUPVAL                         R12 3
       63 GETTABLEKS                       R11 R12 K27 ["GroupRowHeight"]
       65 CALL                             R7 4 1
       66 SETTABLEKS                       R7 R6 K20 ["Size"]
       68 LOADN                            R7 2
       69 SETTABLEKS                       R7 R6 K14 ["LayoutOrder"]
       71 GETIMPORT                        R7 K31 [Enum.FillDirection.Horizontal]
       73 SETTABLEKS                       R7 R6 K21 ["Layout"]
       75 GETIMPORT                        R7 K33 [Enum.HorizontalAlignment.Left]
       77 SETTABLEKS                       R7 R6 K22 ["HorizontalAlignment"]
       79 DUPTABLE                         R7 K36 [{"TableHeader", "ListHeader"}]
       80 GETUPVAL                         R9 0
       81 GETTABLEKS                       R8 R9 K7 ["createElement"]
       83 GETUPVAL                         R9 4
       84 DUPTABLE                         R10 K40 [{"LayoutOrder", "Groups", "ColHovered", "OnColHovered", "ScrollPositionX"}]
       85 GETTABLEKS                       R13 R0 K19 ["state"]
       87 GETTABLEKS                       R12 R13 K13 ["ToggleListView"]
       89 JUMPIFNOT                        R12 ; [+2]
       90 LOADN                            R11 2
       91 JUMP                             ; [+1]
       92 LOADN                            R11 1
       93 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
       95 GETTABLEKS                       R11 R1 K15 ["Groups"]
       97 SETTABLEKS                       R11 R10 K15 ["Groups"]
       99 GETTABLEKS                       R12 R0 K19 ["state"]
      101 GETTABLEKS                       R11 R12 K37 ["ColHovered"]
      103 SETTABLEKS                       R11 R10 K37 ["ColHovered"]
      105 GETTABLEKS                       R11 R0 K41 ["onColHovered"]
      107 SETTABLEKS                       R11 R10 K38 ["OnColHovered"]
      109 GETTABLEKS                       R12 R0 K19 ["state"]
      111 GETTABLEKS                       R11 R12 K39 ["ScrollPositionX"]
      113 SETTABLEKS                       R11 R10 K39 ["ScrollPositionX"]
      115 CALL                             R8 2 1
      116 SETTABLEKS                       R8 R7 K34 ["TableHeader"]
      118 GETUPVAL                         R9 0
      119 GETTABLEKS                       R8 R9 K7 ["createElement"]
      121 GETUPVAL                         R9 5
      122 DUPTABLE                         R10 K44 [{"LayoutOrder", "SelectedGroupName", "GroupCount"}]
      123 GETTABLEKS                       R13 R0 K19 ["state"]
      125 GETTABLEKS                       R12 R13 K13 ["ToggleListView"]
      127 JUMPIFNOT                        R12 ; [+2]
      128 LOADN                            R11 1
      129 JUMP                             ; [+1]
      130 LOADN                            R11 2
      131 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
      133 GETUPVAL                         R13 6
      134 GETTABLEKS                       R12 R13 K45 ["getSelectedGroup"]
      136 GETTABLEKS                       R13 R1 K15 ["Groups"]
      138 CALL                             R12 1 1
      139 JUMPIFEQKS                       R12 K46 [""] ; [+10]
      141 GETUPVAL                         R13 6
      142 GETTABLEKS                       R12 R13 K45 ["getSelectedGroup"]
      144 GETTABLEKS                       R13 R1 K15 ["Groups"]
      146 CALL                             R12 1 1
      147 GETTABLEKS                       R11 R12 K47 ["Name"]
      149 JUMP                             ; [+1]
      150 LOADK                            R11 K46 [""]
      151 SETTABLEKS                       R11 R10 K42 ["SelectedGroupName"]
      153 GETTABLEKS                       R12 R1 K15 ["Groups"]
      155 LENGTH                           R11 R12
      156 SETTABLEKS                       R11 R10 K43 ["GroupCount"]
      158 CALL                             R8 2 1
      159 SETTABLEKS                       R8 R7 K35 ["ListHeader"]
      161 CALL                             R4 3 1
      162 SETTABLEKS                       R4 R3 K4 ["Header"]
      164 GETUPVAL                         R5 0
      165 GETTABLEKS                       R4 R5 K7 ["createElement"]
      167 GETUPVAL                         R5 2
      168 DUPTABLE                         R6 K49 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
      169 GETTABLEKS                       R7 R2 K50 ["MiddlePaneSize"]
      171 SETTABLEKS                       R7 R6 K20 ["Size"]
      173 LOADN                            R7 3
      174 SETTABLEKS                       R7 R6 K14 ["LayoutOrder"]
      176 GETIMPORT                        R7 K31 [Enum.FillDirection.Horizontal]
      178 SETTABLEKS                       R7 R6 K21 ["Layout"]
      180 GETIMPORT                        R7 K33 [Enum.HorizontalAlignment.Left]
      182 SETTABLEKS                       R7 R6 K22 ["HorizontalAlignment"]
      184 GETIMPORT                        R7 K52 [Enum.VerticalAlignment.Top]
      186 SETTABLEKS                       R7 R6 K48 ["VerticalAlignment"]
      188 DUPTABLE                         R7 K56 [{"GroupLabelColumn", "GridFrame", "ListFrame"}]
      189 GETUPVAL                         R9 0
      190 GETTABLEKS                       R8 R9 K7 ["createElement"]
      192 GETUPVAL                         R9 7
      193 DUPTABLE                         R10 K60 [{"LayoutOrder", "Groups", "Window", "RowHovered", "OnRowHovered", "ScrollPositionY", "ToggleListView"}]
      194 LOADN                            R11 1
      195 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
      197 GETTABLEKS                       R11 R1 K15 ["Groups"]
      199 SETTABLEKS                       R11 R10 K15 ["Groups"]
      201 GETTABLEKS                       R11 R1 K16 ["Window"]
      203 SETTABLEKS                       R11 R10 K16 ["Window"]
      205 GETTABLEKS                       R12 R0 K19 ["state"]
      207 GETTABLEKS                       R11 R12 K57 ["RowHovered"]
      209 SETTABLEKS                       R11 R10 K57 ["RowHovered"]
      211 GETTABLEKS                       R11 R0 K61 ["onRowHovered"]
      213 SETTABLEKS                       R11 R10 K58 ["OnRowHovered"]
      215 GETTABLEKS                       R12 R0 K19 ["state"]
      217 GETTABLEKS                       R11 R12 K59 ["ScrollPositionY"]
      219 SETTABLEKS                       R11 R10 K59 ["ScrollPositionY"]
      221 GETTABLEKS                       R12 R0 K19 ["state"]
      223 GETTABLEKS                       R11 R12 K13 ["ToggleListView"]
      225 SETTABLEKS                       R11 R10 K13 ["ToggleListView"]
      227 CALL                             R8 2 1
      228 SETTABLEKS                       R8 R7 K53 ["GroupLabelColumn"]
      230 GETUPVAL                         R9 0
      231 GETTABLEKS                       R8 R9 K7 ["createElement"]
      233 GETUPVAL                         R9 8
      234 DUPTABLE                         R10 K66 [{"Size", "AutomaticCanvasSize", "ScrollingDirection", "LayoutOrder", "OnScrollUpdate", "Layout", "Padding"}]
      235 GETTABLEKS                       R11 R2 K67 ["GridFrameSize"]
      237 SETTABLEKS                       R11 R10 K20 ["Size"]
      239 GETIMPORT                        R11 K70 [Enum.AutomaticSize.XY]
      241 SETTABLEKS                       R11 R10 K62 ["AutomaticCanvasSize"]
      243 GETIMPORT                        R11 K71 [Enum.ScrollingDirection.XY]
      245 SETTABLEKS                       R11 R10 K63 ["ScrollingDirection"]
      247 GETTABLEKS                       R13 R0 K19 ["state"]
      249 GETTABLEKS                       R12 R13 K13 ["ToggleListView"]
      251 JUMPIFNOT                        R12 ; [+2]
      252 LOADN                            R11 3
      253 JUMP                             ; [+1]
      254 LOADN                            R11 2
      255 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
      257 GETTABLEKS                       R11 R0 K72 ["onScrolled"]
      259 SETTABLEKS                       R11 R10 K64 ["OnScrollUpdate"]
      261 GETIMPORT                        R11 K31 [Enum.FillDirection.Horizontal]
      263 SETTABLEKS                       R11 R10 K21 ["Layout"]
      265 LOADN                            R11 0
      266 SETTABLEKS                       R11 R10 K65 ["Padding"]
      268 DUPTABLE                         R11 K74 [{"GroupCollisionMatrix"}]
      269 GETTABLEKS                       R14 R0 K19 ["state"]
      271 GETTABLEKS                       R13 R14 K13 ["ToggleListView"]
      273 NOT                              R12 R13
      274 JUMPIFNOT                        R12 ; [+24]
      275 GETUPVAL                         R13 0
      276 GETTABLEKS                       R12 R13 K7 ["createElement"]
      278 GETUPVAL                         R13 9
      279 DUPTABLE                         R14 K75 [{"Groups", "RowHovered", "OnColHovered", "OnRowHovered"}]
      280 GETTABLEKS                       R15 R1 K15 ["Groups"]
      282 SETTABLEKS                       R15 R14 K15 ["Groups"]
      284 GETTABLEKS                       R16 R0 K19 ["state"]
      286 GETTABLEKS                       R15 R16 K57 ["RowHovered"]
      288 SETTABLEKS                       R15 R14 K57 ["RowHovered"]
      290 GETTABLEKS                       R15 R0 K41 ["onColHovered"]
      292 SETTABLEKS                       R15 R14 K38 ["OnColHovered"]
      294 GETTABLEKS                       R15 R0 K61 ["onRowHovered"]
      296 SETTABLEKS                       R15 R14 K58 ["OnRowHovered"]
      298 CALL                             R12 2 1
      299 SETTABLEKS                       R12 R11 K73 ["GroupCollisionMatrix"]
      301 CALL                             R8 3 1
      302 SETTABLEKS                       R8 R7 K54 ["GridFrame"]
      304 GETTABLEKS                       R9 R0 K19 ["state"]
      306 GETTABLEKS                       R8 R9 K13 ["ToggleListView"]
      308 JUMPIFNOT                        R8 ; [+63]
      309 GETUPVAL                         R9 0
      310 GETTABLEKS                       R8 R9 K7 ["createElement"]
      312 GETUPVAL                         R9 8
      313 DUPTABLE                         R10 K76 [{"Size", "AutomaticCanvasSize", "LayoutOrder", "Layout", "ScrollingDirection"}]
      314 GETTABLEKS                       R11 R2 K77 ["ListFrameSize"]
      316 SETTABLEKS                       R11 R10 K20 ["Size"]
      318 GETIMPORT                        R11 K70 [Enum.AutomaticSize.XY]
      320 SETTABLEKS                       R11 R10 K62 ["AutomaticCanvasSize"]
      322 GETTABLEKS                       R13 R0 K19 ["state"]
      324 GETTABLEKS                       R12 R13 K13 ["ToggleListView"]
      326 JUMPIFNOT                        R12 ; [+2]
      327 LOADN                            R11 2
      328 JUMP                             ; [+1]
      329 LOADN                            R11 3
      330 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
      332 GETIMPORT                        R11 K31 [Enum.FillDirection.Horizontal]
      334 SETTABLEKS                       R11 R10 K21 ["Layout"]
      336 GETIMPORT                        R11 K79 [Enum.ScrollingDirection.Y]
      338 SETTABLEKS                       R11 R10 K63 ["ScrollingDirection"]
      340 DUPTABLE                         R11 K81 [{"GroupListView"}]
      341 GETUPVAL                         R13 0
      342 GETTABLEKS                       R12 R13 K7 ["createElement"]
      344 GETUPVAL                         R13 6
      345 DUPTABLE                         R14 K82 [{"Groups", "UISelectedId", "RowHovered", "OnColHovered", "OnRowHovered"}]
      346 GETTABLEKS                       R15 R1 K15 ["Groups"]
      348 SETTABLEKS                       R15 R14 K15 ["Groups"]
      350 GETTABLEKS                       R15 R1 K11 ["UISelectedId"]
      352 SETTABLEKS                       R15 R14 K11 ["UISelectedId"]
      354 GETTABLEKS                       R16 R0 K19 ["state"]
      356 GETTABLEKS                       R15 R16 K57 ["RowHovered"]
      358 SETTABLEKS                       R15 R14 K57 ["RowHovered"]
      360 GETTABLEKS                       R15 R0 K41 ["onColHovered"]
      362 SETTABLEKS                       R15 R14 K38 ["OnColHovered"]
      364 GETTABLEKS                       R15 R0 K61 ["onRowHovered"]
      366 SETTABLEKS                       R15 R14 K58 ["OnRowHovered"]
      368 CALL                             R12 2 1
      369 SETTABLEKS                       R12 R11 K80 ["GroupListView"]
      371 CALL                             R8 3 1
      372 SETTABLEKS                       R8 R7 K55 ["ListFrame"]
      374 CALL                             R4 3 1
      375 SETTABLEKS                       R4 R3 K5 ["Middle"]
      377 GETUPVAL                         R5 0
      378 GETTABLEKS                       R4 R5 K7 ["createElement"]
      380 GETUPVAL                         R5 10
      381 DUPTABLE                         R6 K85 [{"Enabled", "OnClose"}]
      382 GETTABLEKS                       R7 R1 K86 ["GroupRenameDialogOpen"]
      384 SETTABLEKS                       R7 R6 K83 ["Enabled"]
      386 GETTABLEKS                       R7 R1 K87 ["OnGroupRenameDialogClosed"]
      388 SETTABLEKS                       R7 R6 K84 ["OnClose"]
      390 CALL                             R4 2 1
      391 SETTABLEKS                       R4 R3 K88 ["GroupRenameDialog"]
      393 GETUPVAL                         R5 0
      394 GETTABLEKS                       R4 R5 K7 ["createElement"]
      396 GETUPVAL                         R5 2
      397 DUPTABLE                         R6 K90 [{"Style", "Layout", "VerticalAlignment"}]
      398 LOADK                            R7 K91 ["Box"]
      399 SETTABLEKS                       R7 R6 K89 ["Style"]
      401 GETIMPORT                        R7 K93 [Enum.FillDirection.Vertical]
      403 SETTABLEKS                       R7 R6 K21 ["Layout"]
      405 GETIMPORT                        R7 K52 [Enum.VerticalAlignment.Top]
      407 SETTABLEKS                       R7 R6 K48 ["VerticalAlignment"]
      409 MOVE                             R7 R3
      410 CALL                             R4 3 -1
      411 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R2 K9 ["UI"]
       27 GETTABLEKS                       R5 R4 K10 ["Pane"]
       29 GETTABLEKS                       R6 R4 K11 ["ScrollingFrame"]
       31 GETIMPORT                        R7 K4 [require]
       33 GETIMPORT                        R11 K1 [script]
       35 GETTABLEKS                       R10 R11 K2 ["Parent"]
       37 GETTABLEKS                       R9 R10 K2 ["Parent"]
       39 GETTABLEKS                       R8 R9 K12 ["Constants"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K4 [require]
       44 GETIMPORT                        R11 K1 [script]
       46 GETTABLEKS                       R10 R11 K2 ["Parent"]
       48 GETTABLEKS                       R9 R10 K13 ["ControlsHeaderRow"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K4 [require]
       53 GETIMPORT                        R12 K1 [script]
       55 GETTABLEKS                       R11 R12 K2 ["Parent"]
       57 GETTABLEKS                       R10 R11 K14 ["GroupCollisionMatrix"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K4 [require]
       62 GETIMPORT                        R13 K1 [script]
       64 GETTABLEKS                       R12 R13 K2 ["Parent"]
       66 GETTABLEKS                       R11 R12 K15 ["GroupLabelColumn"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K4 [require]
       71 GETIMPORT                        R14 K1 [script]
       73 GETTABLEKS                       R13 R14 K2 ["Parent"]
       75 GETTABLEKS                       R12 R13 K16 ["GroupListView"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K4 [require]
       80 GETIMPORT                        R15 K1 [script]
       82 GETTABLEKS                       R14 R15 K2 ["Parent"]
       84 GETTABLEKS                       R13 R14 K17 ["ListHeader"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K4 [require]
       89 GETIMPORT                        R16 K1 [script]
       91 GETTABLEKS                       R15 R16 K2 ["Parent"]
       93 GETTABLEKS                       R14 R15 K18 ["TableHeader"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K4 [require]
       98 GETIMPORT                        R17 K1 [script]
      100 GETTABLEKS                       R16 R17 K2 ["Parent"]
      102 GETTABLEKS                       R15 R16 K19 ["GroupRenameDialog"]
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
