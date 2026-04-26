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
      114 GETUPVAL                         R9 4
      115 CALL                             R9 0 1
      116 JUMPIFNOT                        R9 ; [+6]
      117 GETUPVAL                         R10 2
      118 GETTABLEKS                       R9 R10 K41 ["NUMBER_STEP"]
      120 GETTABLEKS                       R8 R9 K42 ["Integer"]
      122 JUMPIF                           R8 ; [+1]
      123 LOADK                            R8 K43 [0.05]
      124 SETTABLEKS                       R8 R7 K35 ["Step"]
      126 GETUPVAL                         R10 2
      127 GETTABLEKS                       R9 R10 K44 ["NUMBER_PRECISION"]
      129 GETTABLEKS                       R8 R9 K42 ["Integer"]
      131 SETTABLEKS                       R8 R7 K36 ["Precision"]
      133 CALL                             R6 1 1
      134 SETTABLEKS                       R6 R5 K18 ["Property_LoopCount"]
      136 GETTABLEKS                       R6 R4 K22 ["nextProperty"]
      138 DUPTABLE                         R7 K47 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
      139 LOADK                            R8 K48 ["DefaultTransition"]
      140 SETTABLEKS                       R8 R7 K23 ["Name"]
      142 LOADK                            R8 K49 ["Default Transition"]
      143 SETTABLEKS                       R8 R7 K24 ["Label"]
      145 LOADK                            R8 K50 ["Transition"]
      146 SETTABLEKS                       R8 R7 K25 ["Type"]
      148 SETTABLEKS                       R2 R7 K26 ["Value"]
      150 DUPTABLE                         R8 K54 [{"TransitionBuilder", "AllowReset", "HideWeight"}]
      151 GETUPVAL                         R9 5
      152 SETTABLEKS                       R9 R8 K51 ["TransitionBuilder"]
      154 LOADB                            R9 0
      155 SETTABLEKS                       R9 R8 K52 ["AllowReset"]
      157 LOADB                            R9 1
      158 SETTABLEKS                       R9 R8 K53 ["HideWeight"]
      160 SETTABLEKS                       R8 R7 K45 ["ExtraProps"]
      162 SETTABLEKS                       R3 R7 K46 ["OnChanged"]
      164 CALL                             R6 1 1
      165 SETTABLEKS                       R6 R5 K19 ["Property_DefaultTransition"]
      167 GETTABLEKS                       R6 R4 K55 ["nextInputPanel"]
      169 DUPTABLE                         R7 K64 [{"LayoutOrder", "InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
      170 GETTABLEKS                       R8 R4 K65 ["nextOrder"]
      172 CALL                             R8 0 1
      173 SETTABLEKS                       R8 R7 K56 ["LayoutOrder"]
      175 GETUPVAL                         R8 6
      176 SETTABLEKS                       R8 R7 K57 ["InputBuilder"]
      178 DUPTABLE                         R8 K66 [{"DefaultTransition"}]
      179 SETTABLEKS                       R2 R8 K48 ["DefaultTransition"]
      181 SETTABLEKS                       R8 R7 K58 ["InputBuilderProps"]
      183 GETTABLEKS                       R9 R0 K0 ["GraphPayload"]
      185 GETTABLEKS                       R8 R9 K67 ["id"]
      187 SETTABLEKS                       R8 R7 K59 ["NodeId"]
      189 GETTABLEKS                       R8 R1 K68 ["inputs"]
      191 SETTABLEKS                       R8 R7 K60 ["Inputs"]
      193 GETTABLEKS                       R8 R1 K69 ["newInputDefaultValue"]
      195 SETTABLEKS                       R8 R7 K61 ["NewInputDefaultValue"]
      197 GETTABLEKS                       R8 R1 K70 ["onInputChanged"]
      199 SETTABLEKS                       R8 R7 K62 ["OnInputChanged"]
      201 GETTABLEKS                       R8 R1 K71 ["onInputReordered"]
      203 SETTABLEKS                       R8 R7 K63 ["OnInputReordered"]
      205 CALL                             R6 1 1
      206 SETTABLEKS                       R6 R5 K20 ["InputPanel"]
      208 GETUPVAL                         R7 1
      209 GETTABLEKS                       R6 R7 K72 ["createElement"]
      211 GETUPVAL                         R7 7
      212 GETTABLEKS                       R8 R4 K73 ["nodeProps"]
      214 DUPTABLE                         R9 K75 [{"OutputPin"}]
      215 GETTABLEKS                       R10 R4 K76 ["outputPin"]
      217 CALL                             R10 0 1
      218 SETTABLEKS                       R10 R9 K74 ["OutputPin"]
      220 CALL                             R8 1 1
      221 MOVE                             R9 R5
      222 CALL                             R6 3 -1
      223 RETURN                           R6 -1

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
       85 GETIMPORT                        R9 K5 [require]
       87 GETTABLEKS                       R11 R0 K22 ["Flags"]
       89 GETTABLEKS                       R10 R11 K23 ["getFFlagAnimGraphFloatStep003"]
       91 CALL                             R9 1 1
       92 DUPCLOSURE                       R10 K24 [PROTO_2]
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R2
      101 RETURN                           R10 1
