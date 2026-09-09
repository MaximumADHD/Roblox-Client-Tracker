PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["slots"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 DUPTABLE                         R7 K7 [{"index", "status", "imageId", "mimeType", "errorMessage", "failureReason"}]
        8 GETTABLEKS                       R8 R6 K1 ["index"]
       10 SETTABLEKS                       R8 R7 K1 ["index"]
       12 GETTABLEKS                       R8 R6 K2 ["status"]
       14 SETTABLEKS                       R8 R7 K2 ["status"]
       16 GETTABLEKS                       R8 R6 K3 ["imageId"]
       18 SETTABLEKS                       R8 R7 K3 ["imageId"]
       20 GETTABLEKS                       R8 R6 K4 ["mimeType"]
       22 SETTABLEKS                       R8 R7 K4 ["mimeType"]
       24 GETTABLEKS                       R8 R6 K5 ["errorMessage"]
       26 SETTABLEKS                       R8 R7 K5 ["errorMessage"]
       28 GETTABLEKS                       R8 R6 K6 ["failureReason"]
       30 SETTABLEKS                       R8 R7 K6 ["failureReason"]
       32 SETTABLE                         R7 R1 R5
       33 FORGLOOP                         R2 2 ; [-27]
       35 DUPTABLE                         R2 K13 [{"stage", "requestId", "prompt", "model", "slots", "pickedSlotIndex", "errorMessage", "failureReason"}]
       36 GETTABLEKS                       R3 R0 K8 ["stage"]
       38 SETTABLEKS                       R3 R2 K8 ["stage"]
       40 GETTABLEKS                       R3 R0 K9 ["requestId"]
       42 SETTABLEKS                       R3 R2 K9 ["requestId"]
       44 GETTABLEKS                       R3 R0 K10 ["prompt"]
       46 SETTABLEKS                       R3 R2 K10 ["prompt"]
       48 GETTABLEKS                       R3 R0 K11 ["model"]
       50 SETTABLEKS                       R3 R2 K11 ["model"]
       52 SETTABLEKS                       R1 R2 K0 ["slots"]
       54 GETTABLEKS                       R3 R0 K12 ["pickedSlotIndex"]
       56 SETTABLEKS                       R3 R2 K12 ["pickedSlotIndex"]
       58 GETTABLEKS                       R3 R0 K5 ["errorMessage"]
       60 SETTABLEKS                       R3 R2 K5 ["errorMessage"]
       62 GETTABLEKS                       R3 R0 K6 ["failureReason"]
       64 SETTABLEKS                       R3 R2 K6 ["failureReason"]
       66 RETURN                           R2 1

PROTO_1:
        0 LOADK                            R4 K0 ["Gen3dViewModel"]
        1 DUPTABLE                         R5 K6 [{"visible", "selection", "generation", "activeGenerationUniqueIds", "referenceImage"}]
        2 GETTABLEKS                       R6 R1 K1 ["visible"]
        4 SETTABLEKS                       R6 R5 K1 ["visible"]
        6 GETTABLEKS                       R6 R1 K2 ["selection"]
        8 SETTABLEKS                       R6 R5 K2 ["selection"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R7 R1 K3 ["generation"]
       13 CALL                             R6 1 1
       14 SETTABLEKS                       R6 R5 K3 ["generation"]
       16 GETTABLEKS                       R6 R1 K4 ["activeGenerationUniqueIds"]
       18 JUMPIF                           R6 ; [+2]
       19 NEWTABLE                         R6 0 0
       21 SETTABLEKS                       R6 R5 K4 ["activeGenerationUniqueIds"]
       23 GETTABLEKS                       R6 R1 K5 ["referenceImage"]
       25 JUMPIF                           R6 ; [+1]
       26 GETUPVAL                         R6 1
       27 SETTABLEKS                       R6 R5 K5 ["referenceImage"]
       29 NAMECALL                         R2 R0 K7 ["SetItem"]
       31 CALL                             R2 3 0
       32 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R6 K0 ["Gen3dIntent:"]
        1 MOVE                             R7 R1
        2 CONCAT                           R5 R6 R7
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R0 K1 ["OnInvoke"]
        6 CALL                             R3 3 1
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R3
        9 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R4 K0 ["Gen3dViewModel"]
        1 NAMECALL                         R2 R0 K1 ["GetItem"]
        3 CALL                             R2 2 1
        4 JUMPIFEQKNIL                     R2 ; [+4]
        6 MOVE                             R3 R1
        7 MOVE                             R4 R2
        8 CALL                             R3 1 0
        9 LOADK                            R5 K0 ["Gen3dViewModel"]
       10 MOVE                             R6 R1
       11 NAMECALL                         R3 R0 K2 ["OnSetItem"]
       13 CALL                             R3 3 1
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R3
       16 RETURN                           R4 1

PROTO_6:
        0 PREPVARARGS                      2
        1 LOADK                            R5 K0 ["Gen3dIntent:"]
        2 MOVE                             R6 R1
        3 CONCAT                           R4 R5 R6
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R2 R0 K1 ["Invoke"]
        7 CALL                             R2 -1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K28 [{["StartGeneration"] = "startGeneration", ["PickSlot"] = "pickSlot", ["Cancel"] = "cancel", ["StartBatch"] = "startBatch", ["SetPrompt"] = "setPrompt", ["SetModel"] = "setModel", ["Open"] = "open", ["Close"] = "close", ["PickReferenceImage"] = "pickReferenceImage", ["ClearReferenceImage"] = "clearReferenceImage"}]
       15 DUPTABLE                         R3 K31 [{["status"] = "None"}]
       16 DUPCLOSURE                       R4 K32 [PROTO_0]
       17 NEWTABLE                         R5 2 0
       19 DUPCLOSURE                       R6 K33 [PROTO_1]
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R3
       22 SETTABLEKS                       R6 R5 K34 ["publish"]
       24 DUPCLOSURE                       R6 K35 [PROTO_3]
       25 SETTABLEKS                       R6 R5 K36 ["onIntent"]
       27 NEWTABLE                         R6 2 0
       29 DUPCLOSURE                       R7 K37 [PROTO_5]
       30 SETTABLEKS                       R7 R6 K38 ["subscribe"]
       32 DUPCLOSURE                       R7 K39 [PROTO_6]
       33 SETTABLEKS                       R7 R6 K40 ["sendIntent"]
       35 DUPTABLE                         R7 K45 [{"Model", "View", "Intents", "sanitizeGeneration"}]
       36 SETTABLEKS                       R5 R7 K41 ["Model"]
       38 SETTABLEKS                       R6 R7 K42 ["View"]
       40 SETTABLEKS                       R2 R7 K43 ["Intents"]
       42 SETTABLEKS                       R4 R7 K44 ["sanitizeGeneration"]
       44 RETURN                           R7 1
