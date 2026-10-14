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
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["generateTopDownMap"]
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 NAMECALL                         R0 R0 K2 ["InvokeAsync"]
       11 CALL                             R0 3 -1
       12 RETURN                           R0 -1
       13 GETUPVAL                         R0 4
       14 GETTABLEKS                       R0 R0 K3 ["generateTopDownMapAsync"]
       16 GETUPVAL                         R1 3
       17 CALL                             R0 1 -1
       18 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["generateLayout"]
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 NAMECALL                         R0 R0 K2 ["InvokeAsync"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 4
       14 GETTABLEKS                       R0 R0 K3 ["generateLayoutAsync"]
       16 GETUPVAL                         R1 3
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["executeAndStoreScript"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K3 [{"requestId"}]
        9 GETUPVAL                         R4 3
       10 SETTABLEKS                       R4 R3 K2 ["requestId"]
       12 NAMECALL                         R0 R0 K4 ["InvokeAsync"]
       14 CALL                             R0 3 -1
       15 RETURN                           R0 -1
       16 GETUPVAL                         R0 4
       17 GETTABLEKS                       R0 R0 K5 ["executeAndStoreScriptAsync"]
       19 DUPTABLE                         R1 K3 [{"requestId"}]
       20 GETUPVAL                         R2 3
       21 SETTABLEKS                       R2 R1 K2 ["requestId"]
       23 CALL                             R0 1 -1
       24 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K0 ["FFlagAssistantUseNewDMNetworking"]
        8 JUMPIFNOT                        R5 ; [+7]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K1 ["resolveTargetAsync"]
       12 GETUPVAL                         R6 3
       13 CALL                             R5 1 1
       14 MOVE                             R4 R5
       15 JUMP                             ; [+12]
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K2 ["bridges"]
       19 GETTABLEKS                       R5 R5 K3 ["LayoutGen"]
       21 GETTABLEKS                       R5 R5 K4 ["createGuestContext"]
       23 LOADNIL                          R6
       24 LOADNIL                          R7
       25 CALL                             R5 2 1
       26 GETTABLEKS                       R3 R5 K5 ["bridge"]
       28 GETTABLEKS                       R5 R2 K6 ["isometricImage"]
       30 GETTABLEKS                       R6 R2 K7 ["topDownImage"]
       32 JUMPIFNOTEQKNIL                  R6 ; [+37]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K8 ["FFlagAssistantGenerateLayoutTopDownHint"]
       37 JUMPIFNOT                        R7 ; [+32]
       38 DUPTABLE                         R7 K11 [{"requestId", "textPrompt", "isometricImage"}]
       39 SETTABLEKS                       R1 R7 K9 ["requestId"]
       41 GETTABLEKS                       R8 R2 K10 ["textPrompt"]
       43 SETTABLEKS                       R8 R7 K10 ["textPrompt"]
       45 SETTABLEKS                       R5 R7 K6 ["isometricImage"]
       47 GETIMPORT                        R8 K13 [pcall]
       49 NEWCLOSURE                       R9 P0
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          REF R4
       53 CAPTURE                          VAL R7
       54 CAPTURE                          REF R3
       55 CALL                             R8 1 2
       56 JUMPIF                           R8 ; [+11]
       57 GETIMPORT                        R10 K15 [error]
       59 LOADK                            R12 K16 ["Failed to generate top-down map with error: "]
       60 FASTCALL1                        TOSTRING R9 ; [+3]
       61 MOVE                             R14 R9
       62 GETIMPORT                        R13 K18 [tostring]
       64 CALL                             R13 1 1
       65 CONCAT                           R11 R12 R13
       66 LOADN                            R12 0
       67 CALL                             R10 2 0
       68 GETTABLEKS                       R6 R9 K19 ["imageContent"]
       70 DUPTABLE                         R7 K20 [{"requestId", "isometricImage", "topDownImage", "textPrompt"}]
       71 SETTABLEKS                       R1 R7 K9 ["requestId"]
       73 SETTABLEKS                       R5 R7 K6 ["isometricImage"]
       75 SETTABLEKS                       R6 R7 K7 ["topDownImage"]
       77 GETTABLEKS                       R8 R2 K10 ["textPrompt"]
       79 SETTABLEKS                       R8 R7 K10 ["textPrompt"]
       81 GETIMPORT                        R8 K13 [pcall]
       83 NEWCLOSURE                       R9 P1
       84 CAPTURE                          UPVAL U1
       85 CAPTURE                          UPVAL U5
       86 CAPTURE                          REF R4
       87 CAPTURE                          VAL R7
       88 CAPTURE                          REF R3
       89 CALL                             R8 1 2
       90 JUMPIF                           R8 ; [+11]
       91 GETIMPORT                        R10 K15 [error]
       93 LOADK                            R12 K21 ["Layout generation failed with error: "]
       94 FASTCALL1                        TOSTRING R9 ; [+3]
       95 MOVE                             R14 R9
       96 GETIMPORT                        R13 K18 [tostring]
       98 CALL                             R13 1 1
       99 CONCAT                           R11 R12 R13
      100 LOADN                            R12 0
      101 CALL                             R10 2 0
      102 GETIMPORT                        R10 K13 [pcall]
      104 NEWCLOSURE                       R11 P2
      105 CAPTURE                          UPVAL U1
      106 CAPTURE                          UPVAL U5
      107 CAPTURE                          REF R4
      108 CAPTURE                          VAL R1
      109 CAPTURE                          REF R3
      110 CALL                             R10 1 2
      111 JUMPIF                           R10 ; [+11]
      112 GETIMPORT                        R12 K15 [error]
      114 LOADK                            R14 K22 ["Failed to execute generated layout script with error: "]
      115 FASTCALL1                        TOSTRING R11 ; [+3]
      116 MOVE                             R16 R11
      117 GETIMPORT                        R15 K18 [tostring]
      119 CALL                             R15 1 1
      120 CONCAT                           R13 R14 R15
      121 LOADN                            R14 0
      122 CALL                             R12 2 0
      123 DUPTABLE                         R12 K26 [{"requestId", "ok", "tag", "errorMessage"}]
      124 SETTABLEKS                       R1 R12 K9 ["requestId"]
      126 GETTABLEKS                       R13 R11 K23 ["ok"]
      128 SETTABLEKS                       R13 R12 K23 ["ok"]
      130 GETTABLEKS                       R13 R11 K24 ["tag"]
      132 SETTABLEKS                       R13 R12 K24 ["tag"]
      134 GETTABLEKS                       R13 R11 K25 ["errorMessage"]
      136 SETTABLEKS                       R13 R12 K25 ["errorMessage"]
      138 CLOSEUPVALS                      R3
      139 RETURN                           R12 1

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
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["GenerateLayout"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_14:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R2
       14 NEWCLOSURE                       R4 P1
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R3
       17 CAPTURE                          UPVAL U5
       18 GETUPVAL                         R5 6
       19 GETTABLEKS                       R5 R5 K2 ["define"]
       21 CALL                             R5 0 1
       22 GETUPVAL                         R7 7
       23 GETTABLEKS                       R7 R7 K3 ["GenerateLayout"]
       25 NAMECALL                         R5 R5 K4 ["setName"]
       27 CALL                             R5 2 1
       28 GETUPVAL                         R7 8
       29 LOADK                            R9 K5 ["SlashCommandDescriptions"]
       30 LOADK                            R10 K3 ["GenerateLayout"]
       31 NAMECALL                         R7 R7 K6 ["getText"]
       33 CALL                             R7 3 -1
       34 NAMECALL                         R5 R5 K7 ["setDescription"]
       36 CALL                             R5 -1 1
       37 LOADK                            R7 K8 ["textPrompt"]
       38 DUPTABLE                         R8 K13 [{["type"] = "string", ["description"] = "Optional text description of the desired isometric/aerial view of the layout, used as a hint when generating the top-down map."}]
       39 NAMECALL                         R5 R5 K14 ["addOptionalArgument"]
       41 CALL                             R5 3 1
       42 LOADK                            R7 K15 ["isometricImage"]
       43 DUPTABLE                         R8 K18 [{["type"] = "object", ["description"] = "Isometric/aerial reference image of the layout."}]
       44 NAMECALL                         R5 R5 K19 ["addArgument"]
       46 CALL                             R5 3 1
       47 DUPTABLE                         R6 K21 [{["type"] = "object", ["description"] = "A top-down map image of the layout area, used to align the generated layout to the scene."}]
       48 GETUPVAL                         R7 2
       49 GETTABLEKS                       R7 R7 K22 ["FFlagAssistantGenerateLayoutTopDownHint"]
       51 JUMPIFNOT                        R7 ; [+6]
       52 LOADK                            R9 K23 ["topDownImage"]
       53 MOVE                             R10 R6
       54 NAMECALL                         R7 R5 K14 ["addOptionalArgument"]
       56 CALL                             R7 3 0
       57 JUMP                             ; [+5]
       58 LOADK                            R9 K23 ["topDownImage"]
       59 MOVE                             R10 R6
       60 NAMECALL                         R7 R5 K19 ["addArgument"]
       62 CALL                             R7 3 0
       63 DUPTABLE                         R9 K30 [{["title"], ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       64 GETUPVAL                         R10 8
       65 LOADK                            R12 K3 ["GenerateLayout"]
       66 LOADK                            R13 K31 ["Title"]
       67 NAMECALL                         R10 R10 K6 ["getText"]
       69 CALL                             R10 3 1
       70 SETTABLEKS                       R10 R9 K24 ["title"]
       72 NAMECALL                         R7 R5 K32 ["setAnnotations"]
       74 CALL                             R7 2 1
       75 MOVE                             R9 R4
       76 NAMECALL                         R7 R7 K33 ["setHandler"]
       78 CALL                             R7 2 1
       79 NAMECALL                         R7 R7 K34 ["build"]
       81 CALL                             R7 1 1
       82 DUPCLOSURE                       R8 K35 [PROTO_12]
       83 CAPTURE                          UPVAL U8
       84 CAPTURE                          UPVAL U7
       85 CAPTURE                          UPVAL U9
       86 CAPTURE                          UPVAL U10
       87 CAPTURE                          UPVAL U11
       88 CAPTURE                          UPVAL U12
       89 CAPTURE                          UPVAL U2
       90 CAPTURE                          UPVAL U13
       91 DUPTABLE                         R9 K40 [{["command"] = "generate_layout", ["getDescription"], ["runToolChain"]}]
       92 DUPCLOSURE                       R10 K41 [PROTO_13]
       93 CAPTURE                          UPVAL U8
       94 SETTABLEKS                       R10 R9 K38 ["getDescription"]
       96 SETTABLEKS                       R8 R9 K39 ["runToolChain"]
       98 DUPTABLE                         R10 K45 [{"definition", "slashCommands", "getPreExecuteWarning"}]
       99 SETTABLEKS                       R7 R10 K42 ["definition"]
      101 NEWTABLE                         R11 0 1
      103 MOVE                             R12 R9
      104 SETLIST                          R11 R12 1 [1]
      106 SETTABLEKS                       R11 R10 K43 ["slashCommands"]
      108 DUPCLOSURE                       R11 K46 [PROTO_14]
      109 SETTABLEKS                       R11 R10 K44 ["getPreExecuteWarning"]
      111 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["DMNetworking"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ModelContextProtocol"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Util"]
       23 GETTABLEKS                       R5 R5 K10 ["AskInput"]
       25 GETTABLEKS                       R5 R5 K11 ["AskInputTypes"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Flags"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Util"]
       37 GETTABLEKS                       R7 R7 K13 ["ImageContentStore"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K14 ["Remotes"]
       44 GETTABLEKS                       R8 R8 K15 ["LayoutGenRemotes"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Util"]
       51 GETTABLEKS                       R9 R9 K16 ["NetworkingIdentity"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K17 ["Components"]
       58 GETTABLEKS                       R10 R10 K18 ["QuestionAnswer"]
       60 GETTABLEKS                       R10 R10 K19 ["QuestionAnswerTypes"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K9 ["Util"]
       67 GETTABLEKS                       R11 R11 K20 ["SlashCommandConfiguration"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K21 ["Tools"]
       74 GETTABLEKS                       R12 R12 K22 ["ToolTypes"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K9 ["Util"]
       81 GETTABLEKS                       R13 R13 K23 ["ToolUtils"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K24 ["Resources"]
       88 GETTABLEKS                       R14 R14 K25 ["Localization"]
       90 GETTABLEKS                       R14 R14 K26 ["Translator"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R15 R0 K27 ["Types"]
       97 CALL                             R14 1 1
       98 GETTABLEKS                       R15 R3 K9 ["Util"]
      100 GETTABLEKS                       R15 R15 K28 ["ToolBuilder"]
      102 GETTABLEKS                       R16 R3 K9 ["Util"]
      104 GETTABLEKS                       R16 R16 K29 ["ToolResult"]
      106 GETTABLEKS                       R17 R11 K30 ["ToolNames"]
      108 GETTABLEKS                       R18 R4 K31 ["INPUT_TYPE"]
      110 GETTABLEKS                       R19 R10 K32 ["Configs"]
      112 GETTABLEKS                       R19 R19 K33 ["GenerateLayout"]
      114 GETTABLEKS                       R20 R19 K34 ["row"]
      116 DUPCLOSURE                       R21 K35 [PROTO_0]
      117 DUPCLOSURE                       R22 K36 [PROTO_1]
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R5
      120 DUPCLOSURE                       R23 K37 [PROTO_15]
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R22
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R17
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R20
      131 CAPTURE                          VAL R18
      132 CAPTURE                          VAL R19
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R6
      135 RETURN                           R23 1
