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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnCloseRequested"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["OnContentSizeRequested"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"universeId"}]
        1 GETIMPORT                        R2 K3 [game]
        3 GETTABLEKS                       R2 R2 K4 ["GameId"]
        5 SETTABLEKS                       R2 R1 K0 ["universeId"]
        7 SETTABLEKS                       R1 R0 K5 ["state"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K6 ["create"]
       12 DUPTABLE                         R2 K9 [{"onCloseRequested", "onContentSizeRequested"}]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R3 R2 K7 ["onCloseRequested"]
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R3 R2 K8 ["onContentSizeRequested"]
       21 CALL                             R1 1 1
       22 SETTABLEKS                       R1 R0 K10 ["eventHandlers"]
       24 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["gameIdConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["gameIdConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_7:
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
       16 DUPTABLE                         R5 K16 [{["Plugin"], ["PluginManagerComponent"], ["WebViewManagerContext"], ["Url"], ["analyticsContext"], ["offsetHeight"] = 0, ["initAutoRetryMaxAttempts"], ["eventHandlers"], ["retryTitle"], ["retryButtonText"]}]
       17 GETTABLEKS                       R6 R1 K6 ["Plugin"]
       19 SETTABLEKS                       R6 R5 K6 ["Plugin"]
       21 GETTABLEKS                       R6 R1 K6 ["Plugin"]
       23 LOADK                            R8 K17 ["PublishStatusManager"]
       24 NAMECALL                         R6 R6 K18 ["GetPluginComponent"]
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
       42 GETTABLEKS                       R6 R6 K19 ["MessageBusNamespace"]
       44 SETTABLEKS                       R6 R5 K10 ["analyticsContext"]
       46 GETIMPORT                        R6 K21 [game]
       48 LOADK                            R8 K22 ["PublishStatusWebViewInitAutoRetryMaxAttempts"]
       49 NAMECALL                         R6 R6 K23 ["GetFastInt"]
       51 CALL                             R6 2 1
       52 SETTABLEKS                       R6 R5 K12 ["initAutoRetryMaxAttempts"]
       54 GETTABLEKS                       R6 R0 K13 ["eventHandlers"]
       56 SETTABLEKS                       R6 R5 K13 ["eventHandlers"]
       58 GETUPVAL                         R8 3
       59 GETTABLEKS                       R8 R8 K24 ["LocalizationNamespace"]
       61 LOADK                            R9 K25 ["LoadFailed"]
       62 NAMECALL                         R6 R2 K26 ["getText"]
       64 CALL                             R6 3 1
       65 SETTABLEKS                       R6 R5 K14 ["retryTitle"]
       67 GETUPVAL                         R8 3
       68 GETTABLEKS                       R8 R8 K24 ["LocalizationNamespace"]
       70 LOADK                            R9 K27 ["Retry"]
       71 NAMECALL                         R6 R2 K26 ["getText"]
       73 CALL                             R6 3 1
       74 SETTABLEKS                       R6 R5 K15 ["retryButtonText"]
       76 CALL                             R3 2 -1
       77 RETURN                           R3 -1

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
       51 GETIMPORT                        R8 K8 [require]
       53 GETTABLEKS                       R9 R0 K16 ["Src"]
       55 GETTABLEKS                       R9 R9 K17 ["Util"]
       57 GETTABLEKS                       R9 R9 K19 ["PublishStatusWebEventHandlers"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K4 [game]
       62 LOADK                            R11 K20 ["PublishStatusWebViewInitAutoRetryMaxAttempts"]
       63 LOADN                            R12 5
       64 NAMECALL                         R9 R9 K21 ["DefineFastInt"]
       66 CALL                             R9 3 0
       67 GETTABLEKS                       R9 R2 K22 ["PureComponent"]
       69 LOADK                            R11 K23 ["PublishStatusWebView"]
       70 NAMECALL                         R9 R9 K24 ["extend"]
       72 CALL                             R9 2 1
       73 DUPCLOSURE                       R10 K25 [PROTO_0]
       74 CAPTURE                          VAL R1
       75 DUPCLOSURE                       R11 K26 [PROTO_3]
       76 CAPTURE                          VAL R8
       77 SETTABLEKS                       R11 R9 K27 ["init"]
       79 DUPCLOSURE                       R11 K28 [PROTO_5]
       80 SETTABLEKS                       R11 R9 K29 ["didMount"]
       82 DUPCLOSURE                       R11 K30 [PROTO_6]
       83 SETTABLEKS                       R11 R9 K31 ["willUnmount"]
       85 DUPCLOSURE                       R11 K32 [PROTO_7]
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R7
       90 SETTABLEKS                       R11 R9 K33 ["render"]
       92 MOVE                             R11 R5
       93 DUPTABLE                         R12 K35 [{"Localization"}]
       94 GETTABLEKS                       R13 R4 K34 ["Localization"]
       96 SETTABLEKS                       R13 R12 K34 ["Localization"]
       98 CALL                             R11 1 1
       99 MOVE                             R12 R9
      100 CALL                             R11 1 1
      101 MOVE                             R9 R11
      102 RETURN                           R9 1
