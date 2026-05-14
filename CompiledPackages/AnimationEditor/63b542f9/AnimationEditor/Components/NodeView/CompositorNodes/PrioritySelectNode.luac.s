PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+38]
        2 DUPTABLE                         R0 K3 [{"Interruptible", "Duration", "Curve"}]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K4 ["PropertyLookup"]
        6 GETTABLEKS                       R1 R1 K5 ["DefaultInterruptible"]
        8 JUMPIF                           R1 ; [+2]
        9 GETIMPORT                        R1 K9 [Enum.AnimationNodeInterruptible.Always]
       11 SETTABLEKS                       R1 R0 K0 ["Interruptible"]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K4 ["PropertyLookup"]
       16 GETTABLEKS                       R1 R1 K10 ["DefaultTransitionDuration"]
       18 JUMPIF                           R1 ; [+5]
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R1 R1 K11 ["DEFAULT_TRANSITION"]
       22 GETTABLEKS                       R1 R1 K1 ["Duration"]
       24 SETTABLEKS                       R1 R0 K1 ["Duration"]
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K4 ["PropertyLookup"]
       29 GETTABLEKS                       R1 R1 K12 ["DefaultTransitionCurve"]
       31 JUMPIF                           R1 ; [+5]
       32 GETUPVAL                         R1 2
       33 GETTABLEKS                       R1 R1 K11 ["DEFAULT_TRANSITION"]
       35 GETTABLEKS                       R1 R1 K2 ["Curve"]
       37 SETTABLEKS                       R1 R0 K2 ["Curve"]
       39 RETURN                           R0 1
       40 DUPTABLE                         R0 K14 [{"Interruptible", "InterruptibleTrigger", "Duration", "Curve"}]
       41 GETUPVAL                         R1 1
       42 GETTABLEKS                       R1 R1 K4 ["PropertyLookup"]
       44 GETTABLEKS                       R1 R1 K5 ["DefaultInterruptible"]
       46 JUMPIF                           R1 ; [+2]
       47 GETIMPORT                        R1 K9 [Enum.AnimationNodeInterruptible.Always]
       49 SETTABLEKS                       R1 R0 K0 ["Interruptible"]
       51 GETUPVAL                         R2 1
       52 GETTABLEKS                       R2 R2 K4 ["PropertyLookup"]
       54 GETTABLEKS                       R2 R2 K16 ["DefaultInterruptibleTrigger"]
       56 ORK                              R1 R2 K15 [False]
       57 SETTABLEKS                       R1 R0 K13 ["InterruptibleTrigger"]
       59 GETUPVAL                         R1 1
       60 GETTABLEKS                       R1 R1 K4 ["PropertyLookup"]
       62 GETTABLEKS                       R1 R1 K10 ["DefaultTransitionDuration"]
       64 JUMPIF                           R1 ; [+5]
       65 GETUPVAL                         R1 2
       66 GETTABLEKS                       R1 R1 K11 ["DEFAULT_TRANSITION"]
       68 GETTABLEKS                       R1 R1 K1 ["Duration"]
       70 SETTABLEKS                       R1 R0 K1 ["Duration"]
       72 GETUPVAL                         R1 1
       73 GETTABLEKS                       R1 R1 K4 ["PropertyLookup"]
       75 GETTABLEKS                       R1 R1 K12 ["DefaultTransitionCurve"]
       77 JUMPIF                           R1 ; [+5]
       78 GETUPVAL                         R1 2
       79 GETTABLEKS                       R1 R1 K11 ["DEFAULT_TRANSITION"]
       81 GETTABLEKS                       R1 R1 K2 ["Curve"]
       83 SETTABLEKS                       R1 R0 K2 ["Curve"]
       85 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        6 LOADK                            R4 K0 ["Bad newValue"]
        7 GETIMPORT                        R2 K2 [assert]
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["OnPropertyChanged"]
       13 JUMPIFNOT                        R2 ; [+21]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K3 ["OnPropertyChanged"]
       17 LOADK                            R3 K4 ["DefaultInterruptible"]
       18 GETTABLEKS                       R4 R1 K5 ["Interruptible"]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K3 ["OnPropertyChanged"]
       24 LOADK                            R3 K6 ["DefaultTransitionDuration"]
       25 GETTABLEKS                       R4 R1 K7 ["Duration"]
       27 CALL                             R2 2 0
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K3 ["OnPropertyChanged"]
       31 LOADK                            R3 K8 ["DefaultTransitionCurve"]
       32 GETTABLEKS                       R4 R1 K9 ["Curve"]
       34 CALL                             R2 2 0
       35 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{"GraphPayload", "Default", "TransitionFields"}]
        2 GETTABLEKS                       R3 R0 K0 ["GraphPayload"]
        4 SETTABLEKS                       R3 R2 K0 ["GraphPayload"]
        6 DUPTABLE                         R3 K6 [{"InterruptibleTrigger", "Trigger"}]
        7 LOADB                            R4 0
        8 SETTABLEKS                       R4 R3 K4 ["InterruptibleTrigger"]
       10 LOADB                            R4 0
       11 SETTABLEKS                       R4 R3 K5 ["Trigger"]
       13 SETTABLEKS                       R3 R2 K1 ["Default"]
       15 NEWTABLE                         R3 0 3
       17 LOADK                            R4 K7 ["Interruptible"]
       18 LOADK                            R5 K8 ["Duration"]
       19 LOADK                            R6 K9 ["Curve"]
       20 SETLIST                          R3 R4 3 [1]
       22 SETTABLEKS                       R3 R2 K2 ["TransitionFields"]
       24 CALL                             R1 1 1
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K10 ["useMemo"]
       28 NEWCLOSURE                       R3 P0
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U3
       32 NEWTABLE                         R4 0 4
       34 GETTABLEKS                       R5 R0 K11 ["PropertyLookup"]
       36 GETTABLEKS                       R5 R5 K12 ["DefaultInterruptibleTrigger"]
       38 GETTABLEKS                       R6 R0 K11 ["PropertyLookup"]
       40 GETTABLEKS                       R6 R6 K13 ["DefaultInterruptible"]
       42 GETTABLEKS                       R7 R0 K11 ["PropertyLookup"]
       44 GETTABLEKS                       R7 R7 K14 ["DefaultTransitionDuration"]
       46 GETTABLEKS                       R8 R0 K11 ["PropertyLookup"]
       48 GETTABLEKS                       R8 R8 K15 ["DefaultTransitionCurve"]
       50 SETLIST                          R4 R5 4 [1]
       52 CALL                             R2 2 1
       53 GETUPVAL                         R3 1
       54 GETTABLEKS                       R3 R3 K16 ["useCallback"]
       56 NEWCLOSURE                       R4 P1
       57 CAPTURE                          VAL R0
       58 NEWTABLE                         R5 0 1
       60 GETTABLEKS                       R6 R0 K17 ["OnPropertyChanged"]
       62 SETLIST                          R5 R6 1 [1]
       64 CALL                             R3 2 1
       65 GETUPVAL                         R4 4
       66 GETTABLEKS                       R4 R4 K18 ["createPropertyHelpers"]
       68 MOVE                             R5 R0
       69 CALL                             R4 1 1
       70 DUPTABLE                         R5 K22 [{"Property_State", "Property_DefaultTransition", "InputPanel"}]
       71 GETTABLEKS                       R6 R4 K23 ["nextProperty"]
       73 DUPTABLE                         R7 K31 [{"Name", "Label", "Type", "Value", "DefaultValue", "IsDisabled", "HidePin"}]
       74 LOADK                            R8 K32 ["State"]
       75 SETTABLEKS                       R8 R7 K24 ["Name"]
       77 LOADK                            R8 K32 ["State"]
       78 SETTABLEKS                       R8 R7 K25 ["Label"]
       80 LOADK                            R8 K33 ["String"]
       81 SETTABLEKS                       R8 R7 K26 ["Type"]
       83 GETTABLEKS                       R9 R0 K11 ["PropertyLookup"]
       85 GETTABLEKS                       R8 R9 K32 ["State"]
       87 SETTABLEKS                       R8 R7 K27 ["Value"]
       89 LOADK                            R8 K34 [""]
       90 SETTABLEKS                       R8 R7 K28 ["DefaultValue"]
       92 LOADB                            R8 1
       93 SETTABLEKS                       R8 R7 K29 ["IsDisabled"]
       95 LOADB                            R8 1
       96 SETTABLEKS                       R8 R7 K30 ["HidePin"]
       98 CALL                             R6 1 1
       99 SETTABLEKS                       R6 R5 K19 ["Property_State"]
      101 GETTABLEKS                       R6 R4 K23 ["nextProperty"]
      103 DUPTABLE                         R7 K37 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
      104 LOADK                            R8 K38 ["DefaultTransition"]
      105 SETTABLEKS                       R8 R7 K24 ["Name"]
      107 LOADK                            R8 K39 ["Default Transition"]
      108 SETTABLEKS                       R8 R7 K25 ["Label"]
      110 LOADK                            R8 K40 ["Transition"]
      111 SETTABLEKS                       R8 R7 K26 ["Type"]
      113 SETTABLEKS                       R2 R7 K27 ["Value"]
      115 DUPTABLE                         R8 K44 [{"TransitionBuilder", "AllowReset", "HideWeight"}]
      116 GETUPVAL                         R9 5
      117 SETTABLEKS                       R9 R8 K41 ["TransitionBuilder"]
      119 LOADB                            R9 0
      120 SETTABLEKS                       R9 R8 K42 ["AllowReset"]
      122 LOADB                            R9 1
      123 SETTABLEKS                       R9 R8 K43 ["HideWeight"]
      125 SETTABLEKS                       R8 R7 K35 ["ExtraProps"]
      127 SETTABLEKS                       R3 R7 K36 ["OnChanged"]
      129 CALL                             R6 1 1
      130 SETTABLEKS                       R6 R5 K20 ["Property_DefaultTransition"]
      132 GETTABLEKS                       R6 R4 K45 ["nextInputPanel"]
      134 DUPTABLE                         R7 K54 [{"LayoutOrder", "InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
      135 GETTABLEKS                       R8 R4 K55 ["nextOrder"]
      137 CALL                             R8 0 1
      138 SETTABLEKS                       R8 R7 K46 ["LayoutOrder"]
      140 GETUPVAL                         R8 6
      141 SETTABLEKS                       R8 R7 K47 ["InputBuilder"]
      143 DUPTABLE                         R8 K56 [{"DefaultTransition"}]
      144 SETTABLEKS                       R2 R8 K38 ["DefaultTransition"]
      146 SETTABLEKS                       R8 R7 K48 ["InputBuilderProps"]
      148 GETTABLEKS                       R8 R0 K0 ["GraphPayload"]
      150 GETTABLEKS                       R8 R8 K57 ["id"]
      152 SETTABLEKS                       R8 R7 K49 ["NodeId"]
      154 GETTABLEKS                       R8 R1 K58 ["inputs"]
      156 SETTABLEKS                       R8 R7 K50 ["Inputs"]
      158 GETTABLEKS                       R8 R1 K59 ["newInputDefaultValue"]
      160 SETTABLEKS                       R8 R7 K51 ["NewInputDefaultValue"]
      162 GETTABLEKS                       R8 R1 K60 ["onInputChanged"]
      164 SETTABLEKS                       R8 R7 K52 ["OnInputChanged"]
      166 GETTABLEKS                       R8 R1 K61 ["onInputReordered"]
      168 SETTABLEKS                       R8 R7 K53 ["OnInputReordered"]
      170 CALL                             R6 1 1
      171 SETTABLEKS                       R6 R5 K21 ["InputPanel"]
      173 GETUPVAL                         R6 1
      174 GETTABLEKS                       R6 R6 K62 ["createElement"]
      176 GETUPVAL                         R7 7
      177 GETTABLEKS                       R8 R4 K63 ["nodeProps"]
      179 DUPTABLE                         R9 K65 [{"OutputPin"}]
      180 GETTABLEKS                       R10 R4 K66 ["outputPin"]
      182 CALL                             R10 0 1
      183 SETTABLEKS                       R10 R9 K64 ["OutputPin"]
      185 CALL                             R8 1 1
      186 MOVE                             R9 R5
      187 CALL                             R6 3 -1
      188 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodes"]
       15 GETTABLEKS                       R2 R2 K9 ["CompositorNode"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Util"]
       22 GETTABLEKS                       R3 R3 K11 ["Nodes"]
       24 GETTABLEKS                       R3 R3 K12 ["CompositorNodeUtils"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K10 ["Util"]
       31 GETTABLEKS                       R4 R4 K13 ["Constants"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Components"]
       38 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       40 GETTABLEKS                       R5 R5 K14 ["CompositorNodeInput"]
       42 GETTABLEKS                       R5 R5 K15 ["InputPanelTypes"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K6 ["Components"]
       49 GETTABLEKS                       R6 R6 K7 ["NodeView"]
       51 GETTABLEKS                       R6 R6 K14 ["CompositorNodeInput"]
       53 GETTABLEKS                       R6 R6 K16 ["PrioritySelectInput"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K5 [require]
       58 GETTABLEKS                       R7 R0 K6 ["Components"]
       60 GETTABLEKS                       R7 R7 K7 ["NodeView"]
       62 GETTABLEKS                       R7 R7 K17 ["CompositorNodeTransition"]
       64 GETTABLEKS                       R7 R7 K18 ["PrioritySelectTransition"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K5 [require]
       69 GETTABLEKS                       R8 R0 K19 ["Parent"]
       71 GETTABLEKS                       R8 R8 K20 ["React"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R9 R0 K6 ["Components"]
       78 GETTABLEKS                       R9 R9 K7 ["NodeView"]
       80 GETTABLEKS                       R9 R9 K8 ["CompositorNodes"]
       82 GETTABLEKS                       R9 R9 K21 ["useInputPanelHelper"]
       84 CALL                             R8 1 1
       85 GETIMPORT                        R9 K23 [game]
       87 LOADK                            R11 K24 ["AnimGraphUITransitionOverrideInterruptibleTrigger"]
       88 LOADB                            R12 0
       89 NAMECALL                         R9 R9 K25 ["DefineFastFlag"]
       91 CALL                             R9 3 1
       92 DUPCLOSURE                       R10 K26 [PROTO_2]
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R1
      101 RETURN                           R10 1
