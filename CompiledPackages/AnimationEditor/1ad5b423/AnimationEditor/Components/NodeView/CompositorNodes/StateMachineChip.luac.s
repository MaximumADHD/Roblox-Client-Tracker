PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createElement"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K1 ["View"]
        6 DUPTABLE                         R6 K4 [{"tag", "LayoutOrder"}]
        7 NEWTABLE                         R7 4 0
        9 LOADB                            R8 1
       10 SETTABLEKS                       R8 R7 K5 ["row auto-y size-full-700 align-y-center flex-x-between"]
       12 GETUPVAL                         R8 2
       13 CALL                             R8 0 1
       14 SETTABLEKS                       R8 R7 K6 ["padding-left-small padding-right-xxsmall"]
       16 GETUPVAL                         R9 2
       17 CALL                             R9 0 1
       18 NOT                              R8 R9
       19 SETTABLEKS                       R8 R7 K7 ["padding-x-small"]
       21 SETTABLEKS                       R7 R6 K2 ["tag"]
       23 SETTABLEKS                       R0 R6 K3 ["LayoutOrder"]
       25 DUPTABLE                         R7 K10 [{"Label", "PinChildren"}]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K0 ["createElement"]
       29 GETUPVAL                         R9 1
       30 GETTABLEKS                       R9 R9 K11 ["Text"]
       32 DUPTABLE                         R10 K14 [{["tag"] = "fill auto-y text-body-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"] = 1}]
       33 SETTABLEKS                       R1 R10 K11 ["Text"]
       35 CALL                             R8 2 1
       36 SETTABLEKS                       R8 R7 K8 ["Label"]
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R8 R8 K0 ["createElement"]
       41 LOADK                            R9 K15 ["Folder"]
       42 NEWTABLE                         R10 0 0
       44 DUPTABLE                         R11 K17 [{"Pin"}]
       45 GETUPVAL                         R12 0
       46 GETTABLEKS                       R12 R12 K0 ["createElement"]
       48 GETUPVAL                         R13 3
       49 GETTABLEKS                       R13 R13 K18 ["RenderedCompositorPin"]
       51 DUPTABLE                         R14 K27 [{["Position"], ["pinSide"] = "Output", ["pinDataType"], ["pinName"], ["pinNodeId"], ["pinValue"] = }]
       52 GETUPVAL                         R16 2
       53 CALL                             R16 0 1
       54 JUMPIFNOT                        R16 ; [+13]
       55 GETIMPORT                        R15 K30 [UDim2.new]
       57 LOADN                            R16 1
       58 GETUPVAL                         R18 4
       59 CALL                             R18 0 1
       60 JUMPIFNOT                        R18 ; [+2]
       61 LOADN                            R17 13
       62 JUMP                             ; [+1]
       63 LOADN                            R17 1
       64 LOADK                            R18 K31 [0.5]
       65 LOADN                            R19 0
       66 CALL                             R15 4 1
       67 JUMP                             ; [+7]
       68 GETIMPORT                        R15 K30 [UDim2.new]
       70 LOADN                            R16 1
       71 LOADN                            R17 14
       72 LOADK                            R18 K31 [0.5]
       73 LOADN                            R19 0
       74 CALL                             R15 4 1
       75 SETTABLEKS                       R15 R14 K19 ["Position"]
       77 GETUPVAL                         R15 3
       78 GETTABLEKS                       R15 R15 K32 ["PARAMETER_NODE_CLASSNAME"]
       80 SETTABLEKS                       R15 R14 K22 ["pinDataType"]
       82 SETTABLEKS                       R2 R14 K23 ["pinName"]
       84 SETTABLEKS                       R3 R14 K24 ["pinNodeId"]
       86 CALL                             R12 2 1
       87 SETTABLEKS                       R12 R11 K16 ["Pin"]
       89 CALL                             R8 3 1
       90 SETTABLEKS                       R8 R7 K9 ["PinChildren"]
       92 CALL                             R4 3 -1
       93 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openStateMachine"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["GraphPayload"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["stateMachines"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["GraphPayload"]
        6 GETTABLEKS                       R2 R2 K2 ["id"]
        8 GETTABLE                         R0 R1 R2
        9 JUMPIFNOT                        R0 ; [+5]
       10 GETTABLEKS                       R1 R0 K3 ["data"]
       12 GETTABLEKS                       R1 R1 K4 ["currentState"]
       14 RETURN                           R1 1
       15 LOADNIL                          R1
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R5 0 2
       22 GETTABLEKS                       R6 R1 K3 ["openStateMachine"]
       24 GETTABLEKS                       R7 R0 K4 ["GraphPayload"]
       26 GETTABLEKS                       R7 R7 K5 ["id"]
       28 SETLIST                          R5 R6 2 [1]
       30 CALL                             R3 2 1
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K6 ["useMemo"]
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R0
       37 NEWTABLE                         R6 0 2
       39 GETTABLEKS                       R7 R2 K7 ["stateMachines"]
       41 GETTABLEKS                       R8 R0 K4 ["GraphPayload"]
       43 GETTABLEKS                       R8 R8 K5 ["id"]
       45 SETLIST                          R6 R7 2 [1]
       47 CALL                             R4 2 1
       48 GETIMPORT                        R5 K10 [table.clone]
       50 MOVE                             R6 R0
       51 CALL                             R5 1 1
       52 LOADB                            R6 1
       53 SETTABLEKS                       R6 R5 K11 ["IsParameterNode"]
       55 GETUPVAL                         R6 3
       56 GETTABLEKS                       R6 R6 K12 ["CompositorNodeUtils"]
       58 GETTABLEKS                       R6 R6 K13 ["createPropertyHelpers"]
       60 MOVE                             R7 R5
       61 CALL                             R6 1 1
       62 DUPTABLE                         R7 K18 [{"OpenButton", "Output_State", "Output_Transition", "Property_CurrentState"}]
       63 GETUPVAL                         R8 0
       64 GETTABLEKS                       R8 R8 K19 ["createElement"]
       66 GETUPVAL                         R9 4
       67 GETTABLEKS                       R9 R9 K20 ["View"]
       69 DUPTABLE                         R10 K24 [{["tag"] = "row align-x-center size-full-700 auto-y padding-small", ["LayoutOrder"]}]
       70 GETTABLEKS                       R11 R6 K25 ["nextOrder"]
       72 CALL                             R11 0 1
       73 SETTABLEKS                       R11 R10 K23 ["LayoutOrder"]
       75 DUPTABLE                         R11 K27 [{"Button"}]
       76 GETUPVAL                         R12 0
       77 GETTABLEKS                       R12 R12 K19 ["createElement"]
       79 GETUPVAL                         R13 4
       80 GETTABLEKS                       R13 R13 K26 ["Button"]
       82 DUPTABLE                         R14 K34 [{["tag"] = "auto-xy", ["text"] = "Open State Machine", ["size"], ["variant"], ["onActivated"]}]
       83 GETUPVAL                         R15 4
       84 GETTABLEKS                       R15 R15 K35 ["Enums"]
       86 GETTABLEKS                       R15 R15 K36 ["InputSize"]
       88 GETTABLEKS                       R15 R15 K37 ["XSmall"]
       90 SETTABLEKS                       R15 R14 K31 ["size"]
       92 GETUPVAL                         R15 4
       93 GETTABLEKS                       R15 R15 K35 ["Enums"]
       95 GETTABLEKS                       R15 R15 K38 ["ButtonVariant"]
       97 GETTABLEKS                       R15 R15 K39 ["Standard"]
       99 SETTABLEKS                       R15 R14 K32 ["variant"]
      101 SETTABLEKS                       R3 R14 K33 ["onActivated"]
      103 CALL                             R12 2 1
      104 SETTABLEKS                       R12 R11 K26 ["Button"]
      106 CALL                             R8 3 1
      107 SETTABLEKS                       R8 R7 K14 ["OpenButton"]
      109 GETUPVAL                         R8 5
      110 GETTABLEKS                       R9 R6 K25 ["nextOrder"]
      112 CALL                             R9 0 1
      113 LOADK                            R10 K40 ["State"]
      114 LOADK                            R11 K40 ["State"]
      115 GETTABLEKS                       R12 R0 K4 ["GraphPayload"]
      117 GETTABLEKS                       R12 R12 K5 ["id"]
      119 CALL                             R8 4 1
      120 SETTABLEKS                       R8 R7 K15 ["Output_State"]
      122 GETUPVAL                         R8 5
      123 GETTABLEKS                       R9 R6 K25 ["nextOrder"]
      125 CALL                             R9 0 1
      126 LOADK                            R10 K41 ["Transition Info"]
      127 LOADK                            R11 K42 ["TransitionInfo"]
      128 GETTABLEKS                       R12 R0 K4 ["GraphPayload"]
      130 GETTABLEKS                       R12 R12 K5 ["id"]
      132 CALL                             R8 4 1
      133 SETTABLEKS                       R8 R7 K16 ["Output_Transition"]
      135 GETTABLEKS                       R8 R6 K43 ["nextProperty"]
      137 DUPTABLE                         R9 K56 [{["Name"] = "CurrentState", ["Label"] = "Current State", ["Type"] = "String", ["Value"], ["DefaultValue"] = "", ["IsDisabled"] = True, ["HidePin"] = True}]
      138 SETTABLEKS                       R4 R9 K50 ["Value"]
      140 CALL                             R8 1 1
      141 SETTABLEKS                       R8 R7 K17 ["Property_CurrentState"]
      143 GETUPVAL                         R8 0
      144 GETTABLEKS                       R8 R8 K19 ["createElement"]
      146 GETUPVAL                         R9 3
      147 GETTABLEKS                       R9 R9 K57 ["CompositorNode"]
      149 GETTABLEKS                       R10 R6 K58 ["nodeProps"]
      151 DUPTABLE                         R11 K61 [{["OutputPin"] = }]
      152 CALL                             R10 1 1
      153 MOVE                             R11 R7
      154 CALL                             R8 3 -1
      155 RETURN                           R8 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["NodeGraphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K11 ["StateMachineEditorContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["StateMachineGraphing"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K13 ["NavContext"]
       44 GETTABLEKS                       R7 R2 K14 ["getFFlagAnimGraphUIPinOffset"]
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R9 R0 K15 ["Flags"]
       50 GETTABLEKS                       R9 R9 K16 ["getFFlagAnimGraphUI_FixStateMachineChipPins"]
       52 CALL                             R8 1 1
       53 DUPCLOSURE                       R9 K17 [PROTO_0]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R7
       59 DUPCLOSURE                       R10 K18 [PROTO_3]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R9
       66 RETURN                           R10 1
