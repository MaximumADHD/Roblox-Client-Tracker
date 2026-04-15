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
       15 GETTABLEKS                       R1 R2 K3 ["Interruptible"]
       17 GETIMPORT                        R2 K7 [Enum.AnimationNodeInterruptible.Trigger]
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
       35 GETTABLEKS                       R1 R2 K3 ["Interruptible"]
       37 GETIMPORT                        R2 K7 [Enum.AnimationNodeInterruptible.Trigger]
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
       54 DUPTABLE                         R7 K18 [{"Transition", "Trigger", "InterruptibleTrigger", "PinChildren"}]
       55 GETTABLEKS                       R8 R1 K19 ["nextProperty"]
       57 DUPTABLE                         R9 K26 [{"Name", "Label", "Weight", "Type", "Value", "DefaultValue", "OnChanged", "ExtraProps"}]
       58 LOADK                            R10 K6 ["Transition"]
       59 SETTABLEKS                       R10 R9 K20 ["Name"]
       61 GETTABLEKS                       R11 R0 K3 ["Input"]
       63 GETTABLEKS                       R10 R11 K20 ["Name"]
       65 SETTABLEKS                       R10 R9 K21 ["Label"]
       67 GETTABLEKS                       R11 R0 K3 ["Input"]
       69 GETTABLEKS                       R10 R11 K22 ["Weight"]
       71 SETTABLEKS                       R10 R9 K22 ["Weight"]
       73 LOADK                            R10 K6 ["Transition"]
       74 SETTABLEKS                       R10 R9 K23 ["Type"]
       76 GETTABLEKS                       R13 R0 K3 ["Input"]
       78 GETTABLEKS                       R12 R13 K5 ["Value"]
       80 GETTABLEKS                       R11 R12 K6 ["Transition"]
       82 ORK                              R10 R11 K27 []
       83 SETTABLEKS                       R10 R9 K5 ["Value"]
       85 GETTABLEKS                       R11 R0 K7 ["InputBuilderProps"]
       87 GETTABLEKS                       R10 R11 K8 ["DefaultTransition"]
       89 SETTABLEKS                       R10 R9 K24 ["DefaultValue"]
       91 SETTABLEKS                       R2 R9 K2 ["OnChanged"]
       93 DUPTABLE                         R10 K30 [{"TransitionBuilder", "IsHoveredRef"}]
       94 GETUPVAL                         R11 4
       95 SETTABLEKS                       R11 R10 K28 ["TransitionBuilder"]
       97 GETTABLEKS                       R11 R0 K29 ["IsHoveredRef"]
       99 SETTABLEKS                       R11 R10 K29 ["IsHoveredRef"]
      101 SETTABLEKS                       R10 R9 K25 ["ExtraProps"]
      103 CALL                             R8 1 1
      104 SETTABLEKS                       R8 R7 K6 ["Transition"]
      106 GETTABLEKS                       R8 R1 K19 ["nextProperty"]
      108 DUPTABLE                         R9 K32 [{"Name", "Label", "Type", "Value", "OnChanged", "HidePin"}]
      109 LOADK                            R10 K15 ["Trigger"]
      110 SETTABLEKS                       R10 R9 K20 ["Name"]
      112 LOADK                            R10 K15 ["Trigger"]
      113 SETTABLEKS                       R10 R9 K21 ["Label"]
      115 LOADK                            R10 K33 ["Boolean"]
      116 SETTABLEKS                       R10 R9 K23 ["Type"]
      118 GETTABLEKS                       R13 R0 K3 ["Input"]
      120 GETTABLEKS                       R12 R13 K5 ["Value"]
      122 GETTABLEKS                       R11 R12 K15 ["Trigger"]
      124 ORK                              R10 R11 K27 []
      125 SETTABLEKS                       R10 R9 K5 ["Value"]
      127 SETTABLEKS                       R2 R9 K2 ["OnChanged"]
      129 GETUPVAL                         R10 5
      130 CALL                             R10 0 1
      131 SETTABLEKS                       R10 R9 K31 ["HidePin"]
      133 CALL                             R8 1 1
      134 SETTABLEKS                       R8 R7 K15 ["Trigger"]
      136 JUMPIFNOT                        R3 ; [+25]
      137 GETTABLEKS                       R8 R1 K19 ["nextProperty"]
      139 DUPTABLE                         R9 K34 [{"Name", "Label", "Type", "Value", "OnChanged"}]
      140 LOADK                            R10 K16 ["InterruptibleTrigger"]
      141 SETTABLEKS                       R10 R9 K20 ["Name"]
      143 LOADK                            R10 K35 ["Interruptible Trigger"]
      144 SETTABLEKS                       R10 R9 K21 ["Label"]
      146 LOADK                            R10 K33 ["Boolean"]
      147 SETTABLEKS                       R10 R9 K23 ["Type"]
      149 GETTABLEKS                       R13 R0 K3 ["Input"]
      151 GETTABLEKS                       R12 R13 K5 ["Value"]
      153 GETTABLEKS                       R11 R12 K16 ["InterruptibleTrigger"]
      155 ORK                              R10 R11 K27 []
      156 SETTABLEKS                       R10 R9 K5 ["Value"]
      158 SETTABLEKS                       R2 R9 K2 ["OnChanged"]
      160 CALL                             R8 1 1
      161 JUMP                             ; [+1]
      162 LOADNIL                          R8
      163 SETTABLEKS                       R8 R7 K16 ["InterruptibleTrigger"]
      165 GETUPVAL                         R9 1
      166 GETTABLEKS                       R8 R9 K9 ["createElement"]
      168 LOADK                            R9 K36 ["Folder"]
      169 NEWTABLE                         R10 0 0
      171 DUPTABLE                         R11 K38 [{"RenderedPinInput"}]
      172 GETUPVAL                         R13 1
      173 GETTABLEKS                       R12 R13 K9 ["createElement"]
      175 GETUPVAL                         R13 6
      176 DUPTABLE                         R14 K45 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName", "pinValue"}]
      177 GETIMPORT                        R15 K48 [UDim2.fromOffset]
      179 LOADN                            R16 255
      180 LOADN                            R17 14
      181 CALL                             R15 2 1
      182 SETTABLEKS                       R15 R14 K39 ["Position"]
      184 LOADK                            R15 K3 ["Input"]
      185 SETTABLEKS                       R15 R14 K40 ["pinSide"]
      187 LOADK                            R15 K49 ["Animation"]
      188 SETTABLEKS                       R15 R14 K41 ["pinDataType"]
      190 GETTABLEKS                       R15 R0 K50 ["NodeId"]
      192 SETTABLEKS                       R15 R14 K42 ["pinNodeId"]
      194 GETTABLEKS                       R16 R0 K3 ["Input"]
      196 GETTABLEKS                       R15 R16 K20 ["Name"]
      198 SETTABLEKS                       R15 R14 K43 ["pinName"]
      200 GETTABLEKS                       R16 R0 K3 ["Input"]
      202 GETTABLEKS                       R15 R16 K5 ["Value"]
      204 SETTABLEKS                       R15 R14 K44 ["pinValue"]
      206 CALL                             R12 2 1
      207 SETTABLEKS                       R12 R11 K37 ["RenderedPinInput"]
      209 CALL                             R8 3 1
      210 SETTABLEKS                       R8 R7 K17 ["PinChildren"]
      212 CALL                             R4 3 -1
      213 RETURN                           R4 -1

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
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R10 R0 K21 ["Flags"]
       74 GETTABLEKS                       R9 R10 K22 ["getFFlagAnimGraphUI_HideInputLabelParameterPins"]
       76 CALL                             R8 1 1
       77 DUPCLOSURE                       R9 K23 [PROTO_2]
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R7
       85 RETURN                           R9 1
