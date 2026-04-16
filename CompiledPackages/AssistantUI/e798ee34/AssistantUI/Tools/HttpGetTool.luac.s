PROTO_0:
        0 LOADB                            R1 1
        1 JUMPIFEQKS                       R0 K0 ["/llms.txt"] ; [+10]
        3 GETIMPORT                        R2 K3 [string.match]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K4 ["^/.+%.md$"]
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 LOADN                            R8 1
        5 GETTABLEKS                       R10 R5 K0 ["base"]
        7 LENGTH                           R9 R10
        8 FASTCALL3                        STRING_SUB R0 R8 R9
       10 MOVE                             R7 R0
       11 GETIMPORT                        R6 K3 [string.sub]
       13 CALL                             R6 3 1
       14 GETTABLEKS                       R7 R5 K0 ["base"]
       16 JUMPIFNOTEQ                      R6 R7 ; [+21]
       18 GETTABLEKS                       R6 R5 K4 ["validate"]
       20 JUMPIFNOT                        R6 ; [+15]
       21 GETTABLEKS                       R10 R5 K0 ["base"]
       23 LENGTH                           R9 R10
       24 ADDK                             R8 R9 K5 [1]
       25 FASTCALL2                        STRING_SUB R0 R8 ; [+4]
       27 MOVE                             R7 R0
       28 GETIMPORT                        R6 K3 [string.sub]
       30 CALL                             R6 2 1
       31 GETTABLEKS                       R7 R5 K4 ["validate"]
       33 MOVE                             R8 R6
       34 CALL                             R7 1 -1
       35 RETURN                           R7 -1
       36 LOADB                            R6 1
       37 RETURN                           R6 1
       38 FORGLOOP                         R1 2 ; [-35]
       40 LOADB                            R1 0
       41 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 LOADK                            R9 K0 ["- %* (%*)"]
        7 GETTABLEKS                       R11 R5 K1 ["base"]
        9 GETTABLEKS                       R12 R5 K2 ["description"]
       11 NAMECALL                         R9 R9 K3 ["format"]
       13 CALL                             R9 3 1
       14 MOVE                             R8 R9
       15 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K6 [table.insert]
       20 CALL                             R6 2 0
       21 FORGLOOP                         R1 2 ; [-16]
       23 GETIMPORT                        R1 K8 [table.concat]
       25 MOVE                             R2 R0
       26 LOADK                            R3 K9 ["\n"]
       27 CALL                             R1 2 -1
       28 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["url"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 JUMPIFNOTEQKS                    R2 K1 [""] ; [+4]
        5 LOADB                            R3 0
        6 LOADK                            R4 K2 ["url is required"]
        7 RETURN                           R3 2
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 JUMPIF                           R3 ; [+6]
       12 LOADB                            R3 0
       13 LOADK                            R5 K3 ["URL not allowed. Only these patterns are permitted:\n"]
       14 GETUPVAL                         R6 1
       15 CALL                             R6 0 1
       16 CONCAT                           R4 R5 R6
       17 RETURN                           R3 2
       18 GETIMPORT                        R3 K5 [pcall]
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R5 R6 K6 ["http"]
       23 GETTABLEKS                       R4 R5 K7 ["requestAsync"]
       25 DUPTABLE                         R5 K10 [{"Url", "Method"}]
       26 SETTABLEKS                       R2 R5 K8 ["Url"]
       28 LOADK                            R6 K11 ["GET"]
       29 SETTABLEKS                       R6 R5 K9 ["Method"]
       31 CALL                             R3 2 2
       32 JUMPIF                           R3 ; [+12]
       33 LOADB                            R5 0
       34 LOADK                            R7 K12 ["HTTP GET request failed: %*"]
       35 FASTCALL1                        TOSTRING R4 ; [+3]
       36 MOVE                             R10 R4
       37 GETIMPORT                        R9 K14 [tostring]
       39 CALL                             R9 1 1
       40 NAMECALL                         R7 R7 K15 ["format"]
       42 CALL                             R7 2 1
       43 MOVE                             R6 R7
       44 RETURN                           R5 2
       45 GETTABLEKS                       R5 R4 K16 ["Success"]
       47 JUMPIF                           R5 ; [+9]
       48 LOADB                            R5 0
       49 LOADK                            R7 K17 ["HTTP GET request failed with status %*"]
       50 GETTABLEKS                       R9 R4 K18 ["StatusCode"]
       52 NAMECALL                         R7 R7 K15 ["format"]
       54 CALL                             R7 2 1
       55 MOVE                             R6 R7
       56 RETURN                           R5 2
       57 LOADB                            R5 1
       58 GETTABLEKS                       R6 R4 K19 ["Body"]
       60 RETURN                           R5 2

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 2
        4 JUMPIF                           R1 ; [+22]
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 MOVE                             R5 R2
        8 NAMECALL                         R3 R3 K0 ["addText"]
       10 CALL                             R3 2 1
       11 DUPTABLE                         R5 K2 [{"url"}]
       12 GETTABLEKS                       R6 R0 K1 ["url"]
       14 SETTABLEKS                       R6 R5 K1 ["url"]
       16 NAMECALL                         R3 R3 K3 ["setStructuredContent"]
       18 CALL                             R3 2 1
       19 LOADB                            R5 1
       20 NAMECALL                         R3 R3 K4 ["setError"]
       22 CALL                             R3 2 1
       23 NAMECALL                         R3 R3 K5 ["build"]
       25 CALL                             R3 1 -1
       26 RETURN                           R3 -1
       27 GETUPVAL                         R3 1
       28 CALL                             R3 0 1
       29 MOVE                             R5 R2
       30 NAMECALL                         R3 R3 K0 ["addText"]
       32 CALL                             R3 2 1
       33 DUPTABLE                         R5 K2 [{"url"}]
       34 GETTABLEKS                       R6 R0 K1 ["url"]
       36 SETTABLEKS                       R6 R5 K1 ["url"]
       38 NAMECALL                         R3 R3 K3 ["setStructuredContent"]
       40 CALL                             R3 2 1
       41 NAMECALL                         R3 R3 K5 ["build"]
       43 CALL                             R3 1 -1
       44 RETURN                           R3 -1

PROTO_5:
        0 DUPTABLE                         R0 K3 [{"type", "icon", "summary"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K4 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K5 ["Icons"]
        9 GETTABLEKS                       R1 R2 K6 ["Search"]
       11 SETTABLEKS                       R1 R0 K1 ["icon"]
       13 GETUPVAL                         R1 1
       14 LOADK                            R3 K7 ["HttpGet"]
       15 LOADK                            R4 K8 ["Pending"]
       16 NAMECALL                         R1 R1 K9 ["getText"]
       18 CALL                             R1 3 1
       19 SETTABLEKS                       R1 R0 K2 ["summary"]
       21 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["HttpGet"]
        2 LOADK                            R4 K1 ["Fetching"]
        3 DUPTABLE                         R5 K3 [{"url"}]
        4 GETUPVAL                         R6 1
        5 SETTABLEKS                       R6 R5 K2 ["url"]
        7 NAMECALL                         R1 R1 K4 ["getText"]
        9 CALL                             R1 4 1
       10 SETTABLEKS                       R1 R0 K5 ["summary"]
       12 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["input"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R2 R0 K0 ["input"]
        5 GETTABLEKS                       R1 R2 K1 ["url"]
        7 JUMPIFNOT                        R1 ; [+6]
        8 JUMPIFEQKS                       R1 K2 [""] ; [+5]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R1
       13 RETURN                           R2 1
       14 LOADNIL                          R2
       15 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isError"]
        3 JUMPIFNOT                        R1 ; [+16]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K2 ["url"]
        7 ORK                              R1 R2 K1 ["URL"]
        8 GETUPVAL                         R2 2
        9 LOADK                            R4 K3 ["HttpGet"]
       10 LOADK                            R5 K4 ["Failed"]
       11 DUPTABLE                         R6 K5 [{"url"}]
       12 SETTABLEKS                       R1 R6 K2 ["url"]
       14 NAMECALL                         R2 R2 K6 ["getText"]
       16 CALL                             R2 4 1
       17 SETTABLEKS                       R2 R0 K7 ["summary"]
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 2
       21 LOADK                            R3 K3 ["HttpGet"]
       22 LOADK                            R4 K8 ["Fetched"]
       23 DUPTABLE                         R5 K5 [{"url"}]
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R6 R7 K2 ["url"]
       27 SETTABLEKS                       R6 R5 K2 ["url"]
       29 NAMECALL                         R1 R1 K6 ["getText"]
       31 CALL                             R1 4 1
       32 SETTABLEKS                       R1 R0 K7 ["summary"]
       34 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["structuredContent"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U0
        9 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 LOADK                            R5 K2 ["HttpGetTool_httpGet"]
        5 NEWCLOSURE                       R6 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R2
        9 NAMECALL                         R3 R1 K3 ["OnHostInvokeAsync"]
       11 CALL                             R3 3 1
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          VAL R3
       14 CAPTURE                          UPVAL U2
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R5 R6 K4 ["define"]
       18 CALL                             R5 0 1
       19 GETUPVAL                         R8 4
       20 GETTABLEKS                       R7 R8 K5 ["HttpGet"]
       22 NAMECALL                         R5 R5 K6 ["setName"]
       24 CALL                             R5 2 1
       25 LOADK                            R8 K7 ["Fetches the content of a URL via HTTP GET request. Returns the response body as text.\n\nOnly the following URL patterns are allowed:\n"]
       26 GETUPVAL                         R11 1
       27 CALL                             R11 0 1
       28 MOVE                             R9 R11
       29 LOADK                            R10 K8 ["\nAny URL that does not match one of the above rules will be rejected.\nOnly GET requests are supported. The full URL must be provided.\n\nExample:\n- http_get(url: \"https://create.roblox.com/docs/reference/engine/classes/Part.md\")\n- http_get(url: \"https://create.roblox.com/docs/reference/engine/classes/ServerScriptService.md\")\n"]
       30 CONCAT                           R7 R8 R10
       31 NAMECALL                         R5 R5 K9 ["setDescription"]
       33 CALL                             R5 2 1
       34 LOADK                            R7 K10 ["url"]
       35 DUPTABLE                         R8 K13 [{"type", "description"}]
       36 LOADK                            R9 K14 ["string"]
       37 SETTABLEKS                       R9 R8 K11 ["type"]
       39 LOADK                            R9 K15 ["The full URL to fetch. Must match one of the allowed URL patterns."]
       40 SETTABLEKS                       R9 R8 K12 ["description"]
       42 NAMECALL                         R5 R5 K16 ["addArgument"]
       44 CALL                             R5 3 1
       45 MOVE                             R7 R4
       46 NAMECALL                         R5 R5 K17 ["setHandler"]
       48 CALL                             R5 2 1
       49 NAMECALL                         R5 R5 K18 ["build"]
       51 CALL                             R5 1 1
       52 DUPTABLE                         R6 K22 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
       53 DUPCLOSURE                       R7 K23 [PROTO_5]
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          UPVAL U6
       56 SETTABLEKS                       R7 R6 K19 ["transformInitialContent"]
       58 DUPCLOSURE                       R7 K24 [PROTO_7]
       59 CAPTURE                          UPVAL U6
       60 SETTABLEKS                       R7 R6 K20 ["getTransformPreExecuteFn"]
       62 DUPCLOSURE                       R7 K25 [PROTO_9]
       63 CAPTURE                          UPVAL U6
       64 SETTABLEKS                       R7 R6 K21 ["getTransformResultFn"]
       66 DUPTABLE                         R7 K29 [{"definition", "contentWidgets", "streamTransform"}]
       67 SETTABLEKS                       R5 R7 K26 ["definition"]
       69 NEWTABLE                         R8 0 1
       71 GETUPVAL                         R9 5
       72 SETLIST                          R8 R9 1 [1]
       74 SETTABLEKS                       R8 R7 K27 ["contentWidgets"]
       76 SETTABLEKS                       R6 R7 K28 ["streamTransform"]
       78 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["ContentWidgets"]
       20 GETTABLEKS                       R3 R4 K10 ["SummarizedContentWidget"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Tools"]
       27 GETTABLEKS                       R4 R5 K12 ["ToolTypes"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K13 ["Resources"]
       34 GETTABLEKS                       R6 R7 K14 ["Localization"]
       36 GETTABLEKS                       R5 R6 K15 ["Translator"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R6 R1 K16 ["Util"]
       41 GETTABLEKS                       R5 R6 K17 ["ToolBuilder"]
       43 GETTABLEKS                       R7 R1 K16 ["Util"]
       45 GETTABLEKS                       R6 R7 K18 ["ToolResult"]
       47 GETTABLEKS                       R7 R3 K19 ["ToolNames"]
       49 NEWTABLE                         R8 0 1
       51 DUPTABLE                         R9 K23 [{"base", "description", "validate"}]
       52 LOADK                            R10 K24 ["https://create.roblox.com/docs/reference/engine"]
       53 SETTABLEKS                       R10 R9 K20 ["base"]
       55 LOADK                            R10 K25 ["Roblox Engine API docs — URLs must end with .md or be llms.txt"]
       56 SETTABLEKS                       R10 R9 K21 ["description"]
       58 DUPCLOSURE                       R10 K26 [PROTO_0]
       59 SETTABLEKS                       R10 R9 K22 ["validate"]
       61 SETLIST                          R8 R9 1 [1]
       63 DUPCLOSURE                       R9 K27 [PROTO_1]
       64 CAPTURE                          VAL R8
       65 DUPCLOSURE                       R10 K28 [PROTO_2]
       66 CAPTURE                          VAL R8
       67 DUPCLOSURE                       R11 K29 [PROTO_10]
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R4
       75 RETURN                           R11 1
