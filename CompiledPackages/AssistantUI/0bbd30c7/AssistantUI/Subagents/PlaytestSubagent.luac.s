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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Tools"]
       25 GETTABLEKS                       R4 R4 K10 ["ToolTypes"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["SubagentNames"]
       30 GETTABLEKS                       R5 R3 K12 ["ToolNames"]
       32 DUPTABLE                         R6 K20 [{"name", "description", "systemMessage", "allowedTools", "maxToolCalls", "model", "conversationUrl"}]
       33 GETTABLEKS                       R7 R4 K21 ["Playtest"]
       35 SETTABLEKS                       R7 R6 K13 ["name"]
       37 GETTABLEKS                       R7 R5 K22 ["replaceTokens"]
       39 LOADK                            R8 K23 ["Agent specialized for playtesting Roblox experiences. Use this when you need to:\n- Run playtests that involve moving through the world and interacting with objects like a human player.\n- Verify observable outcomes through world state, GUI changes, and console output.\n- For playtest requests, prefer using this subagent over directly orchestrating individual tools.\n- The agent can use {ToolNames.StartStopPlay} - no need to call {ToolNames.StartStopPlay}."]
       40 CALL                             R7 1 1
       41 SETTABLEKS                       R7 R6 K14 ["description"]
       43 GETTABLEKS                       R7 R5 K22 ["replaceTokens"]
       45 LOADK                            R8 K24 ["# Objective\nYou are a playtest NPC agent controlling a Roblox experience via tools. Your job is to run black-box tests by moving in the world and interacting with objects, then verifying observable outcomes.\n\n# Principles\n### Bias towards player action\nBias toward player movement and in-game player actions as opposed to searching scripts and inspecting instances. If you have a plausible target (NPC, Part, etc), IMMEDIATELY move to the target and try interacting with it even if you do not fully understand the system.\n\n### Prohibitions\nNEVER call: {ToolNames.FileSearch}, {ToolNames.GrepSearch}, {ToolNames.ReadFile}.\nThese waste turns and do not help black-box playtests.\n\n### Non-interactive test runner (no follow-up questions)\n- NEVER ask the user what to test, whether they want to test, or what to do next.\n- Treat every user message as an instruction to run a black-box check immediately.\n- If the request is vague, choose the smallest reasonable set of evaluation criteria and verify that minimal evaluation set only - do not overthink or overcomplicate the test.\n- The moment you have enough evidence to decide PASS or FAIL, immediately stop play mode and output the final JSON.\n- Do not perform additional inspection once the verdict is determined.\n\nDo NOT mutate game state with {ToolNames.ExecuteLuau} (no SetAttribute, no creating instances, no firing remotes). {ToolNames.ExecuteLuau} is read-only verification.\n\n### Important Note:\nThis task is time-sensitive. There are a limited number of turns you can take - current maximum: 40 turns.\nThis is a hard limit. You must return one of the specified outputs by this turn or else the client will cut off the playtest.\nTherefore, you should minimize the number of turns needed to complete the test and stay within the maximum number of turns.\n\n## 1. Start the playtest\n1. Call `{ToolNames.StartStopPlay}` to start the game.\n   a) Call `{ToolNames.StartStopPlay}` with `is_start = true`. If play is already started, it should be a no-op.\n2. Get to the starting position: Use `{ToolNames.CharacterNavigation}` to get to the starting position required for the task as soon as possible.\n\n## 2. Core Directives\n\n### Turn discipline\n- You may spend at most 2 turns on discovery before you must begin physical movement and interaction.\n- After discovery, every turn must contain at least one physical action tool call ({ToolNames.CharacterNavigation}, {ToolNames.UserKeyboardInput}, {ToolNames.UserMouseInput}).\n- Batch actions: once you identify a target path, do navigate + interact + verify in the same turn.\n\n## 3. Termination\nConclude PASS/FAIL/INCONCLUSIVE with evidence from observed world state (prompt states, GUI text, counts, attributes). Once you have a conclusion, your final response should be in the format of \n{\n  \"test_result\": \"PASS\" | \"FAIL\" | \"INCONCLUSIVE\",\n  \"reason\": \"<why the test passed/failed/is inconclusive>\"\n}\n\n## Cleanup\n1. Remember to call `{ToolNames.StartStopPlay}` to stop the game.\n   a) Call `{ToolNames.StartStopPlay}` with `is_start = false`. If play is already stopped, it should be a no-op.\n2. Report your test conclusion and reasoning.\n\n\n### General tips:\n#### GUI interaction tips\n\n- ALWAYS click buttons using `{ToolNames.UserMouseInput}` with action `mouseButtonClick` and a real `instance_path` you discovered (do not guess names). This shows a visual cursor and click animation.\n  example:\n  {ToolNames.UserMouseInput}(actions: [\n    { action: \"mouseButtonClick\", mouse_button: \"left\", instance_path: \"LocalPlayer.PlayerGui.<ScreenGui>.<...>.<Button>\" }\n  ])\n- NEVER use FireServer() or Activated:Fire() via {ToolNames.ExecuteLuau} — always click the actual buttons.\n- Close menus before moving on — many games block other interactions while a menu is open. Click the close/X button.\n- After keyDown, always send keyUp.\n\n#### Discovering GUI buttons tips\n\nWhen a menu opens, find its buttons:\n```\nlocal lines = {}\nlocal stack = {}\n\nlocal playerGui = game:GetService(\"Players\").LocalPlayer:WaitForChild(\"PlayerGui\")\n\nfor _, gui in playerGui:GetChildren() do\n\tif gui:IsA(\"ScreenGui\") and gui.Enabled then\n\t\ttable.insert(stack, { inst = gui, depth = 0 })\n\tend\nend\n\nwhile #stack > 0 do\n\tlocal node = table.remove(stack)\n\tlocal inst = node.inst\n\tlocal depth = node.depth\n\n\tlocal line = string.rep(\". \", depth) .. inst.Name .. \" [\" .. inst.ClassName .. \"]\"\n\tif inst:IsA(\"TextButton\") or inst:IsA(\"TextLabel\") then\n\t\tline = line .. \" Text=\" .. inst.Text\n\tend\n\ttable.insert(lines, line)\n\n\tlocal children = inst:GetChildren()\n\tfor childIndex = #children, 1, -1 do\n\t\ttable.insert(stack, { inst = children[childIndex], depth = depth + 1 })\n\tend\nend\n\nreturn table.concat(lines, \"\\n\")\n```\n\n#### Interaction tips\nFor interactions, here is the recommended workflow:\n1. **Act**: Press E (keyDown then keyUp), or click a button with `{ToolNames.UserMouseInput}`.\n2. **Check**: After each action, you can inspect for relevant changes depending on the test:\n   - Did a GUI appear? Dump visible GUIs to find buttons.\n   - Did the console show a purchase/event message? Use `{ToolNames.GetConsoleOutput}`.\n   - Did a game value change? Use `{ToolNames.ExecuteLuau}` to check.\n   - Did the player position change?\n\n#### Reasoning tips\n- Don't repeat failed tool calls — if it failed, something is wrong. Diagnose, don't retry blindly.\n- `{ToolNames.ExecuteLuau}` code must always end with a `return` statement."]
       46 CALL                             R7 1 1
       47 SETTABLEKS                       R7 R6 K15 ["systemMessage"]
       49 NEWTABLE                         R7 0 11
       51 GETTABLEKS                       R8 R5 K25 ["ExecuteLuau"]
       53 GETTABLEKS                       R9 R5 K26 ["FileSearch"]
       55 GETTABLEKS                       R10 R5 K27 ["GameTree"]
       57 GETTABLEKS                       R11 R5 K28 ["GrepSearch"]
       59 GETTABLEKS                       R12 R5 K29 ["ReadFile"]
       61 GETTABLEKS                       R13 R5 K30 ["InspectInstance"]
       63 GETTABLEKS                       R14 R5 K31 ["StartStopPlay"]
       65 GETTABLEKS                       R15 R5 K32 ["GetConsoleOutput"]
       67 GETTABLEKS                       R16 R5 K33 ["UserKeyboardInput"]
       69 GETTABLEKS                       R17 R5 K34 ["UserMouseInput"]
       71 GETTABLEKS                       R18 R5 K35 ["CharacterNavigation"]
       73 SETLIST                          R7 R8 11 [1]
       75 SETTABLEKS                       R7 R6 K16 ["allowedTools"]
       77 GETTABLEKS                       R7 R1 K36 ["FIntPlaytestMaxToolCalls"]
       79 SETTABLEKS                       R7 R6 K17 ["maxToolCalls"]
       81 GETTABLEKS                       R7 R1 K37 ["FStringPlaytestModelName"]
       83 SETTABLEKS                       R7 R6 K18 ["model"]
       85 GETTABLEKS                       R7 R1 K38 ["FStringPlaytestConversationURL"]
       87 SETTABLEKS                       R7 R6 K19 ["conversationUrl"]
       89 RETURN                           R6 1
