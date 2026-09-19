PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        2 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        4 MOVE                             R3 R1
        5 LOADK                            R4 K1 ["No tool result found in QuestionAnswer step"]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R1 K4 ["structuredContent"]
       11 FASTCALL2K                       ASSERT R2 K5 ; [+5]
       13 MOVE                             R4 R2
       14 LOADK                            R5 K5 ["No structured content found in QuestionAnswer result"]
       15 GETIMPORT                        R3 K3 [assert]
       17 CALL                             R3 2 0
       18 GETTABLEKS                       R5 R2 K6 ["dismissed"]
       20 NOT                              R4 R5
       21 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       23 LOADK                            R5 K7 ["QuestionAnswer was dismissed, cannot proceed"]
       24 GETIMPORT                        R3 K3 [assert]
       26 CALL                             R3 2 0
       27 GETTABLEKS                       R3 R2 K8 ["answers"]
       29 MOVE                             R5 R3
       30 JUMPIFNOT                        R5 ; [+1]
       31 GETTABLEN                        R5 R3 1
       32 FASTCALL2K                       ASSERT R5 K9 ; [+4]
       34 LOADK                            R6 K9 ["No answer found in QuestionAnswer result"]
       35 GETIMPORT                        R4 K3 [assert]
       37 CALL                             R4 2 0
       38 GETTABLEN                        R4 R3 1
       39 GETTABLEKS                       R4 R4 K10 ["chosenOption"]
       41 RETURN                           R4 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Tool arguments must be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K6 ["textPrompt"]
       17 JUMPIFEQKNIL                     R1 ; [+16]
       19 FASTCALL1                        TYPEOF R1 ; [+3]
       20 MOVE                             R5 R1
       21 GETIMPORT                        R4 K1 [typeof]
       23 CALL                             R4 1 1
       24 JUMPIFEQKS                       R4 K7 ["string"] ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 FASTCALL2K                       ASSERT R3 K8 ; [+4]
       30 LOADK                            R4 K8 ["textPrompt must be a string"]
       31 GETIMPORT                        R2 K5 [assert]
       33 CALL                             R2 2 0
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K9 ["resolveImage"]
       37 GETTABLEKS                       R3 R0 K10 ["isometricImage"]
       39 CALL                             R2 1 1
       40 JUMPIFNOTEQKNIL                  R2 ; [+2]
       42 LOADB                            R4 0 +1
       43 LOADB                            R4 1
       44 FASTCALL2K                       ASSERT R4 K11 ; [+4]
       46 LOADK                            R5 K11 ["isometricImage must be provided"]
       47 GETIMPORT                        R3 K5 [assert]
       49 CALL                             R3 2 0
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R3 R3 K9 ["resolveImage"]
       53 GETTABLEKS                       R4 R0 K12 ["topDownImage"]
       55 CALL                             R3 1 1
       56 LOADB                            R5 1
       57 JUMPIFNOTEQKNIL                  R3 ; [+4]
       59 GETUPVAL                         R5 1
       60 GETTABLEKS                       R5 R5 K13 ["FFlagAssistantGenerateLayoutTopDownHint"]
       62 FASTCALL2K                       ASSERT R5 K14 ; [+4]
       64 LOADK                            R6 K14 ["topDownImage must be provided"]
       65 GETIMPORT                        R4 K5 [assert]
       67 CALL                             R4 2 0
       68 DUPTABLE                         R4 K15 [{"textPrompt", "isometricImage", "topDownImage"}]
       69 SETTABLEKS                       R1 R4 K6 ["textPrompt"]
       71 SETTABLEKS                       R2 R4 K10 ["isometricImage"]
       73 SETTABLEKS                       R3 R4 K12 ["topDownImage"]
       75 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["generateTopDownMapAsync"]
        3 DUPTABLE                         R1 K4 [{"requestId", "textPrompt", "isometricImage"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["requestId"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["textPrompt"]
       10 SETTABLEKS                       R2 R1 K2 ["textPrompt"]
       12 GETUPVAL                         R2 3
       13 SETTABLEKS                       R2 R1 K3 ["isometricImage"]
       15 CALL                             R0 1 -1
       16 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["generateLayoutAsync"]
        3 DUPTABLE                         R1 K5 [{"requestId", "isometricImage", "topDownImage", "textPrompt"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["requestId"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["isometricImage"]
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K3 ["topDownImage"]
       13 GETUPVAL                         R2 4
       14 GETTABLEKS                       R2 R2 K4 ["textPrompt"]
       16 SETTABLEKS                       R2 R1 K4 ["textPrompt"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["executeAndStoreScriptAsync"]
        3 DUPTABLE                         R1 K2 [{"requestId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["requestId"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["bridges"]
        6 GETTABLEKS                       R3 R3 K1 ["LayoutGen"]
        8 GETTABLEKS                       R3 R3 K2 ["createGuestContext"]
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R3 R3 K3 ["bridge"]
       15 GETTABLEKS                       R4 R2 K4 ["isometricImage"]
       17 GETTABLEKS                       R5 R2 K5 ["topDownImage"]
       19 JUMPIFNOTEQKNIL                  R5 ; [+27]
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K6 ["FFlagAssistantGenerateLayoutTopDownHint"]
       24 JUMPIFNOT                        R6 ; [+22]
       25 GETIMPORT                        R6 K8 [pcall]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R4
       32 CALL                             R6 1 2
       33 JUMPIF                           R6 ; [+11]
       34 GETIMPORT                        R8 K10 [error]
       36 LOADK                            R10 K11 ["Failed to generate top-down map with error: "]
       37 FASTCALL1                        TOSTRING R7 ; [+3]
       38 MOVE                             R12 R7
       39 GETIMPORT                        R11 K13 [tostring]
       41 CALL                             R11 1 1
       42 CONCAT                           R9 R10 R11
       43 LOADN                            R10 0
       44 CALL                             R8 2 0
       45 GETTABLEKS                       R5 R7 K14 ["imageContent"]
       47 GETIMPORT                        R6 K8 [pcall]
       49 NEWCLOSURE                       R7 P1
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R4
       53 CAPTURE                          REF R5
       54 CAPTURE                          VAL R2
       55 CALL                             R6 1 2
       56 JUMPIF                           R6 ; [+11]
       57 GETIMPORT                        R8 K10 [error]
       59 LOADK                            R10 K15 ["Layout generation failed with error: "]
       60 FASTCALL1                        TOSTRING R7 ; [+3]
       61 MOVE                             R12 R7
       62 GETIMPORT                        R11 K13 [tostring]
       64 CALL                             R11 1 1
       65 CONCAT                           R9 R10 R11
       66 LOADN                            R10 0
       67 CALL                             R8 2 0
       68 GETIMPORT                        R8 K8 [pcall]
       70 NEWCLOSURE                       R9 P2
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R1
       73 CALL                             R8 1 2
       74 JUMPIF                           R8 ; [+11]
       75 GETIMPORT                        R10 K10 [error]
       77 LOADK                            R12 K16 ["Failed to execute generated layout script with error: "]
       78 FASTCALL1                        TOSTRING R9 ; [+3]
       79 MOVE                             R14 R9
       80 GETIMPORT                        R13 K13 [tostring]
       82 CALL                             R13 1 1
       83 CONCAT                           R11 R12 R13
       84 LOADN                            R12 0
       85 CALL                             R10 2 0
       86 DUPTABLE                         R10 K21 [{"requestId", "ok", "tag", "errorMessage"}]
       87 SETTABLEKS                       R1 R10 K17 ["requestId"]
       89 GETTABLEKS                       R11 R9 K18 ["ok"]
       91 SETTABLEKS                       R11 R10 K18 ["ok"]
       93 GETTABLEKS                       R11 R9 K19 ["tag"]
       95 SETTABLEKS                       R11 R10 K19 ["tag"]
       97 GETTABLEKS                       R11 R9 K20 ["errorMessage"]
       99 SETTABLEKS                       R11 R10 K20 ["errorMessage"]
      101 CLOSEUPVALS                      R5
      102 RETURN                           R10 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["runWithProgressLoop"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["sendProgress"]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 GETUPVAL                         R4 4
        9 CALL                             R0 4 -1
       10 RETURN                           R0 -1

PROTO_7:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["toolId"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R3
        5 LOADB                            R5 0
        6 FASTCALL1                        TYPEOF R3 ; [+3]
        7 MOVE                             R7 R3
        8 GETIMPORT                        R6 K2 [typeof]
       10 CALL                             R6 1 1
       11 JUMPIFNOTEQKS                    R6 K3 ["string"] ; [+5]
       13 JUMPIFNOTEQKS                    R3 K4 [""] ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       19 LOADK                            R6 K5 ["GenerateLayoutTool requires meta.toolId"]
       20 GETIMPORT                        R4 K7 [assert]
       22 CALL                             R4 2 0
       23 GETIMPORT                        R4 K9 [pcall]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R3
       31 CALL                             R4 1 2
       32 JUMPIF                           R4 ; [+25]
       33 FASTCALL1                        TOSTRING R5 ; [+3]
       34 MOVE                             R7 R5
       35 GETIMPORT                        R6 K11 [tostring]
       37 CALL                             R6 1 1
       38 GETUPVAL                         R7 2
       39 CALL                             R7 0 1
       40 MOVE                             R9 R6
       41 NAMECALL                         R7 R7 K12 ["addText"]
       43 CALL                             R7 2 1
       44 DUPTABLE                         R9 K14 [{"errorMessage"}]
       45 SETTABLEKS                       R6 R9 K13 ["errorMessage"]
       47 NAMECALL                         R7 R7 K15 ["setStructuredContent"]
       49 CALL                             R7 2 1
       50 LOADB                            R9 1
       51 NAMECALL                         R7 R7 K16 ["setError"]
       53 CALL                             R7 2 1
       54 NAMECALL                         R7 R7 K17 ["build"]
       56 CALL                             R7 1 -1
       57 RETURN                           R7 -1
       58 GETUPVAL                         R6 2
       59 CALL                             R6 0 1
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R8 R8 K18 ["toString"]
       63 DUPTABLE                         R9 K20 [{"tag"}]
       64 GETTABLEKS                       R10 R5 K19 ["tag"]
       66 SETTABLEKS                       R10 R9 K19 ["tag"]
       68 CALL                             R8 1 -1
       69 NAMECALL                         R6 R6 K12 ["addText"]
       71 CALL                             R6 -1 1
       72 MOVE                             R8 R5
       73 NAMECALL                         R6 R6 K15 ["setStructuredContent"]
       75 CALL                             R6 2 1
       76 GETTABLEKS                       R7 R5 K21 ["ok"]
       78 JUMPIFNOTEQKB                    R7 FALSE ; [+6]
       80 LOADB                            R9 1
       81 NAMECALL                         R7 R6 K16 ["setError"]
       83 CALL                             R7 2 1
       84 MOVE                             R6 R7
       85 NAMECALL                         R7 R6 K17 ["build"]
       87 CALL                             R7 1 -1
       88 RETURN                           R7 -1

PROTO_8:
        0 DUPTABLE                         R1 K3 [{[1], ["skipReview"] = True}]
        1 NEWTABLE                         R2 0 1
        3 DUPTABLE                         R3 K6 [{"question", "options"}]
        4 GETUPVAL                         R4 0
        5 LOADK                            R6 K7 ["GenerateLayout"]
        6 LOADK                            R7 K8 ["LayoutMethodQuestion"]
        7 NAMECALL                         R4 R4 K9 ["getText"]
        9 CALL                             R4 3 1
       10 SETTABLEKS                       R4 R3 K4 ["question"]
       12 NEWTABLE                         R4 0 1
       14 DUPTABLE                         R5 K12 [{"optionText", "clarificationText"}]
       15 GETUPVAL                         R6 0
       16 LOADK                            R8 K7 ["GenerateLayout"]
       17 LOADK                            R9 K13 ["IsometricUploadOption"]
       18 NAMECALL                         R6 R6 K9 ["getText"]
       20 CALL                             R6 3 1
       21 SETTABLEKS                       R6 R5 K10 ["optionText"]
       23 GETUPVAL                         R6 0
       24 LOADK                            R8 K7 ["GenerateLayout"]
       25 LOADK                            R9 K14 ["IsometricUploadClarification"]
       26 NAMECALL                         R6 R6 K9 ["getText"]
       28 CALL                             R6 3 1
       29 SETTABLEKS                       R6 R5 K11 ["clarificationText"]
       31 SETLIST                          R4 R5 1 [1]
       33 SETTABLEKS                       R4 R3 K5 ["options"]
       35 SETLIST                          R2 R3 1 [1]
       37 SETTABLEKS                       R2 R1 K0 ["questions"]
       39 DUPTABLE                         R2 K17 [{"name", "arguments"}]
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R3 R3 K18 ["QuestionAnswer"]
       43 SETTABLEKS                       R3 R2 K15 ["name"]
       45 SETTABLEKS                       R1 R2 K16 ["arguments"]
       47 RETURN                           R2 1

PROTO_9:
        0 GETTABLEN                        R2 R0 1
        1 GETTABLEKS                       R3 R2 K0 ["toolResult"]
        3 FASTCALL2K                       ASSERT R3 K1 ; [+5]
        5 MOVE                             R5 R3
        6 LOADK                            R6 K1 ["No tool result found in QuestionAnswer step"]
        7 GETIMPORT                        R4 K3 [assert]
        9 CALL                             R4 2 0
       10 GETTABLEKS                       R4 R3 K4 ["structuredContent"]
       12 FASTCALL2K                       ASSERT R4 K5 ; [+5]
       14 MOVE                             R6 R4
       15 LOADK                            R7 K5 ["No structured content found in QuestionAnswer result"]
       16 GETIMPORT                        R5 K3 [assert]
       18 CALL                             R5 2 0
       19 GETTABLEKS                       R7 R4 K6 ["dismissed"]
       21 NOT                              R6 R7
       22 FASTCALL2K                       ASSERT R6 K7 ; [+4]
       24 LOADK                            R7 K7 ["QuestionAnswer was dismissed, cannot proceed"]
       25 GETIMPORT                        R5 K3 [assert]
       27 CALL                             R5 2 0
       28 GETTABLEKS                       R5 R4 K8 ["answers"]
       30 MOVE                             R7 R5
       31 JUMPIFNOT                        R7 ; [+1]
       32 GETTABLEN                        R7 R5 1
       33 FASTCALL2K                       ASSERT R7 K9 ; [+4]
       35 LOADK                            R8 K9 ["No answer found in QuestionAnswer result"]
       36 GETIMPORT                        R6 K3 [assert]
       38 CALL                             R6 2 0
       39 GETTABLEN                        R1 R5 1
       40 GETTABLEKS                       R1 R1 K10 ["chosenOption"]
       42 GETTABLEKS                       R3 R1 K11 ["isFromUser"]
       44 JUMPIFEQKB                       R3 TRUE ; [+2]
       46 LOADB                            R2 0 +1
       47 LOADB                            R2 1
       48 JUMPIFNOT                        R2 ; [+31]
       49 NEWTABLE                         R3 0 2
       51 DUPTABLE                         R4 K15 [{"name", "inputType", "initialValue"}]
       52 GETUPVAL                         R5 0
       53 GETTABLEKS                       R5 R5 K16 ["TextPrompt"]
       55 SETTABLEKS                       R5 R4 K12 ["name"]
       57 GETUPVAL                         R5 1
       58 GETTABLEKS                       R5 R5 K17 ["String"]
       60 SETTABLEKS                       R5 R4 K13 ["inputType"]
       62 GETTABLEKS                       R5 R1 K18 ["optionText"]
       64 SETTABLEKS                       R5 R4 K14 ["initialValue"]
       66 DUPTABLE                         R5 K19 [{"name", "inputType"}]
       67 GETUPVAL                         R6 0
       68 GETTABLEKS                       R6 R6 K20 ["IsometricImage"]
       70 SETTABLEKS                       R6 R5 K12 ["name"]
       72 GETUPVAL                         R6 1
       73 GETTABLEKS                       R6 R6 K21 ["Image"]
       75 SETTABLEKS                       R6 R5 K13 ["inputType"]
       77 SETLIST                          R3 R4 2 [1]
       79 JUMP                             ; [+15]
       80 NEWTABLE                         R3 0 1
       82 DUPTABLE                         R4 K24 [{["name"], ["inputType"], ["required"] = True}]
       83 GETUPVAL                         R5 0
       84 GETTABLEKS                       R5 R5 K20 ["IsometricImage"]
       86 SETTABLEKS                       R5 R4 K12 ["name"]
       88 GETUPVAL                         R5 1
       89 GETTABLEKS                       R5 R5 K21 ["Image"]
       91 SETTABLEKS                       R5 R4 K13 ["inputType"]
       93 SETLIST                          R3 R4 1 [1]
       95 DUPTABLE                         R4 K27 [{"formId", "fields"}]
       96 GETUPVAL                         R5 2
       97 GETTABLEKS                       R5 R5 K25 ["formId"]
       99 SETTABLEKS                       R5 R4 K25 ["formId"]
      101 SETTABLEKS                       R3 R4 K26 ["fields"]
      103 DUPTABLE                         R5 K29 [{"name", "arguments"}]
      104 GETUPVAL                         R6 3
      105 GETTABLEKS                       R6 R6 K30 ["AskInput"]
      107 SETTABLEKS                       R6 R5 K12 ["name"]
      109 SETTABLEKS                       R4 R5 K28 ["arguments"]
      111 RETURN                           R5 1

PROTO_10:
        0 DUPTABLE                         R1 K2 [{"formId", "fields"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["formId"]
        4 SETTABLEKS                       R2 R1 K0 ["formId"]
        6 NEWTABLE                         R2 0 1
        8 DUPTABLE                         R3 K7 [{["name"], ["inputType"], ["required"] = True}]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K8 ["TopDownImage"]
       12 SETTABLEKS                       R4 R3 K3 ["name"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K9 ["Image"]
       17 SETTABLEKS                       R4 R3 K4 ["inputType"]
       19 SETLIST                          R2 R3 1 [1]
       21 SETTABLEKS                       R2 R1 K1 ["fields"]
       23 DUPTABLE                         R2 K11 [{"name", "arguments"}]
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R3 R3 K12 ["AskInput"]
       27 SETTABLEKS                       R3 R2 K3 ["name"]
       29 SETTABLEKS                       R1 R2 K10 ["arguments"]
       31 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["readAskInputValues"]
        3 GETTABLEN                        R2 R0 2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["FFlagAssistantGenerateLayoutTopDownHint"]
        8 JUMPIFNOT                        R3 ; [+2]
        9 LOADNIL                          R2
       10 JUMP                             ; [+5]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["readAskInputValues"]
       14 GETTABLEN                        R3 R0 3
       15 CALL                             R2 1 1
       16 DUPTABLE                         R3 K5 [{"textPrompt", "isometricImage", "topDownImage"}]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K6 ["TextPrompt"]
       20 GETTABLE                         R4 R1 R5
       21 SETTABLEKS                       R4 R3 K2 ["textPrompt"]
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R4 R4 K7 ["resolveUri"]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K8 ["IsometricImage"]
       29 GETTABLE                         R5 R1 R6
       30 CALL                             R4 1 1
       31 SETTABLEKS                       R4 R3 K3 ["isometricImage"]
       33 JUMPIFNOT                        R2 ; [+9]
       34 GETUPVAL                         R4 3
       35 GETTABLEKS                       R4 R4 K7 ["resolveUri"]
       37 GETUPVAL                         R6 2
       38 GETTABLEKS                       R6 R6 K9 ["TopDownImage"]
       40 GETTABLE                         R5 R2 R6
       41 CALL                             R4 1 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R4
       44 SETTABLEKS                       R4 R3 K4 ["topDownImage"]
       46 DUPTABLE                         R4 K12 [{"name", "arguments"}]
       47 GETUPVAL                         R5 4
       48 GETTABLEKS                       R5 R5 K13 ["GenerateLayout"]
       50 SETTABLEKS                       R5 R4 K10 ["name"]
       52 SETTABLEKS                       R3 R4 K11 ["arguments"]
       54 RETURN                           R4 1

PROTO_12:
        0 DUPCLOSURE                       R2 K0 [PROTO_8]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 DUPCLOSURE                       R3 K1 [PROTO_9]
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U1
        8 DUPCLOSURE                       R4 K2 [PROTO_10]
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U1
       13 DUPCLOSURE                       R5 K3 [PROTO_11]
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          UPVAL U1
       19 NEWTABLE                         R6 0 2
       21 MOVE                             R7 R2
       22 MOVE                             R8 R3
       23 SETLIST                          R6 R7 2 [1]
       25 GETUPVAL                         R7 6
       26 GETTABLEKS                       R7 R7 K4 ["FFlagAssistantGenerateLayoutTopDownHint"]
       28 JUMPIF                           R7 ; [+7]
       29 FASTCALL2                        TABLE_INSERT R6 R4 ; [+5]
       31 MOVE                             R8 R6
       32 MOVE                             R9 R4
       33 GETIMPORT                        R7 K7 [table.insert]
       35 CALL                             R7 2 0
       36 FASTCALL2                        TABLE_INSERT R6 R5 ; [+5]
       38 MOVE                             R8 R6
       39 MOVE                             R9 R5
       40 GETIMPORT                        R7 K7 [table.insert]
       42 CALL                             R7 2 0
       43 RETURN                           R6 1

PROTO_13:
        0 DUPTABLE                         R2 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K3 ["GenerateLayout"]
        4 SETTABLEKS                       R3 R2 K0 ["name"]
        6 NEWTABLE                         R3 0 0
        8 SETTABLEKS                       R3 R2 K1 ["arguments"]
       10 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["GenerateLayout"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_15:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_16:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U3
        8 GETUPVAL                         R3 4
        9 GETTABLEKS                       R3 R3 K0 ["define"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 5
       13 GETTABLEKS                       R5 R5 K1 ["GenerateLayout"]
       15 NAMECALL                         R3 R3 K2 ["setName"]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R5 6
       19 LOADK                            R7 K3 ["SlashCommandDescriptions"]
       20 LOADK                            R8 K1 ["GenerateLayout"]
       21 NAMECALL                         R5 R5 K4 ["getText"]
       23 CALL                             R5 3 -1
       24 NAMECALL                         R3 R3 K5 ["setDescription"]
       26 CALL                             R3 -1 1
       27 LOADK                            R5 K6 ["textPrompt"]
       28 DUPTABLE                         R6 K11 [{["type"] = "string", ["description"] = "Optional text description of the desired isometric/aerial view of the layout, used as a hint when generating the top-down map."}]
       29 NAMECALL                         R3 R3 K12 ["addOptionalArgument"]
       31 CALL                             R3 3 1
       32 LOADK                            R5 K13 ["isometricImage"]
       33 DUPTABLE                         R6 K16 [{["type"] = "object", ["description"] = "Isometric/aerial reference image of the layout."}]
       34 NAMECALL                         R3 R3 K17 ["addArgument"]
       36 CALL                             R3 3 1
       37 DUPTABLE                         R4 K19 [{["type"] = "object", ["description"] = "A top-down map image of the layout area, used to align the generated layout to the scene."}]
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K20 ["FFlagAssistantGenerateLayoutTopDownHint"]
       41 JUMPIFNOT                        R5 ; [+6]
       42 LOADK                            R7 K21 ["topDownImage"]
       43 MOVE                             R8 R4
       44 NAMECALL                         R5 R3 K12 ["addOptionalArgument"]
       46 CALL                             R5 3 0
       47 JUMP                             ; [+5]
       48 LOADK                            R7 K21 ["topDownImage"]
       49 MOVE                             R8 R4
       50 NAMECALL                         R5 R3 K17 ["addArgument"]
       52 CALL                             R5 3 0
       53 DUPTABLE                         R7 K28 [{["title"], ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       54 GETUPVAL                         R8 6
       55 LOADK                            R10 K1 ["GenerateLayout"]
       56 LOADK                            R11 K29 ["Title"]
       57 NAMECALL                         R8 R8 K4 ["getText"]
       59 CALL                             R8 3 1
       60 SETTABLEKS                       R8 R7 K22 ["title"]
       62 NAMECALL                         R5 R3 K30 ["setAnnotations"]
       64 CALL                             R5 2 1
       65 MOVE                             R7 R2
       66 NAMECALL                         R5 R5 K31 ["setHandler"]
       68 CALL                             R5 2 1
       69 NAMECALL                         R5 R5 K32 ["build"]
       71 CALL                             R5 1 1
       72 DUPCLOSURE                       R6 K33 [PROTO_12]
       73 CAPTURE                          UPVAL U6
       74 CAPTURE                          UPVAL U5
       75 CAPTURE                          UPVAL U7
       76 CAPTURE                          UPVAL U8
       77 CAPTURE                          UPVAL U9
       78 CAPTURE                          UPVAL U10
       79 CAPTURE                          UPVAL U1
       80 CAPTURE                          UPVAL U11
       81 DUPCLOSURE                       R7 K34 [PROTO_13]
       82 CAPTURE                          UPVAL U5
       83 DUPTABLE                         R8 K40 [{["command"] = "generate_layout", ["getDescription"], ["runToolChain"], ["mapToToolCall"]}]
       84 DUPCLOSURE                       R9 K41 [PROTO_14]
       85 CAPTURE                          UPVAL U6
       86 SETTABLEKS                       R9 R8 K37 ["getDescription"]
       88 GETUPVAL                         R10 1
       89 GETTABLEKS                       R10 R10 K42 ["FFlagAssistantAskInputTool"]
       91 JUMPIFNOT                        R10 ; [+2]
       92 MOVE                             R9 R6
       93 JUMP                             ; [+1]
       94 LOADNIL                          R9
       95 SETTABLEKS                       R9 R8 K38 ["runToolChain"]
       97 GETUPVAL                         R10 1
       98 GETTABLEKS                       R10 R10 K42 ["FFlagAssistantAskInputTool"]
      100 JUMPIFNOT                        R10 ; [+2]
      101 LOADNIL                          R9
      102 JUMP                             ; [+1]
      103 MOVE                             R9 R7
      104 SETTABLEKS                       R9 R8 K39 ["mapToToolCall"]
      106 DUPTABLE                         R9 K46 [{"definition", "slashCommands", "getPreExecuteWarning"}]
      107 SETTABLEKS                       R5 R9 K43 ["definition"]
      109 NEWTABLE                         R10 0 1
      111 MOVE                             R11 R8
      112 SETLIST                          R10 R11 1 [1]
      114 SETTABLEKS                       R10 R9 K44 ["slashCommands"]
      116 DUPCLOSURE                       R10 K47 [PROTO_15]
      117 SETTABLEKS                       R10 R9 K45 ["getPreExecuteWarning"]
      119 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AskInput"]
       13 GETTABLEKS                       R2 R2 K8 ["AskInputTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["ImageContentStore"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["ModelContextProtocol"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Components"]
       39 GETTABLEKS                       R6 R6 K14 ["QuestionAnswer"]
       41 GETTABLEKS                       R6 R6 K15 ["QuestionAnswerTypes"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Util"]
       48 GETTABLEKS                       R7 R7 K16 ["SlashCommandConfiguration"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K17 ["Tools"]
       55 GETTABLEKS                       R8 R8 K18 ["ToolTypes"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K6 ["Util"]
       62 GETTABLEKS                       R9 R9 K19 ["ToolUtils"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K20 ["Resources"]
       69 GETTABLEKS                       R10 R10 K21 ["Localization"]
       71 GETTABLEKS                       R10 R10 K22 ["Translator"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K23 ["Types"]
       78 CALL                             R10 1 1
       79 GETTABLEKS                       R11 R4 K6 ["Util"]
       81 GETTABLEKS                       R11 R11 K24 ["ToolBuilder"]
       83 GETTABLEKS                       R12 R4 K6 ["Util"]
       85 GETTABLEKS                       R12 R12 K25 ["ToolResult"]
       87 GETTABLEKS                       R13 R7 K26 ["ToolNames"]
       89 GETTABLEKS                       R14 R1 K27 ["INPUT_TYPE"]
       91 GETTABLEKS                       R15 R6 K28 ["Configs"]
       93 GETTABLEKS                       R15 R15 K29 ["GenerateLayout"]
       95 GETTABLEKS                       R16 R15 K30 ["row"]
       97 DUPCLOSURE                       R17 K31 [PROTO_0]
       98 DUPCLOSURE                       R18 K32 [PROTO_1]
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R2
      101 DUPCLOSURE                       R19 K33 [PROTO_16]
      102 CAPTURE                          VAL R18
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R3
      114 RETURN                           R19 1
