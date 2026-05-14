PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["diagnostics"]
        6 NEWTABLE                         R4 0 0
        8 MOVE                             R5 R3
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 NAMECALL                         R10 R9 K3 ["Get"]
       14 CALL                             R10 1 3
       15 FORGPREP                         R10
       16 GETTABLEKS                       R15 R14 K4 ["instanceName"]
       18 LOADB                            R16 1
       19 SETTABLE                         R16 R4 R15
       20 FORGLOOP                         R10 2 ; [-5]
       22 FORGLOOP                         R5 2 ; [-11]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K5 ["Dictionary"]
       27 GETTABLEKS                       R5 R5 K6 ["keys"]
       29 MOVE                             R6 R4
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K9 [table.sort]
       33 MOVE                             R7 R5
       34 CALL                             R6 1 0
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K10 ["List"]
       38 GETTABLEKS                       R6 R6 K11 ["join"]
       40 NEWTABLE                         R7 0 1
       42 LOADK                            R10 K12 ["ScriptConversion"]
       43 LOADK                            R11 K13 ["FilterNone"]
       44 NAMECALL                         R8 R2 K14 ["getText"]
       46 CALL                             R8 3 -1
       47 SETLIST                          R7 R8 -1 [1]
       49 MOVE                             R8 R5
       50 CALL                             R6 2 -1
       51 RETURN                           R6 -1

