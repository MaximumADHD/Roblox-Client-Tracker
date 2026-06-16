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
        0 DUPTABLE                         R0 K8 [{"observeRigReferences", "observeSelectedRigId", "observeSelectedRig", "rigReferences", "selectedRigId", "selectRigByIdAsync", "followSelection", "setFollowSelectionAsync"}]
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
       25 RETURN                           R0 1

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
       70 GETUPVAL                         R12 0
       71 GETTABLEKS                       R12 R12 K6 ["useMemo"]
       73 DUPCLOSURE                       R13 K7 [PROTO_0]
       74 CAPTURE                          UPVAL U8
       75 NEWTABLE                         R14 0 0
       77 CALL                             R12 2 2
       78 GETUPVAL                         R14 0
       79 GETTABLEKS                       R14 R14 K6 ["useMemo"]
       81 NEWCLOSURE                       R15 P1
       82 CAPTURE                          UPVAL U2
       83 CAPTURE                          UPVAL U9
       84 CAPTURE                          VAL R12
       85 CAPTURE                          UPVAL U10
       86 CAPTURE                          UPVAL U11
       87 CAPTURE                          UPVAL U12
       88 CAPTURE                          VAL R1
       89 NEWTABLE                         R16 0 2
       91 MOVE                             R17 R12
       92 GETTABLEKS                       R18 R1 K8 ["instanceRegistry"]
       94 SETLIST                          R16 R17 2 [1]
       96 CALL                             R14 2 1
       97 GETUPVAL                         R15 0
       98 GETTABLEKS                       R15 R15 K9 ["useCallback"]
      100 NEWCLOSURE                       R16 P2
      101 CAPTURE                          VAL R13
      102 NEWTABLE                         R17 0 1
      104 MOVE                             R18 R13
      105 SETLIST                          R17 R18 1 [1]
      107 CALL                             R15 2 1
      108 GETUPVAL                         R16 5
      109 GETTABLEKS                       R16 R16 K2 ["useSignalState"]
      111 MOVE                             R17 R14
      112 CALL                             R16 1 1
      113 GETUPVAL                         R17 0
      114 GETTABLEKS                       R17 R17 K9 ["useCallback"]
      116 NEWCLOSURE                       R18 P3
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R8
      122 NEWTABLE                         R19 0 5
      124 MOVE                             R20 R11
      125 GETTABLEKS                       R21 R5 K10 ["selectionService"]
      127 GETTABLEKS                       R22 R1 K8 ["instanceRegistry"]
      129 MOVE                             R23 R8
      130 MOVE                             R24 R15
      131 SETLIST                          R19 R20 5 [1]
      133 CALL                             R17 2 1
      134 OR                               R18 R7 R9
      135 GETUPVAL                         R19 0
      136 GETTABLEKS                       R19 R19 K9 ["useCallback"]
      138 NEWCLOSURE                       R20 P4
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R18
      141 NEWTABLE                         R21 0 4
      143 GETTABLEKS                       R22 R1 K8 ["instanceRegistry"]
      145 GETTABLEKS                       R23 R5 K10 ["selectionService"]
      147 MOVE                             R24 R18
      148 MOVE                             R25 R9
      149 SETLIST                          R21 R22 4 [1]
      151 CALL                             R19 2 1
      152 GETUPVAL                         R20 0
      153 GETTABLEKS                       R20 R20 K11 ["useEffect"]
      155 NEWCLOSURE                       R21 P5
      156 CAPTURE                          VAL R6
      157 CAPTURE                          UPVAL U13
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R15
      161 CAPTURE                          VAL R4
      162 NEWTABLE                         R22 0 5
      164 MOVE                             R23 R10
      165 MOVE                             R24 R6
      166 MOVE                             R25 R4
      167 MOVE                             R26 R15
      168 GETTABLEKS                       R27 R1 K8 ["instanceRegistry"]
      170 SETLIST                          R22 R23 5 [1]
      172 CALL                             R20 2 0
      173 GETUPVAL                         R20 14
      174 GETTABLEKS                       R20 R20 K12 ["useProducer"]
      176 MOVE                             R21 R16
      177 CALL                             R20 1 0
      178 GETUPVAL                         R20 15
      179 GETTABLEKS                       R20 R20 K12 ["useProducer"]
      181 MOVE                             R21 R17
      182 CALL                             R20 1 0
      183 GETUPVAL                         R20 16
      184 GETTABLEKS                       R20 R20 K12 ["useProducer"]
      186 MOVE                             R21 R18
      187 CALL                             R20 1 0
      188 GETUPVAL                         R20 17
      189 GETTABLEKS                       R20 R20 K12 ["useProducer"]
      191 MOVE                             R21 R19
      192 CALL                             R20 1 0
      193 GETUPVAL                         R20 18
      194 GETTABLEKS                       R20 R20 K12 ["useProducer"]
      196 MOVE                             R21 R11
      197 CALL                             R20 1 0
      198 GETUPVAL                         R20 19
      199 MOVE                             R21 R18
      200 CALL                             R20 1 1
      201 GETUPVAL                         R21 0
      202 GETTABLEKS                       R21 R21 K6 ["useMemo"]
      204 NEWCLOSURE                       R22 P6
      205 CAPTURE                          UPVAL U11
      206 CAPTURE                          VAL R20
      207 CAPTURE                          VAL R1
      208 NEWTABLE                         R23 0 2
      210 GETTABLEKS                       R24 R1 K8 ["instanceRegistry"]
      212 MOVE                             R25 R18
      213 SETLIST                          R23 R24 2 [1]
      215 CALL                             R21 2 1
      216 GETUPVAL                         R22 0
      217 GETTABLEKS                       R22 R22 K6 ["useMemo"]
      219 NEWCLOSURE                       R23 P7
      220 CAPTURE                          VAL R14
      221 CAPTURE                          VAL R20
      222 CAPTURE                          VAL R21
      223 CAPTURE                          VAL R16
      224 CAPTURE                          VAL R18
      225 CAPTURE                          VAL R17
      226 CAPTURE                          VAL R11
      227 CAPTURE                          VAL R19
      228 NEWTABLE                         R24 0 8
      230 MOVE                             R25 R14
      231 MOVE                             R26 R20
      232 MOVE                             R27 R21
      233 MOVE                             R28 R16
      234 MOVE                             R29 R18
      235 MOVE                             R30 R17
      236 MOVE                             R31 R11
      237 MOVE                             R32 R19
      238 SETLIST                          R24 R25 8 [1]
      240 CALL                             R22 2 1
      241 GETUPVAL                         R23 0
      242 GETTABLEKS                       R23 R23 K13 ["createElement"]
      244 GETUPVAL                         R24 20
      245 GETTABLEKS                       R24 R24 K14 ["Provider"]
      247 DUPTABLE                         R25 K16 [{"value"}]
      248 SETTABLEKS                       R22 R25 K15 ["value"]
      250 GETTABLEKS                       R26 R0 K17 ["children"]
      252 CALL                             R23 3 -1
      253 RETURN                           R23 -1

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
        0 DUPTABLE                         R0 K8 [{"observeRigReferences", "observeSelectedRigId", "observeSelectedRig", "rigReferences", "selectedRigId", "selectRigByIdAsync", "followSelection", "setFollowSelectionAsync"}]
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
       25 RETURN                           R0 1

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
       52 GETUPVAL                         R10 0
       53 GETTABLEKS                       R10 R10 K3 ["useMemo"]
       55 NEWCLOSURE                       R11 P1
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R6
       64 NEWTABLE                         R12 0 8
       66 MOVE                             R13 R7
       67 MOVE                             R14 R8
       68 MOVE                             R15 R9
       69 MOVE                             R16 R2
       70 MOVE                             R17 R3
       71 MOVE                             R18 R4
       72 MOVE                             R19 R5
       73 MOVE                             R20 R6
       74 SETLIST                          R12 R13 8 [1]
       76 CALL                             R10 2 1
       77 GETUPVAL                         R11 0
       78 GETTABLEKS                       R11 R11 K5 ["createElement"]
       80 GETUPVAL                         R12 9
       81 GETTABLEKS                       R12 R12 K6 ["Provider"]
       83 DUPTABLE                         R13 K8 [{"value"}]
       84 SETTABLEKS                       R10 R13 K7 ["value"]
       86 GETTABLEKS                       R14 R0 K9 ["children"]
       88 CALL                             R11 3 -1
       89 RETURN                           R11 -1

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
      140 DUPTABLE                         R18 K40 [{"rigReferences", "followSelection", "observeRigReferences", "observeSelectedRigId", "observeSelectedRig", "selectRigByIdAsync", "setFollowSelectionAsync", "selectedRigId"}]
      141 NEWTABLE                         R19 0 0
      143 SETTABLEKS                       R19 R18 K32 ["rigReferences"]
      145 LOADB                            R19 0
      146 SETTABLEKS                       R19 R18 K33 ["followSelection"]
      148 GETTABLEKS                       R19 R12 K41 ["of"]
      150 NEWTABLE                         R20 0 0
      152 CALL                             R19 1 1
      153 SETTABLEKS                       R19 R18 K34 ["observeRigReferences"]
      155 GETTABLEKS                       R19 R12 K41 ["of"]
      157 LOADNIL                          R20
      158 CALL                             R19 1 1
      159 SETTABLEKS                       R19 R18 K35 ["observeSelectedRigId"]
      161 GETTABLEKS                       R19 R12 K41 ["of"]
      163 LOADNIL                          R20
      164 CALL                             R19 1 1
      165 SETTABLEKS                       R19 R18 K36 ["observeSelectedRig"]
      167 GETTABLEKS                       R19 R6 K42 ["createUnimplemented"]
      169 LOADK                            R20 K37 ["selectRigByIdAsync"]
      170 CALL                             R19 1 1
      171 SETTABLEKS                       R19 R18 K37 ["selectRigByIdAsync"]
      173 GETTABLEKS                       R19 R6 K42 ["createUnimplemented"]
      175 LOADK                            R20 K38 ["setFollowSelectionAsync"]
      176 CALL                             R19 1 1
      177 SETTABLEKS                       R19 R18 K38 ["setFollowSelectionAsync"]
      179 LOADNIL                          R19
      180 SETTABLEKS                       R19 R18 K39 ["selectedRigId"]
      182 GETTABLEKS                       R19 R5 K43 ["createContext"]
      184 MOVE                             R20 R18
      185 CALL                             R19 1 1
      186 GETTABLEKS                       R20 R4 K44 ["createBoundAction"]
      188 LOADK                            R21 K45 ["RigListContext_selectRig"]
      189 CALL                             R20 1 1
      190 GETTABLEKS                       R21 R4 K46 ["createReplicatedState"]
      192 LOADK                            R22 K47 ["RigListContext_rigReferences"]
      193 CALL                             R21 1 1
      194 GETTABLEKS                       R22 R4 K46 ["createReplicatedState"]
      196 LOADK                            R23 K48 ["RigListContext_selectedRigId"]
      197 CALL                             R22 1 1
      198 GETTABLEKS                       R23 R4 K46 ["createReplicatedState"]
      200 LOADK                            R24 K49 ["RigListContext_followSelection"]
      201 CALL                             R23 1 1
      202 GETTABLEKS                       R24 R4 K44 ["createBoundAction"]
      204 LOADK                            R25 K50 ["RigListContext_setFollowSelectionAsync"]
      205 CALL                             R24 1 1
      206 DUPCLOSURE                       R25 K51 [PROTO_14]
      207 CAPTURE                          VAL R5
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R15
      210 CAPTURE                          VAL R8
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R13
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R16
      215 CAPTURE                          VAL R11
      216 CAPTURE                          VAL R7
      217 CAPTURE                          VAL R12
      218 CAPTURE                          VAL R10
      219 CAPTURE                          VAL R14
      220 CAPTURE                          VAL R1
      221 CAPTURE                          VAL R21
      222 CAPTURE                          VAL R20
      223 CAPTURE                          VAL R22
      224 CAPTURE                          VAL R24
      225 CAPTURE                          VAL R23
      226 CAPTURE                          VAL R17
      227 CAPTURE                          VAL R19
      228 DUPCLOSURE                       R26 K52 [PROTO_18]
      229 CAPTURE                          VAL R5
      230 CAPTURE                          VAL R2
      231 CAPTURE                          VAL R21
      232 CAPTURE                          VAL R22
      233 CAPTURE                          VAL R20
      234 CAPTURE                          VAL R23
      235 CAPTURE                          VAL R24
      236 CAPTURE                          VAL R17
      237 CAPTURE                          VAL R10
      238 CAPTURE                          VAL R19
      239 DUPTABLE                         R27 K56 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      240 SETTABLEKS                       R19 R27 K53 ["Context"]
      242 SETTABLEKS                       R25 R27 K54 ["EditableDataModelProvider"]
      244 SETTABLEKS                       R26 R27 K55 ["UIDataModelProvider"]
      246 RETURN                           R27 1
