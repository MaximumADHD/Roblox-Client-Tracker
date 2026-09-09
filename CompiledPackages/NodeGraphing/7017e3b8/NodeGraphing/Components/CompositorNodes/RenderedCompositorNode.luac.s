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
        1 GETTABLEKS                       R0 R0 K0 ["observeNodePreviewData"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["node"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R0 R0 K1 ["observe"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["node"]
        8 GETTABLEKS                       R1 R1 K3 ["id"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["NODEVIEW_ZINDEX"]
        5 GETTABLEKS                       R0 R0 K1 ["Preview"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+10]
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K2 ["isSelected"]
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K0 ["NODEVIEW_ZINDEX"]
       17 GETTABLEKS                       R0 R0 K3 ["Selected"]
       19 RETURN                           R0 1
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K0 ["NODEVIEW_ZINDEX"]
       23 GETTABLEKS                       R0 R0 K4 ["Nodes"]
       25 RETURN                           R0 1

PROTO_5:
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
       21 JUMPIFNOT                        R3 ; [+4]
       22 GETUPVAL                         R3 5
       23 GETUPVAL                         R4 2
       24 MOVE                             R5 R1
       25 CALL                             R3 2 0
       26 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onDragNodeMoved"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["node"]
        6 GETTABLEKS                       R2 R2 K2 ["id"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+44]
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
       19 DUPTABLE                         R9 K9 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "inputPinDynamicIndex", "pinDataType"}]
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
       40 GETTABLEKS                       R10 R5 K8 ["pinDataType"]
       42 SETTABLEKS                       R10 R9 K8 ["pinDataType"]
       44 CALL                             R7 2 1
       45 SETTABLE                         R7 R0 R6
       46 FORGLOOP                         R1 2 ; [-34]
       48 RETURN                           R0 1
       49 GETUPVAL                         R1 2
       50 JUMPIFNOT                        R1 ; [+139]
       51 GETUPVAL                         R1 2
       52 GETTABLEKS                       R1 R1 K10 ["Inputs"]
       54 JUMPIFNOT                        R1 ; [+135]
       55 GETUPVAL                         R1 2
       56 GETTABLEKS                       R1 R1 K10 ["Inputs"]
       58 LOADNIL                          R2
       59 LOADNIL                          R3
       60 FORGPREP                         R1
       61 GETUPVAL                         R7 3
       62 GETTABLEKS                       R7 R7 K0 ["node"]
       64 GETTABLEKS                       R7 R7 K11 ["inputPinToConnectionMap"]
       66 GETTABLEKS                       R8 R5 K12 ["InputName"]
       68 GETTABLE                         R6 R7 R8
       69 JUMPIFNOT                        R6 ; [+59]
       70 GETUPVAL                         R8 4
       71 JUMPIFNOT                        R8 ; [+8]
       72 GETTABLEKS                       R8 R6 K13 ["outputNodeId"]
       74 JUMPIFNOT                        R8 ; [+5]
       75 GETUPVAL                         R8 4
       76 GETTABLEKS                       R9 R6 K13 ["outputNodeId"]
       78 GETTABLE                         R7 R8 R9
       79 JUMP                             ; [+1]
       80 LOADNIL                          R7
       81 MOVE                             R8 R7
       82 JUMPIFNOT                        R8 ; [+9]
       83 GETTABLEKS                       R9 R7 K14 ["className"]
       85 GETUPVAL                         R10 7
       86 GETTABLEKS                       R10 R10 K15 ["PARAMETER_NODE_CLASSNAME"]
       88 JUMPIFEQ                         R9 R10 ; [+2]
       90 LOADB                            R8 0 +1
       91 LOADB                            R8 1
       92 LOADK                            R10 K16 ["Connection_%*"]
       93 GETTABLEKS                       R12 R6 K17 ["wireId"]
       95 NAMECALL                         R10 R10 K18 ["format"]
       97 CALL                             R10 2 1
       98 MOVE                             R9 R10
       99 GETUPVAL                         R10 5
      100 GETTABLEKS                       R10 R10 K2 ["createElement"]
      102 GETUPVAL                         R11 6
      103 DUPTABLE                         R12 K20 [{["outputPinNodeId"], ["outputPinName"] = "Output", ["inputPinNodeId"], ["inputPinName"], ["pinDataType"]}]
      104 GETTABLEKS                       R13 R6 K13 ["outputNodeId"]
      106 SETTABLEKS                       R13 R12 K3 ["outputPinNodeId"]
      108 GETUPVAL                         R13 3
      109 GETTABLEKS                       R13 R13 K0 ["node"]
      111 GETTABLEKS                       R13 R13 K21 ["id"]
      113 SETTABLEKS                       R13 R12 K5 ["inputPinNodeId"]
      115 GETTABLEKS                       R13 R5 K12 ["InputName"]
      117 SETTABLEKS                       R13 R12 K6 ["inputPinName"]
      119 JUMPIFNOT                        R8 ; [+2]
      120 LOADK                            R13 K22 ["Parameter"]
      121 JUMP                             ; [+3]
      122 GETUPVAL                         R13 7
      123 GETTABLEKS                       R13 R13 K23 ["DEFAULT_PIN_DATA_TYPE"]
      125 SETTABLEKS                       R13 R12 K8 ["pinDataType"]
      127 CALL                             R10 2 1
      128 SETTABLE                         R10 R0 R9
      129 GETTABLEKS                       R7 R5 K24 ["Properties"]
      131 JUMPIFNOT                        R7 ; [+56]
      132 GETTABLEKS                       R7 R5 K24 ["Properties"]
      134 LOADNIL                          R8
      135 LOADNIL                          R9
      136 FORGPREP                         R7
      137 GETUPVAL                         R13 3
      138 GETTABLEKS                       R13 R13 K0 ["node"]
      140 GETTABLEKS                       R13 R13 K25 ["inputLabelPinToConnectionMap"]
      142 GETTABLEKS                       R14 R11 K26 ["Name"]
      144 GETTABLE                         R12 R13 R14
      145 MOVE                             R13 R12
      146 JUMPIFNOT                        R13 ; [+3]
      147 GETTABLEKS                       R14 R5 K12 ["InputName"]
      149 GETTABLE                         R13 R12 R14
      150 JUMPIFNOT                        R13 ; [+35]
      151 LOADK                            R15 K27 ["Connection_%*_inputProperty_%*"]
      152 GETTABLEKS                       R17 R13 K17 ["wireId"]
      154 GETTABLEKS                       R18 R11 K26 ["Name"]
      156 NAMECALL                         R15 R15 K18 ["format"]
      158 CALL                             R15 3 1
      159 MOVE                             R14 R15
      160 GETUPVAL                         R15 5
      161 GETTABLEKS                       R15 R15 K2 ["createElement"]
      163 GETUPVAL                         R16 6
      164 DUPTABLE                         R17 K28 [{["outputPinNodeId"], ["outputPinName"] = "Output", ["inputPinNodeId"], ["inputPinName"], ["inputPinDynamicIndex"], ["pinDataType"] = "Parameter"}]
      165 GETTABLEKS                       R18 R13 K13 ["outputNodeId"]
      167 SETTABLEKS                       R18 R17 K3 ["outputPinNodeId"]
      169 GETUPVAL                         R18 3
      170 GETTABLEKS                       R18 R18 K0 ["node"]
      172 GETTABLEKS                       R18 R18 K21 ["id"]
      174 SETTABLEKS                       R18 R17 K5 ["inputPinNodeId"]
      176 GETTABLEKS                       R18 R11 K26 ["Name"]
      178 SETTABLEKS                       R18 R17 K6 ["inputPinName"]
      180 GETTABLEKS                       R18 R5 K29 ["InputIndex"]
      182 SETTABLEKS                       R18 R17 K7 ["inputPinDynamicIndex"]
      184 CALL                             R15 2 1
      185 SETTABLE                         R15 R0 R14
      186 FORGLOOP                         R7 2 ; [-50]
      188 FORGLOOP                         R1 2 ; [-128]
      190 GETUPVAL                         R1 2
      191 JUMPIFNOT                        R1 ; [+57]
      192 GETUPVAL                         R1 2
      193 GETTABLEKS                       R1 R1 K24 ["Properties"]
      195 JUMPIFNOT                        R1 ; [+53]
      196 GETUPVAL                         R1 2
      197 GETTABLEKS                       R1 R1 K24 ["Properties"]
      199 LOADNIL                          R2
      200 LOADNIL                          R3
      201 FORGPREP                         R1
      202 GETUPVAL                         R7 3
      203 GETTABLEKS                       R7 R7 K0 ["node"]
      205 GETTABLEKS                       R7 R7 K11 ["inputPinToConnectionMap"]
      207 GETTABLEKS                       R8 R5 K26 ["Name"]
      209 GETTABLE                         R6 R7 R8
      210 JUMPIFNOT                        R6 ; [+36]
      211 LOADK                            R8 K30 ["Connection_%*_property_%*"]
      212 GETTABLEKS                       R10 R6 K17 ["wireId"]
      214 GETTABLEKS                       R11 R5 K26 ["Name"]
      216 NAMECALL                         R8 R8 K18 ["format"]
      218 CALL                             R8 3 1
      219 MOVE                             R7 R8
      220 GETUPVAL                         R8 5
      221 GETTABLEKS                       R8 R8 K2 ["createElement"]
      223 GETUPVAL                         R9 6
      224 DUPTABLE                         R10 K31 [{["outputPinNodeId"], ["outputPinName"], ["inputPinNodeId"], ["inputPinName"], ["pinDataType"] = "Parameter"}]
      225 GETTABLEKS                       R11 R6 K13 ["outputNodeId"]
      227 SETTABLEKS                       R11 R10 K3 ["outputPinNodeId"]
      229 GETTABLEKS                       R12 R6 K32 ["outputNodePinId"]
      231 ORK                              R11 R12 K19 ["Output"]
      232 SETTABLEKS                       R11 R10 K4 ["outputPinName"]
      234 GETUPVAL                         R11 3
      235 GETTABLEKS                       R11 R11 K0 ["node"]
      237 GETTABLEKS                       R11 R11 K21 ["id"]
      239 SETTABLEKS                       R11 R10 K5 ["inputPinNodeId"]
      241 GETTABLEKS                       R11 R5 K26 ["Name"]
      243 SETTABLEKS                       R11 R10 K6 ["inputPinName"]
      245 CALL                             R8 2 1
      246 SETTABLE                         R8 R0 R7
      247 FORGLOOP                         R1 2 ; [-46]
      249 RETURN                           R0 1

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+52]
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
       34 JUMP                             ; [+19]
       35 GETUPVAL                         R7 4
       36 CALL                             R7 0 1
       37 JUMPIFNOT                        R7 ; [+15]
       38 FASTCALL1                        TYPE R5 ; [+3]
       39 MOVE                             R8 R5
       40 GETIMPORT                        R7 K1 [type]
       42 CALL                             R7 1 1
       43 JUMPIFNOTEQKS                    R7 K2 ["string"] ; [+9]
       45 GETUPVAL                         R7 5
       46 MOVE                             R8 R5
       47 CALL                             R7 1 1
       48 JUMPIFEQKNIL                     R7 ; [+4]
       50 LOADNIL                          R7
       51 SETTABLE                         R7 R0 R4
       52 JUMP                             ; [+1]
       53 SETTABLE                         R5 R0 R4
       54 FORGLOOP                         R1 2 ; [-47]
       56 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodeStateById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["node"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_14:
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
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R0
       84 NEWTABLE                         R12 0 2
       86 GETTABLEKS                       R13 R0 K5 ["node"]
       88 GETTABLEKS                       R13 R13 K6 ["id"]
       90 GETTABLEKS                       R14 R6 K8 ["observeNodePreviewData"]
       92 SETLIST                          R12 R13 2 [1]
       94 CALL                             R10 2 -1
       95 CALL                             R9 -1 1
       96 GETUPVAL                         R10 7
       97 GETTABLEKS                       R10 R10 K4 ["useSignalState"]
       99 GETUPVAL                         R11 0
      100 GETTABLEKS                       R11 R11 K2 ["useMemo"]
      102 NEWCLOSURE                       R12 P3
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R0
      105 NEWTABLE                         R13 0 2
      107 GETTABLEKS                       R14 R0 K5 ["node"]
      109 GETTABLEKS                       R14 R14 K6 ["id"]
      111 GETTABLEKS                       R15 R5 K9 ["nodeRenderInfoDispatcher"]
      113 GETTABLEKS                       R15 R15 K10 ["observe"]
      115 SETLIST                          R13 R14 2 [1]
      117 CALL                             R11 2 -1
      118 CALL                             R10 -1 1
      119 GETUPVAL                         R12 8
      120 JUMPIFNOT                        R12 ; [+6]
      121 JUMPIFNOT                        R10 ; [+3]
      122 GETTABLEKS                       R11 R10 K11 ["zIndex"]
      124 JUMP                             ; [+23]
      125 LOADN                            R11 0
      126 JUMP                             ; [+21]
      127 GETUPVAL                         R11 0
      128 GETTABLEKS                       R11 R11 K2 ["useMemo"]
      130 NEWCLOSURE                       R12 P4
      131 CAPTURE                          VAL R9
      132 CAPTURE                          UPVAL U9
      133 CAPTURE                          VAL R10
      134 NEWTABLE                         R13 0 3
      136 MOVE                             R14 R9
      137 GETTABLEKS                       R15 R0 K5 ["node"]
      139 GETTABLEKS                       R15 R15 K6 ["id"]
      141 MOVE                             R16 R10
      142 JUMPIFNOT                        R16 ; [+2]
      143 GETTABLEKS                       R16 R10 K12 ["isSelected"]
      145 SETLIST                          R13 R14 3 [1]
      147 CALL                             R11 2 1
      148 GETUPVAL                         R12 0
      149 GETTABLEKS                       R12 R12 K13 ["useCallback"]
      151 NEWCLOSURE                       R13 P5
      152 CAPTURE                          VAL R0
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R7
      156 CAPTURE                          UPVAL U8
      157 CAPTURE                          UPVAL U10
      158 NEWTABLE                         R14 0 4
      160 GETTABLEKS                       R15 R6 K14 ["onDragNodeStart"]
      162 GETTABLEKS                       R16 R5 K15 ["selectNodes"]
      164 GETTABLEKS                       R17 R0 K16 ["isShiftEnabled"]
      166 GETTABLEKS                       R18 R7 K17 ["isShiftPressed"]
      168 SETLIST                          R14 R15 4 [1]
      170 CALL                             R12 2 1
      171 GETUPVAL                         R13 0
      172 GETTABLEKS                       R13 R13 K13 ["useCallback"]
      174 NEWCLOSURE                       R14 P6
      175 CAPTURE                          VAL R6
      176 CAPTURE                          VAL R0
      177 NEWTABLE                         R15 0 2
      179 GETTABLEKS                       R16 R0 K5 ["node"]
      181 GETTABLEKS                       R16 R16 K6 ["id"]
      183 GETTABLEKS                       R17 R6 K18 ["onDragNodeMoved"]
      185 SETLIST                          R15 R16 2 [1]
      187 CALL                             R13 2 1
      188 GETUPVAL                         R14 0
      189 GETTABLEKS                       R14 R14 K13 ["useCallback"]
      191 NEWCLOSURE                       R15 P7
      192 CAPTURE                          VAL R6
      193 CAPTURE                          VAL R0
      194 CAPTURE                          VAL R5
      195 NEWTABLE                         R16 0 4
      197 GETTABLEKS                       R17 R5 K19 ["setNodePositions"]
      199 GETTABLEKS                       R18 R6 K7 ["observeNodePosition"]
      201 GETTABLEKS                       R19 R6 K20 ["onDragNodeEnded"]
      203 GETTABLEKS                       R20 R0 K5 ["node"]
      205 GETTABLEKS                       R20 R20 K6 ["id"]
      207 SETLIST                          R16 R17 4 [1]
      209 CALL                             R14 2 1
      210 GETUPVAL                         R15 11
      211 GETTABLEKS                       R16 R0 K5 ["node"]
      213 CALL                             R15 1 1
      214 GETUPVAL                         R16 7
      215 GETTABLEKS                       R16 R16 K4 ["useSignalState"]
      217 GETTABLEKS                       R17 R5 K21 ["nodePayloadDispatcher"]
      219 GETTABLEKS                       R17 R17 K22 ["observeMap"]
      221 CALL                             R16 1 1
      222 GETUPVAL                         R17 0
      223 GETTABLEKS                       R17 R17 K2 ["useMemo"]
      225 NEWCLOSURE                       R18 P8
      226 CAPTURE                          VAL R2
      227 CAPTURE                          VAL R0
      228 CAPTURE                          UPVAL U12
      229 NEWTABLE                         R19 0 3
      231 GETTABLEKS                       R20 R0 K5 ["node"]
      233 GETTABLEKS                       R20 R20 K23 ["nodeType"]
      235 GETTABLEKS                       R21 R0 K5 ["node"]
      237 MOVE                             R22 R2
      238 SETLIST                          R19 R20 3 [1]
      240 CALL                             R17 2 1
      241 GETUPVAL                         R18 0
      242 GETTABLEKS                       R18 R18 K2 ["useMemo"]
      244 NEWCLOSURE                       R19 P9
      245 CAPTURE                          UPVAL U13
      246 CAPTURE                          UPVAL U14
      247 CAPTURE                          VAL R17
      248 CAPTURE                          VAL R0
      249 CAPTURE                          VAL R16
      250 CAPTURE                          UPVAL U0
      251 CAPTURE                          UPVAL U15
      252 CAPTURE                          UPVAL U9
      253 NEWTABLE                         R20 0 3
      255 MOVE                             R21 R17
      256 GETTABLEKS                       R22 R0 K5 ["node"]
      258 MOVE                             R23 R16
      259 SETLIST                          R20 R21 3 [1]
      261 CALL                             R18 2 1
      262 GETUPVAL                         R19 0
      263 GETTABLEKS                       R19 R19 K13 ["useCallback"]
      265 NEWCLOSURE                       R20 P10
      266 CAPTURE                          VAL R0
      267 CAPTURE                          VAL R5
      268 NEWTABLE                         R21 0 2
      270 GETTABLEKS                       R22 R5 K24 ["setNodeProperty"]
      272 GETTABLEKS                       R24 R0 K5 ["node"]
      274 JUMPIFNOT                        R24 ; [+5]
      275 GETTABLEKS                       R23 R0 K5 ["node"]
      277 GETTABLEKS                       R23 R23 K6 ["id"]
      279 JUMPIF                           R23 ; [+1]
      280 LOADNIL                          R23
      281 SETLIST                          R21 R22 2 [1]
      283 CALL                             R19 2 1
      284 GETTABLEKS                       R20 R0 K5 ["node"]
      286 JUMPIFNOT                        R20 ; [+11]
      287 GETTABLEKS                       R21 R0 K5 ["node"]
      289 GETTABLEKS                       R21 R21 K25 ["className"]
      291 GETUPVAL                         R22 9
      292 GETTABLEKS                       R22 R22 K26 ["PARAMETER_NODE_CLASSNAME"]
      294 JUMPIFEQ                         R21 R22 ; [+2]
      296 LOADB                            R20 0 +1
      297 LOADB                            R20 1
      298 GETUPVAL                         R21 0
      299 GETTABLEKS                       R21 R21 K2 ["useMemo"]
      301 NEWCLOSURE                       R22 P11
      302 CAPTURE                          VAL R0
      303 CAPTURE                          VAL R5
      304 CAPTURE                          UPVAL U16
      305 NEWTABLE                         R23 0 1
      307 GETTABLEKS                       R25 R0 K5 ["node"]
      309 JUMPIFNOT                        R25 ; [+5]
      310 GETTABLEKS                       R24 R0 K5 ["node"]
      312 GETTABLEKS                       R24 R24 K6 ["id"]
      314 JUMPIF                           R24 ; [+1]
      315 LOADNIL                          R24
      316 SETLIST                          R23 R24 1 [1]
      318 CALL                             R21 2 1
      319 GETUPVAL                         R22 7
      320 GETTABLEKS                       R22 R22 K4 ["useSignalState"]
      322 MOVE                             R23 R21
      323 CALL                             R22 1 1
      324 GETUPVAL                         R23 7
      325 GETTABLEKS                       R23 R23 K4 ["useSignalState"]
      327 GETTABLEKS                       R24 R3 K27 ["observeParameters"]
      329 CALL                             R23 1 1
      330 GETUPVAL                         R24 0
      331 GETTABLEKS                       R24 R24 K2 ["useMemo"]
      333 NEWCLOSURE                       R25 P12
      334 CAPTURE                          VAL R22
      335 CAPTURE                          UPVAL U17
      336 CAPTURE                          VAL R4
      337 CAPTURE                          VAL R23
      338 CAPTURE                          UPVAL U18
      339 CAPTURE                          UPVAL U19
      340 NEWTABLE                         R26 0 3
      342 MOVE                             R27 R23
      343 MOVE                             R28 R22
      344 GETTABLEKS                       R29 R4 K28 ["parameterOverrides"]
      346 SETLIST                          R26 R27 3 [1]
      348 CALL                             R24 2 1
      349 GETUPVAL                         R25 7
      350 GETTABLEKS                       R25 R25 K4 ["useSignalState"]
      352 GETUPVAL                         R26 0
      353 GETTABLEKS                       R26 R26 K2 ["useMemo"]
      355 NEWCLOSURE                       R27 P13
      356 CAPTURE                          VAL R5
      357 CAPTURE                          VAL R0
      358 NEWTABLE                         R28 0 2
      360 GETTABLEKS                       R29 R5 K29 ["observeNodeStateById"]
      362 GETTABLEKS                       R30 R0 K5 ["node"]
      364 GETTABLEKS                       R30 R30 K6 ["id"]
      366 SETLIST                          R28 R29 2 [1]
      368 CALL                             R26 2 -1
      369 CALL                             R25 -1 1
      370 DUPTABLE                         R26 K45 [{"text", "editName", "CanDrag", "GraphPayload", "Position", "Size", "Selected", "Collapsed", "ZIndex", "OnDragStart", "OnDragMoved", "OnDragEnded", "OnPropertyChanged", "PropertyLookup", "StateLookup"}]
      371 GETTABLEKS                       R27 R15 K46 ["displayName"]
      373 SETTABLEKS                       R27 R26 K30 ["text"]
      375 GETTABLEKS                       R27 R15 K31 ["editName"]
      377 SETTABLEKS                       R27 R26 K31 ["editName"]
      379 GETUPVAL                         R28 20
      380 CALL                             R28 0 1
      381 JUMPIFNOT                        R28 ; [+3]
      382 GETTABLEKS                       R27 R0 K47 ["canDrag"]
      384 JUMP                             ; [+1]
      385 LOADNIL                          R27
      386 SETTABLEKS                       R27 R26 K32 ["CanDrag"]
      388 GETTABLEKS                       R27 R0 K5 ["node"]
      390 SETTABLEKS                       R27 R26 K33 ["GraphPayload"]
      392 MOVE                             R27 R8
      393 JUMPIF                           R27 ; [+2]
      394 GETIMPORT                        R27 K50 [Vector2.zero]
      396 SETTABLEKS                       R27 R26 K34 ["Position"]
      398 JUMPIFNOT                        R10 ; [+6]
      399 GETTABLEKS                       R27 R10 K51 ["size"]
      401 JUMPIF                           R27 ; [+5]
      402 GETIMPORT                        R27 K50 [Vector2.zero]
      404 JUMP                             ; [+2]
      405 GETIMPORT                        R27 K50 [Vector2.zero]
      407 SETTABLEKS                       R27 R26 K35 ["Size"]
      409 JUMPIFNOT                        R10 ; [+3]
      410 GETTABLEKS                       R27 R10 K12 ["isSelected"]
      412 JUMP                             ; [+1]
      413 LOADB                            R27 0
      414 SETTABLEKS                       R27 R26 K36 ["Selected"]
      416 JUMPIFNOT                        R10 ; [+3]
      417 GETTABLEKS                       R27 R10 K52 ["isCollapsed"]
      419 JUMP                             ; [+1]
      420 LOADB                            R27 0
      421 SETTABLEKS                       R27 R26 K37 ["Collapsed"]
      423 SETTABLEKS                       R11 R26 K38 ["ZIndex"]
      425 SETTABLEKS                       R12 R26 K39 ["OnDragStart"]
      427 SETTABLEKS                       R13 R26 K40 ["OnDragMoved"]
      429 SETTABLEKS                       R14 R26 K41 ["OnDragEnded"]
      431 SETTABLEKS                       R19 R26 K42 ["OnPropertyChanged"]
      433 SETTABLEKS                       R24 R26 K43 ["PropertyLookup"]
      435 MOVE                             R27 R25
      436 JUMPIF                           R27 ; [+1]
      437 GETUPVAL                         R27 21
      438 SETTABLEKS                       R27 R26 K44 ["StateLookup"]
      440 LOADNIL                          R27
      441 JUMPIFNOT                        R20 ; [+16]
      442 GETUPVAL                         R28 18
      443 CALL                             R28 0 1
      444 JUMPIFNOT                        R28 ; [+11]
      445 GETTABLEKS                       R28 R0 K5 ["node"]
      447 GETTABLEKS                       R28 R28 K23 ["nodeType"]
      449 GETUPVAL                         R29 9
      450 GETTABLEKS                       R29 R29 K53 ["EXPRESSION_NODE_CLASSNAME"]
      452 JUMPIFNOTEQ                      R28 R29 ; [+3]
      454 GETUPVAL                         R27 22
      455 JUMP                             ; [+36]
      456 GETUPVAL                         R27 23
      457 JUMP                             ; [+34]
      458 GETTABLEKS                       R28 R1 K54 ["renderOnlyLibrary"]
      460 GETTABLEKS                       R29 R0 K5 ["node"]
      462 GETTABLEKS                       R29 R29 K23 ["nodeType"]
      464 JUMPIFNOT                        R29 ; [+13]
      465 GETTABLEKS                       R30 R0 K5 ["node"]
      467 GETTABLEKS                       R30 R30 K23 ["nodeType"]
      469 GETTABLE                         R29 R2 R30
      470 JUMPIF                           R29 ; [+7]
      471 MOVE                             R29 R28
      472 JUMPIFNOT                        R29 ; [+5]
      473 GETTABLEKS                       R30 R0 K5 ["node"]
      475 GETTABLEKS                       R30 R30 K23 ["nodeType"]
      477 GETTABLE                         R29 R28 R30
      478 JUMPIFNOT                        R29 ; [+3]
      479 GETTABLEKS                       R27 R29 K55 ["render"]
      481 JUMP                             ; [+1]
      482 GETUPVAL                         R27 24
      483 GETIMPORT                        R30 K57 [game]
      485 LOADK                            R32 K58 ["DebugDisableCustomNodes"]
      486 LOADB                            R33 0
      487 NAMECALL                         R30 R30 K59 ["DefineFastFlag"]
      489 CALL                             R30 3 1
      490 JUMPIFNOT                        R30 ; [+1]
      491 GETUPVAL                         R27 24
      492 GETUPVAL                         R28 0
      493 GETTABLEKS                       R28 R28 K60 ["createElement"]
      495 GETUPVAL                         R29 0
      496 GETTABLEKS                       R29 R29 K61 ["Fragment"]
      498 NEWTABLE                         R30 0 0
      500 GETUPVAL                         R31 0
      501 GETTABLEKS                       R31 R31 K60 ["createElement"]
      503 MOVE                             R32 R27
      504 MOVE                             R33 R26
      505 CALL                             R31 2 1
      506 MOVE                             R32 R18
      507 CALL                             R28 4 -1
      508 RETURN                           R28 -1

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
       95 GETTABLEKS                       R14 R0 K20 ["Parent"]
       97 GETTABLEKS                       R14 R14 K21 ["React"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K6 ["Components"]
      104 GETTABLEKS                       R15 R15 K10 ["CompositorNodes"]
      106 GETTABLEKS                       R15 R15 K22 ["RenderedCompositorCurve"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K20 ["Parent"]
      113 GETTABLEKS                       R16 R16 K23 ["SignalsReact"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R17 R0 K20 ["Parent"]
      120 GETTABLEKS                       R17 R17 K24 ["SignalsUtils"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R18 R0 K25 ["Util"]
      127 GETTABLEKS                       R18 R18 K26 ["bumpNodeZIndex"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R19 R0 K6 ["Components"]
      134 GETTABLEKS                       R19 R19 K10 ["CompositorNodes"]
      136 GETTABLEKS                       R19 R19 K27 ["getConnectionCurves"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R20 R0 K25 ["Util"]
      143 GETTABLEKS                       R20 R20 K28 ["matchExpressionBinding"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R21 R0 K25 ["Util"]
      150 GETTABLEKS                       R21 R21 K29 ["matchParameterBinding"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETTABLEKS                       R22 R0 K6 ["Components"]
      157 GETTABLEKS                       R22 R22 K10 ["CompositorNodes"]
      159 GETTABLEKS                       R22 R22 K30 ["synthesizeDefinition"]
      161 CALL                             R21 1 1
      162 GETIMPORT                        R22 K5 [require]
      164 GETTABLEKS                       R23 R0 K6 ["Components"]
      166 GETTABLEKS                       R23 R23 K10 ["CompositorNodes"]
      168 GETTABLEKS                       R23 R23 K31 ["useNodeNames"]
      170 CALL                             R22 1 1
      171 GETIMPORT                        R23 K5 [require]
      173 GETTABLEKS                       R24 R0 K32 ["Flags"]
      175 GETTABLEKS                       R24 R24 K33 ["FFlagAnimGraphUI_DynamicZIndex"]
      177 CALL                             R23 1 1
      178 GETIMPORT                        R24 K5 [require]
      180 GETTABLEKS                       R25 R0 K32 ["Flags"]
      182 GETTABLEKS                       R25 R25 K34 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      184 CALL                             R24 1 1
      185 GETIMPORT                        R25 K5 [require]
      187 GETTABLEKS                       R26 R0 K32 ["Flags"]
      189 GETTABLEKS                       R26 R26 K35 ["getFFlagAnimGraphUI_DrawUnmappedConnectionCurves"]
      191 CALL                             R25 1 1
      192 GETIMPORT                        R26 K5 [require]
      194 GETTABLEKS                       R27 R0 K32 ["Flags"]
      196 GETTABLEKS                       R27 R27 K36 ["getFFlagAnimGraphUI_RunTimeDebug"]
      198 CALL                             R26 1 1
      199 NEWTABLE                         R27 0 0
      201 DUPCLOSURE                       R28 K37 [PROTO_14]
      202 CAPTURE                          VAL R13
      203 CAPTURE                          VAL R8
      204 CAPTURE                          VAL R10
      205 CAPTURE                          VAL R12
      206 CAPTURE                          VAL R5
      207 CAPTURE                          VAL R1
      208 CAPTURE                          VAL R7
      209 CAPTURE                          VAL R15
      210 CAPTURE                          VAL R23
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R17
      213 CAPTURE                          VAL R22
      214 CAPTURE                          VAL R21
      215 CAPTURE                          VAL R25
      216 CAPTURE                          VAL R18
      217 CAPTURE                          VAL R14
      218 CAPTURE                          VAL R16
      219 CAPTURE                          VAL R20
      220 CAPTURE                          VAL R24
      221 CAPTURE                          VAL R19
      222 CAPTURE                          VAL R26
      223 CAPTURE                          VAL R27
      224 CAPTURE                          VAL R4
      225 CAPTURE                          VAL R11
      226 CAPTURE                          VAL R2
      227 GETTABLEKS                       R29 R13 K38 ["memo"]
      229 MOVE                             R30 R28
      230 CALL                             R29 1 -1
      231 RETURN                           R29 -1