PROTO_1:
        0 JUMPIF                           R2 ; [+4]
        1 GETTABLEKS                       R3 R0 K0 ["state"]
        3 GETTABLEKS                       R2 R3 K1 ["items"]
        5 MOVE                             R3 R2
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 JUMPIFNOTEQ                      R7 R1 ; [+2]
       11 RETURN                           R6 1
       12 FORGLOOP                         R3 2 ; [-4]
       14 LOADNIL                          R3
       15 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["SetFilter"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
        3 GETTABLEKS                       R5 R4 K1 ["Stylizer"]
        5 GETTABLEKS                       R6 R5 K2 ["ItemHeight"]
        7 GETTABLEKS                       R7 R5 K3 ["ListItemTextSize"]
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R8 R8 K4 ["createElement"]
       12 GETUPVAL                         R9 2
       13 DUPTABLE                         R10 K9 [{"LayoutOrder", "OnClick", "Size", "StyleModifier"}]
       14 SETTABLEKS                       R1 R10 K5 ["LayoutOrder"]
       16 SETTABLEKS                       R2 R10 K6 ["OnClick"]
       18 GETIMPORT                        R11 K12 [UDim2.new]
       20 LOADN                            R12 1
       21 LOADN                            R13 0
       22 LOADN                            R14 0
       23 MOVE                             R15 R6
       24 CALL                             R11 4 1
       25 SETTABLEKS                       R11 R10 K7 ["Size"]
       27 JUMPIFNOT                        R3 ; [+4]
       28 GETUPVAL                         R11 3
       29 GETTABLEKS                       R11 R11 K13 ["Hover"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R11
       33 SETTABLEKS                       R11 R10 K8 ["StyleModifier"]
       35 DUPTABLE                         R11 K15 [{"Label"}]
       36 GETUPVAL                         R12 1
       37 GETTABLEKS                       R12 R12 K4 ["createElement"]
       39 GETUPVAL                         R13 4
       40 DUPTABLE                         R14 K19 [{"Size", "Text", "TextSize", "TextXAlignment"}]
       41 GETIMPORT                        R15 K12 [UDim2.new]
       43 LOADN                            R16 1
       44 LOADN                            R17 0
       45 LOADN                            R18 1
       46 LOADN                            R19 0
       47 CALL                             R15 4 1
       48 SETTABLEKS                       R15 R14 K7 ["Size"]
       50 SETTABLEKS                       R0 R14 K16 ["Text"]
       52 SETTABLEKS                       R7 R14 K17 ["TextSize"]
       54 GETIMPORT                        R15 K22 [Enum.TextXAlignment.Left]
       56 SETTABLEKS                       R15 R14 K18 ["TextXAlignment"]
       58 DUPTABLE                         R15 K24 [{"Padding"}]
       59 GETUPVAL                         R16 1
       60 GETTABLEKS                       R16 R16 K4 ["createElement"]
       62 LOADK                            R17 K25 ["UIPadding"]
       63 DUPTABLE                         R18 K27 [{"PaddingLeft"}]
       64 GETIMPORT                        R19 K29 [UDim.new]
       66 LOADN                            R20 0
       67 GETTABLEKS                       R21 R5 K30 ["ListItemPadding"]
       69 CALL                             R19 2 1
       70 SETTABLEKS                       R19 R18 K26 ["PaddingLeft"]
       72 CALL                             R16 2 1
       73 SETTABLEKS                       R16 R15 K23 ["Padding"]
       75 CALL                             R12 3 1
       76 SETTABLEKS                       R12 R11 K14 ["Label"]
       78 CALL                             R8 3 -1
       79 RETURN                           R8 -1

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"items"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["items"]
        5 SETTABLEKS                       R1 R0 K2 ["state"]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K3 ["onFilterSelected"]
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 SETTABLEKS                       R1 R0 K4 ["onRenderItem"]
       19 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R3 K1 [{"items"}]
        1 NAMECALL                         R4 R0 K2 ["buildItems"]
        3 CALL                             R4 1 1
        4 SETTABLEKS                       R4 R3 K0 ["items"]
        6 NAMECALL                         R1 R0 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R3 K1 ["filter"]
        4 GETTABLEKS                       R5 R3 K2 ["Localization"]
        6 GETTABLEKS                       R6 R3 K3 ["diagnostics"]
        8 GETTABLEKS                       R7 R1 K3 ["diagnostics"]
       10 JUMPIFEQ                         R6 R7 ; [+26]
       12 NAMECALL                         R6 R0 K4 ["buildItems"]
       14 CALL                             R6 1 1
       15 DUPTABLE                         R9 K6 [{"items"}]
       16 SETTABLEKS                       R6 R9 K5 ["items"]
       18 NAMECALL                         R7 R0 K7 ["setState"]
       20 CALL                             R7 2 0
       21 MOVE                             R9 R4
       22 MOVE                             R10 R6
       23 NAMECALL                         R7 R0 K8 ["getFilterIndex"]
       25 CALL                             R7 3 1
       26 JUMPIF                           R7 ; [+10]
       27 GETTABLEKS                       R7 R0 K0 ["props"]
       29 GETTABLEKS                       R7 R7 K9 ["SetFilter"]
       31 LOADK                            R10 K10 ["ScriptConversion"]
       32 LOADK                            R11 K11 ["FilterNone"]
       33 NAMECALL                         R8 R5 K12 ["getText"]
       35 CALL                             R8 3 -1
       36 CALL                             R7 -1 0
       37 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R2 K2 ["items"]
        6 GETTABLEKS                       R4 R1 K3 ["Localization"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["Stylizer"]
       12 GETTABLEKS                       R7 R1 K6 ["Size"]
       14 GETTABLEKS                       R8 R1 K7 ["filter"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K8 ["new"]
       19 CALL                             R9 0 1
       20 GETUPVAL                         R10 1
       21 GETTABLEKS                       R10 R10 K9 ["createElement"]
       23 GETUPVAL                         R11 2
       24 DUPTABLE                         R12 K15 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "VerticalAlignment", "Padding", "Spacing"}]
       25 SETTABLEKS                       R5 R12 K4 ["LayoutOrder"]
       27 SETTABLEKS                       R7 R12 K6 ["Size"]
       29 GETIMPORT                        R13 K19 [Enum.FillDirection.Vertical]
       31 SETTABLEKS                       R13 R12 K10 ["Layout"]
       33 GETIMPORT                        R13 K21 [Enum.HorizontalAlignment.Left]
       35 SETTABLEKS                       R13 R12 K11 ["HorizontalAlignment"]
       37 GETIMPORT                        R13 K23 [Enum.VerticalAlignment.Top]
       39 SETTABLEKS                       R13 R12 K12 ["VerticalAlignment"]
       41 GETTABLEKS                       R13 R6 K13 ["Padding"]
       43 SETTABLEKS                       R13 R12 K13 ["Padding"]
       45 GETTABLEKS                       R13 R6 K14 ["Spacing"]
       47 SETTABLEKS                       R13 R12 K14 ["Spacing"]
       49 DUPTABLE                         R13 K25 [{"FilterContainer"}]
       50 GETUPVAL                         R14 1
       51 GETTABLEKS                       R14 R14 K9 ["createElement"]
       53 GETUPVAL                         R15 2
       54 DUPTABLE                         R16 K26 [{"Size", "LayoutOrder"}]
       55 GETIMPORT                        R17 K28 [UDim2.new]
       57 LOADN                            R18 1
       58 LOADN                            R19 0
       59 LOADN                            R20 0
       60 GETTABLEKS                       R21 R6 K29 ["FilterHeight"]
       62 CALL                             R17 4 1
       63 SETTABLEKS                       R17 R16 K6 ["Size"]
       65 NAMECALL                         R17 R9 K30 ["getNextOrder"]
       67 CALL                             R17 1 1
       68 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
       70 DUPTABLE                         R17 K33 [{"FilterLabel", "Filter"}]
       71 GETUPVAL                         R18 1
       72 GETTABLEKS                       R18 R18 K9 ["createElement"]
       74 GETUPVAL                         R19 3
       75 DUPTABLE                         R20 K38 [{"Text", "Position", "AnchorPoint", "AutomaticSize"}]
       76 LOADK                            R23 K39 ["ScriptConversion"]
       77 LOADK                            R24 K32 ["Filter"]
       78 NAMECALL                         R21 R4 K40 ["getText"]
       80 CALL                             R21 3 1
       81 SETTABLEKS                       R21 R20 K34 ["Text"]
       83 GETIMPORT                        R21 K42 [UDim2.fromScale]
       85 LOADN                            R22 0
       86 LOADK                            R23 K43 [0.5]
       87 CALL                             R21 2 1
       88 SETTABLEKS                       R21 R20 K35 ["Position"]
       90 GETIMPORT                        R21 K45 [Vector2.new]
       92 LOADN                            R22 0
       93 LOADK                            R23 K43 [0.5]
       94 CALL                             R21 2 1
       95 SETTABLEKS                       R21 R20 K36 ["AnchorPoint"]
       97 GETIMPORT                        R21 K47 [Enum.AutomaticSize.XY]
       99 SETTABLEKS                       R21 R20 K37 ["AutomaticSize"]
      101 CALL                             R18 2 1
      102 SETTABLEKS                       R18 R17 K31 ["FilterLabel"]
      104 GETUPVAL                         R18 1
      105 GETTABLEKS                       R18 R18 K9 ["createElement"]
      107 GETUPVAL                         R19 4
      108 DUPTABLE                         R20 K53 [{"AnchorPoint", "PlaceholderText", "SelectedIndex", "Items", "OnItemActivated", "OnRenderItem", "Size", "Position", "LayoutOrder"}]
      109 GETIMPORT                        R21 K45 [Vector2.new]
      111 LOADN                            R22 1
      112 LOADN                            R23 0
      113 CALL                             R21 2 1
      114 SETTABLEKS                       R21 R20 K36 ["AnchorPoint"]
      116 LOADK                            R23 K39 ["ScriptConversion"]
      117 LOADK                            R24 K32 ["Filter"]
      118 NAMECALL                         R21 R4 K40 ["getText"]
      120 CALL                             R21 3 1
      121 SETTABLEKS                       R21 R20 K48 ["PlaceholderText"]
      123 MOVE                             R23 R8
      124 NAMECALL                         R21 R0 K54 ["getFilterIndex"]
      126 CALL                             R21 2 1
      127 SETTABLEKS                       R21 R20 K49 ["SelectedIndex"]
      129 SETTABLEKS                       R3 R20 K50 ["Items"]
      131 GETTABLEKS                       R21 R0 K55 ["onFilterSelected"]
      133 SETTABLEKS                       R21 R20 K51 ["OnItemActivated"]
      135 GETTABLEKS                       R21 R0 K56 ["onRenderItem"]
      137 SETTABLEKS                       R21 R20 K52 ["OnRenderItem"]
      139 GETIMPORT                        R21 K58 [UDim2.fromOffset]
      141 GETTABLEKS                       R22 R6 K59 ["FilterWidth"]
      143 GETTABLEKS                       R23 R6 K29 ["FilterHeight"]
      145 CALL                             R21 2 1
      146 SETTABLEKS                       R21 R20 K6 ["Size"]
      148 GETIMPORT                        R21 K42 [UDim2.fromScale]
      150 LOADN                            R22 1
      151 LOADN                            R23 0
      152 CALL                             R21 2 1
      153 SETTABLEKS                       R21 R20 K35 ["Position"]
      155 NAMECALL                         R21 R9 K30 ["getNextOrder"]
      157 CALL                             R21 1 1
      158 SETTABLEKS                       R21 R20 K4 ["LayoutOrder"]
      160 CALL                             R18 2 1
      161 SETTABLEKS                       R18 R17 K32 ["Filter"]
      163 CALL                             R14 3 1
      164 SETTABLEKS                       R14 R13 K24 ["FilterContainer"]
      166 CALL                             R10 3 -1
      167 RETURN                           R10 -1

PROTO_8:
        0 DUPTABLE                         R2 K2 [{"diagnostics", "filter"}]
        1 GETTABLEKS                       R3 R0 K3 ["ScriptConversion"]
        3 GETTABLEKS                       R3 R3 K0 ["diagnostics"]
        5 SETTABLEKS                       R3 R2 K0 ["diagnostics"]
        7 GETTABLEKS                       R3 R0 K3 ["ScriptConversion"]
        9 GETTABLEKS                       R3 R3 K1 ["filter"]
       11 SETTABLEKS                       R3 R2 K1 ["filter"]
       13 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K1 [{"SetFilter"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetFilter"]
        6 RETURN                           R1 1

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
       25 GETTABLEKS                       R4 R4 K9 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K11 ["ContextServices"]
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R7 R0 K12 ["Src"]
       41 GETTABLEKS                       R7 R7 K13 ["Actions"]
       43 GETTABLEKS                       R7 R7 K14 ["SetFilter"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R1 K15 ["UI"]
       48 GETTABLEKS                       R8 R7 K16 ["Pane"]
       50 GETTABLEKS                       R9 R7 K17 ["SelectInput"]
       52 GETTABLEKS                       R10 R7 K18 ["Button"]
       54 GETTABLEKS                       R11 R7 K19 ["TextLabel"]
       56 GETTABLEKS                       R12 R1 K20 ["Util"]
       58 GETTABLEKS                       R13 R12 K21 ["LayoutOrderIterator"]
       60 GETTABLEKS                       R14 R12 K22 ["StyleModifier"]
       62 GETTABLEKS                       R15 R2 K23 ["PureComponent"]
       64 LOADK                            R17 K24 ["ScriptConversionPaneHeader"]
       65 NAMECALL                         R15 R15 K25 ["extend"]
       67 CALL                             R15 2 1
       68 DUPCLOSURE                       R16 K26 [PROTO_0]
       69 CAPTURE                          VAL R3
       70 SETTABLEKS                       R16 R15 K27 ["buildItems"]
       72 DUPCLOSURE                       R16 K28 [PROTO_1]
       73 SETTABLEKS                       R16 R15 K29 ["getFilterIndex"]
       75 DUPCLOSURE                       R16 K30 [PROTO_4]
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R14
       79 CAPTURE                          VAL R11
       80 SETTABLEKS                       R16 R15 K31 ["init"]
       82 DUPCLOSURE                       R16 K32 [PROTO_5]
       83 SETTABLEKS                       R16 R15 K33 ["didMount"]
       85 DUPCLOSURE                       R16 K34 [PROTO_6]
       86 SETTABLEKS                       R16 R15 K35 ["didUpdate"]
       88 DUPCLOSURE                       R16 K36 [PROTO_7]
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R9
       94 SETTABLEKS                       R16 R15 K37 ["render"]
       96 GETTABLEKS                       R16 R5 K38 ["withContext"]
       98 DUPTABLE                         R17 K41 [{"Localization", "Stylizer"}]
       99 GETTABLEKS                       R18 R5 K39 ["Localization"]
      101 SETTABLEKS                       R18 R17 K39 ["Localization"]
      103 GETTABLEKS                       R18 R5 K40 ["Stylizer"]
      105 SETTABLEKS                       R18 R17 K40 ["Stylizer"]
      107 CALL                             R16 1 1
      108 MOVE                             R17 R15
      109 CALL                             R16 1 1
      110 MOVE                             R15 R16
      111 DUPCLOSURE                       R16 K42 [PROTO_8]
      112 DUPCLOSURE                       R17 K43 [PROTO_10]
      113 CAPTURE                          VAL R6
      114 GETTABLEKS                       R18 R4 K44 ["connect"]
      116 MOVE                             R19 R16
      117 MOVE                             R20 R17
      118 CALL                             R18 2 1
      119 MOVE                             R19 R15
      120 CALL                             R18 1 -1
      121 RETURN                           R18 -1
