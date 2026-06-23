PROTO_0:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 GETTABLEKS                       R4 R0 K2 ["value"]
        9 SETTABLEKS                       R4 R3 K2 ["value"]
       11 GETTABLEKS                       R4 R0 K4 ["children"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["GraphContextTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K7 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K7 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["Signals"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Hooks"]
       39 GETTABLEKS                       R6 R6 K12 ["useSignalDispatcher"]
       41 CALL                             R5 1 1
       42 DUPTABLE                         R6 K19 [{"get", "set", "observe", "setMap", "getMap", "observeMap"}]
       43 DUPCLOSURE                       R7 K20 [PROTO_0]
       44 SETTABLEKS                       R7 R6 K13 ["get"]
       46 GETTABLEKS                       R7 R3 K21 ["createUnimplemented"]
       48 LOADK                            R8 K14 ["set"]
       49 CALL                             R7 1 1
       50 SETTABLEKS                       R7 R6 K14 ["set"]
       52 DUPCLOSURE                       R7 K22 [PROTO_1]
       53 CAPTURE                          VAL R4
       54 SETTABLEKS                       R7 R6 K15 ["observe"]
       56 GETTABLEKS                       R7 R3 K21 ["createUnimplemented"]
       58 LOADK                            R8 K16 ["setMap"]
       59 CALL                             R7 1 1
       60 SETTABLEKS                       R7 R6 K16 ["setMap"]
       62 DUPCLOSURE                       R7 K23 [PROTO_2]
       63 SETTABLEKS                       R7 R6 K17 ["getMap"]
       65 GETTABLEKS                       R7 R4 K24 ["createSignal"]
       67 NEWTABLE                         R8 0 0
       69 CALL                             R7 1 1
       70 SETTABLEKS                       R7 R6 K18 ["observeMap"]
       72 DUPTABLE                         R7 K51 [{"nodePayloadDispatcher", "nodeRenderInfoDispatcher", "reorderPins", "createNode", "createParameter", "createConnectedParameterAsync", "createExistingParameterAsync", "selectAllParameterNodesWithName", "selectNodes", "setNodePositions", "setNodeSize", "deleteNodeInput", "removeNodeInputConnectionAsync", "removeNodeOutputConnectionAsync", "removeParameter", "renameNode", "renameParameter", "deleteNodeInstance", "removeNodes", "setNodeConnection", "setCollapsed", "setNodeProperty", "setInputPinNodeProperty", "setParameterNodeType", "observeNodePropsById", "observeNodeStateById"}]
       73 SETTABLEKS                       R6 R7 K25 ["nodePayloadDispatcher"]
       75 SETTABLEKS                       R6 R7 K26 ["nodeRenderInfoDispatcher"]
       77 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
       79 LOADK                            R9 K27 ["reorderPins"]
       80 CALL                             R8 1 1
       81 SETTABLEKS                       R8 R7 K27 ["reorderPins"]
       83 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
       85 LOADK                            R9 K28 ["createNode"]
       86 CALL                             R8 1 1
       87 SETTABLEKS                       R8 R7 K28 ["createNode"]
       89 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
       91 LOADK                            R9 K29 ["createParameter"]
       92 CALL                             R8 1 1
       93 SETTABLEKS                       R8 R7 K29 ["createParameter"]
       95 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
       97 LOADK                            R9 K30 ["createConnectedParameterAsync"]
       98 CALL                             R8 1 1
       99 SETTABLEKS                       R8 R7 K30 ["createConnectedParameterAsync"]
      101 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
      103 LOADK                            R9 K31 ["createExistingParameterAsync"]
      104 CALL                             R8 1 1
      105 SETTABLEKS                       R8 R7 K31 ["createExistingParameterAsync"]
      107 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
      109 LOADK                            R9 K32 ["selectAllParameterNodesWithName"]
      110 CALL                             R8 1 1
      111 SETTABLEKS                       R8 R7 K32 ["selectAllParameterNodesWithName"]
      113 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
      115 LOADK                            R9 K33 ["selectNodes"]
      116 CALL                             R8 1 1
      117 SETTABLEKS                       R8 R7 K33 ["selectNodes"]
      119 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
      121 LOADK                            R9 K34 ["setNodePositions"]
      122 CALL                             R8 1 1
      123 SETTABLEKS                       R8 R7 K34 ["setNodePositions"]
      125 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
      127 LOADK                            R9 K35 ["setNodeSize"]
      128 CALL                             R8 1 1
      129 SETTABLEKS                       R8 R7 K35 ["setNodeSize"]
      131 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
      133 LOADK                            R9 K36 ["deleteNodeInput"]
      134 CALL                             R8 1 1
      135 SETTABLEKS                       R8 R7 K36 ["deleteNodeInput"]
      137 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
      139 LOADK                            R9 K37 ["removeNodeInputConnectionAsync"]
      140 CALL                             R8 1 1
      141 SETTABLEKS                       R8 R7 K37 ["removeNodeInputConnectionAsync"]
      143 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
      145 LOADK                            R9 K38 ["removeNodeOutputConnectionAsync"]
      146 CALL                             R8 1 1
      147 SETTABLEKS                       R8 R7 K38 ["removeNodeOutputConnectionAsync"]
      149 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
      151 LOADK                            R9 K39 ["removeParameter"]
      152 CALL                             R8 1 1
      153 SETTABLEKS                       R8 R7 K39 ["removeParameter"]
      155 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
      157 LOADK                            R9 K40 ["renameNode"]
      158 CALL                             R8 1 1
      159 SETTABLEKS                       R8 R7 K40 ["renameNode"]
      161 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
      163 LOADK                            R9 K41 ["renameParameter"]
      164 CALL                             R8 1 1
      165 SETTABLEKS                       R8 R7 K41 ["renameParameter"]
      167 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
      169 LOADK                            R9 K42 ["deleteNodeInstance"]
      170 CALL                             R8 1 1
      171 SETTABLEKS                       R8 R7 K42 ["deleteNodeInstance"]
      173 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
      175 LOADK                            R9 K43 ["removeNodes"]
      176 CALL                             R8 1 1
      177 SETTABLEKS                       R8 R7 K43 ["removeNodes"]
      179 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
      181 LOADK                            R9 K44 ["setNodeConnection"]
      182 CALL                             R8 1 1
      183 SETTABLEKS                       R8 R7 K44 ["setNodeConnection"]
      185 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
      187 LOADK                            R9 K45 ["setCollapsed"]
      188 CALL                             R8 1 1
      189 SETTABLEKS                       R8 R7 K45 ["setCollapsed"]
      191 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
      193 LOADK                            R9 K46 ["setNodeProperty"]
      194 CALL                             R8 1 1
      195 SETTABLEKS                       R8 R7 K46 ["setNodeProperty"]
      197 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
      199 LOADK                            R9 K47 ["setInputPinNodeProperty"]
      200 CALL                             R8 1 1
      201 SETTABLEKS                       R8 R7 K47 ["setInputPinNodeProperty"]
      203 GETTABLEKS                       R8 R3 K21 ["createUnimplemented"]
      205 LOADK                            R9 K48 ["setParameterNodeType"]
      206 CALL                             R8 1 1
      207 SETTABLEKS                       R8 R7 K48 ["setParameterNodeType"]
      209 DUPCLOSURE                       R8 K52 [PROTO_3]
      210 CAPTURE                          VAL R4
      211 SETTABLEKS                       R8 R7 K49 ["observeNodePropsById"]
      213 DUPCLOSURE                       R8 K53 [PROTO_4]
      214 CAPTURE                          VAL R4
      215 SETTABLEKS                       R8 R7 K50 ["observeNodeStateById"]
      217 GETTABLEKS                       R8 R2 K54 ["createContext"]
      219 MOVE                             R9 R7
      220 CALL                             R8 1 1
      221 DUPCLOSURE                       R9 K55 [PROTO_5]
      222 CAPTURE                          VAL R2
      223 CAPTURE                          VAL R8
      224 DUPTABLE                         R10 K58 [{"Context", "Provider"}]
      225 SETTABLEKS                       R8 R10 K56 ["Context"]
      227 SETTABLEKS                       R9 R10 K57 ["Provider"]
      229 RETURN                           R10 1
