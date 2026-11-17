PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["ActiveQueueItem"]
        5 GETTABLEKS                       R3 R3 K2 ["currentPreset"]
        7 GETTABLEKS                       R4 R2 K3 ["PresetController"]
        9 GETUPVAL                         R5 1
       10 JUMPIFNOTEQ                      R0 R5 ; [+8]
       12 MOVE                             R7 R3
       13 GETTABLEKS                       R8 R2 K1 ["ActiveQueueItem"]
       15 NAMECALL                         R5 R4 K4 ["resolvePreset"]
       17 CALL                             R5 3 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R5 2
       20 JUMPIFNOTEQ                      R0 R5 ; [+7]
       22 GETUPVAL                         R5 0
       23 DUPTABLE                         R7 K9 [{["showNameDialog"] = True, ["promptIntent"] = "Rename"}]
       24 NAMECALL                         R5 R5 K10 ["setState"]
       26 CALL                             R5 2 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R5 3
       29 JUMPIFNOTEQ                      R0 R5 ; [+8]
       31 GETTABLEKS                       R5 R2 K3 ["PresetController"]
       33 MOVE                             R7 R3
       34 NAMECALL                         R5 R5 K11 ["delete"]
       36 CALL                             R5 2 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R5 4
       39 JUMPIFNOTEQ                      R0 R5 ; [+6]
       41 MOVE                             R7 R3
       42 NAMECALL                         R5 R4 K12 ["save"]
       44 CALL                             R5 2 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R5 5
       47 JUMPIFNOTEQ                      R0 R5 ; [+7]
       49 GETUPVAL                         R5 0
       50 DUPTABLE                         R7 K14 [{["showNameDialog"] = True, ["promptIntent"] = "Create"}]
       51 NAMECALL                         R5 R5 K10 ["setState"]
       53 CALL                             R5 2 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R5 6
       56 JUMPIFNOTEQ                      R0 R5 ; [+7]
       58 GETTABLEKS                       R5 R2 K3 ["PresetController"]
       60 MOVE                             R7 R3
       61 NAMECALL                         R5 R5 K15 ["setDefault"]
       63 CALL                             R5 2 0
       64 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["ActiveQueueItem"]
        5 GETTABLEKS                       R2 R2 K2 ["currentPreset"]
        7 GETTABLEKS                       R3 R1 K3 ["PresetController"]
        9 MOVE                             R5 R2
       10 NAMECALL                         R3 R3 K4 ["isStudioDefault"]
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R4 R1 K3 ["PresetController"]
       15 MOVE                             R6 R2
       16 NAMECALL                         R4 R4 K5 ["isLastImport"]
       18 CALL                             R4 2 1
       19 GETTABLEKS                       R5 R1 K3 ["PresetController"]
       21 MOVE                             R7 R2
       22 NAMECALL                         R5 R5 K6 ["isDefault"]
       24 CALL                             R5 2 1
       25 NOT                              R6 R3
       26 JUMPIFNOT                        R6 ; [+1]
       27 NOT                              R6 R4
       28 GETTABLEKS                       R7 R1 K1 ["ActiveQueueItem"]
       30 GETTABLEKS                       R7 R7 K7 ["settingsChanged"]
       32 GETUPVAL                         R8 1
       33 JUMPIFNOTEQ                      R0 R8 ; [+2]
       35 RETURN                           R7 1
       36 GETUPVAL                         R8 2
       37 JUMPIFNOTEQ                      R0 R8 ; [+2]
       39 RETURN                           R6 1
       40 GETUPVAL                         R8 3
       41 JUMPIFNOTEQ                      R0 R8 ; [+2]
       43 RETURN                           R6 1
       44 GETUPVAL                         R8 4
       45 JUMPIFNOTEQ                      R0 R8 ; [+3]
       47 AND                              R8 R7 R6
       48 RETURN                           R8 1
       49 GETUPVAL                         R8 5
       50 JUMPIFNOTEQ                      R0 R8 ; [+4]
       52 NOT                              R9 R3
       53 OR                               R8 R9 R7
       54 RETURN                           R8 1
       55 GETUPVAL                         R8 6
       56 JUMPIFNOTEQ                      R0 R8 ; [+3]
       58 NOT                              R8 R5
       59 RETURN                           R8 1
       60 LOADB                            R8 0
       61 RETURN                           R8 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
        3 GETTABLEKS                       R4 R4 K1 ["Stylizer"]
        5 GETTABLEKS                       R4 R4 K2 ["TopBar"]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R6 R6 K3 ["isItemEnabled"]
       10 MOVE                             R7 R0
       11 CALL                             R6 1 1
       12 JUMPIF                           R6 ; [+4]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K4 ["Disabled"]
       16 JUMP                             ; [+6]
       17 JUMPIFNOT                        R3 ; [+4]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K5 ["Hover"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R5
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R6 R6 K6 ["createElement"]
       26 GETUPVAL                         R7 3
       27 DUPTABLE                         R8 K12 [{"LayoutOrder", "OnClick", "Size", "StyleModifier", "AutomaticSize"}]
       28 SETTABLEKS                       R1 R8 K7 ["LayoutOrder"]
       30 SETTABLEKS                       R2 R8 K8 ["OnClick"]
       32 GETTABLEKS                       R9 R4 K13 ["MenuItemSize"]
       34 SETTABLEKS                       R9 R8 K9 ["Size"]
       36 SETTABLEKS                       R5 R8 K10 ["StyleModifier"]
       38 GETIMPORT                        R9 K16 [Enum.AutomaticSize.X]
       40 SETTABLEKS                       R9 R8 K11 ["AutomaticSize"]
       42 DUPTABLE                         R9 K18 [{"TextLabel"}]
       43 GETUPVAL                         R10 2
       44 GETTABLEKS                       R10 R10 K6 ["createElement"]
       46 GETUPVAL                         R11 4
       47 DUPTABLE                         R12 K21 [{"Text", "TextXAlignment", "Size", "StyleModifier", "AutomaticSize"}]
       48 SETTABLEKS                       R0 R12 K19 ["Text"]
       50 GETIMPORT                        R13 K23 [Enum.TextXAlignment.Left]
       52 SETTABLEKS                       R13 R12 K20 ["TextXAlignment"]
       54 GETIMPORT                        R13 K26 [UDim2.fromScale]
       56 LOADN                            R14 1
       57 LOADN                            R15 1
       58 CALL                             R13 2 1
       59 SETTABLEKS                       R13 R12 K9 ["Size"]
       61 SETTABLEKS                       R5 R12 K10 ["StyleModifier"]
       63 GETIMPORT                        R13 K16 [Enum.AutomaticSize.X]
       65 SETTABLEKS                       R13 R12 K11 ["AutomaticSize"]
       67 DUPTABLE                         R13 K28 [{"Padding"}]
       68 GETUPVAL                         R14 2
       69 GETTABLEKS                       R14 R14 K6 ["createElement"]
       71 LOADK                            R15 K29 ["UIPadding"]
       72 DUPTABLE                         R16 K32 [{"PaddingLeft", "PaddingRight"}]
       73 GETIMPORT                        R17 K35 [UDim.new]
       75 LOADN                            R18 0
       76 GETTABLEKS                       R19 R4 K27 ["Padding"]
       78 GETTABLEKS                       R19 R19 K22 ["Left"]
       80 CALL                             R17 2 1
       81 SETTABLEKS                       R17 R16 K30 ["PaddingLeft"]
       83 GETIMPORT                        R17 K35 [UDim.new]
       85 LOADN                            R18 0
       86 GETTABLEKS                       R19 R4 K27 ["Padding"]
       88 GETTABLEKS                       R19 R19 K36 ["Right"]
       90 CALL                             R17 2 1
       91 SETTABLEKS                       R17 R16 K31 ["PaddingRight"]
       93 CALL                             R14 2 1
       94 SETTABLEKS                       R14 R13 K27 ["Padding"]
       96 CALL                             R10 3 1
       97 SETTABLEKS                       R10 R9 K17 ["TextLabel"]
       99 CALL                             R6 3 -1
      100 RETURN                           R6 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["PresetController"]
        5 JUMPIFNOTEQKS                    R0 K2 ["Save"] ; [+32]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["state"]
       10 GETTABLEKS                       R3 R3 K4 ["promptIntent"]
       12 JUMPIFNOTEQKS                    R3 K5 ["Create"] ; [+6]
       14 MOVE                             R5 R1
       15 NAMECALL                         R3 R2 K6 ["save"]
       17 CALL                             R3 2 0
       18 JUMP                             ; [+19]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K3 ["state"]
       22 GETTABLEKS                       R3 R3 K4 ["promptIntent"]
       24 JUMPIFNOTEQKS                    R3 K7 ["Rename"] ; [+13]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K0 ["props"]
       29 GETTABLEKS                       R3 R3 K8 ["ActiveQueueItem"]
       31 GETTABLEKS                       R3 R3 K9 ["currentPreset"]
       33 MOVE                             R6 R1
       34 MOVE                             R7 R3
       35 NAMECALL                         R4 R2 K10 ["rename"]
       37 CALL                             R4 3 0
       38 GETUPVAL                         R3 0
       39 DUPTABLE                         R5 K13 [{["showNameDialog"] = False}]
       40 NAMECALL                         R3 R3 K14 ["setState"]
       42 CALL                             R3 2 0
       43 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 LOADK                            R4 K2 ["Templates"]
        5 LOADK                            R5 K3 ["Reset"]
        6 NAMECALL                         R2 R1 K4 ["getText"]
        8 CALL                             R2 3 1
        9 LOADK                            R5 K2 ["Templates"]
       10 LOADK                            R6 K5 ["Rename"]
       11 NAMECALL                         R3 R1 K4 ["getText"]
       13 CALL                             R3 3 1
       14 LOADK                            R6 K2 ["Templates"]
       15 LOADK                            R7 K6 ["Delete"]
       16 NAMECALL                         R4 R1 K4 ["getText"]
       18 CALL                             R4 3 1
       19 LOADK                            R7 K2 ["Templates"]
       20 LOADK                            R8 K7 ["SaveChanges"]
       21 NAMECALL                         R5 R1 K4 ["getText"]
       23 CALL                             R5 3 1
       24 LOADK                            R8 K2 ["Templates"]
       25 LOADK                            R9 K8 ["SaveNewPreset"]
       26 NAMECALL                         R6 R1 K4 ["getText"]
       28 CALL                             R6 3 1
       29 LOADK                            R9 K2 ["Templates"]
       30 LOADK                            R10 K9 ["SetAsDefault"]
       31 NAMECALL                         R7 R1 K4 ["getText"]
       33 CALL                             R7 3 1
       34 NEWTABLE                         R8 0 6
       36 MOVE                             R9 R2
       37 MOVE                             R10 R5
       38 MOVE                             R11 R6
       39 MOVE                             R12 R7
       40 MOVE                             R13 R3
       41 MOVE                             R14 R4
       42 SETLIST                          R8 R9 6 [1]
       44 SETTABLEKS                       R8 R0 K10 ["dropdownItems"]
       46 DUPTABLE                         R8 K15 [{["showNameDialog"] = False, ["promptIntent"] = 0}]
       47 SETTABLEKS                       R8 R0 K16 ["state"]
       49 NEWCLOSURE                       R8 P0
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R7
       57 SETTABLEKS                       R8 R0 K17 ["onItemActivated"]
       59 NEWCLOSURE                       R8 P1
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R7
       67 SETTABLEKS                       R8 R0 K18 ["isItemEnabled"]
       69 NEWCLOSURE                       R8 P2
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U0
       72 CAPTURE                          UPVAL U1
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          UPVAL U3
       75 SETTABLEKS                       R8 R0 K19 ["onRenderItem"]
       77 NEWCLOSURE                       R8 P3
       78 CAPTURE                          VAL R0
       79 SETTABLEKS                       R8 R0 K20 ["onNameDialogClose"]
       81 NEWCLOSURE                       R8 P4
       82 CAPTURE                          VAL R0
       83 SETTABLEKS                       R8 R0 K21 ["onNameDialogButtonPressed"]
       85 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R3 K3 ["TopBar"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K4 ["createElement"]
       11 GETUPVAL                         R5 1
       12 DUPTABLE                         R6 K7 [{"Size", "LayoutOrder"}]
       13 GETTABLEKS                       R7 R3 K8 ["MenuButtonSize"]
       15 SETTABLEKS                       R7 R6 K5 ["Size"]
       17 GETTABLEKS                       R7 R1 K6 ["LayoutOrder"]
       19 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       21 DUPTABLE                         R7 K11 [{"PresetMenu", "PresetNamePrompt"}]
       22 GETTABLEKS                       R9 R1 K12 ["Disabled"]
       24 JUMPIFNOT                        R9 ; [+20]
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K4 ["createElement"]
       28 LOADK                            R9 K13 ["ImageLabel"]
       29 DUPTABLE                         R10 K19 [{["BackgroundTransparency"] = 1, ["Image"], ["ImageTransparency"] = 0.5, ["Size"]}]
       30 GETTABLEKS                       R11 R3 K20 ["MenuImage"]
       32 SETTABLEKS                       R11 R10 K16 ["Image"]
       34 GETIMPORT                        R11 K23 [UDim2.new]
       36 LOADN                            R12 1
       37 LOADN                            R13 0
       38 LOADN                            R14 1
       39 LOADN                            R15 0
       40 CALL                             R11 4 1
       41 SETTABLEKS                       R11 R10 K5 ["Size"]
       43 CALL                             R8 2 1
       44 JUMP                             ; [+39]
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R8 R8 K4 ["createElement"]
       48 GETUPVAL                         R9 2
       49 DUPTABLE                         R10 K35 [{["Items"], ["HideText"] = True, ["OnItemActivated"], ["OnRenderItem"], ["OnMouseEnter"], ["OnMouseLeave"], ["Size"], ["ExpandIcon"], ["ShowSelection"] = False, ["UseAutoWidth"] = True}]
       50 GETTABLEKS                       R11 R0 K36 ["dropdownItems"]
       52 SETTABLEKS                       R11 R10 K24 ["Items"]
       54 GETTABLEKS                       R11 R0 K37 ["onItemActivated"]
       56 SETTABLEKS                       R11 R10 K27 ["OnItemActivated"]
       58 GETTABLEKS                       R11 R0 K38 ["onRenderItem"]
       60 SETTABLEKS                       R11 R10 K28 ["OnRenderItem"]
       62 GETTABLEKS                       R11 R0 K39 ["focused"]
       64 SETTABLEKS                       R11 R10 K29 ["OnMouseEnter"]
       66 GETTABLEKS                       R11 R0 K40 ["unfocused"]
       68 SETTABLEKS                       R11 R10 K30 ["OnMouseLeave"]
       70 GETIMPORT                        R11 K23 [UDim2.new]
       72 LOADN                            R12 1
       73 LOADN                            R13 0
       74 LOADN                            R14 1
       75 LOADN                            R15 0
       76 CALL                             R11 4 1
       77 SETTABLEKS                       R11 R10 K5 ["Size"]
       79 GETTABLEKS                       R11 R3 K20 ["MenuImage"]
       81 SETTABLEKS                       R11 R10 K31 ["ExpandIcon"]
       83 CALL                             R8 2 1
       84 SETTABLEKS                       R8 R7 K9 ["PresetMenu"]
       86 GETTABLEKS                       R9 R2 K41 ["showNameDialog"]
       88 JUMPIFNOT                        R9 ; [+25]
       89 GETUPVAL                         R8 0
       90 GETTABLEKS                       R8 R8 K4 ["createElement"]
       92 GETUPVAL                         R9 3
       93 DUPTABLE                         R10 K47 [{["CurrentPreset"], ["Intent"], ["IsHintError"] = False, ["OnClose"], ["OnButtonPressed"]}]
       94 GETTABLEKS                       R11 R1 K48 ["ActiveQueueItem"]
       96 GETTABLEKS                       R11 R11 K49 ["currentPreset"]
       98 SETTABLEKS                       R11 R10 K42 ["CurrentPreset"]
      100 GETTABLEKS                       R11 R2 K50 ["promptIntent"]
      102 SETTABLEKS                       R11 R10 K43 ["Intent"]
      104 GETTABLEKS                       R11 R0 K51 ["onNameDialogClose"]
      106 SETTABLEKS                       R11 R10 K45 ["OnClose"]
      108 GETTABLEKS                       R11 R0 K52 ["onNameDialogButtonPressed"]
      110 SETTABLEKS                       R11 R10 K46 ["OnButtonPressed"]
      112 CALL                             R8 2 1
      113 JUMP                             ; [+1]
      114 LOADNIL                          R8
      115 SETTABLEKS                       R8 R7 K10 ["PresetNamePrompt"]
      117 CALL                             R4 3 -1
      118 RETURN                           R4 -1

PROTO_7:
        0 DUPTABLE                         R1 K1 [{"ActiveQueueItem"}]
        1 GETTABLEKS                       R2 R0 K2 ["Preview"]
        3 GETTABLEKS                       R2 R2 K3 ["activeQueueItem"]
        5 SETTABLEKS                       R2 R1 K0 ["ActiveQueueItem"]
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactCompat"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R6 R4 K12 ["Stylizer"]
       34 GETTABLEKS                       R7 R4 K13 ["Localization"]
       36 GETTABLEKS                       R8 R1 K14 ["Util"]
       38 GETTABLEKS                       R8 R8 K15 ["StyleModifier"]
       40 GETTABLEKS                       R9 R1 K16 ["UI"]
       42 GETTABLEKS                       R10 R9 K17 ["TextLabel"]
       44 GETTABLEKS                       R11 R9 K18 ["SelectInput"]
       46 GETTABLEKS                       R12 R9 K19 ["Button"]
       48 GETTABLEKS                       R13 R9 K20 ["Pane"]
       50 GETIMPORT                        R14 K5 [require]
       52 GETTABLEKS                       R15 R0 K21 ["Src"]
       54 GETTABLEKS                       R15 R15 K22 ["Components"]
       56 GETTABLEKS                       R15 R15 K23 ["Dialogs"]
       58 GETTABLEKS                       R15 R15 K24 ["PresetNamePrompt"]
       60 CALL                             R14 1 1
       61 GETIMPORT                        R15 K5 [require]
       63 GETTABLEKS                       R16 R0 K21 ["Src"]
       65 GETTABLEKS                       R16 R16 K25 ["Controllers"]
       67 GETTABLEKS                       R16 R16 K26 ["PresetController"]
       69 CALL                             R15 1 1
       70 GETTABLEKS                       R16 R2 K27 ["PureComponent"]
       72 LOADK                            R18 K28 ["PresetMenu"]
       73 NAMECALL                         R16 R16 K29 ["extend"]
       75 CALL                             R16 2 1
       76 DUPCLOSURE                       R17 K30 [PROTO_5]
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R10
       81 SETTABLEKS                       R17 R16 K31 ["init"]
       83 DUPCLOSURE                       R17 K32 [PROTO_6]
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R14
       88 SETTABLEKS                       R17 R16 K33 ["render"]
       90 MOVE                             R17 R5
       91 DUPTABLE                         R18 K34 [{"Stylizer", "Localization", "PresetController"}]
       92 SETTABLEKS                       R6 R18 K12 ["Stylizer"]
       94 SETTABLEKS                       R7 R18 K13 ["Localization"]
       96 SETTABLEKS                       R15 R18 K26 ["PresetController"]
       98 CALL                             R17 1 1
       99 MOVE                             R18 R16
      100 CALL                             R17 1 1
      101 MOVE                             R16 R17
      102 DUPCLOSURE                       R17 K35 [PROTO_7]
      103 GETTABLEKS                       R18 R3 K36 ["connect"]
      105 MOVE                             R19 R17
      106 LOADNIL                          R20
      107 CALL                             R18 2 1
      108 MOVE                             R19 R16
      109 CALL                             R18 1 -1
      110 RETURN                           R18 -1
