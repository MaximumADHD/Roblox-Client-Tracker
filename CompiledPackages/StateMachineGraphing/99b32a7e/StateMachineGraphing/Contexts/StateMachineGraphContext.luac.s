PROTO_0:
        0 DUPTABLE                         R5 K9 [{"id", "name", "nodeType", "className", "inputPinIds", "inputPinToConnectionMap", "outputPinToConnectionMap", "inputLabelPinToConnectionMap", "renderInPaneOnly"}]
        1 SETTABLEKS                       R0 R5 K0 ["id"]
        3 SETTABLEKS                       R1 R5 K1 ["name"]
        5 SETTABLEKS                       R2 R5 K2 ["nodeType"]
        7 SETTABLEKS                       R3 R5 K3 ["className"]
        9 NEWTABLE                         R6 0 0
       11 SETTABLEKS                       R6 R5 K4 ["inputPinIds"]
       13 NEWTABLE                         R6 0 0
       15 SETTABLEKS                       R6 R5 K5 ["inputPinToConnectionMap"]
       17 NEWTABLE                         R6 0 0
       19 SETTABLEKS                       R6 R5 K6 ["outputPinToConnectionMap"]
       21 NEWTABLE                         R6 0 0
       23 SETTABLEKS                       R6 R5 K7 ["inputLabelPinToConnectionMap"]
       25 SETTABLEKS                       R4 R5 K8 ["renderInPaneOnly"]
       27 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R1 1
        6 DUPTABLE                         R2 K6 [{["size"], ["isSelected"] = False, ["zIndex"] = 0}]
        7 GETUPVAL                         R3 1
        8 SETTABLEKS                       R3 R2 K1 ["size"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["current"]
       13 SETTABLE                         R2 R3 R0
       14 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onDeleteStates"]
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R0
        6 SETLIST                          R2 R3 1 [1]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 0
        7 MOVE                             R8 R5
        8 CALL                             R7 1 1
        9 GETTABLEKS                       R7 R7 K0 ["size"]
       11 DUPTABLE                         R8 K3 [{"x", "y"}]
       12 GETTABLEKS                       R10 R6 K4 ["X"]
       14 GETTABLEKS                       R12 R7 K4 ["X"]
       16 DIVK                             R11 R12 K5 [2]
       17 ADD                              R9 R10 R11
       18 SETTABLEKS                       R9 R8 K1 ["x"]
       20 GETTABLEKS                       R10 R6 K6 ["Y"]
       22 GETTABLEKS                       R12 R7 K6 ["Y"]
       24 DIVK                             R11 R12 K5 [2]
       25 SUB                              R9 R10 R11
       26 SETTABLEKS                       R9 R8 K2 ["y"]
       28 SETTABLE                         R8 R1 R5
       29 FORGLOOP                         R2 2 ; [-24]
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K7 ["moveStates"]
       34 MOVE                             R3 R1
       35 CALL                             R2 1 0
       36 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["renameState"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createTransition"]
        3 MOVE                             R5 R2
        4 MOVE                             R6 R0
        5 CALL                             R4 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 0
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["states"]
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 GETTABLEKS                       R9 R8 K1 ["id"]
       16 LOADB                            R10 1
       17 SETTABLE                         R10 R3 R9
       18 GETUPVAL                         R9 1
       19 GETTABLEKS                       R10 R8 K1 ["id"]
       21 CALL                             R9 1 1
       22 GETTABLEKS                       R10 R8 K1 ["id"]
       24 GETUPVAL                         R11 2
       25 GETTABLEKS                       R12 R8 K1 ["id"]
       27 GETTABLEKS                       R13 R8 K2 ["name"]
       29 GETUPVAL                         R14 3
       30 GETTABLEKS                       R14 R14 K3 ["STATE_NODE_TYPE"]
       32 GETUPVAL                         R15 3
       33 GETTABLEKS                       R15 R15 K3 ["STATE_NODE_TYPE"]
       35 CALL                             R11 4 1
       36 SETTABLE                         R11 R0 R10
       37 GETTABLEKS                       R10 R8 K1 ["id"]
       39 DUPTABLE                         R11 K11 [{["nodeId"], ["position"], ["size"], ["zIndex"], ["isCollapsed"] = False, ["isSelected"]}]
       40 GETTABLEKS                       R12 R8 K1 ["id"]
       42 SETTABLEKS                       R12 R11 K4 ["nodeId"]
       44 GETIMPORT                        R12 K14 [Vector2.new]
       46 GETTABLEKS                       R14 R8 K5 ["position"]
       48 GETTABLEKS                       R14 R14 K15 ["x"]
       50 GETTABLEKS                       R16 R9 K6 ["size"]
       52 GETTABLEKS                       R16 R16 K17 ["X"]
       54 DIVK                             R15 R16 K16 [2]
       55 SUB                              R13 R14 R15
       56 GETTABLEKS                       R15 R8 K5 ["position"]
       58 GETTABLEKS                       R15 R15 K18 ["y"]
       60 GETTABLEKS                       R17 R9 K6 ["size"]
       62 GETTABLEKS                       R17 R17 K19 ["Y"]
       64 DIVK                             R16 R17 K16 [2]
       65 ADD                              R14 R15 R16
       66 CALL                             R12 2 1
       67 SETTABLEKS                       R12 R11 K5 ["position"]
       69 GETTABLEKS                       R12 R9 K6 ["size"]
       71 SETTABLEKS                       R12 R11 K6 ["size"]
       73 GETUPVAL                         R13 4
       74 JUMPIFNOT                        R13 ; [+3]
       75 GETTABLEKS                       R12 R9 K7 ["zIndex"]
       77 JUMP                             ; [+1]
       78 LOADN                            R12 0
       79 SETTABLEKS                       R12 R11 K7 ["zIndex"]
       81 GETTABLEKS                       R12 R9 K10 ["isSelected"]
       83 SETTABLEKS                       R12 R11 K10 ["isSelected"]
       85 SETTABLE                         R11 R1 R10
       86 GETTABLEKS                       R10 R8 K1 ["id"]
       88 DUPTABLE                         R11 K24 [{"Name", "isStart", "isAny", "canStartTransition"}]
       89 GETTABLEKS                       R12 R8 K2 ["name"]
       91 SETTABLEKS                       R12 R11 K20 ["Name"]
       93 GETTABLEKS                       R12 R8 K21 ["isStart"]
       95 SETTABLEKS                       R12 R11 K21 ["isStart"]
       97 GETTABLEKS                       R12 R8 K22 ["isAny"]
       99 SETTABLEKS                       R12 R11 K22 ["isAny"]
      101 GETTABLEKS                       R13 R8 K21 ["isStart"]
      103 JUMPIFNOT                        R13 ; [+7]
      104 GETUPVAL                         R13 5
      105 GETTABLEKS                       R13 R13 K25 ["hasOutgoingTransition"]
      107 GETUPVAL                         R14 0
      108 GETTABLEKS                       R15 R8 K1 ["id"]
      110 CALL                             R13 2 1
      111 NOT                              R12 R13
      112 SETTABLEKS                       R12 R11 K23 ["canStartTransition"]
      114 SETTABLE                         R11 R2 R10
      115 FORGLOOP                         R4 2 ; [-102]
      117 GETUPVAL                         R4 6
      118 GETTABLEKS                       R4 R4 K26 ["current"]
      120 LOADNIL                          R5
      121 LOADNIL                          R6
      122 FORGPREP                         R4
      123 GETTABLE                         R9 R3 R7
      124 JUMPIF                           R9 ; [+5]
      125 GETUPVAL                         R9 6
      126 GETTABLEKS                       R9 R9 K26 ["current"]
      128 LOADNIL                          R10
      129 SETTABLE                         R10 R9 R7
      130 FORGLOOP                         R4 1 ; [-8]
      132 GETUPVAL                         R4 7
      133 GETTABLEKS                       R4 R4 K27 ["parameters"]
      135 JUMPIF                           R4 ; [+2]
      136 NEWTABLE                         R4 0 0
      138 MOVE                             R5 R4
      139 LOADNIL                          R6
      140 LOADNIL                          R7
      141 FORGPREP                         R5
      142 GETTABLEKS                       R11 R9 K1 ["id"]
      144 GETTABLE                         R10 R0 R11
      145 JUMPIF                           R10 ; [+14]
      146 GETTABLEKS                       R10 R9 K1 ["id"]
      148 GETUPVAL                         R11 2
      149 GETTABLEKS                       R12 R9 K1 ["id"]
      151 GETTABLEKS                       R13 R9 K2 ["name"]
      153 GETTABLEKS                       R14 R9 K28 ["nodeType"]
      155 GETTABLEKS                       R15 R9 K29 ["className"]
      157 LOADB                            R16 1
      158 CALL                             R11 5 1
      159 SETTABLE                         R11 R0 R10
      160 FORGLOOP                         R5 2 ; [-19]
      162 GETUPVAL                         R5 8
      163 GETTABLEKS                       R5 R5 K30 ["setMap"]
      165 MOVE                             R6 R0
      166 CALL                             R5 1 0
      167 GETUPVAL                         R5 9
      168 GETTABLEKS                       R5 R5 K30 ["setMap"]
      170 MOVE                             R6 R1
      171 CALL                             R5 1 0
      172 GETUPVAL                         R5 10
      173 GETTABLEKS                       R5 R5 K30 ["setMap"]
      175 MOVE                             R6 R2
      176 CALL                             R5 1 0
      177 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 GETIMPORT                        R4 K3 [table.clone]
       12 MOVE                             R5 R2
       13 CALL                             R4 1 1
       14 MOVE                             R5 R1
       15 MOVE                             R6 R4
       16 MOVE                             R7 R3
       17 CALL                             R5 2 0
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K4 ["set"]
       21 MOVE                             R6 R0
       22 MOVE                             R7 R4
       23 CALL                             R5 2 0
       24 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R2 R1 K0 ["size"]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R0 K0 ["size"]
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R1 K0 ["isSelected"]
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R0 K0 ["isSelected"]
        6 RETURN                           R0 0

PROTO_11:
        0 LOADB                            R2 1
        1 SETTABLEKS                       R2 R1 K0 ["isSelected"]
        3 LOADB                            R2 1
        4 SETTABLEKS                       R2 R0 K0 ["isSelected"]
        6 RETURN                           R0 0

PROTO_12:
        0 JUMPIF                           R1 ; [+15]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["observeMap"]
        4 LOADB                            R3 0
        5 CALL                             R2 1 3
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["isSelected"]
        9 JUMPIFNOT                        R7 ; [+4]
       10 GETUPVAL                         R7 1
       11 MOVE                             R8 R5
       12 DUPCLOSURE                       R9 K2 [PROTO_10]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-8]
       16 MOVE                             R2 R0
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 GETUPVAL                         R7 1
       21 MOVE                             R8 R5
       22 DUPCLOSURE                       R9 K3 [PROTO_11]
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 1 ; [-5]
       26 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 1
        6 RETURN                           R0 1

PROTO_17:
        0 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R2 R1 K0 ["zIndex"]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R0 K0 ["zIndex"]
        6 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_20:
        0 RETURN                           R0 0

PROTO_21:
        0 RETURN                           R0 0

PROTO_22:
        0 RETURN                           R0 0

PROTO_23:
        0 RETURN                           R0 0

PROTO_24:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_25:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_26:
        0 RETURN                           R0 0

PROTO_27:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_28:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_29:
        0 RETURN                           R0 0

PROTO_30:
        0 RETURN                           R0 0

PROTO_31:
        0 RETURN                           R0 0

PROTO_32:
        0 RETURN                           R0 0

PROTO_33:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 DUPTABLE                         R1 K34 [{[1] = False, ["parametersReadonly"] = True, ["nodePayloadDispatcher"], ["nodeRenderInfoDispatcher"], ["createNode"], ["setNodePositions"], ["setNodeSize"], ["selectNodes"], ["renameNode"], ["removeNodes"], ["deleteNodeInstance"], ["setNodeConnection"], ["observeNodePropsById"], ["observeNodeStateById"], ["observeFadeByNodeId"], ["DEPRECATED_observeIsDisabledByNodeId"], ["observeNodeInputBindings"], ["setCollapsed"], ["setZIndex"], ["setNodeProperty"], ["setInputPinNodeProperty"], ["deleteNodeInput"], ["removeNodeInputConnectionAsync"], ["removeNodeOutputConnectionAsync"], ["reorderPins"], ["createParameter"], ["createExistingParameterAsync"], ["createConnectedParameterAsync"], ["selectAllParameterNodesWithName"], ["removeParameter"], ["renameParameter"], ["setParameterNodeType"]}]
        4 GETUPVAL                         R2 2
        5 SETTABLEKS                       R2 R1 K4 ["nodePayloadDispatcher"]
        7 GETUPVAL                         R2 0
        8 SETTABLEKS                       R2 R1 K5 ["nodeRenderInfoDispatcher"]
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K6 ["createNode"]
       13 GETUPVAL                         R2 4
       14 SETTABLEKS                       R2 R1 K7 ["setNodePositions"]
       16 NEWCLOSURE                       R2 P1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R1 K8 ["setNodeSize"]
       20 NEWCLOSURE                       R2 P2
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R2 R1 K9 ["selectNodes"]
       25 GETUPVAL                         R2 5
       26 SETTABLEKS                       R2 R1 K10 ["renameNode"]
       28 GETUPVAL                         R2 6
       29 SETTABLEKS                       R2 R1 K11 ["removeNodes"]
       31 GETUPVAL                         R2 7
       32 SETTABLEKS                       R2 R1 K12 ["deleteNodeInstance"]
       34 GETUPVAL                         R2 8
       35 SETTABLEKS                       R2 R1 K13 ["setNodeConnection"]
       37 GETUPVAL                         R2 9
       38 GETTABLEKS                       R2 R2 K35 ["observe"]
       40 SETTABLEKS                       R2 R1 K14 ["observeNodePropsById"]
       42 DUPCLOSURE                       R2 K36 [PROTO_13]
       43 CAPTURE                          UPVAL U10
       44 SETTABLEKS                       R2 R1 K15 ["observeNodeStateById"]
       46 DUPCLOSURE                       R2 K37 [PROTO_14]
       47 CAPTURE                          UPVAL U10
       48 SETTABLEKS                       R2 R1 K16 ["observeFadeByNodeId"]
       50 DUPCLOSURE                       R2 K38 [PROTO_15]
       51 CAPTURE                          UPVAL U10
       52 SETTABLEKS                       R2 R1 K17 ["DEPRECATED_observeIsDisabledByNodeId"]
       54 DUPCLOSURE                       R2 K39 [PROTO_16]
       55 CAPTURE                          UPVAL U10
       56 SETTABLEKS                       R2 R1 K18 ["observeNodeInputBindings"]
       58 DUPCLOSURE                       R2 K40 [PROTO_17]
       59 SETTABLEKS                       R2 R1 K19 ["setCollapsed"]
       61 GETUPVAL                         R3 11
       62 JUMPIFNOT                        R3 ; [+3]
       63 NEWCLOSURE                       R2 P8
       64 CAPTURE                          VAL R0
       65 JUMP                             ; [+1]
       66 DUPCLOSURE                       R2 K41 [PROTO_20]
       67 SETTABLEKS                       R2 R1 K20 ["setZIndex"]
       69 DUPCLOSURE                       R2 K42 [PROTO_21]
       70 SETTABLEKS                       R2 R1 K21 ["setNodeProperty"]
       72 DUPCLOSURE                       R2 K43 [PROTO_22]
       73 SETTABLEKS                       R2 R1 K22 ["setInputPinNodeProperty"]
       75 DUPCLOSURE                       R2 K44 [PROTO_23]
       76 SETTABLEKS                       R2 R1 K23 ["deleteNodeInput"]
       78 DUPCLOSURE                       R2 K45 [PROTO_24]
       79 SETTABLEKS                       R2 R1 K24 ["removeNodeInputConnectionAsync"]
       81 DUPCLOSURE                       R2 K46 [PROTO_25]
       82 SETTABLEKS                       R2 R1 K25 ["removeNodeOutputConnectionAsync"]
       84 GETUPVAL                         R2 12
       85 GETTABLEKS                       R2 R2 K47 ["createUnimplemented"]
       87 LOADK                            R3 K26 ["reorderPins"]
       88 CALL                             R2 1 1
       89 SETTABLEKS                       R2 R1 K26 ["reorderPins"]
       91 DUPCLOSURE                       R2 K48 [PROTO_26]
       92 SETTABLEKS                       R2 R1 K27 ["createParameter"]
       94 DUPCLOSURE                       R2 K49 [PROTO_27]
       95 SETTABLEKS                       R2 R1 K28 ["createExistingParameterAsync"]
       97 DUPCLOSURE                       R2 K50 [PROTO_28]
       98 SETTABLEKS                       R2 R1 K29 ["createConnectedParameterAsync"]
      100 DUPCLOSURE                       R2 K51 [PROTO_29]
      101 SETTABLEKS                       R2 R1 K30 ["selectAllParameterNodesWithName"]
      103 DUPCLOSURE                       R2 K52 [PROTO_30]
      104 SETTABLEKS                       R2 R1 K31 ["removeParameter"]
      106 DUPCLOSURE                       R2 K53 [PROTO_31]
      107 SETTABLEKS                       R2 R1 K32 ["renameParameter"]
      109 DUPCLOSURE                       R2 K54 [PROTO_32]
      110 SETTABLEKS                       R2 R1 K33 ["setParameterNodeType"]
      112 RETURN                           R1 1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K0 ["useRef"]
        9 NEWTABLE                         R5 0 0
       11 CALL                             R4 1 1
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K1 ["useCallback"]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R4
       17 CAPTURE                          UPVAL U2
       18 NEWTABLE                         R7 0 0
       20 CALL                             R5 2 1
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K2 ["useContext"]
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K3 ["Context"]
       27 CALL                             R6 1 1
       28 GETUPVAL                         R7 4
       29 GETTABLEKS                       R7 R7 K4 ["useSignalState"]
       31 GETTABLEKS                       R8 R6 K5 ["observeData"]
       33 CALL                             R7 1 1
       34 GETUPVAL                         R8 5
       35 GETTABLEKS                       R8 R8 K6 ["useEventCallback"]
       37 GETTABLEKS                       R9 R0 K7 ["onCreateState"]
       39 CALL                             R8 1 1
       40 GETUPVAL                         R9 5
       41 GETTABLEKS                       R9 R9 K6 ["useEventCallback"]
       43 GETTABLEKS                       R10 R0 K8 ["onDeleteStates"]
       45 CALL                             R9 1 1
       46 GETUPVAL                         R10 5
       47 GETTABLEKS                       R10 R10 K6 ["useEventCallback"]
       49 NEWCLOSURE                       R11 P1
       50 CAPTURE                          VAL R0
       51 CALL                             R10 1 1
       52 GETUPVAL                         R11 5
       53 GETTABLEKS                       R11 R11 K6 ["useEventCallback"]
       55 NEWCLOSURE                       R12 P2
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R6
       58 CALL                             R11 1 1
       59 GETUPVAL                         R12 5
       60 GETTABLEKS                       R12 R12 K6 ["useEventCallback"]
       62 NEWCLOSURE                       R13 P3
       63 CAPTURE                          VAL R6
       64 CALL                             R12 1 1
       65 GETUPVAL                         R13 5
       66 GETTABLEKS                       R13 R13 K6 ["useEventCallback"]
       68 NEWCLOSURE                       R14 P4
       69 CAPTURE                          VAL R6
       70 CALL                             R13 1 1
       71 GETUPVAL                         R14 1
       72 GETTABLEKS                       R14 R14 K9 ["useEffect"]
       74 NEWCLOSURE                       R15 P5
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R5
       77 CAPTURE                          UPVAL U6
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          UPVAL U8
       80 CAPTURE                          UPVAL U9
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R0
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R3
       86 NEWTABLE                         R16 0 6
       88 MOVE                             R17 R7
       89 GETTABLEKS                       R18 R0 K10 ["parameters"]
       91 MOVE                             R19 R5
       92 MOVE                             R20 R1
       93 MOVE                             R21 R2
       94 MOVE                             R22 R3
       95 SETLIST                          R16 R17 6 [1]
       97 CALL                             R14 2 0
       98 GETUPVAL                         R14 1
       99 GETTABLEKS                       R14 R14 K11 ["useMemo"]
      101 NEWCLOSURE                       R15 P6
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R3
      112 CAPTURE                          UPVAL U10
      113 CAPTURE                          UPVAL U8
      114 CAPTURE                          UPVAL U5
      115 NEWTABLE                         R16 0 10
      117 MOVE                             R17 R1
      118 MOVE                             R18 R2
      119 MOVE                             R19 R3
      120 MOVE                             R20 R5
      121 MOVE                             R21 R8
      122 MOVE                             R22 R10
      123 MOVE                             R23 R9
      124 MOVE                             R24 R12
      125 MOVE                             R25 R13
      126 MOVE                             R26 R11
      127 SETLIST                          R16 R17 10 [1]
      129 CALL                             R14 2 1
      130 GETUPVAL                         R15 1
      131 GETTABLEKS                       R15 R15 K12 ["createElement"]
      133 GETUPVAL                         R16 11
      134 GETTABLEKS                       R16 R16 K13 ["Provider"]
      136 DUPTABLE                         R17 K15 [{"value"}]
      137 SETTABLEKS                       R14 R17 K14 ["value"]
      139 GETTABLEKS                       R18 R0 K16 ["children"]
      141 CALL                             R15 3 -1
      142 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StateMachineGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeGraphing"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["Signals"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K11 ["SignalsReact"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Data"]
       46 GETTABLEKS                       R7 R7 K13 ["StateMachineData"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Contexts"]
       53 GETTABLEKS                       R8 R8 K15 ["StateMachineDataContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K14 ["Contexts"]
       60 GETTABLEKS                       R9 R9 K16 ["StateMachineNodeLibrary"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K12 ["Data"]
       67 GETTABLEKS                       R10 R10 K17 ["StateMachineTypes"]
       69 CALL                             R9 1 1
       70 GETTABLEKS                       R10 R1 K18 ["GraphContext"]
       72 GETTABLEKS                       R11 R1 K19 ["useSignalDispatcher"]
       74 GETTABLEKS                       R12 R1 K20 ["FFlagAnimGraphUI_DynamicZIndex"]
       76 GETIMPORT                        R13 K23 [Vector2.new]
       78 LOADN                            R14 120
       79 LOADN                            R15 40
       80 CALL                             R13 2 1
       81 DUPCLOSURE                       R14 K24 [PROTO_0]
       82 DUPCLOSURE                       R15 K25 [PROTO_34]
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R10
       95 RETURN                           R15 1
