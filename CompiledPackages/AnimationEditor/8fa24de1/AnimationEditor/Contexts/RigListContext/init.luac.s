PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeFirstAncestor"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["DataModel"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["createComputed"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["observeAllRigs"]
        7 GETUPVAL                         R2 2
        8 CALL                             R1 1 1
        9 MOVE                             R0 R1
       10 JUMP                             ; [+9]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K1 ["filter"]
       14 GETUPVAL                         R2 2
       15 DUPCLOSURE                       R3 K2 [PROTO_2]
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CALL                             R1 2 1
       19 MOVE                             R0 R1
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R1 R1 K3 ["forEach"]
       23 MOVE                             R2 R0
       24 NEWCLOSURE                       R3 P1
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U6
       28 CALL                             R1 2 -1
       29 RETURN                           R1 -1

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 LOADNIL                          R2
        3 CALL                             R1 1 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_13:
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
       19 GETUPVAL                         R4 2
       20 CALL                             R4 0 1
       21 JUMPIFNOT                        R4 ; [+2]
       22 LOADNIL                          R3
       23 JUMP                             ; [+7]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K0 ["useContext"]
       27 GETUPVAL                         R4 4
       28 GETTABLEKS                       R4 R4 K1 ["Context"]
       30 CALL                             R3 1 1
       31 GETUPVAL                         R5 2
       32 CALL                             R5 0 1
       33 JUMPIFNOT                        R5 ; [+7]
       34 GETUPVAL                         R4 5
       35 GETTABLEKS                       R4 R4 K2 ["useSignalState"]
       37 GETTABLEKS                       R5 R2 K3 ["observeSelectedGraphInstance"]
       39 CALL                             R4 1 1
       40 JUMP                             ; [+6]
       41 GETUPVAL                         R4 5
       42 GETTABLEKS                       R4 R4 K2 ["useSignalState"]
       44 GETTABLEKS                       R5 R3 K4 ["observeSelectedGraphInstance_DEPRECATED"]
       46 CALL                             R4 1 1
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R5 R5 K0 ["useContext"]
       50 GETUPVAL                         R6 6
       51 GETTABLEKS                       R6 R6 K1 ["Context"]
       53 CALL                             R5 1 1
       54 GETUPVAL                         R6 7
       55 CALL                             R6 0 1
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R7 R7 K5 ["useState"]
       59 LOADNIL                          R8
       60 CALL                             R7 1 2
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K5 ["useState"]
       64 LOADNIL                          R10
       65 CALL                             R9 1 2
       66 JUMPIFEQKNIL                     R7 ; [+2]
       68 LOADB                            R11 0 +1
       69 LOADB                            R11 1
       70 GETUPVAL                         R13 2
       71 CALL                             R13 0 1
       72 JUMPIFNOT                        R13 ; [+4]
       73 GETUPVAL                         R12 8
       74 MOVE                             R13 R9
       75 CALL                             R12 1 1
       76 JUMP                             ; [+1]
       77 LOADNIL                          R12
       78 GETUPVAL                         R13 0
       79 GETTABLEKS                       R13 R13 K6 ["useMemo"]
       81 DUPCLOSURE                       R14 K7 [PROTO_0]
       82 CAPTURE                          UPVAL U9
       83 NEWTABLE                         R15 0 0
       85 CALL                             R13 2 2
       86 GETUPVAL                         R15 0
       87 GETTABLEKS                       R15 R15 K6 ["useMemo"]
       89 NEWCLOSURE                       R16 P1
       90 CAPTURE                          UPVAL U2
       91 CAPTURE                          UPVAL U10
       92 CAPTURE                          VAL R13
       93 CAPTURE                          UPVAL U11
       94 CAPTURE                          UPVAL U12
       95 CAPTURE                          UPVAL U13
       96 CAPTURE                          VAL R1
       97 NEWTABLE                         R17 0 2
       99 MOVE                             R18 R13
      100 GETTABLEKS                       R19 R1 K8 ["instanceRegistry"]
      102 SETLIST                          R17 R18 2 [1]
      104 CALL                             R15 2 1
      105 GETUPVAL                         R16 0
      106 GETTABLEKS                       R16 R16 K9 ["useCallback"]
      108 NEWCLOSURE                       R17 P2
      109 CAPTURE                          VAL R14
      110 NEWTABLE                         R18 0 1
      112 MOVE                             R19 R14
      113 SETLIST                          R18 R19 1 [1]
      115 CALL                             R16 2 1
      116 GETUPVAL                         R17 5
      117 GETTABLEKS                       R17 R17 K2 ["useSignalState"]
      119 MOVE                             R18 R15
      120 CALL                             R17 1 1
      121 GETUPVAL                         R18 0
      122 GETTABLEKS                       R18 R18 K9 ["useCallback"]
      124 NEWCLOSURE                       R19 P3
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R8
      130 NEWTABLE                         R20 0 5
      132 MOVE                             R21 R11
      133 GETTABLEKS                       R22 R5 K10 ["selectionService"]
      135 GETTABLEKS                       R23 R1 K8 ["instanceRegistry"]
      137 MOVE                             R24 R8
      138 MOVE                             R25 R16
      139 SETLIST                          R20 R21 5 [1]
      141 CALL                             R18 2 1
      142 OR                               R19 R7 R9
      143 GETUPVAL                         R20 0
      144 GETTABLEKS                       R20 R20 K9 ["useCallback"]
      146 NEWCLOSURE                       R21 P4
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R19
      149 NEWTABLE                         R22 0 4
      151 GETTABLEKS                       R23 R1 K8 ["instanceRegistry"]
      153 GETTABLEKS                       R24 R5 K10 ["selectionService"]
      155 MOVE                             R25 R19
      156 MOVE                             R26 R9
      157 SETLIST                          R22 R23 4 [1]
      159 CALL                             R20 2 1
      160 GETUPVAL                         R21 0
      161 GETTABLEKS                       R21 R21 K11 ["useEffect"]
      163 NEWCLOSURE                       R22 P5
      164 CAPTURE                          VAL R6
      165 CAPTURE                          UPVAL U14
      166 CAPTURE                          VAL R1
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R16
      169 CAPTURE                          VAL R4
      170 NEWTABLE                         R23 0 5
      172 MOVE                             R24 R10
      173 MOVE                             R25 R6
      174 MOVE                             R26 R4
      175 MOVE                             R27 R16
      176 GETTABLEKS                       R28 R1 K8 ["instanceRegistry"]
      178 SETLIST                          R23 R24 5 [1]
      180 CALL                             R21 2 0
      181 GETUPVAL                         R21 15
      182 GETTABLEKS                       R21 R21 K12 ["useProducer"]
      184 MOVE                             R22 R17
      185 CALL                             R21 1 0
      186 GETUPVAL                         R21 16
      187 GETTABLEKS                       R21 R21 K12 ["useProducer"]
      189 MOVE                             R22 R18
      190 CALL                             R21 1 0
      191 GETUPVAL                         R21 17
      192 GETTABLEKS                       R21 R21 K12 ["useProducer"]
      194 MOVE                             R22 R19
      195 CALL                             R21 1 0
      196 GETUPVAL                         R21 18
      197 GETTABLEKS                       R21 R21 K12 ["useProducer"]
      199 MOVE                             R22 R20
      200 CALL                             R21 1 0
      201 GETUPVAL                         R21 19
      202 GETTABLEKS                       R21 R21 K12 ["useProducer"]
      204 MOVE                             R22 R11
      205 CALL                             R21 1 0
      206 GETUPVAL                         R21 2
      207 CALL                             R21 0 1
      208 JUMPIFNOT                        R21 ; [+5]
      209 GETUPVAL                         R21 20
      210 GETTABLEKS                       R21 R21 K12 ["useProducer"]
      212 MOVE                             R22 R9
      213 CALL                             R21 1 0
      214 GETUPVAL                         R21 8
      215 MOVE                             R22 R19
      216 CALL                             R21 1 1
      217 GETUPVAL                         R22 0
      218 GETTABLEKS                       R22 R22 K6 ["useMemo"]
      220 NEWCLOSURE                       R23 P6
      221 CAPTURE                          UPVAL U12
      222 CAPTURE                          VAL R21
      223 CAPTURE                          VAL R1
      224 NEWTABLE                         R24 0 2
      226 GETTABLEKS                       R25 R1 K8 ["instanceRegistry"]
      228 MOVE                             R26 R19
      229 SETLIST                          R24 R25 2 [1]
      231 CALL                             R22 2 1
      232 GETUPVAL                         R23 0
      233 GETTABLEKS                       R23 R23 K6 ["useMemo"]
      235 NEWCLOSURE                       R24 P7
      236 CAPTURE                          VAL R15
      237 CAPTURE                          VAL R21
      238 CAPTURE                          VAL R22
      239 CAPTURE                          VAL R17
      240 CAPTURE                          VAL R19
      241 CAPTURE                          VAL R18
      242 CAPTURE                          VAL R11
      243 CAPTURE                          VAL R20
      244 CAPTURE                          VAL R12
      245 NEWTABLE                         R25 0 9
      247 MOVE                             R26 R15
      248 MOVE                             R27 R21
      249 MOVE                             R28 R22
      250 MOVE                             R29 R17
      251 MOVE                             R30 R19
      252 MOVE                             R31 R18
      253 MOVE                             R32 R11
      254 MOVE                             R33 R20
      255 GETUPVAL                         R35 2
      256 CALL                             R35 0 1
      257 JUMPIFNOT                        R35 ; [+2]
      258 MOVE                             R34 R12
      259 JUMP                             ; [+1]
      260 MOVE                             R34 R12
      261 SETLIST                          R25 R26 9 [1]
      263 CALL                             R23 2 1
      264 GETUPVAL                         R24 0
      265 GETTABLEKS                       R24 R24 K13 ["createElement"]
      267 GETUPVAL                         R25 21
      268 GETTABLEKS                       R25 R25 K14 ["Provider"]
      270 DUPTABLE                         R26 K16 [{"value"}]
      271 SETTABLEKS                       R23 R26 K15 ["value"]
      273 GETTABLEKS                       R27 R0 K17 ["children"]
      275 CALL                             R24 3 -1
      276 RETURN                           R24 -1

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_17:
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

