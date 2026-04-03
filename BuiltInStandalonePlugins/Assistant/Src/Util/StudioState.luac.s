PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["Unloading"]
        2 DUPCLOSURE                       R4 K1 [PROTO_1]
        3 CAPTURE                          UPVAL U0
        4 NAMECALL                         R2 R2 K2 ["Connect"]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K3 ["subscribeGameLoaded"]
       11 MOVE                             R4 R1
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          UPVAL U2
       14 CALL                             R3 2 1
       15 SETTABLEKS                       R3 R2 K4 ["gameLoaded"]
       17 GETUPVAL                         R2 0
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R3 R4 K5 ["subscribeGameStopped"]
       21 MOVE                             R4 R1
       22 NEWCLOSURE                       R5 P2
       23 CAPTURE                          UPVAL U2
       24 CALL                             R3 2 1
       25 SETTABLEKS                       R3 R2 K6 ["gameStopped"]
       27 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["GameLoadedNotifier"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Util"]
       29 GETTABLEKS                       R4 R5 K11 ["GameStoppedNotifier"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 2 0
       34 LOADB                            R5 0
       35 DUPCLOSURE                       R6 K12 [PROTO_0]
       36 CAPTURE                          VAL R4
       37 NEWCLOSURE                       R7 P1
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R2
       40 CAPTURE                          REF R5
       41 CAPTURE                          VAL R3
       42 NEWCLOSURE                       R8 P2
       43 CAPTURE                          REF R5
       44 DUPTABLE                         R9 K15 [{"init", "getStudioPlayState"}]
       45 SETTABLEKS                       R7 R9 K13 ["init"]
       47 SETTABLEKS                       R8 R9 K14 ["getStudioPlayState"]
       49 CLOSEUPVALS                      R5
       50 RETURN                           R9 1
