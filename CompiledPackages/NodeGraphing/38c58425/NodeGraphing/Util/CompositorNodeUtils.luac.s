PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["DEFAULT_PIN_DATA_TYPE"]
        3 GETUPVAL                         R3 1
        4 JUMPIFNOT                        R3 ; [+22]
        5 LOADB                            R2 1
        6 GETTABLEKS                       R3 R0 K1 ["NodeType"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K1 ["NodeType"]
       11 GETTABLEKS                       R4 R4 K2 ["Parameter"]
       13 JUMPIFEQ                         R3 R4 ; [+15]
       15 GETTABLEKS                       R3 R0 K1 ["NodeType"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K1 ["NodeType"]
       20 GETTABLEKS                       R4 R4 K3 ["StateMachine"]
       22 JUMPIFEQ                         R3 R4 ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 JUMP                             ; [+2]
       27 GETTABLEKS                       R2 R0 K4 ["IsParameterNode"]
       29 JUMPIF                           R2 ; [+6]
       30 GETUPVAL                         R3 2
       31 CALL                             R3 0 1
       32 JUMPIFNOT                        R3 ; [+4]
       33 GETTABLEKS                       R3 R0 K5 ["IsExpressionNode"]
       35 JUMPIFNOT                        R3 ; [+1]
       36 LOADK                            R1 K2 ["Parameter"]
       37 GETTABLEKS                       R4 R0 K6 ["GraphPayload"]
       39 JUMPIFNOT                        R4 ; [+5]
       40 GETTABLEKS                       R3 R0 K6 ["GraphPayload"]
       42 GETTABLEKS                       R3 R3 K7 ["id"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R3
       46 JUMPIF                           R3 ; [+2]
       47 LOADNIL                          R4
       48 RETURN                           R4 1
       49 GETUPVAL                         R4 3
       50 GETTABLEKS                       R4 R4 K8 ["createElement"]
       52 GETUPVAL                         R5 4
       53 DUPTABLE                         R6 K17 [{["Position"], ["pinSide"] = "Output", ["pinDataType"], ["pinName"] = "Output", ["pinNodeId"], ["pinValue"] = }]
       54 GETIMPORT                        R7 K20 [UDim2.new]
       56 LOADN                            R8 1
       57 LOADN                            R9 13
       58 LOADK                            R10 K21 [0.5]
       59 LOADN                            R11 0
       60 CALL                             R7 4 1
       61 SETTABLEKS                       R7 R6 K9 ["Position"]
       63 SETTABLEKS                       R1 R6 K12 ["pinDataType"]
       65 SETTABLEKS                       R3 R6 K14 ["pinNodeId"]
       67 CALL                             R4 2 -1
       68 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodePropsById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["GraphPayload"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GraphPayload"]
        3 GETTABLEKS                       R0 R0 K1 ["inputLabelPinToConnectionMap"]
        5 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Collapsed"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETTABLEKS                       R1 R0 K1 ["ShowWhenCollapsed"]
        6 JUMPIF                           R1 ; [+2]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 1
       10 ADDK                             R1 R1 K2 [1]
       11 SETUPVAL                         R1 1
       12 LOADNIL                          R1
       13 LOADNIL                          R2
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K3 ["Input"]
       17 LOADB                            R4 0
       18 GETUPVAL                         R5 2
       19 CALL                             R5 0 1
       20 JUMPIFNOT                        R5 ; [+73]
       21 GETUPVAL                         R5 3
       22 CALL                             R5 0 1
       23 JUMPIF                           R5 ; [+3]
       24 GETUPVAL                         R5 4
       25 CALL                             R5 0 1
       26 JUMPIFNOT                        R5 ; [+17]
       27 GETTABLEKS                       R5 R0 K4 ["PinDynamicIndex"]
       29 JUMPIFNOT                        R5 ; [+14]
       30 JUMPIFEQKNIL                     R3 ; [+13]
       32 GETUPVAL                         R5 5
       33 GETTABLEKS                       R5 R5 K5 ["isInputPanelPropertyParameterized"]
       35 GETUPVAL                         R6 6
       36 GETTABLEKS                       R7 R3 K6 ["Name"]
       38 GETTABLEKS                       R8 R0 K6 ["Name"]
       40 CALL                             R5 3 2
       41 MOVE                             R1 R5
       42 MOVE                             R2 R6
       43 JUMP                             ; [+9]
       44 GETUPVAL                         R5 5
       45 GETTABLEKS                       R5 R5 K7 ["isPropertyParameterized"]
       47 GETUPVAL                         R6 7
       48 GETTABLEKS                       R7 R0 K6 ["Name"]
       50 CALL                             R5 2 2
       51 MOVE                             R1 R5
       52 MOVE                             R2 R6
       53 JUMPIF                           R1 ; [+72]
       54 LOADNIL                          R5
       55 GETTABLEKS                       R6 R0 K4 ["PinDynamicIndex"]
       57 JUMPIFEQKNIL                     R6 ; [+14]
       59 JUMPIFEQKNIL                     R3 ; [+12]
       61 GETUPVAL                         R7 6
       62 GETTABLEKS                       R8 R0 K6 ["Name"]
       64 GETTABLE                         R6 R7 R8
       65 JUMPIFNOT                        R6 ; [+4]
       66 GETTABLEKS                       R7 R3 K6 ["Name"]
       68 GETTABLE                         R5 R6 R7
       69 JUMP                             ; [+13]
       70 LOADNIL                          R5
       71 JUMP                             ; [+11]
       72 GETUPVAL                         R6 0
       73 GETTABLEKS                       R6 R6 K8 ["GraphPayload"]
       75 GETTABLEKS                       R6 R6 K9 ["inputPinToConnectionMap"]
       77 JUMPIFNOT                        R6 ; [+4]
       78 GETTABLEKS                       R7 R0 K6 ["Name"]
       80 GETTABLE                         R5 R6 R7
       81 JUMP                             ; [+1]
       82 LOADNIL                          R5
       83 LOADB                            R6 0
       84 JUMPIFEQKNIL                     R5 ; [+7]
       86 GETTABLEKS                       R7 R5 K10 ["isValueNodeConnection"]
       88 JUMPIFEQKB                       R7 TRUE ; [+2]
       90 LOADB                            R6 0 +1
       91 LOADB                            R6 1
       92 MOVE                             R4 R6
       93 JUMP                             ; [+32]
       94 GETUPVAL                         R5 3
       95 CALL                             R5 0 1
       96 JUMPIF                           R5 ; [+3]
       97 GETUPVAL                         R5 4
       98 CALL                             R5 0 1
       99 JUMPIFNOT                        R5 ; [+17]
      100 GETTABLEKS                       R5 R0 K4 ["PinDynamicIndex"]
      102 JUMPIFNOT                        R5 ; [+14]
      103 JUMPIFEQKNIL                     R3 ; [+13]
      105 GETUPVAL                         R5 5
      106 GETTABLEKS                       R5 R5 K5 ["isInputPanelPropertyParameterized"]
      108 GETUPVAL                         R6 6
      109 GETTABLEKS                       R7 R3 K6 ["Name"]
      111 GETTABLEKS                       R8 R0 K6 ["Name"]
      113 CALL                             R5 3 2
      114 MOVE                             R1 R5
      115 MOVE                             R2 R6
      116 JUMP                             ; [+9]
      117 GETUPVAL                         R5 5
      118 GETTABLEKS                       R5 R5 K7 ["isPropertyParameterized"]
      120 GETUPVAL                         R6 7
      121 GETTABLEKS                       R7 R0 K6 ["Name"]
      123 CALL                             R5 2 2
      124 MOVE                             R1 R5
      125 MOVE                             R2 R6
      126 LOADK                            R5 K11 [""]
      127 GETTABLEKS                       R6 R0 K4 ["PinDynamicIndex"]
      129 JUMPIFEQKNIL                     R6 ; [+30]
      131 JUMPIFEQKNIL                     R3 ; [+28]
      133 GETUPVAL                         R7 6
      134 GETTABLEKS                       R8 R0 K6 ["Name"]
      136 GETTABLE                         R6 R7 R8
      137 JUMPIFNOT                        R6 ; [+6]
      138 GETTABLEKS                       R8 R3 K6 ["Name"]
      140 GETTABLE                         R7 R6 R8
      141 JUMPIFNOT                        R7 ; [+2]
      142 GETTABLEKS                       R5 R3 K6 ["Name"]
      144 GETUPVAL                         R7 4
      145 CALL                             R7 0 1
      146 JUMPIFNOT                        R7 ; [+13]
      147 JUMPIFNOT                        R1 ; [+12]
      148 GETUPVAL                         R7 5
      149 GETTABLEKS                       R7 R7 K12 ["getInputPanelParameterBindingName"]
      151 GETUPVAL                         R8 0
      152 GETTABLEKS                       R8 R8 K8 ["GraphPayload"]
      154 GETTABLEKS                       R9 R3 K6 ["Name"]
      156 GETTABLEKS                       R10 R0 K6 ["Name"]
      158 CALL                             R7 3 1
      159 OR                               R2 R7 R2
      160 GETUPVAL                         R6 8
      161 GETTABLEKS                       R6 R6 K13 ["createElement"]
      163 GETUPVAL                         R7 9
      164 GETUPVAL                         R8 10
      165 GETTABLEKS                       R8 R8 K14 ["join"]
      167 GETTABLEKS                       R9 R0 K15 ["ExtraProps"]
      169 JUMPIF                           R9 ; [+2]
      170 NEWTABLE                         R9 0 0
      172 DUPTABLE                         R10 K33 [{"LayoutOrder", "Name", "HidePin", "IsParameterized", "IsDisabled", "ParameterName", "InputPinName", "NodeId", "Label", "Type", "Choices", "Value", "IsValueResolved", "DefaultValue", "IsDefaultValue", "OnChanged", "Step", "Precision", "PinDynamicIndex"}]
      173 GETUPVAL                         R11 1
      174 SETTABLEKS                       R11 R10 K16 ["LayoutOrder"]
      176 GETTABLEKS                       R11 R0 K6 ["Name"]
      178 SETTABLEKS                       R11 R10 K6 ["Name"]
      180 GETTABLEKS                       R11 R0 K17 ["HidePin"]
      182 SETTABLEKS                       R11 R10 K17 ["HidePin"]
      184 SETTABLEKS                       R1 R10 K18 ["IsParameterized"]
      186 GETTABLEKS                       R12 R0 K19 ["IsDisabled"]
      188 OR                               R11 R12 R4
      189 SETTABLEKS                       R11 R10 K19 ["IsDisabled"]
      191 SETTABLEKS                       R2 R10 K20 ["ParameterName"]
      193 SETTABLEKS                       R5 R10 K21 ["InputPinName"]
      195 GETUPVAL                         R11 0
      196 GETTABLEKS                       R11 R11 K8 ["GraphPayload"]
      198 GETTABLEKS                       R11 R11 K34 ["id"]
      200 SETTABLEKS                       R11 R10 K22 ["NodeId"]
      202 GETTABLEKS                       R11 R0 K23 ["Label"]
      204 JUMPIF                           R11 ; [+2]
      205 GETTABLEKS                       R11 R0 K6 ["Name"]
      207 SETTABLEKS                       R11 R10 K23 ["Label"]
      209 GETTABLEKS                       R11 R0 K24 ["Type"]
      211 SETTABLEKS                       R11 R10 K24 ["Type"]
      213 GETTABLEKS                       R11 R0 K25 ["Choices"]
      215 SETTABLEKS                       R11 R10 K25 ["Choices"]
      217 GETTABLEKS                       R12 R0 K26 ["Value"]
      219 JUMPIFEQKNIL                     R12 ; [+4]
      221 GETTABLEKS                       R11 R0 K26 ["Value"]
      223 JUMP                             ; [+2]
      224 GETTABLEKS                       R11 R0 K28 ["DefaultValue"]
      226 SETTABLEKS                       R11 R10 K26 ["Value"]
      228 GETUPVAL                         R12 11
      229 CALL                             R12 0 1
      230 JUMPIFNOT                        R12 ; [+20]
      231 LOADB                            R11 0
      232 JUMPIFNOTEQKNIL                  R3 ; [+19]
      234 LOADB                            R11 0
      235 GETUPVAL                         R12 0
      236 GETTABLEKS                       R12 R12 K35 ["PropertyLookup"]
      238 JUMPIFEQKNIL                     R12 ; [+13]
      240 GETUPVAL                         R13 0
      241 GETTABLEKS                       R13 R13 K35 ["PropertyLookup"]
      243 GETTABLEKS                       R14 R0 K6 ["Name"]
      245 GETTABLE                         R12 R13 R14
      246 JUMPIFNOTEQKNIL                  R12 ; [+2]
      248 LOADB                            R11 0 +1
      249 LOADB                            R11 1
      250 JUMP                             ; [+1]
      251 LOADNIL                          R11
      252 SETTABLEKS                       R11 R10 K27 ["IsValueResolved"]
      254 GETUPVAL                         R12 11
      255 CALL                             R12 0 1
      256 JUMPIFNOT                        R12 ; [+3]
      257 GETTABLEKS                       R11 R0 K28 ["DefaultValue"]
      259 JUMP                             ; [+1]
      260 LOADNIL                          R11
      261 SETTABLEKS                       R11 R10 K28 ["DefaultValue"]
      263 GETTABLEKS                       R12 R0 K26 ["Value"]
      265 JUMPIFEQKNIL                     R12 ; [+2]
      267 LOADB                            R11 0 +1
      268 LOADB                            R11 1
      269 SETTABLEKS                       R11 R10 K29 ["IsDefaultValue"]
      271 GETTABLEKS                       R11 R0 K30 ["OnChanged"]
      273 JUMPIF                           R11 ; [+3]
      274 GETUPVAL                         R11 0
      275 GETTABLEKS                       R11 R11 K36 ["OnPropertyChanged"]
      277 SETTABLEKS                       R11 R10 K30 ["OnChanged"]
      279 GETTABLEKS                       R11 R0 K31 ["Step"]
      281 SETTABLEKS                       R11 R10 K31 ["Step"]
      283 GETTABLEKS                       R11 R0 K32 ["Precision"]
      285 SETTABLEKS                       R11 R10 K32 ["Precision"]
      287 GETTABLEKS                       R11 R0 K4 ["PinDynamicIndex"]
      289 SETTABLEKS                       R11 R10 K4 ["PinDynamicIndex"]
      291 CALL                             R8 2 -1
      292 CALL                             R6 -1 -1
      293 RETURN                           R6 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["join"]
        4 MOVE                             R3 R0
        5 DUPTABLE                         R4 K3 [{["HidePin"] = True}]
        6 CALL                             R2 2 -1
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Collapsed"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 1
        7 ADDK                             R1 R1 K1 [1]
        8 SETUPVAL                         R1 1
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["createElement"]
       12 GETTABLEKS                       R2 R0 K3 ["Builder"]
       14 DUPTABLE                         R3 K9 [{"Input", "NodeId", "Label", "LayoutOrder", "OnChanged"}]
       15 GETTABLEKS                       R4 R0 K4 ["Input"]
       17 SETTABLEKS                       R4 R3 K4 ["Input"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K10 ["GraphPayload"]
       22 GETTABLEKS                       R4 R4 K11 ["id"]
       24 SETTABLEKS                       R4 R3 K5 ["NodeId"]
       26 GETTABLEKS                       R4 R0 K6 ["Label"]
       28 JUMPIF                           R4 ; [+4]
       29 GETTABLEKS                       R4 R0 K4 ["Input"]
       31 GETTABLEKS                       R4 R4 K12 ["Name"]
       33 SETTABLEKS                       R4 R3 K6 ["Label"]
       35 GETUPVAL                         R4 1
       36 SETTABLEKS                       R4 R3 K7 ["LayoutOrder"]
       38 GETTABLEKS                       R4 R0 K8 ["OnChanged"]
       40 SETTABLEKS                       R4 R3 K8 ["OnChanged"]
       42 CALL                             R1 2 -1
       43 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["createElement"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K2 ["Divider"]
        9 DUPTABLE                         R2 K6 [{"variant", "orientation", "LayoutOrder"}]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K7 ["Enums"]
       13 GETTABLEKS                       R3 R3 K8 ["DividerVariant"]
       15 GETTABLEKS                       R3 R3 K9 ["Default"]
       17 SETTABLEKS                       R3 R2 K3 ["variant"]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K7 ["Enums"]
       22 GETTABLEKS                       R3 R3 K10 ["Orientation"]
       24 GETTABLEKS                       R3 R3 K11 ["Horizontal"]
       26 SETTABLEKS                       R3 R2 K4 ["orientation"]
       28 GETUPVAL                         R3 0
       29 SETTABLEKS                       R3 R2 K5 ["LayoutOrder"]
       31 CALL                             R0 2 -1
       32 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_9:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K3 ["ContextToolbar"]
        6 SETTABLEKS                       R2 R1 K3 ["ContextToolbar"]
        8 GETTABLEKS                       R2 R0 K4 ["MinimumWidth"]
       10 SETTABLEKS                       R2 R1 K4 ["MinimumWidth"]
       12 DUPTABLE                         R2 K6 [{"OutputPin"}]
       13 GETTABLEKS                       R3 R0 K5 ["OutputPin"]
       15 SETTABLEKS                       R3 R2 K5 ["OutputPin"]
       17 SETTABLEKS                       R2 R1 K7 ["HeaderChildren"]
       19 RETURN                           R1 1

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setSpotlightedNodeId"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADNIL                          R1
        6 JUMP                             ; [+5]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["GraphPayload"]
       10 GETTABLEKS                       R1 R1 K2 ["id"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GraphPayload"]
        3 GETTABLEKS                       R1 R1 K1 ["className"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["OUTPUT_NODE_CLASSNAME"]
        8 JUMPIFEQ                         R1 R2 ; [+2]
       10 LOADB                            R0 0 +1
       11 LOADB                            R0 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["spotlightedNodeId"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["GraphPayload"]
       18 GETTABLEKS                       R3 R3 K4 ["id"]
       20 JUMPIFEQ                         R2 R3 ; [+2]
       22 LOADB                            R1 0 +1
       23 LOADB                            R1 1
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K3 ["spotlightedNodeId"]
       27 JUMPIFEQKNIL                     R3 ; [+2]
       29 LOADB                            R2 0 +1
       30 LOADB                            R2 1
       31 JUMPIFNOT                        R0 ; [+30]
       32 JUMPIFNOT                        R2 ; [+29]
       33 DUPTABLE                         R3 K6 [{"Buttons"}]
       34 NEWTABLE                         R4 0 1
       36 DUPTABLE                         R5 K10 [{"Icon", "Tooltip", "OnActivated"}]
       37 DUPTABLE                         R6 K15 [{["name"] = "sun", ["variant"] = "Filled"}]
       38 SETTABLEKS                       R6 R5 K7 ["Icon"]
       40 GETUPVAL                         R7 3
       41 JUMPIFNOT                        R7 ; [+9]
       42 GETUPVAL                         R6 4
       43 LOADK                            R8 K16 ["Common"]
       44 LOADK                            R9 K17 ["AnimationEditor"]
       45 LOADK                            R10 K18 ["SpotlightButton"]
       46 LOADK                            R11 K19 ["GraphOutputTooltip"]
       47 NAMECALL                         R6 R6 K20 ["getExternalText"]
       49 CALL                             R6 5 1
       50 JUMP                             ; [+1]
       51 LOADK                            R6 K21 ["Graph output is the default spotlight"]
       52 SETTABLEKS                       R6 R5 K8 ["Tooltip"]
       54 DUPCLOSURE                       R6 K22 [PROTO_10]
       55 SETTABLEKS                       R6 R5 K9 ["OnActivated"]
       57 SETLIST                          R4 R5 1 [1]
       59 SETTABLEKS                       R4 R3 K5 ["Buttons"]
       61 RETURN                           R3 1
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R3 R3 K23 ["Selected"]
       65 JUMPIF                           R3 ; [+3]
       66 JUMPIF                           R1 ; [+2]
       67 LOADNIL                          R3
       68 RETURN                           R3 1
       69 DUPTABLE                         R3 K6 [{"Buttons"}]
       70 NEWTABLE                         R4 0 1
       72 DUPTABLE                         R5 K10 [{"Icon", "Tooltip", "OnActivated"}]
       73 JUMPIFNOT                        R1 ; [+2]
       74 DUPTABLE                         R6 K15 [{["name"] = "sun", ["variant"] = "Filled"}]
       75 JUMP                             ; [+1]
       76 DUPTABLE                         R6 K25 [{["name"] = "sun", ["variant"] = "Regular"}]
       77 SETTABLEKS                       R6 R5 K7 ["Icon"]
       79 GETUPVAL                         R7 3
       80 JUMPIFNOT                        R7 ; [+12]
       81 GETUPVAL                         R6 4
       82 LOADK                            R8 K16 ["Common"]
       83 LOADK                            R9 K17 ["AnimationEditor"]
       84 LOADK                            R10 K26 ["ContextToolbar"]
       85 JUMPIFNOT                        R1 ; [+2]
       86 LOADK                            R11 K27 ["ClearSpotlightTooltip"]
       87 JUMP                             ; [+1]
       88 LOADK                            R11 K28 ["SpotlightTooltip"]
       89 NAMECALL                         R6 R6 K20 ["getExternalText"]
       91 CALL                             R6 5 1
       92 JUMP                             ; [+4]
       93 JUMPIFNOT                        R1 ; [+2]
       94 LOADK                            R6 K29 ["Clear spotlight"]
       95 JUMP                             ; [+1]
       96 LOADK                            R6 K30 ["Spotlight"]
       97 SETTABLEKS                       R6 R5 K8 ["Tooltip"]
       99 NEWCLOSURE                       R6 P1
      100 CAPTURE                          UPVAL U2
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U0
      103 SETTABLEKS                       R6 R5 K9 ["OnActivated"]
      105 SETLIST                          R4 R5 1 [1]
      107 SETTABLEKS                       R4 R3 K5 ["Buttons"]
      109 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 3
       15 JUMPIFNOT                        R4 ; [+9]
       16 GETUPVAL                         R3 4
       17 GETTABLEKS                       R3 R3 K2 ["ContextServices"]
       19 GETTABLEKS                       R3 R3 K3 ["Localization"]
       21 NAMECALL                         R3 R3 K4 ["use"]
       23 CALL                             R3 1 1
       24 JUMP                             ; [+1]
       25 LOADNIL                          R3
       26 LOADN                            R4 0
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R0
       33 NEWTABLE                         R7 0 2
       35 GETTABLEKS                       R8 R1 K6 ["observeNodePropsById"]
       37 GETTABLEKS                       R9 R0 K7 ["GraphPayload"]
       39 GETTABLEKS                       R9 R9 K8 ["id"]
       41 SETLIST                          R7 R8 2 [1]
       43 CALL                             R5 2 1
       44 GETUPVAL                         R6 5
       45 GETTABLEKS                       R6 R6 K9 ["useSignalState"]
       47 MOVE                             R7 R5
       48 CALL                             R6 1 1
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R7 R7 K5 ["useMemo"]
       52 NEWCLOSURE                       R8 P1
       53 CAPTURE                          VAL R0
       54 NEWTABLE                         R9 0 1
       56 GETTABLEKS                       R10 R0 K7 ["GraphPayload"]
       58 GETTABLEKS                       R10 R10 K10 ["inputLabelPinToConnectionMap"]
       60 SETLIST                          R9 R10 1 [1]
       62 CALL                             R7 2 1
       63 NEWCLOSURE                       R8 P2
       64 CAPTURE                          VAL R0
       65 CAPTURE                          REF R4
       66 CAPTURE                          UPVAL U6
       67 CAPTURE                          UPVAL U7
       68 CAPTURE                          UPVAL U8
       69 CAPTURE                          UPVAL U9
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R6
       72 CAPTURE                          UPVAL U0
       73 CAPTURE                          UPVAL U10
       74 CAPTURE                          UPVAL U11
       75 CAPTURE                          UPVAL U12
       76 NEWCLOSURE                       R9 P3
       77 CAPTURE                          VAL R8
       78 CAPTURE                          UPVAL U11
       79 NEWCLOSURE                       R10 P4
       80 CAPTURE                          VAL R0
       81 CAPTURE                          REF R4
       82 CAPTURE                          UPVAL U0
       83 NEWCLOSURE                       R11 P5
       84 CAPTURE                          REF R4
       85 CAPTURE                          UPVAL U0
       86 CAPTURE                          UPVAL U13
       87 NEWCLOSURE                       R12 P6
       88 CAPTURE                          REF R4
       89 NEWCLOSURE                       R13 P7
       90 CAPTURE                          UPVAL U14
       91 CAPTURE                          VAL R0
       92 NEWCLOSURE                       R14 P8
       93 CAPTURE                          VAL R0
       94 NEWCLOSURE                       R15 P9
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U15
       97 CAPTURE                          VAL R2
       98 CAPTURE                          UPVAL U3
       99 CAPTURE                          VAL R3
      100 DUPTABLE                         R16 K19 [{"nextInput", "nextOrder", "nextDivider", "nextProperty", "nextTransitionProperty", "nodeProps", "outputPin", "spotlightButton"}]
      101 SETTABLEKS                       R10 R16 K11 ["nextInput"]
      103 SETTABLEKS                       R12 R16 K12 ["nextOrder"]
      105 SETTABLEKS                       R11 R16 K13 ["nextDivider"]
      107 SETTABLEKS                       R8 R16 K14 ["nextProperty"]
      109 SETTABLEKS                       R9 R16 K15 ["nextTransitionProperty"]
      111 SETTABLEKS                       R14 R16 K16 ["nodeProps"]
      113 SETTABLEKS                       R13 R16 K17 ["outputPin"]
      115 SETTABLEKS                       R15 R16 K18 ["spotlightButton"]
      117 CLOSEUPVALS                      R4
      118 RETURN                           R16 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CompositorNode"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["CompositorNodeProperty"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Constants"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Components"]
       30 GETTABLEKS                       R5 R5 K7 ["CompositorNode"]
       32 GETTABLEKS                       R5 R5 K10 ["ContextToolbar"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["Dash"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Parent"]
       46 GETTABLEKS                       R7 R7 K13 ["Foundation"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K11 ["Parent"]
       53 GETTABLEKS                       R8 R8 K14 ["Framework"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Components"]
       60 GETTABLEKS                       R9 R9 K15 ["GraphContext"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K16 ["NodeViewTypes"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K6 ["Components"]
       72 GETTABLEKS                       R11 R11 K8 ["CompositorNodeProperty"]
       74 GETTABLEKS                       R11 R11 K17 ["PropertyUtils"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K11 ["Parent"]
       81 GETTABLEKS                       R12 R12 K18 ["React"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K6 ["Components"]
       88 GETTABLEKS                       R13 R13 K19 ["CompositorNodes"]
       90 GETTABLEKS                       R13 R13 K20 ["RenderedCompositorPin"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K11 ["Parent"]
       97 GETTABLEKS                       R14 R14 K21 ["SignalsReact"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K6 ["Components"]
      104 GETTABLEKS                       R15 R15 K22 ["SpotlightedNodeContext"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R16 R0 K23 ["Flags"]
      111 GETTABLEKS                       R16 R16 K24 ["FFlagAnimGraphUI_ImprovedTranslations"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R17 R0 K23 ["Flags"]
      118 GETTABLEKS                       R17 R17 K25 ["FFlagAnimGraphUI_StateMachineNodeType"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K5 [require]
      123 GETTABLEKS                       R18 R0 K23 ["Flags"]
      125 GETTABLEKS                       R18 R18 K26 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      127 CALL                             R17 1 1
      128 GETIMPORT                        R18 K5 [require]
      130 GETTABLEKS                       R19 R0 K23 ["Flags"]
      132 GETTABLEKS                       R19 R19 K27 ["getFFlagAnimGraphUIEnableValueNodes"]
      134 CALL                             R18 1 1
      135 GETIMPORT                        R19 K5 [require]
      137 GETTABLEKS                       R20 R0 K23 ["Flags"]
      139 GETTABLEKS                       R20 R20 K28 ["getFFlagAnimGraphUIPerNodeParameterOverride"]
      141 CALL                             R19 1 1
      142 GETIMPORT                        R20 K5 [require]
      144 GETTABLEKS                       R21 R0 K23 ["Flags"]
      146 GETTABLEKS                       R21 R21 K29 ["getFFlagAnimGraphUIRevertInputPanelParameterOverride"]
      148 CALL                             R20 1 1
      149 GETIMPORT                        R21 K5 [require]
      151 GETTABLEKS                       R22 R0 K23 ["Flags"]
      153 GETTABLEKS                       R22 R22 K30 ["getFFlagAnimGraphUI_ValueNodeDebugOutputs"]
      155 CALL                             R21 1 1
      156 NEWTABLE                         R22 1 0
      158 DUPCLOSURE                       R23 K31 [PROTO_0]
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R16
      161 CAPTURE                          VAL R17
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R12
      164 DUPCLOSURE                       R24 K32 [PROTO_13]
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R14
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R7
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R18
      172 CAPTURE                          VAL R20
      173 CAPTURE                          VAL R19
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R5
      177 CAPTURE                          VAL R21
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R23
      180 CAPTURE                          VAL R3
      181 SETTABLEKS                       R24 R22 K33 ["createPropertyHelpers"]
      183 RETURN                           R22 1
