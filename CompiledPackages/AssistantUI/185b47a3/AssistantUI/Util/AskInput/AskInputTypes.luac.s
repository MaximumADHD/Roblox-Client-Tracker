PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["watch"]
        2 GETTABLE                         R2 R1 R3
        3 GETTABLEKS                       R4 R0 K1 ["cases"]
        5 FASTCALL1                        TYPEOF R4 ; [+2]
        6 GETIMPORT                        R3 K3 [typeof]
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+8]
       11 FASTCALL1                        TYPEOF R2 ; [+3]
       12 MOVE                             R4 R2
       13 GETIMPORT                        R3 K3 [typeof]
       15 CALL                             R3 1 1
       16 JUMPIFEQKS                       R3 K5 ["string"] ; [+3]
       18 LOADNIL                          R3
       19 RETURN                           R3 1
       20 GETTABLEKS                       R4 R0 K1 ["cases"]
       22 GETTABLE                         R3 R4 R2
       23 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        2 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        4 MOVE                             R3 R1
        5 LOADK                            R4 K1 ["No tool result found in AskInput step"]
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R1 K4 ["structuredContent"]
       11 FASTCALL2K                       ASSERT R2 K5 ; [+5]
       13 MOVE                             R4 R2
       14 LOADK                            R5 K5 ["No structured content found in AskInput result"]
       15 GETIMPORT                        R3 K3 [assert]
       17 CALL                             R3 2 0
       18 GETTABLEKS                       R5 R2 K6 ["dismissed"]
       20 NOT                              R4 R5
       21 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       23 LOADK                            R5 K7 ["AskInput was dismissed, cannot proceed"]
       24 GETIMPORT                        R3 K3 [assert]
       26 CALL                             R3 2 0
       27 GETTABLEKS                       R3 R2 K8 ["values"]
       29 FASTCALL2K                       ASSERT R3 K9 ; [+5]
       31 MOVE                             R5 R3
       32 LOADK                            R6 K9 ["No values found in AskInput structured content"]
       33 GETIMPORT                        R4 K3 [assert]
       35 CALL                             R4 2 0
       36 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["AssistantUI"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Types"]
       13 CALL                             R2 1 1
       14 DUPTABLE                         R3 K21 [{["Array"] = "array", ["Boolean"] = "boolean", ["Image"] = "image", ["Instance"] = "instance", ["Number"] = "number", ["Option"] = "option", ["String"] = "string"}]
       15 SETTABLEKS                       R3 R0 K22 ["INPUT_TYPE"]
       17 DUPTABLE                         R3 K41 [{["All"] = "all", ["Always"] = "always", ["Any"] = "any", ["Branch"] = "branch", ["Equals"] = "equals", ["Never"] = "never", ["Not"] = "not", ["Present"] = "present", ["Range"] = "range"}]
       18 SETTABLEKS                       R3 R0 K42 ["RULE_KIND"]
       20 DUPCLOSURE                       R3 K43 [PROTO_0]
       21 SETTABLEKS                       R3 R0 K44 ["rule"]
       23 DUPCLOSURE                       R3 K45 [PROTO_1]
       24 SETTABLEKS                       R3 R0 K46 ["resolveAxisEffects"]
       26 DUPTABLE                         R3 K49 [{["Gen3D"] = "gen3d"}]
       27 SETTABLEKS                       R3 R0 K50 ["SEGMENTATION_FOLD_KIND"]
       29 DUPCLOSURE                       R3 K51 [PROTO_2]
       30 SETTABLEKS                       R3 R0 K52 ["readAskInputValues"]
       32 RETURN                           R0 1
