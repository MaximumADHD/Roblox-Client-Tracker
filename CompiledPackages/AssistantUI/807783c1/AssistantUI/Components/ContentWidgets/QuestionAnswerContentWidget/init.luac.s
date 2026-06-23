PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R2 R0 K3 ["status"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["Status"]
       13 GETTABLEKS                       R3 R3 K5 ["Error"]
       15 JUMPIFNOTEQ                      R2 R3 ; [+7]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K4 ["Status"]
       20 GETTABLEKS                       R1 R1 K5 ["Error"]
       22 JUMP                             ; [+5]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K4 ["Status"]
       26 GETTABLEKS                       R1 R1 K6 ["Completed"]
       28 DUPTABLE                         R2 K9 [{"status", "answeredQuestions", "dismissed"}]
       29 SETTABLEKS                       R1 R2 K3 ["status"]
       31 GETTABLEKS                       R3 R0 K7 ["answeredQuestions"]
       33 SETTABLEKS                       R3 R2 K7 ["answeredQuestions"]
       35 GETTABLEKS                       R3 R0 K8 ["dismissed"]
       37 SETTABLEKS                       R3 R2 K8 ["dismissed"]
       39 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 DUPTABLE                         R2 K8 [{"type", "status", "questions", "answeredQuestions", "dismissed"}]
        9 LOADK                            R3 K9 ["QuestionAnswer"]
       10 SETTABLEKS                       R3 R2 K3 ["type"]
       12 GETTABLEKS                       R3 R0 K4 ["status"]
       14 JUMPIF                           R3 ; [+5]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K10 ["Status"]
       18 GETTABLEKS                       R3 R3 K11 ["Error"]
       20 SETTABLEKS                       R3 R2 K4 ["status"]
       22 NEWTABLE                         R3 0 0
       24 SETTABLEKS                       R3 R2 K5 ["questions"]
       26 GETTABLEKS                       R3 R0 K6 ["answeredQuestions"]
       28 SETTABLEKS                       R3 R2 K6 ["answeredQuestions"]
       30 GETTABLEKS                       R3 R0 K7 ["dismissed"]
       32 SETTABLEKS                       R3 R2 K7 ["dismissed"]
       34 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["QuestionAnswerTypes"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["QuestionAnswerWithOverride"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K3 [script]
       17 LOADK                            R4 K6 ["AssistantUI"]
       18 NAMECALL                         R2 R2 K7 ["FindFirstAncestor"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K1 [require]
       23 GETTABLEKS                       R4 R2 K8 ["Util"]
       25 GETTABLEKS                       R4 R4 K9 ["Serializer"]
       27 GETTABLEKS                       R4 R4 K10 ["SerializerTypes"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K1 [require]
       32 GETTABLEKS                       R5 R2 K11 ["Flags"]
       34 GETTABLEKS                       R5 R5 K12 ["FFlagAssistantMultipleChatPersistence"]
       36 CALL                             R4 1 1
       37 DUPTABLE                         R5 K15 [{"toMeta", "fromMeta"}]
       38 DUPCLOSURE                       R6 K16 [PROTO_0]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R6 R5 K13 ["toMeta"]
       43 DUPCLOSURE                       R6 K17 [PROTO_1]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R6 R5 K14 ["fromMeta"]
       48 DUPTABLE                         R6 K21 [{"Type", "ContentWidget", "Serialization"}]
       49 LOADK                            R7 K22 ["QuestionAnswer"]
       50 SETTABLEKS                       R7 R6 K18 ["Type"]
       52 SETTABLEKS                       R1 R6 K19 ["ContentWidget"]
       54 SETTABLEKS                       R5 R6 K20 ["Serialization"]
       56 RETURN                           R6 1
