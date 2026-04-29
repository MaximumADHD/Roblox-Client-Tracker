PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeNodePropsById"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["GraphPayload"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isPropertyParameterized"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["Weight"]
        5 CALL                             R0 2 2
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["parameterOverrides"]
       10 GETTABLE                         R2 R3 R1
       11 JUMPIF                           R2 ; [+7]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R3 R4 K3 ["PropertyLookup"]
       15 GETTABLEKS                       R2 R3 K1 ["Weight"]
       17 JUMPIF                           R2 ; [+1]
       18 LOADN                            R2 1
       19 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setParameterOverrideValueAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K1 ["X"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["isPropertyParameterized"]
        3 GETUPVAL                         R3 1
        4 LOADK                            R4 K1 ["Weight"]
        5 CALL                             R2 2 2
        6 JUMPIFNOT                        R2 ; [+9]
        7 JUMPIFNOT                        R3 ; [+8]
        8 GETIMPORT                        R4 K4 [task.spawn]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R1
       14 CALL                             R4 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R4 R5 K5 ["OnPropertyChanged"]
       19 JUMPIFEQKNIL                     R4 ; [+8]
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R4 R5 K5 ["OnPropertyChanged"]
       24 LOADK                            R5 K1 ["Weight"]
       25 GETTABLEKS                       R6 R1 K6 ["X"]
       27 CALL                             R4 2 0
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createPropertyHelpers"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["useContext"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K2 ["Context"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K1 ["useContext"]
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R4 R5 K2 ["Context"]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R4 R5 K3 ["useMemo"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R0
       25 NEWTABLE                         R6 0 2
       27 GETTABLEKS                       R7 R3 K4 ["observeNodePropsById"]
       29 GETTABLEKS                       R9 R0 K5 ["GraphPayload"]
       31 GETTABLEKS                       R8 R9 K6 ["id"]
       33 SETLIST                          R6 R7 2 [1]
       35 CALL                             R4 2 1
       36 GETUPVAL                         R6 4
       37 GETTABLEKS                       R5 R6 K7 ["useSignalState"]
       39 MOVE                             R6 R4
       40 CALL                             R5 1 1
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R6 R7 K3 ["useMemo"]
       44 NEWCLOSURE                       R7 P1
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R0
       49 NEWTABLE                         R8 0 3
       51 MOVE                             R9 R5
       52 GETTABLEKS                       R10 R2 K8 ["parameterOverrides"]
       54 GETTABLEKS                       R12 R0 K10 ["PropertyLookup"]
       56 GETTABLEKS                       R11 R12 K9 ["Weight"]
       58 SETLIST                          R8 R9 3 [1]
       60 CALL                             R6 2 1
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R7 R8 K11 ["useCallback"]
       64 NEWCLOSURE                       R8 P2
       65 CAPTURE                          UPVAL U5
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R0
       69 NEWTABLE                         R9 0 4
       71 MOVE                             R10 R5
       72 GETTABLEKS                       R11 R0 K12 ["OnPropertyChanged"]
       74 GETTABLEKS                       R12 R0 K10 ["PropertyLookup"]
       76 GETTABLEKS                       R13 R2 K13 ["setParameterOverrideValueAsync"]
       78 SETLIST                          R9 R10 4 [1]
       80 CALL                             R7 2 1
       81 GETUPVAL                         R9 6
       82 CALL                             R9 0 1
       83 JUMPIFNOT                        R9 ; [+101]
       84 DUPTABLE                         R8 K18 [{"Property_Weight", "WeightSlider", "Input_A", "Input_B"}]
       85 GETTABLEKS                       R9 R1 K19 ["nextProperty"]
       87 DUPTABLE                         R10 K26 [{"Name", "Type", "Value", "DefaultValue", "Step", "Precision"}]
       88 LOADK                            R11 K9 ["Weight"]
       89 SETTABLEKS                       R11 R10 K20 ["Name"]
       91 LOADK                            R11 K27 ["Number"]
       92 SETTABLEKS                       R11 R10 K21 ["Type"]
       94 GETTABLEKS                       R12 R0 K10 ["PropertyLookup"]
       96 GETTABLEKS                       R11 R12 K9 ["Weight"]
       98 SETTABLEKS                       R11 R10 K22 ["Value"]
      100 LOADN                            R11 1
      101 SETTABLEKS                       R11 R10 K23 ["DefaultValue"]
      103 GETUPVAL                         R12 7
      104 CALL                             R12 0 1
      105 JUMPIFNOT                        R12 ; [+2]
      106 LOADNIL                          R11
      107 JUMP                             ; [+1]
      108 LOADK                            R11 K28 [0.1]
      109 SETTABLEKS                       R11 R10 K24 ["Step"]
      111 GETUPVAL                         R12 7
      112 CALL                             R12 0 1
      113 JUMPIFNOT                        R12 ; [+2]
      114 LOADNIL                          R11
      115 JUMP                             ; [+5]
      116 GETUPVAL                         R13 8
      117 GETTABLEKS                       R12 R13 K29 ["NUMBER_PRECISION"]
      119 GETTABLEKS                       R11 R12 K30 ["Float"]
      121 SETTABLEKS                       R11 R10 K25 ["Precision"]
      123 CALL                             R9 1 1
      124 SETTABLEKS                       R9 R8 K14 ["Property_Weight"]
      126 GETUPVAL                         R10 1
      127 GETTABLEKS                       R9 R10 K31 ["createElement"]
      129 GETUPVAL                         R10 9
      130 DUPTABLE                         R11 K37 [{"LayoutOrder", "OnPinDragged", "Position", "HidePins", "Pins"}]
      131 GETTABLEKS                       R12 R1 K38 ["nextOrder"]
      133 CALL                             R12 0 1
      134 SETTABLEKS                       R12 R11 K32 ["LayoutOrder"]
      136 SETTABLEKS                       R7 R11 K33 ["OnPinDragged"]
      138 SETTABLEKS                       R6 R11 K34 ["Position"]
      140 LOADB                            R12 1
      141 SETTABLEKS                       R12 R11 K35 ["HidePins"]
      143 NEWTABLE                         R12 0 2
      145 LOADN                            R13 0
      146 LOADN                            R14 1
      147 SETLIST                          R12 R13 2 [1]
      149 SETTABLEKS                       R12 R11 K36 ["Pins"]
      151 CALL                             R9 2 1
      152 SETTABLEKS                       R9 R8 K15 ["WeightSlider"]
      154 GETTABLEKS                       R9 R1 K39 ["nextInput"]
      156 DUPTABLE                         R10 K42 [{"Input", "Builder"}]
      157 DUPTABLE                         R11 K43 [{"Name"}]
      158 LOADK                            R12 K44 ["Base"]
      159 SETTABLEKS                       R12 R11 K20 ["Name"]
      161 SETTABLEKS                       R11 R10 K40 ["Input"]
      163 GETUPVAL                         R11 10
      164 SETTABLEKS                       R11 R10 K41 ["Builder"]
      166 CALL                             R9 1 1
      167 SETTABLEKS                       R9 R8 K16 ["Input_A"]
      169 GETTABLEKS                       R9 R1 K39 ["nextInput"]
      171 DUPTABLE                         R10 K42 [{"Input", "Builder"}]
      172 DUPTABLE                         R11 K43 [{"Name"}]
      173 LOADK                            R12 K45 ["Over"]
      174 SETTABLEKS                       R12 R11 K20 ["Name"]
      176 SETTABLEKS                       R11 R10 K40 ["Input"]
      178 GETUPVAL                         R11 10
      179 SETTABLEKS                       R11 R10 K41 ["Builder"]
      181 CALL                             R9 1 1
      182 SETTABLEKS                       R9 R8 K17 ["Input_B"]
      184 JUMP                             ; [+72]
      185 DUPTABLE                         R8 K46 [{"Input_A", "Input_B", "Property_Weight"}]
      186 GETTABLEKS                       R9 R1 K39 ["nextInput"]
      188 DUPTABLE                         R10 K42 [{"Input", "Builder"}]
      189 DUPTABLE                         R11 K43 [{"Name"}]
      190 LOADK                            R12 K44 ["Base"]
      191 SETTABLEKS                       R12 R11 K20 ["Name"]
      193 SETTABLEKS                       R11 R10 K40 ["Input"]
      195 GETUPVAL                         R11 10
      196 SETTABLEKS                       R11 R10 K41 ["Builder"]
      198 CALL                             R9 1 1
      199 SETTABLEKS                       R9 R8 K16 ["Input_A"]
      201 GETTABLEKS                       R9 R1 K39 ["nextInput"]
      203 DUPTABLE                         R10 K42 [{"Input", "Builder"}]
      204 DUPTABLE                         R11 K43 [{"Name"}]
      205 LOADK                            R12 K45 ["Over"]
      206 SETTABLEKS                       R12 R11 K20 ["Name"]
      208 SETTABLEKS                       R11 R10 K40 ["Input"]
      210 GETUPVAL                         R11 10
      211 SETTABLEKS                       R11 R10 K41 ["Builder"]
      213 CALL                             R9 1 1
      214 SETTABLEKS                       R9 R8 K17 ["Input_B"]
      216 GETTABLEKS                       R9 R1 K19 ["nextProperty"]
      218 DUPTABLE                         R10 K26 [{"Name", "Type", "Value", "DefaultValue", "Step", "Precision"}]
      219 LOADK                            R11 K9 ["Weight"]
      220 SETTABLEKS                       R11 R10 K20 ["Name"]
      222 LOADK                            R11 K27 ["Number"]
      223 SETTABLEKS                       R11 R10 K21 ["Type"]
      225 GETTABLEKS                       R12 R0 K10 ["PropertyLookup"]
      227 GETTABLEKS                       R11 R12 K9 ["Weight"]
      229 SETTABLEKS                       R11 R10 K22 ["Value"]
      231 LOADN                            R11 1
      232 SETTABLEKS                       R11 R10 K23 ["DefaultValue"]
      234 GETUPVAL                         R12 7
      235 CALL                             R12 0 1
      236 JUMPIFNOT                        R12 ; [+2]
      237 LOADNIL                          R11
      238 JUMP                             ; [+1]
      239 LOADK                            R11 K28 [0.1]
      240 SETTABLEKS                       R11 R10 K24 ["Step"]
      242 GETUPVAL                         R12 7
      243 CALL                             R12 0 1
      244 JUMPIFNOT                        R12 ; [+2]
      245 LOADNIL                          R11
      246 JUMP                             ; [+5]
      247 GETUPVAL                         R13 8
      248 GETTABLEKS                       R12 R13 K29 ["NUMBER_PRECISION"]
      250 GETTABLEKS                       R11 R12 K30 ["Float"]
      252 SETTABLEKS                       R11 R10 K25 ["Precision"]
      254 CALL                             R9 1 1
      255 SETTABLEKS                       R9 R8 K14 ["Property_Weight"]
      257 GETUPVAL                         R10 1
      258 GETTABLEKS                       R9 R10 K31 ["createElement"]
      260 GETUPVAL                         R10 11
      261 GETTABLEKS                       R11 R1 K47 ["nodeProps"]
      263 DUPTABLE                         R12 K49 [{"OutputPin"}]
      264 GETTABLEKS                       R13 R1 K50 ["outputPin"]
      266 CALL                             R13 0 1
      267 SETTABLEKS                       R13 R12 K48 ["OutputPin"]
      269 CALL                             R11 1 1
      270 MOVE                             R12 R8
      271 CALL                             R9 3 -1
      272 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["SignalsReact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R7 R0 K9 ["Components"]
       25 GETTABLEKS                       R6 R7 K10 ["NodeView"]
       27 GETTABLEKS                       R5 R6 K11 ["CompositorNodeProperty"]
       29 GETTABLEKS                       R4 R5 K12 ["Blend1DMap"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R8 R0 K9 ["Components"]
       36 GETTABLEKS                       R7 R8 K10 ["NodeView"]
       38 GETTABLEKS                       R6 R7 K13 ["CompositorNodes"]
       40 GETTABLEKS                       R5 R6 K14 ["CompositorNode"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R8 R0 K15 ["Util"]
       47 GETTABLEKS                       R7 R8 K16 ["Nodes"]
       49 GETTABLEKS                       R6 R7 K17 ["CompositorNodeUtils"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R8 R0 K15 ["Util"]
       56 GETTABLEKS                       R7 R8 K18 ["Constants"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R9 R0 K19 ["Contexts"]
       63 GETTABLEKS                       R8 R9 K20 ["NativeGraphContext"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R10 R0 K19 ["Contexts"]
       70 GETTABLEKS                       R9 R10 K21 ["ParameterOverrideContext"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R13 R0 K9 ["Components"]
       77 GETTABLEKS                       R12 R13 K10 ["NodeView"]
       79 GETTABLEKS                       R11 R12 K11 ["CompositorNodeProperty"]
       81 GETTABLEKS                       R10 R11 K22 ["PropertyUtils"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R14 R0 K9 ["Components"]
       88 GETTABLEKS                       R13 R14 K10 ["NodeView"]
       90 GETTABLEKS                       R12 R13 K23 ["CompositorNodeInput"]
       92 GETTABLEKS                       R11 R12 K24 ["SimpleInput"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K5 [require]
       97 GETTABLEKS                       R13 R0 K25 ["Flags"]
       99 GETTABLEKS                       R12 R13 K26 ["getFFlagAnimGraphFloatStep003"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R14 R0 K25 ["Flags"]
      106 GETTABLEKS                       R13 R14 K27 ["getFFlagAnimGraphUIWeightSlider"]
      108 CALL                             R12 1 1
      109 DUPCLOSURE                       R13 K28 [PROTO_4]
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R4
      122 RETURN                           R13 1
