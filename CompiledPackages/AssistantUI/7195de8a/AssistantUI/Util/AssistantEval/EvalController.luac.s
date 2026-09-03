PROTO_0:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["disabledTools"]
        3 JUMPIF                           R0 ; [+2]
        4 NEWTABLE                         R0 0 0
        6 RETURN                           R0 1

PROTO_3:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 0
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["isEvaluationRunningChanged"]
        5 LOADB                            R2 1
        6 NAMECALL                         R0 R0 K1 ["Fire"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["isEvaluationRunningChanged"]
        5 LOADB                            R2 0
        6 NAMECALL                         R0 R0 K1 ["Fire"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_8:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["evalConfigChanged"]
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_10:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["isEvaluationRunningChanged"]
        5 LOADB                            R2 0
        6 NAMECALL                         R0 R0 K1 ["Fire"]
        8 CALL                             R0 2 0
        9 NEWTABLE                         R0 0 0
       11 SETUPVAL                         R0 2
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K2 ["evalConfigChanged"]
       15 MOVE                             R3 R0
       16 NAMECALL                         R1 R1 K1 ["Fire"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Signal"]
       13 CALL                             R1 1 1
       14 LOADB                            R2 0
       15 LOADNIL                          R3
       16 NEWTABLE                         R4 0 0
       18 LOADB                            R5 1
       19 DUPTABLE                         R6 K10 [{"isEvaluationRunningChanged", "evalConfigChanged"}]
       20 GETTABLEKS                       R7 R1 K11 ["new"]
       22 CALL                             R7 0 1
       23 SETTABLEKS                       R7 R6 K8 ["isEvaluationRunningChanged"]
       25 GETTABLEKS                       R7 R1 K11 ["new"]
       27 CALL                             R7 0 1
       28 SETTABLEKS                       R7 R6 K9 ["evalConfigChanged"]
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          REF R5
       32 NEWCLOSURE                       R8 P1
       33 CAPTURE                          REF R5
       34 NEWCLOSURE                       R9 P2
       35 CAPTURE                          REF R4
       36 NEWCLOSURE                       R10 P3
       37 CAPTURE                          REF R3
       38 NEWCLOSURE                       R11 P4
       39 CAPTURE                          REF R3
       40 NEWCLOSURE                       R12 P5
       41 CAPTURE                          REF R2
       42 CAPTURE                          VAL R6
       43 NEWCLOSURE                       R13 P6
       44 CAPTURE                          REF R2
       45 CAPTURE                          VAL R6
       46 NEWCLOSURE                       R14 P7
       47 CAPTURE                          REF R2
       48 NEWCLOSURE                       R15 P8
       49 CAPTURE                          REF R4
       50 CAPTURE                          VAL R6
       51 NEWCLOSURE                       R16 P9
       52 CAPTURE                          REF R4
       53 NEWCLOSURE                       R17 P10
       54 CAPTURE                          REF R2
       55 CAPTURE                          VAL R6
       56 CAPTURE                          REF R4
       57 DUPTABLE                         R18 K24 [{"reset", "startRunningEvaluation", "stopRunningEvaluation", "getIsEvaluationRunning", "setEvalConfig", "getEvalConfig", "setGetConversationCallback", "getConversation", "getDisabledTools", "setInputEnabled", "getInputEnabled", "events"}]
       58 SETTABLEKS                       R17 R18 K12 ["reset"]
       60 SETTABLEKS                       R12 R18 K13 ["startRunningEvaluation"]
       62 SETTABLEKS                       R13 R18 K14 ["stopRunningEvaluation"]
       64 SETTABLEKS                       R14 R18 K15 ["getIsEvaluationRunning"]
       66 SETTABLEKS                       R15 R18 K16 ["setEvalConfig"]
       68 SETTABLEKS                       R16 R18 K17 ["getEvalConfig"]
       70 SETTABLEKS                       R10 R18 K18 ["setGetConversationCallback"]
       72 SETTABLEKS                       R11 R18 K19 ["getConversation"]
       74 SETTABLEKS                       R9 R18 K20 ["getDisabledTools"]
       76 SETTABLEKS                       R7 R18 K21 ["setInputEnabled"]
       78 SETTABLEKS                       R8 R18 K22 ["getInputEnabled"]
       80 SETTABLEKS                       R6 R18 K23 ["events"]
       82 CLOSEUPVALS                      R2
       83 RETURN                           R18 1
