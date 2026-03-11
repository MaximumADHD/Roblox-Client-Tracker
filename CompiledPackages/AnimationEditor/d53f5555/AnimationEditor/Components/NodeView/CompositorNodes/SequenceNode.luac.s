PROTO_0:
        0 DUPTABLE                         R0 K4 [{"WaitFor", "WaitForTrigger", "Duration", "Curve"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K5 ["PropertyLookup"]
        4 GETTABLEKS                       R1 R2 K6 ["DefaultWaitFor"]
        6 JUMPIF                           R1 ; [+2]
        7 GETIMPORT                        R1 K10 [Enum.AnimationNodeWaitFor.Finished]
        9 SETTABLEKS                       R1 R0 K0 ["WaitFor"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K5 ["PropertyLookup"]
       14 GETTABLEKS                       R1 R2 K11 ["DefaultWaitForTrigger"]
       16 SETTABLEKS                       R1 R0 K1 ["WaitForTrigger"]
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
       24 LOADK                            R3 K6 ["DefaultWaitForTrigger"]
       25 GETTABLEKS                       R4 R1 K7 ["WaitForTrigger"]
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
        6 NEWTABLE                         R3 0 0
        8 SETTABLEKS                       R3 R2 K1 ["Default"]
       10 NEWTABLE                         R3 0 4
       12 LOADK                            R4 K4 ["WaitFor"]
       13 LOADK                            R5 K5 ["WaitForTrigger"]
       14 LOADK                            R6 K6 ["Duration"]
       15 LOADK                            R7 K7 ["Curve"]
       16 SETLIST                          R3 R4 4 [1]
       18 SETTABLEKS                       R3 R2 K2 ["TransitionFields"]
       20 CALL                             R1 1 1
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R2 R3 K8 ["useMemo"]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U2
       27 NEWTABLE                         R4 0 4
       29 GETTABLEKS                       R6 R0 K9 ["PropertyLookup"]
       31 GETTABLEKS                       R5 R6 K10 ["DefaultWaitFor"]
       33 GETTABLEKS                       R7 R0 K9 ["PropertyLookup"]
       35 GETTABLEKS                       R6 R7 K11 ["DefaultWaitForTrigger"]
       37 GETTABLEKS                       R8 R0 K9 ["PropertyLookup"]
       39 GETTABLEKS                       R7 R8 K12 ["DefaultTransitionDuration"]
       41 GETTABLEKS                       R9 R0 K9 ["PropertyLookup"]
       43 GETTABLEKS                       R8 R9 K13 ["DefaultTransitionCurve"]
       45 SETLIST                          R4 R5 4 [1]
       47 CALL                             R2 2 1
       48 GETUPVAL                         R4 1
       49 GETTABLEKS                       R3 R4 K14 ["useCallback"]
       51 NEWCLOSURE                       R4 P1
       52 CAPTURE                          VAL R0
       53 NEWTABLE                         R5 0 1
       55 GETTABLEKS                       R6 R0 K15 ["OnPropertyChanged"]
       57 SETLIST                          R5 R6 1 [1]
       59 CALL                             R3 2 1
       60 GETUPVAL                         R5 3
       61 GETTABLEKS                       R4 R5 K16 ["createPropertyHelpers"]
       63 MOVE                             R5 R0
       64 CALL                             R4 1 1
       65 DUPTABLE                         R5 K21 [{"Property_State", "Property_LoopCount", "Property_DefaultTransition", "Input"}]
       66 GETTABLEKS                       R6 R4 K22 ["nextProperty"]
       68 DUPTABLE                         R7 K29 [{"Name", "Label", "Type", "Value", "DefaultValue", "IsReadOnly"}]
       69 LOADK                            R8 K30 ["State"]
       70 SETTABLEKS                       R8 R7 K23 ["Name"]
       72 LOADK                            R8 K30 ["State"]
       73 SETTABLEKS                       R8 R7 K24 ["Label"]
       75 LOADK                            R8 K31 ["String"]
       76 SETTABLEKS                       R8 R7 K25 ["Type"]
       78 GETTABLEKS                       R9 R0 K32 ["StateLookup"]
       80 GETTABLEKS                       R8 R9 K30 ["State"]
       82 SETTABLEKS                       R8 R7 K26 ["Value"]
       84 LOADK                            R8 K33 [""]
       85 SETTABLEKS                       R8 R7 K27 ["DefaultValue"]
       87 LOADB                            R8 1
       88 SETTABLEKS                       R8 R7 K28 ["IsReadOnly"]
       90 CALL                             R6 1 1
       91 SETTABLEKS                       R6 R5 K17 ["Property_State"]
       93 GETTABLEKS                       R6 R4 K22 ["nextProperty"]
       95 DUPTABLE                         R7 K36 [{"Name", "Label", "Type", "Value", "DefaultValue", "Step", "Precision"}]
       96 LOADK                            R8 K37 ["LoopCount"]
       97 SETTABLEKS                       R8 R7 K23 ["Name"]
       99 LOADK                            R8 K38 ["Loop Count"]
      100 SETTABLEKS                       R8 R7 K24 ["Label"]
      102 LOADK                            R8 K39 ["Number"]
      103 SETTABLEKS                       R8 R7 K25 ["Type"]
      105 GETTABLEKS                       R9 R0 K9 ["PropertyLookup"]
      107 GETTABLEKS                       R8 R9 K37 ["LoopCount"]
      109 SETTABLEKS                       R8 R7 K26 ["Value"]
      111 LOADN                            R8 0
      112 SETTABLEKS                       R8 R7 K27 ["DefaultValue"]
      114 LOADN                            R8 1
      115 SETTABLEKS                       R8 R7 K34 ["Step"]
      117 LOADN                            R8 0
      118 SETTABLEKS                       R8 R7 K35 ["Precision"]
      120 CALL                             R6 1 1
      121 SETTABLEKS                       R6 R5 K18 ["Property_LoopCount"]
      123 GETTABLEKS                       R6 R4 K22 ["nextProperty"]
      125 DUPTABLE                         R7 K42 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
      126 LOADK                            R8 K43 ["DefaultTransition"]
      127 SETTABLEKS                       R8 R7 K23 ["Name"]
      129 LOADK                            R8 K44 ["Default Transition"]
      130 SETTABLEKS                       R8 R7 K24 ["Label"]
      132 LOADK                            R8 K45 ["Transition"]
      133 SETTABLEKS                       R8 R7 K25 ["Type"]
      135 SETTABLEKS                       R2 R7 K26 ["Value"]
      137 DUPTABLE                         R8 K48 [{"TransitionBuilder", "AllowReset"}]
      138 GETUPVAL                         R9 4
      139 SETTABLEKS                       R9 R8 K46 ["TransitionBuilder"]
      141 LOADB                            R9 0
      142 SETTABLEKS                       R9 R8 K47 ["AllowReset"]
      144 SETTABLEKS                       R8 R7 K40 ["ExtraProps"]
      146 SETTABLEKS                       R3 R7 K41 ["OnChanged"]
      148 CALL                             R6 1 1
      149 SETTABLEKS                       R6 R5 K19 ["Property_DefaultTransition"]
      151 GETTABLEKS                       R6 R4 K49 ["nextInputPanel"]
      153 DUPTABLE                         R7 K58 [{"LayoutOrder", "InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
      154 GETTABLEKS                       R8 R4 K59 ["nextOrder"]
      156 CALL                             R8 0 1
      157 SETTABLEKS                       R8 R7 K50 ["LayoutOrder"]
      159 GETUPVAL                         R8 5
      160 SETTABLEKS                       R8 R7 K51 ["InputBuilder"]
      162 DUPTABLE                         R8 K60 [{"DefaultTransition"}]
      163 SETTABLEKS                       R2 R8 K43 ["DefaultTransition"]
      165 SETTABLEKS                       R8 R7 K52 ["InputBuilderProps"]
      167 GETTABLEKS                       R9 R0 K0 ["GraphPayload"]
      169 GETTABLEKS                       R8 R9 K61 ["id"]
      171 SETTABLEKS                       R8 R7 K53 ["NodeId"]
      173 GETTABLEKS                       R8 R1 K62 ["inputs"]
      175 SETTABLEKS                       R8 R7 K54 ["Inputs"]
      177 GETTABLEKS                       R8 R1 K63 ["newInputDefaultValue"]
      179 SETTABLEKS                       R8 R7 K55 ["NewInputDefaultValue"]
      181 GETTABLEKS                       R8 R1 K64 ["onInputChanged"]
      183 SETTABLEKS                       R8 R7 K56 ["OnInputChanged"]
      185 GETTABLEKS                       R8 R1 K65 ["onInputReordered"]
      187 SETTABLEKS                       R8 R7 K57 ["OnInputReordered"]
      189 CALL                             R6 1 1
      190 SETTABLEKS                       R6 R5 K20 ["Input"]
      192 GETUPVAL                         R7 1
      193 GETTABLEKS                       R6 R7 K66 ["createElement"]
      195 GETUPVAL                         R7 6
      196 GETTABLEKS                       R8 R4 K67 ["nodeProps"]
      198 DUPTABLE                         R9 K69 [{"OutputPin"}]
      199 GETTABLEKS                       R10 R4 K70 ["outputPin"]
      201 CALL                             R10 0 1
      202 SETTABLEKS                       R10 R9 K68 ["OutputPin"]
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
