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
      156 JUMPIFNOT                        R11 ; [+115]
      157 NEWTABLE                         R12 0 0
      159 NEWTABLE                         R13 0 0
      161 NEWTABLE                         R14 0 0
      163 NAMECALL                         R15 R10 K23 ["GetChildren"]
      165 CALL                             R15 1 3
      166 FORGPREP                         R15
      167 GETTABLEKS                       R20 R19 K24 ["Name"]
      169 GETTABLEKS                       R21 R9 K18 ["targetName"]
      171 JUMPIFNOTEQ                      R20 R21 ; [+34]
      173 FASTCALL2                        TABLE_INSERT R14 R19 ; [+5]
      175 MOVE                             R21 R14
      176 MOVE                             R22 R19
      177 GETIMPORT                        R20 K9 [table.insert]
      179 CALL                             R20 2 0
      180 GETIMPORT                        R20 K26 [pcall]
      182 NEWCLOSURE                       R21 P0
      183 CAPTURE                          VAL R19
      184 CALL                             R20 1 2
      185 JUMPIFNOT                        R20 ; [+2]
      186 JUMPIFNOT                        R21 ; [+1]
      187 SETTABLE                         R19 R12 R21
      188 GETTABLEKS                       R23 R19 K7 ["ClassName"]
      190 GETTABLE                         R22 R13 R23
      191 JUMPIF                           R22 ; [+5]
      192 GETTABLEKS                       R22 R19 K7 ["ClassName"]
      194 NEWTABLE                         R23 0 0
      196 SETTABLE                         R23 R13 R22
      197 GETTABLEKS                       R24 R19 K7 ["ClassName"]
      199 GETTABLE                         R23 R13 R24
      200 FASTCALL2                        TABLE_INSERT R23 R19 ; [+4]
      202 MOVE                             R24 R19
      203 GETIMPORT                        R22 K9 [table.insert]
      205 CALL                             R22 2 0
      206 FORGLOOP                         R15 2 ; [-40]
      208 NEWTABLE                         R15 0 0
      210 GETTABLEKS                       R16 R9 K19 ["items"]
      212 LOADNIL                          R17
      213 LOADNIL                          R18
      214 FORGPREP                         R16
      215 LOADNIL                          R21
      216 GETTABLEKS                       R22 R20 K6 ["DebugId"]
      218 JUMPIFNOT                        R22 ; [+10]
      219 GETTABLEKS                       R23 R20 K6 ["DebugId"]
      221 GETTABLE                         R22 R12 R23
      222 JUMPIFNOT                        R22 ; [+6]
      223 GETTABLEKS                       R23 R20 K6 ["DebugId"]
      225 GETTABLE                         R22 R12 R23
      226 GETTABLE                         R23 R15 R22
      227 JUMPIF                           R23 ; [+1]
      228 MOVE                             R21 R22
      229 JUMPIF                           R21 ; [+19]
      230 GETTABLEKS                       R22 R20 K7 ["ClassName"]
      232 JUMPIFNOT                        R22 ; [+16]
      233 GETTABLEKS                       R23 R20 K7 ["ClassName"]
      235 GETTABLE                         R22 R13 R23
      236 JUMPIFNOT                        R22 ; [+12]
      237 GETTABLEKS                       R25 R20 K7 ["ClassName"]
      239 GETTABLE                         R22 R13 R25
      240 LOADNIL                          R23
      241 LOADNIL                          R24
      242 FORGPREP                         R22
      243 GETTABLE                         R27 R15 R26
      244 JUMPIF                           R27 ; [+2]
      245 MOVE                             R21 R26
      246 JUMP                             ; [+2]
      247 FORGLOOP                         R22 2 ; [-5]
      249 JUMPIF                           R21 ; [+10]
      250 MOVE                             R22 R14
      251 LOADNIL                          R23
      252 LOADNIL                          R24
      253 FORGPREP                         R22
      254 GETTABLE                         R27 R15 R26
      255 JUMPIF                           R27 ; [+2]
      256 MOVE                             R21 R26
      257 JUMP                             ; [+2]
      258 FORGLOOP                         R22 2 ; [-5]
      260 JUMPIFNOT                        R21 ; [+9]
      261 LOADB                            R22 1
      262 SETTABLE                         R22 R15 R21
      263 FASTCALL2                        TABLE_INSERT R2 R21 ; [+5]
      265 MOVE                             R23 R2
      266 MOVE                             R24 R21
      267 GETIMPORT                        R22 K9 [table.insert]
      269 CALL                             R22 2 0
      270 FORGLOOP                         R16 2 ; [-56]
      272 FORGLOOP                         R5 2 ; [-141]
      274 RETURN                           R2 1

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
        6 GETIMPORT                        R1 K5 [pcall]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CALL                             R1 1 2
       11 JUMPIF                           R1 ; [+5]
       12 GETIMPORT                        R3 K7 [warn]
       14 LOADK                            R4 K8 ["SceneAnalysisService returned error:"]
       15 MOVE                             R5 R2
       16 CALL                             R3 2 0
       17 JUMPIFNOT                        R1 ; [+1]
       18 JUMPIF                           R2 ; [+34]
       19 DUPTABLE                         R3 K13 [{"Id", "Name", "Size", "Children"}]
       20 LOADN                            R4 0
       21 SETTABLEKS                       R4 R3 K9 ["Id"]
       23 LOADK                            R4 K14 ["Root"]
       24 SETTABLEKS                       R4 R3 K10 ["Name"]
       26 LOADN                            R4 0
       27 SETTABLEKS                       R4 R3 K11 ["Size"]
       29 NEWTABLE                         R4 0 1
       31 DUPTABLE                         R5 K17 [{"Name", "SizeMB", "AssetId", "Id", "Children"}]
       32 LOADK                            R6 K18 ["Mock Audio"]
       33 SETTABLEKS                       R6 R5 K10 ["Name"]
       35 LOADN                            R6 5
       36 SETTABLEKS                       R6 R5 K15 ["SizeMB"]
       38 LOADK                            R6 K19 ["54321"]
       39 SETTABLEKS                       R6 R5 K16 ["AssetId"]
       41 LOADN                            R6 1
       42 SETTABLEKS                       R6 R5 K9 ["Id"]
       44 NEWTABLE                         R6 0 0
       46 SETTABLEKS                       R6 R5 K12 ["Children"]
       48 SETLIST                          R4 R5 1 [1]
       50 SETTABLEKS                       R4 R3 K12 ["Children"]
       52 RETURN                           R3 1
       53 RETURN                           R2 1

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
        8 GETIMPORT                        R0 K4 [pcall]
       10 DUPCLOSURE                       R1 K5 [PROTO_5]
       11 CALL                             R0 1 0
       12 LOADNIL                          R0
       13 RETURN                           R0 1

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
       19 GETIMPORT                        R8 K4 [pcall]
       21 NEWCLOSURE                       R9 P0
       22 CAPTURE                          VAL R7
       23 CALL                             R8 1 2
       24 GETIMPORT                        R10 K4 [pcall]
       26 NEWCLOSURE                       R11 P1
       27 CAPTURE                          VAL R7
       28 CALL                             R10 1 2
       29 JUMPIFNOT                        R8 ; [+20]
       30 JUMPIFNOT                        R9 ; [+19]
       31 DUPTABLE                         R14 K8 [{"Path", "ClassName", "DebugId"}]
       32 SETTABLEKS                       R9 R14 K5 ["Path"]
       34 GETTABLEKS                       R15 R7 K6 ["ClassName"]
       36 SETTABLEKS                       R15 R14 K6 ["ClassName"]
       38 JUMPIFNOT                        R10 ; [+2]
       39 MOVE                             R15 R11
       40 JUMP                             ; [+1]
       41 LOADNIL                          R15
       42 SETTABLEKS                       R15 R14 K7 ["DebugId"]
       44 FASTCALL2                        TABLE_INSERT R2 R14 ; [+4]
       46 MOVE                             R13 R2
       47 GETIMPORT                        R12 K11 [table.insert]
       49 CALL                             R12 2 0
       50 FORGLOOP                         R3 2 ; [-32]
       52 GETUPVAL                         R3 3
       53 GETTABLEKS                       R3 R3 K12 ["plugin"]
       55 LOADK                            R5 K13 ["SelectionChangedFromExplorer"]
       56 GETUPVAL                         R6 0
       57 GETTABLEKS                       R6 R6 K14 ["_currentSessionId"]
       59 MOVE                             R7 R2
       60 NAMECALL                         R3 R3 K15 ["Invoke"]
       62 CALL                             R3 4 0
       63 RETURN                           R0 0

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
