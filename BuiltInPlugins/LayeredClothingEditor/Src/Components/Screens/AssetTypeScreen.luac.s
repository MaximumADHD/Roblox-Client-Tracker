PROTO_0:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R1 0
        3 DUPTABLE                         R3 K1 [{"shouldShowScaleDropdown"}]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K2 ["hasAnyCage"]
        7 MOVE                             R6 R0
        8 CALL                             R5 1 1
        9 NOT                              R4 R5
       10 SETTABLEKS                       R4 R3 K0 ["shouldShowScaleDropdown"]
       12 NAMECALL                         R1 R1 K3 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["state"]
        6 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R2 K3 ["shouldShowScaleDropdown"]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K4 ["new"]
       13 CALL                             R5 0 1
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R6 R7 K5 ["createElement"]
       17 GETUPVAL                         R7 3
       18 DUPTABLE                         R8 K12 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
       19 GETIMPORT                        R9 K14 [UDim2.new]
       21 LOADN                            R10 1
       22 LOADN                            R11 0
       23 LOADN                            R12 0
       24 GETTABLEKS                       R13 R3 K15 ["ContentHeight"]
       26 CALL                             R9 4 1
       27 SETTABLEKS                       R9 R8 K6 ["Size"]
       29 SETTABLEKS                       R0 R8 K7 ["LayoutOrder"]
       31 GETIMPORT                        R9 K19 [Enum.FillDirection.Vertical]
       33 SETTABLEKS                       R9 R8 K8 ["Layout"]
       35 GETIMPORT                        R9 K21 [Enum.HorizontalAlignment.Left]
       37 SETTABLEKS                       R9 R8 K9 ["HorizontalAlignment"]
       39 GETIMPORT                        R9 K23 [Enum.VerticalAlignment.Top]
       41 SETTABLEKS                       R9 R8 K10 ["VerticalAlignment"]
       43 GETTABLEKS                       R9 R3 K24 ["ContentSpacing"]
       45 SETTABLEKS                       R9 R8 K11 ["Spacing"]
       47 DUPTABLE                         R9 K27 [{"AssetTypeSelector", "ScaleTypeDropdown"}]
       48 GETUPVAL                         R11 2
       49 GETTABLEKS                       R10 R11 K5 ["createElement"]
       51 GETUPVAL                         R11 4
       52 DUPTABLE                         R12 K28 [{"LayoutOrder"}]
       53 NAMECALL                         R14 R5 K29 ["getNextOrder"]
       55 CALL                             R14 1 1
       56 ADD                              R13 R0 R14
       57 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
       59 CALL                             R10 2 1
       60 SETTABLEKS                       R10 R9 K25 ["AssetTypeSelector"]
       62 JUMPIFNOT                        R4 ; [+13]
       63 GETUPVAL                         R11 2
       64 GETTABLEKS                       R10 R11 K5 ["createElement"]
       66 GETUPVAL                         R11 5
       67 DUPTABLE                         R12 K28 [{"LayoutOrder"}]
       68 NAMECALL                         R14 R5 K29 ["getNextOrder"]
       70 CALL                             R14 1 1
       71 ADD                              R13 R0 R14
       72 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
       74 CALL                             R10 2 1
       75 JUMP                             ; [+1]
       76 LOADNIL                          R10
       77 SETTABLEKS                       R10 R9 K26 ["ScaleTypeDropdown"]
       79 CALL                             R6 3 -1
       80 RETURN                           R6 -1

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"shouldShowScaleDropdown"}]
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["shouldShowScaleDropdown"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 SETTABLEKS                       R1 R0 K3 ["onEditingItemChanged"]
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 SETTABLEKS                       R1 R0 K4 ["renderContent"]
       20 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R3 K1 ["EditingItemContext"]
        6 NAMECALL                         R2 R2 K2 ["getItem"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R4 R0 K0 ["props"]
       11 GETTABLEKS                       R3 R4 K1 ["EditingItemContext"]
       13 NAMECALL                         R3 R3 K3 ["getEditingItemChangedSignal"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R5 R0 K4 ["onEditingItemChanged"]
       18 NAMECALL                         R3 R3 K5 ["Connect"]
       20 CALL                             R3 2 1
       21 SETTABLEKS                       R3 R0 K6 ["editingItemChangedHandle"]
       23 GETTABLEKS                       R3 R0 K4 ["onEditingItemChanged"]
       25 MOVE                             R4 R2
       26 CALL                             R3 1 0
       27 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["GoToNext"]
        6 GETTABLEKS                       R4 R1 K3 ["GoToPrevious"]
        8 GETTABLEKS                       R5 R1 K4 ["AccessoryTypeInfo"]
       10 GETTABLEKS                       R6 R1 K5 ["Localization"]
       12 JUMPIFNOTEQKNIL                  R5 ; [+2]
       14 LOADB                            R7 0 +1
       15 LOADB                            R7 1
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R8 R9 K6 ["createElement"]
       19 GETUPVAL                         R9 1
       20 DUPTABLE                         R10 K8 [{"Style"}]
       21 LOADK                            R11 K9 ["Box"]
       22 SETTABLEKS                       R11 R10 K7 ["Style"]
       24 DUPTABLE                         R11 K11 [{"Screen"}]
       25 GETUPVAL                         R13 0
       26 GETTABLEKS                       R12 R13 K6 ["createElement"]
       28 GETUPVAL                         R13 2
       29 DUPTABLE                         R14 K21 [{"Title", "PromptText", "NextButtonText", "BackButtonText", "NextButtonEnabled", "BackButtonEnabled", "Scrollable", "HasBackButton", "GoToNext", "GoToPrevious", "RenderContent"}]
       30 LOADK                            R17 K22 ["AssetType"]
       31 LOADK                            R18 K22 ["AssetType"]
       32 NAMECALL                         R15 R6 K23 ["getText"]
       34 CALL                             R15 3 1
       35 SETTABLEKS                       R15 R14 K12 ["Title"]
       37 LOADK                            R17 K22 ["AssetType"]
       38 LOADK                            R18 K24 ["Prompt"]
       39 NAMECALL                         R15 R6 K23 ["getText"]
       41 CALL                             R15 3 1
       42 SETTABLEKS                       R15 R14 K13 ["PromptText"]
       44 LOADK                            R17 K25 ["Flow"]
       45 LOADK                            R18 K26 ["Next"]
       46 NAMECALL                         R15 R6 K23 ["getText"]
       48 CALL                             R15 3 1
       49 SETTABLEKS                       R15 R14 K14 ["NextButtonText"]
       51 LOADK                            R17 K25 ["Flow"]
       52 LOADK                            R18 K27 ["Back"]
       53 NAMECALL                         R15 R6 K23 ["getText"]
       55 CALL                             R15 3 1
       56 SETTABLEKS                       R15 R14 K15 ["BackButtonText"]
       58 SETTABLEKS                       R7 R14 K16 ["NextButtonEnabled"]
       60 LOADB                            R15 1
       61 SETTABLEKS                       R15 R14 K17 ["BackButtonEnabled"]
       63 LOADB                            R15 1
       64 SETTABLEKS                       R15 R14 K18 ["Scrollable"]
       66 LOADB                            R15 1
       67 SETTABLEKS                       R15 R14 K19 ["HasBackButton"]
       69 SETTABLEKS                       R3 R14 K2 ["GoToNext"]
       71 SETTABLEKS                       R4 R14 K3 ["GoToPrevious"]
       73 GETTABLEKS                       R15 R0 K28 ["renderContent"]
       75 SETTABLEKS                       R15 R14 K20 ["RenderContent"]
       77 CALL                             R12 2 1
       78 SETTABLEKS                       R12 R11 K10 ["Screen"]
       80 CALL                             R8 3 -1
       81 RETURN                           R8 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["editingItemChangedHandle"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["editingItemChangedHandle"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["editingItemChangedHandle"]
       11 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["selectItem"]
        2 DUPTABLE                         R3 K2 [{"AccessoryTypeInfo"}]
        3 GETTABLEKS                       R4 R2 K3 ["accessoryTypeInfo"]
        5 SETTABLEKS                       R4 R3 K1 ["AccessoryTypeInfo"]
        7 RETURN                           R3 1

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
       29 GETTABLEKS                       R4 R5 K8 ["Cryo"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R6 R0 K5 ["Packages"]
       36 GETTABLEKS                       R5 R6 K9 ["Framework"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K10 ["ContextServices"]
       41 GETTABLEKS                       R6 R5 K11 ["withContext"]
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R9 R0 K5 ["Packages"]
       47 GETTABLEKS                       R8 R9 K12 ["AvatarToolsShared"]
       49 CALL                             R7 1 1
       50 GETTABLEKS                       R8 R7 K13 ["Components"]
       52 GETTABLEKS                       R9 R8 K14 ["FlowScreenLayout"]
       54 GETTABLEKS                       R11 R7 K15 ["Util"]
       56 GETTABLEKS                       R10 R11 K16 ["AccessoryAndBodyToolShared"]
       58 GETTABLEKS                       R11 R10 K17 ["ItemCharacteristics"]
       60 GETTABLEKS                       R13 R7 K18 ["Contexts"]
       62 GETTABLEKS                       R12 R13 K19 ["EditingItemContext"]
       64 GETIMPORT                        R13 K4 [require]
       66 GETTABLEKS                       R16 R0 K20 ["Src"]
       68 GETTABLEKS                       R15 R16 K13 ["Components"]
       70 GETTABLEKS                       R14 R15 K21 ["AssetTypeSelector"]
       72 CALL                             R13 1 1
       73 GETIMPORT                        R14 K4 [require]
       75 GETTABLEKS                       R17 R0 K20 ["Src"]
       77 GETTABLEKS                       R16 R17 K13 ["Components"]
       79 GETTABLEKS                       R15 R16 K22 ["ScaleTypeDropdown"]
       81 CALL                             R14 1 1
       82 GETTABLEKS                       R16 R4 K23 ["UI"]
       84 GETTABLEKS                       R15 R16 K24 ["Pane"]
       86 GETTABLEKS                       R16 R4 K15 ["Util"]
       88 GETTABLEKS                       R17 R16 K25 ["Typecheck"]
       90 GETTABLEKS                       R18 R16 K26 ["LayoutOrderIterator"]
       92 GETTABLEKS                       R19 R1 K27 ["PureComponent"]
       94 LOADK                            R21 K28 ["AssetTypeScreen"]
       95 NAMECALL                         R19 R19 K29 ["extend"]
       97 CALL                             R19 2 1
       98 GETTABLEKS                       R20 R17 K30 ["wrap"]
      100 MOVE                             R21 R19
      101 GETIMPORT                        R22 K1 [script]
      103 CALL                             R20 2 0
      104 DUPCLOSURE                       R20 K31 [PROTO_2]
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R18
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R14
      111 SETTABLEKS                       R20 R19 K32 ["init"]
      113 DUPCLOSURE                       R20 K33 [PROTO_3]
      114 SETTABLEKS                       R20 R19 K34 ["didMount"]
      116 DUPCLOSURE                       R20 K35 [PROTO_4]
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R9
      120 SETTABLEKS                       R20 R19 K36 ["render"]
      122 DUPCLOSURE                       R20 K37 [PROTO_5]
      123 SETTABLEKS                       R20 R19 K38 ["willUnmount"]
      125 MOVE                             R20 R6
      126 DUPTABLE                         R21 K41 [{"Stylizer", "Localization", "EditingItemContext"}]
      127 GETTABLEKS                       R22 R5 K39 ["Stylizer"]
      129 SETTABLEKS                       R22 R21 K39 ["Stylizer"]
      131 GETTABLEKS                       R22 R5 K40 ["Localization"]
      133 SETTABLEKS                       R22 R21 K40 ["Localization"]
      135 SETTABLEKS                       R12 R21 K19 ["EditingItemContext"]
      137 CALL                             R20 1 1
      138 MOVE                             R21 R19
      139 CALL                             R20 1 1
      140 MOVE                             R19 R20
      141 DUPCLOSURE                       R20 K42 [PROTO_6]
      142 GETTABLEKS                       R21 R2 K43 ["connect"]
      144 MOVE                             R22 R20
      145 LOADNIL                          R23
      146 CALL                             R21 2 1
      147 MOVE                             R22 R19
      148 CALL                             R21 1 -1
      149 RETURN                           R21 -1
