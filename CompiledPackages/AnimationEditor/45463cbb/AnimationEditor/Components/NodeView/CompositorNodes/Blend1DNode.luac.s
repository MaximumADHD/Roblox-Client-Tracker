PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodePropsById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["GraphPayload"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Value"]
        2 GETTABLEKS                       R1 R1 K1 ["Position"]
        4 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["map"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["inputs"]
        6 DUPCLOSURE                       R2 K2 [PROTO_1]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["map"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["inputs"]
        6 DUPCLOSURE                       R2 K2 [PROTO_3]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_5:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+29]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["isPropertyParameterized"]
        5 GETUPVAL                         R3 1
        6 LOADK                            R4 K2 ["Position"]
        7 CALL                             R2 2 2
        8 JUMPIFNOT                        R2 ; [+9]
        9 JUMPIFNOT                        R3 ; [+8]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K3 ["setParameterOverrideValue"]
       13 MOVE                             R5 R3
       14 GETTABLEKS                       R6 R1 K4 ["X"]
       16 CALL                             R4 2 0
       17 JUMP                             ; [+12]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K5 ["OnPropertyChanged"]
       21 JUMPIFEQKNIL                     R4 ; [+8]
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R4 R4 K5 ["OnPropertyChanged"]
       26 LOADK                            R5 K2 ["Position"]
       27 GETTABLEKS                       R6 R1 K4 ["X"]
       29 CALL                             R4 2 0
       30 LOADN                            R2 0
       31 JUMPIFNOTLT                      R2 R0 ; [+11]
       33 GETUPVAL                         R2 4
       34 GETTABLEKS                       R2 R2 K6 ["onInputChanged"]
       36 MOVE                             R3 R0
       37 DUPTABLE                         R4 K7 [{"Position"}]
       38 GETTABLEKS                       R5 R1 K4 ["X"]
       40 SETTABLEKS                       R5 R4 K2 ["Position"]
       42 CALL                             R2 2 0
       43 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isPropertyParameterized"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["Position"]
        5 CALL                             R0 2 2
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["parameterOverrides"]
       10 GETTABLE                         R2 R3 R1
       11 JUMPIF                           R2 ; [+7]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K3 ["PropertyLookup"]
       15 GETTABLEKS                       R2 R3 K1 ["Position"]
       17 JUMPIF                           R2 ; [+1]
       18 LOADN                            R2 0
       19 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ParameterOverrideContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useContext"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["GraphContext"]
       15 GETTABLEKS                       R3 R3 K2 ["Context"]
       17 CALL                             R2 1 1
       18 GETUPVAL                         R3 2
       19 DUPTABLE                         R4 K6 [{"GraphPayload", "Default"}]
       20 GETTABLEKS                       R5 R0 K4 ["GraphPayload"]
       22 SETTABLEKS                       R5 R4 K4 ["GraphPayload"]
       24 DUPTABLE                         R5 K8 [{"Position"}]
       25 LOADN                            R6 0
       26 SETTABLEKS                       R6 R5 K7 ["Position"]
       28 SETTABLEKS                       R5 R4 K5 ["Default"]
       30 CALL                             R3 1 1
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K9 ["useMemo"]
       34 NEWCLOSURE                       R5 P0
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R0
       37 NEWTABLE                         R6 0 2
       39 GETTABLEKS                       R7 R2 K10 ["observeNodePropsById"]
       41 GETTABLEKS                       R8 R0 K4 ["GraphPayload"]
       43 GETTABLEKS                       R8 R8 K11 ["id"]
       45 SETLIST                          R6 R7 2 [1]
       47 CALL                             R4 2 1
       48 GETUPVAL                         R5 3
       49 GETTABLEKS                       R5 R5 K12 ["useSignalState"]
       51 MOVE                             R6 R4
       52 CALL                             R5 1 1
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       56 NEWCLOSURE                       R7 P1
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          VAL R3
       59 NEWTABLE                         R8 0 1
       61 GETTABLEKS                       R9 R3 K13 ["inputs"]
       63 SETLIST                          R8 R9 1 [1]
       65 CALL                             R6 2 1
       66 GETUPVAL                         R7 0
       67 GETTABLEKS                       R7 R7 K9 ["useMemo"]
       69 NEWCLOSURE                       R8 P2
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          VAL R3
       72 NEWTABLE                         R9 0 1
       74 GETTABLEKS                       R10 R3 K13 ["inputs"]
       76 SETLIST                          R9 R10 1 [1]
       78 CALL                             R7 2 1
       79 GETUPVAL                         R8 1
       80 GETTABLEKS                       R8 R8 K14 ["CompositorNodeUtils"]
       82 GETTABLEKS                       R8 R8 K15 ["createPropertyHelpers"]
       84 MOVE                             R9 R0
       85 CALL                             R8 1 1
       86 GETUPVAL                         R9 0
       87 GETTABLEKS                       R9 R9 K16 ["useCallback"]
       89 NEWCLOSURE                       R10 P3
       90 CAPTURE                          UPVAL U5
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R3
       95 NEWTABLE                         R11 0 4
       97 MOVE                             R12 R5
       98 GETTABLEKS                       R13 R0 K17 ["OnPropertyChanged"]
      100 GETTABLEKS                       R14 R0 K18 ["PropertyLookup"]
      102 GETTABLEKS                       R15 R1 K19 ["setParameterOverrideValue"]
      104 SETLIST                          R11 R12 4 [1]
      106 CALL                             R9 2 1
      107 GETUPVAL                         R10 0
      108 GETTABLEKS                       R10 R10 K9 ["useMemo"]
      110 NEWCLOSURE                       R11 P4
      111 CAPTURE                          UPVAL U5
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R0
      115 NEWTABLE                         R12 0 3
      117 MOVE                             R13 R5
      118 GETTABLEKS                       R14 R1 K20 ["parameterOverrides"]
      120 GETTABLEKS                       R16 R0 K18 ["PropertyLookup"]
      122 GETTABLEKS                       R15 R16 K7 ["Position"]
      124 SETLIST                          R12 R13 3 [1]
      126 CALL                             R10 2 1
      127 DUPTABLE                         R11 K25 [{"Property_PhaseSync", "Property_Position", "Blend1DMap", "InputPanel"}]
      128 GETTABLEKS                       R12 R8 K26 ["nextProperty"]
      130 DUPTABLE                         R13 K32 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
      131 LOADK                            R14 K33 ["PhaseSync"]
      132 SETTABLEKS                       R14 R13 K27 ["Name"]
      134 LOADK                            R14 K34 ["Phase Sync"]
      135 SETTABLEKS                       R14 R13 K28 ["Label"]
      137 LOADK                            R14 K35 ["Enum.AnimationNodePhaseSync"]
      138 SETTABLEKS                       R14 R13 K29 ["Type"]
      140 GETTABLEKS                       R15 R0 K18 ["PropertyLookup"]
      142 GETTABLEKS                       R14 R15 K33 ["PhaseSync"]
      144 SETTABLEKS                       R14 R13 K30 ["Value"]
      146 GETIMPORT                        R14 K39 [Enum.AnimationNodePhaseSync.Synced]
      148 SETTABLEKS                       R14 R13 K31 ["DefaultValue"]
      150 CALL                             R12 1 1
      151 SETTABLEKS                       R12 R11 K21 ["Property_PhaseSync"]
      153 GETTABLEKS                       R12 R8 K26 ["nextProperty"]
      155 DUPTABLE                         R13 K42 [{"Name", "Label", "Type", "Value", "Default", "Step", "Precision"}]
      156 LOADK                            R14 K7 ["Position"]
      157 SETTABLEKS                       R14 R13 K27 ["Name"]
      159 LOADK                            R14 K7 ["Position"]
      160 SETTABLEKS                       R14 R13 K28 ["Label"]
      162 LOADK                            R14 K43 ["Number"]
      163 SETTABLEKS                       R14 R13 K29 ["Type"]
      165 GETTABLEKS                       R15 R0 K18 ["PropertyLookup"]
      167 GETTABLEKS                       R14 R15 K7 ["Position"]
      169 SETTABLEKS                       R14 R13 K30 ["Value"]
      171 LOADN                            R14 0
      172 SETTABLEKS                       R14 R13 K5 ["Default"]
      174 GETUPVAL                         R15 6
      175 CALL                             R15 0 1
      176 JUMPIFNOT                        R15 ; [+2]
      177 LOADNIL                          R14
      178 JUMP                             ; [+1]
      179 LOADK                            R14 K44 [0.1]
      180 SETTABLEKS                       R14 R13 K40 ["Step"]
      182 GETUPVAL                         R15 6
      183 CALL                             R15 0 1
      184 JUMPIFNOT                        R15 ; [+2]
      185 LOADNIL                          R14
      186 JUMP                             ; [+5]
      187 GETUPVAL                         R14 7
      188 GETTABLEKS                       R14 R14 K45 ["NUMBER_PRECISION"]
      190 GETTABLEKS                       R14 R14 K46 ["Float"]
      192 SETTABLEKS                       R14 R13 K41 ["Precision"]
      194 CALL                             R12 1 1
      195 SETTABLEKS                       R12 R11 K22 ["Property_Position"]
      197 GETUPVAL                         R12 0
      198 GETTABLEKS                       R12 R12 K47 ["createElement"]
      200 GETUPVAL                         R13 8
      201 DUPTABLE                         R14 K52 [{"LayoutOrder", "OnPinDragged", "PinLabels", "Position", "Pins"}]
      202 GETTABLEKS                       R15 R8 K53 ["nextOrder"]
      204 CALL                             R15 0 1
      205 SETTABLEKS                       R15 R14 K48 ["LayoutOrder"]
      207 SETTABLEKS                       R9 R14 K49 ["OnPinDragged"]
      209 GETUPVAL                         R16 9
      210 CALL                             R16 0 1
      211 JUMPIFNOT                        R16 ; [+2]
      212 MOVE                             R15 R7
      213 JUMP                             ; [+1]
      214 LOADNIL                          R15
      215 SETTABLEKS                       R15 R14 K50 ["PinLabels"]
      217 SETTABLEKS                       R10 R14 K7 ["Position"]
      219 SETTABLEKS                       R6 R14 K51 ["Pins"]
      221 CALL                             R12 2 1
      222 SETTABLEKS                       R12 R11 K23 ["Blend1DMap"]
      224 GETTABLEKS                       R12 R3 K54 ["makePropertyChild"]
      226 MOVE                             R13 R0
      227 MOVE                             R14 R8
      228 DUPTABLE                         R15 K57 [{"inputBuilder", "inputBuilderProps"}]
      229 GETUPVAL                         R16 10
      230 SETTABLEKS                       R16 R15 K55 ["inputBuilder"]
      232 NEWTABLE                         R16 0 0
      234 SETTABLEKS                       R16 R15 K56 ["inputBuilderProps"]
      236 CALL                             R12 3 1
      237 SETTABLEKS                       R12 R11 K24 ["InputPanel"]
      239 GETUPVAL                         R12 0
      240 GETTABLEKS                       R12 R12 K47 ["createElement"]
      242 GETUPVAL                         R13 1
      243 GETTABLEKS                       R13 R13 K58 ["CompositorNode"]
      245 GETTABLEKS                       R14 R8 K59 ["nodeProps"]
      247 DUPTABLE                         R15 K61 [{"OutputPin"}]
      248 GETTABLEKS                       R16 R8 K62 ["outputPin"]
      250 CALL                             R16 0 1
      251 SETTABLEKS                       R16 R15 K60 ["OutputPin"]
      253 CALL                             R14 1 1
      254 MOVE                             R15 R11
      255 CALL                             R12 3 -1
      256 RETURN                           R12 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["NodeGraphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["SignalsReact"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Components"]
       39 GETTABLEKS                       R6 R6 K12 ["NodeView"]
       41 GETTABLEKS                       R6 R6 K13 ["CompositorNodeInput"]
       43 GETTABLEKS                       R6 R6 K14 ["Blend1DInput"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K11 ["Components"]
       50 GETTABLEKS                       R7 R7 K12 ["NodeView"]
       52 GETTABLEKS                       R7 R7 K15 ["CompositorNodeProperty"]
       54 GETTABLEKS                       R7 R7 K16 ["Blend1DMap"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K17 ["Util"]
       61 GETTABLEKS                       R8 R8 K18 ["Constants"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K11 ["Components"]
       68 GETTABLEKS                       R9 R9 K12 ["NodeView"]
       70 GETTABLEKS                       R9 R9 K13 ["CompositorNodeInput"]
       72 GETTABLEKS                       R9 R9 K19 ["InputPanelTypes"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K11 ["Components"]
       79 GETTABLEKS                       R10 R10 K12 ["NodeView"]
       81 GETTABLEKS                       R10 R10 K15 ["CompositorNodeProperty"]
       83 GETTABLEKS                       R10 R10 K20 ["PropertyUtils"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K11 ["Components"]
       90 GETTABLEKS                       R11 R11 K12 ["NodeView"]
       92 GETTABLEKS                       R11 R11 K21 ["CompositorNodes"]
       94 GETTABLEKS                       R11 R11 K22 ["useInputPanelHelper"]
       96 CALL                             R10 1 1
       97 GETIMPORT                        R11 K5 [require]
       99 GETTABLEKS                       R12 R0 K23 ["Flags"]
      101 GETTABLEKS                       R12 R12 K24 ["getFFlagAnimGraphFloatStep003"]
      103 CALL                             R11 1 1
      104 GETIMPORT                        R12 K5 [require]
      106 GETTABLEKS                       R13 R0 K23 ["Flags"]
      108 GETTABLEKS                       R13 R13 K25 ["getFFlagAnimGraphUIBlendMapPinTooltip"]
      110 CALL                             R12 1 1
      111 DUPCLOSURE                       R13 K26 [PROTO_7]
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R5
      123 RETURN                           R13 1
