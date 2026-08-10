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
        9 GETTABLEKS                       R2 R0 K6 ["Resources"]
       11 GETTABLEKS                       R2 R2 K7 ["Localization"]
       13 GETTABLEKS                       R2 R2 K8 ["Translator"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 0 10
       18 DUPTABLE                         R3 K13 [{["pattern"] = ":destroy%(", ["warningKey"] = "Destroy"}]
       19 DUPTABLE                         R4 K16 [{["pattern"] = ":clearallchildren%(", ["warningKey"] = "ClearAllChildren"}]
       20 DUPTABLE                         R5 K19 [{["pattern"] = "workspace%.camera.*=", ["warningKey"] = "Camera"}]
       21 DUPTABLE                         R6 K21 [{["pattern"] = "workspace%.currentcamera.*=", ["warningKey"] = "Camera"}]
       22 DUPTABLE                         R7 K24 [{["pattern"] = "settings", ["warningKey"] = "Settings"}]
       23 DUPTABLE                         R8 K27 [{["pattern"] = "httpservice:%w*async", ["warningKey"] = "HttpService"}]
       24 DUPTABLE                         R9 K30 [{["pattern"] = "datastoreservice", ["warningKey"] = "DataStoreService"}]
       25 DUPTABLE                         R10 K33 [{["pattern"] = "memorystoreservice", ["warningKey"] = "MemoryStoreService"}]
       26 DUPTABLE                         R11 K36 [{["pattern"] = "messagingservice", ["warningKey"] = "MessagingService"}]
       27 DUPTABLE                         R12 K39 [{["pattern"] = "analyticsservice", ["warningKey"] = "AnalyticsService"}]
       28 SETLIST                          R2 R3 10 [1]
       30 DUPCLOSURE                       R3 K40 [PROTO_0]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 RETURN                           R3 1
