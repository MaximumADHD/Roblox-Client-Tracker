PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["invoke"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R7 R1
        8 NAMECALL                         R5 R2 K1 ["Connect"]
       10 CALL                             R5 2 -1
       11 NAMECALL                         R3 R3 K2 ["Add"]
       13 CALL                             R3 -1 0
       14 RETURN                           R0 0

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
        1 LOADK                            R2 K0 ["AssistantEval"]
        2 LOADN                            R3 10
        3 NAMECALL                         R0 R0 K1 ["WaitForChild"]
        5 CALL                             R0 3 1
        6 FASTCALL2K                       ASSERT R0 K2 ; [+5]
        8 MOVE                             R2 R0
        9 LOADK                            R3 K2 ["Failed to find AssistantEval in ReplicatedStorage"]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 2 0
       13 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K1 ["AssistantEval"]
        6 LOADN                            R4 10
        7 NAMECALL                         R1 R1 K2 ["WaitForChild"]
        9 CALL                             R1 3 1
       10 FASTCALL2K                       ASSERT R1 K3 ; [+5]
       12 MOVE                             R3 R1
       13 LOADK                            R4 K3 ["Failed to find AssistantEval in ReplicatedStorage"]
       14 GETIMPORT                        R2 K5 [assert]
       16 CALL                             R2 2 0
       17 GETTABLEKS                       R1 R1 K6 ["Config"]
       19 GETTABLEKS                       R2 R0 K7 ["tools"]
       21 GETTABLEKS                       R2 R2 K8 ["executeLuau"]
       23 GETTABLEKS                       R2 R2 K9 ["loadCode"]
       25 GETTABLEKS                       R3 R1 K10 ["Source"]
       27 CALL                             R2 1 2
       28 MOVE                             R4 R3
       29 CALL                             R4 0 1
       30 RETURN                           R4 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R0 ; [+16]
        3 GETUPVAL                         R3 0
        4 LOADK                            R5 K0 ["AssistantEval"]
        5 LOADN                            R6 10
        6 NAMECALL                         R3 R3 K1 ["WaitForChild"]
        8 CALL                             R3 3 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+5]
       11 MOVE                             R5 R3
       12 LOADK                            R6 K2 ["Failed to find AssistantEval in ReplicatedStorage"]
       13 GETIMPORT                        R4 K4 [assert]
       15 CALL                             R4 2 0
       16 GETTABLEKS                       R3 R3 K5 ["RunTimeEvals"]
       18 JUMPIF                           R3 ; [+15]
       19 GETUPVAL                         R3 0
       20 LOADK                            R5 K0 ["AssistantEval"]
       21 LOADN                            R6 10
       22 NAMECALL                         R3 R3 K1 ["WaitForChild"]
       24 CALL                             R3 3 1
       25 FASTCALL2K                       ASSERT R3 K2 ; [+5]
       27 MOVE                             R5 R3
       28 LOADK                            R6 K2 ["Failed to find AssistantEval in ReplicatedStorage"]
       29 GETIMPORT                        R4 K4 [assert]
       31 CALL                             R4 2 0
       32 GETTABLEKS                       R3 R3 K6 ["Evals"]
       34 NAMECALL                         R4 R3 K7 ["GetChildren"]
       36 CALL                             R4 1 3
       37 FORGPREP                         R4
       38 LOADK                            R11 K8 ["ModuleScript"]
       39 NAMECALL                         R9 R8 K9 ["IsA"]
       41 CALL                             R9 2 1
       42 JUMPIFNOT                        R9 ; [+15]
       43 JUMPIFNOT                        R1 ; [+7]
       44 GETIMPORT                        R9 K12 [table.find]
       46 MOVE                             R10 R1
       47 GETTABLEKS                       R11 R8 K13 ["Name"]
       49 CALL                             R9 2 1
       50 JUMPIFNOT                        R9 ; [+7]
       51 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       53 MOVE                             R10 R2
       54 MOVE                             R11 R8
       55 GETIMPORT                        R9 K15 [table.insert]
       57 CALL                             R9 2 0
       58 FORGLOOP                         R4 2 ; [-21]
       60 GETIMPORT                        R4 K17 [table.sort]
       62 MOVE                             R5 R2
       63 DUPCLOSURE                       R6 K18 [PROTO_4]
       64 CALL                             R4 2 0
       65 RETURN                           R2 1

