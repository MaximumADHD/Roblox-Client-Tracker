PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 DUPTABLE                         R3 K3 [{"getThread", "getContentObserver", "getOrAddMessage"}]
        7 SETTABLEKS                       R0 R3 K0 ["getThread"]
        9 SETTABLEKS                       R1 R3 K1 ["getContentObserver"]
       11 SETTABLEKS                       R2 R3 K2 ["getOrAddMessage"]
       13 SETUPVAL                         R3 3
       14 LOADNIL                          R3
       15 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["TestHooks not initialized yet"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_3:
        0 LOADNIL                          R0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          REF R0
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R1
        9 NEWCLOSURE                       R3 P2
       10 CAPTURE                          REF R0
       11 CLOSEUPVALS                      R0
       12 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Hooks"]
       18 GETTABLEKS                       R3 R3 K9 ["useGetContentObserver"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Hooks"]
       25 GETTABLEKS                       R4 R4 K10 ["useGetOrAddMessage"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Hooks"]
       32 GETTABLEKS                       R5 R5 K11 ["useGetThread"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K12 ["createElement"]
       37 DUPCLOSURE                       R6 K13 [PROTO_3]
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R5
       42 RETURN                           R6 1
