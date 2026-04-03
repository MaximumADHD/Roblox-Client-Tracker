PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K0 ["useContext"]
        8 GETUPVAL                         R5 3
        9 GETTABLEKS                       R4 R5 K1 ["Context"]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R4 R3 K2 ["activeViewIdentifier"]
       14 JUMPIFNOT                        R4 ; [+3]
       15 GETTABLEKS                       R5 R3 K2 ["activeViewIdentifier"]
       17 GETTABLE                         R4 R2 R5
       18 GETUPVAL                         R5 4
       19 GETUPVAL                         R7 5
       20 GETTABLEKS                       R6 R7 K3 ["ContextStack"]
       22 DUPTABLE                         R7 K5 [{"providers"}]
       23 NEWTABLE                         R8 0 1
       25 GETUPVAL                         R9 4
       26 GETUPVAL                         R10 6
       27 DUPTABLE                         R11 K7 [{"overlayGui"}]
       28 GETTABLEKS                       R12 R0 K6 ["overlayGui"]
       30 SETTABLEKS                       R12 R11 K6 ["overlayGui"]
       32 CALL                             R9 2 -1
       33 SETLIST                          R8 R9 -1 [1]
       35 SETTABLEKS                       R8 R7 K4 ["providers"]
       37 DUPTABLE                         R8 K9 [{"MainView"}]
       38 JUMPIFNOT                        R4 ; [+7]
       39 GETUPVAL                         R9 4
       40 GETUPVAL                         R10 7
       41 DUPTABLE                         R11 K11 [{"session"}]
       42 SETTABLEKS                       R4 R11 K10 ["session"]
       44 CALL                             R9 2 1
       45 JUMP                             ; [+5]
       46 GETUPVAL                         R9 4
       47 GETUPVAL                         R11 2
       48 GETTABLEKS                       R10 R11 K12 ["Fragment"]
       50 CALL                             R9 1 1
       51 SETTABLEKS                       R9 R8 K8 ["MainView"]
       53 CALL                             R5 3 -1
       54 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R5 R0 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["Contexts"]
       15 GETTABLEKS                       R3 R4 K9 ["ActiveViewContext"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R6 R0 K7 ["Components"]
       22 GETTABLEKS                       R5 R6 K8 ["Contexts"]
       24 GETTABLEKS                       R4 R5 K10 ["FoundationContextProvider"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R1 K11 ["React"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K12 ["ReactUtils"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R8 R0 K7 ["Components"]
       41 GETTABLEKS                       R7 R8 K13 ["SessionView"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R9 R0 K14 ["Networking"]
       48 GETTABLEKS                       R8 R9 K15 ["useServe"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R10 R0 K14 ["Networking"]
       55 GETTABLEKS                       R9 R10 K16 ["useSessions"]
       57 CALL                             R8 1 1
       58 GETTABLEKS                       R9 R4 K17 ["createElement"]
       60 DUPCLOSURE                       R10 K18 [PROTO_0]
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R6
       69 RETURN                           R10 1
