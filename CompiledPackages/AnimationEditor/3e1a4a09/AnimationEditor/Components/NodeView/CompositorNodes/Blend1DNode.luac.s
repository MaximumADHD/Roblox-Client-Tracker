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
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+46]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["isPropertyParameterized"]
        5 GETUPVAL                         R3 1
        6 LOADK                            R4 K2 ["Position"]
        7 CALL                             R2 2 2
        8 JUMPIFNOT                        R2 ; [+26]
        9 JUMPIFNOT                        R3 ; [+25]
       10 GETUPVAL                         R4 2
       11 JUMPIFNOT                        R4 ; [+15]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K3 ["setNodeOverride"]
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R5 R5 K4 ["GraphPayload"]
       18 GETTABLEKS                       R5 R5 K5 ["id"]
       20 LOADK                            R6 K2 ["Position"]
       21 LOADK                            R7 K6 [""]
       22 GETTABLEKS                       R8 R1 K7 ["X"]
       24 MOVE                             R9 R3
       25 CALL                             R4 5 0
       26 JUMP                             ; [+20]
       27 GETUPVAL                         R4 5
       28 GETTABLEKS                       R4 R4 K8 ["setParameterOverrideValue"]
       30 MOVE                             R5 R3
       31 GETTABLEKS                       R6 R1 K7 ["X"]
       33 CALL                             R4 2 0
       34 JUMP                             ; [+12]
       35 GETUPVAL                         R4 4
       36 GETTABLEKS                       R4 R4 K9 ["OnPropertyChanged"]
       38 JUMPIFEQKNIL                     R4 ; [+8]
       40 GETUPVAL                         R4 4
       41 GETTABLEKS                       R4 R4 K9 ["OnPropertyChanged"]
       43 LOADK                            R5 K2 ["Position"]
       44 GETTABLEKS                       R6 R1 K7 ["X"]
       46 CALL                             R4 2 0
       47 LOADN                            R2 0
       48 JUMPIFNOTLT                      R2 R0 ; [+11]
       50 GETUPVAL                         R2 6
       51 GETTABLEKS                       R2 R2 K10 ["onInputChanged"]
       53 MOVE                             R3 R0
       54 DUPTABLE                         R4 K11 [{"Position"}]
       55 GETTABLEKS                       R5 R1 K7 ["X"]
       57 SETTABLEKS                       R5 R4 K2 ["Position"]
       59 CALL                             R2 2 0
       60 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFFlagAnimGraphUI_ValueNodeDebugOutputs"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K3 ["PropertyLookup"]
        8 GETTABLEKS                       R1 R2 K2 ["Position"]
       10 ORK                              R0 R1 K1 [0]
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K4 ["isPropertyParameterized"]
       15 GETUPVAL                         R1 3
       16 LOADK                            R2 K2 ["Position"]
       17 CALL                             R0 2 2
       18 LOADNIL                          R2
       19 JUMPIFNOT                        R1 ; [+26]
       20 GETUPVAL                         R3 4
       21 JUMPIFNOT                        R3 ; [+20]
       22 GETUPVAL                         R3 5
       23 GETTABLEKS                       R3 R3 K5 ["getNodeOverride"]
       25 GETUPVAL                         R4 6
       26 GETTABLEKS                       R4 R4 K6 ["nodeOverrides"]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K7 ["GraphPayload"]
       31 GETTABLEKS                       R5 R5 K8 ["id"]
       33 LOADK                            R6 K2 ["Position"]
       34 LOADK                            R7 K9 [""]
       35 CALL                             R3 4 1
       36 JUMPIFNOT                        R3 ; [+3]
       37 GETTABLEKS                       R2 R3 K10 ["value"]
       39 JUMP                             ; [+6]
       40 LOADNIL                          R2
       41 JUMP                             ; [+4]
       42 GETUPVAL                         R3 7
       43 GETTABLEKS                       R3 R3 K11 ["parameterOverrides"]
       45 GETTABLE                         R2 R3 R1
       46 MOVE                             R3 R2
       47 JUMPIF                           R3 ; [+7]
       48 GETUPVAL                         R4 1
       49 GETTABLEKS                       R4 R4 K3 ["PropertyLookup"]
       51 GETTABLEKS                       R3 R4 K2 ["Position"]
       53 JUMPIF                           R3 ; [+1]
       54 LOADN                            R3 0
       55 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ParameterOverrideContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useContext"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K2 ["Context"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["useContext"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K3 ["GraphContext"]
       22 GETTABLEKS                       R4 R4 K2 ["Context"]
       24 CALL                             R3 1 1
       25 GETUPVAL                         R4 3
       26 CALL                             R4 0 1
       27 GETUPVAL                         R5 4
       28 DUPTABLE                         R6 K6 [{"GraphPayload", "Default"}]
       29 GETTABLEKS                       R7 R0 K4 ["GraphPayload"]
       31 SETTABLEKS                       R7 R6 K4 ["GraphPayload"]
       33 DUPTABLE                         R7 K9 [{["Position"] = 0}]
       34 SETTABLEKS                       R7 R6 K5 ["Default"]
       36 CALL                             R5 1 1
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K10 ["useMemo"]
       40 NEWCLOSURE                       R7 P0
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R8 0 2
       45 GETTABLEKS                       R9 R3 K11 ["observeNodePropsById"]
       47 GETTABLEKS                       R10 R0 K4 ["GraphPayload"]
       49 GETTABLEKS                       R10 R10 K12 ["id"]
       51 SETLIST                          R8 R9 2 [1]
       53 CALL                             R6 2 1
       54 GETUPVAL                         R7 5
       55 GETTABLEKS                       R7 R7 K13 ["useSignalState"]
       57 MOVE                             R8 R6
       58 CALL                             R7 1 1
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R8 R8 K10 ["useMemo"]
       62 NEWCLOSURE                       R9 P1
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          VAL R5
       65 NEWTABLE                         R10 0 1
       67 GETTABLEKS                       R11 R5 K14 ["inputs"]
       69 SETLIST                          R10 R11 1 [1]
       71 CALL                             R8 2 1
       72 GETUPVAL                         R9 0
       73 GETTABLEKS                       R9 R9 K10 ["useMemo"]
       75 NEWCLOSURE                       R10 P2
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          VAL R5
       78 NEWTABLE                         R11 0 1
       80 GETTABLEKS                       R12 R5 K14 ["inputs"]
       82 SETLIST                          R11 R12 1 [1]
       84 CALL                             R9 2 1
       85 GETUPVAL                         R10 1
       86 GETTABLEKS                       R10 R10 K15 ["CompositorNodeUtils"]
       88 GETTABLEKS                       R10 R10 K16 ["createPropertyHelpers"]
       90 MOVE                             R11 R0
       91 CALL                             R10 1 1
       92 GETUPVAL                         R11 0
       93 GETTABLEKS                       R11 R11 K17 ["useCallback"]
       95 NEWCLOSURE                       R12 P3
       96 CAPTURE                          UPVAL U7
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R0
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R5
      103 NEWTABLE                         R13 0 7
      105 MOVE                             R14 R7
      106 GETTABLEKS                       R15 R0 K4 ["GraphPayload"]
      108 GETTABLEKS                       R15 R15 K12 ["id"]
      110 MOVE                             R16 R4
      111 GETTABLEKS                       R17 R0 K18 ["OnPropertyChanged"]
      113 GETTABLEKS                       R18 R0 K19 ["PropertyLookup"]
      115 GETTABLEKS                       R19 R1 K20 ["setParameterOverrideValue"]
      117 GETTABLEKS                       R20 R2 K21 ["setNodeOverride"]
      119 SETLIST                          R13 R14 7 [1]
      121 CALL                             R11 2 1
      122 GETUPVAL                         R12 0
      123 GETTABLEKS                       R12 R12 K10 ["useMemo"]
      125 NEWCLOSURE                       R13 P4
      126 CAPTURE                          UPVAL U1
      127 CAPTURE                          VAL R0
      128 CAPTURE                          UPVAL U7
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R4
      131 CAPTURE                          UPVAL U2
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R1
      134 NEWTABLE                         R14 0 6
      136 MOVE                             R15 R7
      137 MOVE                             R16 R4
      138 GETTABLEKS                       R17 R0 K4 ["GraphPayload"]
      140 GETTABLEKS                       R17 R17 K12 ["id"]
      142 GETTABLEKS                       R18 R1 K22 ["parameterOverrides"]
      144 GETTABLEKS                       R19 R2 K23 ["nodeOverrides"]
      146 GETTABLEKS                       R21 R0 K19 ["PropertyLookup"]
      148 GETTABLEKS                       R20 R21 K7 ["Position"]
      150 SETLIST                          R14 R15 6 [1]
      152 CALL                             R12 2 1
      153 DUPTABLE                         R13 K28 [{"Property_PhaseSync", "Property_Position", "Blend1DMap", "InputPanel"}]
      154 GETTABLEKS                       R14 R10 K29 ["nextProperty"]
      156 DUPTABLE                         R15 K38 [{["Name"] = "PhaseSync", ["Label"] = "Phase Sync", ["Type"] = "Enum.AnimationNodePhaseSync", ["Value"], ["DefaultValue"]}]
      157 GETTABLEKS                       R17 R0 K19 ["PropertyLookup"]
      159 GETTABLEKS                       R16 R17 K31 ["PhaseSync"]
      161 SETTABLEKS                       R16 R15 K36 ["Value"]
      163 GETIMPORT                        R16 K42 [Enum.AnimationNodePhaseSync.Synced]
      165 SETTABLEKS                       R16 R15 K37 ["DefaultValue"]
      167 CALL                             R14 1 1
      168 SETTABLEKS                       R14 R13 K24 ["Property_PhaseSync"]
      170 GETTABLEKS                       R14 R10 K29 ["nextProperty"]
      172 DUPTABLE                         R15 K44 [{["Name"] = "Position", ["Label"] = "Position", ["Type"] = "Number", ["Value"], ["Default"] = 0}]
      173 GETTABLEKS                       R17 R0 K19 ["PropertyLookup"]
      175 GETTABLEKS                       R16 R17 K7 ["Position"]
      177 SETTABLEKS                       R16 R15 K36 ["Value"]
      179 CALL                             R14 1 1
      180 SETTABLEKS                       R14 R13 K25 ["Property_Position"]
      182 GETUPVAL                         R14 0
      183 GETTABLEKS                       R14 R14 K45 ["createElement"]
      185 GETUPVAL                         R15 8
      186 DUPTABLE                         R16 K50 [{"LayoutOrder", "OnPinDragged", "PinLabels", "Position", "Pins"}]
      187 GETTABLEKS                       R17 R10 K51 ["nextOrder"]
      189 CALL                             R17 0 1
      190 SETTABLEKS                       R17 R16 K46 ["LayoutOrder"]
      192 SETTABLEKS                       R11 R16 K47 ["OnPinDragged"]
      194 SETTABLEKS                       R9 R16 K48 ["PinLabels"]
      196 SETTABLEKS                       R12 R16 K7 ["Position"]
      198 SETTABLEKS                       R8 R16 K49 ["Pins"]
      200 CALL                             R14 2 1
      201 SETTABLEKS                       R14 R13 K26 ["Blend1DMap"]
      203 GETTABLEKS                       R14 R5 K52 ["makePropertyChild"]
      205 MOVE                             R15 R0
      206 MOVE                             R16 R10
      207 DUPTABLE                         R17 K55 [{"inputBuilder", "inputBuilderProps"}]
      208 GETUPVAL                         R18 9
      209 SETTABLEKS                       R18 R17 K53 ["inputBuilder"]
      211 NEWTABLE                         R18 0 0
      213 SETTABLEKS                       R18 R17 K54 ["inputBuilderProps"]
      215 CALL                             R14 3 1
      216 SETTABLEKS                       R14 R13 K27 ["InputPanel"]
      218 GETUPVAL                         R14 0
      219 GETTABLEKS                       R14 R14 K45 ["createElement"]
      221 GETUPVAL                         R15 1
      222 GETTABLEKS                       R15 R15 K56 ["CompositorNode"]
      224 GETTABLEKS                       R16 R10 K57 ["nodeProps"]
      226 DUPTABLE                         R17 K60 [{"ContextToolbar", "OutputPin"}]
      227 GETTABLEKS                       R18 R10 K61 ["spotlightButton"]
      229 CALL                             R18 0 1
      230 SETTABLEKS                       R18 R17 K58 ["ContextToolbar"]
      232 GETTABLEKS                       R18 R10 K62 ["outputPin"]
      234 CALL                             R18 0 1
      235 SETTABLEKS                       R18 R17 K59 ["OutputPin"]
      237 CALL                             R16 1 1
      238 MOVE                             R17 R13
      239 CALL                             R14 3 -1
      240 RETURN                           R14 -1

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
       59 GETTABLEKS                       R8 R0 K11 ["Components"]
       61 GETTABLEKS                       R8 R8 K12 ["NodeView"]
       63 GETTABLEKS                       R8 R8 K13 ["CompositorNodeInput"]
       65 GETTABLEKS                       R8 R8 K17 ["InputPanelTypes"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K11 ["Components"]
       72 GETTABLEKS                       R9 R9 K12 ["NodeView"]
       74 GETTABLEKS                       R9 R9 K15 ["CompositorNodeProperty"]
       76 GETTABLEKS                       R9 R9 K18 ["PropertyUtils"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K11 ["Components"]
       83 GETTABLEKS                       R10 R10 K12 ["NodeView"]
       85 GETTABLEKS                       R10 R10 K19 ["CompositorNodes"]
       87 GETTABLEKS                       R10 R10 K20 ["useInputPanelHelper"]
       89 CALL                             R9 1 1
       90 GETIMPORT                        R10 K5 [require]
       92 GETTABLEKS                       R11 R0 K21 ["Flags"]
       94 GETTABLEKS                       R11 R11 K22 ["getFFlagAnimGraphUIPerNodeParameterOverride"]
       96 CALL                             R10 1 1
       97 GETTABLEKS                       R11 R2 K23 ["NodePropertyOverrideContext"]
       99 DUPCLOSURE                       R12 K24 [PROTO_7]
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R5
      110 RETURN                           R12 1
