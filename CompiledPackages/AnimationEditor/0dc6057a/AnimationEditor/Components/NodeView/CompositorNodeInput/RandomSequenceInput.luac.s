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
       21 GETTABLEKS                       R3 R4 K4 ["createElement"]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R4 R5 K5 ["View"]
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
       41 GETTABLEKS                       R10 R0 K3 ["Input"]
       43 GETTABLEKS                       R9 R10 K15 ["Name"]
       45 SETTABLEKS                       R9 R8 K16 ["Label"]
       47 GETTABLEKS                       R10 R0 K3 ["Input"]
       49 GETTABLEKS                       R9 R10 K11 ["Weight"]
       51 SETTABLEKS                       R9 R8 K11 ["Weight"]
       53 LOADK                            R9 K10 ["Transition"]
       54 SETTABLEKS                       R9 R8 K17 ["Type"]
       56 GETTABLEKS                       R11 R0 K3 ["Input"]
       58 GETTABLEKS                       R10 R11 K18 ["Value"]
       60 GETTABLEKS                       R9 R10 K10 ["Transition"]
       62 SETTABLEKS                       R9 R8 K18 ["Value"]
       64 GETTABLEKS                       R10 R0 K22 ["InputBuilderProps"]
       66 GETTABLEKS                       R9 R10 K23 ["DefaultTransition"]
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
       87 DUPTABLE                         R8 K29 [{"Name", "Label", "Type", "Value", "OnChanged", "Default", "HidePin"}]
       88 LOADK                            R9 K11 ["Weight"]
       89 SETTABLEKS                       R9 R8 K15 ["Name"]
       91 GETTABLEKS                       R12 R0 K3 ["Input"]
       93 GETTABLEKS                       R10 R12 K15 ["Name"]
       95 LOADK                            R11 K30 [" weight"]
       96 CONCAT                           R9 R10 R11
       97 SETTABLEKS                       R9 R8 K16 ["Label"]
       99 LOADK                            R9 K31 ["Number"]
      100 SETTABLEKS                       R9 R8 K17 ["Type"]
      102 GETTABLEKS                       R11 R0 K3 ["Input"]
      104 GETTABLEKS                       R10 R11 K18 ["Value"]
      106 GETTABLEKS                       R9 R10 K11 ["Weight"]
      108 SETTABLEKS                       R9 R8 K18 ["Value"]
      110 SETTABLEKS                       R2 R8 K2 ["OnChanged"]
      112 LOADN                            R9 1
      113 SETTABLEKS                       R9 R8 K27 ["Default"]
      115 GETUPVAL                         R9 5
      116 CALL                             R9 0 1
      117 SETTABLEKS                       R9 R8 K28 ["HidePin"]
      119 CALL                             R7 1 1
      120 SETTABLEKS                       R7 R6 K11 ["Weight"]
      122 GETUPVAL                         R8 1
      123 GETTABLEKS                       R7 R8 K4 ["createElement"]
      125 LOADK                            R8 K32 ["Folder"]
      126 NEWTABLE                         R9 0 0
      128 DUPTABLE                         R10 K34 [{"RenderedPinInput"}]
      129 GETUPVAL                         R12 1
      130 GETTABLEKS                       R11 R12 K4 ["createElement"]
      132 GETUPVAL                         R12 6
      133 DUPTABLE                         R13 K41 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName", "pinValue"}]
      134 GETIMPORT                        R14 K44 [UDim2.fromOffset]
      136 LOADN                            R15 255
      137 LOADN                            R16 14
      138 CALL                             R14 2 1
      139 SETTABLEKS                       R14 R13 K35 ["Position"]
      141 LOADK                            R14 K3 ["Input"]
      142 SETTABLEKS                       R14 R13 K36 ["pinSide"]
      144 LOADK                            R14 K45 ["Animation"]
      145 SETTABLEKS                       R14 R13 K37 ["pinDataType"]
      147 GETTABLEKS                       R14 R0 K46 ["NodeId"]
      149 SETTABLEKS                       R14 R13 K38 ["pinNodeId"]
      151 GETTABLEKS                       R15 R0 K3 ["Input"]
      153 GETTABLEKS                       R14 R15 K15 ["Name"]
      155 SETTABLEKS                       R14 R13 K39 ["pinName"]
      157 GETTABLEKS                       R15 R0 K3 ["Input"]
      159 GETTABLEKS                       R14 R15 K18 ["Value"]
      161 SETTABLEKS                       R14 R13 K40 ["pinValue"]
      163 CALL                             R11 2 1
      164 SETTABLEKS                       R11 R10 K33 ["RenderedPinInput"]
      166 CALL                             R7 3 1
      167 SETTABLEKS                       R7 R6 K12 ["PinChildren"]
      169 CALL                             R3 3 -1
      170 RETURN                           R3 -1

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
       49 GETTABLEKS                       R6 R7 K17 ["RandomSequenceTransition"]
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
       77 DUPCLOSURE                       R9 K23 [PROTO_1]
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R7
       85 RETURN                           R9 1
