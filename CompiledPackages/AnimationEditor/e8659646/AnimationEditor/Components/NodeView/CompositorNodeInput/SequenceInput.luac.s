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
       95 DUPTABLE                         R10 K31 [{"TransitionBuilder", "IsHoveredRef", "OnDelete"}]
       96 GETUPVAL                         R11 4
       97 SETTABLEKS                       R11 R10 K28 ["TransitionBuilder"]
       99 GETTABLEKS                       R11 R0 K29 ["IsHoveredRef"]
      101 SETTABLEKS                       R11 R10 K29 ["IsHoveredRef"]
      103 GETUPVAL                         R12 5
      104 CALL                             R12 0 1
      105 JUMPIFNOT                        R12 ; [+3]
      106 GETTABLEKS                       R11 R0 K30 ["OnDelete"]
      108 JUMP                             ; [+1]
      109 LOADNIL                          R11
      110 SETTABLEKS                       R11 R10 K30 ["OnDelete"]
      112 SETTABLEKS                       R10 R9 K25 ["ExtraProps"]
      114 CALL                             R8 1 1
      115 SETTABLEKS                       R8 R7 K7 ["Transition"]
      117 JUMPIFNOT                        R3 ; [+33]
      118 GETTABLEKS                       R8 R1 K19 ["nextProperty"]
      120 DUPTABLE                         R9 K33 [{"Name", "Label", "Type", "Value", "OnChanged", "PinDynamicIndex"}]
      121 LOADK                            R10 K34 ["WaitForTrigger"]
      122 SETTABLEKS                       R10 R9 K20 ["Name"]
      124 LOADK                            R10 K16 ["Trigger"]
      125 SETTABLEKS                       R10 R9 K21 ["Label"]
      127 LOADK                            R10 K35 ["Boolean"]
      128 SETTABLEKS                       R10 R9 K23 ["Type"]
      130 GETTABLEKS                       R11 R0 K4 ["Input"]
      132 GETTABLEKS                       R11 R11 K6 ["Value"]
      134 GETTABLEKS                       R11 R11 K34 ["WaitForTrigger"]
      136 ORK                              R10 R11 K27 []
      137 SETTABLEKS                       R10 R9 K6 ["Value"]
      139 SETTABLEKS                       R2 R9 K3 ["OnChanged"]
      141 GETUPVAL                         R11 6
      142 JUMPIFNOT                        R11 ; [+3]
      143 GETTABLEKS                       R10 R0 K36 ["InputIndex"]
      145 JUMP                             ; [+1]
      146 LOADNIL                          R10
      147 SETTABLEKS                       R10 R9 K32 ["PinDynamicIndex"]
      149 CALL                             R8 1 1
      150 JUMP                             ; [+1]
      151 LOADNIL                          R8
      152 SETTABLEKS                       R8 R7 K16 ["Trigger"]
      154 GETUPVAL                         R8 1
      155 GETTABLEKS                       R8 R8 K10 ["createElement"]
      157 LOADK                            R9 K37 ["Folder"]
      158 NEWTABLE                         R10 0 0
      160 DUPTABLE                         R11 K39 [{"RenderedPinInput"}]
      161 GETUPVAL                         R12 1
      162 GETTABLEKS                       R12 R12 K10 ["createElement"]
      164 GETUPVAL                         R13 0
      165 GETTABLEKS                       R13 R13 K40 ["RenderedCompositorPin"]
      167 DUPTABLE                         R14 K48 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName", "pinValue", "pinDynamicIndex"}]
      168 GETIMPORT                        R15 K51 [UDim2.fromOffset]
      170 LOADN                            R16 255
      171 LOADN                            R17 14
      172 CALL                             R15 2 1
      173 SETTABLEKS                       R15 R14 K41 ["Position"]
      175 LOADK                            R15 K4 ["Input"]
      176 SETTABLEKS                       R15 R14 K42 ["pinSide"]
      178 GETUPVAL                         R15 0
      179 GETTABLEKS                       R15 R15 K52 ["DEFAULT_PIN_DATA_TYPE"]
      181 SETTABLEKS                       R15 R14 K43 ["pinDataType"]
      183 GETTABLEKS                       R15 R0 K53 ["NodeId"]
      185 SETTABLEKS                       R15 R14 K44 ["pinNodeId"]
      187 GETTABLEKS                       R15 R0 K4 ["Input"]
      189 GETTABLEKS                       R15 R15 K20 ["Name"]
      191 SETTABLEKS                       R15 R14 K45 ["pinName"]
      193 GETTABLEKS                       R15 R0 K4 ["Input"]
      195 GETTABLEKS                       R15 R15 K6 ["Value"]
      197 SETTABLEKS                       R15 R14 K46 ["pinValue"]
      199 GETUPVAL                         R16 6
      200 JUMPIFNOT                        R16 ; [+3]
      201 GETTABLEKS                       R15 R0 K36 ["InputIndex"]
      203 JUMP                             ; [+1]
      204 LOADNIL                          R15
      205 SETTABLEKS                       R15 R14 K47 ["pinDynamicIndex"]
      207 CALL                             R12 2 1
      208 SETTABLEKS                       R12 R11 K38 ["RenderedPinInput"]
      210 CALL                             R8 3 1
      211 SETTABLEKS                       R8 R7 K17 ["PinChildren"]
      213 CALL                             R4 3 -1
      214 RETURN                           R4 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R3 K9 ["FFlagAnimGraphUI_FixSequenceParameters"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K13 ["CompositorNodeInput"]
       36 GETTABLEKS                       R5 R5 K14 ["InputPanelTypes"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Parent"]
       43 GETTABLEKS                       R6 R6 K15 ["NodeGraphing"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Parent"]
       50 GETTABLEKS                       R7 R7 K16 ["React"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K11 ["Components"]
       57 GETTABLEKS                       R8 R8 K12 ["NodeView"]
       59 GETTABLEKS                       R8 R8 K17 ["CompositorNodeTransition"]
       61 GETTABLEKS                       R8 R8 K18 ["SequenceTransition"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K8 ["Flags"]
       68 GETTABLEKS                       R9 R9 K19 ["getFFlagAnimGraphUIDeleteInput"]
       70 CALL                             R8 1 1
       71 DUPCLOSURE                       R9 K20 [PROTO_2]
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R2
       79 RETURN                           R9 1
