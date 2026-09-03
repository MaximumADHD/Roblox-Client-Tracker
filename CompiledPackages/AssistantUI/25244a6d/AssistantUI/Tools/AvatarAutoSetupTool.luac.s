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
        0 GETTABLEKS                       R1 R0 K0 ["jobId"]
        2 JUMPIFEQKNIL                     R1 ; [+8]
        4 JUMPIFEQKS                       R1 K1 [""] ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["engineJobId"]
        9 JUMPIFEQKNIL                     R2 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 0
       13 SETTABLEKS                       R1 R2 K2 ["engineJobId"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K3 ["cancelRequested"]
       18 JUMPIFNOT                        R2 ; [+9]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K4 ["tools"]
       22 GETTABLEKS                       R2 R2 K5 ["avatarAutoSetup"]
       24 GETTABLEKS                       R2 R2 K6 ["cancelAutoSetup"]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["tools"]
        7 GETTABLEKS                       R1 R1 K1 ["avatarAutoSetup"]
        9 GETTABLEKS                       R1 R1 K2 ["autoSetupAsync"]
       11 DUPTABLE                         R2 K5 [{"model", "onNotification"}]
       12 SETTABLEKS                       R0 R2 K3 ["model"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U1
       17 SETTABLEKS                       R3 R2 K4 ["onNotification"]
       19 CALL                             R1 1 1
       20 DUPTABLE                         R2 K8 [{"inputModel", "outputModel"}]
       21 SETTABLEKS                       R0 R2 K6 ["inputModel"]
       23 SETTABLEKS                       R1 R2 K7 ["outputModel"]
       25 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["toolUseId"]
        2 DUPTABLE                         R3 K5 [{["engineJobId"] = , ["cancelRequested"] = False}]
        3 GETUPVAL                         R4 0
        4 SETTABLE                         R3 R4 R2
        5 GETIMPORT                        R4 K7 [pcall]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R3
       12 CALL                             R4 1 2
       13 GETUPVAL                         R6 0
       14 LOADNIL                          R7
       15 SETTABLE                         R7 R6 R2
       16 JUMPIF                           R4 ; [+5]
       17 GETIMPORT                        R6 K9 [error]
       19 MOVE                             R7 R5
       20 LOADN                            R8 0
       21 CALL                             R6 2 0
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K10 ["selection"]
       25 GETTABLEKS                       R6 R6 K11 ["set"]
       27 NEWTABLE                         R7 0 1
       29 GETTABLEKS                       R8 R5 K12 ["outputModel"]
       31 SETLIST                          R7 R8 1 [1]
       33 CALL                             R6 1 0
       34 DUPTABLE                         R6 K15 [{"inputModelName", "outputModelName"}]
       35 GETTABLEKS                       R7 R5 K16 ["inputModel"]
       37 GETTABLEKS                       R7 R7 K17 ["Name"]
       39 SETTABLEKS                       R7 R6 K13 ["inputModelName"]
       41 GETTABLEKS                       R7 R5 K12 ["outputModel"]
       43 GETTABLEKS                       R7 R7 K17 ["Name"]
       45 SETTABLEKS                       R7 R6 K14 ["outputModelName"]
       47 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R1 K0 ["toolUseId"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 0
        7 LOADB                            R3 1
        8 SETTABLEKS                       R3 R2 K1 ["cancelRequested"]
       10 GETTABLEKS                       R3 R2 K2 ["engineJobId"]
       12 JUMPIFEQKNIL                     R3 ; [+11]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K3 ["tools"]
       17 GETTABLEKS                       R3 R3 K4 ["avatarAutoSetup"]
       19 GETTABLEKS                       R3 R3 K5 ["cancelAutoSetup"]
       21 GETTABLEKS                       R4 R2 K2 ["engineJobId"]
       23 CALL                             R3 1 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K1 [{"toolUseId"}]
        3 GETUPVAL                         R3 1
        4 SETTABLEKS                       R3 R2 K0 ["toolUseId"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K1 [pcall]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["runWithProgressLoop"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["sendProgress"]
        6 GETUPVAL                         R2 2
        7 LOADNIL                          R3
        8 GETUPVAL                         R4 3
        9 CALL                             R0 4 -1
       10 RETURN                           R0 -1

PROTO_8:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["toolId"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R3
        5 LOADB                            R5 0
        6 FASTCALL1                        TYPEOF R3 ; [+3]
        7 MOVE                             R7 R3
        8 GETIMPORT                        R6 K2 [typeof]
       10 CALL                             R6 1 1
       11 JUMPIFNOTEQKS                    R6 K3 ["string"] ; [+5]
       13 JUMPIFNOTEQKS                    R3 K4 [""] ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       19 LOADK                            R6 K5 ["AvatarAutoSetupTool requires meta.toolId"]
       20 GETIMPORT                        R4 K7 [assert]
       22 CALL                             R4 2 0
       23 DUPTABLE                         R4 K11 [{"toolUseId", "instance_path", "selectedModelRef"}]
       24 SETTABLEKS                       R3 R4 K8 ["toolUseId"]
       26 GETTABLEKS                       R5 R0 K9 ["instance_path"]
       28 SETTABLEKS                       R5 R4 K9 ["instance_path"]
       30 GETTABLEKS                       R5 R0 K10 ["selectedModelRef"]
       32 SETTABLEKS                       R5 R4 K10 ["selectedModelRef"]
       34 LOADB                            R5 0
       35 JUMPIFNOT                        R2 ; [+19]
       36 GETTABLEKS                       R6 R2 K12 ["signal"]
       38 JUMPIFNOT                        R6 ; [+16]
       39 GETTABLEKS                       R6 R2 K12 ["signal"]
       41 GETTABLEKS                       R6 R6 K13 ["abortSignal"]
       43 JUMPIFNOT                        R6 ; [+11]
       44 GETTABLEKS                       R6 R2 K12 ["signal"]
       46 GETTABLEKS                       R6 R6 K13 ["abortSignal"]
       48 NEWCLOSURE                       R8 P0
       49 CAPTURE                          REF R5
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          VAL R3
       52 NAMECALL                         R6 R6 K14 ["Once"]
       54 CALL                             R6 2 0
       55 GETIMPORT                        R6 K16 [pcall]
       57 NEWCLOSURE                       R7 P1
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          VAL R2
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          VAL R4
       62 CALL                             R6 1 2
       63 JUMPIF                           R6 ; [+25]
       64 JUMPIF                           R5 ; [+5]
       65 GETIMPORT                        R8 K18 [error]
       67 MOVE                             R9 R7
       68 LOADN                            R10 0
       69 CALL                             R8 2 0
       70 GETUPVAL                         R8 3
       71 CALL                             R8 0 1
       72 LOADK                            R10 K19 ["Auto-setup canceled before it finished."]
       73 NAMECALL                         R8 R8 K20 ["addText"]
       75 CALL                             R8 2 1
       76 DUPTABLE                         R10 K23 [{["canceled"] = True}]
       77 NAMECALL                         R8 R8 K24 ["setStructuredContent"]
       79 CALL                             R8 2 1
       80 LOADB                            R10 1
       81 NAMECALL                         R8 R8 K25 ["setError"]
       83 CALL                             R8 2 1
       84 NAMECALL                         R8 R8 K26 ["build"]
       86 CALL                             R8 1 -1
       87 CLOSEUPVALS                      R5
       88 RETURN                           R8 -1
       89 GETUPVAL                         R8 3
       90 CALL                             R8 0 1
       91 LOADK                            R11 K27 ["Auto-setup complete: input \"%*\" -> output \"%*\"."]
       92 GETTABLEKS                       R13 R7 K28 ["inputModelName"]
       94 GETTABLEKS                       R14 R7 K29 ["outputModelName"]
       96 NAMECALL                         R11 R11 K30 ["format"]
       98 CALL                             R11 3 1
       99 MOVE                             R10 R11
      100 NAMECALL                         R8 R8 K20 ["addText"]
      102 CALL                             R8 2 1
      103 NAMECALL                         R8 R8 K26 ["build"]
      105 CALL                             R8 1 -1
      106 CLOSEUPVALS                      R5
      107 RETURN                           R8 -1

PROTO_9:
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

PROTO_10:
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
       31 DUPCLOSURE                       R1 K17 [PROTO_9]
       32 CAPTURE                          UPVAL U0
       33 SETTABLEKS                       R1 R0 K2 ["getDisabledReason"]
       35 RETURN                           R0 1

PROTO_11:
        0 NEWTABLE                         R1 0 1
        2 DUPTABLE                         R2 K6 [{[1], ["inputType"], ["initialValue"] = , ["required"] = True}]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K7 ["SelectedModelRef"]
        6 SETTABLEKS                       R3 R2 K0 ["name"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K8 ["Instance"]
       11 SETTABLEKS                       R3 R2 K1 ["inputType"]
       13 SETLIST                          R1 R2 1 [1]
       15 DUPTABLE                         R2 K11 [{"formId", "fields"}]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K9 ["formId"]
       19 SETTABLEKS                       R3 R2 K9 ["formId"]
       21 SETTABLEKS                       R1 R2 K10 ["fields"]
       23 DUPTABLE                         R3 K13 [{"name", "arguments"}]
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K14 ["AskInput"]
       27 SETTABLEKS                       R4 R3 K0 ["name"]
       29 SETTABLEKS                       R2 R3 K12 ["arguments"]
       31 RETURN                           R3 1

PROTO_12:
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

PROTO_13:
        0 DUPCLOSURE                       R1 K0 [PROTO_11]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 DUPCLOSURE                       R2 K1 [PROTO_12]
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U3
        9 NEWTABLE                         R3 0 2
       11 MOVE                             R4 R1
       12 MOVE                             R5 R2
       13 SETLIST                          R3 R4 2 [1]
       15 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["AvatarAutoSetup"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_15:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["AvatarAutoSetup"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 NEWTABLE                         R2 0 0
        8 SETTABLEKS                       R2 R1 K1 ["arguments"]
       10 RETURN                           R1 1

PROTO_16:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 NEWTABLE                         R3 0 0
        6 LOADK                            R6 K2 ["AvatarAutoSetupTool_runAutoSetup"]
        7 NEWCLOSURE                       R7 P0
        8 CAPTURE                          VAL R3
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R2
       11 NAMECALL                         R4 R1 K3 ["OnHostInvokeAsync"]
       13 CALL                             R4 3 1
       14 LOADK                            R7 K4 ["AvatarAutoSetupTool_cancelAutoSetup"]
       15 NEWCLOSURE                       R8 P1
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R2
       18 NAMECALL                         R5 R1 K3 ["OnHostInvokeAsync"]
       20 CALL                             R5 3 1
       21 NEWCLOSURE                       R6 P2
       22 CAPTURE                          VAL R5
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R4
       25 CAPTURE                          UPVAL U2
       26 GETUPVAL                         R7 3
       27 GETTABLEKS                       R7 R7 K5 ["define"]
       29 CALL                             R7 0 1
       30 GETUPVAL                         R9 4
       31 GETTABLEKS                       R9 R9 K6 ["AvatarAutoSetup"]
       33 NAMECALL                         R7 R7 K7 ["setName"]
       35 CALL                             R7 2 1
       36 LOADK                            R9 K8 ["Convert a static body Model into a fully rigged, animatable R15 avatar\nusing Roblox's avatar auto-setup engine. The engine fits the input mesh to\nthe standard R15 skeleton — generating the body-part segmentation,\nskinning, joints, and attachments an avatar needs to move and to wear\nlayered clothing and accessories. The output is a new avatar Model placed\nnext to the input.\n\nUSAGE: pass the input Model's path via `instance_path`. This tool\nresolves the path itself — do NOT call execute_luau to set\nStudio's Selection as a workaround; just pass the path directly.\nThe input Model must live under Workspace; the `path` field returned by\ninspect_instance works as-is for those (e.g. \"Workspace.Goblin\",\n\"Workspace.MyFolder.CyberneticSuperHero_S1_Mesh\").\n\n`instance_path` is technically optional: if omitted, the tool falls back\nto the user's current Studio selection, which must be exactly one Model.\nThat fallback exists for the case where the user manually selected a\nmodel before invoking the tool. In every other case (the user named the\nmodel, you found it via inspect_instance or search, etc.) pass\ninstance_path so you don't burn an extra tool call on selection.\n\nUse this when the user asks to \"set up\", \"rig\", or \"apply auto-setup\"\nto an avatar. Long-running (usually at least 2-3 minutes)."]
       37 NAMECALL                         R7 R7 K9 ["setDescription"]
       39 CALL                             R7 2 1
       40 LOADK                            R9 K10 ["instance_path"]
       41 DUPTABLE                         R10 K15 [{["type"] = "string", ["description"] = "Full Studio path to the input Model, exactly as inspect_instance returns in its `path` field. The Model must be under Workspace. Examples: \"Workspace.Goblin\", \"Workspace.Characters.Wizard\". Always pass this when you know which Model the user means (i.e. always except when the user has manually pre-selected a Model in the explorer). Do NOT call execute_luau to set Selection and then call this tool with no arguments — that wastes a tool call."}]
       42 NAMECALL                         R7 R7 K16 ["addOptionalArgument"]
       44 CALL                             R7 3 1
       45 MOVE                             R9 R6
       46 NAMECALL                         R7 R7 K17 ["setHandler"]
       48 CALL                             R7 2 1
       49 DUPTABLE                         R9 K25 [{["title"] = "Auto Setup Avatar", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       50 NAMECALL                         R7 R7 K26 ["setAnnotations"]
       52 CALL                             R7 2 1
       53 NAMECALL                         R7 R7 K27 ["build"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K28 [PROTO_10]
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          UPVAL U6
       59 DUPCLOSURE                       R9 K29 [PROTO_13]
       60 CAPTURE                          UPVAL U7
       61 CAPTURE                          UPVAL U8
       62 CAPTURE                          UPVAL U9
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          UPVAL U10
       65 DUPTABLE                         R10 K35 [{"command", "getDescription", "runToolChain", "mapToToolCall", "getInputRequestArguments"}]
       66 GETUPVAL                         R11 4
       67 GETTABLEKS                       R11 R11 K6 ["AvatarAutoSetup"]
       69 SETTABLEKS                       R11 R10 K30 ["command"]
       71 DUPCLOSURE                       R11 K36 [PROTO_14]
       72 CAPTURE                          UPVAL U5
       73 SETTABLEKS                       R11 R10 K31 ["getDescription"]
       75 GETUPVAL                         R12 11
       76 GETTABLEKS                       R12 R12 K37 ["FFlagAssistantAskInputTool"]
       78 JUMPIFNOT                        R12 ; [+2]
       79 MOVE                             R11 R9
       80 JUMP                             ; [+1]
       81 LOADNIL                          R11
       82 SETTABLEKS                       R11 R10 K32 ["runToolChain"]
       84 GETUPVAL                         R12 11
       85 GETTABLEKS                       R12 R12 K37 ["FFlagAssistantAskInputTool"]
       87 JUMPIFNOT                        R12 ; [+2]
       88 LOADNIL                          R11
       89 JUMP                             ; [+2]
       90 DUPCLOSURE                       R11 K38 [PROTO_15]
       91 CAPTURE                          UPVAL U4
       92 SETTABLEKS                       R11 R10 K33 ["mapToToolCall"]
       94 GETUPVAL                         R12 11
       95 GETTABLEKS                       R12 R12 K37 ["FFlagAssistantAskInputTool"]
       97 JUMPIFNOT                        R12 ; [+2]
       98 LOADNIL                          R11
       99 JUMP                             ; [+1]
      100 MOVE                             R11 R8
      101 SETTABLEKS                       R11 R10 K34 ["getInputRequestArguments"]
      103 DUPTABLE                         R11 K43 [{"toolCallOptions", "definition", "slashCommands", "getPreExecuteWarning"}]
      104 DUPTABLE                         R12 K46 [{["resetTimeoutOnProgress"] = True}]
      105 SETTABLEKS                       R12 R11 K39 ["toolCallOptions"]
      107 SETTABLEKS                       R7 R11 K40 ["definition"]
      109 NEWTABLE                         R12 0 1
      111 MOVE                             R13 R10
      112 SETLIST                          R12 R13 1 [1]
      114 SETTABLEKS                       R12 R11 K41 ["slashCommands"]
      116 DUPCLOSURE                       R12 K47 [PROTO_16]
      117 SETTABLEKS                       R12 R11 K42 ["getPreExecuteWarning"]
      119 RETURN                           R11 1

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
       27 GETTABLEKS                       R5 R5 K12 ["DEPRECATED_PropertyRows"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K13 ["Guest"]
       34 GETTABLEKS                       R6 R6 K14 ["Environment"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K15 ["Flags"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Util"]
       46 GETTABLEKS                       R8 R8 K16 ["SlashCommandConfiguration"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Util"]
       53 GETTABLEKS                       R9 R9 K17 ["TestAutomationUtils"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K18 ["Tools"]
       60 GETTABLEKS                       R10 R10 K19 ["ToolTypes"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K8 ["Util"]
       67 GETTABLEKS                       R11 R11 K20 ["ToolUtils"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K21 ["Resources"]
       74 GETTABLEKS                       R12 R12 K22 ["Localization"]
       76 GETTABLEKS                       R12 R12 K23 ["Translator"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K24 ["Types"]
       83 CALL                             R12 1 1
       84 GETTABLEKS                       R13 R2 K8 ["Util"]
       86 GETTABLEKS                       R13 R13 K25 ["ToolBuilder"]
       88 GETTABLEKS                       R14 R2 K8 ["Util"]
       90 GETTABLEKS                       R14 R14 K26 ["ToolResult"]
       92 GETTABLEKS                       R15 R9 K27 ["ToolNames"]
       94 GETTABLEKS                       R16 R3 K28 ["INPUT_TYPE"]
       96 GETTABLEKS                       R17 R7 K29 ["Configs"]
       98 GETTABLEKS                       R17 R17 K30 ["AvatarAutoSetup"]
      100 GETTABLEKS                       R18 R17 K31 ["row"]
      102 DUPCLOSURE                       R19 K32 [PROTO_0]
      103 CAPTURE                          VAL R8
      104 DUPCLOSURE                       R20 K33 [PROTO_17]
      105 CAPTURE                          VAL R19
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R18
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R17
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R6
      117 RETURN                           R20 1
