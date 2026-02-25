PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"editing"}]
        2 SETTABLEKS                       R0 R3 K0 ["editing"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["textButtonPaneRef"]
        3 NAMECALL                         R1 R1 K1 ["getValue"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R3 R1 K2 ["AbsoluteSize"]
        8 GETTABLEKS                       R2 R3 K3 ["X"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K5 ["ControlsHeaderButtonWidth"]
       13 MULK                             R3 R4 K4 [2]
       14 JUMPIFNOTLT                      R2 R3 ; [+9]
       16 DUPTABLE                         R3 K7 [{"buttonSize"}]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R5 R6 K5 ["ControlsHeaderButtonWidth"]
       20 SUB                              R4 R2 R5
       21 SETTABLEKS                       R4 R3 K6 ["buttonSize"]
       23 RETURN                           R3 1
       24 DUPTABLE                         R3 K7 [{"buttonSize"}]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R4 R5 K5 ["ControlsHeaderButtonWidth"]
       28 SETTABLEKS                       R4 R3 K6 ["buttonSize"]
       30 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 NAMECALL                         R0 R0 K0 ["setState"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["textButtonPaneRef"]
        6 DUPTABLE                         R1 K4 [{"editing", "buttonSize"}]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["editing"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K5 ["ControlsHeaderButtonWidth"]
       13 SETTABLEKS                       R2 R1 K3 ["buttonSize"]
       15 SETTABLEKS                       R1 R0 K6 ["state"]
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K7 ["onEditingChanged"]
       21 NEWCLOSURE                       R1 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U1
       24 SETTABLEKS                       R1 R0 K8 ["updateButtonFlexSize"]
       26 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R4 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R4 K3 ["ControlsHeaderRow"]
        8 LOADB                            R4 1
        9 LOADB                            R5 1
       10 GETTABLEKS                       R6 R1 K4 ["Groups"]
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 GETTABLEKS                       R11 R10 K5 ["UISelected"]
       17 JUMPIFNOT                        R11 ; [+18]
       18 GETTABLEKS                       R11 R10 K6 ["Name"]
       20 GETUPVAL                         R13 0
       21 GETTABLEKS                       R12 R13 K7 ["CursorGroupName"]
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
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R6 R7 K9 ["createElement"]
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
       64 GETUPVAL                         R11 2
       65 GETTABLEKS                       R10 R11 K9 ["createElement"]
       67 LOADK                            R11 K23 ["Frame"]
       68 NEWTABLE                         R12 8 0
       70 GETTABLEKS                       R14 R3 K20 ["TextButtonPane"]
       72 GETTABLEKS                       R13 R14 K10 ["Size"]
       74 SETTABLEKS                       R13 R12 K10 ["Size"]
       76 LOADN                            R13 1
       77 SETTABLEKS                       R13 R12 K24 ["BackgroundTransparency"]
       79 LOADN                            R13 1
       80 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
       82 GETUPVAL                         R15 2
       83 GETTABLEKS                       R14 R15 K25 ["Change"]
       85 GETTABLEKS                       R13 R14 K26 ["AbsoluteSize"]
       87 GETTABLEKS                       R14 R0 K27 ["updateButtonFlexSize"]
       89 SETTABLE                         R14 R12 R13
       90 GETUPVAL                         R14 2
       91 GETTABLEKS                       R13 R14 K28 ["Ref"]
       93 GETTABLEKS                       R14 R0 K29 ["textButtonPaneRef"]
       95 SETTABLE                         R14 R12 R13
       96 DUPTABLE                         R13 K32 [{"Layout", "ToggleViewButton", "AddGroupButton"}]
       97 GETUPVAL                         R15 2
       98 GETTABLEKS                       R14 R15 K9 ["createElement"]
      100 LOADK                            R15 K33 ["UIListLayout"]
      101 DUPTABLE                         R16 K35 [{"SortOrder", "FillDirection"}]
      102 GETIMPORT                        R17 K36 [Enum.SortOrder.LayoutOrder]
      104 SETTABLEKS                       R17 R16 K34 ["SortOrder"]
      106 GETIMPORT                        R17 K19 [Enum.FillDirection.Horizontal]
      108 SETTABLEKS                       R17 R16 K17 ["FillDirection"]
      110 CALL                             R14 2 1
      111 SETTABLEKS                       R14 R13 K14 ["Layout"]
      113 GETUPVAL                         R15 2
      114 GETTABLEKS                       R14 R15 K9 ["createElement"]
      116 GETUPVAL                         R15 3
      117 DUPTABLE                         R16 K38 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
      118 GETIMPORT                        R17 K41 [UDim2.new]
      120 LOADN                            R18 0
      121 GETTABLEKS                       R20 R0 K42 ["state"]
      123 GETTABLEKS                       R19 R20 K43 ["buttonSize"]
      125 LOADN                            R20 1
      126 LOADN                            R21 0
      127 CALL                             R17 4 1
      128 SETTABLEKS                       R17 R16 K10 ["Size"]
      130 LOADN                            R17 1
      131 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      133 GETIMPORT                        R17 K19 [Enum.FillDirection.Horizontal]
      135 SETTABLEKS                       R17 R16 K14 ["Layout"]
      137 GETIMPORT                        R17 K45 [Enum.HorizontalAlignment.Center]
      139 SETTABLEKS                       R17 R16 K37 ["HorizontalAlignment"]
      141 DUPTABLE                         R17 K47 [{"Button"}]
      142 GETUPVAL                         R19 2
      143 GETTABLEKS                       R18 R19 K9 ["createElement"]
      145 GETUPVAL                         R19 4
      146 DUPTABLE                         R20 K51 [{"Style", "Text", "Size", "OnClick"}]
      147 LOADK                            R21 K52 ["Round"]
      148 SETTABLEKS                       R21 R20 K48 ["Style"]
      150 GETTABLEKS                       R22 R1 K53 ["ToggleListView"]
      152 JUMPIFNOT                        R22 ; [+6]
      153 LOADK                            R23 K54 ["Actions"]
      154 LOADK                            R24 K55 ["TableView"]
      155 NAMECALL                         R21 R2 K56 ["getText"]
      157 CALL                             R21 3 1
      158 JUMP                             ; [+5]
      159 LOADK                            R23 K54 ["Actions"]
      160 LOADK                            R24 K57 ["ListView"]
      161 NAMECALL                         R21 R2 K56 ["getText"]
      163 CALL                             R21 3 1
      164 SETTABLEKS                       R21 R20 K49 ["Text"]
      166 GETIMPORT                        R21 K59 [UDim2.fromOffset]
      168 GETTABLEKS                       R23 R0 K42 ["state"]
      170 GETTABLEKS                       R22 R23 K43 ["buttonSize"]
      172 GETTABLEKS                       R23 R3 K60 ["ButtonHeight"]
      174 CALL                             R21 2 1
      175 SETTABLEKS                       R21 R20 K10 ["Size"]
      177 GETTABLEKS                       R21 R1 K61 ["OnViewModeToggled"]
      179 SETTABLEKS                       R21 R20 K50 ["OnClick"]
      181 CALL                             R18 2 1
      182 SETTABLEKS                       R18 R17 K46 ["Button"]
      184 CALL                             R14 3 1
      185 SETTABLEKS                       R14 R13 K30 ["ToggleViewButton"]
      187 GETUPVAL                         R15 2
      188 GETTABLEKS                       R14 R15 K9 ["createElement"]
      190 GETUPVAL                         R15 3
      191 DUPTABLE                         R16 K38 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
      192 GETIMPORT                        R17 K41 [UDim2.new]
      194 LOADN                            R18 1
      195 GETTABLEKS                       R21 R0 K42 ["state"]
      197 GETTABLEKS                       R20 R21 K43 ["buttonSize"]
      199 MINUS                            R19 R20
      200 LOADN                            R20 1
      201 LOADN                            R21 0
      202 CALL                             R17 4 1
      203 SETTABLEKS                       R17 R16 K10 ["Size"]
      205 LOADN                            R17 2
      206 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      208 GETIMPORT                        R17 K19 [Enum.FillDirection.Horizontal]
      210 SETTABLEKS                       R17 R16 K14 ["Layout"]
      212 GETIMPORT                        R17 K45 [Enum.HorizontalAlignment.Center]
      214 SETTABLEKS                       R17 R16 K37 ["HorizontalAlignment"]
      216 DUPTABLE                         R17 K47 [{"Button"}]
      217 GETUPVAL                         R19 2
      218 GETTABLEKS                       R18 R19 K9 ["createElement"]
      220 GETUPVAL                         R19 5
      221 DUPTABLE                         R20 K64 [{"Groups", "OnGroupAdded", "OnEditingChanged"}]
      222 GETTABLEKS                       R21 R1 K4 ["Groups"]
      224 SETTABLEKS                       R21 R20 K4 ["Groups"]
      226 GETTABLEKS                       R21 R1 K62 ["OnGroupAdded"]
      228 SETTABLEKS                       R21 R20 K62 ["OnGroupAdded"]
      230 GETTABLEKS                       R21 R0 K65 ["onEditingChanged"]
      232 SETTABLEKS                       R21 R20 K63 ["OnEditingChanged"]
      234 CALL                             R18 2 1
      235 SETTABLEKS                       R18 R17 K46 ["Button"]
      237 CALL                             R14 3 1
      238 SETTABLEKS                       R14 R13 K31 ["AddGroupButton"]
      240 CALL                             R10 3 1
      241 SETTABLEKS                       R10 R9 K20 ["TextButtonPane"]
      243 GETUPVAL                         R11 2
      244 GETTABLEKS                       R10 R11 K9 ["createElement"]
      246 GETUPVAL                         R11 3
      247 DUPTABLE                         R12 K38 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
      248 GETTABLEKS                       R13 R3 K66 ["GroupButtonsPaneSize"]
      250 SETTABLEKS                       R13 R12 K10 ["Size"]
      252 LOADN                            R13 2
      253 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
      255 GETIMPORT                        R13 K19 [Enum.FillDirection.Horizontal]
      257 SETTABLEKS                       R13 R12 K14 ["Layout"]
      259 GETIMPORT                        R13 K68 [Enum.HorizontalAlignment.Right]
      261 SETTABLEKS                       R13 R12 K37 ["HorizontalAlignment"]
      263 DUPTABLE                         R13 K71 [{"RenameButton", "DeleteButton"}]
      264 JUMPIFNOT                        R4 ; [+26]
      265 GETUPVAL                         R15 2
      266 GETTABLEKS                       R14 R15 K9 ["createElement"]
      268 GETUPVAL                         R15 6
      269 DUPTABLE                         R16 K73 [{"Style", "OnClick", "TooltipMessage", "LayoutOrder"}]
      270 LOADK                            R17 K74 ["Rename"]
      271 SETTABLEKS                       R17 R16 K48 ["Style"]
      273 GETTABLEKS                       R17 R1 K75 ["OnGroupRenamed"]
      275 SETTABLEKS                       R17 R16 K50 ["OnClick"]
      277 GETTABLEKS                       R17 R1 K1 ["Localization"]
      279 LOADK                            R19 K76 ["Tooltip"]
      280 LOADK                            R20 K74 ["Rename"]
      281 NAMECALL                         R17 R17 K56 ["getText"]
      283 CALL                             R17 3 1
      284 SETTABLEKS                       R17 R16 K72 ["TooltipMessage"]
      286 LOADN                            R17 1
      287 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      289 CALL                             R14 2 1
      290 JUMP                             ; [+1]
      291 LOADNIL                          R14
      292 SETTABLEKS                       R14 R13 K69 ["RenameButton"]
      294 JUMPIFNOT                        R5 ; [+26]
      295 GETUPVAL                         R15 2
      296 GETTABLEKS                       R14 R15 K9 ["createElement"]
      298 GETUPVAL                         R15 6
      299 DUPTABLE                         R16 K73 [{"Style", "OnClick", "TooltipMessage", "LayoutOrder"}]
      300 LOADK                            R17 K77 ["Delete"]
      301 SETTABLEKS                       R17 R16 K48 ["Style"]
      303 GETTABLEKS                       R17 R1 K78 ["OnGroupDeleted"]
      305 SETTABLEKS                       R17 R16 K50 ["OnClick"]
      307 GETTABLEKS                       R17 R1 K1 ["Localization"]
      309 LOADK                            R19 K76 ["Tooltip"]
      310 LOADK                            R20 K77 ["Delete"]
      311 NAMECALL                         R17 R17 K56 ["getText"]
      313 CALL                             R17 3 1
      314 SETTABLEKS                       R17 R16 K72 ["TooltipMessage"]
      316 LOADN                            R17 2
      317 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      319 CALL                             R14 2 1
      320 JUMP                             ; [+1]
      321 LOADNIL                          R14
      322 SETTABLEKS                       R14 R13 K70 ["DeleteButton"]
      324 CALL                             R10 3 1
      325 SETTABLEKS                       R10 R9 K21 ["GroupButtonsPane"]
      327 CALL                             R6 3 -1
      328 RETURN                           R6 -1

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
       25 GETTABLEKS                       R4 R3 K9 ["Localization"]
       27 GETTABLEKS                       R5 R2 K10 ["UI"]
       29 GETTABLEKS                       R6 R5 K11 ["Button"]
       31 GETTABLEKS                       R7 R5 K12 ["Pane"]
       33 GETIMPORT                        R8 K4 [require]
       35 GETIMPORT                        R11 K1 [script]
       37 GETTABLEKS                       R10 R11 K2 ["Parent"]
       39 GETTABLEKS                       R9 R10 K13 ["AddGroup"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K4 [require]
       44 GETIMPORT                        R13 K1 [script]
       46 GETTABLEKS                       R12 R13 K2 ["Parent"]
       48 GETTABLEKS                       R11 R12 K2 ["Parent"]
       50 GETTABLEKS                       R10 R11 K14 ["Constants"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K4 [require]
       55 GETIMPORT                        R13 K1 [script]
       57 GETTABLEKS                       R12 R13 K2 ["Parent"]
       59 GETTABLEKS                       R11 R12 K15 ["GroupButton"]
       61 CALL                             R10 1 1
       62 GETTABLEKS                       R11 R1 K16 ["Component"]
       64 LOADK                            R13 K17 ["ControlsHeaderRow"]
       65 NAMECALL                         R11 R11 K18 ["extend"]
       67 CALL                             R11 2 1
       68 GETIMPORT                        R12 K20 [game]
       70 LOADK                            R14 K21 ["CGECanRenameStudioSelectable"]
       71 NAMECALL                         R12 R12 K22 ["GetFastFlag"]
       73 CALL                             R12 2 1
       74 DUPCLOSURE                       R13 K23 [PROTO_3]
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R9
       77 SETTABLEKS                       R13 R11 K24 ["init"]
       79 DUPCLOSURE                       R13 K25 [PROTO_4]
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R10
       87 SETTABLEKS                       R13 R11 K26 ["render"]
       89 GETTABLEKS                       R13 R3 K27 ["withContext"]
       91 DUPTABLE                         R14 K29 [{"Stylizer", "Localization"}]
       92 GETTABLEKS                       R15 R3 K28 ["Stylizer"]
       94 SETTABLEKS                       R15 R14 K28 ["Stylizer"]
       96 SETTABLEKS                       R4 R14 K9 ["Localization"]
       98 CALL                             R13 1 1
       99 MOVE                             R14 R11
      100 CALL                             R13 1 1
      101 MOVE                             R11 R13
      102 RETURN                           R11 1
