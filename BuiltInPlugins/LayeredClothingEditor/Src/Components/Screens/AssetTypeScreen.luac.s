PROTO_0:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R1 0
        3 DUPTABLE                         R3 K2 [{"shouldShowScaleDropdown", "editingItem"}]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K3 ["hasAnyCage"]
        7 MOVE                             R6 R0
        8 CALL                             R5 1 1
        9 NOT                              R4 R5
       10 SETTABLEKS                       R4 R3 K0 ["shouldShowScaleDropdown"]
       12 GETUPVAL                         R5 2
       13 CALL                             R5 0 1
       14 JUMPIFNOT                        R5 ; [+2]
       15 MOVE                             R4 R0
       16 JUMP                             ; [+1]
       17 LOADNIL                          R4
       18 SETTABLEKS                       R4 R3 K1 ["editingItem"]
       20 NAMECALL                         R1 R1 K4 ["setState"]
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+12]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["state"]
        7 GETTABLEKS                       R1 R1 K1 ["editingItem"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["props"]
       12 GETTABLEKS                       R2 R2 K3 ["AccessoryTypeInfo"]
       14 CALL                             R0 2 1
       15 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["state"]
        6 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R2 K3 ["shouldShowScaleDropdown"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K4 ["isMissingRequiredCage"]
       13 CALL                             R5 0 1
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K5 ["new"]
       17 CALL                             R6 0 1
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R7 R7 K6 ["createElement"]
       21 GETUPVAL                         R8 3
       22 DUPTABLE                         R9 K14 [{"AutomaticSize", "Size", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
       23 JUMPIFNOT                        R5 ; [+3]
       24 GETIMPORT                        R10 K17 [Enum.AutomaticSize.Y]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R10
       28 SETTABLEKS                       R10 R9 K7 ["AutomaticSize"]
       30 GETIMPORT                        R10 K19 [UDim2.new]
       32 LOADN                            R11 1
       33 LOADN                            R12 0
       34 LOADN                            R13 0
       35 GETTABLEKS                       R14 R3 K20 ["ContentHeight"]
       37 CALL                             R10 4 1
       38 SETTABLEKS                       R10 R9 K8 ["Size"]
       40 SETTABLEKS                       R0 R9 K9 ["LayoutOrder"]
       42 GETIMPORT                        R10 K23 [Enum.FillDirection.Vertical]
       44 SETTABLEKS                       R10 R9 K10 ["Layout"]
       46 GETIMPORT                        R10 K25 [Enum.HorizontalAlignment.Left]
       48 SETTABLEKS                       R10 R9 K11 ["HorizontalAlignment"]
       50 GETIMPORT                        R10 K27 [Enum.VerticalAlignment.Top]
       52 SETTABLEKS                       R10 R9 K12 ["VerticalAlignment"]
       54 GETTABLEKS                       R10 R3 K28 ["ContentSpacing"]
       56 SETTABLEKS                       R10 R9 K13 ["Spacing"]
       58 DUPTABLE                         R10 K32 [{"AssetTypeSelector", "MissingCageWarning", "ScaleTypeDropdown"}]
       59 GETUPVAL                         R11 2
       60 GETTABLEKS                       R11 R11 K6 ["createElement"]
       62 GETUPVAL                         R12 4
       63 DUPTABLE                         R13 K33 [{"LayoutOrder"}]
       64 NAMECALL                         R15 R6 K34 ["getNextOrder"]
       66 CALL                             R15 1 1
       67 ADD                              R14 R0 R15
       68 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       70 CALL                             R11 2 1
       71 SETTABLEKS                       R11 R10 K29 ["AssetTypeSelector"]
       73 JUMPIFNOT                        R5 ; [+13]
       74 GETUPVAL                         R11 2
       75 GETTABLEKS                       R11 R11 K6 ["createElement"]
       77 GETUPVAL                         R12 5
       78 DUPTABLE                         R13 K33 [{"LayoutOrder"}]
       79 NAMECALL                         R15 R6 K34 ["getNextOrder"]
       81 CALL                             R15 1 1
       82 ADD                              R14 R0 R15
       83 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       85 CALL                             R11 2 1
       86 JUMP                             ; [+1]
       87 LOADNIL                          R11
       88 SETTABLEKS                       R11 R10 K30 ["MissingCageWarning"]
       90 JUMPIFNOT                        R4 ; [+13]
       91 GETUPVAL                         R11 2
       92 GETTABLEKS                       R11 R11 K6 ["createElement"]
       94 GETUPVAL                         R12 6
       95 DUPTABLE                         R13 K33 [{"LayoutOrder"}]
       96 NAMECALL                         R15 R6 K34 ["getNextOrder"]
       98 CALL                             R15 1 1
       99 ADD                              R14 R0 R15
      100 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
      102 CALL                             R11 2 1
      103 JUMP                             ; [+1]
      104 LOADNIL                          R11
      105 SETTABLEKS                       R11 R10 K31 ["ScaleTypeDropdown"]
      107 CALL                             R7 3 -1
      108 RETURN                           R7 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["renderContent"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_4:
        0 DUPTABLE                         R1 K2 [{[1] = True}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R1 R0 K4 ["onEditingItemChanged"]
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K5 ["isMissingRequiredCage"]
       15 NEWCLOSURE                       R1 P2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          UPVAL U7
       22 CAPTURE                          UPVAL U8
       23 SETTABLEKS                       R1 R0 K6 ["renderContent"]
       25 NEWCLOSURE                       R1 P3
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K7 ["renderContentWithMissingCageWarning"]
       29 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["GoToNext"]
        6 GETTABLEKS                       R4 R1 K3 ["GoToPrevious"]
        8 GETTABLEKS                       R5 R1 K4 ["AccessoryTypeInfo"]
       10 GETTABLEKS                       R6 R1 K5 ["Localization"]
       12 GETTABLEKS                       R7 R0 K6 ["isMissingRequiredCage"]
       14 CALL                             R7 0 1
       15 LOADB                            R8 0
       16 JUMPIFEQKNIL                     R5 ; [+2]
       18 NOT                              R8 R7
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R9 R9 K7 ["createElement"]
       22 GETUPVAL                         R10 1
       23 DUPTABLE                         R11 K10 [{["Style"] = "Box"}]
       24 DUPTABLE                         R12 K12 [{"Screen"}]
       25 GETUPVAL                         R13 0
       26 GETTABLEKS                       R13 R13 K7 ["createElement"]
       28 GETUPVAL                         R14 2
       29 DUPTABLE                         R15 K23 [{["Title"], ["PromptText"], ["NextButtonText"], ["BackButtonText"], ["NextButtonEnabled"], ["BackButtonEnabled"] = True, ["Scrollable"] = True, ["HasBackButton"] = True, ["GoToNext"], ["GoToPrevious"], ["RenderContent"]}]
       30 LOADK                            R18 K24 ["AssetType"]
       31 LOADK                            R19 K24 ["AssetType"]
       32 NAMECALL                         R16 R6 K25 ["getText"]
       34 CALL                             R16 3 1
       35 SETTABLEKS                       R16 R15 K13 ["Title"]
       37 LOADK                            R18 K24 ["AssetType"]
       38 LOADK                            R19 K26 ["Prompt"]
       39 NAMECALL                         R16 R6 K25 ["getText"]
       41 CALL                             R16 3 1
       42 SETTABLEKS                       R16 R15 K14 ["PromptText"]
       44 LOADK                            R18 K27 ["Flow"]
       45 LOADK                            R19 K28 ["Next"]
       46 NAMECALL                         R16 R6 K25 ["getText"]
       48 CALL                             R16 3 1
       49 SETTABLEKS                       R16 R15 K15 ["NextButtonText"]
       51 LOADK                            R18 K27 ["Flow"]
       52 LOADK                            R19 K29 ["Back"]
       53 NAMECALL                         R16 R6 K25 ["getText"]
       55 CALL                             R16 3 1
       56 SETTABLEKS                       R16 R15 K16 ["BackButtonText"]
       58 SETTABLEKS                       R8 R15 K17 ["NextButtonEnabled"]
       60 SETTABLEKS                       R3 R15 K2 ["GoToNext"]
       62 SETTABLEKS                       R4 R15 K3 ["GoToPrevious"]
       64 JUMPIFNOT                        R7 ; [+3]
       65 GETTABLEKS                       R16 R0 K30 ["renderContentWithMissingCageWarning"]
       67 JUMP                             ; [+2]
       68 GETTABLEKS                       R16 R0 K31 ["renderContent"]
       70 SETTABLEKS                       R16 R15 K22 ["RenderContent"]
       72 CALL                             R13 2 1
       73 SETTABLEKS                       R13 R12 K11 ["Screen"]
       75 CALL                             R9 3 -1
       76 RETURN                           R9 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["editingItemChangedHandle"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["editingItemChangedHandle"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["editingItemChangedHandle"]
       11 RETURN                           R0 0

PROTO_8:
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
       79 GETTABLEKS                       R15 R15 K22 ["MissingCageWarning"]
       81 CALL                             R14 1 1
       82 GETIMPORT                        R15 K4 [require]
       84 GETTABLEKS                       R16 R0 K20 ["Src"]
       86 GETTABLEKS                       R16 R16 K13 ["Components"]
       88 GETTABLEKS                       R16 R16 K23 ["ScaleTypeDropdown"]
       90 CALL                             R15 1 1
       91 GETIMPORT                        R16 K4 [require]
       93 GETTABLEKS                       R17 R0 K20 ["Src"]
       95 GETTABLEKS                       R17 R17 K15 ["Util"]
       97 GETTABLEKS                       R17 R17 K24 ["isMissingRequiredCage"]
       99 CALL                             R16 1 1
      100 GETIMPORT                        R17 K4 [require]
      102 GETTABLEKS                       R18 R0 K20 ["Src"]
      104 GETTABLEKS                       R18 R18 K25 ["Flags"]
      106 GETTABLEKS                       R18 R18 K26 ["getFFlagLayeredClothingEditorBlockUncagedClothing"]
      108 CALL                             R17 1 1
      109 GETTABLEKS                       R18 R4 K27 ["UI"]
      111 GETTABLEKS                       R18 R18 K28 ["Pane"]
      113 GETTABLEKS                       R19 R4 K15 ["Util"]
      115 GETTABLEKS                       R20 R19 K29 ["Typecheck"]
      117 GETTABLEKS                       R21 R19 K30 ["LayoutOrderIterator"]
      119 GETTABLEKS                       R22 R1 K31 ["PureComponent"]
      121 LOADK                            R24 K32 ["AssetTypeScreen"]
      122 NAMECALL                         R22 R22 K33 ["extend"]
      124 CALL                             R22 2 1
      125 GETTABLEKS                       R23 R20 K34 ["wrap"]
      127 MOVE                             R24 R22
      128 GETIMPORT                        R25 K1 [script]
      130 CALL                             R23 2 0
      131 DUPCLOSURE                       R23 K35 [PROTO_4]
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R21
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R18
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R15
      141 SETTABLEKS                       R23 R22 K36 ["init"]
      143 DUPCLOSURE                       R23 K37 [PROTO_5]
      144 SETTABLEKS                       R23 R22 K38 ["didMount"]
      146 DUPCLOSURE                       R23 K39 [PROTO_6]
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R18
      149 CAPTURE                          VAL R9
      150 SETTABLEKS                       R23 R22 K40 ["render"]
      152 DUPCLOSURE                       R23 K41 [PROTO_7]
      153 SETTABLEKS                       R23 R22 K42 ["willUnmount"]
      155 MOVE                             R23 R6
      156 DUPTABLE                         R24 K45 [{"Stylizer", "Localization", "EditingItemContext"}]
      157 GETTABLEKS                       R25 R5 K43 ["Stylizer"]
      159 SETTABLEKS                       R25 R24 K43 ["Stylizer"]
      161 GETTABLEKS                       R25 R5 K44 ["Localization"]
      163 SETTABLEKS                       R25 R24 K44 ["Localization"]
      165 SETTABLEKS                       R12 R24 K19 ["EditingItemContext"]
      167 CALL                             R23 1 1
      168 MOVE                             R24 R22
      169 CALL                             R23 1 1
      170 MOVE                             R22 R23
      171 DUPCLOSURE                       R23 K46 [PROTO_8]
      172 GETTABLEKS                       R24 R2 K47 ["connect"]
      174 MOVE                             R25 R23
      175 LOADNIL                          R26
      176 CALL                             R24 2 1
      177 MOVE                             R25 R22
      178 CALL                             R24 1 -1
      179 RETURN                           R24 -1
