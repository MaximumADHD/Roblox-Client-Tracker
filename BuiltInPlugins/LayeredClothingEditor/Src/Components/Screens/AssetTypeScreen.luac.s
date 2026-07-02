PROTO_0:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R1 0
        3 DUPTABLE                         R3 K1 [{"shouldShowScaleDropdown"}]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K2 ["hasAnyCage"]
        7 MOVE                             R6 R0
        8 CALL                             R5 1 1
        9 NOT                              R4 R5
       10 SETTABLEKS                       R4 R3 K0 ["shouldShowScaleDropdown"]
       12 NAMECALL                         R1 R1 K3 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["state"]
        6 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R2 K3 ["shouldShowScaleDropdown"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K4 ["new"]
       13 CALL                             R5 0 1
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K5 ["createElement"]
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
       48 GETUPVAL                         R10 2
       49 GETTABLEKS                       R10 R10 K5 ["createElement"]
       51 GETUPVAL                         R11 4
       52 DUPTABLE                         R12 K28 [{"LayoutOrder"}]
       53 NAMECALL                         R14 R5 K29 ["getNextOrder"]
       55 CALL                             R14 1 1
       56 ADD                              R13 R0 R14
       57 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
       59 CALL                             R10 2 1
       60 SETTABLEKS                       R10 R9 K25 ["AssetTypeSelector"]
       62 JUMPIFNOT                        R4 ; [+13]
       63 GETUPVAL                         R10 2
       64 GETTABLEKS                       R10 R10 K5 ["createElement"]
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
        0 DUPTABLE                         R1 K2 [{[1] = True}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 SETTABLEKS                       R1 R0 K4 ["onEditingItemChanged"]
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 SETTABLEKS                       R1 R0 K5 ["renderContent"]
       17 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["EditingItemContext"]
        6 NAMECALL                         R2 R2 K2 ["getItem"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R0 K0 ["props"]
       11 GETTABLEKS                       R3 R3 K1 ["EditingItemContext"]
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
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R8 R8 K6 ["createElement"]
       19 GETUPVAL                         R9 1
       20 DUPTABLE                         R10 K9 [{["Style"] = "Box"}]
       21 DUPTABLE                         R11 K11 [{"Screen"}]
       22 GETUPVAL                         R12 0
       23 GETTABLEKS                       R12 R12 K6 ["createElement"]
       25 GETUPVAL                         R13 2
       26 DUPTABLE                         R14 K22 [{["Title"], ["PromptText"], ["NextButtonText"], ["BackButtonText"], ["NextButtonEnabled"], ["BackButtonEnabled"] = True, ["Scrollable"] = True, ["HasBackButton"] = True, ["GoToNext"], ["GoToPrevious"], ["RenderContent"]}]
       27 LOADK                            R17 K23 ["AssetType"]
       28 LOADK                            R18 K23 ["AssetType"]
       29 NAMECALL                         R15 R6 K24 ["getText"]
       31 CALL                             R15 3 1
       32 SETTABLEKS                       R15 R14 K12 ["Title"]
       34 LOADK                            R17 K23 ["AssetType"]
       35 LOADK                            R18 K25 ["Prompt"]
       36 NAMECALL                         R15 R6 K24 ["getText"]
       38 CALL                             R15 3 1
       39 SETTABLEKS                       R15 R14 K13 ["PromptText"]
       41 LOADK                            R17 K26 ["Flow"]
       42 LOADK                            R18 K27 ["Next"]
       43 NAMECALL                         R15 R6 K24 ["getText"]
       45 CALL                             R15 3 1
       46 SETTABLEKS                       R15 R14 K14 ["NextButtonText"]
       48 LOADK                            R17 K26 ["Flow"]
       49 LOADK                            R18 K28 ["Back"]
       50 NAMECALL                         R15 R6 K24 ["getText"]
       52 CALL                             R15 3 1
       53 SETTABLEKS                       R15 R14 K15 ["BackButtonText"]
       55 SETTABLEKS                       R7 R14 K16 ["NextButtonEnabled"]
       57 SETTABLEKS                       R3 R14 K2 ["GoToNext"]
       59 SETTABLEKS                       R4 R14 K3 ["GoToPrevious"]
       61 GETTABLEKS                       R15 R0 K29 ["renderContent"]
       63 SETTABLEKS                       R15 R14 K21 ["RenderContent"]
       65 CALL                             R12 2 1
       66 SETTABLEKS                       R12 R11 K10 ["Screen"]
       68 CALL                             R8 3 -1
       69 RETURN                           R8 -1

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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["Cryo"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K5 ["Packages"]
       36 GETTABLEKS                       R5 R5 K9 ["Framework"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K10 ["ContextServices"]
       41 GETTABLEKS                       R6 R5 K11 ["withContext"]
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R8 R0 K5 ["Packages"]
       47 GETTABLEKS                       R8 R8 K12 ["AvatarToolsShared"]
       49 CALL                             R7 1 1
       50 GETTABLEKS                       R8 R7 K13 ["Components"]
       52 GETTABLEKS                       R9 R8 K14 ["FlowScreenLayout"]
       54 GETTABLEKS                       R10 R7 K15 ["Util"]
       56 GETTABLEKS                       R10 R10 K16 ["AccessoryAndBodyToolShared"]
       58 GETTABLEKS                       R11 R10 K17 ["ItemCharacteristics"]
       60 GETTABLEKS                       R12 R7 K18 ["Contexts"]
       62 GETTABLEKS                       R12 R12 K19 ["EditingItemContext"]
       64 GETIMPORT                        R13 K4 [require]
       66 GETTABLEKS                       R14 R0 K20 ["Src"]
       68 GETTABLEKS                       R14 R14 K13 ["Components"]
       70 GETTABLEKS                       R14 R14 K21 ["AssetTypeSelector"]
       72 CALL                             R13 1 1
       73 GETIMPORT                        R14 K4 [require]
       75 GETTABLEKS                       R15 R0 K20 ["Src"]
       77 GETTABLEKS                       R15 R15 K13 ["Components"]
       79 GETTABLEKS                       R15 R15 K22 ["ScaleTypeDropdown"]
       81 CALL                             R14 1 1
       82 GETTABLEKS                       R15 R4 K23 ["UI"]
       84 GETTABLEKS                       R15 R15 K24 ["Pane"]
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
