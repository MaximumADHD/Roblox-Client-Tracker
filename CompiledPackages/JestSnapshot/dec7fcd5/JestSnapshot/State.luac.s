PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CoreScriptSyncService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+2]
        5 MOVE                             R2 R1
        6 JUMPIF                           R2 ; [+1]
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["updateSnapshot"]
        4 CALL                             R2 2 1
        5 GETTABLEKS                       R3 R2 K1 ["data"]
        7 GETTABLEKS                       R4 R2 K2 ["dirty"]
        9 DUPTABLE                         R5 K18 [{"_snapshotPath", "_initialData", "_snapshotData", "_dirty", "_inlineSnapshots", "_uncheckedKeys", "_counters", "_index", "expand", "added", "matched", "unmatched", "_updateSnapshot", "updated", "_snapshotFormat"}]
       10 SETTABLEKS                       R0 R5 K3 ["_snapshotPath"]
       12 SETTABLEKS                       R3 R5 K4 ["_initialData"]
       14 SETTABLEKS                       R3 R5 K5 ["_snapshotData"]
       16 SETTABLEKS                       R4 R5 K6 ["_dirty"]
       18 NEWTABLE                         R6 0 0
       20 SETTABLEKS                       R6 R5 K7 ["_inlineSnapshots"]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R6 R7 K19 ["new"]
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R7 R8 K20 ["keys"]
       28 MOVE                             R8 R3
       29 CALL                             R7 1 -1
       30 CALL                             R6 -1 1
       31 SETTABLEKS                       R6 R5 K8 ["_uncheckedKeys"]
       33 NEWTABLE                         R6 0 0
       35 SETTABLEKS                       R6 R5 K9 ["_counters"]
       37 LOADN                            R6 0
       38 SETTABLEKS                       R6 R5 K10 ["_index"]
       40 GETTABLEKS                       R7 R1 K11 ["expand"]
       42 ORK                              R6 R7 K21 [False]
       43 SETTABLEKS                       R6 R5 K11 ["expand"]
       45 LOADN                            R6 0
       46 SETTABLEKS                       R6 R5 K12 ["added"]
       48 LOADN                            R6 0
       49 SETTABLEKS                       R6 R5 K13 ["matched"]
       51 LOADN                            R6 0
       52 SETTABLEKS                       R6 R5 K14 ["unmatched"]
       54 GETTABLEKS                       R6 R1 K0 ["updateSnapshot"]
       56 SETTABLEKS                       R6 R5 K15 ["_updateSnapshot"]
       58 LOADN                            R6 0
       59 SETTABLEKS                       R6 R5 K16 ["updated"]
       61 GETTABLEKS                       R6 R1 K22 ["snapshotFormat"]
       63 SETTABLEKS                       R6 R5 K17 ["_snapshotFormat"]
       65 GETUPVAL                         R8 3
       66 FASTCALL2                        SETMETATABLE R5 R8 ; [+4]
       68 MOVE                             R7 R5
       69 GETIMPORT                        R6 K24 [setmetatable]
       71 CALL                             R6 2 1
       72 RETURN                           R6 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_uncheckedKeys"]
        2 NAMECALL                         R2 R2 K1 ["ipairs"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 0
        7 MOVE                             R8 R6
        8 CALL                             R7 1 1
        9 JUMPIFNOTEQ                      R7 R1 ; [+7]
       11 GETTABLEKS                       R7 R0 K0 ["_uncheckedKeys"]
       13 MOVE                             R9 R6
       14 NAMECALL                         R7 R7 K2 ["delete"]
       16 CALL                             R7 2 0
       17 FORGLOOP                         R2 2 ; [-12]
       19 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["keys"]
        3 GETTABLEKS                       R3 R0 K1 ["_snapshotData"]
        5 CALL                             R2 1 1
        6 LENGTH                           R1 R2
        7 GETTABLEKS                       R4 R0 K2 ["_inlineSnapshots"]
        9 LENGTH                           R3 R4
       10 LOADN                            R4 0
       11 JUMPIFLT                         R4 R3 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 NOT                              R3 R1
       16 JUMPIFNOT                        R3 ; [+1]
       17 NOT                              R3 R2
       18 DUPTABLE                         R4 K5 [{"deleted", "saved"}]
       19 LOADB                            R5 0
       20 SETTABLEKS                       R5 R4 K3 ["deleted"]
       22 LOADB                            R5 0
       23 SETTABLEKS                       R5 R4 K4 ["saved"]
       25 GETUPVAL                         R5 1
       26 JUMPIFNOTEQKNIL                  R5 ; [+11]
       28 GETIMPORT                        R7 K8 [pcall]
       30 DUPCLOSURE                       R8 K9 [PROTO_0]
       31 CALL                             R7 1 2
       32 JUMPIFNOT                        R7 ; [+2]
       33 MOVE                             R6 R8
       34 JUMPIF                           R6 ; [+1]
       35 LOADNIL                          R6
       36 ORK                              R5 R6 K6 [False]
       37 SETUPVAL                         R5 1
       38 GETUPVAL                         R5 1
       39 JUMPIF                           R5 ; [+6]
       40 GETIMPORT                        R5 K11 [error]
       42 GETUPVAL                         R6 2
       43 LOADK                            R7 K12 ["Attempting to save snapshots in an environment where CoreScriptSyncService is inaccessible.\nYou may need to pass in --load.asRobloxScript."]
       44 CALL                             R6 1 -1
       45 CALL                             R5 -1 0
       46 GETUPVAL                         R10 3
       47 GETUPVAL                         R11 1
       48 GETIMPORT                        R15 K15 [_G]
       50 GETTABLEKS                       R14 R15 K13 ["__JEST_TEST_CONTEXT__"]
       52 GETTABLEKS                       R13 R14 K16 ["instance"]
       54 NAMECALL                         R11 R11 K17 ["GetScriptFilePath"]
       56 CALL                             R11 2 1
       57 LOADN                            R12 1
       58 CALL                             R10 2 1
       59 MOVE                             R6 R10
       60 LOADK                            R7 K18 ["/__snapshots__/"]
       61 GETIMPORT                        R13 K15 [_G]
       63 GETTABLEKS                       R12 R13 K13 ["__JEST_TEST_CONTEXT__"]
       65 GETTABLEKS                       R11 R12 K16 ["instance"]
       67 GETTABLEKS                       R10 R11 K19 ["Name"]
       69 LOADK                            R12 K20 ["(.*)%.spec"]
       70 NAMECALL                         R10 R10 K21 ["match"]
       72 CALL                             R10 2 1
       73 MOVE                             R8 R10
       74 LOADK                            R9 K22 [".snap.lua"]
       75 CONCAT                           R5 R6 R9
       76 GETTABLEKS                       R6 R0 K23 ["_dirty"]
       78 JUMPIF                           R6 ; [+5]
       79 GETTABLEKS                       R7 R0 K24 ["_uncheckedKeys"]
       81 GETTABLEKS                       R6 R7 K25 ["size"]
       83 JUMPIFNOT                        R6 ; [+18]
       84 JUMPIF                           R3 ; [+17]
       85 JUMPIFNOT                        R1 ; [+5]
       86 GETUPVAL                         R6 4
       87 GETTABLEKS                       R7 R0 K1 ["_snapshotData"]
       89 MOVE                             R8 R5
       90 CALL                             R6 2 0
       91 JUMPIFNOT                        R2 ; [+6]
       92 GETIMPORT                        R6 K11 [error]
       94 GETUPVAL                         R7 2
       95 LOADK                            R8 K26 ["Jest-Roblox: inline snapshot testing is not currently supported"]
       96 CALL                             R7 1 -1
       97 CALL                             R6 -1 0
       98 LOADB                            R6 1
       99 SETTABLEKS                       R6 R4 K4 ["saved"]
      101 RETURN                           R4 1
      102 JUMPIF                           R1 ; [+16]
      103 GETIMPORT                        R6 K28 [require]
      105 MOVE                             R7 R5
      106 CALL                             R6 1 1
      107 JUMPIFNOT                        R6 ; [+11]
      108 GETTABLEKS                       R6 R0 K29 ["_updateSnapshot"]
      110 JUMPIFNOTEQKS                    R6 K30 ["all"] ; [+5]
      112 GETIMPORT                        R6 K11 [error]
      114 LOADK                            R7 K31 ["Jest-Roblox: You shouldn't reach this code path. Please file an issue at github.com/Roblox/jest-roblox or in #jest-roblox"]
      115 CALL                             R6 1 0
      116 LOADB                            R6 1
      117 SETTABLEKS                       R6 R4 K3 ["deleted"]
      119 RETURN                           R4 1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K1 ["_uncheckedKeys"]
        2 GETTABLEKS                       R2 R3 K2 ["size"]
        4 ORK                              R1 R2 K0 [0]
        5 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["from"]
        3 GETTABLEKS                       R2 R0 K1 ["_uncheckedKeys"]
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_updateSnapshot"]
        2 JUMPIFNOTEQKS                    R1 K1 ["all"] ; [+28]
        4 GETTABLEKS                       R2 R0 K2 ["_uncheckedKeys"]
        6 GETTABLEKS                       R1 R2 K3 ["size"]
        8 LOADN                            R2 0
        9 JUMPIFNOTLT                      R2 R1 ; [+21]
       11 LOADB                            R1 1
       12 SETTABLEKS                       R1 R0 K4 ["_dirty"]
       14 GETTABLEKS                       R1 R0 K2 ["_uncheckedKeys"]
       16 NAMECALL                         R1 R1 K5 ["ipairs"]
       18 CALL                             R1 1 3
       19 FORGPREP                         R1
       20 GETTABLEKS                       R6 R0 K6 ["_snapshotData"]
       22 LOADNIL                          R7
       23 SETTABLE                         R7 R6 R5
       24 FORGLOOP                         R1 2 ; [-5]
       26 GETTABLEKS                       R1 R0 K2 ["_uncheckedKeys"]
       28 NAMECALL                         R1 R1 K7 ["clear"]
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K2 ["_snapshotPath"]
        5 CALL                             R0 1 1
        6 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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
        7 DUPCLOSURE                       R2 K3 [PROTO_1]
        8 LOADNIL                          R3
        9 GETIMPORT                        R4 K5 [require]
       11 GETTABLEKS                       R5 R1 K6 ["LuauPolyfill"]
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R5 R4 K7 ["Array"]
       16 GETTABLEKS                       R6 R4 K8 ["Error"]
       18 GETTABLEKS                       R7 R4 K9 ["Object"]
       20 GETTABLEKS                       R8 R4 K10 ["Set"]
       22 GETIMPORT                        R9 K5 [require]
       24 GETTABLEKS                       R10 R0 K11 ["PrettyFormat"]
       26 CALL                             R9 1 1
       27 GETIMPORT                        R10 K5 [require]
       29 GETTABLEKS                       R11 R0 K12 ["utils"]
       31 CALL                             R10 1 1
       32 GETTABLEKS                       R11 R10 K13 ["addExtraLineBreaks"]
       34 GETTABLEKS                       R12 R10 K14 ["getSnapshotData"]
       36 GETTABLEKS                       R13 R10 K15 ["keyToTestName"]
       38 GETTABLEKS                       R14 R10 K16 ["removeExtraLineBreaks"]
       40 GETTABLEKS                       R15 R10 K17 ["saveSnapshotFile"]
       42 GETTABLEKS                       R16 R10 K18 ["serialize"]
       44 GETTABLEKS                       R17 R10 K19 ["testNameToKey"]
       46 GETTABLEKS                       R18 R10 K20 ["robloxGetParent"]
       48 GETIMPORT                        R19 K5 [require]
       50 GETTABLEKS                       R20 R0 K21 ["types"]
       52 CALL                             R19 1 1
       53 NEWTABLE                         R20 16 0
       55 SETTABLEKS                       R20 R20 K22 ["__index"]
       57 DUPCLOSURE                       R21 K23 [PROTO_2]
       58 CAPTURE                          VAL R12
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R20
       62 SETTABLEKS                       R21 R20 K24 ["new"]
       64 DUPCLOSURE                       R21 K25 [PROTO_3]
       65 CAPTURE                          VAL R13
       66 SETTABLEKS                       R21 R20 K26 ["markSnapshotsAsCheckedForTest"]
       68 DUPCLOSURE                       R21 K27 [PROTO_4]
       69 CAPTURE                          VAL R6
       70 SETTABLEKS                       R21 R20 K28 ["_addSnapshot"]
       72 DUPCLOSURE                       R21 K29 [PROTO_5]
       73 SETTABLEKS                       R21 R20 K30 ["clear"]
       75 NEWCLOSURE                       R21 P5
       76 CAPTURE                          VAL R7
       77 CAPTURE                          REF R3
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R18
       80 CAPTURE                          VAL R15
       81 SETTABLEKS                       R21 R20 K31 ["save"]
       83 DUPCLOSURE                       R21 K32 [PROTO_7]
       84 SETTABLEKS                       R21 R20 K33 ["getUncheckedCount"]
       86 DUPCLOSURE                       R21 K34 [PROTO_8]
       87 CAPTURE                          VAL R5
       88 SETTABLEKS                       R21 R20 K35 ["getUncheckedKeys"]
       90 DUPCLOSURE                       R21 K36 [PROTO_9]
       91 SETTABLEKS                       R21 R20 K37 ["removeUncheckedKeys"]
       93 DUPCLOSURE                       R21 K38 [PROTO_11]
       94 CAPTURE                          VAL R17
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R16
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R14
       99 SETTABLEKS                       R21 R20 K39 ["match"]
      101 DUPCLOSURE                       R21 K40 [PROTO_12]
      102 CAPTURE                          VAL R17
      103 SETTABLEKS                       R21 R20 K41 ["fail"]
      105 CLOSEUPVALS                      R3
      106 RETURN                           R20 1
