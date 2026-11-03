PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
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
       11 GETTABLEKS                       R3 R1 K6 ["Parent"]
       13 GETTABLEKS                       R3 R3 K7 ["Gen3dCore"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K8 ["Types"]
       20 CALL                             R3 1 1
       21 DUPTABLE                         R4 K25 [{["Array"] = "array", ["Boolean"] = "boolean", ["Image"] = "image", ["Instance"] = "instance", ["Number"] = "number", ["Option"] = "option", ["String"] = "string", ["Vector3"] = "vector3"}]
       22 SETTABLEKS                       R4 R0 K26 ["INPUT_TYPE"]
       24 DUPTABLE                         R4 K47 [{["All"] = "all", ["Always"] = "always", ["Any"] = "any", ["Branch"] = "branch", ["Equals"] = "equals", ["Exists"] = "exists", ["Never"] = "never", ["Not"] = "not", ["Range"] = "range", ["NonEmpty"] = "nonEmpty"}]
       25 SETTABLEKS                       R4 R0 K48 ["RULE_KIND"]
       27 DUPCLOSURE                       R4 K49 [PROTO_0]
       28 SETTABLEKS                       R4 R0 K50 ["asRule"]
       30 DUPTABLE                         R4 K53 [{["Gen3D"] = "gen3d"}]
       31 SETTABLEKS                       R4 R0 K54 ["SEGMENTATION_FOLD_KIND"]
       33 DUPCLOSURE                       R4 K55 [PROTO_1]
       34 SETTABLEKS                       R4 R0 K56 ["readAskInputValues"]
       36 RETURN                           R0 1
