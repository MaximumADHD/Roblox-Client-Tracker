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
       58 GETUPVAL                         R6 5
       59 CALL                             R6 0 1
       60 JUMPIFNOT                        R6 ; [+13]
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       64 NEWCLOSURE                       R6 P2
       65 CAPTURE                          VAL R1
       66 NEWTABLE                         R7 0 1
       68 GETTABLEKS                       R8 R1 K14 ["inputs"]
       70 SETLIST                          R7 R8 1 [1]
       72 CALL                             R5 2 1
       73 JUMP                             ; [+1]
       74 LOADNIL                          R5
       75 DUPTABLE                         R6 K18 [{"Property_Selection", "Property_DefaultTransition", "InputPanel"}]
       76 GETTABLEKS                       R7 R4 K19 ["nextProperty"]
       78 DUPTABLE                         R8 K29 [{["Name"] = "Selection", ["Label"] = "Selection", ["Type"] = "String", ["Value"], ["ExtraProps"], ["DefaultValue"] = ""}]
       79 GETTABLEKS                       R10 R0 K7 ["PropertyLookup"]
       81 GETTABLEKS                       R9 R10 K21 ["Selection"]
       83 SETTABLEKS                       R9 R8 K25 ["Value"]
       85 DUPTABLE                         R9 K31 [{"Options"}]
       86 SETTABLEKS                       R5 R9 K30 ["Options"]
       88 SETTABLEKS                       R9 R8 K26 ["ExtraProps"]
       90 CALL                             R7 1 1
       91 SETTABLEKS                       R7 R6 K15 ["Property_Selection"]
       93 GETTABLEKS                       R7 R4 K19 ["nextProperty"]
       95 DUPTABLE                         R8 K36 [{["Name"] = "DefaultTransition", ["Label"] = "Default Transition", ["Type"] = "Transition", ["Value"], ["ExtraProps"], ["OnChanged"]}]
       96 SETTABLEKS                       R2 R8 K25 ["Value"]
       98 DUPTABLE                         R9 K42 [{["TransitionBuilder"], ["AllowReset"] = False, ["HideWeight"] = True}]
       99 GETUPVAL                         R10 6
      100 SETTABLEKS                       R10 R9 K37 ["TransitionBuilder"]
      102 SETTABLEKS                       R9 R8 K26 ["ExtraProps"]
      104 SETTABLEKS                       R3 R8 K35 ["OnChanged"]
      106 CALL                             R7 1 1
      107 SETTABLEKS                       R7 R6 K16 ["Property_DefaultTransition"]
      109 GETTABLEKS                       R7 R1 K43 ["makePropertyChild"]
      111 MOVE                             R8 R0
      112 MOVE                             R9 R4
      113 DUPTABLE                         R10 K46 [{"inputBuilder", "inputBuilderProps"}]
      114 GETUPVAL                         R11 7
      115 SETTABLEKS                       R11 R10 K44 ["inputBuilder"]
      117 DUPTABLE                         R11 K47 [{"DefaultTransition"}]
      118 SETTABLEKS                       R2 R11 K32 ["DefaultTransition"]
      120 SETTABLEKS                       R11 R10 K45 ["inputBuilderProps"]
      122 CALL                             R7 3 1
      123 SETTABLEKS                       R7 R6 K17 ["InputPanel"]
      125 GETUPVAL                         R7 1
      126 GETTABLEKS                       R7 R7 K48 ["createElement"]
      128 GETUPVAL                         R8 4
      129 GETTABLEKS                       R8 R8 K49 ["CompositorNode"]
      131 GETTABLEKS                       R9 R4 K50 ["nodeProps"]
      133 DUPTABLE                         R10 K53 [{"ContextToolbar", "OutputPin"}]
      134 GETUPVAL                         R12 8
      135 CALL                             R12 0 1
      136 JUMPIFNOT                        R12 ; [+4]
      137 GETTABLEKS                       R11 R4 K54 ["spotlightButton"]
      139 CALL                             R11 0 1
      140 JUMP                             ; [+1]
      141 LOADNIL                          R11
      142 SETTABLEKS                       R11 R10 K51 ["ContextToolbar"]
      144 GETTABLEKS                       R11 R4 K55 ["outputPin"]
      146 CALL                             R11 0 1
      147 SETTABLEKS                       R11 R10 K52 ["OutputPin"]
      149 CALL                             R9 1 1
      150 MOVE                             R10 R6
      151 CALL                             R7 3 -1
      152 RETURN                           R7 -1

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
       70 GETTABLEKS                       R9 R0 K9 ["Components"]
       72 GETTABLEKS                       R9 R9 K10 ["NodeView"]
       74 GETTABLEKS                       R9 R9 K19 ["CompositorNodes"]
       76 GETTABLEKS                       R9 R9 K20 ["useInputPanelHelper"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K21 ["Flags"]
       83 GETTABLEKS                       R10 R10 K22 ["getFFlagAnimGraphUISelectCombo"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K21 ["Flags"]
       90 GETTABLEKS                       R11 R11 K23 ["getFFlagAnimGraphUI_SpotlightNodes"]
       92 CALL                             R10 1 1
       93 DUPCLOSURE                       R11 K24 [PROTO_3]
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R10
      103 RETURN                           R11 1
