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

PROTO_4:
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

PROTO_5:
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
       66 GETUPVAL                         R7 1
       67 GETTABLEKS                       R7 R7 K14 ["CompositorNodeUtils"]
       69 GETTABLEKS                       R7 R7 K15 ["createPropertyHelpers"]
       71 MOVE                             R8 R0
       72 CALL                             R7 1 1
       73 GETUPVAL                         R8 0
       74 GETTABLEKS                       R8 R8 K16 ["useCallback"]
       76 NEWCLOSURE                       R9 P2
       77 CAPTURE                          UPVAL U5
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R3
       82 NEWTABLE                         R10 0 4
       84 MOVE                             R11 R5
       85 GETTABLEKS                       R12 R0 K17 ["OnPropertyChanged"]
       87 GETTABLEKS                       R13 R0 K18 ["PropertyLookup"]
       89 GETTABLEKS                       R14 R1 K19 ["setParameterOverrideValue"]
       91 SETLIST                          R10 R11 4 [1]
       93 CALL                             R8 2 1
       94 GETUPVAL                         R9 0
       95 GETTABLEKS                       R9 R9 K9 ["useMemo"]
       97 NEWCLOSURE                       R10 P3
       98 CAPTURE                          UPVAL U5
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R0
      102 NEWTABLE                         R11 0 3
      104 MOVE                             R12 R5
      105 GETTABLEKS                       R13 R1 K20 ["parameterOverrides"]
      107 GETTABLEKS                       R15 R0 K18 ["PropertyLookup"]
      109 GETTABLEKS                       R14 R15 K7 ["Position"]
      111 SETLIST                          R11 R12 3 [1]
      113 CALL                             R9 2 1
      114 DUPTABLE                         R10 K25 [{"Property_PhaseSync", "Property_Position", "Blend1DMap", "InputPanel"}]
      115 GETTABLEKS                       R11 R7 K26 ["nextProperty"]
      117 DUPTABLE                         R12 K32 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
      118 LOADK                            R13 K33 ["PhaseSync"]
      119 SETTABLEKS                       R13 R12 K27 ["Name"]
      121 LOADK                            R13 K34 ["Phase Sync"]
      122 SETTABLEKS                       R13 R12 K28 ["Label"]
      124 LOADK                            R13 K35 ["Enum.AnimationNodePhaseSync"]
      125 SETTABLEKS                       R13 R12 K29 ["Type"]
      127 GETTABLEKS                       R14 R0 K18 ["PropertyLookup"]
      129 GETTABLEKS                       R13 R14 K33 ["PhaseSync"]
      131 SETTABLEKS                       R13 R12 K30 ["Value"]
      133 GETIMPORT                        R13 K39 [Enum.AnimationNodePhaseSync.Synced]
      135 SETTABLEKS                       R13 R12 K31 ["DefaultValue"]
      137 CALL                             R11 1 1
      138 SETTABLEKS                       R11 R10 K21 ["Property_PhaseSync"]
      140 GETTABLEKS                       R11 R7 K26 ["nextProperty"]
      142 DUPTABLE                         R12 K42 [{"Name", "Label", "Type", "Value", "Default", "Step", "Precision"}]
      143 LOADK                            R13 K7 ["Position"]
      144 SETTABLEKS                       R13 R12 K27 ["Name"]
      146 LOADK                            R13 K7 ["Position"]
      147 SETTABLEKS                       R13 R12 K28 ["Label"]
      149 LOADK                            R13 K43 ["Number"]
      150 SETTABLEKS                       R13 R12 K29 ["Type"]
      152 GETTABLEKS                       R14 R0 K18 ["PropertyLookup"]
      154 GETTABLEKS                       R13 R14 K7 ["Position"]
      156 SETTABLEKS                       R13 R12 K30 ["Value"]
      158 LOADN                            R13 0
      159 SETTABLEKS                       R13 R12 K5 ["Default"]
      161 GETUPVAL                         R14 6
      162 CALL                             R14 0 1
      163 JUMPIFNOT                        R14 ; [+2]
      164 LOADNIL                          R13
      165 JUMP                             ; [+1]
      166 LOADK                            R13 K44 [0.1]
      167 SETTABLEKS                       R13 R12 K40 ["Step"]
      169 GETUPVAL                         R14 6
      170 CALL                             R14 0 1
      171 JUMPIFNOT                        R14 ; [+2]
      172 LOADNIL                          R13
      173 JUMP                             ; [+5]
      174 GETUPVAL                         R13 7
      175 GETTABLEKS                       R13 R13 K45 ["NUMBER_PRECISION"]
      177 GETTABLEKS                       R13 R13 K46 ["Float"]
      179 SETTABLEKS                       R13 R12 K41 ["Precision"]
      181 CALL                             R11 1 1
      182 SETTABLEKS                       R11 R10 K22 ["Property_Position"]
      184 GETUPVAL                         R11 0
      185 GETTABLEKS                       R11 R11 K47 ["createElement"]
      187 GETUPVAL                         R12 8
      188 DUPTABLE                         R13 K51 [{"LayoutOrder", "OnPinDragged", "Position", "Pins"}]
      189 GETTABLEKS                       R14 R7 K52 ["nextOrder"]
      191 CALL                             R14 0 1
      192 SETTABLEKS                       R14 R13 K48 ["LayoutOrder"]
      194 SETTABLEKS                       R8 R13 K49 ["OnPinDragged"]
      196 SETTABLEKS                       R9 R13 K7 ["Position"]
      198 SETTABLEKS                       R6 R13 K50 ["Pins"]
      200 CALL                             R11 2 1
      201 SETTABLEKS                       R11 R10 K23 ["Blend1DMap"]
      203 GETTABLEKS                       R11 R3 K53 ["makePropertyChild"]
      205 MOVE                             R12 R0
      206 MOVE                             R13 R7
      207 DUPTABLE                         R14 K56 [{"inputBuilder", "inputBuilderProps"}]
      208 GETUPVAL                         R15 9
      209 SETTABLEKS                       R15 R14 K54 ["inputBuilder"]
      211 NEWTABLE                         R15 0 0
      213 SETTABLEKS                       R15 R14 K55 ["inputBuilderProps"]
      215 CALL                             R11 3 1
      216 SETTABLEKS                       R11 R10 K24 ["InputPanel"]
      218 GETUPVAL                         R11 0
      219 GETTABLEKS                       R11 R11 K47 ["createElement"]
      221 GETUPVAL                         R12 1
      222 GETTABLEKS                       R12 R12 K57 ["CompositorNode"]
      224 GETTABLEKS                       R13 R7 K58 ["nodeProps"]
      226 DUPTABLE                         R14 K60 [{"OutputPin"}]
      227 GETTABLEKS                       R15 R7 K61 ["outputPin"]
      229 CALL                             R15 0 1
      230 SETTABLEKS                       R15 R14 K59 ["OutputPin"]
      232 CALL                             R13 1 1
      233 MOVE                             R14 R10
      234 CALL                             R11 3 -1
      235 RETURN                           R11 -1

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
      104 DUPCLOSURE                       R12 K25 [PROTO_5]
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R5
      115 RETURN                           R12 1
