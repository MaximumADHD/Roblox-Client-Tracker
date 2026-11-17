PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["action"]
        2 JUMPIFEQKNIL                     R1 ; [+3]
        4 JUMPIFNOTEQKS                    R1 K1 [""] ; [+14]
        6 GETIMPORT                        R2 K3 [error]
        8 LOADK                            R3 K4 ["action is required; supported actions: %*."]
        9 GETIMPORT                        R5 K7 [table.concat]
       11 GETUPVAL                         R6 0
       12 LOADK                            R7 K8 [", "]
       13 CALL                             R5 2 1
       14 NAMECALL                         R3 R3 K9 ["format"]
       16 CALL                             R3 2 1
       17 LOADN                            R4 0
       18 CALL                             R2 2 0
       19 GETIMPORT                        R2 K11 [table.find]
       21 GETUPVAL                         R3 0
       22 MOVE                             R4 R1
       23 CALL                             R2 2 1
       24 JUMPIF                           R2 ; [+14]
       25 GETIMPORT                        R2 K3 [error]
       27 LOADK                            R3 K12 ["unknown action \"%*\"; supported actions: %*."]
       28 MOVE                             R5 R1
       29 GETIMPORT                        R6 K7 [table.concat]
       31 GETUPVAL                         R7 0
       32 LOADK                            R8 K8 [", "]
       33 CALL                             R6 2 1
       34 NAMECALL                         R3 R3 K9 ["format"]
       36 CALL                             R3 3 1
       37 LOADN                            R4 0
       38 CALL                             R2 2 0
       39 GETTABLEKS                       R2 R0 K13 ["asset_type"]
       41 FASTCALL1                        TYPEOF R2 ; [+3]
       42 MOVE                             R4 R2
       43 GETIMPORT                        R3 K15 [typeof]
       45 CALL                             R3 1 1
       46 JUMPIFNOTEQKS                    R3 K16 ["string"] ; [+3]
       48 JUMPIFNOTEQKS                    R2 K1 [""] ; [+6]
       50 GETIMPORT                        R3 K3 [error]
       52 LOADK                            R4 K17 ["asset_type is required, e.g. \"Hat\", \"HairAccessory\", \"JacketAccessory\", \"LeftShoeAccessory\", \"Body\", \"DynamicHead\", \"Shoes\" or \"AvatarAnimations\"."]
       53 LOADN                            R5 0
       54 CALL                             R3 2 0
       55 GETTABLEKS                       R3 R0 K18 ["instance_path"]
       57 JUMPIFEQKNIL                     R3 ; [+13]
       59 FASTCALL1                        TYPEOF R3 ; [+3]
       60 MOVE                             R5 R3
       61 GETIMPORT                        R4 K15 [typeof]
       63 CALL                             R4 1 1
       64 JUMPIFEQKS                       R4 K16 ["string"] ; [+6]
       66 GETIMPORT                        R4 K3 [error]
       68 LOADK                            R5 K19 ["instance_path must be a string."]
       69 LOADN                            R6 0
       70 CALL                             R4 2 0
       71 DUPTABLE                         R4 K22 [{"assetType", "instancePath"}]
       72 SETTABLEKS                       R2 R4 K20 ["assetType"]
       74 JUMPIFEQKS                       R3 K1 [""] ; [+3]
       76 MOVE                             R5 R3
       77 JUMP                             ; [+1]
       78 LOADNIL                          R5
       79 SETTABLEKS                       R5 R4 K21 ["instancePath"]
       81 RETURN                           R4 1

