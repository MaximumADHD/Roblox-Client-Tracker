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
       23 JUMPIFNOTEQKNIL                  R1 ; [+9]
       25 GETUPVAL                         R1 3
       26 GETTABLEKS                       R1 R1 K7 ["new"]
       28 GETUPVAL                         R2 1
       29 GETUPVAL                         R3 4
       30 CALL                             R3 0 -1
       31 CALL                             R1 -1 1
       32 SETUPVAL                         R1 2
       33 GETUPVAL                         R2 2
       34 FASTCALL2K                       ASSERT R2 K8 ; [+4]
       36 LOADK                            R3 K8 ["ExperimentCache should be not nil"]
       37 GETIMPORT                        R1 K6 [assert]
       39 CALL                             R1 2 0
       40 GETUPVAL                         R1 2
       41 NAMECALL                         R1 R1 K9 ["getWhenReady"]
       43 CALL                             R1 1 1
       44 JUMPIFNOTEQKNIL                  R1 ; [+3]
       46 LOADB                            R2 0
       47 RETURN                           R2 1
       48 GETTABLE                         R2 R1 R0
       49 LOADB                            R3 1
       50 JUMPIFEQKB                       R2 TRUE ; [+5]
       52 JUMPIFEQKS                       R2 K10 ["true"] ; [+2]
       54 LOADB                            R3 0 +1
       55 LOADB                            R3 1
       56 RETURN                           R3 1

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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["ExperimentCache"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Flags"]
       29 GETTABLEKS                       R4 R4 K12 ["FStringNewAssistantExperimentLayer"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R1 K11 ["Flags"]
       34 GETTABLEKS                       R4 R4 K13 ["Shared"]
       36 GETTABLEKS                       R4 R4 K14 ["FFlagAssistantAssetSearchInsertTool"]
       38 DUPTABLE                         R5 K17 [{"TestAutomation", "NewAssetToolSet"}]
       39 LOADK                            R6 K15 ["TestAutomation"]
       40 SETTABLEKS                       R6 R5 K15 ["TestAutomation"]
       42 LOADK                            R6 K16 ["NewAssetToolSet"]
       43 SETTABLEKS                       R6 R5 K16 ["NewAssetToolSet"]
       45 NEWTABLE                         R6 1 0
       47 GETTABLEKS                       R7 R5 K16 ["NewAssetToolSet"]
       49 MOVE                             R8 R4
       50 CALL                             R8 0 1
       51 SETTABLE                         R8 R6 R7
       52 LOADNIL                          R7
       53 LOADNIL                          R8
       54 NEWCLOSURE                       R9 P0
       55 CAPTURE                          REF R8
       56 CAPTURE                          REF R7
       57 NEWCLOSURE                       R10 P1
       58 CAPTURE                          VAL R6
       59 CAPTURE                          REF R8
       60 CAPTURE                          REF R7
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R3
       63 NEWCLOSURE                       R11 P2
       64 CAPTURE                          REF R8
       65 DUPTABLE                         R12 K23 [{"FeatureNames", "ForceEnabledFeatureNames", "setIxpService", "getExperimentFeatureEnabled", "getOnExperimentChanged"}]
       66 SETTABLEKS                       R5 R12 K18 ["FeatureNames"]
       68 SETTABLEKS                       R6 R12 K19 ["ForceEnabledFeatureNames"]
       70 SETTABLEKS                       R9 R12 K20 ["setIxpService"]
       72 SETTABLEKS                       R10 R12 K21 ["getExperimentFeatureEnabled"]
       74 SETTABLEKS                       R11 R12 K22 ["getOnExperimentChanged"]
       76 CLOSEUPVALS                      R7
       77 RETURN                           R12 1
