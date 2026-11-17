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
       18 DUPTABLE                         R2 K8 [{["showDialog"] = False}]
       19 NAMECALL                         R0 R0 K9 ["setState"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

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
       18 DUPTABLE                         R2 K8 [{["showDialog"] = False}]
       19 NAMECALL                         R0 R0 K9 ["setState"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

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
       12 DUPTABLE                         R2 K6 [{["showDialog"] = False}]
       13 NAMECALL                         R0 R0 K7 ["setState"]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K8 ["moderationController"]
       19 NAMECALL                         R0 R0 K9 ["QuitAsync"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["RestrictionDoesNotExist"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["RestrictionInfo"]
        6 JUMPIFNOT                        R1 ; [+30]
        7 GETTABLEKS                       R2 R1 K2 ["Source"]
        9 JUMPIFNOTEQKN                    R2 K3 [4] ; [+27]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K4 ["state"]
       14 GETTABLEKS                       R2 R2 K5 ["showDialog"]
       16 JUMPIF                           R2 ; [+7]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K6 ["log"]
       20 GETUPVAL                         R3 1
       21 LOADK                            R4 K7 ["Deactivated"]
       22 LOADK                            R5 K8 ["ShowDialog"]
       23 CALL                             R2 3 0
       24 GETUPVAL                         R2 0
       25 DUPTABLE                         R4 K13 [{["showDialog"] = True, ["type"] = "Deactivated", ["moderationStartDateTime"], ["moderationEndDateTime"]}]
       26 GETTABLEKS                       R5 R1 K14 ["StartTime"]
       28 SETTABLEKS                       R5 R4 K11 ["moderationStartDateTime"]
       30 GETTABLEKS                       R5 R1 K15 ["EndDate"]
       32 SETTABLEKS                       R5 R4 K12 ["moderationEndDateTime"]
       34 NAMECALL                         R2 R2 K16 ["setState"]
       36 CALL                             R2 2 0
       37 GETTABLEKS                       R2 R0 K17 ["ModerationInfo"]
       39 JUMPIFNOT                        R2 ; [+92]
       40 GETGLOBAL                        R3 K18 ["getEvidenceUrlFromViolation"]
       42 MOVE                             R4 R2
       43 CALL                             R3 1 1
       44 GETTABLEKS                       R5 R2 K19 ["InterventionId"]
       46 JUMPIFEQKNIL                     R5 ; [+3]
       48 LOADB                            R4 1
       49 JUMP                             ; [+1]
       50 LOADB                            R4 0
       51 JUMPIFNOT                        R4 ; [+14]
       52 GETUPVAL                         R5 0
       53 GETTABLEKS                       R5 R5 K4 ["state"]
       55 GETTABLEKS                       R5 R5 K5 ["showDialog"]
       57 JUMPIF                           R5 ; [+8]
       58 GETUPVAL                         R5 0
       59 GETTABLEKS                       R5 R5 K6 ["log"]
       61 GETUPVAL                         R6 1
       62 GETTABLEKS                       R7 R2 K20 ["PunishmentType"]
       64 LOADK                            R8 K8 ["ShowDialog"]
       65 CALL                             R5 3 0
       66 GETUPVAL                         R5 0
       67 DUPTABLE                         R7 K23 [{"showDialog", "messageToUser", "reason", "moderationStartDateTime", "type", "moderationEndDateTime"}]
       68 SETTABLEKS                       R4 R7 K5 ["showDialog"]
       70 GETTABLEKS                       R8 R2 K24 ["MessageToUser"]
       72 SETTABLEKS                       R8 R7 K21 ["messageToUser"]
       74 GETTABLEKS                       R9 R2 K25 ["BadUtterances"]
       76 JUMPIFEQKNIL                     R9 ; [+24]
       78 GETTABLEKS                       R10 R2 K25 ["BadUtterances"]
       80 GETTABLEN                        R9 R10 1
       81 JUMPIFEQKNIL                     R9 ; [+19]
       83 DUPTABLE                         R8 K29 [{"abuseType", "utteranceText", "url"}]
       84 GETTABLEKS                       R10 R2 K25 ["BadUtterances"]
       86 GETTABLEN                        R9 R10 1
       87 GETTABLEKS                       R9 R9 K30 ["AbuseType"]
       89 SETTABLEKS                       R9 R8 K26 ["abuseType"]
       91 GETTABLEKS                       R10 R2 K25 ["BadUtterances"]
       93 GETTABLEN                        R9 R10 1
       94 GETTABLEKS                       R9 R9 K31 ["UtteranceText"]
       96 SETTABLEKS                       R9 R8 K27 ["utteranceText"]
       98 SETTABLEKS                       R3 R8 K28 ["url"]
      100 JUMP                             ; [+1]
      101 LOADNIL                          R8
      102 SETTABLEKS                       R8 R7 K22 ["reason"]
      104 GETTABLEKS                       R8 R2 K32 ["BeginDate"]
      106 SETTABLEKS                       R8 R7 K11 ["moderationStartDateTime"]
      108 GETUPVAL                         R9 2
      109 JUMPIF                           R9 ; [+11]
      110 GETTABLEKS                       R9 R2 K33 ["Context"]
      112 JUMPIFEQKNIL                     R9 ; [+8]
      114 GETTABLEKS                       R9 R2 K33 ["Context"]
      116 GETTABLEKS                       R9 R9 K34 ["SelfServiceDeactivated"]
      118 JUMPIFNOT                        R9 ; [+2]
      119 LOADK                            R8 K7 ["Deactivated"]
      120 JUMP                             ; [+2]
      121 GETTABLEKS                       R8 R2 K20 ["PunishmentType"]
      123 SETTABLEKS                       R8 R7 K10 ["type"]
      125 GETTABLEKS                       R8 R2 K15 ["EndDate"]
      127 SETTABLEKS                       R8 R7 K12 ["moderationEndDateTime"]
      129 NAMECALL                         R5 R5 K16 ["setState"]
      131 CALL                             R5 2 0
      132 RETURN                           R0 0

PROTO_6:
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
       27 DUPTABLE                         R5 K12 [{"showDialog", "messageToUser", "reason", "moderationStartDateTime", "type", "moderationEndDateTime"}]
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
       66 SETTABLEKS                       R6 R5 K9 ["moderationStartDateTime"]
       68 GETTABLEKS                       R6 R0 K5 ["PunishmentType"]
       70 SETTABLEKS                       R6 R5 K10 ["type"]
       72 GETTABLEKS                       R6 R0 K22 ["EndDate"]
       74 SETTABLEKS                       R6 R5 K11 ["moderationEndDateTime"]
       76 NAMECALL                         R3 R3 K23 ["setState"]
       78 CALL                             R3 2 0
       79 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K4 [{[1] = False, ["showQuitDialog"] = True}]
        2 NAMECALL                         R0 R0 K5 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K4 [{[1] = False, ["showDialog"] = True}]
        2 NAMECALL                         R0 R0 K5 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"showDialog"}]
        2 SETTABLEKS                       R0 R3 K0 ["showDialog"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 LOADK                            R4 K1 ["ModerationController"]
        3 NAMECALL                         R2 R2 K2 ["GetPluginComponent"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R0 K3 ["moderationController"]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 GETUPVAL                         R4 0
       11 JUMPIFNOT                        R4 ; [+7]
       12 GETTABLEKS                       R4 R0 K3 ["moderationController"]
       14 NAMECALL                         R4 R4 K4 ["GetRestrictionInfoAsync"]
       16 CALL                             R4 1 1
       17 MOVE                             R3 R4
       18 JUMP                             ; [+6]
       19 GETTABLEKS                       R4 R0 K3 ["moderationController"]
       21 NAMECALL                         R4 R4 K5 ["GetModerationInfoAsync"]
       23 CALL                             R4 1 1
       24 MOVE                             R2 R4
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K6 ["new"]
       28 CALL                             R4 0 1
       29 SETTABLEKS                       R4 R0 K7 ["telemetry"]
       31 NEWCLOSURE                       R4 P0
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R4 R0 K8 ["log"]
       37 NEWCLOSURE                       R4 P1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U4
       40 SETTABLEKS                       R4 R0 K9 ["onReactivate"]
       42 NEWCLOSURE                       R4 P2
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U4
       45 SETTABLEKS                       R4 R0 K10 ["onLogout"]
       47 NEWCLOSURE                       R4 P3
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U4
       50 SETTABLEKS                       R4 R0 K11 ["closeStudioInstance"]
       52 GETUPVAL                         R4 0
       53 JUMPIFNOT                        R4 ; [+25]
       54 NEWCLOSURE                       R4 P4
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U4
       57 CAPTURE                          UPVAL U5
       58 SETTABLEKS                       R4 R0 K12 ["onShowModerationDialog"]
       60 DUPTABLE                         R4 K16 [{["showDialog"] = False, ["showQuitDialog"] = False}]
       61 SETTABLEKS                       R4 R0 K17 ["state"]
       63 GETTABLEKS                       R4 R0 K12 ["onShowModerationDialog"]
       65 MOVE                             R5 R3
       66 CALL                             R4 1 0
       67 GETTABLEKS                       R4 R0 K3 ["moderationController"]
       69 GETTABLEKS                       R4 R4 K18 ["ShowModerationDialogV2"]
       71 GETTABLEKS                       R6 R0 K12 ["onShowModerationDialog"]
       73 NAMECALL                         R4 R4 K19 ["Connect"]
       75 CALL                             R4 2 1
       76 SETTABLEKS                       R4 R0 K20 ["showModerationDialogConnection"]
       78 JUMP                             ; [+88]
       79 GETGLOBAL                        R4 K21 ["getEvidenceUrlFromViolation"]
       81 MOVE                             R5 R2
       82 CALL                             R4 1 1
       83 DUPTABLE                         R5 K27 [{["showDialog"], ["messageToUser"], ["reason"], ["moderationStartDateTime"], ["type"], ["moderationEndDateTime"], ["showQuitDialog"] = False}]
       84 GETTABLEKS                       R7 R2 K28 ["InterventionId"]
       86 JUMPIFEQKNIL                     R7 ; [+3]
       88 LOADB                            R6 1
       89 JUMP                             ; [+1]
       90 LOADB                            R6 0
       91 SETTABLEKS                       R6 R5 K13 ["showDialog"]
       93 GETTABLEKS                       R6 R2 K29 ["MessageToUser"]
       95 SETTABLEKS                       R6 R5 K22 ["messageToUser"]
       97 GETTABLEKS                       R7 R2 K30 ["BadUtterances"]
       99 JUMPIFEQKNIL                     R7 ; [+24]
      101 GETTABLEKS                       R8 R2 K30 ["BadUtterances"]
      103 GETTABLEN                        R7 R8 1
      104 JUMPIFEQKNIL                     R7 ; [+19]
      106 DUPTABLE                         R6 K34 [{"abuseType", "utteranceText", "url"}]
      107 GETTABLEKS                       R8 R2 K30 ["BadUtterances"]
      109 GETTABLEN                        R7 R8 1
      110 GETTABLEKS                       R7 R7 K35 ["AbuseType"]
      112 SETTABLEKS                       R7 R6 K31 ["abuseType"]
      114 GETTABLEKS                       R8 R2 K30 ["BadUtterances"]
      116 GETTABLEN                        R7 R8 1
      117 GETTABLEKS                       R7 R7 K36 ["UtteranceText"]
      119 SETTABLEKS                       R7 R6 K32 ["utteranceText"]
      121 SETTABLEKS                       R4 R6 K33 ["url"]
      123 JUMP                             ; [+1]
      124 LOADNIL                          R6
      125 SETTABLEKS                       R6 R5 K23 ["reason"]
      127 GETTABLEKS                       R6 R2 K37 ["BeginDate"]
      129 SETTABLEKS                       R6 R5 K24 ["moderationStartDateTime"]
      131 GETTABLEKS                       R6 R2 K38 ["PunishmentType"]
      133 SETTABLEKS                       R6 R5 K25 ["type"]
      135 GETTABLEKS                       R6 R2 K39 ["EndDate"]
      137 SETTABLEKS                       R6 R5 K26 ["moderationEndDateTime"]
      139 SETTABLEKS                       R5 R0 K17 ["state"]
      141 GETTABLEKS                       R5 R0 K17 ["state"]
      143 GETTABLEKS                       R5 R5 K13 ["showDialog"]
      145 JUMPIFNOT                        R5 ; [+9]
      146 GETTABLEKS                       R5 R0 K8 ["log"]
      148 GETUPVAL                         R6 4
      149 GETTABLEKS                       R7 R0 K17 ["state"]
      151 GETTABLEKS                       R7 R7 K25 ["type"]
      153 LOADK                            R8 K40 ["ShowDialog"]
      154 CALL                             R5 3 0
      155 GETTABLEKS                       R5 R0 K3 ["moderationController"]
      157 GETTABLEKS                       R5 R5 K41 ["ShowModerationDialog"]
      159 NEWCLOSURE                       R7 P5
      160 CAPTURE                          VAL R0
      161 CAPTURE                          UPVAL U4
      162 NAMECALL                         R5 R5 K19 ["Connect"]
      164 CALL                             R5 2 1
      165 SETTABLEKS                       R5 R0 K20 ["showModerationDialogConnection"]
      167 NEWCLOSURE                       R4 P6
      168 CAPTURE                          VAL R0
      169 SETTABLEKS                       R4 R0 K42 ["OpenQuitDialog"]
      171 NEWCLOSURE                       R4 P7
      172 CAPTURE                          VAL R0
      173 SETTABLEKS                       R4 R0 K43 ["OpenModerationDialog"]
      175 NEWCLOSURE                       R4 P8
      176 CAPTURE                          VAL R0
      177 SETTABLEKS                       R4 R0 K44 ["onRestore"]
      179 GETUPVAL                         R4 6
      180 GETTABLEKS                       R4 R4 K45 ["Localization"]
      182 GETTABLEKS                       R4 R4 K6 ["new"]
      184 DUPTABLE                         R5 K50 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "ModerationDialog"}]
      185 GETUPVAL                         R6 7
      186 SETTABLEKS                       R6 R5 K46 ["stringResourceTable"]
      188 GETUPVAL                         R6 8
      189 SETTABLEKS                       R6 R5 K47 ["translationResourceTable"]
      191 CALL                             R4 1 1
      192 SETTABLEKS                       R4 R0 K51 ["localization"]
      194 GETUPVAL                         R4 6
      195 GETTABLEKS                       R4 R4 K52 ["Analytics"]
      197 GETTABLEKS                       R4 R4 K6 ["new"]
      199 DUPCLOSURE                       R5 K53 [PROTO_10]
      200 NEWTABLE                         R6 0 0
      202 CALL                             R4 2 1
      203 SETTABLEKS                       R4 R0 K54 ["analytics"]
      205 GETUPVAL                         R4 9
      206 GETTABLEKS                       R4 R4 K6 ["new"]
      208 CALL                             R4 0 1
      209 SETTABLEKS                       R4 R0 K55 ["DEPRECATED_stylizer"]
      211 GETUPVAL                         R4 10
      212 GETTABLEKS                       R5 R1 K0 ["Plugin"]
      214 CALL                             R4 1 1
      215 SETTABLEKS                       R4 R0 K56 ["design"]
      217 RETURN                           R0 0

PROTO_12:
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
       43 DUPTABLE                         R9 K24 [{"Reason", "ModeratorNote", "OnReactivate", "OnLogout", "CloseStudioInstance", "OpenQuitDialog", "Type", "ModerationStartDateTime", "ModerationEndDateTime"}]
       44 GETTABLEKS                       R10 R2 K25 ["reason"]
       46 SETTABLEKS                       R10 R9 K15 ["Reason"]
       48 GETTABLEKS                       R10 R2 K26 ["messageToUser"]
       50 SETTABLEKS                       R10 R9 K16 ["ModeratorNote"]
       52 GETTABLEKS                       R10 R0 K27 ["onReactivate"]
       54 SETTABLEKS                       R10 R9 K17 ["OnReactivate"]
       56 GETTABLEKS                       R10 R0 K28 ["onLogout"]
       58 SETTABLEKS                       R10 R9 K18 ["OnLogout"]
       60 GETTABLEKS                       R10 R0 K29 ["closeStudioInstance"]
       62 SETTABLEKS                       R10 R9 K19 ["CloseStudioInstance"]
       64 GETTABLEKS                       R10 R0 K20 ["OpenQuitDialog"]
       66 SETTABLEKS                       R10 R9 K20 ["OpenQuitDialog"]
       68 GETTABLEKS                       R10 R2 K30 ["type"]
       70 SETTABLEKS                       R10 R9 K21 ["Type"]
       72 GETTABLEKS                       R10 R2 K31 ["moderationStartDateTime"]
       74 SETTABLEKS                       R10 R9 K22 ["ModerationStartDateTime"]
       76 GETTABLEKS                       R10 R2 K32 ["moderationEndDateTime"]
       78 SETTABLEKS                       R10 R9 K23 ["ModerationEndDateTime"]
       80 CALL                             R7 2 1
       81 SETTABLEKS                       R7 R6 K9 ["DialogContainer"]
       83 GETTABLEKS                       R7 R2 K33 ["showQuitDialog"]
       85 JUMPIFNOT                        R7 ; [+14]
       86 GETUPVAL                         R7 4
       87 GETTABLEKS                       R7 R7 K14 ["createElement"]
       89 GETUPVAL                         R8 6
       90 DUPTABLE                         R9 K35 [{"CloseStudioInstance", "OpenModerationDialog"}]
       91 GETTABLEKS                       R10 R0 K29 ["closeStudioInstance"]
       93 SETTABLEKS                       R10 R9 K19 ["CloseStudioInstance"]
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
      130 GETIMPORT                        R21 K5 [require]
      132 GETTABLEKS                       R22 R0 K18 ["Src"]
      134 GETTABLEKS                       R22 R22 K39 ["SharedFlags"]
      136 GETTABLEKS                       R22 R22 K41 ["getFFlagStudioUserModerationV2Migration"]
      138 CALL                             R21 1 1
      139 CALL                             R21 0 1
      140 GETIMPORT                        R22 K5 [require]
      142 GETTABLEKS                       R23 R0 K18 ["Src"]
      144 GETTABLEKS                       R23 R23 K39 ["SharedFlags"]
      146 GETTABLEKS                       R23 R23 K42 ["getFFlagStudioModerationUXNewDeactivatedBackend"]
      148 CALL                             R22 1 1
      149 CALL                             R22 0 1
      150 DUPCLOSURE                       R23 K43 [PROTO_0]
      151 CAPTURE                          VAL R20
      152 SETGLOBAL                        R23 K44 ["getEvidenceUrlFromViolation"]
      154 DUPCLOSURE                       R23 K45 [PROTO_11]
      155 CAPTURE                          VAL R21
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R19
      158 CAPTURE                          VAL R18
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R22
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R8
      166 SETTABLEKS                       R23 R17 K46 ["init"]
      168 DUPCLOSURE                       R23 K47 [PROTO_12]
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R5
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R1
      174 CAPTURE                          VAL R15
      175 CAPTURE                          VAL R16
      176 SETTABLEKS                       R23 R17 K48 ["render"]
      178 RETURN                           R17 1
