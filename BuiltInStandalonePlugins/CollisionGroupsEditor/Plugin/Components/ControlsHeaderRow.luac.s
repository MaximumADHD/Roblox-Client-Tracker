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
       17 JUMPIFNOT                        R11 ; [+18]
       18 GETTABLEKS                       R11 R10 K6 ["Name"]
       20 GETUPVAL                         R12 0
       21 GETTABLEKS                       R12 R12 K7 ["CursorGroupName"]
       23 JUMPIFNOTEQ                      R11 R12 ; [+5]
       25 LOADB                            R5 0
       26 GETUPVAL                         R11 1
       27 NOT                              R4 R11
       28 JUMP                             ; [+9]
       29 GETTABLEKS                       R11 R10 K6 ["Name"]
       31 JUMPIFNOTEQKS                    R11 K8 ["Default"] ; [+6]
       33 LOADB                            R4 0
       34 LOADB                            R5 0
       35 JUMP                             ; [+2]
       36 FORGLOOP                         R6 2 ; [-22]
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K9 ["createElement"]
       41 GETUPVAL                         R7 3
       42 DUPTABLE                         R8 K15 [{"Size", "Padding", "Spacing", "LayoutOrder", "Layout"}]
       43 GETTABLEKS                       R9 R3 K10 ["Size"]
       45 SETTABLEKS                       R9 R8 K10 ["Size"]
       47 GETTABLEKS                       R9 R3 K11 ["Padding"]
       49 SETTABLEKS                       R9 R8 K11 ["Padding"]
       51 GETTABLEKS                       R9 R3 K12 ["Spacing"]
       53 SETTABLEKS                       R9 R8 K12 ["Spacing"]
       55 GETTABLEKS                       R9 R1 K13 ["LayoutOrder"]
       57 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
       59 GETIMPORT                        R9 K19 [Enum.FillDirection.Horizontal]
       61 SETTABLEKS                       R9 R8 K14 ["Layout"]
       63 DUPTABLE                         R9 K22 [{"TextButtonPane", "GroupButtonsPane"}]
       64 GETUPVAL                         R10 2
       65 GETTABLEKS                       R10 R10 K9 ["createElement"]
       67 LOADK                            R11 K23 ["Frame"]
       68 NEWTABLE                         R12 8 0
       70 GETTABLEKS                       R13 R3 K20 ["TextButtonPane"]
       72 GETTABLEKS                       R13 R13 K10 ["Size"]
       74 SETTABLEKS                       R13 R12 K10 ["Size"]
       76 LOADN                            R13 1
       77 SETTABLEKS                       R13 R12 K24 ["BackgroundTransparency"]
       79 LOADN                            R13 1
       80 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
       82 GETUPVAL                         R13 2
       83 GETTABLEKS                       R13 R13 K25 ["Change"]
       85 GETTABLEKS                       R13 R13 K26 ["AbsoluteSize"]
       87 GETTABLEKS                       R14 R0 K27 ["updateButtonFlexSize"]
       89 SETTABLE                         R14 R12 R13
       90 GETUPVAL                         R13 2
       91 GETTABLEKS                       R13 R13 K28 ["Ref"]
       93 GETTABLEKS                       R14 R0 K29 ["textButtonPaneRef"]
       95 SETTABLE                         R14 R12 R13
       96 DUPTABLE                         R13 K32 [{"Layout", "ToggleViewButton", "AddGroupButton"}]
       97 GETUPVAL                         R14 2
       98 GETTABLEKS                       R14 R14 K9 ["createElement"]
      100 LOADK                            R15 K33 ["UIListLayout"]
      101 DUPTABLE                         R16 K35 [{"SortOrder", "FillDirection"}]
      102 GETIMPORT                        R17 K36 [Enum.SortOrder.LayoutOrder]
      104 SETTABLEKS                       R17 R16 K34 ["SortOrder"]
      106 GETIMPORT                        R17 K19 [Enum.FillDirection.Horizontal]
      108 SETTABLEKS                       R17 R16 K17 ["FillDirection"]
      110 CALL                             R14 2 1
      111 SETTABLEKS                       R14 R13 K14 ["Layout"]
      113 GETTABLEKS                       R15 R0 K37 ["state"]
      115 GETTABLEKS                       R15 R15 K38 ["buttonSize"]
      117 LOADN                            R16 0
      118 JUMPIFNOTLT                      R16 R15 ; [+80]
      120 GETUPVAL                         R14 2
      121 GETTABLEKS                       R14 R14 K9 ["createElement"]
      123 GETUPVAL                         R15 3
      124 DUPTABLE                         R16 K41 [{["Size"], ["LayoutOrder"] = 1, ["Layout"], ["HorizontalAlignment"]}]
      125 GETIMPORT                        R17 K44 [UDim2.new]
      127 LOADN                            R18 0
      128 GETTABLEKS                       R19 R0 K37 ["state"]
      130 GETTABLEKS                       R19 R19 K38 ["buttonSize"]
      132 LOADN                            R20 1
      133 LOADN                            R21 0
      134 CALL                             R17 4 1
      135 SETTABLEKS                       R17 R16 K10 ["Size"]
      137 GETIMPORT                        R17 K19 [Enum.FillDirection.Horizontal]
      139 SETTABLEKS                       R17 R16 K14 ["Layout"]
      141 GETIMPORT                        R17 K46 [Enum.HorizontalAlignment.Left]
      143 SETTABLEKS                       R17 R16 K40 ["HorizontalAlignment"]
      145 DUPTABLE                         R17 K48 [{"Button"}]
      146 GETUPVAL                         R18 2
      147 GETTABLEKS                       R18 R18 K9 ["createElement"]
      149 GETUPVAL                         R19 4
      150 DUPTABLE                         R20 K53 [{["Style"] = "Round", ["Text"], ["Size"], ["OnClick"]}]
      151 GETTABLEKS                       R22 R1 K54 ["ToggleListView"]
      153 JUMPIFNOT                        R22 ; [+6]
      154 LOADK                            R23 K55 ["Actions"]
      155 LOADK                            R24 K56 ["TableView"]
      156 NAMECALL                         R21 R2 K57 ["getText"]
      158 CALL                             R21 3 1
      159 JUMP                             ; [+5]
      160 LOADK                            R23 K55 ["Actions"]
      161 LOADK                            R24 K58 ["ListView"]
      162 NAMECALL                         R21 R2 K57 ["getText"]
      164 CALL                             R21 3 1
      165 SETTABLEKS                       R21 R20 K51 ["Text"]
      167 GETIMPORT                        R21 K60 [UDim2.fromOffset]
      169 LOADN                            R23 0
      170 GETTABLEKS                       R26 R0 K37 ["state"]
      172 GETTABLEKS                       R26 R26 K38 ["buttonSize"]
      174 GETTABLEKS                       R27 R3 K20 ["TextButtonPane"]
      176 GETTABLEKS                       R27 R27 K12 ["Spacing"]
      178 SUB                              R25 R26 R27
      179 ADDK                             R24 R25 K61 [2]
      180 FASTCALL2                        MATH_MAX R23 R24 ; [+3]
      182 GETIMPORT                        R22 K64 [math.max]
      184 CALL                             R22 2 1
      185 GETTABLEKS                       R23 R3 K65 ["ButtonHeight"]
      187 CALL                             R21 2 1
      188 SETTABLEKS                       R21 R20 K10 ["Size"]
      190 GETTABLEKS                       R21 R1 K66 ["OnViewModeToggled"]
      192 SETTABLEKS                       R21 R20 K52 ["OnClick"]
      194 CALL                             R18 2 1
      195 SETTABLEKS                       R18 R17 K47 ["Button"]
      197 CALL                             R14 3 1
      198 JUMPIF                           R14 ; [+1]
      199 LOADNIL                          R14
      200 SETTABLEKS                       R14 R13 K30 ["ToggleViewButton"]
      202 GETUPVAL                         R14 2
      203 GETTABLEKS                       R14 R14 K9 ["createElement"]
      205 GETUPVAL                         R15 3
      206 DUPTABLE                         R16 K67 [{["Size"], ["LayoutOrder"] = 2, ["Layout"], ["HorizontalAlignment"]}]
      207 GETIMPORT                        R17 K44 [UDim2.new]
      209 LOADN                            R18 1
      210 GETTABLEKS                       R20 R0 K37 ["state"]
      212 GETTABLEKS                       R20 R20 K38 ["buttonSize"]
      214 MINUS                            R19 R20
      215 LOADN                            R20 1
      216 LOADN                            R21 0
      217 CALL                             R17 4 1
      218 SETTABLEKS                       R17 R16 K10 ["Size"]
      220 GETIMPORT                        R17 K19 [Enum.FillDirection.Horizontal]
      222 SETTABLEKS                       R17 R16 K14 ["Layout"]
      224 GETIMPORT                        R17 K69 [Enum.HorizontalAlignment.Center]
      226 SETTABLEKS                       R17 R16 K40 ["HorizontalAlignment"]
      228 DUPTABLE                         R17 K70 [{"Padding", "Button"}]
      229 GETUPVAL                         R18 2
      230 GETTABLEKS                       R18 R18 K9 ["createElement"]
      232 LOADK                            R19 K71 ["UIPadding"]
      233 DUPTABLE                         R20 K73 [{"PaddingLeft"}]
      234 GETIMPORT                        R21 K75 [UDim.new]
      236 LOADN                            R22 0
      237 LOADN                            R23 2
      238 CALL                             R21 2 1
      239 SETTABLEKS                       R21 R20 K72 ["PaddingLeft"]
      241 CALL                             R18 2 1
      242 SETTABLEKS                       R18 R17 K11 ["Padding"]
      244 GETUPVAL                         R18 2
      245 GETTABLEKS                       R18 R18 K9 ["createElement"]
      247 GETUPVAL                         R19 5
      248 DUPTABLE                         R20 K78 [{"Groups", "OnGroupAdded", "OnEditingChanged"}]
      249 GETTABLEKS                       R21 R1 K4 ["Groups"]
      251 SETTABLEKS                       R21 R20 K4 ["Groups"]
      253 GETTABLEKS                       R21 R1 K76 ["OnGroupAdded"]
      255 SETTABLEKS                       R21 R20 K76 ["OnGroupAdded"]
      257 GETTABLEKS                       R21 R0 K79 ["onEditingChanged"]
      259 SETTABLEKS                       R21 R20 K77 ["OnEditingChanged"]
      261 CALL                             R18 2 1
      262 SETTABLEKS                       R18 R17 K47 ["Button"]
      264 CALL                             R14 3 1
      265 SETTABLEKS                       R14 R13 K31 ["AddGroupButton"]
      267 CALL                             R10 3 1
      268 SETTABLEKS                       R10 R9 K20 ["TextButtonPane"]
      270 GETUPVAL                         R10 2
      271 GETTABLEKS                       R10 R10 K9 ["createElement"]
      273 GETUPVAL                         R11 3
      274 DUPTABLE                         R12 K67 [{["Size"], ["LayoutOrder"] = 2, ["Layout"], ["HorizontalAlignment"]}]
      275 GETTABLEKS                       R13 R3 K80 ["GroupButtonsPaneSize"]
      277 SETTABLEKS                       R13 R12 K10 ["Size"]
      279 GETIMPORT                        R13 K19 [Enum.FillDirection.Horizontal]
      281 SETTABLEKS                       R13 R12 K14 ["Layout"]
      283 GETIMPORT                        R13 K82 [Enum.HorizontalAlignment.Right]
      285 SETTABLEKS                       R13 R12 K40 ["HorizontalAlignment"]
      287 DUPTABLE                         R13 K85 [{"RenameButton", "DeleteButton"}]
      288 JUMPIFNOT                        R4 ; [+20]
      289 GETUPVAL                         R14 2
      290 GETTABLEKS                       R14 R14 K9 ["createElement"]
      292 GETUPVAL                         R15 6
      293 DUPTABLE                         R16 K88 [{["Style"] = "Rename", ["OnClick"], ["TooltipMessage"], ["LayoutOrder"] = 1}]
      294 GETTABLEKS                       R17 R1 K89 ["OnGroupRenamed"]
      296 SETTABLEKS                       R17 R16 K52 ["OnClick"]
      298 GETTABLEKS                       R17 R1 K1 ["Localization"]
      300 LOADK                            R19 K90 ["Tooltip"]
      301 LOADK                            R20 K86 ["Rename"]
      302 NAMECALL                         R17 R17 K57 ["getText"]
      304 CALL                             R17 3 1
      305 SETTABLEKS                       R17 R16 K87 ["TooltipMessage"]
      307 CALL                             R14 2 1
      308 JUMP                             ; [+1]
      309 LOADNIL                          R14
      310 SETTABLEKS                       R14 R13 K83 ["RenameButton"]
      312 JUMPIFNOT                        R5 ; [+20]
      313 GETUPVAL                         R14 2
      314 GETTABLEKS                       R14 R14 K9 ["createElement"]
      316 GETUPVAL                         R15 6
      317 DUPTABLE                         R16 K92 [{["Style"] = "Delete", ["OnClick"], ["TooltipMessage"], ["LayoutOrder"] = 2}]
      318 GETTABLEKS                       R17 R1 K93 ["OnGroupDeleted"]
      320 SETTABLEKS                       R17 R16 K52 ["OnClick"]
      322 GETTABLEKS                       R17 R1 K1 ["Localization"]
      324 LOADK                            R19 K90 ["Tooltip"]
      325 LOADK                            R20 K91 ["Delete"]
      326 NAMECALL                         R17 R17 K57 ["getText"]
      328 CALL                             R17 3 1
      329 SETTABLEKS                       R17 R16 K87 ["TooltipMessage"]
      331 CALL                             R14 2 1
      332 JUMP                             ; [+1]
      333 LOADNIL                          R14
      334 SETTABLEKS                       R14 R13 K84 ["DeleteButton"]
      336 CALL                             R10 3 1
      337 SETTABLEKS                       R10 R9 K21 ["GroupButtonsPane"]
      339 CALL                             R6 3 -1
      340 RETURN                           R6 -1

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
       68 GETIMPORT                        R12 K20 [game]
       70 LOADK                            R14 K21 ["CGECanRenameStudioSelectable"]
       71 NAMECALL                         R12 R12 K22 ["GetFastFlag"]
       73 CALL                             R12 2 1
       74 GETTABLEKS                       R14 R9 K23 ["GroupRowWidth"]
       76 GETTABLEKS                       R15 R9 K24 ["ControlsHeaderRowPadding"]
       78 SUB                              R13 R14 R15
       79 DUPCLOSURE                       R14 K25 [PROTO_3]
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R9
       83 SETTABLEKS                       R14 R11 K26 ["init"]
       85 DUPCLOSURE                       R14 K27 [PROTO_4]
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R10
       93 SETTABLEKS                       R14 R11 K28 ["render"]
       95 GETTABLEKS                       R14 R3 K29 ["withContext"]
       97 DUPTABLE                         R15 K31 [{"Stylizer", "Localization"}]
       98 GETTABLEKS                       R16 R3 K30 ["Stylizer"]
      100 SETTABLEKS                       R16 R15 K30 ["Stylizer"]
      102 SETTABLEKS                       R4 R15 K9 ["Localization"]
      104 CALL                             R14 1 1
      105 MOVE                             R15 R11
      106 CALL                             R14 1 1
      107 MOVE                             R11 R14
      108 RETURN                           R11 1
