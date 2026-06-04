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
       48 DUPTABLE                         R6 K14 [{"tag", "LayoutOrder"}]
       49 LOADK                            R7 K15 ["col auto-y gap-small size-full-700"]
       50 SETTABLEKS                       R7 R6 K12 ["tag"]
       52 GETTABLEKS                       R7 R0 K13 ["LayoutOrder"]
       54 SETTABLEKS                       R7 R6 K13 ["LayoutOrder"]
       56 DUPTABLE                         R7 K18 [{"Transition", "Trigger", "PinChildren"}]
       57 GETTABLEKS                       R8 R1 K19 ["nextProperty"]
       59 DUPTABLE                         R9 K26 [{"Name", "Label", "Weight", "Type", "Value", "DefaultValue", "OnChanged", "ExtraProps"}]
       60 LOADK                            R10 K7 ["Transition"]
       61 SETTABLEKS                       R10 R9 K20 ["Name"]
       63 GETTABLEKS                       R10 R0 K4 ["Input"]
       65 GETTABLEKS                       R10 R10 K20 ["Name"]
       67 SETTABLEKS                       R10 R9 K21 ["Label"]
       69 GETTABLEKS                       R10 R0 K4 ["Input"]
       71 GETTABLEKS                       R10 R10 K22 ["Weight"]
       73 SETTABLEKS                       R10 R9 K22 ["Weight"]
       75 LOADK                            R10 K7 ["Transition"]
       76 SETTABLEKS                       R10 R9 K23 ["Type"]
       78 GETTABLEKS                       R11 R0 K4 ["Input"]
       80 GETTABLEKS                       R11 R11 K6 ["Value"]
       82 GETTABLEKS                       R11 R11 K7 ["Transition"]
       84 ORK                              R10 R11 K27 []
       85 SETTABLEKS                       R10 R9 K6 ["Value"]
       87 GETTABLEKS                       R10 R0 K8 ["InputBuilderProps"]
       89 GETTABLEKS                       R10 R10 K9 ["DefaultTransition"]
       91 SETTABLEKS                       R10 R9 K24 ["DefaultValue"]
       93 SETTABLEKS                       R2 R9 K3 ["OnChanged"]
       95 DUPTABLE                         R10 K30 [{"TransitionBuilder", "IsHoveredRef"}]
       96 GETUPVAL                         R11 4
       97 SETTABLEKS                       R11 R10 K28 ["TransitionBuilder"]
       99 GETTABLEKS                       R11 R0 K29 ["IsHoveredRef"]
      101 SETTABLEKS                       R11 R10 K29 ["IsHoveredRef"]
      103 SETTABLEKS                       R10 R9 K25 ["ExtraProps"]
      105 CALL                             R8 1 1
      106 SETTABLEKS                       R8 R7 K7 ["Transition"]
      108 JUMPIFNOT                        R3 ; [+25]
      109 GETTABLEKS                       R8 R1 K19 ["nextProperty"]
      111 DUPTABLE                         R9 K31 [{"Name", "Label", "Type", "Value", "OnChanged"}]
      112 LOADK                            R10 K32 ["WaitForTrigger"]
      113 SETTABLEKS                       R10 R9 K20 ["Name"]
      115 LOADK                            R10 K16 ["Trigger"]
      116 SETTABLEKS                       R10 R9 K21 ["Label"]
      118 LOADK                            R10 K33 ["Boolean"]
      119 SETTABLEKS                       R10 R9 K23 ["Type"]
      121 GETTABLEKS                       R11 R0 K4 ["Input"]
      123 GETTABLEKS                       R11 R11 K6 ["Value"]
      125 GETTABLEKS                       R11 R11 K32 ["WaitForTrigger"]
      127 ORK                              R10 R11 K27 []
      128 SETTABLEKS                       R10 R9 K6 ["Value"]
      130 SETTABLEKS                       R2 R9 K3 ["OnChanged"]
      132 CALL                             R8 1 1
      133 JUMP                             ; [+1]
      134 LOADNIL                          R8
      135 SETTABLEKS                       R8 R7 K16 ["Trigger"]
      137 GETUPVAL                         R8 1
      138 GETTABLEKS                       R8 R8 K10 ["createElement"]
      140 LOADK                            R9 K34 ["Folder"]
      141 NEWTABLE                         R10 0 0
      143 DUPTABLE                         R11 K36 [{"RenderedPinInput"}]
      144 GETUPVAL                         R12 1
      145 GETTABLEKS                       R12 R12 K10 ["createElement"]
      147 GETUPVAL                         R13 0
      148 GETTABLEKS                       R13 R13 K37 ["RenderedCompositorPin"]
      150 DUPTABLE                         R14 K44 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName", "pinValue"}]
      151 GETIMPORT                        R15 K47 [UDim2.fromOffset]
      153 LOADN                            R16 255
      154 LOADN                            R17 14
      155 CALL                             R15 2 1
      156 SETTABLEKS                       R15 R14 K38 ["Position"]
      158 LOADK                            R15 K4 ["Input"]
      159 SETTABLEKS                       R15 R14 K39 ["pinSide"]
      161 GETUPVAL                         R15 0
      162 GETTABLEKS                       R15 R15 K48 ["DEFAULT_PIN_DATA_TYPE"]
      164 SETTABLEKS                       R15 R14 K40 ["pinDataType"]
      166 GETTABLEKS                       R15 R0 K49 ["NodeId"]
      168 SETTABLEKS                       R15 R14 K41 ["pinNodeId"]
      170 GETTABLEKS                       R15 R0 K4 ["Input"]
      172 GETTABLEKS                       R15 R15 K20 ["Name"]
      174 SETTABLEKS                       R15 R14 K42 ["pinName"]
      176 GETTABLEKS                       R15 R0 K4 ["Input"]
      178 GETTABLEKS                       R15 R15 K6 ["Value"]
      180 SETTABLEKS                       R15 R14 K43 ["pinValue"]
      182 CALL                             R12 2 1
      183 SETTABLEKS                       R12 R11 K35 ["RenderedPinInput"]
      185 CALL                             R8 3 1
      186 SETTABLEKS                       R8 R7 K17 ["PinChildren"]
      188 CALL                             R4 3 -1
      189 RETURN                           R4 -1

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
       54 GETTABLEKS                       R7 R7 K16 ["SequenceTransition"]
       56 CALL                             R6 1 1
       57 DUPCLOSURE                       R7 K17 [PROTO_2]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R6
       63 RETURN                           R7 1
