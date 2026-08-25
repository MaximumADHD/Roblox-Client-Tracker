PROTO_0:
        0 DUPTABLE                         R0 K2 [{"Duration", "Curve"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["number"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K4 ["PropertyLookup"]
        7 GETTABLEKS                       R2 R2 K5 ["DefaultTransitionDuration"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K6 ["DEFAULT_TRANSITION"]
       12 GETTABLEKS                       R3 R3 K0 ["Duration"]
       14 CALL                             R1 2 1
       15 SETTABLEKS                       R1 R0 K0 ["Duration"]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K7 ["enum"]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K4 ["PropertyLookup"]
       23 GETTABLEKS                       R2 R2 K8 ["DefaultTransitionCurve"]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K6 ["DEFAULT_TRANSITION"]
       28 GETTABLEKS                       R3 R3 K1 ["Curve"]
       30 CALL                             R1 2 1
       31 SETTABLEKS                       R1 R0 K1 ["Curve"]
       33 RETURN                           R0 1

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
       13 JUMPIFNOT                        R2 ; [+14]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K3 ["OnPropertyChanged"]
       17 LOADK                            R3 K4 ["DefaultTransitionDuration"]
       18 GETTABLEKS                       R4 R1 K5 ["Duration"]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K3 ["OnPropertyChanged"]
       24 LOADK                            R3 K6 ["DefaultTransitionCurve"]
       25 GETTABLEKS                       R4 R1 K7 ["Curve"]
       27 CALL                             R2 2 0
       28 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["inputs"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R8 R5 K1 ["Name"]
       10 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       12 MOVE                             R7 R0
       13 GETIMPORT                        R6 K4 [table.insert]
       15 CALL                             R6 2 0
       16 FORGLOOP                         R1 2 ; [-9]
       18 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{"GraphPayload", "Default", "TransitionFields"}]
        2 GETTABLEKS                       R3 R0 K0 ["GraphPayload"]
        4 SETTABLEKS                       R3 R2 K0 ["GraphPayload"]
        6 NEWTABLE                         R3 0 0
        8 SETTABLEKS                       R3 R2 K1 ["Default"]
       10 NEWTABLE                         R3 0 2
       12 LOADK                            R4 K4 ["Duration"]
       13 LOADK                            R5 K5 ["Curve"]
       14 SETLIST                          R3 R4 2 [1]
       16 SETTABLEKS                       R3 R2 K2 ["TransitionFields"]
       18 CALL                             R1 1 1
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K6 ["useMemo"]
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U3
       26 NEWTABLE                         R4 0 2
       28 GETTABLEKS                       R5 R0 K7 ["PropertyLookup"]
       30 GETTABLEKS                       R5 R5 K8 ["DefaultTransitionDuration"]
       32 GETTABLEKS                       R6 R0 K7 ["PropertyLookup"]
       34 GETTABLEKS                       R6 R6 K9 ["DefaultTransitionCurve"]
       36 SETLIST                          R4 R5 2 [1]
       38 CALL                             R2 2 1
       39 GETUPVAL                         R3 1
       40 GETTABLEKS                       R3 R3 K10 ["useCallback"]
       42 NEWCLOSURE                       R4 P1
       43 CAPTURE                          VAL R0
       44 NEWTABLE                         R5 0 1
       46 GETTABLEKS                       R6 R0 K11 ["OnPropertyChanged"]
       48 SETLIST                          R5 R6 1 [1]
       50 CALL                             R3 2 1
       51 GETUPVAL                         R4 4
       52 GETTABLEKS                       R4 R4 K12 ["CompositorNodeUtils"]
       54 GETTABLEKS                       R4 R4 K13 ["createPropertyHelpers"]
       56 MOVE                             R5 R0
       57 CALL                             R4 1 1
       58 GETUPVAL                         R5 5
       59 GETTABLEKS                       R7 R0 K7 ["PropertyLookup"]
       61 GETTABLEKS                       R6 R7 K14 ["Selection"]
       63 CALL                             R5 1 1
       64 JUMPIF                           R5 ; [+6]
       65 GETUPVAL                         R5 5
       66 GETTABLEKS                       R7 R0 K7 ["PropertyLookup"]
       68 GETTABLEKS                       R6 R7 K8 ["DefaultTransitionDuration"]
       70 CALL                             R5 1 1
       71 GETUPVAL                         R6 1
       72 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       74 NEWCLOSURE                       R7 P2
       75 CAPTURE                          VAL R1
       76 NEWTABLE                         R8 0 1
       78 GETTABLEKS                       R9 R1 K15 ["inputs"]
       80 SETLIST                          R8 R9 1 [1]
       82 CALL                             R6 2 1
       83 DUPTABLE                         R7 K19 [{"Property_Selection", "Property_DefaultTransition", "InputPanel"}]
       84 GETTABLEKS                       R8 R4 K20 ["nextProperty"]
       86 DUPTABLE                         R9 K29 [{["Name"] = "Selection", ["Label"] = "Selection", ["Type"] = "String", ["Value"], ["ExtraProps"], ["DefaultValue"] = ""}]
       87 GETTABLEKS                       R11 R0 K7 ["PropertyLookup"]
       89 GETTABLEKS                       R10 R11 K14 ["Selection"]
       91 SETTABLEKS                       R10 R9 K25 ["Value"]
       93 DUPTABLE                         R10 K31 [{"Options"}]
       94 SETTABLEKS                       R6 R10 K30 ["Options"]
       96 SETTABLEKS                       R10 R9 K26 ["ExtraProps"]
       98 CALL                             R8 1 1
       99 SETTABLEKS                       R8 R7 K16 ["Property_Selection"]
      101 GETTABLEKS                       R8 R4 K20 ["nextProperty"]
      103 DUPTABLE                         R9 K37 [{["Name"] = "DefaultTransition", ["Label"] = "Default Transition", ["Type"] = "Transition", ["Value"], ["HidePin"], ["ExtraProps"], ["OnChanged"]}]
      104 SETTABLEKS                       R2 R9 K25 ["Value"]
      106 GETUPVAL                         R11 4
      107 GETTABLEKS                       R11 R11 K38 ["getFFlagAnimGraphUI_DrawUnmappedConnectionCurves"]
      109 CALL                             R11 0 1
      110 JUMPIFNOT                        R11 ; [+2]
      111 LOADNIL                          R10
      112 JUMP                             ; [+1]
      113 NOT                              R10 R5
      114 SETTABLEKS                       R10 R9 K35 ["HidePin"]
      116 DUPTABLE                         R10 K44 [{["TransitionBuilder"], ["AllowReset"] = False, ["HideWeight"] = True}]
      117 GETUPVAL                         R11 6
      118 SETTABLEKS                       R11 R10 K39 ["TransitionBuilder"]
      120 SETTABLEKS                       R10 R9 K26 ["ExtraProps"]
      122 SETTABLEKS                       R3 R9 K36 ["OnChanged"]
      124 CALL                             R8 1 1
      125 SETTABLEKS                       R8 R7 K17 ["Property_DefaultTransition"]
      127 GETTABLEKS                       R8 R1 K45 ["makePropertyChild"]
      129 MOVE                             R9 R0
      130 MOVE                             R10 R4
      131 DUPTABLE                         R11 K48 [{"inputBuilder", "inputBuilderProps"}]
      132 GETUPVAL                         R12 7
      133 SETTABLEKS                       R12 R11 K46 ["inputBuilder"]
      135 DUPTABLE                         R12 K49 [{"DefaultTransition"}]
      136 SETTABLEKS                       R2 R12 K32 ["DefaultTransition"]
      138 SETTABLEKS                       R12 R11 K47 ["inputBuilderProps"]
      140 CALL                             R8 3 1
      141 SETTABLEKS                       R8 R7 K18 ["InputPanel"]
      143 GETUPVAL                         R8 1
      144 GETTABLEKS                       R8 R8 K50 ["createElement"]
      146 GETUPVAL                         R9 4
      147 GETTABLEKS                       R9 R9 K51 ["CompositorNode"]
      149 GETTABLEKS                       R10 R4 K52 ["nodeProps"]
      151 DUPTABLE                         R11 K55 [{"ContextToolbar", "OutputPin"}]
      152 GETTABLEKS                       R12 R4 K56 ["spotlightButton"]
      154 CALL                             R12 0 1
      155 SETTABLEKS                       R12 R11 K53 ["ContextToolbar"]
      157 GETTABLEKS                       R12 R4 K57 ["outputPin"]
      159 CALL                             R12 0 1
      160 SETTABLEKS                       R12 R11 K54 ["OutputPin"]
      162 CALL                             R10 1 1
      163 MOVE                             R11 R7
      164 CALL                             R8 3 -1
      165 RETURN                           R8 -1

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
       41 GETTABLEKS                       R6 R0 K13 ["Parent"]
       43 GETTABLEKS                       R6 R6 K15 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Components"]
       50 GETTABLEKS                       R7 R7 K10 ["NodeView"]
       52 GETTABLEKS                       R7 R7 K11 ["CompositorNodeInput"]
       54 GETTABLEKS                       R7 R7 K16 ["SelectInput"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K9 ["Components"]
       61 GETTABLEKS                       R8 R8 K10 ["NodeView"]
       63 GETTABLEKS                       R8 R8 K17 ["CompositorNodeTransition"]
       65 GETTABLEKS                       R8 R8 K18 ["SelectTransition"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K13 ["Parent"]
       72 GETTABLEKS                       R9 R9 K19 ["StateMachineGraphing"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K9 ["Components"]
       79 GETTABLEKS                       R10 R10 K10 ["NodeView"]
       81 GETTABLEKS                       R10 R10 K20 ["CompositorNodes"]
       83 GETTABLEKS                       R10 R10 K21 ["useInputPanelHelper"]
       85 CALL                             R9 1 1
       86 GETTABLEKS                       R10 R8 K22 ["isStateMachineBinding"]
       88 DUPCLOSURE                       R11 K23 [PROTO_3]
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R6
       97 RETURN                           R11 1
