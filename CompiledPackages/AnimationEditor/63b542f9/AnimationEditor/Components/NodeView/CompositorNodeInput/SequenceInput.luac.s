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
        1 GETTABLEKS                       R1 R1 K0 ["createPropertyHelpers"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["useCallback"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 NEWTABLE                         R4 0 2
       13 GETTABLEKS                       R5 R0 K2 ["OnChanged"]
       15 GETTABLEKS                       R6 R0 K3 ["Input"]
       17 SETLIST                          R4 R5 2 [1]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K4 ["useMemo"]
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          VAL R0
       25 NEWTABLE                         R5 0 2
       27 GETTABLEKS                       R6 R0 K3 ["Input"]
       29 GETTABLEKS                       R6 R6 K5 ["Value"]
       31 GETTABLEKS                       R6 R6 K6 ["Transition"]
       33 GETTABLEKS                       R7 R0 K7 ["InputBuilderProps"]
       35 GETTABLEKS                       R7 R7 K8 ["DefaultTransition"]
       37 SETLIST                          R5 R6 2 [1]
       39 CALL                             R3 2 1
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R4 R4 K9 ["createElement"]
       43 GETUPVAL                         R5 3
       44 GETTABLEKS                       R5 R5 K10 ["View"]
       46 DUPTABLE                         R6 K13 [{"tag", "LayoutOrder"}]
       47 LOADK                            R7 K14 ["col auto-y gap-small size-full-700"]
       48 SETTABLEKS                       R7 R6 K11 ["tag"]
       50 GETTABLEKS                       R7 R0 K12 ["LayoutOrder"]
       52 SETTABLEKS                       R7 R6 K12 ["LayoutOrder"]
       54 DUPTABLE                         R7 K17 [{"Transition", "Trigger", "PinChildren"}]
       55 GETTABLEKS                       R8 R1 K18 ["nextProperty"]
       57 DUPTABLE                         R9 K25 [{"Name", "Label", "Weight", "Type", "Value", "DefaultValue", "OnChanged", "ExtraProps"}]
       58 LOADK                            R10 K6 ["Transition"]
       59 SETTABLEKS                       R10 R9 K19 ["Name"]
       61 GETTABLEKS                       R10 R0 K3 ["Input"]
       63 GETTABLEKS                       R10 R10 K19 ["Name"]
       65 SETTABLEKS                       R10 R9 K20 ["Label"]
       67 GETTABLEKS                       R10 R0 K3 ["Input"]
       69 GETTABLEKS                       R10 R10 K21 ["Weight"]
       71 SETTABLEKS                       R10 R9 K21 ["Weight"]
       73 LOADK                            R10 K6 ["Transition"]
       74 SETTABLEKS                       R10 R9 K22 ["Type"]
       76 GETTABLEKS                       R11 R0 K3 ["Input"]
       78 GETTABLEKS                       R11 R11 K5 ["Value"]
       80 GETTABLEKS                       R11 R11 K6 ["Transition"]
       82 ORK                              R10 R11 K26 []
       83 SETTABLEKS                       R10 R9 K5 ["Value"]
       85 GETTABLEKS                       R10 R0 K7 ["InputBuilderProps"]
       87 GETTABLEKS                       R10 R10 K8 ["DefaultTransition"]
       89 SETTABLEKS                       R10 R9 K23 ["DefaultValue"]
       91 SETTABLEKS                       R2 R9 K2 ["OnChanged"]
       93 DUPTABLE                         R10 K29 [{"TransitionBuilder", "IsHoveredRef"}]
       94 GETUPVAL                         R11 4
       95 SETTABLEKS                       R11 R10 K27 ["TransitionBuilder"]
       97 GETTABLEKS                       R11 R0 K28 ["IsHoveredRef"]
       99 SETTABLEKS                       R11 R10 K28 ["IsHoveredRef"]
      101 SETTABLEKS                       R10 R9 K24 ["ExtraProps"]
      103 CALL                             R8 1 1
      104 SETTABLEKS                       R8 R7 K6 ["Transition"]
      106 JUMPIFNOT                        R3 ; [+25]
      107 GETTABLEKS                       R8 R1 K18 ["nextProperty"]
      109 DUPTABLE                         R9 K30 [{"Name", "Label", "Type", "Value", "OnChanged"}]
      110 LOADK                            R10 K31 ["WaitForTrigger"]
      111 SETTABLEKS                       R10 R9 K19 ["Name"]
      113 LOADK                            R10 K15 ["Trigger"]
      114 SETTABLEKS                       R10 R9 K20 ["Label"]
      116 LOADK                            R10 K32 ["Boolean"]
      117 SETTABLEKS                       R10 R9 K22 ["Type"]
      119 GETTABLEKS                       R11 R0 K3 ["Input"]
      121 GETTABLEKS                       R11 R11 K5 ["Value"]
      123 GETTABLEKS                       R11 R11 K31 ["WaitForTrigger"]
      125 ORK                              R10 R11 K26 []
      126 SETTABLEKS                       R10 R9 K5 ["Value"]
      128 SETTABLEKS                       R2 R9 K2 ["OnChanged"]
      130 CALL                             R8 1 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R8
      133 SETTABLEKS                       R8 R7 K15 ["Trigger"]
      135 GETUPVAL                         R8 1
      136 GETTABLEKS                       R8 R8 K9 ["createElement"]
      138 LOADK                            R9 K33 ["Folder"]
      139 NEWTABLE                         R10 0 0
      141 DUPTABLE                         R11 K35 [{"RenderedPinInput"}]
      142 GETUPVAL                         R12 1
      143 GETTABLEKS                       R12 R12 K9 ["createElement"]
      145 GETUPVAL                         R13 5
      146 DUPTABLE                         R14 K42 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName", "pinValue"}]
      147 GETIMPORT                        R15 K45 [UDim2.fromOffset]
      149 LOADN                            R16 255
      150 LOADN                            R17 14
      151 CALL                             R15 2 1
      152 SETTABLEKS                       R15 R14 K36 ["Position"]
      154 LOADK                            R15 K3 ["Input"]
      155 SETTABLEKS                       R15 R14 K37 ["pinSide"]
      157 LOADK                            R15 K46 ["Animation"]
      158 SETTABLEKS                       R15 R14 K38 ["pinDataType"]
      160 GETTABLEKS                       R15 R0 K47 ["NodeId"]
      162 SETTABLEKS                       R15 R14 K39 ["pinNodeId"]
      164 GETTABLEKS                       R15 R0 K3 ["Input"]
      166 GETTABLEKS                       R15 R15 K19 ["Name"]
      168 SETTABLEKS                       R15 R14 K40 ["pinName"]
      170 GETTABLEKS                       R15 R0 K3 ["Input"]
      172 GETTABLEKS                       R15 R15 K5 ["Value"]
      174 SETTABLEKS                       R15 R14 K41 ["pinValue"]
      176 CALL                             R12 2 1
      177 SETTABLEKS                       R12 R11 K34 ["RenderedPinInput"]
      179 CALL                             R8 3 1
      180 SETTABLEKS                       R8 R7 K16 ["PinChildren"]
      182 CALL                             R4 3 -1
      183 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Nodes"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodeUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["Dash"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Components"]
       34 GETTABLEKS                       R5 R5 K13 ["NodeView"]
       36 GETTABLEKS                       R5 R5 K14 ["CompositorNodeInput"]
       38 GETTABLEKS                       R5 R5 K15 ["InputPanelTypes"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Parent"]
       45 GETTABLEKS                       R6 R6 K16 ["React"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K12 ["Components"]
       52 GETTABLEKS                       R7 R7 K13 ["NodeView"]
       54 GETTABLEKS                       R7 R7 K17 ["CompositorNodes"]
       56 GETTABLEKS                       R7 R7 K18 ["RenderedCompositorPin"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K12 ["Components"]
       63 GETTABLEKS                       R8 R8 K13 ["NodeView"]
       65 GETTABLEKS                       R8 R8 K19 ["CompositorNodeTransition"]
       67 GETTABLEKS                       R8 R8 K20 ["SequenceTransition"]
       69 CALL                             R7 1 1
       70 DUPCLOSURE                       R8 K21 [PROTO_2]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R6
       77 RETURN                           R8 1
