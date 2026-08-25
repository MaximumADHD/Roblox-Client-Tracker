PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["selectedModelRef"]
        2 JUMPIFEQKNIL                     R2 ; [+27]
        4 GETTABLEKS                       R3 R0 K1 ["instances"]
        6 GETTABLEKS                       R3 R3 K2 ["getInstanceFromUniqueId"]
        8 GETTABLEKS                       R4 R2 K3 ["uniqueId"]
       10 CALL                             R3 1 1
       11 JUMPIFEQKNIL                     R3 ; [+6]
       13 LOADK                            R6 K4 ["Model"]
       14 NAMECALL                         R4 R3 K5 ["IsA"]
       16 CALL                             R4 2 1
       17 JUMPIF                           R4 ; [+11]
       18 GETIMPORT                        R4 K7 [error]
       20 LOADK                            R6 K8 ["could not resolve the picked Model \"%*\"; it may have been deleted."]
       21 GETTABLEKS                       R8 R2 K9 ["name"]
       23 NAMECALL                         R6 R6 K10 ["format"]
       25 CALL                             R6 2 1
       26 MOVE                             R5 R6
       27 LOADN                            R6 0
       28 CALL                             R4 2 0
       29 RETURN                           R3 1
       30 GETTABLEKS                       R3 R1 K11 ["instance_path"]
       32 JUMPIFEQKNIL                     R3 ; [+40]
       34 JUMPIFEQKS                       R3 K12 [""] ; [+38]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K13 ["findInstanceByPath"]
       39 MOVE                             R5 R3
       40 CALL                             R4 1 1
       41 JUMPIFNOTEQKNIL                  R4 ; [+11]
       43 GETIMPORT                        R5 K7 [error]
       45 LOADK                            R7 K14 ["could not resolve instance_path \"%*\"; the Model must be under Workspace, e.g. \"Workspace.Goblin\"."]
       46 MOVE                             R9 R3
       47 NAMECALL                         R7 R7 K10 ["format"]
       49 CALL                             R7 2 1
       50 MOVE                             R6 R7
       51 LOADN                            R7 0
       52 CALL                             R5 2 0
       53 LOADK                            R7 K4 ["Model"]
       54 NAMECALL                         R5 R4 K5 ["IsA"]
       56 CALL                             R5 2 1
       57 JUMPIF                           R5 ; [+14]
       58 GETIMPORT                        R5 K7 [error]
       60 LOADK                            R7 K15 ["requires a Model; instance_path \"%*\" resolved to a %* (\"%*\")."]
       61 MOVE                             R9 R3
       62 GETTABLEKS                       R10 R4 K16 ["ClassName"]
       64 GETTABLEKS                       R11 R4 K17 ["Name"]
       66 NAMECALL                         R7 R7 K10 ["format"]
       68 CALL                             R7 4 1
       69 MOVE                             R6 R7
       70 LOADN                            R7 0
       71 CALL                             R5 2 0
       72 RETURN                           R4 1
       73 GETTABLEKS                       R4 R0 K18 ["selection"]
       75 GETTABLEKS                       R4 R4 K19 ["get"]
       77 CALL                             R4 0 1
       78 LENGTH                           R5 R4
       79 JUMPIFEQKN                       R5 K20 [1] ; [+11]
       81 GETIMPORT                        R5 K7 [error]
       83 LOADK                            R7 K21 ["needs either an instance_path argument or exactly one selected Model; got %* selected."]
       84 LENGTH                           R9 R4
       85 NAMECALL                         R7 R7 K10 ["format"]
       87 CALL                             R7 2 1
       88 MOVE                             R6 R7
       89 LOADN                            R7 0
       90 CALL                             R5 2 0
       91 GETTABLEN                        R5 R4 1
       92 LOADK                            R8 K4 ["Model"]
       93 NAMECALL                         R6 R5 K5 ["IsA"]
       95 CALL                             R6 2 1
       96 JUMPIF                           R6 ; [+13]
       97 GETIMPORT                        R6 K7 [error]
       99 LOADK                            R8 K22 ["requires a Model; selected instance \"%*\" is a %*."]
      100 GETTABLEKS                       R10 R5 K17 ["Name"]
      102 GETTABLEKS                       R11 R5 K16 ["ClassName"]
      104 NAMECALL                         R8 R8 K10 ["format"]
      106 CALL                             R8 3 1
      107 MOVE                             R7 R8
      108 LOADN                            R8 0
      109 CALL                             R6 2 0
      110 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["tools"]
        7 GETTABLEKS                       R1 R1 K1 ["avatarAutoSetup"]
        9 GETTABLEKS                       R1 R1 K2 ["autoSetupAsync"]
       11 DUPTABLE                         R2 K4 [{"model"}]
       12 SETTABLEKS                       R0 R2 K3 ["model"]
       14 CALL                             R1 1 1
       15 DUPTABLE                         R2 K7 [{"inputModel", "outputModel"}]
       16 SETTABLEKS                       R0 R2 K5 ["inputModel"]
       18 SETTABLEKS                       R1 R2 K6 ["outputModel"]
       20 RETURN                           R2 1

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
        0 DUPTABLE                         R3 K2 [{"instance_path", "selectedModelRef"}]
        1 GETTABLEKS                       R4 R0 K0 ["instance_path"]
        3 SETTABLEKS                       R4 R3 K0 ["instance_path"]
        5 GETTABLEKS                       R4 R0 K1 ["selectedModelRef"]
        7 SETTABLEKS                       R4 R3 K1 ["selectedModelRef"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["runWithProgressLoop"]
       12 GETTABLEKS                       R5 R2 K4 ["sendProgress"]
       14 GETUPVAL                         R6 1
       15 LOADNIL                          R7
       16 MOVE                             R8 R3
       17 CALL                             R4 4 1
       18 GETUPVAL                         R5 2
       19 CALL                             R5 0 1
       20 LOADK                            R8 K5 ["Auto-setup complete: input \"%*\" -> output \"%*\"."]
       21 GETTABLEKS                       R10 R4 K6 ["inputModelName"]
       23 GETTABLEKS                       R11 R4 K7 ["outputModelName"]
       25 NAMECALL                         R8 R8 K8 ["format"]
       27 CALL                             R8 3 1
       28 MOVE                             R7 R8
       29 NAMECALL                         R5 R5 K9 ["addText"]
       31 CALL                             R5 2 1
       32 NAMECALL                         R5 R5 K10 ["build"]
       34 CALL                             R5 1 -1
       35 RETURN                           R5 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["selectedModelRef"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+8]
        4 GETUPVAL                         R1 0
        5 LOADK                            R3 K1 ["AvatarAutoSetup"]
        6 LOADK                            R4 K2 ["ModelRequired"]
        7 NAMECALL                         R1 R1 K3 ["getText"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1
       11 LOADNIL                          R1
       12 RETURN                           R1 1

PROTO_5:
        0 DUPTABLE                         R0 K3 [{"confirmButtonText", "propertyRows", "getDisabledReason"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["AvatarAutoSetup"]
        3 LOADK                            R4 K5 ["InputSetUpAvatar"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["confirmButtonText"]
        9 NEWTABLE                         R1 0 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K7 ["createInstanceRowDefinition"]
       14 DUPTABLE                         R3 K12 [{["label"], ["prop"] = "selectedModelRef", ["options"]}]
       15 GETUPVAL                         R4 0
       16 LOADK                            R6 K4 ["AvatarAutoSetup"]
       17 LOADK                            R7 K13 ["InputModel"]
       18 NAMECALL                         R4 R4 K6 ["getText"]
       20 CALL                             R4 3 1
       21 SETTABLEKS                       R4 R3 K8 ["label"]
       23 DUPTABLE                         R4 K16 [{["shouldSelectModel"] = True}]
       24 SETTABLEKS                       R4 R3 K11 ["options"]
       26 CALL                             R2 1 -1
       27 SETLIST                          R1 R2 -1 [1]
       29 SETTABLEKS                       R1 R0 K1 ["propertyRows"]
       31 DUPCLOSURE                       R1 K17 [PROTO_4]
       32 CAPTURE                          UPVAL U0
       33 SETTABLEKS                       R1 R0 K2 ["getDisabledReason"]
       35 RETURN                           R0 1

PROTO_6:
        0 NEWTABLE                         R1 0 1
        2 DUPTABLE                         R2 K4 [{[1], ["inputType"], ["initialValue"] = }]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K5 ["SelectedModelRef"]
        6 SETTABLEKS                       R3 R2 K0 ["name"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K6 ["Instance"]
       11 SETTABLEKS                       R3 R2 K1 ["inputType"]
       13 SETLIST                          R1 R2 1 [1]
       15 DUPTABLE                         R2 K10 [{"formId", "fields", "validation"}]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K7 ["formId"]
       19 SETTABLEKS                       R3 R2 K7 ["formId"]
       21 SETTABLEKS                       R1 R2 K8 ["fields"]
       23 GETUPVAL                         R3 3
       24 DUPTABLE                         R4 K13 [{"kind", "field"}]
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K14 ["Present"]
       28 SETTABLEKS                       R5 R4 K11 ["kind"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K5 ["SelectedModelRef"]
       33 SETTABLEKS                       R5 R4 K12 ["field"]
       35 CALL                             R3 1 1
       36 SETTABLEKS                       R3 R2 K9 ["validation"]
       38 DUPTABLE                         R3 K16 [{"name", "arguments"}]
       39 GETUPVAL                         R4 5
       40 GETTABLEKS                       R4 R4 K17 ["AskInput"]
       42 SETTABLEKS                       R4 R3 K0 ["name"]
       44 SETTABLEKS                       R2 R3 K15 ["arguments"]
       46 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["readAskInputValues"]
        3 LENGTH                           R3 R0
        4 GETTABLE                         R2 R0 R3
        5 CALL                             R1 1 1
        6 DUPTABLE                         R2 K4 [{["instance_path"] = , ["selectedModelRef"]}]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K5 ["SelectedModelRef"]
       10 GETTABLE                         R3 R1 R4
       11 SETTABLEKS                       R3 R2 K3 ["selectedModelRef"]
       13 DUPTABLE                         R3 K8 [{"name", "arguments"}]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K9 ["AvatarAutoSetup"]
       17 SETTABLEKS                       R4 R3 K6 ["name"]
       19 SETTABLEKS                       R2 R3 K7 ["arguments"]
       21 RETURN                           R3 1

PROTO_8:
        0 DUPCLOSURE                       R1 K0 [PROTO_6]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 DUPCLOSURE                       R2 K1 [PROTO_7]
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U5
       11 NEWTABLE                         R3 0 2
       13 MOVE                             R4 R1
       14 MOVE                             R5 R2
       15 SETLIST                          R3 R4 2 [1]
       17 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["AvatarAutoSetup"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_10:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["AvatarAutoSetup"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 NEWTABLE                         R2 0 0
        8 SETTABLEKS                       R2 R1 K1 ["arguments"]
       10 RETURN                           R1 1

PROTO_11:
        0 DUPTABLE                         R0 K1 [{"type"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 RETURN                           R0 1

PROTO_12:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_13:
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
       45 DUPCLOSURE                       R6 K27 [PROTO_5]
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U6
       48 DUPCLOSURE                       R7 K28 [PROTO_8]
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          UPVAL U9
       52 CAPTURE                          UPVAL U10
       53 CAPTURE                          UPVAL U11
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          UPVAL U12
       56 DUPTABLE                         R8 K34 [{"command", "getDescription", "runToolChain", "mapToToolCall", "getInputRequestArguments"}]
       57 GETUPVAL                         R9 4
       58 GETTABLEKS                       R9 R9 K5 ["AvatarAutoSetup"]
       60 SETTABLEKS                       R9 R8 K29 ["command"]
       62 DUPCLOSURE                       R9 K35 [PROTO_9]
       63 CAPTURE                          UPVAL U5
       64 SETTABLEKS                       R9 R8 K30 ["getDescription"]
       66 GETUPVAL                         R10 13
       67 GETTABLEKS                       R10 R10 K36 ["getIsAskInputToolEnabled"]
       69 CALL                             R10 0 1
       70 JUMPIFNOT                        R10 ; [+2]
       71 MOVE                             R9 R7
       72 JUMP                             ; [+1]
       73 LOADNIL                          R9
       74 SETTABLEKS                       R9 R8 K31 ["runToolChain"]
       76 GETUPVAL                         R10 13
       77 GETTABLEKS                       R10 R10 K36 ["getIsAskInputToolEnabled"]
       79 CALL                             R10 0 1
       80 JUMPIFNOT                        R10 ; [+2]
       81 LOADNIL                          R9
       82 JUMP                             ; [+2]
       83 DUPCLOSURE                       R9 K37 [PROTO_10]
       84 CAPTURE                          UPVAL U4
       85 SETTABLEKS                       R9 R8 K32 ["mapToToolCall"]
       87 GETUPVAL                         R10 13
       88 GETTABLEKS                       R10 R10 K36 ["getIsAskInputToolEnabled"]
       90 CALL                             R10 0 1
       91 JUMPIFNOT                        R10 ; [+2]
       92 LOADNIL                          R9
       93 JUMP                             ; [+1]
       94 MOVE                             R9 R6
       95 SETTABLEKS                       R9 R8 K33 ["getInputRequestArguments"]
       97 DUPTABLE                         R9 K39 [{"transformInitialContent"}]
       98 DUPCLOSURE                       R10 K40 [PROTO_11]
       99 CAPTURE                          UPVAL U14
      100 SETTABLEKS                       R10 R9 K38 ["transformInitialContent"]
      102 DUPTABLE                         R10 K47 [{"toolCallOptions", "definition", "slashCommands", "getPreExecuteWarning", "contentWidgets", "streamTransform"}]
      103 DUPTABLE                         R11 K50 [{["resetTimeoutOnProgress"] = True}]
      104 SETTABLEKS                       R11 R10 K41 ["toolCallOptions"]
      106 SETTABLEKS                       R5 R10 K42 ["definition"]
      108 NEWTABLE                         R11 0 1
      110 MOVE                             R12 R8
      111 SETLIST                          R11 R12 1 [1]
      113 SETTABLEKS                       R11 R10 K43 ["slashCommands"]
      115 DUPCLOSURE                       R11 K51 [PROTO_12]
      116 SETTABLEKS                       R11 R10 K44 ["getPreExecuteWarning"]
      118 GETUPVAL                         R12 15
      119 GETTABLEKS                       R12 R12 K52 ["FFlagAssistantSplitToolsAndWidgets"]
      121 JUMPIFNOT                        R12 ; [+2]
      122 LOADNIL                          R11
      123 JUMP                             ; [+5]
      124 NEWTABLE                         R11 0 1
      126 GETUPVAL                         R12 14
      127 SETLIST                          R11 R12 1 [1]
      129 SETTABLEKS                       R11 R10 K45 ["contentWidgets"]
      131 GETUPVAL                         R12 15
      132 GETTABLEKS                       R12 R12 K52 ["FFlagAssistantSplitToolsAndWidgets"]
      134 JUMPIFNOT                        R12 ; [+2]
      135 LOADNIL                          R11
      136 JUMP                             ; [+1]
      137 MOVE                             R11 R9
      138 SETTABLEKS                       R11 R10 K46 ["streamTransform"]
      140 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["ModelContextProtocol"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R4 K9 ["AskInput"]
       20 GETTABLEKS                       R4 R4 K10 ["AskInputTypes"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Components"]
       27 GETTABLEKS                       R5 R5 K12 ["ContentWidgets"]
       29 GETTABLEKS                       R5 R5 K13 ["AvatarAutoSetupContentWidget"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K11 ["Components"]
       36 GETTABLEKS                       R6 R6 K14 ["DEPRECATED_PropertyRows"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K15 ["Guest"]
       43 GETTABLEKS                       R7 R7 K16 ["Environment"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K17 ["FlagUtils"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K18 ["Flags"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Util"]
       60 GETTABLEKS                       R10 R10 K19 ["SlashCommandConfiguration"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K8 ["Util"]
       67 GETTABLEKS                       R11 R11 K20 ["TestAutomationUtils"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K21 ["Tools"]
       74 GETTABLEKS                       R12 R12 K22 ["ToolTypes"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K8 ["Util"]
       81 GETTABLEKS                       R13 R13 K23 ["ToolUtils"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K24 ["Resources"]
       88 GETTABLEKS                       R14 R14 K25 ["Localization"]
       90 GETTABLEKS                       R14 R14 K26 ["Translator"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R15 R0 K27 ["Types"]
       97 CALL                             R14 1 1
       98 GETTABLEKS                       R15 R2 K8 ["Util"]
      100 GETTABLEKS                       R15 R15 K28 ["ToolBuilder"]
      102 GETTABLEKS                       R16 R2 K8 ["Util"]
      104 GETTABLEKS                       R16 R16 K29 ["ToolResult"]
      106 GETTABLEKS                       R17 R11 K30 ["ToolNames"]
      108 GETTABLEKS                       R18 R3 K31 ["INPUT_TYPE"]
      110 GETTABLEKS                       R19 R3 K32 ["RULE_KIND"]
      112 GETTABLEKS                       R20 R3 K33 ["rule"]
      114 GETTABLEKS                       R21 R9 K34 ["Configs"]
      116 GETTABLEKS                       R21 R21 K35 ["AvatarAutoSetup"]
      118 GETTABLEKS                       R22 R21 K36 ["row"]
      120 DUPCLOSURE                       R23 K37 [PROTO_0]
      121 CAPTURE                          VAL R10
      122 DUPCLOSURE                       R24 K38 [PROTO_13]
      123 CAPTURE                          VAL R23
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R16
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R22
      131 CAPTURE                          VAL R18
      132 CAPTURE                          VAL R21
      133 CAPTURE                          VAL R20
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R8
      139 RETURN                           R24 1
