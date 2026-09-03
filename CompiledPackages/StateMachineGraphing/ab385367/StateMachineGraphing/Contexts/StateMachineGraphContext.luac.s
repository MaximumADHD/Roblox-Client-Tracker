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
        6 DUPTABLE                         R2 K4 [{["size"], ["isSelected"] = False}]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["data"]
        3 MOVE                             R2 R0
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETUPVAL                         R7 1
        8 MOVE                             R8 R5
        9 CALL                             R7 1 1
       10 GETTABLEKS                       R7 R7 K1 ["size"]
       12 GETUPVAL                         R8 2
       13 GETTABLEKS                       R8 R8 K2 ["moveState"]
       15 MOVE                             R9 R1
       16 MOVE                             R10 R5
       17 DUPTABLE                         R11 K5 [{"x", "y"}]
       18 GETTABLEKS                       R13 R6 K6 ["X"]
       20 GETTABLEKS                       R15 R7 K6 ["X"]
       22 DIVK                             R14 R15 K7 [2]
       23 ADD                              R12 R13 R14
       24 SETTABLEKS                       R12 R11 K3 ["x"]
       26 GETTABLEKS                       R13 R6 K8 ["Y"]
       28 GETTABLEKS                       R15 R7 K8 ["Y"]
       30 DIVK                             R14 R15 K7 [2]
       31 SUB                              R12 R13 R14
       32 SETTABLEKS                       R12 R11 K4 ["y"]
       34 CALL                             R8 3 1
       35 MOVE                             R1 R8
       36 FORGLOOP                         R2 2 ; [-30]
       38 GETUPVAL                         R2 3
       39 MOVE                             R3 R1
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["renameState"]
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K1 ["data"]
        7 MOVE                             R5 R0
        8 MOVE                             R6 R1
        9 CALL                             R3 3 -1
       10 CALL                             R2 -1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["addTransition"]
        4 GETUPVAL                         R6 2
        5 GETTABLEKS                       R6 R6 K1 ["data"]
        7 MOVE                             R7 R2
        8 MOVE                             R8 R0
        9 CALL                             R5 3 1
       10 CALL                             R4 1 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["data"]
        3 NEWTABLE                         R1 0 0
        5 NEWTABLE                         R2 0 0
        7 NEWTABLE                         R3 0 0
        9 NEWTABLE                         R4 0 0
       11 GETTABLEKS                       R5 R0 K1 ["states"]
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 FORGPREP                         R5
       16 GETTABLEKS                       R10 R9 K2 ["id"]
       18 LOADB                            R11 1
       19 SETTABLE                         R11 R4 R10
       20 GETUPVAL                         R10 1
       21 GETTABLEKS                       R11 R9 K2 ["id"]
       23 CALL                             R10 1 1
       24 GETTABLEKS                       R11 R9 K2 ["id"]
       26 GETUPVAL                         R12 2
       27 GETTABLEKS                       R13 R9 K2 ["id"]
       29 GETTABLEKS                       R14 R9 K3 ["name"]
       31 GETUPVAL                         R15 3
       32 GETTABLEKS                       R15 R15 K4 ["STATE_NODE_TYPE"]
       34 GETUPVAL                         R16 3
       35 GETTABLEKS                       R16 R16 K4 ["STATE_NODE_TYPE"]
       37 CALL                             R12 4 1
       38 SETTABLE                         R12 R1 R11
       39 GETTABLEKS                       R11 R9 K2 ["id"]
       41 DUPTABLE                         R12 K13 [{["nodeId"], ["position"], ["size"], ["zIndex"] = 0, ["isCollapsed"] = False, ["isSelected"]}]
       42 GETTABLEKS                       R13 R9 K2 ["id"]
       44 SETTABLEKS                       R13 R12 K5 ["nodeId"]
       46 GETIMPORT                        R13 K16 [Vector2.new]
       48 GETTABLEKS                       R15 R9 K6 ["position"]
       50 GETTABLEKS                       R15 R15 K17 ["x"]
       52 GETTABLEKS                       R17 R10 K7 ["size"]
       54 GETTABLEKS                       R17 R17 K19 ["X"]
       56 DIVK                             R16 R17 K18 [2]
       57 SUB                              R14 R15 R16
       58 GETTABLEKS                       R16 R9 K6 ["position"]
       60 GETTABLEKS                       R16 R16 K20 ["y"]
       62 GETTABLEKS                       R18 R10 K7 ["size"]
       64 GETTABLEKS                       R18 R18 K21 ["Y"]
       66 DIVK                             R17 R18 K18 [2]
       67 ADD                              R15 R16 R17
       68 CALL                             R13 2 1
       69 SETTABLEKS                       R13 R12 K6 ["position"]
       71 GETTABLEKS                       R13 R10 K7 ["size"]
       73 SETTABLEKS                       R13 R12 K7 ["size"]
       75 GETTABLEKS                       R13 R10 K12 ["isSelected"]
       77 SETTABLEKS                       R13 R12 K12 ["isSelected"]
       79 SETTABLE                         R12 R2 R11
       80 GETTABLEKS                       R11 R9 K2 ["id"]
       82 DUPTABLE                         R12 K26 [{"Name", "isStart", "isAny", "canStartTransition"}]
       83 GETTABLEKS                       R13 R9 K3 ["name"]
       85 SETTABLEKS                       R13 R12 K22 ["Name"]
       87 GETTABLEKS                       R13 R9 K23 ["isStart"]
       89 SETTABLEKS                       R13 R12 K23 ["isStart"]
       91 GETTABLEKS                       R13 R9 K24 ["isAny"]
       93 SETTABLEKS                       R13 R12 K24 ["isAny"]
       95 GETTABLEKS                       R14 R9 K23 ["isStart"]
       97 JUMPIFNOT                        R14 ; [+7]
       98 GETUPVAL                         R14 4
       99 GETTABLEKS                       R14 R14 K27 ["hasOutgoingTransition"]
      101 MOVE                             R15 R0
      102 GETTABLEKS                       R16 R9 K2 ["id"]
      104 CALL                             R14 2 1
      105 NOT                              R13 R14
      106 SETTABLEKS                       R13 R12 K25 ["canStartTransition"]
      108 SETTABLE                         R12 R3 R11
      109 FORGLOOP                         R5 2 ; [-94]
      111 GETUPVAL                         R5 5
      112 GETTABLEKS                       R5 R5 K28 ["current"]
      114 LOADNIL                          R6
      115 LOADNIL                          R7
      116 FORGPREP                         R5
      117 GETTABLE                         R10 R4 R8
      118 JUMPIF                           R10 ; [+5]
      119 GETUPVAL                         R10 5
      120 GETTABLEKS                       R10 R10 K28 ["current"]
      122 LOADNIL                          R11
      123 SETTABLE                         R11 R10 R8
      124 FORGLOOP                         R5 1 ; [-8]
      126 GETUPVAL                         R5 0
      127 GETTABLEKS                       R5 R5 K29 ["parameters"]
      129 JUMPIF                           R5 ; [+2]
      130 NEWTABLE                         R5 0 0
      132 MOVE                             R6 R5
      133 LOADNIL                          R7
      134 LOADNIL                          R8
      135 FORGPREP                         R6
      136 GETTABLEKS                       R12 R10 K2 ["id"]
      138 GETTABLE                         R11 R1 R12
      139 JUMPIF                           R11 ; [+14]
      140 GETTABLEKS                       R11 R10 K2 ["id"]
      142 GETUPVAL                         R12 2
      143 GETTABLEKS                       R13 R10 K2 ["id"]
      145 GETTABLEKS                       R14 R10 K3 ["name"]
      147 GETTABLEKS                       R15 R10 K30 ["nodeType"]
      149 GETTABLEKS                       R16 R10 K31 ["className"]
      151 LOADB                            R17 1
      152 CALL                             R12 5 1
      153 SETTABLE                         R12 R1 R11
      154 FORGLOOP                         R6 2 ; [-19]
      156 GETUPVAL                         R6 6
      157 GETTABLEKS                       R6 R6 K32 ["setMap"]
      159 MOVE                             R7 R1
      160 CALL                             R6 1 0
      161 GETUPVAL                         R6 7
      162 GETTABLEKS                       R6 R6 K32 ["setMap"]
      164 MOVE                             R7 R2
      165 CALL                             R6 1 0
      166 GETUPVAL                         R6 8
      167 GETTABLEKS                       R6 R6 K32 ["setMap"]
      169 MOVE                             R7 R3
      170 CALL                             R6 1 0
      171 RETURN                           R0 0

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
        0 RETURN                           R0 0

