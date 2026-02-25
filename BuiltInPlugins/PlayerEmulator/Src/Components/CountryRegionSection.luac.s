PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["EmulatedCountryCode"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["EmulatedCountryCode"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["countryRegionTable"]
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETTABLE                         R3 R2 R1
        6 JUMPIFNOT                        R3 ; [+4]
        7 GETTABLE                         R4 R2 R1
        8 GETTABLEKS                       R3 R4 K2 ["displayText"]
       10 RETURN                           R3 1
       11 LOADK                            R3 K3 [""]
       12 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["Plugin"]
        4 NAMECALL                         R2 R2 K2 ["get"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K3 ["COUNTRY_REGION_SETTING_KEY"]
       10 NAMECALL                         R3 R2 K4 ["GetSetting"]
       12 CALL                             R3 2 1
       13 JUMPIFEQ                         R3 R1 ; [+8]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K3 ["COUNTRY_REGION_SETTING_KEY"]
       18 MOVE                             R6 R1
       19 NAMECALL                         R3 R2 K5 ["SetSetting"]
       21 CALL                             R3 3 0
       22 GETTABLEKS                       R4 R0 K0 ["props"]
       24 GETTABLEKS                       R3 R4 K6 ["onEmulatedCountryRegionChanged"]
       26 MOVE                             R4 R3
       27 MOVE                             R5 R1
       28 CALL                             R4 1 0
       29 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K3 [{"Id", "Label", "code"}]
        1 GETTABLEKS                       R2 R0 K4 ["displayText"]
        3 SETTABLEKS                       R2 R1 K0 ["Id"]
        5 GETTABLEKS                       R2 R0 K4 ["displayText"]
        7 SETTABLEKS                       R2 R1 K1 ["Label"]
        9 GETTABLEKS                       R2 R0 K2 ["code"]
       11 SETTABLEKS                       R2 R1 K2 ["code"]
       13 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["code"]
        2 GETUPVAL                         R2 0
        3 SETTABLEKS                       R1 R2 K1 ["EmulatedCountryCode"]
        5 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["signalTokens"]
        4 DUPCLOSURE                       R1 K1 [PROTO_4]
        5 SETTABLEKS                       R1 R0 K2 ["createCountryRegionListForSelectInput"]
        7 DUPCLOSURE                       R1 K3 [PROTO_5]
        8 CAPTURE                          UPVAL U0
        9 SETTABLEKS                       R1 R0 K4 ["onItemClicked"]
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["EmulatedCountryCode"]
        4 NAMECALL                         R0 R0 K1 ["updateCountryRegionSetting"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Plugin"]
        4 NAMECALL                         R1 R1 K2 ["get"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R3 R0 K0 ["props"]
        9 GETTABLEKS                       R2 R3 K3 ["Networking"]
       11 NAMECALL                         R2 R2 K2 ["get"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 LOADK                            R5 K4 ["EmulatedCountryCode"]
       16 NAMECALL                         R3 R3 K5 ["GetPropertyChangedSignal"]
       18 CALL                             R3 2 1
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U0
       22 NAMECALL                         R3 R3 K6 ["Connect"]
       24 CALL                             R3 2 1
       25 GETTABLEKS                       R5 R0 K7 ["signalTokens"]
       27 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       29 MOVE                             R6 R3
       30 GETIMPORT                        R4 K10 [table.insert]
       32 CALL                             R4 2 0
       33 GETTABLEKS                       R5 R0 K0 ["props"]
       35 GETTABLEKS                       R4 R5 K11 ["loadCountryRegion"]
       37 MOVE                             R5 R2
       38 MOVE                             R6 R1
       39 CALL                             R4 2 0
       40 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["mainSwitchEnabled"]
        4 GETTABLEKS                       R3 R1 K2 ["countryRegionList"]
        6 GETTABLEKS                       R4 R1 K3 ["userCountryRegionCode"]
        8 GETTABLEKS                       R5 R1 K4 ["Stylizer"]
       10 GETTABLEKS                       R6 R1 K5 ["Localization"]
       12 GETTABLEKS                       R7 R1 K6 ["LayoutOrder"]
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R8 R9 K7 ["createElement"]
       17 LOADK                            R9 K8 ["Frame"]
       18 DUPTABLE                         R10 K12 [{"AutomaticSize", "Size", "BackgroundTransparency", "LayoutOrder"}]
       19 GETIMPORT                        R11 K15 [Enum.AutomaticSize.Y]
       21 SETTABLEKS                       R11 R10 K9 ["AutomaticSize"]
       23 GETIMPORT                        R11 K18 [UDim2.fromScale]
       25 LOADN                            R12 1
       26 LOADN                            R13 0
       27 CALL                             R11 2 1
       28 SETTABLEKS                       R11 R10 K10 ["Size"]
       30 LOADN                            R11 1
       31 SETTABLEKS                       R11 R10 K11 ["BackgroundTransparency"]
       33 SETTABLEKS                       R7 R10 K6 ["LayoutOrder"]
       35 DUPTABLE                         R11 K22 [{"Layout", "Label", "CountryRegionDropdown"}]
       36 GETUPVAL                         R13 0
       37 GETTABLEKS                       R12 R13 K7 ["createElement"]
       39 LOADK                            R13 K23 ["UIListLayout"]
       40 DUPTABLE                         R14 K30 [{"HorizontalFlex", "SortOrder", "FillDirection", "VerticalAlignment", "Padding", "Wraps"}]
       41 GETIMPORT                        R15 K33 [Enum.UIFlexAlignment.SpaceBetween]
       43 SETTABLEKS                       R15 R14 K24 ["HorizontalFlex"]
       45 GETIMPORT                        R15 K34 [Enum.SortOrder.LayoutOrder]
       47 SETTABLEKS                       R15 R14 K25 ["SortOrder"]
       49 GETIMPORT                        R15 K36 [Enum.FillDirection.Horizontal]
       51 SETTABLEKS                       R15 R14 K26 ["FillDirection"]
       53 GETIMPORT                        R15 K38 [Enum.VerticalAlignment.Center]
       55 SETTABLEKS                       R15 R14 K27 ["VerticalAlignment"]
       57 GETTABLEKS                       R15 R5 K39 ["HORIZONTAL_LISTLAYOUT_PADDING"]
       59 SETTABLEKS                       R15 R14 K28 ["Padding"]
       61 LOADB                            R15 1
       62 SETTABLEKS                       R15 R14 K29 ["Wraps"]
       64 CALL                             R12 2 1
       65 SETTABLEKS                       R12 R11 K19 ["Layout"]
       67 GETUPVAL                         R13 0
       68 GETTABLEKS                       R12 R13 K7 ["createElement"]
       70 GETUPVAL                         R13 1
       71 DUPTABLE                         R14 K42 [{"AutomaticSize", "StyleModifier", "Text", "LayoutOrder"}]
       72 GETIMPORT                        R15 K44 [Enum.AutomaticSize.XY]
       74 SETTABLEKS                       R15 R14 K9 ["AutomaticSize"]
       76 JUMPIFNOT                        R2 ; [+2]
       77 LOADNIL                          R15
       78 JUMP                             ; [+3]
       79 GETUPVAL                         R16 2
       80 GETTABLEKS                       R15 R16 K45 ["Disabled"]
       82 SETTABLEKS                       R15 R14 K40 ["StyleModifier"]
       84 LOADK                            R17 K46 ["CountryRegionSection"]
       85 LOADK                            R18 K47 ["LabelText"]
       86 NAMECALL                         R15 R6 K48 ["getText"]
       88 CALL                             R15 3 1
       89 SETTABLEKS                       R15 R14 K41 ["Text"]
       91 LOADN                            R15 1
       92 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
       94 CALL                             R12 2 1
       95 SETTABLEKS                       R12 R11 K20 ["Label"]
       97 GETUPVAL                         R13 0
       98 GETTABLEKS                       R12 R13 K7 ["createElement"]
      100 GETUPVAL                         R13 3
      101 DUPTABLE                         R14 K53 [{"Items", "LayoutOrder", "OnItemActivated", "SelectedId", "Enabled"}]
      102 GETUPVAL                         R15 4
      103 MOVE                             R16 R3
      104 GETTABLEKS                       R17 R0 K54 ["createCountryRegionListForSelectInput"]
      106 CALL                             R15 2 1
      107 SETTABLEKS                       R15 R14 K49 ["Items"]
      109 LOADN                            R15 2
      110 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
      112 GETTABLEKS                       R15 R0 K55 ["onItemClicked"]
      114 SETTABLEKS                       R15 R14 K50 ["OnItemActivated"]
      116 MOVE                             R17 R4
      117 NAMECALL                         R15 R0 K56 ["getCurrentCountryRegionText"]
      119 CALL                             R15 2 1
      120 SETTABLEKS                       R15 R14 K51 ["SelectedId"]
      122 SETTABLEKS                       R2 R14 K52 ["Enabled"]
      124 CALL                             R12 2 1
      125 SETTABLEKS                       R12 R11 K21 ["CountryRegionDropdown"]
      127 CALL                             R8 3 -1
      128 RETURN                           R8 -1

PROTO_11:
        0 DUPTABLE                         R2 K4 [{"mainSwitchEnabled", "countryRegionTable", "countryRegionList", "userCountryRegionCode"}]
        1 GETTABLEKS                       R4 R0 K5 ["MainSwitch"]
        3 GETTABLEKS                       R3 R4 K0 ["mainSwitchEnabled"]
        5 SETTABLEKS                       R3 R2 K0 ["mainSwitchEnabled"]
        7 GETTABLEKS                       R4 R0 K6 ["CountryRegion"]
        9 GETTABLEKS                       R3 R4 K1 ["countryRegionTable"]
       11 SETTABLEKS                       R3 R2 K1 ["countryRegionTable"]
       13 GETTABLEKS                       R4 R0 K6 ["CountryRegion"]
       15 GETTABLEKS                       R3 R4 K2 ["countryRegionList"]
       17 SETTABLEKS                       R3 R2 K2 ["countryRegionList"]
       19 GETTABLEKS                       R4 R0 K6 ["CountryRegion"]
       21 GETTABLEKS                       R3 R4 K3 ["userCountryRegionCode"]
       23 SETTABLEKS                       R3 R2 K3 ["userCountryRegionCode"]
       25 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R1 K2 [{"loadCountryRegion", "onEmulatedCountryRegionChanged"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["loadCountryRegion"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["onEmulatedCountryRegionChanged"]
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
       44 GETTABLEKS                       R9 R10 K13 ["ContextServices"]
       46 GETTABLEKS                       R8 R9 K16 ["NetworkingContext"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K8 [require]
       51 GETTABLEKS                       R12 R1 K15 ["Src"]
       53 GETTABLEKS                       R11 R12 K17 ["Networking"]
       55 GETTABLEKS                       R10 R11 K18 ["Requests"]
       57 GETTABLEKS                       R9 R10 K19 ["GetCountryRegion"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K8 [require]
       62 GETTABLEKS                       R12 R1 K15 ["Src"]
       64 GETTABLEKS                       R11 R12 K20 ["Util"]
       66 GETTABLEKS                       R10 R11 K21 ["Constants"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K8 [require]
       71 GETTABLEKS                       R13 R1 K15 ["Src"]
       73 GETTABLEKS                       R12 R13 K22 ["Actions"]
       75 GETTABLEKS                       R11 R12 K23 ["OnEmulatedCountryRegionChanged"]
       77 CALL                             R10 1 1
       78 GETTABLEKS                       R11 R4 K24 ["UI"]
       80 GETTABLEKS                       R12 R11 K25 ["SelectInput"]
       82 GETTABLEKS                       R13 R11 K26 ["TextLabel"]
       84 GETTABLEKS                       R14 R4 K27 ["Dash"]
       86 GETTABLEKS                       R15 R14 K28 ["map"]
       88 GETTABLEKS                       R17 R4 K20 ["Util"]
       90 GETTABLEKS                       R16 R17 K29 ["StyleModifier"]
       92 GETTABLEKS                       R17 R2 K30 ["PureComponent"]
       94 LOADK                            R19 K31 ["CountryRegionSection"]
       95 NAMECALL                         R17 R17 K32 ["extend"]
       97 CALL                             R17 2 1
       98 DUPCLOSURE                       R18 K33 [PROTO_0]
       99 CAPTURE                          VAL R0
      100 DUPCLOSURE                       R19 K34 [PROTO_1]
      101 CAPTURE                          VAL R0
      102 DUPCLOSURE                       R20 K35 [PROTO_2]
      103 SETTABLEKS                       R20 R17 K36 ["getCurrentCountryRegionText"]
      105 DUPCLOSURE                       R20 K37 [PROTO_3]
      106 CAPTURE                          VAL R9
      107 SETTABLEKS                       R20 R17 K38 ["updateCountryRegionSetting"]
      109 DUPCLOSURE                       R20 K39 [PROTO_6]
      110 CAPTURE                          VAL R0
      111 SETTABLEKS                       R20 R17 K40 ["init"]
      113 DUPCLOSURE                       R20 K41 [PROTO_8]
      114 CAPTURE                          VAL R0
      115 SETTABLEKS                       R20 R17 K42 ["didMount"]
      117 DUPCLOSURE                       R20 K43 [PROTO_9]
      118 SETTABLEKS                       R20 R17 K44 ["willUnmount"]
      120 DUPCLOSURE                       R20 K45 [PROTO_10]
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R15
      126 SETTABLEKS                       R20 R17 K46 ["render"]
      128 MOVE                             R20 R6
      129 DUPTABLE                         R21 K50 [{"Stylizer", "Localization", "Networking", "Plugin"}]
      130 GETTABLEKS                       R22 R5 K47 ["Stylizer"]
      132 SETTABLEKS                       R22 R21 K47 ["Stylizer"]
      134 GETTABLEKS                       R22 R5 K48 ["Localization"]
      136 SETTABLEKS                       R22 R21 K48 ["Localization"]
      138 SETTABLEKS                       R7 R21 K17 ["Networking"]
      140 GETTABLEKS                       R22 R5 K49 ["Plugin"]
      142 SETTABLEKS                       R22 R21 K49 ["Plugin"]
      144 CALL                             R20 1 1
      145 MOVE                             R21 R17
      146 CALL                             R20 1 1
      147 MOVE                             R17 R20
      148 DUPCLOSURE                       R20 K51 [PROTO_11]
      149 DUPCLOSURE                       R21 K52 [PROTO_14]
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R10
      152 GETTABLEKS                       R22 R3 K53 ["connect"]
      154 MOVE                             R23 R20
      155 MOVE                             R24 R21
      156 CALL                             R22 2 1
      157 MOVE                             R23 R17
      158 CALL                             R22 1 -1
      159 RETURN                           R22 -1
