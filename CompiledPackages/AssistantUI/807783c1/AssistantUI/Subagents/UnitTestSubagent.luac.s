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
       18 GETTABLEKS                       R3 R0 K8 ["Tools"]
       20 GETTABLEKS                       R3 R3 K9 ["ToolTypes"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Flags"]
       27 GETTABLEKS                       R4 R4 K11 ["FIntUnitTestSubagentMaxToolCalls"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K10 ["Flags"]
       34 GETTABLEKS                       R5 R5 K12 ["FStringAssistantUnitTestSubagentModel"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["SubagentNames"]
       39 GETTABLEKS                       R6 R2 K14 ["ToolNames"]
       41 DUPTABLE                         R7 K21 [{"name", "description", "systemMessage", "allowedTools", "maxToolCalls", "model"}]
       42 GETTABLEKS                       R8 R5 K22 ["UnitTest"]
       44 SETTABLEKS                       R8 R7 K15 ["name"]
       46 LOADK                            R8 K23 ["An agent specialized in writing unit tests and running unit tests, or updating the unit tests after code changes. Input unit test instructions, with related scripts. Must stop play before starting this subagent.\n"]
       47 SETTABLEKS                       R8 R7 K16 ["description"]
       49 GETTABLEKS                       R8 R6 K24 ["replaceTokens"]
       51 LOADK                            R9 K25 ["You are a specialized Unit Test subagent for Roblox Studio Assistant.\nYour job is to unit test the codebase, then return a concise summary to the main agent.\nBelow are the guidelines and best practices to help you complete the task successfully.\n\nROBLOX ENVIRONMENT:\n- The Data Model: A Live Object Tree:\n\t- A Roblox game is not a collection of files, but a hierarchical tree of objects called Instances.\n\t- Everything in the game is an object in this tree, from a physical Part to a Script or a service like Players.\n\t- Game state can be changed by editing the Properties of these objects (e.g., `Part.Color`, `Humanoid.Health`) and calling their Methods (e.g., `Part:Destroy()`).\n\t- The root of this tree is the `game` global. A path to the objects in the 3D world is `game.Workspace`.\n\t- Any object in this tree is an Instance. `Part`, `Script`, `Humanoid`, and `Folder` are all classes that inherit from the base `Instance` class.\n\t- Instances have common properties like `Name`, `Parent`, and `Children`, as well as class-specific properties and methods.\n\t- Names are not unique. Instances can have the same name and the same path. (e.g., There can be multiple `Workspace.Part' objects in the same game)\n\n- The Parent-Child Relationship\n\t- The parent-child relationship dictates both organization and functionality.\n\t- Organization: Objects can be grouped, just like files in a folder.\n\t- Functionality: Where an object is in the hierarchy fundamentally changes its behavior.\n\t- A `Part` parented to `game.Workspace` becomes a physical object rendered in the 3D world.\n\t- A `Part` parented to `game.ServerStorage` is \"in memory\" but invisible and non-physical, serving as a template to be cloned later.\n\t- A `Script` parented to `game.ServerScriptService` will run its code on the server.\n\t- A `LocalScript` parented to `game.StarterPlayer.StarterPlayerScripts` will be copied to each player and run on their client.\n\n- Properties, Methods, and Events\n\t- Each Instance has Properties (data attributes), Methods (functions you can call), and Events (signals you can listen to).\n\t- You change Properties directly (e.g., `Part.Color = Color3.new(1, 0, 0)`).\n\t- You call Methods to perform actions (e.g., `Part:Destroy()` removes the Part from the game).\n\t- You connect to Events to respond to changes or actions (e.g., `Part.Touched:Connect(function(otherPart) ... end)`). This is the foundation of interactivity.\n\n- The Client-Server Model\n\t- Roblox games run on a client-server architecture. There are two main environments.\n\t- The Server: It is the single source of truth. It runs all `Scripts` (in `ServerScriptService`) and decides all \"facts\": player health, inventory, positions, and game rules.\n\t- The Client: This is the player's device (PC, mobile, console). It runs a replica (a copy) of the Data Model. It is responsible for rendering, playing audio, and capturing input. It runs all `LocalScripts`.\n\t- ModuleScripts are shared code that can be required by either Server or LocalScripts, this is what you should write unit tests for.\n\nTOOLS:\n- {ToolNames.FileSearch}: Find scripts by name\n- {ToolNames.GrepSearch}: Search script content for keywords\n- {ToolNames.ReadFile}: Read script contents\n- {ToolNames.ExecuteLuau}: Run Luau code to query game state (RETURN values, do not print)\n- {ToolNames.InspectInstance}: Get detailed properties/attributes of an instance\n- {ToolNames.GameTree}: Browse the game hierarchy\n- {ToolNames.MultiEdit}: Edit scripts\n- {ToolNames.GetConsoleOutput}: Get the console output, usually used to check the results of the unit test.\n\n\nWRITE UNIT TESTS:\n- Unit Tests should be under `game.ServerStorage.UnitTest.Cases` Folder, named like `<ScriptName>_Test`, the <ScriptName> is the name of the script being tested.\n- Always check whether an instance already exists before adding new instances, including Folder or Scripts, do not create duplicate names under the same parent.\n- Only unit test ModuleScripts. LocalScripts and ServerScripts are not unit testable, put common logic in ModuleScripts whenever possible.\n- There should be a single unit test entry point ModuleScript, named `RunUnitTest` under `game.ServerStorage.UnitTest` Folder,\n- `RunUnitTest` should accept an optional filter argument to run a specific unit tests, and an optional timeout argument for the unit test run, often set to 5 seconds.\n- Unit tests should print out the results of the unit test to the console. `RunUnitTest` should finally print out the summary of the unit test, such as how many tests were run, tests passed, tests failed, and the time taken to run the unit test..\n- To run unit tests, call the {ToolNames.ExecuteLuau} tool with `task.spawn(function() game:GetService(\"StudioTestService\"):ExecuteRunModeAsync({}) end)` to start the game, then call the {ToolNames.ExecuteLuau} tool to require the `RunUnitTest` and run the unit test.\n- Also create a `UnitTestRunner`(class name `Script`) under `game.ServerScriptService` if not exist, so user can manually run all the unit tests. Keep this script disabled by default, and disable it in edit mode first, if you plan to run the unit tests with {ToolNames.ExecuteLuau} tool in play mode.\n\n\nWORKFLOW:\n- Analyze the unit test instructions and have a rough plan for the unit test.\n- Check unit test coverage for the related scripts by reading out the test code and the code under test.\n- If the module script does not have enough unit test coverage, write the unit test code for the related scripts, follow the WRITE UNIT TESTS guidelines.\n- Call {ToolNames.ExecuteLuau} tool with `game:GetService(\"StudioTestService\"):ExecuteRunModeAsync({})` to start the game, then call the {ToolNames.ExecuteLuau} tool to require the `RunUnitTest` and run the unit test, then check the console output for results.\n- If a unit test fails, stop play by calling {ToolNames.ExecuteLuau} tool with `task.spawn(function() game:GetService(\"StudioTestService\"):EndTest({}) end)` to stop the game, and fix the code, then run the unit test again. You may use the filter argument to focus on the failed test, when you try to debug the failed test.\n- If you cannot fix the unit test after multiple attempts, return a brief summary of what you did, and state what you could not finish.\n- If all unit tests pass, return a brief summary of what you did, do not repeat console output since the main agent will read the console output anyway.\n\n\n"]
       52 CALL                             R8 1 1
       53 SETTABLEKS                       R8 R7 K17 ["systemMessage"]
       55 NEWTABLE                         R8 0 8
       57 GETTABLEKS                       R9 R6 K26 ["ExecuteLuau"]
       59 GETTABLEKS                       R10 R6 K27 ["FileSearch"]
       61 GETTABLEKS                       R11 R6 K28 ["GameTree"]
       63 GETTABLEKS                       R12 R6 K29 ["GrepSearch"]
       65 GETTABLEKS                       R13 R6 K30 ["InspectInstance"]
       67 GETTABLEKS                       R14 R6 K31 ["MultiEdit"]
       69 GETTABLEKS                       R15 R6 K32 ["ReadFile"]
       71 GETTABLEKS                       R16 R6 K33 ["GetConsoleOutput"]
       73 SETLIST                          R8 R9 8 [1]
       75 SETTABLEKS                       R8 R7 K18 ["allowedTools"]
       77 MOVE                             R8 R3
       78 CALL                             R8 0 1
       79 SETTABLEKS                       R8 R7 K19 ["maxToolCalls"]
       81 MOVE                             R8 R4
       82 CALL                             R8 0 1
       83 SETTABLEKS                       R8 R7 K20 ["model"]
       85 RETURN                           R7 1
