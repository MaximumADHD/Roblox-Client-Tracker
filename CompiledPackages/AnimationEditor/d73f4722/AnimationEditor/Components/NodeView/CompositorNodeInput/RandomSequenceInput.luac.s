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
       23 GETTABLEKS                       R3 R3 K5 ["createElement"]
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K6 ["View"]
       28 DUPTABLE                         R5 K10 [{["tag"] = "col gap-none size-full-700 auto-y", ["LayoutOrder"]}]
       29 GETTABLEKS                       R6 R0 K9 ["LayoutOrder"]
       31 SETTABLEKS                       R6 R5 K9 ["LayoutOrder"]
       33 DUPTABLE                         R6 K14 [{"Transition", "Weight", "PinChildren"}]
       34 GETTABLEKS                       R7 R1 K15 ["nextProperty"]
       36 DUPTABLE                         R8 K22 [{["Name"] = "Transition", ["Label"], ["Weight"], ["Type"] = "Transition", ["Value"], ["DefaultValue"], ["OnChanged"], ["ExtraProps"]}]
       37 GETUPVAL                         R10 4
       38 CALL                             R10 0 1
       39 JUMPIFNOT                        R10 ; [+5]
       40 GETTABLEKS                       R9 R0 K4 ["Input"]
       42 GETTABLEKS                       R9 R9 K23 ["ConnectedNodeName"]
       44 JUMP                             ; [+4]
       45 GETTABLEKS                       R9 R0 K4 ["Input"]
       47 GETTABLEKS                       R9 R9 K16 ["Name"]
       49 SETTABLEKS                       R9 R8 K17 ["Label"]
       51 GETTABLEKS                       R9 R0 K4 ["Input"]
       53 GETTABLEKS                       R9 R9 K12 ["Weight"]
       55 SETTABLEKS                       R9 R8 K12 ["Weight"]
       57 GETTABLEKS                       R9 R0 K4 ["Input"]
       59 GETTABLEKS                       R9 R9 K19 ["Value"]
       61 GETTABLEKS                       R9 R9 K11 ["Transition"]
       63 SETTABLEKS                       R9 R8 K19 ["Value"]
       65 GETTABLEKS                       R9 R0 K24 ["InputBuilderProps"]
       67 GETTABLEKS                       R9 R9 K25 ["DefaultTransition"]
       69 SETTABLEKS                       R9 R8 K20 ["DefaultValue"]
       71 SETTABLEKS                       R2 R8 K3 ["OnChanged"]
       73 DUPTABLE                         R9 K30 [{"TransitionBuilder", "IsHovered", "OnDelete", "HasDuplicateName"}]
       74 GETUPVAL                         R10 5
       75 SETTABLEKS                       R10 R9 K26 ["TransitionBuilder"]
       77 GETTABLEKS                       R10 R0 K27 ["IsHovered"]
       79 SETTABLEKS                       R10 R9 K27 ["IsHovered"]
       81 GETUPVAL                         R11 6
       82 CALL                             R11 0 1
       83 JUMPIFNOT                        R11 ; [+3]
       84 GETTABLEKS                       R10 R0 K28 ["OnDelete"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R10
       88 SETTABLEKS                       R10 R9 K28 ["OnDelete"]
       90 GETTABLEKS                       R10 R0 K29 ["HasDuplicateName"]
       92 SETTABLEKS                       R10 R9 K29 ["HasDuplicateName"]
       94 SETTABLEKS                       R9 R8 K21 ["ExtraProps"]
       96 CALL                             R7 1 1
       97 SETTABLEKS                       R7 R6 K11 ["Transition"]
       99 GETTABLEKS                       R7 R1 K15 ["nextProperty"]
      101 DUPTABLE                         R8 K35 [{["Name"] = "Weight", ["Label"], ["Type"] = "Number", ["Value"], ["OnChanged"], ["Default"] = 1, ["PinDynamicIndex"]}]
      102 GETUPVAL                         R10 4
      103 CALL                             R10 0 1
      104 JUMPIFNOT                        R10 ; [+2]
      105 LOADK                            R9 K12 ["Weight"]
      106 JUMP                             ; [+6]
      107 GETTABLEKS                       R10 R0 K4 ["Input"]
      109 GETTABLEKS                       R10 R10 K16 ["Name"]
      111 LOADK                            R11 K36 [" weight"]
      112 CONCAT                           R9 R10 R11
      113 SETTABLEKS                       R9 R8 K17 ["Label"]
      115 GETTABLEKS                       R9 R0 K4 ["Input"]
      117 GETTABLEKS                       R9 R9 K19 ["Value"]
      119 GETTABLEKS                       R9 R9 K12 ["Weight"]
      121 SETTABLEKS                       R9 R8 K19 ["Value"]
      123 SETTABLEKS                       R2 R8 K3 ["OnChanged"]
      125 GETUPVAL                         R10 7
      126 CALL                             R10 0 1
      127 JUMPIFNOT                        R10 ; [+3]
      128 GETTABLEKS                       R9 R0 K37 ["InputIndex"]
      130 JUMP                             ; [+1]
      131 LOADNIL                          R9
      132 SETTABLEKS                       R9 R8 K34 ["PinDynamicIndex"]
      134 CALL                             R7 1 1
      135 SETTABLEKS                       R7 R6 K12 ["Weight"]
      137 GETUPVAL                         R7 1
      138 GETTABLEKS                       R7 R7 K5 ["createElement"]
      140 LOADK                            R8 K38 ["Folder"]
      141 NEWTABLE                         R9 0 0
      143 DUPTABLE                         R10 K40 [{"RenderedPinInput"}]
      144 GETUPVAL                         R11 1
      145 GETTABLEKS                       R11 R11 K5 ["createElement"]
      147 GETUPVAL                         R12 0
      148 GETTABLEKS                       R12 R12 K41 ["RenderedCompositorPin"]
      150 DUPTABLE                         R13 K50 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinValue"], ["pinDynamicIndex"], ["selected"]}]
      151 GETIMPORT                        R14 K53 [UDim2.fromOffset]
      153 GETUPVAL                         R16 8
      154 CALL                             R16 0 1
      155 JUMPIFNOT                        R16 ; [+2]
      156 LOADN                            R15 -13
      157 JUMP                             ; [+1]
      158 LOADN                            R15 -1
      159 LOADN                            R16 14
      160 CALL                             R14 2 1
      161 SETTABLEKS                       R14 R13 K42 ["Position"]
      163 GETUPVAL                         R14 0
      164 GETTABLEKS                       R14 R14 K54 ["DEFAULT_PIN_DATA_TYPE"]
      166 SETTABLEKS                       R14 R13 K44 ["pinDataType"]
      168 GETTABLEKS                       R14 R0 K55 ["NodeId"]
      170 SETTABLEKS                       R14 R13 K45 ["pinNodeId"]
      172 GETTABLEKS                       R14 R0 K4 ["Input"]
      174 GETTABLEKS                       R14 R14 K16 ["Name"]
      176 SETTABLEKS                       R14 R13 K46 ["pinName"]
      178 GETTABLEKS                       R14 R0 K4 ["Input"]
      180 GETTABLEKS                       R14 R14 K19 ["Value"]
      182 SETTABLEKS                       R14 R13 K47 ["pinValue"]
      184 GETUPVAL                         R15 7
      185 CALL                             R15 0 1
      186 JUMPIFNOT                        R15 ; [+3]
      187 GETTABLEKS                       R14 R0 K37 ["InputIndex"]
      189 JUMP                             ; [+1]
      190 LOADNIL                          R14
      191 SETTABLEKS                       R14 R13 K48 ["pinDynamicIndex"]
      193 GETUPVAL                         R15 9
      194 CALL                             R15 0 1
      195 JUMPIFNOT                        R15 ; [+3]
      196 GETTABLEKS                       R14 R0 K56 ["IsSelected"]
      198 JUMP                             ; [+1]
      199 LOADNIL                          R14
      200 SETTABLEKS                       R14 R13 K49 ["selected"]
      202 CALL                             R11 2 1
      203 SETTABLEKS                       R11 R10 K39 ["RenderedPinInput"]
      205 CALL                             R7 3 1
      206 SETTABLEKS                       R7 R6 K13 ["PinChildren"]
      208 CALL                             R3 3 -1
      209 RETURN                           R3 -1

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
       47 GETTABLEKS                       R6 R6 K15 ["RandomSequenceTransition"]
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
       73 GETTABLEKS                       R10 R4 K21 ["getFFlagAnimGraphUIPinOffset"]
       75 GETTABLEKS                       R11 R4 K22 ["getFFlagAnimGraphUIPinStates"]
       77 DUPCLOSURE                       R12 K23 [PROTO_1]
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R11
       88 RETURN                           R12 1
