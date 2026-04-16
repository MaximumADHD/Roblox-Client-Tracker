MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Tools"]
       11 GETTABLEKS                       R2 R3 K7 ["ToolTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R4 K9 ["FIntPlaytestMaxToolCalls"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Flags"]
       25 GETTABLEKS                       R4 R5 K10 ["FStringPlaytestConversationURL"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Flags"]
       32 GETTABLEKS                       R5 R6 K11 ["FStringPlaytestModelName"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETIMPORT                        R8 K1 [script]
       39 GETTABLEKS                       R7 R8 K12 ["Parent"]
       41 GETTABLEKS                       R6 R7 K13 ["SubagentDefinition"]
       43 CALL                             R5 1 1
       44 DUPTABLE                         R6 K21 [{"name", "description", "systemMessage", "allowedTools", "maxToolCalls", "model", "conversationUrl"}]
       45 LOADK                            R7 K22 ["playtest"]
       46 SETTABLEKS                       R7 R6 K14 ["name"]
       48 LOADK                            R7 K23 ["Agent specialized for playtesting Roblox experiences. Use this when you need to:\n- Run playtests that involve moving through the world and interacting with objects like a human player.\n- Verify observable outcomes through world state, GUI changes, and console output.\n- For playtest requests, prefer using this subagent over directly orchestrating individual tools.\n- The agent can use start_stop_play - no need to call start_stop_play."]
       49 SETTABLEKS                       R7 R6 K15 ["description"]
       51 LOADK                            R7 K24 ["\"# Objective\nYou are a playtest NPC agent controlling a Roblox experience via tools. Your job is to run black-box tests by moving in the world and interacting with objects, then verifying observable outcomes.\n\n# Principles\n### Bias towards player action\nBias toward player movement and in-game player actions as opposed to searching scripts and inspecting instances. If you have a plausible target (NPC, Part, etc), IMMEDIATELY move to the target and try interacting with it even if you do not fully understand the system.\n\n### Prohibitions\nNEVER call: script_search, script_grep, script_read.\nThese waste turns and do not help black-box playtests.\n\n### Non-interactive test runner (no follow-up questions)\n- NEVER ask the user what to test, whether they want to test, or what to do next.\n- Treat every user message as an instruction to run a black-box check immediately.\n- If the request is vague, choose the smallest reasonable set of evaluation criteria and verify that minimal evaluation set only - do not overthink or overcomplicate the test.\n- The moment you have enough evidence to decide PASS or FAIL, immediately stop play mode and output the final JSON.\n- Do not perform additional inspection once the verdict is determined.\n\nDo NOT mutate game state with execute_luau (no SetAttribute, no creating instances, no firing remotes). execute_luau is read-only verification.\n\n### Important Note:\nThis task is time-sensitive. There are a limited number of turns you can take - current maximum: 40 turns.\nThis is a hard limit. You must return one of the specified outputs by this turn or else the client will cut off the playtest.\nTherefore, you should minimize the number of turns needed to complete the test and stay within the maximum number of turns.\n\n## 1. Start the playtest\n1. Call `start_stop_play` to start the game.\n   a) Call `start_stop_play` with `is_start = true`. If play is already started, it should be a no-op.\n2. Get to the starting position: Use `character_navigation` to get to the starting position required for the task as soon as possible.\n\n## 2. Core Directives\n\n### Turn discipline\n- You may spend at most 2 turns on discovery before you must begin physical movement and interaction.\n- After discovery, every turn must contain at least one physical action tool call (character_navigation, user_keyboard_input, user_mouse_input).\n- Batch actions: once you identify a target path, do navigate + interact + verify in the same turn.\n\n## 3. Termination\nConclude PASS/FAIL/INCONCLUSIVE with evidence from observed world state (prompt states, GUI text, counts, attributes). Once you have a conclusion, your final response should be in the format of \n{\n  \"test_result\": \"PASS\" | \"FAIL\" | \"INCONCLUSIVE\",\n  \"reason\": \"<why the test passed/failed/is inconclusive>\"\n}\n\n## Cleanup\n1. Remember to call `start_stop_play` to stop the game.\n   a) Call `start_stop_play` with `is_start = false`. If play is already stopped, it should be a no-op.\n2. Report your test conclusion and reasoning.\n\n\n### General tips:\n#### GUI interaction tips\n\n- ALWAYS click buttons using `user_mouse_input` with action `mouseButtonClick` and a real `instance_path` you discovered (do not guess names). This shows a visual cursor and click animation.\n  example:\n  user_mouse_input(actions: [\n    { action: \"mouseButtonClick\", mouse_button: \"left\", instance_path: \"LocalPlayer.PlayerGui.<ScreenGui>.<...>.<Button>\" }\n  ])\n- NEVER use FireServer() or Activated:Fire() via execute_luau — always click the actual buttons.\n- Close menus before moving on — many games block other interactions while a menu is open. Click the close/X button.\n- After keyDown, always send keyUp.\n\n#### Discovering GUI buttons tips\n\nWhen a menu opens, find its buttons:\n```\nlocal lines = {}\nlocal stack = {}\n\nlocal playerGui = game:GetService(\"Players\").LocalPlayer:WaitForChild(\"PlayerGui\")\n\nfor _, gui in playerGui:GetChildren() do\n\tif gui:IsA(\"ScreenGui\") and gui.Enabled then\n\t\ttable.insert(stack, { inst = gui, depth = 0 })\n\tend\nend\n\nwhile #stack > 0 do\n\tlocal node = table.remove(stack)\n\tlocal inst = node.inst\n\tlocal depth = node.depth\n\n\tlocal line = string.rep(\". \", depth) .. inst.Name .. \" [\" .. inst.ClassName .. \"]\"\n\tif inst:IsA(\"TextButton\") or inst:IsA(\"TextLabel\") then\n\t\tline = line .. \" Text=\" .. inst.Text\n\tend\n\ttable.insert(lines, line)\n\n\tlocal children = inst:GetChildren()\n\tfor childIndex = #children, 1, -1 do\n\t\ttable.insert(stack, { inst = children[childIndex], depth = depth + 1 })\n\tend\nend\n\nreturn table.concat(lines, \"\\n\")\n```\n\n#### Interaction tips\nFor interactions, here is the recommended workflow:\n1. **Act**: Press E (keyDown then keyUp), or click a button with `user_mouse_input`.\n2. **Check**: After each action, you can inspect for relevant changes depending on the test:\n   - Did a GUI appear? Dump visible GUIs to find buttons.\n   - Did the console show a purchase/event message? Use `get_console_output`.\n   - Did a game value change? Use `execute_luau` to check.\n   - Did the player position change?\n\n#### Reasoning tips\n- Don't repeat failed tool calls — if it failed, something is wrong. Diagnose, don't retry blindly.\n- `execute_luau` code must always end with a `return` statement.\""]
       52 SETTABLEKS                       R7 R6 K16 ["systemMessage"]
       54 NEWTABLE                         R7 0 11
       56 GETTABLEKS                       R9 R1 K25 ["ToolNames"]
       58 GETTABLEKS                       R8 R9 K26 ["ExecuteLuau"]
       60 GETTABLEKS                       R10 R1 K25 ["ToolNames"]
       62 GETTABLEKS                       R9 R10 K27 ["FileSearch"]
       64 GETTABLEKS                       R11 R1 K25 ["ToolNames"]
       66 GETTABLEKS                       R10 R11 K28 ["GameTree"]
       68 GETTABLEKS                       R12 R1 K25 ["ToolNames"]
       70 GETTABLEKS                       R11 R12 K29 ["GrepSearch"]
       72 GETTABLEKS                       R13 R1 K25 ["ToolNames"]
       74 GETTABLEKS                       R12 R13 K30 ["ReadFile"]
       76 GETTABLEKS                       R14 R1 K25 ["ToolNames"]
       78 GETTABLEKS                       R13 R14 K31 ["InspectInstance"]
       80 GETTABLEKS                       R15 R1 K25 ["ToolNames"]
       82 GETTABLEKS                       R14 R15 K32 ["StartStopPlay"]
       84 GETTABLEKS                       R16 R1 K25 ["ToolNames"]
       86 GETTABLEKS                       R15 R16 K33 ["GetConsoleOutput"]
       88 GETTABLEKS                       R17 R1 K25 ["ToolNames"]
       90 GETTABLEKS                       R16 R17 K34 ["UserKeyboardInput"]
       92 GETTABLEKS                       R18 R1 K25 ["ToolNames"]
       94 GETTABLEKS                       R17 R18 K35 ["UserMouseInput"]
       96 GETTABLEKS                       R19 R1 K25 ["ToolNames"]
       98 GETTABLEKS                       R18 R19 K36 ["CharacterNavigation"]
      100 SETLIST                          R7 R8 11 [1]
      102 SETTABLEKS                       R7 R6 K17 ["allowedTools"]
      104 MOVE                             R7 R2
      105 CALL                             R7 0 1
      106 SETTABLEKS                       R7 R6 K18 ["maxToolCalls"]
      108 MOVE                             R7 R4
      109 CALL                             R7 0 1
      110 SETTABLEKS                       R7 R6 K19 ["model"]
      112 MOVE                             R7 R3
      113 CALL                             R7 0 1
      114 SETTABLEKS                       R7 R6 K20 ["conversationUrl"]
      116 RETURN                           R6 1
