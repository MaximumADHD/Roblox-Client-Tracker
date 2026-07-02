PROTO_0:
        0 MOVE                             R2 R0
        1 MOVE                             R3 R1
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 MOVE                             R10 R7
        6 NAMECALL                         R8 R2 K0 ["FindFirstChild"]
        8 CALL                             R8 2 1
        9 JUMPIF                           R8 ; [+9]
       10 GETIMPORT                        R9 K3 [Instance.new]
       12 LOADK                            R10 K4 ["Folder"]
       13 CALL                             R9 1 1
       14 SETTABLEKS                       R7 R9 K5 ["Name"]
       16 SETTABLEKS                       R2 R9 K6 ["Parent"]
       18 MOVE                             R8 R9
       19 MOVE                             R2 R8
       20 FORGLOOP                         R3 2 ; [-16]
       22 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["AssistantEval"]
        7 GETTABLEKS                       R1 R1 K2 ["Config"]
        9 GETTABLEKS                       R2 R0 K3 ["tools"]
       11 GETTABLEKS                       R2 R2 K4 ["executeLuau"]
       13 GETTABLEKS                       R2 R2 K5 ["loadCode"]
       15 GETTABLEKS                       R3 R1 K6 ["Source"]
       17 CALL                             R2 1 2
       18 MOVE                             R4 R3
       19 CALL                             R4 0 1
       20 RETURN                           R4 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["AssistantEval"]
        6 GETTABLEKS                       R3 R3 K1 ["RunTimeEvals"]
        8 JUMPIF                           R3 ; [+5]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["AssistantEval"]
       12 GETTABLEKS                       R3 R3 K2 ["Evals"]
       14 NAMECALL                         R4 R3 K3 ["GetChildren"]
       16 CALL                             R4 1 3
       17 FORGPREP                         R4
       18 LOADK                            R11 K4 ["ModuleScript"]
       19 NAMECALL                         R9 R8 K5 ["IsA"]
       21 CALL                             R9 2 1
       22 JUMPIFNOT                        R9 ; [+15]
       23 JUMPIFNOT                        R1 ; [+7]
       24 GETIMPORT                        R9 K8 [table.find]
       26 MOVE                             R10 R1
       27 GETTABLEKS                       R11 R8 K9 ["Name"]
       29 CALL                             R9 2 1
       30 JUMPIFNOT                        R9 ; [+7]
       31 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       33 MOVE                             R10 R2
       34 MOVE                             R11 R8
       35 GETIMPORT                        R9 K11 [table.insert]
       37 CALL                             R9 2 0
       38 FORGLOOP                         R4 2 ; [-21]
       40 GETIMPORT                        R4 K13 [table.sort]
       42 MOVE                             R5 R2
       43 DUPCLOSURE                       R6 K14 [PROTO_2]
       44 CALL                             R4 2 0
       45 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 CALL                             R2 0 1
        4 NEWTABLE                         R3 0 0
        6 GETUPVAL                         R4 1
        7 MOVE                             R5 R0
        8 MOVE                             R6 R1
        9 CALL                             R4 2 1
       10 MOVE                             R5 R4
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 GETIMPORT                        R10 K2 [print]
       16 LOADK                            R11 K3 ["Loading eval script"]
       17 GETTABLEKS                       R12 R9 K4 ["Name"]
       19 CALL                             R10 2 0
       20 GETTABLEKS                       R10 R2 K5 ["tools"]
       22 GETTABLEKS                       R10 R10 K6 ["executeLuau"]
       24 GETTABLEKS                       R10 R10 K7 ["loadCode"]
       26 GETTABLEKS                       R11 R9 K8 ["Source"]
       28 CALL                             R10 1 2
       29 MOVE                             R12 R11
       30 CALL                             R12 0 1
       31 NEWTABLE                         R13 0 0
       33 GETTABLEKS                       R14 R12 K9 ["prompt"]
       35 JUMPIFNOT                        R14 ; [+63]
       36 GETTABLEKS                       R15 R12 K9 ["prompt"]
       38 FASTCALL1                        TYPEOF R15 ; [+2]
       39 GETIMPORT                        R14 K11 [typeof]
       41 CALL                             R14 1 1
       42 JUMPIFNOTEQKS                    R14 K12 ["string"] ; [+10]
       44 GETTABLEKS                       R16 R12 K9 ["prompt"]
       46 FASTCALL2                        TABLE_INSERT R13 R16 ; [+4]
       48 MOVE                             R15 R13
       49 GETIMPORT                        R14 K15 [table.insert]
       51 CALL                             R14 2 0
       52 JUMP                             ; [+46]
       53 GETTABLEKS                       R15 R12 K9 ["prompt"]
       55 FASTCALL1                        TYPEOF R15 ; [+2]
       56 GETIMPORT                        R14 K11 [typeof]
       58 CALL                             R14 1 1
       59 JUMPIFNOTEQKS                    R14 K13 ["table"] ; [+39]
       61 GETTABLEKS                       R14 R12 K9 ["prompt"]
       63 LOADNIL                          R15
       64 LOADNIL                          R16
       65 FORGPREP                         R14
       66 FASTCALL1                        TYPEOF R18 ; [+3]
       67 MOVE                             R20 R18
       68 GETIMPORT                        R19 K11 [typeof]
       70 CALL                             R19 1 1
       71 JUMPIFNOTEQKS                    R19 K12 ["string"] ; [+9]
       73 FASTCALL2                        TABLE_INSERT R13 R18 ; [+5]
       75 MOVE                             R20 R13
       76 MOVE                             R21 R18
       77 GETIMPORT                        R19 K15 [table.insert]
       79 CALL                             R19 2 0
       80 JUMP                             ; [+16]
       81 FASTCALL1                        TYPEOF R18 ; [+3]
       82 MOVE                             R20 R18
       83 GETIMPORT                        R19 K11 [typeof]
       85 CALL                             R19 1 1
       86 JUMPIFNOTEQKS                    R19 K13 ["table"] ; [+10]
       88 GETTABLEN                        R21 R18 1
       89 GETTABLEKS                       R21 R21 K16 ["content"]
       91 FASTCALL2                        TABLE_INSERT R13 R21 ; [+4]
       93 MOVE                             R20 R13
       94 GETIMPORT                        R19 K15 [table.insert]
       96 CALL                             R19 2 0
       97 FORGLOOP                         R14 2 ; [-32]
       99 DUPTABLE                         R14 K27 [{"prompts", "placeFileName", "moduleScriptSource", "includeAssets", "evalName", "hasEditEval", "hasCheckGame", "hasServerEval", "clientEvalNums", "evalStorage"}]
      100 SETTABLEKS                       R13 R14 K17 ["prompts"]
      102 GETTABLEKS                       R15 R12 K28 ["place"]
      104 SETTABLEKS                       R15 R14 K18 ["placeFileName"]
      106 GETTABLEKS                       R15 R9 K8 ["Source"]
      108 SETTABLEKS                       R15 R14 K19 ["moduleScriptSource"]
      110 GETTABLEKS                       R15 R12 K20 ["includeAssets"]
      112 SETTABLEKS                       R15 R14 K20 ["includeAssets"]
      114 GETTABLEKS                       R15 R9 K4 ["Name"]
      116 SETTABLEKS                       R15 R14 K21 ["evalName"]
      118 GETTABLEKS                       R15 R12 K29 ["check_scene"]
      120 JUMPIFNOT                        R15 ; [+10]
      121 GETTABLEKS                       R17 R12 K29 ["check_scene"]
      123 FASTCALL1                        TYPEOF R17 ; [+2]
      124 GETIMPORT                        R16 K11 [typeof]
      126 CALL                             R16 1 1
      127 JUMPIFEQKS                       R16 K30 ["function"] ; [+2]
      129 LOADB                            R15 0 +1
      130 LOADB                            R15 1
      131 SETTABLEKS                       R15 R14 K22 ["hasEditEval"]
      133 GETTABLEKS                       R15 R12 K31 ["check_game"]
      135 JUMPIFNOT                        R15 ; [+10]
      136 GETTABLEKS                       R17 R12 K31 ["check_game"]
      138 FASTCALL1                        TYPEOF R17 ; [+2]
      139 GETIMPORT                        R16 K11 [typeof]
      141 CALL                             R16 1 1
      142 JUMPIFEQKS                       R16 K30 ["function"] ; [+2]
      144 LOADB                            R15 0 +1
      145 LOADB                            R15 1
      146 SETTABLEKS                       R15 R14 K23 ["hasCheckGame"]
      148 GETTABLEKS                       R15 R12 K32 ["runConfig"]
      150 JUMPIFNOT                        R15 ; [+26]
      151 LOADB                            R15 0
      152 GETTABLEKS                       R17 R12 K32 ["runConfig"]
      154 FASTCALL1                        TYPEOF R17 ; [+2]
      155 GETIMPORT                        R16 K11 [typeof]
      157 CALL                             R16 1 1
      158 JUMPIFNOTEQKS                    R16 K13 ["table"] ; [+18]
      160 GETTABLEKS                       R15 R12 K32 ["runConfig"]
      162 GETTABLEKS                       R15 R15 K33 ["serverCheck"]
      164 JUMPIFNOT                        R15 ; [+12]
      165 GETTABLEKS                       R17 R12 K32 ["runConfig"]
      167 GETTABLEKS                       R17 R17 K33 ["serverCheck"]
      169 FASTCALL1                        TYPEOF R17 ; [+2]
      170 GETIMPORT                        R16 K11 [typeof]
      172 CALL                             R16 1 1
      173 JUMPIFEQKS                       R16 K30 ["function"] ; [+2]
      175 LOADB                            R15 0 +1
      176 LOADB                            R15 1
      177 SETTABLEKS                       R15 R14 K24 ["hasServerEval"]
      179 GETTABLEKS                       R16 R12 K32 ["runConfig"]
      181 JUMPIFNOT                        R16 ; [+29]
      182 GETTABLEKS                       R17 R12 K32 ["runConfig"]
      184 FASTCALL1                        TYPEOF R17 ; [+2]
      185 GETIMPORT                        R16 K11 [typeof]
      187 CALL                             R16 1 1
      188 JUMPIFNOTEQKS                    R16 K13 ["table"] ; [+22]
      190 GETTABLEKS                       R16 R12 K32 ["runConfig"]
      192 GETTABLEKS                       R16 R16 K34 ["clientChecks"]
      194 JUMPIFNOT                        R16 ; [+16]
      195 GETTABLEKS                       R17 R12 K32 ["runConfig"]
      197 GETTABLEKS                       R17 R17 K34 ["clientChecks"]
      199 FASTCALL1                        TYPEOF R17 ; [+2]
      200 GETIMPORT                        R16 K11 [typeof]
      202 CALL                             R16 1 1
      203 JUMPIFNOTEQKS                    R16 K13 ["table"] ; [+7]
      205 GETTABLEKS                       R16 R12 K32 ["runConfig"]
      207 GETTABLEKS                       R16 R16 K34 ["clientChecks"]
      209 LENGTH                           R15 R16
      210 JUMPIF                           R15 ; [+1]
      211 LOADN                            R15 0
      212 SETTABLEKS                       R15 R14 K25 ["clientEvalNums"]
      214 DUPTABLE                         R15 K37 [{["_dummy"] = True}]
      215 SETTABLEKS                       R15 R14 K26 ["evalStorage"]
      217 FASTCALL2                        TABLE_INSERT R3 R14 ; [+5]
      219 MOVE                             R16 R3
      220 MOVE                             R17 R14
      221 GETIMPORT                        R15 K15 [table.insert]
      223 CALL                             R15 2 0
      224 FORGLOOP                         R5 2 ; [-211]
      226 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["name"]
        2 GETTABLEKS                       R4 R1 K0 ["name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetChildren"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["ModuleScript"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIF                           R7 ; [+17]
       11 LOADK                            R9 K3 ["Folder"]
       12 NAMECALL                         R7 R6 K2 ["IsA"]
       14 CALL                             R7 2 1
       15 JUMPIF                           R7 ; [+12]
       16 GETIMPORT                        R7 K5 [error]
       18 GETIMPORT                        R8 K8 [string.format]
       20 LOADK                            R9 K9 ["AssistantEval.Modules may only contain ModuleScript and Folder; found %s '%s'"]
       21 GETTABLEKS                       R10 R6 K10 ["ClassName"]
       23 NAMECALL                         R11 R6 K11 ["GetFullName"]
       25 CALL                             R11 1 -1
       26 CALL                             R8 -1 -1
       27 CALL                             R7 -1 0
       28 MOVE                             R8 R1
       29 GETUPVAL                         R9 0
       30 MOVE                             R10 R6
       31 CALL                             R9 1 -1
       32 FASTCALL                         TABLE_INSERT ; [+2]
       33 GETIMPORT                        R7 K14 [table.insert]
       35 CALL                             R7 -1 0
       36 FORGLOOP                         R2 2 ; [-31]
       38 GETIMPORT                        R2 K16 [table.sort]
       40 MOVE                             R3 R1
       41 DUPCLOSURE                       R4 K17 [PROTO_5]
       42 CALL                             R2 2 0
       43 RETURN                           R1 1

PROTO_7:
        0 DUPCLOSURE                       R1 K0 [PROTO_6]
        1 CAPTURE                          UPVAL U0
        2 MOVE                             R2 R1
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 LOADK                            R5 K1 ["ModuleScript"]
        6 NAMECALL                         R3 R0 K2 ["IsA"]
        8 CALL                             R3 2 1
        9 JUMPIFNOT                        R3 ; [+19]
       10 DUPTABLE                         R3 K7 [{["name"], ["className"] = "ModuleScript", ["source"], ["children"]}]
       11 GETTABLEKS                       R4 R0 K8 ["Name"]
       13 SETTABLEKS                       R4 R3 K3 ["name"]
       15 GETTABLEKS                       R4 R0 K9 ["Source"]
       17 SETTABLEKS                       R4 R3 K5 ["source"]
       19 LENGTH                           R5 R2
       20 LOADN                            R6 0
       21 JUMPIFNOTLT                      R6 R5 ; [+3]
       23 MOVE                             R4 R2
       24 JUMP                             ; [+1]
       25 LOADNIL                          R4
       26 SETTABLEKS                       R4 R3 K6 ["children"]
       28 RETURN                           R3 1
       29 LOADK                            R5 K10 ["Folder"]
       30 NAMECALL                         R3 R0 K2 ["IsA"]
       32 CALL                             R3 2 1
       33 JUMPIFNOT                        R3 ; [+15]
       34 DUPTABLE                         R3 K11 [{["name"], ["className"] = "Folder", ["children"]}]
       35 GETTABLEKS                       R4 R0 K8 ["Name"]
       37 SETTABLEKS                       R4 R3 K3 ["name"]
       39 LENGTH                           R5 R2
       40 LOADN                            R6 0
       41 JUMPIFNOTLT                      R6 R5 ; [+3]
       43 MOVE                             R4 R2
       44 JUMP                             ; [+1]
       45 LOADNIL                          R4
       46 SETTABLEKS                       R4 R3 K6 ["children"]
       48 RETURN                           R3 1
       49 GETIMPORT                        R3 K13 [error]
       51 GETIMPORT                        R4 K16 [string.format]
       53 LOADK                            R5 K17 ["AssistantEval.Modules may only contain ModuleScript and Folder; found %s '%s'"]
       54 GETTABLEKS                       R6 R0 K18 ["ClassName"]
       56 NAMECALL                         R7 R0 K19 ["GetFullName"]
       58 CALL                             R7 1 -1
       59 CALL                             R4 -1 -1
       60 CALL                             R3 -1 0
       61 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["className"]
        2 JUMPIFEQKS                       R2 K1 ["ModuleScript"] ; [+5]
        4 GETTABLEKS                       R2 R0 K0 ["className"]
        6 JUMPIFNOTEQKS                    R2 K2 ["Folder"] ; [+36]
        8 GETIMPORT                        R2 K5 [Instance.new]
       10 GETTABLEKS                       R3 R0 K0 ["className"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R0 K6 ["name"]
       15 SETTABLEKS                       R3 R2 K7 ["Name"]
       17 GETTABLEKS                       R3 R0 K0 ["className"]
       19 JUMPIFNOTEQKS                    R3 K1 ["ModuleScript"] ; [+6]
       21 GETTABLEKS                       R4 R0 K9 ["source"]
       23 ORK                              R3 R4 K8 [""]
       24 SETTABLEKS                       R3 R2 K10 ["Source"]
       26 SETTABLEKS                       R1 R2 K11 ["Parent"]
       28 GETTABLEKS                       R3 R0 K12 ["children"]
       30 JUMPIFNOT                        R3 ; [+11]
       31 GETTABLEKS                       R3 R0 K12 ["children"]
       33 LOADNIL                          R4
       34 LOADNIL                          R5
       35 FORGPREP                         R3
       36 GETUPVAL                         R8 0
       37 MOVE                             R9 R7
       38 MOVE                             R10 R2
       39 CALL                             R8 2 0
       40 FORGLOOP                         R3 2 ; [-5]
       42 RETURN                           R2 1
       43 GETIMPORT                        R2 K14 [error]
       45 GETIMPORT                        R3 K17 [string.format]
       47 LOADK                            R4 K18 ["Unknown className in serialized data: %s"]
       48 GETTABLEKS                       R6 R0 K0 ["className"]
       50 FASTCALL1                        TOSTRING R6 ; [+2]
       51 GETIMPORT                        R5 K20 [tostring]
       53 CALL                             R5 1 1
       54 CALL                             R3 2 -1
       55 CALL                             R2 -1 0
       56 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWTABLE                         R2 0 1
        4 LOADK                            R3 K0 ["AssistantEval"]
        5 SETLIST                          R2 R3 1 [1]
        7 CALL                             R0 2 1
        8 LOADK                            R3 K1 ["EvalStorage"]
        9 NAMECALL                         R1 R0 K2 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+13]
       13 GETIMPORT                        R2 K5 [Instance.new]
       15 LOADK                            R3 K6 ["StringValue"]
       16 CALL                             R2 1 1
       17 LOADK                            R3 K1 ["EvalStorage"]
       18 SETTABLEKS                       R3 R2 K7 ["Name"]
       20 SETTABLEKS                       R0 R2 K8 ["Parent"]
       22 LOADK                            R3 K9 ["{}"]
       23 SETTABLEKS                       R3 R2 K10 ["Value"]
       25 MOVE                             R1 R2
       26 FASTCALL2K                       ASSERT R1 K11 ; [+5]
       28 MOVE                             R3 R1
       29 LOADK                            R4 K11 ["Failed to create EvalStorage"]
       30 GETIMPORT                        R2 K13 [assert]
       32 CALL                             R2 2 0
       33 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETTABLEKS                       R1 R0 K0 ["Value"]
        4 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 SETTABLEKS                       R0 R1 K0 ["Value"]
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 GETTABLEKS                       R2 R3 K0 ["Value"]
        4 GETUPVAL                         R3 1
        5 MOVE                             R5 R2
        6 NAMECALL                         R3 R3 K1 ["JSONDecode"]
        8 CALL                             R3 2 1
        9 SETTABLE                         R1 R3 R0
       10 GETUPVAL                         R4 1
       11 MOVE                             R6 R3
       12 NAMECALL                         R4 R4 K2 ["JSONEncode"]
       14 CALL                             R4 2 1
       15 GETUPVAL                         R5 0
       16 CALL                             R5 0 1
       17 SETTABLEKS                       R4 R5 K0 ["Value"]
       19 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["evalStorage"]
        2 JUMPIFNOT                        R1 ; [+26]
        3 GETTABLEKS                       R1 R0 K0 ["evalStorage"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETUPVAL                         R7 0
        9 CALL                             R7 0 1
       10 GETTABLEKS                       R6 R7 K1 ["Value"]
       12 GETUPVAL                         R7 1
       13 MOVE                             R9 R6
       14 NAMECALL                         R7 R7 K2 ["JSONDecode"]
       16 CALL                             R7 2 1
       17 SETTABLE                         R5 R7 R4
       18 GETUPVAL                         R8 1
       19 MOVE                             R10 R7
       20 NAMECALL                         R8 R8 K3 ["JSONEncode"]
       22 CALL                             R8 2 1
       23 GETUPVAL                         R9 0
       24 CALL                             R9 0 1
       25 SETTABLEKS                       R8 R9 K1 ["Value"]
       27 FORGLOOP                         R1 2 ; [-20]
       29 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AssistantEval"]
        3 GETTABLEKS                       R0 R0 K1 ["Modules"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["AssistantEval"]
        8 GETTABLEKS                       R1 R1 K2 ["LoadedCode"]
       10 JUMPIFNOT                        R0 ; [+1]
       11 JUMPIF                           R1 ; [+4]
       12 GETIMPORT                        R2 K4 [error]
       14 LOADK                            R3 K5 ["AssistantEval.Modules or AssistantEval.LoadedCode does not exist"]
       15 CALL                             R2 1 0
       16 DUPTABLE                         R2 K8 [{"evalModules", "loadedCode"}]
       17 GETUPVAL                         R3 1
       18 MOVE                             R4 R0
       19 CALL                             R3 1 1
       20 SETTABLEKS                       R3 R2 K6 ["evalModules"]
       22 GETUPVAL                         R3 1
       23 MOVE                             R4 R1
       24 CALL                             R3 1 1
       25 SETTABLEKS                       R3 R2 K7 ["loadedCode"]
       27 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NEWTABLE                         R3 0 1
        4 LOADK                            R4 K0 ["AssistantEval"]
        5 SETLIST                          R3 R4 1 [1]
        7 CALL                             R1 2 1
        8 MOVE                             R2 R0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETTABLEKS                       R9 R6 K1 ["name"]
       14 NAMECALL                         R7 R1 K2 ["FindFirstChild"]
       16 CALL                             R7 2 1
       17 JUMPIFNOT                        R7 ; [+3]
       18 NAMECALL                         R8 R7 K3 ["Destroy"]
       20 CALL                             R8 1 0
       21 GETUPVAL                         R8 2
       22 MOVE                             R9 R6
       23 MOVE                             R10 R1
       24 CALL                             R8 2 0
       25 FORGLOOP                         R2 2 ; [-14]
       27 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["AssistantEval"]
        3 GETTABLEKS                       R1 R1 K1 ["LoadedCode"]
        5 GETTABLEKS                       R2 R0 K2 ["includeAssets"]
        7 JUMPIFNOT                        R2 ; [+18]
        8 GETTABLEKS                       R2 R0 K2 ["includeAssets"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 LOADK                            R8 K3 ["rbxasset://assistant_eval/"]
       14 MOVE                             R9 R6
       15 CONCAT                           R7 R8 R9
       16 GETUPVAL                         R8 1
       17 MOVE                             R10 R7
       18 NAMECALL                         R8 R8 K4 ["LoadLocalAsset"]
       20 CALL                             R8 2 1
       21 JUMPIFNOT                        R8 ; [+2]
       22 SETTABLEKS                       R1 R8 K5 ["Parent"]
       24 FORGLOOP                         R2 2 ; [-12]
       26 RETURN                           R0 0

PROTO_17:
        0 JUMPIFNOTEQKS                    R0 K0 ["InvokeCallTool"] ; [+14]
        2 GETUPVAL                         R3 0
        3 LOADK                            R5 K1 ["AssistantEvalCallTool"]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R6 R6 K2 ["Types"]
        7 GETTABLEKS                       R6 R6 K3 ["Standalone"]
        9 MOVE                             R7 R1
       10 MOVE                             R8 R2
       11 NAMECALL                         R3 R3 K4 ["InvokeGuestAsync"]
       13 CALL                             R3 5 -1
       14 RETURN                           R3 -1
       15 GETIMPORT                        R3 K6 [error]
       17 LOADK                            R5 K7 ["Unknown event name: %*"]
       18 MOVE                             R7 R0
       19 NAMECALL                         R5 R5 K8 ["format"]
       21 CALL                             R5 2 1
       22 MOVE                             R4 R5
       23 CALL                             R3 1 0
       24 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getAssistantEvalBridge"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 SETTABLEKS                       R1 R0 K1 ["OnInvoke"]
        9 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R1 0 2
        2 LOADK                            R2 K0 ["AssistantEval"]
        3 LOADK                            R3 K1 ["RunTimeEvals"]
        4 SETLIST                          R1 R2 2 [1]
        6 GETIMPORT                        R2 K4 [Instance.new]
        8 LOADK                            R3 K5 ["ModuleScript"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R0 K6 ["moduleScriptSource"]
       12 SETTABLEKS                       R3 R2 K7 ["Source"]
       14 GETTABLEKS                       R3 R0 K8 ["evalName"]
       16 SETTABLEKS                       R3 R2 K9 ["Name"]
       18 GETUPVAL                         R3 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R5 R1
       21 CALL                             R3 2 1
       22 SETTABLEKS                       R3 R2 K10 ["Parent"]
       24 GETTABLEKS                       R4 R0 K11 ["evalStorage"]
       26 JUMPIFNOT                        R4 ; [+26]
       27 GETTABLEKS                       R4 R0 K11 ["evalStorage"]
       29 LOADNIL                          R5
       30 LOADNIL                          R6
       31 FORGPREP                         R4
       32 GETUPVAL                         R10 2
       33 CALL                             R10 0 1
       34 GETTABLEKS                       R9 R10 K12 ["Value"]
       36 GETUPVAL                         R10 3
       37 MOVE                             R12 R9
       38 NAMECALL                         R10 R10 K13 ["JSONDecode"]
       40 CALL                             R10 2 1
       41 SETTABLE                         R8 R10 R7
       42 GETUPVAL                         R11 3
       43 MOVE                             R13 R10
       44 NAMECALL                         R11 R11 K14 ["JSONEncode"]
       46 CALL                             R11 2 1
       47 GETUPVAL                         R12 2
       48 CALL                             R12 0 1
       49 SETTABLEKS                       R11 R12 K12 ["Value"]
       51 FORGLOOP                         R4 2 ; [-20]
       53 GETUPVAL                         R4 4
       54 MOVE                             R5 R0
       55 CALL                             R4 1 0
       56 GETUPVAL                         R4 5
       57 GETTABLEKS                       R4 R4 K15 ["getAssistantEvalBridge"]
       59 CALL                             R4 0 1
       60 NEWCLOSURE                       R5 P0
       61 CAPTURE                          UPVAL U6
       62 CAPTURE                          UPVAL U7
       63 SETTABLEKS                       R5 R4 K16 ["OnInvoke"]
       65 GETUPVAL                         R4 5
       66 GETTABLEKS                       R4 R4 K17 ["installLoadedCode"]
       68 CALL                             R4 0 0
       69 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["runEvalEdit"]
        3 GETTABLEKS                       R3 R0 K3 ["evalName"]
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["get"]
        9 CALL                             R1 0 1
       10 LOADK                            R3 K5 ["        local evalStarter = require(game.ReplicatedStorage.AssistantEval.Modules.EvalStarter)\n        local evalName = \""]
       11 GETTABLEKS                       R4 R0 K3 ["evalName"]
       13 LOADK                            R5 K6 ["\"\n        return evalStarter.runEvalEdit(evalName)\n    "]
       14 CONCAT                           R2 R3 R5
       15 GETTABLEKS                       R3 R1 K7 ["tools"]
       17 GETTABLEKS                       R3 R3 K8 ["executeLuau"]
       19 GETTABLEKS                       R3 R3 K9 ["loadCode"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 2
       23 MOVE                             R5 R4
       24 CALL                             R5 0 1
       25 RETURN                           R5 1

PROTO_21:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["invokeReference"]
        3 GETTABLEKS                       R3 R0 K3 ["evalName"]
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["get"]
        9 CALL                             R1 0 1
       10 LOADK                            R3 K5 ["        local evalStarter = require(game.ReplicatedStorage.AssistantEval.Modules.EvalStarter)\n        local evalName = \""]
       11 GETTABLEKS                       R4 R0 K3 ["evalName"]
       13 LOADK                            R5 K6 ["\"\n        return evalStarter.invokeReference(evalName)\n    "]
       14 CONCAT                           R2 R3 R5
       15 GETTABLEKS                       R3 R1 K7 ["tools"]
       17 GETTABLEKS                       R3 R3 K8 ["executeLuau"]
       19 GETTABLEKS                       R3 R3 K9 ["loadCode"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 2
       23 MOVE                             R5 R4
       24 CALL                             R5 0 1
       25 RETURN                           R5 1

PROTO_22:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["setupEval"]
        3 GETTABLEKS                       R3 R0 K3 ["evalName"]
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["get"]
        9 CALL                             R1 0 1
       10 LOADK                            R3 K5 ["        local evalStarter = require(game.ReplicatedStorage.AssistantEval.Modules.EvalStarter)\n        local evalName = \""]
       11 GETTABLEKS                       R4 R0 K3 ["evalName"]
       13 LOADK                            R5 K6 ["\"\n        return evalStarter.setupEval(evalName)\n    "]
       14 CONCAT                           R2 R3 R5
       15 GETTABLEKS                       R3 R1 K7 ["tools"]
       17 GETTABLEKS                       R3 R3 K8 ["executeLuau"]
       19 GETTABLEKS                       R3 R3 K9 ["loadCode"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 2
       23 MOVE                             R5 R4
       24 CALL                             R5 0 1
       25 RETURN                           R5 1

PROTO_23:
        0 NEWTABLE                         R1 0 1
        2 LOADK                            R2 K0 ["EvalResult:Server"]
        3 SETLIST                          R1 R2 1 [1]
        5 LOADN                            R4 1
        6 MOVE                             R2 R0
        7 LOADN                            R3 1
        8 FORNPREP                         R2
        9 LOADK                            R6 K1 ["EvalResult:Client:%*"]
       10 MOVE                             R8 R4
       11 NAMECALL                         R6 R6 K2 ["format"]
       13 CALL                             R6 2 1
       14 MOVE                             R5 R6
       15 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       17 MOVE                             R7 R1
       18 MOVE                             R8 R5
       19 GETIMPORT                        R6 K5 [table.insert]
       21 CALL                             R6 2 0
       22 FORNLOOP                         R2
       23 RETURN                           R1 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 MOVE                             R3 R2
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLEKS                       R8 R1 K1 ["setUserSettingsAsync"]
       13 MOVE                             R9 R7
       14 LOADNIL                          R10
       15 CALL                             R8 2 0
       16 FORGLOOP                         R3 2 ; [-6]
       18 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 0
        7 JUMPIFNOT                        R0 ; [+13]
        8 GETUPVAL                         R0 3
        9 GETUPVAL                         R2 0
       10 NAMECALL                         R0 R0 K1 ["JSONDecode"]
       12 CALL                             R0 2 1
       13 GETTABLEKS                       R1 R0 K2 ["sessionId"]
       15 GETUPVAL                         R2 4
       16 JUMPIFNOTEQ                      R1 R2 ; [+4]
       18 GETTABLEKS                       R1 R0 K3 ["evalResult"]
       20 RETURN                           R1 1
       21 LOADNIL                          R0
       22 RETURN                           R0 1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["clientEvalNums"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["get"]
        7 CALL                             R3 0 1
        8 NEWTABLE                         R4 0 0
       10 GETIMPORT                        R5 K4 [os.time]
       12 CALL                             R5 0 1
       13 GETIMPORT                        R6 K4 [os.time]
       15 CALL                             R6 0 1
       16 SUB                              R7 R6 R5
       17 LOADN                            R8 300
       18 JUMPIFNOTLT                      R8 R7 ; [+5]
       20 GETIMPORT                        R7 K6 [error]
       22 LOADK                            R8 K7 ["Timeout waiting for results, some of the Roblox Studio processes does not respond"]
       23 CALL                             R7 1 0
       24 LOADN                            R7 0
       25 MOVE                             R8 R2
       26 LOADNIL                          R9
       27 LOADNIL                          R10
       28 FORGPREP                         R8
       29 GETTABLE                         R13 R4 R12
       30 JUMPIFNOT                        R13 ; [+2]
       31 CLOSEUPVALS                      R13
       32 JUMP                             ; [+15]
       33 ADDK                             R7 R7 K8 [1]
       34 GETIMPORT                        R14 K10 [pcall]
       36 NEWCLOSURE                       R15 P0
       37 CAPTURE                          REF R13
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R12
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          VAL R0
       42 CALL                             R14 1 2
       43 JUMPIFNOT                        R14 ; [+3]
       44 JUMPIFEQKNIL                     R15 ; [+2]
       46 SETTABLE                         R15 R4 R12
       47 CLOSEUPVALS                      R13
       48 FORGLOOP                         R8 2 ; [-20]
       50 JUMPIFEQKN                       R7 K11 [0] ; [+11]
       52 GETIMPORT                        R8 K13 [print]
       54 LOADK                            R9 K14 ["waitForMultiPlayersEvalResults, remainingCount"]
       55 MOVE                             R10 R7
       56 CALL                             R8 2 0
       57 GETIMPORT                        R8 K17 [task.wait]
       59 LOADN                            R9 2
       60 CALL                             R8 1 0
       61 JUMPBACK                         ; [-49]
       62 RETURN                           R4 1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["clientEvalNums"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["AssistantEval"]
        7 GETTABLEKS                       R1 R1 K2 ["RunTimeEvals"]
        9 LOADK                            R3 K3 ["MultiplayerRunSessionId"]
       10 NAMECALL                         R1 R1 K4 ["FindFirstChild"]
       12 CALL                             R1 2 1
       13 JUMPIFNOT                        R1 ; [+3]
       14 NAMECALL                         R2 R1 K5 ["Destroy"]
       16 CALL                             R2 1 0
       17 GETUPVAL                         R2 2
       18 LOADB                            R4 0
       19 NAMECALL                         R2 R2 K6 ["GenerateGUID"]
       21 CALL                             R2 2 1
       22 GETIMPORT                        R3 K9 [Instance.new]
       24 LOADK                            R4 K10 ["StringValue"]
       25 CALL                             R3 1 1
       26 LOADK                            R4 K3 ["MultiplayerRunSessionId"]
       27 SETTABLEKS                       R4 R3 K11 ["Name"]
       29 SETTABLEKS                       R2 R3 K12 ["Value"]
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K1 ["AssistantEval"]
       34 GETTABLEKS                       R4 R4 K2 ["RunTimeEvals"]
       36 SETTABLEKS                       R4 R3 K13 ["Parent"]
       38 RETURN                           R2 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["clientEvalNums"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["AssistantEval"]
        7 GETTABLEKS                       R2 R2 K2 ["RunTimeEvals"]
        9 LOADK                            R4 K3 ["MultiplayerRunSessionId"]
       10 NAMECALL                         R2 R2 K4 ["FindFirstChild"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+3]
       14 NAMECALL                         R3 R2 K5 ["Destroy"]
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["getInstanceByPath"]
        3 LOADK                            R1 K1 ["game.ReplicatedStorage.AssistantEval"]
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 0
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 0
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K2 ["Parent"]
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K0 ["getInstanceByPath"]
       15 LOADK                            R1 K3 ["game.LoadedCode"]
       16 CALL                             R0 1 1
       17 SETUPVAL                         R0 2
       18 GETUPVAL                         R0 2
       19 JUMPIFNOT                        R0 ; [+4]
       20 GETUPVAL                         R0 2
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K2 ["Parent"]
       24 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["ReplicatedStorage"]
        6 NAMECALL                         R1 R1 K3 ["GetService"]
        8 CALL                             R1 2 1
        9 SETTABLEKS                       R1 R0 K4 ["Parent"]
       11 GETUPVAL                         R0 1
       12 JUMPIFNOT                        R0 ; [+5]
       13 GETUPVAL                         R0 1
       14 GETIMPORT                        R1 K1 [game]
       16 SETTABLEKS                       R1 R0 K4 ["Parent"]
       18 RETURN                           R0 0

PROTO_31:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["Name"]
        4 RETURN                           R0 1

PROTO_32:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["Name"]
        4 RETURN                           R0 1

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["AssistantEval"]
        7 GETTABLEKS                       R2 R2 K2 ["Config"]
        9 GETTABLEKS                       R3 R1 K3 ["tools"]
       11 GETTABLEKS                       R3 R3 K4 ["executeLuau"]
       13 GETTABLEKS                       R3 R3 K5 ["loadCode"]
       15 GETTABLEKS                       R4 R2 K6 ["Source"]
       17 CALL                             R3 1 2
       18 MOVE                             R5 R4
       19 CALL                             R5 0 1
       20 MOVE                             R0 R5
       21 RETURN                           R0 1

PROTO_34:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 LOADB                            R4 1
        3 JUMP                             ; [+1]
        4 LOADB                            R4 0
        5 MOVE                             R5 R2
        6 CALL                             R3 2 1
        7 RETURN                           R3 1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 RETURN                           R0 1

PROTO_36:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_37:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_38:
        0 GETIMPORT                        R3 K1 [print]
        2 LOADK                            R4 K2 ["invokeReference"]
        3 GETTABLEKS                       R5 R1 K3 ["evalName"]
        5 CALL                             R3 2 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K4 ["get"]
        9 CALL                             R3 0 1
       10 LOADK                            R5 K5 ["        local evalStarter = require(game.ReplicatedStorage.AssistantEval.Modules.EvalStarter)\n        local evalName = \""]
       11 GETTABLEKS                       R6 R1 K3 ["evalName"]
       13 LOADK                            R7 K6 ["\"\n        return evalStarter.invokeReference(evalName)\n    "]
       14 CONCAT                           R4 R5 R7
       15 GETTABLEKS                       R5 R3 K7 ["tools"]
       17 GETTABLEKS                       R5 R5 K8 ["executeLuau"]
       19 GETTABLEKS                       R5 R5 K9 ["loadCode"]
       21 MOVE                             R6 R4
       22 CALL                             R5 1 2
       23 MOVE                             R7 R6
       24 CALL                             R7 0 1
       25 MOVE                             R2 R7
       26 RETURN                           R2 1

PROTO_39:
        0 GETIMPORT                        R3 K1 [print]
        2 LOADK                            R4 K2 ["runEvalEdit"]
        3 GETTABLEKS                       R5 R1 K3 ["evalName"]
        5 CALL                             R3 2 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K4 ["get"]
        9 CALL                             R3 0 1
       10 LOADK                            R5 K5 ["        local evalStarter = require(game.ReplicatedStorage.AssistantEval.Modules.EvalStarter)\n        local evalName = \""]
       11 GETTABLEKS                       R6 R1 K3 ["evalName"]
       13 LOADK                            R7 K6 ["\"\n        return evalStarter.runEvalEdit(evalName)\n    "]
       14 CONCAT                           R4 R5 R7
       15 GETTABLEKS                       R5 R3 K7 ["tools"]
       17 GETTABLEKS                       R5 R5 K8 ["executeLuau"]
       19 GETTABLEKS                       R5 R5 K9 ["loadCode"]
       21 MOVE                             R6 R4
       22 CALL                             R5 1 2
       23 MOVE                             R7 R6
       24 CALL                             R7 0 1
       25 MOVE                             R2 R7
       26 RETURN                           R2 1

PROTO_40:
        0 GETIMPORT                        R3 K1 [print]
        2 LOADK                            R4 K2 ["setupEval"]
        3 GETTABLEKS                       R5 R1 K3 ["evalName"]
        5 CALL                             R3 2 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K4 ["get"]
        9 CALL                             R3 0 1
       10 LOADK                            R5 K5 ["        local evalStarter = require(game.ReplicatedStorage.AssistantEval.Modules.EvalStarter)\n        local evalName = \""]
       11 GETTABLEKS                       R6 R1 K3 ["evalName"]
       13 LOADK                            R7 K6 ["\"\n        return evalStarter.setupEval(evalName)\n    "]
       14 CONCAT                           R4 R5 R7
       15 GETTABLEKS                       R5 R3 K7 ["tools"]
       17 GETTABLEKS                       R5 R5 K8 ["executeLuau"]
       19 GETTABLEKS                       R5 R5 K9 ["loadCode"]
       21 MOVE                             R6 R4
       22 CALL                             R5 1 2
       23 MOVE                             R7 R6
       24 CALL                             R7 0 1
       25 MOVE                             R2 R7
       26 RETURN                           R2 1

PROTO_41:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_42:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 CALL                             R3 2 1
        4 RETURN                           R3 1

PROTO_43:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 CALL                             R3 2 -1
        4 RETURN                           R3 -1

PROTO_44:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_45:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["getPlaceFileName"]
        2 DUPCLOSURE                       R3 K1 [PROTO_32]
        3 NAMECALL                         R0 R0 K2 ["OnHostInvokeAsync"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 0
        7 LOADK                            R2 K3 ["loadConfig"]
        8 DUPCLOSURE                       R3 K4 [PROTO_33]
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 NAMECALL                         R0 R0 K2 ["OnHostInvokeAsync"]
       13 CALL                             R0 3 0
       14 GETUPVAL                         R0 0
       15 LOADK                            R2 K5 ["loadAllEvalScripts"]
       16 DUPCLOSURE                       R3 K6 [PROTO_34]
       17 CAPTURE                          UPVAL U3
       18 NAMECALL                         R0 R0 K2 ["OnHostInvokeAsync"]
       20 CALL                             R0 3 0
       21 GETUPVAL                         R0 0
       22 LOADK                            R2 K7 ["getCommonEvalModules"]
       23 DUPCLOSURE                       R3 K8 [PROTO_35]
       24 CAPTURE                          UPVAL U4
       25 NAMECALL                         R0 R0 K2 ["OnHostInvokeAsync"]
       27 CALL                             R0 3 0
       28 GETUPVAL                         R0 0
       29 LOADK                            R2 K9 ["putEvalModules"]
       30 DUPCLOSURE                       R3 K10 [PROTO_36]
       31 CAPTURE                          UPVAL U5
       32 NAMECALL                         R0 R0 K2 ["OnHostInvokeAsync"]
       34 CALL                             R0 3 0
       35 GETUPVAL                         R0 0
       36 LOADK                            R2 K11 ["putEvalModuleScript"]
       37 DUPCLOSURE                       R3 K12 [PROTO_37]
       38 CAPTURE                          UPVAL U6
       39 NAMECALL                         R0 R0 K2 ["OnHostInvokeAsync"]
       41 CALL                             R0 3 0
       42 GETUPVAL                         R0 0
       43 LOADK                            R2 K13 ["invokeReference"]
       44 DUPCLOSURE                       R3 K14 [PROTO_38]
       45 CAPTURE                          UPVAL U1
       46 NAMECALL                         R0 R0 K2 ["OnHostInvokeAsync"]
       48 CALL                             R0 3 0
       49 GETUPVAL                         R0 0
       50 LOADK                            R2 K15 ["runEvalEdit"]
       51 DUPCLOSURE                       R3 K16 [PROTO_39]
       52 CAPTURE                          UPVAL U1
       53 NAMECALL                         R0 R0 K2 ["OnHostInvokeAsync"]
       55 CALL                             R0 3 0
       56 GETUPVAL                         R0 0
       57 LOADK                            R2 K17 ["setupEval"]
       58 DUPCLOSURE                       R3 K18 [PROTO_40]
       59 CAPTURE                          UPVAL U1
       60 NAMECALL                         R0 R0 K2 ["OnHostInvokeAsync"]
       62 CALL                             R0 3 0
       63 GETUPVAL                         R0 0
       64 LOADK                            R2 K19 ["prepareMultiPlayersEval"]
       65 DUPCLOSURE                       R3 K20 [PROTO_41]
       66 CAPTURE                          UPVAL U7
       67 NAMECALL                         R0 R0 K2 ["OnHostInvokeAsync"]
       69 CALL                             R0 3 0
       70 GETUPVAL                         R0 0
       71 LOADK                            R2 K21 ["waitForMultiPlayersEvalResults"]
       72 DUPCLOSURE                       R3 K22 [PROTO_42]
       73 CAPTURE                          UPVAL U8
       74 NAMECALL                         R0 R0 K2 ["OnHostInvokeAsync"]
       76 CALL                             R0 3 0
       77 GETUPVAL                         R0 0
       78 LOADK                            R2 K23 ["clearMultiPlayersEval"]
       79 DUPCLOSURE                       R3 K24 [PROTO_43]
       80 CAPTURE                          UPVAL U9
       81 NAMECALL                         R0 R0 K2 ["OnHostInvokeAsync"]
       83 CALL                             R0 3 0
       84 GETUPVAL                         R0 0
       85 LOADK                            R2 K25 ["detachEvalFolder"]
       86 DUPCLOSURE                       R3 K26 [PROTO_44]
       87 CAPTURE                          UPVAL U10
       88 NAMECALL                         R0 R0 K2 ["OnHostInvokeAsync"]
       90 CALL                             R0 3 0
       91 GETUPVAL                         R0 0
       92 LOADK                            R2 K27 ["reattachEvalFolder"]
       93 DUPCLOSURE                       R3 K28 [PROTO_45]
       94 CAPTURE                          UPVAL U11
       95 NAMECALL                         R0 R0 K2 ["OnHostInvokeAsync"]
       97 CALL                             R0 3 0
       98 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["EditDataModelStarted"]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["Types"]
        5 GETTABLEKS                       R3 R3 K2 ["Standalone"]
        7 NAMECALL                         R0 R0 K3 ["FireGuest"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_48:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 GETUPVAL                         R1 0
        4 LOADK                            R3 K0 ["CheckEditDataModelStarted"]
        5 MOVE                             R4 R0
        6 NAMECALL                         R1 R1 K1 ["OnHostEvent"]
        8 CALL                             R1 3 0
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K2 ["EditDataModelStarted"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["Types"]
       14 GETTABLEKS                       R4 R4 K4 ["Standalone"]
       16 NAMECALL                         R1 R1 K5 ["FireGuest"]
       18 CALL                             R1 3 0
       19 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["installLoadedCode"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["EditDataModelEnded"]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["Types"]
        5 GETTABLEKS                       R3 R3 K2 ["Standalone"]
        7 NAMECALL                         R0 R0 K3 ["FireGuest"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_51:
        0 SETUPVAL                         R0 0
        1 SETUPVAL                         R1 1
        2 GETIMPORT                        R2 K1 [pcall]
        4 DUPCLOSURE                       R3 K2 [PROTO_49]
        5 CAPTURE                          UPVAL U2
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 3
        8 CALL                             R2 0 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["Unloading"]
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U4
       15 NAMECALL                         R2 R2 K4 ["Connect"]
       17 CALL                             R2 2 0
       18 NEWCLOSURE                       R2 P2
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U4
       21 GETUPVAL                         R3 1
       22 LOADK                            R5 K5 ["CheckEditDataModelStarted"]
       23 MOVE                             R6 R2
       24 NAMECALL                         R3 R3 K6 ["OnHostEvent"]
       26 CALL                             R3 3 0
       27 GETUPVAL                         R3 1
       28 LOADK                            R5 K7 ["EditDataModelStarted"]
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R6 R6 K8 ["Types"]
       32 GETTABLEKS                       R6 R6 K9 ["Standalone"]
       34 NAMECALL                         R3 R3 K10 ["FireGuest"]
       36 CALL                             R3 3 0
       37 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 NEWTABLE                         R0 0 0
       11 SETUPVAL                         R0 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Guest"]
       16 GETTABLEKS                       R2 R2 K9 ["Environment"]
       18 GETIMPORT                        R3 K11 [game]
       20 LOADK                            R5 K12 ["HttpService"]
       21 NAMECALL                         R3 R3 K13 ["GetService"]
       23 CALL                             R3 2 1
       24 GETIMPORT                        R4 K11 [game]
       26 LOADK                            R6 K14 ["ReplicatedStorage"]
       27 NAMECALL                         R4 R4 K13 ["GetService"]
       29 CALL                             R4 2 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Packages"]
       34 GETTABLEKS                       R6 R6 K15 ["DMNetworking"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETIMPORT                        R7 K1 [script]
       41 GETTABLEKS                       R7 R7 K16 ["Parent"]
       43 GETTABLEKS                       R7 R7 K17 ["EvalUtils"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R1 K18 ["Utils"]
       48 GETTABLEKS                       R7 R7 K19 ["DataModelType"]
       50 GETIMPORT                        R8 K5 [require]
       52 GETIMPORT                        R9 K1 [script]
       54 GETTABLEKS                       R9 R9 K16 ["Parent"]
       56 GETTABLEKS                       R9 R9 K20 ["Types"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K11 [game]
       61 LOADK                            R11 K21 ["InsertService"]
       62 NAMECALL                         R9 R9 K13 ["GetService"]
       64 CALL                             R9 2 1
       65 LOADNIL                          R10
       66 LOADNIL                          R11
       67 LOADNIL                          R12
       68 LOADNIL                          R13
       69 DUPCLOSURE                       R14 K22 [PROTO_0]
       70 DUPCLOSURE                       R15 K23 [PROTO_1]
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R4
       73 DUPCLOSURE                       R16 K24 [PROTO_3]
       74 CAPTURE                          VAL R4
       75 DUPCLOSURE                       R17 K25 [PROTO_4]
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R16
       78 DUPCLOSURE                       R18 K26 [PROTO_7]
       79 CAPTURE                          VAL R18
       80 DUPCLOSURE                       R19 K27 [PROTO_8]
       81 CAPTURE                          VAL R19
       82 DUPCLOSURE                       R20 K28 [PROTO_9]
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R4
       85 DUPCLOSURE                       R21 K29 [PROTO_10]
       86 CAPTURE                          VAL R20
       87 DUPCLOSURE                       R22 K30 [PROTO_11]
       88 CAPTURE                          VAL R20
       89 DUPCLOSURE                       R23 K31 [PROTO_12]
       90 CAPTURE                          VAL R20
       91 CAPTURE                          VAL R3
       92 DUPCLOSURE                       R24 K32 [PROTO_13]
       93 CAPTURE                          VAL R20
       94 CAPTURE                          VAL R3
       95 DUPCLOSURE                       R25 K33 [PROTO_14]
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R18
       98 DUPCLOSURE                       R26 K34 [PROTO_15]
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R19
      102 DUPCLOSURE                       R27 K35 [PROTO_16]
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R9
      105 NEWCLOSURE                       R28 P14
      106 CAPTURE                          VAL R6
      107 CAPTURE                          REF R11
      108 CAPTURE                          VAL R7
      109 NEWCLOSURE                       R29 P15
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R20
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R27
      115 CAPTURE                          VAL R6
      116 CAPTURE                          REF R11
      117 CAPTURE                          VAL R7
      118 DUPCLOSURE                       R30 K36 [PROTO_20]
      119 CAPTURE                          VAL R2
      120 DUPCLOSURE                       R31 K37 [PROTO_21]
      121 CAPTURE                          VAL R2
      122 DUPCLOSURE                       R32 K38 [PROTO_22]
      123 CAPTURE                          VAL R2
      124 DUPCLOSURE                       R33 K39 [PROTO_23]
      125 DUPCLOSURE                       R34 K40 [PROTO_24]
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R33
      128 DUPCLOSURE                       R35 K41 [PROTO_26]
      129 CAPTURE                          VAL R33
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R3
      132 DUPCLOSURE                       R36 K42 [PROTO_27]
      133 CAPTURE                          VAL R34
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R3
      136 DUPCLOSURE                       R37 K43 [PROTO_28]
      137 CAPTURE                          VAL R34
      138 CAPTURE                          VAL R4
      139 NEWCLOSURE                       R38 P24
      140 CAPTURE                          REF R12
      141 CAPTURE                          VAL R6
      142 CAPTURE                          REF R13
      143 NEWCLOSURE                       R39 P25
      144 CAPTURE                          REF R12
      145 CAPTURE                          REF R13
      146 DUPCLOSURE                       R40 K44 [PROTO_31]
      147 NEWTABLE                         R41 0 0
      149 NEWCLOSURE                       R42 P27
      150 CAPTURE                          REF R11
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R25
      155 CAPTURE                          VAL R26
      156 CAPTURE                          VAL R29
      157 CAPTURE                          VAL R36
      158 CAPTURE                          VAL R35
      159 CAPTURE                          VAL R37
      160 CAPTURE                          VAL R38
      161 CAPTURE                          VAL R39
      162 NEWCLOSURE                       R43 P28
      163 CAPTURE                          REF R11
      164 CAPTURE                          VAL R7
      165 NEWCLOSURE                       R44 P29
      166 CAPTURE                          REF R10
      167 CAPTURE                          REF R11
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R42
      170 CAPTURE                          VAL R7
      171 NEWCLOSURE                       R45 P30
      172 CAPTURE                          REF R41
      173 DUPTABLE                         R46 K47 [{"init", "close"}]
      174 SETTABLEKS                       R44 R46 K45 ["init"]
      176 SETTABLEKS                       R45 R46 K46 ["close"]
      178 CLOSEUPVALS                      R10
      179 RETURN                           R46 1
