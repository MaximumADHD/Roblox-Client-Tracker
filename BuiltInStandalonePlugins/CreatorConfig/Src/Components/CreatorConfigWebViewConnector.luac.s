PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CreatorConfigWVUrl"]
        3 NAMECALL                         R0 R0 K3 ["GetFastString"]
        5 CALL                             R0 2 1
        6 JUMPIFEQKS                       R0 K4 [""] ; [+3]
        8 MOVE                             R1 R0
        9 JUMP                             ; [+8]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K5 ["BaseUrl"]
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
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Plugin"]
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
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R6 R7 K8 ["BaseUrl"]
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
       43 GETTABLEKS                       R2 R0 K0 ["props"]
       45 GETTABLEKS                       R1 R2 K1 ["Plugin"]
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
       69 GETUPVAL                         R8 1
       70 GETTABLEKS                       R7 R8 K8 ["BaseUrl"]
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
      109 GETUPVAL                         R8 1
      110 GETTABLEKS                       R7 R8 K8 ["BaseUrl"]
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

PROTO_3:
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
       17 CALL                             R1 3 1
       18 SETTABLEKS                       R1 R0 K8 ["idsUpdatedConnection"]
       20 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R0 K1 ["state"]
        4 GETTABLEKS                       R2 R3 K2 ["configUrl"]
        6 JUMPIFNOT                        R2 ; [+8]
        7 GETUPVAL                         R2 0
        8 JUMPIFNOT                        R2 ; [+8]
        9 GETTABLEKS                       R3 R0 K1 ["state"]
       11 GETTABLEKS                       R2 R3 K2 ["configUrl"]
       13 JUMPIFNOTEQKS                    R2 K3 [""] ; [+3]
       15 LOADNIL                          R2
       16 RETURN                           R2 1
       17 GETTABLEKS                       R2 R1 K4 ["Plugin"]
       19 LOADK                            R4 K5 ["CreatorConfigManager"]
       20 NAMECALL                         R2 R2 K6 ["GetPluginComponent"]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K7 ["createElement"]
       26 GETUPVAL                         R4 2
       27 DUPTABLE                         R5 K16 [{"Plugin", "PluginManagerComponent", "WebViewManagerContext", "Url", "analyticsContext", "offsetHeight", "initAutoRetryMaxAttempts", "retryTitle", "retryButtonText"}]
       28 GETTABLEKS                       R6 R1 K4 ["Plugin"]
       30 SETTABLEKS                       R6 R5 K4 ["Plugin"]
       32 SETTABLEKS                       R2 R5 K8 ["PluginManagerComponent"]
       34 GETTABLEKS                       R6 R1 K9 ["WebViewManagerContext"]
       36 SETTABLEKS                       R6 R5 K9 ["WebViewManagerContext"]
       38 GETTABLEKS                       R7 R0 K1 ["state"]
       40 GETTABLEKS                       R6 R7 K2 ["configUrl"]
       42 SETTABLEKS                       R6 R5 K10 ["Url"]
       44 LOADK                            R6 K17 ["creatorConfig"]
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
       62 CALL                             R3 2 -1
       63 RETURN                           R3 -1

PROTO_5:
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
       38 GETIMPORT                        R7 K18 [game]
       40 LOADK                            R9 K19 ["ContentProvider"]
       41 NAMECALL                         R7 R7 K20 ["GetService"]
       43 CALL                             R7 2 1
       44 GETIMPORT                        R8 K6 [require]
       46 GETTABLEKS                       R11 R0 K21 ["Bin"]
       48 GETTABLEKS                       R10 R11 K22 ["Common"]
       50 GETTABLEKS                       R9 R10 K23 ["defineLuaFlags"]
       52 CALL                             R8 1 1
       53 GETTABLEKS                       R9 R8 K24 ["getFFlagFixCreatorConfigUrls"]
       55 CALL                             R9 0 1
       56 DUPCLOSURE                       R10 K25 [PROTO_0]
       57 CAPTURE                          VAL R7
       58 DUPCLOSURE                       R11 K26 [PROTO_1]
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R7
       61 SETTABLEKS                       R11 R6 K27 ["getConfigUrl"]
       63 DUPCLOSURE                       R11 K28 [PROTO_3]
       64 SETTABLEKS                       R11 R6 K29 ["init"]
       66 DUPCLOSURE                       R11 K30 [PROTO_4]
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R5
       71 SETTABLEKS                       R11 R6 K31 ["render"]
       73 JUMPIFNOT                        R9 ; [+3]
       74 DUPCLOSURE                       R11 K32 [PROTO_5]
       75 SETTABLEKS                       R11 R6 K33 ["willUnmount"]
       77 RETURN                           R6 1
