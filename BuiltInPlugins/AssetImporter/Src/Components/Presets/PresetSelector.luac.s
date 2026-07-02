PROTO_0:
        0 FASTCALL2K                       STRING_SUB R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 [-1]
        4 GETIMPORT                        R1 K3 [string.sub]
        6 CALL                             R1 2 1
        7 JUMPIFNOTEQKS                    R1 K4 ["*"] ; [+10]
        9 LOADN                            R3 1
       10 LOADN                            R4 -2
       11 FASTCALL3                        STRING_SUB R0 R3 R4
       13 MOVE                             R2 R0
       14 GETIMPORT                        R1 K3 [string.sub]
       16 CALL                             R1 3 1
       17 MOVE                             R0 R1
       18 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
        3 GETTABLEKS                       R4 R4 K1 ["Stylizer"]
        5 GETTABLEKS                       R4 R4 K2 ["TopBar"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["props"]
       10 GETTABLEKS                       R5 R5 K3 ["PresetController"]
       12 LOADNIL                          R6
       13 MOVE                             R8 R0
       14 FASTCALL2K                       STRING_SUB R8 K4 ; [+5]
       16 MOVE                             R10 R8
       17 LOADK                            R11 K4 [-1]
       18 GETIMPORT                        R9 K7 [string.sub]
       20 CALL                             R9 2 1
       21 JUMPIFNOTEQKS                    R9 K8 ["*"] ; [+10]
       23 LOADN                            R11 1
       24 LOADN                            R12 -2
       25 FASTCALL3                        STRING_SUB R8 R11 R12
       27 MOVE                             R10 R8
       28 GETIMPORT                        R9 K7 [string.sub]
       30 CALL                             R9 3 1
       31 MOVE                             R8 R9
       32 MOVE                             R7 R8
       33 MOVE                             R10 R7
       34 NAMECALL                         R8 R5 K9 ["isStudioDefault"]
       36 CALL                             R8 2 1
       37 JUMPIFNOT                        R8 ; [+2]
       38 LOADN                            R6 1
       39 JUMP                             ; [+9]
       40 MOVE                             R10 R7
       41 NAMECALL                         R8 R5 K10 ["isLastImport"]
       43 CALL                             R8 2 1
       44 JUMPIFNOT                        R8 ; [+2]
       45 LOADN                            R6 2
       46 JUMP                             ; [+2]
       47 LOADN                            R8 2
       48 ADD                              R6 R8 R1
       49 JUMPIFNOT                        R3 ; [+4]
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R8 R8 K11 ["Hover"]
       53 JUMP                             ; [+1]
       54 LOADNIL                          R8
       55 GETUPVAL                         R9 2
       56 GETTABLEKS                       R9 R9 K12 ["createElement"]
       58 GETUPVAL                         R10 3
       59 DUPTABLE                         R11 K17 [{"LayoutOrder", "OnClick", "Size", "StyleModifier"}]
       60 SETTABLEKS                       R6 R11 K13 ["LayoutOrder"]
       62 SETTABLEKS                       R2 R11 K14 ["OnClick"]
       64 GETTABLEKS                       R12 R4 K18 ["MenuItemSize"]
       66 SETTABLEKS                       R12 R11 K15 ["Size"]
       68 SETTABLEKS                       R8 R11 K16 ["StyleModifier"]
       70 DUPTABLE                         R12 K20 [{"TextLabel"}]
       71 GETUPVAL                         R13 2
       72 GETTABLEKS                       R13 R13 K12 ["createElement"]
       74 GETUPVAL                         R14 4
       75 DUPTABLE                         R15 K24 [{"Text", "TextXAlignment", "Size", "TextTruncate", "StyleModifier"}]
       76 SETTABLEKS                       R7 R15 K21 ["Text"]
       78 GETIMPORT                        R16 K27 [Enum.TextXAlignment.Left]
       80 SETTABLEKS                       R16 R15 K22 ["TextXAlignment"]
       82 GETIMPORT                        R16 K30 [UDim2.fromScale]
       84 LOADN                            R17 1
       85 LOADN                            R18 1
       86 CALL                             R16 2 1
       87 SETTABLEKS                       R16 R15 K15 ["Size"]
       89 GETIMPORT                        R16 K32 [Enum.TextTruncate.AtEnd]
       91 SETTABLEKS                       R16 R15 K23 ["TextTruncate"]
       93 SETTABLEKS                       R8 R15 K16 ["StyleModifier"]
       95 DUPTABLE                         R16 K34 [{"Padding"}]
       96 GETUPVAL                         R17 2
       97 GETTABLEKS                       R17 R17 K12 ["createElement"]
       99 LOADK                            R18 K35 ["UIPadding"]
      100 DUPTABLE                         R19 K38 [{"PaddingLeft", "PaddingRight"}]
      101 GETIMPORT                        R20 K41 [UDim.new]
      103 LOADN                            R21 0
      104 GETTABLEKS                       R22 R4 K33 ["Padding"]
      106 GETTABLEKS                       R22 R22 K26 ["Left"]
      108 CALL                             R20 2 1
      109 SETTABLEKS                       R20 R19 K36 ["PaddingLeft"]
      111 GETIMPORT                        R20 K41 [UDim.new]
      113 LOADN                            R21 0
      114 GETTABLEKS                       R22 R4 K33 ["Padding"]
      116 GETTABLEKS                       R22 R22 K42 ["Right"]
      118 CALL                             R20 2 1
      119 SETTABLEKS                       R20 R19 K37 ["PaddingRight"]
      121 CALL                             R17 2 1
      122 SETTABLEKS                       R17 R16 K33 ["Padding"]
      124 CALL                             R13 3 1
      125 SETTABLEKS                       R13 R12 K19 ["TextLabel"]
      127 CALL                             R9 3 -1
      128 RETURN                           R9 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["PresetController"]
        5 MOVE                             R5 R0
        6 GETTABLEKS                       R6 R2 K2 ["QueueItem"]
        8 NAMECALL                         R3 R3 K3 ["resolvePreset"]
       10 CALL                             R3 3 0
       11 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 SETTABLEKS                       R1 R0 K0 ["renderDropdownItem"]
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K1 ["onItemActivated"]
       12 RETURN                           R0 0

PROTO_4:
        0 MOVE                             R3 R0
        1 FASTCALL2K                       STRING_SUB R3 K0 ; [+5]
        3 MOVE                             R5 R3
        4 LOADK                            R6 K0 [-1]
        5 GETIMPORT                        R4 K3 [string.sub]
        7 CALL                             R4 2 1
        8 JUMPIFNOTEQKS                    R4 K4 ["*"] ; [+10]
       10 LOADN                            R6 1
       11 LOADN                            R7 -2
       12 FASTCALL3                        STRING_SUB R3 R6 R7
       14 MOVE                             R5 R3
       15 GETIMPORT                        R4 K3 [string.sub]
       17 CALL                             R4 3 1
       18 MOVE                             R3 R4
       19 MOVE                             R2 R3
       20 GETUPVAL                         R3 0
       21 JUMPIFEQ                         R2 R3 ; [+2]
       23 LOADB                            R1 0 +1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["QueueItem"]
        4 GETTABLEKS                       R2 R2 K2 ["currentPreset"]
        6 GETTABLEKS                       R3 R1 K3 ["PresetController"]
        8 MOVE                             R5 R2
        9 GETTABLEKS                       R6 R1 K1 ["QueueItem"]
       11 NAMECALL                         R3 R3 K4 ["getNameList"]
       13 CALL                             R3 3 1
       14 GETUPVAL                         R4 0
       15 MOVE                             R5 R3
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          VAL R2
       18 CALL                             R4 2 1
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K5 ["createElement"]
       22 GETUPVAL                         R6 2
       23 DUPTABLE                         R7 K14 [{"Items", "LayoutOrder", "OnRenderItem", "OnItemActivated", "SelectedIndex", "Size", "Enabled", "TextTruncate"}]
       24 SETTABLEKS                       R3 R7 K6 ["Items"]
       26 GETTABLEKS                       R8 R1 K7 ["LayoutOrder"]
       28 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       30 GETTABLEKS                       R8 R0 K15 ["renderDropdownItem"]
       32 SETTABLEKS                       R8 R7 K8 ["OnRenderItem"]
       34 GETTABLEKS                       R8 R0 K16 ["onItemActivated"]
       36 SETTABLEKS                       R8 R7 K9 ["OnItemActivated"]
       38 SETTABLEKS                       R4 R7 K10 ["SelectedIndex"]
       40 GETTABLEKS                       R8 R1 K11 ["Size"]
       42 SETTABLEKS                       R8 R7 K11 ["Size"]
       44 GETTABLEKS                       R8 R1 K12 ["Enabled"]
       46 SETTABLEKS                       R8 R7 K12 ["Enabled"]
       48 GETIMPORT                        R8 K19 [Enum.TextTruncate.AtEnd]
       50 SETTABLEKS                       R8 R7 K13 ["TextTruncate"]
       52 CALL                             R5 2 1
       53 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["RoactCompat"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Dash"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R6 R4 K12 ["Localization"]
       34 GETTABLEKS                       R7 R2 K13 ["Style"]
       36 GETTABLEKS                       R7 R7 K14 ["Stylizer"]
       38 GETTABLEKS                       R8 R2 K15 ["UI"]
       40 GETTABLEKS                       R9 R8 K16 ["Button"]
       42 GETTABLEKS                       R10 R8 K17 ["SelectInput"]
       44 GETTABLEKS                       R11 R8 K18 ["TextLabel"]
       46 GETTABLEKS                       R12 R2 K19 ["Util"]
       48 GETTABLEKS                       R13 R12 K20 ["StyleModifier"]
       50 GETTABLEKS                       R14 R3 K21 ["findIndex"]
       52 GETIMPORT                        R15 K5 [require]
       54 GETTABLEKS                       R16 R0 K22 ["Src"]
       56 GETTABLEKS                       R16 R16 K23 ["Controllers"]
       58 GETTABLEKS                       R16 R16 K24 ["PresetController"]
       60 CALL                             R15 1 1
       61 GETTABLEKS                       R16 R1 K25 ["PureComponent"]
       63 LOADK                            R18 K26 ["PresetSelector"]
       64 NAMECALL                         R16 R16 K27 ["extend"]
       66 CALL                             R16 2 1
       67 DUPCLOSURE                       R17 K28 [PROTO_0]
       68 DUPTABLE                         R18 K32 [{["Enabled"] = True, ["Size"]}]
       69 GETIMPORT                        R19 K35 [UDim2.new]
       71 LOADN                            R20 1
       72 LOADN                            R21 0
       73 LOADN                            R22 1
       74 LOADN                            R23 0
       75 CALL                             R19 4 1
       76 SETTABLEKS                       R19 R18 K31 ["Size"]
       78 SETTABLEKS                       R18 R16 K36 ["defaultProps"]
       80 DUPCLOSURE                       R18 K37 [PROTO_3]
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R11
       85 SETTABLEKS                       R18 R16 K38 ["init"]
       87 DUPCLOSURE                       R18 K39 [PROTO_5]
       88 CAPTURE                          VAL R14
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R10
       91 SETTABLEKS                       R18 R16 K40 ["render"]
       93 MOVE                             R18 R5
       94 DUPTABLE                         R19 K41 [{"Localization", "Stylizer", "PresetController"}]
       95 SETTABLEKS                       R6 R19 K12 ["Localization"]
       97 SETTABLEKS                       R7 R19 K14 ["Stylizer"]
       99 SETTABLEKS                       R15 R19 K24 ["PresetController"]
      101 CALL                             R18 1 1
      102 MOVE                             R19 R16
      103 CALL                             R18 1 1
      104 MOVE                             R16 R18
      105 RETURN                           R16 1
