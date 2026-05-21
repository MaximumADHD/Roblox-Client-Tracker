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
       21 GETTABLEKS                       R3 R3 K4 ["createElement"]
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R4 R4 K5 ["View"]
       26 DUPTABLE                         R5 K8 [{"tag", "LayoutOrder"}]
       27 LOADK                            R6 K9 ["col auto-y gap-none size-full-700"]
       28 SETTABLEKS                       R6 R5 K6 ["tag"]
       30 GETTABLEKS                       R6 R0 K7 ["LayoutOrder"]
       32 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       34 DUPTABLE                         R6 K13 [{"Transition", "Weight", "PinChildren"}]
       35 GETTABLEKS                       R7 R1 K14 ["nextProperty"]
       37 DUPTABLE                         R8 K21 [{"Name", "Label", "Weight", "Type", "Value", "DefaultValue", "OnChanged", "ExtraProps"}]
       38 LOADK                            R9 K10 ["Transition"]
       39 SETTABLEKS                       R9 R8 K15 ["Name"]
       41 GETTABLEKS                       R9 R0 K3 ["Input"]
       43 GETTABLEKS                       R9 R9 K15 ["Name"]
       45 SETTABLEKS                       R9 R8 K16 ["Label"]
       47 GETTABLEKS                       R9 R0 K3 ["Input"]
       49 GETTABLEKS                       R9 R9 K11 ["Weight"]
       51 SETTABLEKS                       R9 R8 K11 ["Weight"]
       53 LOADK                            R9 K10 ["Transition"]
       54 SETTABLEKS                       R9 R8 K17 ["Type"]
       56 GETTABLEKS                       R9 R0 K3 ["Input"]
       58 GETTABLEKS                       R9 R9 K18 ["Value"]
       60 GETTABLEKS                       R9 R9 K10 ["Transition"]
       62 SETTABLEKS                       R9 R8 K18 ["Value"]
       64 GETTABLEKS                       R9 R0 K22 ["InputBuilderProps"]
       66 GETTABLEKS                       R9 R9 K23 ["DefaultTransition"]
       68 SETTABLEKS                       R9 R8 K19 ["DefaultValue"]
       70 SETTABLEKS                       R2 R8 K2 ["OnChanged"]
       72 DUPTABLE                         R9 K26 [{"TransitionBuilder", "IsHoveredRef"}]
       73 GETUPVAL                         R10 4
       74 SETTABLEKS                       R10 R9 K24 ["TransitionBuilder"]
       76 GETTABLEKS                       R10 R0 K25 ["IsHoveredRef"]
       78 SETTABLEKS                       R10 R9 K25 ["IsHoveredRef"]
       80 SETTABLEKS                       R9 R8 K20 ["ExtraProps"]
       82 CALL                             R7 1 1
       83 SETTABLEKS                       R7 R6 K10 ["Transition"]
       85 GETTABLEKS                       R7 R1 K14 ["nextProperty"]
       87 DUPTABLE                         R8 K30 [{"Name", "Label", "Type", "Value", "OnChanged", "Default", "HidePin", "PinDynamicIndex"}]
       88 LOADK                            R9 K11 ["Weight"]
       89 SETTABLEKS                       R9 R8 K15 ["Name"]
       91 GETTABLEKS                       R10 R0 K3 ["Input"]
       93 GETTABLEKS                       R10 R10 K15 ["Name"]
       95 LOADK                            R11 K31 [" weight"]
       96 CONCAT                           R9 R10 R11
       97 SETTABLEKS                       R9 R8 K16 ["Label"]
       99 LOADK                            R9 K32 ["Number"]
      100 SETTABLEKS                       R9 R8 K17 ["Type"]
      102 GETTABLEKS                       R9 R0 K3 ["Input"]
      104 GETTABLEKS                       R9 R9 K18 ["Value"]
      106 GETTABLEKS                       R9 R9 K11 ["Weight"]
      108 SETTABLEKS                       R9 R8 K18 ["Value"]
      110 SETTABLEKS                       R2 R8 K2 ["OnChanged"]
      112 LOADN                            R9 1
      113 SETTABLEKS                       R9 R8 K27 ["Default"]
      115 GETUPVAL                         R9 5
      116 CALL                             R9 0 1
      117 SETTABLEKS                       R9 R8 K28 ["HidePin"]
      119 GETUPVAL                         R10 6
      120 CALL                             R10 0 1
      121 JUMPIFNOT                        R10 ; [+3]
      122 GETTABLEKS                       R9 R0 K33 ["InputIndex"]
      124 JUMP                             ; [+1]
      125 LOADNIL                          R9
      126 SETTABLEKS                       R9 R8 K29 ["PinDynamicIndex"]
      128 CALL                             R7 1 1
      129 SETTABLEKS                       R7 R6 K11 ["Weight"]
      131 GETUPVAL                         R7 1
      132 GETTABLEKS                       R7 R7 K4 ["createElement"]
      134 LOADK                            R8 K34 ["Folder"]
      135 NEWTABLE                         R9 0 0
      137 DUPTABLE                         R10 K36 [{"RenderedPinInput"}]
      138 GETUPVAL                         R11 1
      139 GETTABLEKS                       R11 R11 K4 ["createElement"]
      141 GETUPVAL                         R12 7
      142 DUPTABLE                         R13 K44 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName", "pinValue", "pinDynamicIndex"}]
      143 GETIMPORT                        R14 K47 [UDim2.fromOffset]
      145 LOADN                            R15 255
      146 LOADN                            R16 14
      147 CALL                             R14 2 1
      148 SETTABLEKS                       R14 R13 K37 ["Position"]
      150 LOADK                            R14 K3 ["Input"]
      151 SETTABLEKS                       R14 R13 K38 ["pinSide"]
      153 LOADK                            R14 K48 ["Animation"]
      154 SETTABLEKS                       R14 R13 K39 ["pinDataType"]
      156 GETTABLEKS                       R14 R0 K49 ["NodeId"]
      158 SETTABLEKS                       R14 R13 K40 ["pinNodeId"]
      160 GETTABLEKS                       R14 R0 K3 ["Input"]
      162 GETTABLEKS                       R14 R14 K15 ["Name"]
      164 SETTABLEKS                       R14 R13 K41 ["pinName"]
      166 GETTABLEKS                       R14 R0 K3 ["Input"]
      168 GETTABLEKS                       R14 R14 K18 ["Value"]
      170 SETTABLEKS                       R14 R13 K42 ["pinValue"]
      172 GETUPVAL                         R15 6
      173 CALL                             R15 0 1
      174 JUMPIFNOT                        R15 ; [+3]
      175 GETTABLEKS                       R14 R0 K33 ["InputIndex"]
      177 JUMP                             ; [+1]
      178 LOADNIL                          R14
      179 SETTABLEKS                       R14 R13 K43 ["pinDynamicIndex"]
      181 CALL                             R11 2 1
      182 SETTABLEKS                       R11 R10 K35 ["RenderedPinInput"]
      184 CALL                             R7 3 1
      185 SETTABLEKS                       R7 R6 K12 ["PinChildren"]
      187 CALL                             R3 3 -1
      188 RETURN                           R3 -1

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
       49 GETTABLEKS                       R6 R6 K17 ["RandomSequenceTransition"]
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
       84 DUPCLOSURE                       R10 K24 [PROTO_1]
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R7
       93 RETURN                           R10 1
