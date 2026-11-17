PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["setSearch"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+8]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["props"]
        5 GETTABLEKS                       R1 R1 K2 ["setSearch"]
        7 LOADK                            R2 K0 [""]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["tagMenu"]
        5 JUMPIFNOT                        R1 ; [+14]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["Get"]
        9 CALL                             R1 0 1
       10 GETTABLEKS                       R3 R0 K1 ["tagMenu"]
       12 NAMECALL                         R1 R1 K3 ["DelTag"]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K4 ["openTagMenu"]
       17 LOADNIL                          R2
       18 CALL                             R1 1 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R1 R0 K5 ["groupMenu"]
       22 JUMPIFNOT                        R1 ; [+13]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K2 ["Get"]
       26 CALL                             R1 0 1
       27 GETTABLEKS                       R3 R0 K5 ["groupMenu"]
       29 NAMECALL                         R1 R1 K6 ["DeleteGroup"]
       31 CALL                             R1 2 0
       32 GETTABLEKS                       R1 R0 K7 ["openGroupMenu"]
       34 LOADNIL                          R2
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["tagMenu"]
        5 JUMPIFEQKNIL                     R2 ; [+18]
        7 GETUPVAL                         R2 1
        8 LOADK                            R5 K2 ["Info"]
        9 LOADK                            R6 K3 ["NewGroup"]
       10 NAMECALL                         R3 R0 K4 ["getText"]
       12 CALL                             R3 3 -1
       13 CALL                             R2 -1 1
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K5 ["Get"]
       17 CALL                             R3 0 1
       18 GETTABLEKS                       R5 R1 K1 ["tagMenu"]
       20 MOVE                             R6 R2
       21 NAMECALL                         R3 R3 K6 ["SetGroup"]
       23 CALL                             R3 3 0
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["setWorldView"]
        5 GETTABLEKS                       R3 R0 K2 ["worldView"]
        7 NOT                              R2 R3
        8 CALL                             R1 1 0
        9 GETTABLEKS                       R1 R0 K2 ["worldView"]
       11 JUMPIF                           R1 ; [+6]
       12 GETTABLEKS                       R1 R0 K3 ["Analytics"]
       14 LOADK                            R3 K4 ["worldVisualization"]
       15 NAMECALL                         R1 R1 K5 ["report"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onSearchRequested"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["onTextChanged"]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 SETTABLEKS                       R1 R0 K2 ["onDeleteClicked"]
       13 NEWCLOSURE                       R1 P3
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U0
       17 SETTABLEKS                       R1 R0 K3 ["onNewGroupClicked"]
       19 NEWCLOSURE                       R1 P4
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K4 ["onWorldViewButtonClicked"]
       23 DUPTABLE                         R1 K7 [{["worldViewButtonWidth"] = 0}]
       24 SETTABLEKS                       R1 R0 K8 ["state"]
       26 GETUPVAL                         R1 2
       27 GETTABLEKS                       R1 R1 K9 ["createRef"]
       29 CALL                             R1 0 1
       30 SETTABLEKS                       R1 R0 K10 ["worldViewButtonRef"]
       32 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["worldViewButtonRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 JUMPIFNOT                        R1 ; [+10]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["worldViewButtonRef"]
        9 GETTABLEKS                       R0 R0 K1 ["current"]
       11 GETTABLEKS                       R0 R0 K2 ["AbsoluteSize"]
       13 GETTABLEKS                       R0 R0 K3 ["X"]
       15 JUMPIF                           R0 ; [+1]
       16 LOADN                            R0 0
       17 GETUPVAL                         R1 1
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K4 ["worldViewButtonWidth"]
       22 JUMPIFEQ                         R1 R0 ; [+8]
       24 GETUPVAL                         R1 0
       25 DUPTABLE                         R3 K5 [{"worldViewButtonWidth"}]
       26 SETTABLEKS                       R0 R3 K4 ["worldViewButtonWidth"]
       28 NAMECALL                         R1 R1 K6 ["setState"]
       30 CALL                             R1 2 0
       31 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R2 K2 [task.defer]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 MOVE                             R5 R2
        1 NAMECALL                         R3 R0 K0 ["updateExtents"]
        3 CALL                             R3 2 0
        4 RETURN                           R0 0

PROTO_9:
        0 NAMECALL                         R1 R0 K0 ["updateExtents"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onNewGroupClicked"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R3 K3 ["TagTopPane"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K4 ["new"]
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K4 ["new"]
       15 CALL                             R5 0 1
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K4 ["new"]
       19 CALL                             R6 0 1
       20 GETTABLEKS                       R7 R1 K2 ["Stylizer"]
       22 GETTABLEKS                       R7 R7 K5 ["VisibleIcon"]
       24 GETTABLEKS                       R8 R1 K2 ["Stylizer"]
       26 GETTABLEKS                       R8 R8 K6 ["VisibleOffIcon"]
       28 GETTABLEKS                       R9 R1 K7 ["groupMenu"]
       30 JUMPIF                           R9 ; [+3]
       31 GETTABLEKS                       R10 R1 K8 ["tagMenu"]
       33 NOT                              R9 R10
       34 GETTABLEKS                       R11 R1 K8 ["tagMenu"]
       36 NOT                              R10 R11
       37 JUMPIFNOT                        R10 ; [+3]
       38 GETTABLEKS                       R11 R1 K7 ["groupMenu"]
       40 NOT                              R10 R11
       41 JUMPIFNOT                        R9 ; [+6]
       42 LOADK                            R13 K9 ["Tooltip"]
       43 LOADK                            R14 K10 ["NewGroupDisabled"]
       44 NAMECALL                         R11 R2 K11 ["getText"]
       46 CALL                             R11 3 1
       47 JUMP                             ; [+5]
       48 LOADK                            R13 K9 ["Tooltip"]
       49 LOADK                            R14 K12 ["NewGroupEnabled"]
       50 NAMECALL                         R11 R2 K11 ["getText"]
       52 CALL                             R11 3 1
       53 JUMPIFNOT                        R10 ; [+6]
       54 LOADK                            R14 K9 ["Tooltip"]
       55 LOADK                            R15 K13 ["DeleteDisabled"]
       56 NAMECALL                         R12 R2 K11 ["getText"]
       58 CALL                             R12 3 1
       59 JUMP                             ; [+5]
       60 LOADK                            R14 K9 ["Tooltip"]
       61 LOADK                            R15 K14 ["DeleteEnabled"]
       62 NAMECALL                         R12 R2 K11 ["getText"]
       64 CALL                             R12 3 1
       65 GETUPVAL                         R13 1
       66 GETTABLEKS                       R13 R13 K15 ["createElement"]
       68 GETUPVAL                         R14 2
       69 DUPTABLE                         R15 K21 [{["Layout"], ["VerticalAlignment"], ["LayoutOrder"] = 1, ["Padding"]}]
       70 GETIMPORT                        R16 K25 [Enum.FillDirection.Vertical]
       72 SETTABLEKS                       R16 R15 K16 ["Layout"]
       74 GETIMPORT                        R16 K27 [Enum.VerticalAlignment.Top]
       76 SETTABLEKS                       R16 R15 K17 ["VerticalAlignment"]
       78 GETTABLEKS                       R16 R3 K20 ["Padding"]
       80 SETTABLEKS                       R16 R15 K20 ["Padding"]
       82 DUPTABLE                         R16 K31 [{"SearchRowPane", "NewTagRowPane", "TagListView"}]
       83 GETUPVAL                         R17 1
       84 GETTABLEKS                       R17 R17 K15 ["createElement"]
       86 GETUPVAL                         R18 2
       87 DUPTABLE                         R19 K34 [{"Size", "LayoutOrder", "Layout", "Spacing"}]
       88 GETTABLEKS                       R20 R3 K35 ["SearchBarPaneSize"]
       90 SETTABLEKS                       R20 R19 K32 ["Size"]
       92 NAMECALL                         R20 R4 K36 ["getNextOrder"]
       94 CALL                             R20 1 1
       95 SETTABLEKS                       R20 R19 K18 ["LayoutOrder"]
       97 GETIMPORT                        R20 K38 [Enum.FillDirection.Horizontal]
       99 SETTABLEKS                       R20 R19 K16 ["Layout"]
      101 GETTABLEKS                       R20 R3 K39 ["RowSpacing"]
      103 SETTABLEKS                       R20 R19 K33 ["Spacing"]
      105 DUPTABLE                         R20 K43 [{"SearchBar", "NewGroupButton", "DeleteButton"}]
      106 GETUPVAL                         R21 1
      107 GETTABLEKS                       R21 R21 K15 ["createElement"]
      109 GETUPVAL                         R22 3
      110 DUPTABLE                         R23 K53 [{["Size"], ["ShowSearchButton"] = False, ["ShowSearchIcon"] = True, ["LayoutOrder"], ["OnSearchRequested"], ["OnTextChanged"], ["Style"] = "Compact", ["PlaceholderText"]}]
      111 GETTABLEKS                       R24 R3 K54 ["SearchBarSize"]
      113 SETTABLEKS                       R24 R23 K32 ["Size"]
      115 NAMECALL                         R24 R5 K36 ["getNextOrder"]
      117 CALL                             R24 1 1
      118 SETTABLEKS                       R24 R23 K18 ["LayoutOrder"]
      120 GETTABLEKS                       R24 R0 K55 ["onSearchRequested"]
      122 SETTABLEKS                       R24 R23 K48 ["OnSearchRequested"]
      124 GETTABLEKS                       R24 R0 K56 ["onTextChanged"]
      126 SETTABLEKS                       R24 R23 K49 ["OnTextChanged"]
      128 LOADK                            R26 K57 ["General"]
      129 LOADK                            R27 K58 ["Search"]
      130 NAMECALL                         R24 R2 K11 ["getText"]
      132 CALL                             R24 3 1
      133 SETTABLEKS                       R24 R23 K52 ["PlaceholderText"]
      135 CALL                             R21 2 1
      136 SETTABLEKS                       R21 R20 K40 ["SearchBar"]
      138 GETUPVAL                         R21 1
      139 GETTABLEKS                       R21 R21 K15 ["createElement"]
      141 GETUPVAL                         R22 4
      142 DUPTABLE                         R23 K65 [{["BackgroundStyle"] = "RoundBox", ["LeftIcon"], ["OnClick"], ["LayoutOrder"], ["Style"], ["Disabled"], ["TooltipText"]}]
      143 GETTABLEKS                       R24 R3 K66 ["NewGroupIcon"]
      145 SETTABLEKS                       R24 R23 K61 ["LeftIcon"]
      147 NEWCLOSURE                       R24 P0
      148 CAPTURE                          VAL R0
      149 CAPTURE                          VAL R2
      150 SETTABLEKS                       R24 R23 K62 ["OnClick"]
      152 NAMECALL                         R24 R5 K36 ["getNextOrder"]
      154 CALL                             R24 1 1
      155 SETTABLEKS                       R24 R23 K18 ["LayoutOrder"]
      157 ANDK                             R24 R9 K63 ["Disabled"]
      158 SETTABLEKS                       R24 R23 K50 ["Style"]
      160 SETTABLEKS                       R9 R23 K63 ["Disabled"]
      162 SETTABLEKS                       R11 R23 K64 ["TooltipText"]
      164 CALL                             R21 2 1
      165 SETTABLEKS                       R21 R20 K41 ["NewGroupButton"]
      167 GETUPVAL                         R21 1
      168 GETTABLEKS                       R21 R21 K15 ["createElement"]
      170 GETUPVAL                         R22 4
      171 DUPTABLE                         R23 K65 [{["BackgroundStyle"] = "RoundBox", ["LeftIcon"], ["OnClick"], ["LayoutOrder"], ["Style"], ["Disabled"], ["TooltipText"]}]
      172 GETTABLEKS                       R24 R3 K67 ["DeleteIcon"]
      174 SETTABLEKS                       R24 R23 K61 ["LeftIcon"]
      176 GETTABLEKS                       R24 R0 K68 ["onDeleteClicked"]
      178 SETTABLEKS                       R24 R23 K62 ["OnClick"]
      180 NAMECALL                         R24 R5 K36 ["getNextOrder"]
      182 CALL                             R24 1 1
      183 SETTABLEKS                       R24 R23 K18 ["LayoutOrder"]
      185 ANDK                             R24 R10 K63 ["Disabled"]
      186 SETTABLEKS                       R24 R23 K50 ["Style"]
      188 SETTABLEKS                       R10 R23 K63 ["Disabled"]
      190 SETTABLEKS                       R12 R23 K64 ["TooltipText"]
      192 CALL                             R21 2 1
      193 SETTABLEKS                       R21 R20 K42 ["DeleteButton"]
      195 CALL                             R17 3 1
      196 SETTABLEKS                       R17 R16 K28 ["SearchRowPane"]
      198 GETUPVAL                         R17 1
      199 GETTABLEKS                       R17 R17 K15 ["createElement"]
      201 GETUPVAL                         R18 2
      202 DUPTABLE                         R19 K70 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
      203 GETTABLEKS                       R20 R3 K71 ["NewTagRowSize"]
      205 SETTABLEKS                       R20 R19 K32 ["Size"]
      207 NAMECALL                         R20 R4 K36 ["getNextOrder"]
      209 CALL                             R20 1 1
      210 SETTABLEKS                       R20 R19 K18 ["LayoutOrder"]
      212 GETIMPORT                        R20 K38 [Enum.FillDirection.Horizontal]
      214 SETTABLEKS                       R20 R19 K16 ["Layout"]
      216 GETIMPORT                        R20 K73 [Enum.HorizontalAlignment.Left]
      218 SETTABLEKS                       R20 R19 K69 ["HorizontalAlignment"]
      220 DUPTABLE                         R20 K76 [{"NewTagTextInput", "ToggleWorldViewButton"}]
      221 GETUPVAL                         R21 1
      222 GETTABLEKS                       R21 R21 K15 ["createElement"]
      224 GETUPVAL                         R22 5
      225 DUPTABLE                         R23 K78 [{"WidthOffset", "LayoutOrder"}]
      226 GETTABLEKS                       R24 R0 K79 ["state"]
      228 GETTABLEKS                       R24 R24 K80 ["worldViewButtonWidth"]
      230 SETTABLEKS                       R24 R23 K77 ["WidthOffset"]
      232 NAMECALL                         R24 R6 K36 ["getNextOrder"]
      234 CALL                             R24 1 1
      235 SETTABLEKS                       R24 R23 K18 ["LayoutOrder"]
      237 CALL                             R21 2 1
      238 SETTABLEKS                       R21 R20 K74 ["NewTagTextInput"]
      240 GETUPVAL                         R21 1
      241 GETTABLEKS                       R21 R21 K15 ["createElement"]
      243 GETUPVAL                         R22 4
      244 NEWTABLE                         R23 16 0
      246 LOADK                            R24 K60 ["RoundBox"]
      247 SETTABLEKS                       R24 R23 K59 ["BackgroundStyle"]
      249 GETTABLEKS                       R25 R1 K81 ["worldView"]
      251 JUMPIFNOT                        R25 ; [+2]
      252 MOVE                             R24 R7
      253 JUMP                             ; [+1]
      254 MOVE                             R24 R8
      255 SETTABLEKS                       R24 R23 K61 ["LeftIcon"]
      257 LOADN                            R24 5
      258 SETTABLEKS                       R24 R23 K20 ["Padding"]
      260 LOADN                            R24 4
      261 SETTABLEKS                       R24 R23 K33 ["Spacing"]
      263 GETIMPORT                        R24 K84 [Enum.AutomaticSize.X]
      265 SETTABLEKS                       R24 R23 K82 ["AutomaticSize"]
      267 LOADK                            R26 K85 ["Info"]
      268 LOADK                            R27 K86 ["WorldView"]
      269 NAMECALL                         R24 R2 K11 ["getText"]
      271 CALL                             R24 3 1
      272 SETTABLEKS                       R24 R23 K87 ["Text"]
      274 GETTABLEKS                       R24 R0 K88 ["onWorldViewButtonClicked"]
      276 SETTABLEKS                       R24 R23 K62 ["OnClick"]
      278 NAMECALL                         R24 R6 K36 ["getNextOrder"]
      280 CALL                             R24 1 1
      281 SETTABLEKS                       R24 R23 K18 ["LayoutOrder"]
      283 GETTABLEKS                       R24 R3 K89 ["WorldViewButtonSize"]
      285 SETTABLEKS                       R24 R23 K32 ["Size"]
      287 LOADK                            R26 K9 ["Tooltip"]
      288 LOADK                            R27 K86 ["WorldView"]
      289 NAMECALL                         R24 R2 K11 ["getText"]
      291 CALL                             R24 3 1
      292 SETTABLEKS                       R24 R23 K64 ["TooltipText"]
      294 GETUPVAL                         R24 1
      295 GETTABLEKS                       R24 R24 K90 ["Ref"]
      297 GETTABLEKS                       R25 R0 K91 ["worldViewButtonRef"]
      299 SETTABLE                         R25 R23 R24
      300 CALL                             R21 2 1
      301 SETTABLEKS                       R21 R20 K75 ["ToggleWorldViewButton"]
      303 CALL                             R17 3 1
      304 SETTABLEKS                       R17 R16 K29 ["NewTagRowPane"]
      306 GETUPVAL                         R17 1
      307 GETTABLEKS                       R17 R17 K15 ["createElement"]
      309 GETUPVAL                         R18 6
      310 DUPTABLE                         R19 K92 [{"LayoutOrder"}]
      311 NAMECALL                         R20 R4 K36 ["getNextOrder"]
      313 CALL                             R20 1 1
      314 SETTABLEKS                       R20 R19 K18 ["LayoutOrder"]
      316 CALL                             R17 2 1
      317 SETTABLEKS                       R17 R16 K30 ["TagListView"]
      319 CALL                             R13 3 -1
      320 RETURN                           R13 -1

PROTO_12:
        0 DUPTABLE                         R2 K4 [{"tagMenu", "groupMenu", "worldView", "groupData"}]
        1 GETTABLEKS                       R3 R0 K5 ["TagMenu"]
        3 SETTABLEKS                       R3 R2 K0 ["tagMenu"]
        5 GETTABLEKS                       R3 R0 K6 ["GroupMenu"]
        7 SETTABLEKS                       R3 R2 K1 ["groupMenu"]
        9 GETTABLEKS                       R3 R0 K7 ["WorldView"]
       11 SETTABLEKS                       R3 R2 K2 ["worldView"]
       13 GETTABLEKS                       R3 R0 K8 ["GroupData"]
       15 SETTABLEKS                       R3 R2 K3 ["groupData"]
       17 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["SetSearch"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["OpenTagMenu"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["OpenGroupMenu"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ToggleWorldView"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R1 K4 [{"setSearch", "openTagMenu", "openGroupMenu", "setWorldView"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["setSearch"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 SETTABLEKS                       R2 R1 K1 ["openTagMenu"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 SETTABLEKS                       R2 R1 K2 ["openGroupMenu"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U0
       19 SETTABLEKS                       R2 R1 K3 ["setWorldView"]
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K7 ["Packages"]
       34 GETTABLEKS                       R5 R5 K10 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K12 ["withContext"]
       41 GETTABLEKS                       R7 R5 K13 ["Analytics"]
       43 GETTABLEKS                       R8 R5 K14 ["Localization"]
       45 GETTABLEKS                       R9 R4 K15 ["Style"]
       47 GETTABLEKS                       R9 R9 K16 ["Stylizer"]
       49 GETTABLEKS                       R10 R4 K17 ["UI"]
       51 GETTABLEKS                       R11 R10 K18 ["IconButton"]
       53 GETTABLEKS                       R12 R10 K19 ["Pane"]
       55 GETTABLEKS                       R13 R10 K20 ["SearchBar"]
       57 GETTABLEKS                       R14 R4 K21 ["Util"]
       59 GETTABLEKS                       R15 R14 K22 ["LayoutOrderIterator"]
       61 GETIMPORT                        R16 K4 [require]
       63 GETTABLEKS                       R17 R0 K5 ["Src"]
       65 GETTABLEKS                       R17 R17 K23 ["Actions"]
       67 CALL                             R16 1 1
       68 GETIMPORT                        R17 K4 [require]
       70 GETTABLEKS                       R18 R0 K5 ["Src"]
       72 GETTABLEKS                       R18 R18 K21 ["Util"]
       74 GETTABLEKS                       R18 R18 K24 ["GetUniqueGroupName"]
       76 CALL                             R17 1 1
       77 GETIMPORT                        R18 K4 [require]
       79 GETTABLEKS                       R19 R0 K5 ["Src"]
       81 GETTABLEKS                       R19 R19 K25 ["TagManager"]
       83 CALL                             R18 1 1
       84 GETIMPORT                        R19 K4 [require]
       86 GETIMPORT                        R20 K1 [script]
       88 GETTABLEKS                       R20 R20 K2 ["Parent"]
       90 GETTABLEKS                       R20 R20 K26 ["NewTagTextInput"]
       92 CALL                             R19 1 1
       93 GETIMPORT                        R20 K4 [require]
       95 GETIMPORT                        R21 K1 [script]
       97 GETTABLEKS                       R21 R21 K2 ["Parent"]
       99 GETTABLEKS                       R21 R21 K27 ["TagListView"]
      101 CALL                             R20 1 1
      102 GETTABLEKS                       R21 R2 K28 ["PureComponent"]
      104 LOADK                            R23 K29 ["TagTopPane"]
      105 NAMECALL                         R21 R21 K30 ["extend"]
      107 CALL                             R21 2 1
      108 DUPCLOSURE                       R22 K31 [PROTO_5]
      109 CAPTURE                          VAL R18
      110 CAPTURE                          VAL R17
      111 CAPTURE                          VAL R2
      112 SETTABLEKS                       R22 R21 K32 ["init"]
      114 DUPCLOSURE                       R22 K33 [PROTO_7]
      115 SETTABLEKS                       R22 R21 K34 ["updateExtents"]
      117 DUPCLOSURE                       R22 K35 [PROTO_8]
      118 SETTABLEKS                       R22 R21 K36 ["didUpdate"]
      120 DUPCLOSURE                       R22 K37 [PROTO_9]
      121 SETTABLEKS                       R22 R21 K38 ["didMount"]
      123 DUPCLOSURE                       R22 K39 [PROTO_11]
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R19
      130 CAPTURE                          VAL R20
      131 SETTABLEKS                       R22 R21 K40 ["render"]
      133 MOVE                             R22 R6
      134 DUPTABLE                         R23 K41 [{"Analytics", "Localization", "Stylizer"}]
      135 SETTABLEKS                       R7 R23 K13 ["Analytics"]
      137 SETTABLEKS                       R8 R23 K14 ["Localization"]
      139 SETTABLEKS                       R9 R23 K16 ["Stylizer"]
      141 CALL                             R22 1 1
      142 MOVE                             R23 R21
      143 CALL                             R22 1 1
      144 MOVE                             R21 R22
      145 DUPCLOSURE                       R22 K42 [PROTO_12]
      146 DUPCLOSURE                       R23 K43 [PROTO_17]
      147 CAPTURE                          VAL R16
      148 GETTABLEKS                       R24 R3 K44 ["connect"]
      150 MOVE                             R25 R22
      151 MOVE                             R26 R23
      152 CALL                             R24 2 1
      153 MOVE                             R25 R21
      154 CALL                             R24 1 -1
      155 RETURN                           R24 -1
