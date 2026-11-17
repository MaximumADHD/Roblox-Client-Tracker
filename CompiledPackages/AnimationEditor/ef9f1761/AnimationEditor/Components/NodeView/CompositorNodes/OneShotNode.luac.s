PROTO_0:
        0 DUPTABLE                         R0 K2 [{"Duration", "Curve"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["number"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K5 ["PropertyLookup"]
        7 GETTABLEKS                       R2 R3 K4 ["TransitionInDuration"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K6 ["DEFAULT_TRANSITION"]
       12 GETTABLEKS                       R3 R3 K0 ["Duration"]
       14 CALL                             R1 2 1
       15 SETTABLEKS                       R1 R0 K0 ["Duration"]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K7 ["enum"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K5 ["PropertyLookup"]
       23 GETTABLEKS                       R2 R3 K8 ["TransitionInCurve"]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K6 ["DEFAULT_TRANSITION"]
       28 GETTABLEKS                       R3 R3 K1 ["Curve"]
       30 CALL                             R1 2 1
       31 SETTABLEKS                       R1 R0 K1 ["Curve"]
       33 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K3 [{"Duration", "Curve", "When"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["number"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K6 ["PropertyLookup"]
        7 GETTABLEKS                       R2 R3 K5 ["TransitionOutDuration"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K7 ["DEFAULT_TRANSITION"]
       12 GETTABLEKS                       R3 R3 K0 ["Duration"]
       14 CALL                             R1 2 1
       15 SETTABLEKS                       R1 R0 K0 ["Duration"]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K8 ["enum"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K6 ["PropertyLookup"]
       23 GETTABLEKS                       R2 R3 K9 ["TransitionOutCurve"]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K7 ["DEFAULT_TRANSITION"]
       28 GETTABLEKS                       R3 R3 K1 ["Curve"]
       30 CALL                             R1 2 1
       31 SETTABLEKS                       R1 R0 K1 ["Curve"]
       33 GETUPVAL                         R1 0
       34 GETTABLEKS                       R1 R1 K8 ["enum"]
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R3 R3 K6 ["PropertyLookup"]
       39 GETTABLEKS                       R2 R3 K10 ["TransitionOutWhen"]
       41 GETIMPORT                        R3 K14 [Enum.AnimationNodeTransitionWhen.Finished]
       43 CALL                             R1 2 1
       44 SETTABLEKS                       R1 R0 K2 ["When"]
       46 RETURN                           R0 1

PROTO_2:
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
       17 LOADK                            R3 K4 ["TransitionInDuration"]
       18 GETTABLEKS                       R4 R1 K5 ["Duration"]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K3 ["OnPropertyChanged"]
       24 LOADK                            R3 K6 ["TransitionInCurve"]
       25 GETTABLEKS                       R4 R1 K7 ["Curve"]
       27 CALL                             R2 2 0
       28 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        6 LOADK                            R4 K0 ["Bad newValue"]
        7 GETIMPORT                        R2 K2 [assert]
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["OnPropertyChanged"]
       13 JUMPIFNOT                        R2 ; [+21]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K3 ["OnPropertyChanged"]
       17 LOADK                            R3 K4 ["TransitionOutDuration"]
       18 GETTABLEKS                       R4 R1 K5 ["Duration"]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K3 ["OnPropertyChanged"]
       24 LOADK                            R3 K6 ["TransitionOutCurve"]
       25 GETTABLEKS                       R4 R1 K7 ["Curve"]
       27 CALL                             R2 2 0
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K3 ["OnPropertyChanged"]
       31 LOADK                            R3 K8 ["TransitionOutWhen"]
       32 GETTABLEKS                       R4 R1 K9 ["When"]
       34 CALL                             R2 2 0
       35 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CompositorNodeUtils"]
        3 GETTABLEKS                       R1 R1 K1 ["createPropertyHelpers"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U3
       14 NEWTABLE                         R4 0 2
       16 GETTABLEKS                       R6 R0 K4 ["PropertyLookup"]
       18 GETTABLEKS                       R5 R6 K3 ["TransitionInDuration"]
       20 GETTABLEKS                       R7 R0 K4 ["PropertyLookup"]
       22 GETTABLEKS                       R6 R7 K5 ["TransitionInCurve"]
       24 SETLIST                          R4 R5 2 [1]
       26 CALL                             R2 2 1
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       30 NEWCLOSURE                       R4 P1
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U3
       34 NEWTABLE                         R5 0 3
       36 GETTABLEKS                       R7 R0 K4 ["PropertyLookup"]
       38 GETTABLEKS                       R6 R7 K6 ["TransitionOutDuration"]
       40 GETTABLEKS                       R8 R0 K4 ["PropertyLookup"]
       42 GETTABLEKS                       R7 R8 K7 ["TransitionOutCurve"]
       44 GETTABLEKS                       R9 R0 K4 ["PropertyLookup"]
       46 GETTABLEKS                       R8 R9 K8 ["TransitionOutWhen"]
       48 SETLIST                          R5 R6 3 [1]
       50 CALL                             R3 2 1
       51 GETUPVAL                         R4 1
       52 GETTABLEKS                       R4 R4 K9 ["useCallback"]
       54 NEWCLOSURE                       R5 P2
       55 CAPTURE                          VAL R0
       56 NEWTABLE                         R6 0 1
       58 GETTABLEKS                       R7 R0 K10 ["OnPropertyChanged"]
       60 SETLIST                          R6 R7 1 [1]
       62 CALL                             R4 2 1
       63 GETUPVAL                         R5 1
       64 GETTABLEKS                       R5 R5 K9 ["useCallback"]
       66 NEWCLOSURE                       R6 P3
       67 CAPTURE                          VAL R0
       68 NEWTABLE                         R7 0 1
       70 GETTABLEKS                       R8 R0 K10 ["OnPropertyChanged"]
       72 SETLIST                          R7 R8 1 [1]
       74 CALL                             R5 2 1
       75 DUPTABLE                         R6 K19 [{"Input_Base", "Input_OneShot", "Property_Trigger", "Property_Cancel", "Property_Interruptible", "Property_BlendMode", "Property_TransitionIn", "Property_TransitionOut"}]
       76 GETTABLEKS                       R7 R1 K20 ["nextInput"]
       78 DUPTABLE                         R8 K23 [{"Input", "Builder"}]
       79 DUPTABLE                         R9 K26 [{["Name"] = "Base"}]
       80 SETTABLEKS                       R9 R8 K21 ["Input"]
       82 GETUPVAL                         R9 4
       83 SETTABLEKS                       R9 R8 K22 ["Builder"]
       85 CALL                             R7 1 1
       86 SETTABLEKS                       R7 R6 K11 ["Input_Base"]
       88 GETTABLEKS                       R7 R1 K20 ["nextInput"]
       90 DUPTABLE                         R8 K29 [{["Input"], ["Label"] = "One Shot", ["Builder"]}]
       91 DUPTABLE                         R9 K31 [{["Name"] = "OneShot"}]
       92 SETTABLEKS                       R9 R8 K21 ["Input"]
       94 GETUPVAL                         R9 4
       95 SETTABLEKS                       R9 R8 K22 ["Builder"]
       97 CALL                             R7 1 1
       98 SETTABLEKS                       R7 R6 K12 ["Input_OneShot"]
      100 GETTABLEKS                       R7 R1 K32 ["nextProperty"]
      102 DUPTABLE                         R8 K39 [{["Name"] = "Trigger", ["Label"] = "Trigger", ["Type"] = "Boolean", ["Value"], ["DefaultValue"] = False}]
      103 GETTABLEKS                       R10 R0 K4 ["PropertyLookup"]
      105 GETTABLEKS                       R9 R10 K33 ["Trigger"]
      107 SETTABLEKS                       R9 R8 K36 ["Value"]
      109 CALL                             R7 1 1
      110 SETTABLEKS                       R7 R6 K13 ["Property_Trigger"]
      112 GETTABLEKS                       R7 R1 K32 ["nextProperty"]
      114 DUPTABLE                         R8 K41 [{["Name"] = "Cancel", ["Label"] = "Cancel", ["Type"] = "Boolean", ["Value"], ["DefaultValue"] = False}]
      115 GETTABLEKS                       R10 R0 K4 ["PropertyLookup"]
      117 GETTABLEKS                       R9 R10 K40 ["Cancel"]
      119 SETTABLEKS                       R9 R8 K36 ["Value"]
      121 CALL                             R7 1 1
      122 SETTABLEKS                       R7 R6 K14 ["Property_Cancel"]
      124 GETTABLEKS                       R7 R1 K32 ["nextProperty"]
      126 DUPTABLE                         R8 K44 [{["Name"] = "Interruptible", ["Type"] = "Boolean", ["Value"], ["DefaultValue"] = True}]
      127 GETTABLEKS                       R10 R0 K4 ["PropertyLookup"]
      129 GETTABLEKS                       R9 R10 K42 ["Interruptible"]
      131 SETTABLEKS                       R9 R8 K36 ["Value"]
      133 CALL                             R7 1 1
      134 SETTABLEKS                       R7 R6 K15 ["Property_Interruptible"]
      136 GETTABLEKS                       R7 R1 K32 ["nextProperty"]
      138 DUPTABLE                         R8 K48 [{["Name"] = "BlendMode", ["Label"] = "Blend Mode", ["Type"] = "Enum.AnimationNodeBlendMode", ["Value"], ["DefaultValue"]}]
      139 GETTABLEKS                       R10 R0 K4 ["PropertyLookup"]
      141 GETTABLEKS                       R9 R10 K45 ["BlendMode"]
      143 SETTABLEKS                       R9 R8 K36 ["Value"]
      145 GETIMPORT                        R9 K52 [Enum.AnimationNodeBlendMode.Over]
      147 SETTABLEKS                       R9 R8 K37 ["DefaultValue"]
      149 CALL                             R7 1 1
      150 SETTABLEKS                       R7 R6 K16 ["Property_BlendMode"]
      152 GETTABLEKS                       R7 R1 K32 ["nextProperty"]
      154 DUPTABLE                         R8 K59 [{["Name"] = "TransitionIn", ["Label"] = "Transition In", ["Type"] = "Transition", ["Value"], ["HidePin"] = True, ["ExtraProps"], ["OnChanged"]}]
      155 SETTABLEKS                       R2 R8 K36 ["Value"]
      157 DUPTABLE                         R9 K63 [{["TransitionBuilder"], ["AllowReset"] = False, ["HideWeight"] = True}]
      158 GETUPVAL                         R10 5
      159 SETTABLEKS                       R10 R9 K60 ["TransitionBuilder"]
      161 SETTABLEKS                       R9 R8 K57 ["ExtraProps"]
      163 SETTABLEKS                       R4 R8 K58 ["OnChanged"]
      165 CALL                             R7 1 1
      166 SETTABLEKS                       R7 R6 K17 ["Property_TransitionIn"]
      168 GETTABLEKS                       R7 R1 K32 ["nextProperty"]
      170 DUPTABLE                         R8 K66 [{["Name"] = "TransitionOut", ["Label"] = "Transition Out", ["Type"] = "Transition", ["Value"], ["HidePin"] = True, ["ExtraProps"], ["OnChanged"]}]
      171 SETTABLEKS                       R3 R8 K36 ["Value"]
      173 DUPTABLE                         R9 K63 [{["TransitionBuilder"], ["AllowReset"] = False, ["HideWeight"] = True}]
      174 GETUPVAL                         R10 5
      175 SETTABLEKS                       R10 R9 K60 ["TransitionBuilder"]
      177 SETTABLEKS                       R9 R8 K57 ["ExtraProps"]
      179 SETTABLEKS                       R5 R8 K58 ["OnChanged"]
      181 CALL                             R7 1 1
      182 SETTABLEKS                       R7 R6 K18 ["Property_TransitionOut"]
      184 GETUPVAL                         R7 1
      185 GETTABLEKS                       R7 R7 K67 ["createElement"]
      187 GETUPVAL                         R8 0
      188 GETTABLEKS                       R8 R8 K68 ["CompositorNode"]
      190 GETTABLEKS                       R9 R1 K69 ["nodeProps"]
      192 DUPTABLE                         R10 K72 [{"ContextToolbar", "OutputPin"}]
      193 GETTABLEKS                       R11 R1 K73 ["spotlightButton"]
      195 CALL                             R11 0 1
      196 SETTABLEKS                       R11 R10 K70 ["ContextToolbar"]
      198 GETTABLEKS                       R11 R1 K74 ["outputPin"]
      200 CALL                             R11 0 1
      201 SETTABLEKS                       R11 R10 K71 ["OutputPin"]
      203 CALL                             R9 1 1
      204 MOVE                             R10 R6
      205 CALL                             R7 3 -1
      206 RETURN                           R7 -1

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
       23 GETTABLEKS                       R4 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["NodeGraphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K13 ["CompositorNodeTransition"]
       36 GETTABLEKS                       R5 R5 K14 ["OneShotTransition"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Parent"]
       43 GETTABLEKS                       R6 R6 K15 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K11 ["Components"]
       50 GETTABLEKS                       R7 R7 K12 ["NodeView"]
       52 GETTABLEKS                       R7 R7 K16 ["CompositorNodeInput"]
       54 GETTABLEKS                       R7 R7 K17 ["SimpleInput"]
       56 CALL                             R6 1 1
       57 DUPCLOSURE                       R7 K18 [PROTO_4]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R4
       64 RETURN                           R7 1
