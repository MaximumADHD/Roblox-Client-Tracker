PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+33]
        2 GETTABLEKS                       R1 R0 K0 ["Violation"]
        4 JUMPIFNOT                        R1 ; [+30]
        5 GETTABLEKS                       R1 R0 K0 ["Violation"]
        7 GETTABLEKS                       R1 R1 K1 ["Evidence"]
        9 JUMPIFNOT                        R1 ; [+25]
       10 GETTABLEKS                       R1 R0 K0 ["Violation"]
       12 GETTABLEKS                       R1 R1 K1 ["Evidence"]
       14 GETTABLEKS                       R1 R1 K2 ["Elements"]
       16 JUMPIFNOT                        R1 ; [+18]
       17 GETIMPORT                        R1 K4 [ipairs]
       19 GETTABLEKS                       R2 R0 K0 ["Violation"]
       21 GETTABLEKS                       R2 R2 K1 ["Evidence"]
       23 GETTABLEKS                       R2 R2 K2 ["Elements"]
       25 CALL                             R1 1 3
       26 FORGPREP_INEXT                   R1
       27 GETTABLEKS                       R6 R5 K5 ["Url"]
       29 JUMPIFNOT                        R6 ; [+3]
       30 GETTABLEKS                       R6 R5 K5 ["Url"]
       32 RETURN                           R6 1
       33 FORGLOOP                         R1 2 [inext] ; [-7]
       35 LOADNIL                          R1
       36 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["GetSessionId"]
        3 CALL                             R3 1 1
        4 GETUPVAL                         R4 0
        5 NAMECALL                         R4 R4 K1 ["GetClientId"]
        7 CALL                             R4 1 1
        8 GETUPVAL                         R5 1
        9 NAMECALL                         R5 R5 K2 ["GetUserId"]
       11 CALL                             R5 1 1
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R6 R6 K3 ["telemetry"]
       15 MOVE                             R8 R0
       16 LOADNIL                          R9
       17 DUPTABLE                         R10 K9 [{"userId", "studioSid", "clientId", "interventionType", "dialogEvent"}]
       18 SETTABLEKS                       R5 R10 K4 ["userId"]
       20 SETTABLEKS                       R3 R10 K5 ["studioSid"]
       22 SETTABLEKS                       R4 R10 K6 ["clientId"]
       24 SETTABLEKS                       R1 R10 K7 ["interventionType"]
       26 SETTABLEKS                       R2 R10 K8 ["dialogEvent"]
       28 NAMECALL                         R6 R6 K10 ["logRobloxTelemetryEvent"]
       30 CALL                             R6 4 0
       31 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["log"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["state"]
        7 GETTABLEKS                       R2 R2 K2 ["type"]
        9 LOADK                            R3 K3 ["Reactivate"]
       10 CALL                             R0 3 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K4 ["moderationController"]
       14 NAMECALL                         R0 R0 K5 ["ReactivateAsync"]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 0
       18 DUPTABLE                         R2 K7 [{"showDialog"}]
       19 LOADB                            R3 0
       20 SETTABLEKS                       R3 R2 K6 ["showDialog"]
       22 NAMECALL                         R0 R0 K8 ["setState"]
       24 CALL                             R0 2 0
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["log"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["state"]
        7 GETTABLEKS                       R2 R2 K2 ["type"]
        9 LOADK                            R3 K3 ["Logout"]
       10 CALL                             R0 3 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K4 ["moderationController"]
       14 NAMECALL                         R0 R0 K5 ["LogoutAsync"]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 0
       18 DUPTABLE                         R2 K7 [{"showDialog"}]
       19 LOADB                            R3 0
       20 SETTABLEKS                       R3 R2 K6 ["showDialog"]
       22 NAMECALL                         R0 R0 K8 ["setState"]
       24 CALL                             R0 2 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["log"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["state"]
        7 GETTABLEKS                       R2 R2 K2 ["type"]
        9 LOADK                            R3 K3 ["Quit"]
       10 CALL                             R0 3 0
       11 GETUPVAL                         R0 0
       12 DUPTABLE                         R2 K5 [{"showDialog"}]
       13 LOADB                            R3 0
       14 SETTABLEKS                       R3 R2 K4 ["showDialog"]
       16 NAMECALL                         R0 R0 K6 ["setState"]
       18 CALL                             R0 2 0
       19 GETUPVAL                         R0 0
       20 GETTABLEKS                       R0 R0 K7 ["moderationController"]
       22 NAMECALL                         R0 R0 K8 ["QuitAsync"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_5:
        0 GETGLOBAL                        R1 K0 ["getEvidenceUrlFromViolation"]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R3 R0 K1 ["InterventionId"]
        6 JUMPIFEQKNIL                     R3 ; [+3]
        8 LOADB                            R2 1
        9 JUMP                             ; [+1]
       10 LOADB                            R2 0
       11 JUMPIFNOT                        R2 ; [+14]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["state"]
       15 GETTABLEKS                       R3 R3 K3 ["showDialog"]
       17 JUMPIF                           R3 ; [+8]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K4 ["log"]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R5 R0 K5 ["PunishmentType"]
       24 LOADK                            R6 K6 ["ShowDialog"]
       25 CALL                             R3 3 0
       26 GETUPVAL                         R3 0
       27 DUPTABLE                         R5 K12 [{"showDialog", "messageToUser", "reason", "reviewDateTime", "type", "bannedDateTime"}]
       28 SETTABLEKS                       R2 R5 K3 ["showDialog"]
       30 GETTABLEKS                       R6 R0 K13 ["MessageToUser"]
       32 SETTABLEKS                       R6 R5 K7 ["messageToUser"]
       34 GETTABLEKS                       R7 R0 K14 ["BadUtterances"]
       36 JUMPIFEQKNIL                     R7 ; [+24]
       38 GETTABLEKS                       R8 R0 K14 ["BadUtterances"]
       40 GETTABLEN                        R7 R8 1
       41 JUMPIFEQKNIL                     R7 ; [+19]
       43 DUPTABLE                         R6 K18 [{"abuseType", "utteranceText", "url"}]
       44 GETTABLEKS                       R8 R0 K14 ["BadUtterances"]
       46 GETTABLEN                        R7 R8 1
       47 GETTABLEKS                       R7 R7 K19 ["AbuseType"]
       49 SETTABLEKS                       R7 R6 K15 ["abuseType"]
       51 GETTABLEKS                       R8 R0 K14 ["BadUtterances"]
       53 GETTABLEN                        R7 R8 1
       54 GETTABLEKS                       R7 R7 K20 ["UtteranceText"]
       56 SETTABLEKS                       R7 R6 K16 ["utteranceText"]
       58 SETTABLEKS                       R1 R6 K17 ["url"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R6
       62 SETTABLEKS                       R6 R5 K8 ["reason"]
       64 GETTABLEKS                       R6 R0 K21 ["BeginDate"]
       66 SETTABLEKS                       R6 R5 K9 ["reviewDateTime"]
       68 GETTABLEKS                       R6 R0 K5 ["PunishmentType"]
       70 SETTABLEKS                       R6 R5 K10 ["type"]
       72 GETTABLEKS                       R6 R0 K22 ["EndDate"]
       74 SETTABLEKS                       R6 R5 K11 ["bannedDateTime"]
       76 NAMECALL                         R3 R3 K23 ["setState"]
       78 CALL                             R3 2 0
       79 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"showDialog", "showQuitDialog"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showDialog"]
        5 LOADB                            R3 1
        6 SETTABLEKS                       R3 R2 K1 ["showQuitDialog"]
        8 NAMECALL                         R0 R0 K3 ["setState"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"showQuitDialog", "showDialog"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showQuitDialog"]
        5 LOADB                            R3 1
        6 SETTABLEKS                       R3 R2 K1 ["showDialog"]
        8 NAMECALL                         R0 R0 K3 ["setState"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"showDialog"}]
        2 SETTABLEKS                       R0 R3 K0 ["showDialog"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 LOADK                            R4 K1 ["ModerationController"]
        3 NAMECALL                         R2 R2 K2 ["GetPluginComponent"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R0 K3 ["moderationController"]
        8 GETTABLEKS                       R2 R0 K3 ["moderationController"]
       10 NAMECALL                         R2 R2 K4 ["GetModerationInfoAsync"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K5 ["new"]
       16 CALL                             R3 0 1
       17 SETTABLEKS                       R3 R0 K6 ["telemetry"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R3 R0 K7 ["log"]
       25 NEWCLOSURE                       R3 P1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U3
       28 SETTABLEKS                       R3 R0 K8 ["onReactivate"]
       30 NEWCLOSURE                       R3 P2
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U3
       33 SETTABLEKS                       R3 R0 K9 ["onLogout"]
       35 NEWCLOSURE                       R3 P3
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U3
       38 SETTABLEKS                       R3 R0 K10 ["closeStudioInstance"]
       40 GETGLOBAL                        R3 K11 ["getEvidenceUrlFromViolation"]
       42 MOVE                             R4 R2
       43 CALL                             R3 1 1
       44 DUPTABLE                         R4 K19 [{"showDialog", "messageToUser", "reason", "reviewDateTime", "type", "bannedDateTime", "showQuitDialog"}]
       45 GETTABLEKS                       R6 R2 K20 ["InterventionId"]
       47 JUMPIFEQKNIL                     R6 ; [+3]
       49 LOADB                            R5 1
       50 JUMP                             ; [+1]
       51 LOADB                            R5 0
       52 SETTABLEKS                       R5 R4 K12 ["showDialog"]
       54 GETTABLEKS                       R5 R2 K21 ["MessageToUser"]
       56 SETTABLEKS                       R5 R4 K13 ["messageToUser"]
       58 GETTABLEKS                       R6 R2 K22 ["BadUtterances"]
       60 JUMPIFEQKNIL                     R6 ; [+24]
       62 GETTABLEKS                       R7 R2 K22 ["BadUtterances"]
       64 GETTABLEN                        R6 R7 1
       65 JUMPIFEQKNIL                     R6 ; [+19]
       67 DUPTABLE                         R5 K26 [{"abuseType", "utteranceText", "url"}]
       68 GETTABLEKS                       R7 R2 K22 ["BadUtterances"]
       70 GETTABLEN                        R6 R7 1
       71 GETTABLEKS                       R6 R6 K27 ["AbuseType"]
       73 SETTABLEKS                       R6 R5 K23 ["abuseType"]
       75 GETTABLEKS                       R7 R2 K22 ["BadUtterances"]
       77 GETTABLEN                        R6 R7 1
       78 GETTABLEKS                       R6 R6 K28 ["UtteranceText"]
       80 SETTABLEKS                       R6 R5 K24 ["utteranceText"]
       82 SETTABLEKS                       R3 R5 K25 ["url"]
       84 JUMP                             ; [+1]
       85 LOADNIL                          R5
       86 SETTABLEKS                       R5 R4 K14 ["reason"]
       88 GETTABLEKS                       R5 R2 K29 ["BeginDate"]
       90 SETTABLEKS                       R5 R4 K15 ["reviewDateTime"]
       92 GETTABLEKS                       R5 R2 K30 ["PunishmentType"]
       94 SETTABLEKS                       R5 R4 K16 ["type"]
       96 GETTABLEKS                       R5 R2 K31 ["EndDate"]
       98 SETTABLEKS                       R5 R4 K17 ["bannedDateTime"]
      100 LOADB                            R5 0
      101 SETTABLEKS                       R5 R4 K18 ["showQuitDialog"]
      103 SETTABLEKS                       R4 R0 K32 ["state"]
      105 GETTABLEKS                       R4 R0 K32 ["state"]
      107 GETTABLEKS                       R4 R4 K12 ["showDialog"]
      109 JUMPIFNOT                        R4 ; [+9]
      110 GETTABLEKS                       R4 R0 K7 ["log"]
      112 GETUPVAL                         R5 3
      113 GETTABLEKS                       R6 R0 K32 ["state"]
      115 GETTABLEKS                       R6 R6 K16 ["type"]
      117 LOADK                            R7 K33 ["ShowDialog"]
      118 CALL                             R4 3 0
      119 GETTABLEKS                       R4 R0 K3 ["moderationController"]
      121 GETTABLEKS                       R4 R4 K34 ["ShowModerationDialog"]
      123 NEWCLOSURE                       R6 P4
      124 CAPTURE                          VAL R0
      125 CAPTURE                          UPVAL U3
      126 NAMECALL                         R4 R4 K35 ["Connect"]
      128 CALL                             R4 2 1
      129 SETTABLEKS                       R4 R0 K36 ["showModerationDialogConnection"]
      131 NEWCLOSURE                       R4 P5
      132 CAPTURE                          VAL R0
      133 SETTABLEKS                       R4 R0 K37 ["OpenQuitDialog"]
      135 NEWCLOSURE                       R4 P6
      136 CAPTURE                          VAL R0
      137 SETTABLEKS                       R4 R0 K38 ["OpenModerationDialog"]
      139 NEWCLOSURE                       R4 P7
      140 CAPTURE                          VAL R0
      141 SETTABLEKS                       R4 R0 K39 ["onRestore"]
      143 GETUPVAL                         R4 4
      144 GETTABLEKS                       R4 R4 K40 ["Localization"]
      146 GETTABLEKS                       R4 R4 K5 ["new"]
      148 DUPTABLE                         R5 K44 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
      149 GETUPVAL                         R6 5
      150 SETTABLEKS                       R6 R5 K41 ["stringResourceTable"]
      152 GETUPVAL                         R6 6
      153 SETTABLEKS                       R6 R5 K42 ["translationResourceTable"]
      155 LOADK                            R6 K45 ["ModerationDialog"]
      156 SETTABLEKS                       R6 R5 K43 ["pluginName"]
      158 CALL                             R4 1 1
      159 SETTABLEKS                       R4 R0 K46 ["localization"]
      161 GETUPVAL                         R4 4
      162 GETTABLEKS                       R4 R4 K47 ["Analytics"]
      164 GETTABLEKS                       R4 R4 K5 ["new"]
      166 DUPCLOSURE                       R5 K48 [PROTO_9]
      167 NEWTABLE                         R6 0 0
      169 CALL                             R4 2 1
      170 SETTABLEKS                       R4 R0 K49 ["analytics"]
      172 GETUPVAL                         R4 7
      173 GETTABLEKS                       R4 R4 K5 ["new"]
      175 CALL                             R4 0 1
      176 SETTABLEKS                       R4 R0 K50 ["DEPRECATED_stylizer"]
      178 GETUPVAL                         R4 8
      179 GETTABLEKS                       R5 R1 K0 ["Plugin"]
      181 CALL                             R4 1 1
      182 SETTABLEKS                       R4 R0 K51 ["design"]
      184 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["provide"]
        9 NEWTABLE                         R5 0 5
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K4 ["new"]
       14 MOVE                             R7 R3
       15 CALL                             R6 1 1
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K4 ["new"]
       19 NAMECALL                         R8 R3 K5 ["getMouse"]
       21 CALL                             R8 1 -1
       22 CALL                             R7 -1 1
       23 GETTABLEKS                       R8 R0 K6 ["localization"]
       25 GETTABLEKS                       R9 R0 K7 ["analytics"]
       27 GETUPVAL                         R10 3
       28 GETTABLEKS                       R10 R10 K4 ["new"]
       30 GETTABLEKS                       R11 R0 K8 ["design"]
       32 CALL                             R10 1 -1
       33 SETLIST                          R5 R6 -1 [1]
       35 DUPTABLE                         R6 K12 [{"DialogContainer", "QuitDialogContainer", "StyleLink"}]
       36 GETTABLEKS                       R7 R2 K13 ["showDialog"]
       38 JUMPIFNOT                        R7 ; [+42]
       39 GETUPVAL                         R7 4
       40 GETTABLEKS                       R7 R7 K14 ["createElement"]
       42 GETUPVAL                         R8 5
       43 DUPTABLE                         R9 K24 [{"Reason", "ReviewDateTime", "ModeratorNote", "OnReactivate", "OnLogout", "CloseStudioInstance", "OpenQuitDialog", "Type", "BannedDateTime"}]
       44 GETTABLEKS                       R10 R2 K25 ["reason"]
       46 SETTABLEKS                       R10 R9 K15 ["Reason"]
       48 GETTABLEKS                       R10 R2 K26 ["reviewDateTime"]
       50 SETTABLEKS                       R10 R9 K16 ["ReviewDateTime"]
       52 GETTABLEKS                       R10 R2 K27 ["messageToUser"]
       54 SETTABLEKS                       R10 R9 K17 ["ModeratorNote"]
       56 GETTABLEKS                       R10 R0 K28 ["onReactivate"]
       58 SETTABLEKS                       R10 R9 K18 ["OnReactivate"]
       60 GETTABLEKS                       R10 R0 K29 ["onLogout"]
       62 SETTABLEKS                       R10 R9 K19 ["OnLogout"]
       64 GETTABLEKS                       R10 R0 K30 ["closeStudioInstance"]
       66 SETTABLEKS                       R10 R9 K20 ["CloseStudioInstance"]
       68 GETTABLEKS                       R10 R0 K21 ["OpenQuitDialog"]
       70 SETTABLEKS                       R10 R9 K21 ["OpenQuitDialog"]
       72 GETTABLEKS                       R10 R2 K31 ["type"]
       74 SETTABLEKS                       R10 R9 K22 ["Type"]
       76 GETTABLEKS                       R10 R2 K32 ["bannedDateTime"]
       78 SETTABLEKS                       R10 R9 K23 ["BannedDateTime"]
       80 CALL                             R7 2 1
       81 SETTABLEKS                       R7 R6 K9 ["DialogContainer"]
       83 GETTABLEKS                       R7 R2 K33 ["showQuitDialog"]
       85 JUMPIFNOT                        R7 ; [+14]
       86 GETUPVAL                         R7 4
       87 GETTABLEKS                       R7 R7 K14 ["createElement"]
       89 GETUPVAL                         R8 6
       90 DUPTABLE                         R9 K35 [{"CloseStudioInstance", "OpenModerationDialog"}]
       91 GETTABLEKS                       R10 R0 K30 ["closeStudioInstance"]
       93 SETTABLEKS                       R10 R9 K20 ["CloseStudioInstance"]
       95 GETTABLEKS                       R10 R0 K34 ["OpenModerationDialog"]
       97 SETTABLEKS                       R10 R9 K34 ["OpenModerationDialog"]
       99 CALL                             R7 2 1
      100 SETTABLEKS                       R7 R6 K10 ["QuitDialogContainer"]
      102 GETUPVAL                         R7 4
      103 GETTABLEKS                       R7 R7 K14 ["createElement"]
      105 LOADK                            R8 K11 ["StyleLink"]
      106 DUPTABLE                         R9 K37 [{"StyleSheet"}]
      107 GETTABLEKS                       R10 R0 K8 ["design"]
      109 SETTABLEKS                       R10 R9 K36 ["StyleSheet"]
      111 CALL                             R7 2 1
      112 SETTABLEKS                       R7 R6 K11 ["StyleLink"]
      114 CALL                             R4 2 -1
      115 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModerationDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Plugin"]
       25 GETTABLEKS                       R5 R3 K11 ["Mouse"]
       27 GETTABLEKS                       R6 R3 K12 ["Design"]
       29 GETTABLEKS                       R7 R2 K13 ["Style"]
       31 GETTABLEKS                       R7 R7 K14 ["Themes"]
       33 GETTABLEKS                       R7 R7 K15 ["StudioTheme"]
       35 GETTABLEKS                       R8 R2 K16 ["Styling"]
       37 GETTABLEKS                       R8 R8 K17 ["registerPluginStyles"]
       39 GETTABLEKS                       R9 R0 K18 ["Src"]
       41 GETTABLEKS                       R9 R9 K19 ["Resources"]
       43 GETTABLEKS                       R9 R9 K20 ["Localization"]
       45 GETTABLEKS                       R9 R9 K21 ["SourceStrings"]
       47 GETTABLEKS                       R10 R0 K18 ["Src"]
       49 GETTABLEKS                       R10 R10 K19 ["Resources"]
       51 GETTABLEKS                       R10 R10 K20 ["Localization"]
       53 GETTABLEKS                       R10 R10 K22 ["LocalizedStrings"]
       55 GETIMPORT                        R11 K5 [require]
       57 GETTABLEKS                       R12 R0 K18 ["Src"]
       59 GETTABLEKS                       R12 R12 K23 ["Util"]
       61 GETTABLEKS                       R12 R12 K24 ["Telemetry"]
       63 GETTABLEKS                       R12 R12 K25 ["TelemetryProtocol"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K5 [require]
       68 GETTABLEKS                       R13 R0 K18 ["Src"]
       70 GETTABLEKS                       R13 R13 K23 ["Util"]
       72 GETTABLEKS                       R13 R13 K24 ["Telemetry"]
       74 GETTABLEKS                       R13 R13 K26 ["TelemetryProtocolTypes"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K5 [require]
       79 GETTABLEKS                       R14 R0 K18 ["Src"]
       81 GETTABLEKS                       R14 R14 K23 ["Util"]
       83 GETTABLEKS                       R14 R14 K24 ["Telemetry"]
       85 GETTABLEKS                       R14 R14 K27 ["ModerationUXDialogEvent"]
       87 CALL                             R13 1 1
       88 GETTABLEKS                       R14 R0 K18 ["Src"]
       90 GETTABLEKS                       R14 R14 K28 ["Components"]
       92 GETIMPORT                        R15 K5 [require]
       94 GETTABLEKS                       R16 R14 K29 ["DialogContainer"]
       96 CALL                             R15 1 1
       97 GETIMPORT                        R16 K5 [require]
       99 GETTABLEKS                       R17 R14 K30 ["QuitDialogContainer"]
      101 CALL                             R16 1 1
      102 GETTABLEKS                       R17 R1 K31 ["PureComponent"]
      104 LOADK                            R19 K32 ["MainPlugin"]
      105 NAMECALL                         R17 R17 K33 ["extend"]
      107 CALL                             R17 2 1
      108 GETIMPORT                        R18 K35 [game]
      110 LOADK                            R20 K36 ["StudioService"]
      111 NAMECALL                         R18 R18 K37 ["GetService"]
      113 CALL                             R18 2 1
      114 GETIMPORT                        R19 K35 [game]
      116 LOADK                            R21 K38 ["RbxAnalyticsService"]
      117 NAMECALL                         R19 R19 K37 ["GetService"]
      119 CALL                             R19 2 1
      120 GETIMPORT                        R20 K5 [require]
      122 GETTABLEKS                       R21 R0 K18 ["Src"]
      124 GETTABLEKS                       R21 R21 K39 ["SharedFlags"]
      126 GETTABLEKS                       R21 R21 K40 ["getFFlagModerationDialogImage"]
      128 CALL                             R20 1 1
      129 CALL                             R20 0 1
      130 DUPCLOSURE                       R21 K41 [PROTO_0]
      131 CAPTURE                          VAL R20
      132 SETGLOBAL                        R21 K42 ["getEvidenceUrlFromViolation"]
      134 DUPCLOSURE                       R21 K43 [PROTO_10]
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R19
      137 CAPTURE                          VAL R18
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R8
      144 SETTABLEKS                       R21 R17 K44 ["init"]
      146 DUPCLOSURE                       R21 K45 [PROTO_11]
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R6
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R16
      154 SETTABLEKS                       R21 R17 K46 ["render"]
      156 RETURN                           R17 1
