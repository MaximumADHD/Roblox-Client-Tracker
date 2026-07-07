PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantMarkdownPlanMode"]
        3 LOADK                            R2 K1 ["You are a conversation compaction agent. Your job is to read an entire conversation between a user and a Roblox Studio coding assistant, then produce a structured JSON summary that preserves all critical information.\n\nALL messages in the conversation are being compacted — including the most recent user request and any in-progress assistant work. Your summary will be the ONLY context the assistant has when it resumes, so you must capture the latest state precisely.\n\nThe conversation may include tool calls and their results. Tool result contents have been stripped (they are indexed separately). Focus on the NARRATIVE: what happened, what was decided, and what comes next.\n\nYour summary MUST capture:\n1. USER INTENT: What is the user ultimately trying to accomplish? What is their goal?\n2. DECISIONS MADE: All decisions, choices, and agreements reached during the conversation.\n3. KEY FACTS: Important facts established about the codebase, game structure, or requirements.\n4. PAIN POINTS: Errors encountered, failed approaches, things that did NOT work.\n5. CURRENT STATE: What has been done so far? What code was written/modified? Include exact script paths and key code changes.\n6. LATEST USER REQUEST: The most recent user message, captured verbatim or near-verbatim. This is critical — the assistant must know exactly what the user last asked for so it can continue working on it.\n7. IN-PROGRESS WORK: What was the assistant actively doing when compaction fired? Include tool calls that were in flight and what the assistant's plan was."]
        4 JUMPIFNOT                        R0 ; [+2]
        5 LOADK                            R3 K2 ["\n8. ACTIVE PLAN: If a plan was created via finalize_plan or update_plan, preserve the plan ID and a brief summary. The full plan content is indexed separately and can be retrieved with from_history using type=\"plan_mode\" and key=<planId>."]
        6 JUMP                             ; [+1]
        7 LOADK                            R3 K3 [""]
        8 LOADK                            R4 K4 ["\nOutput ONLY a valid JSON object with this structure:\n{\n  \"userIntent\": \"string - the user's overarching goal\",\n  \"decisions\": [\"string - each key decision made\"],\n  \"keyFacts\": [\"string - important facts about the codebase/game\"],\n  \"painPoints\": [\"string - errors, failed approaches, blockers\"],\n  \"currentState\": \"string - what has been accomplished so far\",\n  \"scriptsModified\": [\"string - paths of scripts that were created or changed\"],\n  \"latestUserRequest\": \"string - the most recent user message, verbatim or near-verbatim\",\n  \"inProgressWork\": \"string - what the assistant was actively doing when compaction fired\",\n  \"importantContext\": \"string - any other critical context that would be lost\""]
        9 JUMPIFNOT                        R0 ; [+2]
       10 LOADK                            R5 K5 [",\n  \"activePlanId\": \"string or null - the plan ID from the most recent finalize_plan/update_plan, if any\",\n  \"activePlanSummary\": \"string or null - brief summary of the active plan, if any\""]
       11 JUMP                             ; [+1]
       12 LOADK                            R5 K3 [""]
       13 LOADK                            R6 K6 ["\n}\n\nBe THOROUGH but CONCISE. Every fact should be actionable. Do not include filler.\nDo not include the content of scripts or search results - those are indexed separately.\nFocus on the NARRATIVE: what happened, what was decided, and what the user most recently asked for."]
       14 CONCAT                           R1 R2 R6
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETIMPORT                        R3 K1 [script]
       16 GETTABLEKS                       R3 R3 K7 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["SubagentDefinition"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 DUPTABLE                         R4 K19 [{["name"] = "context_compaction", ["description"] = "Internal: summarizes conversation history for context window management.", ["systemMessage"], ["allowedTools"], ["maxToolCalls"] = 0, ["model"]}]
       24 GETTABLEKS                       R6 R1 K20 ["FFlagAssistantMarkdownPlanMode"]
       26 LOADK                            R7 K21 ["You are a conversation compaction agent. Your job is to read an entire conversation between a user and a Roblox Studio coding assistant, then produce a structured JSON summary that preserves all critical information.\n\nALL messages in the conversation are being compacted — including the most recent user request and any in-progress assistant work. Your summary will be the ONLY context the assistant has when it resumes, so you must capture the latest state precisely.\n\nThe conversation may include tool calls and their results. Tool result contents have been stripped (they are indexed separately). Focus on the NARRATIVE: what happened, what was decided, and what comes next.\n\nYour summary MUST capture:\n1. USER INTENT: What is the user ultimately trying to accomplish? What is their goal?\n2. DECISIONS MADE: All decisions, choices, and agreements reached during the conversation.\n3. KEY FACTS: Important facts established about the codebase, game structure, or requirements.\n4. PAIN POINTS: Errors encountered, failed approaches, things that did NOT work.\n5. CURRENT STATE: What has been done so far? What code was written/modified? Include exact script paths and key code changes.\n6. LATEST USER REQUEST: The most recent user message, captured verbatim or near-verbatim. This is critical — the assistant must know exactly what the user last asked for so it can continue working on it.\n7. IN-PROGRESS WORK: What was the assistant actively doing when compaction fired? Include tool calls that were in flight and what the assistant's plan was."]
       27 JUMPIFNOT                        R6 ; [+2]
       28 LOADK                            R8 K22 ["\n8. ACTIVE PLAN: If a plan was created via finalize_plan or update_plan, preserve the plan ID and a brief summary. The full plan content is indexed separately and can be retrieved with from_history using type=\"plan_mode\" and key=<planId>."]
       29 JUMP                             ; [+1]
       30 LOADK                            R8 K23 [""]
       31 LOADK                            R9 K24 ["\nOutput ONLY a valid JSON object with this structure:\n{\n  \"userIntent\": \"string - the user's overarching goal\",\n  \"decisions\": [\"string - each key decision made\"],\n  \"keyFacts\": [\"string - important facts about the codebase/game\"],\n  \"painPoints\": [\"string - errors, failed approaches, blockers\"],\n  \"currentState\": \"string - what has been accomplished so far\",\n  \"scriptsModified\": [\"string - paths of scripts that were created or changed\"],\n  \"latestUserRequest\": \"string - the most recent user message, verbatim or near-verbatim\",\n  \"inProgressWork\": \"string - what the assistant was actively doing when compaction fired\",\n  \"importantContext\": \"string - any other critical context that would be lost\""]
       32 JUMPIFNOT                        R6 ; [+2]
       33 LOADK                            R10 K25 [",\n  \"activePlanId\": \"string or null - the plan ID from the most recent finalize_plan/update_plan, if any\",\n  \"activePlanSummary\": \"string or null - brief summary of the active plan, if any\""]
       34 JUMP                             ; [+1]
       35 LOADK                            R10 K23 [""]
       36 LOADK                            R11 K26 ["\n}\n\nBe THOROUGH but CONCISE. Every fact should be actionable. Do not include filler.\nDo not include the content of scripts or search results - those are indexed separately.\nFocus on the NARRATIVE: what happened, what was decided, and what the user most recently asked for."]
       37 CONCAT                           R5 R7 R11
       38 SETTABLEKS                       R5 R4 K14 ["systemMessage"]
       40 NEWTABLE                         R5 0 0
       42 SETTABLEKS                       R5 R4 K15 ["allowedTools"]
       44 GETTABLEKS                       R5 R1 K27 ["FStringContextCompactionModelName"]
       46 SETTABLEKS                       R5 R4 K18 ["model"]
       48 RETURN                           R4 1
