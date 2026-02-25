PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnChanged"]
        3 JUMPIFEQKNIL                     R2 ; [+22]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["OnChanged"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K1 ["join"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K2 ["Input"]
       14 GETTABLEKS                       R4 R5 K3 ["Value"]
       16 DUPTABLE                         R5 K5 [{"Transition"}]
       17 MOVE                             R6 R1
       18 JUMPIF                           R6 ; [+3]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R6 R7 K6 ["None"]
       22 SETTABLEKS                       R6 R5 K4 ["Transition"]
       24 CALL                             R3 2 -1
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0

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
       34 DUPTABLE                         R6 K12 [{"Transition", "PinChildren"}]
       35 GETTABLEKS                       R7 R1 K13 ["nextProperty"]
       37 DUPTABLE                         R8 K21 [{"Name", "Label", "Weight", "Type", "Value", "DefaultValue", "OnChanged", "ExtraProps"}]
       38 LOADK                            R9 K10 ["Transition"]
       39 SETTABLEKS                       R9 R8 K14 ["Name"]
       41 GETTABLEKS                       R10 R0 K3 ["Input"]
       43 GETTABLEKS                       R9 R10 K14 ["Name"]
       45 SETTABLEKS                       R9 R8 K15 ["Label"]
       47 GETTABLEKS                       R10 R0 K3 ["Input"]
       49 GETTABLEKS                       R9 R10 K16 ["Weight"]
       51 SETTABLEKS                       R9 R8 K16 ["Weight"]
       53 LOADK                            R9 K10 ["Transition"]
       54 SETTABLEKS                       R9 R8 K17 ["Type"]
       56 GETTABLEKS                       R12 R0 K3 ["Input"]
       58 GETTABLEKS                       R11 R12 K18 ["Value"]
       60 GETTABLEKS                       R10 R11 K10 ["Transition"]
       62 ORK                              R9 R10 K22 []
       63 SETTABLEKS                       R9 R8 K18 ["Value"]
       65 GETTABLEKS                       R10 R0 K23 ["InputBuilderProps"]
       67 GETTABLEKS                       R9 R10 K24 ["DefaultTransition"]
       69 SETTABLEKS                       R9 R8 K19 ["DefaultValue"]
       71 SETTABLEKS                       R2 R8 K2 ["OnChanged"]
       73 DUPTABLE                         R9 K26 [{"TransitionBuilder"}]
       74 GETUPVAL                         R10 4
       75 SETTABLEKS                       R10 R9 K25 ["TransitionBuilder"]
       77 SETTABLEKS                       R9 R8 K20 ["ExtraProps"]
       79 CALL                             R7 1 1
       80 SETTABLEKS                       R7 R6 K10 ["Transition"]
       82 GETUPVAL                         R8 1
       83 GETTABLEKS                       R7 R8 K4 ["createElement"]
       85 LOADK                            R8 K27 ["Folder"]
       86 NEWTABLE                         R9 0 0
       88 DUPTABLE                         R10 K29 [{"RenderedPinInput"}]
       89 GETUPVAL                         R12 1
       90 GETTABLEKS                       R11 R12 K4 ["createElement"]
       92 GETUPVAL                         R12 5
       93 DUPTABLE                         R13 K35 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName"}]
       94 GETIMPORT                        R14 K38 [UDim2.new]
       96 LOADN                            R15 0
       97 LOADN                            R16 247
       98 LOADK                            R17 K39 [0.5]
       99 LOADN                            R18 0
      100 CALL                             R14 4 1
      101 SETTABLEKS                       R14 R13 K30 ["Position"]
      103 LOADK                            R14 K3 ["Input"]
      104 SETTABLEKS                       R14 R13 K31 ["pinSide"]
      106 LOADK                            R14 K40 ["Animation"]
      107 SETTABLEKS                       R14 R13 K32 ["pinDataType"]
      109 GETTABLEKS                       R14 R0 K41 ["NodeId"]
      111 SETTABLEKS                       R14 R13 K33 ["pinNodeId"]
      113 GETTABLEKS                       R15 R0 K3 ["Input"]
      115 GETTABLEKS                       R14 R15 K14 ["Name"]
      117 SETTABLEKS                       R14 R13 K34 ["pinName"]
      119 CALL                             R11 2 1
      120 SETTABLEKS                       R11 R10 K28 ["RenderedPinInput"]
      122 CALL                             R7 3 1
      123 SETTABLEKS                       R7 R6 K11 ["PinChildren"]
      125 CALL                             R3 3 -1
      126 RETURN                           R3 -1

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
       43 GETTABLEKS                       R7 R0 K9 ["Parent"]
       45 GETTABLEKS                       R6 R7 K16 ["React"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R10 R0 K12 ["Components"]
       52 GETTABLEKS                       R9 R10 K13 ["NodeView"]
       54 GETTABLEKS                       R8 R9 K17 ["CompositorNodes"]
       56 GETTABLEKS                       R7 R8 K18 ["RenderedCompositorPin"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R11 R0 K12 ["Components"]
       63 GETTABLEKS                       R10 R11 K13 ["NodeView"]
       65 GETTABLEKS                       R9 R10 K19 ["CompositorNodeTransition"]
       67 GETTABLEKS                       R8 R9 K20 ["SequenceTransition"]
       69 CALL                             R7 1 1
       70 DUPCLOSURE                       R8 K21 [PROTO_1]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R6
       77 RETURN                           R8 1
