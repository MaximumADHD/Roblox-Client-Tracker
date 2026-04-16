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
       57 DUPTABLE                         R5 K20 [{"Property_State", "Property_Playcount", "Property_Seed", "Property_DefaultTransition", "InputPanel"}]
       58 GETTABLEKS                       R6 R4 K21 ["nextProperty"]
       60 DUPTABLE                         R7 K29 [{"Name", "Label", "Type", "Value", "DefaultValue", "IsDisabled", "HidePin"}]
       61 LOADK                            R8 K30 ["State"]
       62 SETTABLEKS                       R8 R7 K22 ["Name"]
       64 LOADK                            R8 K30 ["State"]
       65 SETTABLEKS                       R8 R7 K23 ["Label"]
       67 LOADK                            R8 K31 ["String"]
       68 SETTABLEKS                       R8 R7 K24 ["Type"]
       70 GETTABLEKS                       R9 R0 K32 ["StateLookup"]
       72 GETTABLEKS                       R8 R9 K30 ["State"]
       74 SETTABLEKS                       R8 R7 K25 ["Value"]
       76 LOADK                            R8 K33 [""]
       77 SETTABLEKS                       R8 R7 K26 ["DefaultValue"]
       79 LOADB                            R8 1
       80 SETTABLEKS                       R8 R7 K27 ["IsDisabled"]
       82 LOADB                            R8 1
       83 SETTABLEKS                       R8 R7 K28 ["HidePin"]
       85 CALL                             R6 1 1
       86 SETTABLEKS                       R6 R5 K15 ["Property_State"]
       88 GETTABLEKS                       R6 R4 K21 ["nextProperty"]
       90 DUPTABLE                         R7 K36 [{"Name", "Label", "Type", "Value", "DefaultValue", "Precision", "Step"}]
       91 LOADK                            R8 K37 ["PlayCount"]
       92 SETTABLEKS                       R8 R7 K22 ["Name"]
       94 LOADK                            R8 K38 ["Play Count"]
       95 SETTABLEKS                       R8 R7 K23 ["Label"]
       97 LOADK                            R8 K39 ["Number"]
       98 SETTABLEKS                       R8 R7 K24 ["Type"]
      100 GETTABLEKS                       R9 R0 K9 ["PropertyLookup"]
      102 GETTABLEKS                       R8 R9 K37 ["PlayCount"]
      104 SETTABLEKS                       R8 R7 K25 ["Value"]
      106 LOADN                            R8 0
      107 SETTABLEKS                       R8 R7 K26 ["DefaultValue"]
      109 GETUPVAL                         R10 2
      110 GETTABLEKS                       R9 R10 K40 ["NUMBER_PRECISION"]
      112 GETTABLEKS                       R8 R9 K41 ["Integer"]
      114 SETTABLEKS                       R8 R7 K34 ["Precision"]
      116 LOADK                            R8 K42 [0.05]
      117 SETTABLEKS                       R8 R7 K35 ["Step"]
      119 CALL                             R6 1 1
      120 SETTABLEKS                       R6 R5 K16 ["Property_Playcount"]
      122 GETTABLEKS                       R6 R4 K21 ["nextProperty"]
      124 DUPTABLE                         R7 K36 [{"Name", "Label", "Type", "Value", "DefaultValue", "Precision", "Step"}]
      125 LOADK                            R8 K43 ["Seed"]
      126 SETTABLEKS                       R8 R7 K22 ["Name"]
      128 LOADK                            R8 K43 ["Seed"]
      129 SETTABLEKS                       R8 R7 K23 ["Label"]
      131 LOADK                            R8 K39 ["Number"]
      132 SETTABLEKS                       R8 R7 K24 ["Type"]
      134 GETTABLEKS                       R9 R0 K9 ["PropertyLookup"]
      136 GETTABLEKS                       R8 R9 K43 ["Seed"]
      138 SETTABLEKS                       R8 R7 K25 ["Value"]
      140 LOADN                            R8 255
      141 SETTABLEKS                       R8 R7 K26 ["DefaultValue"]
      143 GETUPVAL                         R10 2
      144 GETTABLEKS                       R9 R10 K40 ["NUMBER_PRECISION"]
      146 GETTABLEKS                       R8 R9 K41 ["Integer"]
      148 SETTABLEKS                       R8 R7 K34 ["Precision"]
      150 LOADK                            R8 K42 [0.05]
      151 SETTABLEKS                       R8 R7 K35 ["Step"]
      153 CALL                             R6 1 1
      154 SETTABLEKS                       R6 R5 K17 ["Property_Seed"]
      156 GETTABLEKS                       R6 R4 K21 ["nextProperty"]
      158 DUPTABLE                         R7 K46 [{"Name", "Label", "Type", "Value", "ExtraProps", "OnChanged"}]
      159 LOADK                            R8 K47 ["DefaultTransition"]
      160 SETTABLEKS                       R8 R7 K22 ["Name"]
      162 LOADK                            R8 K48 ["Default Transition"]
      163 SETTABLEKS                       R8 R7 K23 ["Label"]
      165 LOADK                            R8 K49 ["Transition"]
      166 SETTABLEKS                       R8 R7 K24 ["Type"]
      168 SETTABLEKS                       R2 R7 K25 ["Value"]
      170 DUPTABLE                         R8 K53 [{"TransitionBuilder", "AllowReset", "HideWeight"}]
      171 GETUPVAL                         R9 4
      172 SETTABLEKS                       R9 R8 K50 ["TransitionBuilder"]
      174 LOADB                            R9 0
      175 SETTABLEKS                       R9 R8 K51 ["AllowReset"]
      177 LOADB                            R9 1
      178 SETTABLEKS                       R9 R8 K52 ["HideWeight"]
      180 SETTABLEKS                       R8 R7 K44 ["ExtraProps"]
      182 SETTABLEKS                       R3 R7 K45 ["OnChanged"]
      184 CALL                             R6 1 1
      185 SETTABLEKS                       R6 R5 K18 ["Property_DefaultTransition"]
      187 GETTABLEKS                       R6 R4 K54 ["nextInputPanel"]
      189 DUPTABLE                         R7 K62 [{"InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputReordered"}]
      190 GETUPVAL                         R8 5
      191 SETTABLEKS                       R8 R7 K55 ["InputBuilder"]
      193 DUPTABLE                         R8 K63 [{"DefaultTransition"}]
      194 SETTABLEKS                       R2 R8 K47 ["DefaultTransition"]
      196 SETTABLEKS                       R8 R7 K56 ["InputBuilderProps"]
      198 GETTABLEKS                       R9 R0 K0 ["GraphPayload"]
      200 GETTABLEKS                       R8 R9 K64 ["id"]
      202 SETTABLEKS                       R8 R7 K57 ["NodeId"]
      204 GETTABLEKS                       R8 R1 K65 ["inputs"]
      206 SETTABLEKS                       R8 R7 K58 ["Inputs"]
      208 GETTABLEKS                       R8 R1 K66 ["newInputDefaultValue"]
      210 SETTABLEKS                       R8 R7 K59 ["NewInputDefaultValue"]
      212 GETTABLEKS                       R8 R1 K67 ["onInputChanged"]
      214 SETTABLEKS                       R8 R7 K60 ["OnInputChanged"]
      216 GETTABLEKS                       R8 R1 K68 ["onInputReordered"]
      218 SETTABLEKS                       R8 R7 K61 ["OnInputReordered"]
      220 CALL                             R6 1 1
      221 SETTABLEKS                       R6 R5 K19 ["InputPanel"]
      223 GETUPVAL                         R7 1
      224 GETTABLEKS                       R6 R7 K69 ["createElement"]
      226 GETUPVAL                         R7 6
      227 GETTABLEKS                       R8 R4 K70 ["nodeProps"]
      229 DUPTABLE                         R9 K72 [{"OutputPin"}]
      230 GETTABLEKS                       R10 R4 K73 ["outputPin"]
      232 CALL                             R10 0 1
      233 SETTABLEKS                       R10 R9 K71 ["OutputPin"]
      235 CALL                             R8 1 1
      236 MOVE                             R9 R5
      237 CALL                             R6 3 -1
      238 RETURN                           R6 -1

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
       60 GETTABLEKS                       R7 R8 K18 ["RandomSequenceInput"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R11 R0 K8 ["Components"]
       67 GETTABLEKS                       R10 R11 K9 ["NodeView"]
       69 GETTABLEKS                       R9 R10 K19 ["CompositorNodeTransition"]
       71 GETTABLEKS                       R8 R9 K20 ["RandomSequenceTransition"]
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
