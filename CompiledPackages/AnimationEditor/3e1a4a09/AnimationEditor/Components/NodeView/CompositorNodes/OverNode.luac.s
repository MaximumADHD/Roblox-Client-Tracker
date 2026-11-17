PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodePropsById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["GraphPayload"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFFlagAnimGraphUI_ValueNodeDebugOutputs"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K3 ["PropertyLookup"]
        8 GETTABLEKS                       R1 R2 K2 ["Weight"]
       10 ORK                              R0 R1 K1 [1]
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K4 ["isPropertyParameterized"]
       15 GETUPVAL                         R1 3
       16 LOADK                            R2 K2 ["Weight"]
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
       33 LOADK                            R6 K2 ["Weight"]
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
       51 GETTABLEKS                       R3 R4 K2 ["Weight"]
       53 JUMPIF                           R3 ; [+1]
       54 LOADN                            R3 1
       55 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isPropertyParameterized"]
        3 GETUPVAL                         R3 1
        4 LOADK                            R4 K1 ["Weight"]
        5 CALL                             R2 2 2
        6 JUMPIFNOT                        R2 ; [+26]
        7 JUMPIFNOT                        R3 ; [+25]
        8 GETUPVAL                         R4 2
        9 JUMPIFNOT                        R4 ; [+15]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K2 ["setNodeOverride"]
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R5 R5 K3 ["GraphPayload"]
       16 GETTABLEKS                       R5 R5 K4 ["id"]
       18 LOADK                            R6 K1 ["Weight"]
       19 LOADK                            R7 K5 [""]
       20 GETTABLEKS                       R8 R1 K6 ["X"]
       22 MOVE                             R9 R3
       23 CALL                             R4 5 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R4 5
       26 GETTABLEKS                       R4 R4 K7 ["setParameterOverrideValue"]
       28 MOVE                             R5 R3
       29 GETTABLEKS                       R6 R1 K6 ["X"]
       31 CALL                             R4 2 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R4 4
       34 GETTABLEKS                       R4 R4 K8 ["OnPropertyChanged"]
       36 JUMPIFEQKNIL                     R4 ; [+8]
       38 GETUPVAL                         R4 4
       39 GETTABLEKS                       R4 R4 K8 ["OnPropertyChanged"]
       41 LOADK                            R5 K1 ["Weight"]
       42 GETTABLEKS                       R6 R1 K6 ["X"]
       44 CALL                             R4 2 0
       45 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CompositorNodeUtils"]
        3 GETTABLEKS                       R1 R1 K1 ["createPropertyHelpers"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useContext"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["ParameterOverrideContext"]
       13 GETTABLEKS                       R3 R3 K4 ["Context"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K2 ["useContext"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K4 ["Context"]
       22 CALL                             R3 1 1
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K2 ["useContext"]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K5 ["GraphContext"]
       29 GETTABLEKS                       R5 R5 K4 ["Context"]
       31 CALL                             R4 1 1
       32 GETUPVAL                         R5 3
       33 CALL                             R5 0 1
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       37 NEWCLOSURE                       R7 P0
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R0
       40 NEWTABLE                         R8 0 2
       42 GETTABLEKS                       R9 R4 K7 ["observeNodePropsById"]
       44 GETTABLEKS                       R10 R0 K8 ["GraphPayload"]
       46 GETTABLEKS                       R10 R10 K9 ["id"]
       48 SETLIST                          R8 R9 2 [1]
       50 CALL                             R6 2 1
       51 GETUPVAL                         R7 4
       52 GETTABLEKS                       R7 R7 K10 ["useSignalState"]
       54 MOVE                             R8 R6
       55 CALL                             R7 1 1
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R8 R8 K6 ["useMemo"]
       59 NEWCLOSURE                       R9 P1
       60 CAPTURE                          UPVAL U0
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R5
       65 CAPTURE                          UPVAL U2
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R2
       68 NEWTABLE                         R10 0 6
       70 MOVE                             R11 R7
       71 MOVE                             R12 R5
       72 GETTABLEKS                       R13 R0 K8 ["GraphPayload"]
       74 GETTABLEKS                       R13 R13 K9 ["id"]
       76 GETTABLEKS                       R14 R2 K11 ["parameterOverrides"]
       78 GETTABLEKS                       R15 R3 K12 ["nodeOverrides"]
       80 GETTABLEKS                       R17 R0 K14 ["PropertyLookup"]
       82 GETTABLEKS                       R16 R17 K13 ["Weight"]
       84 SETLIST                          R10 R11 6 [1]
       86 CALL                             R8 2 1
       87 GETUPVAL                         R9 1
       88 GETTABLEKS                       R9 R9 K15 ["useCallback"]
       90 NEWCLOSURE                       R10 P2
       91 CAPTURE                          UPVAL U5
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R2
       97 NEWTABLE                         R11 0 7
       99 MOVE                             R12 R7
      100 MOVE                             R13 R5
      101 GETTABLEKS                       R14 R0 K8 ["GraphPayload"]
      103 GETTABLEKS                       R14 R14 K9 ["id"]
      105 GETTABLEKS                       R15 R0 K16 ["OnPropertyChanged"]
      107 GETTABLEKS                       R16 R0 K14 ["PropertyLookup"]
      109 GETTABLEKS                       R17 R2 K17 ["setParameterOverrideValue"]
      111 GETTABLEKS                       R18 R3 K18 ["setNodeOverride"]
      113 SETLIST                          R11 R12 7 [1]
      115 CALL                             R9 2 1
      116 DUPTABLE                         R10 K23 [{"Property_Weight", "WeightSlider", "Input_A", "Input_B"}]
      117 GETTABLEKS                       R11 R1 K24 ["nextProperty"]
      119 DUPTABLE                         R12 K31 [{["Name"] = "Weight", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 1}]
      120 GETTABLEKS                       R14 R0 K14 ["PropertyLookup"]
      122 GETTABLEKS                       R13 R14 K13 ["Weight"]
      124 SETTABLEKS                       R13 R12 K28 ["Value"]
      126 CALL                             R11 1 1
      127 SETTABLEKS                       R11 R10 K19 ["Property_Weight"]
      129 GETUPVAL                         R11 1
      130 GETTABLEKS                       R11 R11 K32 ["createElement"]
      132 GETUPVAL                         R12 6
      133 DUPTABLE                         R13 K39 [{["LayoutOrder"], ["OnPinDragged"], ["Position"], ["HidePins"] = True, ["Pins"]}]
      134 GETTABLEKS                       R14 R1 K40 ["nextOrder"]
      136 CALL                             R14 0 1
      137 SETTABLEKS                       R14 R13 K33 ["LayoutOrder"]
      139 SETTABLEKS                       R9 R13 K34 ["OnPinDragged"]
      141 SETTABLEKS                       R8 R13 K35 ["Position"]
      143 NEWTABLE                         R14 0 2
      145 LOADN                            R15 0
      146 LOADN                            R16 1
      147 SETLIST                          R14 R15 2 [1]
      149 SETTABLEKS                       R14 R13 K38 ["Pins"]
      151 CALL                             R11 2 1
      152 SETTABLEKS                       R11 R10 K20 ["WeightSlider"]
      154 GETTABLEKS                       R11 R1 K41 ["nextInput"]
      156 DUPTABLE                         R12 K44 [{"Input", "Builder"}]
      157 DUPTABLE                         R13 K46 [{["Name"] = "Base"}]
      158 SETTABLEKS                       R13 R12 K42 ["Input"]
      160 GETUPVAL                         R13 7
      161 SETTABLEKS                       R13 R12 K43 ["Builder"]
      163 CALL                             R11 1 1
      164 SETTABLEKS                       R11 R10 K21 ["Input_A"]
      166 GETTABLEKS                       R11 R1 K41 ["nextInput"]
      168 DUPTABLE                         R12 K44 [{"Input", "Builder"}]
      169 DUPTABLE                         R13 K48 [{["Name"] = "Over"}]
      170 SETTABLEKS                       R13 R12 K42 ["Input"]
      172 GETUPVAL                         R13 7
      173 SETTABLEKS                       R13 R12 K43 ["Builder"]
      175 CALL                             R11 1 1
      176 SETTABLEKS                       R11 R10 K22 ["Input_B"]
      178 GETUPVAL                         R11 1
      179 GETTABLEKS                       R11 R11 K32 ["createElement"]
      181 GETUPVAL                         R12 0
      182 GETTABLEKS                       R12 R12 K49 ["CompositorNode"]
      184 GETTABLEKS                       R13 R1 K50 ["nodeProps"]
      186 DUPTABLE                         R14 K53 [{"ContextToolbar", "OutputPin"}]
      187 GETTABLEKS                       R15 R1 K54 ["spotlightButton"]
      189 CALL                             R15 0 1
      190 SETTABLEKS                       R15 R14 K51 ["ContextToolbar"]
      192 GETTABLEKS                       R15 R1 K55 ["outputPin"]
      194 CALL                             R15 0 1
      195 SETTABLEKS                       R15 R14 K52 ["OutputPin"]
      197 CALL                             R13 1 1
      198 MOVE                             R14 R10
      199 CALL                             R11 3 -1
      200 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["SignalsReact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["NodeView"]
       27 GETTABLEKS                       R4 R4 K11 ["CompositorNodeProperty"]
       29 GETTABLEKS                       R4 R4 K12 ["Blend1DMap"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Parent"]
       36 GETTABLEKS                       R5 R5 K13 ["NodeGraphing"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Components"]
       43 GETTABLEKS                       R6 R6 K10 ["NodeView"]
       45 GETTABLEKS                       R6 R6 K11 ["CompositorNodeProperty"]
       47 GETTABLEKS                       R6 R6 K14 ["PropertyUtils"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K9 ["Components"]
       54 GETTABLEKS                       R7 R7 K10 ["NodeView"]
       56 GETTABLEKS                       R7 R7 K15 ["CompositorNodeInput"]
       58 GETTABLEKS                       R7 R7 K16 ["SimpleInput"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K17 ["Flags"]
       65 GETTABLEKS                       R8 R8 K18 ["getFFlagAnimGraphUIPerNodeParameterOverride"]
       67 CALL                             R7 1 1
       68 GETTABLEKS                       R8 R4 K19 ["NodePropertyOverrideContext"]
       70 DUPCLOSURE                       R9 K20 [PROTO_3]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R6
       79 RETURN                           R9 1
