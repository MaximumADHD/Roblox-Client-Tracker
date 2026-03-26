PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["state"]
        5 GETTABLEKS                       R2 R3 K2 ["hasValidSize"]
        7 JUMPIF                           R2 ; [+63]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K3 ["prevSize"]
       11 JUMPIFEQ                         R2 R1 ; [+59]
       13 GETTABLEKS                       R2 R1 K4 ["X"]
       15 LOADN                            R3 0
       16 JUMPIFNOTLT                      R3 R2 ; [+14]
       18 GETTABLEKS                       R2 R1 K5 ["Y"]
       20 LOADN                            R3 0
       21 JUMPIFNOTLT                      R3 R2 ; [+9]
       23 GETUPVAL                         R2 0
       24 DUPTABLE                         R4 K6 [{"hasValidSize"}]
       25 LOADB                            R5 1
       26 SETTABLEKS                       R5 R4 K2 ["hasValidSize"]
       28 NAMECALL                         R2 R2 K7 ["setState"]
       30 CALL                             R2 2 0
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K3 ["prevSize"]
       34 JUMPIFNOT                        R3 ; [+6]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R3 R4 K3 ["prevSize"]
       38 GETTABLEKS                       R2 R3 K4 ["X"]
       40 JUMP                             ; [+1]
       41 LOADN                            R2 0
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R4 R5 K3 ["prevSize"]
       45 JUMPIFNOT                        R4 ; [+6]
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R4 R5 K3 ["prevSize"]
       49 GETTABLEKS                       R3 R4 K5 ["Y"]
       51 JUMP                             ; [+1]
       52 LOADN                            R3 0
       53 GETUPVAL                         R5 1
       54 GETTABLEKS                       R4 R5 K8 ["onWebViewInitialSizing"]
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R6 R7 K9 ["props"]
       59 GETTABLEKS                       R5 R6 K10 ["analyticsContext"]
       61 MOVE                             R6 R2
       62 MOVE                             R7 R3
       63 GETTABLEKS                       R8 R1 K4 ["X"]
       65 GETTABLEKS                       R9 R1 K5 ["Y"]
       67 CALL                             R4 5 0
       68 GETUPVAL                         R4 0
       69 SETTABLEKS                       R1 R4 K3 ["prevSize"]
       71 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["webViewLoadingStatus"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["WebViewLoadingStatus"]
        8 GETTABLEKS                       R1 R2 K3 ["FAILED"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K0 ["state"]
       16 GETTABLEKS                       R0 R1 K4 ["webViewReloading"]
       18 JUMPIFNOT                        R0 ; [+25]
       19 GETUPVAL                         R0 0
       20 DUPTABLE                         R2 K7 [{"webViewError", "webViewReloading", "webViewRetryAttempt"}]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R3 R4 K8 ["None"]
       24 SETTABLEKS                       R3 R2 K5 ["webViewError"]
       26 LOADB                            R3 0
       27 SETTABLEKS                       R3 R2 K4 ["webViewReloading"]
       29 LOADN                            R3 0
       30 SETTABLEKS                       R3 R2 K6 ["webViewRetryAttempt"]
       32 NAMECALL                         R0 R0 K9 ["setState"]
       34 CALL                             R0 2 0
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R1 R2 K10 ["props"]
       38 GETTABLEKS                       R0 R1 K11 ["WebViewManagerContext"]
       40 NAMECALL                         R0 R0 K12 ["showBrowser"]
       42 CALL                             R0 1 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R1 R2 K0 ["state"]
       47 GETTABLEKS                       R0 R1 K13 ["hasWebViewEverLoaded"]
       49 JUMPIF                           R0 ; [+43]
       50 GETUPVAL                         R0 0
       51 DUPTABLE                         R2 K14 [{"webViewLoadingStatus", "webViewError", "webViewRetryAttempt", "hasWebViewEverLoaded", "webViewReloading"}]
       52 GETUPVAL                         R5 1
       53 GETTABLEKS                       R4 R5 K2 ["WebViewLoadingStatus"]
       55 GETTABLEKS                       R3 R4 K15 ["PASSED"]
       57 SETTABLEKS                       R3 R2 K1 ["webViewLoadingStatus"]
       59 GETUPVAL                         R4 2
       60 GETTABLEKS                       R3 R4 K8 ["None"]
       62 SETTABLEKS                       R3 R2 K5 ["webViewError"]
       64 LOADN                            R3 0
       65 SETTABLEKS                       R3 R2 K6 ["webViewRetryAttempt"]
       67 LOADB                            R3 1
       68 SETTABLEKS                       R3 R2 K13 ["hasWebViewEverLoaded"]
       70 LOADB                            R3 0
       71 SETTABLEKS                       R3 R2 K4 ["webViewReloading"]
       73 NAMECALL                         R0 R0 K9 ["setState"]
       75 CALL                             R0 2 0
       76 GETUPVAL                         R1 3
       77 GETTABLEKS                       R0 R1 K16 ["onWebViewInit"]
       79 GETUPVAL                         R3 0
       80 GETTABLEKS                       R2 R3 K10 ["props"]
       82 GETTABLEKS                       R1 R2 K17 ["analyticsContext"]
       84 CALL                             R0 1 0
       85 GETUPVAL                         R2 0
       86 GETTABLEKS                       R1 R2 K10 ["props"]
       88 GETTABLEKS                       R0 R1 K11 ["WebViewManagerContext"]
       90 NAMECALL                         R0 R0 K12 ["showBrowser"]
       92 CALL                             R0 1 0
       93 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["WebViewManagerContext"]
        5 NAMECALL                         R1 R1 K2 ["hideBrowser"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 DUPTABLE                         R3 K4 [{"webViewError"}]
       10 SETTABLEKS                       R0 R3 K3 ["webViewError"]
       12 NAMECALL                         R1 R1 K5 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K6 [{"hasValidSize", "webViewError", "webViewLoadingStatus", "webViewRetryAttempt", "hasWebViewEverLoaded", "webViewReloading"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["hasValidSize"]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["webViewError"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K7 ["WebViewLoadingStatus"]
       10 GETTABLEKS                       R2 R3 K8 ["WAITING"]
       12 SETTABLEKS                       R2 R1 K2 ["webViewLoadingStatus"]
       14 LOADN                            R2 0
       15 SETTABLEKS                       R2 R1 K3 ["webViewRetryAttempt"]
       17 LOADB                            R2 0
       18 SETTABLEKS                       R2 R1 K4 ["hasWebViewEverLoaded"]
       20 LOADB                            R2 0
       21 SETTABLEKS                       R2 R1 K5 ["webViewReloading"]
       23 SETTABLEKS                       R1 R0 K9 ["state"]
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K10 ["prevSize"]
       28 NEWCLOSURE                       R1 P0
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U1
       31 SETTABLEKS                       R1 R0 K11 ["onAbsoluteSizeChange"]
       33 NEWCLOSURE                       R1 P1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U1
       38 SETTABLEKS                       R1 R0 K12 ["handledWebViewLoaded"]
       40 NEWCLOSURE                       R1 P2
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R1 R0 K13 ["handledWebViewError"]
       44 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K1 ["state"]
        3 GETTABLEKS                       R1 R2 K2 ["webViewRetryAttempt"]
        5 ADDK                             R0 R1 K0 [1]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K3 ["onWebViewRetryClicked"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K4 ["analyticsContext"]
       12 MOVE                             R3 R0
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R4 R5 K5 ["initAutoRetryMaxAttempts"]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K1 ["state"]
       19 GETTABLEKS                       R5 R6 K6 ["webViewError"]
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R7 R8 K1 ["state"]
       24 GETTABLEKS                       R6 R7 K7 ["webViewLoadingStatus"]
       26 CALL                             R1 5 0
       27 GETUPVAL                         R1 0
       28 DUPTABLE                         R3 K9 [{"webViewError", "webViewReloading", "webViewRetryAttempt"}]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R4 R5 K10 ["None"]
       32 SETTABLEKS                       R4 R3 K6 ["webViewError"]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R6 R7 K1 ["state"]
       37 GETTABLEKS                       R5 R6 K7 ["webViewLoadingStatus"]
       39 GETUPVAL                         R8 4
       40 GETTABLEKS                       R7 R8 K11 ["WebViewLoadingStatus"]
       42 GETTABLEKS                       R6 R7 K12 ["PASSED"]
       44 JUMPIFEQ                         R5 R6 ; [+2]
       46 LOADB                            R4 0 +1
       47 LOADB                            R4 1
       48 SETTABLEKS                       R4 R3 K8 ["webViewReloading"]
       50 SETTABLEKS                       R0 R3 K2 ["webViewRetryAttempt"]
       52 NAMECALL                         R1 R1 K13 ["setState"]
       54 CALL                             R1 2 0
       55 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 LOADNIL                          R2
        3 GETTABLEKS                       R4 R0 K1 ["state"]
        5 GETTABLEKS                       R3 R4 K2 ["webViewError"]
        7 JUMPIFNOT                        R3 ; [+34]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K3 ["createElement"]
       11 GETUPVAL                         R4 1
       12 DUPTABLE                         R5 K9 [{"reason", "OnRetryClicked", "title", "buttonText", "analyticsContext"}]
       13 GETTABLEKS                       R7 R0 K1 ["state"]
       15 GETTABLEKS                       R6 R7 K2 ["webViewError"]
       17 SETTABLEKS                       R6 R5 K4 ["reason"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          UPVAL U3
       25 SETTABLEKS                       R6 R5 K5 ["OnRetryClicked"]
       27 GETTABLEKS                       R6 R1 K10 ["retryTitle"]
       29 SETTABLEKS                       R6 R5 K6 ["title"]
       31 GETTABLEKS                       R6 R1 K11 ["retryButtonText"]
       33 SETTABLEKS                       R6 R5 K7 ["buttonText"]
       35 GETTABLEKS                       R6 R1 K8 ["analyticsContext"]
       37 SETTABLEKS                       R6 R5 K8 ["analyticsContext"]
       39 CALL                             R3 2 1
       40 MOVE                             R2 R3
       41 JUMP                             ; [+59]
       42 GETTABLEKS                       R4 R0 K1 ["state"]
       44 GETTABLEKS                       R3 R4 K12 ["webViewLoadingStatus"]
       46 GETUPVAL                         R6 3
       47 GETTABLEKS                       R5 R6 K13 ["WebViewLoadingStatus"]
       49 GETTABLEKS                       R4 R5 K14 ["WAITING"]
       51 JUMPIFEQ                         R3 R4 ; [+17]
       53 GETTABLEKS                       R4 R0 K1 ["state"]
       55 GETTABLEKS                       R3 R4 K12 ["webViewLoadingStatus"]
       57 GETUPVAL                         R6 3
       58 GETTABLEKS                       R5 R6 K13 ["WebViewLoadingStatus"]
       60 GETTABLEKS                       R4 R5 K15 ["PASSED"]
       62 JUMPIFNOTEQ                      R3 R4 ; [+37]
       64 GETTABLEKS                       R4 R0 K1 ["state"]
       66 GETTABLEKS                       R3 R4 K16 ["webViewReloading"]
       68 JUMPIFNOT                        R3 ; [+31]
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R3 R4 K3 ["createElement"]
       72 GETUPVAL                         R4 4
       73 DUPTABLE                         R5 K20 [{"Size", "AnchorPoint", "Position"}]
       74 GETIMPORT                        R6 K23 [UDim2.new]
       76 LOADN                            R7 0
       77 LOADN                            R8 100
       78 LOADN                            R9 0
       79 LOADN                            R10 100
       80 CALL                             R6 4 1
       81 SETTABLEKS                       R6 R5 K17 ["Size"]
       83 GETIMPORT                        R6 K25 [Vector2.new]
       85 LOADK                            R7 K26 [0.5]
       86 LOADK                            R8 K26 [0.5]
       87 CALL                             R6 2 1
       88 SETTABLEKS                       R6 R5 K18 ["AnchorPoint"]
       90 GETIMPORT                        R6 K28 [UDim2.fromScale]
       92 LOADK                            R7 K26 [0.5]
       93 LOADK                            R8 K26 [0.5]
       94 CALL                             R6 2 1
       95 SETTABLEKS                       R6 R5 K19 ["Position"]
       97 CALL                             R3 2 1
       98 MOVE                             R2 R3
       99 JUMP                             ; [+1]
      100 LOADNIL                          R2
      101 GETUPVAL                         R4 5
      102 GETTABLEKS                       R3 R4 K3 ["createElement"]
      104 GETUPVAL                         R4 6
      105 NEWTABLE                         R5 1 0
      107 GETUPVAL                         R8 5
      108 GETTABLEKS                       R7 R8 K29 ["Change"]
      110 GETTABLEKS                       R6 R7 K30 ["AbsoluteSize"]
      112 GETTABLEKS                       R7 R0 K31 ["onAbsoluteSizeChange"]
      114 SETTABLE                         R7 R5 R6
      115 DUPTABLE                         R6 K34 [{"WebViewConnector", "MainView"}]
      116 GETTABLEKS                       R9 R0 K1 ["state"]
      118 GETTABLEKS                       R8 R9 K35 ["hasValidSize"]
      120 JUMPIFNOT                        R8 ; [+77]
      121 GETUPVAL                         R8 5
      122 GETTABLEKS                       R7 R8 K3 ["createElement"]
      124 GETUPVAL                         R8 7
      125 DUPTABLE                         R9 K47 [{"Plugin", "PluginManagerComponent", "WebViewManagerContext", "Url", "analyticsContext", "offsetHeight", "eventHandlers", "initAutoRetryMaxAttempts", "hasValidSize", "hasWebViewEverLoaded", "webViewLoadingStatus", "webViewError", "manualRetryAttempt", "HandleFailedInitCheck", "HandlePassedInitAndLoadingCheck"}]
      126 GETTABLEKS                       R10 R1 K36 ["Plugin"]
      128 SETTABLEKS                       R10 R9 K36 ["Plugin"]
      130 GETTABLEKS                       R10 R1 K37 ["PluginManagerComponent"]
      132 SETTABLEKS                       R10 R9 K37 ["PluginManagerComponent"]
      134 GETTABLEKS                       R10 R1 K38 ["WebViewManagerContext"]
      136 SETTABLEKS                       R10 R9 K38 ["WebViewManagerContext"]
      138 GETTABLEKS                       R10 R1 K39 ["Url"]
      140 SETTABLEKS                       R10 R9 K39 ["Url"]
      142 GETTABLEKS                       R10 R1 K8 ["analyticsContext"]
      144 SETTABLEKS                       R10 R9 K8 ["analyticsContext"]
      146 GETTABLEKS                       R10 R1 K40 ["offsetHeight"]
      148 SETTABLEKS                       R10 R9 K40 ["offsetHeight"]
      150 GETTABLEKS                       R10 R1 K41 ["eventHandlers"]
      152 SETTABLEKS                       R10 R9 K41 ["eventHandlers"]
      154 GETTABLEKS                       R10 R1 K42 ["initAutoRetryMaxAttempts"]
      156 SETTABLEKS                       R10 R9 K42 ["initAutoRetryMaxAttempts"]
      158 GETTABLEKS                       R11 R0 K1 ["state"]
      160 GETTABLEKS                       R10 R11 K35 ["hasValidSize"]
      162 SETTABLEKS                       R10 R9 K35 ["hasValidSize"]
      164 GETTABLEKS                       R11 R0 K1 ["state"]
      166 GETTABLEKS                       R10 R11 K43 ["hasWebViewEverLoaded"]
      168 SETTABLEKS                       R10 R9 K43 ["hasWebViewEverLoaded"]
      170 GETTABLEKS                       R11 R0 K1 ["state"]
      172 GETTABLEKS                       R10 R11 K12 ["webViewLoadingStatus"]
      174 SETTABLEKS                       R10 R9 K12 ["webViewLoadingStatus"]
      176 GETTABLEKS                       R11 R0 K1 ["state"]
      178 GETTABLEKS                       R10 R11 K2 ["webViewError"]
      180 SETTABLEKS                       R10 R9 K2 ["webViewError"]
      182 GETTABLEKS                       R11 R0 K1 ["state"]
      184 GETTABLEKS                       R10 R11 K48 ["webViewRetryAttempt"]
      186 SETTABLEKS                       R10 R9 K44 ["manualRetryAttempt"]
      188 GETTABLEKS                       R10 R0 K49 ["handledWebViewError"]
      190 SETTABLEKS                       R10 R9 K45 ["HandleFailedInitCheck"]
      192 GETTABLEKS                       R10 R0 K50 ["handledWebViewLoaded"]
      194 SETTABLEKS                       R10 R9 K46 ["HandlePassedInitAndLoadingCheck"]
      196 CALL                             R7 2 1
      197 JUMP                             ; [+1]
      198 LOADNIL                          R7
      199 SETTABLEKS                       R7 R6 K32 ["WebViewConnector"]
      201 SETTABLEKS                       R2 R6 K33 ["MainView"]
      203 CALL                             R3 3 -1
      204 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["WebView"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["Packages"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K8 ["React"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K9 ["Framework"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R6 R4 K10 ["UI"]
       30 GETTABLEKS                       R5 R6 K11 ["Pane"]
       32 GETTABLEKS                       R7 R4 K10 ["UI"]
       34 GETTABLEKS                       R6 R7 K12 ["LoadingIndicator"]
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K13 ["WebViewConnector"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R9 R0 K14 ["Analytics"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K6 [require]
       48 GETTABLEKS                       R10 R0 K15 ["WebViewError"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K6 [require]
       53 GETTABLEKS                       R11 R0 K16 ["WebViewTypes"]
       55 CALL                             R10 1 1
       56 GETTABLEKS                       R11 R2 K17 ["PureComponent"]
       58 LOADK                            R13 K18 ["WebViewPane"]
       59 NAMECALL                         R11 R11 K19 ["extend"]
       61 CALL                             R11 2 1
       62 DUPCLOSURE                       R12 K20 [PROTO_3]
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R2
       66 SETTABLEKS                       R12 R11 K21 ["init"]
       68 DUPCLOSURE                       R12 K22 [PROTO_5]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R7
       77 SETTABLEKS                       R12 R11 K23 ["render"]
       79 RETURN                           R11 1