PROTO_18:
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
       80 GETUPVAL                         R23 10
       81 CALL                             R23 0 1
       82 JUMPIFNOT                        R23 ; [+2]
       83 MOVE                             R22 R10
       84 JUMP                             ; [+1]
       85 LOADNIL                          R22
       86 SETLIST                          R13 R14 9 [1]
       88 CALL                             R11 2 1
       89 GETUPVAL                         R12 0
       90 GETTABLEKS                       R12 R12 K6 ["createElement"]
       92 GETUPVAL                         R13 11
       93 GETTABLEKS                       R13 R13 K7 ["Provider"]
       95 DUPTABLE                         R14 K9 [{"value"}]
       96 SETTABLEKS                       R11 R14 K8 ["value"]
       98 GETTABLEKS                       R15 R0 K10 ["children"]
      100 CALL                             R12 3 -1
      101 RETURN                           R12 -1

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
       25 GETTABLEKS                       R4 R0 K9 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["NativeGraphContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["Networking"]
       36 GETTABLEKS                       R5 R5 K13 ["NetworkUtils"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K14 ["Parent"]
       43 GETTABLEKS                       R6 R6 K15 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K14 ["Parent"]
       50 GETTABLEKS                       R7 R7 K16 ["ReactUtils"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K9 ["Contexts"]
       57 GETTABLEKS                       R8 R8 K17 ["RigListContext"]
       59 GETTABLEKS                       R8 R8 K18 ["RigListContextUtils"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K9 ["Contexts"]
       66 GETTABLEKS                       R9 R9 K19 ["SelectedGraphContext"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K9 ["Contexts"]
       73 GETTABLEKS                       R10 R10 K20 ["SelectionServiceContext"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K6 ["Util"]
       80 GETTABLEKS                       R11 R11 K21 ["Signals"]
       82 GETTABLEKS                       R11 R11 K22 ["Experimental"]
       84 GETTABLEKS                       R11 R11 K23 ["SignalExperimentalUtils"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K14 ["Parent"]
       91 GETTABLEKS                       R12 R12 K21 ["Signals"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R13 R0 K6 ["Util"]
       98 GETTABLEKS                       R13 R13 K21 ["Signals"]
      100 GETTABLEKS                       R13 R13 K24 ["SignalsInstanceUtils"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R14 R0 K14 ["Parent"]
      107 GETTABLEKS                       R14 R14 K25 ["SignalsReact"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R15 R0 K6 ["Util"]
      114 GETTABLEKS                       R15 R15 K21 ["Signals"]
      116 GETTABLEKS                       R15 R15 K26 ["TypedInstanceSignals"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R16 R0 K27 ["Flags"]
      123 GETTABLEKS                       R16 R16 K28 ["getFFlagAnimGraphUI_RunTimeDebug"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K5 [require]
      128 GETTABLEKS                       R17 R0 K29 ["Hooks"]
      130 GETTABLEKS                       R17 R17 K30 ["useSelection"]
      132 CALL                             R16 1 1
      133 GETIMPORT                        R17 K5 [require]
      135 GETTABLEKS                       R18 R0 K29 ["Hooks"]
      137 GETTABLEKS                       R18 R18 K31 ["useStateToSignal"]
      139 CALL                             R17 1 1
      140 DUPTABLE                         R18 K43 [{["rigReferences"], ["followSelection"] = False, ["observeRigReferences"], ["observeSelectedRigId"], ["observeSelectedRig"], ["observeSelectionTrackedRigId"], ["selectRigByIdAsync"], ["setFollowSelectionAsync"], ["selectedRigId"] = }]
      141 NEWTABLE                         R19 0 0
      143 SETTABLEKS                       R19 R18 K32 ["rigReferences"]
      145 GETTABLEKS                       R19 R12 K44 ["of"]
      147 NEWTABLE                         R20 0 0
      149 CALL                             R19 1 1
      150 SETTABLEKS                       R19 R18 K35 ["observeRigReferences"]
      152 GETTABLEKS                       R19 R12 K44 ["of"]
      154 LOADNIL                          R20
      155 CALL                             R19 1 1
      156 SETTABLEKS                       R19 R18 K36 ["observeSelectedRigId"]
      158 GETTABLEKS                       R19 R12 K44 ["of"]
      160 LOADNIL                          R20
      161 CALL                             R19 1 1
      162 SETTABLEKS                       R19 R18 K37 ["observeSelectedRig"]
      164 GETTABLEKS                       R19 R12 K44 ["of"]
      166 LOADNIL                          R20
      167 CALL                             R19 1 1
      168 SETTABLEKS                       R19 R18 K38 ["observeSelectionTrackedRigId"]
      170 GETTABLEKS                       R19 R6 K45 ["createUnimplemented"]
      172 LOADK                            R20 K39 ["selectRigByIdAsync"]
      173 CALL                             R19 1 1
      174 SETTABLEKS                       R19 R18 K39 ["selectRigByIdAsync"]
      176 GETTABLEKS                       R19 R6 K45 ["createUnimplemented"]
      178 LOADK                            R20 K40 ["setFollowSelectionAsync"]
      179 CALL                             R19 1 1
      180 SETTABLEKS                       R19 R18 K40 ["setFollowSelectionAsync"]
      182 GETTABLEKS                       R19 R5 K46 ["createContext"]
      184 MOVE                             R20 R18
      185 CALL                             R19 1 1
      186 GETTABLEKS                       R20 R4 K47 ["createBoundAction"]
      188 LOADK                            R21 K48 ["RigListContext_selectRig"]
      189 CALL                             R20 1 1
      190 GETTABLEKS                       R21 R4 K49 ["createReplicatedState"]
      192 LOADK                            R22 K50 ["RigListContext_rigReferences"]
      193 CALL                             R21 1 1
      194 GETTABLEKS                       R22 R4 K49 ["createReplicatedState"]
      196 LOADK                            R23 K51 ["RigListContext_selectedRigId"]
      197 CALL                             R22 1 1
      198 GETTABLEKS                       R23 R4 K49 ["createReplicatedState"]
      200 LOADK                            R24 K52 ["RigListContext_followSelection"]
      201 CALL                             R23 1 1
      202 GETTABLEKS                       R24 R4 K49 ["createReplicatedState"]
      204 LOADK                            R25 K53 ["RigListContext_selectionTrackedRigId"]
      205 CALL                             R24 1 1
      206 GETTABLEKS                       R25 R4 K47 ["createBoundAction"]
      208 LOADK                            R26 K54 ["RigListContext_setFollowSelectionAsync"]
      209 CALL                             R25 1 1
      210 DUPCLOSURE                       R26 K55 [PROTO_14]
      211 CAPTURE                          VAL R5
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R15
      214 CAPTURE                          VAL R8
      215 CAPTURE                          VAL R3
      216 CAPTURE                          VAL R13
      217 CAPTURE                          VAL R9
      218 CAPTURE                          VAL R16
      219 CAPTURE                          VAL R17
      220 CAPTURE                          VAL R11
      221 CAPTURE                          VAL R7
      222 CAPTURE                          VAL R12
      223 CAPTURE                          VAL R10
      224 CAPTURE                          VAL R14
      225 CAPTURE                          VAL R1
      226 CAPTURE                          VAL R21
      227 CAPTURE                          VAL R20
      228 CAPTURE                          VAL R22
      229 CAPTURE                          VAL R25
      230 CAPTURE                          VAL R23
      231 CAPTURE                          VAL R24
      232 CAPTURE                          VAL R19
      233 DUPCLOSURE                       R27 K56 [PROTO_18]
      234 CAPTURE                          VAL R5
      235 CAPTURE                          VAL R2
      236 CAPTURE                          VAL R21
      237 CAPTURE                          VAL R22
      238 CAPTURE                          VAL R20
      239 CAPTURE                          VAL R23
      240 CAPTURE                          VAL R25
      241 CAPTURE                          VAL R17
      242 CAPTURE                          VAL R10
      243 CAPTURE                          VAL R24
      244 CAPTURE                          VAL R15
      245 CAPTURE                          VAL R19
      246 DUPTABLE                         R28 K60 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      247 SETTABLEKS                       R19 R28 K57 ["Context"]
      249 SETTABLEKS                       R26 R28 K58 ["EditableDataModelProvider"]
      251 SETTABLEKS                       R27 R28 K59 ["UIDataModelProvider"]
      253 RETURN                           R28 1
