PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["IsTextScraperRunning"]
        3 JUMPIF                           R1 ; [+10]
        4 GETUPVAL                         R1 0
        5 NAMECALL                         R1 R1 K1 ["StartTextScraper"]
        7 CALL                             R1 1 0
        8 LOADK                            R3 K2 ["textCapture"]
        9 LOADK                            R4 K3 ["start"]
       10 NAMECALL                         R1 R0 K4 ["reportButtonPress"]
       12 CALL                             R1 3 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 0
       15 NAMECALL                         R1 R1 K5 ["StopTextScraper"]
       17 CALL                             R1 1 0
       18 LOADK                            R3 K2 ["textCapture"]
       19 LOADK                            R4 K6 ["stop"]
       20 NAMECALL                         R1 R0 K4 ["reportButtonPress"]
       22 CALL                             R1 3 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["PromptExportToCSVs"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R1 K1 [pcall]
        2 DUPCLOSURE                       R2 K2 [PROTO_1]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+6]
        6 LOADK                            R5 K3 ["export"]
        7 LOADK                            R6 K4 ["success"]
        8 NAMECALL                         R3 R0 K5 ["reportButtonPress"]
       10 CALL                             R3 3 0
       11 RETURN                           R0 0
       12 JUMPIFNOTEQKS                    R2 K6 ["No file selected"] ; [+7]
       14 LOADK                            R5 K3 ["export"]
       15 LOADK                            R6 K7 ["canceled"]
       16 NAMECALL                         R3 R0 K5 ["reportButtonPress"]
       18 CALL                             R3 3 0
       19 RETURN                           R0 0
       20 LOADK                            R5 K3 ["export"]
       21 LOADK                            R6 K8 ["error"]
       22 NAMECALL                         R3 R0 K5 ["reportButtonPress"]
       24 CALL                             R3 3 0
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["PromptImportFromCSVs"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 NOT                              R2 R3
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["expected FFlagLocalizedLocalizationToolsErrors to be false"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETIMPORT                        R1 K4 [pcall]
       10 DUPCLOSURE                       R2 K5 [PROTO_3]
       11 CAPTURE                          UPVAL U1
       12 CALL                             R1 1 2
       13 JUMPIFNOT                        R1 ; [+6]
       14 LOADK                            R5 K6 ["import"]
       15 LOADK                            R6 K7 ["success"]
       16 NAMECALL                         R3 R0 K8 ["reportButtonPress"]
       18 CALL                             R3 3 0
       19 RETURN                           R0 0
       20 JUMPIFNOTEQKS                    R2 K9 ["No file selected"] ; [+7]
       22 LOADK                            R5 K6 ["import"]
       23 LOADK                            R6 K10 ["canceled"]
       24 NAMECALL                         R3 R0 K8 ["reportButtonPress"]
       26 CALL                             R3 3 0
       27 RETURN                           R0 0
       28 LOADK                            R5 K6 ["import"]
       29 LOADK                            R6 K11 ["error"]
       30 NAMECALL                         R3 R0 K8 ["reportButtonPress"]
       32 CALL                             R3 3 0
       33 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["PromptImportFromCSVs"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["expected FFlagLocalizedLocalizationToolsErrors to be true"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETIMPORT                        R2 K4 [pcall]
        9 DUPCLOSURE                       R3 K5 [PROTO_5]
       10 CAPTURE                          UPVAL U1
       11 CALL                             R2 1 2
       12 JUMPIFNOT                        R2 ; [+6]
       13 LOADK                            R6 K6 ["import"]
       14 LOADK                            R7 K7 ["success"]
       15 NAMECALL                         R4 R0 K8 ["reportButtonPress"]
       17 CALL                             R4 3 0
       18 RETURN                           R0 0
       19 JUMPIFNOTEQKS                    R3 K9 ["No file selected"] ; [+7]
       21 LOADK                            R6 K6 ["import"]
       22 LOADK                            R7 K10 ["canceled"]
       23 NAMECALL                         R4 R0 K8 ["reportButtonPress"]
       25 CALL                             R4 3 0
       26 RETURN                           R0 0
       27 GETIMPORT                        R4 K12 [warn]
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R5 R6 K13 ["getTranslationForEngineError"]
       32 MOVE                             R6 R3
       33 MOVE                             R7 R1
       34 CALL                             R5 2 -1
       35 CALL                             R4 -1 0
       36 LOADK                            R6 K6 ["import"]
       37 LOADK                            R7 K14 ["error"]
       38 NAMECALL                         R4 R0 K8 ["reportButtonPress"]
       40 CALL                             R4 3 0
       41 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["LocalizationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 4 0
        9 GETIMPORT                        R2 K1 [game]
       11 LOADK                            R4 K4 ["EnableLocalizedLocalizationToolsErrorsApi"]
       12 NAMECALL                         R2 R2 K5 ["GetEngineFeature"]
       14 CALL                             R2 2 1
       15 LOADNIL                          R3
       16 JUMPIFNOT                        R2 ; [+10]
       17 GETIMPORT                        R4 K7 [require]
       19 GETIMPORT                        R7 K9 [script]
       21 GETTABLEKS                       R6 R7 K10 ["Parent"]
       23 GETTABLEKS                       R5 R6 K11 ["MapEngineErrors"]
       25 CALL                             R4 1 1
       26 MOVE                             R3 R4
       27 DUPCLOSURE                       R4 K12 [PROTO_0]
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R4 R1 K13 ["toggleTextScraperEnabled"]
       31 DUPCLOSURE                       R4 K14 [PROTO_2]
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R4 R1 K15 ["promptExportToCSVs"]
       35 DUPCLOSURE                       R4 K16 [PROTO_4]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R4 R1 K17 ["promptImportFromCSVs_deprecated"]
       40 NEWCLOSURE                       R4 P3
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R0
       43 CAPTURE                          REF R3
       44 SETTABLEKS                       R4 R1 K18 ["promptImportFromCSVs"]
       46 CLOSEUPVALS                      R3
       47 RETURN                           R1 1
