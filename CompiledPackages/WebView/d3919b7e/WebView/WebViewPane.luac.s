PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["state"]
        5 GETTABLEKS                       R2 R2 K2 ["hasValidSize"]
        7 JUMPIF                           R2 ; [+60]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["prevSize"]
       11 JUMPIFEQ                         R2 R1 ; [+56]
       13 GETTABLEKS                       R2 R1 K4 ["X"]
       15 LOADN                            R3 0
       16 JUMPIFNOTLT                      R3 R2 ; [+11]
       18 GETTABLEKS                       R2 R1 K5 ["Y"]
       20 LOADN                            R3 0
       21 JUMPIFNOTLT                      R3 R2 ; [+6]
       23 GETUPVAL                         R2 0
       24 DUPTABLE                         R4 K7 [{["hasValidSize"] = True}]
       25 NAMECALL                         R2 R2 K8 ["setState"]
       27 CALL                             R2 2 0
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K3 ["prevSize"]
       31 JUMPIFNOT                        R3 ; [+6]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K3 ["prevSize"]
       35 GETTABLEKS                       R2 R2 K4 ["X"]
       37 JUMP                             ; [+1]
       38 LOADN                            R2 0
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R4 R4 K3 ["prevSize"]
       42 JUMPIFNOT                        R4 ; [+6]
       43 GETUPVAL                         R3 0
       44 GETTABLEKS                       R3 R3 K3 ["prevSize"]
       46 GETTABLEKS                       R3 R3 K5 ["Y"]
       48 JUMP                             ; [+1]
       49 LOADN                            R3 0
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R4 R4 K9 ["onWebViewInitialSizing"]
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R5 R5 K10 ["props"]
       56 GETTABLEKS                       R5 R5 K11 ["analyticsContext"]
       58 MOVE                             R6 R2
       59 MOVE                             R7 R3
       60 GETTABLEKS                       R8 R1 K4 ["X"]
       62 GETTABLEKS                       R9 R1 K5 ["Y"]
       64 CALL                             R4 5 0
       65 GETUPVAL                         R4 0
       66 SETTABLEKS                       R1 R4 K3 ["prevSize"]
       68 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["webViewLoadingStatus"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["WebViewLoadingStatus"]
        8 GETTABLEKS                       R1 R1 K3 ["FAILED"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["state"]
       16 GETTABLEKS                       R0 R0 K4 ["webViewReloading"]
       18 JUMPIFNOT                        R0 ; [+19]
       19 GETUPVAL                         R0 0
       20 DUPTABLE                         R2 K9 [{["webViewError"], ["webViewReloading"] = False, ["webViewRetryAttempt"] = 0}]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K10 ["None"]
       24 SETTABLEKS                       R3 R2 K5 ["webViewError"]
       26 NAMECALL                         R0 R0 K11 ["setState"]
       28 CALL                             R0 2 0
       29 GETUPVAL                         R0 0
       30 GETTABLEKS                       R0 R0 K12 ["props"]
       32 GETTABLEKS                       R0 R0 K13 ["WebViewManagerContext"]
       34 NAMECALL                         R0 R0 K14 ["showBrowser"]
       36 CALL                             R0 1 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R0 0
       39 GETTABLEKS                       R0 R0 K0 ["state"]
       41 GETTABLEKS                       R0 R0 K15 ["hasWebViewEverLoaded"]
       43 JUMPIF                           R0 ; [+34]
       44 GETUPVAL                         R0 0
       45 DUPTABLE                         R2 K17 [{["webViewLoadingStatus"], ["webViewError"], ["webViewRetryAttempt"] = 0, ["hasWebViewEverLoaded"] = True, ["webViewReloading"] = False}]
       46 GETUPVAL                         R3 1
       47 GETTABLEKS                       R3 R3 K2 ["WebViewLoadingStatus"]
       49 GETTABLEKS                       R3 R3 K18 ["PASSED"]
       51 SETTABLEKS                       R3 R2 K1 ["webViewLoadingStatus"]
       53 GETUPVAL                         R3 2
       54 GETTABLEKS                       R3 R3 K10 ["None"]
       56 SETTABLEKS                       R3 R2 K5 ["webViewError"]
       58 NAMECALL                         R0 R0 K11 ["setState"]
       60 CALL                             R0 2 0
       61 GETUPVAL                         R0 3
       62 GETTABLEKS                       R0 R0 K19 ["onWebViewInit"]
       64 GETUPVAL                         R1 0
       65 GETTABLEKS                       R1 R1 K12 ["props"]
       67 GETTABLEKS                       R1 R1 K20 ["analyticsContext"]
       69 CALL                             R0 1 0
       70 GETUPVAL                         R0 0
       71 GETTABLEKS                       R0 R0 K12 ["props"]
       73 GETTABLEKS                       R0 R0 K13 ["WebViewManagerContext"]
       75 NAMECALL                         R0 R0 K14 ["showBrowser"]
       77 CALL                             R0 1 0
       78 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["WebViewManagerContext"]
        5 NAMECALL                         R1 R1 K2 ["hideBrowser"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 DUPTABLE                         R3 K4 [{"webViewError"}]
       10 SETTABLEKS                       R0 R3 K3 ["webViewError"]
       12 NAMECALL                         R1 R1 K5 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldMockLoadFailed"]
        3 CALL                             R1 0 1
        4 DUPTABLE                         R2 K10 [{["hasValidSize"] = False, ["webViewError"], ["webViewLoadingStatus"], ["webViewRetryAttempt"] = 0, ["mockLoadFailed"], ["hasWebViewEverLoaded"] = False, ["webViewReloading"] = False}]
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADK                            R3 K11 ["DEBUG_WEBVIEW_LOAD_FAILED"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R3
        9 SETTABLEKS                       R3 R2 K3 ["webViewError"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K12 ["WebViewLoadingStatus"]
       14 GETTABLEKS                       R3 R3 K13 ["WAITING"]
       16 SETTABLEKS                       R3 R2 K4 ["webViewLoadingStatus"]
       18 SETTABLEKS                       R1 R2 K7 ["mockLoadFailed"]
       20 SETTABLEKS                       R2 R0 K14 ["state"]
       22 LOADNIL                          R2
       23 SETTABLEKS                       R2 R0 K15 ["prevSize"]
       25 NEWCLOSURE                       R2 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U2
       28 SETTABLEKS                       R2 R0 K16 ["onAbsoluteSizeChange"]
       30 NEWCLOSURE                       R2 P1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U2
       35 SETTABLEKS                       R2 R0 K17 ["handledWebViewLoaded"]
       37 NEWCLOSURE                       R2 P2
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R2 R0 K18 ["handledWebViewError"]
       41 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K1 ["state"]
        3 GETTABLEKS                       R1 R1 K2 ["webViewRetryAttempt"]
        5 ADDK                             R0 R1 K0 [1]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K3 ["onWebViewRetryClicked"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K4 ["analyticsContext"]
       12 MOVE                             R3 R0
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K5 ["initAutoRetryMaxAttempts"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K1 ["state"]
       19 GETTABLEKS                       R5 R5 K6 ["webViewError"]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K1 ["state"]
       24 GETTABLEKS                       R6 R6 K7 ["webViewLoadingStatus"]
       26 CALL                             R1 5 0
       27 GETUPVAL                         R1 0
       28 DUPTABLE                         R3 K11 [{["webViewError"], ["webViewReloading"], ["webViewRetryAttempt"], ["mockLoadFailed"] = False}]
       29 GETUPVAL                         R4 3
       30 GETTABLEKS                       R4 R4 K12 ["None"]
       32 SETTABLEKS                       R4 R3 K6 ["webViewError"]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K1 ["state"]
       37 GETTABLEKS                       R5 R5 K7 ["webViewLoadingStatus"]
       39 GETUPVAL                         R6 4
       40 GETTABLEKS                       R6 R6 K13 ["WebViewLoadingStatus"]
       42 GETTABLEKS                       R6 R6 K14 ["PASSED"]
       44 JUMPIFEQ                         R5 R6 ; [+2]
       46 LOADB                            R4 0 +1
       47 LOADB                            R4 1
       48 SETTABLEKS                       R4 R3 K8 ["webViewReloading"]
       50 SETTABLEKS                       R0 R3 K2 ["webViewRetryAttempt"]
       52 NAMECALL                         R1 R1 K15 ["setState"]
       54 CALL                             R1 2 0
       55 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 LOADNIL                          R2
        3 GETTABLEKS                       R3 R0 K1 ["state"]
        5 GETTABLEKS                       R3 R3 K2 ["webViewError"]
        7 JUMPIFNOT                        R3 ; [+52]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["createElement"]
       11 GETUPVAL                         R4 1
       12 DUPTABLE                         R5 K11 [{"reason", "OnRetryClicked", "title", "buttonText", "OnSecondaryActionClicked", "secondaryActionText", "analyticsContext"}]
       13 GETTABLEKS                       R6 R0 K1 ["state"]
       15 GETTABLEKS                       R6 R6 K2 ["webViewError"]
       17 SETTABLEKS                       R6 R5 K4 ["reason"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          UPVAL U3
       25 SETTABLEKS                       R6 R5 K5 ["OnRetryClicked"]
       27 GETTABLEKS                       R6 R1 K12 ["retryTitle"]
       29 SETTABLEKS                       R6 R5 K6 ["title"]
       31 GETTABLEKS                       R6 R1 K13 ["retryButtonText"]
       33 SETTABLEKS                       R6 R5 K7 ["buttonText"]
       35 GETUPVAL                         R7 4
       36 CALL                             R7 0 1
       37 JUMPIFNOT                        R7 ; [+3]
       38 GETTABLEKS                       R6 R1 K14 ["OnErrorSecondaryActionClicked"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R6
       42 SETTABLEKS                       R6 R5 K8 ["OnSecondaryActionClicked"]
       44 GETUPVAL                         R7 4
       45 CALL                             R7 0 1
       46 JUMPIFNOT                        R7 ; [+3]
       47 GETTABLEKS                       R6 R1 K15 ["errorSecondaryActionText"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R6
       51 SETTABLEKS                       R6 R5 K9 ["secondaryActionText"]
       53 GETTABLEKS                       R6 R1 K10 ["analyticsContext"]
       55 SETTABLEKS                       R6 R5 K10 ["analyticsContext"]
       57 CALL                             R3 2 1
       58 MOVE                             R2 R3
       59 JUMP                             ; [+59]
       60 GETTABLEKS                       R3 R0 K1 ["state"]
       62 GETTABLEKS                       R3 R3 K16 ["webViewLoadingStatus"]
       64 GETUPVAL                         R4 3
       65 GETTABLEKS                       R4 R4 K17 ["WebViewLoadingStatus"]
       67 GETTABLEKS                       R4 R4 K18 ["WAITING"]
       69 JUMPIFEQ                         R3 R4 ; [+17]
       71 GETTABLEKS                       R3 R0 K1 ["state"]
       73 GETTABLEKS                       R3 R3 K16 ["webViewLoadingStatus"]
       75 GETUPVAL                         R4 3
       76 GETTABLEKS                       R4 R4 K17 ["WebViewLoadingStatus"]
       78 GETTABLEKS                       R4 R4 K19 ["PASSED"]
       80 JUMPIFNOTEQ                      R3 R4 ; [+37]
       82 GETTABLEKS                       R3 R0 K1 ["state"]
       84 GETTABLEKS                       R3 R3 K20 ["webViewReloading"]
       86 JUMPIFNOT                        R3 ; [+31]
       87 GETUPVAL                         R3 0
       88 GETTABLEKS                       R3 R3 K3 ["createElement"]
       90 GETUPVAL                         R4 5
       91 DUPTABLE                         R5 K24 [{"Size", "AnchorPoint", "Position"}]
       92 GETIMPORT                        R6 K27 [UDim2.new]
       94 LOADN                            R7 0
       95 LOADN                            R8 100
       96 LOADN                            R9 0
       97 LOADN                            R10 100
       98 CALL                             R6 4 1
       99 SETTABLEKS                       R6 R5 K21 ["Size"]
      101 GETIMPORT                        R6 K29 [Vector2.new]
      103 LOADK                            R7 K30 [0.5]
      104 LOADK                            R8 K30 [0.5]
      105 CALL                             R6 2 1
      106 SETTABLEKS                       R6 R5 K22 ["AnchorPoint"]
      108 GETIMPORT                        R6 K32 [UDim2.fromScale]
      110 LOADK                            R7 K30 [0.5]
      111 LOADK                            R8 K30 [0.5]
      112 CALL                             R6 2 1
      113 SETTABLEKS                       R6 R5 K23 ["Position"]
      115 CALL                             R3 2 1
      116 MOVE                             R2 R3
      117 JUMP                             ; [+1]
      118 LOADNIL                          R2
      119 GETUPVAL                         R3 6
      120 GETTABLEKS                       R3 R3 K3 ["createElement"]
      122 GETUPVAL                         R4 7
      123 NEWTABLE                         R5 1 0
      125 GETUPVAL                         R6 6
      126 GETTABLEKS                       R6 R6 K33 ["Change"]
      128 GETTABLEKS                       R6 R6 K34 ["AbsoluteSize"]
      130 GETTABLEKS                       R7 R0 K35 ["onAbsoluteSizeChange"]
      132 SETTABLE                         R7 R5 R6
      133 DUPTABLE                         R6 K38 [{"WebViewConnector", "MainView"}]
      134 GETTABLEKS                       R8 R0 K1 ["state"]
      136 GETTABLEKS                       R8 R8 K39 ["hasValidSize"]
      138 JUMPIFNOT                        R8 ; [+82]
      139 GETTABLEKS                       R8 R0 K1 ["state"]
      141 GETTABLEKS                       R8 R8 K40 ["mockLoadFailed"]
      143 JUMPIF                           R8 ; [+77]
      144 GETUPVAL                         R7 6
      145 GETTABLEKS                       R7 R7 K3 ["createElement"]
      147 GETUPVAL                         R8 8
      148 DUPTABLE                         R9 K52 [{"Plugin", "PluginManagerComponent", "WebViewManagerContext", "Url", "analyticsContext", "offsetHeight", "eventHandlers", "initAutoRetryMaxAttempts", "hasValidSize", "hasWebViewEverLoaded", "webViewLoadingStatus", "webViewError", "manualRetryAttempt", "HandleFailedInitCheck", "HandlePassedInitAndLoadingCheck"}]
      149 GETTABLEKS                       R10 R1 K41 ["Plugin"]
      151 SETTABLEKS                       R10 R9 K41 ["Plugin"]
      153 GETTABLEKS                       R10 R1 K42 ["PluginManagerComponent"]
      155 SETTABLEKS                       R10 R9 K42 ["PluginManagerComponent"]
      157 GETTABLEKS                       R10 R1 K43 ["WebViewManagerContext"]
      159 SETTABLEKS                       R10 R9 K43 ["WebViewManagerContext"]
      161 GETTABLEKS                       R10 R1 K44 ["Url"]
      163 SETTABLEKS                       R10 R9 K44 ["Url"]
      165 GETTABLEKS                       R10 R1 K10 ["analyticsContext"]
      167 SETTABLEKS                       R10 R9 K10 ["analyticsContext"]
      169 GETTABLEKS                       R10 R1 K45 ["offsetHeight"]
      171 SETTABLEKS                       R10 R9 K45 ["offsetHeight"]
      173 GETTABLEKS                       R10 R1 K46 ["eventHandlers"]
      175 SETTABLEKS                       R10 R9 K46 ["eventHandlers"]
      177 GETTABLEKS                       R10 R1 K47 ["initAutoRetryMaxAttempts"]
      179 SETTABLEKS                       R10 R9 K47 ["initAutoRetryMaxAttempts"]
      181 GETTABLEKS                       R10 R0 K1 ["state"]
      183 GETTABLEKS                       R10 R10 K39 ["hasValidSize"]
      185 SETTABLEKS                       R10 R9 K39 ["hasValidSize"]
      187 GETTABLEKS                       R10 R0 K1 ["state"]
      189 GETTABLEKS                       R10 R10 K48 ["hasWebViewEverLoaded"]
      191 SETTABLEKS                       R10 R9 K48 ["hasWebViewEverLoaded"]
      193 GETTABLEKS                       R10 R0 K1 ["state"]
      195 GETTABLEKS                       R10 R10 K16 ["webViewLoadingStatus"]
      197 SETTABLEKS                       R10 R9 K16 ["webViewLoadingStatus"]
      199 GETTABLEKS                       R10 R0 K1 ["state"]
      201 GETTABLEKS                       R10 R10 K2 ["webViewError"]
      203 SETTABLEKS                       R10 R9 K2 ["webViewError"]
      205 GETTABLEKS                       R10 R0 K1 ["state"]
      207 GETTABLEKS                       R10 R10 K53 ["webViewRetryAttempt"]
      209 SETTABLEKS                       R10 R9 K49 ["manualRetryAttempt"]
      211 GETTABLEKS                       R10 R0 K54 ["handledWebViewError"]
      213 SETTABLEKS                       R10 R9 K50 ["HandleFailedInitCheck"]
      215 GETTABLEKS                       R10 R0 K55 ["handledWebViewLoaded"]
      217 SETTABLEKS                       R10 R9 K51 ["HandlePassedInitAndLoadingCheck"]
      219 CALL                             R7 2 1
      220 JUMP                             ; [+1]
      221 LOADNIL                          R7
      222 SETTABLEKS                       R7 R6 K36 ["WebViewConnector"]
      224 SETTABLEKS                       R2 R6 K37 ["MainView"]
      226 CALL                             R3 3 -1
      227 RETURN                           R3 -1

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
       28 GETTABLEKS                       R5 R4 K10 ["UI"]
       30 GETTABLEKS                       R5 R5 K11 ["Pane"]
       32 GETTABLEKS                       R6 R4 K10 ["UI"]
       34 GETTABLEKS                       R6 R6 K12 ["LoadingIndicator"]
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
       56 GETIMPORT                        R11 K6 [require]
       58 GETTABLEKS                       R12 R0 K17 ["Util"]
       60 GETTABLEKS                       R12 R12 K18 ["DebugFlags"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K6 [require]
       65 GETTABLEKS                       R13 R0 K17 ["Util"]
       67 GETTABLEKS                       R13 R13 K19 ["SharedFlags"]
       69 GETTABLEKS                       R13 R13 K20 ["getFFlagWebViewImprovedErrorHandling"]
       71 CALL                             R12 1 1
       72 GETTABLEKS                       R13 R2 K21 ["PureComponent"]
       74 LOADK                            R15 K22 ["WebViewPane"]
       75 NAMECALL                         R13 R13 K23 ["extend"]
       77 CALL                             R13 2 1
       78 DUPCLOSURE                       R14 K24 [PROTO_3]
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R2
       83 SETTABLEKS                       R14 R13 K25 ["init"]
       85 DUPCLOSURE                       R14 K26 [PROTO_5]
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R7
       95 SETTABLEKS                       R14 R13 K27 ["render"]
       97 RETURN                           R13 1
