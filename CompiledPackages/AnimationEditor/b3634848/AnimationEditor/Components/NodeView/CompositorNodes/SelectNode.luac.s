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
       70 GETUPVAL                         R6 7
       71 GETTABLEKS                       R8 R0 K10 ["PropertyLookup"]
       73 GETTABLEKS                       R7 R8 K17 ["Selection"]
       75 CALL                             R6 1 1
       76 JUMPIF                           R6 ; [+6]
       77 GETUPVAL                         R6 7
       78 GETTABLEKS                       R8 R0 K10 ["PropertyLookup"]
       80 GETTABLEKS                       R7 R8 K11 ["DefaultTransitionDuration"]
       82 CALL                             R6 1 1
       83 GETUPVAL                         R7 3
       84 GETTABLEKS                       R7 R7 K9 ["useMemo"]
       86 NEWCLOSURE                       R8 P2
       87 CAPTURE                          VAL R2
       88 NEWTABLE                         R9 0 1
       90 GETTABLEKS                       R10 R2 K18 ["inputs"]
       92 SETLIST                          R9 R10 1 [1]
       94 CALL                             R7 2 1
       95 DUPTABLE                         R8 K22 [{"Property_Selection", "Property_DefaultTransition", "InputPanel"}]
       96 GETTABLEKS                       R9 R5 K23 ["nextProperty"]
       98 DUPTABLE                         R10 K32 [{["Name"] = "Selection", ["Label"] = "Selection", ["Type"] = "String", ["Value"], ["ExtraProps"], ["DefaultValue"] = ""}]
       99 GETTABLEKS                       R12 R0 K10 ["PropertyLookup"]
      101 GETTABLEKS                       R11 R12 K17 ["Selection"]
      103 SETTABLEKS                       R11 R10 K28 ["Value"]
      105 DUPTABLE                         R11 K34 [{"Options"}]
      106 SETTABLEKS                       R7 R11 K33 ["Options"]
      108 SETTABLEKS                       R11 R10 K29 ["ExtraProps"]
      110 CALL                             R9 1 1
      111 SETTABLEKS                       R9 R8 K19 ["Property_Selection"]
      113 GETTABLEKS                       R9 R5 K23 ["nextProperty"]
      115 DUPTABLE                         R10 K39 [{["Name"] = "DefaultTransition", ["Label"], ["Type"] = "Transition", ["Value"], ["HidePin"], ["ExtraProps"], ["OnChanged"]}]
      116 GETUPVAL                         R12 0
      117 JUMPIFNOT                        R12 ; [+8]
      118 LOADK                            R13 K40 ["Common"]
      119 LOADK                            R14 K41 ["AnimationEditor"]
      120 LOADK                            R15 K42 ["Properties"]
      121 LOADK                            R16 K35 ["DefaultTransition"]
      122 NAMECALL                         R11 R1 K43 ["getExternalText"]
      124 CALL                             R11 5 1
      125 JUMP                             ; [+1]
      126 LOADK                            R11 K44 ["Default Transition"]
      127 SETTABLEKS                       R11 R10 K25 ["Label"]
      129 SETTABLEKS                       R3 R10 K28 ["Value"]
      131 GETUPVAL                         R12 6
      132 GETTABLEKS                       R12 R12 K45 ["getFFlagAnimGraphUI_DrawUnmappedConnectionCurves"]
      134 CALL                             R12 0 1
      135 JUMPIFNOT                        R12 ; [+2]
      136 LOADNIL                          R11
      137 JUMP                             ; [+1]
      138 NOT                              R11 R6
      139 SETTABLEKS                       R11 R10 K37 ["HidePin"]
      141 DUPTABLE                         R11 K51 [{["TransitionBuilder"], ["AllowReset"] = False, ["HideWeight"] = True}]
      142 GETUPVAL                         R12 8
      143 SETTABLEKS                       R12 R11 K46 ["TransitionBuilder"]
      145 SETTABLEKS                       R11 R10 K29 ["ExtraProps"]
      147 SETTABLEKS                       R4 R10 K38 ["OnChanged"]
      149 CALL                             R9 1 1
      150 SETTABLEKS                       R9 R8 K20 ["Property_DefaultTransition"]
      152 GETTABLEKS                       R9 R2 K52 ["makePropertyChild"]
      154 MOVE                             R10 R0
      155 MOVE                             R11 R5
      156 DUPTABLE                         R12 K55 [{"inputBuilder", "inputBuilderProps"}]
      157 GETUPVAL                         R13 9
      158 SETTABLEKS                       R13 R12 K53 ["inputBuilder"]
      160 DUPTABLE                         R13 K56 [{"DefaultTransition"}]
      161 SETTABLEKS                       R3 R13 K35 ["DefaultTransition"]
      163 SETTABLEKS                       R13 R12 K54 ["inputBuilderProps"]
      165 CALL                             R9 3 1
      166 SETTABLEKS                       R9 R8 K21 ["InputPanel"]
      168 GETUPVAL                         R9 3
      169 GETTABLEKS                       R9 R9 K57 ["createElement"]
      171 GETUPVAL                         R10 6
      172 GETTABLEKS                       R10 R10 K58 ["CompositorNode"]
      174 GETTABLEKS                       R11 R5 K59 ["nodeProps"]
      176 DUPTABLE                         R12 K62 [{"ContextToolbar", "OutputPin"}]
      177 GETTABLEKS                       R13 R5 K63 ["spotlightButton"]
      179 CALL                             R13 0 1
      180 SETTABLEKS                       R13 R12 K60 ["ContextToolbar"]
      182 GETTABLEKS                       R13 R5 K64 ["outputPin"]
      184 CALL                             R13 0 1
      185 SETTABLEKS                       R13 R12 K61 ["OutputPin"]
      187 CALL                             R11 1 1
      188 MOVE                             R12 R8
      189 CALL                             R9 3 -1
      190 RETURN                           R9 -1

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
       84 GETTABLEKS                       R11 R0 K11 ["Parent"]
       86 GETTABLEKS                       R11 R11 K22 ["StateMachineGraphing"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K13 ["Components"]
       93 GETTABLEKS                       R12 R12 K14 ["NodeView"]
       95 GETTABLEKS                       R12 R12 K23 ["CompositorNodes"]
       97 GETTABLEKS                       R12 R12 K24 ["useInputPanelHelper"]
       99 CALL                             R11 1 1
      100 GETTABLEKS                       R12 R10 K25 ["isStateMachineBinding"]
      102 DUPCLOSURE                       R13 K26 [PROTO_3]
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R8
      113 RETURN                           R13 1
