PROTO_0:
        0 JUMPIFEQKNIL                     R1 ; [+40]
        2 JUMPIFEQKS                       R1 K0 [""] ; [+38]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["findInstanceByPath"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKNIL                  R2 ; [+11]
       11 GETIMPORT                        R3 K3 [error]
       13 LOADK                            R5 K4 ["could not resolve instance_path \"%*\"; the Model must be under Workspace, e.g. \"Workspace.Goblin\"."]
       14 MOVE                             R7 R1
       15 NAMECALL                         R5 R5 K5 ["format"]
       17 CALL                             R5 2 1
       18 MOVE                             R4 R5
       19 LOADN                            R5 0
       20 CALL                             R3 2 0
       21 LOADK                            R5 K6 ["Model"]
       22 NAMECALL                         R3 R2 K7 ["IsA"]
       24 CALL                             R3 2 1
       25 JUMPIF                           R3 ; [+14]
       26 GETIMPORT                        R3 K3 [error]
       28 LOADK                            R5 K8 ["requires a Model; instance_path \"%*\" resolved to a %* (\"%*\")."]
       29 MOVE                             R7 R1
       30 GETTABLEKS                       R8 R2 K9 ["ClassName"]
       32 GETTABLEKS                       R9 R2 K10 ["Name"]
       34 NAMECALL                         R5 R5 K5 ["format"]
       36 CALL                             R5 4 1
       37 MOVE                             R4 R5
       38 LOADN                            R5 0
       39 CALL                             R3 2 0
       40 RETURN                           R2 1
       41 GETTABLEKS                       R2 R0 K11 ["selection"]
       43 GETTABLEKS                       R2 R2 K12 ["get"]
       45 CALL                             R2 0 1
       46 LENGTH                           R3 R2
       47 JUMPIFEQKN                       R3 K13 [1] ; [+11]
       49 GETIMPORT                        R3 K3 [error]
       51 LOADK                            R5 K14 ["needs either an instance_path argument or exactly one selected Model; got %* selected."]
       52 LENGTH                           R7 R2
       53 NAMECALL                         R5 R5 K5 ["format"]
       55 CALL                             R5 2 1
       56 MOVE                             R4 R5
       57 LOADN                            R5 0
       58 CALL                             R3 2 0
       59 GETTABLEN                        R3 R2 1
       60 LOADK                            R6 K6 ["Model"]
       61 NAMECALL                         R4 R3 K7 ["IsA"]
       63 CALL                             R4 2 1
       64 JUMPIF                           R4 ; [+13]
       65 GETIMPORT                        R4 K3 [error]
       67 LOADK                            R6 K15 ["requires a Model; selected instance \"%*\" is a %*."]
       68 GETTABLEKS                       R8 R3 K10 ["Name"]
       70 GETTABLEKS                       R9 R3 K9 ["ClassName"]
       72 NAMECALL                         R6 R6 K5 ["format"]
       74 CALL                             R6 3 1
       75 MOVE                             R5 R6
       76 LOADN                            R6 0
       77 CALL                             R4 2 0
       78 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["instance_path"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["tools"]
        9 GETTABLEKS                       R1 R1 K2 ["avatarAutoSetup"]
       11 GETTABLEKS                       R1 R1 K3 ["autoSetupAsync"]
       13 DUPTABLE                         R2 K5 [{"model"}]
       14 SETTABLEKS                       R0 R2 K4 ["model"]
       16 CALL                             R1 1 1
       17 DUPTABLE                         R2 K8 [{"inputModel", "outputModel"}]
       18 SETTABLEKS                       R0 R2 K6 ["inputModel"]
       20 SETTABLEKS                       R1 R2 K7 ["outputModel"]
       22 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 2
        7 JUMPIF                           R2 ; [+5]
        8 GETIMPORT                        R4 K3 [error]
       10 MOVE                             R5 R3
       11 LOADN                            R6 0
       12 CALL                             R4 2 0
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K4 ["selection"]
       16 GETTABLEKS                       R4 R4 K5 ["set"]
       18 NEWTABLE                         R5 0 1
       20 GETTABLEKS                       R6 R3 K6 ["outputModel"]
       22 SETLIST                          R5 R6 1 [1]
       24 CALL                             R4 1 0
       25 DUPTABLE                         R4 K9 [{"inputModelName", "outputModelName"}]
       26 GETTABLEKS                       R5 R3 K10 ["inputModel"]
       28 GETTABLEKS                       R5 R5 K11 ["Name"]
       30 SETTABLEKS                       R5 R4 K7 ["inputModelName"]
       32 GETTABLEKS                       R5 R3 K6 ["outputModel"]
       34 GETTABLEKS                       R5 R5 K11 ["Name"]
       36 SETTABLEKS                       R5 R4 K8 ["outputModelName"]
       38 RETURN                           R4 1

PROTO_3:
        0 DUPTABLE                         R3 K1 [{"instance_path"}]
        1 GETTABLEKS                       R4 R0 K0 ["instance_path"]
        3 SETTABLEKS                       R4 R3 K0 ["instance_path"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["runWithProgressLoop"]
        8 GETTABLEKS                       R5 R2 K3 ["sendProgress"]
       10 GETUPVAL                         R6 1
       11 LOADNIL                          R7
       12 MOVE                             R8 R3
       13 CALL                             R4 4 1
       14 GETUPVAL                         R5 2
       15 CALL                             R5 0 1
       16 LOADK                            R8 K4 ["Auto-setup complete: input \"%*\" -> output \"%*\"."]
       17 GETTABLEKS                       R10 R4 K5 ["inputModelName"]
       19 GETTABLEKS                       R11 R4 K6 ["outputModelName"]
       21 NAMECALL                         R8 R8 K7 ["format"]
       23 CALL                             R8 3 1
       24 MOVE                             R7 R8
       25 NAMECALL                         R5 R5 K8 ["addText"]
       27 CALL                             R5 2 1
       28 NAMECALL                         R5 R5 K9 ["build"]
       30 CALL                             R5 1 -1
       31 RETURN                           R5 -1

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"type"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 RETURN                           R0 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 LOADK                            R5 K2 ["AvatarAutoSetupTool_runAutoSetup"]
        5 NEWCLOSURE                       R6 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R2
        8 NAMECALL                         R3 R1 K3 ["OnHostInvokeAsync"]
       10 CALL                             R3 3 1
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R3
       14 CAPTURE                          UPVAL U2
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K4 ["define"]
       18 CALL                             R5 0 1
       19 GETUPVAL                         R7 4
       20 GETTABLEKS                       R7 R7 K5 ["AvatarAutoSetup"]
       22 NAMECALL                         R5 R5 K6 ["setName"]
       24 CALL                             R5 2 1
       25 LOADK                            R7 K7 ["Convert a static body Model into a fully rigged, animatable R15 avatar\nusing Roblox's avatar auto-setup engine. The engine fits the input mesh to\nthe standard R15 skeleton — generating the body-part segmentation,\nskinning, joints, and attachments an avatar needs to move and to wear\nlayered clothing and accessories. The output is a new avatar Model placed\nnext to the input.\n\nUSAGE: pass the input Model's path via `instance_path`. This tool\nresolves the path itself — do NOT call execute_luau to set\nStudio's Selection as a workaround; just pass the path directly.\nThe input Model must live under Workspace; the `path` field returned by\ninspect_instance works as-is for those (e.g. \"Workspace.Goblin\",\n\"Workspace.MyFolder.CyberneticSuperHero_S1_Mesh\").\n\n`instance_path` is technically optional: if omitted, the tool falls back\nto the user's current Studio selection, which must be exactly one Model.\nThat fallback exists for the case where the user manually selected a\nmodel before invoking the tool. In every other case (the user named the\nmodel, you found it via inspect_instance or search, etc.) pass\ninstance_path so you don't burn an extra tool call on selection.\n\nUse this when the user asks to \"set up\", \"rig\", or \"apply auto-setup\"\nto an avatar. Long-running (usually at least 2-3 minutes)."]
       26 NAMECALL                         R5 R5 K8 ["setDescription"]
       28 CALL                             R5 2 1
       29 LOADK                            R7 K9 ["instance_path"]
       30 DUPTABLE                         R8 K14 [{["type"] = "string", ["description"] = "Full Studio path to the input Model, exactly as inspect_instance returns in its `path` field. The Model must be under Workspace. Examples: \"Workspace.Goblin\", \"Workspace.Characters.Wizard\". Always pass this when you know which Model the user means (i.e. always except when the user has manually pre-selected a Model in the explorer). Do NOT call execute_luau to set Selection and then call this tool with no arguments — that wastes a tool call."}]
       31 NAMECALL                         R5 R5 K15 ["addOptionalArgument"]
       33 CALL                             R5 3 1
       34 MOVE                             R7 R4
       35 NAMECALL                         R5 R5 K16 ["setHandler"]
       37 CALL                             R5 2 1
       38 DUPTABLE                         R7 K24 [{["title"] = "Auto Setup Avatar", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       39 NAMECALL                         R5 R5 K25 ["setAnnotations"]
       41 CALL                             R5 2 1
       42 NAMECALL                         R5 R5 K26 ["build"]
       44 CALL                             R5 1 1
       45 DUPTABLE                         R6 K28 [{"transformInitialContent"}]
       46 DUPCLOSURE                       R7 K29 [PROTO_4]
       47 CAPTURE                          UPVAL U5
       48 SETTABLEKS                       R7 R6 K27 ["transformInitialContent"]
       50 DUPTABLE                         R7 K34 [{"toolCallOptions", "definition", "contentWidgets", "streamTransform"}]
       51 DUPTABLE                         R8 K37 [{["resetTimeoutOnProgress"] = True}]
       52 SETTABLEKS                       R8 R7 K30 ["toolCallOptions"]
       54 SETTABLEKS                       R5 R7 K31 ["definition"]
       56 GETUPVAL                         R9 6
       57 GETTABLEKS                       R9 R9 K38 ["FFlagAssistantSplitToolsAndWidgets"]
       59 JUMPIFNOT                        R9 ; [+2]
       60 LOADNIL                          R8
       61 JUMP                             ; [+5]
       62 NEWTABLE                         R8 0 1
       64 GETUPVAL                         R9 5
       65 SETLIST                          R8 R9 1 [1]
       67 SETTABLEKS                       R8 R7 K32 ["contentWidgets"]
       69 GETUPVAL                         R9 6
       70 GETTABLEKS                       R9 R9 K38 ["FFlagAssistantSplitToolsAndWidgets"]
       72 JUMPIFNOT                        R9 ; [+2]
       73 LOADNIL                          R8
       74 JUMP                             ; [+1]
       75 MOVE                             R8 R6
       76 SETTABLEKS                       R8 R7 K33 ["streamTransform"]
       78 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentWidgets"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarAutoSetupContentWidget"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Guest"]
       20 GETTABLEKS                       R3 R3 K10 ["Environment"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Parent"]
       32 GETTABLEKS                       R5 R5 K13 ["ModelContextProtocol"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K14 ["Util"]
       39 GETTABLEKS                       R6 R6 K15 ["TestAutomationUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K16 ["Tools"]
       46 GETTABLEKS                       R7 R7 K17 ["ToolTypes"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Util"]
       53 GETTABLEKS                       R8 R8 K18 ["ToolUtils"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R4 K14 ["Util"]
       58 GETTABLEKS                       R8 R8 K19 ["ToolBuilder"]
       60 GETTABLEKS                       R9 R4 K14 ["Util"]
       62 GETTABLEKS                       R9 R9 K20 ["ToolResult"]
       64 GETTABLEKS                       R10 R6 K21 ["ToolNames"]
       66 DUPCLOSURE                       R11 K22 [PROTO_0]
       67 CAPTURE                          VAL R5
       68 DUPCLOSURE                       R12 K23 [PROTO_5]
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R3
       76 RETURN                           R12 1
