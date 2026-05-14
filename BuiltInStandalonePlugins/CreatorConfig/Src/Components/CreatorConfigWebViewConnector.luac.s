PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CreatorConfigWVUrl"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 1
        6 JUMPIFEQKS                       R0 K4 [""] ; [+3]
        8 MOVE                             R1 R0
        9 JUMP                             ; [+8]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K5 ["BaseUrl"]
       13 LOADK                            R3 K6 ["https?://www%."]
       14 LOADK                            R4 K7 ["https://create."]
       15 NAMECALL                         R1 R1 K8 ["gsub"]
       17 CALL                             R1 3 1
       18 LENGTH                           R4 R1
       19 NAMECALL                         R2 R1 K9 ["sub"]
       21 CALL                             R2 2 1
       22 JUMPIFEQKS                       R2 K10 ["/"] ; [+4]
       24 MOVE                             R2 R1
       25 LOADK                            R3 K10 ["/"]
       26 CONCAT                           R1 R2 R3
       27 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        4 JUMPIF                           R1 ; [+38]
        5 GETUPVAL                         R1 0
        6 JUMPIFNOT                        R1 ; [+34]
        7 LOADK                            R2 K2 ["%*dashboard/analytics/studio-configs"]
        8 GETIMPORT                        R5 K4 [game]
       10 LOADK                            R7 K5 ["CreatorConfigWVUrl"]
       11 NAMECALL                         R5 R5 K6 ["GetFastString"]
       13 CALL                             R5 2 1
       14 JUMPIFEQKS                       R5 K7 [""] ; [+3]
       16 MOVE                             R6 R5
       17 JUMP                             ; [+8]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K8 ["BaseUrl"]
       21 LOADK                            R8 K9 ["https?://www%."]
       22 LOADK                            R9 K10 ["https://create."]
       23 NAMECALL                         R6 R6 K11 ["gsub"]
       25 CALL                             R6 3 1
       26 LENGTH                           R9 R6
       27 NAMECALL                         R7 R6 K12 ["sub"]
       29 CALL                             R7 2 1
       30 JUMPIFEQKS                       R7 K13 ["/"] ; [+4]
       32 MOVE                             R7 R6
       33 LOADK                            R8 K13 ["/"]
       34 CONCAT                           R6 R7 R8
       35 MOVE                             R4 R6
       36 NAMECALL                         R2 R2 K14 ["format"]
       38 CALL                             R2 2 1
       39 MOVE                             R1 R2
       40 RETURN                           R1 1
       41 LOADK                            R1 K15 ["https://create.roblox.com/dashboard/analytics/studio-configs"]
       42 RETURN                           R1 1
       43 GETTABLEKS                       R1 R0 K0 ["props"]
       45 GETTABLEKS                       R1 R1 K1 ["Plugin"]
       47 LOADK                            R3 K16 ["universeid"]
       48 NAMECALL                         R1 R1 K17 ["GetItem"]
       50 CALL                             R1 2 1
       51 JUMPIFNOT                        R1 ; [+3]
       52 LOADN                            R2 0
       53 JUMPIFNOTLE                      R1 R2 ; [+42]
       55 GETUPVAL                         R2 0
       56 JUMPIFNOT                        R2 ; [+37]
       57 JUMPIFNOT                        R1 ; [+34]
       58 LOADK                            R3 K2 ["%*dashboard/analytics/studio-configs"]
       59 GETIMPORT                        R6 K4 [game]
       61 LOADK                            R8 K5 ["CreatorConfigWVUrl"]
       62 NAMECALL                         R6 R6 K6 ["GetFastString"]
       64 CALL                             R6 2 1
       65 JUMPIFEQKS                       R6 K7 [""] ; [+3]
       67 MOVE                             R7 R6
       68 JUMP                             ; [+8]
       69 GETUPVAL                         R7 1
       70 GETTABLEKS                       R7 R7 K8 ["BaseUrl"]
       72 LOADK                            R9 K9 ["https?://www%."]
       73 LOADK                            R10 K10 ["https://create."]
       74 NAMECALL                         R7 R7 K11 ["gsub"]
       76 CALL                             R7 3 1
       77 LENGTH                           R10 R7
       78 NAMECALL                         R8 R7 K12 ["sub"]
       80 CALL                             R8 2 1
       81 JUMPIFEQKS                       R8 K13 ["/"] ; [+4]
       83 MOVE                             R8 R7
       84 LOADK                            R9 K13 ["/"]
       85 CONCAT                           R7 R8 R9
       86 MOVE                             R5 R7
       87 NAMECALL                         R3 R3 K14 ["format"]
       89 CALL                             R3 2 1
       90 MOVE                             R2 R3
       91 RETURN                           R2 1
       92 LOADK                            R2 K7 [""]
       93 RETURN                           R2 1
       94 LOADK                            R2 K15 ["https://create.roblox.com/dashboard/analytics/studio-configs"]
       95 RETURN                           R2 1
       96 GETUPVAL                         R2 0
       97 JUMPIFNOT                        R2 ; [+35]
       98 LOADK                            R3 K18 ["%*dashboard/creations/experiences/%*/configs/studio"]
       99 GETIMPORT                        R6 K4 [game]
      101 LOADK                            R8 K5 ["CreatorConfigWVUrl"]
      102 NAMECALL                         R6 R6 K6 ["GetFastString"]
      104 CALL                             R6 2 1
      105 JUMPIFEQKS                       R6 K7 [""] ; [+3]
      107 MOVE                             R7 R6
      108 JUMP                             ; [+8]
      109 GETUPVAL                         R7 1
      110 GETTABLEKS                       R7 R7 K8 ["BaseUrl"]
      112 LOADK                            R9 K9 ["https?://www%."]
      113 LOADK                            R10 K10 ["https://create."]
      114 NAMECALL                         R7 R7 K11 ["gsub"]
      116 CALL                             R7 3 1
      117 LENGTH                           R10 R7
      118 NAMECALL                         R8 R7 K12 ["sub"]
      120 CALL                             R8 2 1
      121 JUMPIFEQKS                       R8 K13 ["/"] ; [+4]
      123 MOVE                             R8 R7
      124 LOADK                            R9 K13 ["/"]
      125 CONCAT                           R7 R8 R9
      126 MOVE                             R5 R7
      127 MOVE                             R6 R1
      128 NAMECALL                         R3 R3 K14 ["format"]
      130 CALL                             R3 3 1
      131 MOVE                             R2 R3
      132 RETURN                           R2 1
      133 LOADK                            R3 K19 ["https://create.roblox.com/dashboard/creations/experiences/"]
      134 MOVE                             R4 R1
      135 LOADK                            R5 K20 ["/configs/studio"]
      136 CONCAT                           R2 R3 R5
      137 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["strategy"]
        2 JUMPIFEQKS                       R2 K1 ["DEPLOYMENT_STRATEGY_GRADUAL_ROLLOUT"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 GETTABLEKS                       R3 R0 K3 ["changeCount"]
        8 ORK                              R2 R3 K2 [1]
        9 GETUPVAL                         R3 0
       10 LOADK                            R5 K4 ["Common"]
       11 JUMPIFNOTEQKN                    R2 K2 [1] ; [+3]
       13 LOADK                            R6 K5 ["ConfigNounSingular"]
       14 JUMP                             ; [+1]
       15 LOADK                            R6 K6 ["ConfigNounPlural"]
       16 NAMECALL                         R3 R3 K7 ["getText"]
       18 CALL                             R3 3 1
       19 GETUPVAL                         R4 1
       20 GETUPVAL                         R6 2
       21 DUPTABLE                         R7 K9 [{"translationStrings"}]
       22 DUPTABLE                         R8 K16 [{"Title", "MessageFieldLabel", "MessageFieldHint", "MessageFieldPlaceholder", "PublishButton", "CancelButton"}]
       23 GETUPVAL                         R9 0
       24 LOADK                            R11 K17 ["PublishDialog"]
       25 JUMPIFNOT                        R1 ; [+2]
       26 LOADK                            R12 K18 ["PublishSlowlyTitle"]
       27 JUMP                             ; [+1]
       28 LOADK                            R12 K19 ["PublishNowTitle"]
       29 DUPTABLE                         R13 K21 [{"changeCount", "noun"}]
       30 FASTCALL1                        TOSTRING R2 ; [+3]
       31 MOVE                             R15 R2
       32 GETIMPORT                        R14 K23 [tostring]
       34 CALL                             R14 1 1
       35 SETTABLEKS                       R14 R13 K3 ["changeCount"]
       37 SETTABLEKS                       R3 R13 K20 ["noun"]
       39 NAMECALL                         R9 R9 K7 ["getText"]
       41 CALL                             R9 4 1
       42 SETTABLEKS                       R9 R8 K10 ["Title"]
       44 GETUPVAL                         R9 0
       45 LOADK                            R11 K17 ["PublishDialog"]
       46 LOADK                            R12 K11 ["MessageFieldLabel"]
       47 NAMECALL                         R9 R9 K7 ["getText"]
       49 CALL                             R9 3 1
       50 SETTABLEKS                       R9 R8 K11 ["MessageFieldLabel"]
       52 GETUPVAL                         R9 0
       53 LOADK                            R11 K17 ["PublishDialog"]
       54 LOADK                            R12 K12 ["MessageFieldHint"]
       55 NAMECALL                         R9 R9 K7 ["getText"]
       57 CALL                             R9 3 1
       58 SETTABLEKS                       R9 R8 K12 ["MessageFieldHint"]
       60 GETUPVAL                         R9 0
       61 LOADK                            R11 K17 ["PublishDialog"]
       62 LOADK                            R12 K13 ["MessageFieldPlaceholder"]
       63 NAMECALL                         R9 R9 K7 ["getText"]
       65 CALL                             R9 3 1
       66 SETTABLEKS                       R9 R8 K13 ["MessageFieldPlaceholder"]
       68 GETUPVAL                         R9 0
       69 LOADK                            R11 K17 ["PublishDialog"]
       70 JUMPIFNOT                        R1 ; [+2]
       71 LOADK                            R12 K24 ["PublishSlowlyButton"]
       72 JUMP                             ; [+1]
       73 LOADK                            R12 K14 ["PublishButton"]
       74 NAMECALL                         R9 R9 K7 ["getText"]
       76 CALL                             R9 3 1
       77 SETTABLEKS                       R9 R8 K14 ["PublishButton"]
       79 GETUPVAL                         R9 0
       80 LOADK                            R11 K17 ["PublishDialog"]
       81 LOADK                            R12 K15 ["CancelButton"]
       82 NAMECALL                         R9 R9 K7 ["getText"]
       84 CALL                             R9 3 1
       85 SETTABLEKS                       R9 R8 K15 ["CancelButton"]
       87 SETTABLEKS                       R8 R7 K8 ["translationStrings"]
       89 NAMECALL                         R4 R4 K25 ["ShowCustomDialogAsync"]
       91 CALL                             R4 3 1
       92 JUMPIFEQKNIL                     R4 ; [+19]
       94 GETUPVAL                         R5 3
       95 GETUPVAL                         R7 4
       96 GETTABLEKS                       R7 R7 K26 ["WebEvents"]
       98 GETTABLEKS                       R7 R7 K27 ["StartPublishWorkflow"]
      100 DUPTABLE                         R8 K29 [{"strategy", "message"}]
      101 GETTABLEKS                       R9 R0 K0 ["strategy"]
      103 SETTABLEKS                       R9 R8 K0 ["strategy"]
      105 GETTABLEKS                       R9 R4 K28 ["message"]
      107 SETTABLEKS                       R9 R8 K28 ["message"]
      109 NAMECALL                         R5 R5 K30 ["fire"]
      111 CALL                             R5 3 0
      112 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K1 [{"translationStrings"}]
        3 DUPTABLE                         R5 K6 [{"Title", "Description", "ConfirmButton", "CancelButton"}]
        4 GETUPVAL                         R6 2
        5 LOADK                            R8 K7 ["CancelPublishDialog"]
        6 LOADK                            R9 K2 ["Title"]
        7 NAMECALL                         R6 R6 K8 ["getText"]
        9 CALL                             R6 3 1
       10 SETTABLEKS                       R6 R5 K2 ["Title"]
       12 GETUPVAL                         R6 2
       13 LOADK                            R8 K7 ["CancelPublishDialog"]
       14 LOADK                            R9 K3 ["Description"]
       15 NAMECALL                         R6 R6 K8 ["getText"]
       17 CALL                             R6 3 1
       18 SETTABLEKS                       R6 R5 K3 ["Description"]
       20 GETUPVAL                         R6 2
       21 LOADK                            R8 K7 ["CancelPublishDialog"]
       22 LOADK                            R9 K4 ["ConfirmButton"]
       23 NAMECALL                         R6 R6 K8 ["getText"]
       25 CALL                             R6 3 1
       26 SETTABLEKS                       R6 R5 K4 ["ConfirmButton"]
       28 GETUPVAL                         R6 2
       29 LOADK                            R8 K7 ["CancelPublishDialog"]
       30 LOADK                            R9 K5 ["CancelButton"]
       31 NAMECALL                         R6 R6 K8 ["getText"]
       33 CALL                             R6 3 1
       34 SETTABLEKS                       R6 R5 K5 ["CancelButton"]
       36 SETTABLEKS                       R5 R4 K0 ["translationStrings"]
       38 NAMECALL                         R1 R1 K9 ["ShowCustomDialogAsync"]
       40 CALL                             R1 3 1
       41 JUMPIFNOT                        R1 ; [+9]
       42 GETUPVAL                         R2 3
       43 GETUPVAL                         R4 4
       44 GETTABLEKS                       R4 R4 K10 ["WebEvents"]
       46 GETTABLEKS                       R4 R4 K11 ["CancelPublishWorkflow"]
       48 NAMECALL                         R2 R2 K12 ["fire"]
       50 CALL                             R2 2 0
       51 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 LOADK                            R4 K2 ["DialogManager"]
        5 NAMECALL                         R2 R2 K3 ["GetPluginComponent"]
        7 CALL                             R2 2 1
        8 GETTABLEKS                       R3 R1 K4 ["WebViewManagerContext"]
       10 GETTABLEKS                       R4 R1 K5 ["Localization"]
       12 NEWTABLE                         R5 2 0
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K6 ["WebEvents"]
       17 GETTABLEKS                       R6 R6 K7 ["OpenPublishModal"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R3
       24 CAPTURE                          UPVAL U0
       25 SETTABLE                         R7 R5 R6
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K6 ["WebEvents"]
       29 GETTABLEKS                       R6 R6 K8 ["CancelPublishModal"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 CAPTURE                          UPVAL U0
       37 SETTABLE                         R7 R5 R6
       38 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getConfigUrl"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+16]
        5 GETUPVAL                         R1 0
        6 JUMPIFNOT                        R1 ; [+14]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["state"]
       10 GETTABLEKS                       R1 R1 K2 ["configUrl"]
       12 JUMPIFEQ                         R0 R1 ; [+8]
       14 GETUPVAL                         R1 0
       15 DUPTABLE                         R3 K3 [{"configUrl"}]
       16 SETTABLEKS                       R0 R3 K2 ["configUrl"]
       18 NAMECALL                         R1 R1 K4 ["setState"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"configUrl"}]
        1 NAMECALL                         R2 R0 K2 ["getConfigUrl"]
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["configUrl"]
        6 SETTABLEKS                       R1 R0 K3 ["state"]
        8 GETTABLEKS                       R1 R0 K4 ["props"]
       10 GETTABLEKS                       R1 R1 K5 ["Plugin"]
       12 LOADK                            R3 K6 ["idsupdated"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 NAMECALL                         R1 R1 K7 ["OnInvoke"]
       17 CALL                             R1 3 1
       18 SETTABLEKS                       R1 R0 K8 ["idsUpdatedConnection"]
       20 GETUPVAL                         R1 0
       21 CALL                             R1 0 1
       22 JUMPIFNOT                        R1 ; [+5]
       23 NAMECALL                         R1 R0 K9 ["getEventHandlers"]
       25 CALL                             R1 1 1
       26 SETTABLEKS                       R1 R0 K10 ["eventHandlers"]
       28 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R2 R2 K2 ["configUrl"]
        6 JUMPIFNOT                        R2 ; [+8]
        7 GETUPVAL                         R2 0
        8 JUMPIFNOT                        R2 ; [+8]
        9 GETTABLEKS                       R2 R0 K1 ["state"]
       11 GETTABLEKS                       R2 R2 K2 ["configUrl"]
       13 JUMPIFNOTEQKS                    R2 K3 [""] ; [+3]
       15 LOADNIL                          R2
       16 RETURN                           R2 1
       17 GETTABLEKS                       R2 R1 K4 ["Plugin"]
       19 LOADK                            R4 K5 ["CreatorConfigManager"]
       20 NAMECALL                         R2 R2 K6 ["GetPluginComponent"]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K7 ["createElement"]
       26 GETUPVAL                         R4 2
       27 DUPTABLE                         R5 K17 [{"Plugin", "PluginManagerComponent", "WebViewManagerContext", "Url", "analyticsContext", "offsetHeight", "initAutoRetryMaxAttempts", "retryTitle", "retryButtonText", "eventHandlers"}]
       28 GETTABLEKS                       R6 R1 K4 ["Plugin"]
       30 SETTABLEKS                       R6 R5 K4 ["Plugin"]
       32 SETTABLEKS                       R2 R5 K8 ["PluginManagerComponent"]
       34 GETTABLEKS                       R6 R1 K9 ["WebViewManagerContext"]
       36 SETTABLEKS                       R6 R5 K9 ["WebViewManagerContext"]
       38 GETTABLEKS                       R6 R0 K1 ["state"]
       40 GETTABLEKS                       R6 R6 K2 ["configUrl"]
       42 SETTABLEKS                       R6 R5 K10 ["Url"]
       44 LOADK                            R6 K18 ["creatorConfig"]
       45 SETTABLEKS                       R6 R5 K11 ["analyticsContext"]
       47 LOADN                            R6 0
       48 SETTABLEKS                       R6 R5 K12 ["offsetHeight"]
       50 GETUPVAL                         R6 3
       51 CALL                             R6 0 1
       52 SETTABLEKS                       R6 R5 K13 ["initAutoRetryMaxAttempts"]
       54 GETTABLEKS                       R6 R1 K14 ["retryTitle"]
       56 SETTABLEKS                       R6 R5 K14 ["retryTitle"]
       58 GETTABLEKS                       R6 R1 K15 ["retryButtonText"]
       60 SETTABLEKS                       R6 R5 K15 ["retryButtonText"]
       62 GETTABLEKS                       R6 R0 K16 ["eventHandlers"]
       64 SETTABLEKS                       R6 R5 K16 ["eventHandlers"]
       66 CALL                             R3 2 -1
       67 RETURN                           R3 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["idsUpdatedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["idsUpdatedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CreatorConfig"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K8 ["Packages"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R2 K9 ["Roact"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R2 K10 ["StudioFoundation"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K5 [require]
       28 GETTABLEKS                       R6 R2 K11 ["WebView"]
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R6 R5 K12 ["WebViewPane"]
       33 GETIMPORT                        R7 K5 [require]
       35 GETTABLEKS                       R8 R0 K6 ["Src"]
       37 GETTABLEKS                       R8 R8 K13 ["Util"]
       39 GETTABLEKS                       R8 R8 K14 ["ConfigWebViewInitAutoRetry"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R7 R7 K15 ["getIntMaxAttempts"]
       44 GETTABLEKS                       R8 R3 K16 ["PureComponent"]
       46 LOADK                            R10 K17 ["CreatorConfigWebViewConnector"]
       47 NAMECALL                         R8 R8 K18 ["extend"]
       49 CALL                             R8 2 1
       50 GETIMPORT                        R9 K20 [game]
       52 LOADK                            R11 K21 ["ContentProvider"]
       53 NAMECALL                         R9 R9 K22 ["GetService"]
       55 CALL                             R9 2 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R0 K23 ["Bin"]
       60 GETTABLEKS                       R11 R11 K24 ["Common"]
       62 GETTABLEKS                       R11 R11 K25 ["defineLuaFlags"]
       64 CALL                             R10 1 1
       65 GETTABLEKS                       R11 R10 K26 ["getFFlagFixCreatorConfigUrls"]
       67 CALL                             R11 0 1
       68 GETTABLEKS                       R12 R10 K27 ["getFFlagCreatorConfigStudioPublishWorkflow"]
       70 GETTABLEKS                       R13 R4 K13 ["Util"]
       72 GETTABLEKS                       R13 R13 K28 ["StudioUri"]
       74 GETTABLEKS                       R14 R13 K29 ["fromWidget"]
       76 LOADK                            R15 K2 ["CreatorConfig"]
       77 LOADK                            R16 K30 ["PublishDialog"]
       78 CALL                             R14 2 1
       79 GETTABLEKS                       R15 R13 K29 ["fromWidget"]
       81 LOADK                            R16 K2 ["CreatorConfig"]
       82 LOADK                            R17 K31 ["CancelPublishDialog"]
       83 CALL                             R15 2 1
       84 DUPCLOSURE                       R16 K32 [PROTO_0]
       85 CAPTURE                          VAL R9
       86 DUPCLOSURE                       R17 K33 [PROTO_1]
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R9
       89 SETTABLEKS                       R17 R8 K34 ["getConfigUrl"]
       91 DUPCLOSURE                       R17 K35 [PROTO_4]
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R14
       94 CAPTURE                          VAL R15
       95 SETTABLEKS                       R17 R8 K36 ["getEventHandlers"]
       97 DUPCLOSURE                       R17 K37 [PROTO_6]
       98 CAPTURE                          VAL R12
       99 SETTABLEKS                       R17 R8 K38 ["init"]
      101 DUPCLOSURE                       R17 K39 [PROTO_7]
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R7
      106 SETTABLEKS                       R17 R8 K40 ["render"]
      108 JUMPIFNOT                        R11 ; [+3]
      109 DUPCLOSURE                       R17 K41 [PROTO_8]
      110 SETTABLEKS                       R17 R8 K42 ["willUnmount"]
      112 RETURN                           R8 1
