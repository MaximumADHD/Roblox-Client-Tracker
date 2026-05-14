PROTO_0:
        0 DUPTABLE                         R0 K2 [{"Duration", "Curve"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["PropertyLookup"]
        4 GETTABLEKS                       R1 R1 K4 ["DefaultTransitionDuration"]
        6 JUMPIF                           R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K5 ["DEFAULT_TRANSITION"]
       10 GETTABLEKS                       R1 R1 K0 ["Duration"]
       12 SETTABLEKS                       R1 R0 K0 ["Duration"]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K3 ["PropertyLookup"]
       17 GETTABLEKS                       R1 R1 K6 ["DefaultTransitionCurve"]
       19 JUMPIF                           R1 ; [+5]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K5 ["DEFAULT_TRANSITION"]
       23 GETTABLEKS                       R1 R1 K1 ["Curve"]
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
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U2
       25 NEWTABLE                         R4 0 2
       27 GETTABLEKS                       R5 R0 K7 ["PropertyLookup"]
       29 GETTABLEKS                       R5 R5 K8 ["DefaultTransitionDuration"]
       31 GETTABLEKS                       R6 R0 K7 ["PropertyLookup"]
       33 GETTABLEKS                       R6 R6 K9 ["DefaultTransitionCurve"]
       35 SETLIST                          R4 R5 2 [1]
       37 CALL                             R2 2 1
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K10 ["useCallback"]
       41 NEWCLOSURE                       R4 P1
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R5 0 1
       45 GETTABLEKS                       R6 R0 K11 ["OnPropertyChanged"]
       47 SETLIST                          R5 R6 1 [1]
       49 CALL                             R3 2 1
       50 GETUPVAL                         R4 3
       51 GETTABLEKS                       R4 R4 K12 ["createPropertyHelpers"]
       53 MOVE                             R5 R0
       54 CALL                             R4 1 1
       55 GETUPVAL                         R6 4
       56 CALL                             R6 0 1
       57 JUMPIFNOT                        R6 ; [+13]
       58 GETUPVAL                         R5 1
       59 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       61 NEWCLOSURE                       R6 P2
       62 CAPTURE                          VAL R1
       63 NEWTABLE                         R7 0 1
       65 GETTABLEKS                       R8 R1 K13 ["inputs"]
       67 SETLIST                          R7 R8 1 [1]
       69 CALL                             R5 2 1
       70 JUMP                             ; [+1]
       71 LOADNIL                          R5
       72 DUPTABLE                         R6 K17 [{"Property_Selection", "Property_DefaultTransition", "InputPanel"}]
       73 GETTABLEKS                       R7 R4 K18 ["nextProperty"]
       75 DUPTABLE                         R8 K25 [{"Name", "Label", "Type", "Value", "ExtraProps", "DefaultValue"}]
       76 LOADK                            R9 K26 ["Selection"]
       77 SETTABLEKS                       R9 R8 K19 ["Name"]
       79 LOADK                            R9 K26 ["Selection"]
       80 SETTABLEKS                       R9 R8 K20 ["Label"]
       82 LOADK                            R9 K27 ["String"]
       83 SETTABLEKS                       R9 R8 K21 ["Type"]
       85 GETTABLEKS                       R10 R0 K7 ["PropertyLookup"]
       87 GETTABLEKS                       R9 R10 K26 ["Selection"]
       89 SETTABLEKS                       R9 R8 K22 ["Value"]
       91 DUPTABLE                         R9 K29 [{"Options"}]
       92 SETTABLEKS                       R5 R9 K28 ["Options"]
       94 SETTABLEKS                       R9 R8 K23 ["ExtraProps"]
       96 LOADK                            R9 K30 [""]
       97 SETTABLEKS                       R9 R8 K24 ["DefaultValue"]
       99 CALL                             R7 1 1
      100 SETTABLEKS                       R7 R6 K14 ["Property_Selection"]
      102 GETTABLEKS                       R7 R4 K18 ["nextProperty"]
      104 DUPTABLE                         R8 K32 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
      105 LOADK                            R9 K33 ["DefaultTransition"]
      106 SETTABLEKS                       R9 R8 K19 ["Name"]
      108 LOADK                            R9 K34 ["Default Transition"]
      109 SETTABLEKS                       R9 R8 K20 ["Label"]
      111 LOADK                            R9 K35 ["Transition"]
      112 SETTABLEKS                       R9 R8 K21 ["Type"]
      114 SETTABLEKS                       R2 R8 K22 ["Value"]
      116 DUPTABLE                         R9 K39 [{"TransitionBuilder", "AllowReset", "HideWeight"}]
      117 GETUPVAL                         R10 5
      118 SETTABLEKS                       R10 R9 K36 ["TransitionBuilder"]
      120 LOADB                            R10 0
      121 SETTABLEKS                       R10 R9 K37 ["AllowReset"]
      123 LOADB                            R10 1
      124 SETTABLEKS                       R10 R9 K38 ["HideWeight"]
      126 SETTABLEKS                       R9 R8 K23 ["ExtraProps"]
      128 SETTABLEKS                       R3 R8 K31 ["OnChanged"]
      130 CALL                             R7 1 1
      131 SETTABLEKS                       R7 R6 K15 ["Property_DefaultTransition"]
      133 GETTABLEKS                       R7 R4 K40 ["nextInputPanel"]
      135 DUPTABLE                         R8 K49 [{"LayoutOrder", "InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
      136 GETTABLEKS                       R9 R4 K50 ["nextOrder"]
      138 CALL                             R9 0 1
      139 SETTABLEKS                       R9 R8 K41 ["LayoutOrder"]
      141 GETUPVAL                         R9 6
      142 SETTABLEKS                       R9 R8 K42 ["InputBuilder"]
      144 DUPTABLE                         R9 K51 [{"DefaultTransition"}]
      145 SETTABLEKS                       R2 R9 K33 ["DefaultTransition"]
      147 SETTABLEKS                       R9 R8 K43 ["InputBuilderProps"]
      149 GETTABLEKS                       R9 R0 K0 ["GraphPayload"]
      151 GETTABLEKS                       R9 R9 K52 ["id"]
      153 SETTABLEKS                       R9 R8 K44 ["NodeId"]
      155 GETTABLEKS                       R9 R1 K13 ["inputs"]
      157 SETTABLEKS                       R9 R8 K45 ["Inputs"]
      159 GETTABLEKS                       R9 R1 K53 ["newInputDefaultValue"]
      161 SETTABLEKS                       R9 R8 K46 ["NewInputDefaultValue"]
      163 GETTABLEKS                       R9 R1 K54 ["onInputChanged"]
      165 SETTABLEKS                       R9 R8 K47 ["OnInputChanged"]
      167 GETTABLEKS                       R9 R1 K55 ["onInputReordered"]
      169 SETTABLEKS                       R9 R8 K48 ["OnInputReordered"]
      171 CALL                             R7 1 1
      172 SETTABLEKS                       R7 R6 K16 ["InputPanel"]
      174 GETUPVAL                         R7 1
      175 GETTABLEKS                       R7 R7 K56 ["createElement"]
      177 GETUPVAL                         R8 7
      178 GETTABLEKS                       R9 R4 K57 ["nodeProps"]
      180 DUPTABLE                         R10 K59 [{"OutputPin"}]
      181 GETTABLEKS                       R11 R4 K60 ["outputPin"]
      183 CALL                             R11 0 1
      184 SETTABLEKS                       R11 R10 K58 ["OutputPin"]
      186 CALL                             R9 1 1
      187 MOVE                             R10 R6
      188 CALL                             R7 3 -1
      189 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodes"]
       15 GETTABLEKS                       R2 R2 K9 ["CompositorNode"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Util"]
       22 GETTABLEKS                       R3 R3 K11 ["Nodes"]
       24 GETTABLEKS                       R3 R3 K12 ["CompositorNodeUtils"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K10 ["Util"]
       31 GETTABLEKS                       R4 R4 K13 ["Constants"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Components"]
       38 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       40 GETTABLEKS                       R5 R5 K14 ["CompositorNodeInput"]
       42 GETTABLEKS                       R5 R5 K15 ["InputPanelTypes"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K16 ["Parent"]
       49 GETTABLEKS                       R6 R6 K17 ["React"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Components"]
       56 GETTABLEKS                       R7 R7 K7 ["NodeView"]
       58 GETTABLEKS                       R7 R7 K14 ["CompositorNodeInput"]
       60 GETTABLEKS                       R7 R7 K18 ["SelectInput"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R8 R0 K6 ["Components"]
       67 GETTABLEKS                       R8 R8 K7 ["NodeView"]
       69 GETTABLEKS                       R8 R8 K19 ["CompositorNodeTransition"]
       71 GETTABLEKS                       R8 R8 K20 ["SelectTransition"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R9 R0 K6 ["Components"]
       78 GETTABLEKS                       R9 R9 K7 ["NodeView"]
       80 GETTABLEKS                       R9 R9 K8 ["CompositorNodes"]
       82 GETTABLEKS                       R9 R9 K21 ["useInputPanelHelper"]
       84 CALL                             R8 1 1
       85 GETIMPORT                        R9 K5 [require]
       87 GETTABLEKS                       R10 R0 K22 ["Flags"]
       89 GETTABLEKS                       R10 R10 K23 ["getFFlagAnimGraphUISelectCombo"]
       91 CALL                             R9 1 1
       92 DUPCLOSURE                       R10 K24 [PROTO_3]
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R1
      101 RETURN                           R10 1
