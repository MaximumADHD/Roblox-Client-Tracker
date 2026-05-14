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
        9 DUPTABLE                         R2 K3 [{"enabled"}]
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K2 ["enabled"]
       13 NAMECALL                         R0 R0 K4 ["setState"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

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
        1 JUMPIFNOT                        R5 ; [+21]
        2 GETUPVAL                         R5 1
        3 JUMPIFNOT                        R5 ; [+19]
        4 GETUPVAL                         R5 2
        5 JUMPIFNOT                        R5 ; [+17]
        6 GETUPVAL                         R5 1
        7 GETUPVAL                         R7 2
        8 DUPTABLE                         R8 K5 [{"url", "statusCode", "errorDetails", "linkType", "requestType"}]
        9 SETTABLEKS                       R0 R8 K0 ["url"]
       11 SETTABLEKS                       R1 R8 K1 ["statusCode"]
       13 SETTABLEKS                       R2 R8 K2 ["errorDetails"]
       15 SETTABLEKS                       R3 R8 K3 ["linkType"]
       17 LOADK                            R9 K6 ["POST"]
       18 SETTABLEKS                       R9 R8 K4 ["requestType"]
       20 NAMECALL                         R5 R5 K7 ["logRobloxTelemetryEvent"]
       22 CALL                             R5 3 0
       23 GETIMPORT                        R5 K9 [warn]
       25 MOVE                             R7 R4
       26 LOADK                            R8 K10 [" "]
       27 GETUPVAL                         R10 3
       28 GETTABLEKS                       R10 R10 K11 ["LINKTYPE_EDIT"]
       30 JUMPIFNOTEQ                      R3 R10 ; [+3]
       32 LOADK                            R9 K12 ["Edit"]
       33 JUMP                             ; [+4]
       34 LOADK                            R10 K13 ["Team Test"]
       35 LOADK                            R11 K14 [" link: "]
       36 MOVE                             R12 R2
       37 CONCAT                           R9 R10 R12
       38 CONCAT                           R6 R7 R9
       39 CALL                             R5 1 0
       40 RETURN                           R0 0

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
       16 LOADN                            R3 144
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
       10 LOADN                            R3 255
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
       28 DUPTABLE                         R1 K7 [{"Url", "Method", "Body"}]
       29 GETUPVAL                         R2 2
       30 GETTABLEKS                       R2 R2 K8 ["BuildRobloxUrl"]
       32 LOADK                            R3 K9 ["apis"]
       33 LOADK                            R4 K10 ["deeplinks/v2/get-or-create-static"]
       34 CALL                             R2 2 1
       35 SETTABLEKS                       R2 R1 K4 ["Url"]
       37 LOADK                            R2 K11 ["POST"]
       38 SETTABLEKS                       R2 R1 K5 ["Method"]
       40 GETUPVAL                         R2 3
       41 DUPTABLE                         R4 K14 [{"linkType", "targetId"}]
       42 GETUPVAL                         R6 4
       43 GETTABLEKS                       R6 R6 K15 ["LINKTYPE_EDIT"]
       45 JUMPIFNOTEQ                      R0 R6 ; [+3]
       47 LOADK                            R5 K16 ["STUDIOEDIT"]
       48 JUMP                             ; [+1]
       49 LOADK                            R5 K17 ["STUDIOTEAMTEST"]
       50 SETTABLEKS                       R5 R4 K12 ["linkType"]
       52 GETIMPORT                        R6 K19 [game]
       54 GETTABLEKS                       R6 R6 K20 ["PlaceId"]
       56 FASTCALL1                        TOSTRING R6 ; [+2]
       57 GETIMPORT                        R5 K22 [tostring]
       59 CALL                             R5 1 1
       60 SETTABLEKS                       R5 R4 K13 ["targetId"]
       62 NAMECALL                         R2 R2 K23 ["JSONEncode"]
       64 CALL                             R2 2 1
       65 SETTABLEKS                       R2 R1 K6 ["Body"]
       67 GETUPVAL                         R2 2
       68 GETTABLEKS                       R2 R2 K24 ["Request"]
       70 MOVE                             R3 R1
       71 CALL                             R2 1 1
       72 NEWCLOSURE                       R4 P0
       73 CAPTURE                          UPVAL U0
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          VAL R1
       77 CAPTURE                          UPVAL U3
       78 NAMECALL                         R2 R2 K25 ["andThen"]
       80 CALL                             R2 2 1
       81 NEWCLOSURE                       R4 P1
       82 CAPTURE                          UPVAL U0
       83 CAPTURE                          VAL R0
       84 CAPTURE                          UPVAL U5
       85 CAPTURE                          VAL R1
       86 NAMECALL                         R2 R2 K26 ["catch"]
       88 CALL                             R2 2 1
       89 GETUPVAL                         R3 0
       90 GETTABLEKS                       R3 R3 K3 ["pendingLinkFetches"]
       92 SETTABLE                         R2 R3 R0
       93 RETURN                           R2 1

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
        8 LOADN                            R3 44
        9 JUMPIFNOTLE                      R3 R2 ; [+33]
       11 GETUPVAL                         R2 0
       12 GETUPVAL                         R4 1
       13 DUPTABLE                         R5 K6 [{"url", "statusCode", "errorDetails", "user", "ampresponse"}]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K7 ["Url"]
       17 SETTABLEKS                       R6 R5 K1 ["url"]
       19 GETTABLEKS                       R6 R1 K0 ["StatusCode"]
       21 SETTABLEKS                       R6 R5 K2 ["statusCode"]
       23 GETTABLEKS                       R6 R1 K8 ["Body"]
       25 SETTABLEKS                       R6 R5 K3 ["errorDetails"]
       27 GETUPVAL                         R6 3
       28 NAMECALL                         R6 R6 K9 ["GetUserId"]
       30 CALL                             R6 1 1
       31 SETTABLEKS                       R6 R5 K4 ["user"]
       33 LOADK                            R6 K10 [""]
       34 SETTABLEKS                       R6 R5 K5 ["ampresponse"]
       36 NAMECALL                         R2 R2 K11 ["logRobloxTelemetryEvent"]
       38 CALL                             R2 3 0
       39 GETUPVAL                         R2 4
       40 LOADK                            R3 K12 ["Failed to fetch AMP collab auth status"]
       41 CALL                             R2 1 -1
       42 RETURN                           R2 -1
       43 GETUPVAL                         R2 5
       44 GETTABLEKS                       R4 R1 K8 ["Body"]
       46 NAMECALL                         R2 R2 K13 ["JSONDecode"]
       48 CALL                             R2 2 1
       49 GETTABLEKS                       R3 R2 K14 ["access"]
       51 JUMPIFNOTEQKS                    R3 K15 ["Granted"] ; [+3]
       53 LOADB                            R4 1
       54 JUMP                             ; [+1]
       55 LOADB                            R4 0
       56 JUMPIFEQKS                       R3 K15 ["Granted"] ; [+30]
       58 JUMPIFEQKS                       R3 K16 ["Denied"] ; [+28]
       60 GETUPVAL                         R5 0
       61 GETUPVAL                         R7 1
       62 DUPTABLE                         R8 K6 [{"url", "statusCode", "errorDetails", "user", "ampresponse"}]
       63 GETUPVAL                         R9 2
       64 GETTABLEKS                       R9 R9 K7 ["Url"]
       66 SETTABLEKS                       R9 R8 K1 ["url"]
       68 GETTABLEKS                       R9 R1 K0 ["StatusCode"]
       70 SETTABLEKS                       R9 R8 K2 ["statusCode"]
       72 GETTABLEKS                       R9 R1 K8 ["Body"]
       74 SETTABLEKS                       R9 R8 K3 ["errorDetails"]
       76 GETUPVAL                         R9 3
       77 NAMECALL                         R9 R9 K9 ["GetUserId"]
       79 CALL                             R9 1 1
       80 SETTABLEKS                       R9 R8 K4 ["user"]
       82 SETTABLEKS                       R3 R8 K5 ["ampresponse"]
       84 NAMECALL                         R5 R5 K11 ["logRobloxTelemetryEvent"]
       86 CALL                             R5 3 0
       87 JUMPIFNOTEQKS                    R3 K17 ["Error"] ; [+4]
       89 GETUPVAL                         R5 6
       90 JUMPIFNOT                        R5 ; [+1]
       91 LOADB                            R4 1
       92 JUMPIFNOTEQKS                    R3 K18 ["Actionable"] ; [+4]
       94 GETUPVAL                         R5 7
       95 JUMPIFNOT                        R5 ; [+1]
       96 LOADB                            R4 1
       97 GETUPVAL                         R5 8
       98 JUMPIFNOT                        R5 ; [+17]
       99 GETUPVAL                         R5 9
      100 GETTABLEKS                       R5 R5 K19 ["Plugin"]
      102 LOADK                            R7 K20 ["Settings"]
      103 NAMECALL                         R5 R5 K21 ["GetPluginComponent"]
      105 CALL                             R5 2 1
      106 GETUPVAL                         R6 10
      107 NOT                              R7 R4
      108 SETTABLEKS                       R7 R6 K22 ["Value"]
      110 GETIMPORT                        R6 K25 [task.spawn]
      112 NEWCLOSURE                       R7 P0
      113 CAPTURE                          VAL R5
      114 CAPTURE                          UPVAL U10
      115 CALL                             R6 1 0
      116 JUMPIFNOT                        R4 ; [+18]
      117 GETUPVAL                         R5 0
      118 GETUPVAL                         R7 11
      119 DUPTABLE                         R8 K29 [{"userid", "telemetryType", "upsellEntrySurface"}]
      120 GETUPVAL                         R9 3
      121 NAMECALL                         R9 R9 K9 ["GetUserId"]
      123 CALL                             R9 1 1
      124 SETTABLEKS                       R9 R8 K26 ["userid"]
      126 LOADK                            R9 K30 ["load"]
      127 SETTABLEKS                       R9 R8 K27 ["telemetryType"]
      129 LOADK                            R9 K31 ["manage_collaborators"]
      130 SETTABLEKS                       R9 R8 K28 ["upsellEntrySurface"]
      132 NAMECALL                         R5 R5 K11 ["logRobloxTelemetryEvent"]
      134 CALL                             R5 3 0
      135 GETUPVAL                         R5 12
      136 MOVE                             R6 R4
      137 CALL                             R5 1 -1
      138 RETURN                           R5 -1

PROTO_15:
        0 DUPTABLE                         R2 K3 [{"Method", "Url", "Headers"}]
        1 LOADK                            R3 K4 ["GET"]
        2 SETTABLEKS                       R3 R2 K0 ["Method"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K5 ["BuildRobloxUrl"]
        7 LOADK                            R4 K6 ["apis"]
        8 LOADK                            R5 K7 ["access-management/v1/upsell-feature-access?featureName=ShouldShowCollabBanner&nameSpace=studio/CollaborationSettings"]
        9 CALL                             R3 2 1
       10 SETTABLEKS                       R3 R2 K1 ["Url"]
       12 NEWTABLE                         R3 1 0
       14 LOADK                            R4 K8 ["application/json"]
       15 SETTABLEKS                       R4 R3 K9 ["Content-Type"]
       17 SETTABLEKS                       R3 R2 K2 ["Headers"]
       19 GETUPVAL                         R3 1
       20 MOVE                             R5 R2
       21 NAMECALL                         R3 R3 K10 ["RequestInternal"]
       23 CALL                             R3 2 1
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          UPVAL U8
       35 CAPTURE                          UPVAL U9
       36 CAPTURE                          UPVAL U10
       37 CAPTURE                          VAL R0
       38 NAMECALL                         R3 R3 K11 ["Start"]
       40 CALL                             R3 2 -1
       41 RETURN                           R3 -1

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
        8 DUPTABLE                         R2 K6 [{"enabled", "links", "shouldPromptCollabAuth"}]
        9 LOADB                            R3 0
       10 SETTABLEKS                       R3 R2 K3 ["enabled"]
       12 NEWTABLE                         R3 2 0
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K7 ["LINKTYPE_EDIT"]
       17 LOADNIL                          R5
       18 SETTABLE                         R5 R3 R4
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K8 ["LINKTYPE_TEAM_TEST"]
       22 LOADNIL                          R5
       23 SETTABLE                         R5 R3 R4
       24 SETTABLEKS                       R3 R2 K4 ["links"]
       26 LOADB                            R3 0
       27 SETTABLEKS                       R3 R2 K5 ["shouldPromptCollabAuth"]
       29 SETTABLEKS                       R2 R0 K9 ["state"]
       31 NEWTABLE                         R2 0 0
       33 SETTABLEKS                       R2 R0 K10 ["pendingLinkFetches"]
       35 NEWCLOSURE                       R2 P0
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R2 R0 K11 ["toggleEnabled"]
       39 NEWCLOSURE                       R2 P1
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U2
       42 SETTABLEKS                       R2 R0 K12 ["onClose"]
       44 NEWCLOSURE                       R2 P2
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R2 R0 K13 ["onRestore"]
       48 NEWCLOSURE                       R2 P3
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R2 R0 K14 ["onWidgetEnabledChanged"]
       52 NEWTABLE                         R2 8 0
       54 GETUPVAL                         R3 3
       55 GETTABLEKS                       R3 R3 K0 ["new"]
       57 CALL                             R3 0 1
       58 GETUPVAL                         R4 4
       59 GETTABLEKS                       R4 R4 K0 ["new"]
       61 NAMECALL                         R5 R3 K15 ["get"]
       63 CALL                             R5 1 -1
       64 CALL                             R4 -1 1
       65 GETUPVAL                         R5 5
       66 GETTABLEKS                       R5 R5 K0 ["new"]
       68 NAMECALL                         R6 R3 K15 ["get"]
       70 CALL                             R6 1 -1
       71 CALL                             R5 -1 1
       72 GETUPVAL                         R6 6
       73 GETTABLEKS                       R6 R6 K0 ["new"]
       75 NAMECALL                         R7 R3 K15 ["get"]
       77 CALL                             R7 1 -1
       78 CALL                             R6 -1 1
       79 GETUPVAL                         R7 7
       80 GETTABLEKS                       R7 R7 K0 ["new"]
       82 NAMECALL                         R8 R3 K15 ["get"]
       84 CALL                             R8 1 -1
       85 CALL                             R7 -1 1
       86 GETUPVAL                         R8 8
       87 GETTABLEKS                       R8 R8 K0 ["new"]
       89 NAMECALL                         R9 R3 K15 ["get"]
       91 CALL                             R9 1 -1
       92 CALL                             R8 -1 1
       93 GETUPVAL                         R9 9
       94 GETTABLEKS                       R9 R9 K0 ["new"]
       96 NAMECALL                         R10 R3 K15 ["get"]
       98 CALL                             R10 1 -1
       99 CALL                             R9 -1 1
      100 LOADNIL                          R10
      101 GETUPVAL                         R11 10
      102 JUMPIFNOT                        R11 ; [+8]
      103 GETUPVAL                         R11 11
      104 GETTABLEKS                       R11 R11 K0 ["new"]
      106 NAMECALL                         R12 R3 K15 ["get"]
      108 CALL                             R12 1 -1
      109 CALL                             R11 -1 1
      110 MOVE                             R10 R11
      111 NAMECALL                         R11 R3 K15 ["get"]
      113 CALL                             R11 1 1
      114 SETTABLEKS                       R11 R2 K16 ["networking"]
      116 SETTABLEKS                       R4 R2 K17 ["groupMetadataController"]
      118 SETTABLEKS                       R5 R2 K18 ["groupRolePermisionsController"]
      120 SETTABLEKS                       R6 R2 K19 ["gamePermissionsController"]
      122 SETTABLEKS                       R7 R2 K20 ["granularPermissionsController"]
      124 SETTABLEKS                       R8 R2 K21 ["gameMetadataController"]
      126 SETTABLEKS                       R9 R2 K22 ["socialController"]
      128 GETUPVAL                         R11 10
      129 JUMPIFNOT                        R11 ; [+2]
      130 SETTABLEKS                       R10 R2 K23 ["likelyCollaboratorsController"]
      132 GETUPVAL                         R11 12
      133 GETTABLEKS                       R11 R11 K24 ["ThunkWithArgsMiddleware"]
      135 MOVE                             R12 R2
      136 CALL                             R11 1 1
      137 NEWTABLE                         R12 0 1
      139 MOVE                             R13 R11
      140 SETLIST                          R12 R13 1 [1]
      142 GETUPVAL                         R13 13
      143 GETTABLEKS                       R13 R13 K25 ["Store"]
      145 GETTABLEKS                       R13 R13 K0 ["new"]
      147 GETUPVAL                         R14 14
      148 LOADNIL                          R15
      149 MOVE                             R16 R12
      150 CALL                             R13 3 1
      151 SETTABLEKS                       R13 R0 K26 ["store"]
      153 GETUPVAL                         R13 15
      154 GETTABLEKS                       R13 R13 K27 ["Localization"]
      156 GETTABLEKS                       R13 R13 K0 ["new"]
      158 DUPTABLE                         R14 K31 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
      159 GETUPVAL                         R15 16
      160 SETTABLEKS                       R15 R14 K28 ["stringResourceTable"]
      162 GETUPVAL                         R15 17
      163 SETTABLEKS                       R15 R14 K29 ["translationResourceTable"]
      165 LOADK                            R15 K32 ["ManageCollaborators"]
      166 SETTABLEKS                       R15 R14 K30 ["pluginName"]
      168 CALL                             R13 1 1
      169 SETTABLEKS                       R13 R0 K33 ["localization"]
      171 GETUPVAL                         R13 15
      172 GETTABLEKS                       R13 R13 K34 ["Analytics"]
      174 GETTABLEKS                       R13 R13 K0 ["new"]
      176 DUPCLOSURE                       R14 K35 [PROTO_5]
      177 NEWTABLE                         R15 0 0
      179 CALL                             R13 2 1
      180 SETTABLEKS                       R13 R0 K36 ["analytics"]
      182 GETTABLEKS                       R13 R1 K1 ["Plugin"]
      184 LOADK                            R15 K37 ["Actions"]
      185 NAMECALL                         R13 R13 K38 ["GetPluginComponent"]
      187 CALL                             R13 2 1
      188 DUPTABLE                         R16 K44 [{"DataModel", "PluginId", "PluginType", "Category", "ItemId"}]
      189 LOADK                            R17 K45 ["Standalone"]
      190 SETTABLEKS                       R17 R16 K39 ["DataModel"]
      192 LOADK                            R17 K32 ["ManageCollaborators"]
      193 SETTABLEKS                       R17 R16 K40 ["PluginId"]
      195 LOADK                            R17 K46 ["Unknown"]
      196 SETTABLEKS                       R17 R16 K41 ["PluginType"]
      198 LOADK                            R17 K37 ["Actions"]
      199 SETTABLEKS                       R17 R16 K42 ["Category"]
      201 LOADK                            R17 K47 ["Open"]
      202 SETTABLEKS                       R17 R16 K43 ["ItemId"]
      204 NAMECALL                         R14 R13 K48 ["BindToActivatedAsync"]
      206 CALL                             R14 2 1
      207 NEWCLOSURE                       R16 P5
      208 CAPTURE                          VAL R0
      209 NAMECALL                         R14 R14 K49 ["Connect"]
      211 CALL                             R14 2 1
      212 SETTABLEKS                       R14 R0 K50 ["onActionActivated"]
      214 GETUPVAL                         R14 18
      215 GETTABLEKS                       R14 R14 K51 ["Util"]
      217 GETTABLEKS                       R14 R14 K52 ["createFoundationDesignBinding"]
      219 CALL                             R14 0 2
      220 SETTABLEKS                       R15 R0 K53 ["onFoundationStyleSheetChange"]
      222 GETUPVAL                         R16 19
      223 GETTABLEKS                       R16 R16 K0 ["new"]
      225 GETUPVAL                         R17 20
      226 GETTABLEKS                       R18 R1 K1 ["Plugin"]
      228 LOADNIL                          R19
      229 LOADNIL                          R20
      230 NEWTABLE                         R21 0 1
      232 MOVE                             R22 R14
      233 SETLIST                          R21 R22 1 [1]
      235 CALL                             R17 4 -1
      236 CALL                             R16 -1 1
      237 SETTABLEKS                       R16 R0 K54 ["design"]
      239 GETUPVAL                         R16 21
      240 JUMPIFNOT                        R16 ; [+33]
      241 NEWCLOSURE                       R16 P6
      242 CAPTURE                          UPVAL U22
      243 CAPTURE                          UPVAL U23
      244 CAPTURE                          UPVAL U24
      245 CAPTURE                          UPVAL U1
      246 NEWCLOSURE                       R17 P7
      247 CAPTURE                          VAL R0
      248 CAPTURE                          UPVAL U25
      249 CAPTURE                          UPVAL U26
      250 CAPTURE                          UPVAL U27
      251 CAPTURE                          UPVAL U1
      252 CAPTURE                          VAL R16
      253 SETTABLEKS                       R17 R0 K55 ["fetchLink"]
      255 NEWCLOSURE                       R18 P8
      256 CAPTURE                          UPVAL U28
      257 CAPTURE                          VAL R17
      258 CAPTURE                          UPVAL U1
      259 GETIMPORT                        R19 K57 [game]
      261 GETTABLEKS                       R19 R19 K58 ["PlaceId"]
      263 JUMPIFEQKN                       R19 K59 [0] ; [+10]
      265 GETUPVAL                         R19 28
      266 CALL                             R19 0 1
      267 JUMPIF                           R19 ; [+1]
      268 JUMP                             ; [+5]
      269 MOVE                             R19 R17
      270 GETUPVAL                         R20 1
      271 GETTABLEKS                       R20 R20 K7 ["LINKTYPE_EDIT"]
      273 CALL                             R19 1 0
      274 GETUPVAL                         R17 29
      275 NOT                              R16 R17
      276 JUMPIFNOT                        R16 ; [+14]
      277 NEWCLOSURE                       R16 P9
      278 CAPTURE                          UPVAL U28
      279 CAPTURE                          UPVAL U25
      280 CAPTURE                          UPVAL U26
      281 CAPTURE                          UPVAL U27
      282 CAPTURE                          UPVAL U23
      283 CAPTURE                          UPVAL U30
      284 CAPTURE                          UPVAL U31
      285 CAPTURE                          UPVAL U32
      286 CAPTURE                          UPVAL U33
      287 CAPTURE                          UPVAL U34
      288 CAPTURE                          VAL R1
      289 CAPTURE                          UPVAL U35
      290 CAPTURE                          UPVAL U36
      291 SETTABLEKS                       R16 R0 K60 ["getCollabAuthStatus"]
      293 RETURN                           R0 0

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
        0 DUPTABLE                         R1 K1 [{"shouldPromptCollabAuth"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["shouldPromptCollabAuth"]
        4 RETURN                           R1 1

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
       52 DUPTABLE                         R11 K25 [{"CreateWidgetImmediately", "Enabled", "Modal", "Title", "Size", "OnClose"}]
       53 LOADB                            R12 1
       54 SETTABLEKS                       R12 R11 K19 ["CreateWidgetImmediately"]
       56 SETTABLEKS                       R3 R11 K20 ["Enabled"]
       58 GETUPVAL                         R13 6
       59 NOT                              R12 R13
       60 SETTABLEKS                       R12 R11 K21 ["Modal"]
       62 GETTABLEKS                       R12 R0 K13 ["localization"]
       64 LOADK                            R14 K11 ["Plugin"]
       65 LOADK                            R15 K22 ["Title"]
       66 NAMECALL                         R12 R12 K26 ["getText"]
       68 CALL                             R12 3 1
       69 SETTABLEKS                       R12 R11 K22 ["Title"]
       71 GETIMPORT                        R12 K28 [Vector2.new]
       73 LOADN                            R13 32
       74 LOADN                            R14 59
       75 CALL                             R12 2 1
       76 SETTABLEKS                       R12 R11 K23 ["Size"]
       78 GETTABLEKS                       R12 R0 K29 ["onClose"]
       80 SETTABLEKS                       R12 R11 K24 ["OnClose"]
       82 GETUPVAL                         R12 7
       83 GETTABLEKS                       R12 R12 K18 ["createElement"]
       85 GETUPVAL                         R13 8
       86 DUPTABLE                         R14 K31 [{"onStyleSheetChange"}]
       87 GETTABLEKS                       R15 R0 K32 ["onFoundationStyleSheetChange"]
       89 SETTABLEKS                       R15 R14 K30 ["onStyleSheetChange"]
       91 DUPTABLE                         R15 K35 [{"PermissionsView", "SaveToRobloxView"}]
       92 JUMPIFNOT                        R4 ; [+38]
       93 GETUPVAL                         R16 4
       94 GETTABLEKS                       R16 R16 K18 ["createElement"]
       96 GETUPVAL                         R17 9
       97 DUPTABLE                         R18 K40 [{"CloseWidget", "Plugin", "Enabled", "Links", "FetchLink", "ShowSafetyBanner"}]
       98 GETTABLEKS                       R19 R0 K29 ["onClose"]
      100 SETTABLEKS                       R19 R18 K36 ["CloseWidget"]
      102 GETTABLEKS                       R19 R0 K8 ["plugin"]
      104 SETTABLEKS                       R19 R18 K11 ["Plugin"]
      106 SETTABLEKS                       R3 R18 K20 ["Enabled"]
      108 GETTABLEKS                       R19 R0 K1 ["state"]
      110 GETTABLEKS                       R19 R19 K41 ["links"]
      112 SETTABLEKS                       R19 R18 K37 ["Links"]
      114 GETTABLEKS                       R19 R0 K42 ["fetchLink"]
      116 SETTABLEKS                       R19 R18 K38 ["FetchLink"]
      118 GETUPVAL                         R19 10
      119 JUMPIFNOT                        R19 ; [+7]
      120 GETUPVAL                         R20 11
      121 NOT                              R19 R20
      122 JUMPIFNOT                        R19 ; [+4]
      123 GETTABLEKS                       R19 R0 K1 ["state"]
      125 GETTABLEKS                       R19 R19 K43 ["shouldPromptCollabAuth"]
      127 SETTABLEKS                       R19 R18 K39 ["ShowSafetyBanner"]
      129 CALL                             R16 2 1
      130 JUMPIF                           R16 ; [+1]
      131 LOADNIL                          R16
      132 SETTABLEKS                       R16 R15 K33 ["PermissionsView"]
      134 NOT                              R16 R4
      135 JUMPIFNOT                        R16 ; [+10]
      136 GETUPVAL                         R16 4
      137 GETTABLEKS                       R16 R16 K18 ["createElement"]
      139 GETUPVAL                         R17 12
      140 DUPTABLE                         R18 K44 [{"CloseWidget"}]
      141 GETTABLEKS                       R19 R0 K29 ["onClose"]
      143 SETTABLEKS                       R19 R18 K36 ["CloseWidget"]
      145 CALL                             R16 2 1
      146 SETTABLEKS                       R16 R15 K34 ["SaveToRobloxView"]
      148 CALL                             R12 3 -1
      149 CALL                             R9 -1 1
      150 SETTABLEKS                       R9 R8 K16 ["Dialog"]
      152 CALL                             R6 2 -1
      153 RETURN                           R6 -1

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
      334 DUPTABLE                         R51 K72 [{"Uri", "Text", "Enabled"}]
      335 DUPTABLE                         R52 K77 [{"DataModel", "PluginId", "Category", "ItemId"}]
      336 LOADK                            R53 K78 ["Standalone"]
      337 SETTABLEKS                       R53 R52 K73 ["DataModel"]
      339 LOADK                            R53 K79 ["LogoutMenu"]
      340 SETTABLEKS                       R53 R52 K74 ["PluginId"]
      342 LOADK                            R53 K80 ["Settings"]
      343 SETTABLEKS                       R53 R52 K75 ["Category"]
      345 LOADK                            R53 K81 ["UserIsAMPAgeVerified"]
      346 SETTABLEKS                       R53 R52 K76 ["ItemId"]
      348 SETTABLEKS                       R52 R51 K69 ["Uri"]
      350 LOADK                            R52 K82 ["placeholder"]
      351 SETTABLEKS                       R52 R51 K70 ["Text"]
      353 LOADB                            R52 1
      354 SETTABLEKS                       R52 R51 K71 ["Enabled"]
      356 GETIMPORT                        R52 K4 [game]
      358 LOADK                            R54 K83 ["UpsellTreatAMPErrorAsShowBanner"]
      359 NAMECALL                         R52 R52 K6 ["GetFastFlag"]
      361 CALL                             R52 2 1
      362 GETIMPORT                        R53 K4 [game]
      364 LOADK                            R55 K84 ["UpsellTreatAMPActionableAsShowBanner"]
      365 NAMECALL                         R53 R53 K6 ["GetFastFlag"]
      367 CALL                             R53 2 1
      368 GETIMPORT                        R54 K4 [game]
      370 LOADK                            R56 K85 ["UpsellCollabTrustedConnection2"]
      371 NAMECALL                         R54 R54 K6 ["GetFastFlag"]
      373 CALL                             R54 2 1
      374 NEWCLOSURE                       R55 P0
      375 CAPTURE                          VAL R17
      376 CAPTURE                          VAL R39
      377 CAPTURE                          VAL R38
      378 CAPTURE                          VAL R28
      379 CAPTURE                          VAL R29
      380 CAPTURE                          VAL R30
      381 CAPTURE                          VAL R31
      382 CAPTURE                          VAL R32
      383 CAPTURE                          VAL R33
      384 CAPTURE                          VAL R34
      385 CAPTURE                          VAL R36
      386 CAPTURE                          REF R37
      387 CAPTURE                          VAL R5
      388 CAPTURE                          VAL R3
      389 CAPTURE                          VAL R20
      390 CAPTURE                          VAL R16
      391 CAPTURE                          VAL R22
      392 CAPTURE                          VAL R23
      393 CAPTURE                          VAL R10
      394 CAPTURE                          VAL R13
      395 CAPTURE                          VAL R12
      396 CAPTURE                          VAL R7
      397 CAPTURE                          VAL R8
      398 CAPTURE                          VAL R46
      399 CAPTURE                          REF R40
      400 CAPTURE                          VAL R6
      401 CAPTURE                          VAL R42
      402 CAPTURE                          VAL R43
      403 CAPTURE                          VAL R44
      404 CAPTURE                          VAL R54
      405 CAPTURE                          VAL R49
      406 CAPTURE                          VAL R41
      407 CAPTURE                          VAL R52
      408 CAPTURE                          VAL R53
      409 CAPTURE                          VAL R47
      410 CAPTURE                          VAL R51
      411 CAPTURE                          VAL R50
      412 SETTABLEKS                       R55 R27 K86 ["init"]
      414 DUPCLOSURE                       R55 K87 [PROTO_22]
      415 CAPTURE                          VAL R48
      416 CAPTURE                          VAL R54
      417 SETTABLEKS                       R55 R27 K88 ["didUpdate"]
      419 DUPCLOSURE                       R55 K89 [PROTO_23]
      420 SETTABLEKS                       R55 R27 K90 ["componentWillUnmount"]
      422 DUPCLOSURE                       R55 K91 [PROTO_24]
      423 CAPTURE                          VAL R21
      424 CAPTURE                          VAL R16
      425 CAPTURE                          VAL R19
      426 CAPTURE                          VAL R18
      427 CAPTURE                          VAL R2
      428 CAPTURE                          VAL R15
      429 CAPTURE                          VAL R1
      430 CAPTURE                          VAL R9
      431 CAPTURE                          VAL R11
      432 CAPTURE                          VAL R25
      433 CAPTURE                          VAL R48
      434 CAPTURE                          VAL R54
      435 CAPTURE                          VAL R26
      436 SETTABLEKS                       R55 R27 K92 ["render"]
      438 CLOSEUPVALS                      R37
      439 RETURN                           R27 1
