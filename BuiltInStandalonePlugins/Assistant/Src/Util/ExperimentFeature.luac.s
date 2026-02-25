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
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R1 R2 K7 ["new"]
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
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADB                            R0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+2]
        8 LOADB                            R0 1
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R1 R2 K0 ["TestAutomation"]
       14 CALL                             R0 1 1
       15 RETURN                           R0 1

PROTO_3:
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
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R0 R1 K7 ["OnCreatorLayerLoadingStatusChanged"]
       20 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["ExperimentCache"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R5 R1 K11 ["Flags"]
       25 GETTABLEKS                       R4 R5 K12 ["Shared"]
       27 GETTABLEKS                       R3 R4 K13 ["FFlagAssistantTestAutomation"]
       29 GETIMPORT                        R4 K5 [require]
       31 GETTABLEKS                       R7 R0 K8 ["Src"]
       33 GETTABLEKS                       R6 R7 K11 ["Flags"]
       35 GETTABLEKS                       R5 R6 K14 ["FFlagAssistantForceTestAutomation"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K5 [require]
       40 GETTABLEKS                       R8 R0 K8 ["Src"]
       42 GETTABLEKS                       R7 R8 K11 ["Flags"]
       44 GETTABLEKS                       R6 R7 K15 ["FStringNewAssistantExperimentLayer"]
       46 CALL                             R5 1 1
       47 DUPTABLE                         R6 K17 [{"TestAutomation"}]
       48 LOADK                            R7 K16 ["TestAutomation"]
       49 SETTABLEKS                       R7 R6 K16 ["TestAutomation"]
       51 NEWTABLE                         R7 1 0
       53 GETTABLEKS                       R8 R6 K16 ["TestAutomation"]
       55 MOVE                             R9 R4
       56 CALL                             R9 0 1
       57 SETTABLE                         R9 R7 R8
       58 LOADNIL                          R8
       59 LOADNIL                          R9
       60 NEWCLOSURE                       R10 P0
       61 CAPTURE                          REF R9
       62 CAPTURE                          REF R8
       63 NEWCLOSURE                       R11 P1
       64 CAPTURE                          VAL R7
       65 CAPTURE                          REF R9
       66 CAPTURE                          REF R8
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R5
       69 DUPCLOSURE                       R12 K18 [PROTO_2]
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R6
       74 NEWCLOSURE                       R13 P3
       75 CAPTURE                          REF R9
       76 DUPTABLE                         R14 K25 [{"FeatureNames", "ForceEnabledFeatureNames", "setIxpService", "getExperimentFeatureEnabled", "getOnExperimentChanged", "isTestAutomationEnabled"}]
       77 SETTABLEKS                       R6 R14 K19 ["FeatureNames"]
       79 SETTABLEKS                       R7 R14 K20 ["ForceEnabledFeatureNames"]
       81 SETTABLEKS                       R10 R14 K21 ["setIxpService"]
       83 SETTABLEKS                       R11 R14 K22 ["getExperimentFeatureEnabled"]
       85 SETTABLEKS                       R13 R14 K23 ["getOnExperimentChanged"]
       87 SETTABLEKS                       R12 R14 K24 ["isTestAutomationEnabled"]
       89 CLOSEUPVALS                      R8
       90 RETURN                           R14 1
