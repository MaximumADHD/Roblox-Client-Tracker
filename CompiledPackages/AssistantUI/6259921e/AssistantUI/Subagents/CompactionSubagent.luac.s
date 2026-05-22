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
       20 GETTABLEKS                       R3 R3 K9 ["FStringContextCompactionModelName"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K16 [{"name", "description", "systemMessage", "allowedTools", "maxToolCalls", "model"}]
       24 LOADK                            R4 K17 ["context_compaction"]
       25 SETTABLEKS                       R4 R3 K10 ["name"]
       27 LOADK                            R4 K18 ["Internal: summarizes conversation history for context window management."]
       28 SETTABLEKS                       R4 R3 K11 ["description"]
       30 LOADK                            R4 K19 ["You are a conversation compaction agent. Your job is to read an entire conversation between a user and a Roblox Studio coding assistant, then produce a structured JSON summary that preserves all critical information.\n\nALL messages in the conversation are being compacted — including the most recent user request and any in-progress assistant work. Your summary will be the ONLY context the assistant has when it resumes, so you must capture the latest state precisely.\n\nThe conversation may include tool calls and their results. Tool result contents have been stripped (they are indexed separately). Focus on the NARRATIVE: what happened, what was decided, and what comes next.\n\nYour summary MUST capture:\n1. USER INTENT: What is the user ultimately trying to accomplish? What is their goal?\n2. DECISIONS MADE: All decisions, choices, and agreements reached during the conversation.\n3. KEY FACTS: Important facts established about the codebase, game structure, or requirements.\n4. PAIN POINTS: Errors encountered, failed approaches, things that did NOT work.\n5. CURRENT STATE: What has been done so far? What code was written/modified? Include exact script paths and key code changes.\n6. LATEST USER REQUEST: The most recent user message, captured verbatim or near-verbatim. This is critical — the assistant must know exactly what the user last asked for so it can continue working on it.\n7. IN-PROGRESS WORK: What was the assistant actively doing when compaction fired? Include tool calls that were in flight and what the assistant's plan was.\n\nOutput ONLY a valid JSON object with this structure:\n{\n  \"userIntent\": \"string - the user's overarching goal\",\n  \"decisions\": [\"string - each key decision made\"],\n  \"keyFacts\": [\"string - important facts about the codebase/game\"],\n  \"painPoints\": [\"string - errors, failed approaches, blockers\"],\n  \"currentState\": \"string - what has been accomplished so far\",\n  \"scriptsModified\": [\"string - paths of scripts that were created or changed\"],\n  \"latestUserRequest\": \"string - the most recent user message, verbatim or near-verbatim\",\n  \"inProgressWork\": \"string - what the assistant was actively doing when compaction fired\",\n  \"importantContext\": \"string - any other critical context that would be lost\"\n}\n\nBe THOROUGH but CONCISE. Every fact should be actionable. Do not include filler.\nDo not include the content of scripts or search results - those are indexed separately.\nFocus on the NARRATIVE: what happened, what was decided, and what the user most recently asked for."]
       31 SETTABLEKS                       R4 R3 K12 ["systemMessage"]
       33 NEWTABLE                         R4 0 0
       35 SETTABLEKS                       R4 R3 K13 ["allowedTools"]
       37 LOADN                            R4 0
       38 SETTABLEKS                       R4 R3 K14 ["maxToolCalls"]
       40 MOVE                             R4 R2
       41 CALL                             R4 0 1
       42 SETTABLEKS                       R4 R3 K15 ["model"]
       44 RETURN                           R3 1
