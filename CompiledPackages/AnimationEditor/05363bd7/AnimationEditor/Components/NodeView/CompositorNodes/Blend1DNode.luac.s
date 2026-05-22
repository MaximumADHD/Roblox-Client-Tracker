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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setParameterOverrideValueAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["X"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+29]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["isPropertyParameterized"]
        5 GETUPVAL                         R3 1
        6 LOADK                            R4 K2 ["Position"]
        7 CALL                             R2 2 2
        8 JUMPIFNOT                        R2 ; [+9]
        9 JUMPIFNOT                        R3 ; [+8]
       10 GETIMPORT                        R4 K5 [task.spawn]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R1
       16 CALL                             R4 1 0
       17 JUMP                             ; [+12]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K6 ["OnPropertyChanged"]
       21 JUMPIFEQKNIL                     R4 ; [+8]
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R4 R4 K6 ["OnPropertyChanged"]
       26 LOADK                            R5 K2 ["Position"]
       27 GETTABLEKS                       R6 R1 K7 ["X"]
       29 CALL                             R4 2 0
       30 LOADN                            R2 0
       31 JUMPIFNOTLT                      R2 R0 ; [+11]
       33 GETUPVAL                         R2 4
       34 GETTABLEKS                       R2 R2 K8 ["onInputChanged"]
       36 MOVE                             R3 R0
       37 DUPTABLE                         R4 K9 [{"Position"}]
       38 GETTABLEKS                       R5 R1 K7 ["X"]
       40 SETTABLEKS                       R5 R4 K2 ["Position"]
       42 CALL                             R2 2 0
       43 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["GraphContext"]
       13 GETTABLEKS                       R3 R3 K1 ["Context"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 3
       17 DUPTABLE                         R4 K5 [{"GraphPayload", "Default"}]
       18 GETTABLEKS                       R5 R0 K3 ["GraphPayload"]
       20 SETTABLEKS                       R5 R4 K3 ["GraphPayload"]
       22 DUPTABLE                         R5 K7 [{"Position"}]
       23 LOADN                            R6 0
       24 SETTABLEKS                       R6 R5 K6 ["Position"]
       26 SETTABLEKS                       R5 R4 K4 ["Default"]
       28 CALL                             R3 1 1
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K8 ["useMemo"]
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R0
       35 NEWTABLE                         R6 0 2
       37 GETTABLEKS                       R7 R2 K9 ["observeNodePropsById"]
       39 GETTABLEKS                       R8 R0 K3 ["GraphPayload"]
       41 GETTABLEKS                       R8 R8 K10 ["id"]
       43 SETLIST                          R6 R7 2 [1]
       45 CALL                             R4 2 1
       46 GETUPVAL                         R5 4
       47 GETTABLEKS                       R5 R5 K11 ["useSignalState"]
       49 MOVE                             R6 R4
       50 CALL                             R5 1 1
       51 GETUPVAL                         R6 0
       52 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       54 NEWCLOSURE                       R7 P1
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          VAL R3
       57 NEWTABLE                         R8 0 1
       59 GETTABLEKS                       R9 R3 K12 ["inputs"]
       61 SETLIST                          R8 R9 1 [1]
       63 CALL                             R6 2 1
       64 GETUPVAL                         R7 2
       65 GETTABLEKS                       R7 R7 K13 ["CompositorNodeUtils"]
       67 GETTABLEKS                       R7 R7 K14 ["createPropertyHelpers"]
       69 MOVE                             R8 R0
       70 CALL                             R7 1 1
       71 GETUPVAL                         R8 0
       72 GETTABLEKS                       R8 R8 K15 ["useCallback"]
       74 NEWCLOSURE                       R9 P2
       75 CAPTURE                          UPVAL U6
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R3
       80 NEWTABLE                         R10 0 4
       82 MOVE                             R11 R5
       83 GETTABLEKS                       R12 R0 K16 ["OnPropertyChanged"]
       85 GETTABLEKS                       R13 R0 K17 ["PropertyLookup"]
       87 GETTABLEKS                       R14 R1 K18 ["setParameterOverrideValueAsync"]
       89 SETLIST                          R10 R11 4 [1]
       91 CALL                             R8 2 1
       92 GETUPVAL                         R9 0
       93 GETTABLEKS                       R9 R9 K8 ["useMemo"]
       95 NEWCLOSURE                       R10 P3
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R0
      100 NEWTABLE                         R11 0 3
      102 MOVE                             R12 R5
      103 GETTABLEKS                       R13 R1 K19 ["parameterOverrides"]
      105 GETTABLEKS                       R15 R0 K17 ["PropertyLookup"]
      107 GETTABLEKS                       R14 R15 K6 ["Position"]
      109 SETLIST                          R11 R12 3 [1]
      111 CALL                             R9 2 1
      112 DUPTABLE                         R10 K24 [{"Property_PhaseSync", "Property_Position", "Blend1DMap", "InputPanel"}]
      113 GETTABLEKS                       R11 R7 K25 ["nextProperty"]
      115 DUPTABLE                         R12 K31 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
      116 LOADK                            R13 K32 ["PhaseSync"]
      117 SETTABLEKS                       R13 R12 K26 ["Name"]
      119 LOADK                            R13 K33 ["Phase Sync"]
      120 SETTABLEKS                       R13 R12 K27 ["Label"]
      122 LOADK                            R13 K34 ["Enum.AnimationNodePhaseSync"]
      123 SETTABLEKS                       R13 R12 K28 ["Type"]
      125 GETTABLEKS                       R14 R0 K17 ["PropertyLookup"]
      127 GETTABLEKS                       R13 R14 K32 ["PhaseSync"]
      129 SETTABLEKS                       R13 R12 K29 ["Value"]
      131 GETIMPORT                        R13 K38 [Enum.AnimationNodePhaseSync.Synced]
      133 SETTABLEKS                       R13 R12 K30 ["DefaultValue"]
      135 CALL                             R11 1 1
      136 SETTABLEKS                       R11 R10 K20 ["Property_PhaseSync"]
      138 GETTABLEKS                       R11 R7 K25 ["nextProperty"]
      140 DUPTABLE                         R12 K41 [{"Name", "Label", "Type", "Value", "Default", "Step", "Precision"}]
      141 LOADK                            R13 K6 ["Position"]
      142 SETTABLEKS                       R13 R12 K26 ["Name"]
      144 LOADK                            R13 K6 ["Position"]
      145 SETTABLEKS                       R13 R12 K27 ["Label"]
      147 LOADK                            R13 K42 ["Number"]
      148 SETTABLEKS                       R13 R12 K28 ["Type"]
      150 GETTABLEKS                       R14 R0 K17 ["PropertyLookup"]
      152 GETTABLEKS                       R13 R14 K6 ["Position"]
      154 SETTABLEKS                       R13 R12 K29 ["Value"]
      156 LOADN                            R13 0
      157 SETTABLEKS                       R13 R12 K4 ["Default"]
      159 GETUPVAL                         R14 7
      160 CALL                             R14 0 1
      161 JUMPIFNOT                        R14 ; [+2]
      162 LOADNIL                          R13
      163 JUMP                             ; [+1]
      164 LOADK                            R13 K43 [0.1]
      165 SETTABLEKS                       R13 R12 K39 ["Step"]
      167 GETUPVAL                         R14 7
      168 CALL                             R14 0 1
      169 JUMPIFNOT                        R14 ; [+2]
      170 LOADNIL                          R13
      171 JUMP                             ; [+5]
      172 GETUPVAL                         R13 8
      173 GETTABLEKS                       R13 R13 K44 ["NUMBER_PRECISION"]
      175 GETTABLEKS                       R13 R13 K45 ["Float"]
      177 SETTABLEKS                       R13 R12 K40 ["Precision"]
      179 CALL                             R11 1 1
      180 SETTABLEKS                       R11 R10 K21 ["Property_Position"]
      182 GETUPVAL                         R11 0
      183 GETTABLEKS                       R11 R11 K46 ["createElement"]
      185 GETUPVAL                         R12 9
      186 DUPTABLE                         R13 K50 [{"LayoutOrder", "OnPinDragged", "Position", "Pins"}]
      187 GETTABLEKS                       R14 R7 K51 ["nextOrder"]
      189 CALL                             R14 0 1
      190 SETTABLEKS                       R14 R13 K47 ["LayoutOrder"]
      192 SETTABLEKS                       R8 R13 K48 ["OnPinDragged"]
      194 SETTABLEKS                       R9 R13 K6 ["Position"]
      196 SETTABLEKS                       R6 R13 K49 ["Pins"]
      198 CALL                             R11 2 1
      199 SETTABLEKS                       R11 R10 K22 ["Blend1DMap"]
      201 GETTABLEKS                       R11 R3 K52 ["makePropertyChild"]
      203 MOVE                             R12 R0
      204 MOVE                             R13 R7
      205 DUPTABLE                         R14 K55 [{"inputBuilder", "inputBuilderProps"}]
      206 GETUPVAL                         R15 10
      207 SETTABLEKS                       R15 R14 K53 ["inputBuilder"]
      209 NEWTABLE                         R15 0 0
      211 SETTABLEKS                       R15 R14 K54 ["inputBuilderProps"]
      213 CALL                             R11 3 1
      214 SETTABLEKS                       R11 R10 K23 ["InputPanel"]
      216 GETUPVAL                         R11 0
      217 GETTABLEKS                       R11 R11 K46 ["createElement"]
      219 GETUPVAL                         R12 2
      220 GETTABLEKS                       R12 R12 K56 ["CompositorNode"]
      222 GETTABLEKS                       R13 R7 K57 ["nodeProps"]
      224 DUPTABLE                         R14 K59 [{"OutputPin"}]
      225 GETTABLEKS                       R15 R7 K60 ["outputPin"]
      227 CALL                             R15 0 1
      228 SETTABLEKS                       R15 R14 K58 ["OutputPin"]
      230 CALL                             R13 1 1
      231 MOVE                             R14 R10
      232 CALL                             R11 3 -1
      233 RETURN                           R11 -1

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
       77 GETTABLEKS                       R10 R0 K20 ["Contexts"]
       79 GETTABLEKS                       R10 R10 K21 ["ParameterOverrideContext"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K11 ["Components"]
       86 GETTABLEKS                       R11 R11 K12 ["NodeView"]
       88 GETTABLEKS                       R11 R11 K15 ["CompositorNodeProperty"]
       90 GETTABLEKS                       R11 R11 K22 ["PropertyUtils"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K11 ["Components"]
       97 GETTABLEKS                       R12 R12 K12 ["NodeView"]
       99 GETTABLEKS                       R12 R12 K23 ["CompositorNodes"]
      101 GETTABLEKS                       R12 R12 K24 ["useInputPanelHelper"]
      103 CALL                             R11 1 1
      104 GETIMPORT                        R12 K5 [require]
      106 GETTABLEKS                       R13 R0 K25 ["Flags"]
      108 GETTABLEKS                       R13 R13 K26 ["getFFlagAnimGraphFloatStep003"]
      110 CALL                             R12 1 1
      111 DUPCLOSURE                       R13 K27 [PROTO_6]
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R5
      123 RETURN                           R13 1
