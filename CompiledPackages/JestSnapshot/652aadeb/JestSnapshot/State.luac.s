PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["getInstance"]
        3 CALL                             R3 0 1
        4 GETTABLEKS                       R4 R1 K1 ["updateSnapshot"]
        6 CALL                             R2 2 1
        7 GETTABLEKS                       R3 R2 K2 ["data"]
        9 GETTABLEKS                       R4 R2 K3 ["dirty"]
       11 DUPTABLE                         R5 K19 [{"_snapshotPath", "_initialData", "_snapshotData", "_dirty", "_inlineSnapshots", "_uncheckedKeys", "_counters", "_index", "expand", "added", "matched", "unmatched", "_updateSnapshot", "updated", "_snapshotFormat"}]
       12 SETTABLEKS                       R0 R5 K4 ["_snapshotPath"]
       14 SETTABLEKS                       R3 R5 K5 ["_initialData"]
       16 SETTABLEKS                       R3 R5 K6 ["_snapshotData"]
       18 SETTABLEKS                       R4 R5 K7 ["_dirty"]
       20 NEWTABLE                         R6 0 0
       22 SETTABLEKS                       R6 R5 K8 ["_inlineSnapshots"]
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R6 R7 K20 ["new"]
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R7 R8 K21 ["keys"]
       30 MOVE                             R8 R3
       31 CALL                             R7 1 -1
       32 CALL                             R6 -1 1
       33 SETTABLEKS                       R6 R5 K9 ["_uncheckedKeys"]
       35 NEWTABLE                         R6 0 0
       37 SETTABLEKS                       R6 R5 K10 ["_counters"]
       39 LOADN                            R6 0
       40 SETTABLEKS                       R6 R5 K11 ["_index"]
       42 GETTABLEKS                       R7 R1 K12 ["expand"]
       44 ORK                              R6 R7 K22 [False]
       45 SETTABLEKS                       R6 R5 K12 ["expand"]
       47 LOADN                            R6 0
       48 SETTABLEKS                       R6 R5 K13 ["added"]
       50 LOADN                            R6 0
       51 SETTABLEKS                       R6 R5 K14 ["matched"]
       53 LOADN                            R6 0
       54 SETTABLEKS                       R6 R5 K15 ["unmatched"]
       56 GETTABLEKS                       R6 R1 K1 ["updateSnapshot"]
       58 SETTABLEKS                       R6 R5 K16 ["_updateSnapshot"]
       60 LOADN                            R6 0
       61 SETTABLEKS                       R6 R5 K17 ["updated"]
       63 GETTABLEKS                       R6 R1 K23 ["snapshotFormat"]
       65 SETTABLEKS                       R6 R5 K18 ["_snapshotFormat"]
       67 GETUPVAL                         R8 3
       68 FASTCALL2                        SETMETATABLE R5 R8 ; [+4]
       70 MOVE                             R7 R5
       71 GETIMPORT                        R6 K25 [setmetatable]
       73 CALL                             R6 2 1
       74 RETURN                           R6 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["_uncheckedKeys"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R7 0
        6 MOVE                             R8 R6
        7 CALL                             R7 1 1
        8 JUMPIFNOTEQ                      R7 R1 ; [+7]
       10 GETTABLEKS                       R7 R0 K0 ["_uncheckedKeys"]
       12 MOVE                             R9 R6
       13 NAMECALL                         R7 R7 K1 ["delete"]
       15 CALL                             R7 2 0
       16 FORGLOOP                         R2 2 ; [-12]
       18 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R4 1
        1 SETTABLEKS                       R4 R0 K0 ["_dirty"]
        3 GETTABLEKS                       R4 R3 K1 ["isInline"]
        5 JUMPIFNOT                        R4 ; [+7]
        6 GETIMPORT                        R4 K3 [error]
        8 GETUPVAL                         R5 0
        9 LOADK                            R6 K4 ["Jest-Roblox: inline snapshot testing is not currently supported"]
       10 CALL                             R5 1 -1
       11 CALL                             R4 -1 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R4 R0 K5 ["_snapshotData"]
       15 SETTABLE                         R2 R4 R1
       16 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_initialData"]
        2 SETTABLEKS                       R1 R0 K1 ["_snapshotData"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K2 ["_inlineSnapshots"]
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K3 ["_counters"]
       12 LOADN                            R1 0
       13 SETTABLEKS                       R1 R0 K4 ["_index"]
       15 LOADN                            R1 0
       16 SETTABLEKS                       R1 R0 K5 ["added"]
       18 LOADN                            R1 0
       19 SETTABLEKS                       R1 R0 K6 ["matched"]
       21 LOADN                            R1 0
       22 SETTABLEKS                       R1 R0 K7 ["unmatched"]
       24 LOADN                            R1 0
       25 SETTABLEKS                       R1 R0 K8 ["updated"]
       27 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["keys"]
        3 GETTABLEKS                       R4 R0 K1 ["_snapshotData"]
        5 CALL                             R3 1 1
        6 LENGTH                           R2 R3
        7 LOADN                            R3 0
        8 JUMPIFLT                         R3 R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 GETTABLEKS                       R4 R0 K2 ["_inlineSnapshots"]
       14 LENGTH                           R3 R4
       15 LOADN                            R4 0
       16 JUMPIFLT                         R4 R3 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 NOT                              R3 R1
       21 JUMPIFNOT                        R3 ; [+1]
       22 NOT                              R3 R2
       23 DUPTABLE                         R4 K5 [{"deleted", "saved"}]
       24 LOADB                            R5 0
       25 SETTABLEKS                       R5 R4 K3 ["deleted"]
       27 LOADB                            R5 0
       28 SETTABLEKS                       R5 R4 K4 ["saved"]
       30 GETTABLEKS                       R5 R0 K6 ["_dirty"]
       32 JUMPIF                           R5 ; [+7]
       33 GETTABLEKS                       R6 R0 K7 ["_uncheckedKeys"]
       35 GETTABLEKS                       R5 R6 K8 ["size"]
       37 LOADN                            R6 0
       38 JUMPIFNOTLT                      R6 R5 ; [+30]
       40 JUMPIF                           R3 ; [+28]
       41 JUMPIFNOT                        R1 ; [+16]
       42 GETTABLEKS                       R5 R0 K6 ["_dirty"]
       44 JUMPIF                           R5 ; [+4]
       45 GETTABLEKS                       R5 R0 K9 ["_updateSnapshot"]
       47 JUMPIFNOTEQKS                    R5 K10 ["all"] ; [+10]
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R6 R0 K1 ["_snapshotData"]
       52 GETTABLEKS                       R8 R0 K11 ["_snapshotPath"]
       54 GETTABLEKS                       R7 R8 K12 ["getPath"]
       56 CALL                             R7 0 -1
       57 CALL                             R5 -1 0
       58 JUMPIFNOT                        R2 ; [+6]
       59 GETIMPORT                        R5 K14 [error]
       61 GETUPVAL                         R6 2
       62 LOADK                            R7 K15 ["Jest-Roblox: inline snapshot testing is not currently supported"]
       63 CALL                             R6 1 -1
       64 CALL                             R5 -1 0
       65 LOADB                            R5 1
       66 SETTABLEKS                       R5 R4 K4 ["saved"]
       68 RETURN                           R4 1
       69 JUMPIF                           R1 ; [+21]
       70 GETTABLEKS                       R6 R0 K11 ["_snapshotPath"]
       72 GETTABLEKS                       R5 R6 K16 ["getInstance"]
       74 CALL                             R5 0 1
       75 JUMPIFEQKNIL                     R5 ; [+15]
       77 GETTABLEKS                       R5 R0 K9 ["_updateSnapshot"]
       79 JUMPIFNOTEQKS                    R5 K10 ["all"] ; [+8]
       81 GETUPVAL                         R5 3
       82 GETTABLEKS                       R7 R0 K11 ["_snapshotPath"]
       84 GETTABLEKS                       R6 R7 K12 ["getPath"]
       86 CALL                             R6 0 -1
       87 CALL                             R5 -1 0
       88 LOADB                            R5 1
       89 SETTABLEKS                       R5 R4 K3 ["deleted"]
       91 RETURN                           R4 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K1 ["_uncheckedKeys"]
        2 GETTABLEKS                       R2 R3 K2 ["size"]
        4 ORK                              R1 R2 K0 [0]
        5 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["from"]
        3 GETTABLEKS                       R2 R0 K1 ["_uncheckedKeys"]
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_updateSnapshot"]
        2 JUMPIFNOTEQKS                    R1 K1 ["all"] ; [+27]
        4 GETTABLEKS                       R2 R0 K2 ["_uncheckedKeys"]
        6 GETTABLEKS                       R1 R2 K3 ["size"]
        8 LOADN                            R2 0
        9 JUMPIFNOTLT                      R2 R1 ; [+20]
       11 LOADB                            R1 1
       12 SETTABLEKS                       R1 R0 K4 ["_dirty"]
       14 GETTABLEKS                       R1 R0 K2 ["_uncheckedKeys"]
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 GETTABLEKS                       R6 R0 K5 ["_snapshotData"]
       21 LOADNIL                          R7
       22 SETTABLE                         R7 R6 R5
       23 FORGLOOP                         R1 2 ; [-5]
       25 GETTABLEKS                       R1 R0 K2 ["_uncheckedKeys"]
       27 NAMECALL                         R1 R1 K6 ["clear"]
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_snapshotPath"]
        3 GETTABLEKS                       R0 R1 K1 ["getInstance"]
        5 CALL                             R0 0 1
        6 GETIMPORT                        R1 K3 [require]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["testName"]
        2 GETTABLEKS                       R3 R1 K1 ["received"]
        4 GETTABLEKS                       R4 R1 K2 ["isInline"]
        6 GETTABLEKS                       R5 R1 K3 ["error_"]
        8 GETTABLEKS                       R6 R0 K4 ["_counters"]
       10 GETTABLEKS                       R10 R0 K4 ["_counters"]
       12 GETTABLE                         R9 R10 R2
       13 ORK                              R8 R9 K6 [0]
       14 ADDK                             R7 R8 K5 [1]
       15 SETTABLE                         R7 R6 R2
       16 GETTABLEKS                       R7 R0 K4 ["_counters"]
       18 GETTABLE                         R6 R7 R2
       19 GETTABLEKS                       R8 R1 K7 ["key"]
       21 JUMPIFNOT                        R8 ; [+3]
       22 GETTABLEKS                       R7 R1 K7 ["key"]
       24 JUMP                             ; [+4]
       25 GETUPVAL                         R7 0
       26 MOVE                             R8 R2
       27 MOVE                             R9 R6
       28 CALL                             R7 2 1
       29 JUMPIFNOT                        R4 ; [+5]
       30 GETTABLEKS                       R9 R0 K8 ["_snapshotData"]
       32 GETTABLE                         R8 R9 R7
       33 JUMPIFNOTEQKNIL                  R8 ; [+7]
       35 GETTABLEKS                       R8 R0 K9 ["_uncheckedKeys"]
       37 MOVE                             R10 R7
       38 NAMECALL                         R8 R8 K10 ["delete"]
       40 CALL                             R8 2 0
       41 GETUPVAL                         R8 1
       42 GETUPVAL                         R9 2
       43 MOVE                             R10 R3
       44 LOADNIL                          R11
       45 GETTABLEKS                       R12 R0 K11 ["_snapshotFormat"]
       47 CALL                             R9 3 -1
       48 CALL                             R8 -1 1
       49 LOADNIL                          R9
       50 JUMPIFNOT                        R4 ; [+7]
       51 GETIMPORT                        R10 K13 [error]
       53 GETUPVAL                         R11 3
       54 LOADK                            R12 K14 ["Jest-Roblox: inline snapshot testing is not currently supported"]
       55 CALL                             R11 1 -1
       56 CALL                             R10 -1 0
       57 JUMP                             ; [+3]
       58 GETTABLEKS                       R10 R0 K8 ["_snapshotData"]
       60 GETTABLE                         R9 R10 R7
       61 JUMPIFEQ                         R9 R8 ; [+2]
       63 LOADB                            R10 0 +1
       64 LOADB                            R10 1
       65 JUMPIFNOTEQKNIL                  R9 ; [+2]
       67 LOADB                            R11 0 +1
       68 LOADB                            R11 1
       69 GETIMPORT                        R12 K16 [pcall]
       71 NEWCLOSURE                       R13 P0
       72 CAPTURE                          VAL R0
       73 CALL                             R12 1 2
       74 OR                               R14 R4 R12
       75 JUMPIFNOT                        R10 ; [+4]
       76 JUMPIF                           R4 ; [+3]
       77 GETTABLEKS                       R15 R0 K8 ["_snapshotData"]
       79 SETTABLE                         R8 R15 R7
       80 JUMPIFNOT                        R11 ; [+4]
       81 GETTABLEKS                       R15 R0 K17 ["_updateSnapshot"]
       83 JUMPIFEQKS                       R15 K18 ["all"] ; [+11]
       85 JUMPIFNOT                        R11 ; [+1]
       86 JUMPIF                           R14 ; [+72]
       87 GETTABLEKS                       R15 R0 K17 ["_updateSnapshot"]
       89 JUMPIFEQKS                       R15 K19 ["new"] ; [+5]
       91 GETTABLEKS                       R15 R0 K17 ["_updateSnapshot"]
       93 JUMPIFNOTEQKS                    R15 K18 ["all"] ; [+65]
       95 GETTABLEKS                       R15 R0 K17 ["_updateSnapshot"]
       97 JUMPIFNOTEQKS                    R15 K18 ["all"] ; [+31]
       99 JUMPIF                           R10 ; [+23]
      100 JUMPIFNOT                        R11 ; [+6]
      101 GETTABLEKS                       R16 R0 K20 ["updated"]
      103 ADDK                             R15 R16 K5 [1]
      104 SETTABLEKS                       R15 R0 K20 ["updated"]
      106 JUMP                             ; [+5]
      107 GETTABLEKS                       R16 R0 K21 ["added"]
      109 ADDK                             R15 R16 K5 [1]
      110 SETTABLEKS                       R15 R0 K21 ["added"]
      112 MOVE                             R17 R7
      113 MOVE                             R18 R8
      114 DUPTABLE                         R19 K22 [{"error", "isInline"}]
      115 SETTABLEKS                       R5 R19 K12 ["error"]
      117 SETTABLEKS                       R4 R19 K2 ["isInline"]
      119 NAMECALL                         R15 R0 K23 ["_addSnapshot"]
      121 CALL                             R15 4 0
      122 JUMP                             ; [+21]
      123 GETTABLEKS                       R16 R0 K24 ["matched"]
      125 ADDK                             R15 R16 K5 [1]
      126 SETTABLEKS                       R15 R0 K24 ["matched"]
      128 JUMP                             ; [+15]
      129 MOVE                             R17 R7
      130 MOVE                             R18 R8
      131 DUPTABLE                         R19 K22 [{"error", "isInline"}]
      132 SETTABLEKS                       R5 R19 K12 ["error"]
      134 SETTABLEKS                       R4 R19 K2 ["isInline"]
      136 NAMECALL                         R15 R0 K23 ["_addSnapshot"]
      138 CALL                             R15 4 0
      139 GETTABLEKS                       R16 R0 K21 ["added"]
      141 ADDK                             R15 R16 K5 [1]
      142 SETTABLEKS                       R15 R0 K21 ["added"]
      144 DUPTABLE                         R15 K29 [{"actual", "count", "expected", "key", "pass"}]
      145 LOADK                            R16 K30 [""]
      146 SETTABLEKS                       R16 R15 K25 ["actual"]
      148 SETTABLEKS                       R6 R15 K26 ["count"]
      150 LOADK                            R16 K30 [""]
      151 SETTABLEKS                       R16 R15 K27 ["expected"]
      153 SETTABLEKS                       R7 R15 K7 ["key"]
      155 LOADB                            R16 1
      156 SETTABLEKS                       R16 R15 K28 ["pass"]
      158 RETURN                           R15 1
      159 JUMPIF                           R10 ; [+27]
      160 GETTABLEKS                       R16 R0 K31 ["unmatched"]
      162 ADDK                             R15 R16 K5 [1]
      163 SETTABLEKS                       R15 R0 K31 ["unmatched"]
      165 JUMPIFNOT                        R9 ; [+4]
      166 GETUPVAL                         R15 4
      167 MOVE                             R16 R9
      168 CALL                             R15 1 1
      169 JUMP                             ; [+1]
      170 LOADNIL                          R15
      171 DUPTABLE                         R16 K29 [{"actual", "count", "expected", "key", "pass"}]
      172 GETUPVAL                         R17 4
      173 MOVE                             R18 R8
      174 CALL                             R17 1 1
      175 SETTABLEKS                       R17 R16 K25 ["actual"]
      177 SETTABLEKS                       R6 R16 K26 ["count"]
      179 SETTABLEKS                       R15 R16 K27 ["expected"]
      181 SETTABLEKS                       R7 R16 K7 ["key"]
      183 LOADB                            R17 0
      184 SETTABLEKS                       R17 R16 K28 ["pass"]
      186 RETURN                           R16 1
      187 GETTABLEKS                       R16 R0 K24 ["matched"]
      189 ADDK                             R15 R16 K5 [1]
      190 SETTABLEKS                       R15 R0 K24 ["matched"]
      192 DUPTABLE                         R15 K29 [{"actual", "count", "expected", "key", "pass"}]
      193 LOADK                            R16 K30 [""]
      194 SETTABLEKS                       R16 R15 K25 ["actual"]
      196 SETTABLEKS                       R6 R15 K26 ["count"]
      198 LOADK                            R16 K30 [""]
      199 SETTABLEKS                       R16 R15 K27 ["expected"]
      201 SETTABLEKS                       R7 R15 K7 ["key"]
      203 LOADB                            R16 1
      204 SETTABLEKS                       R16 R15 K28 ["pass"]
      206 RETURN                           R15 1

PROTO_10:
        0 GETTABLEKS                       R4 R0 K0 ["_counters"]
        2 GETTABLEKS                       R8 R0 K0 ["_counters"]
        4 GETTABLE                         R7 R8 R1
        5 ORK                              R6 R7 K2 [0]
        6 ADDK                             R5 R6 K1 [1]
        7 SETTABLE                         R5 R4 R1
        8 GETTABLEKS                       R5 R0 K0 ["_counters"]
       10 GETTABLE                         R4 R5 R1
       11 MOVE                             R5 R3
       12 JUMPIF                           R5 ; [+4]
       13 GETUPVAL                         R5 0
       14 MOVE                             R6 R1
       15 MOVE                             R7 R4
       16 CALL                             R5 2 1
       17 MOVE                             R3 R5
       18 GETTABLEKS                       R5 R0 K3 ["_uncheckedKeys"]
       20 MOVE                             R7 R3
       21 NAMECALL                         R5 R5 K4 ["delete"]
       23 CALL                             R5 2 0
       24 GETTABLEKS                       R6 R0 K5 ["unmatched"]
       26 ADDK                             R5 R6 K1 [1]
       27 SETTABLEKS                       R5 R0 K5 ["unmatched"]
       29 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETTABLEKS                       R4 R2 K7 ["Error"]
       16 GETTABLEKS                       R5 R2 K8 ["Object"]
       18 GETTABLEKS                       R6 R2 K9 ["Set"]
       20 GETIMPORT                        R7 K4 [require]
       22 GETTABLEKS                       R8 R1 K10 ["JestTypes"]
       24 CALL                             R7 1 1
       25 GETIMPORT                        R8 K4 [require]
       27 GETTABLEKS                       R9 R0 K11 ["PrettyFormat"]
       29 CALL                             R8 1 1
       30 GETIMPORT                        R9 K4 [require]
       32 GETTABLEKS                       R10 R0 K12 ["utils"]
       34 CALL                             R9 1 1
       35 GETTABLEKS                       R10 R9 K13 ["addExtraLineBreaks"]
       37 GETTABLEKS                       R11 R9 K14 ["getSnapshotData"]
       39 GETTABLEKS                       R12 R9 K15 ["keyToTestName"]
       41 GETTABLEKS                       R13 R9 K16 ["removeExtraLineBreaks"]
       43 GETTABLEKS                       R14 R9 K17 ["saveSnapshotFile"]
       45 GETTABLEKS                       R15 R9 K18 ["removeSnapshotFile"]
       47 GETTABLEKS                       R16 R9 K19 ["serialize"]
       49 GETTABLEKS                       R17 R9 K20 ["testNameToKey"]
       51 GETIMPORT                        R18 K4 [require]
       53 GETTABLEKS                       R19 R0 K21 ["types"]
       55 CALL                             R18 1 1
       56 NEWTABLE                         R19 0 0
       58 SETTABLEKS                       R19 R19 K22 ["__index"]
       60 DUPCLOSURE                       R20 K23 [PROTO_0]
       61 CAPTURE                          VAL R11
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R19
       65 SETTABLEKS                       R20 R19 K24 ["new"]
       67 DUPCLOSURE                       R20 K25 [PROTO_1]
       68 CAPTURE                          VAL R12
       69 SETTABLEKS                       R20 R19 K26 ["markSnapshotsAsCheckedForTest"]
       71 DUPCLOSURE                       R20 K27 [PROTO_2]
       72 CAPTURE                          VAL R4
       73 SETTABLEKS                       R20 R19 K28 ["_addSnapshot"]
       75 DUPCLOSURE                       R20 K29 [PROTO_3]
       76 SETTABLEKS                       R20 R19 K30 ["clear"]
       78 DUPCLOSURE                       R20 K31 [PROTO_4]
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R14
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R15
       83 SETTABLEKS                       R20 R19 K32 ["save"]
       85 DUPCLOSURE                       R20 K33 [PROTO_5]
       86 SETTABLEKS                       R20 R19 K34 ["getUncheckedCount"]
       88 DUPCLOSURE                       R20 K35 [PROTO_6]
       89 CAPTURE                          VAL R3
       90 SETTABLEKS                       R20 R19 K36 ["getUncheckedKeys"]
       92 DUPCLOSURE                       R20 K37 [PROTO_7]
       93 SETTABLEKS                       R20 R19 K38 ["removeUncheckedKeys"]
       95 DUPCLOSURE                       R20 K39 [PROTO_9]
       96 CAPTURE                          VAL R17
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R13
      101 SETTABLEKS                       R20 R19 K40 ["match"]
      103 DUPCLOSURE                       R20 K41 [PROTO_10]
      104 CAPTURE                          VAL R17
      105 SETTABLEKS                       R20 R19 K42 ["fail"]
      107 DUPTABLE                         R20 K44 [{"default"}]
      108 SETTABLEKS                       R19 R20 K43 ["default"]
      110 RETURN                           R20 1
