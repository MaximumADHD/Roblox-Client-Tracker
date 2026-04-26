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
       22 LOADK                            R5 K8 ["row auto-y gap-small size-full-700 align-y-center flex-x-fill padding-x-small"]
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
       59 DUPTABLE                         R8 K25 [{"size", "label", "value", "step", "LayoutOrder", "precision", "onChanged", "controlsVariant", "isScrubbable"}]
       60 GETUPVAL                         R12 2
       61 GETTABLEKS                       R11 R12 K26 ["Enums"]
       63 GETTABLEKS                       R10 R11 K27 ["InputSize"]
       65 GETTABLEKS                       R9 R10 K28 ["XSmall"]
       67 SETTABLEKS                       R9 R8 K17 ["size"]
       69 LOADK                            R9 K29 [""]
       70 SETTABLEKS                       R9 R8 K18 ["label"]
       72 GETTABLEKS                       R11 R0 K2 ["Input"]
       74 GETTABLEKS                       R10 R11 K30 ["Value"]
       76 GETTABLEKS                       R9 R10 K10 ["Position"]
       78 SETTABLEKS                       R9 R8 K19 ["value"]
       80 LOADK                            R9 K31 [0.005]
       81 SETTABLEKS                       R9 R8 K20 ["step"]
       83 LOADN                            R9 2
       84 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       86 GETUPVAL                         R11 4
       87 GETTABLEKS                       R10 R11 K32 ["NUMBER_PRECISION"]
       89 GETTABLEKS                       R9 R10 K33 ["Float"]
       91 SETTABLEKS                       R9 R8 K21 ["precision"]
       93 SETTABLEKS                       R1 R8 K22 ["onChanged"]
       95 GETUPVAL                         R12 2
       96 GETTABLEKS                       R11 R12 K26 ["Enums"]
       98 GETTABLEKS                       R10 R11 K34 ["NumberInputControlsVariant"]
      100 GETTABLEKS                       R9 R10 K35 ["None"]
      102 SETTABLEKS                       R9 R8 K23 ["controlsVariant"]
      104 LOADB                            R9 1
      105 SETTABLEKS                       R9 R8 K24 ["isScrubbable"]
      107 CALL                             R6 2 1
      108 SETTABLEKS                       R6 R5 K10 ["Position"]
      110 GETUPVAL                         R7 0
      111 GETTABLEKS                       R6 R7 K3 ["createElement"]
      113 LOADK                            R7 K36 ["Folder"]
      114 NEWTABLE                         R8 0 0
      116 DUPTABLE                         R9 K38 [{"RenderedPinInput"}]
      117 GETUPVAL                         R11 0
      118 GETTABLEKS                       R10 R11 K3 ["createElement"]
      120 GETUPVAL                         R11 5
      121 DUPTABLE                         R12 K44 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName", "pinValue"}]
      122 GETIMPORT                        R13 K47 [UDim2.fromOffset]
      124 LOADN                            R14 247
      125 LOADN                            R15 14
      126 CALL                             R13 2 1
      127 SETTABLEKS                       R13 R12 K10 ["Position"]
      129 LOADK                            R13 K2 ["Input"]
      130 SETTABLEKS                       R13 R12 K39 ["pinSide"]
      132 LOADK                            R13 K48 ["Animation"]
      133 SETTABLEKS                       R13 R12 K40 ["pinDataType"]
      135 GETTABLEKS                       R13 R0 K49 ["NodeId"]
      137 SETTABLEKS                       R13 R12 K41 ["pinNodeId"]
      139 GETTABLEKS                       R14 R0 K2 ["Input"]
      141 GETTABLEKS                       R13 R14 K13 ["Name"]
      143 SETTABLEKS                       R13 R12 K42 ["pinName"]
      145 GETTABLEKS                       R14 R0 K2 ["Input"]
      147 GETTABLEKS                       R13 R14 K30 ["Value"]
      149 SETTABLEKS                       R13 R12 K43 ["pinValue"]
      151 CALL                             R10 2 1
      152 SETTABLEKS                       R10 R9 K37 ["RenderedPinInput"]
      154 CALL                             R6 3 1
      155 SETTABLEKS                       R6 R5 K11 ["PinChildren"]
      157 CALL                             R2 3 -1
      158 RETURN                           R2 -1

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
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Util"]
       32 GETTABLEKS                       R5 R6 K11 ["Constants"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R9 R0 K12 ["Components"]
       39 GETTABLEKS                       R8 R9 K13 ["NodeView"]
       41 GETTABLEKS                       R7 R8 K14 ["CompositorNodeInput"]
       43 GETTABLEKS                       R6 R7 K15 ["InputLabelWeight"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R10 R0 K12 ["Components"]
       50 GETTABLEKS                       R9 R10 K13 ["NodeView"]
       52 GETTABLEKS                       R8 R9 K14 ["CompositorNodeInput"]
       54 GETTABLEKS                       R7 R8 K16 ["InputPanelTypes"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R11 R0 K12 ["Components"]
       61 GETTABLEKS                       R10 R11 K13 ["NodeView"]
       63 GETTABLEKS                       R9 R10 K17 ["CompositorNodes"]
       65 GETTABLEKS                       R8 R9 K18 ["RenderedCompositorPin"]
       67 CALL                             R7 1 1
       68 DUPCLOSURE                       R8 K19 [PROTO_1]
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R7
       75 RETURN                           R8 1
