PROTO_0:
        0 DUPTABLE                         R1 K3 [{"id", "name", "data"}]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R2 R2 K4 ["instanceToId"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R1 K0 ["id"]
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 SETTABLEKS                       R2 R1 K1 ["name"]
       13 GETUPVAL                         R2 3
       14 MOVE                             R3 R0
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R1 K2 ["data"]
       18 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["properties"]
        3 GETTABLEKS                       R2 R2 K1 ["observeString"]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K2 ["Name"]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["observeFromDefinition"]
       11 MOVE                             R4 R0
       12 MOVE                             R5 R1
       13 CALL                             R3 2 1
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K4 ["createComputed"]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R3
       22 CALL                             R4 1 -1
       23 RETURN                           R4 -1

PROTO_2:
        0 LOADK                            R3 K0 ["AnimationNodeDefinition"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETTABLEKS                       R2 R0 K2 ["NodeType"]
        7 GETIMPORT                        R3 K6 [Enum.AnimationNodeType.StateMachineNode]
        9 JUMPIFEQ                         R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_3:
        0 JUMPIFEQKNIL                     R0 ; [+6]
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 GETUPVAL                         R1 1
        6 JUMPIF                           R1 ; [+7]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K0 ["of"]
       10 NEWTABLE                         R2 0 0
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K1 ["observeChildrenWithPredicate"]
       17 MOVE                             R2 R0
       18 DUPCLOSURE                       R3 K2 [PROTO_2]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["switchMap"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_3]
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U0
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["id"]
        8 SETTABLE                         R6 R1 R7
        9 FORGLOOP                         R2 2 ; [-4]
       11 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["forEach"]
        3 GETUPVAL                         R1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 2 1
        8 GETUPVAL                         R1 4
        9 GETTABLEKS                       R1 R1 K1 ["createComputed"]
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R0
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K0 ["idToInstance"]
        4 CALL                             R3 2 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R4 1
        9 LOADK                            R6 K1 ["StateMachineEditorContext"]
       10 MOVE                             R7 R0
       11 NAMECALL                         R4 R4 K2 ["TryBeginRecording"]
       13 CALL                             R4 3 1
       14 MOVE                             R5 R2
       15 MOVE                             R6 R3
       16 CALL                             R5 1 0
       17 JUMPIFNOT                        R4 ; [+7]
       18 GETUPVAL                         R5 1
       19 MOVE                             R7 R4
       20 GETIMPORT                        R8 K6 [Enum.FinishRecordingOperation.Commit]
       22 NAMECALL                         R5 R5 K7 ["FinishRecording"]
       24 CALL                             R5 3 0
       25 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createState"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R5 3
        7 CALL                             R1 4 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["createStateAsync"]
        2 MOVE                             R5 R0
        3 NEWCLOSURE                       R6 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U2
        8 CALL                             R3 3 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R6 R6 K0 ["deleteState"]
        7 MOVE                             R7 R0
        8 MOVE                             R8 R5
        9 GETUPVAL                         R9 2
       10 CALL                             R6 3 0
       11 FORGLOOP                         R1 2 ; [-8]
       13 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["deleteStatesAsync"]
        2 MOVE                             R4 R0
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R2 3 0
        8 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R6 R6 K0 ["moveState"]
        7 MOVE                             R7 R0
        8 MOVE                             R8 R4
        9 MOVE                             R9 R5
       10 GETUPVAL                         R10 2
       11 CALL                             R6 4 0
       12 FORGLOOP                         R1 2 ; [-9]
       14 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["moveStatesAsync"]
        2 MOVE                             R4 R0
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R2 3 0
        8 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+13]
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+10]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["renameNodeAsync"]
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R4 0
       10 NAMECALL                         R2 R2 K1 ["instanceToId"]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R3 4
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 5
       16 GETTABLEKS                       R1 R1 K2 ["renameState"]
       18 MOVE                             R2 R0
       19 GETUPVAL                         R3 6
       20 GETUPVAL                         R4 4
       21 GETUPVAL                         R5 3
       22 CALL                             R1 4 0
       23 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K0 ["idToInstance"]
        4 CALL                             R3 2 1
        5 JUMPIFNOT                        R3 ; [+8]
        6 LOADK                            R7 K1 ["ObjectValue"]
        7 NAMECALL                         R5 R3 K2 ["IsA"]
        9 CALL                             R5 2 1
       10 JUMPIFNOT                        R5 ; [+3]
       11 GETTABLEKS                       R4 R3 K3 ["Value"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R4
       15 GETUPVAL                         R5 1
       16 LOADK                            R6 K4 ["renameStateAsync"]
       17 MOVE                             R7 R0
       18 NEWCLOSURE                       R8 P0
       19 CAPTURE                          VAL R4
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R2
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R1
       26 CALL                             R5 3 0
       27 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createTransition"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R5 3
        7 CALL                             R1 4 0
        8 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["createTransitionAsync"]
        2 MOVE                             R5 R0
        3 NEWCLOSURE                       R6 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U2
        8 CALL                             R3 3 0
        9 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createStateAndTransition"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R5 3
        7 GETUPVAL                         R6 4
        8 CALL                             R1 5 0
        9 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["createStateAndTransitionAsync"]
        2 MOVE                             R6 R0
        3 NEWCLOSURE                       R7 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R3
        8 CAPTURE                          UPVAL U2
        9 CALL                             R4 3 0
       10 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["deleteTransition"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["deleteTransitionAsync"]
        2 MOVE                             R4 R0
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setTransitionField"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R5 3
        7 CALL                             R1 4 0
        8 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["setTransitionFieldAsync"]
        2 MOVE                             R6 R0
        3 NEWCLOSURE                       R7 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R3
        8 CALL                             R4 3 0
        9 RETURN                           R0 0

PROTO_28:
        0 DUPTABLE                         R0 K9 [{"createStateAsync", "deleteStatesAsync", "moveStatesAsync", "renameStateAsync", "createTransitionAsync", "createStateAndTransitionAsync", "deleteTransitionAsync", "setTransitionFieldAsync", "stateMachines"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["createStateAsync"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["deleteStatesAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["moveStatesAsync"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["renameStateAsync"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["createTransitionAsync"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["createStateAndTransitionAsync"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["deleteTransitionAsync"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["setTransitionFieldAsync"]
       25 GETUPVAL                         R1 8
       26 SETTABLEKS                       R1 R0 K8 ["stateMachines"]
       28 RETURN                           R0 1

PROTO_29:
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
       15 GETTABLEKS                       R3 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R3 R3 K2 ["instanceRegistry"]
       23 GETUPVAL                         R5 4
       24 CALL                             R5 0 1
       25 JUMPIFNOT                        R5 ; [+3]
       26 GETTABLEKS                       R4 R2 K3 ["observeSelectedGraphInstance"]
       28 JUMP                             ; [+2]
       29 GETTABLEKS                       R4 R1 K4 ["observeSelectedGraphInstance_DEPRECATED"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       34 NEWCLOSURE                       R6 P0
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R4
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          UPVAL U7
       39 NEWTABLE                         R7 0 1
       41 MOVE                             R8 R4
       42 SETLIST                          R7 R8 1 [1]
       44 CALL                             R5 2 1
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       48 NEWCLOSURE                       R7 P1
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          VAL R5
       51 CAPTURE                          UPVAL U8
       52 CAPTURE                          VAL R3
       53 CAPTURE                          UPVAL U9
       54 NEWTABLE                         R8 0 2
       56 MOVE                             R9 R5
       57 MOVE                             R10 R3
       58 SETLIST                          R8 R9 2 [1]
       60 CALL                             R6 2 1
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R7 R7 K6 ["useState"]
       64 NEWCLOSURE                       R8 P2
       65 CAPTURE                          VAL R6
       66 CALL                             R7 1 2
       67 GETUPVAL                         R9 0
       68 GETTABLEKS                       R9 R9 K7 ["useLayoutEffect"]
       70 NEWCLOSURE                       R10 P3
       71 CAPTURE                          UPVAL U10
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R6
       74 NEWTABLE                         R11 0 1
       76 MOVE                             R12 R6
       77 SETLIST                          R11 R12 1 [1]
       79 CALL                             R9 2 0
       80 GETUPVAL                         R9 0
       81 GETTABLEKS                       R9 R9 K8 ["useCallback"]
       83 NEWCLOSURE                       R10 P4
       84 CAPTURE                          VAL R3
       85 CAPTURE                          UPVAL U11
       86 NEWTABLE                         R11 0 1
       88 MOVE                             R12 R3
       89 SETLIST                          R11 R12 1 [1]
       91 CALL                             R9 2 1
       92 GETUPVAL                         R10 0
       93 GETTABLEKS                       R10 R10 K8 ["useCallback"]
       95 NEWCLOSURE                       R11 P5
       96 CAPTURE                          VAL R9
       97 CAPTURE                          UPVAL U12
       98 CAPTURE                          VAL R3
       99 NEWTABLE                         R12 0 2
      101 MOVE                             R13 R9
      102 MOVE                             R14 R3
      103 SETLIST                          R12 R13 2 [1]
      105 CALL                             R10 2 1
      106 GETUPVAL                         R11 0
      107 GETTABLEKS                       R11 R11 K8 ["useCallback"]
      109 NEWCLOSURE                       R12 P6
      110 CAPTURE                          VAL R9
      111 CAPTURE                          UPVAL U12
      112 CAPTURE                          VAL R3
      113 NEWTABLE                         R13 0 2
      115 MOVE                             R14 R9
      116 MOVE                             R15 R3
      117 SETLIST                          R13 R14 2 [1]
      119 CALL                             R11 2 1
      120 GETUPVAL                         R12 0
      121 GETTABLEKS                       R12 R12 K8 ["useCallback"]
      123 NEWCLOSURE                       R13 P7
      124 CAPTURE                          VAL R9
      125 CAPTURE                          UPVAL U12
      126 CAPTURE                          VAL R3
      127 NEWTABLE                         R14 0 2
      129 MOVE                             R15 R9
      130 MOVE                             R16 R3
      131 SETLIST                          R14 R15 2 [1]
      133 CALL                             R12 2 1
      134 GETUPVAL                         R13 0
      135 GETTABLEKS                       R13 R13 K8 ["useCallback"]
      137 NEWCLOSURE                       R14 P8
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R9
      140 CAPTURE                          UPVAL U13
      141 CAPTURE                          VAL R1
      142 CAPTURE                          UPVAL U12
      143 NEWTABLE                         R15 0 3
      145 MOVE                             R16 R9
      146 MOVE                             R17 R3
      147 MOVE                             R18 R1
      148 SETLIST                          R15 R16 3 [1]
      150 CALL                             R13 2 1
      151 GETUPVAL                         R14 0
      152 GETTABLEKS                       R14 R14 K8 ["useCallback"]
      154 NEWCLOSURE                       R15 P9
      155 CAPTURE                          VAL R9
      156 CAPTURE                          UPVAL U12
      157 CAPTURE                          VAL R3
      158 NEWTABLE                         R16 0 2
      160 MOVE                             R17 R9
      161 MOVE                             R18 R3
      162 SETLIST                          R16 R17 2 [1]
      164 CALL                             R14 2 1
      165 GETUPVAL                         R15 0
      166 GETTABLEKS                       R15 R15 K8 ["useCallback"]
      168 NEWCLOSURE                       R16 P10
      169 CAPTURE                          VAL R9
      170 CAPTURE                          UPVAL U12
      171 CAPTURE                          VAL R3
      172 NEWTABLE                         R17 0 2
      174 MOVE                             R18 R9
      175 MOVE                             R19 R3
      176 SETLIST                          R17 R18 2 [1]
      178 CALL                             R15 2 1
      179 GETUPVAL                         R16 0
      180 GETTABLEKS                       R16 R16 K8 ["useCallback"]
      182 NEWCLOSURE                       R17 P11
      183 CAPTURE                          VAL R9
      184 CAPTURE                          UPVAL U12
      185 NEWTABLE                         R18 0 1
      187 MOVE                             R19 R9
      188 SETLIST                          R18 R19 1 [1]
      190 CALL                             R16 2 1
      191 GETUPVAL                         R17 0
      192 GETTABLEKS                       R17 R17 K8 ["useCallback"]
      194 NEWCLOSURE                       R18 P12
      195 CAPTURE                          VAL R9
      196 CAPTURE                          UPVAL U12
      197 NEWTABLE                         R19 0 1
      199 MOVE                             R20 R9
      200 SETLIST                          R19 R20 1 [1]
      202 CALL                             R17 2 1
      203 GETUPVAL                         R18 0
      204 GETTABLEKS                       R18 R18 K5 ["useMemo"]
      206 NEWCLOSURE                       R19 P13
      207 CAPTURE                          VAL R10
      208 CAPTURE                          VAL R11
      209 CAPTURE                          VAL R12
      210 CAPTURE                          VAL R13
      211 CAPTURE                          VAL R14
      212 CAPTURE                          VAL R15
      213 CAPTURE                          VAL R16
      214 CAPTURE                          VAL R17
      215 CAPTURE                          VAL R7
      216 NEWTABLE                         R20 0 9
      218 MOVE                             R21 R10
      219 MOVE                             R22 R11
      220 MOVE                             R23 R12
      221 MOVE                             R24 R13
      222 MOVE                             R25 R14
      223 MOVE                             R26 R15
      224 MOVE                             R27 R16
      225 MOVE                             R28 R17
      226 MOVE                             R29 R7
      227 SETLIST                          R20 R21 9 [1]
      229 CALL                             R18 2 1
      230 GETUPVAL                         R19 14
      231 GETTABLEKS                       R19 R19 K9 ["useProducer"]
      233 MOVE                             R20 R7
      234 CALL                             R19 1 0
      235 GETUPVAL                         R19 15
      236 GETTABLEKS                       R19 R19 K9 ["useProducer"]
      238 MOVE                             R20 R10
      239 CALL                             R19 1 0
      240 GETUPVAL                         R19 16
      241 GETTABLEKS                       R19 R19 K9 ["useProducer"]
      243 MOVE                             R20 R11
      244 CALL                             R19 1 0
      245 GETUPVAL                         R19 17
      246 GETTABLEKS                       R19 R19 K9 ["useProducer"]
      248 MOVE                             R20 R12
      249 CALL                             R19 1 0
      250 GETUPVAL                         R19 18
      251 GETTABLEKS                       R19 R19 K9 ["useProducer"]
      253 MOVE                             R20 R13
      254 CALL                             R19 1 0
      255 GETUPVAL                         R19 19
      256 GETTABLEKS                       R19 R19 K9 ["useProducer"]
      258 MOVE                             R20 R14
      259 CALL                             R19 1 0
      260 GETUPVAL                         R19 20
      261 GETTABLEKS                       R19 R19 K9 ["useProducer"]
      263 MOVE                             R20 R15
      264 CALL                             R19 1 0
      265 GETUPVAL                         R19 21
      266 GETTABLEKS                       R19 R19 K9 ["useProducer"]
      268 MOVE                             R20 R16
      269 CALL                             R19 1 0
      270 GETUPVAL                         R19 22
      271 GETTABLEKS                       R19 R19 K9 ["useProducer"]
      273 MOVE                             R20 R17
      274 CALL                             R19 1 0
      275 GETUPVAL                         R19 0
      276 GETTABLEKS                       R19 R19 K10 ["createElement"]
      278 GETUPVAL                         R20 23
      279 GETTABLEKS                       R20 R20 K11 ["Provider"]
      281 DUPTABLE                         R21 K13 [{"value"}]
      282 SETTABLEKS                       R18 R21 K12 ["value"]
      284 GETTABLEKS                       R22 R0 K14 ["children"]
      286 CALL                             R19 3 -1
      287 RETURN                           R19 -1

PROTO_30:
        0 DUPTABLE                         R0 K9 [{"createStateAsync", "deleteStatesAsync", "moveStatesAsync", "renameStateAsync", "createTransitionAsync", "createStateAndTransitionAsync", "deleteTransitionAsync", "setTransitionFieldAsync", "stateMachines"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["createStateAsync"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["deleteStatesAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["moveStatesAsync"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["renameStateAsync"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["createTransitionAsync"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["createStateAndTransitionAsync"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["deleteTransitionAsync"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["setTransitionFieldAsync"]
       25 GETUPVAL                         R1 8
       26 SETTABLEKS                       R1 R0 K8 ["stateMachines"]
       28 RETURN                           R0 1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useConsumer"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["useConsumer"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["useConsumer"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K0 ["useConsumer"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K0 ["useConsumer"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 5
       21 GETTABLEKS                       R6 R6 K0 ["useConsumer"]
       23 CALL                             R6 0 1
       24 GETUPVAL                         R7 6
       25 GETTABLEKS                       R7 R7 K0 ["useConsumer"]
       27 CALL                             R7 0 1
       28 GETUPVAL                         R8 7
       29 GETTABLEKS                       R8 R8 K0 ["useConsumer"]
       31 CALL                             R8 0 1
       32 GETUPVAL                         R9 8
       33 GETTABLEKS                       R9 R9 K0 ["useConsumer"]
       35 NEWTABLE                         R10 0 0
       37 CALL                             R9 1 1
       38 GETUPVAL                         R10 9
       39 GETTABLEKS                       R10 R10 K1 ["useMemo"]
       41 NEWCLOSURE                       R11 P0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R9
       51 NEWTABLE                         R12 0 9
       53 MOVE                             R13 R1
       54 MOVE                             R14 R2
       55 MOVE                             R15 R3
       56 MOVE                             R16 R4
       57 MOVE                             R17 R5
       58 MOVE                             R18 R6
       59 MOVE                             R19 R7
       60 MOVE                             R20 R8
       61 MOVE                             R21 R9
       62 SETLIST                          R12 R13 9 [1]
       64 CALL                             R10 2 1
       65 GETUPVAL                         R11 9
       66 GETTABLEKS                       R11 R11 K2 ["createElement"]
       68 GETUPVAL                         R12 10
       69 GETTABLEKS                       R12 R12 K3 ["Provider"]
       71 DUPTABLE                         R13 K5 [{"value"}]
       72 SETTABLEKS                       R10 R13 K4 ["value"]
       74 GETTABLEKS                       R14 R0 K6 ["children"]
       76 CALL                             R11 3 -1
       77 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Contexts"]
       17 GETTABLEKS                       R3 R3 K11 ["InstanceRegistryContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Contexts"]
       24 GETTABLEKS                       R4 R4 K12 ["NativeGraphContext"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K13 ["Util"]
       31 GETTABLEKS                       R5 R5 K14 ["Networking"]
       33 GETTABLEKS                       R5 R5 K15 ["NetworkUtils"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K16 ["Parent"]
       40 GETTABLEKS                       R6 R6 K17 ["React"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R1 K16 ["Parent"]
       47 GETTABLEKS                       R7 R7 K18 ["ReactUtils"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R1 K10 ["Contexts"]
       54 GETTABLEKS                       R8 R8 K19 ["SelectedGraphContext"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R9 R1 K13 ["Util"]
       61 GETTABLEKS                       R9 R9 K20 ["Signals"]
       63 GETTABLEKS                       R9 R9 K21 ["Experimental"]
       65 GETTABLEKS                       R9 R9 K22 ["SignalExperimentalUtils"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R10 R1 K16 ["Parent"]
       72 GETTABLEKS                       R10 R10 K20 ["Signals"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R11 R1 K13 ["Util"]
       79 GETTABLEKS                       R11 R11 K20 ["Signals"]
       81 GETTABLEKS                       R11 R11 K23 ["SignalsInstanceUtils"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K9 [require]
       86 GETTABLEKS                       R12 R1 K16 ["Parent"]
       88 GETTABLEKS                       R12 R12 K24 ["StateMachineGraphing"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K9 [require]
       93 GETTABLEKS                       R13 R1 K25 ["Components"]
       95 GETTABLEKS                       R13 R13 K26 ["NodeView"]
       97 GETTABLEKS                       R13 R13 K27 ["StateMachine"]
       99 GETTABLEKS                       R13 R13 K28 ["StateMachineMaterializer"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K9 [require]
      104 GETTABLEKS                       R14 R1 K13 ["Util"]
      106 GETTABLEKS                       R14 R14 K20 ["Signals"]
      108 GETTABLEKS                       R14 R14 K29 ["TypedInstanceSignals"]
      110 CALL                             R13 1 1
      111 GETIMPORT                        R14 K9 [require]
      113 GETTABLEKS                       R15 R1 K30 ["Flags"]
      115 GETTABLEKS                       R15 R15 K31 ["getFFlagAnimGraphUIInputIds"]
      117 CALL                             R14 1 1
      118 GETIMPORT                        R15 K9 [require]
      120 GETTABLEKS                       R16 R1 K30 ["Flags"]
      122 GETTABLEKS                       R16 R16 K32 ["getFFlagAnimGraphUI_PoseStateMachineNode"]
      124 CALL                             R15 1 1
      125 GETIMPORT                        R16 K9 [require]
      127 GETTABLEKS                       R17 R1 K30 ["Flags"]
      129 GETTABLEKS                       R17 R17 K33 ["getFFlagAnimGraphUI_RunTimeDebug"]
      131 CALL                             R16 1 1
      132 GETIMPORT                        R17 K9 [require]
      134 GETTABLEKS                       R18 R1 K25 ["Components"]
      136 GETTABLEKS                       R18 R18 K26 ["NodeView"]
      138 GETTABLEKS                       R18 R18 K27 ["StateMachine"]
      140 GETTABLEKS                       R18 R18 K34 ["supportsStateMachineNode"]
      142 CALL                             R17 1 1
      143 GETTABLEKS                       R18 R4 K35 ["createReplicatedState"]
      145 LOADK                            R19 K36 ["StateMachineEditorContext_StateMachines"]
      146 CALL                             R18 1 1
      147 GETTABLEKS                       R19 R4 K37 ["createBoundAction"]
      149 LOADK                            R20 K38 ["StateMachineEditorContext_CreateStateAsync"]
      150 CALL                             R19 1 1
      151 GETTABLEKS                       R20 R4 K37 ["createBoundAction"]
      153 LOADK                            R21 K39 ["StateMachineEditorContext_DeleteStatesAsync"]
      154 CALL                             R20 1 1
      155 GETTABLEKS                       R21 R4 K37 ["createBoundAction"]
      157 LOADK                            R22 K40 ["StateMachineEditorContext_MoveStatesAsync"]
      158 CALL                             R21 1 1
      159 GETTABLEKS                       R22 R4 K37 ["createBoundAction"]
      161 LOADK                            R23 K41 ["StateMachineEditorContext_RenameStateAsync"]
      162 CALL                             R22 1 1
      163 GETTABLEKS                       R23 R4 K37 ["createBoundAction"]
      165 LOADK                            R24 K42 ["StateMachineEditorContext_CreateTransitionAsync"]
      166 CALL                             R23 1 1
      167 GETTABLEKS                       R24 R4 K37 ["createBoundAction"]
      169 LOADK                            R25 K43 ["StateMachineEditorContext_CreateStateAndTransitionAsync"]
      170 CALL                             R24 1 1
      171 GETTABLEKS                       R25 R4 K37 ["createBoundAction"]
      173 LOADK                            R26 K44 ["StateMachineEditorContext_DeleteTransitionAsync"]
      174 CALL                             R25 1 1
      175 GETTABLEKS                       R26 R4 K37 ["createBoundAction"]
      177 LOADK                            R27 K45 ["StateMachineEditorContext_SetTransitionFieldAsync"]
      178 CALL                             R26 1 1
      179 DUPTABLE                         R27 K55 [{"createStateAsync", "deleteStatesAsync", "moveStatesAsync", "renameStateAsync", "createTransitionAsync", "createStateAndTransitionAsync", "deleteTransitionAsync", "setTransitionFieldAsync", "stateMachines"}]
      180 GETTABLEKS                       R28 R6 K56 ["createUnimplemented"]
      182 LOADK                            R29 K46 ["createStateAsync"]
      183 CALL                             R28 1 1
      184 SETTABLEKS                       R28 R27 K46 ["createStateAsync"]
      186 GETTABLEKS                       R28 R6 K56 ["createUnimplemented"]
      188 LOADK                            R29 K47 ["deleteStatesAsync"]
      189 CALL                             R28 1 1
      190 SETTABLEKS                       R28 R27 K47 ["deleteStatesAsync"]
      192 GETTABLEKS                       R28 R6 K56 ["createUnimplemented"]
      194 LOADK                            R29 K48 ["moveStatesAsync"]
      195 CALL                             R28 1 1
      196 SETTABLEKS                       R28 R27 K48 ["moveStatesAsync"]
      198 GETTABLEKS                       R28 R6 K56 ["createUnimplemented"]
      200 LOADK                            R29 K49 ["renameStateAsync"]
      201 CALL                             R28 1 1
      202 SETTABLEKS                       R28 R27 K49 ["renameStateAsync"]
      204 GETTABLEKS                       R28 R6 K56 ["createUnimplemented"]
      206 LOADK                            R29 K50 ["createTransitionAsync"]
      207 CALL                             R28 1 1
      208 SETTABLEKS                       R28 R27 K50 ["createTransitionAsync"]
      210 GETTABLEKS                       R28 R6 K56 ["createUnimplemented"]
      212 LOADK                            R29 K51 ["createStateAndTransitionAsync"]
      213 CALL                             R28 1 1
      214 SETTABLEKS                       R28 R27 K51 ["createStateAndTransitionAsync"]
      216 GETTABLEKS                       R28 R6 K56 ["createUnimplemented"]
      218 LOADK                            R29 K52 ["deleteTransitionAsync"]
      219 CALL                             R28 1 1
      220 SETTABLEKS                       R28 R27 K52 ["deleteTransitionAsync"]
      222 GETTABLEKS                       R28 R6 K56 ["createUnimplemented"]
      224 LOADK                            R29 K53 ["setTransitionFieldAsync"]
      225 CALL                             R28 1 1
      226 SETTABLEKS                       R28 R27 K53 ["setTransitionFieldAsync"]
      228 NEWTABLE                         R28 0 0
      230 SETTABLEKS                       R28 R27 K54 ["stateMachines"]
      232 GETTABLEKS                       R28 R5 K57 ["createContext"]
      234 MOVE                             R29 R27
      235 CALL                             R28 1 1
      236 LOADK                            R29 K58 ["StateMachineEditorContext"]
      237 SETTABLEKS                       R29 R28 K59 ["displayName"]
      239 DUPCLOSURE                       R29 K60 [PROTO_1]
      240 CAPTURE                          VAL R13
      241 CAPTURE                          VAL R12
      242 CAPTURE                          VAL R8
      243 DUPCLOSURE                       R30 K61 [PROTO_29]
      244 CAPTURE                          VAL R5
      245 CAPTURE                          VAL R3
      246 CAPTURE                          VAL R7
      247 CAPTURE                          VAL R2
      248 CAPTURE                          VAL R16
      249 CAPTURE                          VAL R10
      250 CAPTURE                          VAL R15
      251 CAPTURE                          VAL R17
      252 CAPTURE                          VAL R29
      253 CAPTURE                          VAL R8
      254 CAPTURE                          VAL R9
      255 CAPTURE                          VAL R0
      256 CAPTURE                          VAL R12
      257 CAPTURE                          VAL R14
      258 CAPTURE                          VAL R18
      259 CAPTURE                          VAL R19
      260 CAPTURE                          VAL R20
      261 CAPTURE                          VAL R21
      262 CAPTURE                          VAL R22
      263 CAPTURE                          VAL R23
      264 CAPTURE                          VAL R24
      265 CAPTURE                          VAL R25
      266 CAPTURE                          VAL R26
      267 CAPTURE                          VAL R28
      268 DUPCLOSURE                       R31 K62 [PROTO_31]
      269 CAPTURE                          VAL R19
      270 CAPTURE                          VAL R20
      271 CAPTURE                          VAL R21
      272 CAPTURE                          VAL R22
      273 CAPTURE                          VAL R23
      274 CAPTURE                          VAL R24
      275 CAPTURE                          VAL R25
      276 CAPTURE                          VAL R26
      277 CAPTURE                          VAL R18
      278 CAPTURE                          VAL R5
      279 CAPTURE                          VAL R28
      280 DUPTABLE                         R32 K66 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      281 SETTABLEKS                       R28 R32 K63 ["Context"]
      283 SETTABLEKS                       R30 R32 K64 ["EditableDataModelProvider"]
      285 SETTABLEKS                       R31 R32 K65 ["UIDataModelProvider"]
      287 RETURN                           R32 1
