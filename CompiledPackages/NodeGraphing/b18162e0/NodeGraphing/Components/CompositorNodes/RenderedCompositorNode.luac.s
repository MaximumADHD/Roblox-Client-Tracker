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
       20 RETURN                           R0 0

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
        3 JUMPIFNOT                        R1 ; [+187]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["Inputs"]
        7 JUMPIFNOT                        R1 ; [+183]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["Inputs"]
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K1 ["node"]
       17 GETTABLEKS                       R7 R7 K2 ["inputPinToConnectionMap"]
       19 GETTABLEKS                       R8 R5 K3 ["InputName"]
       21 GETTABLE                         R6 R7 R8
       22 GETUPVAL                         R7 2
       23 CALL                             R7 0 1
       24 JUMPIFNOT                        R7 ; [+126]
       25 JUMPIFNOT                        R6 ; [+59]
       26 GETUPVAL                         R8 3
       27 JUMPIFNOT                        R8 ; [+5]
       28 GETUPVAL                         R8 3
       29 GETTABLEKS                       R9 R6 K4 ["outputNodeId"]
       31 GETTABLE                         R7 R8 R9
       32 JUMP                             ; [+1]
       33 LOADNIL                          R7
       34 MOVE                             R8 R7
       35 JUMPIFNOT                        R8 ; [+9]
       36 GETTABLEKS                       R9 R7 K5 ["className"]
       38 GETUPVAL                         R10 4
       39 GETTABLEKS                       R10 R10 K6 ["PARAMETER_NODE_CLASSNAME"]
       41 JUMPIFEQ                         R9 R10 ; [+2]
       43 LOADB                            R8 0 +1
       44 LOADB                            R8 1
       45 LOADK                            R10 K7 ["Connection_%*"]
       46 GETTABLEKS                       R12 R6 K8 ["wireId"]
       48 NAMECALL                         R10 R10 K9 ["format"]
       50 CALL                             R10 2 1
       51 MOVE                             R9 R10
       52 GETUPVAL                         R10 5
       53 GETTABLEKS                       R10 R10 K10 ["createElement"]
       55 GETUPVAL                         R11 6
       56 DUPTABLE                         R12 K16 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "pinDataType"}]
       57 GETTABLEKS                       R13 R6 K4 ["outputNodeId"]
       59 SETTABLEKS                       R13 R12 K11 ["outputPinNodeId"]
       61 LOADK                            R13 K17 ["Output"]
       62 SETTABLEKS                       R13 R12 K12 ["outputPinName"]
       64 GETUPVAL                         R13 1
       65 GETTABLEKS                       R13 R13 K1 ["node"]
       67 GETTABLEKS                       R13 R13 K18 ["id"]
       69 SETTABLEKS                       R13 R12 K13 ["inputPinNodeId"]
       71 GETTABLEKS                       R13 R5 K3 ["InputName"]
       73 SETTABLEKS                       R13 R12 K14 ["inputPinName"]
       75 JUMPIFNOT                        R8 ; [+2]
       76 LOADK                            R13 K19 ["Parameter"]
       77 JUMP                             ; [+3]
       78 GETUPVAL                         R13 4
       79 GETTABLEKS                       R13 R13 K20 ["DEFAULT_PIN_DATA_TYPE"]
       81 SETTABLEKS                       R13 R12 K15 ["pinDataType"]
       83 CALL                             R10 2 1
       84 SETTABLE                         R10 R0 R9
       85 GETTABLEKS                       R7 R5 K21 ["Properties"]
       87 JUMPIFNOT                        R7 ; [+101]
       88 GETTABLEKS                       R7 R5 K21 ["Properties"]
       90 LOADNIL                          R8
       91 LOADNIL                          R9
       92 FORGPREP                         R7
       93 GETUPVAL                         R13 1
       94 GETTABLEKS                       R13 R13 K1 ["node"]
       96 GETTABLEKS                       R13 R13 K22 ["inputLabelPinToConnectionMap"]
       98 GETTABLEKS                       R14 R11 K23 ["Name"]
      100 GETTABLE                         R12 R13 R14
      101 MOVE                             R13 R12
      102 JUMPIFNOT                        R13 ; [+3]
      103 GETTABLEKS                       R14 R5 K3 ["InputName"]
      105 GETTABLE                         R13 R12 R14
      106 JUMPIFNOT                        R13 ; [+41]
      107 LOADK                            R15 K24 ["Connection_%*_inputProperty_%*"]
      108 GETTABLEKS                       R17 R13 K8 ["wireId"]
      110 GETTABLEKS                       R18 R11 K23 ["Name"]
      112 NAMECALL                         R15 R15 K9 ["format"]
      114 CALL                             R15 3 1
      115 MOVE                             R14 R15
      116 GETUPVAL                         R15 5
      117 GETTABLEKS                       R15 R15 K10 ["createElement"]
      119 GETUPVAL                         R16 6
      120 DUPTABLE                         R17 K26 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "inputPinDynamicIndex", "pinDataType"}]
      121 GETTABLEKS                       R18 R13 K4 ["outputNodeId"]
      123 SETTABLEKS                       R18 R17 K11 ["outputPinNodeId"]
      125 LOADK                            R18 K17 ["Output"]
      126 SETTABLEKS                       R18 R17 K12 ["outputPinName"]
      128 GETUPVAL                         R18 1
      129 GETTABLEKS                       R18 R18 K1 ["node"]
      131 GETTABLEKS                       R18 R18 K18 ["id"]
      133 SETTABLEKS                       R18 R17 K13 ["inputPinNodeId"]
      135 GETTABLEKS                       R18 R11 K23 ["Name"]
      137 SETTABLEKS                       R18 R17 K14 ["inputPinName"]
      139 GETTABLEKS                       R18 R5 K27 ["InputIndex"]
      141 SETTABLEKS                       R18 R17 K25 ["inputPinDynamicIndex"]
      143 LOADK                            R18 K19 ["Parameter"]
      144 SETTABLEKS                       R18 R17 K15 ["pinDataType"]
      146 CALL                             R15 2 1
      147 SETTABLE                         R15 R0 R14
      148 FORGLOOP                         R7 2 ; [-56]
      150 JUMP                             ; [+38]
      151 JUMPIFNOT                        R6 ; [+37]
      152 LOADK                            R8 K7 ["Connection_%*"]
      153 GETTABLEKS                       R10 R6 K8 ["wireId"]
      155 NAMECALL                         R8 R8 K9 ["format"]
      157 CALL                             R8 2 1
      158 MOVE                             R7 R8
      159 GETUPVAL                         R8 5
      160 GETTABLEKS                       R8 R8 K10 ["createElement"]
      162 GETUPVAL                         R9 6
      163 DUPTABLE                         R10 K16 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "pinDataType"}]
      164 GETTABLEKS                       R11 R6 K4 ["outputNodeId"]
      166 SETTABLEKS                       R11 R10 K11 ["outputPinNodeId"]
      168 LOADK                            R11 K17 ["Output"]
      169 SETTABLEKS                       R11 R10 K12 ["outputPinName"]
      171 GETUPVAL                         R11 1
      172 GETTABLEKS                       R11 R11 K1 ["node"]
      174 GETTABLEKS                       R11 R11 K18 ["id"]
      176 SETTABLEKS                       R11 R10 K13 ["inputPinNodeId"]
      178 GETTABLEKS                       R11 R5 K3 ["InputName"]
      180 SETTABLEKS                       R11 R10 K14 ["inputPinName"]
      182 GETUPVAL                         R11 4
      183 GETTABLEKS                       R11 R11 K20 ["DEFAULT_PIN_DATA_TYPE"]
      185 SETTABLEKS                       R11 R10 K15 ["pinDataType"]
      187 CALL                             R8 2 1
      188 SETTABLE                         R8 R0 R7
      189 FORGLOOP                         R1 2 ; [-176]
      191 GETUPVAL                         R1 0
      192 JUMPIFNOT                        R1 ; [+58]
      193 GETUPVAL                         R1 0
      194 GETTABLEKS                       R1 R1 K21 ["Properties"]
      196 JUMPIFNOT                        R1 ; [+54]
      197 GETUPVAL                         R1 0
      198 GETTABLEKS                       R1 R1 K21 ["Properties"]
      200 LOADNIL                          R2
      201 LOADNIL                          R3
      202 FORGPREP                         R1
      203 GETUPVAL                         R7 1
      204 GETTABLEKS                       R7 R7 K1 ["node"]
      206 GETTABLEKS                       R7 R7 K2 ["inputPinToConnectionMap"]
      208 GETTABLEKS                       R8 R5 K23 ["Name"]
      210 GETTABLE                         R6 R7 R8
      211 JUMPIFNOT                        R6 ; [+37]
      212 LOADK                            R8 K28 ["Connection_%*_property_%*"]
      213 GETTABLEKS                       R10 R6 K8 ["wireId"]
      215 GETTABLEKS                       R11 R5 K23 ["Name"]
      217 NAMECALL                         R8 R8 K9 ["format"]
      219 CALL                             R8 3 1
      220 MOVE                             R7 R8
      221 GETUPVAL                         R8 5
      222 GETTABLEKS                       R8 R8 K10 ["createElement"]
      224 GETUPVAL                         R9 6
      225 DUPTABLE                         R10 K16 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "pinDataType"}]
      226 GETTABLEKS                       R11 R6 K4 ["outputNodeId"]
      228 SETTABLEKS                       R11 R10 K11 ["outputPinNodeId"]
      230 LOADK                            R11 K17 ["Output"]
      231 SETTABLEKS                       R11 R10 K12 ["outputPinName"]
      233 GETUPVAL                         R11 1
      234 GETTABLEKS                       R11 R11 K1 ["node"]
      236 GETTABLEKS                       R11 R11 K18 ["id"]
      238 SETTABLEKS                       R11 R10 K13 ["inputPinNodeId"]
      240 GETTABLEKS                       R11 R5 K23 ["Name"]
      242 SETTABLEKS                       R11 R10 K14 ["inputPinName"]
      244 LOADK                            R11 K19 ["Parameter"]
      245 SETTABLEKS                       R11 R10 K15 ["pinDataType"]
      247 CALL                             R8 2 1
      248 SETTABLE                         R8 R0 R7
      249 FORGLOOP                         R1 2 ; [-47]
      251 RETURN                           R0 1

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
        3 JUMPIFNOT                        R1 ; [+43]
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
       20 JUMPIFNOT                        R6 ; [+23]
       21 GETUPVAL                         R7 2
       22 CALL                             R7 0 1
       23 JUMPIFNOT                        R7 ; [+14]
       24 GETUPVAL                         R8 3
       25 GETTABLEKS                       R8 R8 K3 ["parameterOverrides"]
       27 GETTABLE                         R7 R8 R6
       28 JUMPIFEQKNIL                     R7 ; [+3]
       30 MOVE                             R8 R7
       31 JUMP                             ; [+4]
       32 GETUPVAL                         R8 4
       33 JUMPIFNOT                        R8 ; [+2]
       34 GETUPVAL                         R9 4
       35 GETTABLE                         R8 R9 R6
       36 SETTABLE                         R8 R0 R4
       37 JUMP                             ; [+7]
       38 GETUPVAL                         R7 4
       39 JUMPIFNOT                        R7 ; [+2]
       40 GETUPVAL                         R8 4
       41 GETTABLE                         R7 R8 R6
       42 SETTABLE                         R7 R0 R4
       43 JUMP                             ; [+1]
       44 SETTABLE                         R5 R0 R4
       45 FORGLOOP                         R1 2 ; [-38]
       47 RETURN                           R0 1

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
      119 GETUPVAL                         R11 0
      120 GETTABLEKS                       R11 R11 K2 ["useMemo"]
      122 NEWCLOSURE                       R12 P4
      123 CAPTURE                          VAL R9
      124 CAPTURE                          UPVAL U8
      125 CAPTURE                          VAL R10
      126 NEWTABLE                         R13 0 3
      128 MOVE                             R14 R9
      129 GETTABLEKS                       R15 R0 K5 ["node"]
      131 GETTABLEKS                       R15 R15 K6 ["id"]
      133 MOVE                             R16 R10
      134 JUMPIFNOT                        R16 ; [+2]
      135 GETTABLEKS                       R16 R10 K11 ["isSelected"]
      137 SETLIST                          R13 R14 3 [1]
      139 CALL                             R11 2 1
      140 GETUPVAL                         R12 0
      141 GETTABLEKS                       R12 R12 K12 ["useCallback"]
      143 NEWCLOSURE                       R13 P5
      144 CAPTURE                          VAL R0
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R7
      148 NEWTABLE                         R14 0 4
      150 GETTABLEKS                       R15 R6 K13 ["onDragNodeStart"]
      152 GETTABLEKS                       R16 R5 K14 ["selectNodes"]
      154 GETTABLEKS                       R17 R0 K15 ["isShiftEnabled"]
      156 GETTABLEKS                       R18 R7 K16 ["isShiftPressed"]
      158 SETLIST                          R14 R15 4 [1]
      160 CALL                             R12 2 1
      161 GETUPVAL                         R13 0
      162 GETTABLEKS                       R13 R13 K12 ["useCallback"]
      164 NEWCLOSURE                       R14 P6
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R0
      167 NEWTABLE                         R15 0 2
      169 GETTABLEKS                       R16 R0 K5 ["node"]
      171 GETTABLEKS                       R16 R16 K6 ["id"]
      173 GETTABLEKS                       R17 R6 K17 ["onDragNodeMoved"]
      175 SETLIST                          R15 R16 2 [1]
      177 CALL                             R13 2 1
      178 GETUPVAL                         R14 0
      179 GETTABLEKS                       R14 R14 K12 ["useCallback"]
      181 NEWCLOSURE                       R15 P7
      182 CAPTURE                          VAL R6
      183 CAPTURE                          VAL R0
      184 CAPTURE                          VAL R5
      185 NEWTABLE                         R16 0 4
      187 GETTABLEKS                       R17 R5 K18 ["setNodePositions"]
      189 GETTABLEKS                       R18 R6 K7 ["observeNodePosition"]
      191 GETTABLEKS                       R19 R6 K19 ["onDragNodeEnded"]
      193 GETTABLEKS                       R20 R0 K5 ["node"]
      195 GETTABLEKS                       R20 R20 K6 ["id"]
      197 SETLIST                          R16 R17 4 [1]
      199 CALL                             R14 2 1
      200 GETUPVAL                         R15 9
      201 GETTABLEKS                       R16 R0 K5 ["node"]
      203 CALL                             R15 1 1
      204 GETUPVAL                         R16 7
      205 GETTABLEKS                       R16 R16 K4 ["useSignalState"]
      207 GETTABLEKS                       R17 R5 K20 ["nodePayloadDispatcher"]
      209 GETTABLEKS                       R17 R17 K21 ["observeMap"]
      211 CALL                             R16 1 1
      212 GETUPVAL                         R17 0
      213 GETTABLEKS                       R17 R17 K2 ["useMemo"]
      215 NEWCLOSURE                       R18 P8
      216 CAPTURE                          VAL R2
      217 CAPTURE                          VAL R0
      218 CAPTURE                          UPVAL U10
      219 NEWTABLE                         R19 0 3
      221 GETTABLEKS                       R20 R0 K5 ["node"]
      223 GETTABLEKS                       R20 R20 K22 ["nodeType"]
      225 GETTABLEKS                       R21 R0 K5 ["node"]
      227 MOVE                             R22 R2
      228 SETLIST                          R19 R20 3 [1]
      230 CALL                             R17 2 1
      231 GETUPVAL                         R18 0
      232 GETTABLEKS                       R18 R18 K2 ["useMemo"]
      234 NEWCLOSURE                       R19 P9
      235 CAPTURE                          VAL R17
      236 CAPTURE                          VAL R0
      237 CAPTURE                          UPVAL U11
      238 CAPTURE                          VAL R16
      239 CAPTURE                          UPVAL U8
      240 CAPTURE                          UPVAL U0
      241 CAPTURE                          UPVAL U12
      242 NEWTABLE                         R20 0 3
      244 MOVE                             R21 R17
      245 GETTABLEKS                       R22 R0 K5 ["node"]
      247 MOVE                             R23 R16
      248 SETLIST                          R20 R21 3 [1]
      250 CALL                             R18 2 1
      251 GETUPVAL                         R19 0
      252 GETTABLEKS                       R19 R19 K12 ["useCallback"]
      254 NEWCLOSURE                       R20 P10
      255 CAPTURE                          VAL R0
      256 CAPTURE                          VAL R5
      257 NEWTABLE                         R21 0 2
      259 GETTABLEKS                       R22 R5 K23 ["setNodeProperty"]
      261 GETTABLEKS                       R24 R0 K5 ["node"]
      263 JUMPIFNOT                        R24 ; [+5]
      264 GETTABLEKS                       R23 R0 K5 ["node"]
      266 GETTABLEKS                       R23 R23 K6 ["id"]
      268 JUMPIF                           R23 ; [+1]
      269 LOADNIL                          R23
      270 SETLIST                          R21 R22 2 [1]
      272 CALL                             R19 2 1
      273 GETTABLEKS                       R20 R0 K5 ["node"]
      275 JUMPIFNOT                        R20 ; [+11]
      276 GETTABLEKS                       R21 R0 K5 ["node"]
      278 GETTABLEKS                       R21 R21 K24 ["className"]
      280 GETUPVAL                         R22 8
      281 GETTABLEKS                       R22 R22 K25 ["PARAMETER_NODE_CLASSNAME"]
      283 JUMPIFEQ                         R21 R22 ; [+2]
      285 LOADB                            R20 0 +1
      286 LOADB                            R20 1
      287 GETUPVAL                         R21 0
      288 GETTABLEKS                       R21 R21 K2 ["useMemo"]
      290 NEWCLOSURE                       R22 P11
      291 CAPTURE                          VAL R0
      292 CAPTURE                          VAL R5
      293 CAPTURE                          UPVAL U13
      294 NEWTABLE                         R23 0 1
      296 GETTABLEKS                       R25 R0 K5 ["node"]
      298 JUMPIFNOT                        R25 ; [+5]
      299 GETTABLEKS                       R24 R0 K5 ["node"]
      301 GETTABLEKS                       R24 R24 K6 ["id"]
      303 JUMPIF                           R24 ; [+1]
      304 LOADNIL                          R24
      305 SETLIST                          R23 R24 1 [1]
      307 CALL                             R21 2 1
      308 GETUPVAL                         R22 7
      309 GETTABLEKS                       R22 R22 K4 ["useSignalState"]
      311 MOVE                             R23 R21
      312 CALL                             R22 1 1
      313 GETUPVAL                         R23 7
      314 GETTABLEKS                       R23 R23 K4 ["useSignalState"]
      316 GETTABLEKS                       R24 R3 K26 ["observeParameters"]
      318 CALL                             R23 1 1
      319 GETUPVAL                         R24 0
      320 GETTABLEKS                       R24 R24 K2 ["useMemo"]
      322 NEWCLOSURE                       R25 P12
      323 CAPTURE                          VAL R22
      324 CAPTURE                          UPVAL U14
      325 CAPTURE                          UPVAL U15
      326 CAPTURE                          VAL R4
      327 CAPTURE                          VAL R23
      328 NEWTABLE                         R26 0 3
      330 MOVE                             R27 R23
      331 MOVE                             R28 R22
      332 GETTABLEKS                       R29 R4 K27 ["parameterOverrides"]
      334 SETLIST                          R26 R27 3 [1]
      336 CALL                             R24 2 1
      337 GETUPVAL                         R25 7
      338 GETTABLEKS                       R25 R25 K4 ["useSignalState"]
      340 GETUPVAL                         R26 0
      341 GETTABLEKS                       R26 R26 K2 ["useMemo"]
      343 NEWCLOSURE                       R27 P13
      344 CAPTURE                          VAL R5
      345 CAPTURE                          VAL R0
      346 NEWTABLE                         R28 0 2
      348 GETTABLEKS                       R29 R5 K28 ["observeNodeStateById"]
      350 GETTABLEKS                       R30 R0 K5 ["node"]
      352 GETTABLEKS                       R30 R30 K6 ["id"]
      354 SETLIST                          R28 R29 2 [1]
      356 CALL                             R26 2 -1
      357 CALL                             R25 -1 1
      358 DUPTABLE                         R26 K43 [{"text", "editName", "GraphPayload", "Position", "Size", "Selected", "Collapsed", "ZIndex", "OnDragStart", "OnDragMoved", "OnDragEnded", "OnPropertyChanged", "PropertyLookup", "StateLookup"}]
      359 GETTABLEKS                       R27 R15 K44 ["displayName"]
      361 SETTABLEKS                       R27 R26 K29 ["text"]
      363 GETTABLEKS                       R27 R15 K30 ["editName"]
      365 SETTABLEKS                       R27 R26 K30 ["editName"]
      367 GETTABLEKS                       R27 R0 K5 ["node"]
      369 SETTABLEKS                       R27 R26 K31 ["GraphPayload"]
      371 MOVE                             R27 R8
      372 JUMPIF                           R27 ; [+2]
      373 GETIMPORT                        R27 K47 [Vector2.zero]
      375 SETTABLEKS                       R27 R26 K32 ["Position"]
      377 JUMPIFNOT                        R10 ; [+6]
      378 GETTABLEKS                       R27 R10 K48 ["size"]
      380 JUMPIF                           R27 ; [+5]
      381 GETIMPORT                        R27 K47 [Vector2.zero]
      383 JUMP                             ; [+2]
      384 GETIMPORT                        R27 K47 [Vector2.zero]
      386 SETTABLEKS                       R27 R26 K33 ["Size"]
      388 JUMPIFNOT                        R10 ; [+3]
      389 GETTABLEKS                       R27 R10 K11 ["isSelected"]
      391 JUMP                             ; [+1]
      392 LOADB                            R27 0
      393 SETTABLEKS                       R27 R26 K34 ["Selected"]
      395 JUMPIFNOT                        R10 ; [+3]
      396 GETTABLEKS                       R27 R10 K49 ["isCollapsed"]
      398 JUMP                             ; [+1]
      399 LOADB                            R27 0
      400 SETTABLEKS                       R27 R26 K35 ["Collapsed"]
      402 SETTABLEKS                       R11 R26 K36 ["ZIndex"]
      404 SETTABLEKS                       R12 R26 K37 ["OnDragStart"]
      406 SETTABLEKS                       R13 R26 K38 ["OnDragMoved"]
      408 SETTABLEKS                       R14 R26 K39 ["OnDragEnded"]
      410 SETTABLEKS                       R19 R26 K40 ["OnPropertyChanged"]
      412 SETTABLEKS                       R24 R26 K41 ["PropertyLookup"]
      414 MOVE                             R27 R25
      415 JUMPIF                           R27 ; [+1]
      416 GETUPVAL                         R27 16
      417 SETTABLEKS                       R27 R26 K42 ["StateLookup"]
      419 LOADNIL                          R27
      420 JUMPIFNOT                        R20 ; [+2]
      421 GETUPVAL                         R27 17
      422 JUMP                             ; [+32]
      423 GETTABLEKS                       R28 R0 K5 ["node"]
      425 GETTABLEKS                       R28 R28 K22 ["nodeType"]
      427 JUMPIFNOT                        R28 ; [+5]
      428 GETTABLEKS                       R29 R0 K5 ["node"]
      430 GETTABLEKS                       R29 R29 K22 ["nodeType"]
      432 GETTABLE                         R28 R2 R29
      433 GETUPVAL                         R29 18
      434 JUMPIFNOT                        R29 ; [+4]
      435 JUMPIFEQKNIL                     R28 ; [+2]
      437 LOADB                            R29 0 +1
      438 LOADB                            R29 1
      439 SETTABLEKS                       R29 R26 K50 ["IsGeneric"]
      441 JUMPIFNOT                        R28 ; [+3]
      442 GETTABLEKS                       R27 R28 K51 ["render"]
      444 JUMP                             ; [+1]
      445 GETUPVAL                         R27 19
      446 GETIMPORT                        R29 K53 [game]
      448 LOADK                            R31 K54 ["DebugDisableCustomNodes"]
      449 LOADB                            R32 0
      450 NAMECALL                         R29 R29 K55 ["DefineFastFlag"]
      452 CALL                             R29 3 1
      453 JUMPIFNOT                        R29 ; [+1]
      454 GETUPVAL                         R27 19
      455 GETUPVAL                         R28 0
      456 GETTABLEKS                       R28 R28 K56 ["createElement"]
      458 GETUPVAL                         R29 0
      459 GETTABLEKS                       R29 R29 K57 ["Fragment"]
      461 NEWTABLE                         R30 0 0
      463 GETUPVAL                         R31 0
      464 GETTABLEKS                       R31 R31 K56 ["createElement"]
      466 MOVE                             R32 R27
      467 MOVE                             R33 R26
      468 CALL                             R31 2 1
      469 MOVE                             R32 R18
      470 CALL                             R28 4 -1
      471 RETURN                           R28 -1

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
       30 GETTABLEKS                       R5 R5 K10 ["GraphContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Components"]
       37 GETTABLEKS                       R6 R6 K10 ["GraphContext"]
       39 GETTABLEKS                       R6 R6 K11 ["GraphContextTypes"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Components"]
       46 GETTABLEKS                       R7 R7 K12 ["ModifierKeysContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Components"]
       53 GETTABLEKS                       R8 R8 K13 ["NodeLibraryContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K14 ["NodeViewTypes"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K6 ["Components"]
       65 GETTABLEKS                       R10 R10 K15 ["ParameterContext"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K6 ["Components"]
       72 GETTABLEKS                       R11 R11 K16 ["CompositorNodes"]
       74 GETTABLEKS                       R11 R11 K17 ["ParameterNode"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["Components"]
       81 GETTABLEKS                       R12 R12 K18 ["ParameterOverrideContext"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K19 ["Parent"]
       88 GETTABLEKS                       R13 R13 K20 ["React"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K6 ["Components"]
       95 GETTABLEKS                       R14 R14 K16 ["CompositorNodes"]
       97 GETTABLEKS                       R14 R14 K21 ["RenderedCompositorCurve"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K19 ["Parent"]
      104 GETTABLEKS                       R15 R15 K22 ["SignalsReact"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R16 R0 K19 ["Parent"]
      111 GETTABLEKS                       R16 R16 K23 ["SignalsUtils"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R17 R0 K24 ["Util"]
      118 GETTABLEKS                       R17 R17 K25 ["matchParameterBinding"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K5 [require]
      123 GETTABLEKS                       R18 R0 K6 ["Components"]
      125 GETTABLEKS                       R18 R18 K16 ["CompositorNodes"]
      127 GETTABLEKS                       R18 R18 K26 ["synthesizeDefinition"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R19 R0 K6 ["Components"]
      134 GETTABLEKS                       R19 R19 K16 ["CompositorNodes"]
      136 GETTABLEKS                       R19 R19 K27 ["useNodeNames"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K29 [game]
      141 LOADK                            R21 K30 ["DebugAGEHighlightGenericNodes"]
      142 LOADB                            R22 0
      143 NAMECALL                         R19 R19 K31 ["DefineFastFlag"]
      145 CALL                             R19 3 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R21 R0 K32 ["Flags"]
      150 GETTABLEKS                       R21 R21 K33 ["getFFlagAnimGraphUILetAllParametersOverridable"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETTABLEKS                       R22 R0 K32 ["Flags"]
      157 GETTABLEKS                       R22 R22 K34 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      159 CALL                             R21 1 1
      160 NEWTABLE                         R22 0 0
      162 DUPCLOSURE                       R23 K35 [PROTO_14]
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R9
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R1
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R14
      171 CAPTURE                          VAL R3
      172 CAPTURE                          VAL R18
      173 CAPTURE                          VAL R17
      174 CAPTURE                          VAL R21
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R15
      177 CAPTURE                          VAL R16
      178 CAPTURE                          VAL R20
      179 CAPTURE                          VAL R22
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R19
      182 CAPTURE                          VAL R2
      183 GETTABLEKS                       R24 R12 K36 ["memo"]
      185 MOVE                             R25 R23
      186 CALL                             R24 1 -1
      187 RETURN                           R24 -1
