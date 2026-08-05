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
       53 DUPTABLE                         R7 K18 [{"Transition", "Trigger", "PinChildren"}]
       54 GETTABLEKS                       R8 R1 K19 ["nextProperty"]
       56 DUPTABLE                         R9 K26 [{["Name"] = "Transition", ["Label"], ["Weight"], ["Type"] = "Transition", ["Value"], ["DefaultValue"], ["OnChanged"], ["ExtraProps"]}]
       57 GETTABLEKS                       R10 R0 K4 ["Input"]
       59 GETTABLEKS                       R10 R10 K27 ["ConnectedNodeName"]
       61 SETTABLEKS                       R10 R9 K21 ["Label"]
       63 GETTABLEKS                       R10 R0 K4 ["Input"]
       65 GETTABLEKS                       R10 R10 K22 ["Weight"]
       67 SETTABLEKS                       R10 R9 K22 ["Weight"]
       69 GETTABLEKS                       R11 R0 K4 ["Input"]
       71 GETTABLEKS                       R11 R11 K6 ["Value"]
       73 GETTABLEKS                       R11 R11 K7 ["Transition"]
       75 ORK                              R10 R11 K28 []
       76 SETTABLEKS                       R10 R9 K6 ["Value"]
       78 GETTABLEKS                       R10 R0 K8 ["InputBuilderProps"]
       80 GETTABLEKS                       R10 R10 K9 ["DefaultTransition"]
       82 SETTABLEKS                       R10 R9 K24 ["DefaultValue"]
       84 SETTABLEKS                       R2 R9 K3 ["OnChanged"]
       86 DUPTABLE                         R10 K33 [{"TransitionBuilder", "IsHovered", "OnDelete", "HasDuplicateName"}]
       87 GETUPVAL                         R11 4
       88 SETTABLEKS                       R11 R10 K29 ["TransitionBuilder"]
       90 GETTABLEKS                       R11 R0 K30 ["IsHovered"]
       92 SETTABLEKS                       R11 R10 K30 ["IsHovered"]
       94 GETTABLEKS                       R11 R0 K31 ["OnDelete"]
       96 SETTABLEKS                       R11 R10 K31 ["OnDelete"]
       98 GETTABLEKS                       R11 R0 K32 ["HasDuplicateName"]
      100 SETTABLEKS                       R11 R10 K32 ["HasDuplicateName"]
      102 SETTABLEKS                       R10 R9 K25 ["ExtraProps"]
      104 CALL                             R8 1 1
      105 SETTABLEKS                       R8 R7 K7 ["Transition"]
      107 JUMPIFNOT                        R3 ; [+24]
      108 GETTABLEKS                       R8 R1 K19 ["nextProperty"]
      110 DUPTABLE                         R9 K37 [{["Name"] = "WaitForTrigger", ["Label"] = "Trigger", ["Type"] = "Boolean", ["Value"], ["OnChanged"], ["PinDynamicIndex"]}]
      111 GETTABLEKS                       R11 R0 K4 ["Input"]
      113 GETTABLEKS                       R11 R11 K6 ["Value"]
      115 GETTABLEKS                       R11 R11 K34 ["WaitForTrigger"]
      117 ORK                              R10 R11 K28 []
      118 SETTABLEKS                       R10 R9 K6 ["Value"]
      120 SETTABLEKS                       R2 R9 K3 ["OnChanged"]
      122 GETUPVAL                         R11 5
      123 JUMPIFNOT                        R11 ; [+3]
      124 GETTABLEKS                       R10 R0 K38 ["InputIndex"]
      126 JUMP                             ; [+1]
      127 LOADNIL                          R10
      128 SETTABLEKS                       R10 R9 K36 ["PinDynamicIndex"]
      130 CALL                             R8 1 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R8
      133 SETTABLEKS                       R8 R7 K16 ["Trigger"]
      135 GETUPVAL                         R8 1
      136 GETTABLEKS                       R8 R8 K10 ["createElement"]
      138 LOADK                            R9 K39 ["Folder"]
      139 NEWTABLE                         R10 0 0
      141 DUPTABLE                         R11 K41 [{"RenderedPinInput"}]
      142 GETUPVAL                         R12 1
      143 GETTABLEKS                       R12 R12 K10 ["createElement"]
      145 GETUPVAL                         R13 0
      146 GETTABLEKS                       R13 R13 K42 ["RenderedCompositorPin"]
      148 DUPTABLE                         R14 K51 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinValue"], ["pinDynamicIndex"], ["selected"]}]
      149 GETIMPORT                        R15 K54 [UDim2.fromOffset]
      151 GETUPVAL                         R17 6
      152 CALL                             R17 0 1
      153 JUMPIFNOT                        R17 ; [+2]
      154 LOADN                            R16 -13
      155 JUMP                             ; [+1]
      156 LOADN                            R16 -1
      157 LOADN                            R17 14
      158 CALL                             R15 2 1
      159 SETTABLEKS                       R15 R14 K43 ["Position"]
      161 GETUPVAL                         R15 0
      162 GETTABLEKS                       R15 R15 K55 ["DEFAULT_PIN_DATA_TYPE"]
      164 SETTABLEKS                       R15 R14 K45 ["pinDataType"]
      166 GETTABLEKS                       R15 R0 K56 ["NodeId"]
      168 SETTABLEKS                       R15 R14 K46 ["pinNodeId"]
      170 GETTABLEKS                       R15 R0 K4 ["Input"]
      172 GETTABLEKS                       R15 R15 K20 ["Name"]
      174 SETTABLEKS                       R15 R14 K47 ["pinName"]
      176 GETTABLEKS                       R15 R0 K4 ["Input"]
      178 GETTABLEKS                       R15 R15 K6 ["Value"]
      180 SETTABLEKS                       R15 R14 K48 ["pinValue"]
      182 GETUPVAL                         R16 5
      183 JUMPIFNOT                        R16 ; [+3]
      184 GETTABLEKS                       R15 R0 K38 ["InputIndex"]
      186 JUMP                             ; [+1]
      187 LOADNIL                          R15
      188 SETTABLEKS                       R15 R14 K49 ["pinDynamicIndex"]
      190 GETTABLEKS                       R15 R0 K57 ["IsSelected"]
      192 SETTABLEKS                       R15 R14 K50 ["selected"]
      194 CALL                             R12 2 1
      195 SETTABLEKS                       R12 R11 K40 ["RenderedPinInput"]
      197 CALL                             R8 3 1
      198 SETTABLEKS                       R8 R7 K17 ["PinChildren"]
      200 CALL                             R4 3 -1
      201 RETURN                           R4 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R3 K9 ["FFlagAnimGraphUI_FixSequenceParameters"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K13 ["CompositorNodeInput"]
       36 GETTABLEKS                       R5 R5 K14 ["InputPanelTypes"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Parent"]
       43 GETTABLEKS                       R6 R6 K15 ["NodeGraphing"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Parent"]
       50 GETTABLEKS                       R7 R7 K16 ["React"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K11 ["Components"]
       57 GETTABLEKS                       R8 R8 K12 ["NodeView"]
       59 GETTABLEKS                       R8 R8 K17 ["CompositorNodeTransition"]
       61 GETTABLEKS                       R8 R8 K18 ["SequenceTransition"]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R8 R5 K19 ["getFFlagAnimGraphUIPinOffset"]
       66 DUPCLOSURE                       R9 K20 [PROTO_2]
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R8
       74 RETURN                           R9 1
