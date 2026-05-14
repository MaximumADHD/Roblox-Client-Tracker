PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["EditingItemContext"]
        6 NAMECALL                         R2 R2 K2 ["getItem"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 0
       10 MOVE                             R5 R2
       11 NAMECALL                         R3 R3 K3 ["getScaleType"]
       13 CALL                             R3 2 1
       14 LOADNIL                          R4
       15 JUMPIFNOT                        R3 ; [+9]
       16 GETTABLEKS                       R5 R1 K4 ["Localization"]
       18 LOADK                            R7 K5 ["ScaleType"]
       19 MOVE                             R8 R3
       20 NAMECALL                         R5 R5 K6 ["getText"]
       22 CALL                             R5 3 1
       23 MOVE                             R4 R5
       24 JUMP                             ; [+12]
       25 GETTABLEKS                       R5 R1 K4 ["Localization"]
       27 LOADK                            R7 K5 ["ScaleType"]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K7 ["SCALE_TYPES"]
       31 GETTABLEKS                       R8 R8 K8 ["Classic"]
       33 NAMECALL                         R5 R5 K6 ["getText"]
       35 CALL                             R5 3 1
       36 MOVE                             R4 R5
       37 GETTABLEKS                       R5 R0 K9 ["onClickScaleType"]
       39 MOVE                             R6 R4
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R7 R7 K10 ["List"]
       43 GETTABLEKS                       R7 R7 K11 ["find"]
       45 GETTABLEKS                       R8 R0 K12 ["scaleTypeList"]
       47 MOVE                             R9 R4
       48 CALL                             R7 2 -1
       49 CALL                             R5 -1 0
       50 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["scaleTypeList"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["state"]
        6 GETTABLEKS                       R3 R3 K2 ["selectedScaleTypeIndex"]
        8 GETTABLE                         R1 R2 R3
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["Localization"]
       13 LOADK                            R4 K4 ["ScaleType"]
       14 MOVE                             R5 R1
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K5 ["SCALE_TYPES"]
       18 CALL                             R2 4 1
       19 GETUPVAL                         R3 4
       20 MOVE                             R5 R0
       21 MOVE                             R6 R2
       22 NAMECALL                         R3 R3 K6 ["setScaleType"]
       24 CALL                             R3 3 0
       25 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R1 K1 ["Localization"]
        5 LOADK                            R4 K2 ["ScaleType"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K3 ["SCALE_TYPES"]
        9 CALL                             R2 3 1
       10 SETTABLEKS                       R2 R0 K4 ["scaleTypeList"]
       12 NAMECALL                         R2 R0 K5 ["initWithPreviousScaleTypeInfo"]
       14 CALL                             R2 1 0
       15 GETTABLEKS                       R2 R0 K0 ["props"]
       17 GETTABLEKS                       R2 R2 K6 ["EditingItemContext"]
       19 NAMECALL                         R3 R2 K7 ["getEditingItemChangedSignal"]
       21 CALL                             R3 1 1
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U3
       28 NAMECALL                         R3 R3 K8 ["Connect"]
       30 CALL                             R3 2 1
       31 SETTABLEKS                       R3 R0 K9 ["editingItemChangedHandle"]
       33 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R4 R2 K1 ["Localization"]
        6 LOADK                            R5 K2 ["ScaleType"]
        7 MOVE                             R6 R0
        8 GETUPVAL                         R7 2
        9 GETTABLEKS                       R7 R7 K3 ["SCALE_TYPES"]
       11 CALL                             R3 4 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R6 R2 K4 ["EditingItemContext"]
       15 NAMECALL                         R6 R6 K5 ["getItem"]
       17 CALL                             R6 1 1
       18 MOVE                             R7 R3
       19 NAMECALL                         R4 R4 K6 ["setScaleType"]
       21 CALL                             R4 3 0
       22 GETUPVAL                         R4 0
       23 DUPTABLE                         R6 K8 [{"selectedScaleTypeIndex"}]
       24 SETTABLEKS                       R1 R6 K7 ["selectedScaleTypeIndex"]
       26 NAMECALL                         R4 R4 K9 ["setState"]
       28 CALL                             R4 2 0
       29 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"selectedScaleTypeIndex"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["selectedScaleTypeIndex"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R1 R0 K3 ["onClickScaleType"]
       13 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETTABLEKS                       R5 R1 K4 ["Localization"]
       10 GETTABLEKS                       R6 R2 K5 ["selectedScaleTypeIndex"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["new"]
       15 CALL                             R7 0 1
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R8 R8 K7 ["createElement"]
       19 GETUPVAL                         R9 2
       20 DUPTABLE                         R10 K13 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
       21 GETIMPORT                        R11 K15 [UDim2.new]
       23 LOADN                            R12 1
       24 LOADN                            R13 0
       25 LOADN                            R14 0
       26 GETTABLEKS                       R15 R4 K16 ["DropdownHeight"]
       28 CALL                             R11 4 1
       29 SETTABLEKS                       R11 R10 K8 ["Size"]
       31 SETTABLEKS                       R3 R10 K2 ["LayoutOrder"]
       33 GETIMPORT                        R11 K20 [Enum.FillDirection.Horizontal]
       35 SETTABLEKS                       R11 R10 K9 ["Layout"]
       37 GETIMPORT                        R11 K22 [Enum.HorizontalAlignment.Left]
       39 SETTABLEKS                       R11 R10 K10 ["HorizontalAlignment"]
       41 GETIMPORT                        R11 K24 [Enum.VerticalAlignment.Center]
       43 SETTABLEKS                       R11 R10 K11 ["VerticalAlignment"]
       45 GETTABLEKS                       R11 R4 K12 ["Spacing"]
       47 SETTABLEKS                       R11 R10 K12 ["Spacing"]
       49 DUPTABLE                         R11 K27 [{"SelectPartScalePrompt", "AvatarPartScaleTypeDropdown"}]
       50 GETUPVAL                         R12 1
       51 GETTABLEKS                       R12 R12 K7 ["createElement"]
       53 GETUPVAL                         R13 3
       54 DUPTABLE                         R14 K30 [{"Text", "AutomaticSize", "LayoutOrder"}]
       55 LOADK                            R20 K31 ["ScaleType"]
       56 LOADK                            R21 K32 ["Select"]
       57 NAMECALL                         R18 R5 K33 ["getText"]
       59 CALL                             R18 3 1
       60 MOVE                             R16 R18
       61 LOADK                            R17 K34 [":"]
       62 CONCAT                           R15 R16 R17
       63 SETTABLEKS                       R15 R14 K28 ["Text"]
       65 GETIMPORT                        R15 K36 [Enum.AutomaticSize.XY]
       67 SETTABLEKS                       R15 R14 K29 ["AutomaticSize"]
       69 NAMECALL                         R15 R7 K37 ["getNextOrder"]
       71 CALL                             R15 1 1
       72 SETTABLEKS                       R15 R14 K2 ["LayoutOrder"]
       74 CALL                             R12 2 1
       75 SETTABLEKS                       R12 R11 K25 ["SelectPartScalePrompt"]
       77 GETUPVAL                         R12 1
       78 GETTABLEKS                       R12 R12 K7 ["createElement"]
       80 GETUPVAL                         R13 4
       81 DUPTABLE                         R14 K41 [{"Size", "Items", "OnItemActivated", "SelectedIndex", "LayoutOrder"}]
       82 GETIMPORT                        R15 K15 [UDim2.new]
       84 LOADN                            R16 0
       85 GETTABLEKS                       R17 R4 K42 ["DropdownWidth"]
       87 LOADN                            R18 1
       88 LOADN                            R19 0
       89 CALL                             R15 4 1
       90 SETTABLEKS                       R15 R14 K8 ["Size"]
       92 GETTABLEKS                       R15 R0 K43 ["scaleTypeList"]
       94 SETTABLEKS                       R15 R14 K38 ["Items"]
       96 GETTABLEKS                       R15 R0 K44 ["onClickScaleType"]
       98 SETTABLEKS                       R15 R14 K39 ["OnItemActivated"]
      100 SETTABLEKS                       R6 R14 K40 ["SelectedIndex"]
      102 NAMECALL                         R15 R7 K37 ["getNextOrder"]
      104 CALL                             R15 1 1
      105 SETTABLEKS                       R15 R14 K2 ["LayoutOrder"]
      107 CALL                             R12 2 1
      108 SETTABLEKS                       R12 R11 K26 ["AvatarPartScaleTypeDropdown"]
      110 CALL                             R8 3 -1
      111 RETURN                           R8 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["editingItemChangedHandle"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["editingItemChangedHandle"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["editingItemChangedHandle"]
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["AvatarToolsShared"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R5 K9 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K10 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K11 ["withContext"]
       41 GETTABLEKS                       R7 R3 K12 ["Util"]
       43 GETTABLEKS                       R7 R7 K13 ["AccessoryAndBodyToolShared"]
       45 GETTABLEKS                       R8 R7 K14 ["AccessoryUtil"]
       47 GETTABLEKS                       R9 R7 K15 ["Constants"]
       49 GETTABLEKS                       R10 R4 K16 ["UI"]
       51 GETTABLEKS                       R11 R10 K17 ["Pane"]
       53 GETTABLEKS                       R12 R10 K18 ["SelectInput"]
       55 GETTABLEKS                       R13 R10 K19 ["TextLabel"]
       57 GETIMPORT                        R14 K4 [require]
       59 GETTABLEKS                       R15 R0 K20 ["Src"]
       61 GETTABLEKS                       R15 R15 K12 ["Util"]
       63 GETTABLEKS                       R15 R15 K21 ["findLocalizedStringKey"]
       65 CALL                             R14 1 1
       66 GETIMPORT                        R15 K4 [require]
       68 GETTABLEKS                       R16 R0 K20 ["Src"]
       70 GETTABLEKS                       R16 R16 K12 ["Util"]
       72 GETTABLEKS                       R16 R16 K22 ["makeDropdownList"]
       74 CALL                             R15 1 1
       75 GETTABLEKS                       R16 R3 K23 ["Contexts"]
       77 GETTABLEKS                       R16 R16 K24 ["EditingItemContext"]
       79 GETTABLEKS                       R17 R4 K12 ["Util"]
       81 GETTABLEKS                       R18 R17 K25 ["Typecheck"]
       83 GETTABLEKS                       R19 R17 K26 ["LayoutOrderIterator"]
       85 GETTABLEKS                       R20 R1 K27 ["PureComponent"]
       87 LOADK                            R22 K28 ["ScaleTypeDropdown"]
       88 NAMECALL                         R20 R20 K29 ["extend"]
       90 CALL                             R20 2 1
       91 GETTABLEKS                       R21 R18 K30 ["wrap"]
       93 MOVE                             R22 R20
       94 GETIMPORT                        R23 K1 [script]
       96 CALL                             R21 2 0
       97 DUPCLOSURE                       R21 K31 [PROTO_0]
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R2
      101 SETTABLEKS                       R21 R20 K32 ["initWithPreviousScaleTypeInfo"]
      103 DUPCLOSURE                       R21 K33 [PROTO_2]
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R8
      108 SETTABLEKS                       R21 R20 K34 ["didMount"]
      110 DUPCLOSURE                       R21 K35 [PROTO_4]
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R8
      114 SETTABLEKS                       R21 R20 K36 ["init"]
      116 DUPCLOSURE                       R21 K37 [PROTO_5]
      117 CAPTURE                          VAL R19
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R12
      122 SETTABLEKS                       R21 R20 K38 ["render"]
      124 DUPCLOSURE                       R21 K39 [PROTO_6]
      125 SETTABLEKS                       R21 R20 K40 ["willUnmount"]
      127 MOVE                             R21 R6
      128 DUPTABLE                         R22 K43 [{"Stylizer", "Localization", "EditingItemContext"}]
      129 GETTABLEKS                       R23 R5 K41 ["Stylizer"]
      131 SETTABLEKS                       R23 R22 K41 ["Stylizer"]
      133 GETTABLEKS                       R23 R5 K42 ["Localization"]
      135 SETTABLEKS                       R23 R22 K42 ["Localization"]
      137 SETTABLEKS                       R16 R22 K24 ["EditingItemContext"]
      139 CALL                             R21 1 1
      140 MOVE                             R22 R20
      141 CALL                             R21 1 1
      142 MOVE                             R20 R21
      143 RETURN                           R20 1
