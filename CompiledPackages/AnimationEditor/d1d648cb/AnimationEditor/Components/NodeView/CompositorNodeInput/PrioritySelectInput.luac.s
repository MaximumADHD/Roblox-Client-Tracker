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
       57 GETTABLEKS                       R10 R0 K4 ["Input"]
       59 GETTABLEKS                       R10 R10 K28 ["ConnectedNodeName"]
       61 SETTABLEKS                       R10 R9 K22 ["Label"]
       63 GETTABLEKS                       R10 R0 K4 ["Input"]
       65 GETTABLEKS                       R10 R10 K23 ["Weight"]
       67 SETTABLEKS                       R10 R9 K23 ["Weight"]
       69 GETTABLEKS                       R11 R0 K4 ["Input"]
       71 GETTABLEKS                       R11 R11 K6 ["Value"]
       73 GETTABLEKS                       R11 R11 K7 ["Transition"]
       75 ORK                              R10 R11 K29 []
       76 SETTABLEKS                       R10 R9 K6 ["Value"]
       78 GETTABLEKS                       R10 R0 K8 ["InputBuilderProps"]
       80 GETTABLEKS                       R10 R10 K9 ["DefaultTransition"]
       82 SETTABLEKS                       R10 R9 K25 ["DefaultValue"]
       84 SETTABLEKS                       R2 R9 K3 ["OnChanged"]
       86 DUPTABLE                         R10 K36 [{"TransitionBuilder", "IsHovered", "OnDelete", "OnRename", "InputName", "HasDuplicateName"}]
       87 GETUPVAL                         R11 4
       88 SETTABLEKS                       R11 R10 K30 ["TransitionBuilder"]
       90 GETTABLEKS                       R11 R0 K31 ["IsHovered"]
       92 SETTABLEKS                       R11 R10 K31 ["IsHovered"]
       94 GETTABLEKS                       R11 R0 K32 ["OnDelete"]
       96 SETTABLEKS                       R11 R10 K32 ["OnDelete"]
       98 GETTABLEKS                       R11 R0 K33 ["OnRename"]
      100 SETTABLEKS                       R11 R10 K33 ["OnRename"]
      102 GETTABLEKS                       R11 R0 K4 ["Input"]
      104 GETTABLEKS                       R11 R11 K21 ["Name"]
      106 SETTABLEKS                       R11 R10 K34 ["InputName"]
      108 GETTABLEKS                       R11 R0 K35 ["HasDuplicateName"]
      110 SETTABLEKS                       R11 R10 K35 ["HasDuplicateName"]
      112 SETTABLEKS                       R10 R9 K26 ["ExtraProps"]
      114 CALL                             R8 1 1
      115 SETTABLEKS                       R8 R7 K7 ["Transition"]
      117 GETTABLEKS                       R8 R1 K20 ["nextProperty"]
      119 DUPTABLE                         R9 K39 [{["Name"] = "Trigger", ["Label"] = "Trigger", ["Type"] = "Boolean", ["Value"], ["OnChanged"], ["PinDynamicIndex"]}]
      120 GETTABLEKS                       R11 R0 K4 ["Input"]
      122 GETTABLEKS                       R11 R11 K6 ["Value"]
      124 GETTABLEKS                       R11 R11 K16 ["Trigger"]
      126 ORK                              R10 R11 K29 []
      127 SETTABLEKS                       R10 R9 K6 ["Value"]
      129 SETTABLEKS                       R2 R9 K3 ["OnChanged"]
      131 GETTABLEKS                       R10 R0 K40 ["InputIndex"]
      133 SETTABLEKS                       R10 R9 K38 ["PinDynamicIndex"]
      135 CALL                             R8 1 1
      136 SETTABLEKS                       R8 R7 K16 ["Trigger"]
      138 JUMPIFNOT                        R3 ; [+16]
      139 GETTABLEKS                       R8 R1 K20 ["nextProperty"]
      141 DUPTABLE                         R9 K42 [{["Name"] = "InterruptibleTrigger", ["Label"] = "Interruptible Trigger", ["Type"] = "Boolean", ["Value"], ["OnChanged"]}]
      142 GETTABLEKS                       R11 R0 K4 ["Input"]
      144 GETTABLEKS                       R11 R11 K6 ["Value"]
      146 GETTABLEKS                       R11 R11 K17 ["InterruptibleTrigger"]
      148 ORK                              R10 R11 K29 []
      149 SETTABLEKS                       R10 R9 K6 ["Value"]
      151 SETTABLEKS                       R2 R9 K3 ["OnChanged"]
      153 CALL                             R8 1 1
      154 JUMP                             ; [+1]
      155 LOADNIL                          R8
      156 SETTABLEKS                       R8 R7 K17 ["InterruptibleTrigger"]
      158 GETUPVAL                         R8 1
      159 GETTABLEKS                       R8 R8 K10 ["createElement"]
      161 LOADK                            R9 K43 ["Folder"]
      162 NEWTABLE                         R10 0 0
      164 DUPTABLE                         R11 K45 [{"RenderedPinInput"}]
      165 GETUPVAL                         R12 1
      166 GETTABLEKS                       R12 R12 K10 ["createElement"]
      168 GETUPVAL                         R13 0
      169 GETTABLEKS                       R13 R13 K46 ["RenderedCompositorPin"]
      171 DUPTABLE                         R14 K56 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinInputId"], ["pinValue"], ["pinDynamicIndex"], ["selected"]}]
      172 GETIMPORT                        R15 K59 [UDim2.fromOffset]
      174 LOADN                            R16 -13
      175 LOADN                            R17 14
      176 CALL                             R15 2 1
      177 SETTABLEKS                       R15 R14 K47 ["Position"]
      179 GETUPVAL                         R15 0
      180 GETTABLEKS                       R15 R15 K60 ["DEFAULT_PIN_DATA_TYPE"]
      182 SETTABLEKS                       R15 R14 K49 ["pinDataType"]
      184 GETTABLEKS                       R15 R0 K61 ["NodeId"]
      186 SETTABLEKS                       R15 R14 K50 ["pinNodeId"]
      188 GETTABLEKS                       R15 R0 K4 ["Input"]
      190 GETTABLEKS                       R15 R15 K21 ["Name"]
      192 SETTABLEKS                       R15 R14 K51 ["pinName"]
      194 GETTABLEKS                       R15 R0 K4 ["Input"]
      196 GETTABLEKS                       R15 R15 K62 ["InputId"]
      198 SETTABLEKS                       R15 R14 K52 ["pinInputId"]
      200 GETTABLEKS                       R15 R0 K4 ["Input"]
      202 GETTABLEKS                       R15 R15 K6 ["Value"]
      204 SETTABLEKS                       R15 R14 K53 ["pinValue"]
      206 GETTABLEKS                       R15 R0 K40 ["InputIndex"]
      208 SETTABLEKS                       R15 R14 K54 ["pinDynamicIndex"]
      210 GETTABLEKS                       R15 R0 K63 ["IsSelected"]
      212 SETTABLEKS                       R15 R14 K55 ["selected"]
      214 CALL                             R12 2 1
      215 SETTABLEKS                       R12 R11 K44 ["RenderedPinInput"]
      217 CALL                             R8 3 1
      218 SETTABLEKS                       R8 R7 K18 ["PinChildren"]
      220 CALL                             R4 3 -1
      221 RETURN                           R4 -1

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
       57 DUPCLOSURE                       R7 K17 [PROTO_2]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R5
       63 RETURN                           R7 1
