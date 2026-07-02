PROTO_0:
        0 DUPTABLE                         R1 K2 [{"paneSize", "replaceRulesPaneSize"}]
        1 GETIMPORT                        R2 K5 [Vector2.new]
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R1 K0 ["paneSize"]
        8 GETIMPORT                        R2 K5 [Vector2.new]
       10 LOADN                            R3 0
       11 LOADN                            R4 0
       12 CALL                             R2 2 1
       13 SETTABLEKS                       R2 R1 K1 ["replaceRulesPaneSize"]
       15 SETTABLEKS                       R1 R0 K6 ["state"]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K7 ["createRef"]
       20 CALL                             R1 0 1
       21 SETTABLEKS                       R1 R0 K8 ["ref"]
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"paneSize"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K2 ["AbsoluteSize"]
        5 SETTABLEKS                       R3 R2 K0 ["paneSize"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"replaceRulesPaneSize"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K2 ["AbsoluteSize"]
        5 SETTABLEKS                       R3 R2 K0 ["replaceRulesPaneSize"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["ref"]
        2 NAMECALL                         R1 R1 K1 ["getValue"]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R1 K2 ["ReplacementRulesExpandablePane"]
        9 LOADK                            R5 K3 ["AbsoluteSize"]
       10 NAMECALL                         R3 R1 K4 ["GetPropertyChangedSignal"]
       12 CALL                             R3 2 1
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 NAMECALL                         R3 R3 K5 ["Connect"]
       18 CALL                             R3 2 1
       19 SETTABLEKS                       R3 R0 K6 ["onPaneSizeChanged"]
       21 LOADK                            R5 K3 ["AbsoluteSize"]
       22 NAMECALL                         R3 R2 K4 ["GetPropertyChangedSignal"]
       24 CALL                             R3 2 1
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R2
       28 NAMECALL                         R3 R3 K5 ["Connect"]
       30 CALL                             R3 2 1
       31 SETTABLEKS                       R3 R0 K7 ["replaceRulesPaneSizeChanged"]
       33 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R3 K0 ["LuaSourceContainer"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["AttributeUnificationScriptName"]
       10 NAMECALL                         R1 R0 K3 ["GetAttribute"]
       12 CALL                             R1 2 1
       13 JUMPIFNOT                        R1 ; [+2]
       14 LOADB                            R1 0
       15 RETURN                           R1 1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["diagnostics"]
        4 GETTABLEKS                       R3 R1 K2 ["Analytics"]
        6 DUPCLOSURE                       R4 K3 [PROTO_4]
        7 CAPTURE                          UPVAL U0
        8 GETUPVAL                         R5 1
        9 MOVE                             R6 R4
       10 CALL                             R5 1 1
       11 GETTABLEKS                       R6 R1 K4 ["updateScriptAnalytics"]
       13 MOVE                             R7 R5
       14 MOVE                             R8 R2
       15 MOVE                             R9 R3
       16 CALL                             R6 3 0
       17 NAMECALL                         R6 R0 K5 ["initConnections"]
       19 CALL                             R6 1 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["ref"]
        2 GETTABLEKS                       R1 R1 K1 ["current"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETTABLEKS                       R1 R0 K2 ["onPaneSizeChanged"]
        7 JUMPIF                           R1 ; [+6]
        8 GETTABLEKS                       R1 R0 K3 ["replaceRulesPaneSizeChanged"]
       10 JUMPIF                           R1 ; [+3]
       11 NAMECALL                         R1 R0 K4 ["initConnections"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R6 R2 K3 ["paneSize"]
        8 GETTABLEKS                       R6 R6 K4 ["Y"]
       10 GETTABLEKS                       R7 R2 K5 ["replaceRulesPaneSize"]
       12 GETTABLEKS                       R7 R7 K4 ["Y"]
       14 SUB                              R5 R6 R7
       15 GETTABLEKS                       R6 R3 K6 ["ExpandablePaneHeaderSize"]
       17 GETTABLEKS                       R6 R6 K4 ["Y"]
       19 GETTABLEKS                       R6 R6 K7 ["Offset"]
       21 SUB                              R4 R5 R6
       22 GETIMPORT                        R5 K10 [UDim2.fromOffset]
       24 GETTABLEKS                       R6 R2 K3 ["paneSize"]
       26 GETTABLEKS                       R6 R6 K11 ["X"]
       28 MOVE                             R7 R4
       29 CALL                             R5 2 -1
       30 RETURN                           R5 -1

PROTO_8:
        0 LOADB                            R1 1
        1 GETIMPORT                        R2 K1 [next]
        3 GETTABLEKS                       R3 R0 K2 ["props"]
        5 GETTABLEKS                       R3 R3 K3 ["diagnostics"]
        7 CALL                             R2 1 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+12]
       10 GETIMPORT                        R2 K1 [next]
       12 GETTABLEKS                       R3 R0 K2 ["props"]
       14 GETTABLEKS                       R3 R3 K4 ["completedScripts"]
       16 CALL                             R2 1 1
       17 JUMPIFNOTEQKNIL                  R2 ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["progressBarMessageKey"]
        4 GETTABLEKS                       R3 R1 K2 ["replaceProgress"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETTABLEKS                       R5 R1 K4 ["Localization"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["new"]
       13 CALL                             R6 0 1
       14 NAMECALL                         R7 R0 K6 ["hasScripts"]
       16 CALL                             R7 1 1
       17 JUMPIF                           R7 ; [+24]
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R7 R7 K7 ["createElement"]
       21 GETUPVAL                         R8 2
       22 NEWTABLE                         R9 0 0
       24 DUPTABLE                         R10 K9 [{"Label"}]
       25 GETUPVAL                         R11 1
       26 GETTABLEKS                       R11 R11 K7 ["createElement"]
       28 GETUPVAL                         R12 3
       29 DUPTABLE                         R13 K11 [{"Text"}]
       30 LOADK                            R16 K12 ["ScriptConversion"]
       31 LOADK                            R17 K13 ["NoScripts"]
       32 NAMECALL                         R14 R5 K14 ["getText"]
       34 CALL                             R14 3 1
       35 SETTABLEKS                       R14 R13 K10 ["Text"]
       37 CALL                             R11 2 1
       38 SETTABLEKS                       R11 R10 K8 ["Label"]
       40 CALL                             R7 3 -1
       41 RETURN                           R7 -1
       42 GETUPVAL                         R7 1
       43 GETTABLEKS                       R7 R7 K7 ["createElement"]
       45 GETUPVAL                         R8 2
       46 DUPTABLE                         R9 K22 [{["BackgroundColor3"], ["BorderSizePixel"] = 0, ["Layout"], ["HorizontalAlignment"], ["VerticalAlignment"], ["ForwardRef"]}]
       47 GETTABLEKS                       R10 R4 K23 ["BackgroundColor"]
       49 SETTABLEKS                       R10 R9 K15 ["BackgroundColor3"]
       51 GETIMPORT                        R10 K27 [Enum.FillDirection.Vertical]
       53 SETTABLEKS                       R10 R9 K18 ["Layout"]
       55 GETIMPORT                        R10 K29 [Enum.HorizontalAlignment.Left]
       57 SETTABLEKS                       R10 R9 K19 ["HorizontalAlignment"]
       59 GETIMPORT                        R10 K31 [Enum.VerticalAlignment.Top]
       61 SETTABLEKS                       R10 R9 K20 ["VerticalAlignment"]
       63 GETTABLEKS                       R10 R0 K32 ["ref"]
       65 SETTABLEKS                       R10 R9 K21 ["ForwardRef"]
       67 DUPTABLE                         R10 K36 [{"ReplacementRulesExpandablePane", "ScriptConversionExpandablePane", "ReplaceProgressBar"}]
       68 GETUPVAL                         R11 1
       69 GETTABLEKS                       R11 R11 K7 ["createElement"]
       71 GETUPVAL                         R12 4
       72 DUPTABLE                         R13 K39 [{"LayoutOrder", "HeaderSize"}]
       73 NAMECALL                         R14 R6 K40 ["getNextOrder"]
       75 CALL                             R14 1 1
       76 SETTABLEKS                       R14 R13 K37 ["LayoutOrder"]
       78 GETTABLEKS                       R14 R4 K41 ["ExpandablePaneHeaderSize"]
       80 SETTABLEKS                       R14 R13 K38 ["HeaderSize"]
       82 CALL                             R11 2 1
       83 SETTABLEKS                       R11 R10 K33 ["ReplacementRulesExpandablePane"]
       85 GETUPVAL                         R11 1
       86 GETTABLEKS                       R11 R11 K7 ["createElement"]
       88 GETUPVAL                         R12 5
       89 DUPTABLE                         R13 K44 [{"LayoutOrder", "HeaderSize", "ContentSize", "OnResetPlugin"}]
       90 NAMECALL                         R14 R6 K40 ["getNextOrder"]
       92 CALL                             R14 1 1
       93 SETTABLEKS                       R14 R13 K37 ["LayoutOrder"]
       95 GETTABLEKS                       R14 R4 K41 ["ExpandablePaneHeaderSize"]
       97 SETTABLEKS                       R14 R13 K38 ["HeaderSize"]
       99 NAMECALL                         R14 R0 K45 ["getScriptExpandablePaneSize"]
      101 CALL                             R14 1 1
      102 SETTABLEKS                       R14 R13 K42 ["ContentSize"]
      104 GETTABLEKS                       R14 R1 K43 ["OnResetPlugin"]
      106 SETTABLEKS                       R14 R13 K43 ["OnResetPlugin"]
      108 CALL                             R11 2 1
      109 SETTABLEKS                       R11 R10 K34 ["ScriptConversionExpandablePane"]
      111 JUMPIFNOT                        R3 ; [+16]
      112 GETUPVAL                         R11 1
      113 GETTABLEKS                       R11 R11 K7 ["createElement"]
      115 GETUPVAL                         R12 6
      116 DUPTABLE                         R13 K47 [{"Text", "Progress"}]
      117 LOADK                            R16 K48 ["ProgressBar"]
      118 MOVE                             R17 R2
      119 NAMECALL                         R14 R5 K14 ["getText"]
      121 CALL                             R14 3 1
      122 SETTABLEKS                       R14 R13 K10 ["Text"]
      124 SETTABLEKS                       R3 R13 K46 ["Progress"]
      126 CALL                             R11 2 1
      127 JUMP                             ; [+1]
      128 LOADNIL                          R11
      129 SETTABLEKS                       R11 R10 K35 ["ReplaceProgressBar"]
      131 CALL                             R7 3 -1
      132 RETURN                           R7 -1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["onPaneSizeChanged"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["onPaneSizeChanged"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["onPaneSizeChanged"]
       11 GETTABLEKS                       R1 R0 K2 ["replaceRulesPaneSizeChanged"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["replaceRulesPaneSizeChanged"]
       16 NAMECALL                         R1 R1 K1 ["Disconnect"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["replaceRulesPaneSizeChanged"]
       22 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R2 K4 [{"diagnostics", "completedScripts", "replaceProgress", "progressBarMessageKey"}]
        1 GETTABLEKS                       R3 R0 K5 ["ScriptConversion"]
        3 GETTABLEKS                       R3 R3 K0 ["diagnostics"]
        5 SETTABLEKS                       R3 R2 K0 ["diagnostics"]
        7 GETTABLEKS                       R3 R0 K5 ["ScriptConversion"]
        9 GETTABLEKS                       R3 R3 K1 ["completedScripts"]
       11 SETTABLEKS                       R3 R2 K1 ["completedScripts"]
       13 GETTABLEKS                       R3 R0 K5 ["ScriptConversion"]
       15 GETTABLEKS                       R3 R3 K2 ["replaceProgress"]
       17 SETTABLEKS                       R3 R2 K2 ["replaceProgress"]
       19 GETTABLEKS                       R3 R0 K5 ["ScriptConversion"]
       21 GETTABLEKS                       R3 R3 K6 ["messageKey"]
       23 SETTABLEKS                       R3 R2 K3 ["progressBarMessageKey"]
       25 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K1 [{"updateScriptAnalytics"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["updateScriptAnalytics"]
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
       25 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R1 K11 ["UI"]
       32 GETTABLEKS                       R6 R5 K12 ["Pane"]
       34 GETTABLEKS                       R7 R5 K13 ["TextLabel"]
       36 GETTABLEKS                       R8 R1 K14 ["Util"]
       38 GETTABLEKS                       R9 R8 K15 ["LayoutOrderIterator"]
       40 GETIMPORT                        R10 K5 [require]
       42 GETTABLEKS                       R11 R0 K16 ["Src"]
       44 GETTABLEKS                       R11 R11 K17 ["Components"]
       46 GETTABLEKS                       R11 R11 K18 ["ProgressBar"]
       48 CALL                             R10 1 1
       49 GETIMPORT                        R11 K5 [require]
       51 GETTABLEKS                       R12 R0 K16 ["Src"]
       53 GETTABLEKS                       R12 R12 K17 ["Components"]
       55 GETTABLEKS                       R12 R12 K19 ["ReplacementRulesExpandablePane"]
       57 CALL                             R11 1 1
       58 GETIMPORT                        R12 K5 [require]
       60 GETTABLEKS                       R13 R0 K16 ["Src"]
       62 GETTABLEKS                       R13 R13 K17 ["Components"]
       64 GETTABLEKS                       R13 R13 K20 ["ScriptConversionExpandablePane"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K5 [require]
       69 GETTABLEKS                       R14 R0 K16 ["Src"]
       71 GETTABLEKS                       R14 R14 K14 ["Util"]
       73 GETTABLEKS                       R14 R14 K21 ["findAllInServices"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K5 [require]
       78 GETTABLEKS                       R15 R0 K16 ["Src"]
       80 GETTABLEKS                       R15 R15 K14 ["Util"]
       82 GETTABLEKS                       R15 R15 K22 ["ScriptAnalysis"]
       84 GETTABLEKS                       R15 R15 K23 ["Constants"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K5 [require]
       89 GETTABLEKS                       R16 R0 K16 ["Src"]
       91 GETTABLEKS                       R16 R16 K24 ["Thunks"]
       93 GETTABLEKS                       R16 R16 K25 ["UpdateScriptAnalytics"]
       95 CALL                             R15 1 1
       96 GETTABLEKS                       R16 R2 K26 ["PureComponent"]
       98 LOADK                            R18 K27 ["ScriptConversionPane"]
       99 NAMECALL                         R16 R16 K28 ["extend"]
      101 CALL                             R16 2 1
      102 DUPCLOSURE                       R17 K29 [PROTO_0]
      103 CAPTURE                          VAL R2
      104 SETTABLEKS                       R17 R16 K30 ["init"]
      106 DUPCLOSURE                       R17 K31 [PROTO_3]
      107 SETTABLEKS                       R17 R16 K32 ["initConnections"]
      109 DUPCLOSURE                       R17 K33 [PROTO_5]
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R13
      112 SETTABLEKS                       R17 R16 K34 ["didMount"]
      114 DUPCLOSURE                       R17 K35 [PROTO_6]
      115 SETTABLEKS                       R17 R16 K36 ["didUpdate"]
      117 DUPCLOSURE                       R17 K37 [PROTO_7]
      118 SETTABLEKS                       R17 R16 K38 ["getScriptExpandablePaneSize"]
      120 DUPCLOSURE                       R17 K39 [PROTO_8]
      121 SETTABLEKS                       R17 R16 K40 ["hasScripts"]
      123 DUPCLOSURE                       R17 K41 [PROTO_9]
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R10
      131 SETTABLEKS                       R17 R16 K42 ["render"]
      133 DUPCLOSURE                       R17 K43 [PROTO_10]
      134 SETTABLEKS                       R17 R16 K44 ["willUnmount"]
      136 GETTABLEKS                       R17 R4 K45 ["withContext"]
      138 DUPTABLE                         R18 K49 [{"Analytics", "Stylizer", "Localization"}]
      139 GETTABLEKS                       R19 R4 K46 ["Analytics"]
      141 SETTABLEKS                       R19 R18 K46 ["Analytics"]
      143 GETTABLEKS                       R19 R4 K47 ["Stylizer"]
      145 SETTABLEKS                       R19 R18 K47 ["Stylizer"]
      147 GETTABLEKS                       R19 R4 K48 ["Localization"]
      149 SETTABLEKS                       R19 R18 K48 ["Localization"]
      151 CALL                             R17 1 1
      152 MOVE                             R18 R16
      153 CALL                             R17 1 1
      154 MOVE                             R16 R17
      155 DUPCLOSURE                       R17 K50 [PROTO_11]
      156 DUPCLOSURE                       R18 K51 [PROTO_13]
      157 CAPTURE                          VAL R15
      158 GETTABLEKS                       R19 R3 K52 ["connect"]
      160 MOVE                             R20 R17
      161 MOVE                             R21 R18
      162 CALL                             R19 2 1
      163 MOVE                             R20 R16
      164 CALL                             R19 1 -1
      165 RETURN                           R19 -1