PROTO_19:
        0 RETURN                           R0 0

PROTO_20:
        0 RETURN                           R0 0

PROTO_21:
        0 RETURN                           R0 0

PROTO_22:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_23:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_24:
        0 RETURN                           R0 0

PROTO_25:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_26:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_27:
        0 RETURN                           R0 0

PROTO_28:
        0 RETURN                           R0 0

PROTO_29:
        0 RETURN                           R0 0

PROTO_30:
        0 RETURN                           R0 0

PROTO_31:
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
       61 DUPCLOSURE                       R2 K41 [PROTO_18]
       62 SETTABLEKS                       R2 R1 K20 ["setZIndex"]
       64 DUPCLOSURE                       R2 K42 [PROTO_19]
       65 SETTABLEKS                       R2 R1 K21 ["setNodeProperty"]
       67 DUPCLOSURE                       R2 K43 [PROTO_20]
       68 SETTABLEKS                       R2 R1 K22 ["setInputPinNodeProperty"]
       70 DUPCLOSURE                       R2 K44 [PROTO_21]
       71 SETTABLEKS                       R2 R1 K23 ["deleteNodeInput"]
       73 DUPCLOSURE                       R2 K45 [PROTO_22]
       74 SETTABLEKS                       R2 R1 K24 ["removeNodeInputConnectionAsync"]
       76 DUPCLOSURE                       R2 K46 [PROTO_23]
       77 SETTABLEKS                       R2 R1 K25 ["removeNodeOutputConnectionAsync"]
       79 GETUPVAL                         R2 11
       80 GETTABLEKS                       R2 R2 K47 ["createUnimplemented"]
       82 LOADK                            R3 K26 ["reorderPins"]
       83 CALL                             R2 1 1
       84 SETTABLEKS                       R2 R1 K26 ["reorderPins"]
       86 DUPCLOSURE                       R2 K48 [PROTO_24]
       87 SETTABLEKS                       R2 R1 K27 ["createParameter"]
       89 DUPCLOSURE                       R2 K49 [PROTO_25]
       90 SETTABLEKS                       R2 R1 K28 ["createExistingParameterAsync"]
       92 DUPCLOSURE                       R2 K50 [PROTO_26]
       93 SETTABLEKS                       R2 R1 K29 ["createConnectedParameterAsync"]
       95 DUPCLOSURE                       R2 K51 [PROTO_27]
       96 SETTABLEKS                       R2 R1 K30 ["selectAllParameterNodesWithName"]
       98 DUPCLOSURE                       R2 K52 [PROTO_28]
       99 SETTABLEKS                       R2 R1 K31 ["removeParameter"]
      101 DUPCLOSURE                       R2 K53 [PROTO_29]
      102 SETTABLEKS                       R2 R1 K32 ["renameParameter"]
      104 DUPCLOSURE                       R2 K54 [PROTO_30]
      105 SETTABLEKS                       R2 R1 K33 ["setParameterNodeType"]
      107 RETURN                           R1 1

