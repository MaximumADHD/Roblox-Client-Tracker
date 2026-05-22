PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["indices"]
        2 FASTCALL1                        TYPE R2 ; [+3]
        3 MOVE                             R6 R2
        4 GETIMPORT                        R5 K2 [type]
        6 CALL                             R5 1 1
        7 JUMPIFEQKS                       R5 K3 ["table"] ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       13 LOADK                            R5 K4 ["CompleteTodoItemsTool requires an indices array"]
       14 GETIMPORT                        R3 K6 [assert]
       16 CALL                             R3 2 0
       17 LENGTH                           R5 R2
       18 LOADN                            R6 0
       19 JUMPIFLT                         R6 R5 ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       25 LOADK                            R5 K7 ["CompleteTodoItemsTool requires at least one index"]
       26 GETIMPORT                        R3 K6 [assert]
       28 CALL                             R3 2 0
       29 MOVE                             R3 R2
       30 LOADNIL                          R4
       31 LOADNIL                          R5
       32 FORGPREP                         R3
       33 FASTCALL1                        TYPE R7 ; [+3]
       34 MOVE                             R11 R7
       35 GETIMPORT                        R10 K2 [type]
       37 CALL                             R10 1 1
       38 JUMPIFEQKS                       R10 K8 ["number"] ; [+2]
       40 LOADB                            R9 0 +1
       41 LOADB                            R9 1
       42 FASTCALL2K                       ASSERT R9 K9 ; [+4]
       44 LOADK                            R10 K9 ["CompleteTodoItemsTool: each index must be a number"]
       45 GETIMPORT                        R8 K6 [assert]
       47 CALL                             R8 2 0
       48 FORGLOOP                         R3 2 ; [-16]
       50 GETUPVAL                         R3 0
       51 MOVE                             R4 R1
       52 CALL                             R3 1 1
       53 MOVE                             R6 R2
       54 NAMECALL                         R4 R3 K10 ["completeTodosByIndices"]
       56 CALL                             R4 2 1
       57 NEWTABLE                         R5 0 0
       59 MOVE                             R6 R4
       60 LOADNIL                          R7
       61 LOADNIL                          R8
       62 FORGPREP                         R6
       63 GETTABLE                         R11 R2 R9
       64 JUMPIFNOTEQKS                    R10 K11 ["updated"] ; [+14]
       66 LOADK                            R15 K12 ["Marked todo #%* as completed."]
       67 MOVE                             R17 R11
       68 NAMECALL                         R15 R15 K13 ["format"]
       70 CALL                             R15 2 1
       71 MOVE                             R14 R15
       72 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
       74 MOVE                             R13 R5
       75 GETIMPORT                        R12 K15 [table.insert]
       77 CALL                             R12 2 0
       78 JUMP                             ; [+59]
       79 JUMPIFNOTEQKS                    R10 K16 ["already_in_state"] ; [+14]
       81 LOADK                            R15 K17 ["Todo #%* was already completed."]
       82 MOVE                             R17 R11
       83 NAMECALL                         R15 R15 K13 ["format"]
       85 CALL                             R15 2 1
       86 MOVE                             R14 R15
       87 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
       89 MOVE                             R13 R5
       90 GETIMPORT                        R12 K15 [table.insert]
       92 CALL                             R12 2 0
       93 JUMP                             ; [+44]
       94 JUMPIFNOTEQKS                    R10 K18 ["index_out_of_range"] ; [+33]
       96 LOADN                            R12 1
       97 JUMPIFLT                         R11 R12 ; [+4]
       99 MODK                             R12 R11 K19 [1]
      100 JUMPIFEQKN                       R12 K20 [0] ; [+14]
      102 LOADK                            R15 K21 ["Index %*: must be a positive integer (1-based)."]
      103 MOVE                             R17 R11
      104 NAMECALL                         R15 R15 K13 ["format"]
      106 CALL                             R15 2 1
      107 MOVE                             R14 R15
      108 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
      110 MOVE                             R13 R5
      111 GETIMPORT                        R12 K15 [table.insert]
      113 CALL                             R12 2 0
      114 JUMP                             ; [+23]
      115 LOADK                            R15 K22 ["Index #%* is out of range."]
      116 MOVE                             R17 R11
      117 NAMECALL                         R15 R15 K13 ["format"]
      119 CALL                             R15 2 1
      120 MOVE                             R14 R15
      121 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
      123 MOVE                             R13 R5
      124 GETIMPORT                        R12 K15 [table.insert]
      126 CALL                             R12 2 0
      127 JUMP                             ; [+10]
      128 JUMPIFNOTEQKS                    R10 K23 ["no_active_plan"] ; [+9]
      130 FASTCALL2K                       TABLE_INSERT R5 K24 ; [+5]
      132 MOVE                             R13 R5
      133 LOADK                            R14 K24 ["No active persistent plan."]
      134 GETIMPORT                        R12 K15 [table.insert]
      136 CALL                             R12 2 0
      137 JUMP                             ; [+2]
      138 FORGLOOP                         R6 2 ; [-76]
      140 GETUPVAL                         R6 1
      141 CALL                             R6 0 1
      142 GETIMPORT                        R8 K26 [table.concat]
      144 MOVE                             R9 R5
      145 LOADK                            R10 K27 ["\n"]
      146 CALL                             R8 2 -1
      147 NAMECALL                         R6 R6 K28 ["addText"]
      149 CALL                             R6 -1 1
      150 NAMECALL                         R6 R6 K29 ["build"]
      152 CALL                             R6 1 -1
      153 RETURN                           R6 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["getPersistentPlanRuntime"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["define"]
        8 CALL                             R3 0 1
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K2 ["CompleteTodoItems"]
       12 NAMECALL                         R3 R3 K3 ["setName"]
       14 CALL                             R3 2 1
       15 LOADK                            R5 K4 ["Marks one or more persistent plan todo items as completed by their 1-based indices.\nUse this while executing an approved plan to keep progress in sync.\n"]
       16 NAMECALL                         R3 R3 K5 ["setDescription"]
       18 CALL                             R3 2 1
       19 LOADK                            R5 K6 ["indices"]
       20 DUPTABLE                         R6 K10 [{"type", "description", "items"}]
       21 LOADK                            R7 K11 ["array"]
       22 SETTABLEKS                       R7 R6 K7 ["type"]
       24 LOADK                            R7 K12 ["1-based todo indices to mark as completed."]
       25 SETTABLEKS                       R7 R6 K8 ["description"]
       27 DUPTABLE                         R7 K13 [{"type"}]
       28 LOADK                            R8 K14 ["number"]
       29 SETTABLEKS                       R8 R7 K7 ["type"]
       31 SETTABLEKS                       R7 R6 K9 ["items"]
       33 NAMECALL                         R3 R3 K15 ["addArgument"]
       35 CALL                             R3 3 1
       36 DUPTABLE                         R5 K21 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
       37 LOADK                            R6 K22 ["Complete Todo Items"]
       38 SETTABLEKS                       R6 R5 K16 ["title"]
       40 LOADB                            R6 0
       41 SETTABLEKS                       R6 R5 K17 ["readOnlyHint"]
       43 LOADB                            R6 0
       44 SETTABLEKS                       R6 R5 K18 ["destructiveHint"]
       46 LOADB                            R6 0
       47 SETTABLEKS                       R6 R5 K19 ["idempotentHint"]
       49 LOADB                            R6 0
       50 SETTABLEKS                       R6 R5 K20 ["openWorldHint"]
       52 NAMECALL                         R3 R3 K23 ["setAnnotations"]
       54 CALL                             R3 2 1
       55 MOVE                             R5 R2
       56 NAMECALL                         R3 R3 K24 ["setHandler"]
       58 CALL                             R3 2 1
       59 NAMECALL                         R3 R3 K25 ["build"]
       61 CALL                             R3 1 1
       62 DUPTABLE                         R4 K28 [{"definition", "streamTransform"}]
       63 SETTABLEKS                       R3 R4 K26 ["definition"]
       65 GETUPVAL                         R5 3
       66 GETTABLEKS                       R5 R5 K29 ["None"]
       68 SETTABLEKS                       R5 R4 K27 ["streamTransform"]
       70 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Tools"]
       18 GETTABLEKS                       R3 R3 K9 ["ToolTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["UIToolRegistry"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K12 ["Util"]
       30 GETTABLEKS                       R4 R4 K13 ["ToolBuilder"]
       32 GETTABLEKS                       R5 R1 K12 ["Util"]
       34 GETTABLEKS                       R5 R5 K14 ["ToolResult"]
       36 GETTABLEKS                       R6 R2 K15 ["ToolNames"]
       38 DUPCLOSURE                       R7 K16 [PROTO_1]
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R3
       43 RETURN                           R7 1
