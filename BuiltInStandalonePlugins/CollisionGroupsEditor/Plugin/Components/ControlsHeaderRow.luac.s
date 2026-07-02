PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"editing"}]
        2 SETTABLEKS                       R0 R3 K0 ["editing"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["textButtonPaneRef"]
        3 NAMECALL                         R1 R1 K1 ["getValue"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R1 K2 ["AbsoluteSize"]
        8 GETTABLEKS                       R2 R2 K3 ["X"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K5 ["ControlsHeaderButtonWidth"]
       13 MULK                             R3 R4 K4 [2]
       14 JUMPIFNOTLT                      R2 R3 ; [+9]
       16 DUPTABLE                         R3 K7 [{"buttonSize"}]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K5 ["ControlsHeaderButtonWidth"]
       20 SUB                              R4 R2 R5
       21 SETTABLEKS                       R4 R3 K6 ["buttonSize"]
       23 RETURN                           R3 1
       24 DUPTABLE                         R3 K7 [{"buttonSize"}]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K5 ["ControlsHeaderButtonWidth"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["textButtonPaneRef"]
        6 DUPTABLE                         R1 K5 [{["editing"] = False, ["buttonSize"]}]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K6 ["ControlsHeaderButtonWidth"]
       10 SETTABLEKS                       R2 R1 K4 ["buttonSize"]
       12 SETTABLEKS                       R1 R0 K7 ["state"]
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K8 ["onEditingChanged"]
       18 NEWCLOSURE                       R1 P1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U1
       21 SETTABLEKS                       R1 R0 K9 ["updateButtonFlexSize"]
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
      113 GETUPVAL                         R14 2
      114 GETTABLEKS                       R14 R14 K9 ["createElement"]
      116 GETUPVAL                         R15 3
      117 DUPTABLE                         R16 K39 [{["Size"], ["LayoutOrder"] = 1, ["Layout"], ["HorizontalAlignment"]}]
      118 GETIMPORT                        R17 K42 [UDim2.new]
      120 LOADN                            R18 0
      121 GETTABLEKS                       R19 R0 K43 ["state"]
      123 GETTABLEKS                       R19 R19 K44 ["buttonSize"]
      125 LOADN                            R20 1
      126 LOADN                            R21 0
      127 CALL                             R17 4 1
      128 SETTABLEKS                       R17 R16 K10 ["Size"]
      130 GETIMPORT                        R17 K19 [Enum.FillDirection.Horizontal]
      132 SETTABLEKS                       R17 R16 K14 ["Layout"]
      134 GETIMPORT                        R17 K46 [Enum.HorizontalAlignment.Center]
      136 SETTABLEKS                       R17 R16 K38 ["HorizontalAlignment"]
      138 DUPTABLE                         R17 K48 [{"Button"}]
      139 GETUPVAL                         R18 2
      140 GETTABLEKS                       R18 R18 K9 ["createElement"]
      142 GETUPVAL                         R19 4
      143 DUPTABLE                         R20 K53 [{["Style"] = "Round", ["Text"], ["Size"], ["OnClick"]}]
      144 GETTABLEKS                       R22 R1 K54 ["ToggleListView"]
      146 JUMPIFNOT                        R22 ; [+6]
      147 LOADK                            R23 K55 ["Actions"]
      148 LOADK                            R24 K56 ["TableView"]
      149 NAMECALL                         R21 R2 K57 ["getText"]
      151 CALL                             R21 3 1
      152 JUMP                             ; [+5]
      153 LOADK                            R23 K55 ["Actions"]
      154 LOADK                            R24 K58 ["ListView"]
      155 NAMECALL                         R21 R2 K57 ["getText"]
      157 CALL                             R21 3 1
      158 SETTABLEKS                       R21 R20 K51 ["Text"]
      160 GETIMPORT                        R21 K60 [UDim2.fromOffset]
      162 GETTABLEKS                       R22 R0 K43 ["state"]
      164 GETTABLEKS                       R22 R22 K44 ["buttonSize"]
      166 GETTABLEKS                       R23 R3 K61 ["ButtonHeight"]
      168 CALL                             R21 2 1
      169 SETTABLEKS                       R21 R20 K10 ["Size"]
      171 GETTABLEKS                       R21 R1 K62 ["OnViewModeToggled"]
      173 SETTABLEKS                       R21 R20 K52 ["OnClick"]
      175 CALL                             R18 2 1
      176 SETTABLEKS                       R18 R17 K47 ["Button"]
      178 CALL                             R14 3 1
      179 SETTABLEKS                       R14 R13 K30 ["ToggleViewButton"]
      181 GETUPVAL                         R14 2
      182 GETTABLEKS                       R14 R14 K9 ["createElement"]
      184 GETUPVAL                         R15 3
      185 DUPTABLE                         R16 K64 [{["Size"], ["LayoutOrder"] = 2, ["Layout"], ["HorizontalAlignment"]}]
      186 GETIMPORT                        R17 K42 [UDim2.new]
      188 LOADN                            R18 1
      189 GETTABLEKS                       R20 R0 K43 ["state"]
      191 GETTABLEKS                       R20 R20 K44 ["buttonSize"]
      193 MINUS                            R19 R20
      194 LOADN                            R20 1
      195 LOADN                            R21 0
      196 CALL                             R17 4 1
      197 SETTABLEKS                       R17 R16 K10 ["Size"]
      199 GETIMPORT                        R17 K19 [Enum.FillDirection.Horizontal]
      201 SETTABLEKS                       R17 R16 K14 ["Layout"]
      203 GETIMPORT                        R17 K46 [Enum.HorizontalAlignment.Center]
      205 SETTABLEKS                       R17 R16 K38 ["HorizontalAlignment"]
      207 DUPTABLE                         R17 K48 [{"Button"}]
      208 GETUPVAL                         R18 2
      209 GETTABLEKS                       R18 R18 K9 ["createElement"]
      211 GETUPVAL                         R19 5
      212 DUPTABLE                         R20 K67 [{"Groups", "OnGroupAdded", "OnEditingChanged"}]
      213 GETTABLEKS                       R21 R1 K4 ["Groups"]
      215 SETTABLEKS                       R21 R20 K4 ["Groups"]
      217 GETTABLEKS                       R21 R1 K65 ["OnGroupAdded"]
      219 SETTABLEKS                       R21 R20 K65 ["OnGroupAdded"]
      221 GETTABLEKS                       R21 R0 K68 ["onEditingChanged"]
      223 SETTABLEKS                       R21 R20 K66 ["OnEditingChanged"]
      225 CALL                             R18 2 1
      226 SETTABLEKS                       R18 R17 K47 ["Button"]
      228 CALL                             R14 3 1
      229 SETTABLEKS                       R14 R13 K31 ["AddGroupButton"]
      231 CALL                             R10 3 1
      232 SETTABLEKS                       R10 R9 K20 ["TextButtonPane"]
      234 GETUPVAL                         R10 2
      235 GETTABLEKS                       R10 R10 K9 ["createElement"]
      237 GETUPVAL                         R11 3
      238 DUPTABLE                         R12 K64 [{["Size"], ["LayoutOrder"] = 2, ["Layout"], ["HorizontalAlignment"]}]
      239 GETTABLEKS                       R13 R3 K69 ["GroupButtonsPaneSize"]
      241 SETTABLEKS                       R13 R12 K10 ["Size"]
      243 GETIMPORT                        R13 K19 [Enum.FillDirection.Horizontal]
      245 SETTABLEKS                       R13 R12 K14 ["Layout"]
      247 GETIMPORT                        R13 K71 [Enum.HorizontalAlignment.Right]
      249 SETTABLEKS                       R13 R12 K38 ["HorizontalAlignment"]
      251 DUPTABLE                         R13 K74 [{"RenameButton", "DeleteButton"}]
      252 JUMPIFNOT                        R4 ; [+20]
      253 GETUPVAL                         R14 2
      254 GETTABLEKS                       R14 R14 K9 ["createElement"]
      256 GETUPVAL                         R15 6
      257 DUPTABLE                         R16 K77 [{["Style"] = "Rename", ["OnClick"], ["TooltipMessage"], ["LayoutOrder"] = 1}]
      258 GETTABLEKS                       R17 R1 K78 ["OnGroupRenamed"]
      260 SETTABLEKS                       R17 R16 K52 ["OnClick"]
      262 GETTABLEKS                       R17 R1 K1 ["Localization"]
      264 LOADK                            R19 K79 ["Tooltip"]
      265 LOADK                            R20 K75 ["Rename"]
      266 NAMECALL                         R17 R17 K57 ["getText"]
      268 CALL                             R17 3 1
      269 SETTABLEKS                       R17 R16 K76 ["TooltipMessage"]
      271 CALL                             R14 2 1
      272 JUMP                             ; [+1]
      273 LOADNIL                          R14
      274 SETTABLEKS                       R14 R13 K72 ["RenameButton"]
      276 JUMPIFNOT                        R5 ; [+20]
      277 GETUPVAL                         R14 2
      278 GETTABLEKS                       R14 R14 K9 ["createElement"]
      280 GETUPVAL                         R15 6
      281 DUPTABLE                         R16 K81 [{["Style"] = "Delete", ["OnClick"], ["TooltipMessage"], ["LayoutOrder"] = 2}]
      282 GETTABLEKS                       R17 R1 K82 ["OnGroupDeleted"]
      284 SETTABLEKS                       R17 R16 K52 ["OnClick"]
      286 GETTABLEKS                       R17 R1 K1 ["Localization"]
      288 LOADK                            R19 K79 ["Tooltip"]
      289 LOADK                            R20 K80 ["Delete"]
      290 NAMECALL                         R17 R17 K57 ["getText"]
      292 CALL                             R17 3 1
      293 SETTABLEKS                       R17 R16 K76 ["TooltipMessage"]
      295 CALL                             R14 2 1
      296 JUMP                             ; [+1]
      297 LOADNIL                          R14
      298 SETTABLEKS                       R14 R13 K73 ["DeleteButton"]
      300 CALL                             R10 3 1
      301 SETTABLEKS                       R10 R9 K21 ["GroupButtonsPane"]
      303 CALL                             R6 3 -1
      304 RETURN                           R6 -1

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
