PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["index"]
        2 FASTCALL1                        TYPE R2 ; [+3]
        3 MOVE                             R6 R2
        4 GETIMPORT                        R5 K2 [type]
        6 CALL                             R5 1 1
        7 JUMPIFEQKS                       R5 K3 ["number"] ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       13 LOADK                            R5 K4 ["CompleteTodoItemTool requires an index number"]
       14 GETIMPORT                        R3 K6 [assert]
       16 CALL                             R3 2 0
       17 LOADN                            R3 1
       18 JUMPIFLT                         R2 R3 ; [+4]
       20 MODK                             R3 R2 K7 [1]
       21 JUMPIFEQKN                       R3 K8 [0] ; [+11]
       23 GETUPVAL                         R3 0
       24 CALL                             R3 0 1
       25 LOADK                            R5 K9 ["No todo completed: index must be a positive integer (1-based)."]
       26 NAMECALL                         R3 R3 K10 ["addText"]
       28 CALL                             R3 2 1
       29 NAMECALL                         R3 R3 K11 ["build"]
       31 CALL                             R3 1 -1
       32 RETURN                           R3 -1
       33 GETUPVAL                         R3 1
       34 MOVE                             R4 R1
       35 CALL                             R3 1 1
       36 MOVE                             R6 R2
       37 NAMECALL                         R4 R3 K12 ["completeTodoByIndex"]
       39 CALL                             R4 2 1
       40 JUMPIFNOTEQKS                    R4 K13 ["updated"] ; [+16]
       42 GETUPVAL                         R5 0
       43 CALL                             R5 0 1
       44 LOADK                            R8 K14 ["Marked todo #%* as completed."]
       45 MOVE                             R10 R2
       46 NAMECALL                         R8 R8 K15 ["format"]
       48 CALL                             R8 2 1
       49 MOVE                             R7 R8
       50 NAMECALL                         R5 R5 K10 ["addText"]
       52 CALL                             R5 2 1
       53 NAMECALL                         R5 R5 K11 ["build"]
       55 CALL                             R5 1 -1
       56 RETURN                           R5 -1
       57 JUMPIFNOTEQKS                    R4 K16 ["already_in_state"] ; [+16]
       59 GETUPVAL                         R5 0
       60 CALL                             R5 0 1
       61 LOADK                            R8 K17 ["Todo #%* was already completed."]
       62 MOVE                             R10 R2
       63 NAMECALL                         R8 R8 K15 ["format"]
       65 CALL                             R8 2 1
       66 MOVE                             R7 R8
       67 NAMECALL                         R5 R5 K10 ["addText"]
       69 CALL                             R5 2 1
       70 NAMECALL                         R5 R5 K11 ["build"]
       72 CALL                             R5 1 -1
       73 RETURN                           R5 -1
       74 JUMPIFNOTEQKS                    R4 K18 ["index_out_of_range"] ; [+16]
       76 GETUPVAL                         R5 0
       77 CALL                             R5 0 1
       78 LOADK                            R8 K19 ["No todo completed: index #%* is out of range."]
       79 MOVE                             R10 R2
       80 NAMECALL                         R8 R8 K15 ["format"]
       82 CALL                             R8 2 1
       83 MOVE                             R7 R8
       84 NAMECALL                         R5 R5 K10 ["addText"]
       86 CALL                             R5 2 1
       87 NAMECALL                         R5 R5 K11 ["build"]
       89 CALL                             R5 1 -1
       90 RETURN                           R5 -1
       91 JUMPIFNOTEQKS                    R4 K20 ["no_active_plan"] ; [+11]
       93 GETUPVAL                         R5 0
       94 CALL                             R5 0 1
       95 LOADK                            R7 K21 ["No todo completed: there is no active persistent plan."]
       96 NAMECALL                         R5 R5 K10 ["addText"]
       98 CALL                             R5 2 1
       99 NAMECALL                         R5 R5 K11 ["build"]
      101 CALL                             R5 1 -1
      102 RETURN                           R5 -1
      103 GETUPVAL                         R5 0
      104 CALL                             R5 0 1
      105 LOADK                            R7 K22 ["No todo completed."]
      106 NAMECALL                         R5 R5 K10 ["addText"]
      108 CALL                             R5 2 1
      109 NAMECALL                         R5 R5 K11 ["build"]
      111 CALL                             R5 1 -1
      112 RETURN                           R5 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["getPersistentPlanRuntime"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["define"]
        8 CALL                             R3 0 1
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R5 R6 K2 ["CompleteTodoItem"]
       12 NAMECALL                         R3 R3 K3 ["setName"]
       14 CALL                             R3 2 1
       15 LOADK                            R5 K4 ["Marks a persistent plan todo item as completed by 1-based index.\nUse this while executing an approved plan to keep progress in sync.\n"]
       16 NAMECALL                         R3 R3 K5 ["setDescription"]
       18 CALL                             R3 2 1
       19 LOADK                            R5 K6 ["index"]
       20 DUPTABLE                         R6 K9 [{"type", "description"}]
       21 LOADK                            R7 K10 ["number"]
       22 SETTABLEKS                       R7 R6 K7 ["type"]
       24 LOADK                            R7 K11 ["1-based todo index to mark as completed."]
       25 SETTABLEKS                       R7 R6 K8 ["description"]
       27 NAMECALL                         R3 R3 K12 ["addArgument"]
       29 CALL                             R3 3 1
       30 MOVE                             R5 R2
       31 NAMECALL                         R3 R3 K13 ["setHandler"]
       33 CALL                             R3 2 1
       34 NAMECALL                         R3 R3 K14 ["build"]
       36 CALL                             R3 1 1
       37 DUPTABLE                         R4 K17 [{"definition", "streamTransform"}]
       38 SETTABLEKS                       R3 R4 K15 ["definition"]
       40 GETUPVAL                         R6 3
       41 GETTABLEKS                       R5 R6 K18 ["None"]
       43 SETTABLEKS                       R5 R4 K16 ["streamTransform"]
       45 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Tools"]
       18 GETTABLEKS                       R3 R4 K9 ["ToolTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R5 K11 ["UIToolRegistry"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R1 K12 ["Util"]
       30 GETTABLEKS                       R4 R5 K13 ["ToolBuilder"]
       32 GETTABLEKS                       R6 R1 K12 ["Util"]
       34 GETTABLEKS                       R5 R6 K14 ["ToolResult"]
       36 GETTABLEKS                       R6 R2 K15 ["ToolNames"]
       38 DUPCLOSURE                       R7 K16 [PROTO_1]
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R3
       43 RETURN                           R7 1
