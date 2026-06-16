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
       74 DUPTABLE                         R9 K28 [{"TransitionBuilder", "IsHoveredRef", "OnDelete"}]
       75 GETUPVAL                         R10 4
       76 SETTABLEKS                       R10 R9 K25 ["TransitionBuilder"]
       78 GETTABLEKS                       R10 R0 K26 ["IsHoveredRef"]
       80 SETTABLEKS                       R10 R9 K26 ["IsHoveredRef"]
       82 GETUPVAL                         R11 5
       83 CALL                             R11 0 1
       84 JUMPIFNOT                        R11 ; [+3]
       85 GETTABLEKS                       R10 R0 K27 ["OnDelete"]
       87 JUMP                             ; [+1]
       88 LOADNIL                          R10
       89 SETTABLEKS                       R10 R9 K27 ["OnDelete"]
       91 SETTABLEKS                       R9 R8 K21 ["ExtraProps"]
       93 CALL                             R7 1 1
       94 SETTABLEKS                       R7 R6 K11 ["Transition"]
       96 GETTABLEKS                       R7 R1 K15 ["nextProperty"]
       98 DUPTABLE                         R8 K31 [{"Name", "Label", "Type", "Value", "OnChanged", "Default", "PinDynamicIndex"}]
       99 LOADK                            R9 K12 ["Weight"]
      100 SETTABLEKS                       R9 R8 K16 ["Name"]
      102 GETTABLEKS                       R10 R0 K4 ["Input"]
      104 GETTABLEKS                       R10 R10 K16 ["Name"]
      106 LOADK                            R11 K32 [" weight"]
      107 CONCAT                           R9 R10 R11
      108 SETTABLEKS                       R9 R8 K17 ["Label"]
      110 LOADK                            R9 K33 ["Number"]
      111 SETTABLEKS                       R9 R8 K18 ["Type"]
      113 GETTABLEKS                       R9 R0 K4 ["Input"]
      115 GETTABLEKS                       R9 R9 K19 ["Value"]
      117 GETTABLEKS                       R9 R9 K12 ["Weight"]
      119 SETTABLEKS                       R9 R8 K19 ["Value"]
      121 SETTABLEKS                       R2 R8 K3 ["OnChanged"]
      123 LOADN                            R9 1
      124 SETTABLEKS                       R9 R8 K29 ["Default"]
      126 GETUPVAL                         R10 6
      127 CALL                             R10 0 1
      128 JUMPIFNOT                        R10 ; [+3]
      129 GETTABLEKS                       R9 R0 K34 ["InputIndex"]
      131 JUMP                             ; [+1]
      132 LOADNIL                          R9
      133 SETTABLEKS                       R9 R8 K30 ["PinDynamicIndex"]
      135 CALL                             R7 1 1
      136 SETTABLEKS                       R7 R6 K12 ["Weight"]
      138 GETUPVAL                         R7 1
      139 GETTABLEKS                       R7 R7 K5 ["createElement"]
      141 LOADK                            R8 K35 ["Folder"]
      142 NEWTABLE                         R9 0 0
      144 DUPTABLE                         R10 K37 [{"RenderedPinInput"}]
      145 GETUPVAL                         R11 1
      146 GETTABLEKS                       R11 R11 K5 ["createElement"]
      148 GETUPVAL                         R12 0
      149 GETTABLEKS                       R12 R12 K38 ["RenderedCompositorPin"]
      151 DUPTABLE                         R13 K46 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName", "pinValue", "pinDynamicIndex"}]
      152 GETIMPORT                        R14 K49 [UDim2.fromOffset]
      154 LOADN                            R15 255
      155 LOADN                            R16 14
      156 CALL                             R14 2 1
      157 SETTABLEKS                       R14 R13 K39 ["Position"]
      159 LOADK                            R14 K4 ["Input"]
      160 SETTABLEKS                       R14 R13 K40 ["pinSide"]
      162 GETUPVAL                         R14 0
      163 GETTABLEKS                       R14 R14 K50 ["DEFAULT_PIN_DATA_TYPE"]
      165 SETTABLEKS                       R14 R13 K41 ["pinDataType"]
      167 GETTABLEKS                       R14 R0 K51 ["NodeId"]
      169 SETTABLEKS                       R14 R13 K42 ["pinNodeId"]
      171 GETTABLEKS                       R14 R0 K4 ["Input"]
      173 GETTABLEKS                       R14 R14 K16 ["Name"]
      175 SETTABLEKS                       R14 R13 K43 ["pinName"]
      177 GETTABLEKS                       R14 R0 K4 ["Input"]
      179 GETTABLEKS                       R14 R14 K19 ["Value"]
      181 SETTABLEKS                       R14 R13 K44 ["pinValue"]
      183 GETUPVAL                         R15 6
      184 CALL                             R15 0 1
      185 JUMPIFNOT                        R15 ; [+3]
      186 GETTABLEKS                       R14 R0 K34 ["InputIndex"]
      188 JUMP                             ; [+1]
      189 LOADNIL                          R14
      190 SETTABLEKS                       R14 R13 K45 ["pinDynamicIndex"]
      192 CALL                             R11 2 1
      193 SETTABLEKS                       R11 R10 K36 ["RenderedPinInput"]
      195 CALL                             R7 3 1
      196 SETTABLEKS                       R7 R6 K13 ["PinChildren"]
      198 CALL                             R3 3 -1
      199 RETURN                           R3 -1

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
       61 GETTABLEKS                       R8 R8 K18 ["getFFlagAnimGraphUIDeleteInput"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K17 ["Flags"]
       68 GETTABLEKS                       R9 R9 K19 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
       70 CALL                             R8 1 1
       71 DUPCLOSURE                       R9 K20 [PROTO_1]
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R8
       79 RETURN                           R9 1
