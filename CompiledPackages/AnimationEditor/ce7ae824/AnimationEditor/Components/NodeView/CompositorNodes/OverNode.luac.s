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
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["parameterOverrides"]
       10 GETTABLE                         R2 R3 R1
       11 JUMPIF                           R2 ; [+7]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K3 ["PropertyLookup"]
       15 GETTABLEKS                       R2 R3 K1 ["Weight"]
       17 JUMPIF                           R2 ; [+1]
       18 LOADN                            R2 1
       19 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isPropertyParameterized"]
        3 GETUPVAL                         R3 1
        4 LOADK                            R4 K1 ["Weight"]
        5 CALL                             R2 2 2
        6 JUMPIFNOT                        R2 ; [+9]
        7 JUMPIFNOT                        R3 ; [+8]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K2 ["setParameterOverrideValue"]
       11 MOVE                             R5 R3
       12 GETTABLEKS                       R6 R1 K3 ["X"]
       14 CALL                             R4 2 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K4 ["OnPropertyChanged"]
       19 JUMPIFEQKNIL                     R4 ; [+8]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K4 ["OnPropertyChanged"]
       24 LOADK                            R5 K1 ["Weight"]
       25 GETTABLEKS                       R6 R1 K3 ["X"]
       27 CALL                             R4 2 0
       28 RETURN                           R0 0

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
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K5 ["GraphContext"]
       22 GETTABLEKS                       R4 R4 K4 ["Context"]
       24 CALL                             R3 1 1
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K6 ["useMemo"]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R0
       31 NEWTABLE                         R6 0 2
       33 GETTABLEKS                       R7 R3 K7 ["observeNodePropsById"]
       35 GETTABLEKS                       R8 R0 K8 ["GraphPayload"]
       37 GETTABLEKS                       R8 R8 K9 ["id"]
       39 SETLIST                          R6 R7 2 [1]
       41 CALL                             R4 2 1
       42 GETUPVAL                         R5 2
       43 GETTABLEKS                       R5 R5 K10 ["useSignalState"]
       45 MOVE                             R6 R4
       46 CALL                             R5 1 1
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       50 NEWCLOSURE                       R7 P1
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R0
       55 NEWTABLE                         R8 0 3
       57 MOVE                             R9 R5
       58 GETTABLEKS                       R10 R2 K11 ["parameterOverrides"]
       60 GETTABLEKS                       R12 R0 K13 ["PropertyLookup"]
       62 GETTABLEKS                       R11 R12 K12 ["Weight"]
       64 SETLIST                          R8 R9 3 [1]
       66 CALL                             R6 2 1
       67 GETUPVAL                         R7 1
       68 GETTABLEKS                       R7 R7 K14 ["useCallback"]
       70 NEWCLOSURE                       R8 P2
       71 CAPTURE                          UPVAL U3
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R0
       75 NEWTABLE                         R9 0 4
       77 MOVE                             R10 R5
       78 GETTABLEKS                       R11 R0 K15 ["OnPropertyChanged"]
       80 GETTABLEKS                       R12 R0 K13 ["PropertyLookup"]
       82 GETTABLEKS                       R13 R2 K16 ["setParameterOverrideValue"]
       84 SETLIST                          R9 R10 4 [1]
       86 CALL                             R7 2 1
       87 GETUPVAL                         R9 4
       88 CALL                             R9 0 1
       89 JUMPIFNOT                        R9 ; [+63]
       90 DUPTABLE                         R8 K21 [{"Property_Weight", "WeightSlider", "Input_A", "Input_B"}]
       91 GETTABLEKS                       R9 R1 K22 ["nextProperty"]
       93 DUPTABLE                         R10 K29 [{["Name"] = "Weight", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 1}]
       94 GETTABLEKS                       R12 R0 K13 ["PropertyLookup"]
       96 GETTABLEKS                       R11 R12 K12 ["Weight"]
       98 SETTABLEKS                       R11 R10 K26 ["Value"]
      100 CALL                             R9 1 1
      101 SETTABLEKS                       R9 R8 K17 ["Property_Weight"]
      103 GETUPVAL                         R9 1
      104 GETTABLEKS                       R9 R9 K30 ["createElement"]
      106 GETUPVAL                         R10 5
      107 DUPTABLE                         R11 K37 [{["LayoutOrder"], ["OnPinDragged"], ["Position"], ["HidePins"] = True, ["Pins"]}]
      108 GETTABLEKS                       R12 R1 K38 ["nextOrder"]
      110 CALL                             R12 0 1
      111 SETTABLEKS                       R12 R11 K31 ["LayoutOrder"]
      113 SETTABLEKS                       R7 R11 K32 ["OnPinDragged"]
      115 SETTABLEKS                       R6 R11 K33 ["Position"]
      117 NEWTABLE                         R12 0 2
      119 LOADN                            R13 0
      120 LOADN                            R14 1
      121 SETLIST                          R12 R13 2 [1]
      123 SETTABLEKS                       R12 R11 K36 ["Pins"]
      125 CALL                             R9 2 1
      126 SETTABLEKS                       R9 R8 K18 ["WeightSlider"]
      128 GETTABLEKS                       R9 R1 K39 ["nextInput"]
      130 DUPTABLE                         R10 K42 [{"Input", "Builder"}]
      131 DUPTABLE                         R11 K44 [{["Name"] = "Base"}]
      132 SETTABLEKS                       R11 R10 K40 ["Input"]
      134 GETUPVAL                         R11 6
      135 SETTABLEKS                       R11 R10 K41 ["Builder"]
      137 CALL                             R9 1 1
      138 SETTABLEKS                       R9 R8 K19 ["Input_A"]
      140 GETTABLEKS                       R9 R1 K39 ["nextInput"]
      142 DUPTABLE                         R10 K42 [{"Input", "Builder"}]
      143 DUPTABLE                         R11 K46 [{["Name"] = "Over"}]
      144 SETTABLEKS                       R11 R10 K40 ["Input"]
      146 GETUPVAL                         R11 6
      147 SETTABLEKS                       R11 R10 K41 ["Builder"]
      149 CALL                             R9 1 1
      150 SETTABLEKS                       R9 R8 K20 ["Input_B"]
      152 JUMP                             ; [+37]
      153 DUPTABLE                         R8 K47 [{"Input_A", "Input_B", "Property_Weight"}]
      154 GETTABLEKS                       R9 R1 K39 ["nextInput"]
      156 DUPTABLE                         R10 K42 [{"Input", "Builder"}]
      157 DUPTABLE                         R11 K44 [{["Name"] = "Base"}]
      158 SETTABLEKS                       R11 R10 K40 ["Input"]
      160 GETUPVAL                         R11 6
      161 SETTABLEKS                       R11 R10 K41 ["Builder"]
      163 CALL                             R9 1 1
      164 SETTABLEKS                       R9 R8 K19 ["Input_A"]
      166 GETTABLEKS                       R9 R1 K39 ["nextInput"]
      168 DUPTABLE                         R10 K42 [{"Input", "Builder"}]
      169 DUPTABLE                         R11 K46 [{["Name"] = "Over"}]
      170 SETTABLEKS                       R11 R10 K40 ["Input"]
      172 GETUPVAL                         R11 6
      173 SETTABLEKS                       R11 R10 K41 ["Builder"]
      175 CALL                             R9 1 1
      176 SETTABLEKS                       R9 R8 K20 ["Input_B"]
      178 GETTABLEKS                       R9 R1 K22 ["nextProperty"]
      180 DUPTABLE                         R10 K29 [{["Name"] = "Weight", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 1}]
      181 GETTABLEKS                       R12 R0 K13 ["PropertyLookup"]
      183 GETTABLEKS                       R11 R12 K12 ["Weight"]
      185 SETTABLEKS                       R11 R10 K26 ["Value"]
      187 CALL                             R9 1 1
      188 SETTABLEKS                       R9 R8 K17 ["Property_Weight"]
      190 GETUPVAL                         R9 1
      191 GETTABLEKS                       R9 R9 K30 ["createElement"]
      193 GETUPVAL                         R10 0
      194 GETTABLEKS                       R10 R10 K48 ["CompositorNode"]
      196 GETTABLEKS                       R11 R1 K49 ["nodeProps"]
      198 DUPTABLE                         R12 K52 [{"ContextToolbar", "OutputPin"}]
      199 GETUPVAL                         R14 7
      200 CALL                             R14 0 1
      201 JUMPIFNOT                        R14 ; [+4]
      202 GETTABLEKS                       R13 R1 K53 ["spotlightButton"]
      204 CALL                             R13 0 1
      205 JUMP                             ; [+1]
      206 LOADNIL                          R13
      207 SETTABLEKS                       R13 R12 K50 ["ContextToolbar"]
      209 GETTABLEKS                       R13 R1 K54 ["outputPin"]
      211 CALL                             R13 0 1
      212 SETTABLEKS                       R13 R12 K51 ["OutputPin"]
      214 CALL                             R11 1 1
      215 MOVE                             R12 R8
      216 CALL                             R9 3 -1
      217 RETURN                           R9 -1

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
       65 GETTABLEKS                       R8 R8 K18 ["getFFlagAnimGraphUIWeightSlider"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K17 ["Flags"]
       72 GETTABLEKS                       R9 R9 K19 ["getFFlagAnimGraphUI_SpotlightNodes"]
       74 CALL                             R8 1 1
       75 DUPCLOSURE                       R9 K20 [PROTO_3]
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R8
       84 RETURN                           R9 1
