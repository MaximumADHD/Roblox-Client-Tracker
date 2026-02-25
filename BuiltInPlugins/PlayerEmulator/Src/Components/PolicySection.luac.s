PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Networking"]
        4 NAMECALL                         R1 R1 K2 ["get"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R3 R0 K0 ["props"]
        9 GETTABLEKS                       R2 R3 K3 ["Plugin"]
       11 NAMECALL                         R2 R2 K2 ["get"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R4 R0 K0 ["props"]
       16 GETTABLEKS                       R3 R4 K4 ["loadAllPolicyItems"]
       18 MOVE                             R4 R1
       19 MOVE                             R5 R2
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["mainSwitchEnabled"]
        8 GETTABLEKS                       R5 R1 K4 ["allPolicies"]
       10 GETTABLEKS                       R6 R1 K5 ["allPolicySortedKeys"]
       12 GETTABLEKS                       R7 R1 K6 ["policySettingStatus"]
       14 GETTABLEKS                       R8 R1 K7 ["updateToggleItem"]
       16 GETTABLEKS                       R9 R1 K8 ["updateListItem"]
       18 GETTABLEKS                       R10 R1 K9 ["policyListItemsModuleExpanded"]
       20 GETTABLEKS                       R11 R1 K10 ["updatePolicySettingListItemModuleExpanded"]
       22 GETTABLEKS                       R12 R1 K11 ["customPoliciesEnabled"]
       24 JUMPIF                           R12 ; [+2]
       25 LOADNIL                          R12
       26 RETURN                           R12 1
       27 NEWTABLE                         R12 0 0
       29 NEWTABLE                         R13 0 0
       31 GETIMPORT                        R14 K13 [ipairs]
       33 MOVE                             R15 R6
       34 CALL                             R14 1 3
       35 FORGPREP_INEXT                   R14
       36 GETTABLE                         R20 R5 R18
       37 FASTCALL1                        TYPE R20 ; [+2]
       38 GETIMPORT                        R19 K15 [type]
       40 CALL                             R19 1 1
       41 JUMPIFNOTEQKS                    R19 K16 ["boolean"] ; [+21]
       43 GETTABLE                         R19 R7 R18
       44 LOADK                            R21 K17 ["Toggle"]
       45 MOVE                             R22 R18
       46 CONCAT                           R20 R21 R22
       47 GETUPVAL                         R22 0
       48 GETTABLEKS                       R21 R22 K18 ["createElement"]
       50 GETUPVAL                         R22 1
       51 DUPTABLE                         R23 K23 [{"Key", "IsOn", "Enabled", "ToggleCallback"}]
       52 SETTABLEKS                       R18 R23 K19 ["Key"]
       54 SETTABLEKS                       R19 R23 K20 ["IsOn"]
       56 SETTABLEKS                       R4 R23 K21 ["Enabled"]
       58 SETTABLEKS                       R8 R23 K22 ["ToggleCallback"]
       60 CALL                             R21 2 1
       61 SETTABLE                         R21 R12 R20
       62 JUMP                             ; [+33]
       63 GETTABLE                         R20 R5 R18
       64 FASTCALL1                        TYPE R20 ; [+2]
       65 GETIMPORT                        R19 K15 [type]
       67 CALL                             R19 1 1
       68 JUMPIFNOTEQKS                    R19 K24 ["table"] ; [+27]
       70 LOADK                            R20 K25 ["List"]
       71 MOVE                             R21 R18
       72 CONCAT                           R19 R20 R21
       73 GETUPVAL                         R21 0
       74 GETTABLEKS                       R20 R21 K18 ["createElement"]
       76 GETUPVAL                         R21 2
       77 DUPTABLE                         R22 K32 [{"LabelText", "Enabled", "Items", "ListItemsCheckBoxCallback", "ListStatus", "ListItemsModuleExpansionCallback", "Expanded"}]
       78 SETTABLEKS                       R18 R22 K26 ["LabelText"]
       80 SETTABLEKS                       R4 R22 K21 ["Enabled"]
       82 GETTABLE                         R23 R5 R18
       83 SETTABLEKS                       R23 R22 K27 ["Items"]
       85 SETTABLEKS                       R9 R22 K28 ["ListItemsCheckBoxCallback"]
       87 GETTABLE                         R23 R7 R18
       88 SETTABLEKS                       R23 R22 K29 ["ListStatus"]
       90 SETTABLEKS                       R11 R22 K30 ["ListItemsModuleExpansionCallback"]
       92 SETTABLEKS                       R10 R22 K31 ["Expanded"]
       94 CALL                             R20 2 1
       95 SETTABLE                         R20 R13 R19
       96 FORGLOOP                         R14 2 [inext] ; [-61]
       98 GETUPVAL                         R15 0
       99 GETTABLEKS                       R14 R15 K18 ["createElement"]
      101 GETUPVAL                         R15 3
      102 DUPTABLE                         R16 K36 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
      103 GETIMPORT                        R17 K39 [Enum.AutomaticSize.Y]
      105 SETTABLEKS                       R17 R16 K33 ["AutomaticSize"]
      107 GETIMPORT                        R17 K41 [Enum.HorizontalAlignment.Left]
      109 SETTABLEKS                       R17 R16 K34 ["HorizontalAlignment"]
      111 GETIMPORT                        R17 K44 [Enum.FillDirection.Vertical]
      113 SETTABLEKS                       R17 R16 K35 ["Layout"]
      115 SETTABLEKS                       R3 R16 K2 ["LayoutOrder"]
      117 DUPTABLE                         R17 K47 [{"ToggleElementsFrame", "ListElementsFrame"}]
      118 GETUPVAL                         R19 0
      119 GETTABLEKS                       R18 R19 K18 ["createElement"]
      121 GETUPVAL                         R19 3
      122 DUPTABLE                         R20 K49 [{"AutomaticSize", "HorizontalAlignment", "Spacing", "Layout", "LayoutOrder"}]
      123 GETIMPORT                        R21 K39 [Enum.AutomaticSize.Y]
      125 SETTABLEKS                       R21 R20 K33 ["AutomaticSize"]
      127 GETIMPORT                        R21 K41 [Enum.HorizontalAlignment.Left]
      129 SETTABLEKS                       R21 R20 K34 ["HorizontalAlignment"]
      131 GETTABLEKS                       R21 R2 K50 ["HORIZONTAL_LISTLAYOUT_PADDING"]
      133 SETTABLEKS                       R21 R20 K48 ["Spacing"]
      135 GETIMPORT                        R21 K44 [Enum.FillDirection.Vertical]
      137 SETTABLEKS                       R21 R20 K35 ["Layout"]
      139 LOADN                            R21 1
      140 SETTABLEKS                       R21 R20 K2 ["LayoutOrder"]
      142 MOVE                             R21 R12
      143 CALL                             R18 3 1
      144 SETTABLEKS                       R18 R17 K45 ["ToggleElementsFrame"]
      146 GETUPVAL                         R19 0
      147 GETTABLEKS                       R18 R19 K18 ["createElement"]
      149 GETUPVAL                         R19 3
      150 DUPTABLE                         R20 K49 [{"AutomaticSize", "HorizontalAlignment", "Spacing", "Layout", "LayoutOrder"}]
      151 GETIMPORT                        R21 K39 [Enum.AutomaticSize.Y]
      153 SETTABLEKS                       R21 R20 K33 ["AutomaticSize"]
      155 GETIMPORT                        R21 K41 [Enum.HorizontalAlignment.Left]
      157 SETTABLEKS                       R21 R20 K34 ["HorizontalAlignment"]
      159 GETTABLEKS                       R21 R2 K50 ["HORIZONTAL_LISTLAYOUT_PADDING"]
      161 SETTABLEKS                       R21 R20 K48 ["Spacing"]
      163 GETIMPORT                        R21 K44 [Enum.FillDirection.Vertical]
      165 SETTABLEKS                       R21 R20 K35 ["Layout"]
      167 LOADN                            R21 2
      168 SETTABLEKS                       R21 R20 K2 ["LayoutOrder"]
      170 MOVE                             R21 R13
      171 CALL                             R18 3 1
      172 SETTABLEKS                       R18 R17 K46 ["ListElementsFrame"]
      174 CALL                             R14 3 -1
      175 RETURN                           R14 -1

PROTO_2:
        0 GETIMPORT                        R2 K1 [game]
        2 LOADK                            R4 K2 ["PlayerEmulatorDropdownOpenedStateTrackingEnabled"]
        3 NAMECALL                         R2 R2 K3 ["GetFastFlag"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+38]
        7 DUPTABLE                         R2 K10 [{"mainSwitchEnabled", "customPoliciesEnabled", "allPolicies", "allPolicySortedKeys", "policySettingStatus", "policyListItemsModuleExpanded"}]
        8 GETTABLEKS                       R4 R0 K11 ["MainSwitch"]
       10 GETTABLEKS                       R3 R4 K4 ["mainSwitchEnabled"]
       12 SETTABLEKS                       R3 R2 K4 ["mainSwitchEnabled"]
       14 GETTABLEKS                       R4 R0 K12 ["CustomPolicySwitch"]
       16 GETTABLEKS                       R3 R4 K5 ["customPoliciesEnabled"]
       18 SETTABLEKS                       R3 R2 K5 ["customPoliciesEnabled"]
       20 GETTABLEKS                       R4 R0 K13 ["Policies"]
       22 GETTABLEKS                       R3 R4 K6 ["allPolicies"]
       24 SETTABLEKS                       R3 R2 K6 ["allPolicies"]
       26 GETTABLEKS                       R4 R0 K13 ["Policies"]
       28 GETTABLEKS                       R3 R4 K7 ["allPolicySortedKeys"]
       30 SETTABLEKS                       R3 R2 K7 ["allPolicySortedKeys"]
       32 GETTABLEKS                       R4 R0 K13 ["Policies"]
       34 GETTABLEKS                       R3 R4 K8 ["policySettingStatus"]
       36 SETTABLEKS                       R3 R2 K8 ["policySettingStatus"]
       38 GETTABLEKS                       R4 R0 K13 ["Policies"]
       40 GETTABLEKS                       R3 R4 K9 ["policyListItemsModuleExpanded"]
       42 SETTABLEKS                       R3 R2 K9 ["policyListItemsModuleExpanded"]
       44 RETURN                           R2 1
       45 DUPTABLE                         R2 K14 [{"mainSwitchEnabled", "customPoliciesEnabled", "allPolicies", "allPolicySortedKeys", "policySettingStatus"}]
       46 GETTABLEKS                       R4 R0 K11 ["MainSwitch"]
       48 GETTABLEKS                       R3 R4 K4 ["mainSwitchEnabled"]
       50 SETTABLEKS                       R3 R2 K4 ["mainSwitchEnabled"]
       52 GETTABLEKS                       R4 R0 K12 ["CustomPolicySwitch"]
       54 GETTABLEKS                       R3 R4 K5 ["customPoliciesEnabled"]
       56 SETTABLEKS                       R3 R2 K5 ["customPoliciesEnabled"]
       58 GETTABLEKS                       R4 R0 K13 ["Policies"]
       60 GETTABLEKS                       R3 R4 K6 ["allPolicies"]
       62 SETTABLEKS                       R3 R2 K6 ["allPolicies"]
       64 GETTABLEKS                       R4 R0 K13 ["Policies"]
       66 GETTABLEKS                       R3 R4 K7 ["allPolicySortedKeys"]
       68 SETTABLEKS                       R3 R2 K7 ["allPolicySortedKeys"]
       70 GETTABLEKS                       R4 R0 K13 ["Policies"]
       72 GETTABLEKS                       R3 R4 K8 ["policySettingStatus"]
       74 SETTABLEKS                       R3 R2 K8 ["policySettingStatus"]
       76 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K4 [{"loadAllPolicyItems", "updateToggleItem", "updateListItem", "updatePolicySettingListItemModuleExpanded"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["loadAllPolicyItems"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["updateToggleItem"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["updateListItem"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["updatePolicySettingListItemModuleExpanded"]
       21 RETURN                           R1 1

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
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETIMPORT                        R6 K4 [require]
       36 GETTABLEKS                       R9 R0 K11 ["Src"]
       38 GETTABLEKS                       R8 R9 K9 ["ContextServices"]
       40 GETTABLEKS                       R7 R8 K12 ["NetworkingContext"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R3 K13 ["UI"]
       45 GETTABLEKS                       R8 R7 K14 ["Pane"]
       47 GETIMPORT                        R9 K4 [require]
       49 GETTABLEKS                       R13 R0 K11 ["Src"]
       51 GETTABLEKS                       R12 R13 K15 ["Networking"]
       53 GETTABLEKS                       R11 R12 K16 ["Requests"]
       55 GETTABLEKS                       R10 R11 K17 ["GetPolicySettings"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K4 [require]
       60 GETTABLEKS                       R13 R0 K11 ["Src"]
       62 GETTABLEKS                       R12 R13 K18 ["Thunks"]
       64 GETTABLEKS                       R11 R12 K19 ["UpdatePolicyBooleanItem"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K4 [require]
       69 GETTABLEKS                       R14 R0 K11 ["Src"]
       71 GETTABLEKS                       R13 R14 K18 ["Thunks"]
       73 GETTABLEKS                       R12 R13 K20 ["UpdatePolicyListItem"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K4 [require]
       78 GETTABLEKS                       R15 R0 K11 ["Src"]
       80 GETTABLEKS                       R14 R15 K18 ["Thunks"]
       82 GETTABLEKS                       R13 R14 K21 ["UpdatePolicyListItemModuleExpanded"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K4 [require]
       87 GETTABLEKS                       R16 R0 K11 ["Src"]
       89 GETTABLEKS                       R15 R16 K22 ["Components"]
       91 GETTABLEKS                       R14 R15 K23 ["ToggleItemModule"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K4 [require]
       96 GETTABLEKS                       R17 R0 K11 ["Src"]
       98 GETTABLEKS                       R16 R17 K22 ["Components"]
      100 GETTABLEKS                       R15 R16 K24 ["ListItemsModule"]
      102 CALL                             R14 1 1
      103 GETTABLEKS                       R15 R1 K25 ["PureComponent"]
      105 LOADK                            R17 K26 ["PolicySection"]
      106 NAMECALL                         R15 R15 K27 ["extend"]
      108 CALL                             R15 2 1
      109 DUPCLOSURE                       R16 K28 [PROTO_0]
      110 SETTABLEKS                       R16 R15 K29 ["didMount"]
      112 DUPCLOSURE                       R16 K30 [PROTO_1]
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R8
      117 SETTABLEKS                       R16 R15 K31 ["render"]
      119 MOVE                             R16 R5
      120 DUPTABLE                         R17 K34 [{"Networking", "Plugin", "Stylizer"}]
      121 SETTABLEKS                       R6 R17 K15 ["Networking"]
      123 GETTABLEKS                       R18 R4 K32 ["Plugin"]
      125 SETTABLEKS                       R18 R17 K32 ["Plugin"]
      127 GETTABLEKS                       R18 R4 K33 ["Stylizer"]
      129 SETTABLEKS                       R18 R17 K33 ["Stylizer"]
      131 CALL                             R16 1 1
      132 MOVE                             R17 R15
      133 CALL                             R16 1 1
      134 MOVE                             R15 R16
      135 DUPCLOSURE                       R16 K35 [PROTO_2]
      136 DUPCLOSURE                       R17 K36 [PROTO_7]
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R12
      141 GETTABLEKS                       R18 R2 K37 ["connect"]
      143 MOVE                             R19 R16
      144 MOVE                             R20 R17
      145 CALL                             R18 2 1
      146 MOVE                             R19 R15
      147 CALL                             R18 1 -1
      148 RETURN                           R18 -1
