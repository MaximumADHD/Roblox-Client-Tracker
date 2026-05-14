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
       15 GETTABLEKS                       R1 R1 K3 ["Interruptible"]
       17 GETIMPORT                        R2 K7 [Enum.AnimationNodeInterruptible.Trigger]
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
       35 GETTABLEKS                       R1 R1 K3 ["Interruptible"]
       37 GETIMPORT                        R2 K7 [Enum.AnimationNodeInterruptible.Trigger]
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
       54 DUPTABLE                         R7 K18 [{"Transition", "Trigger", "InterruptibleTrigger", "PinChildren"}]
       55 GETTABLEKS                       R8 R1 K19 ["nextProperty"]
       57 DUPTABLE                         R9 K26 [{"Name", "Label", "Weight", "Type", "Value", "DefaultValue", "OnChanged", "ExtraProps"}]
       58 LOADK                            R10 K6 ["Transition"]
       59 SETTABLEKS                       R10 R9 K20 ["Name"]
       61 GETTABLEKS                       R10 R0 K3 ["Input"]
       63 GETTABLEKS                       R10 R10 K20 ["Name"]
       65 SETTABLEKS                       R10 R9 K21 ["Label"]
       67 GETTABLEKS                       R10 R0 K3 ["Input"]
       69 GETTABLEKS                       R10 R10 K22 ["Weight"]
       71 SETTABLEKS                       R10 R9 K22 ["Weight"]
       73 LOADK                            R10 K6 ["Transition"]
       74 SETTABLEKS                       R10 R9 K23 ["Type"]
       76 GETTABLEKS                       R11 R0 K3 ["Input"]
       78 GETTABLEKS                       R11 R11 K5 ["Value"]
       80 GETTABLEKS                       R11 R11 K6 ["Transition"]
       82 ORK                              R10 R11 K27 []
       83 SETTABLEKS                       R10 R9 K5 ["Value"]
       85 GETTABLEKS                       R10 R0 K7 ["InputBuilderProps"]
       87 GETTABLEKS                       R10 R10 K8 ["DefaultTransition"]
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
      108 DUPTABLE                         R9 K33 [{"Name", "Label", "Type", "Value", "OnChanged", "HidePin", "PinDynamicIndex"}]
      109 LOADK                            R10 K15 ["Trigger"]
      110 SETTABLEKS                       R10 R9 K20 ["Name"]
      112 LOADK                            R10 K15 ["Trigger"]
      113 SETTABLEKS                       R10 R9 K21 ["Label"]
      115 LOADK                            R10 K34 ["Boolean"]
      116 SETTABLEKS                       R10 R9 K23 ["Type"]
      118 GETTABLEKS                       R11 R0 K3 ["Input"]
      120 GETTABLEKS                       R11 R11 K5 ["Value"]
      122 GETTABLEKS                       R11 R11 K15 ["Trigger"]
      124 ORK                              R10 R11 K27 []
      125 SETTABLEKS                       R10 R9 K5 ["Value"]
      127 SETTABLEKS                       R2 R9 K2 ["OnChanged"]
      129 GETUPVAL                         R10 5
      130 CALL                             R10 0 1
      131 SETTABLEKS                       R10 R9 K31 ["HidePin"]
      133 GETUPVAL                         R11 6
      134 CALL                             R11 0 1
      135 JUMPIFNOT                        R11 ; [+3]
      136 GETTABLEKS                       R10 R0 K35 ["InputIndex"]
      138 JUMP                             ; [+1]
      139 LOADNIL                          R10
      140 SETTABLEKS                       R10 R9 K32 ["PinDynamicIndex"]
      142 CALL                             R8 1 1
      143 SETTABLEKS                       R8 R7 K15 ["Trigger"]
      145 JUMPIFNOT                        R3 ; [+25]
      146 GETTABLEKS                       R8 R1 K19 ["nextProperty"]
      148 DUPTABLE                         R9 K36 [{"Name", "Label", "Type", "Value", "OnChanged"}]
      149 LOADK                            R10 K16 ["InterruptibleTrigger"]
      150 SETTABLEKS                       R10 R9 K20 ["Name"]
      152 LOADK                            R10 K37 ["Interruptible Trigger"]
      153 SETTABLEKS                       R10 R9 K21 ["Label"]
      155 LOADK                            R10 K34 ["Boolean"]
      156 SETTABLEKS                       R10 R9 K23 ["Type"]
      158 GETTABLEKS                       R11 R0 K3 ["Input"]
      160 GETTABLEKS                       R11 R11 K5 ["Value"]
      162 GETTABLEKS                       R11 R11 K16 ["InterruptibleTrigger"]
      164 ORK                              R10 R11 K27 []
      165 SETTABLEKS                       R10 R9 K5 ["Value"]
      167 SETTABLEKS                       R2 R9 K2 ["OnChanged"]
      169 CALL                             R8 1 1
      170 JUMP                             ; [+1]
      171 LOADNIL                          R8
      172 SETTABLEKS                       R8 R7 K16 ["InterruptibleTrigger"]
      174 GETUPVAL                         R8 1
      175 GETTABLEKS                       R8 R8 K9 ["createElement"]
      177 LOADK                            R9 K38 ["Folder"]
      178 NEWTABLE                         R10 0 0
      180 DUPTABLE                         R11 K40 [{"RenderedPinInput"}]
      181 GETUPVAL                         R12 1
      182 GETTABLEKS                       R12 R12 K9 ["createElement"]
      184 GETUPVAL                         R13 7
      185 DUPTABLE                         R14 K48 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName", "pinValue", "pinDynamicIndex"}]
      186 GETIMPORT                        R15 K51 [UDim2.fromOffset]
      188 LOADN                            R16 255
      189 LOADN                            R17 14
      190 CALL                             R15 2 1
      191 SETTABLEKS                       R15 R14 K41 ["Position"]
      193 LOADK                            R15 K3 ["Input"]
      194 SETTABLEKS                       R15 R14 K42 ["pinSide"]
      196 LOADK                            R15 K52 ["Animation"]
      197 SETTABLEKS                       R15 R14 K43 ["pinDataType"]
      199 GETTABLEKS                       R15 R0 K53 ["NodeId"]
      201 SETTABLEKS                       R15 R14 K44 ["pinNodeId"]
      203 GETTABLEKS                       R15 R0 K3 ["Input"]
      205 GETTABLEKS                       R15 R15 K20 ["Name"]
      207 SETTABLEKS                       R15 R14 K45 ["pinName"]
      209 GETTABLEKS                       R15 R0 K3 ["Input"]
      211 GETTABLEKS                       R15 R15 K5 ["Value"]
      213 SETTABLEKS                       R15 R14 K46 ["pinValue"]
      215 GETUPVAL                         R16 6
      216 CALL                             R16 0 1
      217 JUMPIFNOT                        R16 ; [+3]
      218 GETTABLEKS                       R15 R0 K35 ["InputIndex"]
      220 JUMP                             ; [+1]
      221 LOADNIL                          R15
      222 SETTABLEKS                       R15 R14 K47 ["pinDynamicIndex"]
      224 CALL                             R12 2 1
      225 SETTABLEKS                       R12 R11 K39 ["RenderedPinInput"]
      227 CALL                             R8 3 1
      228 SETTABLEKS                       R8 R7 K17 ["PinChildren"]
      230 CALL                             R4 3 -1
      231 RETURN                           R4 -1

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
       43 GETTABLEKS                       R6 R0 K12 ["Components"]
       45 GETTABLEKS                       R6 R6 K13 ["NodeView"]
       47 GETTABLEKS                       R6 R6 K16 ["CompositorNodeTransition"]
       49 GETTABLEKS                       R6 R6 K17 ["PrioritySelectTransition"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K9 ["Parent"]
       56 GETTABLEKS                       R7 R7 K18 ["React"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K12 ["Components"]
       63 GETTABLEKS                       R8 R8 K13 ["NodeView"]
       65 GETTABLEKS                       R8 R8 K19 ["CompositorNodes"]
       67 GETTABLEKS                       R8 R8 K20 ["RenderedCompositorPin"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K21 ["Flags"]
       74 GETTABLEKS                       R9 R9 K22 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K21 ["Flags"]
       81 GETTABLEKS                       R10 R10 K23 ["getFFlagAnimGraphUI_HideInputLabelParameterPins"]
       83 CALL                             R9 1 1
       84 DUPCLOSURE                       R10 K24 [PROTO_2]
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R7
       93 RETURN                           R10 1
