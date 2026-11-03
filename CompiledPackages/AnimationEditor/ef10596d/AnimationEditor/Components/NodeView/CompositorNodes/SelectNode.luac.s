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
       18 NEWTABLE                         R4 0 0
       20 SETTABLEKS                       R4 R3 K4 ["Default"]
       22 NEWTABLE                         R4 0 2
       24 LOADK                            R5 K7 ["Duration"]
       25 LOADK                            R6 K8 ["Curve"]
       26 SETLIST                          R4 R5 2 [1]
       28 SETTABLEKS                       R4 R3 K5 ["TransitionFields"]
       30 CALL                             R2 1 1
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R3 R3 K9 ["useMemo"]
       34 NEWCLOSURE                       R4 P0
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U5
       38 NEWTABLE                         R5 0 2
       40 GETTABLEKS                       R6 R0 K10 ["PropertyLookup"]
       42 GETTABLEKS                       R6 R6 K11 ["DefaultTransitionDuration"]
       44 GETTABLEKS                       R7 R0 K10 ["PropertyLookup"]
       46 GETTABLEKS                       R7 R7 K12 ["DefaultTransitionCurve"]
       48 SETLIST                          R5 R6 2 [1]
       50 CALL                             R3 2 1
       51 GETUPVAL                         R4 3
       52 GETTABLEKS                       R4 R4 K13 ["useCallback"]
       54 NEWCLOSURE                       R5 P1
       55 CAPTURE                          VAL R0
       56 NEWTABLE                         R6 0 1
       58 GETTABLEKS                       R7 R0 K14 ["OnPropertyChanged"]
       60 SETLIST                          R6 R7 1 [1]
       62 CALL                             R4 2 1
       63 GETUPVAL                         R5 6
       64 GETTABLEKS                       R5 R5 K15 ["CompositorNodeUtils"]
       66 GETTABLEKS                       R5 R5 K16 ["createPropertyHelpers"]
       68 MOVE                             R6 R0
       69 CALL                             R5 1 1
       70 GETUPVAL                         R6 3
       71 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       73 NEWCLOSURE                       R7 P2
       74 CAPTURE                          VAL R2
       75 NEWTABLE                         R8 0 1
       77 GETTABLEKS                       R9 R2 K17 ["inputs"]
       79 SETLIST                          R8 R9 1 [1]
       81 CALL                             R6 2 1
       82 DUPTABLE                         R7 K21 [{"Property_Selection", "Property_DefaultTransition", "InputPanel"}]
       83 GETTABLEKS                       R8 R5 K22 ["nextProperty"]
       85 DUPTABLE                         R9 K32 [{["Name"] = "Selection", ["Label"] = "Selection", ["Type"] = "String", ["Value"], ["ExtraProps"], ["DefaultValue"] = ""}]
       86 GETTABLEKS                       R11 R0 K10 ["PropertyLookup"]
       88 GETTABLEKS                       R10 R11 K24 ["Selection"]
       90 SETTABLEKS                       R10 R9 K28 ["Value"]
       92 DUPTABLE                         R10 K34 [{"Options"}]
       93 SETTABLEKS                       R6 R10 K33 ["Options"]
       95 SETTABLEKS                       R10 R9 K29 ["ExtraProps"]
       97 CALL                             R8 1 1
       98 SETTABLEKS                       R8 R7 K18 ["Property_Selection"]
      100 GETTABLEKS                       R8 R5 K22 ["nextProperty"]
      102 DUPTABLE                         R9 K40 [{["Name"] = "DefaultTransition", ["Label"], ["Type"] = "Transition", ["Value"], ["HidePin"] = True, ["ExtraProps"], ["OnChanged"]}]
      103 GETUPVAL                         R11 0
      104 JUMPIFNOT                        R11 ; [+8]
      105 LOADK                            R12 K41 ["Common"]
      106 LOADK                            R13 K42 ["AnimationEditor"]
      107 LOADK                            R14 K43 ["Properties"]
      108 LOADK                            R15 K35 ["DefaultTransition"]
      109 NAMECALL                         R10 R1 K44 ["getExternalText"]
      111 CALL                             R10 5 1
      112 JUMP                             ; [+1]
      113 LOADK                            R10 K45 ["Default Transition"]
      114 SETTABLEKS                       R10 R9 K25 ["Label"]
      116 SETTABLEKS                       R3 R9 K28 ["Value"]
      118 DUPTABLE                         R10 K50 [{["TransitionBuilder"], ["AllowReset"] = False, ["HideWeight"] = True}]
      119 GETUPVAL                         R11 7
      120 SETTABLEKS                       R11 R10 K46 ["TransitionBuilder"]
      122 SETTABLEKS                       R10 R9 K29 ["ExtraProps"]
      124 SETTABLEKS                       R4 R9 K39 ["OnChanged"]
      126 CALL                             R8 1 1
      127 SETTABLEKS                       R8 R7 K19 ["Property_DefaultTransition"]
      129 GETTABLEKS                       R8 R2 K51 ["makePropertyChild"]
      131 MOVE                             R9 R0
      132 MOVE                             R10 R5
      133 DUPTABLE                         R11 K54 [{"inputBuilder", "inputBuilderProps"}]
      134 GETUPVAL                         R12 8
      135 SETTABLEKS                       R12 R11 K52 ["inputBuilder"]
      137 DUPTABLE                         R12 K55 [{"DefaultTransition"}]
      138 SETTABLEKS                       R3 R12 K35 ["DefaultTransition"]
      140 SETTABLEKS                       R12 R11 K53 ["inputBuilderProps"]
      142 CALL                             R8 3 1
      143 SETTABLEKS                       R8 R7 K20 ["InputPanel"]
      145 GETUPVAL                         R8 3
      146 GETTABLEKS                       R8 R8 K56 ["createElement"]
      148 GETUPVAL                         R9 6
      149 GETTABLEKS                       R9 R9 K57 ["CompositorNode"]
      151 GETTABLEKS                       R10 R5 K58 ["nodeProps"]
      153 DUPTABLE                         R11 K61 [{"ContextToolbar", "OutputPin"}]
      154 GETTABLEKS                       R12 R5 K62 ["spotlightButton"]
      156 CALL                             R12 0 1
      157 SETTABLEKS                       R12 R11 K59 ["ContextToolbar"]
      159 GETTABLEKS                       R12 R5 K63 ["outputPin"]
      161 CALL                             R12 0 1
      162 SETTABLEKS                       R12 R11 K60 ["OutputPin"]
      164 CALL                             R10 1 1
      165 MOVE                             R11 R7
      166 CALL                             R8 3 -1
      167 RETURN                           R8 -1

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
       55 GETTABLEKS                       R8 R0 K11 ["Parent"]
       57 GETTABLEKS                       R8 R8 K18 ["React"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K13 ["Components"]
       64 GETTABLEKS                       R9 R9 K14 ["NodeView"]
       66 GETTABLEKS                       R9 R9 K15 ["CompositorNodeInput"]
       68 GETTABLEKS                       R9 R9 K19 ["SelectInput"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K13 ["Components"]
       75 GETTABLEKS                       R10 R10 K14 ["NodeView"]
       77 GETTABLEKS                       R10 R10 K20 ["CompositorNodeTransition"]
       79 GETTABLEKS                       R10 R10 K21 ["SelectTransition"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K13 ["Components"]
       86 GETTABLEKS                       R11 R11 K14 ["NodeView"]
       88 GETTABLEKS                       R11 R11 K22 ["CompositorNodes"]
       90 GETTABLEKS                       R11 R11 K23 ["useInputPanelHelper"]
       92 CALL                             R10 1 1
       93 DUPCLOSURE                       R11 K24 [PROTO_3]
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R8
      103 RETURN                           R11 1
