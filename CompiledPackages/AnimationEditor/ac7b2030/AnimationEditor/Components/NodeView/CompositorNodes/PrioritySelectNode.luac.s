PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+47]
        2 DUPTABLE                         R0 K3 [{"Interruptible", "Duration", "Curve"}]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K4 ["enum"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K5 ["PropertyLookup"]
        9 GETTABLEKS                       R2 R2 K6 ["DefaultInterruptible"]
       11 GETIMPORT                        R3 K10 [Enum.AnimationNodeInterruptible.Always]
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K0 ["Interruptible"]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K11 ["number"]
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K5 ["PropertyLookup"]
       22 GETTABLEKS                       R2 R2 K12 ["DefaultTransitionDuration"]
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R3 R3 K13 ["DEFAULT_TRANSITION"]
       27 GETTABLEKS                       R3 R3 K1 ["Duration"]
       29 CALL                             R1 2 1
       30 SETTABLEKS                       R1 R0 K1 ["Duration"]
       32 GETUPVAL                         R1 1
       33 GETTABLEKS                       R1 R1 K4 ["enum"]
       35 GETUPVAL                         R2 2
       36 GETTABLEKS                       R2 R2 K5 ["PropertyLookup"]
       38 GETTABLEKS                       R2 R2 K14 ["DefaultTransitionCurve"]
       40 GETUPVAL                         R3 3
       41 GETTABLEKS                       R3 R3 K13 ["DEFAULT_TRANSITION"]
       43 GETTABLEKS                       R3 R3 K2 ["Curve"]
       45 CALL                             R1 2 1
       46 SETTABLEKS                       R1 R0 K2 ["Curve"]
       48 RETURN                           R0 1
       49 DUPTABLE                         R0 K16 [{"Interruptible", "InterruptibleTrigger", "Duration", "Curve"}]
       50 GETUPVAL                         R1 1
       51 GETTABLEKS                       R1 R1 K4 ["enum"]
       53 GETUPVAL                         R2 2
       54 GETTABLEKS                       R2 R2 K5 ["PropertyLookup"]
       56 GETTABLEKS                       R2 R2 K6 ["DefaultInterruptible"]
       58 GETIMPORT                        R3 K10 [Enum.AnimationNodeInterruptible.Always]
       60 CALL                             R1 2 1
       61 SETTABLEKS                       R1 R0 K0 ["Interruptible"]
       63 GETUPVAL                         R1 1
       64 GETTABLEKS                       R1 R1 K17 ["boolean"]
       66 GETUPVAL                         R2 2
       67 GETTABLEKS                       R2 R2 K5 ["PropertyLookup"]
       69 GETTABLEKS                       R2 R2 K18 ["DefaultInterruptibleTrigger"]
       71 CALL                             R1 1 1
       72 SETTABLEKS                       R1 R0 K15 ["InterruptibleTrigger"]
       74 GETUPVAL                         R1 1
       75 GETTABLEKS                       R1 R1 K11 ["number"]
       77 GETUPVAL                         R2 2
       78 GETTABLEKS                       R2 R2 K5 ["PropertyLookup"]
       80 GETTABLEKS                       R2 R2 K12 ["DefaultTransitionDuration"]
       82 GETUPVAL                         R3 3
       83 GETTABLEKS                       R3 R3 K13 ["DEFAULT_TRANSITION"]
       85 GETTABLEKS                       R3 R3 K1 ["Duration"]
       87 CALL                             R1 2 1
       88 SETTABLEKS                       R1 R0 K1 ["Duration"]
       90 GETUPVAL                         R1 1
       91 GETTABLEKS                       R1 R1 K4 ["enum"]
       93 GETUPVAL                         R2 2
       94 GETTABLEKS                       R2 R2 K5 ["PropertyLookup"]
       96 GETTABLEKS                       R2 R2 K14 ["DefaultTransitionCurve"]
       98 GETUPVAL                         R3 3
       99 GETTABLEKS                       R3 R3 K13 ["DEFAULT_TRANSITION"]
      101 GETTABLEKS                       R3 R3 K2 ["Curve"]
      103 CALL                             R1 2 1
      104 SETTABLEKS                       R1 R0 K2 ["Curve"]
      106 RETURN                           R0 1

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
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U4
       33 NEWTABLE                         R4 0 4
       35 GETTABLEKS                       R5 R0 K11 ["PropertyLookup"]
       37 GETTABLEKS                       R5 R5 K12 ["DefaultInterruptibleTrigger"]
       39 GETTABLEKS                       R6 R0 K11 ["PropertyLookup"]
       41 GETTABLEKS                       R6 R6 K13 ["DefaultInterruptible"]
       43 GETTABLEKS                       R7 R0 K11 ["PropertyLookup"]
       45 GETTABLEKS                       R7 R7 K14 ["DefaultTransitionDuration"]
       47 GETTABLEKS                       R8 R0 K11 ["PropertyLookup"]
       49 GETTABLEKS                       R8 R8 K15 ["DefaultTransitionCurve"]
       51 SETLIST                          R4 R5 4 [1]
       53 CALL                             R2 2 1
       54 GETUPVAL                         R3 1
       55 GETTABLEKS                       R3 R3 K16 ["useCallback"]
       57 NEWCLOSURE                       R4 P1
       58 CAPTURE                          VAL R0
       59 NEWTABLE                         R5 0 1
       61 GETTABLEKS                       R6 R0 K17 ["OnPropertyChanged"]
       63 SETLIST                          R5 R6 1 [1]
       65 CALL                             R3 2 1
       66 GETUPVAL                         R4 5
       67 GETTABLEKS                       R4 R4 K18 ["CompositorNodeUtils"]
       69 GETTABLEKS                       R4 R4 K19 ["createPropertyHelpers"]
       71 MOVE                             R5 R0
       72 CALL                             R4 1 1
       73 DUPTABLE                         R5 K23 [{"Property_State", "Property_DefaultTransition", "InputPanel"}]
       74 GETTABLEKS                       R6 R4 K24 ["nextProperty"]
       76 DUPTABLE                         R7 K32 [{"Name", "Label", "Type", "Value", "DefaultValue", "IsDisabled", "HidePin"}]
       77 LOADK                            R8 K33 ["State"]
       78 SETTABLEKS                       R8 R7 K25 ["Name"]
       80 LOADK                            R8 K33 ["State"]
       81 SETTABLEKS                       R8 R7 K26 ["Label"]
       83 LOADK                            R8 K34 ["String"]
       84 SETTABLEKS                       R8 R7 K27 ["Type"]
       86 GETTABLEKS                       R9 R0 K11 ["PropertyLookup"]
       88 GETTABLEKS                       R8 R9 K33 ["State"]
       90 SETTABLEKS                       R8 R7 K28 ["Value"]
       92 LOADK                            R8 K35 [""]
       93 SETTABLEKS                       R8 R7 K29 ["DefaultValue"]
       95 LOADB                            R8 1
       96 SETTABLEKS                       R8 R7 K30 ["IsDisabled"]
       98 LOADB                            R8 1
       99 SETTABLEKS                       R8 R7 K31 ["HidePin"]
      101 CALL                             R6 1 1
      102 SETTABLEKS                       R6 R5 K20 ["Property_State"]
      104 GETTABLEKS                       R6 R4 K24 ["nextProperty"]
      106 DUPTABLE                         R7 K38 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
      107 LOADK                            R8 K39 ["DefaultTransition"]
      108 SETTABLEKS                       R8 R7 K25 ["Name"]
      110 LOADK                            R8 K40 ["Default Transition"]
      111 SETTABLEKS                       R8 R7 K26 ["Label"]
      113 LOADK                            R8 K41 ["Transition"]
      114 SETTABLEKS                       R8 R7 K27 ["Type"]
      116 SETTABLEKS                       R2 R7 K28 ["Value"]
      118 DUPTABLE                         R8 K45 [{"TransitionBuilder", "AllowReset", "HideWeight"}]
      119 GETUPVAL                         R9 6
      120 SETTABLEKS                       R9 R8 K42 ["TransitionBuilder"]
      122 LOADB                            R9 0
      123 SETTABLEKS                       R9 R8 K43 ["AllowReset"]
      125 LOADB                            R9 1
      126 SETTABLEKS                       R9 R8 K44 ["HideWeight"]
      128 SETTABLEKS                       R8 R7 K36 ["ExtraProps"]
      130 SETTABLEKS                       R3 R7 K37 ["OnChanged"]
      132 CALL                             R6 1 1
      133 SETTABLEKS                       R6 R5 K21 ["Property_DefaultTransition"]
      135 GETTABLEKS                       R6 R1 K46 ["makePropertyChild"]
      137 MOVE                             R7 R0
      138 MOVE                             R8 R4
      139 DUPTABLE                         R9 K49 [{"inputBuilder", "inputBuilderProps"}]
      140 GETUPVAL                         R10 7
      141 SETTABLEKS                       R10 R9 K47 ["inputBuilder"]
      143 DUPTABLE                         R10 K50 [{"DefaultTransition"}]
      144 SETTABLEKS                       R2 R10 K39 ["DefaultTransition"]
      146 SETTABLEKS                       R10 R9 K48 ["inputBuilderProps"]
      148 CALL                             R6 3 1
      149 SETTABLEKS                       R6 R5 K22 ["InputPanel"]
      151 GETUPVAL                         R6 1
      152 GETTABLEKS                       R6 R6 K51 ["createElement"]
      154 GETUPVAL                         R7 5
      155 GETTABLEKS                       R7 R7 K52 ["CompositorNode"]
      157 GETTABLEKS                       R8 R4 K53 ["nodeProps"]
      159 DUPTABLE                         R9 K55 [{"OutputPin"}]
      160 GETTABLEKS                       R10 R4 K56 ["outputPin"]
      162 CALL                             R10 0 1
      163 SETTABLEKS                       R10 R9 K54 ["OutputPin"]
      165 CALL                             R8 1 1
      166 MOVE                             R9 R5
      167 CALL                             R6 3 -1
      168 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["ExpectType"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["NodeView"]
       27 GETTABLEKS                       R4 R4 K11 ["CompositorNodeInput"]
       29 GETTABLEKS                       R4 R4 K12 ["InputPanelTypes"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K13 ["Parent"]
       36 GETTABLEKS                       R5 R5 K14 ["NodeGraphing"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Components"]
       43 GETTABLEKS                       R6 R6 K10 ["NodeView"]
       45 GETTABLEKS                       R6 R6 K11 ["CompositorNodeInput"]
       47 GETTABLEKS                       R6 R6 K15 ["PrioritySelectInput"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K9 ["Components"]
       54 GETTABLEKS                       R7 R7 K10 ["NodeView"]
       56 GETTABLEKS                       R7 R7 K16 ["CompositorNodeTransition"]
       58 GETTABLEKS                       R7 R7 K17 ["PrioritySelectTransition"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K13 ["Parent"]
       65 GETTABLEKS                       R8 R8 K18 ["React"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K9 ["Components"]
       72 GETTABLEKS                       R9 R9 K10 ["NodeView"]
       74 GETTABLEKS                       R9 R9 K19 ["CompositorNodes"]
       76 GETTABLEKS                       R9 R9 K20 ["useInputPanelHelper"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K22 [game]
       81 LOADK                            R11 K23 ["AnimGraphUITransitionOverrideInterruptibleTrigger"]
       82 LOADB                            R12 0
       83 NAMECALL                         R9 R9 K24 ["DefineFastFlag"]
       85 CALL                             R9 3 1
       86 DUPCLOSURE                       R10 K25 [PROTO_2]
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R5
       95 RETURN                           R10 1
