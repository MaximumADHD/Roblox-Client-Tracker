PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["ToHex"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+4]
        6 LOADK                            R4 K2 ["#"]
        7 MOVE                             R5 R2
        8 CONCAT                           R3 R4 R5
        9 RETURN                           R3 1
       10 LOADK                            R3 K2 ["#"]
       11 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Value"]
        4 GETIMPORT                        R3 K2 [pcall]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CALL                             R3 1 2
        9 JUMPIFNOT                        R3 ; [+4]
       10 LOADK                            R5 K3 ["#"]
       11 MOVE                             R6 R4
       12 CONCAT                           R1 R5 R6
       13 JUMP                             ; [+1]
       14 LOADK                            R1 K3 ["#"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

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
       19 GETIMPORT                        R6 K3 [pcall]
       21 NEWCLOSURE                       R7 P0
       22 CAPTURE                          VAL R5
       23 CALL                             R6 1 2
       24 JUMPIFNOT                        R6 ; [+4]
       25 LOADK                            R8 K4 ["#"]
       26 MOVE                             R9 R7
       27 CONCAT                           R4 R8 R9
       28 JUMP                             ; [+1]
       29 LOADK                            R4 K4 ["#"]
       30 CALL                             R3 1 0
       31 RETURN                           R0 0

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
        9 GETIMPORT                        R8 K2 [pcall]
       11 NEWCLOSURE                       R9 P0
       12 CAPTURE                          VAL R7
       13 CALL                             R8 1 2
       14 JUMPIFNOT                        R8 ; [+4]
       15 LOADK                            R10 K3 ["#"]
       16 MOVE                             R11 R9
       17 CONCAT                           R6 R10 R11
       18 JUMP                             ; [+1]
       19 LOADK                            R6 K3 ["#"]
       20 CALL                             R5 1 2
       21 GETUPVAL                         R7 1
       22 LOADNIL                          R8
       23 CALL                             R7 1 1
       24 GETUPVAL                         R8 1
       25 GETIMPORT                        R9 K5 [tick]
       27 CALL                             R9 0 -1
       28 CALL                             R8 -1 1
       29 GETUPVAL                         R9 2
       30 NEWCLOSURE                       R10 P1
       31 CAPTURE                          VAL R6
       32 CAPTURE                          VAL R0
       33 NEWTABLE                         R11 0 1
       35 GETTABLEKS                       R12 R0 K0 ["Value"]
       37 SETLIST                          R11 R12 1 [1]
       39 CALL                             R9 2 0
       40 NEWCLOSURE                       R9 P2
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R0
       43 NEWCLOSURE                       R10 P3
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R0
       46 NEWCLOSURE                       R11 P4
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R0
       49 NEWCLOSURE                       R12 P5
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R6
       53 NEWCLOSURE                       R13 P6
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R4
       57 NEWCLOSURE                       R14 P7
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R8
       60 JUMPIFNOTEQKNIL                  R3 ; [+2]
       62 LOADB                            R15 0 +1
       63 LOADB                            R15 1
       64 GETUPVAL                         R16 4
       65 GETTABLEKS                       R16 R16 K6 ["createElement"]
       67 GETUPVAL                         R17 5
       68 NEWTABLE                         R18 0 0
       70 DUPTABLE                         R19 K9 [{"Input", "Modal"}]
       71 GETUPVAL                         R20 4
       72 GETTABLEKS                       R20 R20 K6 ["createElement"]
       74 GETUPVAL                         R21 6
       75 NEWTABLE                         R22 8 0
       77 GETTABLEKS                       R23 R0 K10 ["Disabled"]
       79 SETTABLEKS                       R23 R22 K10 ["Disabled"]
       81 GETUPVAL                         R23 7
       82 SETTABLEKS                       R23 R22 K11 ["LeadingComponent"]
       84 DUPTABLE                         R23 K16 [{"BackgroundColor", "Size", "OnClick", "ForwardRef"}]
       85 GETTABLEKS                       R24 R0 K0 ["Value"]
       87 SETTABLEKS                       R24 R23 K12 ["BackgroundColor"]
       89 GETUPVAL                         R24 8
       90 SETTABLEKS                       R24 R23 K13 ["Size"]
       92 SETTABLEKS                       R9 R23 K14 ["OnClick"]
       94 SETTABLEKS                       R7 R23 K15 ["ForwardRef"]
       96 SETTABLEKS                       R23 R22 K17 ["LeadingComponentProps"]
       98 SETTABLEKS                       R12 R22 K18 ["OnFocusLost"]
      100 SETTABLEKS                       R13 R22 K19 ["OnTextChanged"]
      102 GETTABLEKS                       R24 R0 K20 ["AutomaticSize"]
      104 JUMPIFNOT                        R24 ; [+10]
      105 GETIMPORT                        R23 K23 [UDim2.new]
      107 LOADN                            R24 1
      108 LOADN                            R25 0
      109 LOADN                            R26 0
      110 GETTABLEKS                       R28 R0 K25 ["MinimumHeight"]
      112 ORK                              R27 R28 K24 [24]
      113 CALL                             R23 4 1
      114 JUMP                             ; [+5]
      115 GETIMPORT                        R23 K27 [UDim2.fromScale]
      117 LOADN                            R24 1
      118 LOADN                            R25 1
      119 CALL                             R23 2 1
      120 SETTABLEKS                       R23 R22 K13 ["Size"]
      122 SETTABLEKS                       R5 R22 K28 ["Text"]
      124 GETUPVAL                         R23 4
      125 GETTABLEKS                       R23 R23 K29 ["Tag"]
      127 JUMPIFNOT                        R15 ; [+2]
      128 LOADK                            R24 K30 ["PropertyCellError"]
      129 JUMP                             ; [+1]
      130 LOADNIL                          R24
      131 SETTABLE                         R24 R22 R23
      132 CALL                             R20 2 1
      133 SETTABLEKS                       R20 R19 K7 ["Input"]
      135 GETUPVAL                         R20 4
      136 GETTABLEKS                       R20 R20 K6 ["createElement"]
      138 GETUPVAL                         R21 9
      139 DUPTABLE                         R22 K35 [{"Open", "MaxSize", "MinSize", "ObjectRef", "OnFocusLost"}]
      140 SETTABLEKS                       R1 R22 K31 ["Open"]
      142 GETIMPORT                        R23 K37 [Vector2.new]
      144 LOADN                            R24 325
      145 LOADN                            R25 250
      146 CALL                             R23 2 1
      147 SETTABLEKS                       R23 R22 K32 ["MaxSize"]
      149 GETIMPORT                        R23 K37 [Vector2.new]
      151 LOADN                            R24 325
      152 LOADN                            R25 250
      153 CALL                             R23 2 1
      154 SETTABLEKS                       R23 R22 K33 ["MinSize"]
      156 SETTABLEKS                       R7 R22 K34 ["ObjectRef"]
      158 SETTABLEKS                       R11 R22 K18 ["OnFocusLost"]
      160 DUPTABLE                         R23 K39 [{"Container"}]
      161 GETUPVAL                         R24 4
      162 GETTABLEKS                       R24 R24 K6 ["createElement"]
      164 GETUPVAL                         R25 5
      165 NEWTABLE                         R26 1 0
      167 GETUPVAL                         R27 4
      168 GETTABLEKS                       R27 R27 K29 ["Tag"]
      170 LOADK                            R28 K40 ["X-Fit"]
      171 SETTABLE                         R28 R26 R27
      172 DUPTABLE                         R27 K42 [{"ColorPicker"}]
      173 GETUPVAL                         R28 4
      174 GETTABLEKS                       R28 R28 K6 ["createElement"]
      176 GETUPVAL                         R29 10
      177 DUPTABLE                         R30 K45 [{"Size", "Color", "OnColorChanged"}]
      178 GETIMPORT                        R31 K47 [UDim2.fromOffset]
      180 LOADN                            R32 325
      181 LOADN                            R33 225
      182 CALL                             R31 2 1
      183 SETTABLEKS                       R31 R30 K13 ["Size"]
      185 GETTABLEKS                       R31 R0 K0 ["Value"]
      187 SETTABLEKS                       R31 R30 K43 ["Color"]
      189 SETTABLEKS                       R14 R30 K44 ["OnColorChanged"]
      191 CALL                             R28 2 1
      192 SETTABLEKS                       R28 R27 K41 ["ColorPicker"]
      194 CALL                             R24 3 1
      195 SETTABLEKS                       R24 R23 K38 ["Container"]
      197 CALL                             R20 3 1
      198 SETTABLEKS                       R20 R19 K8 ["Modal"]
      200 CALL                             R16 3 -1
      201 RETURN                           R16 -1

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
