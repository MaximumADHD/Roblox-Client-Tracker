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
       13 JUMPIFNOT                        R2 ; [+21]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K3 ["OnPropertyChanged"]
       17 LOADK                            R3 K4 ["DefaultInterruptible"]
       18 GETTABLEKS                       R4 R1 K5 ["Interruptible"]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K3 ["OnPropertyChanged"]
       24 LOADK                            R3 K6 ["DefaultTransitionDuration"]
       25 GETTABLEKS                       R4 R1 K7 ["Duration"]
       27 CALL                             R2 2 0
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R2 R3 K3 ["OnPropertyChanged"]
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
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R2 R3 K10 ["useMemo"]
       28 NEWCLOSURE                       R3 P0
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U2
       31 NEWTABLE                         R4 0 4
       33 GETTABLEKS                       R6 R0 K11 ["PropertyLookup"]
       35 GETTABLEKS                       R5 R6 K12 ["DefaultInterruptibleTrigger"]
       37 GETTABLEKS                       R7 R0 K11 ["PropertyLookup"]
       39 GETTABLEKS                       R6 R7 K13 ["DefaultInterruptible"]
       41 GETTABLEKS                       R8 R0 K11 ["PropertyLookup"]
       43 GETTABLEKS                       R7 R8 K14 ["DefaultTransitionDuration"]
       45 GETTABLEKS                       R9 R0 K11 ["PropertyLookup"]
       47 GETTABLEKS                       R8 R9 K15 ["DefaultTransitionCurve"]
       49 SETLIST                          R4 R5 4 [1]
       51 CALL                             R2 2 1
       52 GETUPVAL                         R4 1
       53 GETTABLEKS                       R3 R4 K16 ["useCallback"]
       55 NEWCLOSURE                       R4 P1
       56 CAPTURE                          VAL R0
       57 NEWTABLE                         R5 0 1
       59 GETTABLEKS                       R6 R0 K17 ["OnPropertyChanged"]
       61 SETLIST                          R5 R6 1 [1]
       63 CALL                             R3 2 1
       64 GETUPVAL                         R5 3
       65 GETTABLEKS                       R4 R5 K18 ["createPropertyHelpers"]
       67 MOVE                             R5 R0
       68 CALL                             R4 1 1
       69 DUPTABLE                         R5 K22 [{"Property_State", "Property_DefaultTransition", "InputPanel"}]
       70 GETTABLEKS                       R6 R4 K23 ["nextProperty"]
       72 DUPTABLE                         R7 K31 [{"Name", "Label", "Type", "Value", "DefaultValue", "IsDisabled", "HidePin"}]
       73 LOADK                            R8 K32 ["State"]
       74 SETTABLEKS                       R8 R7 K24 ["Name"]
       76 LOADK                            R8 K32 ["State"]
       77 SETTABLEKS                       R8 R7 K25 ["Label"]
       79 LOADK                            R8 K33 ["String"]
       80 SETTABLEKS                       R8 R7 K26 ["Type"]
       82 GETTABLEKS                       R9 R0 K11 ["PropertyLookup"]
       84 GETTABLEKS                       R8 R9 K32 ["State"]
       86 SETTABLEKS                       R8 R7 K27 ["Value"]
       88 LOADK                            R8 K34 [""]
       89 SETTABLEKS                       R8 R7 K28 ["DefaultValue"]
       91 LOADB                            R8 1
       92 SETTABLEKS                       R8 R7 K29 ["IsDisabled"]
       94 LOADB                            R8 1
       95 SETTABLEKS                       R8 R7 K30 ["HidePin"]
       97 CALL                             R6 1 1
       98 SETTABLEKS                       R6 R5 K19 ["Property_State"]
      100 GETTABLEKS                       R6 R4 K23 ["nextProperty"]
      102 DUPTABLE                         R7 K37 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
      103 LOADK                            R8 K38 ["DefaultTransition"]
      104 SETTABLEKS                       R8 R7 K24 ["Name"]
      106 LOADK                            R8 K39 ["Default Transition"]
      107 SETTABLEKS                       R8 R7 K25 ["Label"]
      109 LOADK                            R8 K40 ["Transition"]
      110 SETTABLEKS                       R8 R7 K26 ["Type"]
      112 SETTABLEKS                       R2 R7 K27 ["Value"]
      114 DUPTABLE                         R8 K44 [{"TransitionBuilder", "AllowReset", "HideWeight"}]
      115 GETUPVAL                         R9 4
      116 SETTABLEKS                       R9 R8 K41 ["TransitionBuilder"]
      118 LOADB                            R9 0
      119 SETTABLEKS                       R9 R8 K42 ["AllowReset"]
      121 LOADB                            R9 1
      122 SETTABLEKS                       R9 R8 K43 ["HideWeight"]
      124 SETTABLEKS                       R8 R7 K35 ["ExtraProps"]
      126 SETTABLEKS                       R3 R7 K36 ["OnChanged"]
      128 CALL                             R6 1 1
      129 SETTABLEKS                       R6 R5 K20 ["Property_DefaultTransition"]
      131 GETTABLEKS                       R6 R4 K45 ["nextInputPanel"]
      133 DUPTABLE                         R7 K54 [{"LayoutOrder", "InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
      134 GETTABLEKS                       R8 R4 K55 ["nextOrder"]
      136 CALL                             R8 0 1
      137 SETTABLEKS                       R8 R7 K46 ["LayoutOrder"]
      139 GETUPVAL                         R8 5
      140 SETTABLEKS                       R8 R7 K47 ["InputBuilder"]
      142 DUPTABLE                         R8 K56 [{"DefaultTransition"}]
      143 SETTABLEKS                       R2 R8 K38 ["DefaultTransition"]
      145 SETTABLEKS                       R8 R7 K48 ["InputBuilderProps"]
      147 GETTABLEKS                       R9 R0 K0 ["GraphPayload"]
      149 GETTABLEKS                       R8 R9 K57 ["id"]
      151 SETTABLEKS                       R8 R7 K49 ["NodeId"]
      153 GETTABLEKS                       R8 R1 K58 ["inputs"]
      155 SETTABLEKS                       R8 R7 K50 ["Inputs"]
      157 GETTABLEKS                       R8 R1 K59 ["newInputDefaultValue"]
      159 SETTABLEKS                       R8 R7 K51 ["NewInputDefaultValue"]
      161 GETTABLEKS                       R8 R1 K60 ["onInputChanged"]
      163 SETTABLEKS                       R8 R7 K52 ["OnInputChanged"]
      165 GETTABLEKS                       R8 R1 K61 ["onInputReordered"]
      167 SETTABLEKS                       R8 R7 K53 ["OnInputReordered"]
      169 CALL                             R6 1 1
      170 SETTABLEKS                       R6 R5 K21 ["InputPanel"]
      172 GETUPVAL                         R7 1
      173 GETTABLEKS                       R6 R7 K62 ["createElement"]
      175 GETUPVAL                         R7 6
      176 GETTABLEKS                       R8 R4 K63 ["nodeProps"]
      178 DUPTABLE                         R9 K65 [{"OutputPin"}]
      179 GETTABLEKS                       R10 R4 K66 ["outputPin"]
      181 CALL                             R10 0 1
      182 SETTABLEKS                       R10 R9 K64 ["OutputPin"]
      184 CALL                             R8 1 1
      185 MOVE                             R9 R5
      186 CALL                             R6 3 -1
      187 RETURN                           R6 -1

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
