PROTO_0:
        0 DUPTABLE                         R0 K3 [{"Interruptible", "Duration", "Curve"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["enum"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K5 ["PropertyLookup"]
        7 GETTABLEKS                       R2 R2 K6 ["DefaultInterruptible"]
        9 GETIMPORT                        R3 K10 [Enum.AnimationNodeInterruptible.Always]
       11 CALL                             R1 2 1
       12 SETTABLEKS                       R1 R0 K0 ["Interruptible"]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K11 ["number"]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K5 ["PropertyLookup"]
       20 GETTABLEKS                       R2 R2 K12 ["DefaultTransitionDuration"]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K13 ["DEFAULT_TRANSITION"]
       25 GETTABLEKS                       R3 R3 K1 ["Duration"]
       27 CALL                             R1 2 1
       28 SETTABLEKS                       R1 R0 K1 ["Duration"]
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R1 R1 K4 ["enum"]
       33 GETUPVAL                         R2 1
       34 GETTABLEKS                       R2 R2 K5 ["PropertyLookup"]
       36 GETTABLEKS                       R2 R2 K14 ["DefaultTransitionCurve"]
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R3 R3 K13 ["DEFAULT_TRANSITION"]
       41 GETTABLEKS                       R3 R3 K2 ["Curve"]
       43 CALL                             R1 2 1
       44 SETTABLEKS                       R1 R0 K2 ["Curve"]
       46 RETURN                           R0 1

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
        6 DUPTABLE                         R3 K7 [{["InterruptibleTrigger"] = False, ["Trigger"] = False}]
        7 SETTABLEKS                       R3 R2 K1 ["Default"]
        9 NEWTABLE                         R3 0 3
       11 LOADK                            R4 K8 ["Interruptible"]
       12 LOADK                            R5 K9 ["Duration"]
       13 LOADK                            R6 K10 ["Curve"]
       14 SETLIST                          R3 R4 3 [1]
       16 SETTABLEKS                       R3 R2 K2 ["TransitionFields"]
       18 CALL                             R1 1 1
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K11 ["useMemo"]
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U3
       26 NEWTABLE                         R4 0 3
       28 GETTABLEKS                       R5 R0 K12 ["PropertyLookup"]
       30 GETTABLEKS                       R5 R5 K13 ["DefaultInterruptible"]
       32 GETTABLEKS                       R6 R0 K12 ["PropertyLookup"]
       34 GETTABLEKS                       R6 R6 K14 ["DefaultTransitionDuration"]
       36 GETTABLEKS                       R7 R0 K12 ["PropertyLookup"]
       38 GETTABLEKS                       R7 R7 K15 ["DefaultTransitionCurve"]
       40 SETLIST                          R4 R5 3 [1]
       42 CALL                             R2 2 1
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R3 R3 K16 ["useCallback"]
       46 NEWCLOSURE                       R4 P1
       47 CAPTURE                          VAL R0
       48 NEWTABLE                         R5 0 1
       50 GETTABLEKS                       R6 R0 K17 ["OnPropertyChanged"]
       52 SETLIST                          R5 R6 1 [1]
       54 CALL                             R3 2 1
       55 GETUPVAL                         R4 4
       56 GETTABLEKS                       R4 R4 K18 ["CompositorNodeUtils"]
       58 GETTABLEKS                       R4 R4 K19 ["createPropertyHelpers"]
       60 MOVE                             R5 R0
       61 CALL                             R4 1 1
       62 DUPTABLE                         R5 K23 [{"Property_State", "Property_DefaultTransition", "InputPanel"}]
       63 GETTABLEKS                       R6 R4 K24 ["nextProperty"]
       65 DUPTABLE                         R7 K36 [{["Name"] = "State", ["Label"] = "State", ["Type"] = "String", ["Value"], ["DefaultValue"] = "", ["IsDisabled"] = True, ["HidePin"] = True}]
       66 GETTABLEKS                       R9 R0 K12 ["PropertyLookup"]
       68 GETTABLEKS                       R8 R9 K26 ["State"]
       70 SETTABLEKS                       R8 R7 K30 ["Value"]
       72 CALL                             R6 1 1
       73 SETTABLEKS                       R6 R5 K20 ["Property_State"]
       75 GETTABLEKS                       R6 R4 K24 ["nextProperty"]
       77 DUPTABLE                         R7 K42 [{["Name"] = "DefaultTransition", ["Label"] = "Default Transition", ["Type"] = "Transition", ["Value"], ["ExtraProps"], ["OnChanged"]}]
       78 SETTABLEKS                       R2 R7 K30 ["Value"]
       80 DUPTABLE                         R8 K46 [{["TransitionBuilder"], ["AllowReset"] = False, ["HideWeight"] = True}]
       81 GETUPVAL                         R9 5
       82 SETTABLEKS                       R9 R8 K43 ["TransitionBuilder"]
       84 SETTABLEKS                       R8 R7 K40 ["ExtraProps"]
       86 SETTABLEKS                       R3 R7 K41 ["OnChanged"]
       88 CALL                             R6 1 1
       89 SETTABLEKS                       R6 R5 K21 ["Property_DefaultTransition"]
       91 GETTABLEKS                       R6 R1 K47 ["makePropertyChild"]
       93 MOVE                             R7 R0
       94 MOVE                             R8 R4
       95 DUPTABLE                         R9 K50 [{"inputBuilder", "inputBuilderProps"}]
       96 GETUPVAL                         R10 6
       97 SETTABLEKS                       R10 R9 K48 ["inputBuilder"]
       99 DUPTABLE                         R10 K51 [{"DefaultTransition"}]
      100 SETTABLEKS                       R2 R10 K37 ["DefaultTransition"]
      102 SETTABLEKS                       R10 R9 K49 ["inputBuilderProps"]
      104 CALL                             R6 3 1
      105 SETTABLEKS                       R6 R5 K22 ["InputPanel"]
      107 GETUPVAL                         R6 1
      108 GETTABLEKS                       R6 R6 K52 ["createElement"]
      110 GETUPVAL                         R7 4
      111 GETTABLEKS                       R7 R7 K53 ["CompositorNode"]
      113 GETTABLEKS                       R8 R4 K54 ["nodeProps"]
      115 DUPTABLE                         R9 K57 [{"ContextToolbar", "OutputPin"}]
      116 GETTABLEKS                       R10 R4 K58 ["spotlightButton"]
      118 CALL                             R10 0 1
      119 SETTABLEKS                       R10 R9 K55 ["ContextToolbar"]
      121 GETTABLEKS                       R10 R4 K59 ["outputPin"]
      123 CALL                             R10 0 1
      124 SETTABLEKS                       R10 R9 K56 ["OutputPin"]
      126 CALL                             R8 1 1
      127 MOVE                             R9 R5
      128 CALL                             R6 3 -1
      129 RETURN                           R6 -1

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
       79 DUPCLOSURE                       R9 K21 [PROTO_2]
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R5
       87 RETURN                           R9 1
