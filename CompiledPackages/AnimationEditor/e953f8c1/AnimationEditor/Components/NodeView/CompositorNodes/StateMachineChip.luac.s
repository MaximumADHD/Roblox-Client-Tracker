PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createElement"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K1 ["View"]
        6 DUPTABLE                         R6 K5 [{["tag"] = "row auto-y size-full-700 align-y-center flex-x-between padding-x-small", ["LayoutOrder"]}]
        7 SETTABLEKS                       R0 R6 K4 ["LayoutOrder"]
        9 DUPTABLE                         R7 K8 [{"Label", "PinChildren"}]
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R8 R8 K0 ["createElement"]
       13 GETUPVAL                         R9 1
       14 GETTABLEKS                       R9 R9 K9 ["Text"]
       16 DUPTABLE                         R10 K12 [{["tag"] = "fill auto-y text-body-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"] = 1}]
       17 SETTABLEKS                       R1 R10 K9 ["Text"]
       19 CALL                             R8 2 1
       20 SETTABLEKS                       R8 R7 K6 ["Label"]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K0 ["createElement"]
       25 LOADK                            R9 K13 ["Folder"]
       26 NEWTABLE                         R10 0 0
       28 DUPTABLE                         R11 K15 [{"Pin"}]
       29 GETUPVAL                         R12 0
       30 GETTABLEKS                       R12 R12 K0 ["createElement"]
       32 GETUPVAL                         R13 2
       33 GETTABLEKS                       R13 R13 K16 ["RenderedCompositorPin"]
       35 DUPTABLE                         R14 K25 [{["Position"], ["pinSide"] = "Output", ["pinDataType"], ["pinName"], ["pinNodeId"], ["pinValue"] = }]
       36 GETIMPORT                        R15 K28 [UDim2.new]
       38 LOADN                            R16 1
       39 LOADN                            R17 14
       40 LOADK                            R18 K29 [0.5]
       41 LOADN                            R19 0
       42 CALL                             R15 4 1
       43 SETTABLEKS                       R15 R14 K17 ["Position"]
       45 GETUPVAL                         R15 2
       46 GETTABLEKS                       R15 R15 K30 ["PARAMETER_NODE_CLASSNAME"]
       48 SETTABLEKS                       R15 R14 K20 ["pinDataType"]
       50 SETTABLEKS                       R2 R14 K21 ["pinName"]
       52 SETTABLEKS                       R3 R14 K22 ["pinNodeId"]
       54 CALL                             R12 2 1
       55 SETTABLEKS                       R12 R11 K14 ["Pin"]
       57 CALL                             R8 3 1
       58 SETTABLEKS                       R8 R7 K7 ["PinChildren"]
       60 CALL                             R4 3 -1
       61 RETURN                           R4 -1

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
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K3 ["decode"]
       12 JUMPIFNOT                        R0 ; [+3]
       13 GETTABLEKS                       R2 R0 K4 ["data"]
       15 JUMP                             ; [+1]
       16 LOADNIL                          R2
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R1 R1 K5 ["currentState"]
       20 RETURN                           R1 1

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
       37 CAPTURE                          UPVAL U3
       38 NEWTABLE                         R6 0 2
       40 GETTABLEKS                       R7 R2 K7 ["stateMachines"]
       42 GETTABLEKS                       R8 R0 K4 ["GraphPayload"]
       44 GETTABLEKS                       R8 R8 K5 ["id"]
       46 SETLIST                          R6 R7 2 [1]
       48 CALL                             R4 2 1
       49 GETIMPORT                        R5 K10 [table.clone]
       51 MOVE                             R6 R0
       52 CALL                             R5 1 1
       53 LOADB                            R6 1
       54 SETTABLEKS                       R6 R5 K11 ["IsParameterNode"]
       56 GETUPVAL                         R6 4
       57 GETTABLEKS                       R6 R6 K12 ["CompositorNodeUtils"]
       59 GETTABLEKS                       R6 R6 K13 ["createPropertyHelpers"]
       61 MOVE                             R7 R5
       62 CALL                             R6 1 1
       63 DUPTABLE                         R7 K18 [{"OpenButton", "Output_State", "Output_Transition", "Property_CurrentState"}]
       64 GETUPVAL                         R8 0
       65 GETTABLEKS                       R8 R8 K19 ["createElement"]
       67 GETUPVAL                         R9 5
       68 GETTABLEKS                       R9 R9 K20 ["View"]
       70 DUPTABLE                         R10 K24 [{["tag"] = "row align-x-center size-full-700 auto-y padding-small", ["LayoutOrder"]}]
       71 GETTABLEKS                       R11 R6 K25 ["nextOrder"]
       73 CALL                             R11 0 1
       74 SETTABLEKS                       R11 R10 K23 ["LayoutOrder"]
       76 DUPTABLE                         R11 K27 [{"Button"}]
       77 GETUPVAL                         R12 0
       78 GETTABLEKS                       R12 R12 K19 ["createElement"]
       80 GETUPVAL                         R13 5
       81 GETTABLEKS                       R13 R13 K26 ["Button"]
       83 DUPTABLE                         R14 K34 [{["tag"] = "auto-xy", ["text"] = "Open State Machine", ["size"], ["variant"], ["onActivated"]}]
       84 GETUPVAL                         R15 5
       85 GETTABLEKS                       R15 R15 K35 ["Enums"]
       87 GETTABLEKS                       R15 R15 K36 ["InputSize"]
       89 GETTABLEKS                       R15 R15 K37 ["XSmall"]
       91 SETTABLEKS                       R15 R14 K31 ["size"]
       93 GETUPVAL                         R15 5
       94 GETTABLEKS                       R15 R15 K35 ["Enums"]
       96 GETTABLEKS                       R15 R15 K38 ["ButtonVariant"]
       98 GETTABLEKS                       R15 R15 K39 ["Standard"]
      100 SETTABLEKS                       R15 R14 K32 ["variant"]
      102 SETTABLEKS                       R3 R14 K33 ["onActivated"]
      104 CALL                             R12 2 1
      105 SETTABLEKS                       R12 R11 K26 ["Button"]
      107 CALL                             R8 3 1
      108 SETTABLEKS                       R8 R7 K14 ["OpenButton"]
      110 GETUPVAL                         R8 6
      111 GETTABLEKS                       R9 R6 K25 ["nextOrder"]
      113 CALL                             R9 0 1
      114 LOADK                            R10 K40 ["State"]
      115 LOADK                            R11 K40 ["State"]
      116 GETTABLEKS                       R12 R0 K4 ["GraphPayload"]
      118 GETTABLEKS                       R12 R12 K5 ["id"]
      120 CALL                             R8 4 1
      121 SETTABLEKS                       R8 R7 K15 ["Output_State"]
      123 GETUPVAL                         R8 6
      124 GETTABLEKS                       R9 R6 K25 ["nextOrder"]
      126 CALL                             R9 0 1
      127 LOADK                            R10 K41 ["Transition Info"]
      128 LOADK                            R11 K42 ["TransitionInfo"]
      129 GETTABLEKS                       R12 R0 K4 ["GraphPayload"]
      131 GETTABLEKS                       R12 R12 K5 ["id"]
      133 CALL                             R8 4 1
      134 SETTABLEKS                       R8 R7 K16 ["Output_Transition"]
      136 GETTABLEKS                       R8 R6 K43 ["nextProperty"]
      138 DUPTABLE                         R9 K56 [{["Name"] = "CurrentState", ["Label"] = "Current State", ["Type"] = "String", ["Value"], ["DefaultValue"] = "", ["IsDisabled"] = True, ["HidePin"] = True}]
      139 SETTABLEKS                       R4 R9 K50 ["Value"]
      141 CALL                             R8 1 1
      142 SETTABLEKS                       R8 R7 K17 ["Property_CurrentState"]
      144 GETUPVAL                         R8 0
      145 GETTABLEKS                       R8 R8 K19 ["createElement"]
      147 GETUPVAL                         R9 4
      148 GETTABLEKS                       R9 R9 K57 ["CompositorNode"]
      150 GETTABLEKS                       R10 R6 K58 ["nodeProps"]
      152 DUPTABLE                         R11 K61 [{["OutputPin"] = }]
      153 CALL                             R10 1 1
      154 MOVE                             R11 R7
      155 CALL                             R8 3 -1
      156 RETURN                           R8 -1

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
       42 GETTABLEKS                       R6 R5 K13 ["Data"]
       44 GETTABLEKS                       R7 R5 K14 ["NavContext"]
       46 DUPCLOSURE                       R8 K15 [PROTO_0]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 DUPCLOSURE                       R9 K16 [PROTO_3]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R8
       58 RETURN                           R9 1
