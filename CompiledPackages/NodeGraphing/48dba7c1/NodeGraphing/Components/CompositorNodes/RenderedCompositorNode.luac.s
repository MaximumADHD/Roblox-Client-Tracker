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
        3 JUMPIFNOT                        R1 ; [+175]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["Inputs"]
        7 JUMPIFNOT                        R1 ; [+171]
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
       24 JUMPIFNOT                        R7 ; [+117]
       25 JUMPIFNOT                        R6 ; [+56]
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
       56 DUPTABLE                         R12 K17 [{["outputPinNodeId"], ["outputPinName"] = "Output", ["inputPinNodeId"], ["inputPinName"], ["pinDataType"]}]
       57 GETTABLEKS                       R13 R6 K4 ["outputNodeId"]
       59 SETTABLEKS                       R13 R12 K11 ["outputPinNodeId"]
       61 GETUPVAL                         R13 1
       62 GETTABLEKS                       R13 R13 K1 ["node"]
       64 GETTABLEKS                       R13 R13 K18 ["id"]
       66 SETTABLEKS                       R13 R12 K14 ["inputPinNodeId"]
       68 GETTABLEKS                       R13 R5 K3 ["InputName"]
       70 SETTABLEKS                       R13 R12 K15 ["inputPinName"]
       72 JUMPIFNOT                        R8 ; [+2]
       73 LOADK                            R13 K19 ["Parameter"]
       74 JUMP                             ; [+3]
       75 GETUPVAL                         R13 4
       76 GETTABLEKS                       R13 R13 K20 ["DEFAULT_PIN_DATA_TYPE"]
       78 SETTABLEKS                       R13 R12 K16 ["pinDataType"]
       80 CALL                             R10 2 1
       81 SETTABLE                         R10 R0 R9
       82 GETTABLEKS                       R7 R5 K21 ["Properties"]
       84 JUMPIFNOT                        R7 ; [+92]
       85 GETTABLEKS                       R7 R5 K21 ["Properties"]
       87 LOADNIL                          R8
       88 LOADNIL                          R9
       89 FORGPREP                         R7
       90 GETUPVAL                         R13 1
       91 GETTABLEKS                       R13 R13 K1 ["node"]
       93 GETTABLEKS                       R13 R13 K22 ["inputLabelPinToConnectionMap"]
       95 GETTABLEKS                       R14 R11 K23 ["Name"]
       97 GETTABLE                         R12 R13 R14
       98 MOVE                             R13 R12
       99 JUMPIFNOT                        R13 ; [+3]
      100 GETTABLEKS                       R14 R5 K3 ["InputName"]
      102 GETTABLE                         R13 R12 R14
      103 JUMPIFNOT                        R13 ; [+35]
      104 LOADK                            R15 K24 ["Connection_%*_inputProperty_%*"]
      105 GETTABLEKS                       R17 R13 K8 ["wireId"]
      107 GETTABLEKS                       R18 R11 K23 ["Name"]
      109 NAMECALL                         R15 R15 K9 ["format"]
      111 CALL                             R15 3 1
      112 MOVE                             R14 R15
      113 GETUPVAL                         R15 5
      114 GETTABLEKS                       R15 R15 K10 ["createElement"]
      116 GETUPVAL                         R16 6
      117 DUPTABLE                         R17 K26 [{["outputPinNodeId"], ["outputPinName"] = "Output", ["inputPinNodeId"], ["inputPinName"], ["inputPinDynamicIndex"], ["pinDataType"] = "Parameter"}]
      118 GETTABLEKS                       R18 R13 K4 ["outputNodeId"]
      120 SETTABLEKS                       R18 R17 K11 ["outputPinNodeId"]
      122 GETUPVAL                         R18 1
      123 GETTABLEKS                       R18 R18 K1 ["node"]
      125 GETTABLEKS                       R18 R18 K18 ["id"]
      127 SETTABLEKS                       R18 R17 K14 ["inputPinNodeId"]
      129 GETTABLEKS                       R18 R11 K23 ["Name"]
      131 SETTABLEKS                       R18 R17 K15 ["inputPinName"]
      133 GETTABLEKS                       R18 R5 K27 ["InputIndex"]
      135 SETTABLEKS                       R18 R17 K25 ["inputPinDynamicIndex"]
      137 CALL                             R15 2 1
      138 SETTABLE                         R15 R0 R14
      139 FORGLOOP                         R7 2 ; [-50]
      141 JUMP                             ; [+35]
      142 JUMPIFNOT                        R6 ; [+34]
      143 LOADK                            R8 K7 ["Connection_%*"]
      144 GETTABLEKS                       R10 R6 K8 ["wireId"]
      146 NAMECALL                         R8 R8 K9 ["format"]
      148 CALL                             R8 2 1
      149 MOVE                             R7 R8
      150 GETUPVAL                         R8 5
      151 GETTABLEKS                       R8 R8 K10 ["createElement"]
      153 GETUPVAL                         R9 6
      154 DUPTABLE                         R10 K17 [{["outputPinNodeId"], ["outputPinName"] = "Output", ["inputPinNodeId"], ["inputPinName"], ["pinDataType"]}]
      155 GETTABLEKS                       R11 R6 K4 ["outputNodeId"]
      157 SETTABLEKS                       R11 R10 K11 ["outputPinNodeId"]
      159 GETUPVAL                         R11 1
      160 GETTABLEKS                       R11 R11 K1 ["node"]
      162 GETTABLEKS                       R11 R11 K18 ["id"]
      164 SETTABLEKS                       R11 R10 K14 ["inputPinNodeId"]
      166 GETTABLEKS                       R11 R5 K3 ["InputName"]
      168 SETTABLEKS                       R11 R10 K15 ["inputPinName"]
      170 GETUPVAL                         R11 4
      171 GETTABLEKS                       R11 R11 K20 ["DEFAULT_PIN_DATA_TYPE"]
      173 SETTABLEKS                       R11 R10 K16 ["pinDataType"]
      175 CALL                             R8 2 1
      176 SETTABLE                         R8 R0 R7
      177 FORGLOOP                         R1 2 ; [-164]
      179 GETUPVAL                         R1 0
      180 JUMPIFNOT                        R1 ; [+52]
      181 GETUPVAL                         R1 0
      182 GETTABLEKS                       R1 R1 K21 ["Properties"]
      184 JUMPIFNOT                        R1 ; [+48]
      185 GETUPVAL                         R1 0
      186 GETTABLEKS                       R1 R1 K21 ["Properties"]
      188 LOADNIL                          R2
      189 LOADNIL                          R3
      190 FORGPREP                         R1
      191 GETUPVAL                         R7 1
      192 GETTABLEKS                       R7 R7 K1 ["node"]
      194 GETTABLEKS                       R7 R7 K2 ["inputPinToConnectionMap"]
      196 GETTABLEKS                       R8 R5 K23 ["Name"]
      198 GETTABLE                         R6 R7 R8
      199 JUMPIFNOT                        R6 ; [+31]
      200 LOADK                            R8 K28 ["Connection_%*_property_%*"]
      201 GETTABLEKS                       R10 R6 K8 ["wireId"]
      203 GETTABLEKS                       R11 R5 K23 ["Name"]
      205 NAMECALL                         R8 R8 K9 ["format"]
      207 CALL                             R8 3 1
      208 MOVE                             R7 R8
      209 GETUPVAL                         R8 5
      210 GETTABLEKS                       R8 R8 K10 ["createElement"]
      212 GETUPVAL                         R9 6
      213 DUPTABLE                         R10 K29 [{["outputPinNodeId"], ["outputPinName"] = "Output", ["inputPinNodeId"], ["inputPinName"], ["pinDataType"] = "Parameter"}]
      214 GETTABLEKS                       R11 R6 K4 ["outputNodeId"]
      216 SETTABLEKS                       R11 R10 K11 ["outputPinNodeId"]
      218 GETUPVAL                         R11 1
      219 GETTABLEKS                       R11 R11 K1 ["node"]
      221 GETTABLEKS                       R11 R11 K18 ["id"]
      223 SETTABLEKS                       R11 R10 K14 ["inputPinNodeId"]
      225 GETTABLEKS                       R11 R5 K23 ["Name"]
      227 SETTABLEKS                       R11 R10 K15 ["inputPinName"]
      229 CALL                             R8 2 1
      230 SETTABLE                         R8 R0 R7
      231 FORGLOOP                         R1 2 ; [-41]
      233 RETURN                           R0 1

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
      245 CAPTURE                          VAL R17
      246 CAPTURE                          VAL R0
      247 CAPTURE                          UPVAL U13
      248 CAPTURE                          VAL R16
      249 CAPTURE                          UPVAL U9
      250 CAPTURE                          UPVAL U0
      251 CAPTURE                          UPVAL U14
      252 NEWTABLE                         R20 0 3
      254 MOVE                             R21 R17
      255 GETTABLEKS                       R22 R0 K5 ["node"]
      257 MOVE                             R23 R16
      258 SETLIST                          R20 R21 3 [1]
      260 CALL                             R18 2 1
      261 GETUPVAL                         R19 0
      262 GETTABLEKS                       R19 R19 K13 ["useCallback"]
      264 NEWCLOSURE                       R20 P10
      265 CAPTURE                          VAL R0
      266 CAPTURE                          VAL R5
      267 NEWTABLE                         R21 0 2
      269 GETTABLEKS                       R22 R5 K24 ["setNodeProperty"]
      271 GETTABLEKS                       R24 R0 K5 ["node"]
      273 JUMPIFNOT                        R24 ; [+5]
      274 GETTABLEKS                       R23 R0 K5 ["node"]
      276 GETTABLEKS                       R23 R23 K6 ["id"]
      278 JUMPIF                           R23 ; [+1]
      279 LOADNIL                          R23
      280 SETLIST                          R21 R22 2 [1]
      282 CALL                             R19 2 1
      283 GETTABLEKS                       R20 R0 K5 ["node"]
      285 JUMPIFNOT                        R20 ; [+11]
      286 GETTABLEKS                       R21 R0 K5 ["node"]
      288 GETTABLEKS                       R21 R21 K25 ["className"]
      290 GETUPVAL                         R22 9
      291 GETTABLEKS                       R22 R22 K26 ["PARAMETER_NODE_CLASSNAME"]
      293 JUMPIFEQ                         R21 R22 ; [+2]
      295 LOADB                            R20 0 +1
      296 LOADB                            R20 1
      297 GETUPVAL                         R21 0
      298 GETTABLEKS                       R21 R21 K2 ["useMemo"]
      300 NEWCLOSURE                       R22 P11
      301 CAPTURE                          VAL R0
      302 CAPTURE                          VAL R5
      303 CAPTURE                          UPVAL U15
      304 NEWTABLE                         R23 0 1
      306 GETTABLEKS                       R25 R0 K5 ["node"]
      308 JUMPIFNOT                        R25 ; [+5]
      309 GETTABLEKS                       R24 R0 K5 ["node"]
      311 GETTABLEKS                       R24 R24 K6 ["id"]
      313 JUMPIF                           R24 ; [+1]
      314 LOADNIL                          R24
      315 SETLIST                          R23 R24 1 [1]
      317 CALL                             R21 2 1
      318 GETUPVAL                         R22 7
      319 GETTABLEKS                       R22 R22 K4 ["useSignalState"]
      321 MOVE                             R23 R21
      322 CALL                             R22 1 1
      323 GETUPVAL                         R23 7
      324 GETTABLEKS                       R23 R23 K4 ["useSignalState"]
      326 GETTABLEKS                       R24 R3 K27 ["observeParameters"]
      328 CALL                             R23 1 1
      329 GETUPVAL                         R24 0
      330 GETTABLEKS                       R24 R24 K2 ["useMemo"]
      332 NEWCLOSURE                       R25 P12
      333 CAPTURE                          VAL R22
      334 CAPTURE                          UPVAL U16
      335 CAPTURE                          UPVAL U17
      336 CAPTURE                          VAL R4
      337 CAPTURE                          VAL R23
      338 NEWTABLE                         R26 0 3
      340 MOVE                             R27 R23
      341 MOVE                             R28 R22
      342 GETTABLEKS                       R29 R4 K28 ["parameterOverrides"]
      344 SETLIST                          R26 R27 3 [1]
      346 CALL                             R24 2 1
      347 GETUPVAL                         R25 7
      348 GETTABLEKS                       R25 R25 K4 ["useSignalState"]
      350 GETUPVAL                         R26 0
      351 GETTABLEKS                       R26 R26 K2 ["useMemo"]
      353 NEWCLOSURE                       R27 P13
      354 CAPTURE                          VAL R5
      355 CAPTURE                          VAL R0
      356 NEWTABLE                         R28 0 2
      358 GETTABLEKS                       R29 R5 K29 ["observeNodeStateById"]
      360 GETTABLEKS                       R30 R0 K5 ["node"]
      362 GETTABLEKS                       R30 R30 K6 ["id"]
      364 SETLIST                          R28 R29 2 [1]
      366 CALL                             R26 2 -1
      367 CALL                             R25 -1 1
      368 DUPTABLE                         R26 K45 [{"text", "editName", "CanDrag", "GraphPayload", "Position", "Size", "Selected", "Collapsed", "ZIndex", "OnDragStart", "OnDragMoved", "OnDragEnded", "OnPropertyChanged", "PropertyLookup", "StateLookup"}]
      369 GETTABLEKS                       R27 R15 K46 ["displayName"]
      371 SETTABLEKS                       R27 R26 K30 ["text"]
      373 GETTABLEKS                       R27 R15 K31 ["editName"]
      375 SETTABLEKS                       R27 R26 K31 ["editName"]
      377 GETUPVAL                         R28 18
      378 CALL                             R28 0 1
      379 JUMPIFNOT                        R28 ; [+3]
      380 GETTABLEKS                       R27 R0 K47 ["canDrag"]
      382 JUMP                             ; [+1]
      383 LOADNIL                          R27
      384 SETTABLEKS                       R27 R26 K32 ["CanDrag"]
      386 GETTABLEKS                       R27 R0 K5 ["node"]
      388 SETTABLEKS                       R27 R26 K33 ["GraphPayload"]
      390 MOVE                             R27 R8
      391 JUMPIF                           R27 ; [+2]
      392 GETIMPORT                        R27 K50 [Vector2.zero]
      394 SETTABLEKS                       R27 R26 K34 ["Position"]
      396 JUMPIFNOT                        R10 ; [+6]
      397 GETTABLEKS                       R27 R10 K51 ["size"]
      399 JUMPIF                           R27 ; [+5]
      400 GETIMPORT                        R27 K50 [Vector2.zero]
      402 JUMP                             ; [+2]
      403 GETIMPORT                        R27 K50 [Vector2.zero]
      405 SETTABLEKS                       R27 R26 K35 ["Size"]
      407 JUMPIFNOT                        R10 ; [+3]
      408 GETTABLEKS                       R27 R10 K12 ["isSelected"]
      410 JUMP                             ; [+1]
      411 LOADB                            R27 0
      412 SETTABLEKS                       R27 R26 K36 ["Selected"]
      414 JUMPIFNOT                        R10 ; [+3]
      415 GETTABLEKS                       R27 R10 K52 ["isCollapsed"]
      417 JUMP                             ; [+1]
      418 LOADB                            R27 0
      419 SETTABLEKS                       R27 R26 K37 ["Collapsed"]
      421 SETTABLEKS                       R11 R26 K38 ["ZIndex"]
      423 SETTABLEKS                       R12 R26 K39 ["OnDragStart"]
      425 SETTABLEKS                       R13 R26 K40 ["OnDragMoved"]
      427 SETTABLEKS                       R14 R26 K41 ["OnDragEnded"]
      429 SETTABLEKS                       R19 R26 K42 ["OnPropertyChanged"]
      431 SETTABLEKS                       R24 R26 K43 ["PropertyLookup"]
      433 MOVE                             R27 R25
      434 JUMPIF                           R27 ; [+1]
      435 GETUPVAL                         R27 19
      436 SETTABLEKS                       R27 R26 K44 ["StateLookup"]
      438 LOADNIL                          R27
      439 JUMPIFNOT                        R20 ; [+2]
      440 GETUPVAL                         R27 20
      441 JUMP                             ; [+24]
      442 GETTABLEKS                       R28 R0 K5 ["node"]
      444 GETTABLEKS                       R28 R28 K23 ["nodeType"]
      446 JUMPIFNOT                        R28 ; [+5]
      447 GETTABLEKS                       R29 R0 K5 ["node"]
      449 GETTABLEKS                       R29 R29 K23 ["nodeType"]
      451 GETTABLE                         R28 R2 R29
      452 JUMPIFNOT                        R28 ; [+3]
      453 GETTABLEKS                       R27 R28 K53 ["render"]
      455 JUMP                             ; [+1]
      456 GETUPVAL                         R27 21
      457 GETIMPORT                        R29 K55 [game]
      459 LOADK                            R31 K56 ["DebugDisableCustomNodes"]
      460 LOADB                            R32 0
      461 NAMECALL                         R29 R29 K57 ["DefineFastFlag"]
      463 CALL                             R29 3 1
      464 JUMPIFNOT                        R29 ; [+1]
      465 GETUPVAL                         R27 21
      466 GETUPVAL                         R28 0
      467 GETTABLEKS                       R28 R28 K58 ["createElement"]
      469 GETUPVAL                         R29 0
      470 GETTABLEKS                       R29 R29 K59 ["Fragment"]
      472 NEWTABLE                         R30 0 0
      474 GETUPVAL                         R31 0
      475 GETTABLEKS                       R31 R31 K58 ["createElement"]
      477 MOVE                             R32 R27
      478 MOVE                             R33 R26
      479 CALL                             R31 2 1
      480 MOVE                             R32 R18
      481 CALL                             R28 4 -1
      482 RETURN                           R28 -1

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
      118 GETTABLEKS                       R17 R17 K25 ["bumpNodeZIndex"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K5 [require]
      123 GETTABLEKS                       R18 R0 K24 ["Util"]
      125 GETTABLEKS                       R18 R18 K26 ["matchParameterBinding"]
      127 CALL                             R17 1 1
      128 GETIMPORT                        R18 K5 [require]
      130 GETTABLEKS                       R19 R0 K6 ["Components"]
      132 GETTABLEKS                       R19 R19 K16 ["CompositorNodes"]
      134 GETTABLEKS                       R19 R19 K27 ["synthesizeDefinition"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R20 R0 K6 ["Components"]
      141 GETTABLEKS                       R20 R20 K16 ["CompositorNodes"]
      143 GETTABLEKS                       R20 R20 K28 ["useNodeNames"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R21 R0 K29 ["Flags"]
      150 GETTABLEKS                       R21 R21 K30 ["FFlagAnimGraphUI_DynamicZIndex"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETTABLEKS                       R22 R0 K29 ["Flags"]
      157 GETTABLEKS                       R22 R22 K31 ["getFFlagAnimGraphUILetAllParametersOverridable"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K5 [require]
      162 GETTABLEKS                       R23 R0 K29 ["Flags"]
      164 GETTABLEKS                       R23 R23 K32 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K5 [require]
      169 GETTABLEKS                       R24 R0 K29 ["Flags"]
      171 GETTABLEKS                       R24 R24 K33 ["getFFlagAnimGraphUI_RunTimeDebug"]
      173 CALL                             R23 1 1
      174 NEWTABLE                         R24 0 0
      176 DUPCLOSURE                       R25 K34 [PROTO_14]
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R9
      180 CAPTURE                          VAL R11
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R1
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R14
      185 CAPTURE                          VAL R20
      186 CAPTURE                          VAL R3
      187 CAPTURE                          VAL R16
      188 CAPTURE                          VAL R19
      189 CAPTURE                          VAL R18
      190 CAPTURE                          VAL R22
      191 CAPTURE                          VAL R13
      192 CAPTURE                          VAL R15
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R21
      195 CAPTURE                          VAL R23
      196 CAPTURE                          VAL R24
      197 CAPTURE                          VAL R10
      198 CAPTURE                          VAL R2
      199 GETTABLEKS                       R26 R12 K35 ["memo"]
      201 MOVE                             R27 R25
      202 CALL                             R26 1 -1
      203 RETURN                           R26 -1
