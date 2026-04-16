PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K7 [{"type", "status", "answeredQuestions", "dismissed"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 LOADK                            R2 K8 ["completed"]
       14 SETTABLEKS                       R2 R1 K4 ["status"]
       16 GETTABLEKS                       R2 R0 K5 ["answeredQuestions"]
       18 SETTABLEKS                       R2 R1 K5 ["answeredQuestions"]
       20 GETTABLEKS                       R2 R0 K6 ["dismissed"]
       22 SETTABLEKS                       R2 R1 K6 ["dismissed"]
       24 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K8 [{"type", "status", "questions", "answeredQuestions", "dismissed"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 LOADK                            R2 K9 ["completed"]
       14 SETTABLEKS                       R2 R1 K4 ["status"]
       16 NEWTABLE                         R2 0 0
       18 SETTABLEKS                       R2 R1 K5 ["questions"]
       20 GETTABLEKS                       R2 R0 K6 ["answeredQuestions"]
       22 SETTABLEKS                       R2 R1 K6 ["answeredQuestions"]
       24 GETTABLEKS                       R2 R0 K7 ["dismissed"]
       26 SETTABLEKS                       R2 R1 K7 ["dismissed"]
       28 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["QuestionAnswerTypes"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R3 K3 [script]
       12 GETTABLEKS                       R2 R3 K5 ["QuestionAnswerWithOverride"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K3 [script]
       17 LOADK                            R4 K6 ["AssistantUI"]
       18 NAMECALL                         R2 R2 K7 ["FindFirstAncestor"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K1 [require]
       23 GETTABLEKS                       R5 R2 K8 ["Flags"]
       25 GETTABLEKS                       R4 R5 K9 ["FFlagAssistantMultipleChatPersistence"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K10 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 DUPCLOSURE                       R5 K11 [PROTO_1]
       31 CAPTURE                          VAL R3
       32 DUPTABLE                         R6 K15 [{"Type", "ContentWidget", "Serialization"}]
       33 LOADK                            R7 K16 ["QuestionAnswer"]
       34 SETTABLEKS                       R7 R6 K12 ["Type"]
       36 SETTABLEKS                       R1 R6 K13 ["ContentWidget"]
       38 DUPTABLE                         R7 K19 [{"serialize", "deserialize"}]
       39 SETTABLEKS                       R4 R7 K17 ["serialize"]
       41 SETTABLEKS                       R5 R7 K18 ["deserialize"]
       43 SETTABLEKS                       R7 R6 K14 ["Serialization"]
       45 RETURN                           R6 1
