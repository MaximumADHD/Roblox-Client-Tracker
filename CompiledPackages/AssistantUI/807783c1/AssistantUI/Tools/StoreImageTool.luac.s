PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["filePath"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["filePath"]
        5 JUMPIFNOTEQKS                    R1 K1 [""] ; [+15]
        7 GETUPVAL                         R1 0
        8 CALL                             R1 0 1
        9 LOADK                            R3 K2 ["Error: 'filePath' argument is required and must be a non-empty string."]
       10 NAMECALL                         R1 R1 K3 ["addText"]
       12 CALL                             R1 2 1
       13 LOADB                            R3 1
       14 NAMECALL                         R1 R1 K4 ["setError"]
       16 CALL                             R1 2 1
       17 NAMECALL                         R1 R1 K5 ["build"]
       19 CALL                             R1 1 -1
       20 RETURN                           R1 -1
       21 GETIMPORT                        R1 K7 [pcall]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K8 ["loadImageFromPathAsync"]
       26 GETTABLEKS                       R3 R0 K0 ["filePath"]
       28 CALL                             R1 2 2
       29 JUMPIF                           R1 ; [+23]
       30 GETUPVAL                         R3 0
       31 CALL                             R3 0 1
       32 LOADK                            R6 K9 ["Error loading image: %*"]
       33 FASTCALL1                        TOSTRING R2 ; [+3]
       34 MOVE                             R9 R2
       35 GETIMPORT                        R8 K11 [tostring]
       37 CALL                             R8 1 1
       38 NAMECALL                         R6 R6 K12 ["format"]
       40 CALL                             R6 2 1
       41 MOVE                             R5 R6
       42 NAMECALL                         R3 R3 K3 ["addText"]
       44 CALL                             R3 2 1
       45 LOADB                            R5 1
       46 NAMECALL                         R3 R3 K4 ["setError"]
       48 CALL                             R3 2 1
       49 NAMECALL                         R3 R3 K5 ["build"]
       51 CALL                             R3 1 -1
       52 RETURN                           R3 -1
       53 GETUPVAL                         R3 2
       54 GETTABLEKS                       R3 R3 K13 ["storeImage"]
       56 MOVE                             R4 R2
       57 CALL                             R3 1 1
       58 GETUPVAL                         R4 0
       59 CALL                             R4 0 1
       60 MOVE                             R6 R3
       61 NAMECALL                         R4 R4 K3 ["addText"]
       63 CALL                             R4 2 1
       64 NAMECALL                         R4 R4 K5 ["build"]
       66 CALL                             R4 1 -1
       67 RETURN                           R4 -1

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 GETUPVAL                         R2 3
        5 GETTABLEKS                       R2 R2 K1 ["define"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 4
        9 GETTABLEKS                       R4 R4 K2 ["StoreImage"]
       11 NAMECALL                         R2 R2 K3 ["setName"]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R4 4
       15 GETTABLEKS                       R4 R4 K4 ["replaceTokens"]
       17 LOADK                            R5 K5 ["Load an image from a local file path and return an IMAGEID_<id> URI that can be passed to other tools (e.g. as attachedImageUri for {ToolNames.PrimitiveGen}).\nUse this tool when you need to convert a local image file into an image URI that other tools accept.\nSupported formats: png, jpg, jpeg. Max file size: 5MB."]
       18 CALL                             R4 1 -1
       19 NAMECALL                         R2 R2 K6 ["setDescription"]
       21 CALL                             R2 -1 1
       22 LOADK                            R4 K7 ["filePath"]
       23 DUPTABLE                         R5 K10 [{"type", "description"}]
       24 LOADK                            R6 K11 ["string"]
       25 SETTABLEKS                       R6 R5 K8 ["type"]
       27 LOADK                            R6 K12 ["Absolute path to a local image file (png, jpg, or jpeg)."]
       28 SETTABLEKS                       R6 R5 K9 ["description"]
       30 NAMECALL                         R2 R2 K13 ["addArgument"]
       32 CALL                             R2 3 1
       33 DUPTABLE                         R4 K19 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
       34 LOADK                            R5 K20 ["Store Image"]
       35 SETTABLEKS                       R5 R4 K14 ["title"]
       37 LOADB                            R5 0
       38 SETTABLEKS                       R5 R4 K15 ["readOnlyHint"]
       40 LOADB                            R5 0
       41 SETTABLEKS                       R5 R4 K16 ["destructiveHint"]
       43 LOADB                            R5 0
       44 SETTABLEKS                       R5 R4 K17 ["idempotentHint"]
       46 LOADB                            R5 0
       47 SETTABLEKS                       R5 R4 K18 ["openWorldHint"]
       49 NAMECALL                         R2 R2 K21 ["setAnnotations"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R1
       53 NAMECALL                         R2 R2 K22 ["setHandler"]
       55 CALL                             R2 2 1
       56 NAMECALL                         R2 R2 K23 ["build"]
       58 CALL                             R2 1 1
       59 DUPTABLE                         R3 K25 [{"definition"}]
       60 SETTABLEKS                       R2 R3 K24 ["definition"]
       62 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["ImageAttachmentUtils"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["ImageContentStore"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["ModelContextProtocol"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Tools"]
       32 GETTABLEKS                       R5 R5 K12 ["ToolTypes"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K6 ["Util"]
       37 GETTABLEKS                       R5 R5 K13 ["ToolBuilder"]
       39 GETTABLEKS                       R6 R3 K6 ["Util"]
       41 GETTABLEKS                       R6 R6 K14 ["ToolResult"]
       43 GETTABLEKS                       R7 R4 K15 ["ToolNames"]
       45 DUPCLOSURE                       R8 K16 [PROTO_1]
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R7
       51 RETURN                           R8 1
