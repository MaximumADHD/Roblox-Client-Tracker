PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["setMinimizedSettingsPane"]
        5 GETTABLEKS                       R3 R0 K2 ["minimizedSettingsPane"]
        7 NOT                              R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onExpandCollapseClicked"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R3 K3 ["TagSettingsToggleButton"]
        8 LOADK                            R6 K4 ["Info"]
        9 LOADK                            R7 K5 ["SettingsFor"]
       10 NAMECALL                         R4 R2 K6 ["getText"]
       12 CALL                             R4 3 1
       13 LOADK                            R7 K4 ["Info"]
       14 LOADK                            R8 K7 ["TagSettings"]
       15 NAMECALL                         R5 R2 K6 ["getText"]
       17 CALL                             R5 3 1
       18 GETTABLEKS                       R6 R1 K8 ["tagMenu"]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K9 ["createElement"]
       23 GETUPVAL                         R8 1
       24 DUPTABLE                         R9 K17 [{["Style"] = "SubtleBox", ["Size"], ["LayoutOrder"], ["Layout"], ["HorizontalAlignment"], ["Spacing"]}]
       25 GETTABLEKS                       R10 R3 K12 ["Size"]
       27 SETTABLEKS                       R10 R9 K12 ["Size"]
       29 GETTABLEKS                       R10 R1 K13 ["LayoutOrder"]
       31 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
       33 GETIMPORT                        R10 K21 [Enum.FillDirection.Horizontal]
       35 SETTABLEKS                       R10 R9 K14 ["Layout"]
       37 GETIMPORT                        R10 K23 [Enum.HorizontalAlignment.Left]
       39 SETTABLEKS                       R10 R9 K15 ["HorizontalAlignment"]
       41 GETTABLEKS                       R10 R3 K16 ["Spacing"]
       43 SETTABLEKS                       R10 R9 K16 ["Spacing"]
       45 DUPTABLE                         R10 K25 [{"ExpandCollapseButton"}]
       46 GETUPVAL                         R11 0
       47 GETTABLEKS                       R11 R11 K9 ["createElement"]
       49 GETUPVAL                         R12 2
       50 DUPTABLE                         R13 K31 [{["Text"], ["LeftIcon"], ["OnClick"], ["Size"], ["AutomaticSize"], ["BackgroundStyle"] = "SubtleBox"}]
       51 JUMPIFEQKNIL                     R6 ; [+6]
       53 MOVE                             R15 R4
       54 LOADK                            R16 K32 [" "]
       55 MOVE                             R17 R6
       56 CONCAT                           R14 R15 R17
       57 JUMP                             ; [+1]
       58 MOVE                             R14 R5
       59 SETTABLEKS                       R14 R13 K26 ["Text"]
       61 GETTABLEKS                       R15 R1 K33 ["minimizedSettingsPane"]
       63 JUMPIFNOT                        R15 ; [+3]
       64 GETTABLEKS                       R14 R3 K34 ["ClosedArrowImage"]
       66 JUMP                             ; [+2]
       67 GETTABLEKS                       R14 R3 K35 ["OpenArrowImage"]
       69 SETTABLEKS                       R14 R13 K27 ["LeftIcon"]
       71 GETTABLEKS                       R14 R0 K36 ["onExpandCollapseClicked"]
       73 SETTABLEKS                       R14 R13 K28 ["OnClick"]
       75 GETTABLEKS                       R14 R3 K12 ["Size"]
       77 SETTABLEKS                       R14 R13 K12 ["Size"]
       79 GETIMPORT                        R14 K38 [Enum.AutomaticSize.X]
       81 SETTABLEKS                       R14 R13 K29 ["AutomaticSize"]
       83 CALL                             R11 2 1
       84 SETTABLEKS                       R11 R10 K24 ["ExpandCollapseButton"]
       86 CALL                             R7 3 -1
       87 RETURN                           R7 -1

PROTO_3:
        0 DUPTABLE                         R2 K2 [{"tagMenu", "minimizedSettingsPane"}]
        1 GETTABLEKS                       R3 R0 K3 ["TagMenu"]
        3 SETTABLEKS                       R3 R2 K0 ["tagMenu"]
        5 GETTABLEKS                       R3 R0 K4 ["MinimizedSettingsPane"]
        7 SETTABLEKS                       R3 R2 K1 ["minimizedSettingsPane"]
        9 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["SetMinimizedSettingsPane"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"setMinimizedSettingsPane"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["setMinimizedSettingsPane"]
        6 RETURN                           R1 1

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
       55 GETIMPORT                        R13 K4 [require]
       57 GETTABLEKS                       R14 R0 K5 ["Src"]
       59 GETTABLEKS                       R14 R14 K20 ["Actions"]
       61 CALL                             R13 1 1
       62 GETTABLEKS                       R14 R2 K21 ["PureComponent"]
       64 LOADK                            R16 K22 ["TagSettingsToggleButton"]
       65 NAMECALL                         R14 R14 K23 ["extend"]
       67 CALL                             R14 2 1
       68 DUPCLOSURE                       R15 K24 [PROTO_1]
       69 SETTABLEKS                       R15 R14 K25 ["init"]
       71 DUPCLOSURE                       R15 K26 [PROTO_2]
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R11
       75 SETTABLEKS                       R15 R14 K27 ["render"]
       77 MOVE                             R15 R6
       78 DUPTABLE                         R16 K28 [{"Analytics", "Localization", "Stylizer"}]
       79 SETTABLEKS                       R7 R16 K13 ["Analytics"]
       81 SETTABLEKS                       R8 R16 K14 ["Localization"]
       83 SETTABLEKS                       R9 R16 K16 ["Stylizer"]
       85 CALL                             R15 1 1
       86 MOVE                             R16 R14
       87 CALL                             R15 1 1
       88 MOVE                             R14 R15
       89 DUPCLOSURE                       R15 K29 [PROTO_3]
       90 DUPCLOSURE                       R16 K30 [PROTO_5]
       91 CAPTURE                          VAL R13
       92 GETTABLEKS                       R17 R3 K31 ["connect"]
       94 MOVE                             R18 R15
       95 MOVE                             R19 R16
       96 CALL                             R17 2 1
       97 MOVE                             R18 R14
       98 CALL                             R17 1 -1
       99 RETURN                           R17 -1
