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
      102 JUMPIFNOT                        R3 ; [+28]
      103 GETTABLEKS                       R8 R1 K18 ["nextProperty"]
      105 DUPTABLE                         R9 K30 [{"Name", "Label", "Type", "Value", "OnChanged", "IsReadOnly"}]
      106 LOADK                            R10 K31 ["WaitForTrigger"]
      107 SETTABLEKS                       R10 R9 K19 ["Name"]
      109 LOADK                            R10 K15 ["Trigger"]
      110 SETTABLEKS                       R10 R9 K20 ["Label"]
      112 LOADK                            R10 K32 ["Boolean"]
      113 SETTABLEKS                       R10 R9 K22 ["Type"]
      115 GETTABLEKS                       R13 R0 K3 ["Input"]
      117 GETTABLEKS                       R12 R13 K5 ["Value"]
      119 GETTABLEKS                       R11 R12 K31 ["WaitForTrigger"]
      121 ORK                              R10 R11 K26 []
      122 SETTABLEKS                       R10 R9 K5 ["Value"]
      124 SETTABLEKS                       R2 R9 K2 ["OnChanged"]
      126 LOADB                            R10 1
      127 SETTABLEKS                       R10 R9 K29 ["IsReadOnly"]
      129 CALL                             R8 1 1
      130 JUMP                             ; [+1]
      131 LOADNIL                          R8
      132 SETTABLEKS                       R8 R7 K15 ["Trigger"]
      134 GETUPVAL                         R9 1
      135 GETTABLEKS                       R8 R9 K9 ["createElement"]
      137 LOADK                            R9 K33 ["Folder"]
      138 NEWTABLE                         R10 0 0
      140 DUPTABLE                         R11 K35 [{"RenderedPinInput"}]
      141 GETUPVAL                         R13 1
      142 GETTABLEKS                       R12 R13 K9 ["createElement"]
      144 GETUPVAL                         R13 5
      145 DUPTABLE                         R14 K42 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName", "pinValue"}]
      146 GETIMPORT                        R15 K45 [UDim2.new]
      148 LOADN                            R16 0
      149 LOADN                            R17 247
      150 LOADK                            R18 K46 [0.5]
      151 LOADN                            R19 0
      152 CALL                             R15 4 1
      153 SETTABLEKS                       R15 R14 K36 ["Position"]
      155 LOADK                            R15 K3 ["Input"]
      156 SETTABLEKS                       R15 R14 K37 ["pinSide"]
      158 LOADK                            R15 K47 ["Animation"]
      159 SETTABLEKS                       R15 R14 K38 ["pinDataType"]
      161 GETTABLEKS                       R15 R0 K48 ["NodeId"]
      163 SETTABLEKS                       R15 R14 K39 ["pinNodeId"]
      165 GETTABLEKS                       R16 R0 K3 ["Input"]
      167 GETTABLEKS                       R15 R16 K19 ["Name"]
      169 SETTABLEKS                       R15 R14 K40 ["pinName"]
      171 GETTABLEKS                       R16 R0 K3 ["Input"]
      173 GETTABLEKS                       R15 R16 K5 ["Value"]
      175 SETTABLEKS                       R15 R14 K41 ["pinValue"]
      177 CALL                             R12 2 1
      178 SETTABLEKS                       R12 R11 K34 ["RenderedPinInput"]
      180 CALL                             R8 3 1
      181 SETTABLEKS                       R8 R7 K16 ["PinChildren"]
      183 CALL                             R4 3 -1
      184 RETURN                           R4 -1

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
