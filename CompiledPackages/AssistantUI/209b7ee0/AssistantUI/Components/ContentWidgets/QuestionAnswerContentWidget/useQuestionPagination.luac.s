PROTO_0:
        0 LOADN                            R2 1
        1 SUBK                             R3 R0 K0 [1]
        2 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
        4 GETIMPORT                        R1 K3 [math.max]
        6 CALL                             R1 2 1
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_0]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 ADDK                             R3 R0 K0 [1]
        2 FASTCALL2                        MATH_MIN R2 R3 ; [+3]
        4 GETIMPORT                        R1 K3 [math.min]
        6 CALL                             R1 2 1
        7 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADN                            R2 1
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 NEWTABLE                         R5 0 0
       12 CALL                             R3 2 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K1 ["useCallback"]
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R6 0 1
       21 MOVE                             R7 R0
       22 SETLIST                          R6 R7 1 [1]
       24 CALL                             R4 2 1
       25 LOADN                            R7 1
       26 LOADN                            R9 1
       27 FASTCALL2                        MATH_MAX R9 R0 ; [+4]
       29 MOVE                             R10 R0
       30 GETIMPORT                        R8 K4 [math.max]
       32 CALL                             R8 2 1
       33 FASTCALL3                        MATH_CLAMP R1 R7 R8
       35 MOVE                             R6 R1
       36 GETIMPORT                        R5 K6 [math.clamp]
       38 CALL                             R5 3 1
       39 DUPTABLE                         R6 K11 [{"safeCurrentPage", "setCurrentPage", "onPrev", "onNext"}]
       40 SETTABLEKS                       R5 R6 K7 ["safeCurrentPage"]
       42 SETTABLEKS                       R2 R6 K8 ["setCurrentPage"]
       44 SETTABLEKS                       R3 R6 K9 ["onPrev"]
       46 SETTABLEKS                       R4 R6 K10 ["onNext"]
       48 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["QuestionAnswerTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Parent"]
       20 GETTABLEKS                       R3 R4 K8 ["React"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K9 [PROTO_4]
       24 CAPTURE                          VAL R2
       25 RETURN                           R3 1
