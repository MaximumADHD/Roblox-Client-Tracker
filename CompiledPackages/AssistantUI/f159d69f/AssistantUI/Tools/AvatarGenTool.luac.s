PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["canceled"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["toolUseId"]
        2 DUPTABLE                         R2 K3 [{["canceled"] = False}]
        3 GETUPVAL                         R3 0
        4 SETTABLE                         R2 R3 R1
        5 GETIMPORT                        R3 K5 [pcall]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K6 ["tools"]
       10 GETTABLEKS                       R4 R4 K7 ["avatarGen"]
       12 GETTABLEKS                       R4 R4 K8 ["generateAvatarAsync"]
       14 DUPTABLE                         R5 K14 [{"textPrompt", "pipelineName", "dynamicHead", "r15Plus", "isCanceled"}]
       15 GETTABLEKS                       R6 R0 K9 ["textPrompt"]
       17 SETTABLEKS                       R6 R5 K9 ["textPrompt"]
       19 GETTABLEKS                       R6 R0 K10 ["pipelineName"]
       21 SETTABLEKS                       R6 R5 K10 ["pipelineName"]
       23 GETTABLEKS                       R6 R0 K11 ["dynamicHead"]
       25 SETTABLEKS                       R6 R5 K11 ["dynamicHead"]
       27 GETTABLEKS                       R6 R0 K12 ["r15Plus"]
       29 SETTABLEKS                       R6 R5 K12 ["r15Plus"]
       31 NEWCLOSURE                       R6 P0
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R6 R5 K13 ["isCanceled"]
       35 CALL                             R3 2 2
       36 GETUPVAL                         R5 0
       37 LOADNIL                          R6
       38 SETTABLE                         R6 R5 R1
       39 JUMPIF                           R3 ; [+5]
       40 GETIMPORT                        R5 K16 [error]
       42 MOVE                             R6 R4
       43 LOADN                            R7 0
       44 CALL                             R5 2 0
       45 GETUPVAL                         R5 1
       46 GETTABLEKS                       R5 R5 K17 ["selection"]
       48 GETTABLEKS                       R5 R5 K18 ["set"]
       50 NEWTABLE                         R6 0 1
       52 MOVE                             R7 R4
       53 SETLIST                          R6 R7 1 [1]
       55 CALL                             R5 1 0
       56 DUPTABLE                         R5 K21 [{"avatarName", "avatarPath"}]
       57 GETTABLEKS                       R6 R4 K22 ["Name"]
       59 SETTABLEKS                       R6 R5 K19 ["avatarName"]
       61 NAMECALL                         R6 R4 K23 ["GetFullName"]
       63 CALL                             R6 1 1
       64 SETTABLEKS                       R6 R5 K20 ["avatarPath"]
       66 RETURN                           R5 1

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
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R1 K0 ["toolUseId"]
        3 GETTABLE                         R3 R4 R5
        4 JUMPIFEQKNIL                     R3 ; [+4]
        6 LOADB                            R4 1
        7 SETTABLEKS                       R4 R3 K1 ["canceled"]
        9 LOADNIL                          R2
       10 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 DUPTABLE                         R3 K2 [{"toolUseId"}]
        7 GETUPVAL                         R4 3
        8 SETTABLEKS                       R4 R3 K1 ["toolUseId"]
       10 NAMECALL                         R0 R0 K3 ["InvokeAsync"]
       12 CALL                             R0 3 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 4
       15 LOADNIL                          R1
       16 DUPTABLE                         R2 K2 [{"toolUseId"}]
       17 GETUPVAL                         R3 3
       18 SETTABLEKS                       R3 R2 K1 ["toolUseId"]
       20 CALL                             R0 2 0
       21 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K1 [pcall]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["InvokeAsync"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["runWithProgressLoop"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["sendProgress"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 GETUPVAL                         R3 5
       14 CALL                             R0 3 -1
       15 RETURN                           R0 -1
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K1 ["runWithProgressLoop"]
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R1 R1 K2 ["sendProgress"]
       22 GETUPVAL                         R2 6
       23 LOADNIL                          R3
       24 GETUPVAL                         R4 5
       25 CALL                             R0 4 -1
       26 RETURN                           R0 -1

PROTO_12:
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
       57 LOADNIL                          R5
       58 GETTABLEKS                       R6 R0 K16 ["pipelineName"]
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R7 R7 K17 ["PipelineName"]
       63 GETTABLEKS                       R7 R7 K18 ["Npc"]
       65 JUMPIFNOTEQ                      R6 R7 ; [+7]
       67 GETUPVAL                         R6 1
       68 GETTABLEKS                       R6 R6 K17 ["PipelineName"]
       70 GETTABLEKS                       R5 R6 K18 ["Npc"]
       72 JUMP                             ; [+43]
       73 GETTABLEKS                       R6 R0 K16 ["pipelineName"]
       75 GETUPVAL                         R7 1
       76 GETTABLEKS                       R7 R7 K17 ["PipelineName"]
       78 GETTABLEKS                       R7 R7 K19 ["Modesty"]
       80 JUMPIFNOTEQ                      R6 R7 ; [+7]
       82 GETUPVAL                         R6 1
       83 GETTABLEKS                       R6 R6 K17 ["PipelineName"]
       85 GETTABLEKS                       R5 R6 K19 ["Modesty"]
       87 JUMP                             ; [+28]
       88 GETTABLEKS                       R6 R0 K16 ["pipelineName"]
       90 JUMPIFEQKNIL                     R6 ; [+25]
       92 GETUPVAL                         R6 0
       93 CALL                             R6 0 1
       94 LOADK                            R8 K20 ["pipelineName must be one of: %*."]
       95 GETIMPORT                        R10 K23 [table.concat]
       97 GETUPVAL                         R11 1
       98 GETTABLEKS                       R11 R11 K24 ["PipelineNameValues"]
      100 LOADK                            R12 K25 [", "]
      101 CALL                             R10 2 1
      102 NAMECALL                         R8 R8 K26 ["format"]
      104 CALL                             R8 2 1
      105 NAMECALL                         R6 R6 K13 ["addText"]
      107 CALL                             R6 2 1
      108 LOADB                            R8 1
      109 NAMECALL                         R6 R6 K14 ["setError"]
      111 CALL                             R6 2 1
      112 NAMECALL                         R6 R6 K15 ["build"]
      114 CALL                             R6 1 -1
      115 RETURN                           R6 -1
      116 DUPTABLE                         R6 K30 [{"toolUseId", "textPrompt", "pipelineName", "dynamicHead", "r15Plus"}]
      117 SETTABLEKS                       R3 R6 K27 ["toolUseId"]
      119 SETTABLEKS                       R4 R6 K8 ["textPrompt"]
      121 SETTABLEKS                       R5 R6 K16 ["pipelineName"]
      123 GETUPVAL                         R8 2
      124 GETTABLEKS                       R8 R8 K31 ["FFlagAvatarPreviewerAvatarCreationDynamicHeadOption"]
      126 JUMPIFNOT                        R8 ; [+3]
      127 GETTABLEKS                       R7 R0 K28 ["dynamicHead"]
      129 JUMP                             ; [+1]
      130 LOADNIL                          R7
      131 SETTABLEKS                       R7 R6 K28 ["dynamicHead"]
      133 GETUPVAL                         R8 2
      134 GETTABLEKS                       R8 R8 K32 ["FFlagAvatarPreviewerAvatarCreationR15PlusOption"]
      136 JUMPIFNOT                        R8 ; [+3]
      137 GETTABLEKS                       R7 R0 K29 ["r15Plus"]
      139 JUMP                             ; [+1]
      140 LOADNIL                          R7
      141 SETTABLEKS                       R7 R6 K29 ["r15Plus"]
      143 LOADNIL                          R7
      144 GETUPVAL                         R8 2
      145 GETTABLEKS                       R8 R8 K33 ["FFlagAssistantUseNewDMNetworking"]
      147 JUMPIFNOT                        R8 ; [+6]
      148 GETUPVAL                         R8 3
      149 GETTABLEKS                       R8 R8 K34 ["resolveTargetAsync"]
      151 GETUPVAL                         R9 4
      152 CALL                             R8 1 1
      153 MOVE                             R7 R8
      154 LOADB                            R8 0
      155 JUMPIFNOT                        R2 ; [+22]
      156 GETTABLEKS                       R9 R2 K35 ["signal"]
      158 JUMPIFNOT                        R9 ; [+19]
      159 GETTABLEKS                       R9 R2 K35 ["signal"]
      161 GETTABLEKS                       R9 R9 K36 ["abortSignal"]
      163 JUMPIFNOT                        R9 ; [+14]
      164 GETTABLEKS                       R9 R2 K35 ["signal"]
      166 GETTABLEKS                       R9 R9 K36 ["abortSignal"]
      168 NEWCLOSURE                       R11 P0
      169 CAPTURE                          REF R8
      170 CAPTURE                          UPVAL U2
      171 CAPTURE                          UPVAL U5
      172 CAPTURE                          REF R7
      173 CAPTURE                          VAL R3
      174 CAPTURE                          UPVAL U6
      175 NAMECALL                         R9 R9 K37 ["Once"]
      177 CALL                             R9 2 0
      178 GETIMPORT                        R9 K39 [pcall]
      180 NEWCLOSURE                       R10 P1
      181 CAPTURE                          UPVAL U2
      182 CAPTURE                          UPVAL U7
      183 CAPTURE                          VAL R2
      184 CAPTURE                          UPVAL U8
      185 CAPTURE                          REF R7
      186 CAPTURE                          VAL R6
      187 CAPTURE                          UPVAL U9
      188 CALL                             R9 1 2
      189 JUMPIF                           R9 ; [+25]
      190 JUMPIF                           R8 ; [+5]
      191 GETIMPORT                        R11 K41 [error]
      193 MOVE                             R12 R10
      194 LOADN                            R13 0
      195 CALL                             R11 2 0
      196 GETUPVAL                         R11 0
      197 CALL                             R11 0 1
      198 LOADK                            R13 K42 ["Avatar generation canceled before it finished."]
      199 NAMECALL                         R11 R11 K13 ["addText"]
      201 CALL                             R11 2 1
      202 DUPTABLE                         R13 K45 [{["canceled"] = True}]
      203 NAMECALL                         R11 R11 K46 ["setStructuredContent"]
      205 CALL                             R11 2 1
      206 LOADB                            R13 1
      207 NAMECALL                         R11 R11 K14 ["setError"]
      209 CALL                             R11 2 1
      210 NAMECALL                         R11 R11 K15 ["build"]
      212 CALL                             R11 1 -1
      213 CLOSEUPVALS                      R7
      214 RETURN                           R11 -1
      215 GETUPVAL                         R11 0
      216 CALL                             R11 0 1
      217 LOADK                            R13 K47 ["Generated avatar \"%*\" at %*."]
      218 GETTABLEKS                       R15 R10 K48 ["avatarName"]
      220 GETTABLEKS                       R16 R10 K49 ["avatarPath"]
      222 NAMECALL                         R13 R13 K26 ["format"]
      224 CALL                             R13 3 1
      225 NAMECALL                         R11 R11 K13 ["addText"]
      227 CALL                             R11 2 1
      228 DUPTABLE                         R13 K50 [{"avatarPath"}]
      229 GETTABLEKS                       R14 R10 K49 ["avatarPath"]
      231 SETTABLEKS                       R14 R13 K49 ["avatarPath"]
      233 NAMECALL                         R11 R11 K46 ["setStructuredContent"]
      235 CALL                             R11 2 1
      236 NAMECALL                         R11 R11 K15 ["build"]
      238 CALL                             R11 1 -1
      239 CLOSEUPVALS                      R7
      240 RETURN                           R11 -1

PROTO_13:
        0 DUPTABLE                         R1 K3 [{[1], ["async"] = True}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["textPrompt"]
        4 DUPTABLE                         R2 K6 [{"name", "arguments"}]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K7 ["AvatarGen"]
        8 SETTABLEKS                       R3 R2 K4 ["name"]
       10 SETTABLEKS                       R1 R2 K5 ["arguments"]
       12 RETURN                           R2 1

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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
       24 DUPCLOSURE                       R3 K4 [PROTO_15]
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U0
       28 NEWTABLE                         R4 0 2
       30 MOVE                             R5 R2
       31 MOVE                             R6 R3
       32 SETLIST                          R4 R5 2 [1]
       34 RETURN                           R4 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["AvatarGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_18:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 NEWTABLE                         R4 0 0
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R4
       10 CAPTURE                          VAL R1
       11 NEWCLOSURE                       R6 P1
       12 CAPTURE                          VAL R4
       13 LOADNIL                          R7
       14 LOADNIL                          R8
       15 LOADNIL                          R9
       16 LOADNIL                          R10
       17 GETUPVAL                         R11 0
       18 GETTABLEKS                       R11 R11 K3 ["FFlagAssistantUseNewDMNetworking"]
       20 JUMPIFNOT                        R11 ; [+50]
       21 GETUPVAL                         R11 1
       22 GETTABLEKS                       R11 R11 K4 ["invoke"]
       24 MOVE                             R12 R2
       25 LOADK                            R13 K5 ["AvatarGenTool.generateAvatar"]
       26 CALL                             R11 2 1
       27 MOVE                             R8 R11
       28 GETUPVAL                         R11 1
       29 GETTABLEKS                       R11 R11 K4 ["invoke"]
       31 MOVE                             R12 R2
       32 LOADK                            R13 K6 ["AvatarGenTool.cancelGeneration"]
       33 CALL                             R11 2 1
       34 MOVE                             R10 R11
       35 GETUPVAL                         R11 2
       36 GETTABLEKS                       R11 R11 K7 ["new"]
       38 CALL                             R11 0 1
       39 NAMECALL                         R12 R2 K8 ["GetIdentity"]
       41 CALL                             R12 1 1
       42 GETUPVAL                         R13 3
       43 GETTABLEKS                       R13 R13 K9 ["Identity"]
       45 GETTABLEKS                       R13 R13 K10 ["Standalone"]
       47 JUMPIFEQ                         R12 R13 ; [+17]
       49 NEWCLOSURE                       R16 P2
       50 CAPTURE                          VAL R5
       51 NAMECALL                         R14 R8 K11 ["Connect"]
       53 CALL                             R14 2 -1
       54 NAMECALL                         R12 R11 K12 ["Add"]
       56 CALL                             R12 -1 0
       57 NEWCLOSURE                       R16 P3
       58 CAPTURE                          VAL R4
       59 NAMECALL                         R14 R10 K11 ["Connect"]
       61 CALL                             R14 2 -1
       62 NAMECALL                         R12 R11 K12 ["Add"]
       64 CALL                             R12 -1 0
       65 NEWCLOSURE                       R14 P4
       66 CAPTURE                          VAL R11
       67 NAMECALL                         R12 R3 K13 ["Once"]
       69 CALL                             R12 2 0
       70 JUMP                             ; [+16]
       71 GETTABLEKS                       R11 R0 K14 ["networkingOLD"]
       73 LOADK                            R14 K15 ["AvatarGenTool_generateAvatar"]
       74 NEWCLOSURE                       R15 P5
       75 CAPTURE                          VAL R5
       76 NAMECALL                         R12 R11 K16 ["OnHostInvokeAsync"]
       78 CALL                             R12 3 1
       79 MOVE                             R7 R12
       80 LOADK                            R14 K17 ["AvatarGenTool_cancelGeneration"]
       81 NEWCLOSURE                       R15 P6
       82 CAPTURE                          VAL R4
       83 NAMECALL                         R12 R11 K16 ["OnHostInvokeAsync"]
       85 CALL                             R12 3 1
       86 MOVE                             R9 R12
       87 NEWCLOSURE                       R11 P7
       88 CAPTURE                          UPVAL U4
       89 CAPTURE                          UPVAL U5
       90 CAPTURE                          UPVAL U0
       91 CAPTURE                          UPVAL U6
       92 CAPTURE                          VAL R2
       93 CAPTURE                          REF R10
       94 CAPTURE                          REF R9
       95 CAPTURE                          UPVAL U7
       96 CAPTURE                          REF R8
       97 CAPTURE                          REF R7
       98 GETUPVAL                         R12 8
       99 GETTABLEKS                       R12 R12 K18 ["define"]
      101 CALL                             R12 0 1
      102 GETUPVAL                         R14 9
      103 GETTABLEKS                       R14 R14 K19 ["AvatarGen"]
      105 NAMECALL                         R12 R12 K20 ["setName"]
      107 CALL                             R12 2 1
      108 LOADK                            R14 K21 ["Generate Avatar"]
      109 NAMECALL                         R12 R12 K22 ["setTitle"]
      111 CALL                             R12 2 1
      112 GETIMPORT                        R14 K25 [table.concat]
      114 NEWTABLE                         R15 0 5
      116 LOADK                            R16 K26 ["Generate a new rigged, animatable R15 avatar (body, head, and clothing) from a text prompt using Roblox's avatar creation pipeline,"]
      117 LOADK                            R17 K27 ["then upload it as a persistent asset and insert it into Workspace in front of the camera."]
      118 LOADK                            R18 K28 ["Use this when the user asks to create, generate, or design a new avatar or character from a description."]
      119 LOADK                            R19 K29 ["To rig a Model that already exists in the place, use %* instead."]
      120 GETUPVAL                         R21 9
      121 GETTABLEKS                       R21 R21 K30 ["AvatarAutoSetup"]
      123 NAMECALL                         R19 R19 K31 ["format"]
      125 CALL                             R19 2 1
      126 LOADK                            R20 K32 ["Long-running (usually several minutes): prefer setting '%*' to true and only call %* when you need the result."]
      127 GETUPVAL                         R22 10
      128 GETTABLEKS                       R22 R22 K33 ["ASYNC_ARG"]
      130 GETUPVAL                         R23 9
      131 GETTABLEKS                       R23 R23 K34 ["JobWait"]
      133 NAMECALL                         R20 R20 K31 ["format"]
      135 CALL                             R20 3 1
      136 SETLIST                          R15 R16 5 [1]
      138 LOADK                            R16 K35 [" "]
      139 CALL                             R14 2 -1
      140 NAMECALL                         R12 R12 K36 ["setDescription"]
      142 CALL                             R12 -1 1
      143 LOADK                            R14 K37 ["textPrompt"]
      144 DUPTABLE                         R15 K42 [{["type"] = "string", ["description"] = "Description of the avatar to generate, e.g. 'a knight in silver armor with a red cape'."}]
      145 NAMECALL                         R12 R12 K43 ["addArgument"]
      147 CALL                             R12 3 1
      148 LOADK                            R14 K44 ["pipelineName"]
      149 DUPTABLE                         R15 K47 [{["type"] = "string", ["enum"], ["description"] = "npc generates the avatar with clothing baked in. modesty generates the body only, with a modesty layer. Omit to use the default."}]
      150 GETUPVAL                         R16 5
      151 GETTABLEKS                       R16 R16 K48 ["PipelineNameValues"]
      153 SETTABLEKS                       R16 R15 K45 ["enum"]
      155 NAMECALL                         R12 R12 K49 ["addOptionalArgument"]
      157 CALL                             R12 3 1
      158 MOVE                             R14 R11
      159 NAMECALL                         R12 R12 K50 ["setHandler"]
      161 CALL                             R12 2 1
      162 DUPTABLE                         R14 K58 [{["title"] = "Generate Avatar", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = True}]
      163 NAMECALL                         R12 R12 K59 ["setAnnotations"]
      165 CALL                             R12 2 1
      166 GETUPVAL                         R13 0
      167 GETTABLEKS                       R13 R13 K60 ["FFlagAvatarPreviewerAvatarCreationDynamicHeadOption"]
      169 JUMPIFNOT                        R13 ; [+5]
      170 LOADK                            R15 K61 ["dynamicHead"]
      171 DUPTABLE                         R16 K64 [{["type"] = "boolean", ["description"] = "true generates a dynamic (facially animatable) head, false a static head. Omit to use the default."}]
      172 NAMECALL                         R13 R12 K49 ["addOptionalArgument"]
      174 CALL                             R13 3 0
      175 GETUPVAL                         R13 0
      176 GETTABLEKS                       R13 R13 K65 ["FFlagAvatarPreviewerAvatarCreationR15PlusOption"]
      178 JUMPIFNOT                        R13 ; [+5]
      179 LOADK                            R15 K66 ["r15Plus"]
      180 DUPTABLE                         R16 K68 [{["type"] = "boolean", ["description"] = "true generates an R15+ avatar with a HumanoidRigDescription and DigitsRigDescriptions, false a standard R15 avatar. Omit to use the default."}]
      181 NAMECALL                         R13 R12 K49 ["addOptionalArgument"]
      183 CALL                             R13 3 0
      184 NAMECALL                         R13 R12 K69 ["build"]
      186 CALL                             R13 1 1
      187 DUPCLOSURE                       R14 K70 [PROTO_16]
      188 CAPTURE                          UPVAL U9
      189 CAPTURE                          UPVAL U11
      190 CAPTURE                          UPVAL U12
      191 CAPTURE                          UPVAL U13
      192 CAPTURE                          UPVAL U14
      193 CAPTURE                          UPVAL U15
      194 CAPTURE                          UPVAL U16
      195 DUPTABLE                         R15 K74 [{"command", "getDescription", "runToolChain"}]
      196 GETUPVAL                         R16 9
      197 GETTABLEKS                       R16 R16 K19 ["AvatarGen"]
      199 SETTABLEKS                       R16 R15 K71 ["command"]
      201 DUPCLOSURE                       R16 K75 [PROTO_17]
      202 CAPTURE                          UPVAL U17
      203 SETTABLEKS                       R16 R15 K72 ["getDescription"]
      205 SETTABLEKS                       R14 R15 K73 ["runToolChain"]
      207 DUPTABLE                         R16 K80 [{"toolCallOptions", "definition", "slashCommands", "getPreExecuteWarning"}]
      208 DUPTABLE                         R17 K82 [{["resetTimeoutOnProgress"] = True}]
      209 SETTABLEKS                       R17 R16 K76 ["toolCallOptions"]
      211 SETTABLEKS                       R13 R16 K77 ["definition"]
      213 GETUPVAL                         R18 0
      214 GETTABLEKS                       R18 R18 K83 ["FFlagAssistantAvatarGenSlashCommand"]
      216 JUMPIFNOT                        R18 ; [+6]
      217 NEWTABLE                         R17 0 1
      219 MOVE                             R18 R15
      220 SETLIST                          R17 R18 1 [1]
      222 JUMP                             ; [+1]
      223 LOADNIL                          R17
      224 SETTABLEKS                       R17 R16 K78 ["slashCommands"]
      226 DUPCLOSURE                       R17 K84 [PROTO_18]
      227 SETTABLEKS                       R17 R16 K79 ["getPreExecuteWarning"]
      229 CLOSEUPVALS                      R7
      230 RETURN                           R16 1

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
      117 DUPCLOSURE                       R23 K35 [PROTO_19]
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R16
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
