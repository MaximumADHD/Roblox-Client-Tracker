PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K2 [string.lower]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETIMPORT                        R7 K4 [string.find]
       13 MOVE                             R8 R1
       14 GETTABLEKS                       R9 R6 K5 ["pattern"]
       16 CALL                             R7 2 1
       17 JUMPIFNOT                        R7 ; [+8]
       18 GETUPVAL                         R7 1
       19 LOADK                            R9 K6 ["CodeSafety"]
       20 GETTABLEKS                       R10 R6 K7 ["warningKey"]
       22 NAMECALL                         R7 R7 K8 ["getText"]
       24 CALL                             R7 3 -1
       25 RETURN                           R7 -1
       26 FORGLOOP                         R2 2 ; [-16]
       28 LOADNIL                          R2
       29 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Resources"]
       11 GETTABLEKS                       R3 R4 K7 ["Localization"]
       13 GETTABLEKS                       R2 R3 K8 ["Translator"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 0 10
       18 DUPTABLE                         R3 K11 [{"pattern", "warningKey"}]
       19 LOADK                            R4 K12 [":destroy%("]
       20 SETTABLEKS                       R4 R3 K9 ["pattern"]
       22 LOADK                            R4 K13 ["Destroy"]
       23 SETTABLEKS                       R4 R3 K10 ["warningKey"]
       25 DUPTABLE                         R4 K11 [{"pattern", "warningKey"}]
       26 LOADK                            R5 K14 [":clearallchildren%("]
       27 SETTABLEKS                       R5 R4 K9 ["pattern"]
       29 LOADK                            R5 K15 ["ClearAllChildren"]
       30 SETTABLEKS                       R5 R4 K10 ["warningKey"]
       32 DUPTABLE                         R5 K11 [{"pattern", "warningKey"}]
       33 LOADK                            R6 K16 ["workspace%.camera.*="]
       34 SETTABLEKS                       R6 R5 K9 ["pattern"]
       36 LOADK                            R6 K17 ["Camera"]
       37 SETTABLEKS                       R6 R5 K10 ["warningKey"]
       39 DUPTABLE                         R6 K11 [{"pattern", "warningKey"}]
       40 LOADK                            R7 K18 ["workspace%.currentcamera.*="]
       41 SETTABLEKS                       R7 R6 K9 ["pattern"]
       43 LOADK                            R7 K17 ["Camera"]
       44 SETTABLEKS                       R7 R6 K10 ["warningKey"]
       46 DUPTABLE                         R7 K11 [{"pattern", "warningKey"}]
       47 LOADK                            R8 K19 ["settings"]
       48 SETTABLEKS                       R8 R7 K9 ["pattern"]
       50 LOADK                            R8 K20 ["Settings"]
       51 SETTABLEKS                       R8 R7 K10 ["warningKey"]
       53 DUPTABLE                         R8 K11 [{"pattern", "warningKey"}]
       54 LOADK                            R9 K21 ["httpservice:%w*async"]
       55 SETTABLEKS                       R9 R8 K9 ["pattern"]
       57 LOADK                            R9 K22 ["HttpService"]
       58 SETTABLEKS                       R9 R8 K10 ["warningKey"]
       60 DUPTABLE                         R9 K11 [{"pattern", "warningKey"}]
       61 LOADK                            R10 K23 ["datastoreservice"]
       62 SETTABLEKS                       R10 R9 K9 ["pattern"]
       64 LOADK                            R10 K24 ["DataStoreService"]
       65 SETTABLEKS                       R10 R9 K10 ["warningKey"]
       67 DUPTABLE                         R10 K11 [{"pattern", "warningKey"}]
       68 LOADK                            R11 K25 ["memorystoreservice"]
       69 SETTABLEKS                       R11 R10 K9 ["pattern"]
       71 LOADK                            R11 K26 ["MemoryStoreService"]
       72 SETTABLEKS                       R11 R10 K10 ["warningKey"]
       74 DUPTABLE                         R11 K11 [{"pattern", "warningKey"}]
       75 LOADK                            R12 K27 ["messagingservice"]
       76 SETTABLEKS                       R12 R11 K9 ["pattern"]
       78 LOADK                            R12 K28 ["MessagingService"]
       79 SETTABLEKS                       R12 R11 K10 ["warningKey"]
       81 DUPTABLE                         R12 K11 [{"pattern", "warningKey"}]
       82 LOADK                            R13 K29 ["analyticsservice"]
       83 SETTABLEKS                       R13 R12 K9 ["pattern"]
       85 LOADK                            R13 K30 ["AnalyticsService"]
       86 SETTABLEKS                       R13 R12 K10 ["warningKey"]
       88 SETLIST                          R2 R3 10 [1]
       90 DUPCLOSURE                       R3 K31 [PROTO_0]
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R1
       93 RETURN                           R3 1
