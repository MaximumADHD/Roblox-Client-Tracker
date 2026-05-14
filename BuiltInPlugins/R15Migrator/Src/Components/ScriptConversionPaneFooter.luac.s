PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["RevertScripts"]
        5 GETTABLEKS                       R2 R0 K2 ["ScriptConversionContext"]
        7 GETTABLEKS                       R3 R0 K3 ["Localization"]
        9 GETTABLEKS                       R4 R0 K4 ["Analytics"]
       11 CALL                             R1 3 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Plugin"]
        5 GETTABLEKS                       R2 R0 K2 ["Localization"]
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R1
        9 MOVE                             R5 R2
       10 GETUPVAL                         R6 2
       11 DUPTABLE                         R7 K4 [{"OnConfirm"}]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R8 R8 K5 ["onRevertClicked"]
       15 SETTABLEKS                       R8 R7 K3 ["OnConfirm"]
       17 CALL                             R3 4 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["ReplaceWithRules"]
        5 GETTABLEKS                       R2 R0 K2 ["ScriptConversionContext"]
        7 GETTABLEKS                       R3 R0 K3 ["Localization"]
        9 LOADB                            R4 1
       10 GETTABLEKS                       R5 R0 K4 ["Analytics"]
       12 CALL                             R1 4 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R2 R0 K1 ["selection"]
        6 GETTABLEKS                       R3 R0 K2 ["ScriptConversionContext"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onRevertClicked"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 SETTABLEKS                       R1 R0 K1 ["openDialog"]
       10 NEWCLOSURE                       R1 P2
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K2 ["onConvertClicked"]
       14 NEWCLOSURE                       R1 P3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R1 R0 K3 ["revertEnabled"]
       19 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETTABLEKS                       R5 R1 K4 ["Size"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["new"]
       13 CALL                             R6 0 1
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K6 ["createElement"]
       17 GETUPVAL                         R8 2
       18 DUPTABLE                         R9 K13 [{"BackgroundColor", "LayoutOrder", "Size", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
       19 GETTABLEKS                       R10 R4 K7 ["BackgroundColor"]
       21 SETTABLEKS                       R10 R9 K7 ["BackgroundColor"]
       23 SETTABLEKS                       R3 R9 K2 ["LayoutOrder"]
       25 SETTABLEKS                       R5 R9 K4 ["Size"]
       27 GETIMPORT                        R10 K17 [Enum.FillDirection.Vertical]
       29 SETTABLEKS                       R10 R9 K8 ["Layout"]
       31 GETIMPORT                        R10 K19 [Enum.HorizontalAlignment.Left]
       33 SETTABLEKS                       R10 R9 K9 ["HorizontalAlignment"]
       35 GETIMPORT                        R10 K21 [Enum.VerticalAlignment.Top]
       37 SETTABLEKS                       R10 R9 K10 ["VerticalAlignment"]
       39 GETTABLEKS                       R10 R4 K11 ["Spacing"]
       41 SETTABLEKS                       R10 R9 K11 ["Spacing"]
       43 GETTABLEKS                       R10 R4 K22 ["ButtonPadding"]
       45 SETTABLEKS                       R10 R9 K12 ["Padding"]
       47 DUPTABLE                         R10 K25 [{"ScriptConversionConsole", "FooterButtons"}]
       48 GETUPVAL                         R11 1
       49 GETTABLEKS                       R11 R11 K6 ["createElement"]
       51 GETUPVAL                         R12 3
       52 DUPTABLE                         R13 K26 [{"LayoutOrder"}]
       53 NAMECALL                         R14 R6 K27 ["getNextOrder"]
       55 CALL                             R14 1 1
       56 SETTABLEKS                       R14 R13 K2 ["LayoutOrder"]
       58 CALL                             R11 2 1
       59 SETTABLEKS                       R11 R10 K23 ["ScriptConversionConsole"]
       61 GETUPVAL                         R11 1
       62 GETTABLEKS                       R11 R11 K6 ["createElement"]
       64 GETUPVAL                         R12 2
       65 DUPTABLE                         R13 K29 [{"LayoutOrder", "Size", "AutomaticSize", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
       66 NAMECALL                         R14 R6 K27 ["getNextOrder"]
       68 CALL                             R14 1 1
       69 SETTABLEKS                       R14 R13 K2 ["LayoutOrder"]
       71 GETIMPORT                        R14 K32 [UDim2.fromScale]
       73 LOADN                            R15 1
       74 LOADN                            R16 0
       75 CALL                             R14 2 1
       76 SETTABLEKS                       R14 R13 K4 ["Size"]
       78 GETIMPORT                        R14 K34 [Enum.AutomaticSize.Y]
       80 SETTABLEKS                       R14 R13 K28 ["AutomaticSize"]
       82 GETIMPORT                        R14 K36 [Enum.FillDirection.Horizontal]
       84 SETTABLEKS                       R14 R13 K8 ["Layout"]
       86 GETIMPORT                        R14 K38 [Enum.HorizontalAlignment.Right]
       88 SETTABLEKS                       R14 R13 K9 ["HorizontalAlignment"]
       90 GETIMPORT                        R14 K40 [Enum.VerticalAlignment.Center]
       92 SETTABLEKS                       R14 R13 K10 ["VerticalAlignment"]
       94 GETTABLEKS                       R14 R4 K41 ["ButtonSpacing"]
       96 SETTABLEKS                       R14 R13 K11 ["Spacing"]
       98 DUPTABLE                         R14 K44 [{"RevertButton", "ConvertButton"}]
       99 GETUPVAL                         R15 1
      100 GETTABLEKS                       R15 R15 K6 ["createElement"]
      102 GETUPVAL                         R16 4
      103 DUPTABLE                         R17 K48 [{"Size", "Text", "OnClick", "StyleModifier", "LayoutOrder"}]
      104 GETTABLEKS                       R18 R4 K49 ["RevertButtonSize"]
      106 SETTABLEKS                       R18 R17 K4 ["Size"]
      108 LOADK                            R20 K50 ["ScriptConversion"]
      109 LOADK                            R21 K51 ["Revert"]
      110 NAMECALL                         R18 R2 K52 ["getText"]
      112 CALL                             R18 3 1
      113 SETTABLEKS                       R18 R17 K45 ["Text"]
      115 GETTABLEKS                       R18 R0 K53 ["openDialog"]
      117 SETTABLEKS                       R18 R17 K46 ["OnClick"]
      119 GETTABLEKS                       R19 R0 K54 ["revertEnabled"]
      121 CALL                             R19 0 1
      122 JUMPIF                           R19 ; [+4]
      123 GETUPVAL                         R18 5
      124 GETTABLEKS                       R18 R18 K55 ["Disabled"]
      126 JUMP                             ; [+1]
      127 LOADNIL                          R18
      128 SETTABLEKS                       R18 R17 K47 ["StyleModifier"]
      130 NAMECALL                         R18 R6 K27 ["getNextOrder"]
      132 CALL                             R18 1 1
      133 SETTABLEKS                       R18 R17 K2 ["LayoutOrder"]
      135 CALL                             R15 2 1
      136 SETTABLEKS                       R15 R14 K42 ["RevertButton"]
      138 GETUPVAL                         R15 1
      139 GETTABLEKS                       R15 R15 K6 ["createElement"]
      141 GETUPVAL                         R16 4
      142 DUPTABLE                         R17 K57 [{"Style", "Size", "Text", "OnClick", "LayoutOrder"}]
      143 LOADK                            R18 K58 ["RoundPrimary"]
      144 SETTABLEKS                       R18 R17 K56 ["Style"]
      146 GETTABLEKS                       R18 R4 K59 ["ReplaceButtonSize"]
      148 SETTABLEKS                       R18 R17 K4 ["Size"]
      150 LOADK                            R20 K50 ["ScriptConversion"]
      151 LOADK                            R21 K60 ["Replace"]
      152 NAMECALL                         R18 R2 K52 ["getText"]
      154 CALL                             R18 3 1
      155 SETTABLEKS                       R18 R17 K45 ["Text"]
      157 GETTABLEKS                       R18 R0 K61 ["onConvertClicked"]
      159 SETTABLEKS                       R18 R17 K46 ["OnClick"]
      161 NAMECALL                         R18 R6 K27 ["getNextOrder"]
      163 CALL                             R18 1 1
      164 SETTABLEKS                       R18 R17 K2 ["LayoutOrder"]
      166 CALL                             R15 2 1
      167 SETTABLEKS                       R15 R14 K43 ["ConvertButton"]
      169 CALL                             R11 3 1
      170 SETTABLEKS                       R11 R10 K24 ["FooterButtons"]
      172 CALL                             R7 3 -1
      173 RETURN                           R7 -1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"ReplaceWithRules", "RevertScripts"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["ReplaceWithRules"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["RevertScripts"]
       11 RETURN                           R1 1

PROTO_9:
        0 DUPTABLE                         R2 K1 [{"selection"}]
        1 GETTABLEKS                       R3 R0 K2 ["ScriptConversion"]
        3 GETTABLEKS                       R3 R3 K0 ["selection"]
        5 SETTABLEKS                       R3 R2 K0 ["selection"]
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Thunks"]
       36 GETTABLEKS                       R6 R6 K13 ["ReplaceWithRules"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K11 ["Src"]
       43 GETTABLEKS                       R7 R7 K12 ["Thunks"]
       45 GETTABLEKS                       R7 R7 K14 ["RevertScripts"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R0 K11 ["Src"]
       52 GETTABLEKS                       R8 R8 K15 ["Components"]
       54 GETTABLEKS                       R8 R8 K16 ["ConfirmRevertDialog"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R0 K11 ["Src"]
       61 GETTABLEKS                       R9 R9 K15 ["Components"]
       63 GETTABLEKS                       R9 R9 K17 ["ScriptConversionConsole"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETTABLEKS                       R10 R0 K11 ["Src"]
       70 GETTABLEKS                       R10 R10 K18 ["Contexts"]
       72 GETTABLEKS                       R10 R10 K19 ["ScriptConversionContext"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K5 [require]
       77 GETTABLEKS                       R11 R0 K11 ["Src"]
       79 GETTABLEKS                       R11 R11 K20 ["Util"]
       81 GETTABLEKS                       R11 R11 K21 ["showDialog"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K5 [require]
       86 GETTABLEKS                       R12 R0 K11 ["Src"]
       88 GETTABLEKS                       R12 R12 K20 ["Util"]
       90 GETTABLEKS                       R12 R12 K22 ["ScriptHistory"]
       92 GETTABLEKS                       R12 R12 K23 ["selectionHasScriptBackups"]
       94 CALL                             R11 1 1
       95 GETTABLEKS                       R12 R1 K24 ["UI"]
       97 GETTABLEKS                       R13 R12 K25 ["Pane"]
       99 GETTABLEKS                       R14 R12 K26 ["Button"]
      101 GETTABLEKS                       R15 R1 K20 ["Util"]
      103 GETTABLEKS                       R16 R15 K27 ["StyleModifier"]
      105 GETTABLEKS                       R17 R15 K28 ["LayoutOrderIterator"]
      107 GETTABLEKS                       R18 R2 K29 ["PureComponent"]
      109 LOADK                            R20 K30 ["ScriptConversionPaneFooter"]
      110 NAMECALL                         R18 R18 K31 ["extend"]
      112 CALL                             R18 2 1
      113 DUPCLOSURE                       R19 K32 [PROTO_4]
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R11
      117 SETTABLEKS                       R19 R18 K33 ["init"]
      119 DUPCLOSURE                       R19 K34 [PROTO_5]
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R16
      126 SETTABLEKS                       R19 R18 K35 ["render"]
      128 GETTABLEKS                       R19 R4 K36 ["withContext"]
      130 DUPTABLE                         R20 K41 [{"Analytics", "Plugin", "Localization", "Stylizer", "ScriptConversionContext"}]
      131 GETTABLEKS                       R21 R4 K37 ["Analytics"]
      133 SETTABLEKS                       R21 R20 K37 ["Analytics"]
      135 GETTABLEKS                       R21 R4 K38 ["Plugin"]
      137 SETTABLEKS                       R21 R20 K38 ["Plugin"]
      139 GETTABLEKS                       R21 R4 K39 ["Localization"]
      141 SETTABLEKS                       R21 R20 K39 ["Localization"]
      143 GETTABLEKS                       R21 R4 K40 ["Stylizer"]
      145 SETTABLEKS                       R21 R20 K40 ["Stylizer"]
      147 SETTABLEKS                       R9 R20 K19 ["ScriptConversionContext"]
      149 CALL                             R19 1 1
      150 MOVE                             R20 R18
      151 CALL                             R19 1 1
      152 MOVE                             R18 R19
      153 DUPCLOSURE                       R19 K42 [PROTO_8]
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R6
      156 DUPCLOSURE                       R20 K43 [PROTO_9]
      157 GETTABLEKS                       R21 R3 K44 ["connect"]
      159 MOVE                             R22 R20
      160 MOVE                             R23 R19
      161 CALL                             R21 2 1
      162 MOVE                             R22 R18
      163 CALL                             R21 1 -1
      164 RETURN                           R21 -1
