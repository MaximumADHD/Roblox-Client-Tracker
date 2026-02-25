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
        6 LOADK                            R4 K0 ["newValue. must be a random sequence transition"]
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
        6 DUPTABLE                         R3 K5 [{"Weight"}]
        7 LOADN                            R4 1
        8 SETTABLEKS                       R4 R3 K4 ["Weight"]
       10 SETTABLEKS                       R3 R2 K1 ["Default"]
       12 NEWTABLE                         R3 0 2
       14 LOADK                            R4 K6 ["Duration"]
       15 LOADK                            R5 K7 ["Curve"]
       16 SETLIST                          R3 R4 2 [1]
       18 SETTABLEKS                       R3 R2 K2 ["TransitionFields"]
       20 CALL                             R1 1 1
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R2 R3 K8 ["useMemo"]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U2
       27 NEWTABLE                         R4 0 2
       29 GETTABLEKS                       R6 R0 K9 ["PropertyLookup"]
       31 GETTABLEKS                       R5 R6 K10 ["DefaultTransitionDuration"]
       33 GETTABLEKS                       R7 R0 K9 ["PropertyLookup"]
       35 GETTABLEKS                       R6 R7 K11 ["DefaultTransitionCurve"]
       37 SETLIST                          R4 R5 2 [1]
       39 CALL                             R2 2 1
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R3 R4 K12 ["useCallback"]
       43 NEWCLOSURE                       R4 P1
       44 CAPTURE                          VAL R0
       45 NEWTABLE                         R5 0 1
       47 GETTABLEKS                       R6 R0 K13 ["OnPropertyChanged"]
       49 SETLIST                          R5 R6 1 [1]
       51 CALL                             R3 2 1
       52 GETUPVAL                         R5 3
       53 GETTABLEKS                       R4 R5 K14 ["createPropertyHelpers"]
       55 MOVE                             R5 R0
       56 CALL                             R4 1 1
       57 DUPTABLE                         R5 K20 [{"Property_State", "Property_Playcount", "Property_Seed", "Property_DefaultTransition", "Input"}]
       58 GETTABLEKS                       R6 R4 K21 ["nextProperty"]
       60 DUPTABLE                         R7 K28 [{"Name", "Label", "Type", "Value", "DefaultValue", "IsReadOnly"}]
       61 LOADK                            R8 K29 ["State"]
       62 SETTABLEKS                       R8 R7 K22 ["Name"]
       64 LOADK                            R8 K29 ["State"]
       65 SETTABLEKS                       R8 R7 K23 ["Label"]
       67 LOADK                            R8 K30 ["String"]
       68 SETTABLEKS                       R8 R7 K24 ["Type"]
       70 GETTABLEKS                       R9 R0 K9 ["PropertyLookup"]
       72 GETTABLEKS                       R8 R9 K29 ["State"]
       74 SETTABLEKS                       R8 R7 K25 ["Value"]
       76 LOADK                            R8 K31 [""]
       77 SETTABLEKS                       R8 R7 K26 ["DefaultValue"]
       79 LOADB                            R8 1
       80 SETTABLEKS                       R8 R7 K27 ["IsReadOnly"]
       82 CALL                             R6 1 1
       83 SETTABLEKS                       R6 R5 K15 ["Property_State"]
       85 GETTABLEKS                       R6 R4 K21 ["nextProperty"]
       87 DUPTABLE                         R7 K32 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
       88 LOADK                            R8 K33 ["PlayCount"]
       89 SETTABLEKS                       R8 R7 K22 ["Name"]
       91 LOADK                            R8 K34 ["Play Count"]
       92 SETTABLEKS                       R8 R7 K23 ["Label"]
       94 LOADK                            R8 K35 ["Number"]
       95 SETTABLEKS                       R8 R7 K24 ["Type"]
       97 GETTABLEKS                       R9 R0 K9 ["PropertyLookup"]
       99 GETTABLEKS                       R8 R9 K33 ["PlayCount"]
      101 SETTABLEKS                       R8 R7 K25 ["Value"]
      103 LOADN                            R8 0
      104 SETTABLEKS                       R8 R7 K26 ["DefaultValue"]
      106 CALL                             R6 1 1
      107 SETTABLEKS                       R6 R5 K16 ["Property_Playcount"]
      109 GETTABLEKS                       R6 R4 K21 ["nextProperty"]
      111 DUPTABLE                         R7 K32 [{"Name", "Label", "Type", "Value", "DefaultValue"}]
      112 LOADK                            R8 K36 ["Seed"]
      113 SETTABLEKS                       R8 R7 K22 ["Name"]
      115 LOADK                            R8 K36 ["Seed"]
      116 SETTABLEKS                       R8 R7 K23 ["Label"]
      118 LOADK                            R8 K35 ["Number"]
      119 SETTABLEKS                       R8 R7 K24 ["Type"]
      121 GETTABLEKS                       R9 R0 K9 ["PropertyLookup"]
      123 GETTABLEKS                       R8 R9 K36 ["Seed"]
      125 SETTABLEKS                       R8 R7 K25 ["Value"]
      127 LOADN                            R8 0
      128 SETTABLEKS                       R8 R7 K26 ["DefaultValue"]
      130 CALL                             R6 1 1
      131 SETTABLEKS                       R6 R5 K17 ["Property_Seed"]
      133 GETTABLEKS                       R6 R4 K21 ["nextProperty"]
      135 DUPTABLE                         R7 K39 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
      136 LOADK                            R8 K40 ["DefaultTransition"]
      137 SETTABLEKS                       R8 R7 K22 ["Name"]
      139 LOADK                            R8 K41 ["Default Transition"]
      140 SETTABLEKS                       R8 R7 K23 ["Label"]
      142 LOADK                            R8 K42 ["Transition"]
      143 SETTABLEKS                       R8 R7 K24 ["Type"]
      145 SETTABLEKS                       R2 R7 K25 ["Value"]
      147 DUPTABLE                         R8 K45 [{"TransitionBuilder", "AllowReset"}]
      148 GETUPVAL                         R9 4
      149 SETTABLEKS                       R9 R8 K43 ["TransitionBuilder"]
      151 LOADB                            R9 0
      152 SETTABLEKS                       R9 R8 K44 ["AllowReset"]
      154 SETTABLEKS                       R8 R7 K37 ["ExtraProps"]
      156 SETTABLEKS                       R3 R7 K38 ["OnChanged"]
      158 CALL                             R6 1 1
      159 SETTABLEKS                       R6 R5 K18 ["Property_DefaultTransition"]
      161 GETTABLEKS                       R6 R4 K46 ["nextInputPanel"]
      163 DUPTABLE                         R7 K54 [{"InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
      164 GETUPVAL                         R8 5
      165 SETTABLEKS                       R8 R7 K47 ["InputBuilder"]
      167 DUPTABLE                         R8 K55 [{"DefaultTransition"}]
      168 SETTABLEKS                       R2 R8 K40 ["DefaultTransition"]
      170 SETTABLEKS                       R8 R7 K48 ["InputBuilderProps"]
      172 GETTABLEKS                       R9 R0 K0 ["GraphPayload"]
      174 GETTABLEKS                       R8 R9 K56 ["id"]
      176 SETTABLEKS                       R8 R7 K49 ["NodeId"]
      178 GETTABLEKS                       R8 R1 K57 ["inputs"]
      180 SETTABLEKS                       R8 R7 K50 ["Inputs"]
      182 GETTABLEKS                       R8 R1 K58 ["newInputDefaultValue"]
      184 SETTABLEKS                       R8 R7 K51 ["NewInputDefaultValue"]
      186 GETTABLEKS                       R8 R1 K59 ["onInputChanged"]
      188 SETTABLEKS                       R8 R7 K52 ["OnInputChanged"]
      190 GETTABLEKS                       R8 R1 K60 ["onInputReordered"]
      192 SETTABLEKS                       R8 R7 K53 ["OnInputReordered"]
      194 CALL                             R6 1 1
      195 SETTABLEKS                       R6 R5 K19 ["Input"]
      197 GETUPVAL                         R7 1
      198 GETTABLEKS                       R6 R7 K61 ["createElement"]
      200 GETUPVAL                         R7 6
      201 GETTABLEKS                       R8 R4 K62 ["nodeProps"]
      203 DUPTABLE                         R9 K64 [{"OutputPin"}]
      204 GETTABLEKS                       R10 R4 K65 ["outputPin"]
      206 CALL                             R10 0 1
      207 SETTABLEKS                       R10 R9 K63 ["OutputPin"]
      209 CALL                             R8 1 1
      210 MOVE                             R9 R5
      211 CALL                             R6 3 -1
      212 RETURN                           R6 -1

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
       47 GETTABLEKS                       R9 R0 K6 ["Components"]
       49 GETTABLEKS                       R8 R9 K7 ["NodeView"]
       51 GETTABLEKS                       R7 R8 K14 ["CompositorNodeInput"]
       53 GETTABLEKS                       R6 R7 K16 ["RandomSequenceInput"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K5 [require]
       58 GETTABLEKS                       R10 R0 K6 ["Components"]
       60 GETTABLEKS                       R9 R10 K7 ["NodeView"]
       62 GETTABLEKS                       R8 R9 K17 ["CompositorNodeTransition"]
       64 GETTABLEKS                       R7 R8 K18 ["RandomSequenceTransition"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K5 [require]
       69 GETTABLEKS                       R9 R0 K19 ["Parent"]
       71 GETTABLEKS                       R8 R9 K20 ["React"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R12 R0 K6 ["Components"]
       78 GETTABLEKS                       R11 R12 K7 ["NodeView"]
       80 GETTABLEKS                       R10 R11 K8 ["CompositorNodes"]
       82 GETTABLEKS                       R9 R10 K21 ["useInputPanelHelper"]
       84 CALL                             R8 1 1
       85 DUPCLOSURE                       R9 K22 [PROTO_2]
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R1
       93 RETURN                           R9 1
