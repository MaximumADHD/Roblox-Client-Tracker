PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["graphItems"]
        8 LOADNIL                          R1
        9 LOADNIL                          R2
       10 FORGPREP                         R0
       11 GETTABLEKS                       R5 R4 K1 ["id"]
       13 GETUPVAL                         R6 0
       14 JUMPIFNOTEQ                      R5 R6 ; [+4]
       16 GETTABLEKS                       R5 R4 K2 ["text"]
       18 RETURN                           R5 1
       19 FORGLOOP                         R0 2 ; [-9]
       21 LOADNIL                          R0
       22 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+20]
        4 GETUPVAL                         R1 0
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K0 ["className"]
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R7 R7 K1 ["PARAMETER_NODE_CLASSNAME"]
       13 JUMPIFNOTEQ                      R6 R7 ; [+8]
       15 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       17 MOVE                             R7 R0
       18 MOVE                             R8 R5
       19 GETIMPORT                        R6 K4 [table.insert]
       21 CALL                             R6 2 0
       22 FORGLOOP                         R1 2 ; [-15]
       24 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["data"]
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["getDefault"]
        9 CALL                             R0 0 1
       10 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createStateAsync"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["deleteStatesAsync"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["moveStatesAsync"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["renameStateAsync"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createTransitionAsync"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createStateAndTransitionAsync"]
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 MOVE                             R7 R2
        7 CALL                             R3 4 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["deleteTransitionAsync"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["setTransitionFieldAsync"]
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 MOVE                             R7 R2
        7 CALL                             R3 4 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["nodeId"]
        3 DUPTABLE                         R1 K10 [{"observeData", "createState", "deleteStates", "moveStates", "renameState", "createTransition", "createStateAndTransition", "deleteTransition", "setTransitionField"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["observeData"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R2 R1 K2 ["createState"]
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R1 K3 ["deleteStates"]
       17 NEWCLOSURE                       R2 P2
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R1 K4 ["moveStates"]
       22 NEWCLOSURE                       R2 P3
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R2 R1 K5 ["renameState"]
       27 NEWCLOSURE                       R2 P4
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R2 R1 K6 ["createTransition"]
       32 NEWCLOSURE                       R2 P5
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R2 R1 K7 ["createStateAndTransition"]
       37 NEWCLOSURE                       R2 P6
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R2 R1 K8 ["deleteTransition"]
       42 NEWCLOSURE                       R2 P7
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R2 R1 K9 ["setTransitionField"]
       47 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+8]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["useContext"]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K1 ["Context"]
       16 CALL                             R2 1 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K0 ["useContext"]
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K1 ["Context"]
       25 CALL                             R3 1 1
       26 GETUPVAL                         R5 2
       27 CALL                             R5 0 1
       28 JUMPIFNOT                        R5 ; [+7]
       29 GETUPVAL                         R4 5
       30 GETTABLEKS                       R4 R4 K2 ["useSignalState"]
       32 GETTABLEKS                       R5 R2 K3 ["observeSelectedGraphInstanceId"]
       34 CALL                             R4 1 1
       35 JUMP                             ; [+2]
       36 GETTABLEKS                       R4 R3 K4 ["selectedGraphId_DEPRECATED"]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       41 NEWCLOSURE                       R6 P0
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 NEWTABLE                         R7 0 2
       46 GETTABLEKS                       R8 R3 K6 ["graphItems"]
       48 MOVE                             R9 R4
       49 SETLIST                          R7 R8 2 [1]
       51 CALL                             R5 2 1
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R6 R6 K0 ["useContext"]
       55 GETUPVAL                         R7 6
       56 GETTABLEKS                       R7 R7 K7 ["GraphContext"]
       58 GETTABLEKS                       R7 R7 K1 ["Context"]
       60 CALL                             R6 1 1
       61 GETUPVAL                         R7 5
       62 GETTABLEKS                       R7 R7 K2 ["useSignalState"]
       64 GETTABLEKS                       R8 R6 K8 ["nodePayloadDispatcher"]
       66 GETTABLEKS                       R8 R8 K9 ["observeMap"]
       68 CALL                             R7 1 1
       69 GETUPVAL                         R8 0
       70 GETTABLEKS                       R8 R8 K5 ["useMemo"]
       72 NEWCLOSURE                       R9 P1
       73 CAPTURE                          VAL R7
       74 CAPTURE                          UPVAL U6
       75 NEWTABLE                         R10 0 1
       77 MOVE                             R11 R7
       78 SETLIST                          R10 R11 1 [1]
       80 CALL                             R8 2 1
       81 GETTABLEKS                       R10 R1 K10 ["stateMachines"]
       83 GETTABLEKS                       R11 R0 K11 ["nodeId"]
       85 GETTABLE                         R9 R10 R11
       86 GETUPVAL                         R10 0
       87 GETTABLEKS                       R10 R10 K5 ["useMemo"]
       89 NEWCLOSURE                       R11 P2
       90 CAPTURE                          VAL R9
       91 CAPTURE                          UPVAL U7
       92 NEWTABLE                         R12 0 1
       94 MOVE                             R13 R9
       95 SETLIST                          R12 R13 1 [1]
       97 CALL                             R10 2 1
       98 GETUPVAL                         R11 0
       99 GETTABLEKS                       R11 R11 K5 ["useMemo"]
      101 NEWCLOSURE                       R12 P3
      102 CAPTURE                          UPVAL U8
      103 CAPTURE                          VAL R10
      104 NEWTABLE                         R13 0 0
      106 CALL                             R11 2 2
      107 GETUPVAL                         R13 0
      108 GETTABLEKS                       R13 R13 K12 ["useEffect"]
      110 NEWCLOSURE                       R14 P4
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R10
      113 NEWTABLE                         R15 0 2
      115 MOVE                             R16 R10
      116 MOVE                             R17 R12
      117 SETLIST                          R15 R16 2 [1]
      119 CALL                             R13 2 0
      120 GETUPVAL                         R13 0
      121 GETTABLEKS                       R13 R13 K5 ["useMemo"]
      123 NEWCLOSURE                       R14 P5
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R1
      127 NEWTABLE                         R15 0 3
      129 MOVE                             R16 R11
      130 MOVE                             R17 R1
      131 GETTABLEKS                       R18 R0 K11 ["nodeId"]
      133 SETLIST                          R15 R16 3 [1]
      135 CALL                             R13 2 1
      136 GETUPVAL                         R14 0
      137 GETTABLEKS                       R14 R14 K13 ["createElement"]
      139 GETUPVAL                         R15 9
      140 GETTABLEKS                       R15 R15 K14 ["DataContext"]
      142 GETTABLEKS                       R15 R15 K1 ["Context"]
      144 GETTABLEKS                       R15 R15 K15 ["Provider"]
      146 DUPTABLE                         R16 K17 [{"value"}]
      147 SETTABLEKS                       R13 R16 K16 ["value"]
      149 GETUPVAL                         R17 0
      150 GETTABLEKS                       R17 R17 K13 ["createElement"]
      152 GETUPVAL                         R18 9
      153 GETTABLEKS                       R18 R18 K18 ["EditorView"]
      155 DUPTABLE                         R19 K21 [{"parameters", "backLabel"}]
      156 SETTABLEKS                       R8 R19 K19 ["parameters"]
      158 SETTABLEKS                       R5 R19 K20 ["backLabel"]
      160 DUPTABLE                         R20 K24 [{"StudioActionOverrides", "Forwarded"}]
      161 GETUPVAL                         R21 0
      162 GETTABLEKS                       R21 R21 K13 ["createElement"]
      164 GETUPVAL                         R22 10
      165 DUPTABLE                         R23 K26 [{"pluginGui"}]
      166 GETTABLEKS                       R24 R0 K25 ["pluginGui"]
      168 SETTABLEKS                       R24 R23 K25 ["pluginGui"]
      170 CALL                             R21 2 1
      171 SETTABLEKS                       R21 R20 K22 ["StudioActionOverrides"]
      173 GETUPVAL                         R21 0
      174 GETTABLEKS                       R21 R21 K13 ["createElement"]
      176 GETUPVAL                         R22 0
      177 GETTABLEKS                       R22 R22 K27 ["Fragment"]
      179 LOADNIL                          R23
      180 GETTABLEKS                       R24 R0 K28 ["children"]
      182 CALL                             R21 3 1
      183 SETTABLEKS                       R21 R20 K23 ["Forwarded"]
      185 CALL                             R17 3 -1
      186 CALL                             R14 -1 -1
      187 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["GraphDropdownContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["NodeGraphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K11 ["SelectedGraphContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["Signals"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K8 ["Parent"]
       46 GETTABLEKS                       R7 R7 K13 ["SignalsReact"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Contexts"]
       53 GETTABLEKS                       R8 R8 K14 ["StateMachineEditorContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K8 ["Parent"]
       60 GETTABLEKS                       R9 R9 K15 ["StateMachineGraphing"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K16 ["Components"]
       67 GETTABLEKS                       R10 R10 K17 ["NodeView"]
       69 GETTABLEKS                       R10 R10 K18 ["StateMachine"]
       71 GETTABLEKS                       R10 R10 K19 ["StateMachineStudioActionOverrides"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K20 ["Flags"]
       78 GETTABLEKS                       R11 R11 K21 ["getFFlagAnimGraphUI_RunTimeDebug"]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R11 R8 K22 ["Data"]
       83 DUPCLOSURE                       R12 K23 [PROTO_14]
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R9
       95 RETURN                           R12 1
