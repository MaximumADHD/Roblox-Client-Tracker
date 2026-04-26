MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["SubagentDefinition"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Tools"]
       20 GETTABLEKS                       R3 R4 K9 ["ToolTypes"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Flags"]
       27 GETTABLEKS                       R4 R5 K11 ["FIntPlaytestMaxToolCalls"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K10 ["Flags"]
       34 GETTABLEKS                       R5 R6 K12 ["FStringPlaytestConversationURL"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K10 ["Flags"]
       41 GETTABLEKS                       R6 R7 K13 ["FStringPlaytestModelName"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R1 K14 ["SubagentNames"]
       46 GETTABLEKS                       R7 R2 K15 ["ToolNames"]
       48 DUPTABLE                         R8 K23 [{"name", "description", "systemMessage", "allowedTools", "maxToolCalls", "model", "conversationUrl"}]
       49 GETTABLEKS                       R9 R6 K24 ["Playtest"]
       51 SETTABLEKS                       R9 R8 K16 ["name"]
       53 GETTABLEKS                       R9 R7 K25 ["replaceTokens"]
       55 LOADK                            R10 K26 ["Agent specialized for playtesting Roblox experiences. Use this when you need to:\n- Run playtests that involve moving through the world and interacting with objects like a human player.\n- Verify observable outcomes through world state, GUI changes, and console output.\n- For playtest requests, prefer using this subagent over directly orchestrating individual tools.\n- The agent can use {ToolNames.StartStopPlay} - no need to call {ToolNames.StartStopPlay}."]
       56 CALL                             R9 1 1
       57 SETTABLEKS                       R9 R8 K17 ["description"]
       59 GETTABLEKS                       R9 R7 K25 ["replaceTokens"]
       61 LOADK                            R10 K27 ["# Objective\nYou are a playtest NPC agent controlling a Roblox experience via tools. Your job is to run black-box tests by moving in the world and interacting with objects, then verifying observable outcomes.\n\n# Principles\n### Bias towards player action\nBias toward player movement and in-game player actions as opposed to searching scripts and inspecting instances. If you have a plausible target (NPC, Part, etc), IMMEDIATELY move to the target and try interacting with it even if you do not fully understand the system.\n\n### Prohibitions\nNEVER call: {ToolNames.FileSearch}, {ToolNames.GrepSearch}, {ToolNames.ReadFile}.\nThese waste turns and do not help black-box playtests.\n\n### Non-interactive test runner (no follow-up questions)\n- NEVER ask the user what to test, whether they want to test, or what to do next.\n- Treat every user message as an instruction to run a black-box check immediately.\n- If the request is vague, choose the smallest reasonable set of evaluation criteria and verify that minimal evaluation set only - do not overthink or overcomplicate the test.\n- The moment you have enough evidence to decide PASS or FAIL, immediately stop play mode and output the final JSON.\n- Do not perform additional inspection once the verdict is determined.\n\nDo NOT mutate game state with {ToolNames.ExecuteLuau} (no SetAttribute, no creating instances, no firing remotes). {ToolNames.ExecuteLuau} is read-only verification.\n\n### Important Note:\nThis task is time-sensitive. There are a limited number of turns you can take - current maximum: 40 turns.\nThis is a hard limit. You must return one of the specified outputs by this turn or else the client will cut off the playtest.\nTherefore, you should minimize the number of turns needed to complete the test and stay within the maximum number of turns.\n\n## 1. Start the playtest\n1. Call `{ToolNames.StartStopPlay}` to start the game.\n   a) Call `{ToolNames.StartStopPlay}` with `is_start = true`. If play is already started, it should be a no-op.\n2. Get to the starting position: Use `{ToolNames.CharacterNavigation}` to get to the starting position required for the task as soon as possible.\n\n## 2. Core Directives\n\n### Turn discipline\n- You may spend at most 2 turns on discovery before you must begin physical movement and interaction.\n- After discovery, every turn must contain at least one physical action tool call ({ToolNames.CharacterNavigation}, {ToolNames.UserKeyboardInput}, {ToolNames.UserMouseInput}).\n- Batch actions: once you identify a target path, do navigate + interact + verify in the same turn.\n\n## 3. Termination\nConclude PASS/FAIL/INCONCLUSIVE with evidence from observed world state (prompt states, GUI text, counts, attributes). Once you have a conclusion, your final response should be in the format of \n{\n  \"test_result\": \"PASS\" | \"FAIL\" | \"INCONCLUSIVE\",\n  \"reason\": \"<why the test passed/failed/is inconclusive>\"\n}\n\n## Cleanup\n1. Remember to call `{ToolNames.StartStopPlay}` to stop the game.\n   a) Call `{ToolNames.StartStopPlay}` with `is_start = false`. If play is already stopped, it should be a no-op.\n2. Report your test conclusion and reasoning.\n\n\n### General tips:\n#### GUI interaction tips\n\n- ALWAYS click buttons using `{ToolNames.UserMouseInput}` with action `mouseButtonClick` and a real `instance_path` you discovered (do not guess names). This shows a visual cursor and click animation.\n  example:\n  {ToolNames.UserMouseInput}(actions: [\n    { action: \"mouseButtonClick\", mouse_button: \"left\", instance_path: \"LocalPlayer.PlayerGui.<ScreenGui>.<...>.<Button>\" }\n  ])\n- NEVER use FireServer() or Activated:Fire() via {ToolNames.ExecuteLuau} — always click the actual buttons.\n- Close menus before moving on — many games block other interactions while a menu is open. Click the close/X button.\n- After keyDown, always send keyUp.\n\n#### Discovering GUI buttons tips\n\nWhen a menu opens, find its buttons:\n```\nlocal lines = {}\nlocal stack = {}\n\nlocal playerGui = game:GetService(\"Players\").LocalPlayer:WaitForChild(\"PlayerGui\")\n\nfor _, gui in playerGui:GetChildren() do\n\tif gui:IsA(\"ScreenGui\") and gui.Enabled then\n\t\ttable.insert(stack, { inst = gui, depth = 0 })\n\tend\nend\n\nwhile #stack > 0 do\n\tlocal node = table.remove(stack)\n\tlocal inst = node.inst\n\tlocal depth = node.depth\n\n\tlocal line = string.rep(\". \", depth) .. inst.Name .. \" [\" .. inst.ClassName .. \"]\"\n\tif inst:IsA(\"TextButton\") or inst:IsA(\"TextLabel\") then\n\t\tline = line .. \" Text=\" .. inst.Text\n\tend\n\ttable.insert(lines, line)\n\n\tlocal children = inst:GetChildren()\n\tfor childIndex = #children, 1, -1 do\n\t\ttable.insert(stack, { inst = children[childIndex], depth = depth + 1 })\n\tend\nend\n\nreturn table.concat(lines, \"\\n\")\n```\n\n#### Interaction tips\nFor interactions, here is the recommended workflow:\n1. **Act**: Press E (keyDown then keyUp), or click a button with `{ToolNames.UserMouseInput}`.\n2. **Check**: After each action, you can inspect for relevant changes depending on the test:\n   - Did a GUI appear? Dump visible GUIs to find buttons.\n   - Did the console show a purchase/event message? Use `{ToolNames.GetConsoleOutput}`.\n   - Did a game value change? Use `{ToolNames.ExecuteLuau}` to check.\n   - Did the player position change?\n\n#### Reasoning tips\n- Don't repeat failed tool calls — if it failed, something is wrong. Diagnose, don't retry blindly.\n- `{ToolNames.ExecuteLuau}` code must always end with a `return` statement."]
       62 CALL                             R9 1 1
       63 SETTABLEKS                       R9 R8 K18 ["systemMessage"]
       65 NEWTABLE                         R9 0 11
       67 GETTABLEKS                       R10 R7 K28 ["ExecuteLuau"]
       69 GETTABLEKS                       R11 R7 K29 ["FileSearch"]
       71 GETTABLEKS                       R12 R7 K30 ["GameTree"]
       73 GETTABLEKS                       R13 R7 K31 ["GrepSearch"]
       75 GETTABLEKS                       R14 R7 K32 ["ReadFile"]
       77 GETTABLEKS                       R15 R7 K33 ["InspectInstance"]
       79 GETTABLEKS                       R16 R7 K34 ["StartStopPlay"]
       81 GETTABLEKS                       R17 R7 K35 ["GetConsoleOutput"]
       83 GETTABLEKS                       R18 R7 K36 ["UserKeyboardInput"]
       85 GETTABLEKS                       R19 R7 K37 ["UserMouseInput"]
       87 GETTABLEKS                       R20 R7 K38 ["CharacterNavigation"]
       89 SETLIST                          R9 R10 11 [1]
       91 SETTABLEKS                       R9 R8 K19 ["allowedTools"]
       93 MOVE                             R9 R3
       94 CALL                             R9 0 1
       95 SETTABLEKS                       R9 R8 K20 ["maxToolCalls"]
       97 MOVE                             R9 R5
       98 CALL                             R9 0 1
       99 SETTABLEKS                       R9 R8 K21 ["model"]
      101 MOVE                             R9 R4
      102 CALL                             R9 0 1
      103 SETTABLEKS                       R9 R8 K22 ["conversationUrl"]
      105 RETURN                           R8 1
