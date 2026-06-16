PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        3 JUMPIFEQKNIL                     R1 ; [+17]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["join"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["Input"]
       14 GETTABLEKS                       R3 R3 K3 ["Value"]
       16 DUPTABLE                         R4 K5 [{"Position"}]
       17 SETTABLEKS                       R0 R4 K4 ["Position"]
       19 CALL                             R2 2 -1
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useCallback"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 NEWTABLE                         R4 0 2
       12 GETTABLEKS                       R5 R0 K2 ["OnChanged"]
       14 GETTABLEKS                       R6 R0 K3 ["Input"]
       16 SETLIST                          R4 R5 2 [1]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K4 ["createElement"]
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K5 ["View"]
       25 DUPTABLE                         R5 K8 [{"tag", "LayoutOrder"}]
       26 LOADK                            R6 K9 ["row auto-y gap-small size-full-700 align-y-center flex-x-fill padding-x-small"]
       27 SETTABLEKS                       R6 R5 K6 ["tag"]
       29 GETTABLEKS                       R6 R0 K7 ["LayoutOrder"]
       31 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       33 DUPTABLE                         R6 K13 [{"InputLabelWeight", "Position", "PinChildren"}]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K4 ["createElement"]
       37 GETUPVAL                         R8 4
       38 DUPTABLE                         R9 K18 [{"Name", "Weight", "LayoutOrder", "OnDelete", "IsHoveredRef"}]
       39 GETTABLEKS                       R10 R0 K3 ["Input"]
       41 GETTABLEKS                       R10 R10 K14 ["Name"]
       43 SETTABLEKS                       R10 R9 K14 ["Name"]
       45 GETTABLEKS                       R10 R0 K3 ["Input"]
       47 GETTABLEKS                       R10 R10 K15 ["Weight"]
       49 SETTABLEKS                       R10 R9 K15 ["Weight"]
       51 GETUPVAL                         R11 5
       52 CALL                             R11 0 1
       53 JUMPIFNOT                        R11 ; [+3]
       54 MOVE                             R10 R1
       55 CALL                             R10 0 1
       56 JUMP                             ; [+1]
       57 LOADN                            R10 1
       58 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       60 GETUPVAL                         R11 5
       61 CALL                             R11 0 1
       62 JUMPIFNOT                        R11 ; [+3]
       63 GETTABLEKS                       R10 R0 K16 ["OnDelete"]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R10
       67 SETTABLEKS                       R10 R9 K16 ["OnDelete"]
       69 GETUPVAL                         R11 5
       70 CALL                             R11 0 1
       71 JUMPIFNOT                        R11 ; [+3]
       72 GETTABLEKS                       R10 R0 K17 ["IsHoveredRef"]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R10
       76 SETTABLEKS                       R10 R9 K17 ["IsHoveredRef"]
       78 CALL                             R7 2 1
       79 SETTABLEKS                       R7 R6 K10 ["InputLabelWeight"]
       81 GETUPVAL                         R7 1
       82 GETTABLEKS                       R7 R7 K4 ["createElement"]
       84 GETUPVAL                         R8 3
       85 GETTABLEKS                       R8 R8 K19 ["NumberInput"]
       87 DUPTABLE                         R9 K28 [{"size", "label", "value", "step", "LayoutOrder", "precision", "onChanged", "controlsVariant", "isScrubbable"}]
       88 GETUPVAL                         R10 3
       89 GETTABLEKS                       R10 R10 K29 ["Enums"]
       91 GETTABLEKS                       R10 R10 K30 ["InputSize"]
       93 GETTABLEKS                       R10 R10 K31 ["XSmall"]
       95 SETTABLEKS                       R10 R9 K20 ["size"]
       97 LOADK                            R10 K32 [""]
       98 SETTABLEKS                       R10 R9 K21 ["label"]
      100 GETTABLEKS                       R10 R0 K3 ["Input"]
      102 GETTABLEKS                       R10 R10 K33 ["Value"]
      104 GETTABLEKS                       R10 R10 K11 ["Position"]
      106 SETTABLEKS                       R10 R9 K22 ["value"]
      108 LOADK                            R10 K34 [0.005]
      109 SETTABLEKS                       R10 R9 K23 ["step"]
      111 GETUPVAL                         R11 5
      112 CALL                             R11 0 1
      113 JUMPIFNOT                        R11 ; [+3]
      114 MOVE                             R10 R1
      115 CALL                             R10 0 1
      116 JUMP                             ; [+1]
      117 LOADN                            R10 2
      118 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
      120 GETUPVAL                         R10 6
      121 GETTABLEKS                       R10 R10 K35 ["NUMBER_PRECISION"]
      123 GETTABLEKS                       R10 R10 K36 ["Float"]
      125 SETTABLEKS                       R10 R9 K24 ["precision"]
      127 SETTABLEKS                       R2 R9 K25 ["onChanged"]
      129 GETUPVAL                         R10 3
      130 GETTABLEKS                       R10 R10 K29 ["Enums"]
      132 GETTABLEKS                       R10 R10 K37 ["NumberInputControlsVariant"]
      134 GETTABLEKS                       R10 R10 K38 ["None"]
      136 SETTABLEKS                       R10 R9 K26 ["controlsVariant"]
      138 LOADB                            R10 1
      139 SETTABLEKS                       R10 R9 K27 ["isScrubbable"]
      141 CALL                             R7 2 1
      142 SETTABLEKS                       R7 R6 K11 ["Position"]
      144 GETUPVAL                         R7 1
      145 GETTABLEKS                       R7 R7 K4 ["createElement"]
      147 LOADK                            R8 K39 ["Folder"]
      148 NEWTABLE                         R9 0 0
      150 DUPTABLE                         R10 K41 [{"RenderedPinInput"}]
      151 GETUPVAL                         R11 1
      152 GETTABLEKS                       R11 R11 K4 ["createElement"]
      154 GETUPVAL                         R12 7
      155 GETTABLEKS                       R12 R12 K42 ["RenderedCompositorPin"]
      157 DUPTABLE                         R13 K48 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName", "pinValue"}]
      158 GETIMPORT                        R14 K51 [UDim2.fromOffset]
      160 LOADN                            R15 247
      161 LOADN                            R16 14
      162 CALL                             R14 2 1
      163 SETTABLEKS                       R14 R13 K11 ["Position"]
      165 LOADK                            R14 K3 ["Input"]
      166 SETTABLEKS                       R14 R13 K43 ["pinSide"]
      168 GETUPVAL                         R14 7
      169 GETTABLEKS                       R14 R14 K52 ["DEFAULT_PIN_DATA_TYPE"]
      171 SETTABLEKS                       R14 R13 K44 ["pinDataType"]
      173 GETTABLEKS                       R14 R0 K53 ["NodeId"]
      175 SETTABLEKS                       R14 R13 K45 ["pinNodeId"]
      177 GETTABLEKS                       R14 R0 K3 ["Input"]
      179 GETTABLEKS                       R14 R14 K14 ["Name"]
      181 SETTABLEKS                       R14 R13 K46 ["pinName"]
      183 GETTABLEKS                       R14 R0 K3 ["Input"]
      185 GETTABLEKS                       R14 R14 K33 ["Value"]
      187 SETTABLEKS                       R14 R13 K47 ["pinValue"]
      189 CALL                             R11 2 1
      190 SETTABLEKS                       R11 R10 K40 ["RenderedPinInput"]
      192 CALL                             R7 3 1
      193 SETTABLEKS                       R7 R6 K12 ["PinChildren"]
      195 CALL                             R3 3 -1
      196 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K13 ["CompositorNodeInput"]
       36 GETTABLEKS                       R5 R5 K14 ["InputLabelWeight"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K11 ["Components"]
       43 GETTABLEKS                       R6 R6 K12 ["NodeView"]
       45 GETTABLEKS                       R6 R6 K13 ["CompositorNodeInput"]
       47 GETTABLEKS                       R6 R6 K15 ["InputPanelTypes"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Parent"]
       54 GETTABLEKS                       R7 R7 K16 ["NodeGraphing"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K8 ["Parent"]
       61 GETTABLEKS                       R8 R8 K17 ["React"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K8 ["Parent"]
       68 GETTABLEKS                       R9 R9 K18 ["ReactUtils"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K19 ["Flags"]
       75 GETTABLEKS                       R10 R10 K20 ["getFFlagAnimGraphUIDeleteInput"]
       77 CALL                             R9 1 1
       78 DUPCLOSURE                       R10 K21 [PROTO_1]
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R6
       87 RETURN                           R10 1
