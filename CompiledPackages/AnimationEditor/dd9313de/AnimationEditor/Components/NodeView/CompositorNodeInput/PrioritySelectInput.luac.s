PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnChanged"]
        3 JUMPIFEQKNIL                     R2 ; [+24]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["OnChanged"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K1 ["join"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K2 ["Input"]
       14 GETTABLEKS                       R4 R5 K3 ["Value"]
       16 NEWTABLE                         R5 1 0
       18 JUMPIFEQKNIL                     R1 ; [+3]
       20 MOVE                             R6 R1
       21 JUMP                             ; [+3]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R6 R7 K4 ["None"]
       25 SETTABLE                         R6 R5 R0
       26 CALL                             R3 2 -1
       27 CALL                             R2 -1 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createPropertyHelpers"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 NEWTABLE                         R4 0 2
       13 GETTABLEKS                       R5 R0 K2 ["OnChanged"]
       15 GETTABLEKS                       R6 R0 K3 ["Input"]
       17 SETLIST                          R4 R5 2 [1]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K4 ["createElement"]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R4 R5 K5 ["View"]
       26 DUPTABLE                         R5 K8 [{"tag", "LayoutOrder"}]
       27 LOADK                            R6 K9 ["col auto-y gap-small size-full-700"]
       28 SETTABLEKS                       R6 R5 K6 ["tag"]
       30 GETTABLEKS                       R6 R0 K7 ["LayoutOrder"]
       32 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       34 DUPTABLE                         R6 K13 [{"Transition", "Condition", "PinChildren"}]
       35 GETTABLEKS                       R7 R1 K14 ["nextProperty"]
       37 DUPTABLE                         R8 K22 [{"Name", "Label", "Weight", "Type", "Value", "DefaultValue", "OnChanged", "ExtraProps"}]
       38 LOADK                            R9 K10 ["Transition"]
       39 SETTABLEKS                       R9 R8 K15 ["Name"]
       41 GETTABLEKS                       R10 R0 K3 ["Input"]
       43 GETTABLEKS                       R9 R10 K15 ["Name"]
       45 SETTABLEKS                       R9 R8 K16 ["Label"]
       47 GETTABLEKS                       R10 R0 K3 ["Input"]
       49 GETTABLEKS                       R9 R10 K17 ["Weight"]
       51 SETTABLEKS                       R9 R8 K17 ["Weight"]
       53 LOADK                            R9 K10 ["Transition"]
       54 SETTABLEKS                       R9 R8 K18 ["Type"]
       56 GETTABLEKS                       R12 R0 K3 ["Input"]
       58 GETTABLEKS                       R11 R12 K19 ["Value"]
       60 GETTABLEKS                       R10 R11 K10 ["Transition"]
       62 ORK                              R9 R10 K23 []
       63 SETTABLEKS                       R9 R8 K19 ["Value"]
       65 GETTABLEKS                       R10 R0 K24 ["InputBuilderProps"]
       67 GETTABLEKS                       R9 R10 K25 ["DefaultTransition"]
       69 SETTABLEKS                       R9 R8 K20 ["DefaultValue"]
       71 SETTABLEKS                       R2 R8 K2 ["OnChanged"]
       73 DUPTABLE                         R9 K27 [{"TransitionBuilder"}]
       74 GETUPVAL                         R10 4
       75 SETTABLEKS                       R10 R9 K26 ["TransitionBuilder"]
       77 SETTABLEKS                       R9 R8 K21 ["ExtraProps"]
       79 CALL                             R7 1 1
       80 SETTABLEKS                       R7 R6 K10 ["Transition"]
       82 GETTABLEKS                       R7 R1 K14 ["nextProperty"]
       84 DUPTABLE                         R8 K28 [{"Name", "Label", "Type", "Value", "OnChanged"}]
       85 LOADK                            R9 K11 ["Condition"]
       86 SETTABLEKS                       R9 R8 K15 ["Name"]
       88 LOADK                            R9 K11 ["Condition"]
       89 SETTABLEKS                       R9 R8 K16 ["Label"]
       91 LOADK                            R9 K29 ["Boolean"]
       92 SETTABLEKS                       R9 R8 K18 ["Type"]
       94 GETTABLEKS                       R12 R0 K3 ["Input"]
       96 GETTABLEKS                       R11 R12 K19 ["Value"]
       98 GETTABLEKS                       R10 R11 K11 ["Condition"]
      100 ORK                              R9 R10 K23 []
      101 SETTABLEKS                       R9 R8 K19 ["Value"]
      103 SETTABLEKS                       R2 R8 K2 ["OnChanged"]
      105 CALL                             R7 1 1
      106 SETTABLEKS                       R7 R6 K11 ["Condition"]
      108 GETUPVAL                         R8 1
      109 GETTABLEKS                       R7 R8 K4 ["createElement"]
      111 LOADK                            R8 K30 ["Folder"]
      112 NEWTABLE                         R9 0 0
      114 DUPTABLE                         R10 K32 [{"RenderedPinInput"}]
      115 GETUPVAL                         R12 1
      116 GETTABLEKS                       R11 R12 K4 ["createElement"]
      118 GETUPVAL                         R12 5
      119 DUPTABLE                         R13 K38 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName"}]
      120 GETIMPORT                        R14 K41 [UDim2.new]
      122 LOADN                            R15 0
      123 LOADN                            R16 247
      124 LOADK                            R17 K42 [0.5]
      125 LOADN                            R18 0
      126 CALL                             R14 4 1
      127 SETTABLEKS                       R14 R13 K33 ["Position"]
      129 LOADK                            R14 K3 ["Input"]
      130 SETTABLEKS                       R14 R13 K34 ["pinSide"]
      132 LOADK                            R14 K43 ["Animation"]
      133 SETTABLEKS                       R14 R13 K35 ["pinDataType"]
      135 GETTABLEKS                       R14 R0 K44 ["NodeId"]
      137 SETTABLEKS                       R14 R13 K36 ["pinNodeId"]
      139 GETTABLEKS                       R15 R0 K3 ["Input"]
      141 GETTABLEKS                       R14 R15 K15 ["Name"]
      143 SETTABLEKS                       R14 R13 K37 ["pinName"]
      145 CALL                             R11 2 1
      146 SETTABLEKS                       R11 R10 K31 ["RenderedPinInput"]
      148 CALL                             R7 3 1
      149 SETTABLEKS                       R7 R6 K12 ["PinChildren"]
      151 CALL                             R3 3 -1
      152 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Util"]
       11 GETTABLEKS                       R3 R4 K7 ["Nodes"]
       13 GETTABLEKS                       R2 R3 K8 ["CompositorNodeUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["Dash"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R5 K11 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R8 R0 K12 ["Components"]
       34 GETTABLEKS                       R7 R8 K13 ["NodeView"]
       36 GETTABLEKS                       R6 R7 K14 ["CompositorNodeInput"]
       38 GETTABLEKS                       R5 R6 K15 ["InputPanelTypes"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R9 R0 K12 ["Components"]
       45 GETTABLEKS                       R8 R9 K13 ["NodeView"]
       47 GETTABLEKS                       R7 R8 K16 ["CompositorNodeTransition"]
       49 GETTABLEKS                       R6 R7 K17 ["PrioritySelectTransition"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R8 R0 K9 ["Parent"]
       56 GETTABLEKS                       R7 R8 K18 ["React"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R11 R0 K12 ["Components"]
       63 GETTABLEKS                       R10 R11 K13 ["NodeView"]
       65 GETTABLEKS                       R9 R10 K19 ["CompositorNodes"]
       67 GETTABLEKS                       R8 R9 K20 ["RenderedCompositorPin"]
       69 CALL                             R7 1 1
       70 DUPCLOSURE                       R8 K21 [PROTO_1]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R7
       77 RETURN                           R8 1
