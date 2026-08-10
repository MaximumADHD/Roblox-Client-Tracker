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
        6 GETUPVAL                         R1 1
        7 JUMPIFNOT                        R1 ; [+32]
        8 JUMPIF                           R0 ; [+2]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 GETTABLEKS                       R1 R0 K2 ["AbsoluteSize"]
       13 GETTABLEKS                       R1 R1 K3 ["X"]
       15 LOADNIL                          R2
       16 GETUPVAL                         R4 2
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K4 ["ControlsHeaderButtonWidth"]
       20 ADD                              R3 R4 R5
       21 JUMPIFNOTLT                      R1 R3 ; [+13]
       23 LOADN                            R4 0
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R6 R6 K4 ["ControlsHeaderButtonWidth"]
       27 SUB                              R5 R1 R6
       28 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       30 GETIMPORT                        R3 K7 [math.max]
       32 CALL                             R3 2 1
       33 MOVE                             R2 R3
       34 JUMP                             ; [+1]
       35 GETUPVAL                         R2 2
       36 DUPTABLE                         R3 K9 [{"buttonSize"}]
       37 SETTABLEKS                       R2 R3 K8 ["buttonSize"]
       39 RETURN                           R3 1
       40 GETTABLEKS                       R1 R0 K2 ["AbsoluteSize"]
       42 GETTABLEKS                       R1 R1 K3 ["X"]
       44 GETUPVAL                         R3 3
       45 GETTABLEKS                       R3 R3 K4 ["ControlsHeaderButtonWidth"]
       47 MULK                             R2 R3 K10 [2]
       48 JUMPIFNOTLT                      R1 R2 ; [+9]
       50 DUPTABLE                         R2 K9 [{"buttonSize"}]
       51 GETUPVAL                         R4 3
       52 GETTABLEKS                       R4 R4 K4 ["ControlsHeaderButtonWidth"]
       54 SUB                              R3 R1 R4
       55 SETTABLEKS                       R3 R2 K8 ["buttonSize"]
       57 RETURN                           R2 1
       58 DUPTABLE                         R2 K9 [{"buttonSize"}]
       59 GETUPVAL                         R3 3
       60 GETTABLEKS                       R3 R3 K4 ["ControlsHeaderButtonWidth"]
       62 SETTABLEKS                       R3 R2 K8 ["buttonSize"]
       64 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 NAMECALL                         R0 R0 K0 ["setState"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

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
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U3
       21 SETTABLEKS                       R1 R0 K8 ["updateButtonFlexSize"]
       23 RETURN                           R0 0

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
      113 GETUPVAL                         R15 4
      114 JUMPIFNOT                        R15 ; [+7]
      115 GETTABLEKS                       R15 R0 K37 ["state"]
      117 GETTABLEKS                       R15 R15 K38 ["buttonSize"]
      119 LOADN                            R16 0
      120 JUMPIFNOTLT                      R16 R15 ; [+92]
      122 GETUPVAL                         R14 2
      123 GETTABLEKS                       R14 R14 K9 ["createElement"]
      125 GETUPVAL                         R15 3
      126 DUPTABLE                         R16 K41 [{["Size"], ["LayoutOrder"] = 1, ["Layout"], ["HorizontalAlignment"]}]
      127 GETIMPORT                        R17 K44 [UDim2.new]
      129 LOADN                            R18 0
      130 GETTABLEKS                       R19 R0 K37 ["state"]
      132 GETTABLEKS                       R19 R19 K38 ["buttonSize"]
      134 LOADN                            R20 1
      135 LOADN                            R21 0
      136 CALL                             R17 4 1
      137 SETTABLEKS                       R17 R16 K10 ["Size"]
      139 GETIMPORT                        R17 K19 [Enum.FillDirection.Horizontal]
      141 SETTABLEKS                       R17 R16 K14 ["Layout"]
      143 GETUPVAL                         R18 4
      144 JUMPIFNOT                        R18 ; [+3]
      145 GETIMPORT                        R17 K46 [Enum.HorizontalAlignment.Left]
      147 JUMP                             ; [+2]
      148 GETIMPORT                        R17 K48 [Enum.HorizontalAlignment.Center]
      150 SETTABLEKS                       R17 R16 K40 ["HorizontalAlignment"]
      152 DUPTABLE                         R17 K50 [{"Button"}]
      153 GETUPVAL                         R18 2
      154 GETTABLEKS                       R18 R18 K9 ["createElement"]
      156 GETUPVAL                         R19 5
      157 DUPTABLE                         R20 K55 [{["Style"] = "Round", ["Text"], ["Size"], ["OnClick"]}]
      158 GETTABLEKS                       R22 R1 K56 ["ToggleListView"]
      160 JUMPIFNOT                        R22 ; [+6]
      161 LOADK                            R23 K57 ["Actions"]
      162 LOADK                            R24 K58 ["TableView"]
      163 NAMECALL                         R21 R2 K59 ["getText"]
      165 CALL                             R21 3 1
      166 JUMP                             ; [+5]
      167 LOADK                            R23 K57 ["Actions"]
      168 LOADK                            R24 K60 ["ListView"]
      169 NAMECALL                         R21 R2 K59 ["getText"]
      171 CALL                             R21 3 1
      172 SETTABLEKS                       R21 R20 K53 ["Text"]
      174 GETIMPORT                        R21 K62 [UDim2.fromOffset]
      176 GETUPVAL                         R23 4
      177 JUMPIFNOT                        R23 ; [+17]
      178 LOADN                            R23 0
      179 GETTABLEKS                       R26 R0 K37 ["state"]
      181 GETTABLEKS                       R26 R26 K38 ["buttonSize"]
      183 GETTABLEKS                       R27 R3 K20 ["TextButtonPane"]
      185 GETTABLEKS                       R27 R27 K12 ["Spacing"]
      187 SUB                              R25 R26 R27
      188 ADDK                             R24 R25 K63 [2]
      189 FASTCALL2                        MATH_MAX R23 R24 ; [+3]
      191 GETIMPORT                        R22 K66 [math.max]
      193 CALL                             R22 2 1
      194 JUMP                             ; [+4]
      195 GETTABLEKS                       R22 R0 K37 ["state"]
      197 GETTABLEKS                       R22 R22 K38 ["buttonSize"]
      199 GETTABLEKS                       R23 R3 K67 ["ButtonHeight"]
      201 CALL                             R21 2 1
      202 SETTABLEKS                       R21 R20 K10 ["Size"]
      204 GETTABLEKS                       R21 R1 K68 ["OnViewModeToggled"]
      206 SETTABLEKS                       R21 R20 K54 ["OnClick"]
      208 CALL                             R18 2 1
      209 SETTABLEKS                       R18 R17 K49 ["Button"]
      211 CALL                             R14 3 1
      212 JUMPIF                           R14 ; [+1]
      213 LOADNIL                          R14
      214 SETTABLEKS                       R14 R13 K30 ["ToggleViewButton"]
      216 GETUPVAL                         R14 2
      217 GETTABLEKS                       R14 R14 K9 ["createElement"]
      219 GETUPVAL                         R15 3
      220 DUPTABLE                         R16 K69 [{["Size"], ["LayoutOrder"] = 2, ["Layout"], ["HorizontalAlignment"]}]
      221 GETIMPORT                        R17 K44 [UDim2.new]
      223 LOADN                            R18 1
      224 GETTABLEKS                       R20 R0 K37 ["state"]
      226 GETTABLEKS                       R20 R20 K38 ["buttonSize"]
      228 MINUS                            R19 R20
      229 LOADN                            R20 1
      230 LOADN                            R21 0
      231 CALL                             R17 4 1
      232 SETTABLEKS                       R17 R16 K10 ["Size"]
      234 GETIMPORT                        R17 K19 [Enum.FillDirection.Horizontal]
      236 SETTABLEKS                       R17 R16 K14 ["Layout"]
      238 GETIMPORT                        R17 K48 [Enum.HorizontalAlignment.Center]
      240 SETTABLEKS                       R17 R16 K40 ["HorizontalAlignment"]
      242 DUPTABLE                         R17 K70 [{"Padding", "Button"}]
      243 GETUPVAL                         R19 4
      244 JUMPIFNOT                        R19 ; [+14]
      245 GETUPVAL                         R18 2
      246 GETTABLEKS                       R18 R18 K9 ["createElement"]
      248 LOADK                            R19 K71 ["UIPadding"]
      249 DUPTABLE                         R20 K73 [{"PaddingLeft"}]
      250 GETIMPORT                        R21 K75 [UDim.new]
      252 LOADN                            R22 0
      253 LOADN                            R23 2
      254 CALL                             R21 2 1
      255 SETTABLEKS                       R21 R20 K72 ["PaddingLeft"]
      257 CALL                             R18 2 1
      258 JUMP                             ; [+1]
      259 LOADNIL                          R18
      260 SETTABLEKS                       R18 R17 K11 ["Padding"]
      262 GETUPVAL                         R18 2
      263 GETTABLEKS                       R18 R18 K9 ["createElement"]
      265 GETUPVAL                         R19 6
      266 DUPTABLE                         R20 K78 [{"Groups", "OnGroupAdded", "OnEditingChanged"}]
      267 GETTABLEKS                       R21 R1 K4 ["Groups"]
      269 SETTABLEKS                       R21 R20 K4 ["Groups"]
      271 GETTABLEKS                       R21 R1 K76 ["OnGroupAdded"]
      273 SETTABLEKS                       R21 R20 K76 ["OnGroupAdded"]
      275 GETTABLEKS                       R21 R0 K79 ["onEditingChanged"]
      277 SETTABLEKS                       R21 R20 K77 ["OnEditingChanged"]
      279 CALL                             R18 2 1
      280 SETTABLEKS                       R18 R17 K49 ["Button"]
      282 CALL                             R14 3 1
      283 SETTABLEKS                       R14 R13 K31 ["AddGroupButton"]
      285 CALL                             R10 3 1
      286 SETTABLEKS                       R10 R9 K20 ["TextButtonPane"]
      288 GETUPVAL                         R10 2
      289 GETTABLEKS                       R10 R10 K9 ["createElement"]
      291 GETUPVAL                         R11 3
      292 DUPTABLE                         R12 K69 [{["Size"], ["LayoutOrder"] = 2, ["Layout"], ["HorizontalAlignment"]}]
      293 GETTABLEKS                       R13 R3 K80 ["GroupButtonsPaneSize"]
      295 SETTABLEKS                       R13 R12 K10 ["Size"]
      297 GETIMPORT                        R13 K19 [Enum.FillDirection.Horizontal]
      299 SETTABLEKS                       R13 R12 K14 ["Layout"]
      301 GETIMPORT                        R13 K82 [Enum.HorizontalAlignment.Right]
      303 SETTABLEKS                       R13 R12 K40 ["HorizontalAlignment"]
      305 DUPTABLE                         R13 K85 [{"RenameButton", "DeleteButton"}]
      306 JUMPIFNOT                        R4 ; [+20]
      307 GETUPVAL                         R14 2
      308 GETTABLEKS                       R14 R14 K9 ["createElement"]
      310 GETUPVAL                         R15 7
      311 DUPTABLE                         R16 K88 [{["Style"] = "Rename", ["OnClick"], ["TooltipMessage"], ["LayoutOrder"] = 1}]
      312 GETTABLEKS                       R17 R1 K89 ["OnGroupRenamed"]
      314 SETTABLEKS                       R17 R16 K54 ["OnClick"]
      316 GETTABLEKS                       R17 R1 K1 ["Localization"]
      318 LOADK                            R19 K90 ["Tooltip"]
      319 LOADK                            R20 K86 ["Rename"]
      320 NAMECALL                         R17 R17 K59 ["getText"]
      322 CALL                             R17 3 1
      323 SETTABLEKS                       R17 R16 K87 ["TooltipMessage"]
      325 CALL                             R14 2 1
      326 JUMP                             ; [+1]
      327 LOADNIL                          R14
      328 SETTABLEKS                       R14 R13 K83 ["RenameButton"]
      330 JUMPIFNOT                        R5 ; [+20]
      331 GETUPVAL                         R14 2
      332 GETTABLEKS                       R14 R14 K9 ["createElement"]
      334 GETUPVAL                         R15 7
      335 DUPTABLE                         R16 K92 [{["Style"] = "Delete", ["OnClick"], ["TooltipMessage"], ["LayoutOrder"] = 2}]
      336 GETTABLEKS                       R17 R1 K93 ["OnGroupDeleted"]
      338 SETTABLEKS                       R17 R16 K54 ["OnClick"]
      340 GETTABLEKS                       R17 R1 K1 ["Localization"]
      342 LOADK                            R19 K90 ["Tooltip"]
      343 LOADK                            R20 K91 ["Delete"]
      344 NAMECALL                         R17 R17 K59 ["getText"]
      346 CALL                             R17 3 1
      347 SETTABLEKS                       R17 R16 K87 ["TooltipMessage"]
      349 CALL                             R14 2 1
      350 JUMP                             ; [+1]
      351 LOADNIL                          R14
      352 SETTABLEKS                       R14 R13 K84 ["DeleteButton"]
      354 CALL                             R10 3 1
      355 SETTABLEKS                       R10 R9 K21 ["GroupButtonsPane"]
      357 CALL                             R6 3 -1
      358 RETURN                           R6 -1

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
       70 LOADK                            R14 K21 ["CGEControlsRowPolish"]
       71 NAMECALL                         R12 R12 K22 ["GetFastFlag"]
       73 CALL                             R12 2 1
       74 GETIMPORT                        R13 K20 [game]
       76 LOADK                            R15 K23 ["CGECanRenameStudioSelectable"]
       77 NAMECALL                         R13 R13 K22 ["GetFastFlag"]
       79 CALL                             R13 2 1
       80 JUMPIFNOT                        R12 ; [+6]
       81 GETTABLEKS                       R15 R9 K24 ["GroupRowWidth"]
       83 GETTABLEKS                       R16 R9 K25 ["ControlsHeaderRowPadding"]
       85 SUB                              R14 R15 R16
       86 JUMP                             ; [+2]
       87 GETTABLEKS                       R14 R9 K26 ["ControlsHeaderButtonWidth"]
       89 DUPCLOSURE                       R15 K27 [PROTO_3]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R9
       94 SETTABLEKS                       R15 R11 K28 ["init"]
       96 DUPCLOSURE                       R15 K29 [PROTO_4]
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R10
      105 SETTABLEKS                       R15 R11 K30 ["render"]
      107 GETTABLEKS                       R15 R3 K31 ["withContext"]
      109 DUPTABLE                         R16 K33 [{"Stylizer", "Localization"}]
      110 GETTABLEKS                       R17 R3 K32 ["Stylizer"]
      112 SETTABLEKS                       R17 R16 K32 ["Stylizer"]
      114 SETTABLEKS                       R4 R16 K9 ["Localization"]
      116 CALL                             R15 1 1
      117 MOVE                             R16 R11
      118 CALL                             R15 1 1
      119 MOVE                             R11 R15
      120 RETURN                           R11 1
