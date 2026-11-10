PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnChanged"]
        3 JUMPIFEQKNIL                     R2 ; [+24]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["OnChanged"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["join"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K2 ["Input"]
       14 GETTABLEKS                       R4 R4 K3 ["Value"]
       16 NEWTABLE                         R5 1 0
       18 JUMPIFEQKNIL                     R1 ; [+3]
       20 MOVE                             R6 R1
       21 JUMP                             ; [+3]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K4 ["None"]
       25 SETTABLE                         R6 R5 R0
       26 CALL                             R3 2 -1
       27 CALL                             R2 -1 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Input"]
        3 GETTABLEKS                       R0 R0 K1 ["Value"]
        5 GETTABLEKS                       R0 R0 K2 ["Transition"]
        7 JUMPIFNOT                        R0 ; [+16]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["Input"]
       11 GETTABLEKS                       R1 R1 K1 ["Value"]
       13 GETTABLEKS                       R1 R1 K2 ["Transition"]
       15 GETTABLEKS                       R1 R1 K3 ["WaitFor"]
       17 GETIMPORT                        R2 K7 [Enum.AnimationNodeWaitFor.Trigger]
       19 JUMPIFEQ                         R1 R2 ; [+2]
       21 LOADB                            R0 0 +1
       22 LOADB                            R0 1
       23 RETURN                           R0 1
       24 GETUPVAL                         R0 0
       25 GETTABLEKS                       R0 R0 K8 ["InputBuilderProps"]
       27 GETTABLEKS                       R0 R0 K9 ["DefaultTransition"]
       29 JUMPIFNOT                        R0 ; [+14]
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R1 R1 K8 ["InputBuilderProps"]
       33 GETTABLEKS                       R1 R1 K9 ["DefaultTransition"]
       35 GETTABLEKS                       R1 R1 K3 ["WaitFor"]
       37 GETIMPORT                        R2 K7 [Enum.AnimationNodeWaitFor.Trigger]
       39 JUMPIFEQ                         R1 R2 ; [+2]
       41 LOADB                            R0 0 +1
       42 LOADB                            R0 1
       43 RETURN                           R0 1
       44 LOADB                            R0 0
       45 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Input"]
        3 GETTABLEKS                       R0 R0 K1 ["Value"]
        5 GETTABLEKS                       R0 R0 K2 ["Transition"]
        7 JUMPIFEQKNIL                     R0 ; [+15]
        9 GETUPVAL                         R1 1
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+11]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K3 ["join"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K4 ["InputBuilderProps"]
       18 GETTABLEKS                       R2 R2 K5 ["DefaultTransition"]
       20 MOVE                             R3 R0
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1
       23 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CompositorNodeUtils"]
        3 GETTABLEKS                       R1 R1 K1 ["createPropertyHelpers"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useCallback"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 NEWTABLE                         R4 0 2
       15 GETTABLEKS                       R5 R0 K3 ["OnChanged"]
       17 GETTABLEKS                       R6 R0 K4 ["Input"]
       19 SETLIST                          R4 R5 2 [1]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K5 ["useMemo"]
       25 NEWCLOSURE                       R4 P1
       26 CAPTURE                          VAL R0
       27 NEWTABLE                         R5 0 2
       29 GETTABLEKS                       R6 R0 K4 ["Input"]
       31 GETTABLEKS                       R6 R6 K6 ["Value"]
       33 GETTABLEKS                       R6 R6 K7 ["Transition"]
       35 GETTABLEKS                       R7 R0 K8 ["InputBuilderProps"]
       37 GETTABLEKS                       R7 R7 K9 ["DefaultTransition"]
       39 SETLIST                          R5 R6 2 [1]
       41 CALL                             R3 2 1
       42 GETUPVAL                         R4 1
       43 GETTABLEKS                       R4 R4 K5 ["useMemo"]
       45 NEWCLOSURE                       R5 P2
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U2
       49 NEWTABLE                         R6 0 2
       51 GETTABLEKS                       R7 R0 K4 ["Input"]
       53 GETTABLEKS                       R7 R7 K6 ["Value"]
       55 GETTABLEKS                       R7 R7 K7 ["Transition"]
       57 GETTABLEKS                       R8 R0 K8 ["InputBuilderProps"]
       59 GETTABLEKS                       R8 R8 K9 ["DefaultTransition"]
       61 SETLIST                          R6 R7 2 [1]
       63 CALL                             R4 2 1
       64 GETUPVAL                         R5 1
       65 GETTABLEKS                       R5 R5 K10 ["createElement"]
       67 GETUPVAL                         R6 4
       68 GETTABLEKS                       R6 R6 K11 ["View"]
       70 DUPTABLE                         R7 K15 [{["tag"] = "col gap-small size-full-700 auto-y", ["LayoutOrder"]}]
       71 GETTABLEKS                       R8 R0 K14 ["LayoutOrder"]
       73 SETTABLEKS                       R8 R7 K14 ["LayoutOrder"]
       75 DUPTABLE                         R8 K18 [{"Transition", "Trigger", "PinChildren"}]
       76 GETTABLEKS                       R9 R1 K19 ["nextProperty"]
       78 DUPTABLE                         R10 K26 [{["Name"] = "Transition", ["Label"], ["Weight"], ["Type"] = "Transition", ["Value"], ["DefaultValue"], ["OnChanged"], ["ExtraProps"]}]
       79 GETTABLEKS                       R11 R0 K4 ["Input"]
       81 GETTABLEKS                       R11 R11 K27 ["ConnectedNodeName"]
       83 SETTABLEKS                       R11 R10 K21 ["Label"]
       85 GETTABLEKS                       R11 R0 K4 ["Input"]
       87 GETTABLEKS                       R11 R11 K22 ["Weight"]
       89 SETTABLEKS                       R11 R10 K22 ["Weight"]
       91 SETTABLEKS                       R4 R10 K6 ["Value"]
       93 GETTABLEKS                       R11 R0 K8 ["InputBuilderProps"]
       95 GETTABLEKS                       R11 R11 K9 ["DefaultTransition"]
       97 SETTABLEKS                       R11 R10 K24 ["DefaultValue"]
       99 SETTABLEKS                       R2 R10 K3 ["OnChanged"]
      101 DUPTABLE                         R11 K34 [{"TransitionBuilder", "IsHovered", "OnDelete", "OnRename", "InputName", "HasDuplicateName"}]
      102 GETUPVAL                         R12 5
      103 SETTABLEKS                       R12 R11 K28 ["TransitionBuilder"]
      105 GETTABLEKS                       R12 R0 K29 ["IsHovered"]
      107 SETTABLEKS                       R12 R11 K29 ["IsHovered"]
      109 GETTABLEKS                       R12 R0 K30 ["OnDelete"]
      111 SETTABLEKS                       R12 R11 K30 ["OnDelete"]
      113 GETTABLEKS                       R12 R0 K31 ["OnRename"]
      115 SETTABLEKS                       R12 R11 K31 ["OnRename"]
      117 GETTABLEKS                       R12 R0 K4 ["Input"]
      119 GETTABLEKS                       R12 R12 K20 ["Name"]
      121 SETTABLEKS                       R12 R11 K32 ["InputName"]
      123 GETTABLEKS                       R12 R0 K33 ["HasDuplicateName"]
      125 SETTABLEKS                       R12 R11 K33 ["HasDuplicateName"]
      127 SETTABLEKS                       R11 R10 K25 ["ExtraProps"]
      129 CALL                             R9 1 1
      130 SETTABLEKS                       R9 R8 K7 ["Transition"]
      132 JUMPIFNOT                        R3 ; [+20]
      133 GETTABLEKS                       R9 R1 K19 ["nextProperty"]
      135 DUPTABLE                         R10 K38 [{["Name"] = "WaitForTrigger", ["Label"] = "Trigger", ["Type"] = "Boolean", ["Value"], ["OnChanged"], ["PinDynamicIndex"]}]
      136 GETTABLEKS                       R12 R0 K4 ["Input"]
      138 GETTABLEKS                       R12 R12 K6 ["Value"]
      140 GETTABLEKS                       R12 R12 K35 ["WaitForTrigger"]
      142 ORK                              R11 R12 K39 []
      143 SETTABLEKS                       R11 R10 K6 ["Value"]
      145 SETTABLEKS                       R2 R10 K3 ["OnChanged"]
      147 GETTABLEKS                       R11 R0 K40 ["InputIndex"]
      149 SETTABLEKS                       R11 R10 K37 ["PinDynamicIndex"]
      151 CALL                             R9 1 1
      152 JUMP                             ; [+1]
      153 LOADNIL                          R9
      154 SETTABLEKS                       R9 R8 K16 ["Trigger"]
      156 GETUPVAL                         R9 1
      157 GETTABLEKS                       R9 R9 K10 ["createElement"]
      159 LOADK                            R10 K41 ["Folder"]
      160 NEWTABLE                         R11 0 0
      162 DUPTABLE                         R12 K43 [{"RenderedPinInput"}]
      163 GETUPVAL                         R13 1
      164 GETTABLEKS                       R13 R13 K10 ["createElement"]
      166 GETUPVAL                         R14 0
      167 GETTABLEKS                       R14 R14 K44 ["RenderedCompositorPin"]
      169 DUPTABLE                         R15 K54 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinInputId"], ["pinValue"], ["pinDynamicIndex"], ["selected"]}]
      170 GETIMPORT                        R16 K57 [UDim2.fromOffset]
      172 LOADN                            R17 -13
      173 LOADN                            R18 14
      174 CALL                             R16 2 1
      175 SETTABLEKS                       R16 R15 K45 ["Position"]
      177 GETUPVAL                         R16 0
      178 GETTABLEKS                       R16 R16 K58 ["DEFAULT_PIN_DATA_TYPE"]
      180 SETTABLEKS                       R16 R15 K47 ["pinDataType"]
      182 GETTABLEKS                       R16 R0 K59 ["NodeId"]
      184 SETTABLEKS                       R16 R15 K48 ["pinNodeId"]
      186 GETTABLEKS                       R16 R0 K4 ["Input"]
      188 GETTABLEKS                       R16 R16 K20 ["Name"]
      190 SETTABLEKS                       R16 R15 K49 ["pinName"]
      192 GETTABLEKS                       R16 R0 K4 ["Input"]
      194 GETTABLEKS                       R16 R16 K60 ["InputId"]
      196 SETTABLEKS                       R16 R15 K50 ["pinInputId"]
      198 GETTABLEKS                       R16 R0 K4 ["Input"]
      200 GETTABLEKS                       R16 R16 K6 ["Value"]
      202 SETTABLEKS                       R16 R15 K51 ["pinValue"]
      204 GETTABLEKS                       R16 R0 K40 ["InputIndex"]
      206 SETTABLEKS                       R16 R15 K52 ["pinDynamicIndex"]
      208 GETTABLEKS                       R16 R0 K61 ["IsSelected"]
      210 SETTABLEKS                       R16 R15 K53 ["selected"]
      212 CALL                             R13 2 1
      213 SETTABLEKS                       R13 R12 K42 ["RenderedPinInput"]
      215 CALL                             R9 3 1
      216 SETTABLEKS                       R9 R8 K17 ["PinChildren"]
      218 CALL                             R5 3 -1
      219 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["NodeView"]
       27 GETTABLEKS                       R4 R4 K11 ["CompositorNodeInput"]
       29 GETTABLEKS                       R4 R4 K12 ["InputPanelTypes"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Parent"]
       36 GETTABLEKS                       R5 R5 K13 ["NodeGraphing"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Parent"]
       43 GETTABLEKS                       R6 R6 K14 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Components"]
       50 GETTABLEKS                       R7 R7 K10 ["NodeView"]
       52 GETTABLEKS                       R7 R7 K15 ["CompositorNodeTransition"]
       54 GETTABLEKS                       R7 R7 K16 ["SequenceTransition"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K17 ["Flags"]
       61 GETTABLEKS                       R8 R8 K18 ["getEngineFeatureAnimGraphTransitionBeforeFinish"]
       63 CALL                             R7 1 1
       64 DUPCLOSURE                       R8 K19 [PROTO_3]
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R6
       71 RETURN                           R8 1