PROTO_32:
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
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K2 ["useEventCallback"]
       24 GETTABLEKS                       R7 R0 K3 ["onDataChanged"]
       26 CALL                             R6 1 1
       27 GETUPVAL                         R7 3
       28 GETTABLEKS                       R7 R7 K2 ["useEventCallback"]
       30 GETTABLEKS                       R8 R0 K4 ["onCreateState"]
       32 CALL                             R7 1 1
       33 GETUPVAL                         R8 3
       34 GETTABLEKS                       R8 R8 K2 ["useEventCallback"]
       36 GETTABLEKS                       R9 R0 K5 ["onDeleteStates"]
       38 CALL                             R8 1 1
       39 GETUPVAL                         R9 3
       40 GETTABLEKS                       R9 R9 K2 ["useEventCallback"]
       42 NEWCLOSURE                       R10 P1
       43 CAPTURE                          VAL R0
       44 CALL                             R9 1 1
       45 GETUPVAL                         R10 3
       46 GETTABLEKS                       R10 R10 K2 ["useEventCallback"]
       48 NEWCLOSURE                       R11 P2
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R5
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R6
       53 CALL                             R10 1 1
       54 GETUPVAL                         R11 3
       55 GETTABLEKS                       R11 R11 K2 ["useEventCallback"]
       57 NEWCLOSURE                       R12 P3
       58 CAPTURE                          VAL R6
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          VAL R0
       61 CALL                             R11 1 1
       62 GETUPVAL                         R12 3
       63 GETTABLEKS                       R12 R12 K2 ["useEventCallback"]
       65 NEWCLOSURE                       R13 P4
       66 CAPTURE                          VAL R6
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          VAL R0
       69 CALL                             R12 1 1
       70 GETUPVAL                         R13 1
       71 GETTABLEKS                       R13 R13 K6 ["useEffect"]
       73 NEWCLOSURE                       R14 P5
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R5
       76 CAPTURE                          UPVAL U5
       77 CAPTURE                          UPVAL U6
       78 CAPTURE                          UPVAL U4
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R3
       83 NEWTABLE                         R15 0 6
       85 GETTABLEKS                       R16 R0 K7 ["data"]
       87 GETTABLEKS                       R17 R0 K8 ["parameters"]
       89 MOVE                             R18 R5
       90 MOVE                             R19 R1
       91 MOVE                             R20 R2
       92 MOVE                             R21 R3
       93 SETLIST                          R15 R16 6 [1]
       95 CALL                             R13 2 0
       96 GETUPVAL                         R13 1
       97 GETTABLEKS                       R13 R13 K9 ["useMemo"]
       99 NEWCLOSURE                       R14 P6
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R3
      110 CAPTURE                          UPVAL U7
      111 CAPTURE                          UPVAL U3
      112 NEWTABLE                         R15 0 10
      114 MOVE                             R16 R1
      115 MOVE                             R17 R2
      116 MOVE                             R18 R3
      117 MOVE                             R19 R5
      118 MOVE                             R20 R7
      119 MOVE                             R21 R9
      120 MOVE                             R22 R8
      121 MOVE                             R23 R11
      122 MOVE                             R24 R12
      123 MOVE                             R25 R10
      124 SETLIST                          R15 R16 10 [1]
      126 CALL                             R13 2 1
      127 GETUPVAL                         R14 1
      128 GETTABLEKS                       R14 R14 K10 ["createElement"]
      130 GETUPVAL                         R15 8
      131 GETTABLEKS                       R15 R15 K11 ["Provider"]
      133 DUPTABLE                         R16 K13 [{"value"}]
      134 SETTABLEKS                       R13 R16 K12 ["value"]
      136 GETTABLEKS                       R17 R0 K14 ["children"]
      138 CALL                             R14 3 -1
      139 RETURN                           R14 -1

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
       37 GETTABLEKS                       R6 R0 K11 ["Data"]
       39 GETTABLEKS                       R6 R6 K12 ["StateMachineData"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K14 ["StateMachineNodeLibrary"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K11 ["Data"]
       53 GETTABLEKS                       R8 R8 K15 ["StateMachineTypes"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R1 K16 ["GraphContext"]
       58 GETTABLEKS                       R9 R1 K17 ["useSignalDispatcher"]
       60 GETIMPORT                        R10 K20 [Vector2.new]
       62 LOADN                            R11 120
       63 LOADN                            R12 40
       64 CALL                             R10 2 1
       65 DUPCLOSURE                       R11 K21 [PROTO_0]
       66 DUPCLOSURE                       R12 K22 [PROTO_32]
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R8
       76 RETURN                           R12 1
