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
        1 GETTABLEKS                       R1 R1 K0 ["renameStateMachineAsync"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["GraphPayload"]
        6 GETTABLEKS                       R2 R2 K2 ["id"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_4:
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
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K2 ["ContextServices"]
       17 GETTABLEKS                       R3 R3 K3 ["Localization"]
       19 NAMECALL                         R3 R3 K4 ["use"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R0
       28 NEWTABLE                         R6 0 2
       30 GETTABLEKS                       R7 R1 K6 ["openStateMachine"]
       32 GETTABLEKS                       R8 R0 K7 ["GraphPayload"]
       34 GETTABLEKS                       R8 R8 K8 ["id"]
       36 SETLIST                          R6 R7 2 [1]
       38 CALL                             R4 2 1
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K9 ["useMemo"]
       42 NEWCLOSURE                       R6 P1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R0
       45 NEWTABLE                         R7 0 2
       47 GETTABLEKS                       R8 R2 K10 ["stateMachines"]
       49 GETTABLEKS                       R9 R0 K7 ["GraphPayload"]
       51 GETTABLEKS                       R9 R9 K8 ["id"]
       53 SETLIST                          R7 R8 2 [1]
       55 CALL                             R5 2 1
       56 GETIMPORT                        R6 K13 [table.clone]
       58 MOVE                             R7 R0
       59 CALL                             R6 1 1
       60 LOADB                            R7 1
       61 SETTABLEKS                       R7 R6 K14 ["IsParameterNode"]
       63 GETUPVAL                         R7 4
       64 GETTABLEKS                       R7 R7 K15 ["NodeType"]
       66 GETTABLEKS                       R7 R7 K16 ["StateMachine"]
       68 SETTABLEKS                       R7 R6 K15 ["NodeType"]
       70 NEWCLOSURE                       R7 P2
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R7 R6 K17 ["onRename"]
       75 GETUPVAL                         R7 4
       76 GETTABLEKS                       R7 R7 K18 ["CompositorNodeUtils"]
       78 GETTABLEKS                       R7 R7 K19 ["createPropertyHelpers"]
       80 MOVE                             R8 R6
       81 CALL                             R7 1 1
       82 DUPTABLE                         R8 K24 [{"OpenButton", "Output_State", "Output_Transition", "Property_CurrentState"}]
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R9 R9 K25 ["createElement"]
       86 GETUPVAL                         R10 5
       87 GETTABLEKS                       R10 R10 K26 ["View"]
       89 DUPTABLE                         R11 K30 [{["tag"] = "row align-x-center size-full-700 auto-y padding-small", ["LayoutOrder"]}]
       90 GETTABLEKS                       R12 R7 K31 ["nextOrder"]
       92 CALL                             R12 0 1
       93 SETTABLEKS                       R12 R11 K29 ["LayoutOrder"]
       95 DUPTABLE                         R12 K33 [{"Button"}]
       96 GETUPVAL                         R13 0
       97 GETTABLEKS                       R13 R13 K25 ["createElement"]
       99 GETUPVAL                         R14 5
      100 GETTABLEKS                       R14 R14 K32 ["Button"]
      102 DUPTABLE                         R15 K39 [{"text", "fillBehavior", "size", "variant", "onActivated"}]
      103 LOADK                            R18 K40 ["Common"]
      104 LOADK                            R19 K41 ["AnimationEditor"]
      105 LOADK                            R20 K16 ["StateMachine"]
      106 LOADK                            R21 K42 ["Open"]
      107 NAMECALL                         R16 R3 K43 ["getExternalText"]
      109 CALL                             R16 5 1
      110 SETTABLEKS                       R16 R15 K34 ["text"]
      112 GETUPVAL                         R16 5
      113 GETTABLEKS                       R16 R16 K44 ["Enums"]
      115 GETTABLEKS                       R16 R16 K45 ["FillBehavior"]
      117 GETTABLEKS                       R16 R16 K46 ["Fill"]
      119 SETTABLEKS                       R16 R15 K35 ["fillBehavior"]
      121 GETUPVAL                         R16 5
      122 GETTABLEKS                       R16 R16 K44 ["Enums"]
      124 GETTABLEKS                       R16 R16 K47 ["InputSize"]
      126 GETTABLEKS                       R16 R16 K48 ["XSmall"]
      128 SETTABLEKS                       R16 R15 K36 ["size"]
      130 GETUPVAL                         R16 5
      131 GETTABLEKS                       R16 R16 K44 ["Enums"]
      133 GETTABLEKS                       R16 R16 K49 ["ButtonVariant"]
      135 GETTABLEKS                       R16 R16 K50 ["Standard"]
      137 SETTABLEKS                       R16 R15 K37 ["variant"]
      139 SETTABLEKS                       R4 R15 K38 ["onActivated"]
      141 CALL                             R13 2 1
      142 SETTABLEKS                       R13 R12 K32 ["Button"]
      144 CALL                             R9 3 1
      145 SETTABLEKS                       R9 R8 K20 ["OpenButton"]
      147 GETUPVAL                         R9 6
      148 GETTABLEKS                       R10 R7 K31 ["nextOrder"]
      150 CALL                             R10 0 1
      151 LOADK                            R11 K51 ["State"]
      152 LOADK                            R12 K51 ["State"]
      153 GETTABLEKS                       R13 R0 K7 ["GraphPayload"]
      155 GETTABLEKS                       R13 R13 K8 ["id"]
      157 CALL                             R9 4 1
      158 SETTABLEKS                       R9 R8 K21 ["Output_State"]
      160 GETUPVAL                         R9 6
      161 GETTABLEKS                       R10 R7 K31 ["nextOrder"]
      163 CALL                             R10 0 1
      164 LOADK                            R11 K52 ["Transition Info"]
      165 LOADK                            R12 K53 ["TransitionInfo"]
      166 GETTABLEKS                       R13 R0 K7 ["GraphPayload"]
      168 GETTABLEKS                       R13 R13 K8 ["id"]
      170 CALL                             R9 4 1
      171 SETTABLEKS                       R9 R8 K22 ["Output_Transition"]
      173 GETTABLEKS                       R9 R7 K54 ["nextProperty"]
      175 DUPTABLE                         R10 K67 [{["Name"] = "CurrentState", ["Label"] = "Current State", ["Type"] = "String", ["Value"], ["DefaultValue"] = "", ["IsDisabled"] = True, ["HidePin"] = True}]
      176 SETTABLEKS                       R5 R10 K61 ["Value"]
      178 CALL                             R9 1 1
      179 SETTABLEKS                       R9 R8 K23 ["Property_CurrentState"]
      181 GETUPVAL                         R9 0
      182 GETTABLEKS                       R9 R9 K25 ["createElement"]
      184 GETUPVAL                         R10 4
      185 GETTABLEKS                       R10 R10 K68 ["CompositorNode"]
      187 GETTABLEKS                       R11 R7 K69 ["nodeProps"]
      189 DUPTABLE                         R12 K72 [{["OutputPin"] = }]
      190 CALL                             R11 1 1
      191 MOVE                             R12 R8
      192 CALL                             R9 3 -1
      193 RETURN                           R9 -1

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
       37 GETTABLEKS                       R6 R0 K11 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K12 ["StateMachineEditorContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R7 K13 ["StateMachineGraphing"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R6 K14 ["NavContext"]
       51 GETTABLEKS                       R8 R3 K15 ["getFFlagAnimGraphUIPinOffset"]
       53 GETIMPORT                        R9 K5 [require]
       55 GETTABLEKS                       R10 R0 K16 ["Flags"]
       57 GETTABLEKS                       R10 R10 K17 ["getFFlagAnimGraphUI_FixStateMachineChipPins"]
       59 CALL                             R9 1 1
       60 DUPCLOSURE                       R10 K18 [PROTO_0]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R8
       66 DUPCLOSURE                       R11 K19 [PROTO_4]
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R10
       74 RETURN                           R11 1
