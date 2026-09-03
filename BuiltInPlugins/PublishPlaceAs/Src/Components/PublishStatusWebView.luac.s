PROTO_0:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["PublishStatusWVUrl"]
        3 NAMECALL                         R1 R1 K3 ["GetFastString"]
        5 CALL                             R1 2 1
        6 JUMPIFEQKS                       R1 K4 [""] ; [+3]
        8 MOVE                             R2 R1
        9 JUMP                             ; [+8]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K5 ["BaseUrl"]
       13 LOADK                            R4 K6 ["https?://www%."]
       14 LOADK                            R5 K7 ["https://create."]
       15 NAMECALL                         R2 R2 K8 ["gsub"]
       17 CALL                             R2 3 1
       18 LENGTH                           R5 R2
       19 NAMECALL                         R3 R2 K9 ["sub"]
       21 CALL                             R3 2 1
       22 JUMPIFEQKS                       R3 K10 ["/"] ; [+4]
       24 MOVE                             R3 R2
       25 LOADK                            R4 K10 ["/"]
       26 CONCAT                           R2 R3 R4
       27 GETIMPORT                        R3 K13 [string.format]
       29 LOADK                            R4 K14 ["%sdashboard/creations/experiences/%d/publishing/studio"]
       30 MOVE                             R5 R2
       31 MOVE                             R6 R0
       32 CALL                             R3 3 -1
       33 RETURN                           R3 -1

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"universeId"}]
        1 GETIMPORT                        R2 K3 [game]
        3 GETTABLEKS                       R2 R2 K4 ["GameId"]
        5 SETTABLEKS                       R2 R1 K0 ["universeId"]
        7 SETTABLEKS                       R1 R0 K5 ["state"]
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["universeId"]
        5 GETIMPORT                        R1 K3 [game]
        7 GETTABLEKS                       R1 R1 K4 ["GameId"]
        9 JUMPIFEQ                         R0 R1 ; [+12]
       11 GETUPVAL                         R0 0
       12 DUPTABLE                         R2 K5 [{"universeId"}]
       13 GETIMPORT                        R3 K3 [game]
       15 GETTABLEKS                       R3 R3 K4 ["GameId"]
       17 SETTABLEKS                       R3 R2 K1 ["universeId"]
       19 NAMECALL                         R0 R0 K6 ["setState"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["GameId"]
        3 NAMECALL                         R1 R1 K3 ["GetPropertyChangedSignal"]
        5 CALL                             R1 2 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 NAMECALL                         R1 R1 K4 ["Connect"]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K5 ["gameIdConnection"]
       13 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["gameIdConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["gameIdConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R0 K2 ["state"]
        6 GETTABLEKS                       R3 R3 K3 ["universeId"]
        8 JUMPIFNOTEQKN                    R3 K4 [0] ; [+3]
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K5 ["createElement"]
       15 GETUPVAL                         R4 1
       16 DUPTABLE                         R5 K15 [{["Plugin"], ["PluginManagerComponent"], ["WebViewManagerContext"], ["Url"], ["analyticsContext"], ["offsetHeight"] = 0, ["initAutoRetryMaxAttempts"], ["retryTitle"], ["retryButtonText"]}]
       17 GETTABLEKS                       R6 R1 K6 ["Plugin"]
       19 SETTABLEKS                       R6 R5 K6 ["Plugin"]
       21 GETTABLEKS                       R6 R1 K6 ["Plugin"]
       23 LOADK                            R8 K16 ["PublishStatusManager"]
       24 NAMECALL                         R6 R6 K17 ["GetPluginComponent"]
       26 CALL                             R6 2 1
       27 SETTABLEKS                       R6 R5 K7 ["PluginManagerComponent"]
       29 GETTABLEKS                       R6 R1 K8 ["WebViewManagerContext"]
       31 SETTABLEKS                       R6 R5 K8 ["WebViewManagerContext"]
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R7 R0 K2 ["state"]
       36 GETTABLEKS                       R7 R7 K3 ["universeId"]
       38 CALL                             R6 1 1
       39 SETTABLEKS                       R6 R5 K9 ["Url"]
       41 GETUPVAL                         R6 3
       42 GETTABLEKS                       R6 R6 K18 ["MessageBusNamespace"]
       44 SETTABLEKS                       R6 R5 K10 ["analyticsContext"]
       46 GETIMPORT                        R6 K20 [game]
       48 LOADK                            R8 K21 ["PublishStatusWebViewInitAutoRetryMaxAttempts"]
       49 NAMECALL                         R6 R6 K22 ["GetFastInt"]
       51 CALL                             R6 2 1
       52 SETTABLEKS                       R6 R5 K12 ["initAutoRetryMaxAttempts"]
       54 GETUPVAL                         R8 3
       55 GETTABLEKS                       R8 R8 K23 ["LocalizationNamespace"]
       57 LOADK                            R9 K24 ["LoadFailed"]
       58 NAMECALL                         R6 R2 K25 ["getText"]
       60 CALL                             R6 3 1
       61 SETTABLEKS                       R6 R5 K13 ["retryTitle"]
       63 GETUPVAL                         R8 3
       64 GETTABLEKS                       R8 R8 K23 ["LocalizationNamespace"]
       66 LOADK                            R9 K26 ["Retry"]
       67 NAMECALL                         R6 R2 K25 ["getText"]
       69 CALL                             R6 3 1
       70 SETTABLEKS                       R6 R5 K14 ["retryButtonText"]
       72 CALL                             R3 2 -1
       73 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["ContentProvider"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R0 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R0 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["Framework"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       31 GETTABLEKS                       R5 R4 K13 ["withContext"]
       33 GETIMPORT                        R6 K8 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Packages"]
       37 GETTABLEKS                       R7 R7 K14 ["WebView"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R6 R6 K15 ["WebViewPane"]
       42 GETIMPORT                        R7 K8 [require]
       44 GETTABLEKS                       R8 R0 K16 ["Src"]
       46 GETTABLEKS                       R8 R8 K17 ["Util"]
       48 GETTABLEKS                       R8 R8 K18 ["PublishStatusInfo"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K4 [game]
       53 LOADK                            R10 K19 ["PublishStatusWebViewInitAutoRetryMaxAttempts"]
       54 LOADN                            R11 5
       55 NAMECALL                         R8 R8 K20 ["DefineFastInt"]
       57 CALL                             R8 3 0
       58 GETTABLEKS                       R8 R2 K21 ["PureComponent"]
       60 LOADK                            R10 K22 ["PublishStatusWebView"]
       61 NAMECALL                         R8 R8 K23 ["extend"]
       63 CALL                             R8 2 1
       64 DUPCLOSURE                       R9 K24 [PROTO_0]
       65 CAPTURE                          VAL R1
       66 DUPCLOSURE                       R10 K25 [PROTO_1]
       67 SETTABLEKS                       R10 R8 K26 ["init"]
       69 DUPCLOSURE                       R10 K27 [PROTO_3]
       70 SETTABLEKS                       R10 R8 K28 ["didMount"]
       72 DUPCLOSURE                       R10 K29 [PROTO_4]
       73 SETTABLEKS                       R10 R8 K30 ["willUnmount"]
       75 DUPCLOSURE                       R10 K31 [PROTO_5]
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R7
       80 SETTABLEKS                       R10 R8 K32 ["render"]
       82 MOVE                             R10 R5
       83 DUPTABLE                         R11 K34 [{"Localization"}]
       84 GETTABLEKS                       R12 R4 K33 ["Localization"]
       86 SETTABLEKS                       R12 R11 K33 ["Localization"]
       88 CALL                             R10 1 1
       89 MOVE                             R11 R8
       90 CALL                             R10 1 1
       91 MOVE                             R8 R10
       92 RETURN                           R8 1
