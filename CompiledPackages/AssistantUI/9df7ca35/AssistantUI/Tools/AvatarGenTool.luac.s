PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["canceled"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["toolUseId"]
        2 DUPTABLE                         R2 K3 [{["canceled"] = False}]
        3 GETUPVAL                         R3 0
        4 SETTABLE                         R2 R3 R1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K4 ["tools"]
        8 GETTABLEKS                       R4 R4 K5 ["avatarGen"]
       10 GETTABLEKS                       R4 R4 K6 ["generateAvatarAsync"]
       12 DUPTABLE                         R5 K14 [{"textPrompt", "avatarName", "pipelineName", "dynamicHead", "r15Plus", "requestSource", "isCanceled"}]
       13 GETTABLEKS                       R6 R0 K7 ["textPrompt"]
       15 SETTABLEKS                       R6 R5 K7 ["textPrompt"]
       17 GETTABLEKS                       R6 R0 K8 ["avatarName"]
       19 SETTABLEKS                       R6 R5 K8 ["avatarName"]
       21 GETTABLEKS                       R6 R0 K9 ["pipelineName"]
       23 SETTABLEKS                       R6 R5 K9 ["pipelineName"]
       25 GETTABLEKS                       R6 R0 K10 ["dynamicHead"]
       27 SETTABLEKS                       R6 R5 K10 ["dynamicHead"]
       29 GETTABLEKS                       R6 R0 K11 ["r15Plus"]
       31 SETTABLEKS                       R6 R5 K11 ["r15Plus"]
       33 GETTABLEKS                       R6 R0 K12 ["requestSource"]
       35 SETTABLEKS                       R6 R5 K12 ["requestSource"]
       37 NEWCLOSURE                       R6 P0
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R6 R5 K13 ["isCanceled"]
       41 FASTPCALL                        pcall 2 ; [+2]
       42 GETIMPORT                        R3 K16 [pcall]
       44 CALL                             R3 2 2
       45 GETUPVAL                         R5 0
       46 LOADNIL                          R6
       47 SETTABLE                         R6 R5 R1
       48 JUMPIF                           R3 ; [+5]
       49 GETIMPORT                        R5 K18 [error]
       51 MOVE                             R6 R4
       52 LOADN                            R7 0
       53 CALL                             R5 2 0
       54 GETUPVAL                         R5 1
       55 GETTABLEKS                       R5 R5 K19 ["selection"]
       57 GETTABLEKS                       R5 R5 K20 ["set"]
       59 NEWTABLE                         R6 0 1
       61 MOVE                             R7 R4
       62 SETLIST                          R6 R7 1 [1]
       64 CALL                             R5 1 0
       65 DUPTABLE                         R5 K22 [{"avatarName", "avatarPath"}]
       66 GETTABLEKS                       R6 R4 K23 ["Name"]
       68 SETTABLEKS                       R6 R5 K8 ["avatarName"]
       70 NAMECALL                         R6 R4 K24 ["GetFullName"]
       72 CALL                             R6 1 1
       73 SETTABLEKS                       R6 R5 K21 ["avatarPath"]
       75 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["toolUseId"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFEQKNIL                     R1 ; [+4]
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K1 ["canceled"]
        9 LOADNIL                          R2
       10 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R1 K0 ["toolUseId"]
        3 GETTABLE                         R3 R4 R5
        4 JUMPIFEQKNIL                     R3 ; [+4]
        6 LOADB                            R4 1
        7 SETTABLEKS                       R4 R3 K1 ["canceled"]
        9 LOADNIL                          R2
       10 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"toolUseId"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["toolUseId"]
        6 NAMECALL                         R0 R0 K2 ["InvokeAsync"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 FASTPCALL                        pcall 1 ; [+2]
        7 GETIMPORT                        R0 K1 [pcall]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["InvokeAsync"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["runWithProgressLoop"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["sendProgress"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 GETUPVAL                         R3 4
       10 CALL                             R0 3 -1
       11 RETURN                           R0 -1

PROTO_10:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["toolId"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R3
        5 LOADB                            R5 0
        6 FASTCALL1                        TYPEOF R3 ; [+3]
        7 MOVE                             R7 R3
        8 GETIMPORT                        R6 K2 [typeof]
       10 CALL                             R6 1 1
       11 JUMPIFNOTEQKS                    R6 K3 ["string"] ; [+5]
       13 JUMPIFNOTEQKS                    R3 K4 [""] ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       19 LOADK                            R6 K5 ["AvatarGenTool requires meta.toolId"]
       20 GETIMPORT                        R4 K7 [assert]
       22 CALL                             R4 2 0
       23 GETTABLEKS                       R6 R0 K8 ["textPrompt"]
       25 FASTCALL1                        TYPEOF R6 ; [+2]
       26 GETIMPORT                        R5 K2 [typeof]
       28 CALL                             R5 1 1
       29 JUMPIFNOTEQKS                    R5 K3 ["string"] ; [+8]
       31 GETIMPORT                        R4 K10 [string.match]
       33 GETTABLEKS                       R5 R0 K8 ["textPrompt"]
       35 LOADK                            R6 K11 ["^%s*(.-)%s*$"]
       36 CALL                             R4 2 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R4
       39 JUMPIFEQKNIL                     R4 ; [+3]
       41 JUMPIFNOTEQKS                    R4 K4 [""] ; [+15]
       43 GETUPVAL                         R5 0
       44 CALL                             R5 0 1
       45 LOADK                            R7 K12 ["textPrompt must be a non-empty string."]
       46 NAMECALL                         R5 R5 K13 ["addText"]
       48 CALL                             R5 2 1
       49 LOADB                            R7 1
       50 NAMECALL                         R5 R5 K14 ["setError"]
       52 CALL                             R5 2 1
       53 NAMECALL                         R5 R5 K15 ["build"]
       55 CALL                             R5 1 -1
       56 RETURN                           R5 -1
       57 GETUPVAL                         R6 1
       58 GETTABLEKS                       R6 R6 K16 ["FFlagAssistantAvatarGenCompactName"]
       60 JUMPIFNOT                        R6 ; [+15]
       61 GETTABLEKS                       R7 R0 K17 ["avatarName"]
       63 FASTCALL1                        TYPEOF R7 ; [+2]
       64 GETIMPORT                        R6 K2 [typeof]
       66 CALL                             R6 1 1
       67 JUMPIFNOTEQKS                    R6 K3 ["string"] ; [+8]
       69 GETIMPORT                        R5 K10 [string.match]
       71 GETTABLEKS                       R6 R0 K17 ["avatarName"]
       73 LOADK                            R7 K11 ["^%s*(.-)%s*$"]
       74 CALL                             R5 2 1
       75 JUMP                             ; [+1]
       76 LOADNIL                          R5
       77 LOADNIL                          R6
       78 GETTABLEKS                       R7 R0 K18 ["pipelineName"]
       80 GETUPVAL                         R8 2
       81 GETTABLEKS                       R8 R8 K19 ["PipelineName"]
       83 GETTABLEKS                       R8 R8 K20 ["Npc"]
       85 JUMPIFNOTEQ                      R7 R8 ; [+7]
       87 GETUPVAL                         R7 2
       88 GETTABLEKS                       R7 R7 K19 ["PipelineName"]
       90 GETTABLEKS                       R6 R7 K20 ["Npc"]
       92 JUMP                             ; [+43]
       93 GETTABLEKS                       R7 R0 K18 ["pipelineName"]
       95 GETUPVAL                         R8 2
       96 GETTABLEKS                       R8 R8 K19 ["PipelineName"]
       98 GETTABLEKS                       R8 R8 K21 ["Modesty"]
      100 JUMPIFNOTEQ                      R7 R8 ; [+7]
      102 GETUPVAL                         R7 2
      103 GETTABLEKS                       R7 R7 K19 ["PipelineName"]
      105 GETTABLEKS                       R6 R7 K21 ["Modesty"]
      107 JUMP                             ; [+28]
      108 GETTABLEKS                       R7 R0 K18 ["pipelineName"]
      110 JUMPIFEQKNIL                     R7 ; [+25]
      112 GETUPVAL                         R7 0
      113 CALL                             R7 0 1
      114 LOADK                            R9 K22 ["pipelineName must be one of: %*."]
      115 GETIMPORT                        R11 K25 [table.concat]
      117 GETUPVAL                         R12 2
      118 GETTABLEKS                       R12 R12 K26 ["PipelineNameValues"]
      120 LOADK                            R13 K27 [", "]
      121 CALL                             R11 2 1
      122 NAMECALL                         R9 R9 K28 ["format"]
      124 CALL                             R9 2 1
      125 NAMECALL                         R7 R7 K13 ["addText"]
      127 CALL                             R7 2 1
      128 LOADB                            R9 1
      129 NAMECALL                         R7 R7 K14 ["setError"]
      131 CALL                             R7 2 1
      132 NAMECALL                         R7 R7 K15 ["build"]
      134 CALL                             R7 1 -1
      135 RETURN                           R7 -1
      136 DUPTABLE                         R7 K33 [{"toolUseId", "textPrompt", "avatarName", "pipelineName", "dynamicHead", "r15Plus", "requestSource"}]
      137 SETTABLEKS                       R3 R7 K29 ["toolUseId"]
      139 SETTABLEKS                       R4 R7 K8 ["textPrompt"]
      141 JUMPIFEQKS                       R5 K4 [""] ; [+3]
      143 MOVE                             R8 R5
      144 JUMP                             ; [+1]
      145 LOADNIL                          R8
      146 SETTABLEKS                       R8 R7 K17 ["avatarName"]
      148 SETTABLEKS                       R6 R7 K18 ["pipelineName"]
      150 GETUPVAL                         R9 1
      151 GETTABLEKS                       R9 R9 K34 ["FFlagAvatarPreviewerAvatarCreationDynamicHeadOption"]
      153 JUMPIFNOT                        R9 ; [+3]
      154 GETTABLEKS                       R8 R0 K30 ["dynamicHead"]
      156 JUMP                             ; [+1]
      157 LOADNIL                          R8
      158 SETTABLEKS                       R8 R7 K30 ["dynamicHead"]
      160 GETUPVAL                         R9 1
      161 GETTABLEKS                       R9 R9 K35 ["FFlagAvatarPreviewerAvatarCreationR15PlusOption"]
      163 JUMPIFNOT                        R9 ; [+3]
      164 GETTABLEKS                       R8 R0 K31 ["r15Plus"]
      166 JUMP                             ; [+1]
      167 LOADNIL                          R8
      168 SETTABLEKS                       R8 R7 K31 ["r15Plus"]
      170 GETUPVAL                         R9 1
      171 GETTABLEKS                       R9 R9 K36 ["FFlagAssistantAvatarGenUsageTelemetry"]
      173 JUMPIFNOT                        R9 ; [+8]
      174 JUMPIFNOT                        R1 ; [+5]
      175 GETTABLEKS                       R9 R1 K37 ["isThirdPartyRequest"]
      177 JUMPIFNOT                        R9 ; [+2]
      178 LOADK                            R8 K38 ["MCP"]
      179 JUMP                             ; [+3]
      180 LOADK                            R8 K39 ["Assistant"]
      181 JUMP                             ; [+1]
      182 LOADNIL                          R8
      183 SETTABLEKS                       R8 R7 K32 ["requestSource"]
      185 GETUPVAL                         R8 3
      186 GETTABLEKS                       R8 R8 K40 ["resolveTargetAsync"]
      188 GETUPVAL                         R9 4
      189 CALL                             R8 1 1
      190 LOADB                            R9 0
      191 JUMPIFNOT                        R2 ; [+20]
      192 GETTABLEKS                       R10 R2 K41 ["signal"]
      194 JUMPIFNOT                        R10 ; [+17]
      195 GETTABLEKS                       R10 R2 K41 ["signal"]
      197 GETTABLEKS                       R10 R10 K42 ["abortSignal"]
      199 JUMPIFNOT                        R10 ; [+12]
      200 GETTABLEKS                       R10 R2 K41 ["signal"]
      202 GETTABLEKS                       R10 R10 K42 ["abortSignal"]
      204 NEWCLOSURE                       R12 P0
      205 CAPTURE                          REF R9
      206 CAPTURE                          UPVAL U5
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R3
      209 NAMECALL                         R10 R10 K43 ["Once"]
      211 CALL                             R10 2 0
      212 NEWCLOSURE                       R11 P1
      213 CAPTURE                          UPVAL U6
      214 CAPTURE                          VAL R2
      215 CAPTURE                          UPVAL U7
      216 CAPTURE                          VAL R8
      217 CAPTURE                          VAL R7
      218 FASTPCALL                        pcall 1 ; [+2]
      219 GETIMPORT                        R10 K45 [pcall]
      221 CALL                             R10 1 2
      222 JUMPIF                           R10 ; [+25]
      223 JUMPIF                           R9 ; [+5]
      224 GETIMPORT                        R12 K47 [error]
      226 MOVE                             R13 R11
      227 LOADN                            R14 0
      228 CALL                             R12 2 0
      229 GETUPVAL                         R12 0
      230 CALL                             R12 0 1
      231 LOADK                            R14 K48 ["Avatar generation canceled before it finished."]
      232 NAMECALL                         R12 R12 K13 ["addText"]
      234 CALL                             R12 2 1
      235 DUPTABLE                         R14 K51 [{["canceled"] = True}]
      236 NAMECALL                         R12 R12 K52 ["setStructuredContent"]
      238 CALL                             R12 2 1
      239 LOADB                            R14 1
      240 NAMECALL                         R12 R12 K14 ["setError"]
      242 CALL                             R12 2 1
      243 NAMECALL                         R12 R12 K15 ["build"]
      245 CALL                             R12 1 -1
      246 CLOSEUPVALS                      R9
      247 RETURN                           R12 -1
      248 GETUPVAL                         R12 0
      249 CALL                             R12 0 1
      250 LOADK                            R14 K53 ["Generated avatar \"%*\" at %*."]
      251 GETTABLEKS                       R16 R11 K17 ["avatarName"]
      253 GETTABLEKS                       R17 R11 K54 ["avatarPath"]
      255 NAMECALL                         R14 R14 K28 ["format"]
      257 CALL                             R14 3 1
      258 NAMECALL                         R12 R12 K13 ["addText"]
      260 CALL                             R12 2 1
      261 DUPTABLE                         R14 K55 [{"avatarPath"}]
      262 GETTABLEKS                       R15 R11 K54 ["avatarPath"]
      264 SETTABLEKS                       R15 R14 K54 ["avatarPath"]
      266 NAMECALL                         R12 R12 K52 ["setStructuredContent"]
      268 CALL                             R12 2 1
      269 NAMECALL                         R12 R12 K15 ["build"]
      271 CALL                             R12 1 -1
      272 CLOSEUPVALS                      R9
      273 RETURN                           R12 -1

PROTO_11:
        0 DUPTABLE                         R1 K3 [{[1], ["async"] = True}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["textPrompt"]
        4 DUPTABLE                         R2 K6 [{"name", "arguments"}]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K7 ["AvatarGen"]
        8 SETTABLEKS                       R3 R2 K4 ["name"]
       10 SETTABLEKS                       R1 R2 K5 ["arguments"]
       12 RETURN                           R2 1

PROTO_12:
        0 DUPTABLE                         R1 K3 [{"formId", "fields", "validation"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["formId"]
        4 SETTABLEKS                       R2 R1 K0 ["formId"]
        6 NEWTABLE                         R2 0 1
        8 DUPTABLE                         R3 K7 [{"name", "inputType", "initialValue"}]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K8 ["TextPrompt"]
       12 SETTABLEKS                       R4 R3 K4 ["name"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K9 ["String"]
       17 SETTABLEKS                       R4 R3 K5 ["inputType"]
       19 GETUPVAL                         R4 3
       20 SETTABLEKS                       R4 R3 K6 ["initialValue"]
       22 SETLIST                          R2 R3 1 [1]
       24 SETTABLEKS                       R2 R1 K1 ["fields"]
       26 GETUPVAL                         R2 4
       27 DUPTABLE                         R3 K12 [{"kind", "field"}]
       28 GETUPVAL                         R4 5
       29 GETTABLEKS                       R4 R4 K13 ["NonEmpty"]
       31 SETTABLEKS                       R4 R3 K10 ["kind"]
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K8 ["TextPrompt"]
       36 SETTABLEKS                       R4 R3 K11 ["field"]
       38 CALL                             R2 1 1
       39 SETTABLEKS                       R2 R1 K2 ["validation"]
       41 DUPTABLE                         R2 K15 [{"name", "arguments"}]
       42 GETUPVAL                         R3 6
       43 GETTABLEKS                       R3 R3 K16 ["AskInput"]
       45 SETTABLEKS                       R3 R2 K4 ["name"]
       47 SETTABLEKS                       R1 R2 K14 ["arguments"]
       49 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["readAskInputValues"]
        3 LENGTH                           R3 R0
        4 GETTABLE                         R2 R0 R3
        5 CALL                             R1 1 1
        6 DUPTABLE                         R2 K4 [{["textPrompt"], ["async"] = True}]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K5 ["TextPrompt"]
       10 GETTABLE                         R3 R1 R4
       11 SETTABLEKS                       R3 R2 K1 ["textPrompt"]
       13 DUPTABLE                         R3 K8 [{"name", "arguments"}]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K9 ["AvatarGen"]
       17 SETTABLEKS                       R4 R3 K6 ["name"]
       19 SETTABLEKS                       R2 R3 K7 ["arguments"]
       21 RETURN                           R3 1

PROTO_14:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 GETIMPORT                        R2 K2 [string.find]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K3 ["%S"]
        7 CALL                             R2 2 1
        8 JUMPIFEQKNIL                     R2 ; [+7]
       10 NEWTABLE                         R2 0 1
       12 MOVE                             R3 R1
       13 SETLIST                          R2 R3 1 [1]
       15 RETURN                           R2 1
       16 NEWCLOSURE                       R2 P1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U0
       24 DUPCLOSURE                       R3 K4 [PROTO_13]
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U0
       28 NEWTABLE                         R4 0 2
       30 MOVE                             R5 R2
       31 MOVE                             R6 R3
       32 SETLIST                          R4 R5 2 [1]
       34 RETURN                           R4 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["AvatarGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_16:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 NEWTABLE                         R4 0 0
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R4
       10 CAPTURE                          VAL R1
       11 NEWCLOSURE                       R6 P1
       12 CAPTURE                          VAL R4
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K3 ["invoke"]
       16 MOVE                             R8 R2
       17 LOADK                            R9 K4 ["AvatarGenTool.generateAvatar"]
       18 CALL                             R7 2 1
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K3 ["invoke"]
       22 MOVE                             R9 R2
       23 LOADK                            R10 K5 ["AvatarGenTool.cancelGeneration"]
       24 CALL                             R8 2 1
       25 GETUPVAL                         R9 1
       26 GETTABLEKS                       R9 R9 K6 ["new"]
       28 CALL                             R9 0 1
       29 NAMECALL                         R10 R2 K7 ["GetIdentity"]
       31 CALL                             R10 1 1
       32 GETUPVAL                         R11 2
       33 GETTABLEKS                       R11 R11 K8 ["Identity"]
       35 GETTABLEKS                       R11 R11 K9 ["Standalone"]
       37 JUMPIFEQ                         R10 R11 ; [+17]
       39 NEWCLOSURE                       R14 P2
       40 CAPTURE                          VAL R5
       41 NAMECALL                         R12 R7 K10 ["Connect"]
       43 CALL                             R12 2 -1
       44 NAMECALL                         R10 R9 K11 ["Add"]
       46 CALL                             R10 -1 0
       47 NEWCLOSURE                       R14 P3
       48 CAPTURE                          VAL R4
       49 NAMECALL                         R12 R8 K10 ["Connect"]
       51 CALL                             R12 2 -1
       52 NAMECALL                         R10 R9 K11 ["Add"]
       54 CALL                             R10 -1 0
       55 NEWCLOSURE                       R12 P4
       56 CAPTURE                          VAL R9
       57 NAMECALL                         R10 R3 K12 ["Once"]
       59 CALL                             R10 2 0
       60 NEWCLOSURE                       R10 P5
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          UPVAL U6
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R8
       67 CAPTURE                          UPVAL U7
       68 CAPTURE                          VAL R7
       69 GETUPVAL                         R11 8
       70 GETTABLEKS                       R11 R11 K13 ["define"]
       72 CALL                             R11 0 1
       73 GETUPVAL                         R13 9
       74 GETTABLEKS                       R13 R13 K14 ["AvatarGen"]
       76 NAMECALL                         R11 R11 K15 ["setName"]
       78 CALL                             R11 2 1
       79 LOADK                            R13 K16 ["Generate Avatar"]
       80 NAMECALL                         R11 R11 K17 ["setTitle"]
       82 CALL                             R11 2 1
       83 GETIMPORT                        R13 K20 [table.concat]
       85 NEWTABLE                         R14 0 5
       87 LOADK                            R15 K21 ["Generate a new rigged, animatable R15 avatar (body, head, and clothing) from a text prompt using Roblox's avatar creation pipeline,"]
       88 LOADK                            R16 K22 ["then upload it as a persistent asset and insert it into Workspace in front of the camera."]
       89 LOADK                            R17 K23 ["Use this when the user asks to create, generate, or design a new avatar or character from a description."]
       90 LOADK                            R18 K24 ["To rig a Model that already exists in the place, use %* instead."]
       91 GETUPVAL                         R20 9
       92 GETTABLEKS                       R20 R20 K25 ["AvatarAutoSetup"]
       94 NAMECALL                         R18 R18 K26 ["format"]
       96 CALL                             R18 2 1
       97 LOADK                            R19 K27 ["Long-running (usually several minutes): prefer setting '%*' to true and only call %* when you need the result."]
       98 GETUPVAL                         R21 10
       99 GETTABLEKS                       R21 R21 K28 ["ASYNC_ARG"]
      101 GETUPVAL                         R22 9
      102 GETTABLEKS                       R22 R22 K29 ["JobWait"]
      104 NAMECALL                         R19 R19 K26 ["format"]
      106 CALL                             R19 3 1
      107 SETLIST                          R14 R15 5 [1]
      109 LOADK                            R15 K30 [" "]
      110 CALL                             R13 2 -1
      111 NAMECALL                         R11 R11 K31 ["setDescription"]
      113 CALL                             R11 -1 1
      114 LOADK                            R13 K32 ["textPrompt"]
      115 DUPTABLE                         R14 K37 [{["type"] = "string", ["description"] = "Description of the avatar to generate, e.g. 'a knight in silver armor with a red cape'."}]
      116 NAMECALL                         R11 R11 K38 ["addArgument"]
      118 CALL                             R11 3 1
      119 LOADK                            R13 K39 ["pipelineName"]
      120 DUPTABLE                         R14 K42 [{["type"] = "string", ["enum"], ["description"] = "npc generates the avatar with clothing baked in. modesty generates the body only, with a modesty layer. Omit to use the default."}]
      121 GETUPVAL                         R15 5
      122 GETTABLEKS                       R15 R15 K43 ["PipelineNameValues"]
      124 SETTABLEKS                       R15 R14 K40 ["enum"]
      126 NAMECALL                         R11 R11 K44 ["addOptionalArgument"]
      128 CALL                             R11 3 1
      129 MOVE                             R13 R10
      130 NAMECALL                         R11 R11 K45 ["setHandler"]
      132 CALL                             R11 2 1
      133 DUPTABLE                         R13 K53 [{["title"] = "Generate Avatar", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = True}]
      134 NAMECALL                         R11 R11 K54 ["setAnnotations"]
      136 CALL                             R11 2 1
      137 GETUPVAL                         R12 4
      138 GETTABLEKS                       R12 R12 K55 ["FFlagAssistantAvatarGenCompactName"]
      140 JUMPIFNOT                        R12 ; [+5]
      141 LOADK                            R14 K56 ["avatarName"]
      142 DUPTABLE                         R15 K58 [{["type"] = "string", ["description"] = "Short name for the avatar in Workspace, two to four words, e.g. 'Silver Knight'. Omit to use a numbered default name."}]
      143 NAMECALL                         R12 R11 K44 ["addOptionalArgument"]
      145 CALL                             R12 3 0
      146 GETUPVAL                         R12 4
      147 GETTABLEKS                       R12 R12 K59 ["FFlagAvatarPreviewerAvatarCreationDynamicHeadOption"]
      149 JUMPIFNOT                        R12 ; [+5]
      150 LOADK                            R14 K60 ["dynamicHead"]
      151 DUPTABLE                         R15 K63 [{["type"] = "boolean", ["description"] = "true generates a dynamic (facially animatable) head, false a static head. Omit to use the default."}]
      152 NAMECALL                         R12 R11 K44 ["addOptionalArgument"]
      154 CALL                             R12 3 0
      155 GETUPVAL                         R12 4
      156 GETTABLEKS                       R12 R12 K64 ["FFlagAvatarPreviewerAvatarCreationR15PlusOption"]
      158 JUMPIFNOT                        R12 ; [+5]
      159 LOADK                            R14 K65 ["r15Plus"]
      160 DUPTABLE                         R15 K67 [{["type"] = "boolean", ["description"] = "true generates an R15+ avatar with a HumanoidRigDescription and DigitsRigDescriptions, false a standard R15 avatar. Omit to use the default."}]
      161 NAMECALL                         R12 R11 K44 ["addOptionalArgument"]
      163 CALL                             R12 3 0
      164 NAMECALL                         R12 R11 K68 ["build"]
      166 CALL                             R12 1 1
      167 DUPCLOSURE                       R13 K69 [PROTO_14]
      168 CAPTURE                          UPVAL U9
      169 CAPTURE                          UPVAL U11
      170 CAPTURE                          UPVAL U12
      171 CAPTURE                          UPVAL U13
      172 CAPTURE                          UPVAL U14
      173 CAPTURE                          UPVAL U15
      174 CAPTURE                          UPVAL U16
      175 DUPTABLE                         R14 K73 [{"command", "getDescription", "runToolChain"}]
      176 GETUPVAL                         R15 9
      177 GETTABLEKS                       R15 R15 K14 ["AvatarGen"]
      179 SETTABLEKS                       R15 R14 K70 ["command"]
      181 DUPCLOSURE                       R15 K74 [PROTO_15]
      182 CAPTURE                          UPVAL U17
      183 SETTABLEKS                       R15 R14 K71 ["getDescription"]
      185 SETTABLEKS                       R13 R14 K72 ["runToolChain"]
      187 DUPTABLE                         R15 K79 [{"toolCallOptions", "definition", "slashCommands", "getPreExecuteWarning"}]
      188 DUPTABLE                         R16 K81 [{["resetTimeoutOnProgress"] = True}]
      189 SETTABLEKS                       R16 R15 K75 ["toolCallOptions"]
      191 SETTABLEKS                       R12 R15 K76 ["definition"]
      193 GETUPVAL                         R17 4
      194 GETTABLEKS                       R17 R17 K82 ["FFlagAssistantAvatarGenSlashCommand"]
      196 JUMPIFNOT                        R17 ; [+6]
      197 NEWTABLE                         R16 0 1
      199 MOVE                             R17 R14
      200 SETLIST                          R16 R17 1 [1]
      202 JUMP                             ; [+1]
      203 LOADNIL                          R16
      204 SETTABLEKS                       R16 R15 K77 ["slashCommands"]
      206 DUPCLOSURE                       R16 K83 [PROTO_16]
      207 SETTABLEKS                       R16 R15 K78 ["getPreExecuteWarning"]
      209 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["DMNetworking"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ModelContextProtocol"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Util"]
       23 GETTABLEKS                       R5 R5 K10 ["AskInput"]
       25 GETTABLEKS                       R5 R5 K11 ["AskInputTypes"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K9 ["Util"]
       32 GETTABLEKS                       R6 R6 K12 ["Jobs"]
       34 GETTABLEKS                       R6 R6 K13 ["AsyncToolRunner"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K9 ["Util"]
       41 GETTABLEKS                       R7 R7 K14 ["AvatarGen"]
       43 GETTABLEKS                       R7 R7 K15 ["AvatarGenEnums"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R1 K16 ["Bin"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K17 ["Flags"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K9 ["Util"]
       60 GETTABLEKS                       R10 R10 K18 ["NetworkingIdentity"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K9 ["Util"]
       67 GETTABLEKS                       R11 R11 K19 ["SlashCommandConfiguration"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K20 ["Tools"]
       74 GETTABLEKS                       R12 R12 K21 ["ToolTypes"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K9 ["Util"]
       81 GETTABLEKS                       R13 R13 K22 ["ToolUtils"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K23 ["Resources"]
       88 GETTABLEKS                       R14 R14 K24 ["Localization"]
       90 GETTABLEKS                       R14 R14 K25 ["Translator"]
       92 CALL                             R13 1 1
       93 GETTABLEKS                       R14 R2 K26 ["Remote"]
       95 GETTABLEKS                       R15 R3 K9 ["Util"]
       97 GETTABLEKS                       R15 R15 K27 ["ToolBuilder"]
       99 GETTABLEKS                       R16 R3 K9 ["Util"]
      101 GETTABLEKS                       R16 R16 K28 ["ToolResult"]
      103 GETTABLEKS                       R17 R11 K29 ["ToolNames"]
      105 GETTABLEKS                       R18 R4 K30 ["INPUT_TYPE"]
      107 GETTABLEKS                       R19 R4 K31 ["RULE_KIND"]
      109 GETTABLEKS                       R20 R4 K32 ["asRule"]
      111 GETTABLEKS                       R21 R10 K33 ["Configs"]
      113 GETTABLEKS                       R21 R21 K14 ["AvatarGen"]
      115 GETTABLEKS                       R22 R21 K34 ["row"]
      117 DUPCLOSURE                       R23 K35 [PROTO_17]
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R16
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R21
      130 CAPTURE                          VAL R22
      131 CAPTURE                          VAL R18
      132 CAPTURE                          VAL R20
      133 CAPTURE                          VAL R19
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R13
      136 RETURN                           R23 1
