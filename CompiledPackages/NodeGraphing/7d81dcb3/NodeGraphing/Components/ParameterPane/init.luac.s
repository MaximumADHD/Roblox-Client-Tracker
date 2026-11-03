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
        0 GETIMPORT                        R1 K1 [next]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 JUMPIFEQKNIL                     R1 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setFrame"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["canvasFrameRef"]
        6 GETTABLEKS                       R1 R1 K2 ["current"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R1
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_10:
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
       23 DUPCLOSURE                       R3 K5 [PROTO_8]
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setRightEdge"]
        3 LOADN                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["setRightEdge"]
        5 LOADN                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K0 ["setRightEdge"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K1 ["PARAMETER_PANE_POSITION_OFFSET"]
       14 GETTABLEKS                       R2 R2 K2 ["X"]
       16 GETTABLEKS                       R2 R2 K3 ["Offset"]
       18 GETUPVAL                         R3 3
       19 ADD                              R1 R2 R3
       20 CALL                             R0 1 0
       21 NEWCLOSURE                       R0 P0
       22 CAPTURE                          UPVAL U1
       23 RETURN                           R0 1

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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
      217 GETUPVAL                         R27 12
      218 JUMPIFNOT                        R27 ; [+2]
      219 LOADNIL                          R26
      220 JUMP                             ; [+11]
      221 GETUPVAL                         R26 0
      222 GETTABLEKS                       R26 R26 K33 ["useMemo"]
      224 NEWCLOSURE                       R27 P6
      225 CAPTURE                          VAL R2
      226 NEWTABLE                         R28 0 1
      228 MOVE                             R29 R2
      229 SETLIST                          R28 R29 1 [1]
      231 CALL                             R26 2 1
      232 GETUPVAL                         R27 13
      233 CALL                             R27 0 1
      234 GETUPVAL                         R28 0
      235 GETTABLEKS                       R28 R28 K34 ["useEffect"]
      237 NEWCLOSURE                       R29 P7
      238 CAPTURE                          VAL R27
      239 CAPTURE                          VAL R0
      240 NEWTABLE                         R30 0 2
      242 GETTABLEKS                       R31 R27 K35 ["setFrame"]
      244 GETTABLEKS                       R32 R0 K36 ["canvasFrameRef"]
      246 GETTABLEKS                       R32 R32 K37 ["current"]
      248 SETLIST                          R30 R31 2 [1]
      250 CALL                             R28 2 0
      251 GETUPVAL                         R28 0
      252 GETTABLEKS                       R28 R28 K33 ["useMemo"]
      254 NEWCLOSURE                       R29 P8
      255 CAPTURE                          UPVAL U14
      256 CAPTURE                          VAL R8
      257 CAPTURE                          UPVAL U15
      258 CAPTURE                          UPVAL U0
      259 CAPTURE                          UPVAL U16
      260 CAPTURE                          VAL R2
      261 CAPTURE                          UPVAL U17
      262 NEWTABLE                         R30 0 3
      264 MOVE                             R31 R2
      265 MOVE                             R32 R7
      266 MOVE                             R33 R8
      267 SETLIST                          R30 R31 3 [1]
      269 CALL                             R28 2 1
      270 GETUPVAL                         R29 6
      271 GETTABLEKS                       R29 R29 K6 ["Hooks"]
      273 GETTABLEKS                       R29 R29 K38 ["useScaledValue"]
      275 GETUPVAL                         R31 18
      276 CALL                             R31 0 1
      277 JUMPIFNOT                        R31 ; [+2]
      278 MOVE                             R30 R11
      279 JUMP                             ; [+3]
      280 GETUPVAL                         R30 10
      281 GETTABLEKS                       R30 R30 K15 ["PARAMETER_PANE_WIDTH"]
      283 CALL                             R29 1 1
      284 GETIMPORT                        R30 K41 [UDim2.fromOffset]
      286 MOVE                             R31 R29
      287 LOADN                            R32 0
      288 CALL                             R30 2 1
      289 GETUPVAL                         R32 12
      290 NOT                              R31 R32
      291 JUMPIFNOT                        R31 ; [+4]
      292 JUMPIFEQKB                       R26 TRUE ; [+2]
      294 LOADB                            R31 0 +1
      295 LOADB                            R31 1
      296 GETUPVAL                         R32 0
      297 GETTABLEKS                       R32 R32 K34 ["useEffect"]
      299 NEWCLOSURE                       R33 P9
      300 CAPTURE                          VAL R31
      301 CAPTURE                          VAL R4
      302 CAPTURE                          UPVAL U10
      303 CAPTURE                          VAL R29
      304 NEWTABLE                         R34 0 3
      306 MOVE                             R35 R4
      307 MOVE                             R36 R29
      308 MOVE                             R37 R31
      309 SETLIST                          R34 R35 3 [1]
      311 CALL                             R32 2 0
      312 GETIMPORT                        R33 K43 [next]
      314 MOVE                             R34 R28
      315 CALL                             R33 1 1
      316 JUMPIFNOTEQKNIL                  R33 ; [+2]
      318 LOADB                            R32 0 +1
      319 LOADB                            R32 1
      320 GETUPVAL                         R33 0
      321 GETTABLEKS                       R33 R33 K22 ["useCallback"]
      323 DUPCLOSURE                       R34 K44 [PROTO_13]
      324 CAPTURE                          UPVAL U19
      325 NEWTABLE                         R35 0 0
      327 CALL                             R33 2 1
      328 GETUPVAL                         R34 2
      329 GETTABLEKS                       R34 R34 K2 ["useSignalState"]
      331 GETTABLEKS                       R35 R27 K45 ["observeAbsoluteSize"]
      333 CALL                             R34 1 1
      334 GETUPVAL                         R35 0
      335 GETTABLEKS                       R35 R35 K33 ["useMemo"]
      337 NEWCLOSURE                       R36 P11
      338 CAPTURE                          VAL R34
      339 CAPTURE                          UPVAL U10
      340 NEWTABLE                         R37 0 1
      342 MOVE                             R38 R34
      343 SETLIST                          R37 R38 1 [1]
      345 CALL                             R35 2 1
      346 GETUPVAL                         R36 12
      347 JUMPIF                           R36 ; [+3]
      348 JUMPIFNOT                        R26 ; [+2]
      349 LOADNIL                          R36
      350 RETURN                           R36 1
      351 GETUPVAL                         R36 18
      352 CALL                             R36 0 1
      353 JUMPIF                           R36 ; [+173]
      354 GETUPVAL                         R36 0
      355 GETTABLEKS                       R36 R36 K46 ["createElement"]
      357 GETUPVAL                         R37 6
      358 GETTABLEKS                       R37 R37 K47 ["View"]
      360 DUPTABLE                         R38 K54 [{["tag"] = "col align-x-center gap-xsmall auto-y padding-bottom-small stroke-muted radius-small bg-surface-200", ["Size"], ["Position"], ["ZIndex"], ["stateLayer"]}]
      361 SETTABLEKS                       R30 R38 K50 ["Size"]
      363 GETUPVAL                         R39 10
      364 GETTABLEKS                       R39 R39 K55 ["PARAMETER_PANE_POSITION_OFFSET"]
      366 SETTABLEKS                       R39 R38 K51 ["Position"]
      368 GETTABLEKS                       R39 R0 K52 ["ZIndex"]
      370 SETTABLEKS                       R39 R38 K52 ["ZIndex"]
      372 DUPTABLE                         R39 K57 [{"affordance"}]
      373 GETUPVAL                         R40 6
      374 GETTABLEKS                       R40 R40 K19 ["Enums"]
      376 GETTABLEKS                       R40 R40 K58 ["StateLayerAffordance"]
      378 GETTABLEKS                       R40 R40 K59 ["None"]
      380 SETTABLEKS                       R40 R39 K56 ["affordance"]
      382 SETTABLEKS                       R39 R38 K53 ["stateLayer"]
      384 DUPTABLE                         R39 K63 [{"UISizeConstraint", "ParameterPaneHeader", "ParameterPaneScrollView"}]
      385 GETUPVAL                         R40 0
      386 GETTABLEKS                       R40 R40 K46 ["createElement"]
      388 LOADK                            R41 K60 ["UISizeConstraint"]
      389 DUPTABLE                         R42 K65 [{"MaxSize"}]
      390 SETTABLEKS                       R35 R42 K64 ["MaxSize"]
      392 CALL                             R40 2 1
      393 SETTABLEKS                       R40 R39 K60 ["UISizeConstraint"]
      395 GETUPVAL                         R40 0
      396 GETTABLEKS                       R40 R40 K46 ["createElement"]
      398 GETUPVAL                         R41 20
      399 DUPTABLE                         R42 K71 [{"LayoutOrder", "canExpand", "expanded", "DEPRECATED_canAddParameter", "setExpanded"}]
      400 MOVE                             R43 R5
      401 CALL                             R43 0 1
      402 SETTABLEKS                       R43 R42 K66 ["LayoutOrder"]
      404 SETTABLEKS                       R32 R42 K67 ["canExpand"]
      406 SETTABLEKS                       R9 R42 K68 ["expanded"]
      408 GETUPVAL                         R44 12
      409 JUMPIFNOT                        R44 ; [+2]
      410 LOADB                            R43 1
      411 JUMP                             ; [+1]
      412 NOT                              R43 R26
      413 SETTABLEKS                       R43 R42 K69 ["DEPRECATED_canAddParameter"]
      415 SETTABLEKS                       R10 R42 K70 ["setExpanded"]
      417 CALL                             R40 2 1
      418 SETTABLEKS                       R40 R39 K61 ["ParameterPaneHeader"]
      420 JUMPIFNOT                        R9 ; [+101]
      421 GETUPVAL                         R40 0
      422 GETTABLEKS                       R40 R40 K46 ["createElement"]
      424 GETUPVAL                         R41 6
      425 GETTABLEKS                       R41 R41 K72 ["ScrollView"]
      427 DUPTABLE                         R42 K80 [{["tag"] = "fill size-full-0 auto-y", ["AutomaticSize"], ["scroll"], ["scrollingFrameRef"], ["testId"] = "ParameterPane-ScrollView", ["Visible"], ["LayoutOrder"]}]
      428 GETIMPORT                        R43 K83 [Enum.AutomaticSize.Y]
      430 SETTABLEKS                       R43 R42 K74 ["AutomaticSize"]
      432 DUPTABLE                         R43 K88 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "scrollBarVisibility", "ScrollingDirection"}]
      433 GETIMPORT                        R44 K41 [UDim2.fromOffset]
      435 LOADN                            R45 0
      436 LOADN                            R46 0
      437 CALL                             R44 2 1
      438 SETTABLEKS                       R44 R43 K84 ["CanvasSize"]
      440 GETIMPORT                        R44 K83 [Enum.AutomaticSize.Y]
      442 SETTABLEKS                       R44 R43 K74 ["AutomaticSize"]
      444 GETIMPORT                        R44 K83 [Enum.AutomaticSize.Y]
      446 SETTABLEKS                       R44 R43 K85 ["AutomaticCanvasSize"]
      448 GETUPVAL                         R45 19
      449 CALL                             R45 0 1
      450 JUMPIFNOT                        R45 ; [+8]
      451 GETUPVAL                         R44 6
      452 GETTABLEKS                       R44 R44 K19 ["Enums"]
      454 GETTABLEKS                       R44 R44 K89 ["Visibility"]
      456 GETTABLEKS                       R44 R44 K90 ["Always"]
      458 JUMP                             ; [+7]
      459 GETUPVAL                         R44 6
      460 GETTABLEKS                       R44 R44 K19 ["Enums"]
      462 GETTABLEKS                       R44 R44 K89 ["Visibility"]
      464 GETTABLEKS                       R44 R44 K91 ["Auto"]
      466 SETTABLEKS                       R44 R43 K86 ["scrollBarVisibility"]
      468 GETIMPORT                        R44 K92 [Enum.ScrollingDirection.Y]
      470 SETTABLEKS                       R44 R43 K87 ["ScrollingDirection"]
      472 SETTABLEKS                       R43 R42 K75 ["scroll"]
      474 SETTABLEKS                       R33 R42 K76 ["scrollingFrameRef"]
      476 SETTABLEKS                       R32 R42 K79 ["Visible"]
      478 MOVE                             R43 R5
      479 CALL                             R43 0 1
      480 SETTABLEKS                       R43 R42 K66 ["LayoutOrder"]
      482 DUPTABLE                         R43 K94 [{"ParameterNodeItemContainer"}]
      483 GETUPVAL                         R44 0
      484 GETTABLEKS                       R44 R44 K46 ["createElement"]
      486 GETUPVAL                         R45 6
      487 GETTABLEKS                       R45 R45 K47 ["View"]
      489 DUPTABLE                         R46 K95 [{"tag", "Size"}]
      490 GETUPVAL                         R48 19
      491 CALL                             R48 0 1
      492 JUMPIFNOT                        R48 ; [+2]
      493 LOADK                            R47 K96 ["col auto-y"]
      494 JUMP                             ; [+1]
      495 LOADK                            R47 K97 ["col size-full-0 auto-y"]
      496 SETTABLEKS                       R47 R46 K48 ["tag"]
      498 GETUPVAL                         R48 19
      499 CALL                             R48 0 1
      500 JUMPIFNOT                        R48 ; [+12]
      501 GETIMPORT                        R47 K98 [UDim2.new]
      503 LOADN                            R48 1
      504 GETTABLEKS                       R50 R6 K50 ["Size"]
      506 GETTABLEKS                       R50 R50 K99 ["Size_150"]
      508 MINUS                            R49 R50
      509 LOADN                            R50 0
      510 LOADN                            R51 0
      511 CALL                             R47 4 1
      512 JUMP                             ; [+1]
      513 LOADNIL                          R47
      514 SETTABLEKS                       R47 R46 K50 ["Size"]
      516 MOVE                             R47 R28
      517 CALL                             R44 3 1
      518 SETTABLEKS                       R44 R43 K93 ["ParameterNodeItemContainer"]
      520 CALL                             R40 3 1
      521 JUMP                             ; [+1]
      522 LOADNIL                          R40
      523 SETTABLEKS                       R40 R39 K62 ["ParameterPaneScrollView"]
      525 CALL                             R36 3 -1
      526 RETURN                           R36 -1
      527 GETUPVAL                         R36 0
      528 GETTABLEKS                       R36 R36 K46 ["createElement"]
      530 GETUPVAL                         R37 6
      531 GETTABLEKS                       R37 R37 K47 ["View"]
      533 DUPTABLE                         R38 K101 [{["tag"] = "auto-y", ["Size"], ["Position"], ["ZIndex"], ["stateLayer"]}]
      534 SETTABLEKS                       R30 R38 K50 ["Size"]
      536 GETUPVAL                         R39 10
      537 GETTABLEKS                       R39 R39 K55 ["PARAMETER_PANE_POSITION_OFFSET"]
      539 SETTABLEKS                       R39 R38 K51 ["Position"]
      541 GETTABLEKS                       R39 R0 K52 ["ZIndex"]
      543 SETTABLEKS                       R39 R38 K52 ["ZIndex"]
      545 DUPTABLE                         R39 K57 [{"affordance"}]
      546 GETUPVAL                         R40 6
      547 GETTABLEKS                       R40 R40 K19 ["Enums"]
      549 GETTABLEKS                       R40 R40 K58 ["StateLayerAffordance"]
      551 GETTABLEKS                       R40 R40 K59 ["None"]
      553 SETTABLEKS                       R40 R39 K56 ["affordance"]
      555 SETTABLEKS                       R39 R38 K53 ["stateLayer"]
      557 DUPTABLE                         R39 K104 [{"Content", "ResizeBarRight"}]
      558 GETUPVAL                         R40 0
      559 GETTABLEKS                       R40 R40 K46 ["createElement"]
      561 GETUPVAL                         R41 6
      562 GETTABLEKS                       R41 R41 K47 ["View"]
      564 DUPTABLE                         R42 K107 [{["tag"] = "col align-x-center gap-xsmall auto-y padding-bottom-small stroke-muted radius-small bg-surface-200 size-full-0", ["stateLayer"], ["sizeConstraint"]}]
      565 DUPTABLE                         R43 K57 [{"affordance"}]
      566 GETUPVAL                         R44 6
      567 GETTABLEKS                       R44 R44 K19 ["Enums"]
      569 GETTABLEKS                       R44 R44 K58 ["StateLayerAffordance"]
      571 GETTABLEKS                       R44 R44 K59 ["None"]
      573 SETTABLEKS                       R44 R43 K56 ["affordance"]
      575 SETTABLEKS                       R43 R42 K53 ["stateLayer"]
      577 DUPTABLE                         R43 K65 [{"MaxSize"}]
      578 SETTABLEKS                       R35 R43 K64 ["MaxSize"]
      580 SETTABLEKS                       R43 R42 K106 ["sizeConstraint"]
      582 DUPTABLE                         R43 K108 [{"ParameterPaneHeader", "ParameterPaneScrollView"}]
      583 GETUPVAL                         R44 0
      584 GETTABLEKS                       R44 R44 K46 ["createElement"]
      586 GETUPVAL                         R45 20
      587 DUPTABLE                         R46 K71 [{"LayoutOrder", "canExpand", "expanded", "DEPRECATED_canAddParameter", "setExpanded"}]
      588 MOVE                             R47 R5
      589 CALL                             R47 0 1
      590 SETTABLEKS                       R47 R46 K66 ["LayoutOrder"]
      592 SETTABLEKS                       R32 R46 K67 ["canExpand"]
      594 SETTABLEKS                       R9 R46 K68 ["expanded"]
      596 GETUPVAL                         R48 12
      597 JUMPIFNOT                        R48 ; [+2]
      598 LOADB                            R47 1
      599 JUMP                             ; [+1]
      600 NOT                              R47 R26
      601 SETTABLEKS                       R47 R46 K69 ["DEPRECATED_canAddParameter"]
      603 SETTABLEKS                       R10 R46 K70 ["setExpanded"]
      605 CALL                             R44 2 1
      606 SETTABLEKS                       R44 R43 K61 ["ParameterPaneHeader"]
      608 JUMPIFNOT                        R9 ; [+112]
      609 GETUPVAL                         R44 0
      610 GETTABLEKS                       R44 R44 K46 ["createElement"]
      612 GETUPVAL                         R45 6
      613 GETTABLEKS                       R45 R45 K72 ["ScrollView"]
      615 DUPTABLE                         R46 K109 [{["tag"], ["AutomaticSize"], ["scroll"], ["scrollingFrameRef"], ["testId"] = "ParameterPane-ScrollView", ["Visible"], ["LayoutOrder"]}]
      616 NEWTABLE                         R47 2 0
      618 LOADB                            R48 1
      619 SETTABLEKS                       R48 R47 K73 ["fill size-full-0 auto-y"]
      621 GETUPVAL                         R48 19
      622 CALL                             R48 0 1
      623 SETTABLEKS                       R48 R47 K110 ["padding-right-small"]
      625 SETTABLEKS                       R47 R46 K48 ["tag"]
      627 GETIMPORT                        R47 K83 [Enum.AutomaticSize.Y]
      629 SETTABLEKS                       R47 R46 K74 ["AutomaticSize"]
      631 DUPTABLE                         R47 K88 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "scrollBarVisibility", "ScrollingDirection"}]
      632 GETIMPORT                        R48 K41 [UDim2.fromOffset]
      634 LOADN                            R49 0
      635 LOADN                            R50 0
      636 CALL                             R48 2 1
      637 SETTABLEKS                       R48 R47 K84 ["CanvasSize"]
      639 GETIMPORT                        R48 K83 [Enum.AutomaticSize.Y]
      641 SETTABLEKS                       R48 R47 K74 ["AutomaticSize"]
      643 GETIMPORT                        R48 K83 [Enum.AutomaticSize.Y]
      645 SETTABLEKS                       R48 R47 K85 ["AutomaticCanvasSize"]
      647 GETUPVAL                         R49 19
      648 CALL                             R49 0 1
      649 JUMPIFNOT                        R49 ; [+8]
      650 GETUPVAL                         R48 6
      651 GETTABLEKS                       R48 R48 K19 ["Enums"]
      653 GETTABLEKS                       R48 R48 K89 ["Visibility"]
      655 GETTABLEKS                       R48 R48 K90 ["Always"]
      657 JUMP                             ; [+7]
      658 GETUPVAL                         R48 6
      659 GETTABLEKS                       R48 R48 K19 ["Enums"]
      661 GETTABLEKS                       R48 R48 K89 ["Visibility"]
      663 GETTABLEKS                       R48 R48 K91 ["Auto"]
      665 SETTABLEKS                       R48 R47 K86 ["scrollBarVisibility"]
      667 GETIMPORT                        R48 K92 [Enum.ScrollingDirection.Y]
      669 SETTABLEKS                       R48 R47 K87 ["ScrollingDirection"]
      671 SETTABLEKS                       R47 R46 K75 ["scroll"]
      673 SETTABLEKS                       R33 R46 K76 ["scrollingFrameRef"]
      675 SETTABLEKS                       R32 R46 K79 ["Visible"]
      677 MOVE                             R47 R5
      678 CALL                             R47 0 1
      679 SETTABLEKS                       R47 R46 K66 ["LayoutOrder"]
      681 DUPTABLE                         R47 K94 [{"ParameterNodeItemContainer"}]
      682 GETUPVAL                         R48 0
      683 GETTABLEKS                       R48 R48 K46 ["createElement"]
      685 GETUPVAL                         R49 6
      686 GETTABLEKS                       R49 R49 K47 ["View"]
      688 DUPTABLE                         R50 K95 [{"tag", "Size"}]
      689 GETUPVAL                         R52 19
      690 CALL                             R52 0 1
      691 JUMPIFNOT                        R52 ; [+2]
      692 LOADK                            R51 K96 ["col auto-y"]
      693 JUMP                             ; [+1]
      694 LOADK                            R51 K97 ["col size-full-0 auto-y"]
      695 SETTABLEKS                       R51 R50 K48 ["tag"]
      697 GETUPVAL                         R52 19
      698 CALL                             R52 0 1
      699 JUMPIFNOT                        R52 ; [+12]
      700 GETIMPORT                        R51 K98 [UDim2.new]
      702 LOADN                            R52 1
      703 GETTABLEKS                       R54 R6 K50 ["Size"]
      705 GETTABLEKS                       R54 R54 K99 ["Size_150"]
      707 MINUS                            R53 R54
      708 LOADN                            R54 0
      709 LOADN                            R55 0
      710 CALL                             R51 4 1
      711 JUMP                             ; [+1]
      712 LOADNIL                          R51
      713 SETTABLEKS                       R51 R50 K50 ["Size"]
      715 MOVE                             R51 R28
      716 CALL                             R48 3 1
      717 SETTABLEKS                       R48 R47 K93 ["ParameterNodeItemContainer"]
      719 CALL                             R44 3 1
      720 JUMP                             ; [+1]
      721 LOADNIL                          R44
      722 SETTABLEKS                       R44 R43 K62 ["ParameterPaneScrollView"]
      724 CALL                             R40 3 1
      725 SETTABLEKS                       R40 R39 K102 ["Content"]
      727 GETUPVAL                         R40 0
      728 GETTABLEKS                       R40 R40 K46 ["createElement"]
      730 GETUPVAL                         R41 6
      731 GETTABLEKS                       R41 R41 K47 ["View"]
      733 DUPTABLE                         R42 K113 [{"backgroundStyle", "Size", "Position", "onStateChanged", "stateLayer"}]
      734 GETTABLEKS                       R43 R6 K114 ["Color"]
      736 GETTABLEKS                       R43 R43 K115 ["Stroke"]
      738 GETTABLEKS                       R43 R43 K21 ["Default"]
      740 SETTABLEKS                       R43 R42 K111 ["backgroundStyle"]
      742 GETIMPORT                        R43 K98 [UDim2.new]
      744 LOADN                            R44 0
      745 LOADN                            R45 10
      746 LOADN                            R46 1
      747 LOADN                            R47 0
      748 CALL                             R43 4 1
      749 SETTABLEKS                       R43 R42 K50 ["Size"]
      751 GETIMPORT                        R43 K98 [UDim2.new]
      753 LOADN                            R44 1
      754 LOADN                            R45 -5
      755 LOADN                            R46 0
      756 LOADN                            R47 0
      757 CALL                             R43 4 1
      758 SETTABLEKS                       R43 R42 K51 ["Position"]
      760 SETTABLEKS                       R20 R42 K112 ["onStateChanged"]
      762 DUPTABLE                         R43 K57 [{"affordance"}]
      763 GETUPVAL                         R44 6
      764 GETTABLEKS                       R44 R44 K19 ["Enums"]
      766 GETTABLEKS                       R44 R44 K58 ["StateLayerAffordance"]
      768 GETTABLEKS                       R44 R44 K59 ["None"]
      770 SETTABLEKS                       R44 R43 K56 ["affordance"]
      772 SETTABLEKS                       R43 R42 K53 ["stateLayer"]
      774 DUPTABLE                         R43 K118 [{"Gradient", "DragDetector"}]
      775 GETUPVAL                         R44 0
      776 GETTABLEKS                       R44 R44 K46 ["createElement"]
      778 LOADK                            R45 K119 ["UIGradient"]
      779 DUPTABLE                         R46 K121 [{"Transparency"}]
      780 SETTABLEKS                       R25 R46 K120 ["Transparency"]
      782 CALL                             R44 2 1
      783 SETTABLEKS                       R44 R43 K116 ["Gradient"]
      785 GETUPVAL                         R44 0
      786 GETTABLEKS                       R44 R44 K46 ["createElement"]
      788 LOADK                            R45 K122 ["UIDragDetector"]
      789 NEWTABLE                         R46 8 0
      791 GETIMPORT                        R47 K125 [Enum.UIDragDetectorDragStyle.Scriptable]
      793 SETTABLEKS                       R47 R46 K126 ["DragStyle"]
      795 GETTABLEKS                       R47 R0 K36 ["canvasFrameRef"]
      797 GETTABLEKS                       R47 R47 K37 ["current"]
      799 SETTABLEKS                       R47 R46 K127 ["ReferenceUIInstance"]
      801 GETUPVAL                         R47 0
      802 GETTABLEKS                       R47 R47 K128 ["Event"]
      804 GETTABLEKS                       R47 R47 K129 ["DragStart"]
      806 SETTABLE                         R21 R46 R47
      807 GETUPVAL                         R47 0
      808 GETTABLEKS                       R47 R47 K128 ["Event"]
      810 GETTABLEKS                       R47 R47 K130 ["DragContinue"]
      812 SETTABLE                         R22 R46 R47
      813 GETUPVAL                         R47 0
      814 GETTABLEKS                       R47 R47 K128 ["Event"]
      816 GETTABLEKS                       R47 R47 K131 ["DragEnd"]
      818 SETTABLE                         R23 R46 R47
      819 CALL                             R44 2 1
      820 SETTABLEKS                       R44 R43 K117 ["DragDetector"]
      822 CALL                             R40 3 1
      823 SETTABLEKS                       R40 R39 K103 ["ResizeBarRight"]
      825 CALL                             R36 3 -1
      826 RETURN                           R36 -1

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
       14 GETTABLEKS                       R3 R0 K7 ["Flags"]
       16 GETTABLEKS                       R3 R3 K8 ["FFlagAnimGraphUI_AllowNoParameters"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Components"]
       30 GETTABLEKS                       R5 R5 K12 ["GraphContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K13 ["NodeViewTypes"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K11 ["Components"]
       42 GETTABLEKS                       R7 R7 K14 ["ParameterContext"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K11 ["Components"]
       49 GETTABLEKS                       R8 R8 K15 ["ParameterPaneBoundsContext"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETIMPORT                        R9 K1 [script]
       56 GETTABLEKS                       R9 R9 K6 ["Constants"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETIMPORT                        R10 K1 [script]
       63 GETTABLEKS                       R10 R10 K16 ["ParameterPaneHeader"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETIMPORT                        R11 K1 [script]
       70 GETTABLEKS                       R11 R11 K17 ["ParameterPaneItem"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETTABLEKS                       R12 R0 K9 ["Parent"]
       77 GETTABLEKS                       R12 R12 K18 ["React"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K5 [require]
       82 GETTABLEKS                       R13 R0 K9 ["Parent"]
       84 GETTABLEKS                       R13 R13 K19 ["ReactUtils"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R14 R0 K9 ["Parent"]
       91 GETTABLEKS                       R14 R14 K20 ["SignalsReact"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K5 [require]
       96 GETTABLEKS                       R15 R0 K9 ["Parent"]
       98 GETTABLEKS                       R15 R15 K21 ["SignalsUtils"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K5 [require]
      103 GETTABLEKS                       R16 R0 K22 ["Hooks"]
      105 GETTABLEKS                       R16 R16 K23 ["useAbsoluteSize"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K5 [require]
      110 GETTABLEKS                       R17 R0 K22 ["Hooks"]
      112 GETTABLEKS                       R17 R17 K24 ["useOnStateChangedCursor"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K5 [require]
      117 GETTABLEKS                       R18 R0 K22 ["Hooks"]
      119 GETTABLEKS                       R18 R18 K25 ["usePluginSetting"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K5 [require]
      124 GETTABLEKS                       R19 R0 K7 ["Flags"]
      126 GETTABLEKS                       R19 R19 K26 ["getFFlagAnimGraphUIDisallowParameterNodeDeletionOnNodeDelete"]
      128 CALL                             R18 1 1
      129 GETIMPORT                        R19 K5 [require]
      131 GETTABLEKS                       R20 R0 K7 ["Flags"]
      133 GETTABLEKS                       R20 R20 K27 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      135 CALL                             R19 1 1
      136 GETIMPORT                        R20 K5 [require]
      138 GETTABLEKS                       R21 R0 K7 ["Flags"]
      140 GETTABLEKS                       R21 R21 K28 ["getFFlagAnimGraphUIEnableValueNodes"]
      142 CALL                             R20 1 1
      143 GETIMPORT                        R21 K5 [require]
      145 GETTABLEKS                       R22 R0 K7 ["Flags"]
      147 GETTABLEKS                       R22 R22 K29 ["getFFlagAnimGraphUIResizeParameterPane"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K5 [require]
      152 GETTABLEKS                       R23 R0 K7 ["Flags"]
      154 GETTABLEKS                       R23 R23 K30 ["getFFlagAnimGraphUIScrollableParameterPane"]
      156 CALL                             R22 1 1
      157 GETTABLEKS                       R23 R14 K31 ["of"]
      159 LOADNIL                          R24
      160 CALL                             R23 1 1
      161 DUPCLOSURE                       R24 K32 [PROTO_15]
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R4
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R20
      170 CAPTURE                          VAL R23
      171 CAPTURE                          VAL R17
      172 CAPTURE                          VAL R8
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R15
      176 CAPTURE                          VAL R18
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R10
      179 CAPTURE                          VAL R19
      180 CAPTURE                          VAL R21
      181 CAPTURE                          VAL R22
      182 CAPTURE                          VAL R9
      183 RETURN                           R24 1
