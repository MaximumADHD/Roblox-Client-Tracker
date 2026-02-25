PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Plugin"]
        4 JUMPIF                           R1 ; [+2]
        5 LOADK                            R1 K2 ["https://create.roblox.com/dashboard/analytics/studio-configs"]
        6 RETURN                           R1 1
        7 GETTABLEKS                       R2 R0 K0 ["props"]
        9 GETTABLEKS                       R1 R2 K1 ["Plugin"]
       11 LOADK                            R3 K3 ["universeid"]
       12 NAMECALL                         R1 R1 K4 ["GetItem"]
       14 CALL                             R1 2 1
       15 JUMPIFNOT                        R1 ; [+3]
       16 LOADN                            R2 0
       17 JUMPIFNOTLE                      R1 R2 ; [+3]
       19 LOADK                            R2 K2 ["https://create.roblox.com/dashboard/analytics/studio-configs"]
       20 RETURN                           R2 1
       21 LOADK                            R3 K5 ["https://create.roblox.com/dashboard/creations/experiences/"]
       22 MOVE                             R4 R1
       23 LOADK                            R5 K6 ["/configs/studio"]
       24 CONCAT                           R2 R3 R5
       25 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getConfigUrl"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+16]
        5 GETUPVAL                         R1 0
        6 JUMPIFNOT                        R1 ; [+14]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["state"]
       10 GETTABLEKS                       R1 R2 K2 ["configUrl"]
       12 JUMPIFEQ                         R0 R1 ; [+8]
       14 GETUPVAL                         R1 0
       15 DUPTABLE                         R3 K3 [{"configUrl"}]
       16 SETTABLEKS                       R0 R3 K2 ["configUrl"]
       18 NAMECALL                         R1 R1 K4 ["setState"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"configUrl"}]
        1 NAMECALL                         R2 R0 K2 ["getConfigUrl"]
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["configUrl"]
        6 SETTABLEKS                       R1 R0 K3 ["state"]
        8 GETTABLEKS                       R2 R0 K4 ["props"]
       10 GETTABLEKS                       R1 R2 K5 ["Plugin"]
       12 LOADK                            R3 K6 ["idsupdated"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 NAMECALL                         R1 R1 K7 ["OnInvoke"]
       17 CALL                             R1 3 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R0 K1 ["state"]
        4 GETTABLEKS                       R2 R3 K2 ["configUrl"]
        6 JUMPIF                           R2 ; [+2]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R1 K3 ["Plugin"]
       11 LOADK                            R4 K4 ["CreatorConfigManager"]
       12 NAMECALL                         R2 R2 K5 ["GetPluginComponent"]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K6 ["createElement"]
       18 GETUPVAL                         R4 1
       19 DUPTABLE                         R5 K15 [{"Plugin", "PluginManagerComponent", "WebViewManagerContext", "Url", "analyticsContext", "offsetHeight", "initAutoRetryMaxAttempts", "retryTitle", "retryButtonText"}]
       20 GETTABLEKS                       R6 R1 K3 ["Plugin"]
       22 SETTABLEKS                       R6 R5 K3 ["Plugin"]
       24 SETTABLEKS                       R2 R5 K7 ["PluginManagerComponent"]
       26 GETTABLEKS                       R6 R1 K8 ["WebViewManagerContext"]
       28 SETTABLEKS                       R6 R5 K8 ["WebViewManagerContext"]
       30 GETTABLEKS                       R7 R0 K1 ["state"]
       32 GETTABLEKS                       R6 R7 K2 ["configUrl"]
       34 SETTABLEKS                       R6 R5 K9 ["Url"]
       36 LOADK                            R6 K16 ["creatorConfig"]
       37 SETTABLEKS                       R6 R5 K10 ["analyticsContext"]
       39 LOADN                            R6 0
       40 SETTABLEKS                       R6 R5 K11 ["offsetHeight"]
       42 GETUPVAL                         R6 2
       43 CALL                             R6 0 1
       44 SETTABLEKS                       R6 R5 K12 ["initAutoRetryMaxAttempts"]
       46 GETTABLEKS                       R6 R1 K13 ["retryTitle"]
       48 SETTABLEKS                       R6 R5 K13 ["retryTitle"]
       50 GETTABLEKS                       R6 R1 K14 ["retryButtonText"]
       52 SETTABLEKS                       R6 R5 K14 ["retryButtonText"]
       54 CALL                             R3 2 -1
       55 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CreatorConfig"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["WebView"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["WebViewPane"]
       21 GETIMPORT                        R6 K6 [require]
       23 GETTABLEKS                       R9 R0 K10 ["Src"]
       25 GETTABLEKS                       R8 R9 K11 ["Util"]
       27 GETTABLEKS                       R7 R8 K12 ["ConfigWebViewInitAutoRetry"]
       29 CALL                             R6 1 1
       30 GETTABLEKS                       R5 R6 K13 ["getIntMaxAttempts"]
       32 GETTABLEKS                       R6 R2 K14 ["PureComponent"]
       34 LOADK                            R8 K15 ["CreatorConfigWebViewConnector"]
       35 NAMECALL                         R6 R6 K16 ["extend"]
       37 CALL                             R6 2 1
       38 DUPCLOSURE                       R7 K17 [PROTO_0]
       39 SETTABLEKS                       R7 R6 K18 ["getConfigUrl"]
       41 DUPCLOSURE                       R7 K19 [PROTO_2]
       42 SETTABLEKS                       R7 R6 K20 ["init"]
       44 DUPCLOSURE                       R7 K21 [PROTO_3]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 SETTABLEKS                       R7 R6 K22 ["render"]
       50 RETURN                           R6 1
