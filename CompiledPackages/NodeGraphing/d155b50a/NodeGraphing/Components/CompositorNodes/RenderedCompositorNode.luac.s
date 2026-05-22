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
       12 GETTABLEKS                       R3 R3 K3 ["selectionNodeId"]
       14 JUMPIFEQ                         R1 R3 ; [+5]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K4 ["clearSelection"]
       19 CALL                             R3 0 0
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K5 ["selectNodes"]
       23 MOVE                             R4 R2
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K6 ["isShiftPressed"]
       27 CALL                             R5 0 -1
       28 CALL                             R3 -1 0
       29 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["node"]
        3 JUMPIFNOT                        R2 ; [+11]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["setNodeProperty"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["node"]
       10 GETTABLEKS                       R3 R3 K2 ["id"]
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 CALL                             R2 3 0
       15 RETURN                           R0 0

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
        3 JUMPIFNOT                        R1 ; [+26]
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
       20 JUMPIFNOT                        R6 ; [+6]
       21 GETUPVAL                         R7 2
       22 JUMPIFNOT                        R7 ; [+2]
       23 GETUPVAL                         R8 2
       24 GETTABLE                         R7 R8 R6
       25 SETTABLE                         R7 R0 R4
       26 JUMP                             ; [+1]
       27 SETTABLE                         R5 R0 R4
       28 FORGLOOP                         R1 2 ; [-21]
       30 RETURN                           R0 1

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
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R0
       63 NEWTABLE                         R11 0 2
       65 GETTABLEKS                       R12 R0 K5 ["node"]
       67 GETTABLEKS                       R12 R12 K6 ["id"]
       69 GETTABLEKS                       R13 R5 K7 ["observeNodePosition"]
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
       90 GETTABLEKS                       R14 R5 K8 ["observeNodePreviewData"]
       92 SETLIST                          R12 R13 2 [1]
       94 CALL                             R10 2 -1
       95 CALL                             R9 -1 1
       96 GETUPVAL                         R10 7
       97 GETTABLEKS                       R10 R10 K4 ["useSignalState"]
       99 GETUPVAL                         R11 0
      100 GETTABLEKS                       R11 R11 K2 ["useMemo"]
      102 NEWCLOSURE                       R12 P3
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R0
      105 NEWTABLE                         R13 0 2
      107 GETTABLEKS                       R14 R0 K5 ["node"]
      109 GETTABLEKS                       R14 R14 K6 ["id"]
      111 GETTABLEKS                       R15 R4 K9 ["nodeRenderInfoDispatcher"]
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
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R6
      149 NEWTABLE                         R14 0 6
      151 GETTABLEKS                       R15 R5 K13 ["onDragNodeStart"]
      153 GETTABLEKS                       R16 R4 K14 ["selectNodes"]
      155 GETTABLEKS                       R17 R0 K15 ["isShiftEnabled"]
      157 GETTABLEKS                       R18 R6 K16 ["isShiftPressed"]
      159 GETTABLEKS                       R19 R7 K17 ["clearSelection"]
      161 GETTABLEKS                       R20 R7 K18 ["selectionNodeId"]
      163 SETLIST                          R14 R15 6 [1]
      165 CALL                             R12 2 1
      166 GETUPVAL                         R13 0
      167 GETTABLEKS                       R13 R13 K12 ["useCallback"]
      169 NEWCLOSURE                       R14 P6
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R0
      172 NEWTABLE                         R15 0 2
      174 GETTABLEKS                       R16 R0 K5 ["node"]
      176 GETTABLEKS                       R16 R16 K6 ["id"]
      178 GETTABLEKS                       R17 R5 K19 ["onDragNodeMoved"]
      180 SETLIST                          R15 R16 2 [1]
      182 CALL                             R13 2 1
      183 GETUPVAL                         R14 0
      184 GETTABLEKS                       R14 R14 K12 ["useCallback"]
      186 NEWCLOSURE                       R15 P7
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R0
      189 CAPTURE                          VAL R4
      190 NEWTABLE                         R16 0 4
      192 GETTABLEKS                       R17 R4 K20 ["setNodePositions"]
      194 GETTABLEKS                       R18 R5 K7 ["observeNodePosition"]
      196 GETTABLEKS                       R19 R5 K21 ["onDragNodeEnded"]
      198 GETTABLEKS                       R20 R0 K5 ["node"]
      200 GETTABLEKS                       R20 R20 K6 ["id"]
      202 SETLIST                          R16 R17 4 [1]
      204 CALL                             R14 2 1
      205 GETUPVAL                         R15 9
      206 GETTABLEKS                       R16 R0 K5 ["node"]
      208 CALL                             R15 1 1
      209 GETUPVAL                         R16 7
      210 GETTABLEKS                       R16 R16 K4 ["useSignalState"]
      212 GETTABLEKS                       R17 R4 K22 ["nodePayloadDispatcher"]
      214 GETTABLEKS                       R17 R17 K23 ["observeMap"]
      216 CALL                             R16 1 1
      217 GETUPVAL                         R17 0
      218 GETTABLEKS                       R17 R17 K2 ["useMemo"]
      220 NEWCLOSURE                       R18 P8
      221 CAPTURE                          VAL R2
      222 CAPTURE                          VAL R0
      223 CAPTURE                          UPVAL U10
      224 NEWTABLE                         R19 0 3
      226 GETTABLEKS                       R20 R0 K5 ["node"]
      228 GETTABLEKS                       R20 R20 K24 ["nodeType"]
      230 GETTABLEKS                       R21 R0 K5 ["node"]
      232 MOVE                             R22 R2
      233 SETLIST                          R19 R20 3 [1]
      235 CALL                             R17 2 1
      236 GETUPVAL                         R18 0
      237 GETTABLEKS                       R18 R18 K2 ["useMemo"]
      239 NEWCLOSURE                       R19 P9
      240 CAPTURE                          VAL R17
      241 CAPTURE                          VAL R0
      242 CAPTURE                          UPVAL U11
      243 CAPTURE                          VAL R16
      244 CAPTURE                          UPVAL U8
      245 CAPTURE                          UPVAL U0
      246 CAPTURE                          UPVAL U12
      247 NEWTABLE                         R20 0 3
      249 MOVE                             R21 R17
      250 GETTABLEKS                       R22 R0 K5 ["node"]
      252 MOVE                             R23 R16
      253 SETLIST                          R20 R21 3 [1]
      255 CALL                             R18 2 1
      256 GETUPVAL                         R19 0
      257 GETTABLEKS                       R19 R19 K12 ["useCallback"]
      259 NEWCLOSURE                       R20 P10
      260 CAPTURE                          VAL R0
      261 CAPTURE                          VAL R4
      262 NEWTABLE                         R21 0 2
      264 GETTABLEKS                       R22 R4 K25 ["setNodeProperty"]
      266 GETTABLEKS                       R24 R0 K5 ["node"]
      268 JUMPIFNOT                        R24 ; [+5]
      269 GETTABLEKS                       R23 R0 K5 ["node"]
      271 GETTABLEKS                       R23 R23 K6 ["id"]
      273 JUMPIF                           R23 ; [+1]
      274 LOADNIL                          R23
      275 SETLIST                          R21 R22 2 [1]
      277 CALL                             R19 2 1
      278 GETTABLEKS                       R20 R0 K5 ["node"]
      280 JUMPIFNOT                        R20 ; [+11]
      281 GETTABLEKS                       R21 R0 K5 ["node"]
      283 GETTABLEKS                       R21 R21 K26 ["className"]
      285 GETUPVAL                         R22 8
      286 GETTABLEKS                       R22 R22 K27 ["PARAMETER_NODE_CLASSNAME"]
      288 JUMPIFEQ                         R21 R22 ; [+2]
      290 LOADB                            R20 0 +1
      291 LOADB                            R20 1
      292 GETUPVAL                         R21 0
      293 GETTABLEKS                       R21 R21 K2 ["useMemo"]
      295 NEWCLOSURE                       R22 P11
      296 CAPTURE                          VAL R0
      297 CAPTURE                          VAL R4
      298 CAPTURE                          UPVAL U13
      299 NEWTABLE                         R23 0 1
      301 GETTABLEKS                       R25 R0 K5 ["node"]
      303 JUMPIFNOT                        R25 ; [+5]
      304 GETTABLEKS                       R24 R0 K5 ["node"]
      306 GETTABLEKS                       R24 R24 K6 ["id"]
      308 JUMPIF                           R24 ; [+1]
      309 LOADNIL                          R24
      310 SETLIST                          R23 R24 1 [1]
      312 CALL                             R21 2 1
      313 GETUPVAL                         R22 7
      314 GETTABLEKS                       R22 R22 K4 ["useSignalState"]
      316 MOVE                             R23 R21
      317 CALL                             R22 1 1
      318 GETUPVAL                         R23 7
      319 GETTABLEKS                       R23 R23 K4 ["useSignalState"]
      321 GETTABLEKS                       R24 R3 K28 ["observeParameters"]
      323 CALL                             R23 1 1
      324 GETUPVAL                         R24 0
      325 GETTABLEKS                       R24 R24 K2 ["useMemo"]
      327 NEWCLOSURE                       R25 P12
      328 CAPTURE                          VAL R22
      329 CAPTURE                          UPVAL U14
      330 CAPTURE                          VAL R23
      331 NEWTABLE                         R26 0 2
      333 MOVE                             R27 R23
      334 MOVE                             R28 R22
      335 SETLIST                          R26 R27 2 [1]
      337 CALL                             R24 2 1
      338 GETUPVAL                         R25 7
      339 GETTABLEKS                       R25 R25 K4 ["useSignalState"]
      341 GETUPVAL                         R26 0
      342 GETTABLEKS                       R26 R26 K2 ["useMemo"]
      344 NEWCLOSURE                       R27 P13
      345 CAPTURE                          VAL R4
      346 CAPTURE                          VAL R0
      347 NEWTABLE                         R28 0 2
      349 GETTABLEKS                       R29 R4 K29 ["observeNodeStateById"]
      351 GETTABLEKS                       R30 R0 K5 ["node"]
      353 GETTABLEKS                       R30 R30 K6 ["id"]
      355 SETLIST                          R28 R29 2 [1]
      357 CALL                             R26 2 -1
      358 CALL                             R25 -1 1
      359 DUPTABLE                         R26 K44 [{"text", "editName", "GraphPayload", "Position", "Size", "Selected", "Collapsed", "ZIndex", "OnDragStart", "OnDragMoved", "OnDragEnded", "OnPropertyChanged", "PropertyLookup", "StateLookup"}]
      360 GETTABLEKS                       R27 R15 K45 ["displayName"]
      362 SETTABLEKS                       R27 R26 K30 ["text"]
      364 GETTABLEKS                       R27 R15 K31 ["editName"]
      366 SETTABLEKS                       R27 R26 K31 ["editName"]
      368 GETTABLEKS                       R27 R0 K5 ["node"]
      370 SETTABLEKS                       R27 R26 K32 ["GraphPayload"]
      372 MOVE                             R27 R8
      373 JUMPIF                           R27 ; [+2]
      374 GETIMPORT                        R27 K48 [Vector2.zero]
      376 SETTABLEKS                       R27 R26 K33 ["Position"]
      378 JUMPIFNOT                        R10 ; [+6]
      379 GETTABLEKS                       R27 R10 K49 ["size"]
      381 JUMPIF                           R27 ; [+5]
      382 GETIMPORT                        R27 K48 [Vector2.zero]
      384 JUMP                             ; [+2]
      385 GETIMPORT                        R27 K48 [Vector2.zero]
      387 SETTABLEKS                       R27 R26 K34 ["Size"]
      389 JUMPIFNOT                        R10 ; [+3]
      390 GETTABLEKS                       R27 R10 K11 ["isSelected"]
      392 JUMP                             ; [+1]
      393 LOADB                            R27 0
      394 SETTABLEKS                       R27 R26 K35 ["Selected"]
      396 JUMPIFNOT                        R10 ; [+3]
      397 GETTABLEKS                       R27 R10 K50 ["isCollapsed"]
      399 JUMP                             ; [+1]
      400 LOADB                            R27 0
      401 SETTABLEKS                       R27 R26 K36 ["Collapsed"]
      403 SETTABLEKS                       R11 R26 K37 ["ZIndex"]
      405 SETTABLEKS                       R12 R26 K38 ["OnDragStart"]
      407 SETTABLEKS                       R13 R26 K39 ["OnDragMoved"]
      409 SETTABLEKS                       R14 R26 K40 ["OnDragEnded"]
      411 SETTABLEKS                       R19 R26 K41 ["OnPropertyChanged"]
      413 SETTABLEKS                       R24 R26 K42 ["PropertyLookup"]
      415 MOVE                             R27 R25
      416 JUMPIF                           R27 ; [+1]
      417 GETUPVAL                         R27 15
      418 SETTABLEKS                       R27 R26 K43 ["StateLookup"]
      420 LOADNIL                          R27
      421 JUMPIFNOT                        R20 ; [+2]
      422 GETUPVAL                         R27 16
      423 JUMP                             ; [+32]
      424 GETTABLEKS                       R28 R0 K5 ["node"]
      426 GETTABLEKS                       R28 R28 K24 ["nodeType"]
      428 JUMPIFNOT                        R28 ; [+5]
      429 GETTABLEKS                       R29 R0 K5 ["node"]
      431 GETTABLEKS                       R29 R29 K24 ["nodeType"]
      433 GETTABLE                         R28 R2 R29
      434 GETUPVAL                         R29 17
      435 JUMPIFNOT                        R29 ; [+4]
      436 JUMPIFEQKNIL                     R28 ; [+2]
      438 LOADB                            R29 0 +1
      439 LOADB                            R29 1
      440 SETTABLEKS                       R29 R26 K51 ["IsGeneric"]
      442 JUMPIFNOT                        R28 ; [+3]
      443 GETTABLEKS                       R27 R28 K52 ["render"]
      445 JUMP                             ; [+1]
      446 GETUPVAL                         R27 18
      447 GETIMPORT                        R29 K54 [game]
      449 LOADK                            R31 K55 ["DebugDisableCustomNodes"]
      450 LOADB                            R32 0
      451 NAMECALL                         R29 R29 K56 ["DefineFastFlag"]
      453 CALL                             R29 3 1
      454 JUMPIFNOT                        R29 ; [+1]
      455 GETUPVAL                         R27 18
      456 GETUPVAL                         R28 0
      457 GETTABLEKS                       R28 R28 K57 ["createElement"]
      459 GETUPVAL                         R29 0
      460 GETTABLEKS                       R29 R29 K58 ["Fragment"]
      462 NEWTABLE                         R30 0 0
      464 GETUPVAL                         R31 0
      465 GETTABLEKS                       R31 R31 K57 ["createElement"]
      467 MOVE                             R32 R27
      468 MOVE                             R33 R26
      469 CALL                             R31 2 1
      470 MOVE                             R32 R18
      471 CALL                             R28 4 -1
      472 RETURN                           R28 -1

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
       37 GETTABLEKS                       R6 R6 K11 ["InputSelectionContext"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K6 ["Components"]
       44 GETTABLEKS                       R7 R7 K12 ["ModifierKeysContext"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K6 ["Components"]
       51 GETTABLEKS                       R8 R8 K13 ["NodeLibraryContext"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K14 ["NodeViewTypes"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K6 ["Components"]
       63 GETTABLEKS                       R10 R10 K15 ["ParameterContext"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K6 ["Components"]
       70 GETTABLEKS                       R11 R11 K16 ["CompositorNodes"]
       72 GETTABLEKS                       R11 R11 K17 ["ParameterNode"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K18 ["Parent"]
       79 GETTABLEKS                       R12 R12 K19 ["React"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K6 ["Components"]
       86 GETTABLEKS                       R13 R13 K16 ["CompositorNodes"]
       88 GETTABLEKS                       R13 R13 K20 ["RenderedCompositorCurve"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K18 ["Parent"]
       95 GETTABLEKS                       R14 R14 K21 ["SignalsReact"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K22 ["Util"]
      102 GETTABLEKS                       R15 R15 K23 ["Signals"]
      104 GETTABLEKS                       R15 R15 K24 ["SignalsUtils"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R16 R0 K22 ["Util"]
      111 GETTABLEKS                       R16 R16 K25 ["matchParameterBinding"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R17 R0 K6 ["Components"]
      118 GETTABLEKS                       R17 R17 K16 ["CompositorNodes"]
      120 GETTABLEKS                       R17 R17 K26 ["synthesizeDefinition"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R18 R0 K6 ["Components"]
      127 GETTABLEKS                       R18 R18 K16 ["CompositorNodes"]
      129 GETTABLEKS                       R18 R18 K27 ["useNodeNames"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K29 [game]
      134 LOADK                            R20 K30 ["DebugAGEHighlightGenericNodes"]
      135 LOADB                            R21 0
      136 NAMECALL                         R18 R18 K31 ["DefineFastFlag"]
      138 CALL                             R18 3 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R20 R0 K32 ["Flags"]
      143 GETTABLEKS                       R20 R20 K33 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      145 CALL                             R19 1 1
      146 NEWTABLE                         R20 0 0
      148 DUPCLOSURE                       R21 K34 [PROTO_14]
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R5
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R17
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R12
      162 CAPTURE                          VAL R14
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R20
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R18
      167 CAPTURE                          VAL R2
      168 GETTABLEKS                       R22 R11 K35 ["memo"]
      170 MOVE                             R23 R21
      171 CALL                             R22 1 -1
      172 RETURN                           R22 -1
