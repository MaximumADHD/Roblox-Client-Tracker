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
       19 CALL                             R4 0 1
       20 JUMPIFNOT                        R4 ; [+7]
       21 GETUPVAL                         R4 4
       22 JUMPIFNOT                        R4 ; [+5]
       23 GETUPVAL                         R4 4
       24 MOVE                             R5 R0
       25 CALL                             R4 1 1
       26 ORK                              R3 R4 K5 [0]
       27 JUMP                             ; [+1]
       28 LOADN                            R3 0
       29 SETTABLEKS                       R3 R2 K3 ["timestamp"]
       31 RETURN                           R2 1

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
       16 GETUPVAL                         R4 1
       17 CALL                             R4 0 1
       18 JUMPIFNOT                        R4 ; [+11]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K3 ["attributes"]
       22 GETTABLEKS                       R3 R3 K6 ["observeNumber"]
       24 MOVE                             R4 R0
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K7 ["TIMESTAMP_ATTRIBUTE_NAME"]
       28 CALL                             R3 2 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R3
       31 GETUPVAL                         R4 3
       32 GETTABLEKS                       R4 R4 K8 ["instanceRegistry"]
       34 MOVE                             R6 R0
       35 NAMECALL                         R4 R4 K9 ["instanceToId"]
       37 CALL                             R4 2 1
       38 GETUPVAL                         R5 4
       39 GETTABLEKS                       R5 R5 K10 ["createComputed"]
       41 NEWCLOSURE                       R6 P0
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          VAL R3
       47 CALL                             R5 1 -1
       48 RETURN                           R5 -1

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
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U4
       48 CALL                             R5 2 1
       49 RETURN                           R5 1

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
       31 CAPTURE                          UPVAL U8
       32 NEWTABLE                         R5 0 3
       34 GETTABLEKS                       R6 R1 K3 ["observeRigReferences"]
       36 GETTABLEKS                       R7 R2 K4 ["instanceRegistry"]
       38 GETUPVAL                         R9 9
       39 CALL                             R9 0 1
       40 JUMPIFNOT                        R9 ; [+2]
       41 LOADNIL                          R8
       42 JUMP                             ; [+2]
       43 GETTABLEKS                       R8 R0 K5 ["selectionService"]
       45 SETLIST                          R5 R6 3 [1]
       47 CALL                             R3 2 -1
       48 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeAllGraphItems"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["instanceRegistry"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["observeSelectedGraphInstanceId"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

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
       33 CALL                             R3 0 1
       34 JUMPIFNOT                        R3 ; [+5]
       35 GETUPVAL                         R3 5
       36 GETTABLEKS                       R3 R3 K7 ["updateGraphTimestamp"]
       38 MOVE                             R4 R1
       39 CALL                             R3 1 0
       40 GETUPVAL                         R3 1
       41 CALL                             R3 0 1
       42 JUMPIFNOT                        R3 ; [+12]
       43 LOADK                            R5 K8 ["AnimationGraphDefinition"]
       44 NAMECALL                         R3 R1 K9 ["IsA"]
       46 CALL                             R3 2 1
       47 JUMPIFNOT                        R3 ; [+18]
       48 GETIMPORT                        R3 K12 [task.spawn]
       50 NEWCLOSURE                       R4 P0
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R1
       53 CALL                             R3 1 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R3 6
       56 GETTABLEKS                       R3 R3 K13 ["selectionService"]
       58 NEWTABLE                         R5 0 1
       60 MOVE                             R6 R1
       61 SETLIST                          R5 R6 1 [1]
       63 NAMECALL                         R3 R3 K14 ["Set"]
       65 CALL                             R3 2 0
       66 RETURN                           R0 0

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
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["useContext"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Context"]
        9 CALL                             R1 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K0 ["useContext"]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K1 ["Context"]
       18 CALL                             R2 1 1
       19 GETUPVAL                         R4 0
       20 CALL                             R4 0 1
       21 JUMPIFNOT                        R4 ; [+2]
       22 LOADNIL                          R3
       23 JUMP                             ; [+7]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K0 ["useContext"]
       27 GETUPVAL                         R4 4
       28 GETTABLEKS                       R4 R4 K1 ["Context"]
       30 CALL                             R3 1 1
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K0 ["useContext"]
       34 GETUPVAL                         R5 5
       35 GETTABLEKS                       R5 R5 K1 ["Context"]
       37 CALL                             R4 1 1
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K0 ["useContext"]
       41 GETUPVAL                         R6 6
       42 GETTABLEKS                       R6 R6 K1 ["Context"]
       44 CALL                             R5 1 1
       45 GETUPVAL                         R6 7
       46 GETTABLEKS                       R6 R6 K2 ["useSignalState"]
       48 GETUPVAL                         R8 0
       49 CALL                             R8 0 1
       50 JUMPIFNOT                        R8 ; [+17]
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R7 R7 K3 ["useMemo"]
       54 NEWCLOSURE                       R8 P0
       55 CAPTURE                          UPVAL U8
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R1
       58 NEWTABLE                         R9 0 2
       60 GETTABLEKS                       R10 R4 K4 ["instanceRegistry"]
       62 GETTABLEKS                       R11 R1 K5 ["observeSelectedGraphInstanceId"]
       64 SETLIST                          R9 R10 2 [1]
       66 CALL                             R7 2 1
       67 JUMP                             ; [+2]
       68 GETUPVAL                         R7 9
       69 CALL                             R7 0 1
       70 CALL                             R6 1 1
       71 GETUPVAL                         R7 1
       72 GETTABLEKS                       R7 R7 K6 ["useCallback"]
       74 NEWCLOSURE                       R8 P1
       75 CAPTURE                          VAL R4
       76 CAPTURE                          UPVAL U0
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R2
       79 CAPTURE                          UPVAL U10
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R3
       82 NEWTABLE                         R9 0 3
       84 GETTABLEKS                       R10 R4 K4 ["instanceRegistry"]
       86 GETUPVAL                         R12 0
       87 CALL                             R12 0 1
       88 JUMPIFNOT                        R12 ; [+3]
       89 GETTABLEKS                       R11 R1 K7 ["setSelectedGraphInstance"]
       91 JUMP                             ; [+2]
       92 GETTABLEKS                       R11 R3 K8 ["selectionService"]
       94 GETUPVAL                         R13 0
       95 CALL                             R13 0 1
       96 JUMPIFNOT                        R13 ; [+3]
       97 GETTABLEKS                       R12 R1 K9 ["observeSelectedGraphInstance"]
       99 JUMP                             ; [+2]
      100 GETTABLEKS                       R12 R2 K10 ["observeSelectedGraphInstance_DEPRECATED"]
      102 SETLIST                          R9 R10 3 [1]
      104 CALL                             R7 2 1
      105 GETUPVAL                         R8 1
      106 GETTABLEKS                       R8 R8 K6 ["useCallback"]
      108 NEWCLOSURE                       R9 P2
      109 CAPTURE                          VAL R4
      110 NEWTABLE                         R10 0 1
      112 GETTABLEKS                       R11 R4 K4 ["instanceRegistry"]
      114 SETLIST                          R10 R11 1 [1]
      116 CALL                             R8 2 1
      117 GETUPVAL                         R10 0
      118 CALL                             R10 0 1
      119 JUMPIFNOT                        R10 ; [+2]
      120 LOADNIL                          R9
      121 JUMP                             ; [+2]
      122 GETTABLEKS                       R9 R2 K11 ["selectedGraphInstanceId_DEPRECATED"]
      124 GETUPVAL                         R10 11
      125 GETTABLEKS                       R10 R10 K12 ["useBoundAction"]
      127 LOADK                            R11 K13 ["GraphDropdownContext_SelectGraphByIdAsync"]
      128 MOVE                             R12 R7
      129 CALL                             R10 2 0
      130 GETUPVAL                         R10 11
      131 GETTABLEKS                       R10 R10 K12 ["useBoundAction"]
      133 LOADK                            R11 K14 ["GraphDropdownContext_RenameGraphByIdAsync"]
      134 MOVE                             R12 R8
      135 CALL                             R10 2 0
      136 GETUPVAL                         R10 11
      137 GETTABLEKS                       R10 R10 K15 ["useReplicatedState"]
      139 LOADK                            R11 K16 ["GraphDropdownContext_GraphItems"]
      140 MOVE                             R12 R6
      141 CALL                             R10 2 0
      142 GETUPVAL                         R10 0
      143 CALL                             R10 0 1
      144 JUMPIF                           R10 ; [+6]
      145 GETUPVAL                         R10 11
      146 GETTABLEKS                       R10 R10 K15 ["useReplicatedState"]
      148 LOADK                            R11 K17 ["GraphDropdownContext_SelectedGraphId"]
      149 MOVE                             R12 R9
      150 CALL                             R10 2 0
      151 GETUPVAL                         R10 1
      152 GETTABLEKS                       R10 R10 K3 ["useMemo"]
      154 NEWCLOSURE                       R11 P3
      155 CAPTURE                          VAL R6
      156 CAPTURE                          UPVAL U0
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R8
      160 NEWTABLE                         R12 0 4
      162 MOVE                             R13 R6
      163 MOVE                             R14 R9
      164 MOVE                             R15 R7
      165 MOVE                             R16 R8
      166 SETLIST                          R12 R13 4 [1]
      168 CALL                             R10 2 1
      169 GETUPVAL                         R11 1
      170 GETTABLEKS                       R11 R11 K18 ["createElement"]
      172 GETUPVAL                         R12 12
      173 GETTABLEKS                       R12 R12 K19 ["Provider"]
      175 DUPTABLE                         R13 K21 [{"value"}]
      176 SETTABLEKS                       R10 R13 K20 ["value"]
      178 GETTABLEKS                       R14 R0 K22 ["children"]
      180 CALL                             R11 3 -1
      181 RETURN                           R11 -1

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
       48 GETTABLEKS                       R7 R0 K9 ["Parent"]
       50 GETTABLEKS                       R7 R7 K15 ["React"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K9 ["Parent"]
       57 GETTABLEKS                       R8 R8 K16 ["ReactUtils"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Contexts"]
       64 GETTABLEKS                       R9 R9 K17 ["RigListContext"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K6 ["Contexts"]
       71 GETTABLEKS                       R10 R10 K18 ["SelectedGraphContext"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K6 ["Contexts"]
       78 GETTABLEKS                       R11 R11 K19 ["SelectionServiceContext"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K12 ["Util"]
       85 GETTABLEKS                       R12 R12 K20 ["Signals"]
       87 GETTABLEKS                       R12 R12 K21 ["Experimental"]
       89 GETTABLEKS                       R12 R12 K22 ["SignalExperimentalUtils"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K9 ["Parent"]
       96 GETTABLEKS                       R13 R13 K20 ["Signals"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K12 ["Util"]
      103 GETTABLEKS                       R14 R14 K20 ["Signals"]
      105 GETTABLEKS                       R14 R14 K23 ["SignalsInstanceUtils"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K9 ["Parent"]
      112 GETTABLEKS                       R15 R15 K24 ["SignalsReact"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K5 [require]
      117 GETTABLEKS                       R16 R0 K12 ["Util"]
      119 GETTABLEKS                       R16 R16 K20 ["Signals"]
      121 GETTABLEKS                       R16 R16 K25 ["TypedInstanceSignals"]
      123 CALL                             R15 1 1
      124 GETIMPORT                        R16 K5 [require]
      126 GETTABLEKS                       R17 R0 K26 ["Flags"]
      128 GETTABLEKS                       R17 R17 K27 ["getFFlagAnimGraphUISortGraphElements"]
      130 CALL                             R16 1 1
      131 GETIMPORT                        R17 K5 [require]
      133 GETTABLEKS                       R18 R0 K26 ["Flags"]
      135 GETTABLEKS                       R18 R18 K28 ["getFFlagAnimGraphUI_RunTimeDebug"]
      137 CALL                             R17 1 1
      138 DUPTABLE                         R18 K34 [{["graphItems"], ["selectedGraphId_DEPRECATED"] = , ["selectGraphByIdAsync"], ["renameGraphByIdAsync"]}]
      139 GETIMPORT                        R19 K37 [table.freeze]
      141 NEWTABLE                         R20 0 0
      143 CALL                             R19 1 1
      144 SETTABLEKS                       R19 R18 K29 ["graphItems"]
      146 GETTABLEKS                       R19 R7 K38 ["createUnimplemented"]
      148 LOADK                            R20 K32 ["selectGraphByIdAsync"]
      149 CALL                             R19 1 1
      150 SETTABLEKS                       R19 R18 K32 ["selectGraphByIdAsync"]
      152 GETTABLEKS                       R19 R7 K38 ["createUnimplemented"]
      154 LOADK                            R20 K33 ["renameGraphByIdAsync"]
      155 CALL                             R19 1 1
      156 SETTABLEKS                       R19 R18 K33 ["renameGraphByIdAsync"]
      158 GETTABLEKS                       R19 R6 K39 ["createContext"]
      160 MOVE                             R20 R18
      161 CALL                             R19 1 1
      162 DUPTABLE                         R20 K44 [{["GRAPH_ITEMS"] = "GraphDropdownContext_GraphItems", ["SELECTED_GRAPH_ID_DEPRECATED"] = "GraphDropdownContext_SelectedGraphId"}]
      163 DUPTABLE                         R21 K49 [{["SELECT_GRAPH_BY_ID_ASYNC"] = "GraphDropdownContext_SelectGraphByIdAsync", ["RENAME_GRAPH_BY_ID_ASYNC"] = "GraphDropdownContext_RenameGraphByIdAsync"}]
      164 DUPCLOSURE                       R22 K50 [PROTO_9]
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R10
      167 CAPTURE                          VAL R8
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R15
      171 CAPTURE                          VAL R11
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R17
      175 DUPCLOSURE                       R23 K51 [PROTO_15]
      176 CAPTURE                          VAL R17
      177 CAPTURE                          VAL R6
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R3
      182 CAPTURE                          VAL R2
      183 CAPTURE                          VAL R14
      184 CAPTURE                          VAL R1
      185 CAPTURE                          VAL R22
      186 CAPTURE                          VAL R16
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R19
      189 DUPCLOSURE                       R24 K52 [PROTO_17]
      190 CAPTURE                          VAL R5
      191 CAPTURE                          VAL R17
      192 CAPTURE                          VAL R6
      193 CAPTURE                          VAL R19
      194 DUPTABLE                         R25 K56 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      195 SETTABLEKS                       R19 R25 K53 ["Context"]
      197 SETTABLEKS                       R23 R25 K54 ["EditableDataModelProvider"]
      199 SETTABLEKS                       R24 R25 K55 ["UIDataModelProvider"]
      201 RETURN                           R25 1
