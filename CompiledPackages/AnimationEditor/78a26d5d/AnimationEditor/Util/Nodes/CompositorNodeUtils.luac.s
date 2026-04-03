PROTO_0:
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
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K4 ["GraphPayload"]
       18 GETTABLEKS                       R3 R0 K5 ["Name"]
       20 CALL                             R1 2 2
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R3 R4 K6 ["createElement"]
       24 GETUPVAL                         R4 4
       25 GETUPVAL                         R6 5
       26 GETTABLEKS                       R5 R6 K7 ["join"]
       28 GETTABLEKS                       R6 R0 K8 ["ExtraProps"]
       30 JUMPIF                           R6 ; [+2]
       31 NEWTABLE                         R6 0 0
       33 DUPTABLE                         R7 K24 [{"LayoutOrder", "Name", "Weight", "HidePin", "IsParameterized", "IsReadOnly", "ParameterName", "NodeId", "Label", "Type", "Choices", "Value", "IsDefaultValue", "OnChanged", "Step", "Precision"}]
       34 GETUPVAL                         R8 1
       35 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       37 GETTABLEKS                       R8 R0 K5 ["Name"]
       39 SETTABLEKS                       R8 R7 K5 ["Name"]
       41 GETTABLEKS                       R8 R0 K10 ["Weight"]
       43 SETTABLEKS                       R8 R7 K10 ["Weight"]
       45 GETTABLEKS                       R8 R0 K11 ["HidePin"]
       47 SETTABLEKS                       R8 R7 K11 ["HidePin"]
       49 SETTABLEKS                       R1 R7 K12 ["IsParameterized"]
       51 GETTABLEKS                       R8 R0 K13 ["IsReadOnly"]
       53 SETTABLEKS                       R8 R7 K13 ["IsReadOnly"]
       55 SETTABLEKS                       R2 R7 K14 ["ParameterName"]
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R9 R10 K4 ["GraphPayload"]
       60 GETTABLEKS                       R8 R9 K25 ["id"]
       62 SETTABLEKS                       R8 R7 K15 ["NodeId"]
       64 GETTABLEKS                       R8 R0 K16 ["Label"]
       66 JUMPIF                           R8 ; [+2]
       67 GETTABLEKS                       R8 R0 K5 ["Name"]
       69 SETTABLEKS                       R8 R7 K16 ["Label"]
       71 GETTABLEKS                       R8 R0 K17 ["Type"]
       73 SETTABLEKS                       R8 R7 K17 ["Type"]
       75 GETTABLEKS                       R8 R0 K18 ["Choices"]
       77 SETTABLEKS                       R8 R7 K18 ["Choices"]
       79 GETTABLEKS                       R9 R0 K19 ["Value"]
       81 JUMPIFEQKNIL                     R9 ; [+4]
       83 GETTABLEKS                       R8 R0 K19 ["Value"]
       85 JUMP                             ; [+2]
       86 GETTABLEKS                       R8 R0 K26 ["DefaultValue"]
       88 SETTABLEKS                       R8 R7 K19 ["Value"]
       90 GETTABLEKS                       R9 R0 K19 ["Value"]
       92 JUMPIFEQKNIL                     R9 ; [+2]
       94 LOADB                            R8 0 +1
       95 LOADB                            R8 1
       96 SETTABLEKS                       R8 R7 K20 ["IsDefaultValue"]
       98 GETTABLEKS                       R8 R0 K21 ["OnChanged"]
      100 JUMPIF                           R8 ; [+3]
      101 GETUPVAL                         R9 0
      102 GETTABLEKS                       R8 R9 K27 ["OnPropertyChanged"]
      104 SETTABLEKS                       R8 R7 K21 ["OnChanged"]
      106 GETTABLEKS                       R8 R0 K22 ["Step"]
      108 SETTABLEKS                       R8 R7 K22 ["Step"]
      110 GETTABLEKS                       R8 R0 K23 ["Precision"]
      112 SETTABLEKS                       R8 R7 K23 ["Precision"]
      114 CALL                             R5 2 -1
      115 CALL                             R3 -1 -1
      116 RETURN                           R3 -1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_5:
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

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 DUPTABLE                         R2 K4 [{"OutputPin"}]
        5 GETTABLEKS                       R3 R0 K3 ["OutputPin"]
        7 SETTABLEKS                       R3 R2 K3 ["OutputPin"]
        9 SETTABLEKS                       R2 R1 K5 ["HeaderChildren"]
       11 RETURN                           R1 1

PROTO_7:
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

PROTO_8:
        0 LOADN                            R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          REF R1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U3
       11 NEWCLOSURE                       R4 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          REF R1
       14 CAPTURE                          UPVAL U1
       15 NEWCLOSURE                       R5 P3
       16 CAPTURE                          REF R1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U4
       19 NEWCLOSURE                       R6 P4
       20 CAPTURE                          REF R1
       21 NEWCLOSURE                       R7 P5
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U5
       25 NEWCLOSURE                       R8 P6
       26 CAPTURE                          VAL R0
       27 NEWCLOSURE                       R9 P7
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          REF R1
       32 DUPTABLE                         R10 K8 [{"nextInput", "nextOrder", "nextDivider", "nextProperty", "nextTransitionProperty", "nodeProps", "nextInputPanel", "outputPin"}]
       33 SETTABLEKS                       R4 R10 K0 ["nextInput"]
       35 SETTABLEKS                       R6 R10 K1 ["nextOrder"]
       37 SETTABLEKS                       R5 R10 K2 ["nextDivider"]
       39 SETTABLEKS                       R2 R10 K3 ["nextProperty"]
       41 SETTABLEKS                       R3 R10 K4 ["nextTransitionProperty"]
       43 SETTABLEKS                       R8 R10 K5 ["nodeProps"]
       45 SETTABLEKS                       R9 R10 K6 ["nextInputPanel"]
       47 SETTABLEKS                       R7 R10 K7 ["outputPin"]
       49 CLOSEUPVALS                      R1
       50 RETURN                           R10 1

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
       54 GETTABLEKS                       R7 R0 K16 ["NodeViewTypes"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R11 R0 K6 ["Components"]
       61 GETTABLEKS                       R10 R11 K7 ["NodeView"]
       63 GETTABLEKS                       R9 R10 K10 ["CompositorNodeProperty"]
       65 GETTABLEKS                       R8 R9 K17 ["PropertyUtils"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R10 R0 K11 ["Parent"]
       72 GETTABLEKS                       R9 R10 K18 ["React"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R13 R0 K6 ["Components"]
       79 GETTABLEKS                       R12 R13 K7 ["NodeView"]
       81 GETTABLEKS                       R11 R12 K8 ["CompositorNodes"]
       83 GETTABLEKS                       R10 R11 K19 ["RenderedCompositorPin"]
       85 CALL                             R9 1 1
       86 NEWTABLE                         R10 1 0
       88 DUPCLOSURE                       R11 K20 [PROTO_8]
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R5
       96 SETTABLEKS                       R11 R10 K21 ["createPropertyHelpers"]
       98 RETURN                           R10 1
