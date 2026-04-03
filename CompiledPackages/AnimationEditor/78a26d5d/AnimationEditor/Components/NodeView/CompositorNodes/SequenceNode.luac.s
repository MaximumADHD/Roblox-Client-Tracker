PROTO_0:
        0 DUPTABLE                         R0 K3 [{"WaitFor", "Duration", "Curve"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K4 ["PropertyLookup"]
        4 GETTABLEKS                       R1 R2 K5 ["DefaultWaitFor"]
        6 JUMPIF                           R1 ; [+2]
        7 GETIMPORT                        R1 K9 [Enum.AnimationNodeWaitFor.Finished]
        9 SETTABLEKS                       R1 R0 K0 ["WaitFor"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K4 ["PropertyLookup"]
       14 GETTABLEKS                       R1 R2 K10 ["DefaultTransitionDuration"]
       16 JUMPIF                           R1 ; [+5]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K11 ["DEFAULT_TRANSITION"]
       20 GETTABLEKS                       R1 R2 K1 ["Duration"]
       22 SETTABLEKS                       R1 R0 K1 ["Duration"]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R2 R3 K4 ["PropertyLookup"]
       27 GETTABLEKS                       R1 R2 K12 ["DefaultTransitionCurve"]
       29 JUMPIF                           R1 ; [+5]
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R2 R3 K11 ["DEFAULT_TRANSITION"]
       33 GETTABLEKS                       R1 R2 K2 ["Curve"]
       35 SETTABLEKS                       R1 R0 K2 ["Curve"]
       37 RETURN                           R0 1

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
       13 JUMPIFNOT                        R2 ; [+21]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K3 ["OnPropertyChanged"]
       17 LOADK                            R3 K4 ["DefaultWaitFor"]
       18 GETTABLEKS                       R4 R1 K5 ["WaitFor"]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K3 ["OnPropertyChanged"]
       24 LOADK                            R3 K6 ["DefaultTransitionDuration"]
       25 GETTABLEKS                       R4 R1 K7 ["Duration"]
       27 CALL                             R2 2 0
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R2 R3 K3 ["OnPropertyChanged"]
       31 LOADK                            R3 K8 ["DefaultTransitionCurve"]
       32 GETTABLEKS                       R4 R1 K9 ["Curve"]
       34 CALL                             R2 2 0
       35 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{"GraphPayload", "Default", "TransitionFields"}]
        2 GETTABLEKS                       R3 R0 K0 ["GraphPayload"]
        4 SETTABLEKS                       R3 R2 K0 ["GraphPayload"]
        6 DUPTABLE                         R3 K5 [{"WaitForTrigger"}]
        7 LOADB                            R4 0
        8 SETTABLEKS                       R4 R3 K4 ["WaitForTrigger"]
       10 SETTABLEKS                       R3 R2 K1 ["Default"]
       12 NEWTABLE                         R3 0 3
       14 LOADK                            R4 K6 ["WaitFor"]
       15 LOADK                            R5 K7 ["Duration"]
       16 LOADK                            R6 K8 ["Curve"]
       17 SETLIST                          R3 R4 3 [1]
       19 SETTABLEKS                       R3 R2 K2 ["TransitionFields"]
       21 CALL                             R1 1 1
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R2 R3 K9 ["useMemo"]
       25 NEWCLOSURE                       R3 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U2
       28 NEWTABLE                         R4 0 3
       30 GETTABLEKS                       R6 R0 K10 ["PropertyLookup"]
       32 GETTABLEKS                       R5 R6 K11 ["DefaultWaitFor"]
       34 GETTABLEKS                       R7 R0 K10 ["PropertyLookup"]
       36 GETTABLEKS                       R6 R7 K12 ["DefaultTransitionDuration"]
       38 GETTABLEKS                       R8 R0 K10 ["PropertyLookup"]
       40 GETTABLEKS                       R7 R8 K13 ["DefaultTransitionCurve"]
       42 SETLIST                          R4 R5 3 [1]
       44 CALL                             R2 2 1
       45 GETUPVAL                         R4 1
       46 GETTABLEKS                       R3 R4 K14 ["useCallback"]
       48 NEWCLOSURE                       R4 P1
       49 CAPTURE                          VAL R0
       50 NEWTABLE                         R5 0 1
       52 GETTABLEKS                       R6 R0 K15 ["OnPropertyChanged"]
       54 SETLIST                          R5 R6 1 [1]
       56 CALL                             R3 2 1
       57 GETUPVAL                         R5 3
       58 GETTABLEKS                       R4 R5 K16 ["createPropertyHelpers"]
       60 MOVE                             R5 R0
       61 CALL                             R4 1 1
       62 DUPTABLE                         R5 K21 [{"Property_State", "Property_LoopCount", "Property_DefaultTransition", "InputPanel"}]
       63 GETTABLEKS                       R6 R4 K22 ["nextProperty"]
       65 DUPTABLE                         R7 K29 [{"Name", "Label", "Type", "Value", "DefaultValue", "IsReadOnly"}]
       66 LOADK                            R8 K30 ["State"]
       67 SETTABLEKS                       R8 R7 K23 ["Name"]
       69 LOADK                            R8 K30 ["State"]
       70 SETTABLEKS                       R8 R7 K24 ["Label"]
       72 LOADK                            R8 K31 ["String"]
       73 SETTABLEKS                       R8 R7 K25 ["Type"]
       75 GETTABLEKS                       R9 R0 K32 ["StateLookup"]
       77 GETTABLEKS                       R8 R9 K30 ["State"]
       79 SETTABLEKS                       R8 R7 K26 ["Value"]
       81 LOADK                            R8 K33 [""]
       82 SETTABLEKS                       R8 R7 K27 ["DefaultValue"]
       84 LOADB                            R8 1
       85 SETTABLEKS                       R8 R7 K28 ["IsReadOnly"]
       87 CALL                             R6 1 1
       88 SETTABLEKS                       R6 R5 K17 ["Property_State"]
       90 GETTABLEKS                       R6 R4 K22 ["nextProperty"]
       92 DUPTABLE                         R7 K36 [{"Name", "Label", "Type", "Value", "DefaultValue", "Step", "Precision"}]
       93 LOADK                            R8 K37 ["LoopCount"]
       94 SETTABLEKS                       R8 R7 K23 ["Name"]
       96 LOADK                            R8 K38 ["Loop Count"]
       97 SETTABLEKS                       R8 R7 K24 ["Label"]
       99 LOADK                            R8 K39 ["Number"]
      100 SETTABLEKS                       R8 R7 K25 ["Type"]
      102 GETTABLEKS                       R9 R0 K10 ["PropertyLookup"]
      104 GETTABLEKS                       R8 R9 K37 ["LoopCount"]
      106 SETTABLEKS                       R8 R7 K26 ["Value"]
      108 LOADN                            R8 0
      109 SETTABLEKS                       R8 R7 K27 ["DefaultValue"]
      111 LOADK                            R8 K40 [0.05]
      112 SETTABLEKS                       R8 R7 K34 ["Step"]
      114 LOADN                            R8 0
      115 SETTABLEKS                       R8 R7 K35 ["Precision"]
      117 CALL                             R6 1 1
      118 SETTABLEKS                       R6 R5 K18 ["Property_LoopCount"]
      120 GETTABLEKS                       R6 R4 K22 ["nextProperty"]
      122 DUPTABLE                         R7 K43 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
      123 LOADK                            R8 K44 ["DefaultTransition"]
      124 SETTABLEKS                       R8 R7 K23 ["Name"]
      126 LOADK                            R8 K45 ["Default Transition"]
      127 SETTABLEKS                       R8 R7 K24 ["Label"]
      129 LOADK                            R8 K46 ["Transition"]
      130 SETTABLEKS                       R8 R7 K25 ["Type"]
      132 SETTABLEKS                       R2 R7 K26 ["Value"]
      134 DUPTABLE                         R8 K50 [{"TransitionBuilder", "AllowReset", "HideWeight"}]
      135 GETUPVAL                         R9 4
      136 SETTABLEKS                       R9 R8 K47 ["TransitionBuilder"]
      138 LOADB                            R9 0
      139 SETTABLEKS                       R9 R8 K48 ["AllowReset"]
      141 LOADB                            R9 1
      142 SETTABLEKS                       R9 R8 K49 ["HideWeight"]
      144 SETTABLEKS                       R8 R7 K41 ["ExtraProps"]
      146 SETTABLEKS                       R3 R7 K42 ["OnChanged"]
      148 CALL                             R6 1 1
      149 SETTABLEKS                       R6 R5 K19 ["Property_DefaultTransition"]
      151 GETTABLEKS                       R6 R4 K51 ["nextInputPanel"]
      153 DUPTABLE                         R7 K60 [{"LayoutOrder", "InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
      154 GETTABLEKS                       R8 R4 K61 ["nextOrder"]
      156 CALL                             R8 0 1
      157 SETTABLEKS                       R8 R7 K52 ["LayoutOrder"]
      159 GETUPVAL                         R8 5
      160 SETTABLEKS                       R8 R7 K53 ["InputBuilder"]
      162 DUPTABLE                         R8 K62 [{"DefaultTransition"}]
      163 SETTABLEKS                       R2 R8 K44 ["DefaultTransition"]
      165 SETTABLEKS                       R8 R7 K54 ["InputBuilderProps"]
      167 GETTABLEKS                       R9 R0 K0 ["GraphPayload"]
      169 GETTABLEKS                       R8 R9 K63 ["id"]
      171 SETTABLEKS                       R8 R7 K55 ["NodeId"]
      173 GETTABLEKS                       R8 R1 K64 ["inputs"]
      175 SETTABLEKS                       R8 R7 K56 ["Inputs"]
      177 GETTABLEKS                       R8 R1 K65 ["newInputDefaultValue"]
      179 SETTABLEKS                       R8 R7 K57 ["NewInputDefaultValue"]
      181 GETTABLEKS                       R8 R1 K66 ["onInputChanged"]
      183 SETTABLEKS                       R8 R7 K58 ["OnInputChanged"]
      185 GETTABLEKS                       R8 R1 K67 ["onInputReordered"]
      187 SETTABLEKS                       R8 R7 K59 ["OnInputReordered"]
      189 CALL                             R6 1 1
      190 SETTABLEKS                       R6 R5 K20 ["InputPanel"]
      192 GETUPVAL                         R7 1
      193 GETTABLEKS                       R6 R7 K68 ["createElement"]
      195 GETUPVAL                         R7 6
      196 GETTABLEKS                       R8 R4 K69 ["nodeProps"]
      198 DUPTABLE                         R9 K71 [{"OutputPin"}]
      199 GETTABLEKS                       R10 R4 K72 ["outputPin"]
      201 CALL                             R10 0 1
      202 SETTABLEKS                       R10 R9 K70 ["OutputPin"]
      204 CALL                             R8 1 1
      205 MOVE                             R9 R5
      206 CALL                             R6 3 -1
      207 RETURN                           R6 -1

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
