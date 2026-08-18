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
       23 NEWTABLE                         R8 0 3
       25 GETUPVAL                         R9 4
       26 GETUPVAL                         R10 6
       27 DUPTABLE                         R11 K8 [{"overlayGui", "plugin"}]
       28 GETTABLEKS                       R12 R0 K6 ["overlayGui"]
       30 SETTABLEKS                       R12 R11 K6 ["overlayGui"]
       32 GETTABLEKS                       R12 R0 K7 ["plugin"]
       34 SETTABLEKS                       R12 R11 K7 ["plugin"]
       36 CALL                             R9 2 1
       37 GETUPVAL                         R10 4
       38 GETUPVAL                         R11 7
       39 GETTABLEKS                       R11 R11 K9 ["Provider"]
       41 CALL                             R10 1 1
       42 GETUPVAL                         R11 4
       43 GETUPVAL                         R12 8
       44 GETTABLEKS                       R12 R12 K9 ["Provider"]
       46 NEWTABLE                         R13 0 0
       48 CALL                             R11 2 -1
       49 SETLIST                          R8 R9 -1 [1]
       51 SETTABLEKS                       R8 R7 K4 ["providers"]
       53 DUPTABLE                         R8 K11 [{"MainView"}]
       54 JUMPIFNOT                        R4 ; [+7]
       55 GETUPVAL                         R9 4
       56 GETUPVAL                         R10 9
       57 DUPTABLE                         R11 K13 [{"session"}]
       58 SETTABLEKS                       R4 R11 K12 ["session"]
       60 CALL                             R9 2 1
       61 JUMP                             ; [+5]
       62 GETUPVAL                         R9 4
       63 GETUPVAL                         R10 2
       64 GETTABLEKS                       R10 R10 K14 ["Fragment"]
       66 CALL                             R9 1 1
       67 SETTABLEKS                       R9 R8 K10 ["MainView"]
       69 CALL                             R5 3 -1
       70 RETURN                           R5 -1

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
       24 GETTABLEKS                       R4 R4 K10 ["EphemeralRowContext"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K7 ["Components"]
       31 GETTABLEKS                       R5 R5 K8 ["Contexts"]
       33 GETTABLEKS                       R5 R5 K11 ["FoundationContextProvider"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K6 [require]
       38 GETTABLEKS                       R6 R1 K12 ["React"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R7 R1 K13 ["ReactUtils"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K7 ["Components"]
       50 GETTABLEKS                       R8 R8 K14 ["SessionView"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETIMPORT                        R9 K1 [script]
       57 GETTABLEKS                       R9 R9 K4 ["Parent"]
       59 GETTABLEKS                       R9 R9 K8 ["Contexts"]
       61 GETTABLEKS                       R9 R9 K15 ["VisualValuesContext"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETTABLEKS                       R10 R0 K16 ["Networking"]
       68 GETTABLEKS                       R10 R10 K17 ["useServe"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K6 [require]
       73 GETTABLEKS                       R11 R0 K16 ["Networking"]
       75 GETTABLEKS                       R11 R11 K18 ["useSessions"]
       77 CALL                             R10 1 1
       78 GETTABLEKS                       R11 R5 K19 ["createElement"]
       80 DUPCLOSURE                       R12 K20 [PROTO_0]
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R7
       91 RETURN                           R12 1
