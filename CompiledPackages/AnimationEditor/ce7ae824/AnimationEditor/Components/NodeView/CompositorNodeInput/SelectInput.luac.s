PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnChanged"]
        3 JUMPIFEQKNIL                     R2 ; [+22]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["OnChanged"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["join"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K2 ["Input"]
       14 GETTABLEKS                       R4 R4 K3 ["Value"]
       16 DUPTABLE                         R5 K5 [{"Transition"}]
       17 MOVE                             R6 R1
       18 JUMPIF                           R6 ; [+3]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K6 ["None"]
       22 SETTABLEKS                       R6 R5 K4 ["Transition"]
       24 CALL                             R3 2 -1
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0

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
       28 DUPTABLE                         R5 K10 [{["tag"] = "col gap-small size-full-700 auto-y", ["LayoutOrder"]}]
       29 GETTABLEKS                       R6 R0 K9 ["LayoutOrder"]
       31 SETTABLEKS                       R6 R5 K9 ["LayoutOrder"]
       33 DUPTABLE                         R6 K13 [{"Transition", "PinChildren"}]
       34 GETTABLEKS                       R7 R1 K14 ["nextProperty"]
       36 DUPTABLE                         R8 K22 [{["Name"] = "Transition", ["Label"], ["Weight"], ["Type"] = "Transition", ["Value"], ["DefaultValue"], ["OnChanged"], ["ExtraProps"]}]
       37 GETUPVAL                         R10 4
       38 CALL                             R10 0 1
       39 JUMPIFNOT                        R10 ; [+5]
       40 GETTABLEKS                       R9 R0 K4 ["Input"]
       42 GETTABLEKS                       R9 R9 K23 ["ConnectedNodeName"]
       44 JUMP                             ; [+4]
       45 GETTABLEKS                       R9 R0 K4 ["Input"]
       47 GETTABLEKS                       R9 R9 K15 ["Name"]
       49 SETTABLEKS                       R9 R8 K16 ["Label"]
       51 GETTABLEKS                       R9 R0 K4 ["Input"]
       53 GETTABLEKS                       R9 R9 K17 ["Weight"]
       55 SETTABLEKS                       R9 R8 K17 ["Weight"]
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
       99 GETUPVAL                         R7 1
      100 GETTABLEKS                       R7 R7 K5 ["createElement"]
      102 LOADK                            R8 K31 ["Folder"]
      103 NEWTABLE                         R9 0 0
      105 DUPTABLE                         R10 K33 [{"RenderedPinInput"}]
      106 GETUPVAL                         R11 1
      107 GETTABLEKS                       R11 R11 K5 ["createElement"]
      109 GETUPVAL                         R12 0
      110 GETTABLEKS                       R12 R12 K34 ["RenderedCompositorPin"]
      112 DUPTABLE                         R13 K42 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinValue"], ["selected"]}]
      113 GETIMPORT                        R14 K45 [UDim2.fromOffset]
      115 LOADN                            R15 -1
      116 LOADN                            R16 14
      117 CALL                             R14 2 1
      118 SETTABLEKS                       R14 R13 K35 ["Position"]
      120 GETUPVAL                         R14 0
      121 GETTABLEKS                       R14 R14 K46 ["DEFAULT_PIN_DATA_TYPE"]
      123 SETTABLEKS                       R14 R13 K37 ["pinDataType"]
      125 GETTABLEKS                       R14 R0 K47 ["NodeId"]
      127 SETTABLEKS                       R14 R13 K38 ["pinNodeId"]
      129 GETTABLEKS                       R14 R0 K4 ["Input"]
      131 GETTABLEKS                       R14 R14 K15 ["Name"]
      133 SETTABLEKS                       R14 R13 K39 ["pinName"]
      135 GETTABLEKS                       R14 R0 K4 ["Input"]
      137 GETTABLEKS                       R14 R14 K19 ["Value"]
      139 SETTABLEKS                       R14 R13 K40 ["pinValue"]
      141 GETUPVAL                         R15 7
      142 CALL                             R15 0 1
      143 JUMPIFNOT                        R15 ; [+3]
      144 GETTABLEKS                       R14 R0 K48 ["IsSelected"]
      146 JUMP                             ; [+1]
      147 LOADNIL                          R14
      148 SETTABLEKS                       R14 R13 K41 ["selected"]
      150 CALL                             R11 2 1
      151 SETTABLEKS                       R11 R10 K32 ["RenderedPinInput"]
      153 CALL                             R7 3 1
      154 SETTABLEKS                       R7 R6 K12 ["PinChildren"]
      156 CALL                             R3 3 -1
      157 RETURN                           R3 -1

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
       54 GETTABLEKS                       R7 R7 K16 ["SelectTransition"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R4 K17 ["getFFlagAnimGraphUIDefaultAndDisconnectedInputs"]
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R9 R0 K18 ["Flags"]
       63 GETTABLEKS                       R9 R9 K19 ["getFFlagAnimGraphUIDuplicateNodeNames"]
       65 CALL                             R8 1 1
       66 GETTABLEKS                       R9 R4 K20 ["getFFlagAnimGraphUIPinStates"]
       68 DUPCLOSURE                       R10 K21 [PROTO_1]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R9
       77 RETURN                           R10 1
