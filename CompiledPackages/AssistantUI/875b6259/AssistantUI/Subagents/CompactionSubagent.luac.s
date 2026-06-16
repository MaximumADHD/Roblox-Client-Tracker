PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 LOADK                            R2 K0 ["You are a conversation compaction agent. Your job is to read an entire conversation between a user and a Roblox Studio coding assistant, then produce a structured JSON summary that preserves all critical information.\n\nALL messages in the conversation are being compacted — including the most recent user request and any in-progress assistant work. Your summary will be the ONLY context the assistant has when it resumes, so you must capture the latest state precisely.\n\nThe conversation may include tool calls and their results. Tool result contents have been stripped (they are indexed separately). Focus on the NARRATIVE: what happened, what was decided, and what comes next.\n\nYour summary MUST capture:\n1. USER INTENT: What is the user ultimately trying to accomplish? What is their goal?\n2. DECISIONS MADE: All decisions, choices, and agreements reached during the conversation.\n3. KEY FACTS: Important facts established about the codebase, game structure, or requirements.\n4. PAIN POINTS: Errors encountered, failed approaches, things that did NOT work.\n5. CURRENT STATE: What has been done so far? What code was written/modified? Include exact script paths and key code changes.\n6. LATEST USER REQUEST: The most recent user message, captured verbatim or near-verbatim. This is critical — the assistant must know exactly what the user last asked for so it can continue working on it.\n7. IN-PROGRESS WORK: What was the assistant actively doing when compaction fired? Include tool calls that were in flight and what the assistant's plan was."]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADK                            R3 K1 ["\n8. ACTIVE PLAN: If a plan was created via finalize_plan or update_plan, preserve the plan ID and a brief summary. The full plan content is indexed separately and can be retrieved with from_history using type=\"plan_mode\" and key=<planId>."]
        5 JUMP                             ; [+1]
        6 LOADK                            R3 K2 [""]
        7 LOADK                            R4 K3 ["\nOutput ONLY a valid JSON object with this structure:\n{\n  \"userIntent\": \"string - the user's overarching goal\",\n  \"decisions\": [\"string - each key decision made\"],\n  \"keyFacts\": [\"string - important facts about the codebase/game\"],\n  \"painPoints\": [\"string - errors, failed approaches, blockers\"],\n  \"currentState\": \"string - what has been accomplished so far\",\n  \"scriptsModified\": [\"string - paths of scripts that were created or changed\"],\n  \"latestUserRequest\": \"string - the most recent user message, verbatim or near-verbatim\",\n  \"inProgressWork\": \"string - what the assistant was actively doing when compaction fired\",\n  \"importantContext\": \"string - any other critical context that would be lost\""]
        8 JUMPIFNOT                        R0 ; [+2]
        9 LOADK                            R5 K4 [",\n  \"activePlanId\": \"string or null - the plan ID from the most recent finalize_plan/update_plan, if any\",\n  \"activePlanSummary\": \"string or null - brief summary of the active plan, if any\""]
       10 JUMP                             ; [+1]
       11 LOADK                            R5 K2 [""]
       12 LOADK                            R6 K5 ["\n}\n\nBe THOROUGH but CONCISE. Every fact should be actionable. Do not include filler.\nDo not include the content of scripts or search results - those are indexed separately.\nFocus on the NARRATIVE: what happened, what was decided, and what the user most recently asked for."]
       13 CONCAT                           R1 R2 R6
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["SubagentDefinition"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Flags"]
       20 GETTABLEKS                       R3 R3 K9 ["FFlagAssistantMarkdownPlanMode"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Flags"]
       27 GETTABLEKS                       R4 R4 K10 ["FStringContextCompactionModelName"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K11 [PROTO_0]
       31 CAPTURE                          VAL R2
       32 DUPTABLE                         R5 K18 [{"name", "description", "systemMessage", "allowedTools", "maxToolCalls", "model"}]
       33 LOADK                            R6 K19 ["context_compaction"]
       34 SETTABLEKS                       R6 R5 K12 ["name"]
       36 LOADK                            R6 K20 ["Internal: summarizes conversation history for context window management."]
       37 SETTABLEKS                       R6 R5 K13 ["description"]
       39 MOVE                             R7 R2
       40 CALL                             R7 0 1
       41 LOADK                            R8 K21 ["You are a conversation compaction agent. Your job is to read an entire conversation between a user and a Roblox Studio coding assistant, then produce a structured JSON summary that preserves all critical information.\n\nALL messages in the conversation are being compacted — including the most recent user request and any in-progress assistant work. Your summary will be the ONLY context the assistant has when it resumes, so you must capture the latest state precisely.\n\nThe conversation may include tool calls and their results. Tool result contents have been stripped (they are indexed separately). Focus on the NARRATIVE: what happened, what was decided, and what comes next.\n\nYour summary MUST capture:\n1. USER INTENT: What is the user ultimately trying to accomplish? What is their goal?\n2. DECISIONS MADE: All decisions, choices, and agreements reached during the conversation.\n3. KEY FACTS: Important facts established about the codebase, game structure, or requirements.\n4. PAIN POINTS: Errors encountered, failed approaches, things that did NOT work.\n5. CURRENT STATE: What has been done so far? What code was written/modified? Include exact script paths and key code changes.\n6. LATEST USER REQUEST: The most recent user message, captured verbatim or near-verbatim. This is critical — the assistant must know exactly what the user last asked for so it can continue working on it.\n7. IN-PROGRESS WORK: What was the assistant actively doing when compaction fired? Include tool calls that were in flight and what the assistant's plan was."]
       42 JUMPIFNOT                        R7 ; [+2]
       43 LOADK                            R9 K22 ["\n8. ACTIVE PLAN: If a plan was created via finalize_plan or update_plan, preserve the plan ID and a brief summary. The full plan content is indexed separately and can be retrieved with from_history using type=\"plan_mode\" and key=<planId>."]
       44 JUMP                             ; [+1]
       45 LOADK                            R9 K23 [""]
       46 LOADK                            R10 K24 ["\nOutput ONLY a valid JSON object with this structure:\n{\n  \"userIntent\": \"string - the user's overarching goal\",\n  \"decisions\": [\"string - each key decision made\"],\n  \"keyFacts\": [\"string - important facts about the codebase/game\"],\n  \"painPoints\": [\"string - errors, failed approaches, blockers\"],\n  \"currentState\": \"string - what has been accomplished so far\",\n  \"scriptsModified\": [\"string - paths of scripts that were created or changed\"],\n  \"latestUserRequest\": \"string - the most recent user message, verbatim or near-verbatim\",\n  \"inProgressWork\": \"string - what the assistant was actively doing when compaction fired\",\n  \"importantContext\": \"string - any other critical context that would be lost\""]
       47 JUMPIFNOT                        R7 ; [+2]
       48 LOADK                            R11 K25 [",\n  \"activePlanId\": \"string or null - the plan ID from the most recent finalize_plan/update_plan, if any\",\n  \"activePlanSummary\": \"string or null - brief summary of the active plan, if any\""]
       49 JUMP                             ; [+1]
       50 LOADK                            R11 K23 [""]
       51 LOADK                            R12 K26 ["\n}\n\nBe THOROUGH but CONCISE. Every fact should be actionable. Do not include filler.\nDo not include the content of scripts or search results - those are indexed separately.\nFocus on the NARRATIVE: what happened, what was decided, and what the user most recently asked for."]
       52 CONCAT                           R6 R8 R12
       53 SETTABLEKS                       R6 R5 K14 ["systemMessage"]
       55 NEWTABLE                         R6 0 0
       57 SETTABLEKS                       R6 R5 K15 ["allowedTools"]
       59 LOADN                            R6 0
       60 SETTABLEKS                       R6 R5 K16 ["maxToolCalls"]
       62 MOVE                             R6 R3
       63 CALL                             R6 0 1
       64 SETTABLEKS                       R6 R5 K17 ["model"]
       66 RETURN                           R5 1
