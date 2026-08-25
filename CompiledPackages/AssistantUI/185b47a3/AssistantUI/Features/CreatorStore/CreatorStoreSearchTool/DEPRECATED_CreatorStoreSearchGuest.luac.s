PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R2 K1 ["tools"]
        4 GETTABLEKS                       R2 R2 K2 ["marketplaceInsertion"]
        6 GETTABLEKS                       R2 R2 K3 ["getFreeModelsAsync"]
        8 MOVE                             R3 R1
        9 LOADN                            R4 0
       10 CALL                             R2 2 1
       11 NEWTABLE                         R3 0 0
       13 GETTABLEN                        R4 R2 1
       14 GETTABLEKS                       R4 R4 K4 ["Results"]
       16 LOADNIL                          R5
       17 LOADNIL                          R6
       18 FORGPREP                         R4
       19 DUPTABLE                         R11 K7 [{"assetId", "objectTypes"}]
       20 GETTABLEKS                       R12 R8 K8 ["AssetId"]
       22 SETTABLEKS                       R12 R11 K5 ["assetId"]
       24 GETTABLEKS                       R12 R8 K9 ["ObjectTypes"]
       26 SETTABLEKS                       R12 R11 K6 ["objectTypes"]
       28 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       30 MOVE                             R10 R3
       31 GETIMPORT                        R9 K12 [table.insert]
       33 CALL                             R9 2 0
       34 FORGLOOP                         R4 2 ; [-16]
       36 LENGTH                           R6 R3
       37 LOADN                            R7 0
       38 JUMPIFLT                         R7 R6 ; [+2]
       40 LOADB                            R5 0 +1
       41 LOADB                            R5 1
       42 LOADK                            R7 K13 ["Failed to find \"%*\" in the marketplace!"]
       43 MOVE                             R9 R1
       44 NAMECALL                         R7 R7 K14 ["format"]
       46 CALL                             R7 2 1
       47 MOVE                             R6 R7
       48 FASTCALL2                        ASSERT R5 R6 ; [+3]
       50 GETIMPORT                        R4 K16 [assert]
       52 CALL                             R4 2 0
       53 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQ                         R0 R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 GETUPVAL                         R4 0
        6 JUMPIFEQ                         R1 R4 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 JUMPIFEQ                         R2 R3 ; [+2]
       12 RETURN                           R2 1
       13 GETUPVAL                         R5 1
       14 GETTABLE                         R4 R5 R0
       15 GETUPVAL                         R6 1
       16 GETTABLE                         R5 R6 R1
       17 JUMPIFEQ                         R4 R5 ; [+6]
       19 JUMPIFLT                         R5 R4 ; [+2]
       21 LOADB                            R6 0 +1
       22 LOADB                            R6 1
       23 RETURN                           R6 1
       24 GETUPVAL                         R7 2
       25 GETTABLE                         R6 R7 R0
       26 GETUPVAL                         R8 2
       27 GETTABLE                         R7 R8 R1
       28 JUMPIFLT                         R6 R7 ; [+2]
       30 LOADB                            R8 0 +1
       31 LOADB                            R8 1
       32 RETURN                           R8 1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 GETIMPORT                        R4 K2 [string.lower]
        6 MOVE                             R5 R1
        7 CALL                             R4 1 1
        8 LOADN                            R5 1
        9 MOVE                             R6 R0
       10 LOADNIL                          R7
       11 LOADNIL                          R8
       12 FORGPREP                         R6
       13 GETTABLEKS                       R11 R10 K3 ["objectTypes"]
       15 JUMPIFNOT                        R11 ; [+20]
       16 GETTABLEKS                       R11 R10 K3 ["objectTypes"]
       18 LOADNIL                          R12
       19 LOADNIL                          R13
       20 FORGPREP                         R11
       21 GETIMPORT                        R16 K2 [string.lower]
       23 MOVE                             R17 R15
       24 CALL                             R16 1 1
       25 GETTABLE                         R17 R2 R16
       26 JUMPIF                           R17 ; [+4]
       27 LOADN                            R17 0
       28 SETTABLE                         R17 R2 R16
       29 SETTABLE                         R5 R3 R16
       30 ADDK                             R5 R5 K4 [1]
       31 GETTABLE                         R17 R2 R16
       32 ADDK                             R17 R17 K4 [1]
       33 SETTABLE                         R17 R2 R16
       34 FORGLOOP                         R11 2 ; [-14]
       36 FORGLOOP                         R6 2 ; [-24]
       38 NEWTABLE                         R6 0 0
       40 MOVE                             R7 R2
       41 LOADNIL                          R8
       42 LOADNIL                          R9
       43 FORGPREP                         R7
       44 FASTCALL2                        TABLE_INSERT R6 R10 ; [+5]
       46 MOVE                             R13 R6
       47 MOVE                             R14 R10
       48 GETIMPORT                        R12 K7 [table.insert]
       50 CALL                             R12 2 0
       51 FORGLOOP                         R7 1 ; [-8]
       53 GETIMPORT                        R7 K9 [table.sort]
       55 MOVE                             R8 R6
       56 NEWCLOSURE                       R9 P0
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R3
       60 CALL                             R7 2 0
       61 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 LOADB                            R4 0
        2 NAMECALL                         R2 R2 K0 ["GenerateGUID"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 GETTABLEKS                       R5 R1 K1 ["query"]
        9 CALL                             R3 2 1
       10 LENGTH                           R4 R3
       11 JUMPIFNOTEQKN                    R4 K2 [0] ; [+12]
       13 GETIMPORT                        R4 K4 [error]
       15 LOADK                            R6 K5 ["Failed to find \"%*\" in the marketplace!"]
       16 GETTABLEKS                       R8 R1 K1 ["query"]
       18 NAMECALL                         R6 R6 K6 ["format"]
       20 CALL                             R6 2 1
       21 MOVE                             R5 R6
       22 LOADN                            R6 0
       23 CALL                             R4 2 0
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K7 ["setFromAssets"]
       27 MOVE                             R5 R2
       28 MOVE                             R6 R3
       29 CALL                             R4 2 0
       30 DUPTABLE                         R4 K9 [{"searchId"}]
       31 SETTABLEKS                       R2 R4 K8 ["searchId"]
       33 GETUPVAL                         R5 3
       34 MOVE                             R6 R3
       35 GETTABLEKS                       R7 R1 K1 ["query"]
       37 CALL                             R5 2 1
       38 LENGTH                           R6 R5
       39 LOADN                            R7 0
       40 JUMPIFNOTLT                      R7 R6 ; [+3]
       42 SETTABLEKS                       R5 R4 K10 ["objectTypes"]
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R6 R6 K11 ["toString"]
       47 MOVE                             R7 R4
       48 CALL                             R6 1 -1
       49 RETURN                           R6 -1

PROTO_5:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["Expected previous results to contain the search result from CreatorStoreSearch tool"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETTABLEKS                       R2 R0 K3 ["content"]
        9 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       11 LOADK                            R3 K4 ["Expected search tool result to contain content"]
       12 GETIMPORT                        R1 K2 [assert]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K3 ["content"]
       17 LOADNIL                          R2
       18 LOADNIL                          R3
       19 FORGPREP                         R1
       20 GETTABLEKS                       R6 R5 K5 ["type"]
       22 JUMPIFNOTEQKS                    R6 K6 ["text"] ; [+4]
       24 GETTABLEKS                       R6 R5 K6 ["text"]
       26 RETURN                           R6 1
       27 FORGLOOP                         R1 2 ; [-8]
       29 GETIMPORT                        R1 K8 [error]
       31 LOADK                            R2 K9 ["Expected search tool result content to include text"]
       32 LOADN                            R3 0
       33 CALL                             R1 2 0
       34 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 MOVE                             R5 R2
        7 NAMECALL                         R3 R3 K0 ["addText"]
        9 CALL                             R3 2 1
       10 NAMECALL                         R3 R3 K1 ["build"]
       12 CALL                             R3 1 -1
       13 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MarketplaceInsertion"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 LENGTH                           R2 R0
        1 GETTABLE                         R1 R0 R2
        2 FASTCALL2K                       ASSERT R1 K0 ; [+5]
        4 MOVE                             R4 R1
        5 LOADK                            R5 K0 ["Expected previous results to contain the search result from CreatorStoreSearch tool"]
        6 GETIMPORT                        R3 K2 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R4 R1 K3 ["content"]
       11 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       13 LOADK                            R5 K4 ["Expected search tool result to contain content"]
       14 GETIMPORT                        R3 K2 [assert]
       16 CALL                             R3 2 0
       17 GETTABLEKS                       R3 R1 K3 ["content"]
       19 LOADNIL                          R4
       20 LOADNIL                          R5
       21 FORGPREP                         R3
       22 GETTABLEKS                       R8 R7 K5 ["type"]
       24 JUMPIFNOTEQKS                    R8 K6 ["text"] ; [+4]
       26 GETTABLEKS                       R2 R7 K6 ["text"]
       28 JUMP                             ; [+8]
       29 FORGLOOP                         R3 2 ; [-8]
       31 GETIMPORT                        R3 K8 [error]
       33 LOADK                            R4 K9 ["Expected search tool result content to include text"]
       34 LOADN                            R5 0
       35 CALL                             R3 2 0
       36 LOADNIL                          R2
       37 GETUPVAL                         R3 0
       38 MOVE                             R5 R2
       39 NAMECALL                         R3 R3 K10 ["JSONDecode"]
       41 CALL                             R3 2 1
       42 DUPTABLE                         R4 K13 [{"name", "arguments"}]
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R5 R5 K14 ["CreatorStoreInsert"]
       46 SETTABLEKS                       R5 R4 K11 ["name"]
       48 DUPTABLE                         R5 K18 [{"searchId", "objectTypes", "assetName"}]
       49 GETTABLEKS                       R6 R3 K15 ["searchId"]
       51 SETTABLEKS                       R6 R5 K15 ["searchId"]
       53 GETTABLEKS                       R6 R3 K16 ["objectTypes"]
       55 SETTABLEKS                       R6 R5 K16 ["objectTypes"]
       57 GETUPVAL                         R6 2
       58 SETTABLEKS                       R6 R5 K17 ["assetName"]
       60 SETTABLEKS                       R5 R4 K12 ["arguments"]
       62 RETURN                           R4 1

PROTO_9:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["CreatorStoreSearch"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"query"}]
        7 SETTABLEKS                       R0 R2 K4 ["query"]
        9 SETTABLEKS                       R2 R1 K1 ["arguments"]
       11 NEWTABLE                         R2 0 1
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 SETLIST                          R2 R3 1 [1]
       19 RETURN                           R1 2

PROTO_10:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["define"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R4 R4 K1 ["CreatorStoreSearch"]
       11 NAMECALL                         R2 R2 K2 ["setName"]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K3 ["replaceTokens"]
       17 LOADK                            R5 K4 ["Searches the Roblox Creator Store for assets matching the query.\nReturns a unique searchId and a set of objectTypes for use with the {ToolNames.CreatorStoreInsert} tool.\nIf no objectTypes are found, returns searchId only.\n\nFor example: call {ToolNames.CreatorStoreSearch} with query \"lion\". Then choose one or more objectTypes that are semantically\nclose to the user request and pass searchId and optional objectType(s) to the {ToolNames.CreatorStoreInsert} tool to insert assets."]
       18 CALL                             R4 1 -1
       19 NAMECALL                         R2 R2 K5 ["setDescription"]
       21 CALL                             R2 -1 1
       22 LOADK                            R4 K6 ["query"]
       23 DUPTABLE                         R5 K11 [{["type"] = "string", ["description"] = "The query to search for assets for."}]
       24 NAMECALL                         R2 R2 K12 ["addArgument"]
       26 CALL                             R2 3 1
       27 DUPTABLE                         R4 K21 [{["title"] = "Creator Store Search", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       28 NAMECALL                         R2 R2 K22 ["setAnnotations"]
       30 CALL                             R2 2 1
       31 MOVE                             R4 R1
       32 NAMECALL                         R2 R2 K23 ["setHandler"]
       34 CALL                             R2 2 1
       35 NAMECALL                         R2 R2 K24 ["build"]
       37 CALL                             R2 1 1
       38 DUPTABLE                         R3 K31 [{["command"] = "insert", ["getDescription"], ["runToolChain"] = , ["mapToToolCall"]}]
       39 DUPCLOSURE                       R4 K32 [PROTO_7]
       40 CAPTURE                          UPVAL U4
       41 SETTABLEKS                       R4 R3 K27 ["getDescription"]
       43 DUPCLOSURE                       R4 K33 [PROTO_9]
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U5
       46 SETTABLEKS                       R4 R3 K30 ["mapToToolCall"]
       48 DUPTABLE                         R4 K36 [{"definition", "slashCommands"}]
       49 SETTABLEKS                       R2 R4 K34 ["definition"]
       51 NEWTABLE                         R5 0 1
       53 MOVE                             R6 R3
       54 SETLIST                          R5 R6 1 [1]
       56 SETTABLEKS                       R5 R4 K35 ["slashCommands"]
       58 RETURN                           R4 1

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
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["ModelContextProtocol"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Tools"]
       24 GETTABLEKS                       R4 R4 K13 ["ToolTypes"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K14 ["Util"]
       31 GETTABLEKS                       R5 R5 K15 ["ToolUtils"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K16 ["Resources"]
       38 GETTABLEKS                       R6 R6 K17 ["Localization"]
       40 GETTABLEKS                       R6 R6 K18 ["Translator"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K1 [script]
       45 LOADK                            R8 K19 ["CreatorStore"]
       46 NAMECALL                         R6 R6 K3 ["FindFirstAncestor"]
       48 CALL                             R6 2 1
       49 GETIMPORT                        R7 K9 [require]
       51 GETTABLEKS                       R8 R6 K20 ["CreatorStoreSearchCache"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K9 [require]
       56 GETTABLEKS                       R9 R6 K21 ["CreatorStoreTypes"]
       58 CALL                             R8 1 1
       59 GETTABLEKS                       R9 R2 K14 ["Util"]
       61 GETTABLEKS                       R9 R9 K22 ["ToolBuilder"]
       63 GETTABLEKS                       R10 R2 K14 ["Util"]
       65 GETTABLEKS                       R10 R10 K23 ["ToolResult"]
       67 GETTABLEKS                       R11 R3 K24 ["ToolNames"]
       69 DUPCLOSURE                       R12 K25 [PROTO_0]
       70 CAPTURE                          VAL R1
       71 DUPCLOSURE                       R13 K26 [PROTO_1]
       72 DUPCLOSURE                       R14 K27 [PROTO_3]
       73 DUPCLOSURE                       R15 K28 [PROTO_4]
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R14
       78 CAPTURE                          VAL R4
       79 DUPCLOSURE                       R16 K29 [PROTO_5]
       80 DUPCLOSURE                       R17 K30 [PROTO_10]
       81 CAPTURE                          VAL R15
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R1
       87 DUPTABLE                         R18 K32 [{"setupGuest"}]
       88 SETTABLEKS                       R17 R18 K31 ["setupGuest"]
       90 RETURN                           R18 1
