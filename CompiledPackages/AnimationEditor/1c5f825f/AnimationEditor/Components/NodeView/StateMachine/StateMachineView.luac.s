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
        1 GETTABLEKS                       R0 R0 K0 ["observeNodeStateById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["nodeId"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 LOADNIL                          R0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["states"]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K1 ["isSynthetic"]
       14 MOVE                             R7 R5
       15 CALL                             R6 1 1
       16 JUMPIF                           R6 ; [+10]
       17 GETTABLEKS                       R6 R5 K2 ["name"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K3 ["State"]
       22 JUMPIFNOTEQ                      R6 R7 ; [+4]
       24 GETTABLEKS                       R0 R5 K4 ["id"]
       26 JUMP                             ; [+2]
       27 FORGLOOP                         R1 2 ; [-17]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K5 ["ActiveTransition"]
       32 FASTCALL1                        TYPE R3 ; [+2]
       33 GETIMPORT                        R2 K7 [type]
       35 CALL                             R2 1 1
       36 JUMPIFNOTEQKS                    R2 K8 ["table"] ; [+5]
       38 GETUPVAL                         R1 0
       39 GETTABLEKS                       R1 R1 K5 ["ActiveTransition"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R1
       43 DUPTABLE                         R2 K12 [{"activeStateId", "activeTransitionId", "transitionProgress"}]
       44 SETTABLEKS                       R0 R2 K9 ["activeStateId"]
       46 JUMPIFNOT                        R1 ; [+11]
       47 GETTABLEKS                       R5 R1 K13 ["Id"]
       49 FASTCALL1                        TYPE R5 ; [+2]
       50 GETIMPORT                        R4 K7 [type]
       52 CALL                             R4 1 1
       53 JUMPIFNOTEQKS                    R4 K14 ["string"] ; [+4]
       55 GETTABLEKS                       R3 R1 K13 ["Id"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R3
       59 SETTABLEKS                       R3 R2 K10 ["activeTransitionId"]
       61 JUMPIFNOT                        R1 ; [+11]
       62 GETTABLEKS                       R5 R1 K15 ["Progress"]
       64 FASTCALL1                        TYPE R5 ; [+2]
       65 GETIMPORT                        R4 K7 [type]
       67 CALL                             R4 1 1
       68 JUMPIFNOTEQKS                    R4 K16 ["number"] ; [+4]
       70 GETTABLEKS                       R3 R1 K15 ["Progress"]
       72 JUMP                             ; [+1]
       73 LOADNIL                          R3
       74 SETTABLEKS                       R3 R2 K11 ["transitionProgress"]
       76 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createStateAsync"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["deleteStatesAsync"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["moveStatesAsync"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["renameStateAsync"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createTransitionAsync"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createStateAndTransitionAsync"]
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 MOVE                             R7 R2
        7 CALL                             R3 4 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["deleteTransitionAsync"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["setTransitionFieldAsync"]
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 MOVE                             R7 R2
        7 CALL                             R3 4 0
        8 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R0
      104 NEWTABLE                         R13 0 2
      106 GETTABLEKS                       R14 R6 K12 ["observeNodeStateById"]
      108 GETTABLEKS                       R15 R0 K11 ["nodeId"]
      110 SETLIST                          R13 R14 2 [1]
      112 CALL                             R11 2 1
      113 GETUPVAL                         R12 5
      114 GETTABLEKS                       R12 R12 K2 ["useSignalState"]
      116 MOVE                             R13 R11
      117 CALL                             R12 1 1
      118 GETUPVAL                         R13 0
      119 GETTABLEKS                       R13 R13 K5 ["useMemo"]
      121 NEWCLOSURE                       R14 P4
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R10
      124 CAPTURE                          UPVAL U7
      125 NEWTABLE                         R15 0 2
      127 MOVE                             R16 R12
      128 MOVE                             R17 R10
      129 SETLIST                          R15 R16 2 [1]
      131 CALL                             R13 2 1
      132 GETUPVAL                         R14 0
      133 GETTABLEKS                       R14 R14 K5 ["useMemo"]
      135 NEWCLOSURE                       R15 P5
      136 CAPTURE                          UPVAL U8
      137 CAPTURE                          VAL R10
      138 NEWTABLE                         R16 0 0
      140 CALL                             R14 2 2
      141 GETUPVAL                         R16 0
      142 GETTABLEKS                       R16 R16 K13 ["useEffect"]
      144 NEWCLOSURE                       R17 P6
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R10
      147 NEWTABLE                         R18 0 2
      149 MOVE                             R19 R10
      150 MOVE                             R20 R15
      151 SETLIST                          R18 R19 2 [1]
      153 CALL                             R16 2 0
      154 GETUPVAL                         R16 0
      155 GETTABLEKS                       R16 R16 K5 ["useMemo"]
      157 NEWCLOSURE                       R17 P7
      158 CAPTURE                          VAL R0
      159 CAPTURE                          VAL R14
      160 CAPTURE                          VAL R1
      161 NEWTABLE                         R18 0 3
      163 MOVE                             R19 R14
      164 MOVE                             R20 R1
      165 GETTABLEKS                       R21 R0 K11 ["nodeId"]
      167 SETLIST                          R18 R19 3 [1]
      169 CALL                             R16 2 1
      170 GETUPVAL                         R17 0
      171 GETTABLEKS                       R17 R17 K14 ["createElement"]
      173 GETUPVAL                         R18 9
      174 GETTABLEKS                       R18 R18 K15 ["DataContext"]
      176 GETTABLEKS                       R18 R18 K1 ["Context"]
      178 GETTABLEKS                       R18 R18 K16 ["Provider"]
      180 DUPTABLE                         R19 K18 [{"value"}]
      181 SETTABLEKS                       R16 R19 K17 ["value"]
      183 GETUPVAL                         R20 0
      184 GETTABLEKS                       R20 R20 K14 ["createElement"]
      186 GETUPVAL                         R21 9
      187 GETTABLEKS                       R21 R21 K19 ["EditorView"]
      189 DUPTABLE                         R22 K24 [{"parameters", "parameterGraphContext", "backLabel", "debugData"}]
      190 SETTABLEKS                       R8 R22 K20 ["parameters"]
      192 SETTABLEKS                       R6 R22 K21 ["parameterGraphContext"]
      194 SETTABLEKS                       R5 R22 K22 ["backLabel"]
      196 SETTABLEKS                       R13 R22 K23 ["debugData"]
      198 DUPTABLE                         R23 K27 [{"StudioActionOverrides", "Forwarded"}]
      199 GETUPVAL                         R24 0
      200 GETTABLEKS                       R24 R24 K14 ["createElement"]
      202 GETUPVAL                         R25 10
      203 DUPTABLE                         R26 K29 [{"pluginGui"}]
      204 GETTABLEKS                       R27 R0 K28 ["pluginGui"]
      206 SETTABLEKS                       R27 R26 K28 ["pluginGui"]
      208 CALL                             R24 2 1
      209 SETTABLEKS                       R24 R23 K25 ["StudioActionOverrides"]
      211 GETUPVAL                         R24 0
      212 GETTABLEKS                       R24 R24 K14 ["createElement"]
      214 GETUPVAL                         R25 0
      215 GETTABLEKS                       R25 R25 K30 ["Fragment"]
      217 LOADNIL                          R26
      218 GETTABLEKS                       R27 R0 K31 ["children"]
      220 CALL                             R24 3 1
      221 SETTABLEKS                       R24 R23 K26 ["Forwarded"]
      223 CALL                             R20 3 -1
      224 CALL                             R17 -1 -1
      225 RETURN                           R17 -1

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
       83 DUPCLOSURE                       R12 K23 [PROTO_16]
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
