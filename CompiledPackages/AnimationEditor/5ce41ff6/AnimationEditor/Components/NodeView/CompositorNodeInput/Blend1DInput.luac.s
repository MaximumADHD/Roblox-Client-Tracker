PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnChanged"]
        3 JUMPIFEQKNIL                     R1 ; [+17]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K0 ["OnChanged"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K1 ["join"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K2 ["Input"]
       14 GETTABLEKS                       R3 R4 K3 ["Value"]
       16 DUPTABLE                         R4 K5 [{"Position"}]
       17 SETTABLEKS                       R0 R4 K4 ["Position"]
       19 CALL                             R2 2 -1
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWTABLE                         R3 0 2
        8 GETTABLEKS                       R4 R0 K1 ["OnChanged"]
       10 GETTABLEKS                       R5 R0 K2 ["Input"]
       12 SETLIST                          R3 R4 2 [1]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K3 ["createElement"]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R3 R4 K4 ["View"]
       21 DUPTABLE                         R4 K7 [{"tag", "LayoutOrder"}]
       22 LOADK                            R5 K8 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       23 SETTABLEKS                       R5 R4 K5 ["tag"]
       25 GETTABLEKS                       R5 R0 K6 ["LayoutOrder"]
       27 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       29 DUPTABLE                         R5 K12 [{"InputLabelWeight", "Position", "PinChildren"}]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K3 ["createElement"]
       33 GETUPVAL                         R7 3
       34 DUPTABLE                         R8 K15 [{"Name", "Weight", "LayoutOrder"}]
       35 GETTABLEKS                       R10 R0 K2 ["Input"]
       37 GETTABLEKS                       R9 R10 K13 ["Name"]
       39 SETTABLEKS                       R9 R8 K13 ["Name"]
       41 GETTABLEKS                       R10 R0 K2 ["Input"]
       43 GETTABLEKS                       R9 R10 K14 ["Weight"]
       45 SETTABLEKS                       R9 R8 K14 ["Weight"]
       47 LOADN                            R9 1
       48 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       50 CALL                             R6 2 1
       51 SETTABLEKS                       R6 R5 K9 ["InputLabelWeight"]
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R6 R7 K3 ["createElement"]
       56 GETUPVAL                         R8 2
       57 GETTABLEKS                       R7 R8 K16 ["NumberInput"]
       59 DUPTABLE                         R8 K26 [{"size", "width", "label", "value", "step", "LayoutOrder", "precision", "onChanged", "controlsVariant", "isScrubbable"}]
       60 GETUPVAL                         R12 2
       61 GETTABLEKS                       R11 R12 K27 ["Enums"]
       63 GETTABLEKS                       R10 R11 K28 ["InputSize"]
       65 GETTABLEKS                       R9 R10 K29 ["XSmall"]
       67 SETTABLEKS                       R9 R8 K17 ["size"]
       69 GETIMPORT                        R9 K32 [UDim.new]
       71 LOADN                            R10 0
       72 LOADN                            R11 90
       73 CALL                             R9 2 1
       74 SETTABLEKS                       R9 R8 K18 ["width"]
       76 LOADK                            R9 K33 [""]
       77 SETTABLEKS                       R9 R8 K19 ["label"]
       79 GETTABLEKS                       R11 R0 K2 ["Input"]
       81 GETTABLEKS                       R10 R11 K34 ["Value"]
       83 GETTABLEKS                       R9 R10 K10 ["Position"]
       85 SETTABLEKS                       R9 R8 K20 ["value"]
       87 LOADN                            R9 1
       88 SETTABLEKS                       R9 R8 K21 ["step"]
       90 LOADN                            R9 2
       91 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       93 LOADN                            R9 2
       94 SETTABLEKS                       R9 R8 K22 ["precision"]
       96 SETTABLEKS                       R1 R8 K23 ["onChanged"]
       98 GETUPVAL                         R12 2
       99 GETTABLEKS                       R11 R12 K27 ["Enums"]
      101 GETTABLEKS                       R10 R11 K35 ["NumberInputControlsVariant"]
      103 GETTABLEKS                       R9 R10 K36 ["None"]
      105 SETTABLEKS                       R9 R8 K24 ["controlsVariant"]
      107 LOADB                            R9 1
      108 SETTABLEKS                       R9 R8 K25 ["isScrubbable"]
      110 CALL                             R6 2 1
      111 SETTABLEKS                       R6 R5 K10 ["Position"]
      113 GETUPVAL                         R7 0
      114 GETTABLEKS                       R6 R7 K3 ["createElement"]
      116 LOADK                            R7 K37 ["Folder"]
      117 NEWTABLE                         R8 0 0
      119 DUPTABLE                         R9 K39 [{"RenderedPinInput"}]
      120 GETUPVAL                         R11 0
      121 GETTABLEKS                       R10 R11 K3 ["createElement"]
      123 GETUPVAL                         R11 4
      124 DUPTABLE                         R12 K44 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName"}]
      125 GETIMPORT                        R13 K46 [UDim2.new]
      127 LOADN                            R14 0
      128 LOADN                            R15 247
      129 LOADK                            R16 K47 [0.5]
      130 LOADN                            R17 0
      131 CALL                             R13 4 1
      132 SETTABLEKS                       R13 R12 K10 ["Position"]
      134 LOADK                            R13 K2 ["Input"]
      135 SETTABLEKS                       R13 R12 K40 ["pinSide"]
      137 LOADK                            R13 K48 ["Animation"]
      138 SETTABLEKS                       R13 R12 K41 ["pinDataType"]
      140 GETTABLEKS                       R13 R0 K49 ["NodeId"]
      142 SETTABLEKS                       R13 R12 K42 ["pinNodeId"]
      144 GETTABLEKS                       R14 R0 K2 ["Input"]
      146 GETTABLEKS                       R13 R14 K13 ["Name"]
      148 SETTABLEKS                       R13 R12 K43 ["pinName"]
      150 CALL                             R10 2 1
      151 SETTABLEKS                       R10 R9 K38 ["RenderedPinInput"]
      153 CALL                             R6 3 1
      154 SETTABLEKS                       R6 R5 K11 ["PinChildren"]
      156 CALL                             R2 3 -1
      157 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R7 R0 K9 ["Components"]
       25 GETTABLEKS                       R6 R7 K10 ["NodeView"]
       27 GETTABLEKS                       R5 R6 K11 ["CompositorNodeInput"]
       29 GETTABLEKS                       R4 R5 K12 ["InputLabelWeight"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R8 R0 K9 ["Components"]
       36 GETTABLEKS                       R7 R8 K10 ["NodeView"]
       38 GETTABLEKS                       R6 R7 K11 ["CompositorNodeInput"]
       40 GETTABLEKS                       R5 R6 K13 ["InputPanelTypes"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R7 R0 K6 ["Parent"]
       47 GETTABLEKS                       R6 R7 K14 ["React"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R10 R0 K9 ["Components"]
       54 GETTABLEKS                       R9 R10 K10 ["NodeView"]
       56 GETTABLEKS                       R8 R9 K15 ["CompositorNodes"]
       58 GETTABLEKS                       R7 R8 K16 ["RenderedCompositorPin"]
       60 CALL                             R6 1 1
       61 DUPCLOSURE                       R7 K17 [PROTO_1]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R6
       67 RETURN                           R7 1
