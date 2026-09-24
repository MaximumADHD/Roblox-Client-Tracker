PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openStateMachine"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["GraphPayload"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["ContextServices"]
       10 GETTABLEKS                       R2 R2 K3 ["Localization"]
       12 NAMECALL                         R2 R2 K4 ["use"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 DUPTABLE                         R4 K7 [{"GraphPayload", "Default"}]
       17 GETTABLEKS                       R5 R0 K5 ["GraphPayload"]
       19 SETTABLEKS                       R5 R4 K5 ["GraphPayload"]
       21 NEWTABLE                         R5 0 0
       23 SETTABLEKS                       R5 R4 K6 ["Default"]
       25 CALL                             R3 1 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K8 ["useCallback"]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R6 0 2
       34 GETTABLEKS                       R7 R1 K9 ["openStateMachine"]
       36 GETTABLEKS                       R8 R0 K5 ["GraphPayload"]
       38 GETTABLEKS                       R8 R8 K10 ["id"]
       40 SETLIST                          R6 R7 2 [1]
       42 CALL                             R4 2 1
       43 GETUPVAL                         R5 4
       44 GETTABLEKS                       R5 R5 K11 ["CompositorNodeUtils"]
       46 GETTABLEKS                       R5 R5 K12 ["createPropertyHelpers"]
       48 MOVE                             R6 R0
       49 CALL                             R5 1 1
       50 DUPTABLE                         R6 K16 [{"OpenButton", "Property_State", "InputPanel"}]
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R7 R7 K17 ["createElement"]
       54 GETUPVAL                         R8 5
       55 GETTABLEKS                       R8 R8 K18 ["View"]
       57 DUPTABLE                         R9 K22 [{["tag"] = "row align-x-center size-full-700 auto-y padding-small", ["LayoutOrder"]}]
       58 GETTABLEKS                       R10 R5 K23 ["nextOrder"]
       60 CALL                             R10 0 1
       61 SETTABLEKS                       R10 R9 K21 ["LayoutOrder"]
       63 DUPTABLE                         R10 K25 [{"Button"}]
       64 GETUPVAL                         R11 0
       65 GETTABLEKS                       R11 R11 K17 ["createElement"]
       67 GETUPVAL                         R12 5
       68 GETTABLEKS                       R12 R12 K24 ["Button"]
       70 DUPTABLE                         R13 K31 [{"text", "fillBehavior", "size", "variant", "onActivated"}]
       71 LOADK                            R16 K32 ["Common"]
       72 LOADK                            R17 K33 ["AnimationEditor"]
       73 LOADK                            R18 K34 ["StateMachine"]
       74 LOADK                            R19 K35 ["Open"]
       75 NAMECALL                         R14 R2 K36 ["getExternalText"]
       77 CALL                             R14 5 1
       78 SETTABLEKS                       R14 R13 K26 ["text"]
       80 GETUPVAL                         R14 5
       81 GETTABLEKS                       R14 R14 K37 ["Enums"]
       83 GETTABLEKS                       R14 R14 K38 ["FillBehavior"]
       85 GETTABLEKS                       R14 R14 K39 ["Fill"]
       87 SETTABLEKS                       R14 R13 K27 ["fillBehavior"]
       89 GETUPVAL                         R14 5
       90 GETTABLEKS                       R14 R14 K37 ["Enums"]
       92 GETTABLEKS                       R14 R14 K40 ["InputSize"]
       94 GETTABLEKS                       R14 R14 K41 ["XSmall"]
       96 SETTABLEKS                       R14 R13 K28 ["size"]
       98 GETUPVAL                         R14 5
       99 GETTABLEKS                       R14 R14 K37 ["Enums"]
      101 GETTABLEKS                       R14 R14 K42 ["ButtonVariant"]
      103 GETTABLEKS                       R14 R14 K43 ["Standard"]
      105 SETTABLEKS                       R14 R13 K29 ["variant"]
      107 SETTABLEKS                       R4 R13 K30 ["onActivated"]
      109 CALL                             R11 2 1
      110 SETTABLEKS                       R11 R10 K24 ["Button"]
      112 CALL                             R7 3 1
      113 SETTABLEKS                       R7 R6 K13 ["OpenButton"]
      115 GETTABLEKS                       R7 R5 K44 ["nextProperty"]
      117 DUPTABLE                         R8 K56 [{["Name"] = "State", ["Label"] = "State", ["Type"] = "String", ["Value"], ["DefaultValue"] = "", ["IsDisabled"] = True, ["HidePin"] = True}]
      118 GETTABLEKS                       R10 R0 K57 ["StateLookup"]
      120 GETTABLEKS                       R9 R10 K46 ["State"]
      122 SETTABLEKS                       R9 R8 K50 ["Value"]
      124 CALL                             R7 1 1
      125 SETTABLEKS                       R7 R6 K14 ["Property_State"]
      127 GETTABLEKS                       R7 R3 K58 ["makePropertyChild"]
      129 MOVE                             R8 R0
      130 MOVE                             R9 R5
      131 DUPTABLE                         R10 K63 [{["inputBuilder"], ["inputBuilderProps"], ["allowAddInput"] = False}]
      132 GETUPVAL                         R11 6
      133 SETTABLEKS                       R11 R10 K59 ["inputBuilder"]
      135 NEWTABLE                         R11 0 0
      137 SETTABLEKS                       R11 R10 K60 ["inputBuilderProps"]
      139 CALL                             R7 3 1
      140 SETTABLEKS                       R7 R6 K15 ["InputPanel"]
      142 GETUPVAL                         R7 0
      143 GETTABLEKS                       R7 R7 K17 ["createElement"]
      145 GETUPVAL                         R8 4
      146 GETTABLEKS                       R8 R8 K64 ["CompositorNode"]
      148 GETTABLEKS                       R9 R5 K65 ["nodeProps"]
      150 DUPTABLE                         R10 K68 [{"ContextToolbar", "OutputPin"}]
      151 GETTABLEKS                       R11 R5 K69 ["spotlightButton"]
      153 CALL                             R11 0 1
      154 SETTABLEKS                       R11 R10 K66 ["ContextToolbar"]
      156 GETTABLEKS                       R11 R5 K70 ["outputPin"]
      158 CALL                             R11 0 1
      159 SETTABLEKS                       R11 R10 K67 ["OutputPin"]
      161 CALL                             R9 1 1
      162 MOVE                             R10 R6
      163 CALL                             R7 3 -1
      164 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["NodeGraphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K11 ["StateMachineGraphing"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Components"]
       46 GETTABLEKS                       R7 R7 K13 ["NodeView"]
       48 GETTABLEKS                       R7 R7 K14 ["CompositorNodeInput"]
       50 GETTABLEKS                       R7 R7 K15 ["PoseStateMachineInput"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K12 ["Components"]
       57 GETTABLEKS                       R8 R8 K13 ["NodeView"]
       59 GETTABLEKS                       R8 R8 K16 ["CompositorNodes"]
       61 GETTABLEKS                       R8 R8 K17 ["useInputPanelHelper"]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R8 R5 K18 ["NavContext"]
       66 DUPCLOSURE                       R9 K19 [PROTO_1]
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R6
       74 RETURN                           R9 1
