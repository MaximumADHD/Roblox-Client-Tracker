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
       37 GETTABLEKS                       R9 R0 K4 ["Input"]
       39 GETTABLEKS                       R9 R9 K23 ["ConnectedNodeName"]
       41 SETTABLEKS                       R9 R8 K17 ["Label"]
       43 GETTABLEKS                       R9 R0 K4 ["Input"]
       45 GETTABLEKS                       R9 R9 K12 ["Weight"]
       47 SETTABLEKS                       R9 R8 K12 ["Weight"]
       49 GETTABLEKS                       R9 R0 K4 ["Input"]
       51 GETTABLEKS                       R9 R9 K19 ["Value"]
       53 GETTABLEKS                       R9 R9 K11 ["Transition"]
       55 SETTABLEKS                       R9 R8 K19 ["Value"]
       57 GETTABLEKS                       R9 R0 K24 ["InputBuilderProps"]
       59 GETTABLEKS                       R9 R9 K25 ["DefaultTransition"]
       61 SETTABLEKS                       R9 R8 K20 ["DefaultValue"]
       63 SETTABLEKS                       R2 R8 K3 ["OnChanged"]
       65 DUPTABLE                         R9 K30 [{"TransitionBuilder", "IsHovered", "OnDelete", "HasDuplicateName"}]
       66 GETUPVAL                         R10 4
       67 SETTABLEKS                       R10 R9 K26 ["TransitionBuilder"]
       69 GETTABLEKS                       R10 R0 K27 ["IsHovered"]
       71 SETTABLEKS                       R10 R9 K27 ["IsHovered"]
       73 GETTABLEKS                       R10 R0 K28 ["OnDelete"]
       75 SETTABLEKS                       R10 R9 K28 ["OnDelete"]
       77 GETTABLEKS                       R10 R0 K29 ["HasDuplicateName"]
       79 SETTABLEKS                       R10 R9 K29 ["HasDuplicateName"]
       81 SETTABLEKS                       R9 R8 K21 ["ExtraProps"]
       83 CALL                             R7 1 1
       84 SETTABLEKS                       R7 R6 K11 ["Transition"]
       86 GETTABLEKS                       R7 R1 K15 ["nextProperty"]
       88 DUPTABLE                         R8 K35 [{["Name"] = "Weight", ["Label"] = "Weight", ["Type"] = "Number", ["Value"], ["OnChanged"], ["Default"] = 1, ["PinDynamicIndex"]}]
       89 GETTABLEKS                       R9 R0 K4 ["Input"]
       91 GETTABLEKS                       R9 R9 K19 ["Value"]
       93 GETTABLEKS                       R9 R9 K12 ["Weight"]
       95 SETTABLEKS                       R9 R8 K19 ["Value"]
       97 SETTABLEKS                       R2 R8 K3 ["OnChanged"]
       99 GETUPVAL                         R10 5
      100 CALL                             R10 0 1
      101 JUMPIFNOT                        R10 ; [+3]
      102 GETTABLEKS                       R9 R0 K36 ["InputIndex"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R9
      106 SETTABLEKS                       R9 R8 K34 ["PinDynamicIndex"]
      108 CALL                             R7 1 1
      109 SETTABLEKS                       R7 R6 K12 ["Weight"]
      111 GETUPVAL                         R7 1
      112 GETTABLEKS                       R7 R7 K5 ["createElement"]
      114 LOADK                            R8 K37 ["Folder"]
      115 NEWTABLE                         R9 0 0
      117 DUPTABLE                         R10 K39 [{"RenderedPinInput"}]
      118 GETUPVAL                         R11 1
      119 GETTABLEKS                       R11 R11 K5 ["createElement"]
      121 GETUPVAL                         R12 0
      122 GETTABLEKS                       R12 R12 K40 ["RenderedCompositorPin"]
      124 DUPTABLE                         R13 K49 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinValue"], ["pinDynamicIndex"], ["selected"]}]
      125 GETIMPORT                        R14 K52 [UDim2.fromOffset]
      127 GETUPVAL                         R16 6
      128 CALL                             R16 0 1
      129 JUMPIFNOT                        R16 ; [+2]
      130 LOADN                            R15 -13
      131 JUMP                             ; [+1]
      132 LOADN                            R15 -1
      133 LOADN                            R16 14
      134 CALL                             R14 2 1
      135 SETTABLEKS                       R14 R13 K41 ["Position"]
      137 GETUPVAL                         R14 0
      138 GETTABLEKS                       R14 R14 K53 ["DEFAULT_PIN_DATA_TYPE"]
      140 SETTABLEKS                       R14 R13 K43 ["pinDataType"]
      142 GETTABLEKS                       R14 R0 K54 ["NodeId"]
      144 SETTABLEKS                       R14 R13 K44 ["pinNodeId"]
      146 GETTABLEKS                       R14 R0 K4 ["Input"]
      148 GETTABLEKS                       R14 R14 K16 ["Name"]
      150 SETTABLEKS                       R14 R13 K45 ["pinName"]
      152 GETTABLEKS                       R14 R0 K4 ["Input"]
      154 GETTABLEKS                       R14 R14 K19 ["Value"]
      156 SETTABLEKS                       R14 R13 K46 ["pinValue"]
      158 GETUPVAL                         R15 5
      159 CALL                             R15 0 1
      160 JUMPIFNOT                        R15 ; [+3]
      161 GETTABLEKS                       R14 R0 K36 ["InputIndex"]
      163 JUMP                             ; [+1]
      164 LOADNIL                          R14
      165 SETTABLEKS                       R14 R13 K47 ["pinDynamicIndex"]
      167 GETTABLEKS                       R14 R0 K55 ["IsSelected"]
      169 SETTABLEKS                       R14 R13 K48 ["selected"]
      171 CALL                             R11 2 1
      172 SETTABLEKS                       R11 R10 K38 ["RenderedPinInput"]
      174 CALL                             R7 3 1
      175 SETTABLEKS                       R7 R6 K13 ["PinChildren"]
      177 CALL                             R3 3 -1
      178 RETURN                           R3 -1

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
       61 GETTABLEKS                       R8 R8 K18 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R8 R4 K19 ["getFFlagAnimGraphUIPinOffset"]
       66 DUPCLOSURE                       R9 K20 [PROTO_1]
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R8
       74 RETURN                           R9 1
