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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["ExperimentCache"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["Flags"]
       25 GETTABLEKS                       R3 R3 K12 ["Shared"]
       27 GETTABLEKS                       R3 R3 K13 ["FFlagForceAssistantBackgroundDataModelToolCall"]
       29 GETTABLEKS                       R4 R1 K11 ["Flags"]
       31 GETTABLEKS                       R4 R4 K12 ["Shared"]
       33 GETTABLEKS                       R4 R4 K14 ["FFlagForceAssistantStudioStateSystemReminder"]
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Src"]
       39 GETTABLEKS                       R6 R6 K11 ["Flags"]
       41 GETTABLEKS                       R6 R6 K15 ["FStringNewAssistantExperimentLayer"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R1 K11 ["Flags"]
       46 GETTABLEKS                       R6 R6 K12 ["Shared"]
       48 GETTABLEKS                       R6 R6 K16 ["FFlagAssistantAssetSearchInsertTool"]
       50 DUPTABLE                         R7 K23 [{"TestAutomation", "NewAssetToolSet", "UnitTestSubagent", "ScreenCaptureSubagent", "BackgroundDataModelToolCall", "StudioStateSystemReminder"}]
       51 LOADK                            R8 K17 ["TestAutomation"]
       52 SETTABLEKS                       R8 R7 K17 ["TestAutomation"]
       54 LOADK                            R8 K18 ["NewAssetToolSet"]
       55 SETTABLEKS                       R8 R7 K18 ["NewAssetToolSet"]
       57 LOADK                            R8 K19 ["UnitTestSubagent"]
       58 SETTABLEKS                       R8 R7 K19 ["UnitTestSubagent"]
       60 LOADK                            R8 K20 ["ScreenCaptureSubagent"]
       61 SETTABLEKS                       R8 R7 K20 ["ScreenCaptureSubagent"]
       63 LOADK                            R8 K21 ["BackgroundDataModelToolCall"]
       64 SETTABLEKS                       R8 R7 K21 ["BackgroundDataModelToolCall"]
       66 LOADK                            R8 K22 ["StudioStateSystemReminder"]
       67 SETTABLEKS                       R8 R7 K22 ["StudioStateSystemReminder"]
       69 NEWTABLE                         R8 4 0
       71 GETTABLEKS                       R9 R7 K18 ["NewAssetToolSet"]
       73 MOVE                             R10 R6
       74 CALL                             R10 0 1
       75 SETTABLE                         R10 R8 R9
       76 GETTABLEKS                       R9 R7 K21 ["BackgroundDataModelToolCall"]
       78 MOVE                             R10 R3
       79 CALL                             R10 0 1
       80 SETTABLE                         R10 R8 R9
       81 GETTABLEKS                       R9 R7 K22 ["StudioStateSystemReminder"]
       83 MOVE                             R10 R4
       84 CALL                             R10 0 1
       85 SETTABLE                         R10 R8 R9
       86 LOADNIL                          R9
       87 LOADNIL                          R10
       88 NEWCLOSURE                       R11 P0
       89 CAPTURE                          REF R10
       90 CAPTURE                          REF R9
       91 NEWCLOSURE                       R12 P1
       92 CAPTURE                          VAL R8
       93 CAPTURE                          REF R10
       94 CAPTURE                          REF R9
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R5
       97 NEWCLOSURE                       R13 P2
       98 CAPTURE                          REF R10
       99 NEWCLOSURE                       R14 P3
      100 CAPTURE                          VAL R12
      101 CAPTURE                          REF R10
      102 DUPTABLE                         R15 K30 [{"FeatureNames", "ForceEnabledFeatureNames", "setIxpService", "getExperimentFeatureEnabled", "getOnExperimentChanged", "onceExperimentFeatureEnabled"}]
      103 SETTABLEKS                       R7 R15 K24 ["FeatureNames"]
      105 SETTABLEKS                       R8 R15 K25 ["ForceEnabledFeatureNames"]
      107 SETTABLEKS                       R11 R15 K26 ["setIxpService"]
      109 SETTABLEKS                       R12 R15 K27 ["getExperimentFeatureEnabled"]
      111 SETTABLEKS                       R13 R15 K28 ["getOnExperimentChanged"]
      113 SETTABLEKS                       R14 R15 K29 ["onceExperimentFeatureEnabled"]
      115 CLOSEUPVALS                      R9
      116 RETURN                           R15 1
