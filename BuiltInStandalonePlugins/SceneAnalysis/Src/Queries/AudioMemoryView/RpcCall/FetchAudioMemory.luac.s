PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetDebugId"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 NEWTABLE                         R4 0 0
        6 GETIMPORT                        R5 K1 [ipairs]
        8 MOVE                             R6 R0
        9 JUMPIF                           R6 ; [+2]
       10 NEWTABLE                         R6 0 0
       12 CALL                             R5 1 3
       13 FORGPREP_INEXT                   R5
       14 FASTCALL1                        TYPE R9 ; [+3]
       15 MOVE                             R12 R9
       16 GETIMPORT                        R11 K3 [type]
       18 CALL                             R11 1 1
       19 JUMPIFNOTEQKS                    R11 K4 ["table"] ; [+4]
       21 GETTABLEKS                       R10 R9 K5 ["Path"]
       23 JUMP                             ; [+1]
       24 MOVE                             R10 R9
       25 JUMPIFNOT                        R10 ; [+61]
       26 FASTCALL1                        TYPE R9 ; [+3]
       27 MOVE                             R12 R9
       28 GETIMPORT                        R11 K3 [type]
       30 CALL                             R11 1 1
       31 JUMPIFNOTEQKS                    R11 K4 ["table"] ; [+7]
       33 GETTABLEKS                       R11 R9 K6 ["DebugId"]
       35 JUMPIF                           R11 ; [+11]
       36 GETTABLEKS                       R11 R9 K7 ["ClassName"]
       38 JUMPIF                           R11 ; [+8]
       39 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       41 MOVE                             R12 R4
       42 MOVE                             R13 R10
       43 GETIMPORT                        R11 K9 [table.insert]
       45 CALL                             R11 2 0
       46 JUMP                             ; [+40]
       47 GETIMPORT                        R11 K12 [string.split]
       49 MOVE                             R12 R10
       50 LOADK                            R13 K13 ["."]
       51 CALL                             R11 2 1
       52 GETIMPORT                        R12 K15 [table.concat]
       54 MOVE                             R13 R11
       55 LOADK                            R14 K13 ["."]
       56 LOADN                            R15 1
       57 LENGTH                           R17 R11
       58 SUBK                             R16 R17 K16 [1]
       59 CALL                             R12 4 1
       60 LENGTH                           R14 R11
       61 GETTABLE                         R13 R11 R14
       62 MOVE                             R15 R12
       63 LOADK                            R16 K13 ["."]
       64 MOVE                             R17 R13
       65 CONCAT                           R14 R15 R17
       66 GETTABLE                         R15 R3 R14
       67 JUMPIF                           R15 ; [+10]
       68 DUPTABLE                         R15 K20 [{"parentPath", "targetName", "items"}]
       69 SETTABLEKS                       R12 R15 K17 ["parentPath"]
       71 SETTABLEKS                       R13 R15 K18 ["targetName"]
       73 NEWTABLE                         R16 0 0
       75 SETTABLEKS                       R16 R15 K19 ["items"]
       77 SETTABLE                         R15 R3 R14
       78 GETTABLE                         R16 R3 R14
       79 GETTABLEKS                       R16 R16 K19 ["items"]
       81 FASTCALL2                        TABLE_INSERT R16 R9 ; [+4]
       83 MOVE                             R17 R9
       84 GETIMPORT                        R15 K9 [table.insert]
       86 CALL                             R15 2 0
       87 FORGLOOP                         R5 2 [inext] ; [-74]
       89 MOVE                             R5 R4
       90 LOADNIL                          R6
       91 LOADNIL                          R7
       92 FORGPREP                         R5
       93 GETIMPORT                        R10 K12 [string.split]
       95 MOVE                             R11 R9
       96 LOADK                            R12 K13 ["."]
       97 CALL                             R10 2 1
       98 MOVE                             R11 R1
       99 LOADB                            R12 1
      100 GETIMPORT                        R13 K1 [ipairs]
      102 MOVE                             R14 R10
      103 CALL                             R13 1 3
      104 FORGPREP_INEXT                   R13
      105 MOVE                             R20 R17
      106 NAMECALL                         R18 R11 K21 ["FindFirstChild"]
      108 CALL                             R18 2 1
      109 JUMPIFNOT                        R18 ; [+2]
      110 MOVE                             R11 R18
      111 JUMP                             ; [+2]
      112 LOADB                            R12 0
      113 JUMP                             ; [+2]
      114 FORGLOOP                         R13 2 [inext] ; [-10]
      116 JUMPIFNOT                        R12 ; [+9]
      117 JUMPIFEQ                         R11 R1 ; [+8]
      119 FASTCALL2                        TABLE_INSERT R2 R11 ; [+5]
      121 MOVE                             R14 R2
      122 MOVE                             R15 R11
      123 GETIMPORT                        R13 K9 [table.insert]
      125 CALL                             R13 2 0
      126 FORGLOOP                         R5 2 ; [-34]
      128 MOVE                             R5 R3
      129 LOADNIL                          R6
      130 LOADNIL                          R7
      131 FORGPREP                         R5
      132 MOVE                             R10 R1
      133 LOADB                            R11 1
      134 GETTABLEKS                       R12 R9 K17 ["parentPath"]
      136 JUMPIFEQKS                       R12 K22 [""] ; [+19]
      138 GETIMPORT                        R12 K12 [string.split]
      140 GETTABLEKS                       R13 R9 K17 ["parentPath"]
      142 LOADK                            R14 K13 ["."]
      143 CALL                             R12 2 3
      144 FORGPREP                         R12
      145 MOVE                             R19 R16
      146 NAMECALL                         R17 R10 K21 ["FindFirstChild"]
      148 CALL                             R17 2 1
      149 JUMPIFNOT                        R17 ; [+2]
      150 MOVE                             R10 R17
      151 JUMP                             ; [+2]
      152 LOADB                            R11 0
      153 JUMP                             ; [+2]
      154 FORGLOOP                         R12 2 ; [-10]
      156 JUMPIFNOT                        R11 ; [+116]
      157 NEWTABLE                         R12 0 0
      159 NEWTABLE                         R13 0 0
      161 NEWTABLE                         R14 0 0
      163 NAMECALL                         R15 R10 K23 ["GetChildren"]
      165 CALL                             R15 1 3
      166 FORGPREP                         R15
      167 GETTABLEKS                       R20 R19 K24 ["Name"]
      169 GETTABLEKS                       R21 R9 K18 ["targetName"]
      171 JUMPIFNOTEQ                      R20 R21 ; [+35]
      173 FASTCALL2                        TABLE_INSERT R14 R19 ; [+5]
      175 MOVE                             R21 R14
      176 MOVE                             R22 R19
      177 GETIMPORT                        R20 K9 [table.insert]
      179 CALL                             R20 2 0
      180 NEWCLOSURE                       R21 P0
      181 CAPTURE                          VAL R19
      182 FASTPCALL                        pcall 1 ; [+2]
      183 GETIMPORT                        R20 K26 [pcall]
      185 CALL                             R20 1 2
      186 JUMPIFNOT                        R20 ; [+2]
      187 JUMPIFNOT                        R21 ; [+1]
      188 SETTABLE                         R19 R12 R21
      189 GETTABLEKS                       R23 R19 K7 ["ClassName"]
      191 GETTABLE                         R22 R13 R23
      192 JUMPIF                           R22 ; [+5]
      193 GETTABLEKS                       R22 R19 K7 ["ClassName"]
      195 NEWTABLE                         R23 0 0
      197 SETTABLE                         R23 R13 R22
      198 GETTABLEKS                       R24 R19 K7 ["ClassName"]
      200 GETTABLE                         R23 R13 R24
      201 FASTCALL2                        TABLE_INSERT R23 R19 ; [+4]
      203 MOVE                             R24 R19
      204 GETIMPORT                        R22 K9 [table.insert]
      206 CALL                             R22 2 0
      207 FORGLOOP                         R15 2 ; [-41]
      209 NEWTABLE                         R15 0 0
      211 GETTABLEKS                       R16 R9 K19 ["items"]
      213 LOADNIL                          R17
      214 LOADNIL                          R18
      215 FORGPREP                         R16
      216 LOADNIL                          R21
      217 GETTABLEKS                       R22 R20 K6 ["DebugId"]
      219 JUMPIFNOT                        R22 ; [+10]
      220 GETTABLEKS                       R23 R20 K6 ["DebugId"]
      222 GETTABLE                         R22 R12 R23
      223 JUMPIFNOT                        R22 ; [+6]
      224 GETTABLEKS                       R23 R20 K6 ["DebugId"]
      226 GETTABLE                         R22 R12 R23
      227 GETTABLE                         R23 R15 R22
      228 JUMPIF                           R23 ; [+1]
      229 MOVE                             R21 R22
      230 JUMPIF                           R21 ; [+19]
      231 GETTABLEKS                       R22 R20 K7 ["ClassName"]
      233 JUMPIFNOT                        R22 ; [+16]
      234 GETTABLEKS                       R23 R20 K7 ["ClassName"]
      236 GETTABLE                         R22 R13 R23
      237 JUMPIFNOT                        R22 ; [+12]
      238 GETTABLEKS                       R25 R20 K7 ["ClassName"]
      240 GETTABLE                         R22 R13 R25
      241 LOADNIL                          R23
      242 LOADNIL                          R24
      243 FORGPREP                         R22
      244 GETTABLE                         R27 R15 R26
      245 JUMPIF                           R27 ; [+2]
      246 MOVE                             R21 R26
      247 JUMP                             ; [+2]
      248 FORGLOOP                         R22 2 ; [-5]
      250 JUMPIF                           R21 ; [+10]
      251 MOVE                             R22 R14
      252 LOADNIL                          R23
      253 LOADNIL                          R24
      254 FORGPREP                         R22
      255 GETTABLE                         R27 R15 R26
      256 JUMPIF                           R27 ; [+2]
      257 MOVE                             R21 R26
      258 JUMP                             ; [+2]
      259 FORGLOOP                         R22 2 ; [-5]
      261 JUMPIFNOT                        R21 ; [+9]
      262 LOADB                            R22 1
      263 SETTABLE                         R22 R15 R21
      264 FASTCALL2                        TABLE_INSERT R2 R21 ; [+5]
      266 MOVE                             R23 R2
      267 MOVE                             R24 R21
      268 GETIMPORT                        R22 K9 [table.insert]
      270 CALL                             R22 2 0
      271 FORGLOOP                         R16 2 ; [-56]
      273 FORGLOOP                         R5 2 ; [-142]
      275 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAudioMemoryAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["SceneAnalysisService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R1 K5 [pcall]
       11 CALL                             R1 1 2
       12 JUMPIF                           R1 ; [+5]
       13 GETIMPORT                        R3 K7 [warn]
       15 LOADK                            R4 K8 ["SceneAnalysisService returned error:"]
       16 MOVE                             R5 R2
       17 CALL                             R3 2 0
       18 JUMPIFNOT                        R1 ; [+1]
       19 JUMPIF                           R2 ; [+13]
       20 DUPTABLE                         R3 K15 [{["Id"] = 0, ["Name"] = "Root", ["Size"] = 0, ["Children"]}]
       21 NEWTABLE                         R4 0 1
       23 DUPTABLE                         R5 K22 [{["Name"] = "Mock Audio", ["SizeMB"] = 5, ["AssetId"] = "54321", ["Id"] = 1, ["Children"]}]
       24 NEWTABLE                         R6 0 0
       26 SETTABLEKS                       R6 R5 K14 ["Children"]
       28 SETLIST                          R4 R5 1 [1]
       30 SETTABLEKS                       R4 R3 K14 ["Children"]
       32 RETURN                           R3 1
       33 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["Selection"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+2]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K4 ["resolveInstances"]
       12 MOVE                             R2 R0
       13 GETIMPORT                        R3 K1 [game]
       15 CALL                             R1 2 1
       16 LENGTH                           R2 R1
       17 LOADN                            R3 0
       18 JUMPIFNOTLT                      R3 R2 ; [+19]
       20 GETUPVAL                         R2 0
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K7 ["_selectionSeq"]
       24 ORK                              R4 R5 K6 [0]
       25 ADDK                             R3 R4 K5 [1]
       26 SETTABLEKS                       R3 R2 K7 ["_selectionSeq"]
       28 GETIMPORT                        R2 K1 [game]
       30 LOADK                            R4 K2 ["Selection"]
       31 NAMECALL                         R2 R2 K3 ["GetService"]
       33 CALL                             R2 2 1
       34 MOVE                             R4 R1
       35 NAMECALL                         R2 R2 K8 ["Set"]
       37 CALL                             R2 2 0
       38 LOADNIL                          R2
       39 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["Selection"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NEWTABLE                         R2 0 0
        8 NAMECALL                         R0 R0 K4 ["Set"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K2 ["_selectionSeq"]
        4 ORK                              R2 R3 K1 [0]
        5 ADDK                             R1 R2 K0 [1]
        6 SETTABLEKS                       R1 R0 K2 ["_selectionSeq"]
        8 DUPCLOSURE                       R1 K3 [PROTO_5]
        9 FASTPCALL                        pcall 1 ; [+2]
       10 GETIMPORT                        R0 K5 [pcall]
       12 CALL                             R0 1 0
       13 LOADNIL                          R0
       14 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetFullName"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetDebugId"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K1 ["_selectionSeq"]
        3 ORK                              R0 R1 K0 [0]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOTLT                      R1 R0 ; [+3]
        7 SETUPVAL                         R0 1
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 2
       10 NAMECALL                         R1 R1 K2 ["Get"]
       12 CALL                             R1 1 1
       13 NEWTABLE                         R2 0 0
       15 MOVE                             R3 R1
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 FORGPREP                         R3
       19 NEWCLOSURE                       R9 P0
       20 CAPTURE                          VAL R7
       21 FASTPCALL                        pcall 1 ; [+2]
       22 GETIMPORT                        R8 K4 [pcall]
       24 CALL                             R8 1 2
       25 NEWCLOSURE                       R11 P1
       26 CAPTURE                          VAL R7
       27 FASTPCALL                        pcall 1 ; [+2]
       28 GETIMPORT                        R10 K4 [pcall]
       30 CALL                             R10 1 2
       31 JUMPIFNOT                        R8 ; [+20]
       32 JUMPIFNOT                        R9 ; [+19]
       33 DUPTABLE                         R14 K8 [{"Path", "ClassName", "DebugId"}]
       34 SETTABLEKS                       R9 R14 K5 ["Path"]
       36 GETTABLEKS                       R15 R7 K6 ["ClassName"]
       38 SETTABLEKS                       R15 R14 K6 ["ClassName"]
       40 JUMPIFNOT                        R10 ; [+2]
       41 MOVE                             R15 R11
       42 JUMP                             ; [+1]
       43 LOADNIL                          R15
       44 SETTABLEKS                       R15 R14 K7 ["DebugId"]
       46 FASTCALL2                        TABLE_INSERT R2 R14 ; [+4]
       48 MOVE                             R13 R2
       49 GETIMPORT                        R12 K11 [table.insert]
       51 CALL                             R12 2 0
       52 FORGLOOP                         R3 2 ; [-34]
       54 GETUPVAL                         R3 3
       55 GETTABLEKS                       R3 R3 K12 ["plugin"]
       57 LOADK                            R5 K13 ["SelectionChangedFromExplorer"]
       58 GETUPVAL                         R6 0
       59 GETTABLEKS                       R6 R6 K14 ["_currentSessionId"]
       61 MOVE                             R7 R2
       62 NAMECALL                         R3 R3 K15 ["Invoke"]
       64 CALL                             R3 4 0
       65 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["Selection"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+2]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 0
       10 SETTABLEKS                       R0 R2 K4 ["_currentSessionId"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K5 ["_selectionListening"]
       15 JUMPIF                           R2 ; [+16]
       16 GETUPVAL                         R2 0
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K5 ["_selectionListening"]
       20 LOADN                            R2 0
       21 GETTABLEKS                       R3 R1 K6 ["SelectionChanged"]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          REF R2
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U1
       28 NAMECALL                         R3 R3 K7 ["Connect"]
       30 CALL                             R3 2 0
       31 CLOSEUPVALS                      R2
       32 LOADNIL                          R2
       33 RETURN                           R2 1

PROTO_11:
        0 LOADK                            R4 K0 ["FetchAudioMemory"]
        1 DUPCLOSURE                       R5 K1 [PROTO_3]
        2 NAMECALL                         R2 R1 K2 ["Bind"]
        4 CALL                             R2 3 0
        5 LOADK                            R4 K3 ["SelectInstancesByPaths"]
        6 DUPCLOSURE                       R5 K4 [PROTO_4]
        7 CAPTURE                          UPVAL U0
        8 NAMECALL                         R2 R1 K2 ["Bind"]
       10 CALL                             R2 3 0
       11 LOADK                            R4 K5 ["ClearSelection"]
       12 DUPCLOSURE                       R5 K6 [PROTO_6]
       13 CAPTURE                          UPVAL U0
       14 NAMECALL                         R2 R1 K2 ["Bind"]
       16 CALL                             R2 3 0
       17 LOADK                            R4 K7 ["ListenForSelectionChanges"]
       18 NEWCLOSURE                       R5 P3
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R1
       21 NAMECALL                         R2 R1 K2 ["Bind"]
       23 CALL                             R2 3 0
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 DUPCLOSURE                       R1 K0 [PROTO_1]
        4 SETTABLEKS                       R1 R0 K1 ["resolveInstances"]
        6 DUPCLOSURE                       R1 K2 [PROTO_11]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["Init"]
       10 RETURN                           R0 1
