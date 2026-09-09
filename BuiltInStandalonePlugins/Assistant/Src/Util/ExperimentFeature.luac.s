PROTO_0:
        0 SETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETUPVAL                         R1 1
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADB                            R1 1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+8]
        8 GETIMPORT                        R1 K1 [game]
       10 LOADK                            R3 K2 ["IXPService"]
       11 NAMECALL                         R1 R1 K3 ["GetService"]
       13 CALL                             R1 2 1
       14 SETUPVAL                         R1 1
       15 GETUPVAL                         R2 1
       16 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       18 LOADK                            R3 K4 ["IXPService should be not nil"]
       19 GETIMPORT                        R1 K6 [assert]
       21 CALL                             R1 2 0
       22 GETUPVAL                         R1 2
       23 JUMPIFNOTEQKNIL                  R1 ; [+10]
       25 GETUPVAL                         R1 3
       26 GETTABLEKS                       R1 R1 K7 ["new"]
       28 GETUPVAL                         R2 1
       29 GETUPVAL                         R3 4
       30 GETTABLEKS                       R3 R3 K8 ["FStringNewAssistantExperimentLayer"]
       32 CALL                             R1 2 1
       33 SETUPVAL                         R1 2
       34 GETUPVAL                         R2 2
       35 FASTCALL2K                       ASSERT R2 K9 ; [+4]
       37 LOADK                            R3 K9 ["ExperimentCache should be not nil"]
       38 GETIMPORT                        R1 K6 [assert]
       40 CALL                             R1 2 0
       41 GETUPVAL                         R1 2
       42 NAMECALL                         R1 R1 K10 ["getWhenReady"]
       44 CALL                             R1 1 1
       45 JUMPIFNOTEQKNIL                  R1 ; [+3]
       47 LOADB                            R2 0
       48 RETURN                           R2 1
       49 GETTABLE                         R2 R1 R0
       50 LOADB                            R3 1
       51 JUMPIFEQKB                       R2 TRUE ; [+5]
       53 JUMPIFEQKS                       R2 K11 ["true"] ; [+2]
       55 LOADB                            R3 0 +1
       56 LOADB                            R3 1
       57 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+8]
        3 GETIMPORT                        R0 K1 [game]
        5 LOADK                            R2 K2 ["IXPService"]
        6 NAMECALL                         R0 R0 K3 ["GetService"]
        8 CALL                             R0 2 1
        9 SETUPVAL                         R0 0
       10 GETUPVAL                         R1 0
       11 FASTCALL2K                       ASSERT R1 K4 ; [+4]
       13 LOADK                            R2 K4 ["IXPService should be not nil"]
       14 GETIMPORT                        R0 K6 [assert]
       16 CALL                             R0 2 0
       17 GETUPVAL                         R0 0
       18 GETTABLEKS                       R0 R0 K7 ["OnCreatorLayerLoadingStatusChanged"]
       20 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R1 K3 [Enum.IXPLoadingStatus.Initialized]
        2 JUMPIFNOTEQ                      R0 R1 ; [+11]
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R2 1
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETUPVAL                         R1 2
        9 NAMECALL                         R1 R1 K4 ["Disconnect"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 3
       13 CALL                             R1 0 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+3]
        4 MOVE                             R3 R1
        5 CALL                             R3 0 0
        6 RETURN                           R0 0
        7 LOADNIL                          R3
        8 GETUPVAL                         R5 1
        9 JUMPIFNOTEQKNIL                  R5 ; [+8]
       11 GETIMPORT                        R5 K1 [game]
       13 LOADK                            R7 K2 ["IXPService"]
       14 NAMECALL                         R5 R5 K3 ["GetService"]
       16 CALL                             R5 2 1
       17 SETUPVAL                         R5 1
       18 GETUPVAL                         R6 1
       19 FASTCALL2K                       ASSERT R6 K4 ; [+4]
       21 LOADK                            R7 K4 ["IXPService should be not nil"]
       22 GETIMPORT                        R5 K6 [assert]
       24 CALL                             R5 2 0
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K7 ["OnCreatorLayerLoadingStatusChanged"]
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R0
       31 CAPTURE                          REF R3
       32 CAPTURE                          VAL R1
       33 NAMECALL                         R4 R4 K8 ["Connect"]
       35 CALL                             R4 2 1
       36 MOVE                             R3 R4
       37 CLOSEUPVALS                      R3
       38 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["ExperimentCache"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Flags"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K12 [{["NewAssetToolSet"] = "NewAssetToolSet", ["AssistantUseRemoteService"] = "AssistantUseRemoteService"}]
       24 NEWTABLE                         R4 1 0
       26 GETTABLEKS                       R5 R3 K10 ["NewAssetToolSet"]
       28 GETTABLEKS                       R6 R2 K13 ["FFlagAssistantAssetSearchInsertTool"]
       30 SETTABLE                         R6 R4 R5
       31 LOADNIL                          R5
       32 LOADNIL                          R6
       33 NEWCLOSURE                       R7 P0
       34 CAPTURE                          REF R6
       35 CAPTURE                          REF R5
       36 NEWCLOSURE                       R8 P1
       37 CAPTURE                          VAL R4
       38 CAPTURE                          REF R6
       39 CAPTURE                          REF R5
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R2
       42 NEWCLOSURE                       R9 P2
       43 CAPTURE                          REF R6
       44 NEWCLOSURE                       R10 P3
       45 CAPTURE                          VAL R8
       46 CAPTURE                          REF R6
       47 DUPTABLE                         R11 K20 [{"FeatureNames", "ForceEnabledFeatureNames", "setIxpService", "getExperimentFeatureEnabled", "getOnExperimentChanged", "onceExperimentFeatureEnabled"}]
       48 SETTABLEKS                       R3 R11 K14 ["FeatureNames"]
       50 SETTABLEKS                       R4 R11 K15 ["ForceEnabledFeatureNames"]
       52 SETTABLEKS                       R7 R11 K16 ["setIxpService"]
       54 SETTABLEKS                       R8 R11 K17 ["getExperimentFeatureEnabled"]
       56 SETTABLEKS                       R9 R11 K18 ["getOnExperimentChanged"]
       58 SETTABLEKS                       R10 R11 K19 ["onceExperimentFeatureEnabled"]
       60 CLOSEUPVALS                      R5
       61 RETURN                           R11 1
