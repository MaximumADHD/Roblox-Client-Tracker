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
       28 DUPTABLE                         R5 K9 [{"tag", "LayoutOrder"}]
       29 LOADK                            R6 K10 ["col auto-y gap-small size-full-700"]
       30 SETTABLEKS                       R6 R5 K7 ["tag"]
       32 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       34 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       36 DUPTABLE                         R6 K13 [{"Transition", "PinChildren"}]
       37 GETTABLEKS                       R7 R1 K14 ["nextProperty"]
       39 DUPTABLE                         R8 K22 [{"Name", "Label", "Weight", "Type", "Value", "DefaultValue", "OnChanged", "ExtraProps"}]
       40 LOADK                            R9 K11 ["Transition"]
       41 SETTABLEKS                       R9 R8 K15 ["Name"]
       43 GETTABLEKS                       R9 R0 K4 ["Input"]
       45 GETTABLEKS                       R9 R9 K15 ["Name"]
       47 SETTABLEKS                       R9 R8 K16 ["Label"]
       49 GETTABLEKS                       R9 R0 K4 ["Input"]
       51 GETTABLEKS                       R9 R9 K17 ["Weight"]
       53 SETTABLEKS                       R9 R8 K17 ["Weight"]
       55 LOADK                            R9 K11 ["Transition"]
       56 SETTABLEKS                       R9 R8 K18 ["Type"]
       58 GETTABLEKS                       R9 R0 K4 ["Input"]
       60 GETTABLEKS                       R9 R9 K19 ["Value"]
       62 GETTABLEKS                       R9 R9 K11 ["Transition"]
       64 SETTABLEKS                       R9 R8 K19 ["Value"]
       66 GETTABLEKS                       R9 R0 K23 ["InputBuilderProps"]
       68 GETTABLEKS                       R9 R9 K24 ["DefaultTransition"]
       70 SETTABLEKS                       R9 R8 K20 ["DefaultValue"]
       72 SETTABLEKS                       R2 R8 K3 ["OnChanged"]
       74 DUPTABLE                         R9 K27 [{"TransitionBuilder", "IsHoveredRef"}]
       75 GETUPVAL                         R10 4
       76 SETTABLEKS                       R10 R9 K25 ["TransitionBuilder"]
       78 GETTABLEKS                       R10 R0 K26 ["IsHoveredRef"]
       80 SETTABLEKS                       R10 R9 K26 ["IsHoveredRef"]
       82 SETTABLEKS                       R9 R8 K21 ["ExtraProps"]
       84 CALL                             R7 1 1
       85 SETTABLEKS                       R7 R6 K11 ["Transition"]
       87 GETUPVAL                         R7 1
       88 GETTABLEKS                       R7 R7 K5 ["createElement"]
       90 LOADK                            R8 K28 ["Folder"]
       91 NEWTABLE                         R9 0 0
       93 DUPTABLE                         R10 K30 [{"RenderedPinInput"}]
       94 GETUPVAL                         R11 1
       95 GETTABLEKS                       R11 R11 K5 ["createElement"]
       97 GETUPVAL                         R12 0
       98 GETTABLEKS                       R12 R12 K31 ["RenderedCompositorPin"]
      100 DUPTABLE                         R13 K38 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName", "pinValue"}]
      101 GETIMPORT                        R14 K41 [UDim2.fromOffset]
      103 LOADN                            R15 255
      104 LOADN                            R16 14
      105 CALL                             R14 2 1
      106 SETTABLEKS                       R14 R13 K32 ["Position"]
      108 LOADK                            R14 K4 ["Input"]
      109 SETTABLEKS                       R14 R13 K33 ["pinSide"]
      111 GETUPVAL                         R14 0
      112 GETTABLEKS                       R14 R14 K42 ["DEFAULT_PIN_DATA_TYPE"]
      114 SETTABLEKS                       R14 R13 K34 ["pinDataType"]
      116 GETTABLEKS                       R14 R0 K43 ["NodeId"]
      118 SETTABLEKS                       R14 R13 K35 ["pinNodeId"]
      120 GETTABLEKS                       R14 R0 K4 ["Input"]
      122 GETTABLEKS                       R14 R14 K15 ["Name"]
      124 SETTABLEKS                       R14 R13 K36 ["pinName"]
      126 GETTABLEKS                       R14 R0 K4 ["Input"]
      128 GETTABLEKS                       R14 R14 K19 ["Value"]
      130 SETTABLEKS                       R14 R13 K37 ["pinValue"]
      132 CALL                             R11 2 1
      133 SETTABLEKS                       R11 R10 K29 ["RenderedPinInput"]
      135 CALL                             R7 3 1
      136 SETTABLEKS                       R7 R6 K12 ["PinChildren"]
      138 CALL                             R3 3 -1
      139 RETURN                           R3 -1

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
       57 DUPCLOSURE                       R7 K17 [PROTO_1]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R6
       63 RETURN                           R7 1
