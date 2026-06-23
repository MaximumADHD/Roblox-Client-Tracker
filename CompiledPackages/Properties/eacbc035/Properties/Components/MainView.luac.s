PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K0 ["useContext"]
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R4 R4 K1 ["Context"]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R4 R3 K2 ["activeViewIdentifier"]
       14 JUMPIFNOT                        R4 ; [+3]
       15 GETTABLEKS                       R5 R3 K2 ["activeViewIdentifier"]
       17 GETTABLE                         R4 R2 R5
       18 GETUPVAL                         R5 4
       19 GETUPVAL                         R6 5
       20 GETTABLEKS                       R6 R6 K3 ["ContextStack"]
       22 DUPTABLE                         R7 K5 [{"providers"}]
       23 NEWTABLE                         R8 0 2
       25 GETUPVAL                         R9 4
       26 GETUPVAL                         R10 6
       27 DUPTABLE                         R11 K7 [{"overlayGui"}]
       28 GETTABLEKS                       R12 R0 K6 ["overlayGui"]
       30 SETTABLEKS                       R12 R11 K6 ["overlayGui"]
       32 CALL                             R9 2 1
       33 GETUPVAL                         R10 4
       34 GETUPVAL                         R11 7
       35 GETTABLEKS                       R11 R11 K8 ["Provider"]
       37 NEWTABLE                         R12 0 0
       39 CALL                             R10 2 -1
       40 SETLIST                          R8 R9 -1 [1]
       42 SETTABLEKS                       R8 R7 K4 ["providers"]
       44 DUPTABLE                         R8 K10 [{"MainView"}]
       45 JUMPIFNOT                        R4 ; [+7]
       46 GETUPVAL                         R9 4
       47 GETUPVAL                         R10 8
       48 DUPTABLE                         R11 K12 [{"session"}]
       49 SETTABLEKS                       R4 R11 K11 ["session"]
       51 CALL                             R9 2 1
       52 JUMP                             ; [+5]
       53 GETUPVAL                         R9 4
       54 GETUPVAL                         R10 2
       55 GETTABLEKS                       R10 R10 K13 ["Fragment"]
       57 CALL                             R9 1 1
       58 SETTABLEKS                       R9 R8 K9 ["MainView"]
       60 CALL                             R5 3 -1
       61 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       15 GETTABLEKS                       R3 R3 K9 ["ActiveViewContext"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K7 ["Components"]
       22 GETTABLEKS                       R4 R4 K8 ["Contexts"]
       24 GETTABLEKS                       R4 R4 K10 ["FoundationContextProvider"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R1 K11 ["React"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K12 ["ReactUtils"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K7 ["Components"]
       41 GETTABLEKS                       R7 R7 K13 ["SessionView"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETIMPORT                        R8 K1 [script]
       48 GETTABLEKS                       R8 R8 K4 ["Parent"]
       50 GETTABLEKS                       R8 R8 K8 ["Contexts"]
       52 GETTABLEKS                       R8 R8 K14 ["VisualValuesContext"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R0 K15 ["Networking"]
       59 GETTABLEKS                       R9 R9 K16 ["useServe"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K6 [require]
       64 GETTABLEKS                       R10 R0 K15 ["Networking"]
       66 GETTABLEKS                       R10 R10 K17 ["useSessions"]
       68 CALL                             R9 1 1
       69 GETTABLEKS                       R10 R4 K18 ["createElement"]
       71 DUPCLOSURE                       R11 K19 [PROTO_0]
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R6
       81 RETURN                           R11 1
