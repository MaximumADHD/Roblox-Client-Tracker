PROTO_0:
        0 DUPTABLE                         R0 K4 [{"Interruptible", "InterruptibleTrigger", "Duration", "Curve"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K5 ["PropertyLookup"]
        4 GETTABLEKS                       R1 R2 K6 ["DefaultInterruptible"]
        6 JUMPIF                           R1 ; [+2]
        7 GETIMPORT                        R1 K10 [Enum.AnimationNodeInterruptible.Always]
        9 SETTABLEKS                       R1 R0 K0 ["Interruptible"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K5 ["PropertyLookup"]
       14 GETTABLEKS                       R2 R3 K12 ["DefaultInterruptibleTrigger"]
       16 ORK                              R1 R2 K11 [False]
       17 SETTABLEKS                       R1 R0 K1 ["InterruptibleTrigger"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K5 ["PropertyLookup"]
       22 GETTABLEKS                       R1 R2 K13 ["DefaultTransitionDuration"]
       24 JUMPIF                           R1 ; [+5]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R2 R3 K14 ["DEFAULT_TRANSITION"]
       28 GETTABLEKS                       R1 R2 K2 ["Duration"]
       30 SETTABLEKS                       R1 R0 K2 ["Duration"]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R2 R3 K5 ["PropertyLookup"]
       35 GETTABLEKS                       R1 R2 K15 ["DefaultTransitionCurve"]
       37 JUMPIF                           R1 ; [+5]
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R2 R3 K14 ["DEFAULT_TRANSITION"]
       41 GETTABLEKS                       R1 R2 K3 ["Curve"]
       43 SETTABLEKS                       R1 R0 K3 ["Curve"]
       45 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        6 LOADK                            R4 K0 ["Bad newValue"]
        7 GETIMPORT                        R2 K2 [assert]
        9 CALL                             R2 2 0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K3 ["OnPropertyChanged"]
       13 JUMPIFNOT                        R2 ; [+28]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K3 ["OnPropertyChanged"]
       17 LOADK                            R3 K4 ["DefaultInterruptible"]
       18 GETTABLEKS                       R4 R1 K5 ["Interruptible"]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K3 ["OnPropertyChanged"]
       24 LOADK                            R3 K6 ["DefaultInterruptibleTrigger"]
       25 GETTABLEKS                       R4 R1 K7 ["InterruptibleTrigger"]
       27 CALL                             R2 2 0
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R2 R3 K3 ["OnPropertyChanged"]
       31 LOADK                            R3 K8 ["DefaultTransitionDuration"]
       32 GETTABLEKS                       R4 R1 K9 ["Duration"]
       34 CALL                             R2 2 0
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R2 R3 K3 ["OnPropertyChanged"]
       38 LOADK                            R3 K10 ["DefaultTransitionCurve"]
       39 GETTABLEKS                       R4 R1 K11 ["Curve"]
       41 CALL                             R2 2 0
       42 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{"GraphPayload", "Default", "TransitionFields"}]
        2 GETTABLEKS                       R3 R0 K0 ["GraphPayload"]
        4 SETTABLEKS                       R3 R2 K0 ["GraphPayload"]
        6 DUPTABLE                         R3 K5 [{"Condition"}]
        7 LOADB                            R4 1
        8 SETTABLEKS                       R4 R3 K4 ["Condition"]
       10 SETTABLEKS                       R3 R2 K1 ["Default"]
       12 NEWTABLE                         R3 0 4
       14 LOADK                            R4 K6 ["Interruptible"]
       15 LOADK                            R5 K7 ["InterruptibleTrigger"]
       16 LOADK                            R6 K8 ["Duration"]
       17 LOADK                            R7 K9 ["Curve"]
       18 SETLIST                          R3 R4 4 [1]
       20 SETTABLEKS                       R3 R2 K2 ["TransitionFields"]
       22 CALL                             R1 1 1
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K10 ["useMemo"]
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U2
       29 NEWTABLE                         R4 0 4
       31 GETTABLEKS                       R6 R0 K11 ["PropertyLookup"]
       33 GETTABLEKS                       R5 R6 K12 ["DefaultInterruptibleTrigger"]
       35 GETTABLEKS                       R7 R0 K11 ["PropertyLookup"]
       37 GETTABLEKS                       R6 R7 K13 ["DefaultInterruptible"]
       39 GETTABLEKS                       R8 R0 K11 ["PropertyLookup"]
       41 GETTABLEKS                       R7 R8 K14 ["DefaultTransitionDuration"]
       43 GETTABLEKS                       R9 R0 K11 ["PropertyLookup"]
       45 GETTABLEKS                       R8 R9 K15 ["DefaultTransitionCurve"]
       47 SETLIST                          R4 R5 4 [1]
       49 CALL                             R2 2 1
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R3 R4 K16 ["useCallback"]
       53 NEWCLOSURE                       R4 P1
       54 CAPTURE                          VAL R0
       55 NEWTABLE                         R5 0 1
       57 GETTABLEKS                       R6 R0 K17 ["OnPropertyChanged"]
       59 SETLIST                          R5 R6 1 [1]
       61 CALL                             R3 2 1
       62 GETUPVAL                         R5 3
       63 GETTABLEKS                       R4 R5 K18 ["createPropertyHelpers"]
       65 MOVE                             R5 R0
       66 CALL                             R4 1 1
       67 DUPTABLE                         R5 K22 [{"Property_State", "Property_DefaultTransition", "InputPanel"}]
       68 GETTABLEKS                       R6 R4 K23 ["nextProperty"]
       70 DUPTABLE                         R7 K30 [{"Name", "Label", "Type", "Value", "DefaultValue", "IsReadOnly"}]
       71 LOADK                            R8 K31 ["State"]
       72 SETTABLEKS                       R8 R7 K24 ["Name"]
       74 LOADK                            R8 K31 ["State"]
       75 SETTABLEKS                       R8 R7 K25 ["Label"]
       77 LOADK                            R8 K32 ["String"]
       78 SETTABLEKS                       R8 R7 K26 ["Type"]
       80 GETTABLEKS                       R9 R0 K11 ["PropertyLookup"]
       82 GETTABLEKS                       R8 R9 K31 ["State"]
       84 SETTABLEKS                       R8 R7 K27 ["Value"]
       86 LOADK                            R8 K33 [""]
       87 SETTABLEKS                       R8 R7 K28 ["DefaultValue"]
       89 LOADB                            R8 1
       90 SETTABLEKS                       R8 R7 K29 ["IsReadOnly"]
       92 CALL                             R6 1 1
       93 SETTABLEKS                       R6 R5 K19 ["Property_State"]
       95 GETTABLEKS                       R6 R4 K23 ["nextProperty"]
       97 DUPTABLE                         R7 K36 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
       98 LOADK                            R8 K37 ["DefaultTransition"]
       99 SETTABLEKS                       R8 R7 K24 ["Name"]
      101 LOADK                            R8 K38 ["Default Transition"]
      102 SETTABLEKS                       R8 R7 K25 ["Label"]
      104 LOADK                            R8 K39 ["Transition"]
      105 SETTABLEKS                       R8 R7 K26 ["Type"]
      107 SETTABLEKS                       R2 R7 K27 ["Value"]
      109 DUPTABLE                         R8 K42 [{"TransitionBuilder", "AllowReset"}]
      110 GETUPVAL                         R9 4
      111 SETTABLEKS                       R9 R8 K40 ["TransitionBuilder"]
      113 LOADB                            R9 0
      114 SETTABLEKS                       R9 R8 K41 ["AllowReset"]
      116 SETTABLEKS                       R8 R7 K34 ["ExtraProps"]
      118 SETTABLEKS                       R3 R7 K35 ["OnChanged"]
      120 CALL                             R6 1 1
      121 SETTABLEKS                       R6 R5 K20 ["Property_DefaultTransition"]
      123 GETTABLEKS                       R6 R4 K43 ["nextInputPanel"]
      125 DUPTABLE                         R7 K52 [{"LayoutOrder", "InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
      126 GETTABLEKS                       R8 R4 K53 ["nextOrder"]
      128 CALL                             R8 0 1
      129 SETTABLEKS                       R8 R7 K44 ["LayoutOrder"]
      131 GETUPVAL                         R8 5
      132 SETTABLEKS                       R8 R7 K45 ["InputBuilder"]
      134 DUPTABLE                         R8 K54 [{"DefaultTransition"}]
      135 SETTABLEKS                       R2 R8 K37 ["DefaultTransition"]
      137 SETTABLEKS                       R8 R7 K46 ["InputBuilderProps"]
      139 GETTABLEKS                       R9 R0 K0 ["GraphPayload"]
      141 GETTABLEKS                       R8 R9 K55 ["id"]
      143 SETTABLEKS                       R8 R7 K47 ["NodeId"]
      145 GETTABLEKS                       R8 R1 K56 ["inputs"]
      147 SETTABLEKS                       R8 R7 K48 ["Inputs"]
      149 GETTABLEKS                       R8 R1 K57 ["newInputDefaultValue"]
      151 SETTABLEKS                       R8 R7 K49 ["NewInputDefaultValue"]
      153 GETTABLEKS                       R8 R1 K58 ["onInputChanged"]
      155 SETTABLEKS                       R8 R7 K50 ["OnInputChanged"]
      157 GETTABLEKS                       R8 R1 K59 ["onInputReordered"]
      159 SETTABLEKS                       R8 R7 K51 ["OnInputReordered"]
      161 CALL                             R6 1 1
      162 SETTABLEKS                       R6 R5 K21 ["InputPanel"]
      164 GETUPVAL                         R7 1
      165 GETTABLEKS                       R6 R7 K60 ["createElement"]
      167 GETUPVAL                         R7 6
      168 GETTABLEKS                       R8 R4 K61 ["nodeProps"]
      170 DUPTABLE                         R9 K63 [{"OutputPin"}]
      171 GETTABLEKS                       R10 R4 K64 ["outputPin"]
      173 CALL                             R10 0 1
      174 SETTABLEKS                       R10 R9 K62 ["OutputPin"]
      176 CALL                             R8 1 1
      177 MOVE                             R9 R5
      178 CALL                             R6 3 -1
      179 RETURN                           R6 -1

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
       20 GETTABLEKS                       R5 R0 K10 ["Util"]
       22 GETTABLEKS                       R4 R5 K11 ["Nodes"]
       24 GETTABLEKS                       R3 R4 K12 ["CompositorNodeUtils"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Util"]
       31 GETTABLEKS                       R4 R5 K13 ["Constants"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R8 R0 K6 ["Components"]
       38 GETTABLEKS                       R7 R8 K7 ["NodeView"]
       40 GETTABLEKS                       R6 R7 K14 ["CompositorNodeInput"]
       42 GETTABLEKS                       R5 R6 K15 ["InputPanelTypes"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R9 R0 K6 ["Components"]
       49 GETTABLEKS                       R8 R9 K7 ["NodeView"]
       51 GETTABLEKS                       R7 R8 K14 ["CompositorNodeInput"]
       53 GETTABLEKS                       R6 R7 K16 ["PrioritySelectInput"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K5 [require]
       58 GETTABLEKS                       R10 R0 K6 ["Components"]
       60 GETTABLEKS                       R9 R10 K7 ["NodeView"]
       62 GETTABLEKS                       R8 R9 K17 ["CompositorNodeTransition"]
       64 GETTABLEKS                       R7 R8 K18 ["PrioritySelectTransition"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K5 [require]
       69 GETTABLEKS                       R9 R0 K19 ["Parent"]
       71 GETTABLEKS                       R8 R9 K20 ["React"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R12 R0 K6 ["Components"]
       78 GETTABLEKS                       R11 R12 K7 ["NodeView"]
       80 GETTABLEKS                       R10 R11 K8 ["CompositorNodes"]
       82 GETTABLEKS                       R9 R10 K21 ["useInputPanelHelper"]
       84 CALL                             R8 1 1
       85 DUPCLOSURE                       R9 K22 [PROTO_2]
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R1
       93 RETURN                           R9 1
