PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["ToHex"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R1 K1 [pcall]
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+4]
        7 LOADK                            R4 K2 ["#"]
        8 MOVE                             R5 R2
        9 CONCAT                           R3 R4 R5
       10 RETURN                           R3 1
       11 LOADK                            R3 K2 ["#"]
       12 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Value"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R2
        6 FASTPCALL                        pcall 1 ; [+2]
        7 GETIMPORT                        R3 K2 [pcall]
        9 CALL                             R3 1 2
       10 JUMPIFNOT                        R3 ; [+4]
       11 LOADK                            R5 K3 ["#"]
       12 MOVE                             R6 R4
       13 CONCAT                           R1 R5 R6
       14 JUMP                             ; [+1]
       15 LOADK                            R1 K3 ["#"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["Schema"]
        6 GETTABLEKS                       R0 R0 K1 ["OnOpen"]
        8 JUMPIFNOT                        R0 ; [+6]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K0 ["Schema"]
       12 GETTABLEKS                       R0 R0 K1 ["OnOpen"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["Schema"]
        6 GETTABLEKS                       R0 R0 K1 ["OnClose"]
        8 JUMPIFNOT                        R0 ; [+6]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K0 ["Schema"]
       12 GETTABLEKS                       R0 R0 K1 ["OnClose"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["Schema"]
        6 GETTABLEKS                       R0 R0 K1 ["OnClose"]
        8 JUMPIFNOT                        R0 ; [+6]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K0 ["Schema"]
       12 GETTABLEKS                       R0 R0 K1 ["OnClose"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+11]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["Value"]
        7 JUMPIFEQ                         R2 R3 ; [+7]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K1 ["OnChanged"]
       12 MOVE                             R4 R2
       13 CALL                             R3 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R3 2
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K0 ["Value"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R5
       21 FASTPCALL                        pcall 1 ; [+2]
       22 GETIMPORT                        R6 K3 [pcall]
       24 CALL                             R6 1 2
       25 JUMPIFNOT                        R6 ; [+4]
       26 LOADK                            R8 K4 ["#"]
       27 MOVE                             R9 R7
       28 CONCAT                           R4 R8 R9
       29 JUMP                             ; [+1]
       30 LOADK                            R4 K4 ["#"]
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 0
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETUPVAL                         R2 2
        8 LOADNIL                          R3
        9 CALL                             R2 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 2
       12 LOADK                            R3 K0 ["Error: invalid color"]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Value"]
        3 JUMPIFEQ                         R0 R1 ; [+22]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K3 ["current"]
        8 ORK                              R2 R3 K2 [0]
        9 ADDK                             R1 R2 K1 [0.01]
       10 GETIMPORT                        R2 K5 [tick]
       12 CALL                             R2 0 1
       13 JUMPIFNOTLT                      R1 R2 ; [+12]
       15 GETUPVAL                         R1 1
       16 GETIMPORT                        R2 K5 [tick]
       18 CALL                             R2 0 1
       19 SETTABLEKS                       R2 R1 K3 ["current"]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K6 ["OnChanged"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 0
        4 LOADNIL                          R4
        5 CALL                             R3 1 2
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R7 R0 K0 ["Value"]
        9 NEWCLOSURE                       R9 P0
       10 CAPTURE                          VAL R7
       11 FASTPCALL                        pcall 1 ; [+2]
       12 GETIMPORT                        R8 K2 [pcall]
       14 CALL                             R8 1 2
       15 JUMPIFNOT                        R8 ; [+4]
       16 LOADK                            R10 K3 ["#"]
       17 MOVE                             R11 R9
       18 CONCAT                           R6 R10 R11
       19 JUMP                             ; [+1]
       20 LOADK                            R6 K3 ["#"]
       21 CALL                             R5 1 2
       22 GETUPVAL                         R7 1
       23 LOADNIL                          R8
       24 CALL                             R7 1 1
       25 GETUPVAL                         R8 1
       26 GETIMPORT                        R9 K5 [tick]
       28 CALL                             R9 0 -1
       29 CALL                             R8 -1 1
       30 GETUPVAL                         R9 2
       31 NEWCLOSURE                       R10 P1
       32 CAPTURE                          VAL R6
       33 CAPTURE                          VAL R0
       34 NEWTABLE                         R11 0 1
       36 GETTABLEKS                       R12 R0 K0 ["Value"]
       38 SETLIST                          R11 R12 1 [1]
       40 CALL                             R9 2 0
       41 NEWCLOSURE                       R9 P2
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R0
       44 NEWCLOSURE                       R10 P3
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R0
       47 NEWCLOSURE                       R11 P4
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R0
       50 NEWCLOSURE                       R12 P5
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R6
       54 NEWCLOSURE                       R13 P6
       55 CAPTURE                          UPVAL U3
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R4
       58 NEWCLOSURE                       R14 P7
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R8
       61 JUMPIFNOTEQKNIL                  R3 ; [+2]
       63 LOADB                            R15 0 +1
       64 LOADB                            R15 1
       65 GETUPVAL                         R16 4
       66 GETTABLEKS                       R16 R16 K6 ["createElement"]
       68 GETUPVAL                         R17 5
       69 NEWTABLE                         R18 0 0
       71 DUPTABLE                         R19 K9 [{"Input", "Modal"}]
       72 GETUPVAL                         R20 4
       73 GETTABLEKS                       R20 R20 K6 ["createElement"]
       75 GETUPVAL                         R21 6
       76 NEWTABLE                         R22 8 0
       78 GETTABLEKS                       R23 R0 K10 ["Disabled"]
       80 SETTABLEKS                       R23 R22 K10 ["Disabled"]
       82 GETUPVAL                         R23 7
       83 SETTABLEKS                       R23 R22 K11 ["LeadingComponent"]
       85 DUPTABLE                         R23 K16 [{"BackgroundColor", "Size", "OnClick", "ForwardRef"}]
       86 GETTABLEKS                       R24 R0 K0 ["Value"]
       88 SETTABLEKS                       R24 R23 K12 ["BackgroundColor"]
       90 GETUPVAL                         R24 8
       91 SETTABLEKS                       R24 R23 K13 ["Size"]
       93 SETTABLEKS                       R9 R23 K14 ["OnClick"]
       95 SETTABLEKS                       R7 R23 K15 ["ForwardRef"]
       97 SETTABLEKS                       R23 R22 K17 ["LeadingComponentProps"]
       99 SETTABLEKS                       R12 R22 K18 ["OnFocusLost"]
      101 SETTABLEKS                       R13 R22 K19 ["OnTextChanged"]
      103 GETTABLEKS                       R24 R0 K20 ["AutomaticSize"]
      105 JUMPIFNOT                        R24 ; [+10]
      106 GETIMPORT                        R23 K23 [UDim2.new]
      108 LOADN                            R24 1
      109 LOADN                            R25 0
      110 LOADN                            R26 0
      111 GETTABLEKS                       R28 R0 K25 ["MinimumHeight"]
      113 ORK                              R27 R28 K24 [24]
      114 CALL                             R23 4 1
      115 JUMP                             ; [+5]
      116 GETIMPORT                        R23 K27 [UDim2.fromScale]
      118 LOADN                            R24 1
      119 LOADN                            R25 1
      120 CALL                             R23 2 1
      121 SETTABLEKS                       R23 R22 K13 ["Size"]
      123 SETTABLEKS                       R5 R22 K28 ["Text"]
      125 GETUPVAL                         R23 4
      126 GETTABLEKS                       R23 R23 K29 ["Tag"]
      128 JUMPIFNOT                        R15 ; [+2]
      129 LOADK                            R24 K30 ["PropertyCellError"]
      130 JUMP                             ; [+1]
      131 LOADNIL                          R24
      132 SETTABLE                         R24 R22 R23
      133 CALL                             R20 2 1
      134 SETTABLEKS                       R20 R19 K7 ["Input"]
      136 GETUPVAL                         R20 4
      137 GETTABLEKS                       R20 R20 K6 ["createElement"]
      139 GETUPVAL                         R21 9
      140 DUPTABLE                         R22 K35 [{"Open", "MaxSize", "MinSize", "ObjectRef", "OnFocusLost"}]
      141 SETTABLEKS                       R1 R22 K31 ["Open"]
      143 GETIMPORT                        R23 K37 [Vector2.new]
      145 LOADN                            R24 325
      146 LOADN                            R25 250
      147 CALL                             R23 2 1
      148 SETTABLEKS                       R23 R22 K32 ["MaxSize"]
      150 GETIMPORT                        R23 K37 [Vector2.new]
      152 LOADN                            R24 325
      153 LOADN                            R25 250
      154 CALL                             R23 2 1
      155 SETTABLEKS                       R23 R22 K33 ["MinSize"]
      157 SETTABLEKS                       R7 R22 K34 ["ObjectRef"]
      159 SETTABLEKS                       R11 R22 K18 ["OnFocusLost"]
      161 DUPTABLE                         R23 K39 [{"Container"}]
      162 GETUPVAL                         R24 4
      163 GETTABLEKS                       R24 R24 K6 ["createElement"]
      165 GETUPVAL                         R25 5
      166 NEWTABLE                         R26 1 0
      168 GETUPVAL                         R27 4
      169 GETTABLEKS                       R27 R27 K29 ["Tag"]
      171 LOADK                            R28 K40 ["X-Fit"]
      172 SETTABLE                         R28 R26 R27
      173 DUPTABLE                         R27 K42 [{"ColorPicker"}]
      174 GETUPVAL                         R28 4
      175 GETTABLEKS                       R28 R28 K6 ["createElement"]
      177 GETUPVAL                         R29 10
      178 DUPTABLE                         R30 K45 [{"Size", "Color", "OnColorChanged"}]
      179 GETIMPORT                        R31 K47 [UDim2.fromOffset]
      181 LOADN                            R32 325
      182 LOADN                            R33 225
      183 CALL                             R31 2 1
      184 SETTABLEKS                       R31 R30 K13 ["Size"]
      186 GETTABLEKS                       R31 R0 K0 ["Value"]
      188 SETTABLEKS                       R31 R30 K43 ["Color"]
      190 SETTABLEKS                       R14 R30 K44 ["OnColorChanged"]
      192 CALL                             R28 2 1
      193 SETTABLEKS                       R28 R27 K41 ["ColorPicker"]
      195 CALL                             R24 3 1
      196 SETTABLEKS                       R24 R23 K38 ["Container"]
      198 CALL                             R20 3 1
      199 SETTABLEKS                       R20 R19 K8 ["Modal"]
      201 CALL                             R16 3 -1
      202 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["useState"]
       18 GETTABLEKS                       R3 R1 K8 ["useRef"]
       20 GETTABLEKS                       R4 R1 K9 ["useEffect"]
       22 GETIMPORT                        R5 K4 [require]
       24 GETTABLEKS                       R6 R0 K5 ["Packages"]
       26 GETTABLEKS                       R6 R6 K10 ["Framework"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R5 K11 ["UI"]
       31 GETTABLEKS                       R6 R6 K12 ["ColorPicker"]
       33 GETTABLEKS                       R7 R5 K11 ["UI"]
       35 GETTABLEKS                       R7 R7 K13 ["IconButton"]
       37 GETTABLEKS                       R8 R5 K11 ["UI"]
       39 GETTABLEKS                       R8 R8 K14 ["Pane"]
       41 GETTABLEKS                       R9 R5 K11 ["UI"]
       43 GETTABLEKS                       R9 R9 K15 ["TextInput"]
       45 GETIMPORT                        R10 K4 [require]
       47 GETTABLEKS                       R11 R0 K16 ["Src"]
       49 GETTABLEKS                       R11 R11 K17 ["Util"]
       51 GETTABLEKS                       R11 R11 K18 ["colorFromString"]
       53 CALL                             R10 1 1
       54 GETIMPORT                        R11 K4 [require]
       56 GETTABLEKS                       R12 R0 K16 ["Src"]
       58 GETTABLEKS                       R12 R12 K19 ["Renderers"]
       60 GETTABLEKS                       R12 R12 K20 ["Modal"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K4 [require]
       65 GETTABLEKS                       R13 R0 K16 ["Src"]
       67 GETTABLEKS                       R13 R13 K21 ["Types"]
       69 CALL                             R12 1 1
       70 GETIMPORT                        R13 K4 [require]
       72 GETTABLEKS                       R14 R0 K16 ["Src"]
       74 GETTABLEKS                       R14 R14 K19 ["Renderers"]
       76 GETTABLEKS                       R14 R14 K22 ["RendererTypes"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K4 [require]
       81 GETTABLEKS                       R15 R0 K16 ["Src"]
       83 GETTABLEKS                       R15 R15 K23 ["Resources"]
       85 GETTABLEKS                       R15 R15 K24 ["PluginStyles"]
       87 CALL                             R14 1 1
       88 LOADK                            R17 K25 ["Icon16"]
       89 NAMECALL                         R15 R14 K26 ["GetAttribute"]
       91 CALL                             R15 2 1
       92 DUPCLOSURE                       R16 K27 [PROTO_1]
       93 DUPCLOSURE                       R17 K28 [PROTO_9]
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R6
      105 RETURN                           R17 1
