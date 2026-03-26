PROTO_0:
        0 DUPTABLE                         R0 K2 [{"Duration", "Curve"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K3 ["PropertyLookup"]
        4 GETTABLEKS                       R1 R2 K4 ["DefaultTransitionDuration"]
        6 JUMPIF                           R1 ; [+5]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K5 ["DEFAULT_TRANSITION"]
       10 GETTABLEKS                       R1 R2 K0 ["Duration"]
       12 SETTABLEKS                       R1 R0 K0 ["Duration"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K3 ["PropertyLookup"]
       17 GETTABLEKS                       R1 R2 K6 ["DefaultTransitionCurve"]
       19 JUMPIF                           R1 ; [+5]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K5 ["DEFAULT_TRANSITION"]
       23 GETTABLEKS                       R1 R2 K1 ["Curve"]
       25 SETTABLEKS                       R1 R0 K1 ["Curve"]
       27 RETURN                           R0 1

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
       13 JUMPIFNOT                        R2 ; [+14]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K3 ["OnPropertyChanged"]
       17 LOADK                            R3 K4 ["DefaultTransitionDuration"]
       18 GETTABLEKS                       R4 R1 K5 ["Duration"]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K3 ["OnPropertyChanged"]
       24 LOADK                            R3 K6 ["DefaultTransitionCurve"]
       25 GETTABLEKS                       R4 R1 K7 ["Curve"]
       27 CALL                             R2 2 0
       28 RETURN                           R0 0

PROTO_2:
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
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R2 R3 K6 ["useMemo"]
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U2
       25 NEWTABLE                         R4 0 2
       27 GETTABLEKS                       R6 R0 K7 ["PropertyLookup"]
       29 GETTABLEKS                       R5 R6 K8 ["DefaultTransitionDuration"]
       31 GETTABLEKS                       R7 R0 K7 ["PropertyLookup"]
       33 GETTABLEKS                       R6 R7 K9 ["DefaultTransitionCurve"]
       35 SETLIST                          R4 R5 2 [1]
       37 CALL                             R2 2 1
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R3 R4 K10 ["useCallback"]
       41 NEWCLOSURE                       R4 P1
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R5 0 1
       45 GETTABLEKS                       R6 R0 K11 ["OnPropertyChanged"]
       47 SETLIST                          R5 R6 1 [1]
       49 CALL                             R3 2 1
       50 GETUPVAL                         R5 3
       51 GETTABLEKS                       R4 R5 K12 ["createPropertyHelpers"]
       53 MOVE                             R5 R0
       54 CALL                             R4 1 1
       55 DUPTABLE                         R5 K16 [{"Property_Selection", "Property_DefaultTransition", "InputPanel"}]
       56 GETTABLEKS                       R6 R4 K17 ["nextProperty"]
       58 DUPTABLE                         R7 K23 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
       59 LOADK                            R8 K24 ["Selection"]
       60 SETTABLEKS                       R8 R7 K18 ["Name"]
       62 LOADK                            R8 K24 ["Selection"]
       63 SETTABLEKS                       R8 R7 K19 ["Label"]
       65 LOADK                            R8 K25 ["String"]
       66 SETTABLEKS                       R8 R7 K20 ["Type"]
       68 GETTABLEKS                       R9 R0 K7 ["PropertyLookup"]
       70 GETTABLEKS                       R8 R9 K24 ["Selection"]
       72 SETTABLEKS                       R8 R7 K21 ["Value"]
       74 LOADK                            R8 K26 [""]
       75 SETTABLEKS                       R8 R7 K22 ["DefaultValue"]
       77 CALL                             R6 1 1
       78 SETTABLEKS                       R6 R5 K13 ["Property_Selection"]
       80 GETTABLEKS                       R6 R4 K17 ["nextProperty"]
       82 DUPTABLE                         R7 K29 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
       83 LOADK                            R8 K30 ["DefaultTransition"]
       84 SETTABLEKS                       R8 R7 K18 ["Name"]
       86 LOADK                            R8 K31 ["Default Transition"]
       87 SETTABLEKS                       R8 R7 K19 ["Label"]
       89 LOADK                            R8 K32 ["Transition"]
       90 SETTABLEKS                       R8 R7 K20 ["Type"]
       92 SETTABLEKS                       R2 R7 K21 ["Value"]
       94 DUPTABLE                         R8 K35 [{"TransitionBuilder", "AllowReset"}]
       95 GETUPVAL                         R9 4
       96 SETTABLEKS                       R9 R8 K33 ["TransitionBuilder"]
       98 LOADB                            R9 0
       99 SETTABLEKS                       R9 R8 K34 ["AllowReset"]
      101 SETTABLEKS                       R8 R7 K27 ["ExtraProps"]
      103 SETTABLEKS                       R3 R7 K28 ["OnChanged"]
      105 CALL                             R6 1 1
      106 SETTABLEKS                       R6 R5 K14 ["Property_DefaultTransition"]
      108 GETTABLEKS                       R6 R4 K36 ["nextInputPanel"]
      110 DUPTABLE                         R7 K45 [{"LayoutOrder", "InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
      111 GETTABLEKS                       R8 R4 K46 ["nextOrder"]
      113 CALL                             R8 0 1
      114 SETTABLEKS                       R8 R7 K37 ["LayoutOrder"]
      116 GETUPVAL                         R8 5
      117 SETTABLEKS                       R8 R7 K38 ["InputBuilder"]
      119 DUPTABLE                         R8 K47 [{"DefaultTransition"}]
      120 SETTABLEKS                       R2 R8 K30 ["DefaultTransition"]
      122 SETTABLEKS                       R8 R7 K39 ["InputBuilderProps"]
      124 GETTABLEKS                       R9 R0 K0 ["GraphPayload"]
      126 GETTABLEKS                       R8 R9 K48 ["id"]
      128 SETTABLEKS                       R8 R7 K40 ["NodeId"]
      130 GETTABLEKS                       R8 R1 K49 ["inputs"]
      132 SETTABLEKS                       R8 R7 K41 ["Inputs"]
      134 GETTABLEKS                       R8 R1 K50 ["newInputDefaultValue"]
      136 SETTABLEKS                       R8 R7 K42 ["NewInputDefaultValue"]
      138 GETTABLEKS                       R8 R1 K51 ["onInputChanged"]
      140 SETTABLEKS                       R8 R7 K43 ["OnInputChanged"]
      142 GETTABLEKS                       R8 R1 K52 ["onInputReordered"]
      144 SETTABLEKS                       R8 R7 K44 ["OnInputReordered"]
      146 CALL                             R6 1 1
      147 SETTABLEKS                       R6 R5 K15 ["InputPanel"]
      149 GETUPVAL                         R7 1
      150 GETTABLEKS                       R6 R7 K53 ["createElement"]
      152 GETUPVAL                         R7 6
      153 GETTABLEKS                       R8 R4 K54 ["nodeProps"]
      155 DUPTABLE                         R9 K56 [{"OutputPin"}]
      156 GETTABLEKS                       R10 R4 K57 ["outputPin"]
      158 CALL                             R10 0 1
      159 SETTABLEKS                       R10 R9 K55 ["OutputPin"]
      161 CALL                             R8 1 1
      162 MOVE                             R9 R5
      163 CALL                             R6 3 -1
      164 RETURN                           R6 -1

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
       47 GETTABLEKS                       R7 R0 K16 ["Parent"]
       49 GETTABLEKS                       R6 R7 K17 ["React"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R10 R0 K6 ["Components"]
       56 GETTABLEKS                       R9 R10 K7 ["NodeView"]
       58 GETTABLEKS                       R8 R9 K14 ["CompositorNodeInput"]
       60 GETTABLEKS                       R7 R8 K18 ["SelectInput"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R11 R0 K6 ["Components"]
       67 GETTABLEKS                       R10 R11 K7 ["NodeView"]
       69 GETTABLEKS                       R9 R10 K19 ["CompositorNodeTransition"]
       71 GETTABLEKS                       R8 R9 K20 ["SelectTransition"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R12 R0 K6 ["Components"]
       78 GETTABLEKS                       R11 R12 K7 ["NodeView"]
       80 GETTABLEKS                       R10 R11 K8 ["CompositorNodes"]
       82 GETTABLEKS                       R9 R10 K21 ["useInputPanelHelper"]
       84 CALL                             R8 1 1
       85 DUPCLOSURE                       R9 K22 [PROTO_2]
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R1
       93 RETURN                           R9 1
