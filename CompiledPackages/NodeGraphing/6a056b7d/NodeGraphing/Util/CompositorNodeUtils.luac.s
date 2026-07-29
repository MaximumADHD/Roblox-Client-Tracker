PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodePropsById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["GraphPayload"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
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
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K3 ["isPropertyParameterized"]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R3 R0 K4 ["Name"]
       18 CALL                             R1 2 2
       19 GETUPVAL                         R3 4
       20 GETTABLEKS                       R3 R3 K5 ["createElement"]
       22 GETUPVAL                         R4 5
       23 GETUPVAL                         R5 6
       24 GETTABLEKS                       R5 R5 K6 ["join"]
       26 GETTABLEKS                       R6 R0 K7 ["ExtraProps"]
       28 JUMPIF                           R6 ; [+2]
       29 NEWTABLE                         R6 0 0
       31 DUPTABLE                         R7 K23 [{"LayoutOrder", "Name", "HidePin", "IsParameterized", "IsDisabled", "ParameterName", "NodeId", "Label", "Type", "Choices", "Value", "IsDefaultValue", "OnChanged", "Step", "Precision", "PinDynamicIndex"}]
       32 GETUPVAL                         R8 1
       33 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       35 GETTABLEKS                       R8 R0 K4 ["Name"]
       37 SETTABLEKS                       R8 R7 K4 ["Name"]
       39 GETTABLEKS                       R8 R0 K9 ["HidePin"]
       41 SETTABLEKS                       R8 R7 K9 ["HidePin"]
       43 SETTABLEKS                       R1 R7 K10 ["IsParameterized"]
       45 GETTABLEKS                       R8 R0 K11 ["IsDisabled"]
       47 SETTABLEKS                       R8 R7 K11 ["IsDisabled"]
       49 SETTABLEKS                       R2 R7 K12 ["ParameterName"]
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R8 R8 K24 ["GraphPayload"]
       54 GETTABLEKS                       R8 R8 K25 ["id"]
       56 SETTABLEKS                       R8 R7 K13 ["NodeId"]
       58 GETTABLEKS                       R8 R0 K14 ["Label"]
       60 JUMPIF                           R8 ; [+2]
       61 GETTABLEKS                       R8 R0 K4 ["Name"]
       63 SETTABLEKS                       R8 R7 K14 ["Label"]
       65 GETTABLEKS                       R8 R0 K15 ["Type"]
       67 SETTABLEKS                       R8 R7 K15 ["Type"]
       69 GETTABLEKS                       R8 R0 K16 ["Choices"]
       71 SETTABLEKS                       R8 R7 K16 ["Choices"]
       73 GETTABLEKS                       R9 R0 K17 ["Value"]
       75 JUMPIFEQKNIL                     R9 ; [+4]
       77 GETTABLEKS                       R8 R0 K17 ["Value"]
       79 JUMP                             ; [+2]
       80 GETTABLEKS                       R8 R0 K26 ["DefaultValue"]
       82 SETTABLEKS                       R8 R7 K17 ["Value"]
       84 GETTABLEKS                       R9 R0 K17 ["Value"]
       86 JUMPIFEQKNIL                     R9 ; [+2]
       88 LOADB                            R8 0 +1
       89 LOADB                            R8 1
       90 SETTABLEKS                       R8 R7 K18 ["IsDefaultValue"]
       92 GETTABLEKS                       R8 R0 K19 ["OnChanged"]
       94 JUMPIF                           R8 ; [+3]
       95 GETUPVAL                         R8 0
       96 GETTABLEKS                       R8 R8 K27 ["OnPropertyChanged"]
       98 SETTABLEKS                       R8 R7 K19 ["OnChanged"]
      100 GETTABLEKS                       R8 R0 K20 ["Step"]
      102 SETTABLEKS                       R8 R7 K20 ["Step"]
      104 GETTABLEKS                       R8 R0 K21 ["Precision"]
      106 SETTABLEKS                       R8 R7 K21 ["Precision"]
      108 GETUPVAL                         R9 7
      109 CALL                             R9 0 1
      110 JUMPIFNOT                        R9 ; [+3]
      111 GETTABLEKS                       R8 R0 K22 ["PinDynamicIndex"]
      113 JUMP                             ; [+1]
      114 LOADNIL                          R8
      115 SETTABLEKS                       R8 R7 K22 ["PinDynamicIndex"]
      117 CALL                             R5 2 -1
      118 CALL                             R3 -1 -1
      119 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["join"]
        4 MOVE                             R3 R0
        5 DUPTABLE                         R4 K3 [{["HidePin"] = True}]
        6 CALL                             R2 2 -1
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["GraphPayload"]
        8 GETTABLEKS                       R1 R1 K1 ["className"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["OUTPUT_NODE_CLASSNAME"]
       13 JUMPIFEQ                         R1 R2 ; [+2]
       15 LOADB                            R0 0 +1
       16 LOADB                            R0 1
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R2 R2 K3 ["spotlightedNodeId"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K0 ["GraphPayload"]
       23 GETTABLEKS                       R3 R3 K4 ["id"]
       25 JUMPIFEQ                         R2 R3 ; [+2]
       27 LOADB                            R1 0 +1
       28 LOADB                            R1 1
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R3 R3 K3 ["spotlightedNodeId"]
       32 JUMPIFEQKNIL                     R3 ; [+2]
       34 LOADB                            R2 0 +1
       35 LOADB                            R2 1
       36 JUMPIFNOT                        R0 ; [+16]
       37 JUMPIFNOT                        R2 ; [+15]
       38 DUPTABLE                         R3 K6 [{"Buttons"}]
       39 NEWTABLE                         R4 0 1
       41 DUPTABLE                         R5 K11 [{["Icon"], ["Tooltip"] = "Graph output is the default spotlight", ["OnActivated"]}]
       42 DUPTABLE                         R6 K16 [{["name"] = "sun", ["variant"] = "Filled"}]
       43 SETTABLEKS                       R6 R5 K7 ["Icon"]
       45 DUPCLOSURE                       R6 K17 [PROTO_8]
       46 SETTABLEKS                       R6 R5 K10 ["OnActivated"]
       48 SETLIST                          R4 R5 1 [1]
       50 SETTABLEKS                       R4 R3 K5 ["Buttons"]
       52 RETURN                           R3 1
       53 GETUPVAL                         R3 1
       54 GETTABLEKS                       R3 R3 K18 ["Selected"]
       56 JUMPIF                           R3 ; [+3]
       57 JUMPIF                           R1 ; [+2]
       58 LOADNIL                          R3
       59 RETURN                           R3 1
       60 DUPTABLE                         R3 K6 [{"Buttons"}]
       61 NEWTABLE                         R4 0 1
       63 DUPTABLE                         R5 K19 [{"Icon", "Tooltip", "OnActivated"}]
       64 JUMPIFNOT                        R1 ; [+2]
       65 DUPTABLE                         R6 K16 [{["name"] = "sun", ["variant"] = "Filled"}]
       66 JUMP                             ; [+1]
       67 DUPTABLE                         R6 K21 [{["name"] = "sun", ["variant"] = "Regular"}]
       68 SETTABLEKS                       R6 R5 K7 ["Icon"]
       70 JUMPIFNOT                        R1 ; [+2]
       71 LOADK                            R6 K22 ["Clear spotlight"]
       72 JUMP                             ; [+1]
       73 LOADK                            R6 K23 ["Spotlight"]
       74 SETTABLEKS                       R6 R5 K8 ["Tooltip"]
       76 NEWCLOSURE                       R6 P1
       77 CAPTURE                          UPVAL U3
       78 CAPTURE                          VAL R0
       79 CAPTURE                          UPVAL U1
       80 SETTABLEKS                       R6 R5 K10 ["OnActivated"]
       82 SETLIST                          R4 R5 1 [1]
       84 SETTABLEKS                       R4 R3 K5 ["Buttons"]
       86 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+8]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["useContext"]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K1 ["Context"]
       16 CALL                             R2 1 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 LOADN                            R3 0
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R6 0 2
       28 GETTABLEKS                       R7 R1 K3 ["observeNodePropsById"]
       30 GETTABLEKS                       R8 R0 K4 ["GraphPayload"]
       32 GETTABLEKS                       R8 R8 K5 ["id"]
       34 SETLIST                          R6 R7 2 [1]
       36 CALL                             R4 2 1
       37 GETUPVAL                         R5 4
       38 GETTABLEKS                       R5 R5 K6 ["useSignalState"]
       40 MOVE                             R6 R4
       41 CALL                             R5 1 1
       42 NEWCLOSURE                       R6 P1
       43 CAPTURE                          VAL R0
       44 CAPTURE                          REF R3
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          VAL R5
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          UPVAL U8
       51 NEWCLOSURE                       R7 P2
       52 CAPTURE                          VAL R6
       53 CAPTURE                          UPVAL U7
       54 NEWCLOSURE                       R8 P3
       55 CAPTURE                          VAL R0
       56 CAPTURE                          REF R3
       57 CAPTURE                          UPVAL U0
       58 NEWCLOSURE                       R9 P4
       59 CAPTURE                          REF R3
       60 CAPTURE                          UPVAL U0
       61 CAPTURE                          UPVAL U9
       62 NEWCLOSURE                       R10 P5
       63 CAPTURE                          REF R3
       64 NEWCLOSURE                       R11 P6
       65 CAPTURE                          UPVAL U10
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          UPVAL U11
       69 CAPTURE                          UPVAL U12
       70 NEWCLOSURE                       R12 P7
       71 CAPTURE                          VAL R0
       72 NEWCLOSURE                       R13 P8
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U10
       76 CAPTURE                          VAL R2
       77 DUPTABLE                         R14 K15 [{"nextInput", "nextOrder", "nextDivider", "nextProperty", "nextTransitionProperty", "nodeProps", "outputPin", "spotlightButton"}]
       78 SETTABLEKS                       R8 R14 K7 ["nextInput"]
       80 SETTABLEKS                       R10 R14 K8 ["nextOrder"]
       82 SETTABLEKS                       R9 R14 K9 ["nextDivider"]
       84 SETTABLEKS                       R6 R14 K10 ["nextProperty"]
       86 SETTABLEKS                       R7 R14 K11 ["nextTransitionProperty"]
       88 SETTABLEKS                       R12 R14 K12 ["nodeProps"]
       90 SETTABLEKS                       R11 R14 K13 ["outputPin"]
       92 SETTABLEKS                       R13 R14 K14 ["spotlightButton"]
       94 CLOSEUPVALS                      R3
       95 RETURN                           R14 1

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
       58 GETTABLEKS                       R9 R0 K6 ["Components"]
       60 GETTABLEKS                       R9 R9 K8 ["CompositorNodeProperty"]
       62 GETTABLEKS                       R9 R9 K15 ["PropertyUtils"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K11 ["Parent"]
       69 GETTABLEKS                       R10 R10 K16 ["React"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K6 ["Components"]
       76 GETTABLEKS                       R11 R11 K17 ["CompositorNodes"]
       78 GETTABLEKS                       R11 R11 K18 ["RenderedCompositorPin"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K11 ["Parent"]
       85 GETTABLEKS                       R12 R12 K19 ["SignalsReact"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K6 ["Components"]
       92 GETTABLEKS                       R13 R13 K20 ["SpotlightedNodeContext"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K21 ["Flags"]
       99 GETTABLEKS                       R14 R14 K22 ["getFFlagAnimGraphUIPinOffset"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K21 ["Flags"]
      106 GETTABLEKS                       R15 R15 K23 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K21 ["Flags"]
      113 GETTABLEKS                       R16 R16 K24 ["getFFlagAnimGraphUI_SpotlightNodes"]
      115 CALL                             R15 1 1
      116 NEWTABLE                         R16 1 0
      118 DUPCLOSURE                       R17 K25 [PROTO_11]
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R13
      132 SETTABLEKS                       R17 R16 K26 ["createPropertyHelpers"]
      134 RETURN                           R16 1
