PROTO_0:
        0 LOADK                            R0 K0 ["Plan mode state: enter_plan\nYou have just entered plan mode. You MUST not make edits, as they will be rejected by the system.\nThis overrides all editing instructions, until exiting plan mode.\n\nPlan mode rules:\n- Focus on planning, decomposition, and requirement clarification.\n- Do not execute implementation steps while in this mode.\n- Use `question_answer` to resolve ambiguity and ask follow-up questions until requirements are clear.\n- Once the plan is ready, call `finalize_plan`.\n- Do not summarize the final plan in chat after calling `finalize_plan`; the plan widget is the final output.\n"]
        1 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R0 K0 ["Plan mode state: exit_plan\nYou have exited plan mode. You must action on the user's approved plan now.\n"]
        1 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["todo"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["state"]
        9 JUMPIFNOTEQKS                    R7 K2 ["pending"] ; [+15]
       11 LOADK                            R10 K3 ["%*. %*"]
       12 MOVE                             R12 R5
       13 GETTABLEKS                       R13 R6 K4 ["text"]
       15 NAMECALL                         R10 R10 K5 ["format"]
       17 CALL                             R10 3 1
       18 MOVE                             R9 R10
       19 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       21 MOVE                             R8 R1
       22 GETIMPORT                        R7 K8 [table.insert]
       24 CALL                             R7 2 0
       25 FORGLOOP                         R2 2 ; [-19]
       27 LENGTH                           R3 R1
       28 LOADN                            R4 0
       29 JUMPIFNOTLT                      R4 R3 ; [+7]
       31 GETIMPORT                        R2 K10 [table.concat]
       33 MOVE                             R3 R1
       34 LOADK                            R4 K11 ["\n"]
       35 CALL                             R2 2 1
       36 JUMP                             ; [+1]
       37 LOADK                            R2 K12 ["None"]
       38 LOADK                            R3 K13 ["There is an active plan.\nTitle: %s\nSummary: %s\nPending Todos:\n%s\n"]
       39 GETTABLEKS                       R5 R0 K14 ["title"]
       41 GETTABLEKS                       R6 R0 K15 ["summary"]
       43 MOVE                             R7 R2
       44 NAMECALL                         R3 R3 K5 ["format"]
       46 CALL                             R3 4 -1
       47 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 DUPCLOSURE                       R3 K8 [PROTO_1]
       14 DUPCLOSURE                       R4 K9 [PROTO_2]
       15 DUPTABLE                         R5 K13 [{"getEnterPlanSystemReminder", "getExitPlanSystemReminder", "formatPersistentPlanReminder"}]
       16 SETTABLEKS                       R2 R5 K10 ["getEnterPlanSystemReminder"]
       18 SETTABLEKS                       R3 R5 K11 ["getExitPlanSystemReminder"]
       20 SETTABLEKS                       R4 R5 K12 ["formatPersistentPlanReminder"]
       22 RETURN                           R5 1
