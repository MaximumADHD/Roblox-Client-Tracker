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
       56 DUPTABLE                         R7 K19 [{"Transition", "Trigger", "InterruptibleTrigger", "PinChildren"}]
       57 GETTABLEKS                       R8 R1 K20 ["nextProperty"]
       59 DUPTABLE                         R9 K27 [{"Name", "Label", "Weight", "Type", "Value", "DefaultValue", "OnChanged", "ExtraProps"}]
       60 LOADK                            R10 K7 ["Transition"]
       61 SETTABLEKS                       R10 R9 K21 ["Name"]
       63 GETTABLEKS                       R10 R0 K4 ["Input"]
       65 GETTABLEKS                       R10 R10 K21 ["Name"]
       67 SETTABLEKS                       R10 R9 K22 ["Label"]
       69 GETTABLEKS                       R10 R0 K4 ["Input"]
       71 GETTABLEKS                       R10 R10 K23 ["Weight"]
       73 SETTABLEKS                       R10 R9 K23 ["Weight"]
       75 LOADK                            R10 K7 ["Transition"]
       76 SETTABLEKS                       R10 R9 K24 ["Type"]
       78 GETTABLEKS                       R11 R0 K4 ["Input"]
       80 GETTABLEKS                       R11 R11 K6 ["Value"]
       82 GETTABLEKS                       R11 R11 K7 ["Transition"]
       84 ORK                              R10 R11 K28 []
       85 SETTABLEKS                       R10 R9 K6 ["Value"]
       87 GETTABLEKS                       R10 R0 K8 ["InputBuilderProps"]
       89 GETTABLEKS                       R10 R10 K9 ["DefaultTransition"]
       91 SETTABLEKS                       R10 R9 K25 ["DefaultValue"]
       93 SETTABLEKS                       R2 R9 K3 ["OnChanged"]
       95 DUPTABLE                         R10 K31 [{"TransitionBuilder", "IsHoveredRef"}]
       96 GETUPVAL                         R11 4
       97 SETTABLEKS                       R11 R10 K29 ["TransitionBuilder"]
       99 GETTABLEKS                       R11 R0 K30 ["IsHoveredRef"]
      101 SETTABLEKS                       R11 R10 K30 ["IsHoveredRef"]
      103 SETTABLEKS                       R10 R9 K26 ["ExtraProps"]
      105 CALL                             R8 1 1
      106 SETTABLEKS                       R8 R7 K7 ["Transition"]
      108 GETTABLEKS                       R8 R1 K20 ["nextProperty"]
      110 DUPTABLE                         R9 K33 [{"Name", "Label", "Type", "Value", "OnChanged", "PinDynamicIndex"}]
      111 LOADK                            R10 K16 ["Trigger"]
      112 SETTABLEKS                       R10 R9 K21 ["Name"]
      114 LOADK                            R10 K16 ["Trigger"]
      115 SETTABLEKS                       R10 R9 K22 ["Label"]
      117 LOADK                            R10 K34 ["Boolean"]
      118 SETTABLEKS                       R10 R9 K24 ["Type"]
      120 GETTABLEKS                       R11 R0 K4 ["Input"]
      122 GETTABLEKS                       R11 R11 K6 ["Value"]
      124 GETTABLEKS                       R11 R11 K16 ["Trigger"]
      126 ORK                              R10 R11 K28 []
      127 SETTABLEKS                       R10 R9 K6 ["Value"]
      129 SETTABLEKS                       R2 R9 K3 ["OnChanged"]
      131 GETUPVAL                         R11 5
      132 CALL                             R11 0 1
      133 JUMPIFNOT                        R11 ; [+3]
      134 GETTABLEKS                       R10 R0 K35 ["InputIndex"]
      136 JUMP                             ; [+1]
      137 LOADNIL                          R10
      138 SETTABLEKS                       R10 R9 K32 ["PinDynamicIndex"]
      140 CALL                             R8 1 1
      141 SETTABLEKS                       R8 R7 K16 ["Trigger"]
      143 JUMPIFNOT                        R3 ; [+25]
      144 GETTABLEKS                       R8 R1 K20 ["nextProperty"]
      146 DUPTABLE                         R9 K36 [{"Name", "Label", "Type", "Value", "OnChanged"}]
      147 LOADK                            R10 K17 ["InterruptibleTrigger"]
      148 SETTABLEKS                       R10 R9 K21 ["Name"]
      150 LOADK                            R10 K37 ["Interruptible Trigger"]
      151 SETTABLEKS                       R10 R9 K22 ["Label"]
      153 LOADK                            R10 K34 ["Boolean"]
      154 SETTABLEKS                       R10 R9 K24 ["Type"]
      156 GETTABLEKS                       R11 R0 K4 ["Input"]
      158 GETTABLEKS                       R11 R11 K6 ["Value"]
      160 GETTABLEKS                       R11 R11 K17 ["InterruptibleTrigger"]
      162 ORK                              R10 R11 K28 []
      163 SETTABLEKS                       R10 R9 K6 ["Value"]
      165 SETTABLEKS                       R2 R9 K3 ["OnChanged"]
      167 CALL                             R8 1 1
      168 JUMP                             ; [+1]
      169 LOADNIL                          R8
      170 SETTABLEKS                       R8 R7 K17 ["InterruptibleTrigger"]
      172 GETUPVAL                         R8 1
      173 GETTABLEKS                       R8 R8 K10 ["createElement"]
      175 LOADK                            R9 K38 ["Folder"]
      176 NEWTABLE                         R10 0 0
      178 DUPTABLE                         R11 K40 [{"RenderedPinInput"}]
      179 GETUPVAL                         R12 1
      180 GETTABLEKS                       R12 R12 K10 ["createElement"]
      182 GETUPVAL                         R13 0
      183 GETTABLEKS                       R13 R13 K41 ["RenderedCompositorPin"]
      185 DUPTABLE                         R14 K49 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName", "pinValue", "pinDynamicIndex"}]
      186 GETIMPORT                        R15 K52 [UDim2.fromOffset]
      188 LOADN                            R16 255
      189 LOADN                            R17 14
      190 CALL                             R15 2 1
      191 SETTABLEKS                       R15 R14 K42 ["Position"]
      193 LOADK                            R15 K4 ["Input"]
      194 SETTABLEKS                       R15 R14 K43 ["pinSide"]
      196 GETUPVAL                         R15 0
      197 GETTABLEKS                       R15 R15 K53 ["DEFAULT_PIN_DATA_TYPE"]
      199 SETTABLEKS                       R15 R14 K44 ["pinDataType"]
      201 GETTABLEKS                       R15 R0 K54 ["NodeId"]
      203 SETTABLEKS                       R15 R14 K45 ["pinNodeId"]
      205 GETTABLEKS                       R15 R0 K4 ["Input"]
      207 GETTABLEKS                       R15 R15 K21 ["Name"]
      209 SETTABLEKS                       R15 R14 K46 ["pinName"]
      211 GETTABLEKS                       R15 R0 K4 ["Input"]
      213 GETTABLEKS                       R15 R15 K6 ["Value"]
      215 SETTABLEKS                       R15 R14 K47 ["pinValue"]
      217 GETUPVAL                         R16 5
      218 CALL                             R16 0 1
      219 JUMPIFNOT                        R16 ; [+3]
      220 GETTABLEKS                       R15 R0 K35 ["InputIndex"]
      222 JUMP                             ; [+1]
      223 LOADNIL                          R15
      224 SETTABLEKS                       R15 R14 K48 ["pinDynamicIndex"]
      226 CALL                             R12 2 1
      227 SETTABLEKS                       R12 R11 K39 ["RenderedPinInput"]
      229 CALL                             R8 3 1
      230 SETTABLEKS                       R8 R7 K18 ["PinChildren"]
      232 CALL                             R4 3 -1
      233 RETURN                           R4 -1

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
       41 GETTABLEKS                       R6 R0 K9 ["Components"]
       43 GETTABLEKS                       R6 R6 K10 ["NodeView"]
       45 GETTABLEKS                       R6 R6 K14 ["CompositorNodeTransition"]
       47 GETTABLEKS                       R6 R6 K15 ["PrioritySelectTransition"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Parent"]
       54 GETTABLEKS                       R7 R7 K16 ["React"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K17 ["Flags"]
       61 GETTABLEKS                       R8 R8 K18 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
       63 CALL                             R7 1 1
       64 DUPCLOSURE                       R8 K19 [PROTO_2]
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R7
       71 RETURN                           R8 1
