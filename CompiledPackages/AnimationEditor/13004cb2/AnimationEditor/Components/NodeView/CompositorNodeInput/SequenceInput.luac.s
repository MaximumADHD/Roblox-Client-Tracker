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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Input"]
        3 GETTABLEKS                       R1 R2 K1 ["Value"]
        5 GETTABLEKS                       R0 R1 K2 ["Transition"]
        7 JUMPIFNOT                        R0 ; [+16]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K0 ["Input"]
       11 GETTABLEKS                       R3 R4 K1 ["Value"]
       13 GETTABLEKS                       R2 R3 K2 ["Transition"]
       15 GETTABLEKS                       R1 R2 K3 ["WaitFor"]
       17 GETIMPORT                        R2 K7 [Enum.AnimationNodeWaitFor.Trigger]
       19 JUMPIFEQ                         R1 R2 ; [+2]
       21 LOADB                            R0 0 +1
       22 LOADB                            R0 1
       23 RETURN                           R0 1
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R1 R2 K8 ["InputBuilderProps"]
       27 GETTABLEKS                       R0 R1 K9 ["DefaultTransition"]
       29 JUMPIFNOT                        R0 ; [+14]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K8 ["InputBuilderProps"]
       33 GETTABLEKS                       R2 R3 K9 ["DefaultTransition"]
       35 GETTABLEKS                       R1 R2 K3 ["WaitFor"]
       37 GETIMPORT                        R2 K7 [Enum.AnimationNodeWaitFor.Trigger]
       39 JUMPIFEQ                         R1 R2 ; [+2]
       41 LOADB                            R0 0 +1
       42 LOADB                            R0 1
       43 RETURN                           R0 1
       44 LOADB                            R0 0
       45 RETURN                           R0 1

PROTO_2:
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
       21 GETTABLEKS                       R3 R4 K4 ["useMemo"]
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          VAL R0
       25 NEWTABLE                         R5 0 2
       27 GETTABLEKS                       R8 R0 K3 ["Input"]
       29 GETTABLEKS                       R7 R8 K5 ["Value"]
       31 GETTABLEKS                       R6 R7 K6 ["Transition"]
       33 GETTABLEKS                       R8 R0 K7 ["InputBuilderProps"]
       35 GETTABLEKS                       R7 R8 K8 ["DefaultTransition"]
       37 SETLIST                          R5 R6 2 [1]
       39 CALL                             R3 2 1
       40 GETUPVAL                         R5 1
       41 GETTABLEKS                       R4 R5 K9 ["createElement"]
       43 GETUPVAL                         R6 3
       44 GETTABLEKS                       R5 R6 K10 ["View"]
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
       61 GETTABLEKS                       R11 R0 K3 ["Input"]
       63 GETTABLEKS                       R10 R11 K19 ["Name"]
       65 SETTABLEKS                       R10 R9 K20 ["Label"]
       67 GETTABLEKS                       R11 R0 K3 ["Input"]
       69 GETTABLEKS                       R10 R11 K21 ["Weight"]
       71 SETTABLEKS                       R10 R9 K21 ["Weight"]
       73 LOADK                            R10 K6 ["Transition"]
       74 SETTABLEKS                       R10 R9 K22 ["Type"]
       76 GETTABLEKS                       R13 R0 K3 ["Input"]
       78 GETTABLEKS                       R12 R13 K5 ["Value"]
       80 GETTABLEKS                       R11 R12 K6 ["Transition"]
       82 ORK                              R10 R11 K26 []
       83 SETTABLEKS                       R10 R9 K5 ["Value"]
       85 GETTABLEKS                       R11 R0 K7 ["InputBuilderProps"]
       87 GETTABLEKS                       R10 R11 K8 ["DefaultTransition"]
       89 SETTABLEKS                       R10 R9 K23 ["DefaultValue"]
       91 SETTABLEKS                       R2 R9 K2 ["OnChanged"]
       93 DUPTABLE                         R10 K28 [{"TransitionBuilder"}]
       94 GETUPVAL                         R11 4
       95 SETTABLEKS                       R11 R10 K27 ["TransitionBuilder"]
       97 SETTABLEKS                       R10 R9 K24 ["ExtraProps"]
       99 CALL                             R8 1 1
      100 SETTABLEKS                       R8 R7 K6 ["Transition"]
      102 JUMPIFNOT                        R3 ; [+25]
      103 GETTABLEKS                       R8 R1 K18 ["nextProperty"]
      105 DUPTABLE                         R9 K29 [{"Name", "Label", "Type", "Value", "OnChanged"}]
      106 LOADK                            R10 K30 ["WaitForTrigger"]
      107 SETTABLEKS                       R10 R9 K19 ["Name"]
      109 LOADK                            R10 K15 ["Trigger"]
      110 SETTABLEKS                       R10 R9 K20 ["Label"]
      112 LOADK                            R10 K31 ["Boolean"]
      113 SETTABLEKS                       R10 R9 K22 ["Type"]
      115 GETTABLEKS                       R13 R0 K3 ["Input"]
      117 GETTABLEKS                       R12 R13 K5 ["Value"]
      119 GETTABLEKS                       R11 R12 K30 ["WaitForTrigger"]
      121 ORK                              R10 R11 K26 []
      122 SETTABLEKS                       R10 R9 K5 ["Value"]
      124 SETTABLEKS                       R2 R9 K2 ["OnChanged"]
      126 CALL                             R8 1 1
      127 JUMP                             ; [+1]
      128 LOADNIL                          R8
      129 SETTABLEKS                       R8 R7 K15 ["Trigger"]
      131 GETUPVAL                         R9 1
      132 GETTABLEKS                       R8 R9 K9 ["createElement"]
      134 LOADK                            R9 K32 ["Folder"]
      135 NEWTABLE                         R10 0 0
      137 DUPTABLE                         R11 K34 [{"RenderedPinInput"}]
      138 GETUPVAL                         R13 1
      139 GETTABLEKS                       R12 R13 K9 ["createElement"]
      141 GETUPVAL                         R13 5
      142 DUPTABLE                         R14 K41 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName", "pinValue"}]
      143 GETIMPORT                        R15 K44 [UDim2.fromOffset]
      145 LOADN                            R16 247
      146 LOADN                            R17 14
      147 CALL                             R15 2 1
      148 SETTABLEKS                       R15 R14 K35 ["Position"]
      150 LOADK                            R15 K3 ["Input"]
      151 SETTABLEKS                       R15 R14 K36 ["pinSide"]
      153 LOADK                            R15 K45 ["Animation"]
      154 SETTABLEKS                       R15 R14 K37 ["pinDataType"]
      156 GETTABLEKS                       R15 R0 K46 ["NodeId"]
      158 SETTABLEKS                       R15 R14 K38 ["pinNodeId"]
      160 GETTABLEKS                       R16 R0 K3 ["Input"]
      162 GETTABLEKS                       R15 R16 K19 ["Name"]
      164 SETTABLEKS                       R15 R14 K39 ["pinName"]
      166 GETTABLEKS                       R16 R0 K3 ["Input"]
      168 GETTABLEKS                       R15 R16 K5 ["Value"]
      170 SETTABLEKS                       R15 R14 K40 ["pinValue"]
      172 CALL                             R12 2 1
      173 SETTABLEKS                       R12 R11 K33 ["RenderedPinInput"]
      175 CALL                             R8 3 1
      176 SETTABLEKS                       R8 R7 K16 ["PinChildren"]
      178 CALL                             R4 3 -1
      179 RETURN                           R4 -1

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
       70 DUPCLOSURE                       R8 K21 [PROTO_2]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R6
       77 RETURN                           R8 1
