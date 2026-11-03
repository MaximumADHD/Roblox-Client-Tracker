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
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+9]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        5 GETTABLEKS                       R1 R1 K1 ["Localization"]
        7 NAMECALL                         R1 R1 K2 ["use"]
        9 CALL                             R1 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 GETUPVAL                         R2 2
       13 DUPTABLE                         R3 K6 [{"GraphPayload", "Default", "TransitionFields"}]
       14 GETTABLEKS                       R4 R0 K3 ["GraphPayload"]
       16 SETTABLEKS                       R4 R3 K3 ["GraphPayload"]
       18 DUPTABLE                         R4 K10 [{["InterruptibleTrigger"] = False, ["Trigger"] = False}]
       19 SETTABLEKS                       R4 R3 K4 ["Default"]
       21 NEWTABLE                         R4 0 3
       23 LOADK                            R5 K11 ["Interruptible"]
       24 LOADK                            R6 K12 ["Duration"]
       25 LOADK                            R7 K13 ["Curve"]
       26 SETLIST                          R4 R5 3 [1]
       28 SETTABLEKS                       R4 R3 K5 ["TransitionFields"]
       30 CALL                             R2 1 1
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R3 R3 K14 ["useMemo"]
       34 NEWCLOSURE                       R4 P0
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U5
       38 NEWTABLE                         R5 0 3
       40 GETTABLEKS                       R6 R0 K15 ["PropertyLookup"]
       42 GETTABLEKS                       R6 R6 K16 ["DefaultInterruptible"]
       44 GETTABLEKS                       R7 R0 K15 ["PropertyLookup"]
       46 GETTABLEKS                       R7 R7 K17 ["DefaultTransitionDuration"]
       48 GETTABLEKS                       R8 R0 K15 ["PropertyLookup"]
       50 GETTABLEKS                       R8 R8 K18 ["DefaultTransitionCurve"]
       52 SETLIST                          R5 R6 3 [1]
       54 CALL                             R3 2 1
       55 GETUPVAL                         R4 3
       56 GETTABLEKS                       R4 R4 K19 ["useCallback"]
       58 NEWCLOSURE                       R5 P1
       59 CAPTURE                          VAL R0
       60 NEWTABLE                         R6 0 1
       62 GETTABLEKS                       R7 R0 K20 ["OnPropertyChanged"]
       64 SETLIST                          R6 R7 1 [1]
       66 CALL                             R4 2 1
       67 GETUPVAL                         R5 6
       68 GETTABLEKS                       R5 R5 K21 ["CompositorNodeUtils"]
       70 GETTABLEKS                       R5 R5 K22 ["createPropertyHelpers"]
       72 MOVE                             R6 R0
       73 CALL                             R5 1 1
       74 DUPTABLE                         R6 K26 [{"Property_State", "Property_DefaultTransition", "InputPanel"}]
       75 GETTABLEKS                       R7 R5 K27 ["nextProperty"]
       77 DUPTABLE                         R8 K39 [{["Name"] = "State", ["Label"] = "State", ["Type"] = "String", ["Value"], ["DefaultValue"] = "", ["IsDisabled"] = True, ["HidePin"] = True}]
       78 GETTABLEKS                       R10 R0 K15 ["PropertyLookup"]
       80 GETTABLEKS                       R9 R10 K29 ["State"]
       82 SETTABLEKS                       R9 R8 K33 ["Value"]
       84 CALL                             R7 1 1
       85 SETTABLEKS                       R7 R6 K23 ["Property_State"]
       87 GETTABLEKS                       R7 R5 K27 ["nextProperty"]
       89 DUPTABLE                         R8 K44 [{["Name"] = "DefaultTransition", ["Label"], ["Type"] = "Transition", ["Value"], ["HidePin"] = True, ["ExtraProps"], ["OnChanged"]}]
       90 GETUPVAL                         R10 0
       91 JUMPIFNOT                        R10 ; [+8]
       92 LOADK                            R11 K45 ["Common"]
       93 LOADK                            R12 K46 ["AnimationEditor"]
       94 LOADK                            R13 K47 ["Properties"]
       95 LOADK                            R14 K40 ["DefaultTransition"]
       96 NAMECALL                         R9 R1 K48 ["getExternalText"]
       98 CALL                             R9 5 1
       99 JUMP                             ; [+1]
      100 LOADK                            R9 K49 ["Default Transition"]
      101 SETTABLEKS                       R9 R8 K30 ["Label"]
      103 SETTABLEKS                       R3 R8 K33 ["Value"]
      105 DUPTABLE                         R9 K53 [{["TransitionBuilder"], ["AllowReset"] = False, ["HideWeight"] = True}]
      106 GETUPVAL                         R10 7
      107 SETTABLEKS                       R10 R9 K50 ["TransitionBuilder"]
      109 SETTABLEKS                       R9 R8 K42 ["ExtraProps"]
      111 SETTABLEKS                       R4 R8 K43 ["OnChanged"]
      113 CALL                             R7 1 1
      114 SETTABLEKS                       R7 R6 K24 ["Property_DefaultTransition"]
      116 GETTABLEKS                       R7 R2 K54 ["makePropertyChild"]
      118 MOVE                             R8 R0
      119 MOVE                             R9 R5
      120 DUPTABLE                         R10 K57 [{"inputBuilder", "inputBuilderProps"}]
      121 GETUPVAL                         R11 8
      122 SETTABLEKS                       R11 R10 K55 ["inputBuilder"]
      124 DUPTABLE                         R11 K58 [{"DefaultTransition"}]
      125 SETTABLEKS                       R3 R11 K40 ["DefaultTransition"]
      127 SETTABLEKS                       R11 R10 K56 ["inputBuilderProps"]
      129 CALL                             R7 3 1
      130 SETTABLEKS                       R7 R6 K25 ["InputPanel"]
      132 GETUPVAL                         R7 3
      133 GETTABLEKS                       R7 R7 K59 ["createElement"]
      135 GETUPVAL                         R8 6
      136 GETTABLEKS                       R8 R8 K60 ["CompositorNode"]
      138 GETTABLEKS                       R9 R5 K61 ["nodeProps"]
      140 DUPTABLE                         R10 K64 [{"ContextToolbar", "OutputPin"}]
      141 GETTABLEKS                       R11 R5 K65 ["spotlightButton"]
      143 CALL                             R11 0 1
      144 SETTABLEKS                       R11 R10 K62 ["ContextToolbar"]
      146 GETTABLEKS                       R11 R5 K66 ["outputPin"]
      148 CALL                             R11 0 1
      149 SETTABLEKS                       R11 R10 K63 ["OutputPin"]
      151 CALL                             R9 1 1
      152 MOVE                             R10 R6
      153 CALL                             R7 3 -1
      154 RETURN                           R7 -1

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
       23 GETTABLEKS                       R4 R0 K9 ["Flags"]
       25 GETTABLEKS                       R4 R4 K10 ["FFlagAnimGraphUI_ImprovedTranslations"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["Framework"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Components"]
       39 GETTABLEKS                       R6 R6 K14 ["NodeView"]
       41 GETTABLEKS                       R6 R6 K15 ["CompositorNodeInput"]
       43 GETTABLEKS                       R6 R6 K16 ["InputPanelTypes"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K11 ["Parent"]
       50 GETTABLEKS                       R7 R7 K17 ["NodeGraphing"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K13 ["Components"]
       57 GETTABLEKS                       R8 R8 K14 ["NodeView"]
       59 GETTABLEKS                       R8 R8 K15 ["CompositorNodeInput"]
       61 GETTABLEKS                       R8 R8 K18 ["PrioritySelectInput"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K13 ["Components"]
       68 GETTABLEKS                       R9 R9 K14 ["NodeView"]
       70 GETTABLEKS                       R9 R9 K19 ["CompositorNodeTransition"]
       72 GETTABLEKS                       R9 R9 K20 ["PrioritySelectTransition"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K11 ["Parent"]
       79 GETTABLEKS                       R10 R10 K21 ["React"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K13 ["Components"]
       86 GETTABLEKS                       R11 R11 K14 ["NodeView"]
       88 GETTABLEKS                       R11 R11 K22 ["CompositorNodes"]
       90 GETTABLEKS                       R11 R11 K23 ["useInputPanelHelper"]
       92 CALL                             R10 1 1
       93 DUPCLOSURE                       R11 K24 [PROTO_2]
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R7
      103 RETURN                           R11 1
