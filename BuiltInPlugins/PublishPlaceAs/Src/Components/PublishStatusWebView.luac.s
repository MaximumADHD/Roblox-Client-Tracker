PROTO_0:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["PublishStatusWVUrl"]
        3 NAMECALL                         R1 R1 K3 ["GetFastString"]
        5 CALL                             R1 2 1
        6 JUMPIFEQKS                       R1 K4 [""] ; [+14]
        8 LENGTH                           R4 R1
        9 NAMECALL                         R2 R1 K5 ["sub"]
       11 CALL                             R2 2 1
       12 JUMPIFEQKS                       R2 K6 ["/"] ; [+4]
       14 MOVE                             R2 R1
       15 LOADK                            R3 K6 ["/"]
       16 CONCAT                           R1 R2 R3
       17 MOVE                             R3 R1
       18 MOVE                             R4 R0
       19 CONCAT                           R2 R3 R4
       20 RETURN                           R2 1
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K7 ["BuildRobloxUrl"]
       24 LOADK                            R3 K8 ["create"]
       25 LOADK                            R4 K9 ["%s"]
       26 MOVE                             R5 R0
       27 CALL                             R2 3 -1
       28 RETURN                           R2 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["PublishStatusPath"]
        3 NAMECALL                         R1 R1 K3 ["GetFastString"]
        5 CALL                             R1 2 1
        6 LOADK                            R3 K4 ["{universeId}"]
        7 FASTCALL1                        TOSTRING R0 ; [+3]
        8 MOVE                             R5 R0
        9 GETIMPORT                        R4 K6 [tostring]
       11 CALL                             R4 1 1
       12 NAMECALL                         R1 R1 K7 ["gsub"]
       14 CALL                             R1 3 1
       15 GETUPVAL                         R2 0
       16 MOVE                             R3 R1
       17 CALL                             R2 1 -1
       18 RETURN                           R2 -1

