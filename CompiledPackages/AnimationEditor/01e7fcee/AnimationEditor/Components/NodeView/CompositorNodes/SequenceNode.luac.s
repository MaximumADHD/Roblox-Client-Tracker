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
       65 DUPTABLE                         R7 K30 [{"Name", "Label", "Type", "Value", "DefaultValue", "IsDisabled", "HidePin"}]
       66 LOADK                            R8 K31 ["State"]
       67 SETTABLEKS                       R8 R7 K23 ["Name"]
       69 LOADK                            R8 K31 ["State"]
       70 SETTABLEKS                       R8 R7 K24 ["Label"]
       72 LOADK                            R8 K32 ["String"]
       73 SETTABLEKS                       R8 R7 K25 ["Type"]
       75 GETTABLEKS                       R9 R0 K33 ["StateLookup"]
       77 GETTABLEKS                       R8 R9 K31 ["State"]
       79 SETTABLEKS                       R8 R7 K26 ["Value"]
       81 LOADK                            R8 K34 [""]
       82 SETTABLEKS                       R8 R7 K27 ["DefaultValue"]
       84 LOADB                            R8 1
       85 SETTABLEKS                       R8 R7 K28 ["IsDisabled"]
       87 LOADB                            R8 1
       88 SETTABLEKS                       R8 R7 K29 ["HidePin"]
       90 CALL                             R6 1 1
       91 SETTABLEKS                       R6 R5 K17 ["Property_State"]
       93 GETTABLEKS                       R6 R4 K22 ["nextProperty"]
       95 DUPTABLE                         R7 K37 [{"Name", "Label", "Type", "Value", "DefaultValue", "Step", "Precision"}]
       96 LOADK                            R8 K38 ["LoopCount"]
       97 SETTABLEKS                       R8 R7 K23 ["Name"]
       99 LOADK                            R8 K39 ["Loop Count"]
      100 SETTABLEKS                       R8 R7 K24 ["Label"]
      102 LOADK                            R8 K40 ["Number"]
      103 SETTABLEKS                       R8 R7 K25 ["Type"]
      105 GETTABLEKS                       R9 R0 K10 ["PropertyLookup"]
      107 GETTABLEKS                       R8 R9 K38 ["LoopCount"]
      109 SETTABLEKS                       R8 R7 K26 ["Value"]
      111 LOADN                            R8 0
      112 SETTABLEKS                       R8 R7 K27 ["DefaultValue"]
      114 LOADK                            R8 K41 [0.05]
      115 SETTABLEKS                       R8 R7 K35 ["Step"]
      117 GETUPVAL                         R10 2
      118 GETTABLEKS                       R9 R10 K42 ["NUMBER_PRECISION"]
      120 GETTABLEKS                       R8 R9 K43 ["Integer"]
      122 SETTABLEKS                       R8 R7 K36 ["Precision"]
      124 CALL                             R6 1 1
      125 SETTABLEKS                       R6 R5 K18 ["Property_LoopCount"]
      127 GETTABLEKS                       R6 R4 K22 ["nextProperty"]
      129 DUPTABLE                         R7 K46 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
      130 LOADK                            R8 K47 ["DefaultTransition"]
      131 SETTABLEKS                       R8 R7 K23 ["Name"]
      133 LOADK                            R8 K48 ["Default Transition"]
      134 SETTABLEKS                       R8 R7 K24 ["Label"]
      136 LOADK                            R8 K49 ["Transition"]
      137 SETTABLEKS                       R8 R7 K25 ["Type"]
      139 SETTABLEKS                       R2 R7 K26 ["Value"]
      141 DUPTABLE                         R8 K53 [{"TransitionBuilder", "AllowReset", "HideWeight"}]
      142 GETUPVAL                         R9 4
      143 SETTABLEKS                       R9 R8 K50 ["TransitionBuilder"]
      145 LOADB                            R9 0
      146 SETTABLEKS                       R9 R8 K51 ["AllowReset"]
      148 LOADB                            R9 1
      149 SETTABLEKS                       R9 R8 K52 ["HideWeight"]
      151 SETTABLEKS                       R8 R7 K44 ["ExtraProps"]
      153 SETTABLEKS                       R3 R7 K45 ["OnChanged"]
      155 CALL                             R6 1 1
      156 SETTABLEKS                       R6 R5 K19 ["Property_DefaultTransition"]
      158 GETTABLEKS                       R6 R4 K54 ["nextInputPanel"]
      160 DUPTABLE                         R7 K63 [{"LayoutOrder", "InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
      161 GETTABLEKS                       R8 R4 K64 ["nextOrder"]
      163 CALL                             R8 0 1
      164 SETTABLEKS                       R8 R7 K55 ["LayoutOrder"]
      166 GETUPVAL                         R8 5
      167 SETTABLEKS                       R8 R7 K56 ["InputBuilder"]
      169 DUPTABLE                         R8 K65 [{"DefaultTransition"}]
      170 SETTABLEKS                       R2 R8 K47 ["DefaultTransition"]
      172 SETTABLEKS                       R8 R7 K57 ["InputBuilderProps"]
      174 GETTABLEKS                       R9 R0 K0 ["GraphPayload"]
      176 GETTABLEKS                       R8 R9 K66 ["id"]
      178 SETTABLEKS                       R8 R7 K58 ["NodeId"]
      180 GETTABLEKS                       R8 R1 K67 ["inputs"]
      182 SETTABLEKS                       R8 R7 K59 ["Inputs"]
      184 GETTABLEKS                       R8 R1 K68 ["newInputDefaultValue"]
      186 SETTABLEKS                       R8 R7 K60 ["NewInputDefaultValue"]
      188 GETTABLEKS                       R8 R1 K69 ["onInputChanged"]
      190 SETTABLEKS                       R8 R7 K61 ["OnInputChanged"]
      192 GETTABLEKS                       R8 R1 K70 ["onInputReordered"]
      194 SETTABLEKS                       R8 R7 K62 ["OnInputReordered"]
      196 CALL                             R6 1 1
      197 SETTABLEKS                       R6 R5 K20 ["InputPanel"]
      199 GETUPVAL                         R7 1
      200 GETTABLEKS                       R6 R7 K71 ["createElement"]
      202 GETUPVAL                         R7 6
      203 GETTABLEKS                       R8 R4 K72 ["nodeProps"]
      205 DUPTABLE                         R9 K74 [{"OutputPin"}]
      206 GETTABLEKS                       R10 R4 K75 ["outputPin"]
      208 CALL                             R10 0 1
      209 SETTABLEKS                       R10 R9 K73 ["OutputPin"]
      211 CALL                             R8 1 1
      212 MOVE                             R9 R5
      213 CALL                             R6 3 -1
      214 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["NodeView"]
       20 GETTABLEKS                       R4 R5 K10 ["CompositorNodes"]
       22 GETTABLEKS                       R3 R4 K11 ["CompositorNode"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K12 ["Util"]
       29 GETTABLEKS                       R5 R6 K13 ["Nodes"]
       31 GETTABLEKS                       R4 R5 K14 ["CompositorNodeUtils"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R6 R0 K12 ["Util"]
       38 GETTABLEKS                       R5 R6 K15 ["Constants"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R9 R0 K8 ["Components"]
       45 GETTABLEKS                       R8 R9 K9 ["NodeView"]
       47 GETTABLEKS                       R7 R8 K16 ["CompositorNodeInput"]
       49 GETTABLEKS                       R6 R7 K17 ["InputPanelTypes"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R10 R0 K8 ["Components"]
       56 GETTABLEKS                       R9 R10 K9 ["NodeView"]
       58 GETTABLEKS                       R8 R9 K16 ["CompositorNodeInput"]
       60 GETTABLEKS                       R7 R8 K18 ["SequenceInput"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R11 R0 K8 ["Components"]
       67 GETTABLEKS                       R10 R11 K9 ["NodeView"]
       69 GETTABLEKS                       R9 R10 K19 ["CompositorNodeTransition"]
       71 GETTABLEKS                       R8 R9 K20 ["SequenceTransition"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R12 R0 K8 ["Components"]
       78 GETTABLEKS                       R11 R12 K9 ["NodeView"]
       80 GETTABLEKS                       R10 R11 K10 ["CompositorNodes"]
       82 GETTABLEKS                       R9 R10 K21 ["useInputPanelHelper"]
       84 CALL                             R8 1 1
       85 DUPCLOSURE                       R9 K22 [PROTO_2]
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R2
       93 RETURN                           R9 1
