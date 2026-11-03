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
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K7 ["buildImageSelectionServices"]
       26 DUPTABLE                         R2 K9 [{"environment"}]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K10 ["get"]
       30 CALL                             R3 0 1
       31 SETTABLEKS                       R3 R2 K8 ["environment"]
       33 CALL                             R1 1 1
       34 GETUPVAL                         R2 2
       35 GETTABLEKS                       R2 R2 K11 ["ImageSelectionOps"]
       37 GETTABLEKS                       R2 R2 K12 ["generateOneAsync"]
       39 MOVE                             R3 R1
       40 DUPTABLE                         R4 K16 [{"textPrompt", "model", "seedImage", "timeoutSeconds"}]
       41 GETTABLEKS                       R5 R0 K0 ["textPrompt"]
       43 SETTABLEKS                       R5 R4 K0 ["textPrompt"]
       45 GETTABLEKS                       R5 R0 K13 ["model"]
       47 SETTABLEKS                       R5 R4 K13 ["model"]
       49 GETTABLEKS                       R5 R0 K14 ["seedImage"]
       51 SETTABLEKS                       R5 R4 K14 ["seedImage"]
       53 GETTABLEKS                       R5 R0 K15 ["timeoutSeconds"]
       55 SETTABLEKS                       R5 R4 K15 ["timeoutSeconds"]
       57 CALL                             R2 2 1
       58 GETTABLEKS                       R3 R2 K17 ["imageContent"]
       60 JUMPIFNOTEQKNIL                  R3 ; [+8]
       62 DUPTABLE                         R3 K19 [{"errorMessage"}]
       63 GETTABLEKS                       R5 R2 K18 ["errorMessage"]
       65 ORK                              R4 R5 K20 ["Single-image generation failed"]
       66 SETTABLEKS                       R4 R3 K18 ["errorMessage"]
       68 RETURN                           R3 1
       69 DUPTABLE                         R3 K21 [{"imageContent"}]
       70 GETTABLEKS                       R4 R2 K17 ["imageContent"]
       72 SETTABLEKS                       R4 R3 K17 ["imageContent"]
       74 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Gen3dCore"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["Gen3dUtils"]
       27 GETTABLEKS                       R4 R4 K12 ["Gen3dServicesBuilder"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["Types"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K14 [PROTO_0]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 GETIMPORT                        R6 K17 [table.freeze]
       41 DUPTABLE                         R7 K19 [{"generateAsync"}]
       42 SETTABLEKS                       R5 R7 K18 ["generateAsync"]
       44 CALL                             R6 1 -1
       45 RETURN                           R6 -1
