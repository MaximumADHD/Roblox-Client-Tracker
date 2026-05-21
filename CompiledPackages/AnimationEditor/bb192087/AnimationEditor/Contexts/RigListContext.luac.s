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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["filter"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_2]
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U2
        7 CALL                             R0 2 1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["forEach"]
       11 MOVE                             R2 R0
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U4
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

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
       43 GETUPVAL                         R11 0
       44 GETTABLEKS                       R11 R11 K5 ["useMemo"]
       46 DUPCLOSURE                       R12 K6 [PROTO_0]
       47 CAPTURE                          UPVAL U6
       48 NEWTABLE                         R13 0 0
       50 CALL                             R11 2 2
       51 GETUPVAL                         R13 0
       52 GETTABLEKS                       R13 R13 K5 ["useMemo"]
       54 NEWCLOSURE                       R14 P1
       55 CAPTURE                          UPVAL U7
       56 CAPTURE                          VAL R11
       57 CAPTURE                          UPVAL U8
       58 CAPTURE                          UPVAL U9
       59 CAPTURE                          VAL R1
       60 NEWTABLE                         R15 0 2
       62 MOVE                             R16 R11
       63 GETTABLEKS                       R17 R1 K7 ["instanceRegistry"]
       65 SETLIST                          R15 R16 2 [1]
       67 CALL                             R13 2 1
       68 GETUPVAL                         R14 0
       69 GETTABLEKS                       R14 R14 K8 ["useCallback"]
       71 NEWCLOSURE                       R15 P2
       72 CAPTURE                          VAL R12
       73 NEWTABLE                         R16 0 1
       75 MOVE                             R17 R12
       76 SETLIST                          R16 R17 1 [1]
       78 CALL                             R14 2 1
       79 GETUPVAL                         R15 3
       80 GETTABLEKS                       R15 R15 K2 ["useSignalState"]
       82 MOVE                             R16 R13
       83 CALL                             R15 1 1
       84 GETUPVAL                         R16 0
       85 GETTABLEKS                       R16 R16 K8 ["useCallback"]
       87 NEWCLOSURE                       R17 P3
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R7
       93 NEWTABLE                         R18 0 5
       95 MOVE                             R19 R10
       96 GETTABLEKS                       R20 R4 K9 ["selectionService"]
       98 GETTABLEKS                       R21 R1 K7 ["instanceRegistry"]
      100 MOVE                             R22 R7
      101 MOVE                             R23 R14
      102 SETLIST                          R18 R19 5 [1]
      104 CALL                             R16 2 1
      105 OR                               R17 R6 R8
      106 GETUPVAL                         R18 0
      107 GETTABLEKS                       R18 R18 K8 ["useCallback"]
      109 NEWCLOSURE                       R19 P4
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R17
      112 NEWTABLE                         R20 0 4
      114 GETTABLEKS                       R21 R1 K7 ["instanceRegistry"]
      116 GETTABLEKS                       R22 R4 K9 ["selectionService"]
      118 MOVE                             R23 R17
      119 MOVE                             R24 R8
      120 SETLIST                          R20 R21 4 [1]
      122 CALL                             R18 2 1
      123 GETUPVAL                         R19 0
      124 GETTABLEKS                       R19 R19 K10 ["useEffect"]
      126 NEWCLOSURE                       R20 P5
      127 CAPTURE                          VAL R5
      128 CAPTURE                          UPVAL U10
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R3
      133 NEWTABLE                         R21 0 5
      135 MOVE                             R22 R9
      136 MOVE                             R23 R5
      137 MOVE                             R24 R3
      138 MOVE                             R25 R14
      139 GETTABLEKS                       R26 R1 K7 ["instanceRegistry"]
      141 SETLIST                          R21 R22 5 [1]
      143 CALL                             R19 2 0
      144 GETUPVAL                         R19 11
      145 GETTABLEKS                       R19 R19 K11 ["useProducer"]
      147 MOVE                             R20 R15
      148 CALL                             R19 1 0
      149 GETUPVAL                         R19 12
      150 GETTABLEKS                       R19 R19 K11 ["useProducer"]
      152 MOVE                             R20 R16
      153 CALL                             R19 1 0
      154 GETUPVAL                         R19 13
      155 GETTABLEKS                       R19 R19 K11 ["useProducer"]
      157 MOVE                             R20 R17
      158 CALL                             R19 1 0
      159 GETUPVAL                         R19 14
      160 GETTABLEKS                       R19 R19 K11 ["useProducer"]
      162 MOVE                             R20 R18
      163 CALL                             R19 1 0
      164 GETUPVAL                         R19 15
      165 GETTABLEKS                       R19 R19 K11 ["useProducer"]
      167 MOVE                             R20 R10
      168 CALL                             R19 1 0
      169 GETUPVAL                         R19 16
      170 MOVE                             R20 R17
      171 CALL                             R19 1 1
      172 GETUPVAL                         R20 0
      173 GETTABLEKS                       R20 R20 K5 ["useMemo"]
      175 NEWCLOSURE                       R21 P6
      176 CAPTURE                          UPVAL U8
      177 CAPTURE                          VAL R19
      178 CAPTURE                          VAL R1
      179 NEWTABLE                         R22 0 2
      181 GETTABLEKS                       R23 R1 K7 ["instanceRegistry"]
      183 MOVE                             R24 R17
      184 SETLIST                          R22 R23 2 [1]
      186 CALL                             R20 2 1
      187 GETUPVAL                         R21 0
      188 GETTABLEKS                       R21 R21 K5 ["useMemo"]
      190 NEWCLOSURE                       R22 P7
      191 CAPTURE                          VAL R13
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R20
      194 CAPTURE                          VAL R15
      195 CAPTURE                          VAL R17
      196 CAPTURE                          VAL R16
      197 CAPTURE                          VAL R10
      198 CAPTURE                          VAL R18
      199 NEWTABLE                         R23 0 8
      201 MOVE                             R24 R13
      202 MOVE                             R25 R19
      203 MOVE                             R26 R20
      204 MOVE                             R27 R15
      205 MOVE                             R28 R17
      206 MOVE                             R29 R16
      207 MOVE                             R30 R10
      208 MOVE                             R31 R18
      209 SETLIST                          R23 R24 8 [1]
      211 CALL                             R21 2 1
      212 GETUPVAL                         R22 0
      213 GETTABLEKS                       R22 R22 K12 ["createElement"]
      215 GETUPVAL                         R23 17
      216 GETTABLEKS                       R23 R23 K13 ["Provider"]
      218 DUPTABLE                         R24 K15 [{"value"}]
      219 SETTABLEKS                       R21 R24 K14 ["value"]
      221 GETTABLEKS                       R25 R0 K16 ["children"]
      223 CALL                             R22 3 -1
      224 RETURN                           R22 -1

