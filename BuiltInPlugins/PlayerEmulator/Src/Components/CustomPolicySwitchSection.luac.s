PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["CustomPoliciesEnabled"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["CustomPoliciesEnabled"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["onCustomPolicyEnabledChanged"]
        4 MOVE                             R2 R1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["CustomPoliciesEnabled"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["Plugin"]
        4 NAMECALL                         R2 R2 K2 ["get"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K3 ["CUSTOM_POLICIES_SWITCH_KEY"]
       10 MOVE                             R6 R1
       11 NAMECALL                         R3 R2 K4 ["SetSetting"]
       13 CALL                             R3 3 0
       14 GETTABLEKS                       R4 R0 K0 ["props"]
       16 GETTABLEKS                       R3 R4 K5 ["onCustomPolicySwitchEnabledChanged"]
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
        1 NAMECALL                         R0 R0 K0 ["updateCustomPoliciesEnabled"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["CustomPoliciesEnabled"]
        2 NAMECALL                         R1 R1 K1 ["GetPropertyChangedSignal"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 NAMECALL                         R1 R1 K2 ["Connect"]
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R3 R0 K3 ["signalTokens"]
       12 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       14 MOVE                             R4 R1
       15 GETIMPORT                        R2 K6 [table.insert]
       17 CALL                             R2 2 0
       18 GETTABLEKS                       R3 R0 K7 ["props"]
       20 GETTABLEKS                       R2 R3 K8 ["Plugin"]
       22 NAMECALL                         R2 R2 K9 ["get"]
       24 CALL                             R2 1 1
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R5 R6 K10 ["CUSTOM_POLICIES_SWITCH_KEY"]
       28 NAMECALL                         R3 R2 K11 ["GetSetting"]
       30 CALL                             R3 2 1
       31 JUMPIFNOTEQKB                    R3 TRUE ; [+5]
       33 MOVE                             R6 R3
       34 NAMECALL                         R4 R0 K12 ["updateCustomPoliciesSwitchEnabled"]
       36 CALL                             R4 2 0
       37 NAMECALL                         R4 R0 K13 ["updateCustomPoliciesEnabled"]
       39 CALL                             R4 1 0
       40 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K0 ["updateCustomPoliciesSwitchEnabled"]
        4 CALL                             R3 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["customPolicySwitchEnabled"]
        8 GETTABLEKS                       R5 R1 K4 ["mainSwitchEnabled"]
       10 GETTABLEKS                       R6 R1 K5 ["customPolicySwitchActive"]
       12 JUMPIF                           R6 ; [+6]
       13 GETUPVAL                         R7 0
       14 LOADB                            R8 1
       15 SETTABLEKS                       R8 R7 K6 ["CustomPoliciesEnabled"]
       17 LOADNIL                          R7
       18 RETURN                           R7 1
       19 GETUPVAL                         R7 0
       20 SETTABLEKS                       R4 R7 K6 ["CustomPoliciesEnabled"]
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R7 R8 K7 ["createElement"]
       25 LOADK                            R8 K8 ["Frame"]
       26 DUPTABLE                         R9 K12 [{"AutomaticSize", "Size", "BackgroundTransparency", "LayoutOrder"}]
       27 GETIMPORT                        R10 K15 [Enum.AutomaticSize.Y]
       29 SETTABLEKS                       R10 R9 K9 ["AutomaticSize"]
       31 GETIMPORT                        R10 K18 [UDim2.fromScale]
       33 LOADN                            R11 1
       34 LOADN                            R12 0
       35 CALL                             R10 2 1
       36 SETTABLEKS                       R10 R9 K10 ["Size"]
       38 LOADN                            R10 1
       39 SETTABLEKS                       R10 R9 K11 ["BackgroundTransparency"]
       41 SETTABLEKS                       R3 R9 K2 ["LayoutOrder"]
       43 DUPTABLE                         R10 K20 [{"Toggle"}]
       44 GETUPVAL                         R12 1
       45 GETTABLEKS                       R11 R12 K7 ["createElement"]
       47 GETUPVAL                         R12 2
       48 DUPTABLE                         R13 K25 [{"Key", "IsOn", "Enabled", "ToggleCallback"}]
       49 LOADK                            R16 K26 ["CustomPolicySwitchSection"]
       50 LOADK                            R17 K27 ["LabelText"]
       51 NAMECALL                         R14 R2 K28 ["getText"]
       53 CALL                             R14 3 1
       54 SETTABLEKS                       R14 R13 K21 ["Key"]
       56 SETTABLEKS                       R4 R13 K22 ["IsOn"]
       58 SETTABLEKS                       R5 R13 K23 ["Enabled"]
       60 NEWCLOSURE                       R14 P0
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R14 R13 K24 ["ToggleCallback"]
       64 CALL                             R11 2 1
       65 SETTABLEKS                       R11 R10 K19 ["Toggle"]
       67 CALL                             R7 3 -1
       68 RETURN                           R7 -1

PROTO_10:
        0 DUPTABLE                         R2 K3 [{"mainSwitchEnabled", "customPolicySwitchEnabled", "customPolicySwitchActive"}]
        1 GETTABLEKS                       R4 R0 K4 ["MainSwitch"]
        3 GETTABLEKS                       R3 R4 K0 ["mainSwitchEnabled"]
        5 SETTABLEKS                       R3 R2 K0 ["mainSwitchEnabled"]
        7 GETTABLEKS                       R4 R0 K5 ["CustomPolicySwitch"]
        9 GETTABLEKS                       R3 R4 K1 ["customPolicySwitchEnabled"]
       11 SETTABLEKS                       R3 R2 K1 ["customPolicySwitchEnabled"]
       13 GETTABLEKS                       R4 R0 K5 ["CustomPolicySwitch"]
       15 GETTABLEKS                       R3 R4 K2 ["customPolicySwitchActive"]
       17 SETTABLEKS                       R3 R2 K2 ["customPolicySwitchActive"]
       19 RETURN                           R2 1

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
        0 DUPTABLE                         R1 K2 [{"onCustomPolicyEnabledChanged", "onCustomPolicySwitchEnabledChanged"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["onCustomPolicyEnabledChanged"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["onCustomPolicySwitchEnabledChanged"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PlayerEmulatorService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R5 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R5 K11 ["RoactRodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R6 R1 K9 ["Packages"]
       33 GETTABLEKS                       R5 R6 K12 ["Framework"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K13 ["ContextServices"]
       38 GETTABLEKS                       R6 R5 K14 ["withContext"]
       40 GETIMPORT                        R7 K8 [require]
       42 GETTABLEKS                       R10 R1 K15 ["Src"]
       44 GETTABLEKS                       R9 R10 K16 ["Components"]
       46 GETTABLEKS                       R8 R9 K17 ["ToggleItemModule"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K8 [require]
       51 GETTABLEKS                       R11 R1 K15 ["Src"]
       53 GETTABLEKS                       R10 R11 K18 ["Util"]
       55 GETTABLEKS                       R9 R10 K19 ["Constants"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K8 [require]
       60 GETTABLEKS                       R12 R1 K15 ["Src"]
       62 GETTABLEKS                       R11 R12 K20 ["Actions"]
       64 GETTABLEKS                       R10 R11 K21 ["OnCustomPolicyEnabledChanged"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K8 [require]
       69 GETTABLEKS                       R13 R1 K15 ["Src"]
       71 GETTABLEKS                       R12 R13 K20 ["Actions"]
       73 GETTABLEKS                       R11 R12 K22 ["OnCustomPolicySwitchEnabledChanged"]
       75 CALL                             R10 1 1
       76 DUPCLOSURE                       R11 K23 [PROTO_0]
       77 CAPTURE                          VAL R0
       78 DUPCLOSURE                       R12 K24 [PROTO_1]
       79 CAPTURE                          VAL R0
       80 GETTABLEKS                       R13 R2 K25 ["PureComponent"]
       82 LOADK                            R15 K26 ["CustomPolicySwitchSection"]
       83 NAMECALL                         R13 R13 K27 ["extend"]
       85 CALL                             R13 2 1
       86 DUPCLOSURE                       R14 K28 [PROTO_2]
       87 CAPTURE                          VAL R0
       88 SETTABLEKS                       R14 R13 K29 ["updateCustomPoliciesEnabled"]
       90 DUPCLOSURE                       R14 K30 [PROTO_3]
       91 CAPTURE                          VAL R8
       92 SETTABLEKS                       R14 R13 K31 ["updateCustomPoliciesSwitchEnabled"]
       94 DUPCLOSURE                       R14 K32 [PROTO_4]
       95 SETTABLEKS                       R14 R13 K33 ["init"]
       97 DUPCLOSURE                       R14 K34 [PROTO_6]
       98 CAPTURE                          VAL R0
       99 CAPTURE                          VAL R8
      100 SETTABLEKS                       R14 R13 K35 ["didMount"]
      102 DUPCLOSURE                       R14 K36 [PROTO_7]
      103 SETTABLEKS                       R14 R13 K37 ["willUnmount"]
      105 DUPCLOSURE                       R14 K38 [PROTO_9]
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R7
      109 SETTABLEKS                       R14 R13 K39 ["render"]
      111 MOVE                             R14 R6
      112 DUPTABLE                         R15 K42 [{"Plugin", "Localization"}]
      113 GETTABLEKS                       R16 R5 K40 ["Plugin"]
      115 SETTABLEKS                       R16 R15 K40 ["Plugin"]
      117 GETTABLEKS                       R16 R5 K41 ["Localization"]
      119 SETTABLEKS                       R16 R15 K41 ["Localization"]
      121 CALL                             R14 1 1
      122 MOVE                             R15 R13
      123 CALL                             R14 1 1
      124 MOVE                             R13 R14
      125 DUPCLOSURE                       R14 K43 [PROTO_10]
      126 DUPCLOSURE                       R15 K44 [PROTO_13]
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R10
      129 GETTABLEKS                       R16 R3 K45 ["connect"]
      131 MOVE                             R17 R14
      132 MOVE                             R18 R15
      133 CALL                             R16 2 1
      134 MOVE                             R17 R13
      135 CALL                             R16 1 -1
      136 RETURN                           R16 -1
