PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R2 ; [+15]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["invoke"]
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R0
        9 CALL                             R2 2 1
       10 GETUPVAL                         R3 3
       11 MOVE                             R7 R1
       12 NAMECALL                         R5 R2 K2 ["Connect"]
       14 CALL                             R5 2 -1
       15 NAMECALL                         R3 R3 K3 ["Add"]
       17 CALL                             R3 -1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 4
       20 MOVE                             R4 R0
       21 MOVE                             R5 R1
       22 NAMECALL                         R2 R2 K4 ["OnHostInvokeAsync"]
       24 CALL                             R2 3 0
       25 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_4:
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
       43 DUPCLOSURE                       R6 K14 [PROTO_3]
       44 CALL                             R4 2 0
       45 RETURN                           R2 1

PROTO_5:
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

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["name"]
        2 GETTABLEKS                       R4 R1 K0 ["name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_7:
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
       41 DUPCLOSURE                       R4 K17 [PROTO_6]
       42 CALL                             R2 2 0
       43 RETURN                           R1 1

PROTO_8:
        0 DUPCLOSURE                       R1 K0 [PROTO_7]
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETTABLEKS                       R1 R0 K0 ["Value"]
        4 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 SETTABLEKS                       R0 R1 K0 ["Value"]
        4 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 JUMPIFNOTEQKS                    R0 K0 ["InvokeCallTool"] ; [+35]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["FFlagAssistantUseNewDMNetworking"]
        5 JUMPIFNOT                        R3 ; [+17]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["invoke"]
        9 GETUPVAL                         R4 2
       10 LOADK                            R5 K3 ["EvalDriverEditDM.AssistantEvalCallTool"]
       11 CALL                             R3 2 1
       12 GETUPVAL                         R6 3
       13 GETTABLEKS                       R6 R6 K4 ["Identity"]
       15 GETTABLEKS                       R6 R6 K5 ["Standalone"]
       17 MOVE                             R7 R1
       18 MOVE                             R8 R2
       19 NAMECALL                         R4 R3 K6 ["InvokeAsync"]
       21 CALL                             R4 4 -1
       22 RETURN                           R4 -1
       23 GETUPVAL                         R3 4
       24 LOADK                            R5 K7 ["AssistantEvalCallTool"]
       25 GETUPVAL                         R6 5
       26 GETTABLEKS                       R6 R6 K8 ["Types"]
       28 GETTABLEKS                       R6 R6 K5 ["Standalone"]
       30 MOVE                             R7 R1
       31 MOVE                             R8 R2
       32 NAMECALL                         R3 R3 K9 ["InvokeGuestAsync"]
       34 CALL                             R3 5 -1
       35 RETURN                           R3 -1
       36 GETIMPORT                        R3 K11 [error]
       38 LOADK                            R4 K12 ["Unknown event name: %*"]
       39 MOVE                             R6 R0
       40 NAMECALL                         R4 R4 K13 ["format"]
       42 CALL                             R4 2 1
       43 CALL                             R3 1 0
       44 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getAssistantEvalBridge"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 SETTABLEKS                       R1 R0 K1 ["OnInvoke"]
       13 RETURN                           R0 0

PROTO_20:
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
       63 CAPTURE                          UPVAL U8
       64 CAPTURE                          UPVAL U9
       65 CAPTURE                          UPVAL U10
       66 CAPTURE                          UPVAL U11
       67 SETTABLEKS                       R5 R4 K16 ["OnInvoke"]
       69 GETUPVAL                         R4 5
       70 GETTABLEKS                       R4 R4 K17 ["installLoadedCode"]
       72 CALL                             R4 0 0
       73 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
        0 NEWTABLE                         R1 0 1
        2 LOADK                            R2 K0 ["EvalResult:Server"]
        3 SETLIST                          R1 R2 1 [1]
        5 LOADN                            R4 1
        6 MOVE                             R2 R0
        7 LOADN                            R3 1
        8 FORNPREP                         R2
        9 LOADK                            R5 K1 ["EvalResult:Client:%*"]
       10 MOVE                             R7 R4
       11 NAMECALL                         R5 R5 K2 ["format"]
       13 CALL                             R5 2 1
       14 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       16 MOVE                             R7 R1
       17 MOVE                             R8 R5
       18 GETIMPORT                        R6 K5 [table.insert]
       20 CALL                             R6 2 0
       21 FORNLOOP                         R2
       22 RETURN                           R1 1

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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

PROTO_31:
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

PROTO_32:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["Name"]
        4 RETURN                           R0 1

PROTO_33:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["Name"]
        4 RETURN                           R0 1

PROTO_34:
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

PROTO_35:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 LOADB                            R4 1
        3 JUMP                             ; [+1]
        4 LOADB                            R4 0
        5 MOVE                             R5 R2
        6 CALL                             R3 2 1
        7 RETURN                           R3 1

PROTO_36:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 RETURN                           R0 1

PROTO_37:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_38:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_43:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 CALL                             R3 2 1
        4 RETURN                           R3 1

PROTO_44:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 CALL                             R3 2 -1
        4 RETURN                           R3 -1

PROTO_45:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_47:
        0 DUPCLOSURE                       R0 K0 [PROTO_33]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantUseNewDMNetworking"]
        4 JUMPIFNOT                        R1 ; [+15]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["invoke"]
        8 GETUPVAL                         R2 2
        9 LOADK                            R3 K3 ["getPlaceFileName"]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 3
       12 MOVE                             R6 R0
       13 NAMECALL                         R4 R1 K4 ["Connect"]
       15 CALL                             R4 2 -1
       16 NAMECALL                         R2 R2 K5 ["Add"]
       18 CALL                             R2 -1 0
       19 JUMP                             ; [+6]
       20 GETUPVAL                         R1 4
       21 LOADK                            R3 K3 ["getPlaceFileName"]
       22 MOVE                             R4 R0
       23 NAMECALL                         R1 R1 K6 ["OnHostInvokeAsync"]
       25 CALL                             R1 3 0
       26 DUPCLOSURE                       R0 K7 [PROTO_34]
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U6
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantUseNewDMNetworking"]
       32 JUMPIFNOT                        R1 ; [+15]
       33 GETUPVAL                         R1 1
       34 GETTABLEKS                       R1 R1 K2 ["invoke"]
       36 GETUPVAL                         R2 2
       37 LOADK                            R3 K8 ["loadConfig"]
       38 CALL                             R1 2 1
       39 GETUPVAL                         R2 3
       40 MOVE                             R6 R0
       41 NAMECALL                         R4 R1 K4 ["Connect"]
       43 CALL                             R4 2 -1
       44 NAMECALL                         R2 R2 K5 ["Add"]
       46 CALL                             R2 -1 0
       47 JUMP                             ; [+6]
       48 GETUPVAL                         R1 4
       49 LOADK                            R3 K8 ["loadConfig"]
       50 MOVE                             R4 R0
       51 NAMECALL                         R1 R1 K6 ["OnHostInvokeAsync"]
       53 CALL                             R1 3 0
       54 DUPCLOSURE                       R0 K9 [PROTO_35]
       55 CAPTURE                          UPVAL U7
       56 GETUPVAL                         R1 0
       57 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantUseNewDMNetworking"]
       59 JUMPIFNOT                        R1 ; [+15]
       60 GETUPVAL                         R1 1
       61 GETTABLEKS                       R1 R1 K2 ["invoke"]
       63 GETUPVAL                         R2 2
       64 LOADK                            R3 K10 ["loadAllEvalScripts"]
       65 CALL                             R1 2 1
       66 GETUPVAL                         R2 3
       67 MOVE                             R6 R0
       68 NAMECALL                         R4 R1 K4 ["Connect"]
       70 CALL                             R4 2 -1
       71 NAMECALL                         R2 R2 K5 ["Add"]
       73 CALL                             R2 -1 0
       74 JUMP                             ; [+6]
       75 GETUPVAL                         R1 4
       76 LOADK                            R3 K10 ["loadAllEvalScripts"]
       77 MOVE                             R4 R0
       78 NAMECALL                         R1 R1 K6 ["OnHostInvokeAsync"]
       80 CALL                             R1 3 0
       81 DUPCLOSURE                       R0 K11 [PROTO_36]
       82 CAPTURE                          UPVAL U8
       83 GETUPVAL                         R1 0
       84 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantUseNewDMNetworking"]
       86 JUMPIFNOT                        R1 ; [+15]
       87 GETUPVAL                         R1 1
       88 GETTABLEKS                       R1 R1 K2 ["invoke"]
       90 GETUPVAL                         R2 2
       91 LOADK                            R3 K12 ["getCommonEvalModules"]
       92 CALL                             R1 2 1
       93 GETUPVAL                         R2 3
       94 MOVE                             R6 R0
       95 NAMECALL                         R4 R1 K4 ["Connect"]
       97 CALL                             R4 2 -1
       98 NAMECALL                         R2 R2 K5 ["Add"]
      100 CALL                             R2 -1 0
      101 JUMP                             ; [+6]
      102 GETUPVAL                         R1 4
      103 LOADK                            R3 K12 ["getCommonEvalModules"]
      104 MOVE                             R4 R0
      105 NAMECALL                         R1 R1 K6 ["OnHostInvokeAsync"]
      107 CALL                             R1 3 0
      108 DUPCLOSURE                       R0 K13 [PROTO_37]
      109 CAPTURE                          UPVAL U9
      110 GETUPVAL                         R1 0
      111 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantUseNewDMNetworking"]
      113 JUMPIFNOT                        R1 ; [+15]
      114 GETUPVAL                         R1 1
      115 GETTABLEKS                       R1 R1 K2 ["invoke"]
      117 GETUPVAL                         R2 2
      118 LOADK                            R3 K14 ["putEvalModules"]
      119 CALL                             R1 2 1
      120 GETUPVAL                         R2 3
      121 MOVE                             R6 R0
      122 NAMECALL                         R4 R1 K4 ["Connect"]
      124 CALL                             R4 2 -1
      125 NAMECALL                         R2 R2 K5 ["Add"]
      127 CALL                             R2 -1 0
      128 JUMP                             ; [+6]
      129 GETUPVAL                         R1 4
      130 LOADK                            R3 K14 ["putEvalModules"]
      131 MOVE                             R4 R0
      132 NAMECALL                         R1 R1 K6 ["OnHostInvokeAsync"]
      134 CALL                             R1 3 0
      135 DUPCLOSURE                       R0 K15 [PROTO_38]
      136 CAPTURE                          UPVAL U10
      137 GETUPVAL                         R1 0
      138 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantUseNewDMNetworking"]
      140 JUMPIFNOT                        R1 ; [+15]
      141 GETUPVAL                         R1 1
      142 GETTABLEKS                       R1 R1 K2 ["invoke"]
      144 GETUPVAL                         R2 2
      145 LOADK                            R3 K16 ["putEvalModuleScript"]
      146 CALL                             R1 2 1
      147 GETUPVAL                         R2 3
      148 MOVE                             R6 R0
      149 NAMECALL                         R4 R1 K4 ["Connect"]
      151 CALL                             R4 2 -1
      152 NAMECALL                         R2 R2 K5 ["Add"]
      154 CALL                             R2 -1 0
      155 JUMP                             ; [+6]
      156 GETUPVAL                         R1 4
      157 LOADK                            R3 K16 ["putEvalModuleScript"]
      158 MOVE                             R4 R0
      159 NAMECALL                         R1 R1 K6 ["OnHostInvokeAsync"]
      161 CALL                             R1 3 0
      162 DUPCLOSURE                       R0 K17 [PROTO_39]
      163 CAPTURE                          UPVAL U5
      164 GETUPVAL                         R1 0
      165 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantUseNewDMNetworking"]
      167 JUMPIFNOT                        R1 ; [+15]
      168 GETUPVAL                         R1 1
      169 GETTABLEKS                       R1 R1 K2 ["invoke"]
      171 GETUPVAL                         R2 2
      172 LOADK                            R3 K18 ["invokeReference"]
      173 CALL                             R1 2 1
      174 GETUPVAL                         R2 3
      175 MOVE                             R6 R0
      176 NAMECALL                         R4 R1 K4 ["Connect"]
      178 CALL                             R4 2 -1
      179 NAMECALL                         R2 R2 K5 ["Add"]
      181 CALL                             R2 -1 0
      182 JUMP                             ; [+6]
      183 GETUPVAL                         R1 4
      184 LOADK                            R3 K18 ["invokeReference"]
      185 MOVE                             R4 R0
      186 NAMECALL                         R1 R1 K6 ["OnHostInvokeAsync"]
      188 CALL                             R1 3 0
      189 DUPCLOSURE                       R0 K19 [PROTO_40]
      190 CAPTURE                          UPVAL U5
      191 GETUPVAL                         R1 0
      192 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantUseNewDMNetworking"]
      194 JUMPIFNOT                        R1 ; [+15]
      195 GETUPVAL                         R1 1
      196 GETTABLEKS                       R1 R1 K2 ["invoke"]
      198 GETUPVAL                         R2 2
      199 LOADK                            R3 K20 ["runEvalEdit"]
      200 CALL                             R1 2 1
      201 GETUPVAL                         R2 3
      202 MOVE                             R6 R0
      203 NAMECALL                         R4 R1 K4 ["Connect"]
      205 CALL                             R4 2 -1
      206 NAMECALL                         R2 R2 K5 ["Add"]
      208 CALL                             R2 -1 0
      209 JUMP                             ; [+6]
      210 GETUPVAL                         R1 4
      211 LOADK                            R3 K20 ["runEvalEdit"]
      212 MOVE                             R4 R0
      213 NAMECALL                         R1 R1 K6 ["OnHostInvokeAsync"]
      215 CALL                             R1 3 0
      216 DUPCLOSURE                       R0 K21 [PROTO_41]
      217 CAPTURE                          UPVAL U5
      218 GETUPVAL                         R1 0
      219 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantUseNewDMNetworking"]
      221 JUMPIFNOT                        R1 ; [+15]
      222 GETUPVAL                         R1 1
      223 GETTABLEKS                       R1 R1 K2 ["invoke"]
      225 GETUPVAL                         R2 2
      226 LOADK                            R3 K22 ["setupEval"]
      227 CALL                             R1 2 1
      228 GETUPVAL                         R2 3
      229 MOVE                             R6 R0
      230 NAMECALL                         R4 R1 K4 ["Connect"]
      232 CALL                             R4 2 -1
      233 NAMECALL                         R2 R2 K5 ["Add"]
      235 CALL                             R2 -1 0
      236 JUMP                             ; [+6]
      237 GETUPVAL                         R1 4
      238 LOADK                            R3 K22 ["setupEval"]
      239 MOVE                             R4 R0
      240 NAMECALL                         R1 R1 K6 ["OnHostInvokeAsync"]
      242 CALL                             R1 3 0
      243 DUPCLOSURE                       R0 K23 [PROTO_42]
      244 CAPTURE                          UPVAL U11
      245 GETUPVAL                         R1 0
      246 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantUseNewDMNetworking"]
      248 JUMPIFNOT                        R1 ; [+15]
      249 GETUPVAL                         R1 1
      250 GETTABLEKS                       R1 R1 K2 ["invoke"]
      252 GETUPVAL                         R2 2
      253 LOADK                            R3 K24 ["prepareMultiPlayersEval"]
      254 CALL                             R1 2 1
      255 GETUPVAL                         R2 3
      256 MOVE                             R6 R0
      257 NAMECALL                         R4 R1 K4 ["Connect"]
      259 CALL                             R4 2 -1
      260 NAMECALL                         R2 R2 K5 ["Add"]
      262 CALL                             R2 -1 0
      263 JUMP                             ; [+6]
      264 GETUPVAL                         R1 4
      265 LOADK                            R3 K24 ["prepareMultiPlayersEval"]
      266 MOVE                             R4 R0
      267 NAMECALL                         R1 R1 K6 ["OnHostInvokeAsync"]
      269 CALL                             R1 3 0
      270 DUPCLOSURE                       R0 K25 [PROTO_43]
      271 CAPTURE                          UPVAL U12
      272 GETUPVAL                         R1 0
      273 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantUseNewDMNetworking"]
      275 JUMPIFNOT                        R1 ; [+15]
      276 GETUPVAL                         R1 1
      277 GETTABLEKS                       R1 R1 K2 ["invoke"]
      279 GETUPVAL                         R2 2
      280 LOADK                            R3 K26 ["waitForMultiPlayersEvalResults"]
      281 CALL                             R1 2 1
      282 GETUPVAL                         R2 3
      283 MOVE                             R6 R0
      284 NAMECALL                         R4 R1 K4 ["Connect"]
      286 CALL                             R4 2 -1
      287 NAMECALL                         R2 R2 K5 ["Add"]
      289 CALL                             R2 -1 0
      290 JUMP                             ; [+6]
      291 GETUPVAL                         R1 4
      292 LOADK                            R3 K26 ["waitForMultiPlayersEvalResults"]
      293 MOVE                             R4 R0
      294 NAMECALL                         R1 R1 K6 ["OnHostInvokeAsync"]
      296 CALL                             R1 3 0
      297 DUPCLOSURE                       R0 K27 [PROTO_44]
      298 CAPTURE                          UPVAL U13
      299 GETUPVAL                         R1 0
      300 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantUseNewDMNetworking"]
      302 JUMPIFNOT                        R1 ; [+15]
      303 GETUPVAL                         R1 1
      304 GETTABLEKS                       R1 R1 K2 ["invoke"]
      306 GETUPVAL                         R2 2
      307 LOADK                            R3 K28 ["clearMultiPlayersEval"]
      308 CALL                             R1 2 1
      309 GETUPVAL                         R2 3
      310 MOVE                             R6 R0
      311 NAMECALL                         R4 R1 K4 ["Connect"]
      313 CALL                             R4 2 -1
      314 NAMECALL                         R2 R2 K5 ["Add"]
      316 CALL                             R2 -1 0
      317 JUMP                             ; [+6]
      318 GETUPVAL                         R1 4
      319 LOADK                            R3 K28 ["clearMultiPlayersEval"]
      320 MOVE                             R4 R0
      321 NAMECALL                         R1 R1 K6 ["OnHostInvokeAsync"]
      323 CALL                             R1 3 0
      324 DUPCLOSURE                       R0 K29 [PROTO_45]
      325 CAPTURE                          UPVAL U14
      326 GETUPVAL                         R1 0
      327 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantUseNewDMNetworking"]
      329 JUMPIFNOT                        R1 ; [+15]
      330 GETUPVAL                         R1 1
      331 GETTABLEKS                       R1 R1 K2 ["invoke"]
      333 GETUPVAL                         R2 2
      334 LOADK                            R3 K30 ["detachEvalFolder"]
      335 CALL                             R1 2 1
      336 GETUPVAL                         R2 3
      337 MOVE                             R6 R0
      338 NAMECALL                         R4 R1 K4 ["Connect"]
      340 CALL                             R4 2 -1
      341 NAMECALL                         R2 R2 K5 ["Add"]
      343 CALL                             R2 -1 0
      344 JUMP                             ; [+6]
      345 GETUPVAL                         R1 4
      346 LOADK                            R3 K30 ["detachEvalFolder"]
      347 MOVE                             R4 R0
      348 NAMECALL                         R1 R1 K6 ["OnHostInvokeAsync"]
      350 CALL                             R1 3 0
      351 DUPCLOSURE                       R0 K31 [PROTO_46]
      352 CAPTURE                          UPVAL U15
      353 GETUPVAL                         R1 0
      354 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantUseNewDMNetworking"]
      356 JUMPIFNOT                        R1 ; [+15]
      357 GETUPVAL                         R1 1
      358 GETTABLEKS                       R1 R1 K2 ["invoke"]
      360 GETUPVAL                         R2 2
      361 LOADK                            R3 K32 ["reattachEvalFolder"]
      362 CALL                             R1 2 1
      363 GETUPVAL                         R2 3
      364 MOVE                             R6 R0
      365 NAMECALL                         R4 R1 K4 ["Connect"]
      367 CALL                             R4 2 -1
      368 NAMECALL                         R2 R2 K5 ["Add"]
      370 CALL                             R2 -1 0
      371 RETURN                           R0 0
      372 GETUPVAL                         R1 4
      373 LOADK                            R3 K32 ["reattachEvalFolder"]
      374 MOVE                             R4 R0
      375 NAMECALL                         R1 R1 K6 ["OnHostInvokeAsync"]
      377 CALL                             R1 3 0
      378 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Identity"]
        4 GETTABLEKS                       R2 R2 K1 ["Standalone"]
        6 NAMECALL                         R0 R0 K2 ["Fire"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["EditDataModelStarted"]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["Types"]
        5 GETTABLEKS                       R3 R3 K2 ["Standalone"]
        7 NAMECALL                         R0 R0 K3 ["FireGuest"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+32]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["event"]
        7 GETUPVAL                         R1 2
        8 LOADK                            R2 K2 ["EvalDriverEditDM.EditDataModelStarted"]
        9 CALL                             R0 2 1
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["event"]
       13 GETUPVAL                         R2 2
       14 LOADK                            R3 K3 ["EvalDriverEditDM.CheckEditDataModelStarted"]
       15 CALL                             R1 2 1
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 GETUPVAL                         R3 4
       20 MOVE                             R7 R2
       21 NAMECALL                         R5 R1 K4 ["Connect"]
       23 CALL                             R5 2 -1
       24 NAMECALL                         R3 R3 K5 ["Add"]
       26 CALL                             R3 -1 0
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R5 R5 K6 ["Identity"]
       30 GETTABLEKS                       R5 R5 K7 ["Standalone"]
       32 NAMECALL                         R3 R0 K8 ["Fire"]
       34 CALL                             R3 2 0
       35 RETURN                           R0 0
       36 NEWCLOSURE                       R0 P1
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U6
       39 GETUPVAL                         R1 5
       40 LOADK                            R3 K9 ["CheckEditDataModelStarted"]
       41 MOVE                             R4 R0
       42 NAMECALL                         R1 R1 K10 ["OnHostEvent"]
       44 CALL                             R1 3 0
       45 GETUPVAL                         R1 5
       46 LOADK                            R3 K11 ["EditDataModelStarted"]
       47 GETUPVAL                         R4 6
       48 GETTABLEKS                       R4 R4 K12 ["Types"]
       50 GETTABLEKS                       R4 R4 K7 ["Standalone"]
       52 NAMECALL                         R1 R1 K13 ["FireGuest"]
       54 CALL                             R1 3 0
       55 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["installLoadedCode"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+19]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["event"]
        7 GETUPVAL                         R1 2
        8 LOADK                            R2 K2 ["EvalDriverEditDM.EditDataModelEnded"]
        9 CALL                             R0 2 1
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K3 ["Identity"]
       13 GETTABLEKS                       R3 R3 K4 ["Standalone"]
       15 NAMECALL                         R1 R0 K5 ["Fire"]
       17 CALL                             R1 2 0
       18 GETUPVAL                         R1 4
       19 NAMECALL                         R1 R1 K6 ["Destroy"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R0 5
       24 LOADK                            R2 K7 ["EditDataModelEnded"]
       25 GETUPVAL                         R3 6
       26 GETTABLEKS                       R3 R3 K8 ["Types"]
       28 GETTABLEKS                       R3 R3 K4 ["Standalone"]
       30 NAMECALL                         R0 R0 K9 ["FireGuest"]
       32 CALL                             R0 3 0
       33 RETURN                           R0 0

PROTO_53:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantUseNewDMNetworking"]
        4 JUMPIFNOT                        R3 ; [+14]
        5 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        7 MOVE                             R4 R2
        8 LOADK                            R5 K1 ["EvalDriverEditDM requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
        9 GETIMPORT                        R3 K3 [assert]
       11 CALL                             R3 2 0
       12 SETUPVAL                         R2 2
       13 GETUPVAL                         R3 4
       14 GETTABLEKS                       R3 R3 K4 ["new"]
       16 CALL                             R3 0 1
       17 SETUPVAL                         R3 3
       18 JUMP                             ; [+8]
       19 FASTCALL2K                       ASSERT R1 K5 ; [+5]
       21 MOVE                             R4 R1
       22 LOADK                            R5 K5 ["EvalDriverEditDM requires networking"]
       23 GETIMPORT                        R3 K3 [assert]
       25 CALL                             R3 2 0
       26 SETUPVAL                         R1 5
       27 GETIMPORT                        R3 K7 [pcall]
       29 DUPCLOSURE                       R4 K8 [PROTO_51]
       30 CAPTURE                          UPVAL U6
       31 CALL                             R3 1 0
       32 GETUPVAL                         R3 7
       33 CALL                             R3 0 0
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K9 ["Unloading"]
       37 NEWCLOSURE                       R5 P1
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          UPVAL U8
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          UPVAL U9
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U10
       45 NAMECALL                         R3 R3 K10 ["Connect"]
       47 CALL                             R3 2 0
       48 GETUPVAL                         R3 11
       49 CALL                             R3 0 0
       50 RETURN                           R0 0

PROTO_54:
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
       39 GETTABLEKS                       R7 R0 K6 ["Packages"]
       41 GETTABLEKS                       R7 R7 K16 ["DMNetworkingOLD"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K5 [require]
       46 GETIMPORT                        R8 K1 [script]
       48 GETTABLEKS                       R8 R8 K17 ["Parent"]
       50 GETTABLEKS                       R8 R8 K18 ["EvalUtils"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R9 R0 K19 ["Src"]
       57 GETTABLEKS                       R9 R9 K20 ["Flags"]
       59 CALL                             R8 1 1
       60 GETTABLEKS                       R9 R1 K21 ["Utils"]
       62 GETTABLEKS                       R9 R9 K22 ["Bin"]
       64 GETTABLEKS                       R10 R1 K21 ["Utils"]
       66 GETTABLEKS                       R10 R10 K23 ["DataModelType"]
       68 GETTABLEKS                       R11 R5 K24 ["Remote"]
       70 GETIMPORT                        R12 K5 [require]
       72 GETIMPORT                        R13 K1 [script]
       74 GETTABLEKS                       R13 R13 K17 ["Parent"]
       76 GETTABLEKS                       R13 R13 K25 ["Types"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K11 [game]
       81 LOADK                            R15 K26 ["InsertService"]
       82 NAMECALL                         R13 R13 K13 ["GetService"]
       84 CALL                             R13 2 1
       85 LOADNIL                          R14
       86 LOADNIL                          R15
       87 LOADNIL                          R16
       88 LOADNIL                          R17
       89 NEWCLOSURE                       R18 P0
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R11
       92 CAPTURE                          REF R16
       93 CAPTURE                          REF R17
       94 CAPTURE                          REF R15
       95 LOADNIL                          R19
       96 LOADNIL                          R20
       97 DUPCLOSURE                       R21 K27 [PROTO_1]
       98 DUPCLOSURE                       R22 K28 [PROTO_2]
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R4
      101 DUPCLOSURE                       R23 K29 [PROTO_4]
      102 CAPTURE                          VAL R4
      103 DUPCLOSURE                       R24 K30 [PROTO_5]
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R23
      106 DUPCLOSURE                       R25 K31 [PROTO_8]
      107 CAPTURE                          VAL R25
      108 DUPCLOSURE                       R26 K32 [PROTO_9]
      109 CAPTURE                          VAL R26
      110 DUPCLOSURE                       R27 K33 [PROTO_10]
      111 CAPTURE                          VAL R21
      112 CAPTURE                          VAL R4
      113 DUPCLOSURE                       R28 K34 [PROTO_11]
      114 CAPTURE                          VAL R27
      115 DUPCLOSURE                       R29 K35 [PROTO_12]
      116 CAPTURE                          VAL R27
      117 DUPCLOSURE                       R30 K36 [PROTO_13]
      118 CAPTURE                          VAL R27
      119 CAPTURE                          VAL R3
      120 DUPCLOSURE                       R31 K37 [PROTO_14]
      121 CAPTURE                          VAL R27
      122 CAPTURE                          VAL R3
      123 DUPCLOSURE                       R32 K38 [PROTO_15]
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R25
      126 DUPCLOSURE                       R33 K39 [PROTO_16]
      127 CAPTURE                          VAL R21
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R26
      130 DUPCLOSURE                       R34 K40 [PROTO_17]
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R13
      133 NEWCLOSURE                       R35 P15
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R11
      137 CAPTURE                          REF R16
      138 CAPTURE                          VAL R5
      139 CAPTURE                          REF R15
      140 CAPTURE                          VAL R10
      141 NEWCLOSURE                       R36 P16
      142 CAPTURE                          VAL R21
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R27
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R34
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R11
      150 CAPTURE                          REF R16
      151 CAPTURE                          VAL R5
      152 CAPTURE                          REF R15
      153 CAPTURE                          VAL R10
      154 DUPCLOSURE                       R37 K41 [PROTO_21]
      155 CAPTURE                          VAL R2
      156 DUPCLOSURE                       R38 K42 [PROTO_22]
      157 CAPTURE                          VAL R2
      158 DUPCLOSURE                       R39 K43 [PROTO_23]
      159 CAPTURE                          VAL R2
      160 DUPCLOSURE                       R40 K44 [PROTO_24]
      161 DUPCLOSURE                       R41 K45 [PROTO_25]
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R40
      164 DUPCLOSURE                       R42 K46 [PROTO_27]
      165 CAPTURE                          VAL R40
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R3
      168 DUPCLOSURE                       R43 K47 [PROTO_28]
      169 CAPTURE                          VAL R41
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R3
      172 DUPCLOSURE                       R44 K48 [PROTO_29]
      173 CAPTURE                          VAL R41
      174 CAPTURE                          VAL R4
      175 NEWCLOSURE                       R45 P25
      176 CAPTURE                          REF R19
      177 CAPTURE                          VAL R7
      178 CAPTURE                          REF R20
      179 NEWCLOSURE                       R46 P26
      180 CAPTURE                          REF R19
      181 CAPTURE                          REF R20
      182 DUPCLOSURE                       R47 K49 [PROTO_32]
      183 NEWTABLE                         R48 0 0
      185 NEWCLOSURE                       R49 P28
      186 CAPTURE                          VAL R8
      187 CAPTURE                          VAL R11
      188 CAPTURE                          REF R16
      189 CAPTURE                          REF R17
      190 CAPTURE                          REF R15
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R4
      193 CAPTURE                          VAL R24
      194 CAPTURE                          VAL R32
      195 CAPTURE                          VAL R33
      196 CAPTURE                          VAL R36
      197 CAPTURE                          VAL R43
      198 CAPTURE                          VAL R42
      199 CAPTURE                          VAL R44
      200 CAPTURE                          VAL R45
      201 CAPTURE                          VAL R46
      202 NEWCLOSURE                       R50 P29
      203 CAPTURE                          VAL R8
      204 CAPTURE                          VAL R11
      205 CAPTURE                          REF R16
      206 CAPTURE                          VAL R5
      207 CAPTURE                          REF R17
      208 CAPTURE                          REF R15
      209 CAPTURE                          VAL R10
      210 NEWCLOSURE                       R51 P30
      211 CAPTURE                          REF R14
      212 CAPTURE                          VAL R8
      213 CAPTURE                          REF R16
      214 CAPTURE                          REF R17
      215 CAPTURE                          VAL R9
      216 CAPTURE                          REF R15
      217 CAPTURE                          VAL R7
      218 CAPTURE                          VAL R49
      219 CAPTURE                          VAL R11
      220 CAPTURE                          VAL R5
      221 CAPTURE                          VAL R10
      222 CAPTURE                          VAL R50
      223 NEWCLOSURE                       R52 P31
      224 CAPTURE                          REF R48
      225 DUPTABLE                         R53 K52 [{"init", "close"}]
      226 SETTABLEKS                       R51 R53 K50 ["init"]
      228 SETTABLEKS                       R52 R53 K51 ["close"]
      230 CLOSEUPVALS                      R14
      231 RETURN                           R53 1