PROTO_15:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETIMPORT                        R1 K4 [debug.traceback]
        4 LOADK                            R2 K5 ["observeSelectedRig is only available in the editable datamodel"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useConsumer"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["useConsumer"]
        9 LOADNIL                          R3
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K0 ["useConsumer"]
       14 CALL                             R3 0 1
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K0 ["useConsumer"]
       18 LOADB                            R5 0
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 4
       21 GETTABLEKS                       R5 R5 K0 ["useConsumer"]
       23 CALL                             R5 0 1
       24 GETUPVAL                         R6 5
       25 MOVE                             R7 R1
       26 CALL                             R6 1 1
       27 GETUPVAL                         R7 5
       28 MOVE                             R8 R2
       29 CALL                             R7 1 1
       30 GETUPVAL                         R8 6
       31 GETTABLEKS                       R8 R8 K1 ["useCallback"]
       33 DUPCLOSURE                       R9 K2 [PROTO_15]
       34 NEWTABLE                         R10 0 0
       36 CALL                             R8 2 1
       37 GETUPVAL                         R9 6
       38 GETTABLEKS                       R9 R9 K3 ["useMemo"]
       40 NEWCLOSURE                       R10 P1
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R8
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 NEWTABLE                         R11 0 8
       51 MOVE                             R12 R6
       52 MOVE                             R13 R7
       53 MOVE                             R14 R8
       54 MOVE                             R15 R1
       55 MOVE                             R16 R2
       56 MOVE                             R17 R3
       57 MOVE                             R18 R4
       58 MOVE                             R19 R5
       59 SETLIST                          R11 R12 8 [1]
       61 CALL                             R9 2 1
       62 GETUPVAL                         R10 6
       63 GETTABLEKS                       R10 R10 K4 ["createElement"]
       65 GETUPVAL                         R11 7
       66 GETTABLEKS                       R11 R11 K5 ["Provider"]
       68 DUPTABLE                         R12 K7 [{"value"}]
       69 SETTABLEKS                       R9 R12 K6 ["value"]
       71 GETTABLEKS                       R13 R0 K8 ["children"]
       73 CALL                             R10 3 -1
       74 RETURN                           R10 -1

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
       57 GETTABLEKS                       R8 R8 K17 ["SelectionServiceContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Util"]
       64 GETTABLEKS                       R9 R9 K18 ["Signals"]
       66 GETTABLEKS                       R9 R9 K19 ["Experimental"]
       68 GETTABLEKS                       R9 R9 K20 ["SignalExperimentalUtils"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K14 ["Parent"]
       75 GETTABLEKS                       R10 R10 K18 ["Signals"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K6 ["Util"]
       82 GETTABLEKS                       R11 R11 K18 ["Signals"]
       84 GETTABLEKS                       R11 R11 K21 ["SignalsInstanceUtils"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K14 ["Parent"]
       91 GETTABLEKS                       R12 R12 K22 ["SignalsReact"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R13 R0 K6 ["Util"]
       98 GETTABLEKS                       R13 R13 K18 ["Signals"]
      100 GETTABLEKS                       R13 R13 K23 ["TypedInstanceSignals"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETIMPORT                        R14 K1 [script]
      107 GETTABLEKS                       R14 R14 K14 ["Parent"]
      109 GETTABLEKS                       R14 R14 K14 ["Parent"]
      111 GETTABLEKS                       R14 R14 K24 ["Hooks"]
      113 GETTABLEKS                       R14 R14 K25 ["useSelection"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R15 R0 K24 ["Hooks"]
      120 GETTABLEKS                       R15 R15 K26 ["useStateToSignal"]
      122 CALL                             R14 1 1
      123 DUPTABLE                         R15 K35 [{"rigReferences", "followSelection", "observeRigReferences", "observeSelectedRigId", "observeSelectedRig", "selectRigByIdAsync", "setFollowSelectionAsync", "selectedRigId"}]
      124 NEWTABLE                         R16 0 0
      126 SETTABLEKS                       R16 R15 K27 ["rigReferences"]
      128 LOADB                            R16 0
      129 SETTABLEKS                       R16 R15 K28 ["followSelection"]
      131 GETTABLEKS                       R16 R10 K36 ["of"]
      133 NEWTABLE                         R17 0 0
      135 CALL                             R16 1 1
      136 SETTABLEKS                       R16 R15 K29 ["observeRigReferences"]
      138 GETTABLEKS                       R16 R10 K36 ["of"]
      140 LOADNIL                          R17
      141 CALL                             R16 1 1
      142 SETTABLEKS                       R16 R15 K30 ["observeSelectedRigId"]
      144 GETTABLEKS                       R16 R10 K36 ["of"]
      146 LOADNIL                          R17
      147 CALL                             R16 1 1
      148 SETTABLEKS                       R16 R15 K31 ["observeSelectedRig"]
      150 GETTABLEKS                       R16 R6 K37 ["createUnimplemented"]
      152 LOADK                            R17 K32 ["selectRigByIdAsync"]
      153 CALL                             R16 1 1
      154 SETTABLEKS                       R16 R15 K32 ["selectRigByIdAsync"]
      156 GETTABLEKS                       R16 R6 K37 ["createUnimplemented"]
      158 LOADK                            R17 K33 ["setFollowSelectionAsync"]
      159 CALL                             R16 1 1
      160 SETTABLEKS                       R16 R15 K33 ["setFollowSelectionAsync"]
      162 LOADNIL                          R16
      163 SETTABLEKS                       R16 R15 K34 ["selectedRigId"]
      165 GETTABLEKS                       R16 R5 K38 ["createContext"]
      167 MOVE                             R17 R15
      168 CALL                             R16 1 1
      169 GETTABLEKS                       R17 R4 K39 ["createBoundAction"]
      171 LOADK                            R18 K40 ["RigListContext_selectRig"]
      172 CALL                             R17 1 1
      173 GETTABLEKS                       R18 R4 K41 ["createReplicatedState"]
      175 LOADK                            R19 K42 ["RigListContext_rigReferences"]
      176 CALL                             R18 1 1
      177 GETTABLEKS                       R19 R4 K41 ["createReplicatedState"]
      179 LOADK                            R20 K43 ["RigListContext_selectedRigId"]
      180 CALL                             R19 1 1
      181 GETTABLEKS                       R20 R4 K41 ["createReplicatedState"]
      183 LOADK                            R21 K44 ["RigListContext_followSelection"]
      184 CALL                             R20 1 1
      185 GETTABLEKS                       R21 R4 K39 ["createBoundAction"]
      187 LOADK                            R22 K45 ["RigListContext_setFollowSelectionAsync"]
      188 CALL                             R21 1 1
      189 DUPCLOSURE                       R22 K46 [PROTO_14]
      190 CAPTURE                          VAL R5
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R3
      193 CAPTURE                          VAL R11
      194 CAPTURE                          VAL R7
      195 CAPTURE                          VAL R13
      196 CAPTURE                          VAL R9
      197 CAPTURE                          VAL R10
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R12
      200 CAPTURE                          VAL R1
      201 CAPTURE                          VAL R18
      202 CAPTURE                          VAL R17
      203 CAPTURE                          VAL R19
      204 CAPTURE                          VAL R21
      205 CAPTURE                          VAL R20
      206 CAPTURE                          VAL R14
      207 CAPTURE                          VAL R16
      208 DUPCLOSURE                       R23 K47 [PROTO_17]
      209 CAPTURE                          VAL R18
      210 CAPTURE                          VAL R19
      211 CAPTURE                          VAL R17
      212 CAPTURE                          VAL R20
      213 CAPTURE                          VAL R21
      214 CAPTURE                          VAL R14
      215 CAPTURE                          VAL R5
      216 CAPTURE                          VAL R16
      217 DUPTABLE                         R24 K51 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      218 SETTABLEKS                       R16 R24 K48 ["Context"]
      220 SETTABLEKS                       R22 R24 K49 ["EditableDataModelProvider"]
      222 SETTABLEKS                       R23 R24 K50 ["UIDataModelProvider"]
      224 RETURN                           R24 1
