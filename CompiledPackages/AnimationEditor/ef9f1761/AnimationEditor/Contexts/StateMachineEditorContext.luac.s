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
       17 GETUPVAL                         R5 2
       18 CALL                             R5 0 1
       19 JUMPIFNOT                        R5 ; [+5]
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R5 R5 K3 ["markDirtyFromChild"]
       23 MOVE                             R6 R3
       24 CALL                             R5 1 0
       25 JUMPIFNOT                        R4 ; [+7]
       26 GETUPVAL                         R5 1
       27 MOVE                             R7 R4
       28 GETIMPORT                        R8 K7 [Enum.FinishRecordingOperation.Commit]
       30 NAMECALL                         R5 R5 K8 ["FinishRecording"]
       32 CALL                             R5 3 0
       33 RETURN                           R0 0

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
       80 CAPTURE                          UPVAL U11
       81 CAPTURE                          UPVAL U12
       82 NEWTABLE                         R11 0 1
       84 MOVE                             R12 R3
       85 SETLIST                          R11 R12 1 [1]
       87 CALL                             R9 2 1
       88 GETUPVAL                         R10 0
       89 GETTABLEKS                       R10 R10 K7 ["useCallback"]
       91 NEWCLOSURE                       R11 P5
       92 CAPTURE                          VAL R9
       93 CAPTURE                          UPVAL U13
       94 CAPTURE                          VAL R3
       95 NEWTABLE                         R12 0 2
       97 MOVE                             R13 R9
       98 MOVE                             R14 R3
       99 SETLIST                          R12 R13 2 [1]
      101 CALL                             R10 2 1
      102 GETUPVAL                         R11 0
      103 GETTABLEKS                       R11 R11 K7 ["useCallback"]
      105 NEWCLOSURE                       R12 P6
      106 CAPTURE                          VAL R9
      107 CAPTURE                          UPVAL U13
      108 CAPTURE                          VAL R3
      109 NEWTABLE                         R13 0 2
      111 MOVE                             R14 R9
      112 MOVE                             R15 R3
      113 SETLIST                          R13 R14 2 [1]
      115 CALL                             R11 2 1
      116 GETUPVAL                         R12 0
      117 GETTABLEKS                       R12 R12 K7 ["useCallback"]
      119 NEWCLOSURE                       R13 P7
      120 CAPTURE                          VAL R9
      121 CAPTURE                          UPVAL U13
      122 CAPTURE                          VAL R3
      123 NEWTABLE                         R14 0 2
      125 MOVE                             R15 R9
      126 MOVE                             R16 R3
      127 SETLIST                          R14 R15 2 [1]
      129 CALL                             R12 2 1
      130 GETUPVAL                         R13 0
      131 GETTABLEKS                       R13 R13 K7 ["useCallback"]
      133 NEWCLOSURE                       R14 P8
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R9
      136 CAPTURE                          UPVAL U14
      137 CAPTURE                          VAL R1
      138 CAPTURE                          UPVAL U13
      139 NEWTABLE                         R15 0 3
      141 MOVE                             R16 R9
      142 MOVE                             R17 R3
      143 MOVE                             R18 R1
      144 SETLIST                          R15 R16 3 [1]
      146 CALL                             R13 2 1
      147 GETUPVAL                         R14 0
      148 GETTABLEKS                       R14 R14 K7 ["useCallback"]
      150 NEWCLOSURE                       R15 P9
      151 CAPTURE                          VAL R9
      152 CAPTURE                          UPVAL U13
      153 CAPTURE                          VAL R3
      154 NEWTABLE                         R16 0 2
      156 MOVE                             R17 R9
      157 MOVE                             R18 R3
      158 SETLIST                          R16 R17 2 [1]
      160 CALL                             R14 2 1
      161 GETUPVAL                         R15 0
      162 GETTABLEKS                       R15 R15 K7 ["useCallback"]
      164 NEWCLOSURE                       R16 P10
      165 CAPTURE                          VAL R9
      166 CAPTURE                          UPVAL U13
      167 CAPTURE                          VAL R3
      168 NEWTABLE                         R17 0 2
      170 MOVE                             R18 R9
      171 MOVE                             R19 R3
      172 SETLIST                          R17 R18 2 [1]
      174 CALL                             R15 2 1
      175 GETUPVAL                         R16 0
      176 GETTABLEKS                       R16 R16 K7 ["useCallback"]
      178 NEWCLOSURE                       R17 P11
      179 CAPTURE                          VAL R9
      180 CAPTURE                          UPVAL U13
      181 NEWTABLE                         R18 0 1
      183 MOVE                             R19 R9
      184 SETLIST                          R18 R19 1 [1]
      186 CALL                             R16 2 1
      187 GETUPVAL                         R17 0
      188 GETTABLEKS                       R17 R17 K7 ["useCallback"]
      190 NEWCLOSURE                       R18 P12
      191 CAPTURE                          VAL R9
      192 CAPTURE                          UPVAL U13
      193 NEWTABLE                         R19 0 1
      195 MOVE                             R20 R9
      196 SETLIST                          R19 R20 1 [1]
      198 CALL                             R17 2 1
      199 GETUPVAL                         R18 0
      200 GETTABLEKS                       R18 R18 K4 ["useMemo"]
      202 NEWCLOSURE                       R19 P13
      203 CAPTURE                          VAL R10
      204 CAPTURE                          VAL R11
      205 CAPTURE                          VAL R12
      206 CAPTURE                          VAL R13
      207 CAPTURE                          VAL R14
      208 CAPTURE                          VAL R15
      209 CAPTURE                          VAL R16
      210 CAPTURE                          VAL R17
      211 CAPTURE                          VAL R7
      212 NEWTABLE                         R20 0 9
      214 MOVE                             R21 R10
      215 MOVE                             R22 R11
      216 MOVE                             R23 R12
      217 MOVE                             R24 R13
      218 MOVE                             R25 R14
      219 MOVE                             R26 R15
      220 MOVE                             R27 R16
      221 MOVE                             R28 R17
      222 MOVE                             R29 R7
      223 SETLIST                          R20 R21 9 [1]
      225 CALL                             R18 2 1
      226 GETUPVAL                         R19 15
      227 GETTABLEKS                       R19 R19 K8 ["useProducer"]
      229 MOVE                             R20 R7
      230 CALL                             R19 1 0
      231 GETUPVAL                         R19 16
      232 GETTABLEKS                       R19 R19 K8 ["useProducer"]
      234 MOVE                             R20 R10
      235 CALL                             R19 1 0
      236 GETUPVAL                         R19 17
      237 GETTABLEKS                       R19 R19 K8 ["useProducer"]
      239 MOVE                             R20 R11
      240 CALL                             R19 1 0
      241 GETUPVAL                         R19 18
      242 GETTABLEKS                       R19 R19 K8 ["useProducer"]
      244 MOVE                             R20 R12
      245 CALL                             R19 1 0
      246 GETUPVAL                         R19 19
      247 GETTABLEKS                       R19 R19 K8 ["useProducer"]
      249 MOVE                             R20 R13
      250 CALL                             R19 1 0
      251 GETUPVAL                         R19 20
      252 GETTABLEKS                       R19 R19 K8 ["useProducer"]
      254 MOVE                             R20 R14
      255 CALL                             R19 1 0
      256 GETUPVAL                         R19 21
      257 GETTABLEKS                       R19 R19 K8 ["useProducer"]
      259 MOVE                             R20 R15
      260 CALL                             R19 1 0
      261 GETUPVAL                         R19 22
      262 GETTABLEKS                       R19 R19 K8 ["useProducer"]
      264 MOVE                             R20 R16
      265 CALL                             R19 1 0
      266 GETUPVAL                         R19 23
      267 GETTABLEKS                       R19 R19 K8 ["useProducer"]
      269 MOVE                             R20 R17
      270 CALL                             R19 1 0
      271 GETUPVAL                         R19 0
      272 GETTABLEKS                       R19 R19 K9 ["createElement"]
      274 GETUPVAL                         R20 24
      275 GETTABLEKS                       R20 R20 K10 ["Provider"]
      277 DUPTABLE                         R21 K12 [{"value"}]
      278 SETTABLEKS                       R18 R21 K11 ["value"]
      280 GETTABLEKS                       R22 R0 K13 ["children"]
      282 CALL                             R19 3 -1
      283 RETURN                           R19 -1

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
       17 GETTABLEKS                       R3 R3 K11 ["GraphDirtyStateContext"]
       19 GETTABLEKS                       R3 R3 K12 ["GraphDirtyUtils"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K10 ["Contexts"]
       26 GETTABLEKS                       R4 R4 K13 ["InstanceRegistryContext"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K10 ["Contexts"]
       33 GETTABLEKS                       R5 R5 K14 ["NativeGraphContext"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K15 ["Util"]
       40 GETTABLEKS                       R6 R6 K16 ["Networking"]
       42 GETTABLEKS                       R6 R6 K17 ["NetworkUtils"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K18 ["Parent"]
       49 GETTABLEKS                       R7 R7 K19 ["React"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R1 K18 ["Parent"]
       56 GETTABLEKS                       R8 R8 K20 ["ReactUtils"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R1 K10 ["Contexts"]
       63 GETTABLEKS                       R9 R9 K21 ["SelectedGraphContext"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R10 R1 K15 ["Util"]
       70 GETTABLEKS                       R10 R10 K22 ["Signals"]
       72 GETTABLEKS                       R10 R10 K23 ["Experimental"]
       74 GETTABLEKS                       R10 R10 K24 ["SignalExperimentalUtils"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K9 [require]
       79 GETTABLEKS                       R11 R1 K18 ["Parent"]
       81 GETTABLEKS                       R11 R11 K22 ["Signals"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K9 [require]
       86 GETTABLEKS                       R12 R1 K15 ["Util"]
       88 GETTABLEKS                       R12 R12 K22 ["Signals"]
       90 GETTABLEKS                       R12 R12 K25 ["SignalsInstanceUtils"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K9 [require]
       95 GETTABLEKS                       R13 R1 K18 ["Parent"]
       97 GETTABLEKS                       R13 R13 K26 ["StateMachineGraphing"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K9 [require]
      102 GETTABLEKS                       R14 R1 K27 ["Components"]
      104 GETTABLEKS                       R14 R14 K28 ["NodeView"]
      106 GETTABLEKS                       R14 R14 K29 ["StateMachine"]
      108 GETTABLEKS                       R14 R14 K30 ["StateMachineMaterializer"]
      110 CALL                             R13 1 1
      111 GETIMPORT                        R14 K9 [require]
      113 GETTABLEKS                       R15 R1 K15 ["Util"]
      115 GETTABLEKS                       R15 R15 K22 ["Signals"]
      117 GETTABLEKS                       R15 R15 K31 ["TypedInstanceSignals"]
      119 CALL                             R14 1 1
      120 GETIMPORT                        R15 K9 [require]
      122 GETTABLEKS                       R16 R1 K32 ["Flags"]
      124 GETTABLEKS                       R16 R16 K33 ["getFFlagAnimGraphUIInputIds"]
      126 CALL                             R15 1 1
      127 GETIMPORT                        R16 K9 [require]
      129 GETTABLEKS                       R17 R1 K32 ["Flags"]
      131 GETTABLEKS                       R17 R17 K34 ["getFFlagAnimGraphUI_FixUndoHistory"]
      133 CALL                             R16 1 1
      134 GETIMPORT                        R17 K9 [require]
      136 GETTABLEKS                       R18 R1 K32 ["Flags"]
      138 GETTABLEKS                       R18 R18 K35 ["getFFlagAnimGraphUI_PoseStateMachineNode"]
      140 CALL                             R17 1 1
      141 GETIMPORT                        R18 K9 [require]
      143 GETTABLEKS                       R19 R1 K27 ["Components"]
      145 GETTABLEKS                       R19 R19 K28 ["NodeView"]
      147 GETTABLEKS                       R19 R19 K29 ["StateMachine"]
      149 GETTABLEKS                       R19 R19 K36 ["supportsStateMachineNode"]
      151 CALL                             R18 1 1
      152 GETTABLEKS                       R19 R5 K37 ["createReplicatedState"]
      154 LOADK                            R20 K38 ["StateMachineEditorContext_StateMachines"]
      155 CALL                             R19 1 1
      156 GETTABLEKS                       R20 R5 K39 ["createBoundAction"]
      158 LOADK                            R21 K40 ["StateMachineEditorContext_CreateStateAsync"]
      159 CALL                             R20 1 1
      160 GETTABLEKS                       R21 R5 K39 ["createBoundAction"]
      162 LOADK                            R22 K41 ["StateMachineEditorContext_DeleteStatesAsync"]
      163 CALL                             R21 1 1
      164 GETTABLEKS                       R22 R5 K39 ["createBoundAction"]
      166 LOADK                            R23 K42 ["StateMachineEditorContext_MoveStatesAsync"]
      167 CALL                             R22 1 1
      168 GETTABLEKS                       R23 R5 K39 ["createBoundAction"]
      170 LOADK                            R24 K43 ["StateMachineEditorContext_RenameStateAsync"]
      171 CALL                             R23 1 1
      172 GETTABLEKS                       R24 R5 K39 ["createBoundAction"]
      174 LOADK                            R25 K44 ["StateMachineEditorContext_CreateTransitionAsync"]
      175 CALL                             R24 1 1
      176 GETTABLEKS                       R25 R5 K39 ["createBoundAction"]
      178 LOADK                            R26 K45 ["StateMachineEditorContext_CreateStateAndTransitionAsync"]
      179 CALL                             R25 1 1
      180 GETTABLEKS                       R26 R5 K39 ["createBoundAction"]
      182 LOADK                            R27 K46 ["StateMachineEditorContext_DeleteTransitionAsync"]
      183 CALL                             R26 1 1
      184 GETTABLEKS                       R27 R5 K39 ["createBoundAction"]
      186 LOADK                            R28 K47 ["StateMachineEditorContext_SetTransitionFieldAsync"]
      187 CALL                             R27 1 1
      188 DUPTABLE                         R28 K57 [{"createStateAsync", "deleteStatesAsync", "moveStatesAsync", "renameStateAsync", "createTransitionAsync", "createStateAndTransitionAsync", "deleteTransitionAsync", "setTransitionFieldAsync", "stateMachines"}]
      189 GETTABLEKS                       R29 R7 K58 ["createUnimplemented"]
      191 LOADK                            R30 K48 ["createStateAsync"]
      192 CALL                             R29 1 1
      193 SETTABLEKS                       R29 R28 K48 ["createStateAsync"]
      195 GETTABLEKS                       R29 R7 K58 ["createUnimplemented"]
      197 LOADK                            R30 K49 ["deleteStatesAsync"]
      198 CALL                             R29 1 1
      199 SETTABLEKS                       R29 R28 K49 ["deleteStatesAsync"]
      201 GETTABLEKS                       R29 R7 K58 ["createUnimplemented"]
      203 LOADK                            R30 K50 ["moveStatesAsync"]
      204 CALL                             R29 1 1
      205 SETTABLEKS                       R29 R28 K50 ["moveStatesAsync"]
      207 GETTABLEKS                       R29 R7 K58 ["createUnimplemented"]
      209 LOADK                            R30 K51 ["renameStateAsync"]
      210 CALL                             R29 1 1
      211 SETTABLEKS                       R29 R28 K51 ["renameStateAsync"]
      213 GETTABLEKS                       R29 R7 K58 ["createUnimplemented"]
      215 LOADK                            R30 K52 ["createTransitionAsync"]
      216 CALL                             R29 1 1
      217 SETTABLEKS                       R29 R28 K52 ["createTransitionAsync"]
      219 GETTABLEKS                       R29 R7 K58 ["createUnimplemented"]
      221 LOADK                            R30 K53 ["createStateAndTransitionAsync"]
      222 CALL                             R29 1 1
      223 SETTABLEKS                       R29 R28 K53 ["createStateAndTransitionAsync"]
      225 GETTABLEKS                       R29 R7 K58 ["createUnimplemented"]
      227 LOADK                            R30 K54 ["deleteTransitionAsync"]
      228 CALL                             R29 1 1
      229 SETTABLEKS                       R29 R28 K54 ["deleteTransitionAsync"]
      231 GETTABLEKS                       R29 R7 K58 ["createUnimplemented"]
      233 LOADK                            R30 K55 ["setTransitionFieldAsync"]
      234 CALL                             R29 1 1
      235 SETTABLEKS                       R29 R28 K55 ["setTransitionFieldAsync"]
      237 NEWTABLE                         R29 0 0
      239 SETTABLEKS                       R29 R28 K56 ["stateMachines"]
      241 GETTABLEKS                       R29 R6 K59 ["createContext"]
      243 MOVE                             R30 R28
      244 CALL                             R29 1 1
      245 LOADK                            R30 K60 ["StateMachineEditorContext"]
      246 SETTABLEKS                       R30 R29 K61 ["displayName"]
      248 DUPCLOSURE                       R30 K62 [PROTO_1]
      249 CAPTURE                          VAL R14
      250 CAPTURE                          VAL R13
      251 CAPTURE                          VAL R9
      252 DUPCLOSURE                       R31 K63 [PROTO_29]
      253 CAPTURE                          VAL R6
      254 CAPTURE                          VAL R4
      255 CAPTURE                          VAL R8
      256 CAPTURE                          VAL R3
      257 CAPTURE                          VAL R11
      258 CAPTURE                          VAL R17
      259 CAPTURE                          VAL R18
      260 CAPTURE                          VAL R30
      261 CAPTURE                          VAL R9
      262 CAPTURE                          VAL R10
      263 CAPTURE                          VAL R0
      264 CAPTURE                          VAL R16
      265 CAPTURE                          VAL R2
      266 CAPTURE                          VAL R13
      267 CAPTURE                          VAL R15
      268 CAPTURE                          VAL R19
      269 CAPTURE                          VAL R20
      270 CAPTURE                          VAL R21
      271 CAPTURE                          VAL R22
      272 CAPTURE                          VAL R23
      273 CAPTURE                          VAL R24
      274 CAPTURE                          VAL R25
      275 CAPTURE                          VAL R26
      276 CAPTURE                          VAL R27
      277 CAPTURE                          VAL R29
      278 DUPCLOSURE                       R32 K64 [PROTO_31]
      279 CAPTURE                          VAL R20
      280 CAPTURE                          VAL R21
      281 CAPTURE                          VAL R22
      282 CAPTURE                          VAL R23
      283 CAPTURE                          VAL R24
      284 CAPTURE                          VAL R25
      285 CAPTURE                          VAL R26
      286 CAPTURE                          VAL R27
      287 CAPTURE                          VAL R19
      288 CAPTURE                          VAL R6
      289 CAPTURE                          VAL R29
      290 DUPTABLE                         R33 K68 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      291 SETTABLEKS                       R29 R33 K65 ["Context"]
      293 SETTABLEKS                       R31 R33 K66 ["EditableDataModelProvider"]
      295 SETTABLEKS                       R32 R33 K67 ["UIDataModelProvider"]
      297 RETURN                           R33 1
