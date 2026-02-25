PROTO_0:
        0 GETTABLEKS                       R2 R0 K1 ["prompt"]
        2 ORK                              R1 R2 K0 [""]
        3 GETTABLEKS                       R2 R0 K2 ["attachedImageUri"]
        5 LOADK                            R4 K3 ["Received primitive generation request.\nPrompt: \"%*\""]
        6 MOVE                             R6 R1
        7 NAMECALL                         R4 R4 K4 ["format"]
        9 CALL                             R4 2 1
       10 MOVE                             R3 R4
       11 GETUPVAL                         R4 0
       12 CALL                             R4 0 1
       13 MOVE                             R6 R3
       14 NAMECALL                         R4 R4 K5 ["addText"]
       16 CALL                             R4 2 1
       17 JUMPIFNOT                        R2 ; [+13]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R5 R6 K6 ["getImage"]
       21 MOVE                             R6 R2
       22 CALL                             R5 1 1
       23 JUMPIFNOT                        R5 ; [+7]
       24 GETTABLEKS                       R8 R5 K7 ["data"]
       26 GETTABLEKS                       R9 R5 K8 ["mimeType"]
       28 NAMECALL                         R6 R4 K9 ["addImage"]
       30 CALL                             R6 3 0
       31 NAMECALL                         R5 R4 K10 ["build"]
       33 CALL                             R5 1 -1
       34 RETURN                           R5 -1

PROTO_1:
        0 LOADK                            R0 K0 ["Primitive Gen"]
        1 RETURN                           R0 1

PROTO_2:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R2 R3 K1 ["define"]
        6 CALL                             R2 0 1
        7 GETUPVAL                         R6 3
        8 GETTABLEKS                       R5 R6 K2 ["ToolNames"]
       10 GETTABLEKS                       R4 R5 K3 ["PrimitiveGen"]
       12 NAMECALL                         R2 R2 K4 ["setName"]
       14 CALL                             R2 2 1
       15 LOADK                            R4 K5 ["ONLY call this tool when the user EXPLICITLY requests to create something using primitive shapes, blocks, or geometric parts.\n\nTrigger phrases include: \"make with primitives\", \"using primitive shapes\", \"with blocks\", \"using parts\", \"geometric shapes\", \"build with cubes/spheres/cylinders\", \"primitive model\".\n\nDO NOT use this tool for generic requests like \"make a car\" or \"create a house\" - only use it when primitives are specifically requested.\n\nIf the user has provided a reference image, pass the image URI to this tool using the attachedImageUri parameter.\n\nIMPORTANT: Only include a prompt if the user explicitly describes what they want to create. If the user only provides an image without a text description, leave the prompt as an empty string."]
       16 NAMECALL                         R2 R2 K6 ["setDescription"]
       18 CALL                             R2 2 1
       19 LOADK                            R4 K7 ["prompt"]
       20 DUPTABLE                         R5 K10 [{"type", "description"}]
       21 LOADK                            R6 K11 ["string"]
       22 SETTABLEKS                       R6 R5 K8 ["type"]
       24 LOADK                            R6 K12 ["The prompt to hint what should be generated for the 3D object. If user doesn't specify, just leave this as empty string."]
       25 SETTABLEKS                       R6 R5 K9 ["description"]
       27 NAMECALL                         R2 R2 K13 ["addArgument"]
       29 CALL                             R2 3 1
       30 LOADK                            R4 K14 ["attachedImageUri"]
       31 DUPTABLE                         R5 K10 [{"type", "description"}]
       32 LOADK                            R6 K11 ["string"]
       33 SETTABLEKS                       R6 R5 K8 ["type"]
       35 LOADK                            R6 K15 ["The image URI (IMAGEID_<id>) referencing the attached image from user input."]
       36 SETTABLEKS                       R6 R5 K9 ["description"]
       38 NAMECALL                         R2 R2 K16 ["addOptionalArgument"]
       40 CALL                             R2 3 1
       41 MOVE                             R4 R1
       42 NAMECALL                         R2 R2 K17 ["setHandler"]
       44 CALL                             R2 2 1
       45 NAMECALL                         R2 R2 K18 ["build"]
       47 CALL                             R2 1 1
       48 DUPTABLE                         R3 K21 [{"definition", "displayNameFunction"}]
       49 SETTABLEKS                       R2 R3 K19 ["definition"]
       51 DUPCLOSURE                       R4 K22 [PROTO_1]
       52 SETTABLEKS                       R4 R3 K20 ["displayNameFunction"]
       54 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["ImageContentStore"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Tools"]
       25 GETTABLEKS                       R4 R5 K11 ["ToolTypes"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R2 K6 ["Util"]
       30 GETTABLEKS                       R4 R5 K12 ["ToolBuilder"]
       32 GETTABLEKS                       R6 R2 K6 ["Util"]
       34 GETTABLEKS                       R5 R6 K13 ["ToolResult"]
       36 DUPCLOSURE                       R6 K14 [PROTO_2]
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R3
       41 RETURN                           R6 1