PROTO_1:
        0 JUMPIFEQKNIL                     R1 ; [+18]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["findInstanceByPath"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKNIL                  R2 ; [+10]
        9 GETIMPORT                        R3 K2 [error]
       11 LOADK                            R4 K3 ["could not resolve instance_path \"%*\"; use a dot path from game, e.g. \"game.Workspace.MyHat\" or \"Workspace.MyHat\"."]
       12 MOVE                             R6 R1
       13 NAMECALL                         R4 R4 K4 ["format"]
       15 CALL                             R4 2 1
       16 LOADN                            R5 0
       17 CALL                             R3 2 0
       18 RETURN                           R2 1
       19 GETTABLEKS                       R2 R0 K5 ["selection"]
       21 GETTABLEKS                       R2 R2 K6 ["get"]
       23 CALL                             R2 0 1
       24 LENGTH                           R3 R2
       25 JUMPIFEQKN                       R3 K7 [1] ; [+10]
       27 GETIMPORT                        R3 K2 [error]
       29 LOADK                            R4 K8 ["needs either an instance_path argument or exactly one selected instance; got %* selected."]
       30 LENGTH                           R6 R2
       31 NAMECALL                         R4 R4 K4 ["format"]
       33 CALL                             R4 2 1
       34 LOADN                            R5 0
       35 CALL                             R3 2 0
       36 GETTABLEN                        R3 R2 1
       37 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R3 R0 K0 ["instancePath"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["tools"]
        8 GETTABLEKS                       R2 R2 K2 ["assetQuality"]
       10 GETTABLEKS                       R2 R2 K3 ["validateAsync"]
       12 DUPTABLE                         R3 K6 [{"instance", "assetType"}]
       13 SETTABLEKS                       R1 R3 K4 ["instance"]
       15 GETTABLEKS                       R4 R0 K5 ["assetType"]
       17 SETTABLEKS                       R4 R3 K5 ["assetType"]
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["InvokeAsync"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 JUMPIF                           R4 ; [+2]
        3 NEWTABLE                         R4 0 0
        5 CALL                             R3 1 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K0 ["resolveTargetAsync"]
        9 GETUPVAL                         R5 2
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R5 R5 K1 ["runWithProgressLoop"]
       14 GETTABLEKS                       R6 R2 K2 ["sendProgress"]
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R4
       19 MOVE                             R8 R3
       20 CALL                             R5 3 1
       21 GETUPVAL                         R6 5
       22 MOVE                             R8 R5
       23 NAMECALL                         R6 R6 K3 ["JSONEncode"]
       25 CALL                             R6 2 1
       26 LOADB                            R7 0
       27 GETTABLEKS                       R8 R5 K4 ["error"]
       29 JUMPIFEQKNIL                     R8 ; [+7]
       31 GETTABLEKS                       R8 R5 K4 ["error"]
       33 JUMPIFNOTEQKS                    R8 K5 [""] ; [+2]
       35 LOADB                            R7 0 +1
       36 LOADB                            R7 1
       37 GETUPVAL                         R8 6
       38 CALL                             R8 0 1
       39 MOVE                             R10 R6
       40 NAMECALL                         R8 R8 K6 ["addText"]
       42 CALL                             R8 2 1
       43 MOVE                             R10 R5
       44 NAMECALL                         R8 R8 K7 ["setStructuredContent"]
       46 CALL                             R8 2 1
       47 MOVE                             R10 R7
       48 NAMECALL                         R8 R8 K8 ["setError"]
       50 CALL                             R8 2 1
       51 NAMECALL                         R8 R8 K9 ["build"]
       53 CALL                             R8 1 -1
       54 RETURN                           R8 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["invoke"]
       12 MOVE                             R6 R2
       13 LOADK                            R7 K4 ["AssetQualityTool.validate"]
       14 CALL                             R5 2 1
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K5 ["new"]
       18 CALL                             R6 0 1
       19 NAMECALL                         R7 R2 K6 ["GetIdentity"]
       21 CALL                             R7 1 1
       22 GETUPVAL                         R8 3
       23 GETTABLEKS                       R8 R8 K7 ["Identity"]
       25 GETTABLEKS                       R8 R8 K8 ["Standalone"]
       27 JUMPIFEQ                         R7 R8 ; [+9]
       29 NEWCLOSURE                       R11 P1
       30 CAPTURE                          VAL R4
       31 NAMECALL                         R9 R5 K9 ["Connect"]
       33 CALL                             R9 2 -1
       34 NAMECALL                         R7 R6 K10 ["Add"]
       36 CALL                             R7 -1 0
       37 NEWCLOSURE                       R9 P2
       38 CAPTURE                          VAL R6
       39 NAMECALL                         R7 R3 K11 ["Once"]
       41 CALL                             R7 2 0
       42 NEWCLOSURE                       R7 P3
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          VAL R2
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          VAL R5
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          UPVAL U8
       50 GETUPVAL                         R8 9
       51 GETTABLEKS                       R8 R8 K12 ["define"]
       53 CALL                             R8 0 1
       54 GETUPVAL                         R10 10
       55 GETTABLEKS                       R10 R10 K13 ["AssetQuality"]
       57 NAMECALL                         R8 R8 K14 ["setName"]
       59 CALL                             R8 2 1
       60 LOADK                            R10 K15 ["Check whether an avatar item or bundle in the place would pass Roblox marketplace upload validation,\nthe checks a Toolbox upload runs. Read-only; can take a few minutes.\nReturns JSON { pass, results, error? } with one result per validated asset; a result without\nassetType covers the whole bundle. Failures block upload; warnings do not. A failing result with an\nempty failureMap is explained by nonPassingValidators and ranIntoInternalError. relevantSourceStrings\nmaps failureStringKeys to English templates filled from failureStringParams; LegacyValidator entries\ncarry their text in failureStringParams.Message. `error` explains what could not be validated; any\nresults returned are still valid."]
       61 NAMECALL                         R8 R8 K16 ["setDescription"]
       63 CALL                             R8 2 1
       64 LOADK                            R10 K17 ["action"]
       65 DUPTABLE                         R11 K23 [{["type"] = "string", ["enum"], ["description"] = "\"validate\" runs upload validation."}]
       66 GETUPVAL                         R12 11
       67 SETTABLEKS                       R12 R11 K20 ["enum"]
       69 NAMECALL                         R8 R8 K24 ["addArgument"]
       71 CALL                             R8 3 1
       72 LOADK                            R10 K25 ["asset_type"]
       73 DUPTABLE                         R11 K27 [{["type"] = "string", ["description"] = "A bundle: \"Body\", \"DynamicHead\", \"Shoes\" or \"AvatarAnimations\" (\"DynamicHead\" is the head bundle, not a lone head asset; a head with an EyebrowAccessory or EyelashAccessory cannot be validated yet, a known Toolbox bug). Or a single avatar item's Enum.AssetType name, e.g. \"Hat\", \"HairAccessory\", \"LeftShoeAccessory\" or \"WalkAnimation\"."}]
       74 NAMECALL                         R8 R8 K24 ["addArgument"]
       76 CALL                             R8 3 1
       77 LOADK                            R10 K28 ["instance_path"]
       78 DUPTABLE                         R11 K30 [{["type"] = "string", ["description"] = "Dot path to the instance, e.g. \"Workspace.MyHat\". For a clip type such as WalkAnimation, pass its R15Anim folder or its \"WalkAnimation\"/\"Walk\" container; for EmoteAnimation, pass the Animation. Pass it whenever known; omit only to use the user's single selected instance."}]
       79 NAMECALL                         R8 R8 K31 ["addOptionalArgument"]
       81 CALL                             R8 3 1
       82 MOVE                             R10 R7
       83 NAMECALL                         R8 R8 K32 ["setHandler"]
       85 CALL                             R8 2 1
       86 LOADK                            R10 K33 ["Asset Quality"]
       87 NAMECALL                         R8 R8 K34 ["setTitle"]
       89 CALL                             R8 2 1
       90 DUPTABLE                         R10 K42 [{["title"] = "Asset Quality", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = True}]
       91 NAMECALL                         R8 R8 K43 ["setAnnotations"]
       93 CALL                             R8 2 1
       94 NAMECALL                         R8 R8 K44 ["build"]
       96 CALL                             R8 1 1
       97 DUPTABLE                         R9 K47 [{"toolCallOptions", "definition"}]
       98 DUPTABLE                         R10 K49 [{["resetTimeoutOnProgress"] = True}]
       99 SETTABLEKS                       R10 R9 K45 ["toolCallOptions"]
      101 SETTABLEKS                       R8 R9 K46 ["definition"]
      103 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Bin"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["DMNetworking"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["ModelContextProtocol"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R0 K14 ["Guest"]
       34 GETTABLEKS                       R7 R7 K15 ["Environment"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K10 [require]
       39 GETTABLEKS                       R8 R0 K16 ["Util"]
       41 GETTABLEKS                       R8 R8 K17 ["NetworkingIdentity"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K10 [require]
       46 GETTABLEKS                       R9 R0 K16 ["Util"]
       48 GETTABLEKS                       R9 R9 K18 ["TestAutomationUtils"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K10 [require]
       53 GETTABLEKS                       R10 R0 K19 ["Tools"]
       55 GETTABLEKS                       R10 R10 K20 ["ToolTypes"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K10 [require]
       60 GETTABLEKS                       R11 R0 K16 ["Util"]
       62 GETTABLEKS                       R11 R11 K21 ["ToolUtils"]
       64 CALL                             R10 1 1
       65 GETTABLEKS                       R11 R4 K22 ["Remote"]
       67 GETTABLEKS                       R12 R5 K16 ["Util"]
       69 GETTABLEKS                       R12 R12 K23 ["ToolBuilder"]
       71 GETTABLEKS                       R13 R5 K16 ["Util"]
       73 GETTABLEKS                       R13 R13 K24 ["ToolResult"]
       75 GETTABLEKS                       R14 R9 K25 ["ToolNames"]
       77 NEWTABLE                         R15 0 1
       79 LOADK                            R16 K26 ["validate"]
       80 SETLIST                          R15 R16 1 [1]
       82 DUPCLOSURE                       R16 K27 [PROTO_0]
       83 CAPTURE                          VAL R15
       84 DUPCLOSURE                       R17 K28 [PROTO_1]
       85 CAPTURE                          VAL R8
       86 DUPCLOSURE                       R18 K29 [PROTO_7]
       87 CAPTURE                          VAL R17
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R16
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R15
       99 RETURN                           R18 1
