PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"arrowHovered"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["arrowHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"arrowHovered"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["arrowHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"hideConsole"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["hideConsole"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"hideConsole", "arrowHovered"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["hideConsole"]
        5 LOADB                            R3 0
        6 SETTABLEKS                       R3 R2 K1 ["arrowHovered"]
        8 NAMECALL                         R0 R0 K3 ["setState"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["props"]
        6 GETTABLEKS                       R3 R1 K2 ["rows"]
        8 JUMPIF                           R3 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R4 R2 K3 ["Stylizer"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K4 ["createElement"]
       15 GETUPVAL                         R6 2
       16 DUPTABLE                         R7 K8 [{"Rows", "LayoutOrder", "RowHeight"}]
       17 SETTABLEKS                       R3 R7 K5 ["Rows"]
       19 SETTABLEKS                       R0 R7 K6 ["LayoutOrder"]
       21 GETTABLEKS                       R8 R4 K7 ["RowHeight"]
       23 SETTABLEKS                       R8 R7 K7 ["RowHeight"]
       25 CALL                             R5 2 -1
       26 RETURN                           R5 -1

PROTO_5:
        0 DUPTABLE                         R1 K3 [{"arrowHovered", "hideConsole", "rows"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["arrowHovered"]
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R1 K1 ["hideConsole"]
        7 NEWTABLE                         R2 0 0
        9 SETTABLEKS                       R2 R1 K2 ["rows"]
       11 SETTABLEKS                       R1 R0 K4 ["state"]
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K5 ["onMouseEnter"]
       17 NEWCLOSURE                       R1 P1
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K6 ["onMouseLeave"]
       21 NEWCLOSURE                       R1 P2
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K7 ["closeConsole"]
       25 NEWCLOSURE                       R1 P3
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K8 ["openConsole"]
       29 NEWCLOSURE                       R1 P4
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U1
       33 SETTABLEKS                       R1 R0 K9 ["renderConsoleContent"]
       35 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["processResult"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETUPVAL                         R5 0
        9 MOVE                             R7 R2
       10 MOVE                             R8 R3
       11 NAMECALL                         R5 R5 K4 ["GetStatusMessages"]
       13 CALL                             R5 3 1
       14 NEWTABLE                         R6 0 0
       16 MOVE                             R7 R5
       17 LOADNIL                          R8
       18 LOADNIL                          R9
       19 FORGPREP                         R7
       20 DUPTABLE                         R14 K7 [{"text", "icon"}]
       21 SETTABLEKS                       R11 R14 K5 ["text"]
       23 DUPTABLE                         R15 K10 [{"Image", "Size"}]
       24 GETTABLEKS                       R17 R4 K11 ["StatusIcons"]
       26 GETTABLE                         R16 R17 R10
       27 SETTABLEKS                       R16 R15 K8 ["Image"]
       29 GETTABLEKS                       R16 R4 K12 ["IconSize"]
       31 SETTABLEKS                       R16 R15 K9 ["Size"]
       33 SETTABLEKS                       R15 R14 K6 ["icon"]
       35 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
       37 MOVE                             R13 R6
       38 GETIMPORT                        R12 K15 [table.insert]
       40 CALL                             R12 2 0
       41 FORGLOOP                         R7 2 ; [-22]
       43 DUPTABLE                         R9 K17 [{"rows"}]
       44 SETTABLEKS                       R6 R9 K16 ["rows"]
       46 NAMECALL                         R7 R0 K18 ["setState"]
       48 CALL                             R7 2 0
       49 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["processResult"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 NAMECALL                         R1 R0 K2 ["buildRows"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["processResult"]
        4 GETTABLEKS                       R3 R1 K1 ["processResult"]
        6 JUMPIFEQ                         R2 R3 ; [+4]
        8 NAMECALL                         R2 R0 K2 ["buildRows"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETTABLEKS                       R5 R1 K4 ["processResult"]
       10 GETTABLEKS                       R6 R4 K5 ["Arrow"]
       12 GETTABLEKS                       R6 R6 K6 ["Size"]
       14 GETTABLEKS                       R7 R2 K7 ["hideConsole"]
       16 GETTABLEKS                       R8 R2 K8 ["arrowHovered"]
       18 GETIMPORT                        R10 K10 [next]
       20 MOVE                             R11 R5
       21 CALL                             R10 1 1
       22 JUMPIFNOTEQKNIL                  R10 ; [+2]
       24 LOADB                            R9 0 +1
       25 LOADB                            R9 1
       26 GETUPVAL                         R10 0
       27 GETTABLEKS                       R10 R10 K11 ["createElement"]
       29 GETUPVAL                         R11 1
       30 DUPTABLE                         R12 K15 [{"BackgroundColor3", "BorderSizePixel", "LayoutOrder", "Size", "Padding"}]
       31 GETTABLEKS                       R13 R4 K16 ["BackgroundColor"]
       33 SETTABLEKS                       R13 R12 K12 ["BackgroundColor3"]
       35 LOADN                            R13 0
       36 SETTABLEKS                       R13 R12 K13 ["BorderSizePixel"]
       38 SETTABLEKS                       R3 R12 K2 ["LayoutOrder"]
       40 GETIMPORT                        R13 K19 [UDim2.new]
       42 LOADN                            R14 1
       43 LOADN                            R15 0
       44 LOADN                            R16 0
       45 GETTABLEKS                       R17 R4 K20 ["RowHeight"]
       47 CALL                             R13 4 1
       48 SETTABLEKS                       R13 R12 K6 ["Size"]
       50 GETTABLEKS                       R13 R4 K14 ["Padding"]
       52 SETTABLEKS                       R13 R12 K14 ["Padding"]
       54 DUPTABLE                         R13 K24 [{"StatusPane", "PopUpFrame", "ExpandButton"}]
       55 GETUPVAL                         R14 0
       56 GETTABLEKS                       R14 R14 K11 ["createElement"]
       58 GETUPVAL                         R15 2
       59 DUPTABLE                         R16 K28 [{"Size", "ShowCounts", "Statuses", "AllowTooltips"}]
       60 GETIMPORT                        R17 K30 [UDim2.fromScale]
       62 LOADN                            R18 1
       63 LOADN                            R19 1
       64 CALL                             R17 2 1
       65 SETTABLEKS                       R17 R16 K6 ["Size"]
       67 LOADB                            R17 1
       68 SETTABLEKS                       R17 R16 K25 ["ShowCounts"]
       70 GETUPVAL                         R17 3
       71 MOVE                             R19 R5
       72 NAMECALL                         R17 R17 K31 ["GetStatusCounts"]
       74 CALL                             R17 2 1
       75 SETTABLEKS                       R17 R16 K26 ["Statuses"]
       77 LOADB                            R17 0
       78 SETTABLEKS                       R17 R16 K27 ["AllowTooltips"]
       80 CALL                             R14 2 1
       81 SETTABLEKS                       R14 R13 K21 ["StatusPane"]
       83 MOVE                             R14 R9
       84 JUMPIFNOT                        R14 ; [+20]
       85 GETUPVAL                         R14 0
       86 GETTABLEKS                       R14 R14 K11 ["createElement"]
       88 GETUPVAL                         R15 4
       89 DUPTABLE                         R16 K36 [{"Hide", "OnFocusLost", "RenderContent", "ExpandedHeight"}]
       90 SETTABLEKS                       R7 R16 K32 ["Hide"]
       92 GETTABLEKS                       R17 R0 K37 ["closeConsole"]
       94 SETTABLEKS                       R17 R16 K33 ["OnFocusLost"]
       96 GETTABLEKS                       R17 R0 K38 ["renderConsoleContent"]
       98 SETTABLEKS                       R17 R16 K34 ["RenderContent"]
      100 GETTABLEKS                       R17 R4 K39 ["ConsoleHeight"]
      102 SETTABLEKS                       R17 R16 K35 ["ExpandedHeight"]
      104 CALL                             R14 2 1
      105 SETTABLEKS                       R14 R13 K22 ["PopUpFrame"]
      107 MOVE                             R14 R9
      108 JUMPIFNOT                        R14 ; [+86]
      109 GETUPVAL                         R14 0
      110 GETTABLEKS                       R14 R14 K11 ["createElement"]
      112 LOADK                            R15 K40 ["ImageButton"]
      113 NEWTABLE                         R16 16 0
      115 GETIMPORT                        R17 K30 [UDim2.fromScale]
      117 LOADN                            R18 1
      118 LOADK                            R19 K41 [0.5]
      119 CALL                             R17 2 1
      120 SETTABLEKS                       R17 R16 K42 ["Position"]
      122 GETIMPORT                        R17 K44 [Vector2.new]
      124 LOADN                            R18 1
      125 LOADK                            R19 K41 [0.5]
      126 CALL                             R17 2 1
      127 SETTABLEKS                       R17 R16 K45 ["AnchorPoint"]
      129 LOADN                            R17 1
      130 SETTABLEKS                       R17 R16 K46 ["BackgroundTransparency"]
      132 GETIMPORT                        R17 K48 [UDim2.fromOffset]
      134 MOVE                             R18 R6
      135 MOVE                             R19 R6
      136 CALL                             R17 2 1
      137 SETTABLEKS                       R17 R16 K6 ["Size"]
      139 JUMPIFNOT                        R8 ; [+5]
      140 GETTABLEKS                       R17 R4 K5 ["Arrow"]
      142 GETTABLEKS                       R17 R17 K49 ["HoverColor"]
      144 JUMP                             ; [+4]
      145 GETTABLEKS                       R17 R4 K5 ["Arrow"]
      147 GETTABLEKS                       R17 R17 K50 ["Color"]
      149 SETTABLEKS                       R17 R16 K51 ["ImageColor3"]
      151 GETTABLEKS                       R17 R4 K5 ["Arrow"]
      153 GETTABLEKS                       R17 R17 K52 ["Image"]
      155 SETTABLEKS                       R17 R16 K52 ["Image"]
      157 GETTABLEKS                       R17 R4 K5 ["Arrow"]
      159 GETTABLEKS                       R17 R17 K53 ["Offset"]
      161 SETTABLEKS                       R17 R16 K54 ["ImageRectOffset"]
      163 GETIMPORT                        R17 K44 [Vector2.new]
      165 MOVE                             R18 R6
      166 MOVE                             R19 R6
      167 CALL                             R17 2 1
      168 SETTABLEKS                       R17 R16 K55 ["ImageRectSize"]
      170 GETUPVAL                         R17 0
      171 GETTABLEKS                       R17 R17 K56 ["Event"]
      173 GETTABLEKS                       R17 R17 K57 ["MouseButton1Click"]
      175 GETTABLEKS                       R18 R0 K58 ["openConsole"]
      177 SETTABLE                         R18 R16 R17
      178 GETUPVAL                         R17 0
      179 GETTABLEKS                       R17 R17 K56 ["Event"]
      181 GETTABLEKS                       R17 R17 K59 ["MouseEnter"]
      183 GETTABLEKS                       R18 R0 K60 ["onMouseEnter"]
      185 SETTABLE                         R18 R16 R17
      186 GETUPVAL                         R17 0
      187 GETTABLEKS                       R17 R17 K56 ["Event"]
      189 GETTABLEKS                       R17 R17 K61 ["MouseLeave"]
      191 GETTABLEKS                       R18 R0 K62 ["onMouseLeave"]
      193 SETTABLE                         R18 R16 R17
      194 CALL                             R14 2 1
      195 SETTABLEKS                       R14 R13 K23 ["ExpandButton"]
      197 CALL                             R10 3 -1
      198 RETURN                           R10 -1

PROTO_10:
        0 DUPTABLE                         R2 K1 [{"processResult"}]
        1 GETTABLEKS                       R3 R0 K2 ["ScriptConversion"]
        3 GETTABLEKS                       R3 R3 K0 ["processResult"]
        5 SETTABLEKS                       R3 R2 K0 ["processResult"]
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
       34 GETTABLEKS                       R6 R6 K12 ["Components"]
       36 GETTABLEKS                       R6 R6 K13 ["ScriptIconView"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K11 ["Src"]
       43 GETTABLEKS                       R7 R7 K12 ["Components"]
       45 GETTABLEKS                       R7 R7 K14 ["PopUpFrame"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R0 K11 ["Src"]
       52 GETTABLEKS                       R8 R8 K15 ["Util"]
       54 GETTABLEKS                       R8 R8 K16 ["ScriptStatusUtil"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R8 R1 K17 ["UI"]
       59 GETTABLEKS                       R9 R8 K18 ["Pane"]
       61 GETTABLEKS                       R10 R8 K19 ["List"]
       63 GETTABLEKS                       R11 R2 K20 ["PureComponent"]
       65 LOADK                            R13 K21 ["ScriptConversionConsole"]
       66 NAMECALL                         R11 R11 K22 ["extend"]
       68 CALL                             R11 2 1
       69 DUPCLOSURE                       R12 K23 [PROTO_5]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R10
       72 SETTABLEKS                       R12 R11 K24 ["init"]
       74 DUPCLOSURE                       R12 K25 [PROTO_6]
       75 CAPTURE                          VAL R7
       76 SETTABLEKS                       R12 R11 K26 ["buildRows"]
       78 DUPCLOSURE                       R12 K27 [PROTO_7]
       79 SETTABLEKS                       R12 R11 K28 ["didMount"]
       81 DUPCLOSURE                       R12 K29 [PROTO_8]
       82 SETTABLEKS                       R12 R11 K30 ["didUpdate"]
       84 DUPCLOSURE                       R12 K31 [PROTO_9]
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R6
       90 SETTABLEKS                       R12 R11 K32 ["render"]
       92 GETTABLEKS                       R12 R4 K33 ["withContext"]
       94 DUPTABLE                         R13 K36 [{"Localization", "Stylizer"}]
       95 GETTABLEKS                       R14 R4 K34 ["Localization"]
       97 SETTABLEKS                       R14 R13 K34 ["Localization"]
       99 GETTABLEKS                       R14 R4 K35 ["Stylizer"]
      101 SETTABLEKS                       R14 R13 K35 ["Stylizer"]
      103 CALL                             R12 1 1
      104 MOVE                             R13 R11
      105 CALL                             R12 1 1
      106 MOVE                             R11 R12
      107 DUPCLOSURE                       R12 K37 [PROTO_10]
      108 GETTABLEKS                       R13 R3 K38 ["connect"]
      110 MOVE                             R14 R12
      111 CALL                             R13 1 1
      112 MOVE                             R14 R11
      113 CALL                             R13 1 -1
      114 RETURN                           R13 -1
