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
       17 GETUPVAL                         R4 2
       18 CALL                             R4 0 1
       19 JUMPIFNOT                        R4 ; [+17]
       20 GETTABLEKS                       R4 R0 K4 ["PinDynamicIndex"]
       22 JUMPIFNOT                        R4 ; [+14]
       23 JUMPIFEQKNIL                     R3 ; [+13]
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K5 ["isInputPanelPropertyParameterized"]
       28 GETUPVAL                         R5 4
       29 GETTABLEKS                       R6 R3 K6 ["Name"]
       31 GETTABLEKS                       R7 R0 K6 ["Name"]
       33 CALL                             R4 3 2
       34 MOVE                             R1 R4
       35 MOVE                             R2 R5
       36 JUMP                             ; [+9]
       37 GETUPVAL                         R4 3
       38 GETTABLEKS                       R4 R4 K7 ["isPropertyParameterized"]
       40 GETUPVAL                         R5 5
       41 GETTABLEKS                       R6 R0 K6 ["Name"]
       43 CALL                             R4 2 2
       44 MOVE                             R1 R4
       45 MOVE                             R2 R5
       46 GETUPVAL                         R4 6
       47 GETTABLEKS                       R4 R4 K8 ["createElement"]
       49 GETUPVAL                         R5 7
       50 GETUPVAL                         R6 8
       51 GETTABLEKS                       R6 R6 K9 ["join"]
       53 GETTABLEKS                       R7 R0 K10 ["ExtraProps"]
       55 JUMPIF                           R7 ; [+2]
       56 NEWTABLE                         R7 0 0
       58 DUPTABLE                         R8 K25 [{"LayoutOrder", "Name", "HidePin", "IsParameterized", "IsDisabled", "ParameterName", "NodeId", "Label", "Type", "Choices", "Value", "IsDefaultValue", "OnChanged", "Step", "Precision", "PinDynamicIndex"}]
       59 GETUPVAL                         R9 1
       60 SETTABLEKS                       R9 R8 K11 ["LayoutOrder"]
       62 GETTABLEKS                       R9 R0 K6 ["Name"]
       64 SETTABLEKS                       R9 R8 K6 ["Name"]
       66 GETTABLEKS                       R9 R0 K12 ["HidePin"]
       68 SETTABLEKS                       R9 R8 K12 ["HidePin"]
       70 SETTABLEKS                       R1 R8 K13 ["IsParameterized"]
       72 GETTABLEKS                       R9 R0 K14 ["IsDisabled"]
       74 SETTABLEKS                       R9 R8 K14 ["IsDisabled"]
       76 SETTABLEKS                       R2 R8 K15 ["ParameterName"]
       78 GETUPVAL                         R9 0
       79 GETTABLEKS                       R9 R9 K26 ["GraphPayload"]
       81 GETTABLEKS                       R9 R9 K27 ["id"]
       83 SETTABLEKS                       R9 R8 K16 ["NodeId"]
       85 GETTABLEKS                       R9 R0 K17 ["Label"]
       87 JUMPIF                           R9 ; [+2]
       88 GETTABLEKS                       R9 R0 K6 ["Name"]
       90 SETTABLEKS                       R9 R8 K17 ["Label"]
       92 GETTABLEKS                       R9 R0 K18 ["Type"]
       94 SETTABLEKS                       R9 R8 K18 ["Type"]
       96 GETTABLEKS                       R9 R0 K19 ["Choices"]
       98 SETTABLEKS                       R9 R8 K19 ["Choices"]
      100 GETTABLEKS                       R10 R0 K20 ["Value"]
      102 JUMPIFEQKNIL                     R10 ; [+4]
      104 GETTABLEKS                       R9 R0 K20 ["Value"]
      106 JUMP                             ; [+2]
      107 GETTABLEKS                       R9 R0 K28 ["DefaultValue"]
      109 SETTABLEKS                       R9 R8 K20 ["Value"]
      111 GETTABLEKS                       R10 R0 K20 ["Value"]
      113 JUMPIFEQKNIL                     R10 ; [+2]
      115 LOADB                            R9 0 +1
      116 LOADB                            R9 1
      117 SETTABLEKS                       R9 R8 K21 ["IsDefaultValue"]
      119 GETTABLEKS                       R9 R0 K22 ["OnChanged"]
      121 JUMPIF                           R9 ; [+3]
      122 GETUPVAL                         R9 0
      123 GETTABLEKS                       R9 R9 K29 ["OnPropertyChanged"]
      125 SETTABLEKS                       R9 R8 K22 ["OnChanged"]
      127 GETTABLEKS                       R9 R0 K23 ["Step"]
      129 SETTABLEKS                       R9 R8 K23 ["Step"]
      131 GETTABLEKS                       R9 R0 K24 ["Precision"]
      133 SETTABLEKS                       R9 R8 K24 ["Precision"]
      135 GETTABLEKS                       R9 R0 K4 ["PinDynamicIndex"]
      137 SETTABLEKS                       R9 R8 K4 ["PinDynamicIndex"]
      139 CALL                             R6 2 -1
      140 CALL                             R4 -1 -1
      141 RETURN                           R4 -1

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
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["IsParameterNode"]
        6 JUMPIFNOT                        R1 ; [+1]
        7 LOADK                            R0 K2 ["Parameter"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["GraphPayload"]
       11 JUMPIFNOT                        R2 ; [+6]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K3 ["GraphPayload"]
       15 GETTABLEKS                       R1 R1 K4 ["id"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R1
       19 JUMPIF                           R1 ; [+2]
       20 LOADNIL                          R2
       21 RETURN                           R2 1
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K5 ["createElement"]
       25 GETUPVAL                         R3 3
       26 DUPTABLE                         R4 K14 [{["Position"], ["pinSide"] = "Output", ["pinDataType"], ["pinName"] = "Output", ["pinNodeId"], ["pinValue"] = }]
       27 GETIMPORT                        R5 K17 [UDim2.new]
       29 LOADN                            R6 1
       30 GETUPVAL                         R8 4
       31 CALL                             R8 0 1
       32 JUMPIFNOT                        R8 ; [+2]
       33 LOADN                            R7 13
       34 JUMP                             ; [+1]
       35 LOADN                            R7 1
       36 LOADK                            R8 K18 [0.5]
       37 LOADN                            R9 0
       38 CALL                             R5 4 1
       39 SETTABLEKS                       R5 R4 K6 ["Position"]
       41 SETTABLEKS                       R0 R4 K9 ["pinDataType"]
       43 SETTABLEKS                       R1 R4 K11 ["pinNodeId"]
       45 CALL                             R2 2 -1
       46 RETURN                           R2 -1

PROTO_8:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K3 ["ContextToolbar"]
        6 SETTABLEKS                       R2 R1 K3 ["ContextToolbar"]
        8 DUPTABLE                         R2 K5 [{"OutputPin"}]
        9 GETTABLEKS                       R3 R0 K4 ["OutputPin"]
       11 SETTABLEKS                       R3 R2 K4 ["OutputPin"]
       13 SETTABLEKS                       R2 R1 K6 ["HeaderChildren"]
       15 RETURN                           R1 1

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
       31 JUMPIFNOT                        R0 ; [+16]
       32 JUMPIFNOT                        R2 ; [+15]
       33 DUPTABLE                         R3 K6 [{"Buttons"}]
       34 NEWTABLE                         R4 0 1
       36 DUPTABLE                         R5 K11 [{["Icon"], ["Tooltip"] = "Graph output is the default spotlight", ["OnActivated"]}]
       37 DUPTABLE                         R6 K16 [{["name"] = "sun", ["variant"] = "Filled"}]
       38 SETTABLEKS                       R6 R5 K7 ["Icon"]
       40 DUPCLOSURE                       R6 K17 [PROTO_9]
       41 SETTABLEKS                       R6 R5 K10 ["OnActivated"]
       43 SETLIST                          R4 R5 1 [1]
       45 SETTABLEKS                       R4 R3 K5 ["Buttons"]
       47 RETURN                           R3 1
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K18 ["Selected"]
       51 JUMPIF                           R3 ; [+3]
       52 JUMPIF                           R1 ; [+2]
       53 LOADNIL                          R3
       54 RETURN                           R3 1
       55 DUPTABLE                         R3 K6 [{"Buttons"}]
       56 NEWTABLE                         R4 0 1
       58 DUPTABLE                         R5 K19 [{"Icon", "Tooltip", "OnActivated"}]
       59 JUMPIFNOT                        R1 ; [+2]
       60 DUPTABLE                         R6 K16 [{["name"] = "sun", ["variant"] = "Filled"}]
       61 JUMP                             ; [+1]
       62 DUPTABLE                         R6 K21 [{["name"] = "sun", ["variant"] = "Regular"}]
       63 SETTABLEKS                       R6 R5 K7 ["Icon"]
       65 JUMPIFNOT                        R1 ; [+2]
       66 LOADK                            R6 K22 ["Clear spotlight"]
       67 JUMP                             ; [+1]
       68 LOADK                            R6 K23 ["Spotlight"]
       69 SETTABLEKS                       R6 R5 K8 ["Tooltip"]
       71 NEWCLOSURE                       R6 P1
       72 CAPTURE                          UPVAL U2
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U0
       75 SETTABLEKS                       R6 R5 K10 ["OnActivated"]
       77 SETLIST                          R4 R5 1 [1]
       79 SETTABLEKS                       R4 R3 K5 ["Buttons"]
       81 RETURN                           R3 1

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
       14 LOADN                            R3 0
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R6 0 2
       23 GETTABLEKS                       R7 R1 K3 ["observeNodePropsById"]
       25 GETTABLEKS                       R8 R0 K4 ["GraphPayload"]
       27 GETTABLEKS                       R8 R8 K5 ["id"]
       29 SETLIST                          R6 R7 2 [1]
       31 CALL                             R4 2 1
       32 GETUPVAL                         R5 3
       33 GETTABLEKS                       R5 R5 K6 ["useSignalState"]
       35 MOVE                             R6 R4
       36 CALL                             R5 1 1
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       40 NEWCLOSURE                       R7 P1
       41 CAPTURE                          VAL R0
       42 NEWTABLE                         R8 0 1
       44 GETTABLEKS                       R9 R0 K4 ["GraphPayload"]
       46 GETTABLEKS                       R9 R9 K7 ["inputLabelPinToConnectionMap"]
       48 SETLIST                          R8 R9 1 [1]
       50 CALL                             R6 2 1
       51 NEWCLOSURE                       R7 P2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          REF R3
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R5
       58 CAPTURE                          UPVAL U0
       59 CAPTURE                          UPVAL U6
       60 CAPTURE                          UPVAL U7
       61 NEWCLOSURE                       R8 P3
       62 CAPTURE                          VAL R7
       63 CAPTURE                          UPVAL U7
       64 NEWCLOSURE                       R9 P4
       65 CAPTURE                          VAL R0
       66 CAPTURE                          REF R3
       67 CAPTURE                          UPVAL U0
       68 NEWCLOSURE                       R10 P5
       69 CAPTURE                          REF R3
       70 CAPTURE                          UPVAL U0
       71 CAPTURE                          UPVAL U8
       72 NEWCLOSURE                       R11 P6
       73 CAPTURE                          REF R3
       74 NEWCLOSURE                       R12 P7
       75 CAPTURE                          UPVAL U9
       76 CAPTURE                          VAL R0
       77 CAPTURE                          UPVAL U0
       78 CAPTURE                          UPVAL U10
       79 CAPTURE                          UPVAL U11
       80 NEWCLOSURE                       R13 P8
       81 CAPTURE                          VAL R0
       82 NEWCLOSURE                       R14 P9
       83 CAPTURE                          VAL R0
       84 CAPTURE                          UPVAL U9
       85 CAPTURE                          VAL R2
       86 DUPTABLE                         R15 K16 [{"nextInput", "nextOrder", "nextDivider", "nextProperty", "nextTransitionProperty", "nodeProps", "outputPin", "spotlightButton"}]
       87 SETTABLEKS                       R9 R15 K8 ["nextInput"]
       89 SETTABLEKS                       R11 R15 K9 ["nextOrder"]
       91 SETTABLEKS                       R10 R15 K10 ["nextDivider"]
       93 SETTABLEKS                       R7 R15 K11 ["nextProperty"]
       95 SETTABLEKS                       R8 R15 K12 ["nextTransitionProperty"]
       97 SETTABLEKS                       R13 R15 K13 ["nodeProps"]
       99 SETTABLEKS                       R12 R15 K14 ["outputPin"]
      101 SETTABLEKS                       R14 R15 K15 ["spotlightButton"]
      103 CLOSEUPVALS                      R3
      104 RETURN                           R15 1

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
       51 GETTABLEKS                       R8 R0 K6 ["Components"]
       53 GETTABLEKS                       R8 R8 K14 ["GraphContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K15 ["NodeViewTypes"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K6 ["Components"]
       65 GETTABLEKS                       R10 R10 K8 ["CompositorNodeProperty"]
       67 GETTABLEKS                       R10 R10 K16 ["PropertyUtils"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K11 ["Parent"]
       74 GETTABLEKS                       R11 R11 K17 ["React"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["Components"]
       81 GETTABLEKS                       R12 R12 K18 ["CompositorNodes"]
       83 GETTABLEKS                       R12 R12 K19 ["RenderedCompositorPin"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K11 ["Parent"]
       90 GETTABLEKS                       R13 R13 K20 ["SignalsReact"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K6 ["Components"]
       97 GETTABLEKS                       R14 R14 K21 ["SpotlightedNodeContext"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K22 ["Flags"]
      104 GETTABLEKS                       R15 R15 K23 ["getFFlagAnimGraphUIPinOffset"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R16 R0 K22 ["Flags"]
      111 GETTABLEKS                       R16 R16 K24 ["getFFlagAnimGraphUIRevertInputPanelParameterOverride"]
      113 CALL                             R15 1 1
      114 NEWTABLE                         R16 1 0
      116 DUPCLOSURE                       R17 K25 [PROTO_12]
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R14
      129 SETTABLEKS                       R17 R16 K26 ["createPropertyHelpers"]
      131 RETURN                           R16 1
