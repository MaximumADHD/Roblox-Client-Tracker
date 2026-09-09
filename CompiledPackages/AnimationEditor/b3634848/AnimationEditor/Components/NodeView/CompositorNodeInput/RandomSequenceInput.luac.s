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
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U2
       29 NEWTABLE                         R5 0 2
       31 GETTABLEKS                       R6 R0 K4 ["Input"]
       33 GETTABLEKS                       R6 R6 K6 ["Value"]
       35 GETTABLEKS                       R6 R6 K7 ["Transition"]
       37 GETTABLEKS                       R7 R0 K8 ["InputBuilderProps"]
       39 GETTABLEKS                       R7 R7 K9 ["DefaultTransition"]
       41 SETLIST                          R5 R6 2 [1]
       43 CALL                             R3 2 1
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R4 R4 K10 ["createElement"]
       47 GETUPVAL                         R5 4
       48 GETTABLEKS                       R5 R5 K11 ["View"]
       50 DUPTABLE                         R6 K15 [{["tag"] = "col gap-none size-full-700 auto-y", ["LayoutOrder"]}]
       51 GETTABLEKS                       R7 R0 K14 ["LayoutOrder"]
       53 SETTABLEKS                       R7 R6 K14 ["LayoutOrder"]
       55 DUPTABLE                         R7 K18 [{"Transition", "Weight", "PinChildren"}]
       56 GETTABLEKS                       R8 R1 K19 ["nextProperty"]
       58 DUPTABLE                         R9 K25 [{["Name"] = "Transition", ["Label"], ["Weight"], ["Type"] = "Transition", ["Value"], ["DefaultValue"], ["OnChanged"], ["ExtraProps"]}]
       59 GETTABLEKS                       R10 R0 K4 ["Input"]
       61 GETTABLEKS                       R10 R10 K26 ["ConnectedNodeName"]
       63 SETTABLEKS                       R10 R9 K21 ["Label"]
       65 GETTABLEKS                       R10 R0 K4 ["Input"]
       67 GETTABLEKS                       R10 R10 K16 ["Weight"]
       69 SETTABLEKS                       R10 R9 K16 ["Weight"]
       71 SETTABLEKS                       R3 R9 K6 ["Value"]
       73 GETTABLEKS                       R10 R0 K8 ["InputBuilderProps"]
       75 GETTABLEKS                       R10 R10 K9 ["DefaultTransition"]
       77 SETTABLEKS                       R10 R9 K23 ["DefaultValue"]
       79 SETTABLEKS                       R2 R9 K3 ["OnChanged"]
       81 DUPTABLE                         R10 K31 [{"TransitionBuilder", "IsHovered", "OnDelete", "HasDuplicateName"}]
       82 GETUPVAL                         R11 5
       83 SETTABLEKS                       R11 R10 K27 ["TransitionBuilder"]
       85 GETTABLEKS                       R11 R0 K28 ["IsHovered"]
       87 SETTABLEKS                       R11 R10 K28 ["IsHovered"]
       89 GETTABLEKS                       R11 R0 K29 ["OnDelete"]
       91 SETTABLEKS                       R11 R10 K29 ["OnDelete"]
       93 GETTABLEKS                       R11 R0 K30 ["HasDuplicateName"]
       95 SETTABLEKS                       R11 R10 K30 ["HasDuplicateName"]
       97 SETTABLEKS                       R10 R9 K24 ["ExtraProps"]
       99 CALL                             R8 1 1
      100 SETTABLEKS                       R8 R7 K7 ["Transition"]
      102 GETTABLEKS                       R8 R1 K19 ["nextProperty"]
      104 DUPTABLE                         R9 K36 [{["Name"] = "Weight", ["Label"] = "Weight", ["Type"] = "Number", ["Value"], ["OnChanged"], ["Default"] = 1, ["PinDynamicIndex"]}]
      105 GETTABLEKS                       R10 R0 K4 ["Input"]
      107 GETTABLEKS                       R10 R10 K6 ["Value"]
      109 GETTABLEKS                       R10 R10 K16 ["Weight"]
      111 SETTABLEKS                       R10 R9 K6 ["Value"]
      113 SETTABLEKS                       R2 R9 K3 ["OnChanged"]
      115 GETTABLEKS                       R10 R0 K37 ["InputIndex"]
      117 SETTABLEKS                       R10 R9 K35 ["PinDynamicIndex"]
      119 CALL                             R8 1 1
      120 SETTABLEKS                       R8 R7 K16 ["Weight"]
      122 GETUPVAL                         R8 1
      123 GETTABLEKS                       R8 R8 K10 ["createElement"]
      125 LOADK                            R9 K38 ["Folder"]
      126 NEWTABLE                         R10 0 0
      128 DUPTABLE                         R11 K40 [{"RenderedPinInput"}]
      129 GETUPVAL                         R12 1
      130 GETTABLEKS                       R12 R12 K10 ["createElement"]
      132 GETUPVAL                         R13 0
      133 GETTABLEKS                       R13 R13 K41 ["RenderedCompositorPin"]
      135 DUPTABLE                         R14 K50 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinValue"], ["pinDynamicIndex"], ["selected"]}]
      136 GETIMPORT                        R15 K53 [UDim2.fromOffset]
      138 GETUPVAL                         R17 6
      139 CALL                             R17 0 1
      140 JUMPIFNOT                        R17 ; [+2]
      141 LOADN                            R16 -13
      142 JUMP                             ; [+1]
      143 LOADN                            R16 -1
      144 LOADN                            R17 14
      145 CALL                             R15 2 1
      146 SETTABLEKS                       R15 R14 K42 ["Position"]
      148 GETUPVAL                         R15 0
      149 GETTABLEKS                       R15 R15 K54 ["DEFAULT_PIN_DATA_TYPE"]
      151 SETTABLEKS                       R15 R14 K44 ["pinDataType"]
      153 GETTABLEKS                       R15 R0 K55 ["NodeId"]
      155 SETTABLEKS                       R15 R14 K45 ["pinNodeId"]
      157 GETTABLEKS                       R15 R0 K4 ["Input"]
      159 GETTABLEKS                       R15 R15 K20 ["Name"]
      161 SETTABLEKS                       R15 R14 K46 ["pinName"]
      163 GETTABLEKS                       R15 R0 K4 ["Input"]
      165 GETTABLEKS                       R15 R15 K6 ["Value"]
      167 SETTABLEKS                       R15 R14 K47 ["pinValue"]
      169 GETTABLEKS                       R15 R0 K37 ["InputIndex"]
      171 SETTABLEKS                       R15 R14 K48 ["pinDynamicIndex"]
      173 GETTABLEKS                       R15 R0 K56 ["IsSelected"]
      175 SETTABLEKS                       R15 R14 K49 ["selected"]
      177 CALL                             R12 2 1
      178 SETTABLEKS                       R12 R11 K39 ["RenderedPinInput"]
      180 CALL                             R8 3 1
      181 SETTABLEKS                       R8 R7 K17 ["PinChildren"]
      183 CALL                             R4 3 -1
      184 RETURN                           R4 -1

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
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K17 ["Flags"]
       61 GETTABLEKS                       R8 R8 K18 ["getEngineFeatureAnimGraphTransitionBeforeFinish"]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R8 R4 K19 ["getFFlagAnimGraphUIPinOffset"]
       66 DUPCLOSURE                       R9 K20 [PROTO_2]
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R8
       74 RETURN                           R9 1
