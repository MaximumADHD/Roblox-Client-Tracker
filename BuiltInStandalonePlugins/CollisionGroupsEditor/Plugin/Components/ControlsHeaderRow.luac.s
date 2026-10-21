PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"editing"}]
        2 SETTABLEKS                       R0 R3 K0 ["editing"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["textButtonPaneRef"]
        3 NAMECALL                         R0 R0 K1 ["getValue"]
        5 CALL                             R0 1 1
        6 JUMPIF                           R0 ; [+2]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K2 ["AbsoluteSize"]
       11 GETTABLEKS                       R1 R1 K3 ["X"]
       13 LOADNIL                          R2
       14 GETUPVAL                         R4 1
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K4 ["ControlsHeaderButtonWidth"]
       18 ADD                              R3 R4 R5
       19 JUMPIFNOTLT                      R1 R3 ; [+13]
       21 LOADN                            R4 0
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K4 ["ControlsHeaderButtonWidth"]
       25 SUB                              R5 R1 R6
       26 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       28 GETIMPORT                        R3 K7 [math.max]
       30 CALL                             R3 2 1
       31 MOVE                             R2 R3
       32 JUMP                             ; [+1]
       33 GETUPVAL                         R2 1
       34 DUPTABLE                         R3 K9 [{"buttonSize"}]
       35 SETTABLEKS                       R2 R3 K8 ["buttonSize"]
       37 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 NAMECALL                         R0 R0 K0 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["textButtonPaneRef"]
        6 DUPTABLE                         R1 K5 [{["editing"] = False, ["buttonSize"]}]
        7 GETUPVAL                         R2 1
        8 SETTABLEKS                       R2 R1 K4 ["buttonSize"]
       10 SETTABLEKS                       R1 R0 K6 ["state"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K7 ["onEditingChanged"]
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U2
       20 SETTABLEKS                       R1 R0 K8 ["updateButtonFlexSize"]
       22 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R3 K3 ["ControlsHeaderRow"]
        8 LOADB                            R4 1
        9 LOADB                            R5 1
       10 GETTABLEKS                       R6 R1 K4 ["Groups"]
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 GETTABLEKS                       R11 R10 K5 ["UISelected"]
       17 JUMPIFNOT                        R11 ; [+17]
       18 GETTABLEKS                       R11 R10 K6 ["Name"]
       20 GETUPVAL                         R12 0
       21 GETTABLEKS                       R12 R12 K7 ["CursorGroupName"]
       23 JUMPIFNOTEQ                      R11 R12 ; [+4]
       25 LOADB                            R5 0
       26 LOADB                            R4 0
       27 JUMP                             ; [+9]
       28 GETTABLEKS                       R11 R10 K6 ["Name"]
       30 JUMPIFNOTEQKS                    R11 K8 ["Default"] ; [+6]
       32 LOADB                            R4 0
       33 LOADB                            R5 0
       34 JUMP                             ; [+2]
       35 FORGLOOP                         R6 2 ; [-21]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K9 ["createElement"]
       40 GETUPVAL                         R7 2
       41 DUPTABLE                         R8 K15 [{"Size", "Padding", "Spacing", "LayoutOrder", "Layout"}]
       42 GETTABLEKS                       R9 R3 K10 ["Size"]
       44 SETTABLEKS                       R9 R8 K10 ["Size"]
       46 GETTABLEKS                       R9 R3 K11 ["Padding"]
       48 SETTABLEKS                       R9 R8 K11 ["Padding"]
       50 GETTABLEKS                       R9 R3 K12 ["Spacing"]
       52 SETTABLEKS                       R9 R8 K12 ["Spacing"]
       54 GETTABLEKS                       R9 R1 K13 ["LayoutOrder"]
       56 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
       58 GETIMPORT                        R9 K19 [Enum.FillDirection.Horizontal]
       60 SETTABLEKS                       R9 R8 K14 ["Layout"]
       62 DUPTABLE                         R9 K22 [{"TextButtonPane", "GroupButtonsPane"}]
       63 GETUPVAL                         R10 1
       64 GETTABLEKS                       R10 R10 K9 ["createElement"]
       66 LOADK                            R11 K23 ["Frame"]
       67 NEWTABLE                         R12 8 0
       69 GETTABLEKS                       R13 R3 K20 ["TextButtonPane"]
       71 GETTABLEKS                       R13 R13 K10 ["Size"]
       73 SETTABLEKS                       R13 R12 K10 ["Size"]
       75 LOADN                            R13 1
       76 SETTABLEKS                       R13 R12 K24 ["BackgroundTransparency"]
       78 LOADN                            R13 1
       79 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
       81 GETUPVAL                         R13 1
       82 GETTABLEKS                       R13 R13 K25 ["Change"]
       84 GETTABLEKS                       R13 R13 K26 ["AbsoluteSize"]
       86 GETTABLEKS                       R14 R0 K27 ["updateButtonFlexSize"]
       88 SETTABLE                         R14 R12 R13
       89 GETUPVAL                         R13 1
       90 GETTABLEKS                       R13 R13 K28 ["Ref"]
       92 GETTABLEKS                       R14 R0 K29 ["textButtonPaneRef"]
       94 SETTABLE                         R14 R12 R13
       95 DUPTABLE                         R13 K32 [{"Layout", "ToggleViewButton", "AddGroupButton"}]
       96 GETUPVAL                         R14 1
       97 GETTABLEKS                       R14 R14 K9 ["createElement"]
       99 LOADK                            R15 K33 ["UIListLayout"]
      100 DUPTABLE                         R16 K35 [{"SortOrder", "FillDirection"}]
      101 GETIMPORT                        R17 K36 [Enum.SortOrder.LayoutOrder]
      103 SETTABLEKS                       R17 R16 K34 ["SortOrder"]
      105 GETIMPORT                        R17 K19 [Enum.FillDirection.Horizontal]
      107 SETTABLEKS                       R17 R16 K17 ["FillDirection"]
      109 CALL                             R14 2 1
      110 SETTABLEKS                       R14 R13 K14 ["Layout"]
      112 GETTABLEKS                       R15 R0 K37 ["state"]
      114 GETTABLEKS                       R15 R15 K38 ["buttonSize"]
      116 LOADN                            R16 0
      117 JUMPIFNOTLT                      R16 R15 ; [+80]
      119 GETUPVAL                         R14 1
      120 GETTABLEKS                       R14 R14 K9 ["createElement"]
      122 GETUPVAL                         R15 2
      123 DUPTABLE                         R16 K41 [{["Size"], ["LayoutOrder"] = 1, ["Layout"], ["HorizontalAlignment"]}]
      124 GETIMPORT                        R17 K44 [UDim2.new]
      126 LOADN                            R18 0
      127 GETTABLEKS                       R19 R0 K37 ["state"]
      129 GETTABLEKS                       R19 R19 K38 ["buttonSize"]
      131 LOADN                            R20 1
      132 LOADN                            R21 0
      133 CALL                             R17 4 1
      134 SETTABLEKS                       R17 R16 K10 ["Size"]
      136 GETIMPORT                        R17 K19 [Enum.FillDirection.Horizontal]
      138 SETTABLEKS                       R17 R16 K14 ["Layout"]
      140 GETIMPORT                        R17 K46 [Enum.HorizontalAlignment.Left]
      142 SETTABLEKS                       R17 R16 K40 ["HorizontalAlignment"]
      144 DUPTABLE                         R17 K48 [{"Button"}]
      145 GETUPVAL                         R18 1
      146 GETTABLEKS                       R18 R18 K9 ["createElement"]
      148 GETUPVAL                         R19 3
      149 DUPTABLE                         R20 K53 [{["Style"] = "Round", ["Text"], ["Size"], ["OnClick"]}]
      150 GETTABLEKS                       R22 R1 K54 ["ToggleListView"]
      152 JUMPIFNOT                        R22 ; [+6]
      153 LOADK                            R23 K55 ["Actions"]
      154 LOADK                            R24 K56 ["TableView"]
      155 NAMECALL                         R21 R2 K57 ["getText"]
      157 CALL                             R21 3 1
      158 JUMP                             ; [+5]
      159 LOADK                            R23 K55 ["Actions"]
      160 LOADK                            R24 K58 ["ListView"]
      161 NAMECALL                         R21 R2 K57 ["getText"]
      163 CALL                             R21 3 1
      164 SETTABLEKS                       R21 R20 K51 ["Text"]
      166 GETIMPORT                        R21 K60 [UDim2.fromOffset]
      168 LOADN                            R23 0
      169 GETTABLEKS                       R26 R0 K37 ["state"]
      171 GETTABLEKS                       R26 R26 K38 ["buttonSize"]
      173 GETTABLEKS                       R27 R3 K20 ["TextButtonPane"]
      175 GETTABLEKS                       R27 R27 K12 ["Spacing"]
      177 SUB                              R25 R26 R27
      178 ADDK                             R24 R25 K61 [2]
      179 FASTCALL2                        MATH_MAX R23 R24 ; [+3]
      181 GETIMPORT                        R22 K64 [math.max]
      183 CALL                             R22 2 1
      184 GETTABLEKS                       R23 R3 K65 ["ButtonHeight"]
      186 CALL                             R21 2 1
      187 SETTABLEKS                       R21 R20 K10 ["Size"]
      189 GETTABLEKS                       R21 R1 K66 ["OnViewModeToggled"]
      191 SETTABLEKS                       R21 R20 K52 ["OnClick"]
      193 CALL                             R18 2 1
      194 SETTABLEKS                       R18 R17 K47 ["Button"]
      196 CALL                             R14 3 1
      197 JUMPIF                           R14 ; [+1]
      198 LOADNIL                          R14
      199 SETTABLEKS                       R14 R13 K30 ["ToggleViewButton"]
      201 GETUPVAL                         R14 1
      202 GETTABLEKS                       R14 R14 K9 ["createElement"]
      204 GETUPVAL                         R15 2
      205 DUPTABLE                         R16 K67 [{["Size"], ["LayoutOrder"] = 2, ["Layout"], ["HorizontalAlignment"]}]
      206 GETIMPORT                        R17 K44 [UDim2.new]
      208 LOADN                            R18 1
      209 GETTABLEKS                       R20 R0 K37 ["state"]
      211 GETTABLEKS                       R20 R20 K38 ["buttonSize"]
      213 MINUS                            R19 R20
      214 LOADN                            R20 1
      215 LOADN                            R21 0
      216 CALL                             R17 4 1
      217 SETTABLEKS                       R17 R16 K10 ["Size"]
      219 GETIMPORT                        R17 K19 [Enum.FillDirection.Horizontal]
      221 SETTABLEKS                       R17 R16 K14 ["Layout"]
      223 GETIMPORT                        R17 K69 [Enum.HorizontalAlignment.Center]
      225 SETTABLEKS                       R17 R16 K40 ["HorizontalAlignment"]
      227 DUPTABLE                         R17 K70 [{"Padding", "Button"}]
      228 GETUPVAL                         R18 1
      229 GETTABLEKS                       R18 R18 K9 ["createElement"]
      231 LOADK                            R19 K71 ["UIPadding"]
      232 DUPTABLE                         R20 K73 [{"PaddingLeft"}]
      233 GETIMPORT                        R21 K75 [UDim.new]
      235 LOADN                            R22 0
      236 LOADN                            R23 2
      237 CALL                             R21 2 1
      238 SETTABLEKS                       R21 R20 K72 ["PaddingLeft"]
      240 CALL                             R18 2 1
      241 SETTABLEKS                       R18 R17 K11 ["Padding"]
      243 GETUPVAL                         R18 1
      244 GETTABLEKS                       R18 R18 K9 ["createElement"]
      246 GETUPVAL                         R19 4
      247 DUPTABLE                         R20 K78 [{"Groups", "OnGroupAdded", "OnEditingChanged"}]
      248 GETTABLEKS                       R21 R1 K4 ["Groups"]
      250 SETTABLEKS                       R21 R20 K4 ["Groups"]
      252 GETTABLEKS                       R21 R1 K76 ["OnGroupAdded"]
      254 SETTABLEKS                       R21 R20 K76 ["OnGroupAdded"]
      256 GETTABLEKS                       R21 R0 K79 ["onEditingChanged"]
      258 SETTABLEKS                       R21 R20 K77 ["OnEditingChanged"]
      260 CALL                             R18 2 1
      261 SETTABLEKS                       R18 R17 K47 ["Button"]
      263 CALL                             R14 3 1
      264 SETTABLEKS                       R14 R13 K31 ["AddGroupButton"]
      266 CALL                             R10 3 1
      267 SETTABLEKS                       R10 R9 K20 ["TextButtonPane"]
      269 GETUPVAL                         R10 1
      270 GETTABLEKS                       R10 R10 K9 ["createElement"]
      272 GETUPVAL                         R11 2
      273 DUPTABLE                         R12 K67 [{["Size"], ["LayoutOrder"] = 2, ["Layout"], ["HorizontalAlignment"]}]
      274 GETTABLEKS                       R13 R3 K80 ["GroupButtonsPaneSize"]
      276 SETTABLEKS                       R13 R12 K10 ["Size"]
      278 GETIMPORT                        R13 K19 [Enum.FillDirection.Horizontal]
      280 SETTABLEKS                       R13 R12 K14 ["Layout"]
      282 GETIMPORT                        R13 K82 [Enum.HorizontalAlignment.Right]
      284 SETTABLEKS                       R13 R12 K40 ["HorizontalAlignment"]
      286 DUPTABLE                         R13 K85 [{"RenameButton", "DeleteButton"}]
      287 JUMPIFNOT                        R4 ; [+20]
      288 GETUPVAL                         R14 1
      289 GETTABLEKS                       R14 R14 K9 ["createElement"]
      291 GETUPVAL                         R15 5
      292 DUPTABLE                         R16 K88 [{["Style"] = "Rename", ["OnClick"], ["TooltipMessage"], ["LayoutOrder"] = 1}]
      293 GETTABLEKS                       R17 R1 K89 ["OnGroupRenamed"]
      295 SETTABLEKS                       R17 R16 K52 ["OnClick"]
      297 GETTABLEKS                       R17 R1 K1 ["Localization"]
      299 LOADK                            R19 K90 ["Tooltip"]
      300 LOADK                            R20 K86 ["Rename"]
      301 NAMECALL                         R17 R17 K57 ["getText"]
      303 CALL                             R17 3 1
      304 SETTABLEKS                       R17 R16 K87 ["TooltipMessage"]
      306 CALL                             R14 2 1
      307 JUMP                             ; [+1]
      308 LOADNIL                          R14
      309 SETTABLEKS                       R14 R13 K83 ["RenameButton"]
      311 JUMPIFNOT                        R5 ; [+20]
      312 GETUPVAL                         R14 1
      313 GETTABLEKS                       R14 R14 K9 ["createElement"]
      315 GETUPVAL                         R15 5
      316 DUPTABLE                         R16 K92 [{["Style"] = "Delete", ["OnClick"], ["TooltipMessage"], ["LayoutOrder"] = 2}]
      317 GETTABLEKS                       R17 R1 K93 ["OnGroupDeleted"]
      319 SETTABLEKS                       R17 R16 K52 ["OnClick"]
      321 GETTABLEKS                       R17 R1 K1 ["Localization"]
      323 LOADK                            R19 K90 ["Tooltip"]
      324 LOADK                            R20 K91 ["Delete"]
      325 NAMECALL                         R17 R17 K57 ["getText"]
      327 CALL                             R17 3 1
      328 SETTABLEKS                       R17 R16 K87 ["TooltipMessage"]
      330 CALL                             R14 2 1
      331 JUMP                             ; [+1]
      332 LOADNIL                          R14
      333 SETTABLEKS                       R14 R13 K84 ["DeleteButton"]
      335 CALL                             R10 3 1
      336 SETTABLEKS                       R10 R9 K21 ["GroupButtonsPane"]
      338 CALL                             R6 3 -1
      339 RETURN                           R6 -1

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
       25 GETTABLEKS                       R4 R3 K9 ["Localization"]
       27 GETTABLEKS                       R5 R2 K10 ["UI"]
       29 GETTABLEKS                       R6 R5 K11 ["Button"]
       31 GETTABLEKS                       R7 R5 K12 ["Pane"]
       33 GETIMPORT                        R8 K4 [require]
       35 GETIMPORT                        R9 K1 [script]
       37 GETTABLEKS                       R9 R9 K2 ["Parent"]
       39 GETTABLEKS                       R9 R9 K13 ["AddGroup"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K4 [require]
       44 GETIMPORT                        R10 K1 [script]
       46 GETTABLEKS                       R10 R10 K2 ["Parent"]
       48 GETTABLEKS                       R10 R10 K2 ["Parent"]
       50 GETTABLEKS                       R10 R10 K14 ["Constants"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K4 [require]
       55 GETIMPORT                        R11 K1 [script]
       57 GETTABLEKS                       R11 R11 K2 ["Parent"]
       59 GETTABLEKS                       R11 R11 K15 ["GroupButton"]
       61 CALL                             R10 1 1
       62 GETTABLEKS                       R11 R1 K16 ["Component"]
       64 LOADK                            R13 K17 ["ControlsHeaderRow"]
       65 NAMECALL                         R11 R11 K18 ["extend"]
       67 CALL                             R11 2 1
       68 GETTABLEKS                       R13 R9 K19 ["GroupRowWidth"]
       70 GETTABLEKS                       R14 R9 K20 ["ControlsHeaderRowPadding"]
       72 SUB                              R12 R13 R14
       73 DUPCLOSURE                       R13 K21 [PROTO_3]
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R9
       77 SETTABLEKS                       R13 R11 K22 ["init"]
       79 DUPCLOSURE                       R13 K23 [PROTO_4]
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R10
       86 SETTABLEKS                       R13 R11 K24 ["render"]
       88 GETTABLEKS                       R13 R3 K25 ["withContext"]
       90 DUPTABLE                         R14 K27 [{"Stylizer", "Localization"}]
       91 GETTABLEKS                       R15 R3 K26 ["Stylizer"]
       93 SETTABLEKS                       R15 R14 K26 ["Stylizer"]
       95 SETTABLEKS                       R4 R14 K9 ["Localization"]
       97 CALL                             R13 1 1
       98 MOVE                             R14 R11
       99 CALL                             R13 1 1
      100 MOVE                             R11 R13
      101 RETURN                           R11 1
