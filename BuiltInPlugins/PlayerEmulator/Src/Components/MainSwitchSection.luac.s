PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PlayerEmulationEnabled"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["PlayerEmulationEnabled"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        4 NAMECALL                         R1 R1 K2 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K3 ["MAIN_SWITCH_KEY"]
       10 NAMECALL                         R2 R1 K4 ["GetSetting"]
       12 CALL                             R2 2 1
       13 JUMPIFNOTEQKB                    R2 TRUE ; [+5]
       15 GETUPVAL                         R3 1
       16 LOADB                            R4 1
       17 SETTABLEKS                       R4 R3 K5 ["PlayerEmulationEnabled"]
       19 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["Plugin"]
        4 NAMECALL                         R2 R2 K2 ["get"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K3 ["MAIN_SWITCH_KEY"]
       10 MOVE                             R6 R1
       11 NAMECALL                         R3 R2 K4 ["SetSetting"]
       13 CALL                             R3 3 0
       14 GETTABLEKS                       R3 R0 K0 ["props"]
       16 GETTABLEKS                       R3 R3 K5 ["onPlayerEmulationEnabledChanged"]
       18 MOVE                             R4 R3
       19 MOVE                             R5 R1
       20 CALL                             R4 1 0
       21 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["signalTokens"]
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["PlayerEmulationEnabled"]
        4 NAMECALL                         R0 R0 K1 ["updatePlayerEmulationEnabled"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["PlayerEmulationEnabled"]
        2 NAMECALL                         R1 R1 K1 ["GetPropertyChangedSignal"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 NAMECALL                         R1 R1 K2 ["Connect"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R3 R0 K3 ["signalTokens"]
       13 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       15 MOVE                             R4 R1
       16 GETIMPORT                        R2 K6 [table.insert]
       18 CALL                             R2 2 0
       19 NAMECALL                         R2 R0 K7 ["initEnabledStatus"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["signalTokens"]
        4 CALL                             R1 1 3
        5 FORGPREP_NEXT                    R1
        6 NAMECALL                         R6 R5 K3 ["Disconnect"]
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 ; [-4]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K2 ["signalTokens"]
       14 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["mainSwitchEnabled"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["createElement"]
       11 LOADK                            R6 K5 ["Frame"]
       12 DUPTABLE                         R7 K10 [{["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
       13 GETIMPORT                        R8 K13 [Enum.AutomaticSize.Y]
       15 SETTABLEKS                       R8 R7 K6 ["AutomaticSize"]
       17 GETIMPORT                        R8 K16 [UDim2.fromScale]
       19 LOADN                            R9 1
       20 LOADN                            R10 0
       21 CALL                             R8 2 1
       22 SETTABLEKS                       R8 R7 K7 ["Size"]
       24 SETTABLEKS                       R3 R7 K2 ["LayoutOrder"]
       26 DUPTABLE                         R8 K20 [{"Layout", "Label", "Toggle"}]
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R9 R9 K4 ["createElement"]
       30 LOADK                            R10 K21 ["UIListLayout"]
       31 DUPTABLE                         R11 K26 [{"HorizontalFlex", "SortOrder", "FillDirection", "VerticalAlignment"}]
       32 GETIMPORT                        R12 K29 [Enum.UIFlexAlignment.SpaceBetween]
       34 SETTABLEKS                       R12 R11 K22 ["HorizontalFlex"]
       36 GETIMPORT                        R12 K30 [Enum.SortOrder.LayoutOrder]
       38 SETTABLEKS                       R12 R11 K23 ["SortOrder"]
       40 GETIMPORT                        R12 K32 [Enum.FillDirection.Horizontal]
       42 SETTABLEKS                       R12 R11 K24 ["FillDirection"]
       44 GETIMPORT                        R12 K34 [Enum.VerticalAlignment.Center]
       46 SETTABLEKS                       R12 R11 K25 ["VerticalAlignment"]
       48 CALL                             R9 2 1
       49 SETTABLEKS                       R9 R8 K17 ["Layout"]
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R9 R9 K4 ["createElement"]
       54 GETUPVAL                         R10 1
       55 DUPTABLE                         R11 K40 [{["AutomaticSize"], ["Text"], ["TextXAlignment"], ["TextWrapped"] = True, ["TextTruncate"], ["LayoutOrder"] = 1}]
       56 GETIMPORT                        R12 K42 [Enum.AutomaticSize.XY]
       58 SETTABLEKS                       R12 R11 K6 ["AutomaticSize"]
       60 LOADK                            R14 K43 ["MainSwitchSection"]
       61 LOADK                            R15 K44 ["LabelText"]
       62 NAMECALL                         R12 R2 K45 ["getText"]
       64 CALL                             R12 3 1
       65 SETTABLEKS                       R12 R11 K35 ["Text"]
       67 GETIMPORT                        R12 K47 [Enum.TextXAlignment.Left]
       69 SETTABLEKS                       R12 R11 K36 ["TextXAlignment"]
       71 GETIMPORT                        R12 K49 [Enum.TextTruncate.SplitWord]
       73 SETTABLEKS                       R12 R11 K39 ["TextTruncate"]
       75 DUPTABLE                         R12 K51 [{"FlexItem"}]
       76 GETUPVAL                         R13 0
       77 GETTABLEKS                       R13 R13 K4 ["createElement"]
       79 LOADK                            R14 K52 ["UIFlexItem"]
       80 DUPTABLE                         R15 K54 [{"FlexMode"}]
       81 GETIMPORT                        R16 K57 [Enum.UIFlexMode.Shrink]
       83 SETTABLEKS                       R16 R15 K53 ["FlexMode"]
       85 CALL                             R13 2 1
       86 SETTABLEKS                       R13 R12 K50 ["FlexItem"]
       88 CALL                             R9 3 1
       89 SETTABLEKS                       R9 R8 K18 ["Label"]
       91 GETUPVAL                         R9 0
       92 GETTABLEKS                       R9 R9 K4 ["createElement"]
       94 GETUPVAL                         R10 2
       95 DUPTABLE                         R11 K61 [{["LayoutOrder"] = 2, ["OnClick"], ["Selected"]}]
       96 GETUPVAL                         R12 3
       97 SETTABLEKS                       R12 R11 K59 ["OnClick"]
       99 SETTABLEKS                       R4 R11 K60 ["Selected"]
      101 CALL                             R9 2 1
      102 SETTABLEKS                       R9 R8 K19 ["Toggle"]
      104 CALL                             R5 3 -1
      105 RETURN                           R5 -1

PROTO_9:
        0 DUPTABLE                         R2 K1 [{"mainSwitchEnabled"}]
        1 GETTABLEKS                       R3 R0 K2 ["MainSwitch"]
        3 GETTABLEKS                       R3 R3 K0 ["mainSwitchEnabled"]
        5 SETTABLEKS                       R3 R2 K0 ["mainSwitchEnabled"]
        7 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K1 [{"onPlayerEmulationEnabledChanged"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["onPlayerEmulationEnabledChanged"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PlayerEmulatorService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["RoactRodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K9 ["Packages"]
       33 GETTABLEKS                       R5 R5 K12 ["Framework"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K13 ["ContextServices"]
       38 GETTABLEKS                       R6 R5 K14 ["withContext"]
       40 GETTABLEKS                       R7 R4 K15 ["UI"]
       42 GETTABLEKS                       R8 R7 K16 ["TextLabel"]
       44 GETTABLEKS                       R9 R7 K17 ["ToggleButton"]
       46 GETIMPORT                        R10 K8 [require]
       48 GETTABLEKS                       R11 R1 K18 ["Src"]
       50 GETTABLEKS                       R11 R11 K19 ["Util"]
       52 GETTABLEKS                       R11 R11 K20 ["Constants"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K8 [require]
       57 GETTABLEKS                       R12 R1 K18 ["Src"]
       59 GETTABLEKS                       R12 R12 K21 ["Actions"]
       61 GETTABLEKS                       R12 R12 K22 ["OnPlayerEmulationEnabledChanged"]
       63 CALL                             R11 1 1
       64 DUPCLOSURE                       R12 K23 [PROTO_0]
       65 CAPTURE                          VAL R0
       66 DUPCLOSURE                       R13 K24 [PROTO_1]
       67 CAPTURE                          VAL R0
       68 GETTABLEKS                       R14 R2 K25 ["PureComponent"]
       70 LOADK                            R16 K26 ["MainSwitchSection"]
       71 NAMECALL                         R14 R14 K27 ["extend"]
       73 CALL                             R14 2 1
       74 DUPCLOSURE                       R15 K28 [PROTO_2]
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R0
       77 SETTABLEKS                       R15 R14 K29 ["initEnabledStatus"]
       79 DUPCLOSURE                       R15 K30 [PROTO_3]
       80 CAPTURE                          VAL R10
       81 SETTABLEKS                       R15 R14 K31 ["updatePlayerEmulationEnabled"]
       83 DUPCLOSURE                       R15 K32 [PROTO_4]
       84 SETTABLEKS                       R15 R14 K33 ["init"]
       86 DUPCLOSURE                       R15 K34 [PROTO_6]
       87 CAPTURE                          VAL R0
       88 SETTABLEKS                       R15 R14 K35 ["didMount"]
       90 DUPCLOSURE                       R15 K36 [PROTO_7]
       91 SETTABLEKS                       R15 R14 K37 ["willUnmount"]
       93 DUPCLOSURE                       R15 K38 [PROTO_8]
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R13
       98 SETTABLEKS                       R15 R14 K39 ["render"]
      100 MOVE                             R15 R6
      101 DUPTABLE                         R16 K42 [{"Plugin", "Localization"}]
      102 GETTABLEKS                       R17 R5 K40 ["Plugin"]
      104 SETTABLEKS                       R17 R16 K40 ["Plugin"]
      106 GETTABLEKS                       R17 R5 K41 ["Localization"]
      108 SETTABLEKS                       R17 R16 K41 ["Localization"]
      110 CALL                             R15 1 1
      111 MOVE                             R16 R14
      112 CALL                             R15 1 1
      113 MOVE                             R14 R15
      114 DUPCLOSURE                       R15 K43 [PROTO_9]
      115 DUPCLOSURE                       R16 K44 [PROTO_11]
      116 CAPTURE                          VAL R11
      117 GETTABLEKS                       R17 R3 K45 ["connect"]
      119 MOVE                             R18 R15
      120 MOVE                             R19 R16
      121 CALL                             R17 2 1
      122 MOVE                             R18 R14
      123 CALL                             R17 1 -1
      124 RETURN                           R17 -1
