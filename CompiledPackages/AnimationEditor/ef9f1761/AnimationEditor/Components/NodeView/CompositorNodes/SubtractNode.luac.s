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
        1 GETTABLEKS                       R0 R0 K0 ["isPropertyParameterized"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["Weight"]
        5 CALL                             R0 2 2
        6 LOADNIL                          R2
        7 JUMPIFNOT                        R1 ; [+26]
        8 GETUPVAL                         R3 2
        9 JUMPIFNOT                        R3 ; [+20]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K2 ["getNodeOverride"]
       13 GETUPVAL                         R4 4
       14 GETTABLEKS                       R4 R4 K3 ["nodeOverrides"]
       16 GETUPVAL                         R5 5
       17 GETTABLEKS                       R5 R5 K4 ["GraphPayload"]
       19 GETTABLEKS                       R5 R5 K5 ["id"]
       21 LOADK                            R6 K1 ["Weight"]
       22 LOADK                            R7 K6 [""]
       23 CALL                             R3 4 1
       24 JUMPIFNOT                        R3 ; [+3]
       25 GETTABLEKS                       R2 R3 K7 ["value"]
       27 JUMP                             ; [+6]
       28 LOADNIL                          R2
       29 JUMP                             ; [+4]
       30 GETUPVAL                         R3 6
       31 GETTABLEKS                       R3 R3 K8 ["parameterOverrides"]
       33 GETTABLE                         R2 R3 R1
       34 MOVE                             R3 R2
       35 JUMPIF                           R3 ; [+7]
       36 GETUPVAL                         R4 5
       37 GETTABLEKS                       R4 R4 K9 ["PropertyLookup"]
       39 GETTABLEKS                       R3 R4 K1 ["Weight"]
       41 JUMPIF                           R3 ; [+1]
       42 LOADN                            R3 1
       43 RETURN                           R3 1

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
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R5
       63 CAPTURE                          UPVAL U2
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R2
       67 NEWTABLE                         R10 0 6
       69 MOVE                             R11 R7
       70 MOVE                             R12 R5
       71 GETTABLEKS                       R13 R0 K8 ["GraphPayload"]
       73 GETTABLEKS                       R13 R13 K9 ["id"]
       75 GETTABLEKS                       R14 R2 K11 ["parameterOverrides"]
       77 GETTABLEKS                       R15 R3 K12 ["nodeOverrides"]
       79 GETTABLEKS                       R17 R0 K14 ["PropertyLookup"]
       81 GETTABLEKS                       R16 R17 K13 ["Weight"]
       83 SETLIST                          R10 R11 6 [1]
       85 CALL                             R8 2 1
       86 GETUPVAL                         R9 1
       87 GETTABLEKS                       R9 R9 K15 ["useCallback"]
       89 NEWCLOSURE                       R10 P2
       90 CAPTURE                          UPVAL U5
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R0
       95 CAPTURE                          VAL R2
       96 NEWTABLE                         R11 0 7
       98 MOVE                             R12 R7
       99 MOVE                             R13 R5
      100 GETTABLEKS                       R14 R0 K8 ["GraphPayload"]
      102 GETTABLEKS                       R14 R14 K9 ["id"]
      104 GETTABLEKS                       R15 R0 K16 ["OnPropertyChanged"]
      106 GETTABLEKS                       R16 R0 K14 ["PropertyLookup"]
      108 GETTABLEKS                       R17 R2 K17 ["setParameterOverrideValue"]
      110 GETTABLEKS                       R18 R3 K18 ["setNodeOverride"]
      112 SETLIST                          R11 R12 7 [1]
      114 CALL                             R9 2 1
      115 DUPTABLE                         R10 K23 [{"Property_Weight", "WeightSlider", "Input_A", "Input_B"}]
      116 GETTABLEKS                       R11 R1 K24 ["nextProperty"]
      118 DUPTABLE                         R12 K31 [{["Name"] = "Weight", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 1}]
      119 GETTABLEKS                       R14 R0 K14 ["PropertyLookup"]
      121 GETTABLEKS                       R13 R14 K13 ["Weight"]
      123 SETTABLEKS                       R13 R12 K28 ["Value"]
      125 CALL                             R11 1 1
      126 SETTABLEKS                       R11 R10 K19 ["Property_Weight"]
      128 GETUPVAL                         R11 1
      129 GETTABLEKS                       R11 R11 K32 ["createElement"]
      131 GETUPVAL                         R12 6
      132 DUPTABLE                         R13 K39 [{["LayoutOrder"], ["OnPinDragged"], ["Position"], ["HidePins"] = True, ["Pins"]}]
      133 GETTABLEKS                       R14 R1 K40 ["nextOrder"]
      135 CALL                             R14 0 1
      136 SETTABLEKS                       R14 R13 K33 ["LayoutOrder"]
      138 SETTABLEKS                       R9 R13 K34 ["OnPinDragged"]
      140 SETTABLEKS                       R8 R13 K35 ["Position"]
      142 NEWTABLE                         R14 0 2
      144 LOADN                            R15 0
      145 LOADN                            R16 1
      146 SETLIST                          R14 R15 2 [1]
      148 SETTABLEKS                       R14 R13 K38 ["Pins"]
      150 CALL                             R11 2 1
      151 SETTABLEKS                       R11 R10 K20 ["WeightSlider"]
      153 GETTABLEKS                       R11 R1 K41 ["nextInput"]
      155 DUPTABLE                         R12 K44 [{"Input", "Builder"}]
      156 DUPTABLE                         R13 K46 [{["Name"] = "A"}]
      157 SETTABLEKS                       R13 R12 K42 ["Input"]
      159 GETUPVAL                         R13 7
      160 SETTABLEKS                       R13 R12 K43 ["Builder"]
      162 CALL                             R11 1 1
      163 SETTABLEKS                       R11 R10 K21 ["Input_A"]
      165 GETTABLEKS                       R11 R1 K41 ["nextInput"]
      167 DUPTABLE                         R12 K44 [{"Input", "Builder"}]
      168 DUPTABLE                         R13 K48 [{["Name"] = "B"}]
      169 SETTABLEKS                       R13 R12 K42 ["Input"]
      171 GETUPVAL                         R13 7
      172 SETTABLEKS                       R13 R12 K43 ["Builder"]
      174 CALL                             R11 1 1
      175 SETTABLEKS                       R11 R10 K22 ["Input_B"]
      177 GETUPVAL                         R11 1
      178 GETTABLEKS                       R11 R11 K32 ["createElement"]
      180 GETUPVAL                         R12 0
      181 GETTABLEKS                       R12 R12 K49 ["CompositorNode"]
      183 GETTABLEKS                       R13 R1 K50 ["nodeProps"]
      185 DUPTABLE                         R14 K53 [{"ContextToolbar", "OutputPin"}]
      186 GETTABLEKS                       R15 R1 K54 ["spotlightButton"]
      188 CALL                             R15 0 1
      189 SETTABLEKS                       R15 R14 K51 ["ContextToolbar"]
      191 GETTABLEKS                       R15 R1 K55 ["outputPin"]
      193 CALL                             R15 0 1
      194 SETTABLEKS                       R15 R14 K52 ["OutputPin"]
      196 CALL                             R13 1 1
      197 MOVE                             R14 R10
      198 CALL                             R11 3 -1
      199 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodeProperty"]
       15 GETTABLEKS                       R2 R2 K9 ["Blend1DMap"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Parent"]
       22 GETTABLEKS                       R3 R3 K11 ["NodeGraphing"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Components"]
       29 GETTABLEKS                       R4 R4 K7 ["NodeView"]
       31 GETTABLEKS                       R4 R4 K8 ["CompositorNodeProperty"]
       33 GETTABLEKS                       R4 R4 K12 ["PropertyUtils"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K10 ["Parent"]
       40 GETTABLEKS                       R5 R5 K13 ["React"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K10 ["Parent"]
       47 GETTABLEKS                       R6 R6 K14 ["SignalsReact"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Components"]
       54 GETTABLEKS                       R7 R7 K7 ["NodeView"]
       56 GETTABLEKS                       R7 R7 K15 ["CompositorNodeInput"]
       58 GETTABLEKS                       R7 R7 K16 ["SimpleInput"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K17 ["Flags"]
       65 GETTABLEKS                       R8 R8 K18 ["getFFlagAnimGraphUIPerNodeParameterOverride"]
       67 CALL                             R7 1 1
       68 GETTABLEKS                       R8 R2 K19 ["NodePropertyOverrideContext"]
       70 DUPCLOSURE                       R9 K20 [PROTO_3]
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R6
       79 RETURN                           R9 1
