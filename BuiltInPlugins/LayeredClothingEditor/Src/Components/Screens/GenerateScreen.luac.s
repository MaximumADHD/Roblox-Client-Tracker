PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Localization"]
        5 GETUPVAL                         R2 0
        6 LOADB                            R3 1
        7 SETTABLEKS                       R3 R2 K2 ["generateClicked"]
        9 GETTABLEKS                       R2 R0 K3 ["SetControlsPanelBlockerMessage"]
       11 LOADK                            R5 K4 ["Generate"]
       12 LOADK                            R6 K5 ["Wait"]
       13 NAMECALL                         R3 R1 K6 ["getText"]
       15 CALL                             R3 3 -1
       16 CALL                             R2 -1 0
       17 GETTABLEKS                       R2 R0 K7 ["SetControlsPanelBlockerActivity"]
       19 LOADB                            R3 1
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["state"]
        6 GETTABLEKS                       R2 R0 K2 ["Localization"]
        8 GETTABLEKS                       R3 R0 K3 ["EditingItemContext"]
       10 NAMECALL                         R3 R3 K4 ["getItem"]
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R1 K5 ["generateKey"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K6 ["isMeshPartWithSurfaceAppearance"]
       18 MOVE                             R6 R3
       19 CALL                             R5 1 1
       20 JUMPIFNOT                        R5 ; [+52]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R6 R7 K7 ["GENERATE_LEGACY_KEY"]
       24 JUMPIFNOTEQ                      R4 R6 ; [+48]
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R7 R0 K8 ["Plugin"]
       29 MOVE                             R8 R2
       30 GETUPVAL                         R9 4
       31 DUPTABLE                         R10 K14 [{"Text", "OnConfirm", "Title", "ConfirmText", "Link"}]
       32 LOADK                            R13 K15 ["Generate"]
       33 LOADK                            R14 K16 ["LegacyConversionDialog"]
       34 NAMECALL                         R11 R2 K17 ["getText"]
       36 CALL                             R11 3 1
       37 SETTABLEKS                       R11 R10 K9 ["Text"]
       39 GETUPVAL                         R12 0
       40 GETTABLEKS                       R11 R12 K18 ["startGeneration"]
       42 SETTABLEKS                       R11 R10 K10 ["OnConfirm"]
       44 LOADK                            R13 K19 ["Dialog"]
       45 LOADK                            R14 K20 ["DefaultTitle"]
       46 NAMECALL                         R11 R2 K17 ["getText"]
       48 CALL                             R11 3 1
       49 SETTABLEKS                       R11 R10 K11 ["Title"]
       51 LOADK                            R13 K19 ["Dialog"]
       52 LOADK                            R14 K21 ["Continue"]
       53 NAMECALL                         R11 R2 K17 ["getText"]
       55 CALL                             R11 3 1
       56 SETTABLEKS                       R11 R10 K12 ["ConfirmText"]
       58 DUPTABLE                         R11 K23 [{"Text", "Url"}]
       59 LOADK                            R14 K15 ["Generate"]
       60 LOADK                            R15 K24 ["LearnMoreLegacy"]
       61 NAMECALL                         R12 R2 K17 ["getText"]
       63 CALL                             R12 3 1
       64 SETTABLEKS                       R12 R11 K9 ["Text"]
       66 GETUPVAL                         R12 5
       67 SETTABLEKS                       R12 R11 K22 ["Url"]
       69 SETTABLEKS                       R11 R10 K13 ["Link"]
       71 CALL                             R6 4 0
       72 RETURN                           R0 0
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R6 R7 K18 ["startGeneration"]
       76 CALL                             R6 0 0
       77 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["setupDropdownMenu"]
        3 CALL                             R2 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["EditingItemContext"]
        5 NAMECALL                         R1 R1 K2 ["getItem"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R0 K3 ["Localization"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K4 ["hasAnyCage"]
       13 MOVE                             R4 R1
       14 CALL                             R3 1 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K5 ["isLegacyAccessory"]
       18 MOVE                             R5 R1
       19 CALL                             R4 1 1
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K6 ["state"]
       23 GETTABLEKS                       R5 R6 K7 ["generateKey"]
       25 NEWTABLE                         R6 0 0
       27 LOADNIL                          R7
       28 JUMPIFNOT                        R3 ; [+4]
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R7 R8 K8 ["GENERATE_MESH_PART_KEY"]
       32 JUMP                             ; [+42]
       33 JUMPIFNOT                        R4 ; [+4]
       34 GETUPVAL                         R8 2
       35 GETTABLEKS                       R7 R8 K9 ["GENERATE_LEGACY_KEY"]
       37 JUMP                             ; [+37]
       38 JUMPIFNOT                        R5 ; [+5]
       39 GETUPVAL                         R9 2
       40 GETTABLEKS                       R8 R9 K9 ["GENERATE_LEGACY_KEY"]
       42 JUMPIFNOTEQ                      R5 R8 ; [+17]
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R7 R8 K8 ["GENERATE_MESH_PART_KEY"]
       47 MOVE                             R9 R6
       48 LOADK                            R12 K10 ["Flow"]
       49 GETUPVAL                         R14 2
       50 GETTABLEKS                       R13 R14 K9 ["GENERATE_LEGACY_KEY"]
       52 NAMECALL                         R10 R2 K11 ["getText"]
       54 CALL                             R10 3 -1
       55 FASTCALL                         TABLE_INSERT ; [+2]
       56 GETIMPORT                        R8 K14 [table.insert]
       58 CALL                             R8 -1 0
       59 JUMP                             ; [+15]
       60 GETUPVAL                         R8 2
       61 GETTABLEKS                       R7 R8 K9 ["GENERATE_LEGACY_KEY"]
       63 MOVE                             R9 R6
       64 LOADK                            R12 K10 ["Flow"]
       65 GETUPVAL                         R14 2
       66 GETTABLEKS                       R13 R14 K8 ["GENERATE_MESH_PART_KEY"]
       68 NAMECALL                         R10 R2 K11 ["getText"]
       70 CALL                             R10 3 -1
       71 FASTCALL                         TABLE_INSERT ; [+2]
       72 GETIMPORT                        R8 K14 [table.insert]
       74 CALL                             R8 -1 0
       75 GETUPVAL                         R8 0
       76 DUPTABLE                         R10 K17 [{"items", "generateText", "generateKey"}]
       77 SETTABLEKS                       R6 R10 K15 ["items"]
       79 LOADK                            R13 K10 ["Flow"]
       80 MOVE                             R14 R7
       81 NAMECALL                         R11 R2 K11 ["getText"]
       83 CALL                             R11 3 1
       84 SETTABLEKS                       R11 R10 K16 ["generateText"]
       86 SETTABLEKS                       R7 R10 K7 ["generateKey"]
       88 NAMECALL                         R8 R8 K18 ["setState"]
       90 CALL                             R8 2 0
       91 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K3 [{"items", "generateText", "generateKey"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["items"]
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R1 K1 ["generateText"]
        8 LOADNIL                          R2
        9 SETTABLEKS                       R2 R1 K2 ["generateKey"]
       11 SETTABLEKS                       R1 R0 K4 ["state"]
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K5 ["startGeneration"]
       17 NEWCLOSURE                       R1 P1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R1 R0 K6 ["onGenerateClicked"]
       26 NEWCLOSURE                       R1 P2
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K7 ["onSelectGenerateDropdownItem"]
       30 NEWCLOSURE                       R1 P3
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U1
       34 SETTABLEKS                       R1 R0 K8 ["setupDropdownMenu"]
       36 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["setupDropdownMenu"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R2 K2 ["items"]
        6 GETTABLEKS                       R4 R2 K3 ["generateText"]
        8 GETTABLEKS                       R5 R1 K4 ["InBounds"]
       10 GETTABLEKS                       R6 R1 K5 ["GoToPrevious"]
       12 GETTABLEKS                       R7 R1 K6 ["Localization"]
       14 GETTABLEKS                       R8 R1 K7 ["Stylizer"]
       16 JUMPIF                           R5 ; [+6]
       17 LOADK                            R11 K8 ["Generate"]
       18 LOADK                            R12 K9 ["InvalidBoundsUGC"]
       19 NAMECALL                         R9 R7 K10 ["getText"]
       21 CALL                             R9 3 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R9
       24 JUMPIFNOT                        R5 ; [+6]
       25 LOADK                            R12 K8 ["Generate"]
       26 LOADK                            R13 K11 ["Tooltip"]
       27 NAMECALL                         R10 R7 K10 ["getText"]
       29 CALL                             R10 3 1
       30 MOVE                             R9 R10
       31 GETUPVAL                         R11 0
       32 GETTABLEKS                       R10 R11 K12 ["new"]
       34 CALL                             R10 0 1
       35 GETUPVAL                         R12 1
       36 GETTABLEKS                       R11 R12 K13 ["createElement"]
       38 GETUPVAL                         R12 2
       39 DUPTABLE                         R13 K19 [{"Size", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
       40 GETIMPORT                        R14 K21 [UDim2.new]
       42 LOADN                            R15 1
       43 LOADN                            R16 0
       44 LOADN                            R17 1
       45 LOADN                            R18 0
       46 CALL                             R14 4 1
       47 SETTABLEKS                       R14 R13 K14 ["Size"]
       49 GETIMPORT                        R14 K25 [Enum.FillDirection.Horizontal]
       51 SETTABLEKS                       R14 R13 K15 ["Layout"]
       53 GETIMPORT                        R14 K27 [Enum.HorizontalAlignment.Center]
       55 SETTABLEKS                       R14 R13 K16 ["HorizontalAlignment"]
       57 GETIMPORT                        R14 K28 [Enum.VerticalAlignment.Center]
       59 SETTABLEKS                       R14 R13 K17 ["VerticalAlignment"]
       61 LOADN                            R14 10
       62 SETTABLEKS                       R14 R13 K18 ["Spacing"]
       64 DUPTABLE                         R14 K31 [{"BackButton", "GenerateDropdownButton"}]
       65 GETUPVAL                         R16 1
       66 GETTABLEKS                       R15 R16 K13 ["createElement"]
       68 GETUPVAL                         R16 3
       69 DUPTABLE                         R17 K36 [{"Text", "Style", "Size", "OnClick", "LayoutOrder"}]
       70 LOADK                            R20 K37 ["Flow"]
       71 LOADK                            R21 K38 ["Back"]
       72 NAMECALL                         R18 R7 K10 ["getText"]
       74 CALL                             R18 3 1
       75 SETTABLEKS                       R18 R17 K32 ["Text"]
       77 LOADK                            R18 K39 ["Round"]
       78 SETTABLEKS                       R18 R17 K33 ["Style"]
       80 GETIMPORT                        R18 K21 [UDim2.new]
       82 LOADN                            R19 0
       83 GETTABLEKS                       R20 R8 K40 ["BackButtonWidth"]
       85 LOADN                            R21 0
       86 GETTABLEKS                       R22 R8 K41 ["GenerateDropdownButtonHeight"]
       88 CALL                             R18 4 1
       89 SETTABLEKS                       R18 R17 K14 ["Size"]
       91 SETTABLEKS                       R6 R17 K34 ["OnClick"]
       93 NAMECALL                         R18 R10 K42 ["getNextOrder"]
       95 CALL                             R18 1 1
       96 SETTABLEKS                       R18 R17 K35 ["LayoutOrder"]
       98 CALL                             R15 2 1
       99 SETTABLEKS                       R15 R14 K29 ["BackButton"]
      101 GETUPVAL                         R16 1
      102 GETTABLEKS                       R15 R16 K13 ["createElement"]
      104 GETUPVAL                         R16 4
      105 DUPTABLE                         R17 K54 [{"AutomaticSize", "Height", "ButtonWidth", "ArrowWidth", "LayoutOrder", "TooltipText", "ButtonIcon", "IconSize", "ButtonText", "Items", "ItemHeight", "OnSelectItem", "OnClick"}]
      106 GETIMPORT                        R18 K56 [Enum.AutomaticSize.XY]
      108 SETTABLEKS                       R18 R17 K43 ["AutomaticSize"]
      110 GETTABLEKS                       R18 R8 K41 ["GenerateDropdownButtonHeight"]
      112 SETTABLEKS                       R18 R17 K44 ["Height"]
      114 GETTABLEKS                       R18 R8 K57 ["GenerateDropdownButtonWidth"]
      116 SETTABLEKS                       R18 R17 K45 ["ButtonWidth"]
      118 GETTABLEKS                       R18 R8 K46 ["ArrowWidth"]
      120 SETTABLEKS                       R18 R17 K46 ["ArrowWidth"]
      122 NAMECALL                         R18 R10 K42 ["getNextOrder"]
      124 CALL                             R18 1 1
      125 SETTABLEKS                       R18 R17 K35 ["LayoutOrder"]
      127 SETTABLEKS                       R9 R17 K47 ["TooltipText"]
      129 JUMPIF                           R5 ; [+3]
      130 GETTABLEKS                       R18 R8 K58 ["WarningIcon"]
      132 JUMP                             ; [+1]
      133 LOADNIL                          R18
      134 SETTABLEKS                       R18 R17 K48 ["ButtonIcon"]
      136 GETTABLEKS                       R18 R8 K49 ["IconSize"]
      138 SETTABLEKS                       R18 R17 K49 ["IconSize"]
      140 SETTABLEKS                       R4 R17 K50 ["ButtonText"]
      142 SETTABLEKS                       R3 R17 K51 ["Items"]
      144 GETTABLEKS                       R18 R8 K59 ["DropdownItemHeight"]
      146 SETTABLEKS                       R18 R17 K52 ["ItemHeight"]
      148 GETTABLEKS                       R18 R0 K60 ["onSelectGenerateDropdownItem"]
      150 SETTABLEKS                       R18 R17 K53 ["OnSelectItem"]
      152 GETTABLEKS                       R18 R0 K61 ["onGenerateClicked"]
      154 SETTABLEKS                       R18 R17 K34 ["OnClick"]
      156 CALL                             R15 2 1
      157 SETTABLEKS                       R15 R14 K30 ["GenerateDropdownButton"]
      159 CALL                             R11 3 -1
      160 RETURN                           R11 -1

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["EditingItemContext"]
        5 NAMECALL                         R0 R0 K2 ["getItem"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K0 ["props"]
       11 GETTABLEKS                       R1 R2 K1 ["EditingItemContext"]
       13 NAMECALL                         R1 R1 K3 ["getSourceItemWithUniqueDeformerNames"]
       15 CALL                             R1 1 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K0 ["props"]
       19 GETTABLEKS                       R2 R3 K4 ["Analytics"]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K0 ["props"]
       24 GETTABLEKS                       R3 R4 K5 ["FinishEditing"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K0 ["props"]
       29 GETTABLEKS                       R4 R5 K6 ["LuaMeshEditingModuleContext"]
       31 MOVE                             R5 R0
       32 MOVE                             R6 R1
       33 MOVE                             R7 R2
       34 GETUPVAL                         R11 0
       35 GETTABLEKS                       R10 R11 K7 ["state"]
       37 GETTABLEKS                       R9 R10 K8 ["generateKey"]
       39 GETUPVAL                         R11 1
       40 GETTABLEKS                       R10 R11 K9 ["GENERATE_LEGACY_KEY"]
       42 JUMPIFEQ                         R9 R10 ; [+2]
       44 LOADB                            R8 0 +1
       45 LOADB                            R8 1
       46 CALL                             R3 5 0
       47 LOADK                            R5 K10 ["SessionEnded"]
       48 NAMECALL                         R3 R2 K11 ["getHandler"]
       50 CALL                             R3 2 1
       51 CALL                             R3 0 0
       52 GETUPVAL                         R5 0
       53 GETTABLEKS                       R4 R5 K0 ["props"]
       55 GETTABLEKS                       R3 R4 K12 ["SetControlsPanelBlockerActivity"]
       57 LOADB                            R4 0
       58 CALL                             R3 1 0
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R4 R5 K0 ["props"]
       62 GETTABLEKS                       R3 R4 K1 ["EditingItemContext"]
       64 NAMECALL                         R3 R3 K13 ["clear"]
       66 CALL                             R3 1 0
       67 GETUPVAL                         R5 0
       68 GETTABLEKS                       R4 R5 K0 ["props"]
       70 GETTABLEKS                       R3 R4 K14 ["GoToNext"]
       72 CALL                             R3 0 0
       73 GETUPVAL                         R5 0
       74 GETTABLEKS                       R4 R5 K0 ["props"]
       76 GETTABLEKS                       R3 R4 K15 ["ReleaseEditor"]
       78 CALL                             R3 0 0
       79 GETUPVAL                         R5 0
       80 GETTABLEKS                       R4 R5 K0 ["props"]
       82 GETTABLEKS                       R3 R4 K1 ["EditingItemContext"]
       84 LOADNIL                          R5
       85 NAMECALL                         R3 R3 K16 ["setSourceItem"]
       87 CALL                             R3 2 0
       88 GETUPVAL                         R3 0
       89 LOADB                            R4 0
       90 SETTABLEKS                       R4 R3 K17 ["generateClicked"]
       92 GETUPVAL                         R3 2
       93 GETUPVAL                         R6 0
       94 GETTABLEKS                       R5 R6 K0 ["props"]
       96 GETTABLEKS                       R4 R5 K18 ["Plugin"]
       98 GETUPVAL                         R7 0
       99 GETTABLEKS                       R6 R7 K0 ["props"]
      101 GETTABLEKS                       R5 R6 K19 ["Localization"]
      103 GETUPVAL                         R6 3
      104 DUPTABLE                         R7 K22 [{"Text", "OnClose"}]
      105 GETUPVAL                         R10 0
      106 GETTABLEKS                       R9 R10 K0 ["props"]
      108 GETTABLEKS                       R8 R9 K19 ["Localization"]
      110 LOADK                            R10 K23 ["Generate"]
      111 LOADK                            R11 K24 ["Success"]
      112 DUPTABLE                         R12 K26 [{"name"}]
      113 GETTABLEKS                       R13 R1 K27 ["Name"]
      115 SETTABLEKS                       R13 R12 K25 ["name"]
      117 NAMECALL                         R8 R8 K28 ["getText"]
      119 CALL                             R8 4 1
      120 SETTABLEKS                       R8 R7 K20 ["Text"]
      122 DUPCLOSURE                       R8 K29 [PROTO_7]
      123 SETTABLEKS                       R8 R7 K21 ["OnClose"]
      125 CALL                             R3 4 0
      126 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["IsControlsPanelBlockerActive"]
        4 GETTABLEKS                       R3 R1 K1 ["IsControlsPanelBlockerActive"]
        6 JUMPIFEQ                         R2 R3 ; [+18]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R2 R3 K1 ["IsControlsPanelBlockerActive"]
       12 JUMPIFNOT                        R2 ; [+12]
       13 GETTABLEKS                       R2 R0 K2 ["generateClicked"]
       15 JUMPIFNOT                        R2 ; [+9]
       16 GETIMPORT                        R2 K5 [task.delay]
       18 LOADN                            R3 0
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["controlsPanelBlocker"]
        2 GETTABLEKS                       R3 R0 K1 ["selectItem"]
        4 DUPTABLE                         R4 K4 [{"IsControlsPanelBlockerActive", "InBounds"}]
        5 GETTABLEKS                       R5 R2 K5 ["isActive"]
        7 SETTABLEKS                       R5 R4 K2 ["IsControlsPanelBlockerActive"]
        9 GETTABLEKS                       R5 R3 K6 ["inBounds"]
       11 SETTABLEKS                       R5 R4 K3 ["InBounds"]
       13 RETURN                           R4 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 MOVE                             R7 R0
        3 MOVE                             R8 R1
        4 MOVE                             R9 R2
        5 MOVE                             R10 R3
        6 MOVE                             R11 R4
        7 CALL                             R6 5 -1
        8 CALL                             R5 -1 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R1 K4 [{"SetControlsPanelBlockerActivity", "SetControlsPanelBlockerMessage", "FinishEditing", "ReleaseEditor"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetControlsPanelBlockerActivity"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetControlsPanelBlockerMessage"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["FinishEditing"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["ReleaseEditor"]
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R5 K8 ["AvatarToolsShared"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K9 ["Components"]
       34 GETTABLEKS                       R5 R4 K10 ["InputBlocker"]
       36 GETTABLEKS                       R6 R4 K11 ["FlowScreenLayout"]
       38 GETTABLEKS                       R7 R4 K12 ["ButtonWithDropdown"]
       40 GETTABLEKS                       R8 R4 K13 ["ConfirmDialog"]
       42 GETTABLEKS                       R9 R4 K14 ["ConfirmCancelDialog"]
       44 GETTABLEKS                       R12 R3 K15 ["Util"]
       46 GETTABLEKS                       R11 R12 K16 ["AccessoryAndBodyToolShared"]
       48 GETTABLEKS                       R10 R11 K17 ["ItemCharacteristics"]
       50 GETIMPORT                        R11 K4 [require]
       52 GETTABLEKS                       R13 R0 K5 ["Packages"]
       54 GETTABLEKS                       R12 R13 K18 ["Framework"]
       56 CALL                             R11 1 1
       57 GETTABLEKS                       R12 R11 K19 ["ContextServices"]
       59 GETTABLEKS                       R13 R12 K20 ["withContext"]
       61 GETTABLEKS                       R14 R11 K21 ["UI"]
       63 GETTABLEKS                       R15 R14 K22 ["Button"]
       65 GETTABLEKS                       R16 R14 K23 ["Pane"]
       67 GETIMPORT                        R17 K4 [require]
       69 GETTABLEKS                       R20 R0 K24 ["Src"]
       71 GETTABLEKS                       R19 R20 K15 ["Util"]
       73 GETTABLEKS                       R18 R19 K25 ["ShowDialog"]
       75 CALL                             R17 1 1
       76 GETTABLEKS                       R19 R3 K26 ["Contexts"]
       78 GETTABLEKS                       R18 R19 K27 ["EditingItemContext"]
       80 GETTABLEKS                       R20 R3 K26 ["Contexts"]
       82 GETTABLEKS                       R19 R20 K28 ["LuaMeshEditingModuleContext"]
       84 GETIMPORT                        R20 K4 [require]
       86 GETTABLEKS                       R23 R0 K24 ["Src"]
       88 GETTABLEKS                       R22 R23 K29 ["Actions"]
       90 GETTABLEKS                       R21 R22 K30 ["SetControlsPanelBlockerActivity"]
       92 CALL                             R20 1 1
       93 GETIMPORT                        R21 K4 [require]
       95 GETTABLEKS                       R24 R0 K24 ["Src"]
       97 GETTABLEKS                       R23 R24 K29 ["Actions"]
       99 GETTABLEKS                       R22 R23 K31 ["SetControlsPanelBlockerMessage"]
      101 CALL                             R21 1 1
      102 GETIMPORT                        R22 K4 [require]
      104 GETTABLEKS                       R25 R0 K24 ["Src"]
      106 GETTABLEKS                       R24 R25 K32 ["Thunks"]
      108 GETTABLEKS                       R23 R24 K33 ["ReleaseEditor"]
      110 CALL                             R22 1 1
      111 GETIMPORT                        R23 K4 [require]
      113 GETTABLEKS                       R26 R0 K24 ["Src"]
      115 GETTABLEKS                       R25 R26 K32 ["Thunks"]
      117 GETTABLEKS                       R24 R25 K34 ["FinishEditing"]
      119 CALL                             R23 1 1
      120 GETIMPORT                        R24 K4 [require]
      122 GETTABLEKS                       R27 R0 K24 ["Src"]
      124 GETTABLEKS                       R26 R27 K15 ["Util"]
      126 GETTABLEKS                       R25 R26 K35 ["Constants"]
      128 CALL                             R24 1 1
      129 GETIMPORT                        R25 K4 [require]
      131 GETTABLEKS                       R28 R0 K24 ["Src"]
      133 GETTABLEKS                       R27 R28 K15 ["Util"]
      135 GETTABLEKS                       R26 R27 K25 ["ShowDialog"]
      137 CALL                             R25 1 1
      138 GETTABLEKS                       R26 R1 K36 ["PureComponent"]
      140 LOADK                            R28 K37 ["GenerateScreen"]
      141 NAMECALL                         R26 R26 K38 ["extend"]
      143 CALL                             R26 2 1
      144 GETTABLEKS                       R27 R11 K15 ["Util"]
      146 GETTABLEKS                       R28 R27 K39 ["Typecheck"]
      148 GETTABLEKS                       R29 R27 K40 ["StyleModifier"]
      150 GETTABLEKS                       R30 R27 K41 ["LayoutOrderIterator"]
      152 GETTABLEKS                       R31 R28 K42 ["wrap"]
      154 MOVE                             R32 R26
      155 GETIMPORT                        R33 K1 [script]
      157 CALL                             R31 2 0
      158 GETIMPORT                        R31 K44 [game]
      160 LOADK                            R33 K45 ["GenerateLegacyHelpLink"]
      161 LOADK                            R34 K46 ["https://create.roblox.com/docs/art/avatar"]
      162 NAMECALL                         R31 R31 K47 ["DefineFastString"]
      164 CALL                             R31 3 1
      165 DUPCLOSURE                       R32 K48 [PROTO_4]
      166 CAPTURE                          VAL R10
      167 CAPTURE                          VAL R24
      168 CAPTURE                          VAL R25
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R31
      171 SETTABLEKS                       R32 R26 K49 ["init"]
      173 DUPCLOSURE                       R32 K50 [PROTO_5]
      174 SETTABLEKS                       R32 R26 K51 ["didMount"]
      176 DUPCLOSURE                       R32 K52 [PROTO_6]
      177 CAPTURE                          VAL R30
      178 CAPTURE                          VAL R1
      179 CAPTURE                          VAL R16
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R7
      182 SETTABLEKS                       R32 R26 K53 ["render"]
      184 DUPCLOSURE                       R32 K54 [PROTO_9]
      185 CAPTURE                          VAL R24
      186 CAPTURE                          VAL R25
      187 CAPTURE                          VAL R8
      188 SETTABLEKS                       R32 R26 K55 ["didUpdate"]
      190 MOVE                             R32 R13
      191 DUPTABLE                         R33 K60 [{"Plugin", "Analytics", "Stylizer", "Localization", "EditingItemContext", "LuaMeshEditingModuleContext"}]
      192 GETTABLEKS                       R34 R12 K56 ["Plugin"]
      194 SETTABLEKS                       R34 R33 K56 ["Plugin"]
      196 GETTABLEKS                       R34 R12 K57 ["Analytics"]
      198 SETTABLEKS                       R34 R33 K57 ["Analytics"]
      200 GETTABLEKS                       R34 R12 K58 ["Stylizer"]
      202 SETTABLEKS                       R34 R33 K58 ["Stylizer"]
      204 GETTABLEKS                       R34 R12 K59 ["Localization"]
      206 SETTABLEKS                       R34 R33 K59 ["Localization"]
      208 SETTABLEKS                       R18 R33 K27 ["EditingItemContext"]
      210 SETTABLEKS                       R19 R33 K28 ["LuaMeshEditingModuleContext"]
      212 CALL                             R32 1 1
      213 MOVE                             R33 R26
      214 CALL                             R32 1 1
      215 MOVE                             R26 R32
      216 DUPCLOSURE                       R32 K61 [PROTO_10]
      217 DUPCLOSURE                       R33 K62 [PROTO_15]
      218 CAPTURE                          VAL R20
      219 CAPTURE                          VAL R21
      220 CAPTURE                          VAL R23
      221 CAPTURE                          VAL R22
      222 GETTABLEKS                       R34 R2 K63 ["connect"]
      224 MOVE                             R35 R32
      225 MOVE                             R36 R33
      226 CALL                             R34 2 1
      227 MOVE                             R35 R26
      228 CALL                             R34 1 -1
      229 RETURN                           R34 -1
