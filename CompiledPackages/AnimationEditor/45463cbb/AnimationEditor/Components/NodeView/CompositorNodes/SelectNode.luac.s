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
       78 DUPTABLE                         R8 K26 [{"Name", "Label", "Type", "Value", "ExtraProps", "DefaultValue"}]
       79 LOADK                            R9 K27 ["Selection"]
       80 SETTABLEKS                       R9 R8 K20 ["Name"]
       82 LOADK                            R9 K27 ["Selection"]
       83 SETTABLEKS                       R9 R8 K21 ["Label"]
       85 LOADK                            R9 K28 ["String"]
       86 SETTABLEKS                       R9 R8 K22 ["Type"]
       88 GETTABLEKS                       R10 R0 K7 ["PropertyLookup"]
       90 GETTABLEKS                       R9 R10 K27 ["Selection"]
       92 SETTABLEKS                       R9 R8 K23 ["Value"]
       94 DUPTABLE                         R9 K30 [{"Options"}]
       95 SETTABLEKS                       R5 R9 K29 ["Options"]
       97 SETTABLEKS                       R9 R8 K24 ["ExtraProps"]
       99 LOADK                            R9 K31 [""]
      100 SETTABLEKS                       R9 R8 K25 ["DefaultValue"]
      102 CALL                             R7 1 1
      103 SETTABLEKS                       R7 R6 K15 ["Property_Selection"]
      105 GETTABLEKS                       R7 R4 K19 ["nextProperty"]
      107 DUPTABLE                         R8 K33 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
      108 LOADK                            R9 K34 ["DefaultTransition"]
      109 SETTABLEKS                       R9 R8 K20 ["Name"]
      111 LOADK                            R9 K35 ["Default Transition"]
      112 SETTABLEKS                       R9 R8 K21 ["Label"]
      114 LOADK                            R9 K36 ["Transition"]
      115 SETTABLEKS                       R9 R8 K22 ["Type"]
      117 SETTABLEKS                       R2 R8 K23 ["Value"]
      119 DUPTABLE                         R9 K40 [{"TransitionBuilder", "AllowReset", "HideWeight"}]
      120 GETUPVAL                         R10 6
      121 SETTABLEKS                       R10 R9 K37 ["TransitionBuilder"]
      123 LOADB                            R10 0
      124 SETTABLEKS                       R10 R9 K38 ["AllowReset"]
      126 LOADB                            R10 1
      127 SETTABLEKS                       R10 R9 K39 ["HideWeight"]
      129 SETTABLEKS                       R9 R8 K24 ["ExtraProps"]
      131 SETTABLEKS                       R3 R8 K32 ["OnChanged"]
      133 CALL                             R7 1 1
      134 SETTABLEKS                       R7 R6 K16 ["Property_DefaultTransition"]
      136 GETTABLEKS                       R7 R1 K41 ["makePropertyChild"]
      138 MOVE                             R8 R0
      139 MOVE                             R9 R4
      140 DUPTABLE                         R10 K44 [{"inputBuilder", "inputBuilderProps"}]
      141 GETUPVAL                         R11 7
      142 SETTABLEKS                       R11 R10 K42 ["inputBuilder"]
      144 DUPTABLE                         R11 K45 [{"DefaultTransition"}]
      145 SETTABLEKS                       R2 R11 K34 ["DefaultTransition"]
      147 SETTABLEKS                       R11 R10 K43 ["inputBuilderProps"]
      149 CALL                             R7 3 1
      150 SETTABLEKS                       R7 R6 K17 ["InputPanel"]
      152 GETUPVAL                         R7 1
      153 GETTABLEKS                       R7 R7 K46 ["createElement"]
      155 GETUPVAL                         R8 4
      156 GETTABLEKS                       R8 R8 K47 ["CompositorNode"]
      158 GETTABLEKS                       R9 R4 K48 ["nodeProps"]
      160 DUPTABLE                         R10 K50 [{"OutputPin"}]
      161 GETTABLEKS                       R11 R4 K51 ["outputPin"]
      163 CALL                             R11 0 1
      164 SETTABLEKS                       R11 R10 K49 ["OutputPin"]
      166 CALL                             R9 1 1
      167 MOVE                             R10 R6
      168 CALL                             R7 3 -1
      169 RETURN                           R7 -1

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
       86 DUPCLOSURE                       R10 K23 [PROTO_3]
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R6
       95 RETURN                           R10 1
