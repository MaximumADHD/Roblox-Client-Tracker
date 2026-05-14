PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"sizes"}]
        2 SETTABLEKS                       R0 R3 K0 ["sizes"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onSizesChange"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R3 K3 [Enum.KeyCode.Down]
        2 GETTABLE                         R2 R1 R3
        3 GETIMPORT                        R4 K5 [Enum.KeyCode.Up]
        5 GETTABLE                         R3 R1 R4
        6 GETIMPORT                        R5 K7 [Enum.KeyCode.Return]
        8 GETTABLE                         R4 R1 R5
        9 GETIMPORT                        R6 K9 [Enum.KeyCode.Escape]
       11 GETTABLE                         R5 R1 R6
       12 JUMPIF                           R3 ; [+1]
       13 JUMPIFNOT                        R2 ; [+6]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K10 ["moveTagSelectionUpOrDown"]
       17 MOVE                             R7 R2
       18 CALL                             R6 1 0
       19 RETURN                           R0 0
       20 JUMPIFNOT                        R4 ; [+27]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K11 ["tagMenu"]
       24 JUMPIFNOT                        R6 ; [+14]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K11 ["tagMenu"]
       28 JUMPIFEQKS                       R6 K12 [""] ; [+10]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K13 ["setRenaming"]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K11 ["tagMenu"]
       36 LOADB                            R8 1
       37 CALL                             R6 2 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K14 ["setRenamingGroup"]
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R7 R7 K15 ["groupMenu"]
       45 LOADB                            R8 1
       46 CALL                             R6 2 0
       47 RETURN                           R0 0
       48 JUMPIFNOT                        R5 ; [+5]
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R6 R6 K16 ["setAssigningGroup"]
       52 LOADK                            R7 K12 [""]
       53 CALL                             R6 1 0
       54 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["MainGui"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["new"]
        9 CALL                             R3 0 1
       10 LOADB                            R4 0
       11 LOADB                            R5 0
       12 LOADB                            R6 0
       13 LOADB                            R7 0
       14 GETTABLEKS                       R8 R1 K4 ["iconPicker"]
       16 JUMPIFNOT                        R8 ; [+6]
       17 GETTABLEKS                       R8 R1 K4 ["iconPicker"]
       19 JUMPIFEQKS                       R8 K5 [""] ; [+3]
       21 LOADB                            R4 1
       22 JUMP                             ; [+18]
       23 GETTABLEKS                       R8 R1 K6 ["colorPicker"]
       25 JUMPIFNOT                        R8 ; [+6]
       26 GETTABLEKS                       R8 R1 K6 ["colorPicker"]
       28 JUMPIFEQKS                       R8 K5 [""] ; [+3]
       30 LOADB                            R5 1
       31 JUMP                             ; [+9]
       32 GETTABLEKS                       R8 R1 K7 ["minimizedSettingsPane"]
       34 JUMPIF                           R8 ; [+5]
       35 GETTABLEKS                       R8 R1 K8 ["tagMenu"]
       37 JUMPIFNOT                        R8 ; [+2]
       38 LOADB                            R6 1
       39 JUMP                             ; [+1]
       40 LOADB                            R7 1
       41 GETUPVAL                         R8 1
       42 GETTABLEKS                       R8 R8 K9 ["createElement"]
       44 GETUPVAL                         R9 2
       45 DUPTABLE                         R10 K13 [{"Style", "Layout", "VerticalAlignment"}]
       46 LOADK                            R11 K14 ["Box"]
       47 SETTABLEKS                       R11 R10 K10 ["Style"]
       49 GETIMPORT                        R11 K18 [Enum.FillDirection.Vertical]
       51 SETTABLEKS                       R11 R10 K11 ["Layout"]
       53 GETIMPORT                        R11 K20 [Enum.VerticalAlignment.Top]
       55 SETTABLEKS                       R11 R10 K12 ["VerticalAlignment"]
       57 DUPTABLE                         R11 K27 [{"KeyboardListener", "IconPicker", "ColorPicker", "SplitPane", "SoloTopPane", "ShowTagSettingsButton"}]
       58 GETUPVAL                         R12 1
       59 GETTABLEKS                       R12 R12 K9 ["createElement"]
       61 GETUPVAL                         R13 3
       62 DUPTABLE                         R14 K29 [{"OnKeyPressed"}]
       63 NEWCLOSURE                       R15 P0
       64 CAPTURE                          VAL R1
       65 SETTABLEKS                       R15 R14 K28 ["OnKeyPressed"]
       67 CALL                             R12 2 1
       68 SETTABLEKS                       R12 R11 K21 ["KeyboardListener"]
       70 MOVE                             R12 R4
       71 JUMPIFNOT                        R12 ; [+5]
       72 GETUPVAL                         R12 1
       73 GETTABLEKS                       R12 R12 K9 ["createElement"]
       75 GETUPVAL                         R13 4
       76 CALL                             R12 1 1
       77 SETTABLEKS                       R12 R11 K22 ["IconPicker"]
       79 MOVE                             R12 R5
       80 JUMPIFNOT                        R12 ; [+5]
       81 GETUPVAL                         R12 1
       82 GETTABLEKS                       R12 R12 K9 ["createElement"]
       84 GETUPVAL                         R13 5
       85 CALL                             R12 1 1
       86 SETTABLEKS                       R12 R11 K23 ["ColorPicker"]
       88 MOVE                             R12 R6
       89 JUMPIFNOT                        R12 ; [+52]
       90 GETUPVAL                         R12 1
       91 GETTABLEKS                       R12 R12 K9 ["createElement"]
       93 GETUPVAL                         R13 6
       94 DUPTABLE                         R14 K37 [{"LayoutOrder", "ClampSize", "UseScale", "Layout", "Sizes", "MinSizes", "OnSizesChange", "BarStyle"}]
       95 NAMECALL                         R15 R3 K38 ["getNextOrder"]
       97 CALL                             R15 1 1
       98 SETTABLEKS                       R15 R14 K30 ["LayoutOrder"]
      100 LOADB                            R15 1
      101 SETTABLEKS                       R15 R14 K31 ["ClampSize"]
      103 LOADB                            R15 1
      104 SETTABLEKS                       R15 R14 K32 ["UseScale"]
      106 GETIMPORT                        R15 K18 [Enum.FillDirection.Vertical]
      108 SETTABLEKS                       R15 R14 K11 ["Layout"]
      110 GETTABLEKS                       R15 R0 K39 ["state"]
      112 GETTABLEKS                       R15 R15 K40 ["sizes"]
      114 SETTABLEKS                       R15 R14 K33 ["Sizes"]
      116 GETTABLEKS                       R15 R2 K41 ["SplitPaneMinsizes"]
      118 SETTABLEKS                       R15 R14 K34 ["MinSizes"]
      120 GETTABLEKS                       R15 R0 K42 ["onSizesChange"]
      122 SETTABLEKS                       R15 R14 K35 ["OnSizesChange"]
      124 LOADK                            R15 K43 ["WStyle"]
      125 SETTABLEKS                       R15 R14 K36 ["BarStyle"]
      127 NEWTABLE                         R15 0 2
      129 GETUPVAL                         R16 1
      130 GETTABLEKS                       R16 R16 K9 ["createElement"]
      132 GETUPVAL                         R17 7
      133 CALL                             R16 1 1
      134 GETUPVAL                         R17 1
      135 GETTABLEKS                       R17 R17 K9 ["createElement"]
      137 GETUPVAL                         R18 8
      138 CALL                             R17 1 -1
      139 SETLIST                          R15 R16 -1 [1]
      141 CALL                             R12 3 1
      142 SETTABLEKS                       R12 R11 K24 ["SplitPane"]
      144 MOVE                             R12 R7
      145 JUMPIFNOT                        R12 ; [+23]
      146 GETUPVAL                         R12 1
      147 GETTABLEKS                       R12 R12 K9 ["createElement"]
      149 GETUPVAL                         R13 2
      150 DUPTABLE                         R14 K45 [{"LayoutOrder", "Size"}]
      151 NAMECALL                         R15 R3 K38 ["getNextOrder"]
      153 CALL                             R15 1 1
      154 SETTABLEKS                       R15 R14 K30 ["LayoutOrder"]
      156 GETTABLEKS                       R15 R2 K46 ["SoloTopPaneSize"]
      158 SETTABLEKS                       R15 R14 K44 ["Size"]
      160 DUPTABLE                         R15 K48 [{"TopPane"}]
      161 GETUPVAL                         R16 1
      162 GETTABLEKS                       R16 R16 K9 ["createElement"]
      164 GETUPVAL                         R17 7
      165 CALL                             R16 1 1
      166 SETTABLEKS                       R16 R15 K47 ["TopPane"]
      168 CALL                             R12 3 1
      169 SETTABLEKS                       R12 R11 K25 ["SoloTopPane"]
      171 MOVE                             R12 R7
      172 JUMPIFNOT                        R12 ; [+11]
      173 GETUPVAL                         R12 1
      174 GETTABLEKS                       R12 R12 K9 ["createElement"]
      176 GETUPVAL                         R13 9
      177 DUPTABLE                         R14 K49 [{"LayoutOrder"}]
      178 NAMECALL                         R15 R3 K38 ["getNextOrder"]
      180 CALL                             R15 1 1
      181 SETTABLEKS                       R15 R14 K30 ["LayoutOrder"]
      183 CALL                             R12 2 1
      184 SETTABLEKS                       R12 R11 K26 ["ShowTagSettingsButton"]
      186 CALL                             R8 3 -1
      187 RETURN                           R8 -1

PROTO_4:
        0 DUPTABLE                         R3 K1 [{"sizes"}]
        1 GETTABLEKS                       R4 R0 K2 ["props"]
        3 GETTABLEKS                       R4 R4 K3 ["Stylizer"]
        5 GETTABLEKS                       R4 R4 K4 ["MainGui"]
        7 GETTABLEKS                       R4 R4 K5 ["SplitPaneInitialSizes"]
        9 SETTABLEKS                       R4 R3 K0 ["sizes"]
       11 NAMECALL                         R1 R0 K6 ["setState"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R2 K5 [{"colorPicker", "iconPicker", "minimizedSettingsPane", "tagMenu", "groupMenu"}]
        1 GETTABLEKS                       R3 R0 K6 ["ColorPicker"]
        3 SETTABLEKS                       R3 R2 K0 ["colorPicker"]
        5 GETTABLEKS                       R3 R0 K7 ["IconPicker"]
        7 SETTABLEKS                       R3 R2 K1 ["iconPicker"]
        9 GETTABLEKS                       R3 R0 K8 ["MinimizedSettingsPane"]
       11 SETTABLEKS                       R3 R2 K2 ["minimizedSettingsPane"]
       13 GETTABLEKS                       R3 R0 K9 ["TagMenu"]
       15 SETTABLEKS                       R3 R2 K3 ["tagMenu"]
       17 GETTABLEKS                       R3 R0 K10 ["GroupMenu"]
       19 SETTABLEKS                       R3 R2 K4 ["groupMenu"]
       21 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["MoveTagSelectionUpOrDown"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["SetRenaming"]
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R3 2 -1
        7 CALL                             R2 -1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["SetRenamingGroup"]
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R3 2 -1
        7 CALL                             R2 -1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["SetAssigningGroup"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K4 [{"moveTagSelectionUpOrDown", "setRenaming", "setRenamingGroup", "setAssigningGroup"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["moveTagSelectionUpOrDown"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 SETTABLEKS                       R2 R1 K1 ["setRenaming"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 SETTABLEKS                       R2 R1 K2 ["setRenamingGroup"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U0
       19 SETTABLEKS                       R2 R1 K3 ["setAssigningGroup"]
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K7 ["Packages"]
       34 GETTABLEKS                       R5 R5 K10 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K12 ["withContext"]
       41 GETTABLEKS                       R7 R5 K13 ["Analytics"]
       43 GETTABLEKS                       R8 R5 K14 ["Localization"]
       45 GETTABLEKS                       R9 R4 K15 ["Style"]
       47 GETTABLEKS                       R9 R9 K16 ["Stylizer"]
       49 GETTABLEKS                       R10 R4 K17 ["UI"]
       51 GETTABLEKS                       R11 R10 K18 ["Pane"]
       53 GETTABLEKS                       R12 R10 K19 ["SplitPane"]
       55 GETTABLEKS                       R13 R10 K20 ["KeyboardListener"]
       57 GETTABLEKS                       R14 R4 K21 ["Util"]
       59 GETTABLEKS                       R15 R14 K22 ["LayoutOrderIterator"]
       61 GETIMPORT                        R16 K4 [require]
       63 GETTABLEKS                       R17 R0 K5 ["Src"]
       65 GETTABLEKS                       R17 R17 K23 ["Actions"]
       67 CALL                             R16 1 1
       68 GETIMPORT                        R17 K4 [require]
       70 GETIMPORT                        R18 K1 [script]
       72 GETTABLEKS                       R18 R18 K2 ["Parent"]
       74 GETTABLEKS                       R18 R18 K24 ["ColorPicker"]
       76 CALL                             R17 1 1
       77 GETIMPORT                        R18 K4 [require]
       79 GETIMPORT                        R19 K1 [script]
       81 GETTABLEKS                       R19 R19 K2 ["Parent"]
       83 GETTABLEKS                       R19 R19 K25 ["IconPicker"]
       85 CALL                             R18 1 1
       86 GETIMPORT                        R19 K4 [require]
       88 GETIMPORT                        R20 K1 [script]
       90 GETTABLEKS                       R20 R20 K2 ["Parent"]
       92 GETTABLEKS                       R20 R20 K26 ["TagTopPane"]
       94 CALL                             R19 1 1
       95 GETIMPORT                        R20 K4 [require]
       97 GETIMPORT                        R21 K1 [script]
       99 GETTABLEKS                       R21 R21 K2 ["Parent"]
      101 GETTABLEKS                       R21 R21 K27 ["TagSettingsPane"]
      103 CALL                             R20 1 1
      104 GETIMPORT                        R21 K4 [require]
      106 GETIMPORT                        R22 K1 [script]
      108 GETTABLEKS                       R22 R22 K2 ["Parent"]
      110 GETTABLEKS                       R22 R22 K28 ["TagSettingsToggleButton"]
      112 CALL                             R21 1 1
      113 GETTABLEKS                       R22 R2 K29 ["PureComponent"]
      115 LOADK                            R24 K30 ["MainGui"]
      116 NAMECALL                         R22 R22 K31 ["extend"]
      118 CALL                             R22 2 1
      119 DUPCLOSURE                       R23 K32 [PROTO_1]
      120 SETTABLEKS                       R23 R22 K33 ["init"]
      122 DUPCLOSURE                       R23 K34 [PROTO_3]
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R18
      128 CAPTURE                          VAL R17
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R19
      131 CAPTURE                          VAL R20
      132 CAPTURE                          VAL R21
      133 SETTABLEKS                       R23 R22 K35 ["render"]
      135 DUPCLOSURE                       R23 K36 [PROTO_4]
      136 SETTABLEKS                       R23 R22 K37 ["didMount"]
      138 MOVE                             R23 R6
      139 DUPTABLE                         R24 K38 [{"Analytics", "Localization", "Stylizer"}]
      140 SETTABLEKS                       R7 R24 K13 ["Analytics"]
      142 SETTABLEKS                       R8 R24 K14 ["Localization"]
      144 SETTABLEKS                       R9 R24 K16 ["Stylizer"]
      146 CALL                             R23 1 1
      147 MOVE                             R24 R22
      148 CALL                             R23 1 1
      149 MOVE                             R22 R23
      150 DUPCLOSURE                       R23 K39 [PROTO_5]
      151 DUPCLOSURE                       R24 K40 [PROTO_10]
      152 CAPTURE                          VAL R16
      153 GETTABLEKS                       R25 R3 K41 ["connect"]
      155 MOVE                             R26 R23
      156 MOVE                             R27 R24
      157 CALL                             R25 2 1
      158 MOVE                             R26 R22
      159 CALL                             R25 1 -1
      160 RETURN                           R25 -1
