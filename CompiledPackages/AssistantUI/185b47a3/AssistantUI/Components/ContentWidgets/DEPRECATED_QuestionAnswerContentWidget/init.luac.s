PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["status"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Status"]
        5 GETTABLEKS                       R3 R3 K2 ["Error"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+7]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["Status"]
       12 GETTABLEKS                       R1 R1 K2 ["Error"]
       14 JUMP                             ; [+5]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K1 ["Status"]
       18 GETTABLEKS                       R1 R1 K3 ["Completed"]
       20 DUPTABLE                         R2 K6 [{"status", "answeredQuestions", "dismissed"}]
       21 SETTABLEKS                       R1 R2 K0 ["status"]
       23 GETTABLEKS                       R3 R0 K4 ["answeredQuestions"]
       25 SETTABLEKS                       R3 R2 K4 ["answeredQuestions"]
       27 GETTABLEKS                       R3 R0 K5 ["dismissed"]
       29 SETTABLEKS                       R3 R2 K5 ["dismissed"]
       31 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R2 K6 [{[1] = "QuestionAnswer", ["status"], ["questions"], ["answeredQuestions"], ["dismissed"]}]
        1 GETTABLEKS                       R3 R0 K2 ["status"]
        3 JUMPIF                           R3 ; [+5]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K7 ["Status"]
        7 GETTABLEKS                       R3 R3 K8 ["Error"]
        9 SETTABLEKS                       R3 R2 K2 ["status"]
       11 NEWTABLE                         R3 0 0
       13 SETTABLEKS                       R3 R2 K3 ["questions"]
       15 GETTABLEKS                       R3 R0 K4 ["answeredQuestions"]
       17 SETTABLEKS                       R3 R2 K4 ["answeredQuestions"]
       19 GETTABLEKS                       R3 R0 K5 ["dismissed"]
       21 SETTABLEKS                       R3 R2 K5 ["dismissed"]
       23 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["QuestionAnswer"]
       13 GETTABLEKS                       R2 R2 K8 ["QuestionAnswerTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K9 ["QuestionAnswerWithOverride"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Serializer"]
       29 GETTABLEKS                       R4 R4 K12 ["SerializerTypes"]
       31 CALL                             R3 1 1
       32 DUPTABLE                         R4 K15 [{"toMeta", "fromMeta"}]
       33 DUPCLOSURE                       R5 K16 [PROTO_0]
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R5 R4 K13 ["toMeta"]
       37 DUPCLOSURE                       R5 K17 [PROTO_1]
       38 CAPTURE                          VAL R1
       39 SETTABLEKS                       R5 R4 K14 ["fromMeta"]
       41 DUPTABLE                         R5 K21 [{["Type"] = "QuestionAnswer", ["ContentWidget"], ["Serialization"]}]
       42 SETTABLEKS                       R2 R5 K19 ["ContentWidget"]
       44 SETTABLEKS                       R4 R5 K20 ["Serialization"]
       46 RETURN                           R5 1
