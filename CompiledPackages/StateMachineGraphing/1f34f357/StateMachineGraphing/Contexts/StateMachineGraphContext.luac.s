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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onCreateState"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onDeleteStates"]
        3 NEWTABLE                         R2 0 1
        5 MOVE                             R3 R0
        6 SETLIST                          R2 R3 1 [1]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["renameState"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createTransition"]
        3 MOVE                             R5 R2
        4 MOVE                             R6 R0
        5 CALL                             R4 2 0
        6 RETURN                           R0 0

PROTO_7:
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
       73 GETTABLEKS                       R12 R9 K7 ["zIndex"]
       75 SETTABLEKS                       R12 R11 K7 ["zIndex"]
       77 GETTABLEKS                       R12 R9 K10 ["isSelected"]
       79 SETTABLEKS                       R12 R11 K10 ["isSelected"]
       81 SETTABLE                         R11 R1 R10
       82 GETTABLEKS                       R10 R8 K1 ["id"]
       84 DUPTABLE                         R11 K24 [{"Name", "isStart", "isAny", "canStartTransition"}]
       85 GETTABLEKS                       R12 R8 K2 ["name"]
       87 SETTABLEKS                       R12 R11 K20 ["Name"]
       89 GETTABLEKS                       R12 R8 K21 ["isStart"]
       91 SETTABLEKS                       R12 R11 K21 ["isStart"]
       93 GETTABLEKS                       R12 R8 K22 ["isAny"]
       95 SETTABLEKS                       R12 R11 K22 ["isAny"]
       97 GETTABLEKS                       R13 R8 K21 ["isStart"]
       99 JUMPIFNOT                        R13 ; [+7]
      100 GETUPVAL                         R13 4
      101 GETTABLEKS                       R13 R13 K25 ["hasOutgoingTransition"]
      103 GETUPVAL                         R14 0
      104 GETTABLEKS                       R15 R8 K1 ["id"]
      106 CALL                             R13 2 1
      107 NOT                              R12 R13
      108 SETTABLEKS                       R12 R11 K23 ["canStartTransition"]
      110 SETTABLE                         R11 R2 R10
      111 FORGLOOP                         R4 2 ; [-98]
      113 GETUPVAL                         R4 5
      114 GETTABLEKS                       R4 R4 K26 ["current"]
      116 LOADNIL                          R5
      117 LOADNIL                          R6
      118 FORGPREP                         R4
      119 GETTABLE                         R9 R3 R7
      120 JUMPIF                           R9 ; [+5]
      121 GETUPVAL                         R9 5
      122 GETTABLEKS                       R9 R9 K26 ["current"]
      124 LOADNIL                          R10
      125 SETTABLE                         R10 R9 R7
      126 FORGLOOP                         R4 1 ; [-8]
      128 GETUPVAL                         R4 6
      129 GETTABLEKS                       R4 R4 K27 ["parameters"]
      131 JUMPIF                           R4 ; [+2]
      132 NEWTABLE                         R4 0 0
      134 MOVE                             R5 R4
      135 LOADNIL                          R6
      136 LOADNIL                          R7
      137 FORGPREP                         R5
      138 GETTABLEKS                       R11 R9 K1 ["id"]
      140 GETTABLE                         R10 R0 R11
      141 JUMPIF                           R10 ; [+14]
      142 GETTABLEKS                       R10 R9 K1 ["id"]
      144 GETUPVAL                         R11 2
      145 GETTABLEKS                       R12 R9 K1 ["id"]
      147 GETTABLEKS                       R13 R9 K2 ["name"]
      149 GETTABLEKS                       R14 R9 K28 ["nodeType"]
      151 GETTABLEKS                       R15 R9 K29 ["className"]
      153 LOADB                            R16 1
      154 CALL                             R11 5 1
      155 SETTABLE                         R11 R0 R10
      156 FORGLOOP                         R5 2 ; [-19]
      158 GETUPVAL                         R5 7
      159 GETTABLEKS                       R5 R5 K30 ["setMap"]
      161 MOVE                             R6 R0
      162 CALL                             R5 1 0
      163 GETUPVAL                         R5 8
      164 GETTABLEKS                       R5 R5 K30 ["setMap"]
      166 MOVE                             R6 R1
      167 CALL                             R5 1 0
      168 GETUPVAL                         R5 9
      169 GETTABLEKS                       R5 R5 K30 ["setMap"]
      171 MOVE                             R6 R2
      172 CALL                             R5 1 0
      173 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R2 R1 K0 ["size"]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R0 K0 ["size"]
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R1 K0 ["isSelected"]
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R0 K0 ["isSelected"]
        6 RETURN                           R0 0

PROTO_12:
        0 LOADB                            R2 1
        1 SETTABLEKS                       R2 R1 K0 ["isSelected"]
        3 LOADB                            R2 1
        4 SETTABLEKS                       R2 R0 K0 ["isSelected"]
        6 RETURN                           R0 0

PROTO_13:
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
       12 DUPCLOSURE                       R9 K2 [PROTO_11]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-8]
       16 MOVE                             R2 R0
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 GETUPVAL                         R7 1
       21 MOVE                             R8 R5
       22 DUPCLOSURE                       R9 K3 [PROTO_12]
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 1 ; [-5]
       26 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADN                            R1 1
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
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["createParameter"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["createExistingParameterAsync"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 LOADNIL                          R1
        9 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["createConnectedParameterAsync"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 LOADNIL                          R1
        9 RETURN                           R1 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["selectAllParameterNodesWithName"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["removeParameter"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+7]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["renameParameter"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 MOVE                             R6 R2
        8 CALL                             R3 3 0
        9 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+7]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["setParameterNodeType"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 MOVE                             R6 R2
        8 CALL                             R3 3 0
        9 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["parameterGraphContext"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 DUPTABLE                         R2 K33 [{["isReadonly"] = False, ["nodePayloadDispatcher"], ["nodeRenderInfoDispatcher"], ["createNode"], ["setNodePositions"], ["setNodeSize"], ["selectNodes"], ["renameNode"], ["removeNodes"], ["deleteNodeInstance"], ["setNodeConnection"], ["observeNodePropsById"], ["observeNodeStateById"], ["observeFadeByNodeId"], ["observeNodeInputBindings"], ["setCollapsed"], ["setZIndex"], ["setNodeProperty"], ["setInputPinNodeProperty"], ["deleteNodeInput"], ["renameNodeInput"], ["removeNodeInputConnectionAsync"], ["removeNodeOutputConnectionAsync"], ["reorderPins"], ["createParameter"], ["createExistingParameterAsync"], ["createConnectedParameterAsync"], ["selectAllParameterNodesWithName"], ["removeParameter"], ["renameParameter"], ["setParameterNodeType"]}]
        7 GETUPVAL                         R3 3
        8 SETTABLEKS                       R3 R2 K3 ["nodePayloadDispatcher"]
       10 GETUPVAL                         R3 1
       11 SETTABLEKS                       R3 R2 K4 ["nodeRenderInfoDispatcher"]
       13 GETUPVAL                         R3 4
       14 SETTABLEKS                       R3 R2 K5 ["createNode"]
       16 GETUPVAL                         R3 5
       17 SETTABLEKS                       R3 R2 K6 ["setNodePositions"]
       19 NEWCLOSURE                       R3 P1
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R3 R2 K7 ["setNodeSize"]
       23 NEWCLOSURE                       R3 P2
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R3 R2 K8 ["selectNodes"]
       28 GETUPVAL                         R3 6
       29 SETTABLEKS                       R3 R2 K9 ["renameNode"]
       31 GETUPVAL                         R3 7
       32 SETTABLEKS                       R3 R2 K10 ["removeNodes"]
       34 GETUPVAL                         R3 8
       35 SETTABLEKS                       R3 R2 K11 ["deleteNodeInstance"]
       37 GETUPVAL                         R3 9
       38 SETTABLEKS                       R3 R2 K12 ["setNodeConnection"]
       40 GETUPVAL                         R3 10
       41 GETTABLEKS                       R3 R3 K34 ["observe"]
       43 SETTABLEKS                       R3 R2 K13 ["observeNodePropsById"]
       45 DUPCLOSURE                       R3 K35 [PROTO_14]
       46 CAPTURE                          UPVAL U11
       47 SETTABLEKS                       R3 R2 K14 ["observeNodeStateById"]
       49 DUPCLOSURE                       R3 K36 [PROTO_15]
       50 CAPTURE                          UPVAL U11
       51 SETTABLEKS                       R3 R2 K15 ["observeFadeByNodeId"]
       53 DUPCLOSURE                       R3 K37 [PROTO_16]
       54 CAPTURE                          UPVAL U11
       55 SETTABLEKS                       R3 R2 K16 ["observeNodeInputBindings"]
       57 DUPCLOSURE                       R3 K38 [PROTO_17]
       58 SETTABLEKS                       R3 R2 K17 ["setCollapsed"]
       60 NEWCLOSURE                       R3 P7
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R3 R2 K18 ["setZIndex"]
       64 DUPCLOSURE                       R3 K39 [PROTO_20]
       65 SETTABLEKS                       R3 R2 K19 ["setNodeProperty"]
       67 DUPCLOSURE                       R3 K40 [PROTO_21]
       68 SETTABLEKS                       R3 R2 K20 ["setInputPinNodeProperty"]
       70 DUPCLOSURE                       R3 K41 [PROTO_22]
       71 SETTABLEKS                       R3 R2 K21 ["deleteNodeInput"]
       73 DUPCLOSURE                       R3 K42 [PROTO_23]
       74 SETTABLEKS                       R3 R2 K22 ["renameNodeInput"]
       76 DUPCLOSURE                       R3 K43 [PROTO_24]
       77 SETTABLEKS                       R3 R2 K23 ["removeNodeInputConnectionAsync"]
       79 DUPCLOSURE                       R3 K44 [PROTO_25]
       80 SETTABLEKS                       R3 R2 K24 ["removeNodeOutputConnectionAsync"]
       82 GETUPVAL                         R3 12
       83 GETTABLEKS                       R3 R3 K45 ["createUnimplemented"]
       85 LOADK                            R4 K25 ["reorderPins"]
       86 CALL                             R3 1 1
       87 SETTABLEKS                       R3 R2 K25 ["reorderPins"]
       89 NEWCLOSURE                       R3 P14
       90 CAPTURE                          VAL R0
       91 SETTABLEKS                       R3 R2 K26 ["createParameter"]
       93 NEWCLOSURE                       R3 P15
       94 CAPTURE                          VAL R0
       95 SETTABLEKS                       R3 R2 K27 ["createExistingParameterAsync"]
       97 NEWCLOSURE                       R3 P16
       98 CAPTURE                          VAL R0
       99 SETTABLEKS                       R3 R2 K28 ["createConnectedParameterAsync"]
      101 NEWCLOSURE                       R3 P17
      102 CAPTURE                          VAL R0
      103 SETTABLEKS                       R3 R2 K29 ["selectAllParameterNodesWithName"]
      105 NEWCLOSURE                       R3 P18
      106 CAPTURE                          VAL R0
      107 SETTABLEKS                       R3 R2 K30 ["removeParameter"]
      109 NEWCLOSURE                       R3 P19
      110 CAPTURE                          VAL R0
      111 SETTABLEKS                       R3 R2 K31 ["renameParameter"]
      113 NEWCLOSURE                       R3 P20
      114 CAPTURE                          VAL R0
      115 SETTABLEKS                       R3 R2 K32 ["setParameterNodeType"]
      117 RETURN                           R2 1

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
       37 NEWCLOSURE                       R9 P1
       38 CAPTURE                          VAL R0
       39 CALL                             R8 1 1
       40 GETUPVAL                         R9 5
       41 GETTABLEKS                       R9 R9 K6 ["useEventCallback"]
       43 GETTABLEKS                       R10 R0 K7 ["onDeleteStates"]
       45 CALL                             R9 1 1
       46 GETUPVAL                         R10 5
       47 GETTABLEKS                       R10 R10 K6 ["useEventCallback"]
       49 NEWCLOSURE                       R11 P2
       50 CAPTURE                          VAL R0
       51 CALL                             R10 1 1
       52 GETUPVAL                         R11 5
       53 GETTABLEKS                       R11 R11 K6 ["useEventCallback"]
       55 NEWCLOSURE                       R12 P3
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R6
       58 CALL                             R11 1 1
       59 GETUPVAL                         R12 5
       60 GETTABLEKS                       R12 R12 K6 ["useEventCallback"]
       62 NEWCLOSURE                       R13 P4
       63 CAPTURE                          VAL R6
       64 CALL                             R12 1 1
       65 GETUPVAL                         R13 5
       66 GETTABLEKS                       R13 R13 K6 ["useEventCallback"]
       68 NEWCLOSURE                       R14 P5
       69 CAPTURE                          VAL R6
       70 CALL                             R13 1 1
       71 GETUPVAL                         R14 1
       72 GETTABLEKS                       R14 R14 K8 ["useEffect"]
       74 NEWCLOSURE                       R15 P6
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R5
       77 CAPTURE                          UPVAL U6
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          UPVAL U8
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R3
       85 NEWTABLE                         R16 0 6
       87 MOVE                             R17 R7
       88 GETTABLEKS                       R18 R0 K9 ["parameters"]
       90 MOVE                             R19 R5
       91 MOVE                             R20 R1
       92 MOVE                             R21 R2
       93 MOVE                             R22 R3
       94 SETLIST                          R16 R17 6 [1]
       96 CALL                             R14 2 0
       97 GETUPVAL                         R14 1
       98 GETTABLEKS                       R14 R14 K10 ["useMemo"]
      100 NEWCLOSURE                       R15 P7
      101 CAPTURE                          VAL R0
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
      112 CAPTURE                          UPVAL U9
      113 CAPTURE                          UPVAL U5
      114 NEWTABLE                         R16 0 11
      116 MOVE                             R17 R1
      117 MOVE                             R18 R2
      118 MOVE                             R19 R3
      119 MOVE                             R20 R5
      120 MOVE                             R21 R8
      121 MOVE                             R22 R10
      122 MOVE                             R23 R9
      123 MOVE                             R24 R12
      124 MOVE                             R25 R13
      125 MOVE                             R26 R11
      126 GETTABLEKS                       R27 R0 K11 ["parameterGraphContext"]
      128 SETLIST                          R16 R17 11 [1]
      130 CALL                             R14 2 1
      131 GETUPVAL                         R15 1
      132 GETTABLEKS                       R15 R15 K12 ["createElement"]
      134 GETUPVAL                         R16 10
      135 GETTABLEKS                       R16 R16 K13 ["Provider"]
      137 DUPTABLE                         R17 K15 [{"value"}]
      138 SETTABLEKS                       R14 R17 K14 ["value"]
      140 GETTABLEKS                       R18 R0 K16 ["children"]
      142 CALL                             R15 3 -1
      143 RETURN                           R15 -1

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
       74 GETIMPORT                        R12 K22 [Vector2.new]
       76 LOADN                            R13 120
       77 LOADN                            R14 40
       78 CALL                             R12 2 1
       79 DUPCLOSURE                       R13 K23 [PROTO_0]
       80 DUPCLOSURE                       R14 K24 [PROTO_34]
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R13
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R10
       92 RETURN                           R14 1
