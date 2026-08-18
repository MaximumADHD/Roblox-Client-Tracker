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
       37 GETTABLEKS                       R9 R0 K4 ["Input"]
       39 GETTABLEKS                       R9 R9 K23 ["ConnectedNodeName"]
       41 SETTABLEKS                       R9 R8 K16 ["Label"]
       43 GETTABLEKS                       R9 R0 K4 ["Input"]
       45 GETTABLEKS                       R9 R9 K17 ["Weight"]
       47 SETTABLEKS                       R9 R8 K17 ["Weight"]
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
       86 GETUPVAL                         R7 1
       87 GETTABLEKS                       R7 R7 K5 ["createElement"]
       89 LOADK                            R8 K31 ["Folder"]
       90 NEWTABLE                         R9 0 0
       92 DUPTABLE                         R10 K33 [{"RenderedPinInput"}]
       93 GETUPVAL                         R11 1
       94 GETTABLEKS                       R11 R11 K5 ["createElement"]
       96 GETUPVAL                         R12 0
       97 GETTABLEKS                       R12 R12 K34 ["RenderedCompositorPin"]
       99 DUPTABLE                         R13 K42 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinValue"], ["selected"]}]
      100 GETIMPORT                        R14 K45 [UDim2.fromOffset]
      102 GETUPVAL                         R16 5
      103 CALL                             R16 0 1
      104 JUMPIFNOT                        R16 ; [+2]
      105 LOADN                            R15 -13
      106 JUMP                             ; [+1]
      107 LOADN                            R15 -1
      108 LOADN                            R16 14
      109 CALL                             R14 2 1
      110 SETTABLEKS                       R14 R13 K35 ["Position"]
      112 GETUPVAL                         R14 0
      113 GETTABLEKS                       R14 R14 K46 ["DEFAULT_PIN_DATA_TYPE"]
      115 SETTABLEKS                       R14 R13 K37 ["pinDataType"]
      117 GETTABLEKS                       R14 R0 K47 ["NodeId"]
      119 SETTABLEKS                       R14 R13 K38 ["pinNodeId"]
      121 GETTABLEKS                       R14 R0 K4 ["Input"]
      123 GETTABLEKS                       R14 R14 K15 ["Name"]
      125 SETTABLEKS                       R14 R13 K39 ["pinName"]
      127 GETTABLEKS                       R14 R0 K4 ["Input"]
      129 GETTABLEKS                       R14 R14 K19 ["Value"]
      131 SETTABLEKS                       R14 R13 K40 ["pinValue"]
      133 GETTABLEKS                       R14 R0 K48 ["IsSelected"]
      135 SETTABLEKS                       R14 R13 K41 ["selected"]
      137 CALL                             R11 2 1
      138 SETTABLEKS                       R11 R10 K32 ["RenderedPinInput"]
      140 CALL                             R7 3 1
      141 SETTABLEKS                       R7 R6 K12 ["PinChildren"]
      143 CALL                             R3 3 -1
      144 RETURN                           R3 -1

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
       57 GETTABLEKS                       R7 R4 K17 ["getFFlagAnimGraphUIPinOffset"]
       59 DUPCLOSURE                       R8 K18 [PROTO_1]
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R7
       66 RETURN                           R8 1
