PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["false"] ; [+3]
        2 LOADB                            R1 0
        3 RETURN                           R1 1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+3]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["PARAMETER_PANE_WIDTH"]
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Enums"]
        3 GETTABLEKS                       R1 R1 K1 ["ControlState"]
        5 GETTABLEKS                       R1 R1 K2 ["Hover"]
        7 JUMPIFEQ                         R0 R1 ; [+10]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["Enums"]
       12 GETTABLEKS                       R1 R1 K1 ["ControlState"]
       14 GETTABLEKS                       R1 R1 K3 ["Pressed"]
       16 JUMPIFNOTEQ                      R0 R1 ; [+14]
       18 GETUPVAL                         R1 1
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K0 ["Enums"]
       22 GETTABLEKS                       R2 R2 K1 ["ControlState"]
       24 GETTABLEKS                       R2 R2 K2 ["Hover"]
       26 CALL                             R1 1 0
       27 GETUPVAL                         R1 2
       28 MOVE                             R2 R0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R1 3
       32 JUMPIF                           R1 ; [+18]
       33 GETUPVAL                         R1 1
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K0 ["Enums"]
       37 GETTABLEKS                       R2 R2 K1 ["ControlState"]
       39 GETTABLEKS                       R2 R2 K4 ["Default"]
       41 CALL                             R1 1 0
       42 GETUPVAL                         R1 2
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K0 ["Enums"]
       46 GETTABLEKS                       R2 R2 K1 ["ControlState"]
       48 GETTABLEKS                       R2 R2 K4 ["Default"]
       50 CALL                             R1 1 0
       51 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R1 K0 ["X"]
        3 GETUPVAL                         R5 1
        4 SUB                              R3 R4 R5
        5 CALL                             R2 1 0
        6 GETUPVAL                         R2 2
        7 LOADB                            R3 1
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 3
       10 GETUPVAL                         R3 4
       11 GETTABLEKS                       R3 R3 K1 ["Enums"]
       13 GETTABLEKS                       R3 R3 K2 ["ControlState"]
       15 GETTABLEKS                       R3 R3 K3 ["Hover"]
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R1 K0 ["X"]
        2 GETUPVAL                         R4 0
        3 SUB                              R2 R3 R4
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K1 ["PARAMETER_PANE_MIN_WIDTH"]
        8 FASTCALL2                        MATH_MAX R5 R2 ; [+4]
       10 MOVE                             R6 R2
       11 GETIMPORT                        R4 K4 [math.max]
       13 CALL                             R4 2 1
       14 CALL                             R3 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Enums"]
        4 GETTABLEKS                       R3 R3 K1 ["ControlState"]
        6 GETTABLEKS                       R3 R3 K2 ["Default"]
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 2
       10 LOADB                            R3 0
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 3
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K0 ["Enums"]
       16 GETTABLEKS                       R3 R3 K1 ["ControlState"]
       18 GETTABLEKS                       R3 R3 K2 ["Default"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setFrame"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["canvasFrameRef"]
        6 GETTABLEKS                       R1 R1 K2 ["current"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R3 K2 [string.lower]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 GETIMPORT                        R4 K2 [string.lower]
        6 MOVE                             R5 R1
        7 CALL                             R4 1 1
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R1
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+72]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+70]
        5 NEWTABLE                         R0 0 0
        7 GETUPVAL                         R1 1
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
       13 MOVE                             R7 R0
       14 MOVE                             R8 R4
       15 GETIMPORT                        R6 K2 [table.insert]
       17 CALL                             R6 2 0
       18 FORGLOOP                         R1 1 ; [-8]
       20 GETIMPORT                        R1 K4 [table.sort]
       22 MOVE                             R2 R0
       23 DUPCLOSURE                       R3 K5 [PROTO_7]
       24 CALL                             R1 2 0
       25 NEWTABLE                         R1 0 0
       27 MOVE                             R2 R0
       28 LOADNIL                          R3
       29 LOADNIL                          R4
       30 FORGPREP                         R2
       31 DUPTABLE                         R7 K14 [{"inputPinIds", "outputPinToConnectionMap", "inputPinToConnectionMap", "inputLabelPinToConnectionMap", "className", "id", "name", "nodeType"}]
       32 NEWTABLE                         R8 0 0
       34 SETTABLEKS                       R8 R7 K6 ["inputPinIds"]
       36 NEWTABLE                         R8 0 0
       38 SETTABLEKS                       R8 R7 K7 ["outputPinToConnectionMap"]
       40 NEWTABLE                         R8 0 0
       42 SETTABLEKS                       R8 R7 K8 ["inputPinToConnectionMap"]
       44 NEWTABLE                         R8 0 0
       46 SETTABLEKS                       R8 R7 K9 ["inputLabelPinToConnectionMap"]
       48 GETUPVAL                         R8 2
       49 GETTABLEKS                       R8 R8 K15 ["PARAMETER_NODE_CLASSNAME"]
       51 SETTABLEKS                       R8 R7 K10 ["className"]
       53 SETTABLEKS                       R6 R7 K11 ["id"]
       55 SETTABLEKS                       R6 R7 K12 ["name"]
       57 GETUPVAL                         R9 1
       58 GETTABLE                         R8 R9 R6
       59 SETTABLEKS                       R8 R7 K13 ["nodeType"]
       61 GETUPVAL                         R8 3
       62 GETTABLEKS                       R8 R8 K16 ["createElement"]
       64 GETUPVAL                         R9 4
       65 DUPTABLE                         R10 K19 [{"LayoutOrder", "node"}]
       66 SETTABLEKS                       R5 R10 K17 ["LayoutOrder"]
       68 SETTABLEKS                       R7 R10 K18 ["node"]
       70 CALL                             R8 2 1
       71 SETTABLE                         R8 R1 R6
       72 FORGLOOP                         R2 2 ; [-42]
       74 RETURN                           R1 1
       75 GETUPVAL                         R0 5
       76 JUMPIF                           R0 ; [+3]
       77 NEWTABLE                         R0 0 0
       79 RETURN                           R0 1
       80 NEWTABLE                         R0 0 0
       82 NEWTABLE                         R1 0 0
       84 NEWTABLE                         R2 0 0
       86 GETUPVAL                         R3 5
       87 LOADNIL                          R4
       88 LOADNIL                          R5
       89 FORGPREP                         R3
       90 GETTABLEKS                       R8 R7 K10 ["className"]
       92 JUMPIFNOTEQKS                    R8 K20 ["Parameter"] ; [+39]
       94 GETUPVAL                         R8 6
       95 CALL                             R8 0 1
       96 JUMPIFNOT                        R8 ; [+7]
       97 GETTABLEKS                       R8 R7 K13 ["nodeType"]
       99 GETUPVAL                         R9 2
      100 GETTABLEKS                       R9 R9 K21 ["EXPRESSION_NODE_CLASSNAME"]
      102 JUMPIFEQ                         R8 R9 ; [+29]
      104 GETTABLEKS                       R8 R7 K12 ["name"]
      106 JUMPIFEQKNIL                     R8 ; [+25]
      108 GETTABLE                         R9 R0 R8
      109 JUMPIF                           R9 ; [+22]
      110 GETTABLEKS                       R10 R7 K13 ["nodeType"]
      112 FASTCALL1                        TYPE R10 ; [+2]
      113 GETIMPORT                        R9 K23 [type]
      115 CALL                             R9 1 1
      116 JUMPIFNOTEQKS                    R9 K24 ["string"] ; [+15]
      118 LOADB                            R9 1
      119 SETTABLE                         R9 R0 R8
      120 GETIMPORT                        R9 K26 [string.lower]
      122 MOVE                             R10 R8
      123 CALL                             R9 1 1
      124 SETTABLE                         R9 R2 R7
      125 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
      127 MOVE                             R10 R1
      128 MOVE                             R11 R7
      129 GETIMPORT                        R9 K2 [table.insert]
      131 CALL                             R9 2 0
      132 FORGLOOP                         R3 2 ; [-43]
      134 GETIMPORT                        R3 K4 [table.sort]
      136 MOVE                             R4 R1
      137 NEWCLOSURE                       R5 P1
      138 CAPTURE                          VAL R2
      139 CALL                             R3 2 0
      140 NEWTABLE                         R3 0 0
      142 MOVE                             R4 R1
      143 LOADNIL                          R5
      144 LOADNIL                          R6
      145 FORGPREP                         R4
      146 GETTABLEKS                       R9 R8 K11 ["id"]
      148 GETUPVAL                         R10 3
      149 GETTABLEKS                       R10 R10 K16 ["createElement"]
      151 GETUPVAL                         R11 4
      152 DUPTABLE                         R12 K19 [{"LayoutOrder", "node"}]
      153 SETTABLEKS                       R7 R12 K17 ["LayoutOrder"]
      155 SETTABLEKS                       R8 R12 K18 ["node"]
      157 CALL                             R10 2 1
      158 SETTABLE                         R10 R3 R9
      159 FORGLOOP                         R4 2 ; [-14]
      161 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setRightEdge"]
        3 LOADN                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setRightEdge"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["PARAMETER_PANE_POSITION_OFFSET"]
        6 GETTABLEKS                       R2 R2 K2 ["X"]
        8 GETTABLEKS                       R2 R2 K3 ["Offset"]
       10 GETUPVAL                         R3 2
       11 ADD                              R1 R2 R3
       12 CALL                             R0 1 0
       13 NEWCLOSURE                       R0 P0
       14 CAPTURE                          UPVAL U0
       15 RETURN                           R0 1

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+22]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+12]
        4 GETIMPORT                        R1 K3 [Enum.AutomaticSize.None]
        6 SETTABLEKS                       R1 R0 K1 ["AutomaticSize"]
        8 GETIMPORT                        R1 K6 [UDim2.fromScale]
       10 LOADN                            R2 1
       11 LOADN                            R3 1
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K7 ["Size"]
       15 RETURN                           R0 0
       16 GETIMPORT                        R1 K6 [UDim2.fromScale]
       18 LOADN                            R2 1
       19 LOADN                            R3 0
       20 CALL                             R1 2 1
       21 SETTABLEKS                       R1 R0 K7 ["Size"]
       23 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETIMPORT                        R0 K2 [Vector2.new]
        4 LOADK                            R1 K3 [Infinity]
        5 LOADK                            R2 K3 [Infinity]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1
        8 GETIMPORT                        R0 K2 [Vector2.new]
       10 LOADK                            R1 K3 [Infinity]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K5 ["Y"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K6 ["PARAMETER_PANE_POSITION_OFFSET"]
       17 GETTABLEKS                       R5 R5 K5 ["Y"]
       19 GETTABLEKS                       R5 R5 K7 ["Offset"]
       21 SUB                              R3 R4 R5
       22 SUBK                             R2 R3 K4 [8]
       23 CALL                             R0 2 -1
       24 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["useSignalState"]
       10 GETTABLEKS                       R3 R1 K3 ["nodePayloadDispatcher"]
       12 GETTABLEKS                       R3 R3 K4 ["observeMap"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["useContext"]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K1 ["Context"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K0 ["useContext"]
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K1 ["Context"]
       28 CALL                             R4 1 1
       29 GETUPVAL                         R5 5
       30 GETTABLEKS                       R5 R5 K5 ["createNextOrder"]
       32 CALL                             R5 0 1
       33 GETUPVAL                         R6 6
       34 GETTABLEKS                       R6 R6 K6 ["Hooks"]
       36 GETTABLEKS                       R6 R6 K7 ["useTokens"]
       38 CALL                             R6 0 1
       39 GETUPVAL                         R8 7
       40 CALL                             R8 0 1
       41 JUMPIFNOT                        R8 ; [+7]
       42 GETUPVAL                         R7 2
       43 GETTABLEKS                       R7 R7 K2 ["useSignalState"]
       45 GETTABLEKS                       R8 R3 K8 ["observeParameters"]
       47 CALL                             R7 1 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R7
       50 GETUPVAL                         R8 2
       51 GETTABLEKS                       R8 R8 K2 ["useSignalState"]
       53 GETTABLEKS                       R9 R3 K9 ["observeParameterDefinitions"]
       55 JUMPIF                           R9 ; [+1]
       56 GETUPVAL                         R9 8
       57 CALL                             R8 1 1
       58 GETUPVAL                         R9 9
       59 LOADK                            R10 K10 ["ParameterPaneExpanded"]
       60 LOADB                            R11 1
       61 GETIMPORT                        R12 K12 [tostring]
       63 DUPCLOSURE                       R13 K13 [PROTO_0]
       64 CALL                             R9 4 2
       65 GETUPVAL                         R11 9
       66 LOADK                            R12 K14 ["ParameterPaneWidth"]
       67 GETUPVAL                         R13 10
       68 GETTABLEKS                       R13 R13 K15 ["PARAMETER_PANE_WIDTH"]
       70 GETIMPORT                        R14 K12 [tostring]
       72 DUPCLOSURE                       R15 K16 [PROTO_1]
       73 CAPTURE                          UPVAL U10
       74 CALL                             R11 4 2
       75 GETUPVAL                         R13 11
       76 LOADK                            R14 K17 ["SizeEW"]
       77 CALL                             R13 1 1
       78 GETUPVAL                         R14 0
       79 GETTABLEKS                       R14 R14 K18 ["useState"]
       81 LOADN                            R15 0
       82 CALL                             R14 1 2
       83 GETUPVAL                         R16 0
       84 GETTABLEKS                       R16 R16 K18 ["useState"]
       86 LOADB                            R17 0
       87 CALL                             R16 1 2
       88 GETUPVAL                         R18 0
       89 GETTABLEKS                       R18 R18 K18 ["useState"]
       91 GETUPVAL                         R19 6
       92 GETTABLEKS                       R19 R19 K19 ["Enums"]
       94 GETTABLEKS                       R19 R19 K20 ["ControlState"]
       96 GETTABLEKS                       R19 R19 K21 ["Default"]
       98 CALL                             R18 1 2
       99 GETUPVAL                         R20 0
      100 GETTABLEKS                       R20 R20 K22 ["useCallback"]
      102 NEWCLOSURE                       R21 P2
      103 CAPTURE                          UPVAL U6
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R19
      106 CAPTURE                          VAL R16
      107 NEWTABLE                         R22 0 3
      109 MOVE                             R23 R19
      110 MOVE                             R24 R13
      111 MOVE                             R25 R16
      112 SETLIST                          R22 R23 3 [1]
      114 CALL                             R20 2 1
      115 GETUPVAL                         R21 0
      116 GETTABLEKS                       R21 R21 K22 ["useCallback"]
      118 NEWCLOSURE                       R22 P3
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R17
      122 CAPTURE                          VAL R13
      123 CAPTURE                          UPVAL U6
      124 NEWTABLE                         R23 0 4
      126 MOVE                             R24 R15
      127 MOVE                             R25 R17
      128 MOVE                             R26 R13
      129 MOVE                             R27 R11
      130 SETLIST                          R23 R24 4 [1]
      132 CALL                             R21 2 1
      133 GETUPVAL                         R22 0
      134 GETTABLEKS                       R22 R22 K22 ["useCallback"]
      136 NEWCLOSURE                       R23 P4
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R12
      139 CAPTURE                          UPVAL U10
      140 NEWTABLE                         R24 0 2
      142 MOVE                             R25 R14
      143 MOVE                             R26 R12
      144 SETLIST                          R24 R25 2 [1]
      146 CALL                             R22 2 1
      147 GETUPVAL                         R23 0
      148 GETTABLEKS                       R23 R23 K22 ["useCallback"]
      150 NEWCLOSURE                       R24 P5
      151 CAPTURE                          VAL R13
      152 CAPTURE                          UPVAL U6
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R19
      155 NEWTABLE                         R25 0 3
      157 MOVE                             R26 R17
      158 MOVE                             R27 R19
      159 MOVE                             R28 R13
      160 SETLIST                          R25 R26 3 [1]
      162 CALL                             R23 2 1
      163 LOADB                            R24 1
      164 GETUPVAL                         R25 6
      165 GETTABLEKS                       R25 R25 K19 ["Enums"]
      167 GETTABLEKS                       R25 R25 K20 ["ControlState"]
      169 GETTABLEKS                       R25 R25 K23 ["Hover"]
      171 JUMPIFEQ                         R18 R25 ; [+12]
      173 GETUPVAL                         R25 6
      174 GETTABLEKS                       R25 R25 K19 ["Enums"]
      176 GETTABLEKS                       R25 R25 K20 ["ControlState"]
      178 GETTABLEKS                       R25 R25 K24 ["Pressed"]
      180 JUMPIFEQ                         R18 R25 ; [+2]
      182 LOADB                            R24 0 +1
      183 LOADB                            R24 1
      184 JUMPIFNOT                        R24 ; [+28]
      185 GETIMPORT                        R25 K27 [NumberSequence.new]
      187 NEWTABLE                         R26 0 4
      189 GETIMPORT                        R27 K29 [NumberSequenceKeypoint.new]
      191 LOADN                            R28 0
      192 LOADN                            R29 1
      193 CALL                             R27 2 1
      194 GETIMPORT                        R28 K29 [NumberSequenceKeypoint.new]
      196 LOADK                            R29 K30 [0.5]
      197 LOADK                            R30 K31 [0.25]
      198 CALL                             R28 2 1
      199 GETIMPORT                        R29 K29 [NumberSequenceKeypoint.new]
      201 LOADK                            R30 K32 [0.5001]
      202 LOADN                            R31 1
      203 CALL                             R29 2 1
      204 GETIMPORT                        R30 K29 [NumberSequenceKeypoint.new]
      206 LOADN                            R31 1
      207 LOADN                            R32 1
      208 CALL                             R30 2 -1
      209 SETLIST                          R26 R27 -1 [1]
      211 CALL                             R25 1 1
      212 JUMP                             ; [+4]
      213 GETIMPORT                        R25 K27 [NumberSequence.new]
      215 LOADN                            R26 1
      216 CALL                             R25 1 1
      217 GETUPVAL                         R26 12
      218 CALL                             R26 0 1
      219 GETUPVAL                         R27 0
      220 GETTABLEKS                       R27 R27 K33 ["useEffect"]
      222 NEWCLOSURE                       R28 P6
      223 CAPTURE                          VAL R26
      224 CAPTURE                          VAL R0
      225 NEWTABLE                         R29 0 2
      227 GETTABLEKS                       R30 R26 K34 ["setFrame"]
      229 GETTABLEKS                       R31 R0 K35 ["canvasFrameRef"]
      231 GETTABLEKS                       R31 R31 K36 ["current"]
      233 SETLIST                          R29 R30 2 [1]
      235 CALL                             R27 2 0
      236 GETUPVAL                         R27 0
      237 GETTABLEKS                       R27 R27 K37 ["useMemo"]
      239 NEWCLOSURE                       R28 P7
      240 CAPTURE                          UPVAL U13
      241 CAPTURE                          VAL R8
      242 CAPTURE                          UPVAL U14
      243 CAPTURE                          UPVAL U0
      244 CAPTURE                          UPVAL U15
      245 CAPTURE                          VAL R2
      246 CAPTURE                          UPVAL U16
      247 NEWTABLE                         R29 0 3
      249 MOVE                             R30 R2
      250 MOVE                             R31 R7
      251 MOVE                             R32 R8
      252 SETLIST                          R29 R30 3 [1]
      254 CALL                             R27 2 1
      255 GETUPVAL                         R28 6
      256 GETTABLEKS                       R28 R28 K6 ["Hooks"]
      258 GETTABLEKS                       R28 R28 K38 ["useScaledValue"]
      260 MOVE                             R29 R11
      261 CALL                             R28 1 1
      262 GETIMPORT                        R29 K41 [UDim2.fromOffset]
      264 MOVE                             R30 R28
      265 LOADN                            R31 0
      266 CALL                             R29 2 1
      267 GETUPVAL                         R30 0
      268 GETTABLEKS                       R30 R30 K33 ["useEffect"]
      270 NEWCLOSURE                       R31 P8
      271 CAPTURE                          VAL R4
      272 CAPTURE                          UPVAL U10
      273 CAPTURE                          VAL R28
      274 NEWTABLE                         R32 0 2
      276 MOVE                             R33 R4
      277 MOVE                             R34 R28
      278 SETLIST                          R32 R33 2 [1]
      280 CALL                             R30 2 0
      281 GETIMPORT                        R31 K43 [next]
      283 MOVE                             R32 R27
      284 CALL                             R31 1 1
      285 JUMPIFNOTEQKNIL                  R31 ; [+2]
      287 LOADB                            R30 0 +1
      288 LOADB                            R30 1
      289 GETUPVAL                         R31 0
      290 GETTABLEKS                       R31 R31 K22 ["useCallback"]
      292 DUPCLOSURE                       R32 K44 [PROTO_12]
      293 CAPTURE                          UPVAL U17
      294 NEWTABLE                         R33 0 0
      296 CALL                             R31 2 1
      297 GETUPVAL                         R32 2
      298 GETTABLEKS                       R32 R32 K2 ["useSignalState"]
      300 GETTABLEKS                       R33 R26 K45 ["observeAbsoluteSize"]
      302 CALL                             R32 1 1
      303 GETUPVAL                         R33 0
      304 GETTABLEKS                       R33 R33 K37 ["useMemo"]
      306 NEWCLOSURE                       R34 P10
      307 CAPTURE                          VAL R32
      308 CAPTURE                          UPVAL U10
      309 NEWTABLE                         R35 0 1
      311 MOVE                             R36 R32
      312 SETLIST                          R35 R36 1 [1]
      314 CALL                             R33 2 1
      315 GETUPVAL                         R34 0
      316 GETTABLEKS                       R34 R34 K46 ["createElement"]
      318 GETUPVAL                         R35 6
      319 GETTABLEKS                       R35 R35 K47 ["View"]
      321 DUPTABLE                         R36 K54 [{["tag"] = "auto-y", ["Size"], ["Position"], ["ZIndex"], ["stateLayer"]}]
      322 SETTABLEKS                       R29 R36 K50 ["Size"]
      324 GETUPVAL                         R37 10
      325 GETTABLEKS                       R37 R37 K55 ["PARAMETER_PANE_POSITION_OFFSET"]
      327 SETTABLEKS                       R37 R36 K51 ["Position"]
      329 GETTABLEKS                       R37 R0 K52 ["ZIndex"]
      331 SETTABLEKS                       R37 R36 K52 ["ZIndex"]
      333 DUPTABLE                         R37 K57 [{"affordance"}]
      334 GETUPVAL                         R38 6
      335 GETTABLEKS                       R38 R38 K19 ["Enums"]
      337 GETTABLEKS                       R38 R38 K58 ["StateLayerAffordance"]
      339 GETTABLEKS                       R38 R38 K59 ["None"]
      341 SETTABLEKS                       R38 R37 K56 ["affordance"]
      343 SETTABLEKS                       R37 R36 K53 ["stateLayer"]
      345 DUPTABLE                         R37 K62 [{"Content", "ResizeBarRight"}]
      346 GETUPVAL                         R38 0
      347 GETTABLEKS                       R38 R38 K46 ["createElement"]
      349 GETUPVAL                         R39 6
      350 GETTABLEKS                       R39 R39 K47 ["View"]
      352 DUPTABLE                         R40 K65 [{["tag"] = "col align-x-center gap-xsmall auto-y padding-bottom-small stroke-muted radius-small bg-surface-200 size-full-0", ["stateLayer"], ["sizeConstraint"]}]
      353 DUPTABLE                         R41 K57 [{"affordance"}]
      354 GETUPVAL                         R42 6
      355 GETTABLEKS                       R42 R42 K19 ["Enums"]
      357 GETTABLEKS                       R42 R42 K58 ["StateLayerAffordance"]
      359 GETTABLEKS                       R42 R42 K59 ["None"]
      361 SETTABLEKS                       R42 R41 K56 ["affordance"]
      363 SETTABLEKS                       R41 R40 K53 ["stateLayer"]
      365 DUPTABLE                         R41 K67 [{"MaxSize"}]
      366 SETTABLEKS                       R33 R41 K66 ["MaxSize"]
      368 SETTABLEKS                       R41 R40 K64 ["sizeConstraint"]
      370 DUPTABLE                         R41 K70 [{"ParameterPaneHeader", "ParameterPaneScrollView"}]
      371 GETUPVAL                         R42 0
      372 GETTABLEKS                       R42 R42 K46 ["createElement"]
      374 GETUPVAL                         R43 18
      375 DUPTABLE                         R44 K75 [{"LayoutOrder", "canExpand", "expanded", "setExpanded"}]
      376 MOVE                             R45 R5
      377 CALL                             R45 0 1
      378 SETTABLEKS                       R45 R44 K71 ["LayoutOrder"]
      380 SETTABLEKS                       R30 R44 K72 ["canExpand"]
      382 SETTABLEKS                       R9 R44 K73 ["expanded"]
      384 SETTABLEKS                       R10 R44 K74 ["setExpanded"]
      386 CALL                             R42 2 1
      387 SETTABLEKS                       R42 R41 K68 ["ParameterPaneHeader"]
      389 JUMPIFNOT                        R9 ; [+112]
      390 GETUPVAL                         R42 0
      391 GETTABLEKS                       R42 R42 K46 ["createElement"]
      393 GETUPVAL                         R43 6
      394 GETTABLEKS                       R43 R43 K76 ["ScrollView"]
      396 DUPTABLE                         R44 K83 [{["tag"], ["AutomaticSize"], ["scroll"], ["scrollingFrameRef"], ["testId"] = "ParameterPane-ScrollView", ["Visible"], ["LayoutOrder"]}]
      397 NEWTABLE                         R45 2 0
      399 LOADB                            R46 1
      400 SETTABLEKS                       R46 R45 K84 ["fill size-full-0 auto-y"]
      402 GETUPVAL                         R46 17
      403 CALL                             R46 0 1
      404 SETTABLEKS                       R46 R45 K85 ["padding-right-small"]
      406 SETTABLEKS                       R45 R44 K48 ["tag"]
      408 GETIMPORT                        R45 K88 [Enum.AutomaticSize.Y]
      410 SETTABLEKS                       R45 R44 K77 ["AutomaticSize"]
      412 DUPTABLE                         R45 K93 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "scrollBarVisibility", "ScrollingDirection"}]
      413 GETIMPORT                        R46 K41 [UDim2.fromOffset]
      415 LOADN                            R47 0
      416 LOADN                            R48 0
      417 CALL                             R46 2 1
      418 SETTABLEKS                       R46 R45 K89 ["CanvasSize"]
      420 GETIMPORT                        R46 K88 [Enum.AutomaticSize.Y]
      422 SETTABLEKS                       R46 R45 K77 ["AutomaticSize"]
      424 GETIMPORT                        R46 K88 [Enum.AutomaticSize.Y]
      426 SETTABLEKS                       R46 R45 K90 ["AutomaticCanvasSize"]
      428 GETUPVAL                         R47 17
      429 CALL                             R47 0 1
      430 JUMPIFNOT                        R47 ; [+8]
      431 GETUPVAL                         R46 6
      432 GETTABLEKS                       R46 R46 K19 ["Enums"]
      434 GETTABLEKS                       R46 R46 K94 ["Visibility"]
      436 GETTABLEKS                       R46 R46 K95 ["Always"]
      438 JUMP                             ; [+7]
      439 GETUPVAL                         R46 6
      440 GETTABLEKS                       R46 R46 K19 ["Enums"]
      442 GETTABLEKS                       R46 R46 K94 ["Visibility"]
      444 GETTABLEKS                       R46 R46 K96 ["Auto"]
      446 SETTABLEKS                       R46 R45 K91 ["scrollBarVisibility"]
      448 GETIMPORT                        R46 K97 [Enum.ScrollingDirection.Y]
      450 SETTABLEKS                       R46 R45 K92 ["ScrollingDirection"]
      452 SETTABLEKS                       R45 R44 K78 ["scroll"]
      454 SETTABLEKS                       R31 R44 K79 ["scrollingFrameRef"]
      456 SETTABLEKS                       R30 R44 K82 ["Visible"]
      458 MOVE                             R45 R5
      459 CALL                             R45 0 1
      460 SETTABLEKS                       R45 R44 K71 ["LayoutOrder"]
      462 DUPTABLE                         R45 K99 [{"ParameterNodeItemContainer"}]
      463 GETUPVAL                         R46 0
      464 GETTABLEKS                       R46 R46 K46 ["createElement"]
      466 GETUPVAL                         R47 6
      467 GETTABLEKS                       R47 R47 K47 ["View"]
      469 DUPTABLE                         R48 K100 [{"tag", "Size"}]
      470 GETUPVAL                         R50 17
      471 CALL                             R50 0 1
      472 JUMPIFNOT                        R50 ; [+2]
      473 LOADK                            R49 K101 ["col auto-y"]
      474 JUMP                             ; [+1]
      475 LOADK                            R49 K102 ["col size-full-0 auto-y"]
      476 SETTABLEKS                       R49 R48 K48 ["tag"]
      478 GETUPVAL                         R50 17
      479 CALL                             R50 0 1
      480 JUMPIFNOT                        R50 ; [+12]
      481 GETIMPORT                        R49 K103 [UDim2.new]
      483 LOADN                            R50 1
      484 GETTABLEKS                       R52 R6 K50 ["Size"]
      486 GETTABLEKS                       R52 R52 K104 ["Size_150"]
      488 MINUS                            R51 R52
      489 LOADN                            R52 0
      490 LOADN                            R53 0
      491 CALL                             R49 4 1
      492 JUMP                             ; [+1]
      493 LOADNIL                          R49
      494 SETTABLEKS                       R49 R48 K50 ["Size"]
      496 MOVE                             R49 R27
      497 CALL                             R46 3 1
      498 SETTABLEKS                       R46 R45 K98 ["ParameterNodeItemContainer"]
      500 CALL                             R42 3 1
      501 JUMP                             ; [+1]
      502 LOADNIL                          R42
      503 SETTABLEKS                       R42 R41 K69 ["ParameterPaneScrollView"]
      505 CALL                             R38 3 1
      506 SETTABLEKS                       R38 R37 K60 ["Content"]
      508 GETUPVAL                         R38 0
      509 GETTABLEKS                       R38 R38 K46 ["createElement"]
      511 GETUPVAL                         R39 6
      512 GETTABLEKS                       R39 R39 K47 ["View"]
      514 DUPTABLE                         R40 K107 [{"backgroundStyle", "Size", "Position", "onStateChanged", "stateLayer"}]
      515 GETTABLEKS                       R41 R6 K108 ["Color"]
      517 GETTABLEKS                       R41 R41 K109 ["Stroke"]
      519 GETTABLEKS                       R41 R41 K21 ["Default"]
      521 SETTABLEKS                       R41 R40 K105 ["backgroundStyle"]
      523 GETIMPORT                        R41 K103 [UDim2.new]
      525 LOADN                            R42 0
      526 LOADN                            R43 10
      527 LOADN                            R44 1
      528 LOADN                            R45 0
      529 CALL                             R41 4 1
      530 SETTABLEKS                       R41 R40 K50 ["Size"]
      532 GETIMPORT                        R41 K103 [UDim2.new]
      534 LOADN                            R42 1
      535 LOADN                            R43 -5
      536 LOADN                            R44 0
      537 LOADN                            R45 0
      538 CALL                             R41 4 1
      539 SETTABLEKS                       R41 R40 K51 ["Position"]
      541 SETTABLEKS                       R20 R40 K106 ["onStateChanged"]
      543 DUPTABLE                         R41 K57 [{"affordance"}]
      544 GETUPVAL                         R42 6
      545 GETTABLEKS                       R42 R42 K19 ["Enums"]
      547 GETTABLEKS                       R42 R42 K58 ["StateLayerAffordance"]
      549 GETTABLEKS                       R42 R42 K59 ["None"]
      551 SETTABLEKS                       R42 R41 K56 ["affordance"]
      553 SETTABLEKS                       R41 R40 K53 ["stateLayer"]
      555 DUPTABLE                         R41 K112 [{"Gradient", "DragDetector"}]
      556 GETUPVAL                         R42 0
      557 GETTABLEKS                       R42 R42 K46 ["createElement"]
      559 LOADK                            R43 K113 ["UIGradient"]
      560 DUPTABLE                         R44 K115 [{"Transparency"}]
      561 SETTABLEKS                       R25 R44 K114 ["Transparency"]
      563 CALL                             R42 2 1
      564 SETTABLEKS                       R42 R41 K110 ["Gradient"]
      566 GETUPVAL                         R42 0
      567 GETTABLEKS                       R42 R42 K46 ["createElement"]
      569 LOADK                            R43 K116 ["UIDragDetector"]
      570 NEWTABLE                         R44 8 0
      572 GETIMPORT                        R45 K119 [Enum.UIDragDetectorDragStyle.Scriptable]
      574 SETTABLEKS                       R45 R44 K120 ["DragStyle"]
      576 GETTABLEKS                       R45 R0 K35 ["canvasFrameRef"]
      578 GETTABLEKS                       R45 R45 K36 ["current"]
      580 SETTABLEKS                       R45 R44 K121 ["ReferenceUIInstance"]
      582 GETUPVAL                         R45 0
      583 GETTABLEKS                       R45 R45 K122 ["Event"]
      585 GETTABLEKS                       R45 R45 K123 ["DragStart"]
      587 SETTABLE                         R21 R44 R45
      588 GETUPVAL                         R45 0
      589 GETTABLEKS                       R45 R45 K122 ["Event"]
      591 GETTABLEKS                       R45 R45 K124 ["DragContinue"]
      593 SETTABLE                         R22 R44 R45
      594 GETUPVAL                         R45 0
      595 GETTABLEKS                       R45 R45 K122 ["Event"]
      597 GETTABLEKS                       R45 R45 K125 ["DragEnd"]
      599 SETTABLE                         R23 R44 R45
      600 CALL                             R42 2 1
      601 SETTABLEKS                       R42 R41 K111 ["DragDetector"]
      603 CALL                             R38 3 1
      604 SETTABLEKS                       R38 R37 K61 ["ResizeBarRight"]
      606 CALL                             R34 3 -1
      607 RETURN                           R34 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Components"]
       23 GETTABLEKS                       R4 R4 K10 ["GraphContext"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["NodeViewTypes"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K9 ["Components"]
       35 GETTABLEKS                       R6 R6 K12 ["ParameterContext"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K9 ["Components"]
       42 GETTABLEKS                       R7 R7 K13 ["ParameterPaneBoundsContext"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETIMPORT                        R8 K1 [script]
       49 GETTABLEKS                       R8 R8 K6 ["Constants"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETIMPORT                        R9 K1 [script]
       56 GETTABLEKS                       R9 R9 K14 ["ParameterPaneHeader"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETIMPORT                        R10 K1 [script]
       63 GETTABLEKS                       R10 R10 K15 ["ParameterPaneItem"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K7 ["Parent"]
       70 GETTABLEKS                       R11 R11 K16 ["React"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETTABLEKS                       R12 R0 K7 ["Parent"]
       77 GETTABLEKS                       R12 R12 K17 ["ReactUtils"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K5 [require]
       82 GETTABLEKS                       R13 R0 K7 ["Parent"]
       84 GETTABLEKS                       R13 R13 K18 ["SignalsReact"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R14 R0 K7 ["Parent"]
       91 GETTABLEKS                       R14 R14 K19 ["SignalsUtils"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K5 [require]
       96 GETTABLEKS                       R15 R0 K20 ["Hooks"]
       98 GETTABLEKS                       R15 R15 K21 ["useAbsoluteSize"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K5 [require]
      103 GETTABLEKS                       R16 R0 K20 ["Hooks"]
      105 GETTABLEKS                       R16 R16 K22 ["useOnStateChangedCursor"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K5 [require]
      110 GETTABLEKS                       R17 R0 K20 ["Hooks"]
      112 GETTABLEKS                       R17 R17 K23 ["usePluginSetting"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K5 [require]
      117 GETTABLEKS                       R18 R0 K24 ["Flags"]
      119 GETTABLEKS                       R18 R18 K25 ["getFFlagAnimGraphUIDisallowParameterNodeDeletionOnNodeDelete"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K5 [require]
      124 GETTABLEKS                       R19 R0 K24 ["Flags"]
      126 GETTABLEKS                       R19 R19 K26 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      128 CALL                             R18 1 1
      129 GETIMPORT                        R19 K5 [require]
      131 GETTABLEKS                       R20 R0 K24 ["Flags"]
      133 GETTABLEKS                       R20 R20 K27 ["getFFlagAnimGraphUIEnableValueNodes"]
      135 CALL                             R19 1 1
      136 GETIMPORT                        R20 K5 [require]
      138 GETTABLEKS                       R21 R0 K24 ["Flags"]
      140 GETTABLEKS                       R21 R21 K28 ["getFFlagAnimGraphUIScrollableParameterPane"]
      142 CALL                             R20 1 1
      143 GETTABLEKS                       R21 R13 K29 ["of"]
      145 LOADNIL                          R22
      146 CALL                             R21 1 1
      147 DUPCLOSURE                       R22 K30 [PROTO_14]
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R5
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R19
      156 CAPTURE                          VAL R21
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R17
      162 CAPTURE                          VAL R1
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R18
      165 CAPTURE                          VAL R20
      166 CAPTURE                          VAL R8
      167 RETURN                           R22 1
