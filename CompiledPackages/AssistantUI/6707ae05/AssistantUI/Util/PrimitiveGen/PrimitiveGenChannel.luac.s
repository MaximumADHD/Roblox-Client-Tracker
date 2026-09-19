PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["find"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Scope"]
        6 MOVE                             R4 R0
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["InstanceChannel"]
       13 GETTABLEKS                       R2 R2 K7 ["InstanceChannel"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 8 0
       18 LOADK                            R3 K8 ["PrimitiveGen"]
       19 SETTABLEKS                       R3 R2 K9 ["Scope"]
       21 DUPTABLE                         R3 K14 [{["Stage"] = "stage", ["Images"] = "images"}]
       22 SETTABLEKS                       R3 R2 K15 ["Field"]
       24 LOADN                            R3 4
       25 SETTABLEKS                       R3 R2 K16 ["PREVIEW_IMAGE_COUNT"]
       27 LOADN                            R3 30
       28 SETTABLEKS                       R3 R2 K17 ["PREVIEW_ELEVATION"]
       30 NEWTABLE                         R3 0 0
       32 SETTABLEKS                       R3 R2 K18 ["PREVIEW_VIEW_ANGLES"]
       34 LOADN                            R5 0
       35 GETTABLEKS                       R6 R2 K16 ["PREVIEW_IMAGE_COUNT"]
       37 SUBK                             R3 R6 K19 [1]
       38 LOADN                            R4 1
       39 FORNPREP                         R3
       40 GETTABLEKS                       R7 R2 K18 ["PREVIEW_VIEW_ANGLES"]
       42 DUPTABLE                         R8 K22 [{"azimuth", "elevation"}]
       43 GETTABLEKS                       R12 R2 K16 ["PREVIEW_IMAGE_COUNT"]
       45 DIVRK                            R11 K24 [360] R12
       46 MUL                              R10 R11 R5
       47 ADDK                             R9 R10 K23 [45]
       48 SETTABLEKS                       R9 R8 K20 ["azimuth"]
       50 GETTABLEKS                       R9 R2 K17 ["PREVIEW_ELEVATION"]
       52 SETTABLEKS                       R9 R8 K21 ["elevation"]
       54 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       56 GETIMPORT                        R6 K27 [table.insert]
       58 CALL                             R6 2 0
       59 FORNLOOP                         R3
       60 DUPTABLE                         R3 K32 [{["Submitting"] = "Submitting", ["ResolvingDependencies"] = "ResolvingDependencies", ["DownloadingScript"] = "DownloadingScript", ["Inserting"] = "Inserting"}]
       61 SETTABLEKS                       R3 R2 K10 ["Stage"]
       63 DUPCLOSURE                       R3 K33 [PROTO_0]
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R2
       66 SETTABLEKS                       R3 R2 K34 ["hasLiveGeneration"]
       68 RETURN                           R2 1