PROTO_2:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["PublishStatusFallbackPath"]
        3 NAMECALL                         R1 R1 K3 ["GetFastString"]
        5 CALL                             R1 2 1
        6 LOADK                            R3 K4 ["{universeId}"]
        7 FASTCALL1                        TOSTRING R0 ; [+3]
        8 MOVE                             R5 R0
        9 GETIMPORT                        R4 K6 [tostring]
       11 CALL                             R4 1 1
       12 NAMECALL                         R1 R1 K7 ["gsub"]
       14 CALL                             R1 3 1
       15 GETUPVAL                         R2 0
       16 MOVE                             R3 R1
       17 CALL                             R2 1 -1
       18 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["WebViewManagerContext"]
        5 NAMECALL                         R0 R0 K2 ["isAvailable"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnCloseRequested"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["OnContentSizeRequested"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnStudioActionRequested"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+20]
        4 GETIMPORT                        R2 K1 [pcall]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CALL                             R2 1 2
        9 JUMPIFNOT                        R2 ; [+5]
       10 JUMPIFEQKB                       R3 TRUE ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 JUMP                             ; [+9]
       15 LOADB                            R1 0
       16 GETIMPORT                        R4 K3 [warn]
       18 LOADK                            R5 K4 ["Failed to check WebView support: %*"]
       19 MOVE                             R7 R3
       20 NAMECALL                         R5 R5 K5 ["format"]
       22 CALL                             R5 2 1
       23 CALL                             R4 1 0
       24 DUPTABLE                         R2 K8 [{"universeId", "isWebViewSupported"}]
       25 GETIMPORT                        R3 K10 [game]
       27 GETTABLEKS                       R3 R3 K11 ["GameId"]
       29 SETTABLEKS                       R3 R2 K6 ["universeId"]
       31 SETTABLEKS                       R1 R2 K7 ["isWebViewSupported"]
       33 SETTABLEKS                       R2 R0 K12 ["state"]
       35 GETUPVAL                         R2 1
       36 GETTABLEKS                       R2 R2 K13 ["create"]
       38 DUPTABLE                         R3 K17 [{"onCloseRequested", "onContentSizeRequested", "onStudioActionRequested"}]
       39 NEWCLOSURE                       R4 P1
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R4 R3 K14 ["onCloseRequested"]
       43 NEWCLOSURE                       R4 P2
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R4 R3 K15 ["onContentSizeRequested"]
       47 NEWCLOSURE                       R4 P3
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R4 R3 K16 ["onStudioActionRequested"]
       51 CALL                             R2 1 1
       52 SETTABLEKS                       R2 R0 K18 ["eventHandlers"]
       54 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["gameIdConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["gameIdConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["state"]
        5 GETTABLEKS                       R3 R3 K1 ["universeId"]
        7 CALL                             R2 1 -1
        8 NAMECALL                         R0 R0 K2 ["OpenBrowserWindow"]
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R0 K2 ["state"]
        6 GETTABLEKS                       R3 R3 K3 ["universeId"]
        8 JUMPIFNOTEQKN                    R3 K4 [0] ; [+3]
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 GETTABLEKS                       R4 R0 K2 ["state"]
       14 GETTABLEKS                       R4 R4 K3 ["universeId"]
       16 GETIMPORT                        R5 K6 [game]
       18 LOADK                            R7 K7 ["PublishStatusPath"]
       19 NAMECALL                         R5 R5 K8 ["GetFastString"]
       21 CALL                             R5 2 1
       22 LOADK                            R7 K9 ["{universeId}"]
       23 FASTCALL1                        TOSTRING R4 ; [+3]
       24 MOVE                             R9 R4
       25 GETIMPORT                        R8 K11 [tostring]
       27 CALL                             R8 1 1
       28 NAMECALL                         R5 R5 K12 ["gsub"]
       30 CALL                             R5 3 1
       31 GETIMPORT                        R6 K6 [game]
       33 LOADK                            R8 K13 ["PublishStatusWVUrl"]
       34 NAMECALL                         R6 R6 K8 ["GetFastString"]
       36 CALL                             R6 2 1
       37 JUMPIFEQKS                       R6 K14 [""] ; [+14]
       39 LENGTH                           R9 R6
       40 NAMECALL                         R7 R6 K15 ["sub"]
       42 CALL                             R7 2 1
       43 JUMPIFEQKS                       R7 K16 ["/"] ; [+4]
       45 MOVE                             R7 R6
       46 LOADK                            R8 K16 ["/"]
       47 CONCAT                           R6 R7 R8
       48 MOVE                             R7 R6
       49 MOVE                             R8 R5
       50 CONCAT                           R3 R7 R8
       51 JUMP                             ; [+8]
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R7 R7 K17 ["BuildRobloxUrl"]
       55 LOADK                            R8 K18 ["create"]
       56 LOADK                            R9 K19 ["%s"]
       57 MOVE                             R10 R5
       58 CALL                             R7 3 1
       59 MOVE                             R3 R7
       60 NEWCLOSURE                       R4 P0
       61 CAPTURE                          UPVAL U1
       62 CAPTURE                          UPVAL U2
       63 CAPTURE                          VAL R0
       64 GETUPVAL                         R5 3
       65 CALL                             R5 0 1
       66 JUMPIFNOT                        R5 ; [+35]
       67 GETTABLEKS                       R5 R0 K2 ["state"]
       69 GETTABLEKS                       R5 R5 K20 ["isWebViewSupported"]
       71 JUMPIF                           R5 ; [+30]
       72 GETUPVAL                         R5 4
       73 GETTABLEKS                       R5 R5 K21 ["createElement"]
       75 GETUPVAL                         R6 5
       76 DUPTABLE                         R7 K28 [{["title"], ["OnSecondaryActionClicked"], ["secondaryActionText"], ["analyticsContext"], ["reason"] = "WEBVIEW_UNAVAILABLE"}]
       77 GETUPVAL                         R10 6
       78 GETTABLEKS                       R10 R10 K29 ["LocalizationNamespace"]
       80 LOADK                            R11 K30 ["LoadFailed"]
       81 NAMECALL                         R8 R2 K31 ["getText"]
       83 CALL                             R8 3 1
       84 SETTABLEKS                       R8 R7 K22 ["title"]
       86 SETTABLEKS                       R4 R7 K23 ["OnSecondaryActionClicked"]
       88 LOADK                            R10 K32 ["PublishSuccess"]
       89 LOADK                            R11 K33 ["ViewOnCreatorHub"]
       90 NAMECALL                         R8 R2 K31 ["getText"]
       92 CALL                             R8 3 1
       93 SETTABLEKS                       R8 R7 K24 ["secondaryActionText"]
       95 GETUPVAL                         R8 6
       96 GETTABLEKS                       R8 R8 K34 ["MessageBusNamespace"]
       98 SETTABLEKS                       R8 R7 K25 ["analyticsContext"]
      100 CALL                             R5 2 -1
      101 RETURN                           R5 -1
      102 GETUPVAL                         R5 4
      103 GETTABLEKS                       R5 R5 K21 ["createElement"]
      105 GETUPVAL                         R6 7
      106 DUPTABLE                         R7 K46 [{["Plugin"], ["PluginManagerComponent"], ["WebViewManagerContext"], ["Url"], ["analyticsContext"], ["offsetHeight"] = 0, ["initAutoRetryMaxAttempts"], ["eventHandlers"], ["retryTitle"], ["retryButtonText"], ["OnErrorSecondaryActionClicked"], ["errorSecondaryActionText"]}]
      107 GETTABLEKS                       R8 R1 K35 ["Plugin"]
      109 SETTABLEKS                       R8 R7 K35 ["Plugin"]
      111 GETTABLEKS                       R8 R1 K35 ["Plugin"]
      113 LOADK                            R10 K47 ["PublishStatusManager"]
      114 NAMECALL                         R8 R8 K48 ["GetPluginComponent"]
      116 CALL                             R8 2 1
      117 SETTABLEKS                       R8 R7 K36 ["PluginManagerComponent"]
      119 GETTABLEKS                       R8 R1 K37 ["WebViewManagerContext"]
      121 SETTABLEKS                       R8 R7 K37 ["WebViewManagerContext"]
      123 SETTABLEKS                       R3 R7 K38 ["Url"]
      125 GETUPVAL                         R8 6
      126 GETTABLEKS                       R8 R8 K34 ["MessageBusNamespace"]
      128 SETTABLEKS                       R8 R7 K25 ["analyticsContext"]
      130 GETIMPORT                        R8 K6 [game]
      132 LOADK                            R10 K49 ["PublishStatusWebViewInitAutoRetryMaxAttempts"]
      133 NAMECALL                         R8 R8 K50 ["GetFastInt"]
      135 CALL                             R8 2 1
      136 SETTABLEKS                       R8 R7 K40 ["initAutoRetryMaxAttempts"]
      138 GETTABLEKS                       R8 R0 K41 ["eventHandlers"]
      140 SETTABLEKS                       R8 R7 K41 ["eventHandlers"]
      142 GETUPVAL                         R10 6
      143 GETTABLEKS                       R10 R10 K29 ["LocalizationNamespace"]
      145 LOADK                            R11 K30 ["LoadFailed"]
      146 NAMECALL                         R8 R2 K31 ["getText"]
      148 CALL                             R8 3 1
      149 SETTABLEKS                       R8 R7 K42 ["retryTitle"]
      151 GETUPVAL                         R10 6
      152 GETTABLEKS                       R10 R10 K29 ["LocalizationNamespace"]
      154 LOADK                            R11 K51 ["Retry"]
      155 NAMECALL                         R8 R2 K31 ["getText"]
      157 CALL                             R8 3 1
      158 SETTABLEKS                       R8 R7 K43 ["retryButtonText"]
      160 GETUPVAL                         R9 3
      161 CALL                             R9 0 1
      162 JUMPIFNOT                        R9 ; [+2]
      163 MOVE                             R8 R4
      164 JUMP                             ; [+1]
      165 LOADNIL                          R8
      166 SETTABLEKS                       R8 R7 K44 ["OnErrorSecondaryActionClicked"]
      168 GETUPVAL                         R9 3
      169 CALL                             R9 0 1
      170 JUMPIFNOT                        R9 ; [+6]
      171 LOADK                            R10 K32 ["PublishSuccess"]
      172 LOADK                            R11 K33 ["ViewOnCreatorHub"]
      173 NAMECALL                         R8 R2 K31 ["getText"]
      175 CALL                             R8 3 1
      176 JUMP                             ; [+1]
      177 LOADNIL                          R8
      178 SETTABLEKS                       R8 R7 K45 ["errorSecondaryActionText"]
      180 CALL                             R5 2 -1
      181 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["BrowserService"]
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
       40 GETTABLEKS                       R7 R6 K15 ["WebViewError"]
       42 GETTABLEKS                       R8 R6 K16 ["WebViewPane"]
       44 GETTABLEKS                       R9 R6 K17 ["getFFlagWebViewImprovedErrorHandling"]
       46 GETIMPORT                        R10 K8 [require]
       48 GETTABLEKS                       R11 R0 K18 ["Src"]
       50 GETTABLEKS                       R11 R11 K19 ["Network"]
       52 GETTABLEKS                       R11 R11 K20 ["Http"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K8 [require]
       57 GETTABLEKS                       R12 R0 K18 ["Src"]
       59 GETTABLEKS                       R12 R12 K21 ["Util"]
       61 GETTABLEKS                       R12 R12 K22 ["PublishStatusInfo"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K8 [require]
       66 GETTABLEKS                       R13 R0 K18 ["Src"]
       68 GETTABLEKS                       R13 R13 K21 ["Util"]
       70 GETTABLEKS                       R13 R13 K23 ["PublishStatusWebEventHandlers"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K4 [game]
       75 LOADK                            R15 K24 ["PublishStatusWebViewInitAutoRetryMaxAttempts"]
       76 LOADN                            R16 5
       77 NAMECALL                         R13 R13 K25 ["DefineFastInt"]
       79 CALL                             R13 3 0
       80 GETIMPORT                        R13 K4 [game]
       82 LOADK                            R15 K26 ["PublishStatusFallbackPath"]
       83 LOADK                            R16 K27 ["dashboard/creations/experiences/{universeId}/publishing"]
       84 NAMECALL                         R13 R13 K28 ["DefineFastString"]
       86 CALL                             R13 3 0
       87 GETIMPORT                        R13 K4 [game]
       89 LOADK                            R15 K29 ["PublishStatusPath"]
       90 LOADK                            R16 K30 ["dashboard/creations/experiences/{universeId}/publishing/studio"]
       91 NAMECALL                         R13 R13 K28 ["DefineFastString"]
       93 CALL                             R13 3 0
       94 GETTABLEKS                       R13 R2 K31 ["PureComponent"]
       96 LOADK                            R15 K32 ["PublishStatusWebView"]
       97 NAMECALL                         R13 R13 K33 ["extend"]
       99 CALL                             R13 2 1
      100 DUPCLOSURE                       R14 K34 [PROTO_0]
      101 CAPTURE                          VAL R10
      102 DUPCLOSURE                       R15 K35 [PROTO_1]
      103 CAPTURE                          VAL R14
      104 DUPCLOSURE                       R16 K36 [PROTO_2]
      105 CAPTURE                          VAL R14
      106 DUPCLOSURE                       R17 K37 [PROTO_7]
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R12
      109 SETTABLEKS                       R17 R13 K38 ["init"]
      111 DUPCLOSURE                       R17 K39 [PROTO_9]
      112 SETTABLEKS                       R17 R13 K40 ["didMount"]
      114 DUPCLOSURE                       R17 K41 [PROTO_10]
      115 SETTABLEKS                       R17 R13 K42 ["willUnmount"]
      117 DUPCLOSURE                       R17 K43 [PROTO_12]
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R8
      126 SETTABLEKS                       R17 R13 K44 ["render"]
      128 MOVE                             R17 R5
      129 DUPTABLE                         R18 K46 [{"Localization"}]
      130 GETTABLEKS                       R19 R4 K45 ["Localization"]
      132 SETTABLEKS                       R19 R18 K45 ["Localization"]
      134 CALL                             R17 1 1
      135 MOVE                             R18 R13
      136 CALL                             R17 1 1
      137 MOVE                             R13 R17
      138 RETURN                           R13 1
