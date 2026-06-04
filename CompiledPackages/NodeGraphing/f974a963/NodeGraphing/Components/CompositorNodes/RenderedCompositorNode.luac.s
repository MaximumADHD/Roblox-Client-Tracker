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
       47 GETUPVAL                         R7 6
       48 GETTABLEKS                       R7 R7 K4 ["useSignalState"]
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R8 R8 K2 ["useMemo"]
       53 NEWCLOSURE                       R9 P1
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R0
       56 NEWTABLE                         R10 0 2
       58 GETTABLEKS                       R11 R0 K5 ["node"]
       60 GETTABLEKS                       R11 R11 K6 ["id"]
       62 GETTABLEKS                       R12 R5 K7 ["observeNodePosition"]
       64 SETLIST                          R10 R11 2 [1]
       66 CALL                             R8 2 -1
       67 CALL                             R7 -1 1
       68 GETUPVAL                         R8 6
       69 GETTABLEKS                       R8 R8 K4 ["useSignalState"]
       71 GETUPVAL                         R9 0
       72 GETTABLEKS                       R9 R9 K2 ["useMemo"]
       74 NEWCLOSURE                       R10 P2
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R0
       77 NEWTABLE                         R11 0 2
       79 GETTABLEKS                       R12 R0 K5 ["node"]
       81 GETTABLEKS                       R12 R12 K6 ["id"]
       83 GETTABLEKS                       R13 R5 K8 ["observeNodePreviewData"]
       85 SETLIST                          R11 R12 2 [1]
       87 CALL                             R9 2 -1
       88 CALL                             R8 -1 1
       89 GETUPVAL                         R9 6
       90 GETTABLEKS                       R9 R9 K4 ["useSignalState"]
       92 GETUPVAL                         R10 0
       93 GETTABLEKS                       R10 R10 K2 ["useMemo"]
       95 NEWCLOSURE                       R11 P3
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R0
       98 NEWTABLE                         R12 0 2
      100 GETTABLEKS                       R13 R0 K5 ["node"]
      102 GETTABLEKS                       R13 R13 K6 ["id"]
      104 GETTABLEKS                       R14 R4 K9 ["nodeRenderInfoDispatcher"]
      106 GETTABLEKS                       R14 R14 K10 ["observe"]
      108 SETLIST                          R12 R13 2 [1]
      110 CALL                             R10 2 -1
      111 CALL                             R9 -1 1
      112 GETUPVAL                         R10 0
      113 GETTABLEKS                       R10 R10 K2 ["useMemo"]
      115 NEWCLOSURE                       R11 P4
      116 CAPTURE                          VAL R8
      117 CAPTURE                          UPVAL U7
      118 CAPTURE                          VAL R9
      119 NEWTABLE                         R12 0 3
      121 MOVE                             R13 R8
      122 GETTABLEKS                       R14 R0 K5 ["node"]
      124 GETTABLEKS                       R14 R14 K6 ["id"]
      126 MOVE                             R15 R9
      127 JUMPIFNOT                        R15 ; [+2]
      128 GETTABLEKS                       R15 R9 K11 ["isSelected"]
      130 SETLIST                          R12 R13 3 [1]
      132 CALL                             R10 2 1
      133 GETUPVAL                         R11 0
      134 GETTABLEKS                       R11 R11 K12 ["useCallback"]
      136 NEWCLOSURE                       R12 P5
      137 CAPTURE                          VAL R0
      138 CAPTURE                          VAL R5
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R6
      141 NEWTABLE                         R13 0 4
      143 GETTABLEKS                       R14 R5 K13 ["onDragNodeStart"]
      145 GETTABLEKS                       R15 R4 K14 ["selectNodes"]
      147 GETTABLEKS                       R16 R0 K15 ["isShiftEnabled"]
      149 GETTABLEKS                       R17 R6 K16 ["isShiftPressed"]
      151 SETLIST                          R13 R14 4 [1]
      153 CALL                             R11 2 1
      154 GETUPVAL                         R12 0
      155 GETTABLEKS                       R12 R12 K12 ["useCallback"]
      157 NEWCLOSURE                       R13 P6
      158 CAPTURE                          VAL R5
      159 CAPTURE                          VAL R0
      160 NEWTABLE                         R14 0 2
      162 GETTABLEKS                       R15 R0 K5 ["node"]
      164 GETTABLEKS                       R15 R15 K6 ["id"]
      166 GETTABLEKS                       R16 R5 K17 ["onDragNodeMoved"]
      168 SETLIST                          R14 R15 2 [1]
      170 CALL                             R12 2 1
      171 GETUPVAL                         R13 0
      172 GETTABLEKS                       R13 R13 K12 ["useCallback"]
      174 NEWCLOSURE                       R14 P7
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R0
      177 CAPTURE                          VAL R4
      178 NEWTABLE                         R15 0 4
      180 GETTABLEKS                       R16 R4 K18 ["setNodePositions"]
      182 GETTABLEKS                       R17 R5 K7 ["observeNodePosition"]
      184 GETTABLEKS                       R18 R5 K19 ["onDragNodeEnded"]
      186 GETTABLEKS                       R19 R0 K5 ["node"]
      188 GETTABLEKS                       R19 R19 K6 ["id"]
      190 SETLIST                          R15 R16 4 [1]
      192 CALL                             R13 2 1
      193 GETUPVAL                         R14 8
      194 GETTABLEKS                       R15 R0 K5 ["node"]
      196 CALL                             R14 1 1
      197 GETUPVAL                         R15 6
      198 GETTABLEKS                       R15 R15 K4 ["useSignalState"]
      200 GETTABLEKS                       R16 R4 K20 ["nodePayloadDispatcher"]
      202 GETTABLEKS                       R16 R16 K21 ["observeMap"]
      204 CALL                             R15 1 1
      205 GETUPVAL                         R16 0
      206 GETTABLEKS                       R16 R16 K2 ["useMemo"]
      208 NEWCLOSURE                       R17 P8
      209 CAPTURE                          VAL R2
      210 CAPTURE                          VAL R0
      211 CAPTURE                          UPVAL U9
      212 NEWTABLE                         R18 0 3
      214 GETTABLEKS                       R19 R0 K5 ["node"]
      216 GETTABLEKS                       R19 R19 K22 ["nodeType"]
      218 GETTABLEKS                       R20 R0 K5 ["node"]
      220 MOVE                             R21 R2
      221 SETLIST                          R18 R19 3 [1]
      223 CALL                             R16 2 1
      224 GETUPVAL                         R17 0
      225 GETTABLEKS                       R17 R17 K2 ["useMemo"]
      227 NEWCLOSURE                       R18 P9
      228 CAPTURE                          VAL R16
      229 CAPTURE                          VAL R0
      230 CAPTURE                          UPVAL U10
      231 CAPTURE                          VAL R15
      232 CAPTURE                          UPVAL U7
      233 CAPTURE                          UPVAL U0
      234 CAPTURE                          UPVAL U11
      235 NEWTABLE                         R19 0 3
      237 MOVE                             R20 R16
      238 GETTABLEKS                       R21 R0 K5 ["node"]
      240 MOVE                             R22 R15
      241 SETLIST                          R19 R20 3 [1]
      243 CALL                             R17 2 1
      244 GETUPVAL                         R18 0
      245 GETTABLEKS                       R18 R18 K12 ["useCallback"]
      247 NEWCLOSURE                       R19 P10
      248 CAPTURE                          VAL R0
      249 CAPTURE                          VAL R4
      250 NEWTABLE                         R20 0 2
      252 GETTABLEKS                       R21 R4 K23 ["setNodeProperty"]
      254 GETTABLEKS                       R23 R0 K5 ["node"]
      256 JUMPIFNOT                        R23 ; [+5]
      257 GETTABLEKS                       R22 R0 K5 ["node"]
      259 GETTABLEKS                       R22 R22 K6 ["id"]
      261 JUMPIF                           R22 ; [+1]
      262 LOADNIL                          R22
      263 SETLIST                          R20 R21 2 [1]
      265 CALL                             R18 2 1
      266 GETTABLEKS                       R19 R0 K5 ["node"]
      268 JUMPIFNOT                        R19 ; [+11]
      269 GETTABLEKS                       R20 R0 K5 ["node"]
      271 GETTABLEKS                       R20 R20 K24 ["className"]
      273 GETUPVAL                         R21 7
      274 GETTABLEKS                       R21 R21 K25 ["PARAMETER_NODE_CLASSNAME"]
      276 JUMPIFEQ                         R20 R21 ; [+2]
      278 LOADB                            R19 0 +1
      279 LOADB                            R19 1
      280 GETUPVAL                         R20 0
      281 GETTABLEKS                       R20 R20 K2 ["useMemo"]
      283 NEWCLOSURE                       R21 P11
      284 CAPTURE                          VAL R0
      285 CAPTURE                          VAL R4
      286 CAPTURE                          UPVAL U12
      287 NEWTABLE                         R22 0 1
      289 GETTABLEKS                       R24 R0 K5 ["node"]
      291 JUMPIFNOT                        R24 ; [+5]
      292 GETTABLEKS                       R23 R0 K5 ["node"]
      294 GETTABLEKS                       R23 R23 K6 ["id"]
      296 JUMPIF                           R23 ; [+1]
      297 LOADNIL                          R23
      298 SETLIST                          R22 R23 1 [1]
      300 CALL                             R20 2 1
      301 GETUPVAL                         R21 6
      302 GETTABLEKS                       R21 R21 K4 ["useSignalState"]
      304 MOVE                             R22 R20
      305 CALL                             R21 1 1
      306 GETUPVAL                         R22 6
      307 GETTABLEKS                       R22 R22 K4 ["useSignalState"]
      309 GETTABLEKS                       R23 R3 K26 ["observeParameters"]
      311 CALL                             R22 1 1
      312 GETUPVAL                         R23 0
      313 GETTABLEKS                       R23 R23 K2 ["useMemo"]
      315 NEWCLOSURE                       R24 P12
      316 CAPTURE                          VAL R21
      317 CAPTURE                          UPVAL U13
      318 CAPTURE                          VAL R22
      319 NEWTABLE                         R25 0 2
      321 MOVE                             R26 R22
      322 MOVE                             R27 R21
      323 SETLIST                          R25 R26 2 [1]
      325 CALL                             R23 2 1
      326 GETUPVAL                         R24 6
      327 GETTABLEKS                       R24 R24 K4 ["useSignalState"]
      329 GETUPVAL                         R25 0
      330 GETTABLEKS                       R25 R25 K2 ["useMemo"]
      332 NEWCLOSURE                       R26 P13
      333 CAPTURE                          VAL R4
      334 CAPTURE                          VAL R0
      335 NEWTABLE                         R27 0 2
      337 GETTABLEKS                       R28 R4 K27 ["observeNodeStateById"]
      339 GETTABLEKS                       R29 R0 K5 ["node"]
      341 GETTABLEKS                       R29 R29 K6 ["id"]
      343 SETLIST                          R27 R28 2 [1]
      345 CALL                             R25 2 -1
      346 CALL                             R24 -1 1
      347 DUPTABLE                         R25 K42 [{"text", "editName", "GraphPayload", "Position", "Size", "Selected", "Collapsed", "ZIndex", "OnDragStart", "OnDragMoved", "OnDragEnded", "OnPropertyChanged", "PropertyLookup", "StateLookup"}]
      348 GETTABLEKS                       R26 R14 K43 ["displayName"]
      350 SETTABLEKS                       R26 R25 K28 ["text"]
      352 GETTABLEKS                       R26 R14 K29 ["editName"]
      354 SETTABLEKS                       R26 R25 K29 ["editName"]
      356 GETTABLEKS                       R26 R0 K5 ["node"]
      358 SETTABLEKS                       R26 R25 K30 ["GraphPayload"]
      360 MOVE                             R26 R7
      361 JUMPIF                           R26 ; [+2]
      362 GETIMPORT                        R26 K46 [Vector2.zero]
      364 SETTABLEKS                       R26 R25 K31 ["Position"]
      366 JUMPIFNOT                        R9 ; [+6]
      367 GETTABLEKS                       R26 R9 K47 ["size"]
      369 JUMPIF                           R26 ; [+5]
      370 GETIMPORT                        R26 K46 [Vector2.zero]
      372 JUMP                             ; [+2]
      373 GETIMPORT                        R26 K46 [Vector2.zero]
      375 SETTABLEKS                       R26 R25 K32 ["Size"]
      377 JUMPIFNOT                        R9 ; [+3]
      378 GETTABLEKS                       R26 R9 K11 ["isSelected"]
      380 JUMP                             ; [+1]
      381 LOADB                            R26 0
      382 SETTABLEKS                       R26 R25 K33 ["Selected"]
      384 JUMPIFNOT                        R9 ; [+3]
      385 GETTABLEKS                       R26 R9 K48 ["isCollapsed"]
      387 JUMP                             ; [+1]
      388 LOADB                            R26 0
      389 SETTABLEKS                       R26 R25 K34 ["Collapsed"]
      391 SETTABLEKS                       R10 R25 K35 ["ZIndex"]
      393 SETTABLEKS                       R11 R25 K36 ["OnDragStart"]
      395 SETTABLEKS                       R12 R25 K37 ["OnDragMoved"]
      397 SETTABLEKS                       R13 R25 K38 ["OnDragEnded"]
      399 SETTABLEKS                       R18 R25 K39 ["OnPropertyChanged"]
      401 SETTABLEKS                       R23 R25 K40 ["PropertyLookup"]
      403 MOVE                             R26 R24
      404 JUMPIF                           R26 ; [+1]
      405 GETUPVAL                         R26 14
      406 SETTABLEKS                       R26 R25 K41 ["StateLookup"]
      408 LOADNIL                          R26
      409 JUMPIFNOT                        R19 ; [+2]
      410 GETUPVAL                         R26 15
      411 JUMP                             ; [+32]
      412 GETTABLEKS                       R27 R0 K5 ["node"]
      414 GETTABLEKS                       R27 R27 K22 ["nodeType"]
      416 JUMPIFNOT                        R27 ; [+5]
      417 GETTABLEKS                       R28 R0 K5 ["node"]
      419 GETTABLEKS                       R28 R28 K22 ["nodeType"]
      421 GETTABLE                         R27 R2 R28
      422 GETUPVAL                         R28 16
      423 JUMPIFNOT                        R28 ; [+4]
      424 JUMPIFEQKNIL                     R27 ; [+2]
      426 LOADB                            R28 0 +1
      427 LOADB                            R28 1
      428 SETTABLEKS                       R28 R25 K49 ["IsGeneric"]
      430 JUMPIFNOT                        R27 ; [+3]
      431 GETTABLEKS                       R26 R27 K50 ["render"]
      433 JUMP                             ; [+1]
      434 GETUPVAL                         R26 17
      435 GETIMPORT                        R28 K52 [game]
      437 LOADK                            R30 K53 ["DebugDisableCustomNodes"]
      438 LOADB                            R31 0
      439 NAMECALL                         R28 R28 K54 ["DefineFastFlag"]
      441 CALL                             R28 3 1
      442 JUMPIFNOT                        R28 ; [+1]
      443 GETUPVAL                         R26 17
      444 GETUPVAL                         R27 0
      445 GETTABLEKS                       R27 R27 K55 ["createElement"]
      447 GETUPVAL                         R28 0
      448 GETTABLEKS                       R28 R28 K56 ["Fragment"]
      450 NEWTABLE                         R29 0 0
      452 GETUPVAL                         R30 0
      453 GETTABLEKS                       R30 R30 K55 ["createElement"]
      455 MOVE                             R31 R26
      456 MOVE                             R32 R25
      457 CALL                             R30 2 1
      458 MOVE                             R31 R17
      459 CALL                             R27 4 -1
      460 RETURN                           R27 -1

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
       37 GETTABLEKS                       R6 R6 K11 ["ModifierKeysContext"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K6 ["Components"]
       44 GETTABLEKS                       R7 R7 K12 ["NodeLibraryContext"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K13 ["NodeViewTypes"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K6 ["Components"]
       56 GETTABLEKS                       R9 R9 K14 ["ParameterContext"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K6 ["Components"]
       63 GETTABLEKS                       R10 R10 K15 ["CompositorNodes"]
       65 GETTABLEKS                       R10 R10 K16 ["ParameterNode"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K17 ["Parent"]
       72 GETTABLEKS                       R11 R11 K18 ["React"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K6 ["Components"]
       79 GETTABLEKS                       R12 R12 K15 ["CompositorNodes"]
       81 GETTABLEKS                       R12 R12 K19 ["RenderedCompositorCurve"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K17 ["Parent"]
       88 GETTABLEKS                       R13 R13 K20 ["SignalsReact"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K17 ["Parent"]
       95 GETTABLEKS                       R14 R14 K21 ["SignalsUtils"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K22 ["Util"]
      102 GETTABLEKS                       R15 R15 K23 ["matchParameterBinding"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R16 R0 K6 ["Components"]
      109 GETTABLEKS                       R16 R16 K15 ["CompositorNodes"]
      111 GETTABLEKS                       R16 R16 K24 ["synthesizeDefinition"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R17 R0 K6 ["Components"]
      118 GETTABLEKS                       R17 R17 K15 ["CompositorNodes"]
      120 GETTABLEKS                       R17 R17 K25 ["useNodeNames"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K27 [game]
      125 LOADK                            R19 K28 ["DebugAGEHighlightGenericNodes"]
      126 LOADB                            R20 0
      127 NAMECALL                         R17 R17 K29 ["DefineFastFlag"]
      129 CALL                             R17 3 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R19 R0 K30 ["Flags"]
      134 GETTABLEKS                       R19 R19 K31 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      136 CALL                             R18 1 1
      137 NEWTABLE                         R19 0 0
      139 DUPCLOSURE                       R20 K32 [PROTO_14]
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R19
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R17
      157 CAPTURE                          VAL R2
      158 GETTABLEKS                       R21 R10 K33 ["memo"]
      160 MOVE                             R22 R20
      161 CALL                             R21 1 -1
      162 RETURN                           R21 -1
