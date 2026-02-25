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
       33 DUPTABLE                         R7 K21 [{"LayoutOrder", "Name", "Weight", "IsParameterized", "IsReadOnly", "ParameterName", "NodeId", "Label", "Type", "Choices", "Value", "IsDefaultValue", "OnChanged"}]
       34 GETUPVAL                         R8 1
       35 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       37 GETTABLEKS                       R8 R0 K5 ["Name"]
       39 SETTABLEKS                       R8 R7 K5 ["Name"]
       41 GETTABLEKS                       R8 R0 K10 ["Weight"]
       43 SETTABLEKS                       R8 R7 K10 ["Weight"]
       45 SETTABLEKS                       R1 R7 K11 ["IsParameterized"]
       47 GETTABLEKS                       R8 R0 K12 ["IsReadOnly"]
       49 SETTABLEKS                       R8 R7 K12 ["IsReadOnly"]
       51 SETTABLEKS                       R2 R7 K13 ["ParameterName"]
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R9 R10 K4 ["GraphPayload"]
       56 GETTABLEKS                       R8 R9 K22 ["id"]
       58 SETTABLEKS                       R8 R7 K14 ["NodeId"]
       60 GETTABLEKS                       R8 R0 K15 ["Label"]
       62 JUMPIF                           R8 ; [+2]
       63 GETTABLEKS                       R8 R0 K5 ["Name"]
       65 SETTABLEKS                       R8 R7 K15 ["Label"]
       67 GETTABLEKS                       R8 R0 K16 ["Type"]
       69 SETTABLEKS                       R8 R7 K16 ["Type"]
       71 GETTABLEKS                       R8 R0 K17 ["Choices"]
       73 SETTABLEKS                       R8 R7 K17 ["Choices"]
       75 GETTABLEKS                       R9 R0 K18 ["Value"]
       77 JUMPIFEQKNIL                     R9 ; [+4]
       79 GETTABLEKS                       R8 R0 K18 ["Value"]
       81 JUMP                             ; [+2]
       82 GETTABLEKS                       R8 R0 K23 ["DefaultValue"]
       84 SETTABLEKS                       R8 R7 K18 ["Value"]
       86 GETTABLEKS                       R9 R0 K18 ["Value"]
       88 JUMPIFEQKNIL                     R9 ; [+2]
       90 LOADB                            R8 0 +1
       91 LOADB                            R8 1
       92 SETTABLEKS                       R8 R7 K19 ["IsDefaultValue"]
       94 GETTABLEKS                       R8 R0 K20 ["OnChanged"]
       96 JUMPIF                           R8 ; [+3]
       97 GETUPVAL                         R9 0
       98 GETTABLEKS                       R8 R9 K24 ["OnPropertyChanged"]
      100 SETTABLEKS                       R8 R7 K20 ["OnChanged"]
      102 CALL                             R5 2 -1
      103 CALL                             R3 -1 -1
      104 RETURN                           R3 -1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_4:
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
       24 DUPTABLE                         R4 K11 [{"Position", "pinSide", "pinDataType", "pinName", "pinNodeId"}]
       25 GETIMPORT                        R5 K14 [UDim2.new]
       27 LOADN                            R6 1
       28 LOADN                            R7 1
       29 LOADK                            R8 K15 [0.5]
       30 LOADN                            R9 0
       31 CALL                             R5 4 1
       32 SETTABLEKS                       R5 R4 K6 ["Position"]
       34 LOADK                            R5 K16 ["Output"]
       35 SETTABLEKS                       R5 R4 K7 ["pinSide"]
       37 SETTABLEKS                       R0 R4 K8 ["pinDataType"]
       39 LOADK                            R5 K16 ["Output"]
       40 SETTABLEKS                       R5 R4 K9 ["pinName"]
       42 SETTABLEKS                       R1 R4 K10 ["pinNodeId"]
       44 CALL                             R2 2 -1
       45 RETURN                           R2 -1

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 DUPTABLE                         R2 K4 [{"OutputPin"}]
        5 GETTABLEKS                       R3 R0 K3 ["OutputPin"]
        7 SETTABLEKS                       R3 R2 K3 ["OutputPin"]
        9 SETTABLEKS                       R2 R1 K5 ["HeaderChildren"]
       11 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Collapsed"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K1 ["createElement"]
        9 GETUPVAL                         R2 2
       10 DUPTABLE                         R3 K16 [{"LayoutOrder", "InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered", "Position", "PropertyLookup", "Size", "StateLookup", "text", "GraphPayload"}]
       11 GETUPVAL                         R5 3
       12 ADDK                             R5 R5 K17 [1]
       13 SETUPVAL                         R5 3
       14 GETUPVAL                         R4 3
       15 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       17 GETTABLEKS                       R4 R0 K3 ["InputBuilder"]
       19 SETTABLEKS                       R4 R3 K3 ["InputBuilder"]
       21 GETTABLEKS                       R4 R0 K4 ["InputBuilderProps"]
       23 SETTABLEKS                       R4 R3 K4 ["InputBuilderProps"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K15 ["GraphPayload"]
       28 GETTABLEKS                       R4 R5 K18 ["id"]
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
       74 GETTABLEKS                       R4 R5 K15 ["GraphPayload"]
       76 SETTABLEKS                       R4 R3 K15 ["GraphPayload"]
       78 CALL                             R1 2 -1
       79 RETURN                           R1 -1

PROTO_7:
        0 LOADN                            R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          REF R1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          REF R1
       11 CAPTURE                          UPVAL U1
       12 NEWCLOSURE                       R4 P2
       13 CAPTURE                          REF R1
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U4
       16 NEWCLOSURE                       R5 P3
       17 CAPTURE                          REF R1
       18 NEWCLOSURE                       R6 P4
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U5
       22 NEWCLOSURE                       R7 P5
       23 CAPTURE                          VAL R0
       24 NEWCLOSURE                       R8 P6
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          REF R1
       29 DUPTABLE                         R9 K7 [{"nextInput", "nextOrder", "nextDivider", "nextProperty", "nodeProps", "nextInputPanel", "outputPin"}]
       30 SETTABLEKS                       R3 R9 K0 ["nextInput"]
       32 SETTABLEKS                       R5 R9 K1 ["nextOrder"]
       34 SETTABLEKS                       R4 R9 K2 ["nextDivider"]
       36 SETTABLEKS                       R2 R9 K3 ["nextProperty"]
       38 SETTABLEKS                       R7 R9 K4 ["nodeProps"]
       40 SETTABLEKS                       R8 R9 K5 ["nextInputPanel"]
       42 SETTABLEKS                       R6 R9 K6 ["outputPin"]
       44 CLOSEUPVALS                      R1
       45 RETURN                           R9 1

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
       88 DUPCLOSURE                       R11 K20 [PROTO_7]
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R5
       96 SETTABLEKS                       R11 R10 K21 ["createPropertyHelpers"]
       98 RETURN                           R10 1
