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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setStateMachineDataAsync"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["nodeId"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_4:
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
       99 GETTABLEKS                       R11 R11 K12 ["useCallback"]
      101 NEWCLOSURE                       R12 P3
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R0
      104 NEWTABLE                         R13 0 2
      106 GETTABLEKS                       R14 R1 K13 ["setStateMachineDataAsync"]
      108 GETTABLEKS                       R15 R0 K11 ["nodeId"]
      110 SETLIST                          R13 R14 2 [1]
      112 CALL                             R11 2 1
      113 GETUPVAL                         R12 0
      114 GETTABLEKS                       R12 R12 K14 ["createElement"]
      116 GETUPVAL                         R13 8
      117 GETTABLEKS                       R13 R13 K15 ["EditorView"]
      119 DUPTABLE                         R14 K20 [{"data", "onDataChanged", "parameters", "backLabel"}]
      120 SETTABLEKS                       R10 R14 K16 ["data"]
      122 SETTABLEKS                       R11 R14 K17 ["onDataChanged"]
      124 SETTABLEKS                       R8 R14 K18 ["parameters"]
      126 SETTABLEKS                       R5 R14 K19 ["backLabel"]
      128 DUPTABLE                         R15 K23 [{"StudioActionOverrides", "Forwarded"}]
      129 GETUPVAL                         R16 0
      130 GETTABLEKS                       R16 R16 K14 ["createElement"]
      132 GETUPVAL                         R17 9
      133 DUPTABLE                         R18 K25 [{"pluginGui"}]
      134 GETTABLEKS                       R19 R0 K24 ["pluginGui"]
      136 SETTABLEKS                       R19 R18 K24 ["pluginGui"]
      138 CALL                             R16 2 1
      139 SETTABLEKS                       R16 R15 K21 ["StudioActionOverrides"]
      141 GETUPVAL                         R16 0
      142 GETTABLEKS                       R16 R16 K14 ["createElement"]
      144 GETUPVAL                         R17 0
      145 GETTABLEKS                       R17 R17 K26 ["Fragment"]
      147 LOADNIL                          R18
      148 GETTABLEKS                       R19 R0 K27 ["children"]
      150 CALL                             R16 3 1
      151 SETTABLEKS                       R16 R15 K22 ["Forwarded"]
      153 CALL                             R12 3 -1
      154 RETURN                           R12 -1

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
       39 GETTABLEKS                       R6 R6 K12 ["SignalsReact"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K13 ["StateMachineEditorContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K8 ["Parent"]
       53 GETTABLEKS                       R8 R8 K14 ["StateMachineGraphing"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K15 ["Components"]
       60 GETTABLEKS                       R9 R9 K16 ["NodeView"]
       62 GETTABLEKS                       R9 R9 K17 ["StateMachine"]
       64 GETTABLEKS                       R9 R9 K18 ["StateMachineStudioActionOverrides"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K19 ["Flags"]
       71 GETTABLEKS                       R10 R10 K20 ["getFFlagAnimGraphUI_RunTimeDebug"]
       73 CALL                             R9 1 1
       74 GETTABLEKS                       R10 R7 K21 ["Data"]
       76 DUPCLOSURE                       R11 K22 [PROTO_4]
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R8
       87 RETURN                           R11 1
