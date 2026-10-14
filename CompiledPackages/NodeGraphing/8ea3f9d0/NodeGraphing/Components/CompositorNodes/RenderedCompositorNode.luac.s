PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["nodeLibrary"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 MOVE                             R6 R5
        9 LOADNIL                          R7
       10 LOADNIL                          R8
       11 FORGPREP                         R6
       12 GETTABLEKS                       R11 R10 K1 ["id"]
       14 SETTABLE                         R10 R0 R11
       15 FORGLOOP                         R6 2 ; [-4]
       17 FORGLOOP                         R1 2 ; [-10]
       19 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodePosition"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["node"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R0 R0 K1 ["observe"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["node"]
        8 GETTABLEKS                       R1 R1 K3 ["id"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["node"]
        3 GETTABLEKS                       R1 R1 K1 ["id"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["onDragNodeStart"]
        8 MOVE                             R3 R1
        9 MOVE                             R4 R0
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["selectNodes"]
       14 MOVE                             R4 R2
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K4 ["isShiftPressed"]
       18 CALL                             R5 0 -1
       19 CALL                             R3 -1 0
       20 GETUPVAL                         R3 4
       21 GETUPVAL                         R4 2
       22 MOVE                             R5 R1
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onDragNodeMoved"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["node"]
        6 GETTABLEKS                       R2 R2 K2 ["id"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onDragNodeEnded"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["node"]
        6 GETTABLEKS                       R2 R2 K2 ["id"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K3 ["setNodePositions"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["node"]
        4 GETTABLEKS                       R2 R2 K1 ["nodeType"]
        6 GETTABLE                         R0 R1 R2
        7 JUMPIFNOTEQKNIL                  R0 ; [+3]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R2 R0 K2 ["definition"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K0 ["node"]
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+48]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 GETTABLEKS                       R3 R3 K0 ["node"]
       10 GETUPVAL                         R4 4
       11 CALL                             R1 3 3
       12 FORGPREP                         R1
       13 GETTABLEKS                       R6 R5 K1 ["key"]
       15 GETUPVAL                         R7 5
       16 GETTABLEKS                       R7 R7 K2 ["createElement"]
       18 GETUPVAL                         R8 6
       19 DUPTABLE                         R9 K10 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "inputPinDynamicIndex", "inputPinInputId", "pinDataType"}]
       20 GETTABLEKS                       R10 R5 K3 ["outputPinNodeId"]
       22 SETTABLEKS                       R10 R9 K3 ["outputPinNodeId"]
       24 GETTABLEKS                       R10 R5 K4 ["outputPinName"]
       26 SETTABLEKS                       R10 R9 K4 ["outputPinName"]
       28 GETTABLEKS                       R10 R5 K5 ["inputPinNodeId"]
       30 SETTABLEKS                       R10 R9 K5 ["inputPinNodeId"]
       32 GETTABLEKS                       R10 R5 K6 ["inputPinName"]
       34 SETTABLEKS                       R10 R9 K6 ["inputPinName"]
       36 GETTABLEKS                       R10 R5 K7 ["inputPinDynamicIndex"]
       38 SETTABLEKS                       R10 R9 K7 ["inputPinDynamicIndex"]
       40 GETTABLEKS                       R10 R5 K8 ["inputPinInputId"]
       42 SETTABLEKS                       R10 R9 K8 ["inputPinInputId"]
       44 GETTABLEKS                       R10 R5 K9 ["pinDataType"]
       46 SETTABLEKS                       R10 R9 K9 ["pinDataType"]
       48 CALL                             R7 2 1
       49 SETTABLE                         R7 R0 R6
       50 FORGLOOP                         R1 2 ; [-38]
       52 RETURN                           R0 1
       53 GETUPVAL                         R1 2
       54 JUMPIFNOT                        R1 ; [+181]
       55 GETUPVAL                         R1 2
       56 GETTABLEKS                       R1 R1 K11 ["Inputs"]
       58 JUMPIFNOT                        R1 ; [+177]
       59 GETUPVAL                         R1 2
       60 GETTABLEKS                       R1 R1 K11 ["Inputs"]
       62 LOADNIL                          R2
       63 LOADNIL                          R3
       64 FORGPREP                         R1
       65 LOADNIL                          R6
       66 LOADNIL                          R7
       67 GETUPVAL                         R8 7
       68 CALL                             R8 0 1
       69 JUMPIFNOT                        R8 ; [+37]
       70 GETTABLEKS                       R8 R5 K12 ["DynamicPinIndex"]
       72 JUMPIFEQKNIL                     R8 ; [+34]
       74 GETUPVAL                         R8 3
       75 GETTABLEKS                       R8 R8 K0 ["node"]
       77 GETTABLEKS                       R8 R8 K13 ["inputPinInputIds"]
       79 JUMPIFNOT                        R8 ; [+27]
       80 GETUPVAL                         R8 3
       81 GETTABLEKS                       R8 R8 K0 ["node"]
       83 GETTABLEKS                       R8 R8 K14 ["inputConnectionsByInputId"]
       85 JUMPIFNOT                        R8 ; [+21]
       86 GETUPVAL                         R9 3
       87 GETTABLEKS                       R9 R9 K0 ["node"]
       89 GETTABLEKS                       R9 R9 K13 ["inputPinInputIds"]
       91 GETTABLEKS                       R10 R5 K12 ["DynamicPinIndex"]
       93 GETTABLE                         R8 R9 R10
       94 JUMPIFEQKNIL                     R8 ; [+8]
       96 GETUPVAL                         R10 3
       97 GETTABLEKS                       R10 R10 K0 ["node"]
       99 GETTABLEKS                       R10 R10 K14 ["inputConnectionsByInputId"]
      101 GETTABLE                         R9 R10 R8
      102 JUMPIF                           R9 ; [+1]
      103 LOADNIL                          R9
      104 MOVE                             R6 R9
      105 MOVE                             R7 R8
      106 JUMP                             ; [+8]
      107 GETUPVAL                         R8 3
      108 GETTABLEKS                       R8 R8 K0 ["node"]
      110 GETTABLEKS                       R8 R8 K15 ["inputPinToConnectionMap"]
      112 GETTABLEKS                       R9 R5 K16 ["InputName"]
      114 GETTABLE                         R6 R8 R9
      115 JUMPIFNOT                        R6 ; [+60]
      116 GETUPVAL                         R9 4
      117 JUMPIFNOT                        R9 ; [+8]
      118 GETTABLEKS                       R9 R6 K17 ["outputNodeId"]
      120 JUMPIFNOT                        R9 ; [+5]
      121 GETUPVAL                         R9 4
      122 GETTABLEKS                       R10 R6 K17 ["outputNodeId"]
      124 GETTABLE                         R8 R9 R10
      125 JUMP                             ; [+1]
      126 LOADNIL                          R8
      127 MOVE                             R9 R8
      128 JUMPIFNOT                        R9 ; [+9]
      129 GETTABLEKS                       R10 R8 K18 ["className"]
      131 GETUPVAL                         R11 8
      132 GETTABLEKS                       R11 R11 K19 ["PARAMETER_NODE_CLASSNAME"]
      134 JUMPIFEQ                         R10 R11 ; [+2]
      136 LOADB                            R9 0 +1
      137 LOADB                            R9 1
      138 LOADK                            R10 K20 ["Connection_%*"]
      139 GETTABLEKS                       R12 R6 K21 ["wireId"]
      141 NAMECALL                         R10 R10 K22 ["format"]
      143 CALL                             R10 2 1
      144 GETUPVAL                         R11 5
      145 GETTABLEKS                       R11 R11 K2 ["createElement"]
      147 GETUPVAL                         R12 6
      148 DUPTABLE                         R13 K24 [{["outputPinNodeId"], ["outputPinName"] = "Output", ["inputPinNodeId"], ["inputPinName"], ["inputPinInputId"], ["pinDataType"]}]
      149 GETTABLEKS                       R14 R6 K17 ["outputNodeId"]
      151 SETTABLEKS                       R14 R13 K3 ["outputPinNodeId"]
      153 GETUPVAL                         R14 3
      154 GETTABLEKS                       R14 R14 K0 ["node"]
      156 GETTABLEKS                       R14 R14 K25 ["id"]
      158 SETTABLEKS                       R14 R13 K5 ["inputPinNodeId"]
      160 GETTABLEKS                       R14 R5 K16 ["InputName"]
      162 SETTABLEKS                       R14 R13 K6 ["inputPinName"]
      164 SETTABLEKS                       R7 R13 K8 ["inputPinInputId"]
      166 JUMPIFNOT                        R9 ; [+2]
      167 LOADK                            R14 K26 ["Parameter"]
      168 JUMP                             ; [+3]
      169 GETUPVAL                         R14 8
      170 GETTABLEKS                       R14 R14 K27 ["DEFAULT_PIN_DATA_TYPE"]
      172 SETTABLEKS                       R14 R13 K9 ["pinDataType"]
      174 CALL                             R11 2 1
      175 SETTABLE                         R11 R0 R10
      176 GETTABLEKS                       R8 R5 K28 ["Properties"]
      178 JUMPIFNOT                        R8 ; [+55]
      179 GETTABLEKS                       R8 R5 K28 ["Properties"]
      181 LOADNIL                          R9
      182 LOADNIL                          R10
      183 FORGPREP                         R8
      184 GETUPVAL                         R14 3
      185 GETTABLEKS                       R14 R14 K0 ["node"]
      187 GETTABLEKS                       R14 R14 K29 ["inputLabelPinToConnectionMap"]
      189 GETTABLEKS                       R15 R12 K30 ["Name"]
      191 GETTABLE                         R13 R14 R15
      192 MOVE                             R14 R13
      193 JUMPIFNOT                        R14 ; [+3]
      194 GETTABLEKS                       R15 R5 K16 ["InputName"]
      196 GETTABLE                         R14 R13 R15
      197 JUMPIFNOT                        R14 ; [+34]
      198 LOADK                            R15 K31 ["Connection_%*_inputProperty_%*"]
      199 GETTABLEKS                       R17 R14 K21 ["wireId"]
      201 GETTABLEKS                       R18 R12 K30 ["Name"]
      203 NAMECALL                         R15 R15 K22 ["format"]
      205 CALL                             R15 3 1
      206 GETUPVAL                         R16 5
      207 GETTABLEKS                       R16 R16 K2 ["createElement"]
      209 GETUPVAL                         R17 6
      210 DUPTABLE                         R18 K32 [{["outputPinNodeId"], ["outputPinName"] = "Output", ["inputPinNodeId"], ["inputPinName"], ["inputPinDynamicIndex"], ["pinDataType"] = "Parameter"}]
      211 GETTABLEKS                       R19 R14 K17 ["outputNodeId"]
      213 SETTABLEKS                       R19 R18 K3 ["outputPinNodeId"]
      215 GETUPVAL                         R19 3
      216 GETTABLEKS                       R19 R19 K0 ["node"]
      218 GETTABLEKS                       R19 R19 K25 ["id"]
      220 SETTABLEKS                       R19 R18 K5 ["inputPinNodeId"]
      222 GETTABLEKS                       R19 R12 K30 ["Name"]
      224 SETTABLEKS                       R19 R18 K6 ["inputPinName"]
      226 GETTABLEKS                       R19 R5 K33 ["InputIndex"]
      228 SETTABLEKS                       R19 R18 K7 ["inputPinDynamicIndex"]
      230 CALL                             R16 2 1
      231 SETTABLE                         R16 R0 R15
      232 FORGLOOP                         R8 2 ; [-49]
      234 FORGLOOP                         R1 2 ; [-170]
      236 GETUPVAL                         R1 2
      237 JUMPIFNOT                        R1 ; [+56]
      238 GETUPVAL                         R1 2
      239 GETTABLEKS                       R1 R1 K28 ["Properties"]
      241 JUMPIFNOT                        R1 ; [+52]
      242 GETUPVAL                         R1 2
      243 GETTABLEKS                       R1 R1 K28 ["Properties"]
      245 LOADNIL                          R2
      246 LOADNIL                          R3
      247 FORGPREP                         R1
      248 GETUPVAL                         R7 3
      249 GETTABLEKS                       R7 R7 K0 ["node"]
      251 GETTABLEKS                       R7 R7 K15 ["inputPinToConnectionMap"]
      253 GETTABLEKS                       R8 R5 K30 ["Name"]
      255 GETTABLE                         R6 R7 R8
      256 JUMPIFNOT                        R6 ; [+35]
      257 LOADK                            R7 K34 ["Connection_%*_property_%*"]
      258 GETTABLEKS                       R9 R6 K21 ["wireId"]
      260 GETTABLEKS                       R10 R5 K30 ["Name"]
      262 NAMECALL                         R7 R7 K22 ["format"]
      264 CALL                             R7 3 1
      265 GETUPVAL                         R8 5
      266 GETTABLEKS                       R8 R8 K2 ["createElement"]
      268 GETUPVAL                         R9 6
      269 DUPTABLE                         R10 K35 [{["outputPinNodeId"], ["outputPinName"], ["inputPinNodeId"], ["inputPinName"], ["pinDataType"] = "Parameter"}]
      270 GETTABLEKS                       R11 R6 K17 ["outputNodeId"]
      272 SETTABLEKS                       R11 R10 K3 ["outputPinNodeId"]
      274 GETTABLEKS                       R12 R6 K36 ["outputNodePinId"]
      276 ORK                              R11 R12 K23 ["Output"]
      277 SETTABLEKS                       R11 R10 K4 ["outputPinName"]
      279 GETUPVAL                         R11 3
      280 GETTABLEKS                       R11 R11 K0 ["node"]
      282 GETTABLEKS                       R11 R11 K25 ["id"]
      284 SETTABLEKS                       R11 R10 K5 ["inputPinNodeId"]
      286 GETTABLEKS                       R11 R5 K30 ["Name"]
      288 SETTABLEKS                       R11 R10 K6 ["inputPinName"]
      290 CALL                             R8 2 1
      291 SETTABLE                         R8 R0 R7
      292 FORGLOOP                         R1 2 ; [-45]
      294 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["node"]
        3 JUMPIFNOT                        R3 ; [+12]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["setNodeProperty"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["node"]
       10 GETTABLEKS                       R4 R4 K2 ["id"]
       12 MOVE                             R5 R0
       13 MOVE                             R6 R1
       14 MOVE                             R7 R2
       15 CALL                             R3 4 0
       16 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["node"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["observeNodePropsById"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["node"]
       10 GETTABLEKS                       R1 R1 K2 ["id"]
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K3 ["of"]
       17 LOADNIL                          R1
       18 CALL                             R0 1 -1
       19 RETURN                           R0 -1

PROTO_10:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+34]
        4 GETUPVAL                         R1 0
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 FASTCALL1                        TYPE R5 ; [+3]
        9 MOVE                             R8 R5
       10 GETIMPORT                        R7 K1 [type]
       12 CALL                             R7 1 1
       13 JUMPIFNOTEQKS                    R7 K2 ["string"] ; [+5]
       15 GETUPVAL                         R6 1
       16 MOVE                             R7 R5
       17 CALL                             R6 1 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R6
       20 JUMPIFNOT                        R6 ; [+14]
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R8 R8 K3 ["parameterOverrides"]
       24 GETTABLE                         R7 R8 R6
       25 JUMPIFEQKNIL                     R7 ; [+3]
       27 MOVE                             R8 R7
       28 JUMP                             ; [+4]
       29 GETUPVAL                         R8 3
       30 JUMPIFNOT                        R8 ; [+2]
       31 GETUPVAL                         R9 3
       32 GETTABLE                         R8 R9 R6
       33 SETTABLE                         R8 R0 R4
       34 JUMP                             ; [+1]
       35 SETTABLE                         R5 R0 R4
       36 FORGLOOP                         R1 2 ; [-29]
       38 GETUPVAL                         R1 4
       39 CALL                             R1 0 1
       40 JUMPIFNOT                        R1 ; [+81]
       41 GETUPVAL                         R1 5
       42 JUMPIFNOT                        R1 ; [+79]
       43 GETUPVAL                         R1 5
       44 GETTABLEKS                       R1 R1 K4 ["Properties"]
       46 JUMPIFNOT                        R1 ; [+75]
       47 GETUPVAL                         R1 5
       48 GETTABLEKS                       R1 R1 K4 ["Properties"]
       50 LOADNIL                          R2
       51 LOADNIL                          R3
       52 FORGPREP                         R1
       53 GETUPVAL                         R7 6
       54 GETTABLEKS                       R7 R7 K5 ["node"]
       56 GETTABLEKS                       R7 R7 K6 ["inputPinToConnectionMap"]
       58 GETTABLEKS                       R8 R5 K7 ["Name"]
       60 GETTABLE                         R6 R7 R8
       61 GETUPVAL                         R7 7
       62 GETTABLEKS                       R7 R7 K8 ["isPropertyParameterized"]
       64 GETUPVAL                         R8 0
       65 GETTABLEKS                       R9 R5 K7 ["Name"]
       67 CALL                             R7 2 1
       68 JUMPIF                           R7 ; [+4]
       69 JUMPIFNOT                        R6 ; [+50]
       70 GETTABLEKS                       R8 R6 K9 ["isValueNodeConnection"]
       72 JUMPIFNOT                        R8 ; [+47]
       73 GETUPVAL                         R9 8
       74 GETTABLEKS                       R10 R5 K7 ["Name"]
       76 GETTABLE                         R8 R9 R10
       77 GETUPVAL                         R9 7
       78 GETTABLEKS                       R9 R9 K10 ["castPropertyValue"]
       80 JUMPIFEQKNIL                     R8 ; [+3]
       82 MOVE                             R10 R8
       83 JUMP                             ; [+3]
       84 GETTABLEKS                       R11 R5 K7 ["Name"]
       86 GETTABLE                         R10 R0 R11
       87 GETTABLEKS                       R11 R5 K11 ["Type"]
       89 CALL                             R9 2 1
       90 JUMPIFNOTEQKNIL                  R9 ; [+15]
       92 GETUPVAL                         R10 0
       93 JUMPIFNOT                        R10 ; [+12]
       94 JUMPIF                           R7 ; [+11]
       95 GETUPVAL                         R10 7
       96 GETTABLEKS                       R10 R10 K10 ["castPropertyValue"]
       98 GETUPVAL                         R12 0
       99 GETTABLEKS                       R13 R5 K7 ["Name"]
      101 GETTABLE                         R11 R12 R13
      102 GETTABLEKS                       R12 R5 K11 ["Type"]
      104 CALL                             R10 2 1
      105 MOVE                             R9 R10
      106 JUMPIFNOTEQKNIL                  R9 ; [+10]
      108 GETUPVAL                         R10 7
      109 GETTABLEKS                       R10 R10 K10 ["castPropertyValue"]
      111 GETTABLEKS                       R11 R5 K12 ["Value"]
      113 GETTABLEKS                       R12 R5 K11 ["Type"]
      115 CALL                             R10 2 1
      116 MOVE                             R9 R10
      117 GETTABLEKS                       R10 R5 K7 ["Name"]
      119 SETTABLE                         R9 R0 R10
      120 FORGLOOP                         R1 2 ; [-68]
      122 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodeStateById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["node"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R4 0 1
       14 GETTABLEKS                       R5 R1 K3 ["nodeLibrary"]
       16 SETLIST                          R4 R5 1 [1]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K0 ["useContext"]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K1 ["Context"]
       25 CALL                             R3 1 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K0 ["useContext"]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K1 ["Context"]
       32 CALL                             R4 1 1
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K0 ["useContext"]
       36 GETUPVAL                         R6 4
       37 GETTABLEKS                       R6 R6 K1 ["Context"]
       39 CALL                             R5 1 1
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K0 ["useContext"]
       43 GETUPVAL                         R7 5
       44 GETTABLEKS                       R7 R7 K1 ["Context"]
       46 CALL                             R6 1 1
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K0 ["useContext"]
       50 GETUPVAL                         R8 6
       51 GETTABLEKS                       R8 R8 K1 ["Context"]
       53 CALL                             R7 1 1
       54 GETUPVAL                         R8 7
       55 GETTABLEKS                       R8 R8 K4 ["useSignalState"]
       57 GETUPVAL                         R9 0
       58 GETTABLEKS                       R9 R9 K2 ["useMemo"]
       60 NEWCLOSURE                       R10 P1
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R0
       63 NEWTABLE                         R11 0 2
       65 GETTABLEKS                       R12 R0 K5 ["node"]
       67 GETTABLEKS                       R12 R12 K6 ["id"]
       69 GETTABLEKS                       R13 R6 K7 ["observeNodePosition"]
       71 SETLIST                          R11 R12 2 [1]
       73 CALL                             R9 2 -1
       74 CALL                             R8 -1 1
       75 GETUPVAL                         R9 7
       76 GETTABLEKS                       R9 R9 K4 ["useSignalState"]
       78 GETUPVAL                         R10 0
       79 GETTABLEKS                       R10 R10 K2 ["useMemo"]
       81 NEWCLOSURE                       R11 P2
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R0
       84 NEWTABLE                         R12 0 2
       86 GETTABLEKS                       R13 R0 K5 ["node"]
       88 GETTABLEKS                       R13 R13 K6 ["id"]
       90 GETTABLEKS                       R14 R5 K8 ["nodeRenderInfoDispatcher"]
       92 GETTABLEKS                       R14 R14 K9 ["observe"]
       94 SETLIST                          R12 R13 2 [1]
       96 CALL                             R10 2 -1
       97 CALL                             R9 -1 1
       98 JUMPIFNOT                        R9 ; [+3]
       99 GETTABLEKS                       R10 R9 K10 ["zIndex"]
      101 JUMP                             ; [+1]
      102 LOADN                            R10 0
      103 GETUPVAL                         R11 0
      104 GETTABLEKS                       R11 R11 K11 ["useCallback"]
      106 NEWCLOSURE                       R12 P3
      107 CAPTURE                          VAL R0
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R7
      111 CAPTURE                          UPVAL U8
      112 NEWTABLE                         R13 0 4
      114 GETTABLEKS                       R14 R6 K12 ["onDragNodeStart"]
      116 GETTABLEKS                       R15 R5 K13 ["selectNodes"]
      118 GETTABLEKS                       R16 R0 K14 ["isShiftEnabled"]
      120 GETTABLEKS                       R17 R7 K15 ["isShiftPressed"]
      122 SETLIST                          R13 R14 4 [1]
      124 CALL                             R11 2 1
      125 GETUPVAL                         R12 0
      126 GETTABLEKS                       R12 R12 K11 ["useCallback"]
      128 NEWCLOSURE                       R13 P4
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R0
      131 NEWTABLE                         R14 0 2
      133 GETTABLEKS                       R15 R0 K5 ["node"]
      135 GETTABLEKS                       R15 R15 K6 ["id"]
      137 GETTABLEKS                       R16 R6 K16 ["onDragNodeMoved"]
      139 SETLIST                          R14 R15 2 [1]
      141 CALL                             R12 2 1
      142 GETUPVAL                         R13 0
      143 GETTABLEKS                       R13 R13 K11 ["useCallback"]
      145 NEWCLOSURE                       R14 P5
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R0
      148 CAPTURE                          VAL R5
      149 NEWTABLE                         R15 0 4
      151 GETTABLEKS                       R16 R5 K17 ["setNodePositions"]
      153 GETTABLEKS                       R17 R6 K7 ["observeNodePosition"]
      155 GETTABLEKS                       R18 R6 K18 ["onDragNodeEnded"]
      157 GETTABLEKS                       R19 R0 K5 ["node"]
      159 GETTABLEKS                       R19 R19 K6 ["id"]
      161 SETLIST                          R15 R16 4 [1]
      163 CALL                             R13 2 1
      164 GETUPVAL                         R14 9
      165 GETTABLEKS                       R15 R0 K5 ["node"]
      167 CALL                             R14 1 1
      168 GETUPVAL                         R15 7
      169 GETTABLEKS                       R15 R15 K4 ["useSignalState"]
      171 GETTABLEKS                       R16 R5 K19 ["nodePayloadDispatcher"]
      173 GETTABLEKS                       R16 R16 K20 ["observeMap"]
      175 CALL                             R15 1 1
      176 GETUPVAL                         R16 0
      177 GETTABLEKS                       R16 R16 K2 ["useMemo"]
      179 NEWCLOSURE                       R17 P6
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R0
      182 CAPTURE                          UPVAL U10
      183 NEWTABLE                         R18 0 3
      185 GETTABLEKS                       R19 R0 K5 ["node"]
      187 GETTABLEKS                       R19 R19 K21 ["nodeType"]
      189 GETTABLEKS                       R20 R0 K5 ["node"]
      191 MOVE                             R21 R2
      192 SETLIST                          R18 R19 3 [1]
      194 CALL                             R16 2 1
      195 GETUPVAL                         R17 0
      196 GETTABLEKS                       R17 R17 K2 ["useMemo"]
      198 NEWCLOSURE                       R18 P7
      199 CAPTURE                          UPVAL U11
      200 CAPTURE                          UPVAL U12
      201 CAPTURE                          VAL R16
      202 CAPTURE                          VAL R0
      203 CAPTURE                          VAL R15
      204 CAPTURE                          UPVAL U0
      205 CAPTURE                          UPVAL U13
      206 CAPTURE                          UPVAL U14
      207 CAPTURE                          UPVAL U15
      208 NEWTABLE                         R19 0 7
      210 MOVE                             R20 R16
      211 GETTABLEKS                       R21 R0 K5 ["node"]
      213 GETTABLEKS                       R22 R0 K5 ["node"]
      215 GETTABLEKS                       R22 R22 K22 ["inputPinToConnectionMap"]
      217 GETTABLEKS                       R23 R0 K5 ["node"]
      219 GETTABLEKS                       R23 R23 K23 ["inputLabelPinToConnectionMap"]
      221 GETTABLEKS                       R24 R0 K5 ["node"]
      223 GETTABLEKS                       R24 R24 K24 ["inputPinInputIds"]
      225 GETTABLEKS                       R25 R0 K5 ["node"]
      227 GETTABLEKS                       R25 R25 K25 ["inputConnectionsByInputId"]
      229 MOVE                             R26 R15
      230 SETLIST                          R19 R20 7 [1]
      232 CALL                             R17 2 1
      233 GETUPVAL                         R18 0
      234 GETTABLEKS                       R18 R18 K11 ["useCallback"]
      236 NEWCLOSURE                       R19 P8
      237 CAPTURE                          VAL R0
      238 CAPTURE                          VAL R5
      239 NEWTABLE                         R20 0 2
      241 GETTABLEKS                       R21 R5 K26 ["setNodeProperty"]
      243 GETTABLEKS                       R23 R0 K5 ["node"]
      245 JUMPIFNOT                        R23 ; [+5]
      246 GETTABLEKS                       R22 R0 K5 ["node"]
      248 GETTABLEKS                       R22 R22 K6 ["id"]
      250 JUMPIF                           R22 ; [+1]
      251 LOADNIL                          R22
      252 SETLIST                          R20 R21 2 [1]
      254 CALL                             R18 2 1
      255 GETTABLEKS                       R19 R0 K5 ["node"]
      257 JUMPIFNOT                        R19 ; [+11]
      258 GETTABLEKS                       R20 R0 K5 ["node"]
      260 GETTABLEKS                       R20 R20 K27 ["className"]
      262 GETUPVAL                         R21 15
      263 GETTABLEKS                       R21 R21 K28 ["PARAMETER_NODE_CLASSNAME"]
      265 JUMPIFEQ                         R20 R21 ; [+2]
      267 LOADB                            R19 0 +1
      268 LOADB                            R19 1
      269 GETUPVAL                         R20 0
      270 GETTABLEKS                       R20 R20 K2 ["useMemo"]
      272 NEWCLOSURE                       R21 P9
      273 CAPTURE                          VAL R0
      274 CAPTURE                          VAL R5
      275 CAPTURE                          UPVAL U16
      276 NEWTABLE                         R22 0 1
      278 GETTABLEKS                       R24 R0 K5 ["node"]
      280 JUMPIFNOT                        R24 ; [+5]
      281 GETTABLEKS                       R23 R0 K5 ["node"]
      283 GETTABLEKS                       R23 R23 K6 ["id"]
      285 JUMPIF                           R23 ; [+1]
      286 LOADNIL                          R23
      287 SETLIST                          R22 R23 1 [1]
      289 CALL                             R20 2 1
      290 GETUPVAL                         R21 7
      291 GETTABLEKS                       R21 R21 K4 ["useSignalState"]
      293 MOVE                             R22 R20
      294 CALL                             R21 1 1
      295 GETUPVAL                         R22 17
      296 GETTABLEKS                       R23 R0 K5 ["node"]
      298 GETTABLEKS                       R23 R23 K22 ["inputPinToConnectionMap"]
      300 CALL                             R22 1 1
      301 GETUPVAL                         R23 7
      302 GETTABLEKS                       R23 R23 K4 ["useSignalState"]
      304 GETTABLEKS                       R24 R3 K29 ["observeParameters"]
      306 CALL                             R23 1 1
      307 GETUPVAL                         R24 0
      308 GETTABLEKS                       R24 R24 K2 ["useMemo"]
      310 NEWCLOSURE                       R25 P10
      311 CAPTURE                          VAL R21
      312 CAPTURE                          UPVAL U18
      313 CAPTURE                          VAL R4
      314 CAPTURE                          VAL R23
      315 CAPTURE                          UPVAL U19
      316 CAPTURE                          VAL R16
      317 CAPTURE                          VAL R0
      318 CAPTURE                          UPVAL U20
      319 CAPTURE                          VAL R22
      320 NEWTABLE                         R26 0 6
      322 MOVE                             R27 R23
      323 MOVE                             R28 R21
      324 GETTABLEKS                       R29 R4 K30 ["parameterOverrides"]
      326 MOVE                             R30 R22
      327 MOVE                             R31 R16
      328 GETTABLEKS                       R32 R0 K5 ["node"]
      330 GETTABLEKS                       R32 R32 K22 ["inputPinToConnectionMap"]
      332 SETLIST                          R26 R27 6 [1]
      334 CALL                             R24 2 1
      335 GETUPVAL                         R25 7
      336 GETTABLEKS                       R25 R25 K4 ["useSignalState"]
      338 GETUPVAL                         R26 0
      339 GETTABLEKS                       R26 R26 K2 ["useMemo"]
      341 NEWCLOSURE                       R27 P11
      342 CAPTURE                          VAL R5
      343 CAPTURE                          VAL R0
      344 NEWTABLE                         R28 0 2
      346 GETTABLEKS                       R29 R5 K31 ["observeNodeStateById"]
      348 GETTABLEKS                       R30 R0 K5 ["node"]
      350 GETTABLEKS                       R30 R30 K6 ["id"]
      352 SETLIST                          R28 R29 2 [1]
      354 CALL                             R26 2 -1
      355 CALL                             R25 -1 1
      356 DUPTABLE                         R26 K47 [{"text", "editName", "CanDrag", "GraphPayload", "Position", "Size", "Selected", "Collapsed", "ZIndex", "OnDragStart", "OnDragMoved", "OnDragEnded", "OnPropertyChanged", "PropertyLookup", "StateLookup"}]
      357 GETTABLEKS                       R27 R14 K48 ["displayName"]
      359 SETTABLEKS                       R27 R26 K32 ["text"]
      361 GETTABLEKS                       R27 R14 K33 ["editName"]
      363 SETTABLEKS                       R27 R26 K33 ["editName"]
      365 GETUPVAL                         R28 21
      366 CALL                             R28 0 1
      367 JUMPIFNOT                        R28 ; [+3]
      368 GETTABLEKS                       R27 R0 K49 ["canDrag"]
      370 JUMP                             ; [+1]
      371 LOADNIL                          R27
      372 SETTABLEKS                       R27 R26 K34 ["CanDrag"]
      374 GETTABLEKS                       R27 R0 K5 ["node"]
      376 SETTABLEKS                       R27 R26 K35 ["GraphPayload"]
      378 MOVE                             R27 R8
      379 JUMPIF                           R27 ; [+2]
      380 GETIMPORT                        R27 K52 [Vector2.zero]
      382 SETTABLEKS                       R27 R26 K36 ["Position"]
      384 JUMPIFNOT                        R9 ; [+6]
      385 GETTABLEKS                       R27 R9 K53 ["size"]
      387 JUMPIF                           R27 ; [+5]
      388 GETIMPORT                        R27 K52 [Vector2.zero]
      390 JUMP                             ; [+2]
      391 GETIMPORT                        R27 K52 [Vector2.zero]
      393 SETTABLEKS                       R27 R26 K37 ["Size"]
      395 JUMPIFNOT                        R9 ; [+3]
      396 GETTABLEKS                       R27 R9 K54 ["isSelected"]
      398 JUMP                             ; [+1]
      399 LOADB                            R27 0
      400 SETTABLEKS                       R27 R26 K38 ["Selected"]
      402 JUMPIFNOT                        R9 ; [+3]
      403 GETTABLEKS                       R27 R9 K55 ["isCollapsed"]
      405 JUMP                             ; [+1]
      406 LOADB                            R27 0
      407 SETTABLEKS                       R27 R26 K39 ["Collapsed"]
      409 SETTABLEKS                       R10 R26 K40 ["ZIndex"]
      411 SETTABLEKS                       R11 R26 K41 ["OnDragStart"]
      413 SETTABLEKS                       R12 R26 K42 ["OnDragMoved"]
      415 SETTABLEKS                       R13 R26 K43 ["OnDragEnded"]
      417 SETTABLEKS                       R18 R26 K44 ["OnPropertyChanged"]
      419 SETTABLEKS                       R24 R26 K45 ["PropertyLookup"]
      421 MOVE                             R27 R25
      422 JUMPIF                           R27 ; [+1]
      423 GETUPVAL                         R27 22
      424 SETTABLEKS                       R27 R26 K46 ["StateLookup"]
      426 LOADNIL                          R27
      427 JUMPIFNOT                        R19 ; [+16]
      428 GETUPVAL                         R28 23
      429 CALL                             R28 0 1
      430 JUMPIFNOT                        R28 ; [+11]
      431 GETTABLEKS                       R28 R0 K5 ["node"]
      433 GETTABLEKS                       R28 R28 K21 ["nodeType"]
      435 GETUPVAL                         R29 15
      436 GETTABLEKS                       R29 R29 K56 ["EXPRESSION_NODE_CLASSNAME"]
      438 JUMPIFNOTEQ                      R28 R29 ; [+3]
      440 GETUPVAL                         R27 24
      441 JUMP                             ; [+36]
      442 GETUPVAL                         R27 25
      443 JUMP                             ; [+34]
      444 GETTABLEKS                       R28 R1 K57 ["renderOnlyLibrary"]
      446 GETTABLEKS                       R29 R0 K5 ["node"]
      448 GETTABLEKS                       R29 R29 K21 ["nodeType"]
      450 JUMPIFNOT                        R29 ; [+13]
      451 GETTABLEKS                       R30 R0 K5 ["node"]
      453 GETTABLEKS                       R30 R30 K21 ["nodeType"]
      455 GETTABLE                         R29 R2 R30
      456 JUMPIF                           R29 ; [+7]
      457 MOVE                             R29 R28
      458 JUMPIFNOT                        R29 ; [+5]
      459 GETTABLEKS                       R30 R0 K5 ["node"]
      461 GETTABLEKS                       R30 R30 K21 ["nodeType"]
      463 GETTABLE                         R29 R28 R30
      464 JUMPIFNOT                        R29 ; [+3]
      465 GETTABLEKS                       R27 R29 K58 ["render"]
      467 JUMP                             ; [+1]
      468 GETUPVAL                         R27 26
      469 GETIMPORT                        R30 K60 [game]
      471 LOADK                            R32 K61 ["DebugDisableCustomNodes"]
      472 LOADB                            R33 0
      473 NAMECALL                         R30 R30 K62 ["DefineFastFlag"]
      475 CALL                             R30 3 1
      476 JUMPIFNOT                        R30 ; [+1]
      477 GETUPVAL                         R27 26
      478 GETUPVAL                         R28 0
      479 GETTABLEKS                       R28 R28 K63 ["createElement"]
      481 GETUPVAL                         R29 0
      482 GETTABLEKS                       R29 R29 K64 ["Fragment"]
      484 NEWTABLE                         R30 0 0
      486 GETUPVAL                         R31 0
      487 GETTABLEKS                       R31 R31 K63 ["createElement"]
      489 MOVE                             R32 R27
      490 MOVE                             R33 R26
      491 CALL                             R31 2 1
      492 MOVE                             R32 R17
      493 CALL                             R28 4 -1
      494 RETURN                           R28 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CompositorConnectionContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["CompositorNode"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Constants"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Components"]
       30 GETTABLEKS                       R5 R5 K10 ["CompositorNodes"]
       32 GETTABLEKS                       R5 R5 K11 ["ExpressionNode"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Components"]
       39 GETTABLEKS                       R6 R6 K12 ["GraphContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Components"]
       46 GETTABLEKS                       R7 R7 K12 ["GraphContext"]
       48 GETTABLEKS                       R7 R7 K13 ["GraphContextTypes"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Components"]
       55 GETTABLEKS                       R8 R8 K14 ["ModifierKeysContext"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K6 ["Components"]
       62 GETTABLEKS                       R9 R9 K15 ["NodeLibraryContext"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K16 ["NodeViewTypes"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K6 ["Components"]
       74 GETTABLEKS                       R11 R11 K17 ["ParameterContext"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["Components"]
       81 GETTABLEKS                       R12 R12 K10 ["CompositorNodes"]
       83 GETTABLEKS                       R12 R12 K18 ["ParameterNode"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K6 ["Components"]
       90 GETTABLEKS                       R13 R13 K19 ["ParameterOverrideContext"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K6 ["Components"]
       97 GETTABLEKS                       R14 R14 K20 ["CompositorNodeProperty"]
       99 GETTABLEKS                       R14 R14 K21 ["PropertyUtils"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K22 ["Parent"]
      106 GETTABLEKS                       R15 R15 K23 ["React"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K6 ["Components"]
      113 GETTABLEKS                       R16 R16 K10 ["CompositorNodes"]
      115 GETTABLEKS                       R16 R16 K24 ["RenderedCompositorCurve"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K22 ["Parent"]
      122 GETTABLEKS                       R17 R17 K25 ["SignalsReact"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R18 R0 K22 ["Parent"]
      129 GETTABLEKS                       R18 R18 K26 ["SignalsUtils"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R19 R0 K27 ["Util"]
      136 GETTABLEKS                       R19 R19 K28 ["bumpNodeZIndex"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R20 R0 K6 ["Components"]
      143 GETTABLEKS                       R20 R20 K10 ["CompositorNodes"]
      145 GETTABLEKS                       R20 R20 K29 ["getConnectionCurves"]
      147 CALL                             R19 1 1
      148 GETIMPORT                        R20 K5 [require]
      150 GETTABLEKS                       R21 R0 K27 ["Util"]
      152 GETTABLEKS                       R21 R21 K30 ["matchParameterBinding"]
      154 CALL                             R20 1 1
      155 GETIMPORT                        R21 K5 [require]
      157 GETTABLEKS                       R22 R0 K6 ["Components"]
      159 GETTABLEKS                       R22 R22 K10 ["CompositorNodes"]
      161 GETTABLEKS                       R22 R22 K31 ["synthesizeDefinition"]
      163 CALL                             R21 1 1
      164 GETIMPORT                        R22 K5 [require]
      166 GETTABLEKS                       R23 R0 K6 ["Components"]
      168 GETTABLEKS                       R23 R23 K10 ["CompositorNodes"]
      170 GETTABLEKS                       R23 R23 K32 ["useNodeNames"]
      172 CALL                             R22 1 1
      173 GETIMPORT                        R23 K5 [require]
      175 GETTABLEKS                       R24 R0 K33 ["Hooks"]
      177 GETTABLEKS                       R24 R24 K34 ["useValueNodeOutputs"]
      179 CALL                             R23 1 1
      180 GETIMPORT                        R24 K5 [require]
      182 GETTABLEKS                       R25 R0 K35 ["Flags"]
      184 GETTABLEKS                       R25 R25 K36 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      186 CALL                             R24 1 1
      187 GETIMPORT                        R25 K5 [require]
      189 GETTABLEKS                       R26 R0 K35 ["Flags"]
      191 GETTABLEKS                       R26 R26 K37 ["getFFlagAnimGraphUIInputIds"]
      193 CALL                             R25 1 1
      194 GETIMPORT                        R26 K5 [require]
      196 GETTABLEKS                       R27 R0 K35 ["Flags"]
      198 GETTABLEKS                       R27 R27 K38 ["getFFlagAnimGraphUI_DrawUnmappedConnectionCurves"]
      200 CALL                             R26 1 1
      201 GETIMPORT                        R27 K5 [require]
      203 GETTABLEKS                       R28 R0 K35 ["Flags"]
      205 GETTABLEKS                       R28 R28 K39 ["getFFlagAnimGraphUI_RunTimeDebug"]
      207 CALL                             R27 1 1
      208 GETIMPORT                        R28 K5 [require]
      210 GETTABLEKS                       R29 R0 K35 ["Flags"]
      212 GETTABLEKS                       R29 R29 K40 ["getFFlagAnimGraphUI_ValueNodeDebugOutputs"]
      214 CALL                             R28 1 1
      215 NEWTABLE                         R29 0 0
      217 DUPCLOSURE                       R30 K41 [PROTO_12]
      218 CAPTURE                          VAL R14
      219 CAPTURE                          VAL R8
      220 CAPTURE                          VAL R10
      221 CAPTURE                          VAL R12
      222 CAPTURE                          VAL R5
      223 CAPTURE                          VAL R1
      224 CAPTURE                          VAL R7
      225 CAPTURE                          VAL R16
      226 CAPTURE                          VAL R18
      227 CAPTURE                          VAL R22
      228 CAPTURE                          VAL R21
      229 CAPTURE                          VAL R26
      230 CAPTURE                          VAL R19
      231 CAPTURE                          VAL R15
      232 CAPTURE                          VAL R25
      233 CAPTURE                          VAL R3
      234 CAPTURE                          VAL R17
      235 CAPTURE                          VAL R23
      236 CAPTURE                          VAL R20
      237 CAPTURE                          VAL R28
      238 CAPTURE                          VAL R13
      239 CAPTURE                          VAL R27
      240 CAPTURE                          VAL R29
      241 CAPTURE                          VAL R24
      242 CAPTURE                          VAL R4
      243 CAPTURE                          VAL R11
      244 CAPTURE                          VAL R2
      245 GETTABLEKS                       R31 R14 K42 ["memo"]
      247 MOVE                             R32 R30
      248 CALL                             R31 1 -1
      249 RETURN                           R31 -1
