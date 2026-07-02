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
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleEnabled"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R5 0
        1 JUMPIFNOT                        R5 ; [+18]
        2 GETUPVAL                         R5 1
        3 JUMPIFNOT                        R5 ; [+16]
        4 GETUPVAL                         R5 2
        5 JUMPIFNOT                        R5 ; [+14]
        6 GETUPVAL                         R5 1
        7 GETUPVAL                         R7 2
        8 DUPTABLE                         R8 K6 [{[1], ["statusCode"], ["errorDetails"], ["linkType"], ["requestType"] = "POST"}]
        9 SETTABLEKS                       R0 R8 K0 ["url"]
       11 SETTABLEKS                       R1 R8 K1 ["statusCode"]
       13 SETTABLEKS                       R2 R8 K2 ["errorDetails"]
       15 SETTABLEKS                       R3 R8 K3 ["linkType"]
       17 NAMECALL                         R5 R5 K7 ["logRobloxTelemetryEvent"]
       19 CALL                             R5 3 0
       20 GETIMPORT                        R5 K9 [warn]
       22 MOVE                             R7 R4
       23 LOADK                            R8 K10 [" "]
       24 GETUPVAL                         R10 3
       25 GETTABLEKS                       R10 R10 K11 ["LINKTYPE_EDIT"]
       27 JUMPIFNOTEQ                      R3 R10 ; [+3]
       29 LOADK                            R9 K12 ["Edit"]
       30 JUMP                             ; [+4]
       31 LOADK                            R10 K13 ["Team Test"]
       32 LOADK                            R11 K14 [" link: "]
       33 MOVE                             R12 R2
       34 CONCAT                           R9 R10 R12
       35 CONCAT                           R6 R7 R9
       36 CALL                             R5 1 0
       37 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["links"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K4 ["link"]
        9 SETTABLE                         R3 R1 R2
       10 DUPTABLE                         R2 K5 [{"links"}]
       11 SETTABLEKS                       R1 R2 K3 ["links"]
       13 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["pendingLinkFetches"]
        3 GETUPVAL                         R2 1
        4 LOADNIL                          R3
        5 SETTABLE                         R3 R1 R2
        6 GETTABLEKS                       R2 R0 K1 ["Body"]
        8 OR                               R1 R2 R0
        9 GETTABLEKS                       R2 R0 K2 ["StatusCode"]
       11 JUMPIF                           R2 ; [+4]
       12 GETTABLEKS                       R2 R0 K3 ["responseCode"]
       14 JUMPIF                           R2 ; [+1]
       15 LOADN                            R2 200
       16 LOADN                            R3 400
       17 JUMPIFNOTLE                      R3 R2 ; [+24]
       19 GETUPVAL                         R3 2
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K4 ["Url"]
       23 MOVE                             R5 R2
       24 FASTCALL1                        TOSTRING R1 ; [+3]
       25 MOVE                             R7 R1
       26 GETIMPORT                        R6 K6 [tostring]
       28 CALL                             R6 1 1
       29 GETUPVAL                         R7 1
       30 LOADK                            R9 K7 ["HTTP error "]
       31 FASTCALL1                        TOSTRING R2 ; [+3]
       32 MOVE                             R13 R2
       33 GETIMPORT                        R12 K6 [tostring]
       35 CALL                             R12 1 1
       36 MOVE                             R10 R12
       37 LOADK                            R11 K8 [" while generating"]
       38 CONCAT                           R8 R9 R11
       39 CALL                             R3 5 0
       40 LOADNIL                          R3
       41 RETURN                           R3 1
       42 GETIMPORT                        R3 K10 [pcall]
       44 GETUPVAL                         R4 4
       45 GETTABLEKS                       R4 R4 K11 ["JSONDecode"]
       47 GETUPVAL                         R5 4
       48 MOVE                             R6 R1
       49 CALL                             R3 3 2
       50 JUMPIFNOT                        R3 ; [+14]
       51 JUMPIFNOT                        R4 ; [+13]
       52 GETTABLEKS                       R5 R4 K12 ["link"]
       54 JUMPIFNOT                        R5 ; [+10]
       55 GETUPVAL                         R5 0
       56 NEWCLOSURE                       R7 P0
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          VAL R4
       59 NAMECALL                         R5 R5 K13 ["setState"]
       61 CALL                             R5 2 0
       62 GETTABLEKS                       R5 R4 K12 ["link"]
       64 RETURN                           R5 1
       65 GETUPVAL                         R5 2
       66 GETUPVAL                         R6 3
       67 GETTABLEKS                       R6 R6 K4 ["Url"]
       69 MOVE                             R7 R2
       70 JUMPIF                           R3 ; [+8]
       71 LOADK                            R9 K14 ["JSON decode failed: "]
       72 FASTCALL1                        TOSTRING R1 ; [+3]
       73 MOVE                             R11 R1
       74 GETIMPORT                        R10 K6 [tostring]
       76 CALL                             R10 1 1
       77 CONCAT                           R8 R9 R10
       78 JUMP                             ; [+7]
       79 LOADK                            R9 K15 ["Missing or invalid link field: "]
       80 FASTCALL1                        TOSTRING R1 ; [+3]
       81 MOVE                             R11 R1
       82 GETIMPORT                        R10 K6 [tostring]
       84 CALL                             R10 1 1
       85 CONCAT                           R8 R9 R10
       86 GETUPVAL                         R9 1
       87 JUMPIF                           R3 ; [+2]
       88 LOADK                            R10 K16 ["Failed to decode"]
       89 JUMP                             ; [+1]
       90 LOADK                            R10 K17 ["Failed to get valid"]
       91 CALL                             R5 5 0
       92 LOADNIL                          R5
       93 RETURN                           R5 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["pendingLinkFetches"]
        3 GETUPVAL                         R2 1
        4 LOADNIL                          R3
        5 SETTABLE                         R3 R1 R2
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R2 R2 K1 ["Url"]
       10 LOADN                            R3 -1
       11 FASTCALL1                        TOSTRING R0 ; [+3]
       12 MOVE                             R5 R0
       13 GETIMPORT                        R4 K3 [tostring]
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 1
       17 LOADK                            R6 K4 ["Failed to generate"]
       18 CALL                             R1 5 0
       19 LOADNIL                          R1
       20 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["state"]
        3 GETTABLEKS                       R2 R2 K1 ["links"]
        5 GETTABLE                         R1 R2 R0
        6 JUMPIFNOT                        R1 ; [+11]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["resolve"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["state"]
       13 GETTABLEKS                       R3 R3 K1 ["links"]
       15 GETTABLE                         R2 R3 R0
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K3 ["pendingLinkFetches"]
       21 GETTABLE                         R1 R2 R0
       22 JUMPIFNOT                        R1 ; [+5]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K3 ["pendingLinkFetches"]
       26 GETTABLE                         R1 R2 R0
       27 RETURN                           R1 1
       28 DUPTABLE                         R1 K8 [{["Url"], ["Method"] = "POST", ["Body"]}]
       29 GETUPVAL                         R2 2
       30 GETTABLEKS                       R2 R2 K9 ["BuildRobloxUrl"]
       32 LOADK                            R3 K10 ["apis"]
       33 LOADK                            R4 K11 ["deeplinks/v2/get-or-create-static"]
       34 CALL                             R2 2 1
       35 SETTABLEKS                       R2 R1 K4 ["Url"]
       37 GETUPVAL                         R2 3
       38 DUPTABLE                         R4 K14 [{"linkType", "targetId"}]
       39 GETUPVAL                         R6 4
       40 GETTABLEKS                       R6 R6 K15 ["LINKTYPE_EDIT"]
       42 JUMPIFNOTEQ                      R0 R6 ; [+3]
       44 LOADK                            R5 K16 ["STUDIOEDIT"]
       45 JUMP                             ; [+1]
       46 LOADK                            R5 K17 ["STUDIOTEAMTEST"]
       47 SETTABLEKS                       R5 R4 K12 ["linkType"]
       49 GETIMPORT                        R6 K19 [game]
       51 GETTABLEKS                       R6 R6 K20 ["PlaceId"]
       53 FASTCALL1                        TOSTRING R6 ; [+2]
       54 GETIMPORT                        R5 K22 [tostring]
       56 CALL                             R5 1 1
       57 SETTABLEKS                       R5 R4 K13 ["targetId"]
       59 NAMECALL                         R2 R2 K23 ["JSONEncode"]
       61 CALL                             R2 2 1
       62 SETTABLEKS                       R2 R1 K7 ["Body"]
       64 GETUPVAL                         R2 2
       65 GETTABLEKS                       R2 R2 K24 ["Request"]
       67 MOVE                             R3 R1
       68 CALL                             R2 1 1
       69 NEWCLOSURE                       R4 P0
       70 CAPTURE                          UPVAL U0
       71 CAPTURE                          VAL R0
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          VAL R1
       74 CAPTURE                          UPVAL U3
       75 NAMECALL                         R2 R2 K25 ["andThen"]
       77 CALL                             R2 2 1
       78 NEWCLOSURE                       R4 P1
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          VAL R0
       81 CAPTURE                          UPVAL U5
       82 CAPTURE                          VAL R1
       83 NAMECALL                         R2 R2 K26 ["catch"]
       85 CALL                             R2 2 1
       86 GETUPVAL                         R3 0
       87 GETTABLEKS                       R3 R3 K3 ["pendingLinkFetches"]
       89 SETTABLE                         R2 R3 R0
       90 RETURN                           R2 1

PROTO_12:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["PlaceId"]
        4 JUMPIFEQKN                       R0 K3 [0] ; [+4]
        6 GETUPVAL                         R0 0
        7 CALL                             R0 0 1
        8 JUMPIF                           R0 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K4 ["LINKTYPE_EDIT"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["UpdateAsync"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 GETTABLEKS                       R3 R1 K1 ["Plugin"]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R0 K2 ["plugin"]
        8 DUPTABLE                         R2 K7 [{["enabled"] = False, ["links"], ["shouldPromptCollabAuth"] = False}]
        9 NEWTABLE                         R3 2 0
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K8 ["LINKTYPE_EDIT"]
       14 LOADNIL                          R5
       15 SETTABLE                         R5 R3 R4
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K9 ["LINKTYPE_TEAM_TEST"]
       19 LOADNIL                          R5
       20 SETTABLE                         R5 R3 R4
       21 SETTABLEKS                       R3 R2 K5 ["links"]
       23 SETTABLEKS                       R2 R0 K10 ["state"]
       25 NEWTABLE                         R2 0 0
       27 SETTABLEKS                       R2 R0 K11 ["pendingLinkFetches"]
       29 NEWCLOSURE                       R2 P0
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R2 R0 K12 ["toggleEnabled"]
       33 NEWCLOSURE                       R2 P1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U2
       36 SETTABLEKS                       R2 R0 K13 ["onClose"]
       38 NEWCLOSURE                       R2 P2
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R2 R0 K14 ["onRestore"]
       42 NEWCLOSURE                       R2 P3
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R2 R0 K15 ["onWidgetEnabledChanged"]
       46 NEWTABLE                         R2 8 0
       48 GETUPVAL                         R3 3
       49 GETTABLEKS                       R3 R3 K0 ["new"]
       51 CALL                             R3 0 1
       52 GETUPVAL                         R4 4
       53 GETTABLEKS                       R4 R4 K0 ["new"]
       55 NAMECALL                         R5 R3 K16 ["get"]
       57 CALL                             R5 1 -1
       58 CALL                             R4 -1 1
       59 GETUPVAL                         R5 5
       60 GETTABLEKS                       R5 R5 K0 ["new"]
       62 NAMECALL                         R6 R3 K16 ["get"]
       64 CALL                             R6 1 -1
       65 CALL                             R5 -1 1
       66 GETUPVAL                         R6 6
       67 GETTABLEKS                       R6 R6 K0 ["new"]
       69 NAMECALL                         R7 R3 K16 ["get"]
       71 CALL                             R7 1 -1
       72 CALL                             R6 -1 1
       73 GETUPVAL                         R7 7
       74 GETTABLEKS                       R7 R7 K0 ["new"]
       76 NAMECALL                         R8 R3 K16 ["get"]
       78 CALL                             R8 1 -1
       79 CALL                             R7 -1 1
       80 GETUPVAL                         R8 8
       81 GETTABLEKS                       R8 R8 K0 ["new"]
       83 NAMECALL                         R9 R3 K16 ["get"]
       85 CALL                             R9 1 -1
       86 CALL                             R8 -1 1
       87 GETUPVAL                         R9 9
       88 GETTABLEKS                       R9 R9 K0 ["new"]
       90 NAMECALL                         R10 R3 K16 ["get"]
       92 CALL                             R10 1 -1
       93 CALL                             R9 -1 1
       94 LOADNIL                          R10
       95 GETUPVAL                         R11 10
       96 JUMPIFNOT                        R11 ; [+8]
       97 GETUPVAL                         R11 11
       98 GETTABLEKS                       R11 R11 K0 ["new"]
      100 NAMECALL                         R12 R3 K16 ["get"]
      102 CALL                             R12 1 -1
      103 CALL                             R11 -1 1
      104 MOVE                             R10 R11
      105 NAMECALL                         R11 R3 K16 ["get"]
      107 CALL                             R11 1 1
      108 SETTABLEKS                       R11 R2 K17 ["networking"]
      110 SETTABLEKS                       R4 R2 K18 ["groupMetadataController"]
      112 SETTABLEKS                       R5 R2 K19 ["groupRolePermisionsController"]
      114 SETTABLEKS                       R6 R2 K20 ["gamePermissionsController"]
      116 SETTABLEKS                       R7 R2 K21 ["granularPermissionsController"]
      118 SETTABLEKS                       R8 R2 K22 ["gameMetadataController"]
      120 SETTABLEKS                       R9 R2 K23 ["socialController"]
      122 GETUPVAL                         R11 10
      123 JUMPIFNOT                        R11 ; [+2]
      124 SETTABLEKS                       R10 R2 K24 ["likelyCollaboratorsController"]
      126 GETUPVAL                         R11 12
      127 GETTABLEKS                       R11 R11 K25 ["ThunkWithArgsMiddleware"]
      129 MOVE                             R12 R2
      130 CALL                             R11 1 1
      131 NEWTABLE                         R12 0 1
      133 MOVE                             R13 R11
      134 SETLIST                          R12 R13 1 [1]
      136 GETUPVAL                         R13 13
      137 GETTABLEKS                       R13 R13 K26 ["Store"]
      139 GETTABLEKS                       R13 R13 K0 ["new"]
      141 GETUPVAL                         R14 14
      142 LOADNIL                          R15
      143 MOVE                             R16 R12
      144 CALL                             R13 3 1
      145 SETTABLEKS                       R13 R0 K27 ["store"]
      147 GETUPVAL                         R13 15
      148 GETTABLEKS                       R13 R13 K28 ["Localization"]
      150 GETTABLEKS                       R13 R13 K0 ["new"]
      152 DUPTABLE                         R14 K33 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "ManageCollaborators"}]
      153 GETUPVAL                         R15 16
      154 SETTABLEKS                       R15 R14 K29 ["stringResourceTable"]
      156 GETUPVAL                         R15 17
      157 SETTABLEKS                       R15 R14 K30 ["translationResourceTable"]
      159 CALL                             R13 1 1
      160 SETTABLEKS                       R13 R0 K34 ["localization"]
      162 GETUPVAL                         R13 15
      163 GETTABLEKS                       R13 R13 K35 ["Analytics"]
      165 GETTABLEKS                       R13 R13 K0 ["new"]
      167 DUPCLOSURE                       R14 K36 [PROTO_5]
      168 NEWTABLE                         R15 0 0
      170 CALL                             R13 2 1
      171 SETTABLEKS                       R13 R0 K37 ["analytics"]
      173 GETTABLEKS                       R13 R1 K1 ["Plugin"]
      175 LOADK                            R15 K38 ["Actions"]
      176 NAMECALL                         R13 R13 K39 ["GetPluginComponent"]
      178 CALL                             R13 2 1
      179 DUPTABLE                         R16 K48 [{["DataModel"] = "Standalone", ["PluginId"] = "ManageCollaborators", ["PluginType"] = "Unknown", ["Category"] = "Actions", ["ItemId"] = "Open"}]
      180 NAMECALL                         R14 R13 K49 ["BindToActivatedAsync"]
      182 CALL                             R14 2 1
      183 NEWCLOSURE                       R16 P5
      184 CAPTURE                          VAL R0
      185 NAMECALL                         R14 R14 K50 ["Connect"]
      187 CALL                             R14 2 1
      188 SETTABLEKS                       R14 R0 K51 ["onActionActivated"]
      190 GETUPVAL                         R14 18
      191 GETTABLEKS                       R14 R14 K52 ["Util"]
      193 GETTABLEKS                       R14 R14 K53 ["createFoundationDesignBinding"]
      195 CALL                             R14 0 2
      196 SETTABLEKS                       R15 R0 K54 ["onFoundationStyleSheetChange"]
      198 GETUPVAL                         R16 19
      199 GETTABLEKS                       R16 R16 K0 ["new"]
      201 GETUPVAL                         R17 20
      202 GETTABLEKS                       R18 R1 K1 ["Plugin"]
      204 LOADNIL                          R19
      205 LOADNIL                          R20
      206 NEWTABLE                         R21 0 1
      208 MOVE                             R22 R14
      209 SETLIST                          R21 R22 1 [1]
      211 CALL                             R17 4 -1
      212 CALL                             R16 -1 1
      213 SETTABLEKS                       R16 R0 K55 ["design"]
      215 GETUPVAL                         R16 21
      216 JUMPIFNOT                        R16 ; [+33]
      217 NEWCLOSURE                       R16 P6
      218 CAPTURE                          UPVAL U22
      219 CAPTURE                          UPVAL U23
      220 CAPTURE                          UPVAL U24
      221 CAPTURE                          UPVAL U1
      222 NEWCLOSURE                       R17 P7
      223 CAPTURE                          VAL R0
      224 CAPTURE                          UPVAL U25
      225 CAPTURE                          UPVAL U26
      226 CAPTURE                          UPVAL U27
      227 CAPTURE                          UPVAL U1
      228 CAPTURE                          VAL R16
      229 SETTABLEKS                       R17 R0 K56 ["fetchLink"]
      231 NEWCLOSURE                       R18 P8
      232 CAPTURE                          UPVAL U28
      233 CAPTURE                          VAL R17
      234 CAPTURE                          UPVAL U1
      235 GETIMPORT                        R19 K58 [game]
      237 GETTABLEKS                       R19 R19 K59 ["PlaceId"]
      239 JUMPIFEQKN                       R19 K60 [0] ; [+10]
      241 GETUPVAL                         R19 28
      242 CALL                             R19 0 1
      243 JUMPIF                           R19 ; [+1]
      244 JUMP                             ; [+5]
      245 MOVE                             R19 R17
      246 GETUPVAL                         R20 1
      247 GETTABLEKS                       R20 R20 K8 ["LINKTYPE_EDIT"]
      249 CALL                             R19 1 0
      250 GETUPVAL                         R17 29
      251 NOT                              R16 R17
      252 JUMPIFNOT                        R16 ; [+14]
      253 NEWCLOSURE                       R16 P9
      254 CAPTURE                          UPVAL U28
      255 CAPTURE                          UPVAL U25
      256 CAPTURE                          UPVAL U26
      257 CAPTURE                          UPVAL U27
      258 CAPTURE                          UPVAL U23
      259 CAPTURE                          UPVAL U30
      260 CAPTURE                          UPVAL U31
      261 CAPTURE                          UPVAL U32
      262 CAPTURE                          UPVAL U33
      263 CAPTURE                          UPVAL U34
      264 CAPTURE                          VAL R1
      265 CAPTURE                          UPVAL U35
      266 CAPTURE                          UPVAL U36
      267 SETTABLEKS                       R16 R0 K61 ["getCollabAuthStatus"]
      269 RETURN                           R0 0

PROTO_18:
        0 DUPTABLE                         R1 K1 [{"shouldPromptCollabAuth"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["shouldPromptCollabAuth"]
        4 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["setState"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_20:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R3 K0 [PROTO_20]
        2 NAMECALL                         R1 R1 K1 ["setState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+28]
        2 GETUPVAL                         R3 1
        3 JUMPIF                           R3 ; [+26]
        4 GETTABLEKS                       R3 R2 K0 ["enabled"]
        6 GETTABLEKS                       R4 R0 K1 ["state"]
        8 GETTABLEKS                       R4 R4 K0 ["enabled"]
       10 JUMPIFEQ                         R3 R4 ; [+19]
       12 GETTABLEKS                       R3 R0 K1 ["state"]
       14 GETTABLEKS                       R3 R3 K0 ["enabled"]
       16 JUMPIFNOT                        R3 ; [+13]
       17 NAMECALL                         R3 R0 K2 ["getCollabAuthStatus"]
       19 CALL                             R3 1 1
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R0
       22 NAMECALL                         R3 R3 K3 ["andThen"]
       24 CALL                             R3 2 1
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          VAL R0
       27 NAMECALL                         R3 R3 K4 ["catch"]
       29 CALL                             R3 2 0
       30 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["onActionActivated"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_24:
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
       17 GETTABLEKS                       R6 R6 K7 ["provide"]
       19 NEWTABLE                         R7 0 7
       21 GETTABLEKS                       R8 R0 K8 ["plugin"]
       23 GETUPVAL                         R9 2
       24 GETTABLEKS                       R9 R9 K9 ["new"]
       26 GETTABLEKS                       R10 R0 K10 ["store"]
       28 CALL                             R9 1 1
       29 GETUPVAL                         R10 3
       30 GETTABLEKS                       R10 R10 K9 ["new"]
       32 GETTABLEKS                       R11 R1 K11 ["Plugin"]
       34 NAMECALL                         R11 R11 K12 ["getMouse"]
       36 CALL                             R11 1 -1
       37 CALL                             R10 -1 1
       38 MOVE                             R11 R5
       39 GETTABLEKS                       R12 R0 K13 ["localization"]
       41 GETTABLEKS                       R13 R0 K14 ["analytics"]
       43 GETTABLEKS                       R14 R0 K15 ["design"]
       45 SETLIST                          R7 R8 7 [1]
       47 DUPTABLE                         R8 K17 [{"Dialog"}]
       48 GETUPVAL                         R9 4
       49 GETTABLEKS                       R9 R9 K18 ["createElement"]
       51 GETUPVAL                         R10 5
       52 DUPTABLE                         R11 K26 [{["CreateWidgetImmediately"] = True, ["Enabled"], ["Modal"], ["Title"], ["Size"], ["OnClose"]}]
       53 SETTABLEKS                       R3 R11 K21 ["Enabled"]
       55 GETUPVAL                         R13 6
       56 NOT                              R12 R13
       57 SETTABLEKS                       R12 R11 K22 ["Modal"]
       59 GETTABLEKS                       R12 R0 K13 ["localization"]
       61 LOADK                            R14 K11 ["Plugin"]
       62 LOADK                            R15 K23 ["Title"]
       63 NAMECALL                         R12 R12 K27 ["getText"]
       65 CALL                             R12 3 1
       66 SETTABLEKS                       R12 R11 K23 ["Title"]
       68 GETIMPORT                        R12 K29 [Vector2.new]
       70 LOADN                            R13 800
       71 LOADN                            R14 571
       72 CALL                             R12 2 1
       73 SETTABLEKS                       R12 R11 K24 ["Size"]
       75 GETTABLEKS                       R12 R0 K30 ["onClose"]
       77 SETTABLEKS                       R12 R11 K25 ["OnClose"]
       79 GETUPVAL                         R12 7
       80 GETTABLEKS                       R12 R12 K18 ["createElement"]
       82 GETUPVAL                         R13 8
       83 DUPTABLE                         R14 K32 [{"onStyleSheetChange"}]
       84 GETTABLEKS                       R15 R0 K33 ["onFoundationStyleSheetChange"]
       86 SETTABLEKS                       R15 R14 K31 ["onStyleSheetChange"]
       88 DUPTABLE                         R15 K36 [{"PermissionsView", "SaveToRobloxView"}]
       89 JUMPIFNOT                        R4 ; [+38]
       90 GETUPVAL                         R16 4
       91 GETTABLEKS                       R16 R16 K18 ["createElement"]
       93 GETUPVAL                         R17 9
       94 DUPTABLE                         R18 K41 [{"CloseWidget", "Plugin", "Enabled", "Links", "FetchLink", "ShowSafetyBanner"}]
       95 GETTABLEKS                       R19 R0 K30 ["onClose"]
       97 SETTABLEKS                       R19 R18 K37 ["CloseWidget"]
       99 GETTABLEKS                       R19 R0 K8 ["plugin"]
      101 SETTABLEKS                       R19 R18 K11 ["Plugin"]
      103 SETTABLEKS                       R3 R18 K21 ["Enabled"]
      105 GETTABLEKS                       R19 R0 K1 ["state"]
      107 GETTABLEKS                       R19 R19 K42 ["links"]
      109 SETTABLEKS                       R19 R18 K38 ["Links"]
      111 GETTABLEKS                       R19 R0 K43 ["fetchLink"]
      113 SETTABLEKS                       R19 R18 K39 ["FetchLink"]
      115 GETUPVAL                         R19 10
      116 JUMPIFNOT                        R19 ; [+7]
      117 GETUPVAL                         R20 11
      118 NOT                              R19 R20
      119 JUMPIFNOT                        R19 ; [+4]
      120 GETTABLEKS                       R19 R0 K1 ["state"]
      122 GETTABLEKS                       R19 R19 K44 ["shouldPromptCollabAuth"]
      124 SETTABLEKS                       R19 R18 K40 ["ShowSafetyBanner"]
      126 CALL                             R16 2 1
      127 JUMPIF                           R16 ; [+1]
      128 LOADNIL                          R16
      129 SETTABLEKS                       R16 R15 K34 ["PermissionsView"]
      131 NOT                              R16 R4
      132 JUMPIFNOT                        R16 ; [+10]
      133 GETUPVAL                         R16 4
      134 GETTABLEKS                       R16 R16 K18 ["createElement"]
      136 GETUPVAL                         R17 12
      137 DUPTABLE                         R18 K45 [{"CloseWidget"}]
      138 GETTABLEKS                       R19 R0 K30 ["onClose"]
      140 SETTABLEKS                       R19 R18 K37 ["CloseWidget"]
      142 CALL                             R16 2 1
      143 SETTABLEKS                       R16 R15 K35 ["SaveToRobloxView"]
      145 CALL                             R12 3 -1
      146 CALL                             R9 -1 1
      147 SETTABLEKS                       R9 R8 K16 ["Dialog"]
      149 CALL                             R6 2 -1
      150 RETURN                           R6 -1

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
       15 GETTABLEKS                       R3 R0 K9 ["Packages"]
       17 GETTABLEKS                       R3 R3 K10 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R0 K9 ["Packages"]
       24 GETTABLEKS                       R4 R4 K11 ["Rodux"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R5 R0 K9 ["Packages"]
       31 GETTABLEKS                       R5 R5 K12 ["Framework"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K13 ["Util"]
       36 GETTABLEKS                       R6 R5 K14 ["Promise"]
       38 GETIMPORT                        R7 K4 [game]
       40 LOADK                            R9 K15 ["Collab8864_ShowCopyLinkButton"]
       41 NAMECALL                         R7 R7 K6 ["GetFastFlag"]
       43 CALL                             R7 2 1
       44 GETIMPORT                        R8 K4 [game]
       46 LOADK                            R10 K16 ["Collab9119_LogLinkFetchFailures"]
       47 NAMECALL                         R8 R8 K6 ["GetFastFlag"]
       49 CALL                             R8 2 1
       50 GETIMPORT                        R9 K8 [require]
       52 GETTABLEKS                       R10 R0 K9 ["Packages"]
       54 GETTABLEKS                       R10 R10 K17 ["React"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K8 [require]
       59 GETTABLEKS                       R11 R0 K9 ["Packages"]
       61 GETTABLEKS                       R11 R11 K18 ["StudioFoundation"]
       63 CALL                             R10 1 1
       64 GETTABLEKS                       R11 R10 K19 ["Components"]
       66 GETTABLEKS                       R11 R11 K20 ["FoundationProviderAdapter"]
       68 GETTABLEKS                       R12 R4 K21 ["Styling"]
       70 GETTABLEKS                       R12 R12 K22 ["registerPluginStyles"]
       72 GETTABLEKS                       R13 R4 K23 ["ContextServices"]
       74 GETTABLEKS                       R13 R13 K24 ["Design"]
       76 GETTABLEKS                       R14 R4 K25 ["UI"]
       78 GETTABLEKS                       R15 R14 K26 ["Dialog"]
       80 GETTABLEKS                       R16 R4 K23 ["ContextServices"]
       82 GETTABLEKS                       R17 R16 K27 ["Plugin"]
       84 GETTABLEKS                       R18 R16 K28 ["Mouse"]
       86 GETTABLEKS                       R19 R16 K29 ["Store"]
       88 GETIMPORT                        R20 K8 [require]
       90 GETTABLEKS                       R21 R0 K30 ["Src"]
       92 GETTABLEKS                       R21 R21 K31 ["Reducers"]
       94 GETTABLEKS                       R21 R21 K32 ["MainReducer"]
       96 CALL                             R20 1 1
       97 GETIMPORT                        R21 K8 [require]
       99 GETTABLEKS                       R22 R0 K30 ["Src"]
      101 GETTABLEKS                       R22 R22 K33 ["Resources"]
      103 GETTABLEKS                       R22 R22 K34 ["MakeTheme"]
      105 CALL                             R21 1 1
      106 GETTABLEKS                       R22 R0 K30 ["Src"]
      108 GETTABLEKS                       R22 R22 K33 ["Resources"]
      110 GETTABLEKS                       R22 R22 K35 ["Localization"]
      112 GETTABLEKS                       R22 R22 K36 ["SourceStrings"]
      114 GETTABLEKS                       R23 R0 K30 ["Src"]
      116 GETTABLEKS                       R23 R23 K33 ["Resources"]
      118 GETTABLEKS                       R23 R23 K35 ["Localization"]
      120 GETTABLEKS                       R23 R23 K37 ["LocalizedStrings"]
      122 GETTABLEKS                       R24 R0 K30 ["Src"]
      124 GETTABLEKS                       R24 R24 K19 ["Components"]
      126 GETIMPORT                        R25 K8 [require]
      128 GETTABLEKS                       R26 R24 K38 ["PermissionsView"]
      130 CALL                             R25 1 1
      131 GETIMPORT                        R26 K8 [require]
      133 GETTABLEKS                       R27 R24 K39 ["SaveToRobloxView"]
      135 CALL                             R26 1 1
      136 GETTABLEKS                       R27 R2 K40 ["PureComponent"]
      138 LOADK                            R29 K41 ["MainPlugin"]
      139 NAMECALL                         R27 R27 K42 ["extend"]
      141 CALL                             R27 2 1
      142 GETIMPORT                        R28 K8 [require]
      144 GETTABLEKS                       R29 R0 K30 ["Src"]
      146 GETTABLEKS                       R29 R29 K43 ["Networking"]
      148 GETTABLEKS                       R29 R29 K43 ["Networking"]
      150 CALL                             R28 1 1
      151 GETIMPORT                        R29 K8 [require]
      153 GETTABLEKS                       R30 R0 K30 ["Src"]
      155 GETTABLEKS                       R30 R30 K44 ["Controllers"]
      157 GETTABLEKS                       R30 R30 K45 ["GroupMetadataController"]
      159 CALL                             R29 1 1
      160 GETIMPORT                        R30 K8 [require]
      162 GETTABLEKS                       R31 R0 K30 ["Src"]
      164 GETTABLEKS                       R31 R31 K44 ["Controllers"]
      166 GETTABLEKS                       R31 R31 K46 ["GroupRolePermissionsController"]
      168 CALL                             R30 1 1
      169 GETIMPORT                        R31 K8 [require]
      171 GETTABLEKS                       R32 R0 K30 ["Src"]
      173 GETTABLEKS                       R32 R32 K44 ["Controllers"]
      175 GETTABLEKS                       R32 R32 K47 ["GamePermissionsController"]
      177 CALL                             R31 1 1
      178 GETIMPORT                        R32 K8 [require]
      180 GETTABLEKS                       R33 R0 K30 ["Src"]
      182 GETTABLEKS                       R33 R33 K44 ["Controllers"]
      184 GETTABLEKS                       R33 R33 K48 ["GranularPermissionsController"]
      186 CALL                             R32 1 1
      187 GETIMPORT                        R33 K8 [require]
      189 GETTABLEKS                       R34 R0 K30 ["Src"]
      191 GETTABLEKS                       R34 R34 K44 ["Controllers"]
      193 GETTABLEKS                       R34 R34 K49 ["GameMetadataController"]
      195 CALL                             R33 1 1
      196 GETIMPORT                        R34 K8 [require]
      198 GETTABLEKS                       R35 R0 K30 ["Src"]
      200 GETTABLEKS                       R35 R35 K44 ["Controllers"]
      202 GETTABLEKS                       R35 R35 K50 ["SocialController"]
      204 CALL                             R34 1 1
      205 GETIMPORT                        R35 K8 [require]
      207 GETTABLEKS                       R36 R0 K30 ["Src"]
      209 GETTABLEKS                       R36 R36 K13 ["Util"]
      211 GETTABLEKS                       R36 R36 K51 ["IsLikelyCollaboratorPrefetchEnabled"]
      213 CALL                             R35 1 1
      214 MOVE                             R36 R35
      215 CALL                             R36 0 1
      216 LOADNIL                          R37
      217 JUMPIFNOT                        R36 ; [+10]
      218 GETIMPORT                        R38 K8 [require]
      220 GETTABLEKS                       R39 R0 K30 ["Src"]
      222 GETTABLEKS                       R39 R39 K44 ["Controllers"]
      224 GETTABLEKS                       R39 R39 K52 ["LikelyCollaboratorsController"]
      226 CALL                             R38 1 1
      227 MOVE                             R37 R38
      228 GETIMPORT                        R38 K8 [require]
      230 GETTABLEKS                       R39 R0 K30 ["Src"]
      232 GETTABLEKS                       R39 R39 K53 ["Actions"]
      234 GETTABLEKS                       R39 R39 K54 ["ResetStore"]
      236 CALL                             R38 1 1
      237 GETIMPORT                        R39 K8 [require]
      239 GETTABLEKS                       R40 R0 K30 ["Src"]
      241 GETTABLEKS                       R40 R40 K13 ["Util"]
      243 GETTABLEKS                       R40 R40 K55 ["Constants"]
      245 CALL                             R39 1 1
      246 LOADNIL                          R40
      247 GETIMPORT                        R41 K4 [game]
      249 LOADK                            R43 K56 ["StudioService"]
      250 NAMECALL                         R41 R41 K57 ["GetService"]
      252 CALL                             R41 2 1
      253 GETIMPORT                        R42 K8 [require]
      255 GETTABLEKS                       R43 R0 K30 ["Src"]
      257 GETTABLEKS                       R43 R43 K43 ["Networking"]
      259 GETTABLEKS                       R43 R43 K58 ["Http"]
      261 CALL                             R42 1 1
      262 GETIMPORT                        R43 K4 [game]
      264 LOADK                            R45 K59 ["HttpService"]
      265 NAMECALL                         R43 R43 K57 ["GetService"]
      267 CALL                             R43 2 1
      268 GETIMPORT                        R44 K8 [require]
      270 GETTABLEKS                       R45 R0 K30 ["Src"]
      272 GETTABLEKS                       R45 R45 K13 ["Util"]
      274 GETTABLEKS                       R45 R45 K60 ["IsTeamCreateEnabled"]
      276 CALL                             R44 1 1
      277 GETIMPORT                        R45 K8 [require]
      279 GETTABLEKS                       R46 R0 K9 ["Packages"]
      281 GETTABLEKS                       R46 R46 K61 ["TelemetryProtocol"]
      283 CALL                             R45 1 1
      284 GETTABLEKS                       R46 R45 K62 ["new"]
      286 CALL                             R46 0 1
      287 JUMPIFNOT                        R8 ; [+12]
      288 GETIMPORT                        R47 K8 [require]
      290 GETTABLEKS                       R48 R0 K30 ["Src"]
      292 GETTABLEKS                       R48 R48 K13 ["Util"]
      294 GETTABLEKS                       R48 R48 K63 ["Telemetry"]
      296 GETTABLEKS                       R48 R48 K64 ["LinkFetchFailureEvent"]
      298 CALL                             R47 1 1
      299 MOVE                             R40 R47
      300 GETIMPORT                        R47 K4 [game]
      302 LOADK                            R49 K65 ["AddVerifyAgeActionToLogoutMenu"]
      303 NAMECALL                         R47 R47 K6 ["GetFastFlag"]
      305 CALL                             R47 2 1
      306 GETIMPORT                        R48 K4 [game]
      308 LOADK                            R50 K66 ["UpsellCollabSafety2"]
      309 NAMECALL                         R48 R48 K6 ["GetFastFlag"]
      311 CALL                             R48 2 1
      312 GETIMPORT                        R49 K8 [require]
      314 GETTABLEKS                       R50 R0 K30 ["Src"]
      316 GETTABLEKS                       R50 R50 K13 ["Util"]
      318 GETTABLEKS                       R50 R50 K63 ["Telemetry"]
      320 GETTABLEKS                       R50 R50 K67 ["FetchAMPStatusFailureEvent"]
      322 CALL                             R49 1 1
      323 GETIMPORT                        R50 K8 [require]
      325 GETTABLEKS                       R51 R0 K30 ["Src"]
      327 GETTABLEKS                       R51 R51 K13 ["Util"]
      329 GETTABLEKS                       R51 R51 K63 ["Telemetry"]
      331 GETTABLEKS                       R51 R51 K68 ["SafetyUpsellBannerShownEvent"]
      333 CALL                             R50 1 1
      334 DUPTABLE                         R51 K74 [{["Uri"], ["Text"] = "placeholder", ["Enabled"] = True}]
      335 DUPTABLE                         R52 K83 [{["DataModel"] = "Standalone", ["PluginId"] = "LogoutMenu", ["Category"] = "Settings", ["ItemId"] = "UserIsAMPAgeVerified"}]
      336 SETTABLEKS                       R52 R51 K69 ["Uri"]
      338 GETIMPORT                        R52 K4 [game]
      340 LOADK                            R54 K84 ["UpsellTreatAMPErrorAsShowBanner"]
      341 NAMECALL                         R52 R52 K6 ["GetFastFlag"]
      343 CALL                             R52 2 1
      344 GETIMPORT                        R53 K4 [game]
      346 LOADK                            R55 K85 ["UpsellTreatAMPActionableAsShowBanner"]
      347 NAMECALL                         R53 R53 K6 ["GetFastFlag"]
      349 CALL                             R53 2 1
      350 GETIMPORT                        R54 K4 [game]
      352 LOADK                            R56 K86 ["UpsellCollabTrustedConnection2"]
      353 NAMECALL                         R54 R54 K6 ["GetFastFlag"]
      355 CALL                             R54 2 1
      356 NEWCLOSURE                       R55 P0
      357 CAPTURE                          VAL R17
      358 CAPTURE                          VAL R39
      359 CAPTURE                          VAL R38
      360 CAPTURE                          VAL R28
      361 CAPTURE                          VAL R29
      362 CAPTURE                          VAL R30
      363 CAPTURE                          VAL R31
      364 CAPTURE                          VAL R32
      365 CAPTURE                          VAL R33
      366 CAPTURE                          VAL R34
      367 CAPTURE                          VAL R36
      368 CAPTURE                          REF R37
      369 CAPTURE                          VAL R5
      370 CAPTURE                          VAL R3
      371 CAPTURE                          VAL R20
      372 CAPTURE                          VAL R16
      373 CAPTURE                          VAL R22
      374 CAPTURE                          VAL R23
      375 CAPTURE                          VAL R10
      376 CAPTURE                          VAL R13
      377 CAPTURE                          VAL R12
      378 CAPTURE                          VAL R7
      379 CAPTURE                          VAL R8
      380 CAPTURE                          VAL R46
      381 CAPTURE                          REF R40
      382 CAPTURE                          VAL R6
      383 CAPTURE                          VAL R42
      384 CAPTURE                          VAL R43
      385 CAPTURE                          VAL R44
      386 CAPTURE                          VAL R54
      387 CAPTURE                          VAL R49
      388 CAPTURE                          VAL R41
      389 CAPTURE                          VAL R52
      390 CAPTURE                          VAL R53
      391 CAPTURE                          VAL R47
      392 CAPTURE                          VAL R51
      393 CAPTURE                          VAL R50
      394 SETTABLEKS                       R55 R27 K87 ["init"]
      396 DUPCLOSURE                       R55 K88 [PROTO_22]
      397 CAPTURE                          VAL R48
      398 CAPTURE                          VAL R54
      399 SETTABLEKS                       R55 R27 K89 ["didUpdate"]
      401 DUPCLOSURE                       R55 K90 [PROTO_23]
      402 SETTABLEKS                       R55 R27 K91 ["componentWillUnmount"]
      404 DUPCLOSURE                       R55 K92 [PROTO_24]
      405 CAPTURE                          VAL R21
      406 CAPTURE                          VAL R16
      407 CAPTURE                          VAL R19
      408 CAPTURE                          VAL R18
      409 CAPTURE                          VAL R2
      410 CAPTURE                          VAL R15
      411 CAPTURE                          VAL R1
      412 CAPTURE                          VAL R9
      413 CAPTURE                          VAL R11
      414 CAPTURE                          VAL R25
      415 CAPTURE                          VAL R48
      416 CAPTURE                          VAL R54
      417 CAPTURE                          VAL R26
      418 SETTABLEKS                       R55 R27 K93 ["render"]
      420 CLOSEUPVALS                      R37
      421 RETURN                           R27 1
