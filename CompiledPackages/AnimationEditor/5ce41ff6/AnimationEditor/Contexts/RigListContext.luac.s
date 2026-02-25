PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSignal"]
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 JUMPIFEQKN                       R0 K0 [1] ; [+3]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEN                        R0 R1 1
        8 LOADK                            R3 K1 ["Humanoid"]
        9 NAMECALL                         R1 R0 K2 ["FindFirstChildWhichIsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOTEQKNIL                  R1 ; [+3]
       14 LOADNIL                          R1
       15 RETURN                           R1 1
       16 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.find]
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 CALL                             R1 2 1
        5 JUMPIFEQKNIL                     R1 ; [+2]
        7 RETURN                           R0 1
        8 GETIMPORT                        R1 K4 [table.clone]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 MOVE                             R0 R1
       13 LENGTH                           R1 R0
       14 JUMPIFNOTEQKN                    R1 K5 [10] ; [+6]
       16 GETIMPORT                        R1 K7 [table.remove]
       18 MOVE                             R2 R0
       19 LOADN                            R3 1
       20 CALL                             R1 2 0
       21 GETUPVAL                         R3 0
       22 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       24 MOVE                             R2 R0
       25 GETIMPORT                        R1 K9 [table.insert]
       27 CALL                             R1 2 0
       28 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U0
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observeFirstAncestor"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["DataModel"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["createComputed"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1

