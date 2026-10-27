PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 1
        4 CALL                             R1 1 2
        5 SETUPVAL                         R1 1
        6 SETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 GETUPVAL                         R4 4
        9 GETTABLEKS                       R4 R4 K1 ["Provider"]
       11 DUPTABLE                         R5 K3 [{"isVisible"}]
       12 SETTABLEKS                       R1 R5 K2 ["isVisible"]
       14 GETTABLEKS                       R6 R0 K4 ["children"]
       16 CALL                             R3 3 -1
       17 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["lastSetIsVisible is not initialized yet"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 1
        1 LOADNIL                          R1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          REF R0
        5 CAPTURE                          REF R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 MOVE                             R3 R2
        9 DUPTABLE                         R4 K2 [{"getIsVisible", "setIsVisible"}]
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          REF R0
       12 SETTABLEKS                       R5 R4 K0 ["getIsVisible"]
       14 NEWCLOSURE                       R5 P2
       15 CAPTURE                          REF R1
       16 SETTABLEKS                       R5 R4 K1 ["setIsVisible"]
       18 CLOSEUPVALS                      R0
       19 RETURN                           R3 2

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
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["WidgetVisibilityContext"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["createElement"]
       25 DUPCLOSURE                       R4 K12 [PROTO_3]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R2
       29 RETURN                           R4 1
