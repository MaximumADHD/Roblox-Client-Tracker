PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"name", "id"}]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K3 ["instanceRegistry"]
        9 GETUPVAL                         R4 2
       10 NAMECALL                         R2 R2 K4 ["instanceToId"]
       12 CALL                             R2 2 1
       13 SETTABLEKS                       R2 R1 K1 ["id"]
       15 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["properties"]
        3 GETTABLEKS                       R1 R1 K1 ["observeString"]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K2 ["Name"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["createComputed"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeAllRigs"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["forEach"]
        8 MOVE                             R2 R0
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instanceRegistry"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["idToInstance"]
        6 CALL                             R1 2 1
        7 JUMPIFEQKNIL                     R1 ; [+17]
        9 GETUPVAL                         R2 1
       10 JUMPIFNOT                        R2 ; [+11]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["selectionService"]
       14 NEWTABLE                         R4 0 1
       16 MOVE                             R5 R1
       17 SETLIST                          R4 R5 1 [1]
       19 NAMECALL                         R2 R2 K3 ["Set"]
       21 CALL                             R2 2 0
       22 GETUPVAL                         R2 3
       23 MOVE                             R3 R1
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 4
       26 MOVE                             R3 R0
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 LOADNIL                          R2
        3 CALL                             R1 1 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 JUMPIFNOTEQKN                    R0 K0 [1] ; [+21]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["findRigFromSelection"]
        7 GETUPVAL                         R2 0
        8 GETTABLEN                        R1 R2 1
        9 CALL                             R0 1 1
       10 JUMPIFNOT                        R0 ; [+13]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K2 ["instanceRegistry"]
       14 MOVE                             R3 R0
       15 NAMECALL                         R1 R1 K3 ["instanceToId"]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R2 3
       19 MOVE                             R3 R1
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 4
       22 MOVE                             R3 R0
       23 CALL                             R2 1 0
       24 GETUPVAL                         R0 5
       25 JUMPIFNOT                        R0 ; [+9]
       26 GETUPVAL                         R0 1
       27 GETTABLEKS                       R0 R0 K1 ["findRigFromSelection"]
       29 GETUPVAL                         R1 5
       30 CALL                             R0 1 1
       31 JUMPIFNOT                        R0 ; [+3]
       32 GETUPVAL                         R1 4
       33 MOVE                             R2 R0
       34 CALL                             R1 1 0
       35 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K0 ["instanceRegistry"]
       10 MOVE                             R4 R1
       11 NAMECALL                         R2 R2 K1 ["idToInstance"]
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_11:
        0 DUPTABLE                         R0 K9 [{"observeRigReferences", "observeSelectedRigId", "observeSelectedRig", "rigReferences", "selectedRigId", "selectRigByIdAsync", "followSelection", "setFollowSelectionAsync", "observeSelectionTrackedRigId"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["observeRigReferences"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["observeSelectedRigId"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeSelectedRig"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["rigReferences"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["selectedRigId"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["selectRigByIdAsync"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["followSelection"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["setFollowSelectionAsync"]
       25 GETUPVAL                         R1 8
       26 SETTABLEKS                       R1 R0 K8 ["observeSelectionTrackedRigId"]
       28 RETURN                           R0 1

PROTO_12:
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
       15 GETTABLEKS                       R3 R3 K2 ["useSignalState"]
       17 GETTABLEKS                       R4 R2 K3 ["observeSelectedGraphInstance"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K0 ["useContext"]
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R5 R5 K1 ["Context"]
       26 CALL                             R4 1 1
       27 GETUPVAL                         R5 5
       28 CALL                             R5 0 1
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K4 ["useState"]
       32 LOADNIL                          R7
       33 CALL                             R6 1 2
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K4 ["useState"]
       37 LOADNIL                          R9
       38 CALL                             R8 1 2
       39 JUMPIFEQKNIL                     R6 ; [+2]
       41 LOADB                            R10 0 +1
       42 LOADB                            R10 1
       43 GETUPVAL                         R11 6
       44 MOVE                             R12 R8
       45 CALL                             R11 1 1
       46 GETUPVAL                         R12 0
       47 GETTABLEKS                       R12 R12 K5 ["useMemo"]
       49 DUPCLOSURE                       R13 K6 [PROTO_0]
       50 CAPTURE                          UPVAL U7
       51 NEWTABLE                         R14 0 0
       53 CALL                             R12 2 2
       54 GETUPVAL                         R14 0
       55 GETTABLEKS                       R14 R14 K5 ["useMemo"]
       57 NEWCLOSURE                       R15 P1
       58 CAPTURE                          UPVAL U8
       59 CAPTURE                          VAL R12
       60 CAPTURE                          UPVAL U9
       61 CAPTURE                          UPVAL U10
       62 CAPTURE                          UPVAL U11
       63 CAPTURE                          VAL R1
       64 NEWTABLE                         R16 0 2
       66 MOVE                             R17 R12
       67 GETTABLEKS                       R18 R1 K7 ["instanceRegistry"]
       69 SETLIST                          R16 R17 2 [1]
       71 CALL                             R14 2 1
       72 GETUPVAL                         R15 0
       73 GETTABLEKS                       R15 R15 K8 ["useCallback"]
       75 NEWCLOSURE                       R16 P2
       76 CAPTURE                          VAL R13
       77 NEWTABLE                         R17 0 1
       79 MOVE                             R18 R13
       80 SETLIST                          R17 R18 1 [1]
       82 CALL                             R15 2 1
       83 GETUPVAL                         R16 3
       84 GETTABLEKS                       R16 R16 K2 ["useSignalState"]
       86 MOVE                             R17 R14
       87 CALL                             R16 1 1
       88 GETUPVAL                         R17 0
       89 GETTABLEKS                       R17 R17 K8 ["useCallback"]
       91 NEWCLOSURE                       R18 P3
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R15
       96 CAPTURE                          VAL R7
       97 NEWTABLE                         R19 0 5
       99 MOVE                             R20 R10
      100 GETTABLEKS                       R21 R4 K9 ["selectionService"]
      102 GETTABLEKS                       R22 R1 K7 ["instanceRegistry"]
      104 MOVE                             R23 R7
      105 MOVE                             R24 R15
      106 SETLIST                          R19 R20 5 [1]
      108 CALL                             R17 2 1
      109 OR                               R18 R6 R8
      110 GETUPVAL                         R19 0
      111 GETTABLEKS                       R19 R19 K8 ["useCallback"]
      113 NEWCLOSURE                       R20 P4
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R18
      116 NEWTABLE                         R21 0 4
      118 GETTABLEKS                       R22 R1 K7 ["instanceRegistry"]
      120 GETTABLEKS                       R23 R4 K9 ["selectionService"]
      122 MOVE                             R24 R18
      123 MOVE                             R25 R8
      124 SETLIST                          R21 R22 4 [1]
      126 CALL                             R19 2 1
      127 GETUPVAL                         R20 0
      128 GETTABLEKS                       R20 R20 K10 ["useEffect"]
      130 NEWCLOSURE                       R21 P5
      131 CAPTURE                          VAL R5
      132 CAPTURE                          UPVAL U12
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R3
      137 NEWTABLE                         R22 0 5
      139 MOVE                             R23 R9
      140 MOVE                             R24 R5
      141 MOVE                             R25 R3
      142 MOVE                             R26 R15
      143 GETTABLEKS                       R27 R1 K7 ["instanceRegistry"]
      145 SETLIST                          R22 R23 5 [1]
      147 CALL                             R20 2 0
      148 GETUPVAL                         R20 13
      149 GETTABLEKS                       R20 R20 K11 ["useProducer"]
      151 MOVE                             R21 R16
      152 CALL                             R20 1 0
      153 GETUPVAL                         R20 14
      154 GETTABLEKS                       R20 R20 K11 ["useProducer"]
      156 MOVE                             R21 R17
      157 CALL                             R20 1 0
      158 GETUPVAL                         R20 15
      159 GETTABLEKS                       R20 R20 K11 ["useProducer"]
      161 MOVE                             R21 R18
      162 CALL                             R20 1 0
      163 GETUPVAL                         R20 16
      164 GETTABLEKS                       R20 R20 K11 ["useProducer"]
      166 MOVE                             R21 R19
      167 CALL                             R20 1 0
      168 GETUPVAL                         R20 17
      169 GETTABLEKS                       R20 R20 K11 ["useProducer"]
      171 MOVE                             R21 R10
      172 CALL                             R20 1 0
      173 GETUPVAL                         R20 18
      174 GETTABLEKS                       R20 R20 K11 ["useProducer"]
      176 MOVE                             R21 R8
      177 CALL                             R20 1 0
      178 GETUPVAL                         R20 6
      179 MOVE                             R21 R18
      180 CALL                             R20 1 1
      181 GETUPVAL                         R21 0
      182 GETTABLEKS                       R21 R21 K5 ["useMemo"]
      184 NEWCLOSURE                       R22 P6
      185 CAPTURE                          UPVAL U11
      186 CAPTURE                          VAL R20
      187 CAPTURE                          VAL R1
      188 NEWTABLE                         R23 0 2
      190 GETTABLEKS                       R24 R1 K7 ["instanceRegistry"]
      192 MOVE                             R25 R18
      193 SETLIST                          R23 R24 2 [1]
      195 CALL                             R21 2 1
      196 GETUPVAL                         R22 0
      197 GETTABLEKS                       R22 R22 K5 ["useMemo"]
      199 NEWCLOSURE                       R23 P7
      200 CAPTURE                          VAL R14
      201 CAPTURE                          VAL R20
      202 CAPTURE                          VAL R21
      203 CAPTURE                          VAL R16
      204 CAPTURE                          VAL R18
      205 CAPTURE                          VAL R17
      206 CAPTURE                          VAL R10
      207 CAPTURE                          VAL R19
      208 CAPTURE                          VAL R11
      209 NEWTABLE                         R24 0 9
      211 MOVE                             R25 R14
      212 MOVE                             R26 R20
      213 MOVE                             R27 R21
      214 MOVE                             R28 R16
      215 MOVE                             R29 R18
      216 MOVE                             R30 R17
      217 MOVE                             R31 R10
      218 MOVE                             R32 R19
      219 MOVE                             R33 R11
      220 SETLIST                          R24 R25 9 [1]
      222 CALL                             R22 2 1
      223 GETUPVAL                         R23 0
      224 GETTABLEKS                       R23 R23 K12 ["createElement"]
      226 GETUPVAL                         R24 19
      227 GETTABLEKS                       R24 R24 K13 ["Provider"]
      229 DUPTABLE                         R25 K15 [{"value"}]
      230 SETTABLEKS                       R22 R25 K14 ["value"]
      232 GETTABLEKS                       R26 R0 K16 ["children"]
      234 CALL                             R23 3 -1
      235 RETURN                           R23 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["instanceRegistry"]
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K1 ["idToInstance"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1
       12 LOADNIL                          R2
       13 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_15:
        0 DUPTABLE                         R0 K9 [{"observeRigReferences", "observeSelectedRigId", "observeSelectedRig", "rigReferences", "selectedRigId", "selectRigByIdAsync", "followSelection", "setFollowSelectionAsync", "observeSelectionTrackedRigId"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["observeRigReferences"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["observeSelectedRigId"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeSelectedRig"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["rigReferences"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["selectedRigId"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["selectRigByIdAsync"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["followSelection"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["setFollowSelectionAsync"]
       25 GETUPVAL                         R1 8
       26 SETTABLEKS                       R1 R0 K8 ["observeSelectionTrackedRigId"]
       28 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["useConsumer"]
       10 NEWTABLE                         R3 0 0
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K2 ["useConsumer"]
       16 LOADNIL                          R4
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R4 R4 K2 ["useConsumer"]
       21 CALL                             R4 0 1
       22 GETUPVAL                         R5 5
       23 GETTABLEKS                       R5 R5 K2 ["useConsumer"]
       25 LOADB                            R6 0
       26 CALL                             R5 1 1
       27 GETUPVAL                         R6 6
       28 GETTABLEKS                       R6 R6 K2 ["useConsumer"]
       30 CALL                             R6 0 1
       31 GETUPVAL                         R7 7
       32 MOVE                             R8 R2
       33 CALL                             R7 1 1
       34 GETUPVAL                         R8 7
       35 MOVE                             R9 R3
       36 CALL                             R8 1 1
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R9 R9 K3 ["useMemo"]
       40 NEWCLOSURE                       R10 P0
       41 CAPTURE                          UPVAL U8
       42 CAPTURE                          VAL R8
       43 CAPTURE                          VAL R1
       44 NEWTABLE                         R11 0 2
       46 MOVE                             R12 R8
       47 GETTABLEKS                       R13 R1 K4 ["instanceRegistry"]
       49 SETLIST                          R11 R12 2 [1]
       51 CALL                             R9 2 1
       52 GETUPVAL                         R10 9
       53 GETTABLEKS                       R10 R10 K5 ["useSignalConsumer"]
       55 LOADNIL                          R11
       56 CALL                             R10 1 1
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K3 ["useMemo"]
       60 NEWCLOSURE                       R12 P1
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R10
       70 NEWTABLE                         R13 0 9
       72 MOVE                             R14 R7
       73 MOVE                             R15 R8
       74 MOVE                             R16 R9
       75 MOVE                             R17 R2
       76 MOVE                             R18 R3
       77 MOVE                             R19 R4
       78 MOVE                             R20 R5
       79 MOVE                             R21 R6
       80 MOVE                             R22 R10
       81 SETLIST                          R13 R14 9 [1]
       83 CALL                             R11 2 1
       84 GETUPVAL                         R12 0
       85 GETTABLEKS                       R12 R12 K6 ["createElement"]
       87 GETUPVAL                         R13 10
       88 GETTABLEKS                       R13 R13 K7 ["Provider"]
       90 DUPTABLE                         R14 K9 [{"value"}]
       91 SETTABLEKS                       R11 R14 K8 ["value"]
       93 GETTABLEKS                       R15 R0 K10 ["children"]
       95 CALL                             R12 3 -1
       96 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Rig"]
       13 GETTABLEKS                       R2 R2 K8 ["AnimationRigDataUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["InstanceRegistryContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Networking"]
       29 GETTABLEKS                       R4 R4 K12 ["NetworkUtils"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K13 ["Parent"]
       36 GETTABLEKS                       R5 R5 K14 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K13 ["Parent"]
       43 GETTABLEKS                       R6 R6 K15 ["ReactUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Contexts"]
       50 GETTABLEKS                       R7 R7 K16 ["RigListContext"]
       52 GETTABLEKS                       R7 R7 K17 ["RigListContextUtils"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K9 ["Contexts"]
       59 GETTABLEKS                       R8 R8 K18 ["SelectedGraphContext"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K9 ["Contexts"]
       66 GETTABLEKS                       R9 R9 K19 ["SelectionServiceContext"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K6 ["Util"]
       73 GETTABLEKS                       R10 R10 K20 ["Signals"]
       75 GETTABLEKS                       R10 R10 K21 ["Experimental"]
       77 GETTABLEKS                       R10 R10 K22 ["SignalExperimentalUtils"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K13 ["Parent"]
       84 GETTABLEKS                       R11 R11 K20 ["Signals"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K6 ["Util"]
       91 GETTABLEKS                       R12 R12 K20 ["Signals"]
       93 GETTABLEKS                       R12 R12 K23 ["SignalsInstanceUtils"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K13 ["Parent"]
      100 GETTABLEKS                       R13 R13 K24 ["SignalsReact"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R14 R0 K6 ["Util"]
      107 GETTABLEKS                       R14 R14 K20 ["Signals"]
      109 GETTABLEKS                       R14 R14 K25 ["TypedInstanceSignals"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETTABLEKS                       R15 R0 K26 ["Hooks"]
      116 GETTABLEKS                       R15 R15 K27 ["useSelection"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R16 R0 K26 ["Hooks"]
      123 GETTABLEKS                       R16 R16 K28 ["useStateToSignal"]
      125 CALL                             R15 1 1
      126 DUPTABLE                         R16 K40 [{["rigReferences"], ["followSelection"] = False, ["observeRigReferences"], ["observeSelectedRigId"], ["observeSelectedRig"], ["observeSelectionTrackedRigId"], ["selectRigByIdAsync"], ["setFollowSelectionAsync"], ["selectedRigId"] = }]
      127 NEWTABLE                         R17 0 0
      129 SETTABLEKS                       R17 R16 K29 ["rigReferences"]
      131 GETTABLEKS                       R17 R11 K41 ["of"]
      133 NEWTABLE                         R18 0 0
      135 CALL                             R17 1 1
      136 SETTABLEKS                       R17 R16 K32 ["observeRigReferences"]
      138 GETTABLEKS                       R17 R11 K41 ["of"]
      140 LOADNIL                          R18
      141 CALL                             R17 1 1
      142 SETTABLEKS                       R17 R16 K33 ["observeSelectedRigId"]
      144 GETTABLEKS                       R17 R11 K41 ["of"]
      146 LOADNIL                          R18
      147 CALL                             R17 1 1
      148 SETTABLEKS                       R17 R16 K34 ["observeSelectedRig"]
      150 GETTABLEKS                       R17 R11 K41 ["of"]
      152 LOADNIL                          R18
      153 CALL                             R17 1 1
      154 SETTABLEKS                       R17 R16 K35 ["observeSelectionTrackedRigId"]
      156 GETTABLEKS                       R17 R5 K42 ["createUnimplemented"]
      158 LOADK                            R18 K36 ["selectRigByIdAsync"]
      159 CALL                             R17 1 1
      160 SETTABLEKS                       R17 R16 K36 ["selectRigByIdAsync"]
      162 GETTABLEKS                       R17 R5 K42 ["createUnimplemented"]
      164 LOADK                            R18 K37 ["setFollowSelectionAsync"]
      165 CALL                             R17 1 1
      166 SETTABLEKS                       R17 R16 K37 ["setFollowSelectionAsync"]
      168 GETTABLEKS                       R17 R4 K43 ["createContext"]
      170 MOVE                             R18 R16
      171 CALL                             R17 1 1
      172 GETTABLEKS                       R18 R3 K44 ["createBoundAction"]
      174 LOADK                            R19 K45 ["RigListContext_selectRig"]
      175 CALL                             R18 1 1
      176 GETTABLEKS                       R19 R3 K46 ["createReplicatedState"]
      178 LOADK                            R20 K47 ["RigListContext_rigReferences"]
      179 CALL                             R19 1 1
      180 GETTABLEKS                       R20 R3 K46 ["createReplicatedState"]
      182 LOADK                            R21 K48 ["RigListContext_selectedRigId"]
      183 CALL                             R20 1 1
      184 GETTABLEKS                       R21 R3 K46 ["createReplicatedState"]
      186 LOADK                            R22 K49 ["RigListContext_followSelection"]
      187 CALL                             R21 1 1
      188 GETTABLEKS                       R22 R3 K46 ["createReplicatedState"]
      190 LOADK                            R23 K50 ["RigListContext_selectionTrackedRigId"]
      191 CALL                             R22 1 1
      192 GETTABLEKS                       R23 R3 K44 ["createBoundAction"]
      194 LOADK                            R24 K51 ["RigListContext_setFollowSelectionAsync"]
      195 CALL                             R23 1 1
      196 DUPCLOSURE                       R24 K52 [PROTO_12]
      197 CAPTURE                          VAL R4
      198 CAPTURE                          VAL R2
      199 CAPTURE                          VAL R7
      200 CAPTURE                          VAL R12
      201 CAPTURE                          VAL R8
      202 CAPTURE                          VAL R14
      203 CAPTURE                          VAL R15
      204 CAPTURE                          VAL R10
      205 CAPTURE                          VAL R6
      206 CAPTURE                          VAL R11
      207 CAPTURE                          VAL R13
      208 CAPTURE                          VAL R9
      209 CAPTURE                          VAL R1
      210 CAPTURE                          VAL R19
      211 CAPTURE                          VAL R18
      212 CAPTURE                          VAL R20
      213 CAPTURE                          VAL R23
      214 CAPTURE                          VAL R21
      215 CAPTURE                          VAL R22
      216 CAPTURE                          VAL R17
      217 DUPCLOSURE                       R25 K53 [PROTO_16]
      218 CAPTURE                          VAL R4
      219 CAPTURE                          VAL R2
      220 CAPTURE                          VAL R19
      221 CAPTURE                          VAL R20
      222 CAPTURE                          VAL R18
      223 CAPTURE                          VAL R21
      224 CAPTURE                          VAL R23
      225 CAPTURE                          VAL R15
      226 CAPTURE                          VAL R9
      227 CAPTURE                          VAL R22
      228 CAPTURE                          VAL R17
      229 DUPTABLE                         R26 K57 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      230 SETTABLEKS                       R17 R26 K54 ["Context"]
      232 SETTABLEKS                       R24 R26 K55 ["EditableDataModelProvider"]
      234 SETTABLEKS                       R25 R26 K56 ["UIDataModelProvider"]
      236 RETURN                           R26 1