PROTO_6:
        0 DUPTABLE                         R1 K2 [{"name", "id"}]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K3 ["instanceRegistry"]
        9 GETUPVAL                         R4 2
       10 NAMECALL                         R2 R2 K4 ["instanceToId"]
       12 CALL                             R2 2 1
       13 SETTABLEKS                       R2 R1 K1 ["id"]
       15 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["properties"]
        3 GETTABLEKS                       R1 R2 K1 ["observeString"]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K2 ["Name"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["createComputed"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["filter"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_5]
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U2
        7 CALL                             R0 2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K2 ["forEach"]
       11 MOVE                             R2 R0
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U4
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["instanceRegistry"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["idToInstance"]
        6 CALL                             R1 2 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       13 LOADK                            R4 K2 ["Selecting rig by unknown ID "]
       14 GETIMPORT                        R2 K4 [assert]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K5 ["selectionService"]
       20 NEWTABLE                         R4 0 1
       22 MOVE                             R5 R1
       23 SETLIST                          R4 R5 1 [1]
       25 NAMECALL                         R2 R2 K6 ["Set"]
       27 CALL                             R2 2 0
       28 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["instanceRegistry"]
        5 GETUPVAL                         R2 0
        6 NAMECALL                         R0 R0 K1 ["instanceToId"]
        8 CALL                             R0 2 1
        9 RETURN                           R0 1

PROTO_11:
        0 DUPTABLE                         R0 K3 [{"rigReferences", "selectedRigId", "selectRigAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["rigReferences"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["selectedRigId"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["selectRigAsync"]
       10 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 3
       15 CALL                             R3 0 1
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K2 ["useMemo"]
       19 DUPCLOSURE                       R5 K3 [PROTO_0]
       20 CAPTURE                          UPVAL U4
       21 NEWTABLE                         R6 0 0
       23 CALL                             R4 2 2
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K2 ["useMemo"]
       27 NEWCLOSURE                       R7 P1
       28 CAPTURE                          VAL R3
       29 NEWTABLE                         R8 0 1
       31 MOVE                             R9 R3
       32 SETLIST                          R8 R9 1 [1]
       34 CALL                             R6 2 1
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R7 R8 K4 ["useEffect"]
       38 NEWCLOSURE                       R8 P2
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R5
       41 NEWTABLE                         R9 0 1
       43 MOVE                             R10 R6
       44 SETLIST                          R9 R10 1 [1]
       46 CALL                             R7 2 0
       47 GETUPVAL                         R8 5
       48 GETTABLEKS                       R7 R8 K5 ["useSignalState"]
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R8 R9 K2 ["useMemo"]
       53 NEWCLOSURE                       R9 P3
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          VAL R4
       56 CAPTURE                          UPVAL U4
       57 CAPTURE                          UPVAL U7
       58 CAPTURE                          VAL R1
       59 NEWTABLE                         R10 0 2
       61 MOVE                             R11 R4
       62 GETTABLEKS                       R12 R1 K6 ["instanceRegistry"]
       64 SETLIST                          R10 R11 2 [1]
       66 CALL                             R8 2 -1
       67 CALL                             R7 -1 1
       68 GETUPVAL                         R9 8
       69 GETTABLEKS                       R8 R9 K7 ["useProducer"]
       71 MOVE                             R9 R7
       72 CALL                             R8 1 0
       73 GETUPVAL                         R9 0
       74 GETTABLEKS                       R8 R9 K8 ["useCallback"]
       76 NEWCLOSURE                       R9 P4
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R2
       79 NEWTABLE                         R10 0 2
       81 GETTABLEKS                       R11 R1 K6 ["instanceRegistry"]
       83 GETTABLEKS                       R12 R2 K9 ["selectionService"]
       85 SETLIST                          R10 R11 2 [1]
       87 CALL                             R8 2 1
       88 GETUPVAL                         R10 9
       89 GETTABLEKS                       R9 R10 K7 ["useProducer"]
       91 MOVE                             R10 R8
       92 CALL                             R9 1 0
       93 GETUPVAL                         R10 0
       94 GETTABLEKS                       R9 R10 K2 ["useMemo"]
       96 NEWCLOSURE                       R10 P5
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R1
       99 NEWTABLE                         R11 0 2
      101 MOVE                             R12 R6
      102 GETTABLEKS                       R13 R1 K6 ["instanceRegistry"]
      104 SETLIST                          R11 R12 2 [1]
      106 CALL                             R9 2 1
      107 GETUPVAL                         R11 10
      108 GETTABLEKS                       R10 R11 K7 ["useProducer"]
      110 MOVE                             R11 R9
      111 CALL                             R10 1 0
      112 GETUPVAL                         R11 0
      113 GETTABLEKS                       R10 R11 K2 ["useMemo"]
      115 NEWCLOSURE                       R11 P6
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R8
      119 NEWTABLE                         R12 0 3
      121 MOVE                             R13 R7
      122 MOVE                             R14 R8
      123 MOVE                             R15 R9
      124 SETLIST                          R12 R13 3 [1]
      126 CALL                             R10 2 1
      127 GETUPVAL                         R12 0
      128 GETTABLEKS                       R11 R12 K10 ["createElement"]
      130 GETUPVAL                         R13 11
      131 GETTABLEKS                       R12 R13 K11 ["Provider"]
      133 DUPTABLE                         R13 K13 [{"value"}]
      134 SETTABLEKS                       R10 R13 K12 ["value"]
      136 GETTABLEKS                       R14 R0 K14 ["children"]
      138 CALL                             R11 3 -1
      139 RETURN                           R11 -1

PROTO_13:
        0 DUPTABLE                         R0 K3 [{"rigReferences", "selectedRigId", "selectRigAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["rigReferences"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["selectedRigId"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["selectRigAsync"]
       10 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useConsumer"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K0 ["useConsumer"]
        9 LOADNIL                          R3
       10 CALL                             R2 1 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K0 ["useConsumer"]
       14 CALL                             R3 0 1
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R4 R5 K1 ["useMemo"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R3
       22 NEWTABLE                         R6 0 3
       24 MOVE                             R7 R1
       25 MOVE                             R8 R3
       26 MOVE                             R9 R2
       27 SETLIST                          R6 R7 3 [1]
       29 CALL                             R4 2 1
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R5 R6 K2 ["createElement"]
       33 GETUPVAL                         R7 4
       34 GETTABLEKS                       R6 R7 K3 ["Provider"]
       36 DUPTABLE                         R7 K5 [{"value"}]
       37 SETTABLEKS                       R4 R7 K4 ["value"]
       39 GETTABLEKS                       R8 R0 K6 ["children"]
       41 CALL                             R5 3 -1
       42 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R3 K7 ["InstanceRegistryContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R5 K9 ["Networking"]
       20 GETTABLEKS                       R3 R4 K10 ["NetworkUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R5 K12 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Parent"]
       34 GETTABLEKS                       R5 R6 K13 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K6 ["Contexts"]
       41 GETTABLEKS                       R6 R7 K14 ["SelectionServiceContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K11 ["Parent"]
       48 GETTABLEKS                       R7 R8 K15 ["Signals"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K8 ["Util"]
       55 GETTABLEKS                       R9 R10 K15 ["Signals"]
       57 GETTABLEKS                       R8 R9 K16 ["SignalsInstanceUtils"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R10 R0 K11 ["Parent"]
       64 GETTABLEKS                       R9 R10 K17 ["SignalsReact"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R12 R0 K8 ["Util"]
       71 GETTABLEKS                       R11 R12 K15 ["Signals"]
       73 GETTABLEKS                       R10 R11 K18 ["TypedInstanceSignals"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R12 R0 K19 ["Hooks"]
       80 GETTABLEKS                       R11 R12 K20 ["useSelection"]
       82 CALL                             R10 1 1
       83 DUPTABLE                         R11 K24 [{"rigReferences", "selectRigAsync", "selectedRigId"}]
       84 NEWTABLE                         R12 0 0
       86 SETTABLEKS                       R12 R11 K21 ["rigReferences"]
       88 GETTABLEKS                       R12 R4 K25 ["createUnimplemented"]
       90 LOADK                            R13 K22 ["selectRigAsync"]
       91 CALL                             R12 1 1
       92 SETTABLEKS                       R12 R11 K22 ["selectRigAsync"]
       94 LOADNIL                          R12
       95 SETTABLEKS                       R12 R11 K23 ["selectedRigId"]
       97 GETTABLEKS                       R12 R3 K26 ["createContext"]
       99 MOVE                             R13 R11
      100 CALL                             R12 1 1
      101 GETTABLEKS                       R13 R2 K27 ["createBoundAction"]
      103 LOADK                            R14 K28 ["RigListContext_selectRig"]
      104 CALL                             R13 1 1
      105 GETTABLEKS                       R14 R2 K29 ["createReplicatedState"]
      107 LOADK                            R15 K30 ["RigListContext_rigReferences"]
      108 CALL                             R14 1 1
      109 GETTABLEKS                       R15 R2 K29 ["createReplicatedState"]
      111 LOADK                            R16 K31 ["RigListContext_selectedRigId"]
      112 CALL                             R15 1 1
      113 DUPCLOSURE                       R16 K32 [PROTO_12]
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R12
      126 DUPCLOSURE                       R17 K33 [PROTO_14]
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R12
      132 DUPTABLE                         R18 K37 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      133 SETTABLEKS                       R12 R18 K34 ["Context"]
      135 SETTABLEKS                       R16 R18 K35 ["EditableDataModelProvider"]
      137 SETTABLEKS                       R17 R18 K36 ["UIDataModelProvider"]
      139 RETURN                           R18 1
