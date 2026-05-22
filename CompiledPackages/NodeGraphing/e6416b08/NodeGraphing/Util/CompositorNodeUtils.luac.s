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
        5 DUPTABLE                         R4 K2 [{"HidePin"}]
        6 LOADB                            R5 1
        7 SETTABLEKS                       R5 R4 K1 ["HidePin"]
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 -1
       11 RETURN                           R1 -1

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
       26 DUPTABLE                         R4 K12 [{"Position", "pinSide", "pinDataType", "pinName", "pinNodeId", "pinValue"}]
       27 GETIMPORT                        R5 K15 [UDim2.new]
       29 LOADN                            R6 1
       30 LOADN                            R7 1
       31 LOADK                            R8 K16 [0.5]
       32 LOADN                            R9 0
       33 CALL                             R5 4 1
       34 SETTABLEKS                       R5 R4 K6 ["Position"]
       36 LOADK                            R5 K17 ["Output"]
       37 SETTABLEKS                       R5 R4 K7 ["pinSide"]
       39 SETTABLEKS                       R0 R4 K8 ["pinDataType"]
       41 LOADK                            R5 K17 ["Output"]
       42 SETTABLEKS                       R5 R4 K9 ["pinName"]
       44 SETTABLEKS                       R1 R4 K10 ["pinNodeId"]
       46 LOADNIL                          R5
       47 SETTABLEKS                       R5 R4 K11 ["pinValue"]
       49 CALL                             R2 2 -1
       50 RETURN                           R2 -1

PROTO_7:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 DUPTABLE                         R2 K4 [{"OutputPin"}]
        5 GETTABLEKS                       R3 R0 K3 ["OutputPin"]
        7 SETTABLEKS                       R3 R2 K3 ["OutputPin"]
        9 SETTABLEKS                       R2 R1 K5 ["HeaderChildren"]
       11 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 LOADN                            R2 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R5 0 2
       16 GETTABLEKS                       R6 R1 K3 ["observeNodePropsById"]
       18 GETTABLEKS                       R7 R0 K4 ["GraphPayload"]
       20 GETTABLEKS                       R7 R7 K5 ["id"]
       22 SETLIST                          R5 R6 2 [1]
       24 CALL                             R3 2 1
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K6 ["useSignalState"]
       28 MOVE                             R5 R3
       29 CALL                             R4 1 1
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          REF R2
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R4
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U6
       39 NEWCLOSURE                       R6 P2
       40 CAPTURE                          VAL R5
       41 CAPTURE                          UPVAL U5
       42 NEWCLOSURE                       R7 P3
       43 CAPTURE                          VAL R0
       44 CAPTURE                          REF R2
       45 CAPTURE                          UPVAL U0
       46 NEWCLOSURE                       R8 P4
       47 CAPTURE                          REF R2
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          UPVAL U7
       50 NEWCLOSURE                       R9 P5
       51 CAPTURE                          REF R2
       52 NEWCLOSURE                       R10 P6
       53 CAPTURE                          UPVAL U8
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          UPVAL U9
       57 NEWCLOSURE                       R11 P7
       58 CAPTURE                          VAL R0
       59 DUPTABLE                         R12 K14 [{"nextInput", "nextOrder", "nextDivider", "nextProperty", "nextTransitionProperty", "nodeProps", "outputPin"}]
       60 SETTABLEKS                       R7 R12 K7 ["nextInput"]
       62 SETTABLEKS                       R9 R12 K8 ["nextOrder"]
       64 SETTABLEKS                       R8 R12 K9 ["nextDivider"]
       66 SETTABLEKS                       R5 R12 K10 ["nextProperty"]
       68 SETTABLEKS                       R6 R12 K11 ["nextTransitionProperty"]
       70 SETTABLEKS                       R11 R12 K12 ["nodeProps"]
       72 SETTABLEKS                       R10 R12 K13 ["outputPin"]
       74 CLOSEUPVALS                      R2
       75 RETURN                           R12 1

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
       28 GETTABLEKS                       R5 R0 K10 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["Dash"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K10 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["Foundation"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K6 ["Components"]
       44 GETTABLEKS                       R7 R7 K13 ["GraphContext"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K6 ["Components"]
       51 GETTABLEKS                       R8 R8 K8 ["CompositorNodeProperty"]
       53 GETTABLEKS                       R8 R8 K14 ["PropertyUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K10 ["Parent"]
       60 GETTABLEKS                       R9 R9 K15 ["React"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K6 ["Components"]
       67 GETTABLEKS                       R10 R10 K16 ["CompositorNodes"]
       69 GETTABLEKS                       R10 R10 K17 ["RenderedCompositorPin"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K10 ["Parent"]
       76 GETTABLEKS                       R11 R11 K18 ["SignalsReact"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K19 ["Flags"]
       83 GETTABLEKS                       R12 R12 K20 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
       85 CALL                             R11 1 1
       86 NEWTABLE                         R12 1 0
       88 DUPCLOSURE                       R13 K21 [PROTO_8]
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R9
       99 SETTABLEKS                       R13 R12 K22 ["createPropertyHelpers"]
      101 RETURN                           R12 1
