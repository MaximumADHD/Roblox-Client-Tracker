PROTO_0:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R4 R0 K0 ["textPrompt"]
        3 FASTCALL1                        TYPEOF R4 ; [+2]
        4 GETIMPORT                        R3 K2 [typeof]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K3 ["string"] ; [+9]
        9 GETTABLEKS                       R4 R0 K0 ["textPrompt"]
       11 LENGTH                           R3 R4
       12 LOADN                            R4 0
       13 JUMPIFLT                         R4 R3 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       19 LOADK                            R3 K4 ["textPrompt must be a non-empty string"]
       20 GETIMPORT                        R1 K6 [assert]
       22 CALL                             R1 2 0
       23 GETTABLEKS                       R1 R0 K7 ["orchestratorFactory"]
       25 JUMPIF                           R1 ; [+3]
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K8 ["new"]
       29 MOVE                             R2 R1
       30 DUPTABLE                         R3 K14 [{["slotCount"] = 1, [2], ["model"], ["pollIntervalSeconds"], ["timeoutSeconds"]}]
       31 GETTABLEKS                       R4 R0 K0 ["textPrompt"]
       33 SETTABLEKS                       R4 R3 K0 ["textPrompt"]
       35 GETTABLEKS                       R4 R0 K11 ["model"]
       37 SETTABLEKS                       R4 R3 K11 ["model"]
       39 GETTABLEKS                       R4 R0 K12 ["pollIntervalSeconds"]
       41 SETTABLEKS                       R4 R3 K12 ["pollIntervalSeconds"]
       43 GETTABLEKS                       R4 R0 K13 ["timeoutSeconds"]
       45 SETTABLEKS                       R4 R3 K13 ["timeoutSeconds"]
       47 CALL                             R2 1 1
       48 NAMECALL                         R3 R2 K15 ["start"]
       50 CALL                             R3 1 0
       51 LOADN                            R5 1
       52 NAMECALL                         R3 R2 K16 ["awaitPickAsync"]
       54 CALL                             R3 2 2
       55 NAMECALL                         R5 R2 K17 ["cancel"]
       57 CALL                             R5 1 0
       58 JUMPIFNOTEQKNIL                  R3 ; [+6]
       60 DUPTABLE                         R5 K19 [{"errorMessage"}]
       61 ORK                              R6 R4 K20 ["Single-image generation failed"]
       62 SETTABLEKS                       R6 R5 K18 ["errorMessage"]
       64 RETURN                           R5 1
       65 DUPTABLE                         R5 K22 [{"imageContent"}]
       66 SETTABLEKS                       R3 R5 K21 ["imageContent"]
       68 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["ImageSelection"]
       13 GETTABLEKS                       R2 R2 K8 ["ImageSelectionOrchestrator"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Types"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 GETIMPORT                        R4 K13 [table.freeze]
       25 DUPTABLE                         R5 K15 [{"generateAsync"}]
       26 SETTABLEKS                       R3 R5 K14 ["generateAsync"]
       28 CALL                             R4 1 -1
       29 RETURN                           R4 -1
