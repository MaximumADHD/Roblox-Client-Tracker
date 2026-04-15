PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeNodePropsById"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["GraphPayload"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Collapsed"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETTABLEKS                       R1 R0 K1 ["ShowWhenCollapsed"]
        6 JUMPIF                           R1 ; [+2]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 1
       10 ADDK                             R1 R1 K2 [1]
       11 SETUPVAL                         R1 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R1 R2 K3 ["isPropertyParameterized"]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R3 R0 K4 ["Name"]
       18 CALL                             R1 2 2
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R3 R4 K5 ["createElement"]
       22 GETUPVAL                         R4 5
       23 GETUPVAL                         R6 6
       24 GETTABLEKS                       R5 R6 K6 ["join"]
       26 GETTABLEKS                       R6 R0 K7 ["ExtraProps"]
       28 JUMPIF                           R6 ; [+2]
       29 NEWTABLE                         R6 0 0
       31 DUPTABLE                         R7 K23 [{"LayoutOrder", "Name", "Weight", "HidePin", "IsParameterized", "IsDisabled", "ParameterName", "NodeId", "Label", "Type", "Choices", "Value", "IsDefaultValue", "OnChanged", "Step", "Precision"}]
       32 GETUPVAL                         R8 1
       33 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       35 GETTABLEKS                       R8 R0 K4 ["Name"]
       37 SETTABLEKS                       R8 R7 K4 ["Name"]
       39 GETTABLEKS                       R8 R0 K9 ["Weight"]
       41 SETTABLEKS                       R8 R7 K9 ["Weight"]
       43 GETTABLEKS                       R8 R0 K10 ["HidePin"]
       45 SETTABLEKS                       R8 R7 K10 ["HidePin"]
       47 SETTABLEKS                       R1 R7 K11 ["IsParameterized"]
       49 GETTABLEKS                       R8 R0 K12 ["IsDisabled"]
       51 SETTABLEKS                       R8 R7 K12 ["IsDisabled"]
       53 SETTABLEKS                       R2 R7 K13 ["ParameterName"]
       55 GETUPVAL                         R10 0
       56 GETTABLEKS                       R9 R10 K24 ["GraphPayload"]
       58 GETTABLEKS                       R8 R9 K25 ["id"]
       60 SETTABLEKS                       R8 R7 K14 ["NodeId"]
       62 GETTABLEKS                       R8 R0 K15 ["Label"]
       64 JUMPIF                           R8 ; [+2]
       65 GETTABLEKS                       R8 R0 K4 ["Name"]
       67 SETTABLEKS                       R8 R7 K15 ["Label"]
       69 GETTABLEKS                       R8 R0 K16 ["Type"]
       71 SETTABLEKS                       R8 R7 K16 ["Type"]
       73 GETTABLEKS                       R8 R0 K17 ["Choices"]
       75 SETTABLEKS                       R8 R7 K17 ["Choices"]
       77 GETTABLEKS                       R9 R0 K18 ["Value"]
       79 JUMPIFEQKNIL                     R9 ; [+4]
       81 GETTABLEKS                       R8 R0 K18 ["Value"]
       83 JUMP                             ; [+2]
       84 GETTABLEKS                       R8 R0 K26 ["DefaultValue"]
       86 SETTABLEKS                       R8 R7 K18 ["Value"]
       88 GETTABLEKS                       R9 R0 K18 ["Value"]
       90 JUMPIFEQKNIL                     R9 ; [+2]
       92 LOADB                            R8 0 +1
       93 LOADB                            R8 1
       94 SETTABLEKS                       R8 R7 K19 ["IsDefaultValue"]
       96 GETTABLEKS                       R8 R0 K20 ["OnChanged"]
       98 JUMPIF                           R8 ; [+3]
       99 GETUPVAL                         R9 0
      100 GETTABLEKS                       R8 R9 K27 ["OnPropertyChanged"]
      102 SETTABLEKS                       R8 R7 K20 ["OnChanged"]
      104 GETTABLEKS                       R8 R0 K21 ["Step"]
      106 SETTABLEKS                       R8 R7 K21 ["Step"]
      108 GETTABLEKS                       R8 R0 K22 ["Precision"]
      110 SETTABLEKS                       R8 R7 K22 ["Precision"]
      112 CALL                             R5 2 -1
      113 CALL                             R3 -1 -1
      114 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["join"]
        4 MOVE                             R3 R0
        5 DUPTABLE                         R4 K2 [{"HidePin"}]
        6 LOADB                            R5 1
        7 SETTABLEKS                       R5 R4 K1 ["HidePin"]
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 -1
       11 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Collapsed"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 1
        7 ADDK                             R1 R1 K1 [1]
        8 SETUPVAL                         R1 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K2 ["createElement"]
       12 GETTABLEKS                       R2 R0 K3 ["Builder"]
       14 DUPTABLE                         R3 K9 [{"Input", "NodeId", "Label", "LayoutOrder", "OnChanged"}]
       15 GETTABLEKS                       R4 R0 K4 ["Input"]
       17 SETTABLEKS                       R4 R3 K4 ["Input"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K10 ["GraphPayload"]
       22 GETTABLEKS                       R4 R5 K11 ["id"]
       24 SETTABLEKS                       R4 R3 K5 ["NodeId"]
       26 GETTABLEKS                       R4 R0 K6 ["Label"]
       28 JUMPIF                           R4 ; [+4]
       29 GETTABLEKS                       R5 R0 K4 ["Input"]
       31 GETTABLEKS                       R4 R5 K12 ["Name"]
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
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K1 ["createElement"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K2 ["Divider"]
        9 DUPTABLE                         R2 K6 [{"variant", "orientation", "LayoutOrder"}]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K7 ["Enums"]
       13 GETTABLEKS                       R4 R5 K8 ["DividerVariant"]
       15 GETTABLEKS                       R3 R4 K9 ["Default"]
       17 SETTABLEKS                       R3 R2 K3 ["variant"]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R5 R6 K7 ["Enums"]
       22 GETTABLEKS                       R4 R5 K10 ["Orientation"]
       24 GETTABLEKS                       R3 R4 K11 ["Horizontal"]
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
        0 LOADK                            R0 K0 ["Animation"]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K1 ["IsParameterNode"]
        4 JUMPIFNOT                        R1 ; [+1]
        5 LOADK                            R0 K2 ["Parameter"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K3 ["GraphPayload"]
        9 JUMPIFNOT                        R2 ; [+6]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K3 ["GraphPayload"]
       13 GETTABLEKS                       R1 R2 K4 ["id"]
       15 JUMP                             ; [+1]
       16 LOADNIL                          R1
       17 JUMPIF                           R1 ; [+2]
       18 LOADNIL                          R2
       19 RETURN                           R2 1
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K5 ["createElement"]
       23 GETUPVAL                         R3 2
       24 DUPTABLE                         R4 K12 [{"Position", "pinSide", "pinDataType", "pinName", "pinNodeId", "pinValue"}]
       25 GETIMPORT                        R5 K15 [UDim2.new]
       27 LOADN                            R6 1
       28 LOADN                            R7 1
       29 LOADK                            R8 K16 [0.5]
       30 LOADN                            R9 0
       31 CALL                             R5 4 1
       32 SETTABLEKS                       R5 R4 K6 ["Position"]
       34 LOADK                            R5 K17 ["Output"]
       35 SETTABLEKS                       R5 R4 K7 ["pinSide"]
       37 SETTABLEKS                       R0 R4 K8 ["pinDataType"]
       39 LOADK                            R5 K17 ["Output"]
       40 SETTABLEKS                       R5 R4 K9 ["pinName"]
       42 SETTABLEKS                       R1 R4 K10 ["pinNodeId"]
       44 LOADNIL                          R5
       45 SETTABLEKS                       R5 R4 K11 ["pinValue"]
       47 CALL                             R2 2 -1
       48 RETURN                           R2 -1

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Collapsed"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K1 ["createElement"]
        9 GETUPVAL                         R2 2
       10 DUPTABLE                         R3 K17 [{"LayoutOrder", "InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered", "Position", "PropertyLookup", "Size", "StateLookup", "text", "editName", "GraphPayload"}]
       11 GETUPVAL                         R5 3
       12 ADDK                             R5 R5 K18 [1]
       13 SETUPVAL                         R5 3
       14 GETUPVAL                         R4 3
       15 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       17 GETTABLEKS                       R4 R0 K3 ["InputBuilder"]
       19 SETTABLEKS                       R4 R3 K3 ["InputBuilder"]
       21 GETTABLEKS                       R4 R0 K4 ["InputBuilderProps"]
       23 SETTABLEKS                       R4 R3 K4 ["InputBuilderProps"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K16 ["GraphPayload"]
       28 GETTABLEKS                       R4 R5 K19 ["id"]
       30 SETTABLEKS                       R4 R3 K5 ["NodeId"]
       32 GETTABLEKS                       R4 R0 K6 ["Inputs"]
       34 SETTABLEKS                       R4 R3 K6 ["Inputs"]
       36 GETTABLEKS                       R4 R0 K7 ["NewInputDefaultValue"]
       38 SETTABLEKS                       R4 R3 K7 ["NewInputDefaultValue"]
       40 GETTABLEKS                       R4 R0 K8 ["OnInputChanged"]
       42 SETTABLEKS                       R4 R3 K8 ["OnInputChanged"]
       44 GETTABLEKS                       R4 R0 K9 ["OnInputReordered"]
       46 SETTABLEKS                       R4 R3 K9 ["OnInputReordered"]
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R4 R5 K10 ["Position"]
       51 SETTABLEKS                       R4 R3 K10 ["Position"]
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R4 R5 K11 ["PropertyLookup"]
       56 SETTABLEKS                       R4 R3 K11 ["PropertyLookup"]
       58 GETUPVAL                         R5 0
       59 GETTABLEKS                       R4 R5 K12 ["Size"]
       61 SETTABLEKS                       R4 R3 K12 ["Size"]
       63 GETUPVAL                         R5 0
       64 GETTABLEKS                       R4 R5 K13 ["StateLookup"]
       66 SETTABLEKS                       R4 R3 K13 ["StateLookup"]
       68 GETUPVAL                         R5 0
       69 GETTABLEKS                       R4 R5 K14 ["text"]
       71 SETTABLEKS                       R4 R3 K14 ["text"]
       73 GETUPVAL                         R5 0
       74 GETTABLEKS                       R4 R5 K15 ["editName"]
       76 SETTABLEKS                       R4 R3 K15 ["editName"]
       78 GETUPVAL                         R5 0
       79 GETTABLEKS                       R4 R5 K16 ["GraphPayload"]
       81 SETTABLEKS                       R4 R3 K16 ["GraphPayload"]
       83 CALL                             R1 2 -1
       84 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 LOADN                            R2 0
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K2 ["useMemo"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R5 0 2
       16 GETTABLEKS                       R6 R1 K3 ["observeNodePropsById"]
       18 GETTABLEKS                       R8 R0 K4 ["GraphPayload"]
       20 GETTABLEKS                       R7 R8 K5 ["id"]
       22 SETLIST                          R5 R6 2 [1]
       24 CALL                             R3 2 1
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R4 R5 K6 ["useSignalState"]
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
       38 NEWCLOSURE                       R6 P2
       39 CAPTURE                          VAL R5
       40 CAPTURE                          UPVAL U5
       41 NEWCLOSURE                       R7 P3
       42 CAPTURE                          VAL R0
       43 CAPTURE                          REF R2
       44 CAPTURE                          UPVAL U0
       45 NEWCLOSURE                       R8 P4
       46 CAPTURE                          REF R2
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          UPVAL U6
       49 NEWCLOSURE                       R9 P5
       50 CAPTURE                          REF R2
       51 NEWCLOSURE                       R10 P6
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          UPVAL U7
       55 NEWCLOSURE                       R11 P7
       56 CAPTURE                          VAL R0
       57 NEWCLOSURE                       R12 P8
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          UPVAL U8
       61 CAPTURE                          REF R2
       62 DUPTABLE                         R13 K15 [{"nextInput", "nextOrder", "nextDivider", "nextProperty", "nextTransitionProperty", "nodeProps", "nextInputPanel", "outputPin"}]
       63 SETTABLEKS                       R7 R13 K7 ["nextInput"]
       65 SETTABLEKS                       R9 R13 K8 ["nextOrder"]
       67 SETTABLEKS                       R8 R13 K9 ["nextDivider"]
       69 SETTABLEKS                       R5 R13 K10 ["nextProperty"]
       71 SETTABLEKS                       R6 R13 K11 ["nextTransitionProperty"]
       73 SETTABLEKS                       R11 R13 K12 ["nodeProps"]
       75 SETTABLEKS                       R12 R13 K13 ["nextInputPanel"]
       77 SETTABLEKS                       R10 R13 K14 ["outputPin"]
       79 CLOSEUPVALS                      R2
       80 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Components"]
       11 GETTABLEKS                       R4 R5 K7 ["NodeView"]
       13 GETTABLEKS                       R3 R4 K8 ["CompositorNodes"]
       15 GETTABLEKS                       R2 R3 K9 ["CompositorNode"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Components"]
       22 GETTABLEKS                       R4 R5 K7 ["NodeView"]
       24 GETTABLEKS                       R3 R4 K10 ["CompositorNodeProperty"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R5 R0 K11 ["Parent"]
       31 GETTABLEKS                       R4 R5 K12 ["Dash"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Parent"]
       38 GETTABLEKS                       R5 R6 K13 ["Foundation"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R9 R0 K6 ["Components"]
       45 GETTABLEKS                       R8 R9 K7 ["NodeView"]
       47 GETTABLEKS                       R7 R8 K14 ["CompositorNodeInput"]
       49 GETTABLEKS                       R6 R7 K15 ["InputPanel"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R8 R0 K16 ["Contexts"]
       56 GETTABLEKS                       R7 R8 K17 ["NativeGraphContext"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K18 ["NodeViewTypes"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R12 R0 K6 ["Components"]
       68 GETTABLEKS                       R11 R12 K7 ["NodeView"]
       70 GETTABLEKS                       R10 R11 K10 ["CompositorNodeProperty"]
       72 GETTABLEKS                       R9 R10 K19 ["PropertyUtils"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R11 R0 K11 ["Parent"]
       79 GETTABLEKS                       R10 R11 K20 ["React"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R14 R0 K6 ["Components"]
       86 GETTABLEKS                       R13 R14 K7 ["NodeView"]
       88 GETTABLEKS                       R12 R13 K8 ["CompositorNodes"]
       90 GETTABLEKS                       R11 R12 K21 ["RenderedCompositorPin"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R13 R0 K11 ["Parent"]
       97 GETTABLEKS                       R12 R13 K22 ["SignalsReact"]
       99 CALL                             R11 1 1
      100 NEWTABLE                         R12 1 0
      102 DUPCLOSURE                       R13 K23 [PROTO_9]
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R5
      112 SETTABLEKS                       R13 R12 K24 ["createPropertyHelpers"]
      114 RETURN                           R12 1
