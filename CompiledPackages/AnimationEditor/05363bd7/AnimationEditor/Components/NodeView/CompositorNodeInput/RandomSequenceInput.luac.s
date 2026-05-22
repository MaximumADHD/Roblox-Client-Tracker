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
       23 GETTABLEKS                       R3 R3 K5 ["createElement"]
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K6 ["View"]
       28 DUPTABLE                         R5 K9 [{"tag", "LayoutOrder"}]
       29 LOADK                            R6 K10 ["col auto-y gap-none size-full-700"]
       30 SETTABLEKS                       R6 R5 K7 ["tag"]
       32 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       34 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       36 DUPTABLE                         R6 K14 [{"Transition", "Weight", "PinChildren"}]
       37 GETTABLEKS                       R7 R1 K15 ["nextProperty"]
       39 DUPTABLE                         R8 K22 [{"Name", "Label", "Weight", "Type", "Value", "DefaultValue", "OnChanged", "ExtraProps"}]
       40 LOADK                            R9 K11 ["Transition"]
       41 SETTABLEKS                       R9 R8 K16 ["Name"]
       43 GETTABLEKS                       R9 R0 K4 ["Input"]
       45 GETTABLEKS                       R9 R9 K16 ["Name"]
       47 SETTABLEKS                       R9 R8 K17 ["Label"]
       49 GETTABLEKS                       R9 R0 K4 ["Input"]
       51 GETTABLEKS                       R9 R9 K12 ["Weight"]
       53 SETTABLEKS                       R9 R8 K12 ["Weight"]
       55 LOADK                            R9 K11 ["Transition"]
       56 SETTABLEKS                       R9 R8 K18 ["Type"]
       58 GETTABLEKS                       R9 R0 K4 ["Input"]
       60 GETTABLEKS                       R9 R9 K19 ["Value"]
       62 GETTABLEKS                       R9 R9 K11 ["Transition"]
       64 SETTABLEKS                       R9 R8 K19 ["Value"]
       66 GETTABLEKS                       R9 R0 K23 ["InputBuilderProps"]
       68 GETTABLEKS                       R9 R9 K24 ["DefaultTransition"]
       70 SETTABLEKS                       R9 R8 K20 ["DefaultValue"]
       72 SETTABLEKS                       R2 R8 K3 ["OnChanged"]
       74 DUPTABLE                         R9 K27 [{"TransitionBuilder", "IsHoveredRef"}]
       75 GETUPVAL                         R10 4
       76 SETTABLEKS                       R10 R9 K25 ["TransitionBuilder"]
       78 GETTABLEKS                       R10 R0 K26 ["IsHoveredRef"]
       80 SETTABLEKS                       R10 R9 K26 ["IsHoveredRef"]
       82 SETTABLEKS                       R9 R8 K21 ["ExtraProps"]
       84 CALL                             R7 1 1
       85 SETTABLEKS                       R7 R6 K11 ["Transition"]
       87 GETTABLEKS                       R7 R1 K15 ["nextProperty"]
       89 DUPTABLE                         R8 K31 [{"Name", "Label", "Type", "Value", "OnChanged", "Default", "HidePin", "PinDynamicIndex"}]
       90 LOADK                            R9 K12 ["Weight"]
       91 SETTABLEKS                       R9 R8 K16 ["Name"]
       93 GETTABLEKS                       R10 R0 K4 ["Input"]
       95 GETTABLEKS                       R10 R10 K16 ["Name"]
       97 LOADK                            R11 K32 [" weight"]
       98 CONCAT                           R9 R10 R11
       99 SETTABLEKS                       R9 R8 K17 ["Label"]
      101 LOADK                            R9 K33 ["Number"]
      102 SETTABLEKS                       R9 R8 K18 ["Type"]
      104 GETTABLEKS                       R9 R0 K4 ["Input"]
      106 GETTABLEKS                       R9 R9 K19 ["Value"]
      108 GETTABLEKS                       R9 R9 K12 ["Weight"]
      110 SETTABLEKS                       R9 R8 K19 ["Value"]
      112 SETTABLEKS                       R2 R8 K3 ["OnChanged"]
      114 LOADN                            R9 1
      115 SETTABLEKS                       R9 R8 K28 ["Default"]
      117 GETUPVAL                         R9 5
      118 CALL                             R9 0 1
      119 SETTABLEKS                       R9 R8 K29 ["HidePin"]
      121 GETUPVAL                         R10 6
      122 CALL                             R10 0 1
      123 JUMPIFNOT                        R10 ; [+3]
      124 GETTABLEKS                       R9 R0 K34 ["InputIndex"]
      126 JUMP                             ; [+1]
      127 LOADNIL                          R9
      128 SETTABLEKS                       R9 R8 K30 ["PinDynamicIndex"]
      130 CALL                             R7 1 1
      131 SETTABLEKS                       R7 R6 K12 ["Weight"]
      133 GETUPVAL                         R7 1
      134 GETTABLEKS                       R7 R7 K5 ["createElement"]
      136 LOADK                            R8 K35 ["Folder"]
      137 NEWTABLE                         R9 0 0
      139 DUPTABLE                         R10 K37 [{"RenderedPinInput"}]
      140 GETUPVAL                         R11 1
      141 GETTABLEKS                       R11 R11 K5 ["createElement"]
      143 GETUPVAL                         R12 0
      144 GETTABLEKS                       R12 R12 K38 ["RenderedCompositorPin"]
      146 DUPTABLE                         R13 K46 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName", "pinValue", "pinDynamicIndex"}]
      147 GETIMPORT                        R14 K49 [UDim2.fromOffset]
      149 LOADN                            R15 255
      150 LOADN                            R16 14
      151 CALL                             R14 2 1
      152 SETTABLEKS                       R14 R13 K39 ["Position"]
      154 LOADK                            R14 K4 ["Input"]
      155 SETTABLEKS                       R14 R13 K40 ["pinSide"]
      157 GETUPVAL                         R14 0
      158 GETTABLEKS                       R14 R14 K50 ["DEFAULT_PIN_DATA_TYPE"]
      160 SETTABLEKS                       R14 R13 K41 ["pinDataType"]
      162 GETTABLEKS                       R14 R0 K51 ["NodeId"]
      164 SETTABLEKS                       R14 R13 K42 ["pinNodeId"]
      166 GETTABLEKS                       R14 R0 K4 ["Input"]
      168 GETTABLEKS                       R14 R14 K16 ["Name"]
      170 SETTABLEKS                       R14 R13 K43 ["pinName"]
      172 GETTABLEKS                       R14 R0 K4 ["Input"]
      174 GETTABLEKS                       R14 R14 K19 ["Value"]
      176 SETTABLEKS                       R14 R13 K44 ["pinValue"]
      178 GETUPVAL                         R15 6
      179 CALL                             R15 0 1
      180 JUMPIFNOT                        R15 ; [+3]
      181 GETTABLEKS                       R14 R0 K34 ["InputIndex"]
      183 JUMP                             ; [+1]
      184 LOADNIL                          R14
      185 SETTABLEKS                       R14 R13 K45 ["pinDynamicIndex"]
      187 CALL                             R11 2 1
      188 SETTABLEKS                       R11 R10 K36 ["RenderedPinInput"]
      190 CALL                             R7 3 1
      191 SETTABLEKS                       R7 R6 K13 ["PinChildren"]
      193 CALL                             R3 3 -1
      194 RETURN                           R3 -1

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
       47 GETTABLEKS                       R6 R6 K15 ["RandomSequenceTransition"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Parent"]
       54 GETTABLEKS                       R7 R7 K16 ["React"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K17 ["Flags"]
       61 GETTABLEKS                       R8 R8 K18 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K17 ["Flags"]
       68 GETTABLEKS                       R9 R9 K19 ["getFFlagAnimGraphUI_HideInputLabelParameterPins"]
       70 CALL                             R8 1 1
       71 DUPCLOSURE                       R9 K20 [PROTO_1]
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R7
       79 RETURN                           R9 1
