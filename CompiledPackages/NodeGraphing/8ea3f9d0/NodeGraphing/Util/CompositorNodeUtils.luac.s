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
        1 GETTABLEKS                       R0 R0 K0 ["GraphPayload"]
        3 GETTABLEKS                       R0 R0 K1 ["inputLabelPinToConnectionMap"]
        5 RETURN                           R0 1

PROTO_2:
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
       20 JUMPIFNOT                        R5 ; [+70]
       21 GETUPVAL                         R5 3
       22 CALL                             R5 0 1
       23 JUMPIFNOT                        R5 ; [+17]
       24 GETTABLEKS                       R5 R0 K4 ["PinDynamicIndex"]
       26 JUMPIFNOT                        R5 ; [+14]
       27 JUMPIFEQKNIL                     R3 ; [+13]
       29 GETUPVAL                         R5 4
       30 GETTABLEKS                       R5 R5 K5 ["isInputPanelPropertyParameterized"]
       32 GETUPVAL                         R6 5
       33 GETTABLEKS                       R7 R3 K6 ["Name"]
       35 GETTABLEKS                       R8 R0 K6 ["Name"]
       37 CALL                             R5 3 2
       38 MOVE                             R1 R5
       39 MOVE                             R2 R6
       40 JUMP                             ; [+9]
       41 GETUPVAL                         R5 4
       42 GETTABLEKS                       R5 R5 K7 ["isPropertyParameterized"]
       44 GETUPVAL                         R6 6
       45 GETTABLEKS                       R7 R0 K6 ["Name"]
       47 CALL                             R5 2 2
       48 MOVE                             R1 R5
       49 MOVE                             R2 R6
       50 JUMPIF                           R1 ; [+69]
       51 LOADNIL                          R5
       52 GETTABLEKS                       R6 R0 K4 ["PinDynamicIndex"]
       54 JUMPIFEQKNIL                     R6 ; [+14]
       56 JUMPIFEQKNIL                     R3 ; [+12]
       58 GETUPVAL                         R7 5
       59 GETTABLEKS                       R8 R0 K6 ["Name"]
       61 GETTABLE                         R6 R7 R8
       62 JUMPIFNOT                        R6 ; [+4]
       63 GETTABLEKS                       R7 R3 K6 ["Name"]
       65 GETTABLE                         R5 R6 R7
       66 JUMP                             ; [+13]
       67 LOADNIL                          R5
       68 JUMP                             ; [+11]
       69 GETUPVAL                         R6 0
       70 GETTABLEKS                       R6 R6 K8 ["GraphPayload"]
       72 GETTABLEKS                       R6 R6 K9 ["inputPinToConnectionMap"]
       74 JUMPIFNOT                        R6 ; [+4]
       75 GETTABLEKS                       R7 R0 K6 ["Name"]
       77 GETTABLE                         R5 R6 R7
       78 JUMP                             ; [+1]
       79 LOADNIL                          R5
       80 LOADB                            R6 0
       81 JUMPIFEQKNIL                     R5 ; [+7]
       83 GETTABLEKS                       R7 R5 K10 ["isValueNodeConnection"]
       85 JUMPIFEQKB                       R7 TRUE ; [+2]
       87 LOADB                            R6 0 +1
       88 LOADB                            R6 1
       89 MOVE                             R4 R6
       90 JUMP                             ; [+29]
       91 GETUPVAL                         R5 3
       92 CALL                             R5 0 1
       93 JUMPIFNOT                        R5 ; [+17]
       94 GETTABLEKS                       R5 R0 K4 ["PinDynamicIndex"]
       96 JUMPIFNOT                        R5 ; [+14]
       97 JUMPIFEQKNIL                     R3 ; [+13]
       99 GETUPVAL                         R5 4
      100 GETTABLEKS                       R5 R5 K5 ["isInputPanelPropertyParameterized"]
      102 GETUPVAL                         R6 5
      103 GETTABLEKS                       R7 R3 K6 ["Name"]
      105 GETTABLEKS                       R8 R0 K6 ["Name"]
      107 CALL                             R5 3 2
      108 MOVE                             R1 R5
      109 MOVE                             R2 R6
      110 JUMP                             ; [+9]
      111 GETUPVAL                         R5 4
      112 GETTABLEKS                       R5 R5 K7 ["isPropertyParameterized"]
      114 GETUPVAL                         R6 6
      115 GETTABLEKS                       R7 R0 K6 ["Name"]
      117 CALL                             R5 2 2
      118 MOVE                             R1 R5
      119 MOVE                             R2 R6
      120 GETUPVAL                         R5 7
      121 GETTABLEKS                       R5 R5 K11 ["createElement"]
      123 GETUPVAL                         R6 8
      124 GETUPVAL                         R7 9
      125 GETTABLEKS                       R7 R7 K12 ["join"]
      127 GETTABLEKS                       R8 R0 K13 ["ExtraProps"]
      129 JUMPIF                           R8 ; [+2]
      130 NEWTABLE                         R8 0 0
      132 DUPTABLE                         R9 K30 [{"LayoutOrder", "Name", "HidePin", "IsParameterized", "IsDisabled", "ParameterName", "NodeId", "Label", "Type", "Choices", "Value", "IsValueResolved", "DefaultValue", "IsDefaultValue", "OnChanged", "Step", "Precision", "PinDynamicIndex"}]
      133 GETUPVAL                         R10 1
      134 SETTABLEKS                       R10 R9 K14 ["LayoutOrder"]
      136 GETTABLEKS                       R10 R0 K6 ["Name"]
      138 SETTABLEKS                       R10 R9 K6 ["Name"]
      140 GETTABLEKS                       R10 R0 K15 ["HidePin"]
      142 SETTABLEKS                       R10 R9 K15 ["HidePin"]
      144 SETTABLEKS                       R1 R9 K16 ["IsParameterized"]
      146 GETTABLEKS                       R11 R0 K17 ["IsDisabled"]
      148 OR                               R10 R11 R4
      149 SETTABLEKS                       R10 R9 K17 ["IsDisabled"]
      151 SETTABLEKS                       R2 R9 K18 ["ParameterName"]
      153 GETUPVAL                         R10 0
      154 GETTABLEKS                       R10 R10 K8 ["GraphPayload"]
      156 GETTABLEKS                       R10 R10 K31 ["id"]
      158 SETTABLEKS                       R10 R9 K19 ["NodeId"]
      160 GETTABLEKS                       R10 R0 K20 ["Label"]
      162 JUMPIF                           R10 ; [+2]
      163 GETTABLEKS                       R10 R0 K6 ["Name"]
      165 SETTABLEKS                       R10 R9 K20 ["Label"]
      167 GETTABLEKS                       R10 R0 K21 ["Type"]
      169 SETTABLEKS                       R10 R9 K21 ["Type"]
      171 GETTABLEKS                       R10 R0 K22 ["Choices"]
      173 SETTABLEKS                       R10 R9 K22 ["Choices"]
      175 GETTABLEKS                       R11 R0 K23 ["Value"]
      177 JUMPIFEQKNIL                     R11 ; [+4]
      179 GETTABLEKS                       R10 R0 K23 ["Value"]
      181 JUMP                             ; [+2]
      182 GETTABLEKS                       R10 R0 K25 ["DefaultValue"]
      184 SETTABLEKS                       R10 R9 K23 ["Value"]
      186 GETUPVAL                         R11 10
      187 CALL                             R11 0 1
      188 JUMPIFNOT                        R11 ; [+20]
      189 LOADB                            R10 0
      190 JUMPIFNOTEQKNIL                  R3 ; [+19]
      192 LOADB                            R10 0
      193 GETUPVAL                         R11 0
      194 GETTABLEKS                       R11 R11 K32 ["PropertyLookup"]
      196 JUMPIFEQKNIL                     R11 ; [+13]
      198 GETUPVAL                         R12 0
      199 GETTABLEKS                       R12 R12 K32 ["PropertyLookup"]
      201 GETTABLEKS                       R13 R0 K6 ["Name"]
      203 GETTABLE                         R11 R12 R13
      204 JUMPIFNOTEQKNIL                  R11 ; [+2]
      206 LOADB                            R10 0 +1
      207 LOADB                            R10 1
      208 JUMP                             ; [+1]
      209 LOADNIL                          R10
      210 SETTABLEKS                       R10 R9 K24 ["IsValueResolved"]
      212 GETUPVAL                         R11 10
      213 CALL                             R11 0 1
      214 JUMPIFNOT                        R11 ; [+3]
      215 GETTABLEKS                       R10 R0 K25 ["DefaultValue"]
      217 JUMP                             ; [+1]
      218 LOADNIL                          R10
      219 SETTABLEKS                       R10 R9 K25 ["DefaultValue"]
      221 GETTABLEKS                       R11 R0 K23 ["Value"]
      223 JUMPIFEQKNIL                     R11 ; [+2]
      225 LOADB                            R10 0 +1
      226 LOADB                            R10 1
      227 SETTABLEKS                       R10 R9 K26 ["IsDefaultValue"]
      229 GETTABLEKS                       R10 R0 K27 ["OnChanged"]
      231 JUMPIF                           R10 ; [+3]
      232 GETUPVAL                         R10 0
      233 GETTABLEKS                       R10 R10 K33 ["OnPropertyChanged"]
      235 SETTABLEKS                       R10 R9 K27 ["OnChanged"]
      237 GETTABLEKS                       R10 R0 K28 ["Step"]
      239 SETTABLEKS                       R10 R9 K28 ["Step"]
      241 GETTABLEKS                       R10 R0 K29 ["Precision"]
      243 SETTABLEKS                       R10 R9 K29 ["Precision"]
      245 GETTABLEKS                       R10 R0 K4 ["PinDynamicIndex"]
      247 SETTABLEKS                       R10 R9 K4 ["PinDynamicIndex"]
      249 CALL                             R7 2 -1
      250 CALL                             R5 -1 -1
      251 RETURN                           R5 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["join"]
        4 MOVE                             R3 R0
        5 DUPTABLE                         R4 K3 [{["HidePin"] = True}]
        6 CALL                             R2 2 -1
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["DEFAULT_PIN_DATA_TYPE"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+24]
        5 LOADB                            R1 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["NodeType"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K1 ["NodeType"]
       12 GETTABLEKS                       R3 R3 K2 ["Parameter"]
       14 JUMPIFEQ                         R2 R3 ; [+17]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K1 ["NodeType"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K1 ["NodeType"]
       22 GETTABLEKS                       R3 R3 K3 ["StateMachine"]
       24 JUMPIFEQ                         R2 R3 ; [+2]
       26 LOADB                            R1 0 +1
       27 LOADB                            R1 1
       28 JUMP                             ; [+3]
       29 GETUPVAL                         R1 2
       30 GETTABLEKS                       R1 R1 K4 ["IsParameterNode"]
       32 JUMPIF                           R1 ; [+7]
       33 GETUPVAL                         R2 3
       34 CALL                             R2 0 1
       35 JUMPIFNOT                        R2 ; [+5]
       36 GETUPVAL                         R2 2
       37 GETTABLEKS                       R2 R2 K5 ["IsExpressionNode"]
       39 JUMPIFNOT                        R2 ; [+1]
       40 LOADK                            R0 K2 ["Parameter"]
       41 GETUPVAL                         R3 2
       42 GETTABLEKS                       R3 R3 K6 ["GraphPayload"]
       44 JUMPIFNOT                        R3 ; [+6]
       45 GETUPVAL                         R2 2
       46 GETTABLEKS                       R2 R2 K6 ["GraphPayload"]
       48 GETTABLEKS                       R2 R2 K7 ["id"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R2
       52 JUMPIF                           R2 ; [+2]
       53 LOADNIL                          R3
       54 RETURN                           R3 1
       55 GETUPVAL                         R3 4
       56 GETTABLEKS                       R3 R3 K8 ["createElement"]
       58 GETUPVAL                         R4 5
       59 DUPTABLE                         R5 K17 [{["Position"], ["pinSide"] = "Output", ["pinDataType"], ["pinName"] = "Output", ["pinNodeId"], ["pinValue"] = }]
       60 GETIMPORT                        R6 K20 [UDim2.new]
       62 LOADN                            R7 1
       63 GETUPVAL                         R9 6
       64 CALL                             R9 0 1
       65 JUMPIFNOT                        R9 ; [+2]
       66 LOADN                            R8 13
       67 JUMP                             ; [+1]
       68 LOADN                            R8 1
       69 LOADK                            R9 K21 [0.5]
       70 LOADN                            R10 0
       71 CALL                             R6 4 1
       72 SETTABLEKS                       R6 R5 K9 ["Position"]
       74 SETTABLEKS                       R0 R5 K12 ["pinDataType"]
       76 SETTABLEKS                       R2 R5 K14 ["pinNodeId"]
       78 CALL                             R3 2 -1
       79 RETURN                           R3 -1

PROTO_8:
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

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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
       54 DUPCLOSURE                       R6 K22 [PROTO_9]
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

PROTO_12:
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
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R6
       71 CAPTURE                          UPVAL U0
       72 CAPTURE                          UPVAL U9
       73 CAPTURE                          UPVAL U10
       74 CAPTURE                          UPVAL U11
       75 NEWCLOSURE                       R9 P3
       76 CAPTURE                          VAL R8
       77 CAPTURE                          UPVAL U10
       78 NEWCLOSURE                       R10 P4
       79 CAPTURE                          VAL R0
       80 CAPTURE                          REF R4
       81 CAPTURE                          UPVAL U0
       82 NEWCLOSURE                       R11 P5
       83 CAPTURE                          REF R4
       84 CAPTURE                          UPVAL U0
       85 CAPTURE                          UPVAL U12
       86 NEWCLOSURE                       R12 P6
       87 CAPTURE                          REF R4
       88 NEWCLOSURE                       R13 P7
       89 CAPTURE                          UPVAL U13
       90 CAPTURE                          UPVAL U14
       91 CAPTURE                          VAL R0
       92 CAPTURE                          UPVAL U15
       93 CAPTURE                          UPVAL U0
       94 CAPTURE                          UPVAL U16
       95 CAPTURE                          UPVAL U17
       96 NEWCLOSURE                       R14 P8
       97 CAPTURE                          VAL R0
       98 NEWCLOSURE                       R15 P9
       99 CAPTURE                          VAL R0
      100 CAPTURE                          UPVAL U13
      101 CAPTURE                          VAL R2
      102 CAPTURE                          UPVAL U3
      103 CAPTURE                          VAL R3
      104 DUPTABLE                         R16 K19 [{"nextInput", "nextOrder", "nextDivider", "nextProperty", "nextTransitionProperty", "nodeProps", "outputPin", "spotlightButton"}]
      105 SETTABLEKS                       R10 R16 K11 ["nextInput"]
      107 SETTABLEKS                       R12 R16 K12 ["nextOrder"]
      109 SETTABLEKS                       R11 R16 K13 ["nextDivider"]
      111 SETTABLEKS                       R8 R16 K14 ["nextProperty"]
      113 SETTABLEKS                       R9 R16 K15 ["nextTransitionProperty"]
      115 SETTABLEKS                       R14 R16 K16 ["nodeProps"]
      117 SETTABLEKS                       R13 R16 K17 ["outputPin"]
      119 SETTABLEKS                       R15 R16 K18 ["spotlightButton"]
      121 CLOSEUPVALS                      R4
      122 RETURN                           R16 1

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
      139 GETTABLEKS                       R20 R20 K28 ["getFFlagAnimGraphUIPinOffset"]
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
      158 DUPCLOSURE                       R23 K31 [PROTO_12]
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R7
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R20
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R5
      170 CAPTURE                          VAL R21
      171 CAPTURE                          VAL R6
      172 CAPTURE                          VAL R3
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R17
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R19
      177 SETTABLEKS                       R23 R22 K32 ["createPropertyHelpers"]
      179 RETURN                           R22 1
