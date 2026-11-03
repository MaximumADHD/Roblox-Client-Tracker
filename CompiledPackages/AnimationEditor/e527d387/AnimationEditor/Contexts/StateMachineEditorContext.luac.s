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
       23 GETTABLEKS                       R4 R2 K3 ["observeSelectedGraphInstance"]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K4 ["useMemo"]
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          VAL R4
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U6
       33 NEWTABLE                         R7 0 1
       35 MOVE                             R8 R4
       36 SETLIST                          R7 R8 1 [1]
       38 CALL                             R5 2 1
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K4 ["useMemo"]
       42 NEWCLOSURE                       R7 P1
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          VAL R5
       45 CAPTURE                          UPVAL U7
       46 CAPTURE                          VAL R3
       47 CAPTURE                          UPVAL U8
       48 NEWTABLE                         R8 0 2
       50 MOVE                             R9 R5
       51 MOVE                             R10 R3
       52 SETLIST                          R8 R9 2 [1]
       54 CALL                             R6 2 1
       55 GETUPVAL                         R7 0
       56 GETTABLEKS                       R7 R7 K5 ["useState"]
       58 NEWCLOSURE                       R8 P2
       59 CAPTURE                          VAL R6
       60 CALL                             R7 1 2
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K6 ["useLayoutEffect"]
       64 NEWCLOSURE                       R10 P3
       65 CAPTURE                          UPVAL U9
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R6
       68 NEWTABLE                         R11 0 1
       70 MOVE                             R12 R6
       71 SETLIST                          R11 R12 1 [1]
       73 CALL                             R9 2 0
       74 GETUPVAL                         R9 0
       75 GETTABLEKS                       R9 R9 K7 ["useCallback"]
       77 NEWCLOSURE                       R10 P4
       78 CAPTURE                          VAL R3
       79 CAPTURE                          UPVAL U10
       80 NEWTABLE                         R11 0 1
       82 MOVE                             R12 R3
       83 SETLIST                          R11 R12 1 [1]
       85 CALL                             R9 2 1
       86 GETUPVAL                         R10 0
       87 GETTABLEKS                       R10 R10 K7 ["useCallback"]
       89 NEWCLOSURE                       R11 P5
       90 CAPTURE                          VAL R9
       91 CAPTURE                          UPVAL U11
       92 CAPTURE                          VAL R3
       93 NEWTABLE                         R12 0 2
       95 MOVE                             R13 R9
       96 MOVE                             R14 R3
       97 SETLIST                          R12 R13 2 [1]
       99 CALL                             R10 2 1
      100 GETUPVAL                         R11 0
      101 GETTABLEKS                       R11 R11 K7 ["useCallback"]
      103 NEWCLOSURE                       R12 P6
      104 CAPTURE                          VAL R9
      105 CAPTURE                          UPVAL U11
      106 CAPTURE                          VAL R3
      107 NEWTABLE                         R13 0 2
      109 MOVE                             R14 R9
      110 MOVE                             R15 R3
      111 SETLIST                          R13 R14 2 [1]
      113 CALL                             R11 2 1
      114 GETUPVAL                         R12 0
      115 GETTABLEKS                       R12 R12 K7 ["useCallback"]
      117 NEWCLOSURE                       R13 P7
      118 CAPTURE                          VAL R9
      119 CAPTURE                          UPVAL U11
      120 CAPTURE                          VAL R3
      121 NEWTABLE                         R14 0 2
      123 MOVE                             R15 R9
      124 MOVE                             R16 R3
      125 SETLIST                          R14 R15 2 [1]
      127 CALL                             R12 2 1
      128 GETUPVAL                         R13 0
      129 GETTABLEKS                       R13 R13 K7 ["useCallback"]
      131 NEWCLOSURE                       R14 P8
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R9
      134 CAPTURE                          UPVAL U12
      135 CAPTURE                          VAL R1
      136 CAPTURE                          UPVAL U11
      137 NEWTABLE                         R15 0 3
      139 MOVE                             R16 R9
      140 MOVE                             R17 R3
      141 MOVE                             R18 R1
      142 SETLIST                          R15 R16 3 [1]
      144 CALL                             R13 2 1
      145 GETUPVAL                         R14 0
      146 GETTABLEKS                       R14 R14 K7 ["useCallback"]
      148 NEWCLOSURE                       R15 P9
      149 CAPTURE                          VAL R9
      150 CAPTURE                          UPVAL U11
      151 CAPTURE                          VAL R3
      152 NEWTABLE                         R16 0 2
      154 MOVE                             R17 R9
      155 MOVE                             R18 R3
      156 SETLIST                          R16 R17 2 [1]
      158 CALL                             R14 2 1
      159 GETUPVAL                         R15 0
      160 GETTABLEKS                       R15 R15 K7 ["useCallback"]
      162 NEWCLOSURE                       R16 P10
      163 CAPTURE                          VAL R9
      164 CAPTURE                          UPVAL U11
      165 CAPTURE                          VAL R3
      166 NEWTABLE                         R17 0 2
      168 MOVE                             R18 R9
      169 MOVE                             R19 R3
      170 SETLIST                          R17 R18 2 [1]
      172 CALL                             R15 2 1
      173 GETUPVAL                         R16 0
      174 GETTABLEKS                       R16 R16 K7 ["useCallback"]
      176 NEWCLOSURE                       R17 P11
      177 CAPTURE                          VAL R9
      178 CAPTURE                          UPVAL U11
      179 NEWTABLE                         R18 0 1
      181 MOVE                             R19 R9
      182 SETLIST                          R18 R19 1 [1]
      184 CALL                             R16 2 1
      185 GETUPVAL                         R17 0
      186 GETTABLEKS                       R17 R17 K7 ["useCallback"]
      188 NEWCLOSURE                       R18 P12
      189 CAPTURE                          VAL R9
      190 CAPTURE                          UPVAL U11
      191 NEWTABLE                         R19 0 1
      193 MOVE                             R20 R9
      194 SETLIST                          R19 R20 1 [1]
      196 CALL                             R17 2 1
      197 GETUPVAL                         R18 0
      198 GETTABLEKS                       R18 R18 K4 ["useMemo"]
      200 NEWCLOSURE                       R19 P13
      201 CAPTURE                          VAL R10
      202 CAPTURE                          VAL R11
      203 CAPTURE                          VAL R12
      204 CAPTURE                          VAL R13
      205 CAPTURE                          VAL R14
      206 CAPTURE                          VAL R15
      207 CAPTURE                          VAL R16
      208 CAPTURE                          VAL R17
      209 CAPTURE                          VAL R7
      210 NEWTABLE                         R20 0 9
      212 MOVE                             R21 R10
      213 MOVE                             R22 R11
      214 MOVE                             R23 R12
      215 MOVE                             R24 R13
      216 MOVE                             R25 R14
      217 MOVE                             R26 R15
      218 MOVE                             R27 R16
      219 MOVE                             R28 R17
      220 MOVE                             R29 R7
      221 SETLIST                          R20 R21 9 [1]
      223 CALL                             R18 2 1
      224 GETUPVAL                         R19 13
      225 GETTABLEKS                       R19 R19 K8 ["useProducer"]
      227 MOVE                             R20 R7
      228 CALL                             R19 1 0
      229 GETUPVAL                         R19 14
      230 GETTABLEKS                       R19 R19 K8 ["useProducer"]
      232 MOVE                             R20 R10
      233 CALL                             R19 1 0
      234 GETUPVAL                         R19 15
      235 GETTABLEKS                       R19 R19 K8 ["useProducer"]
      237 MOVE                             R20 R11
      238 CALL                             R19 1 0
      239 GETUPVAL                         R19 16
      240 GETTABLEKS                       R19 R19 K8 ["useProducer"]
      242 MOVE                             R20 R12
      243 CALL                             R19 1 0
      244 GETUPVAL                         R19 17
      245 GETTABLEKS                       R19 R19 K8 ["useProducer"]
      247 MOVE                             R20 R13
      248 CALL                             R19 1 0
      249 GETUPVAL                         R19 18
      250 GETTABLEKS                       R19 R19 K8 ["useProducer"]
      252 MOVE                             R20 R14
      253 CALL                             R19 1 0
      254 GETUPVAL                         R19 19
      255 GETTABLEKS                       R19 R19 K8 ["useProducer"]
      257 MOVE                             R20 R15
      258 CALL                             R19 1 0
      259 GETUPVAL                         R19 20
      260 GETTABLEKS                       R19 R19 K8 ["useProducer"]
      262 MOVE                             R20 R16
      263 CALL                             R19 1 0
      264 GETUPVAL                         R19 21
      265 GETTABLEKS                       R19 R19 K8 ["useProducer"]
      267 MOVE                             R20 R17
      268 CALL                             R19 1 0
      269 GETUPVAL                         R19 0
      270 GETTABLEKS                       R19 R19 K9 ["createElement"]
      272 GETUPVAL                         R20 22
      273 GETTABLEKS                       R20 R20 K10 ["Provider"]
      275 DUPTABLE                         R21 K12 [{"value"}]
      276 SETTABLEKS                       R18 R21 K11 ["value"]
      278 GETTABLEKS                       R22 R0 K13 ["children"]
      280 CALL                             R19 3 -1
      281 RETURN                           R19 -1

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
      127 GETTABLEKS                       R17 R1 K25 ["Components"]
      129 GETTABLEKS                       R17 R17 K26 ["NodeView"]
      131 GETTABLEKS                       R17 R17 K27 ["StateMachine"]
      133 GETTABLEKS                       R17 R17 K33 ["supportsStateMachineNode"]
      135 CALL                             R16 1 1
      136 GETTABLEKS                       R17 R4 K34 ["createReplicatedState"]
      138 LOADK                            R18 K35 ["StateMachineEditorContext_StateMachines"]
      139 CALL                             R17 1 1
      140 GETTABLEKS                       R18 R4 K36 ["createBoundAction"]
      142 LOADK                            R19 K37 ["StateMachineEditorContext_CreateStateAsync"]
      143 CALL                             R18 1 1
      144 GETTABLEKS                       R19 R4 K36 ["createBoundAction"]
      146 LOADK                            R20 K38 ["StateMachineEditorContext_DeleteStatesAsync"]
      147 CALL                             R19 1 1
      148 GETTABLEKS                       R20 R4 K36 ["createBoundAction"]
      150 LOADK                            R21 K39 ["StateMachineEditorContext_MoveStatesAsync"]
      151 CALL                             R20 1 1
      152 GETTABLEKS                       R21 R4 K36 ["createBoundAction"]
      154 LOADK                            R22 K40 ["StateMachineEditorContext_RenameStateAsync"]
      155 CALL                             R21 1 1
      156 GETTABLEKS                       R22 R4 K36 ["createBoundAction"]
      158 LOADK                            R23 K41 ["StateMachineEditorContext_CreateTransitionAsync"]
      159 CALL                             R22 1 1
      160 GETTABLEKS                       R23 R4 K36 ["createBoundAction"]
      162 LOADK                            R24 K42 ["StateMachineEditorContext_CreateStateAndTransitionAsync"]
      163 CALL                             R23 1 1
      164 GETTABLEKS                       R24 R4 K36 ["createBoundAction"]
      166 LOADK                            R25 K43 ["StateMachineEditorContext_DeleteTransitionAsync"]
      167 CALL                             R24 1 1
      168 GETTABLEKS                       R25 R4 K36 ["createBoundAction"]
      170 LOADK                            R26 K44 ["StateMachineEditorContext_SetTransitionFieldAsync"]
      171 CALL                             R25 1 1
      172 DUPTABLE                         R26 K54 [{"createStateAsync", "deleteStatesAsync", "moveStatesAsync", "renameStateAsync", "createTransitionAsync", "createStateAndTransitionAsync", "deleteTransitionAsync", "setTransitionFieldAsync", "stateMachines"}]
      173 GETTABLEKS                       R27 R6 K55 ["createUnimplemented"]
      175 LOADK                            R28 K45 ["createStateAsync"]
      176 CALL                             R27 1 1
      177 SETTABLEKS                       R27 R26 K45 ["createStateAsync"]
      179 GETTABLEKS                       R27 R6 K55 ["createUnimplemented"]
      181 LOADK                            R28 K46 ["deleteStatesAsync"]
      182 CALL                             R27 1 1
      183 SETTABLEKS                       R27 R26 K46 ["deleteStatesAsync"]
      185 GETTABLEKS                       R27 R6 K55 ["createUnimplemented"]
      187 LOADK                            R28 K47 ["moveStatesAsync"]
      188 CALL                             R27 1 1
      189 SETTABLEKS                       R27 R26 K47 ["moveStatesAsync"]
      191 GETTABLEKS                       R27 R6 K55 ["createUnimplemented"]
      193 LOADK                            R28 K48 ["renameStateAsync"]
      194 CALL                             R27 1 1
      195 SETTABLEKS                       R27 R26 K48 ["renameStateAsync"]
      197 GETTABLEKS                       R27 R6 K55 ["createUnimplemented"]
      199 LOADK                            R28 K49 ["createTransitionAsync"]
      200 CALL                             R27 1 1
      201 SETTABLEKS                       R27 R26 K49 ["createTransitionAsync"]
      203 GETTABLEKS                       R27 R6 K55 ["createUnimplemented"]
      205 LOADK                            R28 K50 ["createStateAndTransitionAsync"]
      206 CALL                             R27 1 1
      207 SETTABLEKS                       R27 R26 K50 ["createStateAndTransitionAsync"]
      209 GETTABLEKS                       R27 R6 K55 ["createUnimplemented"]
      211 LOADK                            R28 K51 ["deleteTransitionAsync"]
      212 CALL                             R27 1 1
      213 SETTABLEKS                       R27 R26 K51 ["deleteTransitionAsync"]
      215 GETTABLEKS                       R27 R6 K55 ["createUnimplemented"]
      217 LOADK                            R28 K52 ["setTransitionFieldAsync"]
      218 CALL                             R27 1 1
      219 SETTABLEKS                       R27 R26 K52 ["setTransitionFieldAsync"]
      221 NEWTABLE                         R27 0 0
      223 SETTABLEKS                       R27 R26 K53 ["stateMachines"]
      225 GETTABLEKS                       R27 R5 K56 ["createContext"]
      227 MOVE                             R28 R26
      228 CALL                             R27 1 1
      229 LOADK                            R28 K57 ["StateMachineEditorContext"]
      230 SETTABLEKS                       R28 R27 K58 ["displayName"]
      232 DUPCLOSURE                       R28 K59 [PROTO_1]
      233 CAPTURE                          VAL R13
      234 CAPTURE                          VAL R12
      235 CAPTURE                          VAL R8
      236 DUPCLOSURE                       R29 K60 [PROTO_29]
      237 CAPTURE                          VAL R5
      238 CAPTURE                          VAL R3
      239 CAPTURE                          VAL R7
      240 CAPTURE                          VAL R2
      241 CAPTURE                          VAL R10
      242 CAPTURE                          VAL R15
      243 CAPTURE                          VAL R16
      244 CAPTURE                          VAL R28
      245 CAPTURE                          VAL R8
      246 CAPTURE                          VAL R9
      247 CAPTURE                          VAL R0
      248 CAPTURE                          VAL R12
      249 CAPTURE                          VAL R14
      250 CAPTURE                          VAL R17
      251 CAPTURE                          VAL R18
      252 CAPTURE                          VAL R19
      253 CAPTURE                          VAL R20
      254 CAPTURE                          VAL R21
      255 CAPTURE                          VAL R22
      256 CAPTURE                          VAL R23
      257 CAPTURE                          VAL R24
      258 CAPTURE                          VAL R25
      259 CAPTURE                          VAL R27
      260 DUPCLOSURE                       R30 K61 [PROTO_31]
      261 CAPTURE                          VAL R18
      262 CAPTURE                          VAL R19
      263 CAPTURE                          VAL R20
      264 CAPTURE                          VAL R21
      265 CAPTURE                          VAL R22
      266 CAPTURE                          VAL R23
      267 CAPTURE                          VAL R24
      268 CAPTURE                          VAL R25
      269 CAPTURE                          VAL R17
      270 CAPTURE                          VAL R5
      271 CAPTURE                          VAL R27
      272 DUPTABLE                         R31 K65 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      273 SETTABLEKS                       R27 R31 K62 ["Context"]
      275 SETTABLEKS                       R29 R31 K63 ["EditableDataModelProvider"]
      277 SETTABLEKS                       R30 R31 K64 ["UIDataModelProvider"]
      279 RETURN                           R31 1
