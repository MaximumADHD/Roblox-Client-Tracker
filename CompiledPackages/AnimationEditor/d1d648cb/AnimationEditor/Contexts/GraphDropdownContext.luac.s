PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instanceRegistry"]
        3 GETTABLEKS                       R3 R0 K1 ["id"]
        5 NAMECALL                         R1 R1 K2 ["idToInstance"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["of"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["of"]
        5 LOADNIL                          R2
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["observeFirstNamedChildWhichIsA"]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K2 ["ObjectValue"]
       13 LOADK                            R4 K3 ["AnimSaves"]
       14 CALL                             R1 3 1
       15 RETURN                           R1 1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["of"]
        5 LOADNIL                          R2
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["properties"]
       11 GETTABLEKS                       R1 R1 K2 ["observeInstance"]
       13 MOVE                             R2 R0
       14 LOADK                            R3 K3 ["Value"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+8]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["of"]
        5 NEWTABLE                         R2 0 0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["observeChildrenWhichIsA"]
       12 MOVE                             R2 R0
       13 LOADK                            R3 K2 ["AnimationGraphDefinition"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 MOVE                             R7 R6
        7 LOADNIL                          R8
        8 LOADNIL                          R9
        9 FORGPREP                         R7
       10 LOADB                            R12 1
       11 SETTABLE                         R12 R1 R11
       12 FORGLOOP                         R7 2 ; [-3]
       14 FORGLOOP                         R2 2 ; [-9]
       16 NEWTABLE                         R2 0 0
       18 GETIMPORT                        R3 K1 [pairs]
       20 MOVE                             R4 R1
       21 CALL                             R3 1 3
       22 FORGPREP_NEXT                    R3
       23 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       25 MOVE                             R9 R2
       26 MOVE                             R10 R6
       27 GETIMPORT                        R8 K4 [table.insert]
       29 CALL                             R8 2 0
       30 FORGLOOP                         R3 2 ; [-8]
       32 GETIMPORT                        R3 K6 [table.sort]
       34 MOVE                             R4 R2
       35 DUPCLOSURE                       R5 K7 [PROTO_4]
       36 CALL                             R3 2 0
       37 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFEQKB                       R2 TRUE ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 DUPTABLE                         R2 K4 [{"id", "text", "isDirty", "timestamp"}]
        8 GETUPVAL                         R3 1
        9 SETTABLEKS                       R3 R2 K0 ["id"]
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R0
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R2 K1 ["text"]
       16 SETTABLEKS                       R1 R2 K2 ["isDirty"]
       18 GETUPVAL                         R4 3
       19 MOVE                             R5 R0
       20 CALL                             R4 1 1
       21 ORK                              R3 R4 K5 [0]
       22 SETTABLEKS                       R3 R2 K3 ["timestamp"]
       24 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["properties"]
        3 GETTABLEKS                       R1 R1 K1 ["observeString"]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K2 ["Name"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["attributes"]
       11 GETTABLEKS                       R2 R2 K4 ["observeBoolean"]
       13 MOVE                             R3 R0
       14 LOADK                            R4 K5 ["RBX_GraphDirty"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K3 ["attributes"]
       19 GETTABLEKS                       R3 R3 K6 ["observeNumber"]
       21 MOVE                             R4 R0
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K7 ["TIMESTAMP_ATTRIBUTE_NAME"]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K8 ["instanceRegistry"]
       29 MOVE                             R6 R0
       30 NAMECALL                         R4 R4 K9 ["instanceToId"]
       32 CALL                             R4 2 1
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R5 R5 K10 ["createComputed"]
       36 NEWCLOSURE                       R6 P0
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R3
       41 CALL                             R5 1 -1
       42 RETURN                           R5 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["forEach"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["observeRigReferences"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U0
        9 CALL                             R0 2 1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["forEach"]
       13 MOVE                             R2 R0
       14 DUPCLOSURE                       R3 K2 [PROTO_1]
       15 CAPTURE                          UPVAL U0
       16 CALL                             R1 2 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K0 ["forEach"]
       20 MOVE                             R3 R1
       21 DUPCLOSURE                       R4 K3 [PROTO_2]
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U3
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K0 ["forEach"]
       28 MOVE                             R4 R2
       29 DUPCLOSURE                       R5 K4 [PROTO_3]
       30 CAPTURE                          UPVAL U0
       31 CALL                             R3 2 1
       32 GETUPVAL                         R4 4
       33 GETTABLEKS                       R4 R4 K5 ["createComputed"]
       35 NEWCLOSURE                       R5 P4
       36 CAPTURE                          VAL R3
       37 CALL                             R4 1 1
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K0 ["forEach"]
       41 MOVE                             R6 R4
       42 NEWCLOSURE                       R7 P5
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U4
       47 CALL                             R5 2 1
       48 RETURN                           R5 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["useContext"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["Context"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["useContext"]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K1 ["Context"]
       20 CALL                             R2 1 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U7
       31 NEWTABLE                         R5 0 3
       33 GETTABLEKS                       R6 R1 K3 ["observeRigReferences"]
       35 GETTABLEKS                       R7 R2 K4 ["instanceRegistry"]
       37 GETUPVAL                         R9 8
       38 CALL                             R9 0 1
       39 JUMPIFNOT                        R9 ; [+2]
       40 LOADNIL                          R8
       41 JUMP                             ; [+2]
       42 GETTABLEKS                       R8 R0 K5 ["selectionService"]
       44 SETLIST                          R5 R6 3 [1]
       46 CALL                             R3 2 -1
       47 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeAllGraphItems"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["instanceRegistry"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["observeSelectedGraphInstanceId"]
        9 GETUPVAL                         R3 3
       10 CALL                             R0 3 -1
       11 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setSelectedGraphInstance"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instanceRegistry"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["idToInstance"]
        6 CALL                             R1 2 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+7]
        9 GETIMPORT                        R2 K3 [warn]
       11 LOADK                            R3 K4 ["GraphDropdownContext: selectGraphByIdAsync: No instance found with id"]
       12 MOVE                             R4 R0
       13 CALL                             R2 2 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R3 1
       16 CALL                             R3 0 1
       17 JUMPIFNOT                        R3 ; [+6]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K5 ["observeSelectedGraphInstance"]
       21 LOADB                            R3 0
       22 CALL                             R2 1 1
       23 JUMP                             ; [+5]
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R2 R2 K6 ["observeSelectedGraphInstance_DEPRECATED"]
       27 LOADB                            R3 0
       28 CALL                             R2 1 1
       29 JUMPIFNOTEQ                      R2 R1 ; [+2]
       31 RETURN                           R0 0
       32 GETUPVAL                         R3 4
       33 GETTABLEKS                       R3 R3 K7 ["updateGraphTimestamp"]
       35 MOVE                             R4 R1
       36 CALL                             R3 1 0
       37 GETUPVAL                         R3 1
       38 CALL                             R3 0 1
       39 JUMPIFNOT                        R3 ; [+22]
       40 GETUPVAL                         R4 5
       41 CALL                             R4 0 1
       42 JUMPIFNOT                        R4 ; [+6]
       43 GETUPVAL                         R3 6
       44 GETTABLEKS                       R3 R3 K8 ["getClassName"]
       46 GETUPVAL                         R4 7
       47 CALL                             R3 1 1
       48 JUMP                             ; [+1]
       49 LOADK                            R3 K9 ["AnimationGraphDefinition"]
       50 MOVE                             R6 R3
       51 NAMECALL                         R4 R1 K10 ["IsA"]
       53 CALL                             R4 2 1
       54 JUMPIFNOT                        R4 ; [+18]
       55 GETIMPORT                        R4 K13 [task.spawn]
       57 NEWCLOSURE                       R5 P0
       58 CAPTURE                          UPVAL U2
       59 CAPTURE                          VAL R1
       60 CALL                             R4 1 0
       61 RETURN                           R0 0
       62 GETUPVAL                         R3 8
       63 GETTABLEKS                       R3 R3 K14 ["selectionService"]
       65 NEWTABLE                         R5 0 1
       67 MOVE                             R6 R1
       68 SETLIST                          R5 R6 1 [1]
       70 NAMECALL                         R3 R3 K15 ["Set"]
       72 CALL                             R3 2 0
       73 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["instanceRegistry"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K1 ["idToInstance"]
        6 CALL                             R2 2 1
        7 JUMPIFNOTEQKNIL                  R2 ; [+7]
        9 GETIMPORT                        R3 K3 [warn]
       11 LOADK                            R4 K4 ["GraphDropdownContext: renameGraphByIdAsync: No instance found with id"]
       12 MOVE                             R5 R0
       13 CALL                             R3 2 0
       14 RETURN                           R0 0
       15 SETTABLEKS                       R1 R2 K5 ["Name"]
       17 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R0 K4 [{"graphItems", "selectedGraphId_DEPRECATED", "selectGraphByIdAsync", "renameGraphByIdAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["graphItems"]
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+2]
        7 LOADNIL                          R1
        8 JUMP                             ; [+1]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K1 ["selectedGraphId_DEPRECATED"]
       12 GETUPVAL                         R1 3
       13 SETTABLEKS                       R1 R0 K2 ["selectGraphByIdAsync"]
       15 GETUPVAL                         R1 4
       16 SETTABLEKS                       R1 R0 K3 ["renameGraphByIdAsync"]
       18 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+10]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["useContext"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Context"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R1 R1 K2 ["assetType"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R1
       14 GETUPVAL                         R3 3
       15 CALL                             R3 0 1
       16 JUMPIFNOT                        R3 ; [+8]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K0 ["useContext"]
       20 GETUPVAL                         R3 4
       21 GETTABLEKS                       R3 R3 K1 ["Context"]
       23 CALL                             R2 1 1
       24 JUMP                             ; [+1]
       25 LOADNIL                          R2
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K0 ["useContext"]
       29 GETUPVAL                         R4 5
       30 GETTABLEKS                       R4 R4 K1 ["Context"]
       32 CALL                             R3 1 1
       33 GETUPVAL                         R5 3
       34 CALL                             R5 0 1
       35 JUMPIFNOT                        R5 ; [+2]
       36 LOADNIL                          R4
       37 JUMP                             ; [+7]
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R4 R4 K0 ["useContext"]
       41 GETUPVAL                         R5 6
       42 GETTABLEKS                       R5 R5 K1 ["Context"]
       44 CALL                             R4 1 1
       45 GETUPVAL                         R5 1
       46 GETTABLEKS                       R5 R5 K0 ["useContext"]
       48 GETUPVAL                         R6 7
       49 GETTABLEKS                       R6 R6 K1 ["Context"]
       51 CALL                             R5 1 1
       52 GETUPVAL                         R6 1
       53 GETTABLEKS                       R6 R6 K0 ["useContext"]
       55 GETUPVAL                         R7 8
       56 GETTABLEKS                       R7 R7 K1 ["Context"]
       58 CALL                             R6 1 1
       59 GETUPVAL                         R7 9
       60 GETTABLEKS                       R7 R7 K3 ["useSignalState"]
       62 GETUPVAL                         R9 3
       63 CALL                             R9 0 1
       64 JUMPIFNOT                        R9 ; [+24]
       65 GETUPVAL                         R8 1
       66 GETTABLEKS                       R8 R8 K4 ["useMemo"]
       68 NEWCLOSURE                       R9 P0
       69 CAPTURE                          UPVAL U10
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R1
       73 NEWTABLE                         R10 0 3
       75 GETTABLEKS                       R11 R5 K5 ["instanceRegistry"]
       77 GETTABLEKS                       R12 R2 K6 ["observeSelectedGraphInstanceId"]
       79 GETUPVAL                         R14 0
       80 CALL                             R14 0 1
       81 JUMPIFNOT                        R14 ; [+2]
       82 MOVE                             R13 R1
       83 JUMP                             ; [+1]
       84 LOADNIL                          R13
       85 SETLIST                          R10 R11 3 [1]
       87 CALL                             R8 2 1
       88 JUMP                             ; [+2]
       89 GETUPVAL                         R8 11
       90 CALL                             R8 0 1
       91 CALL                             R7 1 1
       92 GETUPVAL                         R8 1
       93 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       95 NEWCLOSURE                       R9 P1
       96 CAPTURE                          VAL R5
       97 CAPTURE                          UPVAL U3
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R6
      101 CAPTURE                          UPVAL U0
      102 CAPTURE                          UPVAL U12
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R4
      105 NEWTABLE                         R10 0 5
      107 GETTABLEKS                       R11 R5 K5 ["instanceRegistry"]
      109 GETUPVAL                         R13 3
      110 CALL                             R13 0 1
      111 JUMPIFNOT                        R13 ; [+3]
      112 GETTABLEKS                       R12 R2 K8 ["setSelectedGraphInstance"]
      114 JUMP                             ; [+2]
      115 GETTABLEKS                       R12 R4 K9 ["selectionService"]
      117 GETUPVAL                         R14 3
      118 CALL                             R14 0 1
      119 JUMPIFNOT                        R14 ; [+3]
      120 GETTABLEKS                       R13 R2 K10 ["observeSelectedGraphInstance"]
      122 JUMP                             ; [+2]
      123 GETTABLEKS                       R13 R3 K11 ["observeSelectedGraphInstance_DEPRECATED"]
      125 GETTABLEKS                       R14 R6 K12 ["updateGraphTimestamp"]
      127 GETUPVAL                         R16 0
      128 CALL                             R16 0 1
      129 JUMPIFNOT                        R16 ; [+2]
      130 MOVE                             R15 R1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R15
      133 SETLIST                          R10 R11 5 [1]
      135 CALL                             R8 2 1
      136 GETUPVAL                         R9 1
      137 GETTABLEKS                       R9 R9 K7 ["useCallback"]
      139 NEWCLOSURE                       R10 P2
      140 CAPTURE                          VAL R5
      141 NEWTABLE                         R11 0 1
      143 GETTABLEKS                       R12 R5 K5 ["instanceRegistry"]
      145 SETLIST                          R11 R12 1 [1]
      147 CALL                             R9 2 1
      148 GETUPVAL                         R11 3
      149 CALL                             R11 0 1
      150 JUMPIFNOT                        R11 ; [+2]
      151 LOADNIL                          R10
      152 JUMP                             ; [+2]
      153 GETTABLEKS                       R10 R3 K13 ["selectedGraphInstanceId_DEPRECATED"]
      155 GETUPVAL                         R11 13
      156 GETTABLEKS                       R11 R11 K14 ["useBoundAction"]
      158 LOADK                            R12 K15 ["GraphDropdownContext_SelectGraphByIdAsync"]
      159 MOVE                             R13 R8
      160 CALL                             R11 2 0
      161 GETUPVAL                         R11 13
      162 GETTABLEKS                       R11 R11 K14 ["useBoundAction"]
      164 LOADK                            R12 K16 ["GraphDropdownContext_RenameGraphByIdAsync"]
      165 MOVE                             R13 R9
      166 CALL                             R11 2 0
      167 GETUPVAL                         R11 13
      168 GETTABLEKS                       R11 R11 K17 ["useReplicatedState"]
      170 LOADK                            R12 K18 ["GraphDropdownContext_GraphItems"]
      171 MOVE                             R13 R7
      172 CALL                             R11 2 0
      173 GETUPVAL                         R11 3
      174 CALL                             R11 0 1
      175 JUMPIF                           R11 ; [+6]
      176 GETUPVAL                         R11 13
      177 GETTABLEKS                       R11 R11 K17 ["useReplicatedState"]
      179 LOADK                            R12 K19 ["GraphDropdownContext_SelectedGraphId"]
      180 MOVE                             R13 R10
      181 CALL                             R11 2 0
      182 GETUPVAL                         R11 1
      183 GETTABLEKS                       R11 R11 K4 ["useMemo"]
      185 NEWCLOSURE                       R12 P3
      186 CAPTURE                          VAL R7
      187 CAPTURE                          UPVAL U3
      188 CAPTURE                          VAL R10
      189 CAPTURE                          VAL R8
      190 CAPTURE                          VAL R9
      191 NEWTABLE                         R13 0 4
      193 MOVE                             R14 R7
      194 MOVE                             R15 R10
      195 MOVE                             R16 R8
      196 MOVE                             R17 R9
      197 SETLIST                          R13 R14 4 [1]
      199 CALL                             R11 2 1
      200 GETUPVAL                         R12 1
      201 GETTABLEKS                       R12 R12 K20 ["createElement"]
      203 GETUPVAL                         R13 14
      204 GETTABLEKS                       R13 R13 K21 ["Provider"]
      206 DUPTABLE                         R14 K23 [{"value"}]
      207 SETTABLEKS                       R11 R14 K22 ["value"]
      209 GETTABLEKS                       R15 R0 K24 ["children"]
      211 CALL                             R12 3 -1
      212 RETURN                           R12 -1

PROTO_16:
        0 DUPTABLE                         R0 K4 [{"graphItems", "selectedGraphId_DEPRECATED", "selectGraphByIdAsync", "renameGraphByIdAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["graphItems"]
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+2]
        7 LOADNIL                          R1
        8 JUMP                             ; [+1]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K1 ["selectedGraphId_DEPRECATED"]
       12 GETUPVAL                         R1 3
       13 SETTABLEKS                       R1 R0 K2 ["selectGraphByIdAsync"]
       15 GETUPVAL                         R1 4
       16 SETTABLEKS                       R1 R0 K3 ["renameGraphByIdAsync"]
       18 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useReplicatedStateListener"]
        3 LOADK                            R2 K1 ["GraphDropdownContext_GraphItems"]
        4 NEWTABLE                         R3 0 0
        6 CALL                             R1 2 1
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+2]
       10 LOADNIL                          R2
       11 JUMP                             ; [+6]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["useReplicatedStateListener"]
       15 LOADK                            R3 K2 ["GraphDropdownContext_SelectedGraphId"]
       16 LOADNIL                          R4
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K3 ["useBoundAction"]
       21 LOADK                            R4 K4 ["GraphDropdownContext_SelectGraphByIdAsync"]
       22 CALL                             R3 1 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K3 ["useBoundAction"]
       26 LOADK                            R5 K5 ["GraphDropdownContext_RenameGraphByIdAsync"]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       31 NEWCLOSURE                       R6 P0
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R4
       37 NEWTABLE                         R7 0 4
       39 MOVE                             R8 R1
       40 MOVE                             R9 R2
       41 MOVE                             R10 R3
       42 MOVE                             R11 R4
       43 SETLIST                          R7 R8 4 [1]
       45 CALL                             R5 2 1
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R6 R6 K7 ["createElement"]
       49 GETUPVAL                         R7 3
       50 GETTABLEKS                       R7 R7 K8 ["Provider"]
       52 DUPTABLE                         R8 K10 [{"value"}]
       53 SETTABLEKS                       R5 R8 K9 ["value"]
       55 GETTABLEKS                       R9 R0 K11 ["children"]
       57 CALL                             R6 3 -1
       58 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["GraphDropdownContextUtils"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K8 ["GraphTimestampContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["InstanceRegistryContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K11 ["NativeGraphContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K12 ["Util"]
       41 GETTABLEKS                       R6 R6 K13 ["Networking"]
       43 GETTABLEKS                       R6 R6 K14 ["NetworkUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Contexts"]
       50 GETTABLEKS                       R7 R7 K15 ["OpenableAssetTypeContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Contexts"]
       57 GETTABLEKS                       R8 R8 K15 ["OpenableAssetTypeContext"]
       59 GETTABLEKS                       R8 R8 K16 ["OpenableAssetTypeUtils"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K9 ["Parent"]
       66 GETTABLEKS                       R9 R9 K17 ["React"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K9 ["Parent"]
       73 GETTABLEKS                       R10 R10 K18 ["ReactUtils"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K6 ["Contexts"]
       80 GETTABLEKS                       R11 R11 K19 ["RigListContext"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K6 ["Contexts"]
       87 GETTABLEKS                       R12 R12 K20 ["SelectedGraphContext"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K6 ["Contexts"]
       94 GETTABLEKS                       R13 R13 K21 ["SelectionServiceContext"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K12 ["Util"]
      101 GETTABLEKS                       R14 R14 K22 ["Signals"]
      103 GETTABLEKS                       R14 R14 K23 ["Experimental"]
      105 GETTABLEKS                       R14 R14 K24 ["SignalExperimentalUtils"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K9 ["Parent"]
      112 GETTABLEKS                       R15 R15 K22 ["Signals"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K5 [require]
      117 GETTABLEKS                       R16 R0 K12 ["Util"]
      119 GETTABLEKS                       R16 R16 K22 ["Signals"]
      121 GETTABLEKS                       R16 R16 K25 ["SignalsInstanceUtils"]
      123 CALL                             R15 1 1
      124 GETIMPORT                        R16 K5 [require]
      126 GETTABLEKS                       R17 R0 K9 ["Parent"]
      128 GETTABLEKS                       R17 R17 K26 ["SignalsReact"]
      130 CALL                             R16 1 1
      131 GETIMPORT                        R17 K5 [require]
      133 GETTABLEKS                       R18 R0 K12 ["Util"]
      135 GETTABLEKS                       R18 R18 K22 ["Signals"]
      137 GETTABLEKS                       R18 R18 K27 ["TypedInstanceSignals"]
      139 CALL                             R17 1 1
      140 GETIMPORT                        R18 K5 [require]
      142 GETTABLEKS                       R19 R0 K28 ["Types"]
      144 CALL                             R18 1 1
      145 GETIMPORT                        R19 K5 [require]
      147 GETTABLEKS                       R20 R0 K29 ["Flags"]
      149 GETTABLEKS                       R20 R20 K30 ["getFFlagAnimationEditorAnimationTypes"]
      151 CALL                             R19 1 1
      152 GETIMPORT                        R20 K5 [require]
      154 GETTABLEKS                       R21 R0 K29 ["Flags"]
      156 GETTABLEKS                       R21 R21 K31 ["getFFlagAnimGraphUI_RunTimeDebug"]
      158 CALL                             R20 1 1
      159 DUPTABLE                         R21 K37 [{["graphItems"], ["selectedGraphId_DEPRECATED"] = , ["selectGraphByIdAsync"], ["renameGraphByIdAsync"]}]
      160 GETIMPORT                        R22 K40 [table.freeze]
      162 NEWTABLE                         R23 0 0
      164 CALL                             R22 1 1
      165 SETTABLEKS                       R22 R21 K32 ["graphItems"]
      167 GETTABLEKS                       R22 R9 K41 ["createUnimplemented"]
      169 LOADK                            R23 K35 ["selectGraphByIdAsync"]
      170 CALL                             R22 1 1
      171 SETTABLEKS                       R22 R21 K35 ["selectGraphByIdAsync"]
      173 GETTABLEKS                       R22 R9 K41 ["createUnimplemented"]
      175 LOADK                            R23 K36 ["renameGraphByIdAsync"]
      176 CALL                             R22 1 1
      177 SETTABLEKS                       R22 R21 K36 ["renameGraphByIdAsync"]
      179 GETTABLEKS                       R22 R8 K42 ["createContext"]
      181 MOVE                             R23 R21
      182 CALL                             R22 1 1
      183 DUPTABLE                         R23 K47 [{["GRAPH_ITEMS"] = "GraphDropdownContext_GraphItems", ["SELECTED_GRAPH_ID_DEPRECATED"] = "GraphDropdownContext_SelectedGraphId"}]
      184 DUPTABLE                         R24 K52 [{["SELECT_GRAPH_BY_ID_ASYNC"] = "GraphDropdownContext_SelectGraphByIdAsync", ["RENAME_GRAPH_BY_ID_ASYNC"] = "GraphDropdownContext_RenameGraphByIdAsync"}]
      185 DUPCLOSURE                       R25 K53 [PROTO_9]
      186 CAPTURE                          VAL R8
      187 CAPTURE                          VAL R12
      188 CAPTURE                          VAL R10
      189 CAPTURE                          VAL R3
      190 CAPTURE                          VAL R15
      191 CAPTURE                          VAL R17
      192 CAPTURE                          VAL R13
      193 CAPTURE                          VAL R2
      194 CAPTURE                          VAL R20
      195 DUPCLOSURE                       R26 K54 [PROTO_15]
      196 CAPTURE                          VAL R19
      197 CAPTURE                          VAL R8
      198 CAPTURE                          VAL R6
      199 CAPTURE                          VAL R20
      200 CAPTURE                          VAL R11
      201 CAPTURE                          VAL R4
      202 CAPTURE                          VAL R12
      203 CAPTURE                          VAL R3
      204 CAPTURE                          VAL R2
      205 CAPTURE                          VAL R16
      206 CAPTURE                          VAL R1
      207 CAPTURE                          VAL R25
      208 CAPTURE                          VAL R7
      209 CAPTURE                          VAL R5
      210 CAPTURE                          VAL R22
      211 DUPCLOSURE                       R27 K55 [PROTO_17]
      212 CAPTURE                          VAL R5
      213 CAPTURE                          VAL R20
      214 CAPTURE                          VAL R8
      215 CAPTURE                          VAL R22
      216 DUPTABLE                         R28 K59 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      217 SETTABLEKS                       R22 R28 K56 ["Context"]
      219 SETTABLEKS                       R26 R28 K57 ["EditableDataModelProvider"]
      221 SETTABLEKS                       R27 R28 K58 ["UIDataModelProvider"]
      223 RETURN                           R28 1
