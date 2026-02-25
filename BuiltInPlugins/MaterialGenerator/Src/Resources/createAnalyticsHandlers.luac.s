PROTO_0:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 GETUPVAL                         R2 0
        6 DUPTABLE                         R3 K3 [{"studioSid", "clientId", "placeId"}]
        7 GETUPVAL                         R4 1
        8 NAMECALL                         R4 R4 K4 ["GetSessionId"]
       10 CALL                             R4 1 1
       11 SETTABLEKS                       R4 R3 K0 ["studioSid"]
       13 GETUPVAL                         R4 1
       14 NAMECALL                         R4 R4 K5 ["GetClientId"]
       16 CALL                             R4 1 1
       17 SETTABLEKS                       R4 R3 K1 ["clientId"]
       19 GETIMPORT                        R5 K7 [game]
       21 GETTABLEKS                       R4 R5 K8 ["PlaceId"]
       23 SETTABLEKS                       R4 R3 K2 ["placeId"]
       25 MOVE                             R4 R1
       26 CALL                             R2 2 1
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R3 R4 K9 ["LogAnalytics"]
       30 CALL                             R3 0 1
       31 JUMPIFNOT                        R3 ; [+14]
       32 GETIMPORT                        R3 K11 [print]
       34 LOADK                            R4 K12 ["%s SendEvent eventName=%s args=%s"]
       35 LOADK                            R6 K13 ["MaterialGenerator"]
       36 MOVE                             R7 R0
       37 GETUPVAL                         R8 3
       38 MOVE                             R10 R2
       39 NAMECALL                         R8 R8 K14 ["JSONEncode"]
       41 CALL                             R8 2 -1
       42 NAMECALL                         R4 R4 K15 ["format"]
       44 CALL                             R4 -1 -1
       45 CALL                             R3 -1 0
       46 GETUPVAL                         R3 1
       47 LOADK                            R5 K16 ["studio"]
       48 LOADK                            R6 K13 ["MaterialGenerator"]
       49 MOVE                             R7 R0
       50 MOVE                             R8 R2
       51 NAMECALL                         R3 R3 K17 ["SendEventDeferred"]
       53 CALL                             R3 5 0
       54 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R5 0
        1 LOADK                            R6 K0 ["GenerateButtonClicked"]
        2 DUPTABLE                         R7 K5 [{"generationId", "samples", "textPrompt", "filteredTextPrompt"}]
        3 SETTABLEKS                       R1 R7 K1 ["generationId"]
        5 SETTABLEKS                       R2 R7 K2 ["samples"]
        7 SETTABLEKS                       R3 R7 K3 ["textPrompt"]
        9 SETTABLEKS                       R4 R7 K4 ["filteredTextPrompt"]
       11 CALL                             R5 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R6 0
        1 LOADK                            R7 K0 ["GenerateMaterials"]
        2 DUPTABLE                         R8 K6 [{"generationId", "inputType", "samples", "promptText", "filteredPromptText"}]
        3 SETTABLEKS                       R1 R8 K1 ["generationId"]
        5 SETTABLEKS                       R2 R8 K2 ["inputType"]
        7 SETTABLEKS                       R3 R8 K3 ["samples"]
        9 SETTABLEKS                       R4 R8 K4 ["promptText"]
       11 SETTABLEKS                       R5 R8 K5 ["filteredPromptText"]
       13 CALL                             R6 2 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["isEnumValue"]
        3 MOVE                             R6 R2
        4 CALL                             R5 1 1
        5 FASTCALL2K                       ASSERT R5 K1 ; [+4]
        7 LOADK                            R6 K1 ["Expected errorType to be a GenerationErrorType"]
        8 GETIMPORT                        R4 K3 [assert]
       10 CALL                             R4 2 0
       11 LOADNIL                          R4
       12 JUMPIFNOT                        R3 ; [+10]
       13 JUMPIFEQKS                       R3 K4 [""] ; [+9]
       15 LOADK                            R5 K5 ["%*: '%*'"]
       16 MOVE                             R7 R2
       17 MOVE                             R8 R3
       18 NAMECALL                         R5 R5 K6 ["format"]
       20 CALL                             R5 3 1
       21 MOVE                             R4 R5
       22 JUMP                             ; [+6]
       23 FASTCALL1                        TOSTRING R2 ; [+3]
       24 MOVE                             R6 R2
       25 GETIMPORT                        R5 K8 [tostring]
       27 CALL                             R5 1 1
       28 MOVE                             R4 R5
       29 GETUPVAL                         R5 1
       30 LOADK                            R6 K9 ["GenerateMaterialsError"]
       31 DUPTABLE                         R7 K12 [{"promptText", "errorMessage"}]
       32 SETTABLEKS                       R1 R7 K10 ["promptText"]
       34 SETTABLEKS                       R4 R7 K11 ["errorMessage"]
       36 CALL                             R5 2 0
       37 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R3
        1 GETTABLEKS                       R4 R1 K0 ["BaseMaterial"]
        3 JUMPIFNOT                        R4 ; [+4]
        4 GETTABLEKS                       R4 R1 K0 ["BaseMaterial"]
        6 GETTABLEKS                       R3 R4 K1 ["Name"]
        8 LOADNIL                          R4
        9 GETTABLEKS                       R5 R1 K2 ["MaterialPattern"]
       11 JUMPIFNOT                        R5 ; [+4]
       12 GETTABLEKS                       R5 R1 K2 ["MaterialPattern"]
       14 GETTABLEKS                       R4 R5 K1 ["Name"]
       16 GETUPVAL                         R5 0
       17 LOADK                            R6 K3 ["SaveGeneratedMaterial"]
       18 DUPTABLE                         R7 K13 [{"colorMap", "metalnessMap", "normalMap", "roughnessMap", "name", "baseMaterial", "materialPattern", "studsPerTile", "generationId"}]
       19 GETTABLEKS                       R8 R1 K14 ["ColorMap"]
       21 SETTABLEKS                       R8 R7 K4 ["colorMap"]
       23 GETTABLEKS                       R8 R1 K15 ["MetalnessMap"]
       25 SETTABLEKS                       R8 R7 K5 ["metalnessMap"]
       27 GETTABLEKS                       R8 R1 K16 ["NormalMap"]
       29 SETTABLEKS                       R8 R7 K6 ["normalMap"]
       31 GETTABLEKS                       R8 R1 K17 ["RoughnessMap"]
       33 SETTABLEKS                       R8 R7 K7 ["roughnessMap"]
       35 GETTABLEKS                       R8 R1 K1 ["Name"]
       37 SETTABLEKS                       R8 R7 K8 ["name"]
       39 SETTABLEKS                       R3 R7 K9 ["baseMaterial"]
       41 SETTABLEKS                       R4 R7 K10 ["materialPattern"]
       43 GETTABLEKS                       R8 R1 K18 ["StudsPerTile"]
       45 SETTABLEKS                       R8 R7 K11 ["studsPerTile"]
       47 SETTABLEKS                       R2 R7 K12 ["generationId"]
       49 CALL                             R5 2 0
       50 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 DUPTABLE                         R2 K4 [{"generateButtonClicked", "generateMaterials", "generateMaterialsError", "saveButtonClicked"}]
        6 NEWCLOSURE                       R3 P1
        7 CAPTURE                          VAL R1
        8 SETTABLEKS                       R3 R2 K0 ["generateButtonClicked"]
       10 NEWCLOSURE                       R3 P2
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R3 R2 K1 ["generateMaterials"]
       14 NEWCLOSURE                       R3 P3
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R3 R2 K2 ["generateMaterialsError"]
       19 NEWCLOSURE                       R3 P4
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R3 R2 K3 ["saveButtonClicked"]
       23 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R5 R1 K9 ["Src"]
       19 GETTABLEKS                       R4 R5 K10 ["Util"]
       21 GETTABLEKS                       R3 R4 K11 ["DebugFlags"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [require]
       26 GETTABLEKS                       R6 R1 K9 ["Src"]
       28 GETTABLEKS                       R5 R6 K12 ["Enum"]
       30 GETTABLEKS                       R4 R5 K13 ["GenerationErrorType"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K8 [require]
       35 GETTABLEKS                       R6 R1 K9 ["Src"]
       37 GETTABLEKS                       R5 R6 K14 ["Types"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K8 [require]
       42 GETTABLEKS                       R7 R1 K15 ["Packages"]
       44 GETTABLEKS                       R6 R7 K16 ["Dash"]
       46 CALL                             R5 1 1
       47 GETTABLEKS                       R6 R5 K17 ["join"]
       49 DUPCLOSURE                       R7 K18 [PROTO_5]
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R3
       54 RETURN                           R7 1
