PROTO_0:
        0 DUPTABLE                         R0 K4 [{"WaitFor", "WaitForExpression", "Duration", "Curve"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K5 ["PropertyLookup"]
        4 GETTABLEKS                       R1 R2 K6 ["DefaultWaitFor"]
        6 JUMPIF                           R1 ; [+2]
        7 GETIMPORT                        R1 K10 [Enum.AnimationNodeWaitFor.ClipFinished]
        9 SETTABLEKS                       R1 R0 K0 ["WaitFor"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K5 ["PropertyLookup"]
       14 GETTABLEKS                       R1 R2 K11 ["DefaultWaitForExpression"]
       16 SETTABLEKS                       R1 R0 K1 ["WaitForExpression"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K5 ["PropertyLookup"]
       21 GETTABLEKS                       R1 R2 K12 ["DefaultTransitionDuration"]
       23 JUMPIF                           R1 ; [+5]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R2 R3 K13 ["DEFAULT_TRANSITION"]
       27 GETTABLEKS                       R1 R2 K2 ["Duration"]
       29 SETTABLEKS                       R1 R0 K2 ["Duration"]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R2 R3 K5 ["PropertyLookup"]
       34 GETTABLEKS                       R1 R2 K14 ["DefaultTransitionCurve"]
       36 JUMPIF                           R1 ; [+5]
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R2 R3 K13 ["DEFAULT_TRANSITION"]
       40 GETTABLEKS                       R1 R2 K3 ["Curve"]
       42 SETTABLEKS                       R1 R0 K3 ["Curve"]
       44 RETURN                           R0 1

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
       13 JUMPIFNOT                        R2 ; [+28]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K3 ["OnPropertyChanged"]
       17 LOADK                            R3 K4 ["DefaultWaitFor"]
       18 GETTABLEKS                       R4 R1 K5 ["WaitFor"]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K3 ["OnPropertyChanged"]
       24 LOADK                            R3 K6 ["DefaultWaitForExpression"]
       25 GETTABLEKS                       R4 R1 K7 ["WaitForExpression"]
       27 CALL                             R2 2 0
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R2 R3 K3 ["OnPropertyChanged"]
       31 LOADK                            R3 K8 ["DefaultTransitionDuration"]
       32 GETTABLEKS                       R4 R1 K9 ["Duration"]
       34 CALL                             R2 2 0
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R2 R3 K3 ["OnPropertyChanged"]
       38 LOADK                            R3 K10 ["DefaultTransitionCurve"]
       39 GETTABLEKS                       R4 R1 K11 ["Curve"]
       41 CALL                             R2 2 0
       42 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{"GraphPayload", "Default", "TransitionFields"}]
        2 GETTABLEKS                       R3 R0 K0 ["GraphPayload"]
        4 SETTABLEKS                       R3 R2 K0 ["GraphPayload"]
        6 DUPTABLE                         R3 K5 [{"Weight"}]
        7 LOADNIL                          R4
        8 SETTABLEKS                       R4 R3 K4 ["Weight"]
       10 SETTABLEKS                       R3 R2 K1 ["Default"]
       12 NEWTABLE                         R3 0 4
       14 LOADK                            R4 K6 ["WaitFor"]
       15 LOADK                            R5 K7 ["WaitForExpression"]
       16 LOADK                            R6 K8 ["Duration"]
       17 LOADK                            R7 K9 ["Curve"]
       18 SETLIST                          R3 R4 4 [1]
       20 SETTABLEKS                       R3 R2 K2 ["TransitionFields"]
       22 CALL                             R1 1 1
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K10 ["useMemo"]
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U2
       29 NEWTABLE                         R4 0 4
       31 GETTABLEKS                       R6 R0 K11 ["PropertyLookup"]
       33 GETTABLEKS                       R5 R6 K12 ["DefaultWaitFor"]
       35 GETTABLEKS                       R7 R0 K11 ["PropertyLookup"]
       37 GETTABLEKS                       R6 R7 K13 ["DefaultWaitForExpression"]
       39 GETTABLEKS                       R8 R0 K11 ["PropertyLookup"]
       41 GETTABLEKS                       R7 R8 K14 ["DefaultTransitionDuration"]
       43 GETTABLEKS                       R9 R0 K11 ["PropertyLookup"]
       45 GETTABLEKS                       R8 R9 K15 ["DefaultTransitionCurve"]
       47 SETLIST                          R4 R5 4 [1]
       49 CALL                             R2 2 1
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R3 R4 K16 ["useCallback"]
       53 NEWCLOSURE                       R4 P1
       54 CAPTURE                          VAL R0
       55 NEWTABLE                         R5 0 1
       57 GETTABLEKS                       R6 R0 K17 ["OnPropertyChanged"]
       59 SETLIST                          R5 R6 1 [1]
       61 CALL                             R3 2 1
       62 GETUPVAL                         R5 3
       63 GETTABLEKS                       R4 R5 K18 ["createPropertyHelpers"]
       65 MOVE                             R5 R0
       66 CALL                             R4 1 1
       67 DUPTABLE                         R5 K23 [{"Property_State", "Property_LoopCount", "Property_DefaultTransition", "Input"}]
       68 GETTABLEKS                       R6 R4 K24 ["nextProperty"]
       70 DUPTABLE                         R7 K31 [{"Name", "Label", "Type", "Value", "DefaultValue", "IsReadOnly"}]
       71 LOADK                            R8 K32 ["State"]
       72 SETTABLEKS                       R8 R7 K25 ["Name"]
       74 LOADK                            R8 K32 ["State"]
       75 SETTABLEKS                       R8 R7 K26 ["Label"]
       77 LOADK                            R8 K33 ["String"]
       78 SETTABLEKS                       R8 R7 K27 ["Type"]
       80 GETTABLEKS                       R9 R0 K11 ["PropertyLookup"]
       82 GETTABLEKS                       R8 R9 K32 ["State"]
       84 SETTABLEKS                       R8 R7 K28 ["Value"]
       86 LOADK                            R8 K34 [""]
       87 SETTABLEKS                       R8 R7 K29 ["DefaultValue"]
       89 LOADB                            R8 1
       90 SETTABLEKS                       R8 R7 K30 ["IsReadOnly"]
       92 CALL                             R6 1 1
       93 SETTABLEKS                       R6 R5 K19 ["Property_State"]
       95 GETTABLEKS                       R6 R4 K24 ["nextProperty"]
       97 DUPTABLE                         R7 K35 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
       98 LOADK                            R8 K36 ["LoopCount"]
       99 SETTABLEKS                       R8 R7 K25 ["Name"]
      101 LOADK                            R8 K37 ["Loop Count"]
      102 SETTABLEKS                       R8 R7 K26 ["Label"]
      104 LOADK                            R8 K38 ["Number"]
      105 SETTABLEKS                       R8 R7 K27 ["Type"]
      107 GETTABLEKS                       R9 R0 K11 ["PropertyLookup"]
      109 GETTABLEKS                       R8 R9 K36 ["LoopCount"]
      111 SETTABLEKS                       R8 R7 K28 ["Value"]
      113 LOADN                            R8 0
      114 SETTABLEKS                       R8 R7 K29 ["DefaultValue"]
      116 CALL                             R6 1 1
      117 SETTABLEKS                       R6 R5 K20 ["Property_LoopCount"]
      119 GETTABLEKS                       R6 R4 K24 ["nextProperty"]
      121 DUPTABLE                         R7 K41 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
      122 LOADK                            R8 K42 ["DefaultTransition"]
      123 SETTABLEKS                       R8 R7 K25 ["Name"]
      125 LOADK                            R8 K43 ["Default Transition"]
      126 SETTABLEKS                       R8 R7 K26 ["Label"]
      128 LOADK                            R8 K44 ["Transition"]
      129 SETTABLEKS                       R8 R7 K27 ["Type"]
      131 SETTABLEKS                       R2 R7 K28 ["Value"]
      133 DUPTABLE                         R8 K47 [{"TransitionBuilder", "AllowReset"}]
      134 GETUPVAL                         R9 4
      135 SETTABLEKS                       R9 R8 K45 ["TransitionBuilder"]
      137 LOADB                            R9 0
      138 SETTABLEKS                       R9 R8 K46 ["AllowReset"]
      140 SETTABLEKS                       R8 R7 K39 ["ExtraProps"]
      142 SETTABLEKS                       R3 R7 K40 ["OnChanged"]
      144 CALL                             R6 1 1
      145 SETTABLEKS                       R6 R5 K21 ["Property_DefaultTransition"]
      147 GETTABLEKS                       R6 R4 K48 ["nextInputPanel"]
      149 DUPTABLE                         R7 K57 [{"LayoutOrder", "InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
      150 GETTABLEKS                       R8 R4 K58 ["nextOrder"]
      152 CALL                             R8 0 1
      153 SETTABLEKS                       R8 R7 K49 ["LayoutOrder"]
      155 GETUPVAL                         R8 5
      156 SETTABLEKS                       R8 R7 K50 ["InputBuilder"]
      158 DUPTABLE                         R8 K59 [{"DefaultTransition"}]
      159 SETTABLEKS                       R2 R8 K42 ["DefaultTransition"]
      161 SETTABLEKS                       R8 R7 K51 ["InputBuilderProps"]
      163 GETTABLEKS                       R9 R0 K0 ["GraphPayload"]
      165 GETTABLEKS                       R8 R9 K60 ["id"]
      167 SETTABLEKS                       R8 R7 K52 ["NodeId"]
      169 GETTABLEKS                       R8 R1 K61 ["inputs"]
      171 SETTABLEKS                       R8 R7 K53 ["Inputs"]
      173 GETTABLEKS                       R8 R1 K62 ["newInputDefaultValue"]
      175 SETTABLEKS                       R8 R7 K54 ["NewInputDefaultValue"]
      177 GETTABLEKS                       R8 R1 K63 ["onInputChanged"]
      179 SETTABLEKS                       R8 R7 K55 ["OnInputChanged"]
      181 GETTABLEKS                       R8 R1 K64 ["onInputReordered"]
      183 SETTABLEKS                       R8 R7 K56 ["OnInputReordered"]
      185 CALL                             R6 1 1
      186 SETTABLEKS                       R6 R5 K22 ["Input"]
      188 GETUPVAL                         R7 1
      189 GETTABLEKS                       R6 R7 K65 ["createElement"]
      191 GETUPVAL                         R7 6
      192 GETTABLEKS                       R8 R4 K66 ["nodeProps"]
      194 DUPTABLE                         R9 K68 [{"OutputPin"}]
      195 GETTABLEKS                       R10 R4 K69 ["outputPin"]
      197 CALL                             R10 0 1
      198 SETTABLEKS                       R10 R9 K67 ["OutputPin"]
      200 CALL                             R8 1 1
      201 MOVE                             R9 R5
      202 CALL                             R6 3 -1
      203 RETURN                           R6 -1

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
       60 GETTABLEKS                       R7 R8 K18 ["SequenceInput"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R11 R0 K6 ["Components"]
       67 GETTABLEKS                       R10 R11 K7 ["NodeView"]
       69 GETTABLEKS                       R9 R10 K19 ["CompositorNodeTransition"]
       71 GETTABLEKS                       R8 R9 K20 ["SequenceTransition"]
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
