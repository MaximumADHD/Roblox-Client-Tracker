PROTO_0:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["store"]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 -1
        5 NAMECALL                         R0 R0 K1 ["dispatch"]
        7 CALL                             R0 -1 0
        8 GETUPVAL                         R0 0
        9 DUPTABLE                         R2 K4 [{["enabled"] = False}]
       10 NAMECALL                         R0 R0 K5 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["foundationOverlay"]
        5 JUMPIFEQ                         R0 R1 ; [+13]
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K2 [{"foundationOverlay"}]
        9 MOVE                             R4 R0
       10 JUMPIF                           R4 ; [+3]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["None"]
       14 SETTABLEKS                       R4 R3 K1 ["foundationOverlay"]
       16 NAMECALL                         R1 R1 K4 ["setState"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["pendingGameLinkFetch"]
        4 GETUPVAL                         R1 0
        5 SETTABLEKS                       R0 R1 K1 ["gameLink"]
        7 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["pendingGameLinkFetch"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["reject"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["gameLink"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["resolve"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["gameLink"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K2 ["pendingGameLinkFetch"]
       15 JUMPIFNOT                        R0 ; [+4]
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K2 ["pendingGameLinkFetch"]
       19 RETURN                           R0 1
       20 GETUPVAL                         R0 2
       21 GETIMPORT                        R2 K4 [game]
       23 GETTABLEKS                       R2 R2 K5 ["GameId"]
       25 NAMECALL                         R0 R0 K6 ["createPrivateShareLink"]
       27 CALL                             R0 2 1
       28 NEWCLOSURE                       R2 P0
       29 CAPTURE                          UPVAL U0
       30 NEWCLOSURE                       R3 P1
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U1
       33 NAMECALL                         R0 R0 K7 ["andThen"]
       35 CALL                             R0 3 1
       36 GETUPVAL                         R1 0
       37 SETTABLEKS                       R0 R1 K2 ["pendingGameLinkFetch"]
       39 RETURN                           R0 1

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleEnabled"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["UpdateAsync"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+10]
        1 GETTABLEKS                       R2 R1 K0 ["StatusCode"]
        3 LOADN                            R3 200
        4 JUMPIFLT                         R2 R3 ; [+6]
        6 GETTABLEKS                       R2 R1 K0 ["StatusCode"]
        8 LOADN                            R3 300
        9 JUMPIFNOTLE                      R3 R2 ; [+30]
       11 GETUPVAL                         R2 0
       12 GETUPVAL                         R4 1
       13 DUPTABLE                         R5 K7 [{["url"], ["statusCode"], ["errorDetails"], ["user"], ["ampresponse"] = ""}]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K8 ["Url"]
       17 SETTABLEKS                       R6 R5 K1 ["url"]
       19 GETTABLEKS                       R6 R1 K0 ["StatusCode"]
       21 SETTABLEKS                       R6 R5 K2 ["statusCode"]
       23 GETTABLEKS                       R6 R1 K9 ["Body"]
       25 SETTABLEKS                       R6 R5 K3 ["errorDetails"]
       27 GETUPVAL                         R6 3
       28 NAMECALL                         R6 R6 K10 ["GetUserId"]
       30 CALL                             R6 1 1
       31 SETTABLEKS                       R6 R5 K4 ["user"]
       33 NAMECALL                         R2 R2 K11 ["logRobloxTelemetryEvent"]
       35 CALL                             R2 3 0
       36 GETUPVAL                         R2 4
       37 LOADK                            R3 K12 ["Failed to fetch AMP collab auth status"]
       38 CALL                             R2 1 -1
       39 RETURN                           R2 -1
       40 GETUPVAL                         R2 5
       41 GETTABLEKS                       R4 R1 K9 ["Body"]
       43 NAMECALL                         R2 R2 K13 ["JSONDecode"]
       45 CALL                             R2 2 1
       46 GETTABLEKS                       R3 R2 K14 ["access"]
       48 JUMPIFNOTEQKS                    R3 K15 ["Granted"] ; [+3]
       50 LOADB                            R4 1
       51 JUMP                             ; [+1]
       52 LOADB                            R4 0
       53 JUMPIFEQKS                       R3 K15 ["Granted"] ; [+30]
       55 JUMPIFEQKS                       R3 K16 ["Denied"] ; [+28]
       57 GETUPVAL                         R5 0
       58 GETUPVAL                         R7 1
       59 DUPTABLE                         R8 K17 [{"url", "statusCode", "errorDetails", "user", "ampresponse"}]
       60 GETUPVAL                         R9 2
       61 GETTABLEKS                       R9 R9 K8 ["Url"]
       63 SETTABLEKS                       R9 R8 K1 ["url"]
       65 GETTABLEKS                       R9 R1 K0 ["StatusCode"]
       67 SETTABLEKS                       R9 R8 K2 ["statusCode"]
       69 GETTABLEKS                       R9 R1 K9 ["Body"]
       71 SETTABLEKS                       R9 R8 K3 ["errorDetails"]
       73 GETUPVAL                         R9 3
       74 NAMECALL                         R9 R9 K10 ["GetUserId"]
       76 CALL                             R9 1 1
       77 SETTABLEKS                       R9 R8 K4 ["user"]
       79 SETTABLEKS                       R3 R8 K5 ["ampresponse"]
       81 NAMECALL                         R5 R5 K11 ["logRobloxTelemetryEvent"]
       83 CALL                             R5 3 0
       84 JUMPIFNOTEQKS                    R3 K18 ["Error"] ; [+4]
       86 GETUPVAL                         R5 6
       87 JUMPIFNOT                        R5 ; [+1]
       88 LOADB                            R4 1
       89 JUMPIFNOTEQKS                    R3 K19 ["Actionable"] ; [+4]
       91 GETUPVAL                         R5 7
       92 JUMPIFNOT                        R5 ; [+1]
       93 LOADB                            R4 1
       94 GETUPVAL                         R5 8
       95 JUMPIFNOT                        R5 ; [+17]
       96 GETUPVAL                         R5 9
       97 GETTABLEKS                       R5 R5 K20 ["Plugin"]
       99 LOADK                            R7 K21 ["Settings"]
      100 NAMECALL                         R5 R5 K22 ["GetPluginComponent"]
      102 CALL                             R5 2 1
      103 GETUPVAL                         R6 10
      104 NOT                              R7 R4
      105 SETTABLEKS                       R7 R6 K23 ["Value"]
      107 GETIMPORT                        R6 K26 [task.spawn]
      109 NEWCLOSURE                       R7 P0
      110 CAPTURE                          VAL R5
      111 CAPTURE                          UPVAL U10
      112 CALL                             R6 1 0
      113 JUMPIFNOT                        R4 ; [+12]
      114 GETUPVAL                         R5 0
      115 GETUPVAL                         R7 11
      116 DUPTABLE                         R8 K32 [{["userid"], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators"}]
      117 GETUPVAL                         R9 3
      118 NAMECALL                         R9 R9 K10 ["GetUserId"]
      120 CALL                             R9 1 1
      121 SETTABLEKS                       R9 R8 K27 ["userid"]
      123 NAMECALL                         R5 R5 K11 ["logRobloxTelemetryEvent"]
      125 CALL                             R5 3 0
      126 GETUPVAL                         R5 12
      127 MOVE                             R6 R4
      128 CALL                             R5 1 -1
      129 RETURN                           R5 -1

PROTO_13:
        0 DUPTABLE                         R2 K4 [{[1] = "GET", ["Url"], ["Headers"]}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K5 ["BuildRobloxUrl"]
        4 LOADK                            R4 K6 ["apis"]
        5 LOADK                            R5 K7 ["access-management/v1/upsell-feature-access?featureName=ShouldShowCollabBanner&nameSpace=studio/CollaborationSettings"]
        6 CALL                             R3 2 1
        7 SETTABLEKS                       R3 R2 K2 ["Url"]
        9 NEWTABLE                         R3 1 0
       11 LOADK                            R4 K8 ["application/json"]
       12 SETTABLEKS                       R4 R3 K9 ["Content-Type"]
       14 SETTABLEKS                       R3 R2 K3 ["Headers"]
       16 GETUPVAL                         R3 1
       17 MOVE                             R5 R2
       18 NAMECALL                         R3 R3 K10 ["RequestInternal"]
       20 CALL                             R3 2 1
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U8
       32 CAPTURE                          UPVAL U9
       33 CAPTURE                          UPVAL U10
       34 CAPTURE                          VAL R0
       35 NAMECALL                         R3 R3 K11 ["Start"]
       37 CALL                             R3 2 -1
       38 RETURN                           R3 -1

PROTO_14:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["PlaceId"]
        4 JUMPIFEQKN                       R0 K3 [0] ; [+4]
        6 GETUPVAL                         R0 0
        7 CALL                             R0 0 1
        8 JUMPIF                           R0 ; [+6]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K4 ["resolve"]
       12 LOADB                            R1 0
       13 CALL                             R0 1 -1
       14 RETURN                           R0 -1
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K5 ["new"]
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U7
       25 CAPTURE                          UPVAL U8
       26 CAPTURE                          UPVAL U9
       27 CAPTURE                          UPVAL U10
       28 CAPTURE                          UPVAL U11
       29 CAPTURE                          UPVAL U12
       30 CALL                             R0 1 -1
       31 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 GETTABLEKS                       R3 R1 K1 ["Plugin"]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R0 K2 ["plugin"]
        8 DUPTABLE                         R2 K6 [{["enabled"] = False, ["shouldPromptCollabAuth"] = False}]
        9 SETTABLEKS                       R2 R0 K7 ["state"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R2 R0 K8 ["toggleEnabled"]
       15 NEWCLOSURE                       R2 P1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 SETTABLEKS                       R2 R0 K9 ["onClose"]
       20 NEWCLOSURE                       R2 P2
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R2 R0 K10 ["onRestore"]
       24 NEWCLOSURE                       R2 P3
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R2 R0 K11 ["onWidgetEnabledChanged"]
       28 NEWCLOSURE                       R2 P4
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U2
       31 SETTABLEKS                       R2 R0 K12 ["setFoundationOverlay"]
       33 NEWTABLE                         R2 16 0
       35 GETUPVAL                         R3 3
       36 GETTABLEKS                       R3 R3 K0 ["new"]
       38 CALL                             R3 0 1
       39 GETUPVAL                         R4 4
       40 GETTABLEKS                       R4 R4 K13 ["fflagAddPlayTesterPermission"]
       42 JUMPIFNOT                        R4 ; [+22]
       43 GETUPVAL                         R4 5
       44 GETTABLEKS                       R4 R4 K0 ["new"]
       46 NAMECALL                         R5 R3 K14 ["get"]
       48 CALL                             R5 1 -1
       49 CALL                             R4 -1 1
       50 LOADNIL                          R5
       51 SETTABLEKS                       R5 R0 K15 ["gameLink"]
       53 LOADNIL                          R5
       54 SETTABLEKS                       R5 R0 K16 ["pendingGameLinkFetch"]
       56 LOADB                            R5 0
       57 SETTABLEKS                       R5 R0 K17 ["hasPrefetchedGameLink"]
       59 NEWCLOSURE                       R5 P5
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U6
       62 CAPTURE                          VAL R4
       63 SETTABLEKS                       R5 R0 K18 ["fetchGameLink"]
       65 GETUPVAL                         R4 7
       66 GETTABLEKS                       R4 R4 K0 ["new"]
       68 NAMECALL                         R5 R3 K14 ["get"]
       70 CALL                             R5 1 -1
       71 CALL                             R4 -1 1
       72 GETUPVAL                         R5 8
       73 GETTABLEKS                       R5 R5 K0 ["new"]
       75 NAMECALL                         R6 R3 K14 ["get"]
       77 CALL                             R6 1 -1
       78 CALL                             R5 -1 1
       79 GETUPVAL                         R6 9
       80 GETTABLEKS                       R6 R6 K0 ["new"]
       82 NAMECALL                         R7 R3 K14 ["get"]
       84 CALL                             R7 1 -1
       85 CALL                             R6 -1 1
       86 GETUPVAL                         R7 10
       87 GETTABLEKS                       R7 R7 K0 ["new"]
       89 NAMECALL                         R8 R3 K14 ["get"]
       91 CALL                             R8 1 -1
       92 CALL                             R7 -1 1
       93 GETUPVAL                         R8 11
       94 GETTABLEKS                       R8 R8 K0 ["new"]
       96 NAMECALL                         R9 R3 K14 ["get"]
       98 CALL                             R9 1 -1
       99 CALL                             R8 -1 1
      100 GETUPVAL                         R9 12
      101 GETTABLEKS                       R9 R9 K0 ["new"]
      103 NAMECALL                         R10 R3 K14 ["get"]
      105 CALL                             R10 1 -1
      106 CALL                             R9 -1 1
      107 GETUPVAL                         R10 13
      108 GETTABLEKS                       R10 R10 K0 ["new"]
      110 NAMECALL                         R11 R3 K14 ["get"]
      112 CALL                             R11 1 -1
      113 CALL                             R10 -1 1
      114 LOADNIL                          R11
      115 GETUPVAL                         R12 14
      116 JUMPIFNOT                        R12 ; [+8]
      117 GETUPVAL                         R12 15
      118 GETTABLEKS                       R12 R12 K0 ["new"]
      120 NAMECALL                         R13 R3 K14 ["get"]
      122 CALL                             R13 1 -1
      123 CALL                             R12 -1 1
      124 MOVE                             R11 R12
      125 NAMECALL                         R12 R3 K14 ["get"]
      127 CALL                             R12 1 1
      128 SETTABLEKS                       R12 R2 K19 ["networking"]
      130 SETTABLEKS                       R4 R2 K20 ["groupMetadataController"]
      132 SETTABLEKS                       R5 R2 K21 ["groupRolePermisionsController"]
      134 SETTABLEKS                       R6 R2 K22 ["gamePermissionsController"]
      136 GETUPVAL                         R12 4
      137 GETTABLEKS                       R12 R12 K13 ["fflagAddPlayTesterPermission"]
      139 JUMPIFNOT                        R12 ; [+9]
      140 GETUPVAL                         R12 16
      141 GETTABLEKS                       R12 R12 K0 ["new"]
      143 NAMECALL                         R13 R3 K14 ["get"]
      145 CALL                             R13 1 -1
      146 CALL                             R12 -1 1
      147 SETTABLEKS                       R12 R2 K23 ["playTestersController"]
      149 SETTABLEKS                       R7 R2 K24 ["granularPermissionsController"]
      151 SETTABLEKS                       R8 R2 K25 ["earlyTesterController"]
      153 SETTABLEKS                       R9 R2 K26 ["gameMetadataController"]
      155 SETTABLEKS                       R10 R2 K27 ["socialController"]
      157 GETIMPORT                        R12 K29 [game]
      159 LOADK                            R14 K30 ["TelemetryService"]
      160 NAMECALL                         R12 R12 K31 ["GetService"]
      162 CALL                             R12 2 1
      163 SETTABLEKS                       R12 R2 K32 ["telemetryService"]
      165 GETUPVAL                         R12 14
      166 JUMPIFNOT                        R12 ; [+2]
      167 SETTABLEKS                       R11 R2 K33 ["likelyCollaboratorsController"]
      169 GETUPVAL                         R12 17
      170 GETTABLEKS                       R12 R12 K34 ["ThunkWithArgsMiddleware"]
      172 MOVE                             R13 R2
      173 CALL                             R12 1 1
      174 NEWTABLE                         R13 0 1
      176 MOVE                             R14 R12
      177 SETLIST                          R13 R14 1 [1]
      179 GETUPVAL                         R14 18
      180 GETTABLEKS                       R14 R14 K35 ["Store"]
      182 GETTABLEKS                       R14 R14 K0 ["new"]
      184 GETUPVAL                         R15 19
      185 LOADNIL                          R16
      186 MOVE                             R17 R13
      187 CALL                             R14 3 1
      188 SETTABLEKS                       R14 R0 K36 ["store"]
      190 GETUPVAL                         R14 20
      191 GETTABLEKS                       R14 R14 K37 ["Localization"]
      193 GETTABLEKS                       R14 R14 K0 ["new"]
      195 DUPTABLE                         R15 K42 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "ManageCollaborators"}]
      196 GETUPVAL                         R16 21
      197 SETTABLEKS                       R16 R15 K38 ["stringResourceTable"]
      199 GETUPVAL                         R16 22
      200 SETTABLEKS                       R16 R15 K39 ["translationResourceTable"]
      202 CALL                             R14 1 1
      203 SETTABLEKS                       R14 R0 K43 ["localization"]
      205 GETTABLEKS                       R14 R0 K43 ["localization"]
      207 SETTABLEKS                       R14 R2 K43 ["localization"]
      209 GETUPVAL                         R14 20
      210 GETTABLEKS                       R14 R14 K44 ["Analytics"]
      212 GETTABLEKS                       R14 R14 K0 ["new"]
      214 DUPCLOSURE                       R15 K45 [PROTO_9]
      215 NEWTABLE                         R16 0 0
      217 CALL                             R14 2 1
      218 SETTABLEKS                       R14 R0 K46 ["analytics"]
      220 GETTABLEKS                       R14 R1 K1 ["Plugin"]
      222 LOADK                            R16 K47 ["Actions"]
      223 NAMECALL                         R14 R14 K48 ["GetPluginComponent"]
      225 CALL                             R14 2 1
      226 DUPTABLE                         R17 K57 [{["DataModel"] = "Standalone", ["PluginId"] = "ManageCollaborators", ["PluginType"] = "Unknown", ["Category"] = "Actions", ["ItemId"] = "Open"}]
      227 NAMECALL                         R15 R14 K58 ["BindToActivatedAsync"]
      229 CALL                             R15 2 1
      230 NEWCLOSURE                       R17 P7
      231 CAPTURE                          VAL R0
      232 NAMECALL                         R15 R15 K59 ["Connect"]
      234 CALL                             R15 2 1
      235 SETTABLEKS                       R15 R0 K60 ["onActionActivated"]
      237 GETUPVAL                         R15 23
      238 GETTABLEKS                       R15 R15 K61 ["Util"]
      240 GETTABLEKS                       R15 R15 K62 ["createFoundationDesignBinding"]
      242 CALL                             R15 0 2
      243 SETTABLEKS                       R16 R0 K63 ["onFoundationStyleSheetChange"]
      245 GETUPVAL                         R17 24
      246 GETTABLEKS                       R17 R17 K0 ["new"]
      248 GETUPVAL                         R18 25
      249 GETTABLEKS                       R19 R1 K1 ["Plugin"]
      251 LOADNIL                          R20
      252 LOADNIL                          R21
      253 NEWTABLE                         R22 0 1
      255 MOVE                             R23 R15
      256 SETLIST                          R22 R23 1 [1]
      258 CALL                             R18 4 -1
      259 CALL                             R17 -1 1
      260 SETTABLEKS                       R17 R0 K64 ["design"]
      262 GETUPVAL                         R18 26
      263 NOT                              R17 R18
      264 JUMPIFNOT                        R17 ; [+14]
      265 NEWCLOSURE                       R17 P8
      266 CAPTURE                          UPVAL U27
      267 CAPTURE                          UPVAL U6
      268 CAPTURE                          UPVAL U28
      269 CAPTURE                          UPVAL U29
      270 CAPTURE                          UPVAL U30
      271 CAPTURE                          UPVAL U31
      272 CAPTURE                          UPVAL U32
      273 CAPTURE                          UPVAL U33
      274 CAPTURE                          UPVAL U34
      275 CAPTURE                          UPVAL U35
      276 CAPTURE                          VAL R1
      277 CAPTURE                          UPVAL U36
      278 CAPTURE                          UPVAL U37
      279 SETTABLEKS                       R17 R0 K65 ["getCollabAuthStatus"]
      281 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Failed to prefetch game link: "]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K4 [tostring]
        7 CALL                             R4 1 1
        8 CONCAT                           R2 R3 R4
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R1 K1 [{"shouldPromptCollabAuth"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["shouldPromptCollabAuth"]
        4 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["setState"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_19:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R3 K0 [PROTO_19]
        2 NAMECALL                         R1 R1 K1 ["setState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["fflagAddPlayTesterPermission"]
        3 JUMPIFNOT                        R3 ; [+30]
        4 GETTABLEKS                       R3 R0 K1 ["hasPrefetchedGameLink"]
        6 JUMPIF                           R3 ; [+27]
        7 GETTABLEKS                       R3 R2 K2 ["enabled"]
        9 JUMPIF                           R3 ; [+24]
       10 GETTABLEKS                       R3 R0 K3 ["state"]
       12 GETTABLEKS                       R3 R3 K2 ["enabled"]
       14 JUMPIFNOT                        R3 ; [+19]
       15 GETIMPORT                        R3 K5 [game]
       17 GETTABLEKS                       R3 R3 K6 ["PlaceId"]
       19 JUMPIFEQKN                       R3 K7 [0] ; [+14]
       21 GETUPVAL                         R3 1
       22 CALL                             R3 0 1
       23 JUMPIFNOT                        R3 ; [+10]
       24 LOADB                            R3 1
       25 SETTABLEKS                       R3 R0 K1 ["hasPrefetchedGameLink"]
       27 GETTABLEKS                       R3 R0 K8 ["fetchGameLink"]
       29 CALL                             R3 0 1
       30 DUPCLOSURE                       R5 K9 [PROTO_16]
       31 NAMECALL                         R3 R3 K10 ["catch"]
       33 CALL                             R3 2 0
       34 GETUPVAL                         R3 2
       35 JUMPIFNOT                        R3 ; [+28]
       36 GETUPVAL                         R3 3
       37 JUMPIF                           R3 ; [+26]
       38 GETTABLEKS                       R3 R2 K2 ["enabled"]
       40 GETTABLEKS                       R4 R0 K3 ["state"]
       42 GETTABLEKS                       R4 R4 K2 ["enabled"]
       44 JUMPIFEQ                         R3 R4 ; [+19]
       46 GETTABLEKS                       R3 R0 K3 ["state"]
       48 GETTABLEKS                       R3 R3 K2 ["enabled"]
       50 JUMPIFNOT                        R3 ; [+13]
       51 NAMECALL                         R3 R0 K11 ["getCollabAuthStatus"]
       53 CALL                             R3 1 1
       54 NEWCLOSURE                       R5 P1
       55 CAPTURE                          VAL R0
       56 NAMECALL                         R3 R3 K12 ["andThen"]
       58 CALL                             R3 2 1
       59 NEWCLOSURE                       R5 P2
       60 CAPTURE                          VAL R0
       61 NAMECALL                         R3 R3 K10 ["catch"]
       63 CALL                             R3 2 0
       64 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["onActionActivated"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R2 K2 ["enabled"]
        6 GETIMPORT                        R5 K4 [game]
        8 GETTABLEKS                       R5 R5 K5 ["GameId"]
       10 JUMPIFNOTEQKN                    R5 K6 [0] ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 GETUPVAL                         R5 0
       15 CALL                             R5 0 1
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K7 ["createElement"]
       19 GETUPVAL                         R7 2
       20 DUPTABLE                         R8 K10 [{"onStyleSheetChange", "overlayGui"}]
       21 GETTABLEKS                       R9 R0 K11 ["onFoundationStyleSheetChange"]
       23 SETTABLEKS                       R9 R8 K8 ["onStyleSheetChange"]
       25 GETUPVAL                         R10 3
       26 GETTABLEKS                       R10 R10 K12 ["fflagEarlyTestersPolish"]
       28 JUMPIFNOT                        R10 ; [+3]
       29 GETTABLEKS                       R9 R2 K13 ["foundationOverlay"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R9
       33 SETTABLEKS                       R9 R8 K9 ["overlayGui"]
       35 DUPTABLE                         R9 K16 [{"PermissionsView", "SaveToRobloxView"}]
       36 JUMPIFNOT                        R4 ; [+32]
       37 GETUPVAL                         R10 4
       38 GETTABLEKS                       R10 R10 K7 ["createElement"]
       40 GETUPVAL                         R11 5
       41 DUPTABLE                         R12 K22 [{"CloseWidget", "Plugin", "Enabled", "FetchGameLink", "ShowSafetyBanner"}]
       42 GETTABLEKS                       R13 R0 K23 ["onClose"]
       44 SETTABLEKS                       R13 R12 K17 ["CloseWidget"]
       46 GETTABLEKS                       R13 R0 K24 ["plugin"]
       48 SETTABLEKS                       R13 R12 K18 ["Plugin"]
       50 SETTABLEKS                       R3 R12 K19 ["Enabled"]
       52 GETTABLEKS                       R13 R0 K25 ["fetchGameLink"]
       54 SETTABLEKS                       R13 R12 K20 ["FetchGameLink"]
       56 GETUPVAL                         R13 6
       57 JUMPIFNOT                        R13 ; [+7]
       58 GETUPVAL                         R14 7
       59 NOT                              R13 R14
       60 JUMPIFNOT                        R13 ; [+4]
       61 GETTABLEKS                       R13 R0 K1 ["state"]
       63 GETTABLEKS                       R13 R13 K26 ["shouldPromptCollabAuth"]
       65 SETTABLEKS                       R13 R12 K21 ["ShowSafetyBanner"]
       67 CALL                             R10 2 1
       68 JUMPIF                           R10 ; [+1]
       69 LOADNIL                          R10
       70 SETTABLEKS                       R10 R9 K14 ["PermissionsView"]
       72 NOT                              R10 R4
       73 JUMPIFNOT                        R10 ; [+10]
       74 GETUPVAL                         R10 4
       75 GETTABLEKS                       R10 R10 K7 ["createElement"]
       77 GETUPVAL                         R11 8
       78 DUPTABLE                         R12 K27 [{"CloseWidget"}]
       79 GETTABLEKS                       R13 R0 K23 ["onClose"]
       81 SETTABLEKS                       R13 R12 K17 ["CloseWidget"]
       83 CALL                             R10 2 1
       84 SETTABLEKS                       R10 R9 K15 ["SaveToRobloxView"]
       86 CALL                             R6 3 1
       87 GETUPVAL                         R7 9
       88 GETTABLEKS                       R7 R7 K28 ["provide"]
       90 NEWTABLE                         R8 0 7
       92 GETTABLEKS                       R9 R0 K24 ["plugin"]
       94 GETUPVAL                         R10 10
       95 GETTABLEKS                       R10 R10 K29 ["new"]
       97 GETTABLEKS                       R11 R0 K30 ["store"]
       99 CALL                             R10 1 1
      100 GETUPVAL                         R11 11
      101 GETTABLEKS                       R11 R11 K29 ["new"]
      103 GETTABLEKS                       R12 R1 K18 ["Plugin"]
      105 NAMECALL                         R12 R12 K31 ["getMouse"]
      107 CALL                             R12 1 -1
      108 CALL                             R11 -1 1
      109 MOVE                             R12 R5
      110 GETTABLEKS                       R13 R0 K32 ["localization"]
      112 GETTABLEKS                       R14 R0 K33 ["analytics"]
      114 GETTABLEKS                       R15 R0 K34 ["design"]
      116 SETLIST                          R8 R9 7 [1]
      118 DUPTABLE                         R9 K36 [{"Dialog"}]
      119 GETUPVAL                         R10 4
      120 GETTABLEKS                       R10 R10 K7 ["createElement"]
      122 GETUPVAL                         R11 12
      123 DUPTABLE                         R12 K43 [{["CreateWidgetImmediately"] = True, ["Enabled"], ["Modal"], ["Title"], ["Size"], ["OnClose"]}]
      124 SETTABLEKS                       R3 R12 K19 ["Enabled"]
      126 GETUPVAL                         R14 13
      127 NOT                              R13 R14
      128 SETTABLEKS                       R13 R12 K39 ["Modal"]
      130 GETTABLEKS                       R13 R0 K32 ["localization"]
      132 LOADK                            R15 K18 ["Plugin"]
      133 LOADK                            R16 K40 ["Title"]
      134 NAMECALL                         R13 R13 K44 ["getText"]
      136 CALL                             R13 3 1
      137 SETTABLEKS                       R13 R12 K40 ["Title"]
      139 GETIMPORT                        R13 K46 [Vector2.new]
      141 LOADN                            R14 800
      142 LOADN                            R15 571
      143 CALL                             R13 2 1
      144 SETTABLEKS                       R13 R12 K41 ["Size"]
      146 GETTABLEKS                       R13 R0 K23 ["onClose"]
      148 SETTABLEKS                       R13 R12 K42 ["OnClose"]
      150 GETUPVAL                         R14 3
      151 GETTABLEKS                       R14 R14 K12 ["fflagEarlyTestersPolish"]
      153 JUMPIFNOT                        R14 ; [+32]
      154 DUPTABLE                         R13 K49 [{"Content", "FoundationOverlay"}]
      155 SETTABLEKS                       R6 R13 K47 ["Content"]
      157 GETUPVAL                         R14 4
      158 GETTABLEKS                       R14 R14 K7 ["createElement"]
      160 GETUPVAL                         R15 14
      161 DUPTABLE                         R16 K52 [{["Priority"] = 1}]
      162 DUPTABLE                         R17 K54 [{"Overlay"}]
      163 GETUPVAL                         R18 1
      164 GETTABLEKS                       R18 R18 K7 ["createElement"]
      166 LOADK                            R19 K55 ["Frame"]
      167 DUPTABLE                         R20 K58 [{["Size"], ["BackgroundTransparency"] = 1, ["ref"]}]
      168 GETIMPORT                        R21 K61 [UDim2.fromScale]
      170 LOADN                            R22 1
      171 LOADN                            R23 1
      172 CALL                             R21 2 1
      173 SETTABLEKS                       R21 R20 K41 ["Size"]
      175 GETTABLEKS                       R21 R0 K62 ["setFoundationOverlay"]
      177 SETTABLEKS                       R21 R20 K57 ["ref"]
      179 CALL                             R18 2 1
      180 SETTABLEKS                       R18 R17 K53 ["Overlay"]
      182 CALL                             R14 3 1
      183 SETTABLEKS                       R14 R13 K48 ["FoundationOverlay"]
      185 JUMP                             ; [+1]
      186 MOVE                             R13 R6
      187 CALL                             R10 3 1
      188 SETTABLEKS                       R10 R9 K35 ["Dialog"]
      190 CALL                             R7 2 -1
      191 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [game]
        9 LOADK                            R3 K5 ["DebugBuiltInPluginModalsNotBlocking"]
       10 NAMECALL                         R1 R1 K6 ["GetFastFlag"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R0 K9 ["Bin"]
       17 GETTABLEKS                       R3 R3 K10 ["defineLuaFlags"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R0 K11 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Roact"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R5 R0 K11 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["Rodux"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K8 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Packages"]
       38 GETTABLEKS                       R6 R6 K14 ["Framework"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K15 ["Util"]
       43 GETTABLEKS                       R7 R6 K16 ["Promise"]
       45 GETIMPORT                        R8 K8 [require]
       47 GETTABLEKS                       R9 R0 K11 ["Packages"]
       49 GETTABLEKS                       R9 R9 K17 ["React"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K8 [require]
       54 GETTABLEKS                       R10 R0 K11 ["Packages"]
       56 GETTABLEKS                       R10 R10 K18 ["StudioFoundation"]
       58 CALL                             R9 1 1
       59 GETTABLEKS                       R10 R9 K19 ["Components"]
       61 GETTABLEKS                       R10 R10 K20 ["FoundationProviderAdapter"]
       63 GETTABLEKS                       R11 R5 K21 ["Styling"]
       65 GETTABLEKS                       R11 R11 K22 ["registerPluginStyles"]
       67 GETTABLEKS                       R12 R5 K23 ["ContextServices"]
       69 GETTABLEKS                       R12 R12 K24 ["Design"]
       71 GETTABLEKS                       R13 R5 K25 ["UI"]
       73 GETTABLEKS                       R14 R13 K26 ["Dialog"]
       75 GETTABLEKS                       R15 R13 K27 ["ShowOnTop"]
       77 GETTABLEKS                       R16 R5 K23 ["ContextServices"]
       79 GETTABLEKS                       R17 R16 K28 ["Plugin"]
       81 GETTABLEKS                       R18 R16 K29 ["Mouse"]
       83 GETTABLEKS                       R19 R16 K30 ["Store"]
       85 GETIMPORT                        R20 K8 [require]
       87 GETTABLEKS                       R21 R0 K31 ["Src"]
       89 GETTABLEKS                       R21 R21 K32 ["Reducers"]
       91 GETTABLEKS                       R21 R21 K33 ["MainReducer"]
       93 CALL                             R20 1 1
       94 GETIMPORT                        R21 K8 [require]
       96 GETTABLEKS                       R22 R0 K31 ["Src"]
       98 GETTABLEKS                       R22 R22 K34 ["Resources"]
      100 GETTABLEKS                       R22 R22 K35 ["MakeTheme"]
      102 CALL                             R21 1 1
      103 GETTABLEKS                       R22 R0 K31 ["Src"]
      105 GETTABLEKS                       R22 R22 K34 ["Resources"]
      107 GETTABLEKS                       R22 R22 K36 ["Localization"]
      109 GETTABLEKS                       R22 R22 K37 ["SourceStrings"]
      111 GETTABLEKS                       R23 R0 K31 ["Src"]
      113 GETTABLEKS                       R23 R23 K34 ["Resources"]
      115 GETTABLEKS                       R23 R23 K36 ["Localization"]
      117 GETTABLEKS                       R23 R23 K38 ["LocalizedStrings"]
      119 GETTABLEKS                       R24 R0 K31 ["Src"]
      121 GETTABLEKS                       R24 R24 K19 ["Components"]
      123 GETIMPORT                        R25 K8 [require]
      125 GETTABLEKS                       R26 R24 K39 ["PermissionsView"]
      127 CALL                             R25 1 1
      128 GETIMPORT                        R26 K8 [require]
      130 GETTABLEKS                       R27 R24 K40 ["SaveToRobloxView"]
      132 CALL                             R26 1 1
      133 GETTABLEKS                       R27 R3 K41 ["PureComponent"]
      135 LOADK                            R29 K42 ["MainPlugin"]
      136 NAMECALL                         R27 R27 K43 ["extend"]
      138 CALL                             R27 2 1
      139 GETIMPORT                        R28 K8 [require]
      141 GETTABLEKS                       R29 R0 K31 ["Src"]
      143 GETTABLEKS                       R29 R29 K44 ["Networking"]
      145 GETTABLEKS                       R29 R29 K44 ["Networking"]
      147 CALL                             R28 1 1
      148 GETIMPORT                        R29 K8 [require]
      150 GETTABLEKS                       R30 R0 K31 ["Src"]
      152 GETTABLEKS                       R30 R30 K45 ["Controllers"]
      154 GETTABLEKS                       R30 R30 K46 ["GroupMetadataController"]
      156 CALL                             R29 1 1
      157 GETIMPORT                        R30 K8 [require]
      159 GETTABLEKS                       R31 R0 K31 ["Src"]
      161 GETTABLEKS                       R31 R31 K45 ["Controllers"]
      163 GETTABLEKS                       R31 R31 K47 ["GroupRolePermissionsController"]
      165 CALL                             R30 1 1
      166 GETIMPORT                        R31 K8 [require]
      168 GETTABLEKS                       R32 R0 K31 ["Src"]
      170 GETTABLEKS                       R32 R32 K45 ["Controllers"]
      172 GETTABLEKS                       R32 R32 K48 ["GamePermissionsController"]
      174 CALL                             R31 1 1
      175 GETTABLEKS                       R33 R2 K49 ["fflagAddPlayTesterPermission"]
      177 JUMPIFNOT                        R33 ; [+10]
      178 GETIMPORT                        R32 K8 [require]
      180 GETTABLEKS                       R33 R0 K31 ["Src"]
      182 GETTABLEKS                       R33 R33 K45 ["Controllers"]
      184 GETTABLEKS                       R33 R33 K50 ["PlayTestersController"]
      186 CALL                             R32 1 1
      187 JUMP                             ; [+1]
      188 LOADNIL                          R32
      189 GETTABLEKS                       R34 R2 K49 ["fflagAddPlayTesterPermission"]
      191 JUMPIFNOT                        R34 ; [+10]
      192 GETIMPORT                        R33 K8 [require]
      194 GETTABLEKS                       R34 R0 K31 ["Src"]
      196 GETTABLEKS                       R34 R34 K45 ["Controllers"]
      198 GETTABLEKS                       R34 R34 K51 ["ShareLinksController"]
      200 CALL                             R33 1 1
      201 JUMP                             ; [+1]
      202 LOADNIL                          R33
      203 GETIMPORT                        R34 K8 [require]
      205 GETTABLEKS                       R35 R0 K31 ["Src"]
      207 GETTABLEKS                       R35 R35 K45 ["Controllers"]
      209 GETTABLEKS                       R35 R35 K52 ["GranularPermissionsController"]
      211 CALL                             R34 1 1
      212 GETIMPORT                        R35 K8 [require]
      214 GETTABLEKS                       R36 R0 K31 ["Src"]
      216 GETTABLEKS                       R36 R36 K45 ["Controllers"]
      218 GETTABLEKS                       R36 R36 K53 ["EarlyTesterController"]
      220 CALL                             R35 1 1
      221 GETIMPORT                        R36 K8 [require]
      223 GETTABLEKS                       R37 R0 K31 ["Src"]
      225 GETTABLEKS                       R37 R37 K45 ["Controllers"]
      227 GETTABLEKS                       R37 R37 K54 ["GameMetadataController"]
      229 CALL                             R36 1 1
      230 GETIMPORT                        R37 K8 [require]
      232 GETTABLEKS                       R38 R0 K31 ["Src"]
      234 GETTABLEKS                       R38 R38 K45 ["Controllers"]
      236 GETTABLEKS                       R38 R38 K55 ["SocialController"]
      238 CALL                             R37 1 1
      239 GETIMPORT                        R38 K8 [require]
      241 GETTABLEKS                       R39 R0 K31 ["Src"]
      243 GETTABLEKS                       R39 R39 K15 ["Util"]
      245 GETTABLEKS                       R39 R39 K56 ["IsLikelyCollaboratorPrefetchEnabled"]
      247 CALL                             R38 1 1
      248 MOVE                             R39 R38
      249 CALL                             R39 0 1
      250 LOADNIL                          R40
      251 JUMPIFNOT                        R39 ; [+10]
      252 GETIMPORT                        R41 K8 [require]
      254 GETTABLEKS                       R42 R0 K31 ["Src"]
      256 GETTABLEKS                       R42 R42 K45 ["Controllers"]
      258 GETTABLEKS                       R42 R42 K57 ["LikelyCollaboratorsController"]
      260 CALL                             R41 1 1
      261 MOVE                             R40 R41
      262 GETIMPORT                        R41 K8 [require]
      264 GETTABLEKS                       R42 R0 K31 ["Src"]
      266 GETTABLEKS                       R42 R42 K58 ["Actions"]
      268 GETTABLEKS                       R42 R42 K59 ["ResetStore"]
      270 CALL                             R41 1 1
      271 GETIMPORT                        R42 K4 [game]
      273 LOADK                            R44 K60 ["StudioService"]
      274 NAMECALL                         R42 R42 K61 ["GetService"]
      276 CALL                             R42 2 1
      277 GETIMPORT                        R43 K8 [require]
      279 GETTABLEKS                       R44 R0 K31 ["Src"]
      281 GETTABLEKS                       R44 R44 K44 ["Networking"]
      283 GETTABLEKS                       R44 R44 K62 ["Http"]
      285 CALL                             R43 1 1
      286 GETIMPORT                        R44 K4 [game]
      288 LOADK                            R46 K63 ["HttpService"]
      289 NAMECALL                         R44 R44 K61 ["GetService"]
      291 CALL                             R44 2 1
      292 GETIMPORT                        R45 K8 [require]
      294 GETTABLEKS                       R46 R0 K31 ["Src"]
      296 GETTABLEKS                       R46 R46 K15 ["Util"]
      298 GETTABLEKS                       R46 R46 K64 ["IsTeamCreateEnabled"]
      300 CALL                             R45 1 1
      301 GETIMPORT                        R46 K8 [require]
      303 GETTABLEKS                       R47 R0 K11 ["Packages"]
      305 GETTABLEKS                       R47 R47 K65 ["TelemetryProtocol"]
      307 CALL                             R46 1 1
      308 GETTABLEKS                       R47 R46 K66 ["new"]
      310 CALL                             R47 0 1
      311 GETIMPORT                        R48 K4 [game]
      313 LOADK                            R50 K67 ["AddVerifyAgeActionToLogoutMenu"]
      314 NAMECALL                         R48 R48 K6 ["GetFastFlag"]
      316 CALL                             R48 2 1
      317 GETIMPORT                        R49 K4 [game]
      319 LOADK                            R51 K68 ["UpsellCollabSafety2"]
      320 NAMECALL                         R49 R49 K6 ["GetFastFlag"]
      322 CALL                             R49 2 1
      323 GETIMPORT                        R50 K8 [require]
      325 GETTABLEKS                       R51 R0 K31 ["Src"]
      327 GETTABLEKS                       R51 R51 K15 ["Util"]
      329 GETTABLEKS                       R51 R51 K69 ["Telemetry"]
      331 GETTABLEKS                       R51 R51 K70 ["FetchAMPStatusFailureEvent"]
      333 CALL                             R50 1 1
      334 GETIMPORT                        R51 K8 [require]
      336 GETTABLEKS                       R52 R0 K31 ["Src"]
      338 GETTABLEKS                       R52 R52 K15 ["Util"]
      340 GETTABLEKS                       R52 R52 K69 ["Telemetry"]
      342 GETTABLEKS                       R52 R52 K71 ["SafetyUpsellBannerShownEvent"]
      344 CALL                             R51 1 1
      345 DUPTABLE                         R52 K77 [{["Uri"], ["Text"] = "placeholder", ["Enabled"] = True}]
      346 DUPTABLE                         R53 K86 [{["DataModel"] = "Standalone", ["PluginId"] = "LogoutMenu", ["Category"] = "Settings", ["ItemId"] = "UserIsAMPAgeVerified"}]
      347 SETTABLEKS                       R53 R52 K72 ["Uri"]
      349 GETIMPORT                        R53 K4 [game]
      351 LOADK                            R55 K87 ["UpsellTreatAMPErrorAsShowBanner"]
      352 NAMECALL                         R53 R53 K6 ["GetFastFlag"]
      354 CALL                             R53 2 1
      355 GETIMPORT                        R54 K4 [game]
      357 LOADK                            R56 K88 ["UpsellTreatAMPActionableAsShowBanner"]
      358 NAMECALL                         R54 R54 K6 ["GetFastFlag"]
      360 CALL                             R54 2 1
      361 GETIMPORT                        R55 K4 [game]
      363 LOADK                            R57 K89 ["UpsellCollabTrustedConnection2"]
      364 NAMECALL                         R55 R55 K6 ["GetFastFlag"]
      366 CALL                             R55 2 1
      367 NEWCLOSURE                       R56 P0
      368 CAPTURE                          VAL R17
      369 CAPTURE                          VAL R41
      370 CAPTURE                          VAL R3
      371 CAPTURE                          VAL R28
      372 CAPTURE                          VAL R2
      373 CAPTURE                          VAL R33
      374 CAPTURE                          VAL R7
      375 CAPTURE                          VAL R29
      376 CAPTURE                          VAL R30
      377 CAPTURE                          VAL R31
      378 CAPTURE                          VAL R34
      379 CAPTURE                          VAL R35
      380 CAPTURE                          VAL R36
      381 CAPTURE                          VAL R37
      382 CAPTURE                          VAL R39
      383 CAPTURE                          REF R40
      384 CAPTURE                          VAL R32
      385 CAPTURE                          VAL R6
      386 CAPTURE                          VAL R4
      387 CAPTURE                          VAL R20
      388 CAPTURE                          VAL R16
      389 CAPTURE                          VAL R22
      390 CAPTURE                          VAL R23
      391 CAPTURE                          VAL R9
      392 CAPTURE                          VAL R12
      393 CAPTURE                          VAL R11
      394 CAPTURE                          VAL R55
      395 CAPTURE                          VAL R45
      396 CAPTURE                          VAL R43
      397 CAPTURE                          VAL R44
      398 CAPTURE                          VAL R47
      399 CAPTURE                          VAL R50
      400 CAPTURE                          VAL R42
      401 CAPTURE                          VAL R53
      402 CAPTURE                          VAL R54
      403 CAPTURE                          VAL R48
      404 CAPTURE                          VAL R52
      405 CAPTURE                          VAL R51
      406 SETTABLEKS                       R56 R27 K90 ["init"]
      408 DUPCLOSURE                       R56 K91 [PROTO_21]
      409 CAPTURE                          VAL R2
      410 CAPTURE                          VAL R45
      411 CAPTURE                          VAL R49
      412 CAPTURE                          VAL R55
      413 SETTABLEKS                       R56 R27 K92 ["didUpdate"]
      415 DUPCLOSURE                       R56 K93 [PROTO_22]
      416 SETTABLEKS                       R56 R27 K94 ["componentWillUnmount"]
      418 DUPCLOSURE                       R56 K95 [PROTO_23]
      419 CAPTURE                          VAL R21
      420 CAPTURE                          VAL R8
      421 CAPTURE                          VAL R10
      422 CAPTURE                          VAL R2
      423 CAPTURE                          VAL R3
      424 CAPTURE                          VAL R25
      425 CAPTURE                          VAL R49
      426 CAPTURE                          VAL R55
      427 CAPTURE                          VAL R26
      428 CAPTURE                          VAL R16
      429 CAPTURE                          VAL R19
      430 CAPTURE                          VAL R18
      431 CAPTURE                          VAL R14
      432 CAPTURE                          VAL R1
      433 CAPTURE                          VAL R15
      434 SETTABLEKS                       R56 R27 K96 ["render"]
      436 CLOSEUPVALS                      R40
      437 RETURN                           R27 1