PROTO_6:
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

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["name"]
        2 GETTABLEKS                       R4 R1 K0 ["name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_8:
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
       41 DUPCLOSURE                       R4 K17 [PROTO_7]
       42 CALL                             R2 2 0
       43 RETURN                           R1 1

PROTO_9:
        0 DUPCLOSURE                       R1 K0 [PROTO_8]
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETTABLEKS                       R1 R0 K0 ["Value"]
        4 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 SETTABLEKS                       R0 R1 K0 ["Value"]
        4 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantEval"]
        2 LOADN                            R3 10
        3 NAMECALL                         R0 R0 K1 ["WaitForChild"]
        5 CALL                             R0 3 1
        6 FASTCALL2K                       ASSERT R0 K2 ; [+5]
        8 MOVE                             R2 R0
        9 LOADK                            R3 K2 ["Failed to find AssistantEval in ReplicatedStorage"]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 2 0
       13 GETTABLEKS                       R0 R0 K5 ["Modules"]
       15 GETUPVAL                         R1 0
       16 LOADK                            R3 K0 ["AssistantEval"]
       17 LOADN                            R4 10
       18 NAMECALL                         R1 R1 K1 ["WaitForChild"]
       20 CALL                             R1 3 1
       21 FASTCALL2K                       ASSERT R1 K2 ; [+5]
       23 MOVE                             R3 R1
       24 LOADK                            R4 K2 ["Failed to find AssistantEval in ReplicatedStorage"]
       25 GETIMPORT                        R2 K4 [assert]
       27 CALL                             R2 2 0
       28 GETTABLEKS                       R1 R1 K6 ["LoadedCode"]
       30 JUMPIFNOT                        R0 ; [+1]
       31 JUMPIF                           R1 ; [+4]
       32 GETIMPORT                        R2 K8 [error]
       34 LOADK                            R3 K9 ["AssistantEval.Modules or AssistantEval.LoadedCode does not exist"]
       35 CALL                             R2 1 0
       36 DUPTABLE                         R2 K12 [{"evalModules", "loadedCode"}]
       37 GETUPVAL                         R3 1
       38 MOVE                             R4 R0
       39 CALL                             R3 1 1
       40 SETTABLEKS                       R3 R2 K10 ["evalModules"]
       42 GETUPVAL                         R3 1
       43 MOVE                             R4 R1
       44 CALL                             R3 1 1
       45 SETTABLEKS                       R3 R2 K11 ["loadedCode"]
       47 RETURN                           R2 1

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AssistantEval"]
        2 LOADN                            R4 10
        3 NAMECALL                         R1 R1 K1 ["WaitForChild"]
        5 CALL                             R1 3 1
        6 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        8 MOVE                             R3 R1
        9 LOADK                            R4 K2 ["Failed to find AssistantEval in ReplicatedStorage"]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 2 0
       13 GETTABLEKS                       R1 R1 K5 ["LoadedCode"]
       15 GETTABLEKS                       R2 R0 K6 ["includeAssets"]
       17 JUMPIFNOT                        R2 ; [+18]
       18 GETTABLEKS                       R2 R0 K6 ["includeAssets"]
       20 LOADNIL                          R3
       21 LOADNIL                          R4
       22 FORGPREP                         R2
       23 LOADK                            R8 K7 ["rbxasset://assistant_eval/"]
       24 MOVE                             R9 R6
       25 CONCAT                           R7 R8 R9
       26 GETUPVAL                         R8 1
       27 MOVE                             R10 R7
       28 NAMECALL                         R8 R8 K8 ["LoadLocalAsset"]
       30 CALL                             R8 2 1
       31 JUMPIFNOT                        R8 ; [+2]
       32 SETTABLEKS                       R1 R8 K9 ["Parent"]
       34 FORGLOOP                         R2 2 ; [-12]
       36 RETURN                           R0 0

PROTO_19:
        0 JUMPIFNOTEQKS                    R0 K0 ["InvokeCallTool"] ; [+18]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["invoke"]
        5 GETUPVAL                         R4 1
        6 LOADK                            R5 K2 ["AssistantEvalCallTool"]
        7 CALL                             R3 2 1
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K3 ["Identity"]
       11 GETTABLEKS                       R6 R6 K4 ["Standalone"]
       13 MOVE                             R7 R1
       14 MOVE                             R8 R2
       15 NAMECALL                         R4 R3 K5 ["InvokeAsync"]
       17 CALL                             R4 4 -1
       18 RETURN                           R4 -1
       19 GETIMPORT                        R3 K7 [error]
       21 LOADK                            R4 K8 ["Unknown event name: %*"]
       22 MOVE                             R6 R0
       23 NAMECALL                         R4 R4 K9 ["format"]
       25 CALL                             R4 2 1
       26 CALL                             R3 1 0
       27 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getAssistantEvalBridge"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 SETTABLEKS                       R1 R0 K1 ["OnInvoke"]
       10 RETURN                           R0 0

PROTO_21:
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
       64 SETTABLEKS                       R5 R4 K16 ["OnInvoke"]
       66 GETUPVAL                         R4 5
       67 GETTABLEKS                       R4 R4 K17 ["installLoadedCode"]
       69 CALL                             R4 0 0
       70 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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
       32 JUMP                             ; [+16]
       33 ADDK                             R7 R7 K8 [1]
       34 NEWCLOSURE                       R15 P0
       35 CAPTURE                          REF R13
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R12
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R0
       40 FASTPCALL                        pcall 1 ; [+2]
       41 GETIMPORT                        R14 K10 [pcall]
       43 CALL                             R14 1 2
       44 JUMPIFNOT                        R14 ; [+3]
       45 JUMPIFEQKNIL                     R15 ; [+2]
       47 SETTABLE                         R15 R4 R12
       48 CLOSEUPVALS                      R13
       49 FORGLOOP                         R8 2 ; [-21]
       51 JUMPIFEQKN                       R7 K11 [0] ; [+11]
       53 GETIMPORT                        R8 K13 [print]
       55 LOADK                            R9 K14 ["waitForMultiPlayersEvalResults, remainingCount"]
       56 MOVE                             R10 R7
       57 CALL                             R8 2 0
       58 GETIMPORT                        R8 K17 [task.wait]
       60 LOADN                            R9 2
       61 CALL                             R8 1 0
       62 JUMPBACK                         ; [-50]
       63 RETURN                           R4 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["clientEvalNums"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K1 ["AssistantEval"]
        6 LOADN                            R4 10
        7 NAMECALL                         R1 R1 K2 ["WaitForChild"]
        9 CALL                             R1 3 1
       10 FASTCALL2K                       ASSERT R1 K3 ; [+5]
       12 MOVE                             R3 R1
       13 LOADK                            R4 K3 ["Failed to find AssistantEval in ReplicatedStorage"]
       14 GETIMPORT                        R2 K5 [assert]
       16 CALL                             R2 2 0
       17 GETTABLEKS                       R1 R1 K6 ["RunTimeEvals"]
       19 LOADK                            R3 K7 ["MultiplayerRunSessionId"]
       20 NAMECALL                         R1 R1 K8 ["FindFirstChild"]
       22 CALL                             R1 2 1
       23 JUMPIFNOT                        R1 ; [+3]
       24 NAMECALL                         R2 R1 K9 ["Destroy"]
       26 CALL                             R2 1 0
       27 GETUPVAL                         R2 2
       28 LOADB                            R4 0
       29 NAMECALL                         R2 R2 K10 ["GenerateGUID"]
       31 CALL                             R2 2 1
       32 GETIMPORT                        R3 K13 [Instance.new]
       34 LOADK                            R4 K14 ["StringValue"]
       35 CALL                             R3 1 1
       36 LOADK                            R4 K7 ["MultiplayerRunSessionId"]
       37 SETTABLEKS                       R4 R3 K15 ["Name"]
       39 SETTABLEKS                       R2 R3 K16 ["Value"]
       41 GETUPVAL                         R4 1
       42 LOADK                            R6 K1 ["AssistantEval"]
       43 LOADN                            R7 10
       44 NAMECALL                         R4 R4 K2 ["WaitForChild"]
       46 CALL                             R4 3 1
       47 FASTCALL2K                       ASSERT R4 K3 ; [+5]
       49 MOVE                             R6 R4
       50 LOADK                            R7 K3 ["Failed to find AssistantEval in ReplicatedStorage"]
       51 GETIMPORT                        R5 K5 [assert]
       53 CALL                             R5 2 0
       54 GETTABLEKS                       R4 R4 K6 ["RunTimeEvals"]
       56 SETTABLEKS                       R4 R3 K17 ["Parent"]
       58 RETURN                           R2 1

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["clientEvalNums"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["AssistantEval"]
        6 LOADN                            R5 10
        7 NAMECALL                         R2 R2 K2 ["WaitForChild"]
        9 CALL                             R2 3 1
       10 FASTCALL2K                       ASSERT R2 K3 ; [+5]
       12 MOVE                             R4 R2
       13 LOADK                            R5 K3 ["Failed to find AssistantEval in ReplicatedStorage"]
       14 GETIMPORT                        R3 K5 [assert]
       16 CALL                             R3 2 0
       17 GETTABLEKS                       R2 R2 K6 ["RunTimeEvals"]
       19 LOADK                            R4 K7 ["MultiplayerRunSessionId"]
       20 NAMECALL                         R2 R2 K8 ["FindFirstChild"]
       22 CALL                             R2 2 1
       23 JUMPIFNOT                        R2 ; [+3]
       24 NAMECALL                         R3 R2 K9 ["Destroy"]
       26 CALL                             R3 1 0
       27 RETURN                           R0 0

PROTO_31:
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

PROTO_32:
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

PROTO_33:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["Name"]
        4 RETURN                           R0 1

PROTO_34:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["Name"]
        4 RETURN                           R0 1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["AssistantEval"]
        6 LOADN                            R5 10
        7 NAMECALL                         R2 R2 K2 ["WaitForChild"]
        9 CALL                             R2 3 1
       10 FASTCALL2K                       ASSERT R2 K3 ; [+5]
       12 MOVE                             R4 R2
       13 LOADK                            R5 K3 ["Failed to find AssistantEval in ReplicatedStorage"]
       14 GETIMPORT                        R3 K5 [assert]
       16 CALL                             R3 2 0
       17 GETTABLEKS                       R2 R2 K6 ["Config"]
       19 GETTABLEKS                       R3 R1 K7 ["tools"]
       21 GETTABLEKS                       R3 R3 K8 ["executeLuau"]
       23 GETTABLEKS                       R3 R3 K9 ["loadCode"]
       25 GETTABLEKS                       R4 R2 K10 ["Source"]
       27 CALL                             R3 1 2
       28 MOVE                             R5 R4
       29 CALL                             R5 0 1
       30 MOVE                             R0 R5
       31 RETURN                           R0 1

PROTO_36:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 LOADB                            R4 1
        3 JUMP                             ; [+1]
        4 LOADB                            R4 0
        5 MOVE                             R5 R2
        6 CALL                             R3 2 1
        7 RETURN                           R3 1

PROTO_37:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 RETURN                           R0 1

PROTO_38:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_39:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_40:
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

PROTO_41:
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

PROTO_42:
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

PROTO_43:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_44:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 CALL                             R3 2 1
        4 RETURN                           R3 1

PROTO_45:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 CALL                             R3 2 -1
        4 RETURN                           R3 -1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_47:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_48:
        0 DUPCLOSURE                       R0 K0 [PROTO_34]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K1 ["invoke"]
        4 GETUPVAL                         R2 1
        5 LOADK                            R3 K2 ["getPlaceFileName"]
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 2
        8 MOVE                             R6 R0
        9 NAMECALL                         R4 R1 K3 ["Connect"]
       11 CALL                             R4 2 -1
       12 NAMECALL                         R2 R2 K4 ["Add"]
       14 CALL                             R2 -1 0
       15 DUPCLOSURE                       R0 K5 [PROTO_35]
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K1 ["invoke"]
       21 GETUPVAL                         R2 1
       22 LOADK                            R3 K6 ["loadConfig"]
       23 CALL                             R1 2 1
       24 GETUPVAL                         R2 2
       25 MOVE                             R6 R0
       26 NAMECALL                         R4 R1 K3 ["Connect"]
       28 CALL                             R4 2 -1
       29 NAMECALL                         R2 R2 K4 ["Add"]
       31 CALL                             R2 -1 0
       32 DUPCLOSURE                       R0 K7 [PROTO_36]
       33 CAPTURE                          UPVAL U5
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R1 R1 K1 ["invoke"]
       37 GETUPVAL                         R2 1
       38 LOADK                            R3 K8 ["loadAllEvalScripts"]
       39 CALL                             R1 2 1
       40 GETUPVAL                         R2 2
       41 MOVE                             R6 R0
       42 NAMECALL                         R4 R1 K3 ["Connect"]
       44 CALL                             R4 2 -1
       45 NAMECALL                         R2 R2 K4 ["Add"]
       47 CALL                             R2 -1 0
       48 DUPCLOSURE                       R0 K9 [PROTO_37]
       49 CAPTURE                          UPVAL U6
       50 GETUPVAL                         R1 0
       51 GETTABLEKS                       R1 R1 K1 ["invoke"]
       53 GETUPVAL                         R2 1
       54 LOADK                            R3 K10 ["getCommonEvalModules"]
       55 CALL                             R1 2 1
       56 GETUPVAL                         R2 2
       57 MOVE                             R6 R0
       58 NAMECALL                         R4 R1 K3 ["Connect"]
       60 CALL                             R4 2 -1
       61 NAMECALL                         R2 R2 K4 ["Add"]
       63 CALL                             R2 -1 0
       64 DUPCLOSURE                       R0 K11 [PROTO_38]
       65 CAPTURE                          UPVAL U7
       66 GETUPVAL                         R1 0
       67 GETTABLEKS                       R1 R1 K1 ["invoke"]
       69 GETUPVAL                         R2 1
       70 LOADK                            R3 K12 ["putEvalModules"]
       71 CALL                             R1 2 1
       72 GETUPVAL                         R2 2
       73 MOVE                             R6 R0
       74 NAMECALL                         R4 R1 K3 ["Connect"]
       76 CALL                             R4 2 -1
       77 NAMECALL                         R2 R2 K4 ["Add"]
       79 CALL                             R2 -1 0
       80 DUPCLOSURE                       R0 K13 [PROTO_39]
       81 CAPTURE                          UPVAL U8
       82 GETUPVAL                         R1 0
       83 GETTABLEKS                       R1 R1 K1 ["invoke"]
       85 GETUPVAL                         R2 1
       86 LOADK                            R3 K14 ["putEvalModuleScript"]
       87 CALL                             R1 2 1
       88 GETUPVAL                         R2 2
       89 MOVE                             R6 R0
       90 NAMECALL                         R4 R1 K3 ["Connect"]
       92 CALL                             R4 2 -1
       93 NAMECALL                         R2 R2 K4 ["Add"]
       95 CALL                             R2 -1 0
       96 DUPCLOSURE                       R0 K15 [PROTO_40]
       97 CAPTURE                          UPVAL U3
       98 GETUPVAL                         R1 0
       99 GETTABLEKS                       R1 R1 K1 ["invoke"]
      101 GETUPVAL                         R2 1
      102 LOADK                            R3 K16 ["invokeReference"]
      103 CALL                             R1 2 1
      104 GETUPVAL                         R2 2
      105 MOVE                             R6 R0
      106 NAMECALL                         R4 R1 K3 ["Connect"]
      108 CALL                             R4 2 -1
      109 NAMECALL                         R2 R2 K4 ["Add"]
      111 CALL                             R2 -1 0
      112 DUPCLOSURE                       R0 K17 [PROTO_41]
      113 CAPTURE                          UPVAL U3
      114 GETUPVAL                         R1 0
      115 GETTABLEKS                       R1 R1 K1 ["invoke"]
      117 GETUPVAL                         R2 1
      118 LOADK                            R3 K18 ["runEvalEdit"]
      119 CALL                             R1 2 1
      120 GETUPVAL                         R2 2
      121 MOVE                             R6 R0
      122 NAMECALL                         R4 R1 K3 ["Connect"]
      124 CALL                             R4 2 -1
      125 NAMECALL                         R2 R2 K4 ["Add"]
      127 CALL                             R2 -1 0
      128 DUPCLOSURE                       R0 K19 [PROTO_42]
      129 CAPTURE                          UPVAL U3
      130 GETUPVAL                         R1 0
      131 GETTABLEKS                       R1 R1 K1 ["invoke"]
      133 GETUPVAL                         R2 1
      134 LOADK                            R3 K20 ["setupEval"]
      135 CALL                             R1 2 1
      136 GETUPVAL                         R2 2
      137 MOVE                             R6 R0
      138 NAMECALL                         R4 R1 K3 ["Connect"]
      140 CALL                             R4 2 -1
      141 NAMECALL                         R2 R2 K4 ["Add"]
      143 CALL                             R2 -1 0
      144 DUPCLOSURE                       R0 K21 [PROTO_43]
      145 CAPTURE                          UPVAL U9
      146 GETUPVAL                         R1 0
      147 GETTABLEKS                       R1 R1 K1 ["invoke"]
      149 GETUPVAL                         R2 1
      150 LOADK                            R3 K22 ["prepareMultiPlayersEval"]
      151 CALL                             R1 2 1
      152 GETUPVAL                         R2 2
      153 MOVE                             R6 R0
      154 NAMECALL                         R4 R1 K3 ["Connect"]
      156 CALL                             R4 2 -1
      157 NAMECALL                         R2 R2 K4 ["Add"]
      159 CALL                             R2 -1 0
      160 DUPCLOSURE                       R0 K23 [PROTO_44]
      161 CAPTURE                          UPVAL U10
      162 GETUPVAL                         R1 0
      163 GETTABLEKS                       R1 R1 K1 ["invoke"]
      165 GETUPVAL                         R2 1
      166 LOADK                            R3 K24 ["waitForMultiPlayersEvalResults"]
      167 CALL                             R1 2 1
      168 GETUPVAL                         R2 2
      169 MOVE                             R6 R0
      170 NAMECALL                         R4 R1 K3 ["Connect"]
      172 CALL                             R4 2 -1
      173 NAMECALL                         R2 R2 K4 ["Add"]
      175 CALL                             R2 -1 0
      176 DUPCLOSURE                       R0 K25 [PROTO_45]
      177 CAPTURE                          UPVAL U11
      178 GETUPVAL                         R1 0
      179 GETTABLEKS                       R1 R1 K1 ["invoke"]
      181 GETUPVAL                         R2 1
      182 LOADK                            R3 K26 ["clearMultiPlayersEval"]
      183 CALL                             R1 2 1
      184 GETUPVAL                         R2 2
      185 MOVE                             R6 R0
      186 NAMECALL                         R4 R1 K3 ["Connect"]
      188 CALL                             R4 2 -1
      189 NAMECALL                         R2 R2 K4 ["Add"]
      191 CALL                             R2 -1 0
      192 DUPCLOSURE                       R0 K27 [PROTO_46]
      193 CAPTURE                          UPVAL U12
      194 GETUPVAL                         R1 0
      195 GETTABLEKS                       R1 R1 K1 ["invoke"]
      197 GETUPVAL                         R2 1
      198 LOADK                            R3 K28 ["detachEvalFolder"]
      199 CALL                             R1 2 1
      200 GETUPVAL                         R2 2
      201 MOVE                             R6 R0
      202 NAMECALL                         R4 R1 K3 ["Connect"]
      204 CALL                             R4 2 -1
      205 NAMECALL                         R2 R2 K4 ["Add"]
      207 CALL                             R2 -1 0
      208 DUPCLOSURE                       R0 K29 [PROTO_47]
      209 CAPTURE                          UPVAL U13
      210 GETUPVAL                         R1 0
      211 GETTABLEKS                       R1 R1 K1 ["invoke"]
      213 GETUPVAL                         R2 1
      214 LOADK                            R3 K30 ["reattachEvalFolder"]
      215 CALL                             R1 2 1
      216 GETUPVAL                         R2 2
      217 MOVE                             R6 R0
      218 NAMECALL                         R4 R1 K3 ["Connect"]
      220 CALL                             R4 2 -1
      221 NAMECALL                         R2 R2 K4 ["Add"]
      223 CALL                             R2 -1 0
      224 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Identity"]
        4 GETTABLEKS                       R2 R2 K1 ["Standalone"]
        6 NAMECALL                         R0 R0 K2 ["Fire"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["event"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["EditDataModelStarted"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["event"]
        9 GETUPVAL                         R2 1
       10 LOADK                            R3 K2 ["CheckEditDataModelStarted"]
       11 CALL                             R1 2 1
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U2
       15 GETUPVAL                         R3 3
       16 MOVE                             R7 R2
       17 NAMECALL                         R5 R1 K3 ["Connect"]
       19 CALL                             R5 2 -1
       20 NAMECALL                         R3 R3 K4 ["Add"]
       22 CALL                             R3 -1 0
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K5 ["Identity"]
       26 GETTABLEKS                       R5 R5 K6 ["Standalone"]
       28 NAMECALL                         R3 R0 K7 ["Fire"]
       30 CALL                             R3 2 0
       31 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["installLoadedCode"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["event"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["EditDataModelEnded"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K2 ["Identity"]
        9 GETTABLEKS                       R3 R3 K3 ["Standalone"]
       11 NAMECALL                         R1 R0 K4 ["Fire"]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 3
       15 NAMECALL                         R1 R1 K5 ["Destroy"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_53:
        0 SETUPVAL                         R0 0
        1 SETUPVAL                         R1 1
        2 GETUPVAL                         R2 3
        3 GETTABLEKS                       R2 R2 K0 ["new"]
        5 CALL                             R2 0 1
        6 SETUPVAL                         R2 2
        7 DUPCLOSURE                       R3 K1 [PROTO_51]
        8 CAPTURE                          UPVAL U4
        9 FASTPCALL                        pcall 1 ; [+2]
       10 GETIMPORT                        R2 K3 [pcall]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 5
       14 CALL                             R2 0 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K4 ["Unloading"]
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U7
       22 CAPTURE                          UPVAL U2
       23 NAMECALL                         R2 R2 K5 ["Connect"]
       25 CALL                             R2 2 0
       26 GETUPVAL                         R2 8
       27 CALL                             R2 0 0
       28 RETURN                           R0 0

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
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["InsertService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["ReplicatedStorage"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETTABLEKS                       R4 R0 K10 ["Packages"]
       27 GETIMPORT                        R5 K12 [require]
       29 GETTABLEKS                       R6 R4 K13 ["AssistantUI"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K12 [require]
       34 GETTABLEKS                       R7 R4 K14 ["Bin"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K12 [require]
       39 GETTABLEKS                       R8 R4 K15 ["DMNetworking"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K12 [require]
       44 GETTABLEKS                       R9 R0 K16 ["Src"]
       46 GETTABLEKS                       R9 R9 K17 ["EvalDriver"]
       48 GETTABLEKS                       R9 R9 K18 ["EvalUtils"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K12 [require]
       53 GETTABLEKS                       R10 R0 K16 ["Src"]
       55 GETTABLEKS                       R10 R10 K17 ["EvalDriver"]
       57 GETTABLEKS                       R10 R10 K19 ["Types"]
       59 CALL                             R9 1 1
       60 GETTABLEKS                       R10 R5 K20 ["Guest"]
       62 GETTABLEKS                       R10 R10 K21 ["Environment"]
       64 GETTABLEKS                       R11 R7 K22 ["Remote"]
       66 LOADNIL                          R12
       67 LOADNIL                          R13
       68 LOADNIL                          R14
       69 NEWCLOSURE                       R15 P0
       70 CAPTURE                          VAL R11
       71 CAPTURE                          REF R13
       72 CAPTURE                          REF R14
       73 LOADNIL                          R16
       74 LOADNIL                          R17
       75 DUPCLOSURE                       R18 K23 [PROTO_1]
       76 DUPCLOSURE                       R19 K24 [PROTO_2]
       77 CAPTURE                          VAL R3
       78 DUPCLOSURE                       R20 K25 [PROTO_3]
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R3
       81 DUPCLOSURE                       R21 K26 [PROTO_5]
       82 CAPTURE                          VAL R3
       83 DUPCLOSURE                       R22 K27 [PROTO_6]
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R21
       86 DUPCLOSURE                       R23 K28 [PROTO_9]
       87 CAPTURE                          VAL R23
       88 DUPCLOSURE                       R24 K29 [PROTO_10]
       89 CAPTURE                          VAL R24
       90 DUPCLOSURE                       R25 K30 [PROTO_11]
       91 CAPTURE                          VAL R18
       92 CAPTURE                          VAL R3
       93 DUPCLOSURE                       R26 K31 [PROTO_12]
       94 CAPTURE                          VAL R25
       95 DUPCLOSURE                       R27 K32 [PROTO_13]
       96 CAPTURE                          VAL R25
       97 DUPCLOSURE                       R28 K33 [PROTO_14]
       98 CAPTURE                          VAL R25
       99 CAPTURE                          VAL R1
      100 DUPCLOSURE                       R29 K34 [PROTO_15]
      101 CAPTURE                          VAL R25
      102 CAPTURE                          VAL R1
      103 DUPCLOSURE                       R30 K35 [PROTO_16]
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R23
      106 DUPCLOSURE                       R31 K36 [PROTO_17]
      107 CAPTURE                          VAL R18
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R24
      110 DUPCLOSURE                       R32 K37 [PROTO_18]
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R2
      113 NEWCLOSURE                       R33 P16
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R11
      116 CAPTURE                          REF R13
      117 CAPTURE                          VAL R7
      118 NEWCLOSURE                       R34 P17
      119 CAPTURE                          VAL R18
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R25
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R32
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R11
      126 CAPTURE                          REF R13
      127 CAPTURE                          VAL R7
      128 DUPCLOSURE                       R35 K38 [PROTO_22]
      129 CAPTURE                          VAL R10
      130 DUPCLOSURE                       R36 K39 [PROTO_23]
      131 CAPTURE                          VAL R10
      132 DUPCLOSURE                       R37 K40 [PROTO_24]
      133 CAPTURE                          VAL R10
      134 DUPCLOSURE                       R38 K41 [PROTO_25]
      135 DUPCLOSURE                       R39 K42 [PROTO_26]
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R38
      138 DUPCLOSURE                       R40 K43 [PROTO_28]
      139 CAPTURE                          VAL R38
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R1
      142 DUPCLOSURE                       R41 K44 [PROTO_29]
      143 CAPTURE                          VAL R39
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R1
      146 DUPCLOSURE                       R42 K45 [PROTO_30]
      147 CAPTURE                          VAL R39
      148 CAPTURE                          VAL R3
      149 NEWCLOSURE                       R43 P26
      150 CAPTURE                          REF R16
      151 CAPTURE                          VAL R8
      152 CAPTURE                          REF R17
      153 NEWCLOSURE                       R44 P27
      154 CAPTURE                          REF R16
      155 CAPTURE                          REF R17
      156 DUPCLOSURE                       R45 K46 [PROTO_33]
      157 NEWTABLE                         R46 0 0
      159 NEWCLOSURE                       R47 P29
      160 CAPTURE                          VAL R11
      161 CAPTURE                          REF R13
      162 CAPTURE                          REF R14
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R22
      166 CAPTURE                          VAL R30
      167 CAPTURE                          VAL R31
      168 CAPTURE                          VAL R34
      169 CAPTURE                          VAL R41
      170 CAPTURE                          VAL R40
      171 CAPTURE                          VAL R42
      172 CAPTURE                          VAL R43
      173 CAPTURE                          VAL R44
      174 NEWCLOSURE                       R48 P30
      175 CAPTURE                          VAL R11
      176 CAPTURE                          REF R13
      177 CAPTURE                          VAL R7
      178 CAPTURE                          REF R14
      179 NEWCLOSURE                       R49 P31
      180 CAPTURE                          REF R12
      181 CAPTURE                          REF R13
      182 CAPTURE                          REF R14
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R8
      185 CAPTURE                          VAL R47
      186 CAPTURE                          VAL R11
      187 CAPTURE                          VAL R7
      188 CAPTURE                          VAL R48
      189 NEWCLOSURE                       R50 P32
      190 CAPTURE                          REF R46
      191 DUPTABLE                         R51 K49 [{"init", "close"}]
      192 SETTABLEKS                       R49 R51 K47 ["init"]
      194 SETTABLEKS                       R50 R51 K48 ["close"]
      196 CLOSEUPVALS                      R12
      197 RETURN                           R51 1
