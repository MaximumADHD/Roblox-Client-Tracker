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
       15 GETTABLEKS                       R1 R1 K3 ["Interruptible"]
       17 GETIMPORT                        R2 K7 [Enum.AnimationNodeInterruptible.Trigger]
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
       35 GETTABLEKS                       R1 R1 K3 ["Interruptible"]
       37 GETIMPORT                        R2 K7 [Enum.AnimationNodeInterruptible.Trigger]
       39 JUMPIFEQ                         R1 R2 ; [+2]
       41 LOADB                            R0 0 +1
       42 LOADB                            R0 1
       43 RETURN                           R0 1
       44 LOADB                            R0 0
       45 RETURN                           R0 1

PROTO_2:
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
       43 GETTABLEKS                       R4 R4 K10 ["createElement"]
       45 GETUPVAL                         R5 3
       46 GETTABLEKS                       R5 R5 K11 ["View"]
       48 DUPTABLE                         R6 K15 [{["tag"] = "col gap-small size-full-700 auto-y", ["LayoutOrder"]}]
       49 GETTABLEKS                       R7 R0 K14 ["LayoutOrder"]
       51 SETTABLEKS                       R7 R6 K14 ["LayoutOrder"]
       53 DUPTABLE                         R7 K19 [{"Transition", "Trigger", "InterruptibleTrigger", "PinChildren"}]
       54 GETTABLEKS                       R8 R1 K20 ["nextProperty"]
       56 DUPTABLE                         R9 K27 [{["Name"] = "Transition", ["Label"], ["Weight"], ["Type"] = "Transition", ["Value"], ["DefaultValue"], ["OnChanged"], ["ExtraProps"]}]
       57 GETUPVAL                         R11 4
       58 CALL                             R11 0 1
       59 JUMPIFNOT                        R11 ; [+5]
       60 GETTABLEKS                       R10 R0 K4 ["Input"]
       62 GETTABLEKS                       R10 R10 K28 ["ConnectedNodeName"]
       64 JUMP                             ; [+4]
       65 GETTABLEKS                       R10 R0 K4 ["Input"]
       67 GETTABLEKS                       R10 R10 K21 ["Name"]
       69 SETTABLEKS                       R10 R9 K22 ["Label"]
       71 GETTABLEKS                       R10 R0 K4 ["Input"]
       73 GETTABLEKS                       R10 R10 K23 ["Weight"]
       75 SETTABLEKS                       R10 R9 K23 ["Weight"]
       77 GETTABLEKS                       R11 R0 K4 ["Input"]
       79 GETTABLEKS                       R11 R11 K6 ["Value"]
       81 GETTABLEKS                       R11 R11 K7 ["Transition"]
       83 ORK                              R10 R11 K29 []
       84 SETTABLEKS                       R10 R9 K6 ["Value"]
       86 GETTABLEKS                       R10 R0 K8 ["InputBuilderProps"]
       88 GETTABLEKS                       R10 R10 K9 ["DefaultTransition"]
       90 SETTABLEKS                       R10 R9 K25 ["DefaultValue"]
       92 SETTABLEKS                       R2 R9 K3 ["OnChanged"]
       94 DUPTABLE                         R10 K34 [{"TransitionBuilder", "IsHovered", "OnDelete", "HasDuplicateName"}]
       95 GETUPVAL                         R11 5
       96 SETTABLEKS                       R11 R10 K30 ["TransitionBuilder"]
       98 GETTABLEKS                       R11 R0 K31 ["IsHovered"]
      100 SETTABLEKS                       R11 R10 K31 ["IsHovered"]
      102 GETUPVAL                         R12 6
      103 CALL                             R12 0 1
      104 JUMPIFNOT                        R12 ; [+3]
      105 GETTABLEKS                       R11 R0 K32 ["OnDelete"]
      107 JUMP                             ; [+1]
      108 LOADNIL                          R11
      109 SETTABLEKS                       R11 R10 K32 ["OnDelete"]
      111 GETTABLEKS                       R11 R0 K33 ["HasDuplicateName"]
      113 SETTABLEKS                       R11 R10 K33 ["HasDuplicateName"]
      115 SETTABLEKS                       R10 R9 K26 ["ExtraProps"]
      117 CALL                             R8 1 1
      118 SETTABLEKS                       R8 R7 K7 ["Transition"]
      120 GETTABLEKS                       R8 R1 K20 ["nextProperty"]
      122 DUPTABLE                         R9 K37 [{["Name"] = "Trigger", ["Label"] = "Trigger", ["Type"] = "Boolean", ["Value"], ["OnChanged"], ["PinDynamicIndex"]}]
      123 GETTABLEKS                       R11 R0 K4 ["Input"]
      125 GETTABLEKS                       R11 R11 K6 ["Value"]
      127 GETTABLEKS                       R11 R11 K16 ["Trigger"]
      129 ORK                              R10 R11 K29 []
      130 SETTABLEKS                       R10 R9 K6 ["Value"]
      132 SETTABLEKS                       R2 R9 K3 ["OnChanged"]
      134 GETUPVAL                         R11 7
      135 CALL                             R11 0 1
      136 JUMPIFNOT                        R11 ; [+3]
      137 GETTABLEKS                       R10 R0 K38 ["InputIndex"]
      139 JUMP                             ; [+1]
      140 LOADNIL                          R10
      141 SETTABLEKS                       R10 R9 K36 ["PinDynamicIndex"]
      143 CALL                             R8 1 1
      144 SETTABLEKS                       R8 R7 K16 ["Trigger"]
      146 JUMPIFNOT                        R3 ; [+16]
      147 GETTABLEKS                       R8 R1 K20 ["nextProperty"]
      149 DUPTABLE                         R9 K40 [{["Name"] = "InterruptibleTrigger", ["Label"] = "Interruptible Trigger", ["Type"] = "Boolean", ["Value"], ["OnChanged"]}]
      150 GETTABLEKS                       R11 R0 K4 ["Input"]
      152 GETTABLEKS                       R11 R11 K6 ["Value"]
      154 GETTABLEKS                       R11 R11 K17 ["InterruptibleTrigger"]
      156 ORK                              R10 R11 K29 []
      157 SETTABLEKS                       R10 R9 K6 ["Value"]
      159 SETTABLEKS                       R2 R9 K3 ["OnChanged"]
      161 CALL                             R8 1 1
      162 JUMP                             ; [+1]
      163 LOADNIL                          R8
      164 SETTABLEKS                       R8 R7 K17 ["InterruptibleTrigger"]
      166 GETUPVAL                         R8 1
      167 GETTABLEKS                       R8 R8 K10 ["createElement"]
      169 LOADK                            R9 K41 ["Folder"]
      170 NEWTABLE                         R10 0 0
      172 DUPTABLE                         R11 K43 [{"RenderedPinInput"}]
      173 GETUPVAL                         R12 1
      174 GETTABLEKS                       R12 R12 K10 ["createElement"]
      176 GETUPVAL                         R13 0
      177 GETTABLEKS                       R13 R13 K44 ["RenderedCompositorPin"]
      179 DUPTABLE                         R14 K53 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinValue"], ["pinDynamicIndex"], ["selected"]}]
      180 GETIMPORT                        R15 K56 [UDim2.fromOffset]
      182 LOADN                            R16 -1
      183 LOADN                            R17 14
      184 CALL                             R15 2 1
      185 SETTABLEKS                       R15 R14 K45 ["Position"]
      187 GETUPVAL                         R15 0
      188 GETTABLEKS                       R15 R15 K57 ["DEFAULT_PIN_DATA_TYPE"]
      190 SETTABLEKS                       R15 R14 K47 ["pinDataType"]
      192 GETTABLEKS                       R15 R0 K58 ["NodeId"]
      194 SETTABLEKS                       R15 R14 K48 ["pinNodeId"]
      196 GETTABLEKS                       R15 R0 K4 ["Input"]
      198 GETTABLEKS                       R15 R15 K21 ["Name"]
      200 SETTABLEKS                       R15 R14 K49 ["pinName"]
      202 GETTABLEKS                       R15 R0 K4 ["Input"]
      204 GETTABLEKS                       R15 R15 K6 ["Value"]
      206 SETTABLEKS                       R15 R14 K50 ["pinValue"]
      208 GETUPVAL                         R16 7
      209 CALL                             R16 0 1
      210 JUMPIFNOT                        R16 ; [+3]
      211 GETTABLEKS                       R15 R0 K38 ["InputIndex"]
      213 JUMP                             ; [+1]
      214 LOADNIL                          R15
      215 SETTABLEKS                       R15 R14 K51 ["pinDynamicIndex"]
      217 GETUPVAL                         R16 8
      218 CALL                             R16 0 1
      219 JUMPIFNOT                        R16 ; [+3]
      220 GETTABLEKS                       R15 R0 K59 ["IsSelected"]
      222 JUMP                             ; [+1]
      223 LOADNIL                          R15
      224 SETTABLEKS                       R15 R14 K52 ["selected"]
      226 CALL                             R12 2 1
      227 SETTABLEKS                       R12 R11 K42 ["RenderedPinInput"]
      229 CALL                             R8 3 1
      230 SETTABLEKS                       R8 R7 K18 ["PinChildren"]
      232 CALL                             R4 3 -1
      233 RETURN                           R4 -1

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
       41 GETTABLEKS                       R6 R0 K9 ["Components"]
       43 GETTABLEKS                       R6 R6 K10 ["NodeView"]
       45 GETTABLEKS                       R6 R6 K14 ["CompositorNodeTransition"]
       47 GETTABLEKS                       R6 R6 K15 ["PrioritySelectTransition"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Parent"]
       54 GETTABLEKS                       R7 R7 K16 ["React"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R4 K17 ["getFFlagAnimGraphUIDefaultAndDisconnectedInputs"]
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R9 R0 K18 ["Flags"]
       63 GETTABLEKS                       R9 R9 K19 ["getFFlagAnimGraphUIDuplicateNodeNames"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETTABLEKS                       R10 R0 K18 ["Flags"]
       70 GETTABLEKS                       R10 R10 K20 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
       72 CALL                             R9 1 1
       73 GETTABLEKS                       R10 R4 K21 ["getFFlagAnimGraphUIPinStates"]
       75 DUPCLOSURE                       R11 K22 [PROTO_2]
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R10
       85 RETURN                           R11 1
