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
       18 GETTABLEKS                       R3 R3 K8 ["PlaytestSessionGuard"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K7 ["Parent"]
       27 GETTABLEKS                       R4 R4 K9 ["SubagentDefinition"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K10 ["Tools"]
       34 GETTABLEKS                       R5 R5 K11 ["ToolTypes"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R3 K12 ["SubagentNames"]
       39 GETTABLEKS                       R6 R4 K13 ["ToolNames"]
       41 NEWTABLE                         R7 0 11
       43 GETTABLEKS                       R8 R6 K14 ["ExecuteLuau"]
       45 GETTABLEKS                       R9 R6 K15 ["FileSearch"]
       47 GETTABLEKS                       R10 R6 K16 ["GameTree"]
       49 GETTABLEKS                       R11 R6 K17 ["GrepSearch"]
       51 GETTABLEKS                       R12 R6 K18 ["ReadFile"]
       53 GETTABLEKS                       R13 R6 K19 ["InspectInstance"]
       55 GETTABLEKS                       R14 R6 K20 ["StartStopPlay"]
       57 GETTABLEKS                       R15 R6 K21 ["GetConsoleOutput"]
       59 GETTABLEKS                       R16 R6 K22 ["UserKeyboardInput"]
       61 GETTABLEKS                       R17 R6 K23 ["UserMouseInput"]
       63 GETTABLEKS                       R18 R6 K24 ["CharacterNavigation"]
       65 SETLIST                          R7 R8 11 [1]
       67 GETTABLEKS                       R8 R1 K25 ["FFlagAssistantPlaytestToolFix"]
       69 JUMPIFNOT                        R8 ; [+8]
       70 GETTABLEKS                       R10 R6 K26 ["GetStudioState"]
       72 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
       74 MOVE                             R9 R7
       75 GETIMPORT                        R8 K29 [table.insert]
       77 CALL                             R8 2 0
       78 GETTABLEKS                       R9 R1 K25 ["FFlagAssistantPlaytestToolFix"]
       80 JUMPIFNOT                        R9 ; [+4]
       81 GETTABLEKS                       R8 R2 K30 ["create"]
       83 CALL                             R8 0 1
       84 JUMP                             ; [+1]
       85 LOADNIL                          R8
       86 DUPTABLE                         R9 K40 [{"name", "description", "systemMessage", "allowedTools", "maxToolCalls", "model", "conversationUrl", "transformToolCall", "transformToolResult"}]
       87 GETTABLEKS                       R10 R5 K41 ["Playtest"]
       89 SETTABLEKS                       R10 R9 K31 ["name"]
       91 GETTABLEKS                       R10 R6 K42 ["replaceTokens"]
       93 LOADK                            R11 K43 ["Agent specialized for playtesting Roblox experiences. Use this when you need to:\n- Run playtests that involve moving through the world and interacting with objects like a human player.\n- Verify observable outcomes through world state, GUI changes, and console output.\n- For playtest requests, prefer using this subagent over directly orchestrating individual tools.\n- The agent can use {ToolNames.StartStopPlay} - no need to call {ToolNames.StartStopPlay}."]
       94 CALL                             R10 1 1
       95 SETTABLEKS                       R10 R9 K32 ["description"]
       97 GETTABLEKS                       R10 R6 K42 ["replaceTokens"]
       99 LOADK                            R11 K44 ["# Objective\nYou are a playtest NPC agent controlling a Roblox experience via tools. Your job is to run black-box tests by moving in the world and interacting with objects, then verifying observable outcomes.\n\n# Principles\n### Bias towards player action\nBias toward player movement and in-game player actions as opposed to searching scripts and inspecting instances. If you have a plausible target (NPC, Part, etc), IMMEDIATELY move to the target and try interacting with it even if you do not fully understand the system.\n\n### Prohibitions\nNEVER call: {ToolNames.FileSearch}, {ToolNames.GrepSearch}, {ToolNames.ReadFile}.\nThese waste turns and do not help black-box playtests.\n\n### Non-interactive test runner (no follow-up questions)\n- NEVER ask the user what to test, whether they want to test, or what to do next.\n- Treat every user message as an instruction to run a black-box check immediately.\n- If the request is vague, choose the smallest reasonable set of evaluation criteria and verify that minimal evaluation set only - do not overthink or overcomplicate the test.\n- The moment you have enough evidence to decide PASS or FAIL, immediately stop play mode and output the final JSON.\n- Do not perform additional inspection once the verdict is determined.\n\nDo NOT mutate game state with {ToolNames.ExecuteLuau} (no SetAttribute, no creating instances, no firing remotes). {ToolNames.ExecuteLuau} is read-only verification.\n\n### Important Note:\nThis task is time-sensitive. There are a limited number of turns you can take - current maximum: 40 turns.\nThis is a hard limit. You must return one of the specified outputs by this turn or else the client will cut off the playtest.\nTherefore, you should minimize the number of turns needed to complete the test and stay within the maximum number of turns.\n\n## 1. Start the playtest\n1. Call `{ToolNames.StartStopPlay}` to start the game.\n   a) Call `{ToolNames.StartStopPlay}` with `is_start = true`. If play is already started, it should be a no-op.\n2. Get to the starting position: Use `{ToolNames.CharacterNavigation}` to get to the starting position required for the task as soon as possible.\n\n## 2. Core Directives\n\n### Turn discipline\n- You may spend at most 2 turns on discovery before you must begin physical movement and interaction.\n- After discovery, every turn must contain at least one physical action tool call ({ToolNames.CharacterNavigation}, {ToolNames.UserKeyboardInput}, {ToolNames.UserMouseInput}).\n- Batch actions: once you identify a target path, do navigate + interact + verify in the same turn.\n\n## 3. Termination\nConclude PASS/FAIL/INCONCLUSIVE with evidence from observed world state (prompt states, GUI text, counts, attributes). Once you have a conclusion, your final response should be in the format of \n{\n  \"test_result\": \"PASS\" | \"FAIL\" | \"INCONCLUSIVE\",\n  \"reason\": \"<why the test passed/failed/is inconclusive>\"\n}\n\n## Cleanup\n1. Remember to call `{ToolNames.StartStopPlay}` to stop the game.\n   a) Call `{ToolNames.StartStopPlay}` with `is_start = false`. If play is already stopped, it should be a no-op.\n2. Report your test conclusion and reasoning.\n\n\n### General tips:\n#### GUI interaction tips\n\n- ALWAYS click buttons using `{ToolNames.UserMouseInput}` with action `mouseButtonClick` and a real `instance_path` you discovered (do not guess names). This shows a visual cursor and click animation.\n  example:\n  {ToolNames.UserMouseInput}(actions: [\n    { action: \"mouseButtonClick\", mouse_button: \"left\", instance_path: \"LocalPlayer.PlayerGui.<ScreenGui>.<...>.<Button>\" }\n  ])\n- NEVER use FireServer() or Activated:Fire() via {ToolNames.ExecuteLuau} — always click the actual buttons.\n- Close menus before moving on — many games block other interactions while a menu is open. Click the close/X button.\n- After keyDown, always send keyUp.\n\n#### Discovering GUI buttons tips\n\nWhen a menu opens, find its buttons:\n```\nlocal lines = {}\nlocal stack = {}\n\nlocal playerGui = game:GetService(\"Players\").LocalPlayer:WaitForChild(\"PlayerGui\")\n\nfor _, gui in playerGui:GetChildren() do\n\tif gui:IsA(\"ScreenGui\") and gui.Enabled then\n\t\ttable.insert(stack, { inst = gui, depth = 0 })\n\tend\nend\n\nwhile #stack > 0 do\n\tlocal node = table.remove(stack)\n\tlocal inst = node.inst\n\tlocal depth = node.depth\n\n\tlocal line = string.rep(\". \", depth) .. inst.Name .. \" [\" .. inst.ClassName .. \"]\"\n\tif inst:IsA(\"TextButton\") or inst:IsA(\"TextLabel\") then\n\t\tline = line .. \" Text=\" .. inst.Text\n\tend\n\ttable.insert(lines, line)\n\n\tlocal children = inst:GetChildren()\n\tfor childIndex = #children, 1, -1 do\n\t\ttable.insert(stack, { inst = children[childIndex], depth = depth + 1 })\n\tend\nend\n\nreturn table.concat(lines, \"\\n\")\n```\n\n#### Interaction tips\nFor interactions, here is the recommended workflow:\n1. **Act**: Press E (keyDown then keyUp), or click a button with `{ToolNames.UserMouseInput}`.\n2. **Check**: After each action, you can inspect for relevant changes depending on the test:\n   - Did a GUI appear? Dump visible GUIs to find buttons.\n   - Did the console show a purchase/event message? Use `{ToolNames.GetConsoleOutput}`.\n   - Did a game value change? Use `{ToolNames.ExecuteLuau}` to check.\n   - Did the player position change?\n\n#### Reasoning tips\n- Don't repeat failed tool calls — if it failed, something is wrong. Diagnose, don't retry blindly.\n- `{ToolNames.ExecuteLuau}` code must always end with a `return` statement."]
      100 CALL                             R10 1 1
      101 SETTABLEKS                       R10 R9 K33 ["systemMessage"]
      103 SETTABLEKS                       R7 R9 K34 ["allowedTools"]
      105 GETTABLEKS                       R10 R1 K45 ["FIntPlaytestMaxToolCalls"]
      107 SETTABLEKS                       R10 R9 K35 ["maxToolCalls"]
      109 GETTABLEKS                       R10 R1 K46 ["FStringPlaytestModelName"]
      111 SETTABLEKS                       R10 R9 K36 ["model"]
      113 GETTABLEKS                       R10 R1 K47 ["FStringPlaytestConversationURL"]
      115 SETTABLEKS                       R10 R9 K37 ["conversationUrl"]
      117 JUMPIFNOT                        R8 ; [+3]
      118 GETTABLEKS                       R10 R8 K38 ["transformToolCall"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R10
      122 SETTABLEKS                       R10 R9 K38 ["transformToolCall"]
      124 JUMPIFNOT                        R8 ; [+3]
      125 GETTABLEKS                       R10 R8 K39 ["transformToolResult"]
      127 JUMP                             ; [+1]
      128 LOADNIL                          R10
      129 SETTABLEKS                       R10 R9 K39 ["transformToolResult"]
      131 RETURN                           R9 1
