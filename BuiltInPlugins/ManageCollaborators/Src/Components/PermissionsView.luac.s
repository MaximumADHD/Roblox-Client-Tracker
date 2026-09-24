PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+14]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K4 [{[1], ["action"], ["upsellEntrySurface"] = "manage_collaborators"}]
        5 GETUPVAL                         R5 3
        6 NAMECALL                         R5 R5 K5 ["GetUserId"]
        8 CALL                             R5 1 1
        9 SETTABLEKS                       R5 R4 K0 ["userid"]
       11 SETTABLEKS                       R0 R4 K1 ["action"]
       13 NAMECALL                         R1 R1 K6 ["logRobloxTelemetryEvent"]
       15 CALL                             R1 3 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+10]
        7 GETIMPORT                        R3 K3 [warn]
        9 LOADK                            R5 K4 ["OpenUrl failed: "]
       10 FASTCALL1                        TOSTRING R2 ; [+3]
       11 MOVE                             R7 R2
       12 GETIMPORT                        R6 K6 [tostring]
       14 CALL                             R6 1 1
       15 CONCAT                           R4 R5 R6
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OwnerType"]
        4 GETIMPORT                        R4 K5 [Enum.CreatorType.Group]
        6 JUMPIFEQ                         R2 R4 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetUserId"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["props"]
        6 GETTABLEKS                       R3 R2 K2 ["OwnerId"]
        8 GETTABLEKS                       R4 R2 K3 ["GroupOwnerUserId"]
       10 NAMECALL                         R5 R0 K4 ["isGroupGame"]
       12 CALL                             R5 1 1
       13 JUMPIFNOT                        R5 ; [+5]
       14 JUMPIFEQ                         R1 R4 ; [+2]
       16 LOADB                            R5 0 +1
       17 LOADB                            R5 1
       18 RETURN                           R5 1
       19 JUMPIFEQ                         R1 R3 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R2 R0 K0 ["isGroupGame"]
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_6:
        0 NEWTABLE                         R2 0 3
        2 DUPTABLE                         R3 K2 [{"id", "text"}]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K3 ["AUDIENCE_TAB_EDITORS"]
        6 SETTABLEKS                       R4 R3 K0 ["id"]
        8 LOADK                            R6 K4 ["AudienceTabs"]
        9 LOADK                            R7 K5 ["Editors"]
       10 NAMECALL                         R4 R1 K6 ["getText"]
       12 CALL                             R4 3 1
       13 SETTABLEKS                       R4 R3 K1 ["text"]
       15 DUPTABLE                         R4 K2 [{"id", "text"}]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K7 ["AUDIENCE_TAB_PLAY_TESTERS"]
       19 SETTABLEKS                       R5 R4 K0 ["id"]
       21 LOADK                            R7 K4 ["AudienceTabs"]
       22 LOADK                            R8 K8 ["PlayTesters"]
       23 NAMECALL                         R5 R1 K6 ["getText"]
       25 CALL                             R5 3 1
       26 SETTABLEKS                       R5 R4 K1 ["text"]
       28 DUPTABLE                         R5 K2 [{"id", "text"}]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K9 ["AUDIENCE_TAB_COMMUNITY_PLAYERS"]
       32 SETTABLEKS                       R6 R5 K0 ["id"]
       34 LOADK                            R8 K4 ["AudienceTabs"]
       35 LOADK                            R9 K10 ["CommunityPlayers"]
       36 NAMECALL                         R6 R1 K6 ["getText"]
       38 CALL                             R6 3 1
       39 SETTABLEKS                       R6 R5 K1 ["text"]
       41 SETLIST                          R2 R3 3 [1]
       43 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["scrollingFrameRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 JUMPIFNOT                        R1 ; [+22]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["props"]
        9 GETTABLEKS                       R2 R2 K3 ["Stylizer"]
       11 GETIMPORT                        R3 K6 [UDim2.new]
       13 LOADN                            R4 1
       14 LOADN                            R5 0
       15 LOADN                            R6 0
       16 GETTABLEKS                       R8 R0 K7 ["AbsoluteContentSize"]
       18 GETTABLEKS                       R8 R8 K8 ["Y"]
       20 GETTABLEKS                       R9 R2 K9 ["scrollingFrame"]
       22 GETTABLEKS                       R9 R9 K10 ["yPadding"]
       24 ADD                              R7 R8 R9
       25 CALL                             R3 4 1
       26 SETTABLEKS                       R3 R1 K11 ["CanvasSize"]
       28 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 DUPTABLE                         R3 K5 [{[1], ["action"] = "start", ["upsellEntrySurface"] = "manage_collaborators"}]
        5 GETUPVAL                         R4 3
        6 NAMECALL                         R4 R4 K6 ["GetUserId"]
        8 CALL                             R4 1 1
        9 SETTABLEKS                       R4 R3 K0 ["userid"]
       11 NAMECALL                         R0 R0 K7 ["logRobloxTelemetryEvent"]
       13 CALL                             R0 3 0
       14 GETUPVAL                         R0 4
       15 GETIMPORT                        R1 K9 [pcall]
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          VAL R0
       20 CALL                             R1 1 2
       21 JUMPIF                           R1 ; [+10]
       22 GETIMPORT                        R3 K11 [warn]
       24 LOADK                            R5 K12 ["OpenUrl failed: "]
       25 FASTCALL1                        TOSTRING R2 ; [+3]
       26 MOVE                             R7 R2
       27 GETIMPORT                        R6 K14 [tostring]
       29 CALL                             R6 1 1
       30 CONCAT                           R4 R5 R6
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 DUPTABLE                         R3 K5 [{[1], ["action"] = "tc_start", ["upsellEntrySurface"] = "manage_collaborators"}]
        5 GETUPVAL                         R4 3
        6 NAMECALL                         R4 R4 K6 ["GetUserId"]
        8 CALL                             R4 1 1
        9 SETTABLEKS                       R4 R3 K0 ["userid"]
       11 NAMECALL                         R0 R0 K7 ["logRobloxTelemetryEvent"]
       13 CALL                             R0 3 0
       14 GETUPVAL                         R0 4
       15 GETTABLEKS                       R0 R0 K8 ["fstringCreatorHubImpactedExperiencesLink"]
       17 GETIMPORT                        R1 K10 [pcall]
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          VAL R0
       22 CALL                             R1 1 2
       23 JUMPIF                           R1 ; [+10]
       24 GETIMPORT                        R3 K12 [warn]
       26 LOADK                            R5 K13 ["OpenUrl failed: "]
       27 FASTCALL1                        TOSTRING R2 ; [+3]
       28 MOVE                             R7 R2
       29 GETIMPORT                        R6 K15 [tostring]
       31 CALL                             R6 1 1
       32 CONCAT                           R4 R5 R6
       33 CALL                             R3 1 0
       34 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["fflagManageCollaboratorsAgeGatingTelemetry"]
        3 JUMPIFNOT                        R3 ; [+2]
        4 ORK                              R2 R1 K1 ["owners_view"]
        5 JUMP                             ; [+1]
        6 LOADK                            R2 K1 ["owners_view"]
        7 GETUPVAL                         R3 1
        8 JUMPIFNOT                        R3 ; [+14]
        9 GETUPVAL                         R3 2
       10 GETUPVAL                         R5 3
       11 DUPTABLE                         R6 K6 [{["userid"], ["action"], ["upsellEntrySurface"] = "manage_collaborators"}]
       12 GETUPVAL                         R7 4
       13 NAMECALL                         R7 R7 K7 ["GetUserId"]
       15 CALL                             R7 1 1
       16 SETTABLEKS                       R7 R6 K2 ["userid"]
       18 SETTABLEKS                       R2 R6 K3 ["action"]
       20 NAMECALL                         R3 R3 K8 ["logRobloxTelemetryEvent"]
       22 CALL                             R3 3 0
       23 GETIMPORT                        R2 K11 [string.format]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K12 ["fstringCreatorHubOwnersViewLinkFormatStr"]
       28 FASTCALL1                        TOSTRING R0 ; [+3]
       29 MOVE                             R5 R0
       30 GETIMPORT                        R4 K14 [tostring]
       32 CALL                             R4 1 1
       33 CALL                             R2 2 1
       34 GETIMPORT                        R3 K16 [pcall]
       36 NEWCLOSURE                       R4 P0
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          VAL R2
       39 CALL                             R3 1 2
       40 JUMPIF                           R3 ; [+10]
       41 GETIMPORT                        R5 K18 [warn]
       43 LOADK                            R7 K19 ["OpenUrl failed: "]
       44 FASTCALL1                        TOSTRING R4 ; [+3]
       45 MOVE                             R9 R4
       46 GETIMPORT                        R8 K14 [tostring]
       48 CALL                             R8 1 1
       49 CONCAT                           R6 R7 R8
       50 CALL                             R5 1 0
       51 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 DUPTABLE                         R3 K5 [{[1], ["action"] = "view_all_permissions", ["upsellEntrySurface"] = "manage_collaborators"}]
        5 GETUPVAL                         R4 3
        6 NAMECALL                         R4 R4 K6 ["GetUserId"]
        8 CALL                             R4 1 1
        9 SETTABLEKS                       R4 R3 K0 ["userid"]
       11 NAMECALL                         R0 R0 K7 ["logRobloxTelemetryEvent"]
       13 CALL                             R0 3 0
       14 GETIMPORT                        R0 K10 [string.format]
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R1 R1 K11 ["fstringCreatorHubExperiencePermissionsLinkFormatStr"]
       19 GETIMPORT                        R3 K13 [game]
       21 GETTABLEKS                       R3 R3 K14 ["GameId"]
       23 FASTCALL1                        TOSTRING R3 ; [+2]
       24 GETIMPORT                        R2 K16 [tostring]
       26 CALL                             R2 1 1
       27 CALL                             R0 2 1
       28 GETIMPORT                        R1 K18 [pcall]
       30 NEWCLOSURE                       R2 P0
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          VAL R0
       33 CALL                             R1 1 2
       34 JUMPIF                           R1 ; [+10]
       35 GETIMPORT                        R3 K20 [warn]
       37 LOADK                            R5 K21 ["OpenUrl failed: "]
       38 FASTCALL1                        TOSTRING R2 ; [+3]
       39 MOVE                             R7 R2
       40 GETIMPORT                        R6 K16 [tostring]
       42 CALL                             R6 1 1
       43 CONCAT                           R4 R5 R6
       44 CALL                             R3 1 0
       45 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R1 K2 [{[1] = True}]
        1 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K5 [{[1], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators_tc_dialog"}]
        3 GETUPVAL                         R4 2
        4 NAMECALL                         R4 R4 K6 ["GetUserId"]
        6 CALL                             R4 1 1
        7 SETTABLEKS                       R4 R3 K0 ["userId"]
        9 NAMECALL                         R0 R0 K7 ["logRobloxTelemetryEvent"]
       11 CALL                             R0 3 0
       12 GETUPVAL                         R0 3
       13 DUPCLOSURE                       R2 K8 [PROTO_12]
       14 NAMECALL                         R0 R0 K9 ["setState"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R1 K3 [{[1] = False, ["ActiveAudienceTab"]}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K4 ["AUDIENCE_TAB_EDITORS"]
        4 SETTABLEKS                       R2 R1 K2 ["ActiveAudienceTab"]
        6 SETTABLEKS                       R1 R0 K5 ["state"]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K6 ["createRef"]
       11 CALL                             R1 0 1
       12 SETTABLEKS                       R1 R0 K7 ["scrollingFrameRef"]
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K8 ["contentHeightChanged"]
       18 DUPCLOSURE                       R1 K9 [PROTO_8]
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U7
       25 SETTABLEKS                       R1 R0 K10 ["launchFAEPlusVPC"]
       27 DUPCLOSURE                       R1 K11 [PROTO_9]
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U8
       33 CAPTURE                          UPVAL U7
       34 SETTABLEKS                       R1 R0 K12 ["launchCreatorHub"]
       36 DUPCLOSURE                       R1 K13 [PROTO_10]
       37 CAPTURE                          UPVAL U8
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          UPVAL U7
       43 SETTABLEKS                       R1 R0 K14 ["launchCreatorHubUniverseSafetyView"]
       45 DUPCLOSURE                       R1 K15 [PROTO_11]
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          UPVAL U7
       52 SETTABLEKS                       R1 R0 K16 ["launchCreatorHubExperiencePermissionsView"]
       54 NEWCLOSURE                       R1 P5
       55 CAPTURE                          UPVAL U3
       56 CAPTURE                          UPVAL U9
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R1 R0 K17 ["launchModal"]
       61 RETURN                           R0 0

PROTO_15:
        0 JUMPIFNOT                        R0 ; [+18]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 DUPTABLE                         R4 K5 [{[1], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators"}]
        4 GETUPVAL                         R5 2
        5 NAMECALL                         R5 R5 K6 ["GetUserId"]
        7 CALL                             R5 1 1
        8 SETTABLEKS                       R5 R4 K0 ["userId"]
       10 NAMECALL                         R1 R1 K7 ["logRobloxTelemetryEvent"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R1 3
       14 DUPTABLE                         R3 K10 [{["ShowSafetyBanner"] = True}]
       15 NAMECALL                         R1 R1 K11 ["setState"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 3
       20 DUPTABLE                         R3 K13 [{["ShowSafetyBanner"] = False}]
       21 NAMECALL                         R1 R1 K11 ["setState"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_16]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_18:
        0 JUMPIFNOT                        R0 ; [+18]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 DUPTABLE                         R4 K5 [{[1], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators_establish_trust"}]
        4 GETUPVAL                         R5 2
        5 NAMECALL                         R5 R5 K6 ["GetUserId"]
        7 CALL                             R5 1 1
        8 SETTABLEKS                       R5 R4 K0 ["userId"]
       10 NAMECALL                         R1 R1 K7 ["logRobloxTelemetryEvent"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R1 3
       14 DUPTABLE                         R3 K10 [{["ShowTrustedConnectionsBanner"] = True}]
       15 NAMECALL                         R1 R1 K11 ["setState"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 3
       20 DUPTABLE                         R3 K13 [{["ShowTrustedConnectionsBanner"] = False}]
       21 NAMECALL                         R1 R1 K11 ["setState"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_19:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_19]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"ShowTrustedConnectionsOption"}]
        2 SETTABLEKS                       R0 R3 K0 ["ShowTrustedConnectionsOption"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_22:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_22]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_24:
        0 JUMPIFNOT                        R0 ; [+18]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 DUPTABLE                         R4 K5 [{[1], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators_reverification_banner"}]
        4 GETUPVAL                         R5 2
        5 NAMECALL                         R5 R5 K6 ["GetUserId"]
        7 CALL                             R5 1 1
        8 SETTABLEKS                       R5 R4 K0 ["userId"]
       10 NAMECALL                         R1 R1 K7 ["logRobloxTelemetryEvent"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R1 3
       14 DUPTABLE                         R3 K10 [{["ShowReverificationBanner"] = True}]
       15 NAMECALL                         R1 R1 K11 ["setState"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 3
       20 DUPTABLE                         R3 K13 [{["ShowReverificationBanner"] = False}]
       21 NAMECALL                         R1 R1 K11 ["setState"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_25:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_25]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R2 R1 K0 ["Enabled"]
        2 JUMPIF                           R2 ; [+80]
        3 GETTABLEKS                       R2 R0 K1 ["props"]
        5 GETTABLEKS                       R2 R2 K0 ["Enabled"]
        7 JUMPIFNOT                        R2 ; [+75]
        8 GETUPVAL                         R2 0
        9 JUMPIFNOT                        R2 ; [+52]
       10 GETUPVAL                         R2 1
       11 LOADK                            R3 K2 ["ShouldShowCollabBanner"]
       12 LOADK                            R4 K3 ["studio/CollaborationSettings"]
       13 CALL                             R2 2 1
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R0
       19 NAMECALL                         R2 R2 K4 ["andThen"]
       21 CALL                             R2 2 1
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          VAL R0
       24 NAMECALL                         R2 R2 K5 ["catch"]
       26 CALL                             R2 2 0
       27 GETUPVAL                         R2 1
       28 LOADK                            R3 K6 ["ShowEstablishTrustBanner"]
       29 LOADK                            R4 K3 ["studio/CollaborationSettings"]
       30 CALL                             R2 2 1
       31 NEWCLOSURE                       R4 P2
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R0
       36 NAMECALL                         R2 R2 K4 ["andThen"]
       38 CALL                             R2 2 1
       39 NEWCLOSURE                       R4 P3
       40 CAPTURE                          VAL R0
       41 NAMECALL                         R2 R2 K5 ["catch"]
       43 CALL                             R2 2 0
       44 GETUPVAL                         R2 5
       45 GETTABLEKS                       R2 R2 K7 ["fflagUpsellCollabTrustedConnectionShowUpsellDialog"]
       47 JUMPIFNOT                        R2 ; [+14]
       48 GETUPVAL                         R2 1
       49 LOADK                            R3 K8 ["ShowTrustedConnectionsOption"]
       50 LOADK                            R4 K3 ["studio/CollaborationSettings"]
       51 CALL                             R2 2 1
       52 NEWCLOSURE                       R4 P4
       53 CAPTURE                          VAL R0
       54 NAMECALL                         R2 R2 K4 ["andThen"]
       56 CALL                             R2 2 1
       57 NEWCLOSURE                       R4 P5
       58 CAPTURE                          VAL R0
       59 NAMECALL                         R2 R2 K5 ["catch"]
       61 CALL                             R2 2 0
       62 GETUPVAL                         R2 5
       63 GETTABLEKS                       R2 R2 K9 ["fflagUpsellMCCollabReverification"]
       65 JUMPIFNOT                        R2 ; [+17]
       66 GETUPVAL                         R2 1
       67 LOADK                            R3 K10 ["ShouldShowStudioAgeReverificationRequiredBanner"]
       68 LOADK                            R4 K3 ["studio/CollaborationSettings"]
       69 CALL                             R2 2 1
       70 NEWCLOSURE                       R4 P6
       71 CAPTURE                          UPVAL U2
       72 CAPTURE                          UPVAL U3
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          VAL R0
       75 NAMECALL                         R2 R2 K4 ["andThen"]
       77 CALL                             R2 2 1
       78 NEWCLOSURE                       R4 P7
       79 CAPTURE                          VAL R0
       80 NAMECALL                         R2 R2 K5 ["catch"]
       82 CALL                             R2 2 0
       83 GETUPVAL                         R2 5
       84 GETTABLEKS                       R2 R2 K11 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
       86 JUMPIFNOT                        R2 ; [+55]
       87 GETTABLEKS                       R2 R0 K1 ["props"]
       89 GETTABLEKS                       R2 R2 K12 ["HasOutsideAgeBucketEditCollaborators"]
       91 GETTABLEKS                       R3 R1 K12 ["HasOutsideAgeBucketEditCollaborators"]
       93 JUMPIFEQ                         R2 R3 ; [+48]
       95 GETUPVAL                         R2 5
       96 GETTABLEKS                       R2 R2 K13 ["fflagManageCollaboratorsAgeGatingTelemetry"]
       98 JUMPIFNOT                        R2 ; [+33]
       99 NAMECALL                         R2 R0 K14 ["isLoggedInUserGameOwner"]
      101 CALL                             R2 1 1
      102 JUMPIFNOT                        R2 ; [+29]
      103 GETTABLEKS                       R2 R0 K1 ["props"]
      105 GETTABLEKS                       R2 R2 K12 ["HasOutsideAgeBucketEditCollaborators"]
      107 JUMPIFNOT                        R2 ; [+24]
      108 GETUPVAL                         R2 2
      109 GETUPVAL                         R4 3
      110 DUPTABLE                         R5 K22 [{["userId"], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators_outside_age_bucket_banner", ["placeId"], ["universeId"]}]
      111 GETUPVAL                         R6 4
      112 NAMECALL                         R6 R6 K23 ["GetUserId"]
      114 CALL                             R6 1 1
      115 SETTABLEKS                       R6 R5 K15 ["userId"]
      117 GETIMPORT                        R6 K25 [game]
      119 GETTABLEKS                       R6 R6 K26 ["PlaceId"]
      121 SETTABLEKS                       R6 R5 K20 ["placeId"]
      123 GETIMPORT                        R6 K25 [game]
      125 GETTABLEKS                       R6 R6 K27 ["GameId"]
      127 SETTABLEKS                       R6 R5 K21 ["universeId"]
      129 NAMECALL                         R2 R2 K28 ["logRobloxTelemetryEvent"]
      131 CALL                             R2 3 0
      132 DUPTABLE                         R4 K30 [{"ShowOutsideAgeBucketBanner"}]
      133 GETTABLEKS                       R5 R0 K1 ["props"]
      135 GETTABLEKS                       R5 R5 K12 ["HasOutsideAgeBucketEditCollaborators"]
      137 SETTABLEKS                       R5 R4 K29 ["ShowOutsideAgeBucketBanner"]
      139 NAMECALL                         R2 R0 K31 ["setState"]
      141 CALL                             R2 2 0
      142 GETUPVAL                         R2 5
      143 GETTABLEKS                       R2 R2 K32 ["fflagManageCollaboratorsEditorBlockingBanner"]
      145 JUMPIFNOT                        R2 ; [+55]
      146 GETTABLEKS                       R2 R0 K1 ["props"]
      148 GETTABLEKS                       R2 R2 K33 ["HasCurrentUserBlockingCollaborators"]
      150 GETTABLEKS                       R3 R1 K33 ["HasCurrentUserBlockingCollaborators"]
      152 JUMPIFEQ                         R2 R3 ; [+48]
      154 GETUPVAL                         R2 5
      155 GETTABLEKS                       R2 R2 K13 ["fflagManageCollaboratorsAgeGatingTelemetry"]
      157 JUMPIFNOT                        R2 ; [+33]
      158 NAMECALL                         R2 R0 K14 ["isLoggedInUserGameOwner"]
      160 CALL                             R2 1 1
      161 JUMPIF                           R2 ; [+29]
      162 GETTABLEKS                       R2 R0 K1 ["props"]
      164 GETTABLEKS                       R2 R2 K33 ["HasCurrentUserBlockingCollaborators"]
      166 JUMPIFNOT                        R2 ; [+24]
      167 GETUPVAL                         R2 2
      168 GETUPVAL                         R4 3
      169 DUPTABLE                         R5 K35 [{["userId"], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators_editor_blocking_banner", ["placeId"], ["universeId"]}]
      170 GETUPVAL                         R6 4
      171 NAMECALL                         R6 R6 K23 ["GetUserId"]
      173 CALL                             R6 1 1
      174 SETTABLEKS                       R6 R5 K15 ["userId"]
      176 GETIMPORT                        R6 K25 [game]
      178 GETTABLEKS                       R6 R6 K26 ["PlaceId"]
      180 SETTABLEKS                       R6 R5 K20 ["placeId"]
      182 GETIMPORT                        R6 K25 [game]
      184 GETTABLEKS                       R6 R6 K27 ["GameId"]
      186 SETTABLEKS                       R6 R5 K21 ["universeId"]
      188 NAMECALL                         R2 R2 K28 ["logRobloxTelemetryEvent"]
      190 CALL                             R2 3 0
      191 DUPTABLE                         R4 K37 [{"ShowEditorBlockingBanner"}]
      192 GETTABLEKS                       R5 R0 K1 ["props"]
      194 GETTABLEKS                       R5 R5 K33 ["HasCurrentUserBlockingCollaborators"]
      196 SETTABLEKS                       R5 R4 K36 ["ShowEditorBlockingBanner"]
      198 NAMECALL                         R2 R0 K31 ["setState"]
      200 CALL                             R2 2 0
      201 GETUPVAL                         R2 5
      202 GETTABLEKS                       R2 R2 K38 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      204 JUMPIFNOT                        R2 ; [+51]
      205 GETTABLEKS                       R2 R0 K1 ["props"]
      207 GETTABLEKS                       R2 R2 K39 ["OwnerIsNotAgeVerified"]
      209 GETTABLEKS                       R3 R1 K39 ["OwnerIsNotAgeVerified"]
      211 JUMPIFEQ                         R2 R3 ; [+44]
      213 GETUPVAL                         R2 5
      214 GETTABLEKS                       R2 R2 K13 ["fflagManageCollaboratorsAgeGatingTelemetry"]
      216 JUMPIFNOT                        R2 ; [+29]
      217 GETTABLEKS                       R2 R0 K1 ["props"]
      219 GETTABLEKS                       R2 R2 K39 ["OwnerIsNotAgeVerified"]
      221 JUMPIFNOT                        R2 ; [+24]
      222 GETUPVAL                         R2 2
      223 GETUPVAL                         R4 3
      224 DUPTABLE                         R5 K41 [{["userId"], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators_owner_not_age_verified_banner", ["placeId"], ["universeId"]}]
      225 GETUPVAL                         R6 4
      226 NAMECALL                         R6 R6 K23 ["GetUserId"]
      228 CALL                             R6 1 1
      229 SETTABLEKS                       R6 R5 K15 ["userId"]
      231 GETIMPORT                        R6 K25 [game]
      233 GETTABLEKS                       R6 R6 K26 ["PlaceId"]
      235 SETTABLEKS                       R6 R5 K20 ["placeId"]
      237 GETIMPORT                        R6 K25 [game]
      239 GETTABLEKS                       R6 R6 K27 ["GameId"]
      241 SETTABLEKS                       R6 R5 K21 ["universeId"]
      243 NAMECALL                         R2 R2 K28 ["logRobloxTelemetryEvent"]
      245 CALL                             R2 3 0
      246 DUPTABLE                         R4 K43 [{"ShowOwnerNotAgeVerifiedBanner"}]
      247 GETTABLEKS                       R5 R0 K1 ["props"]
      249 GETTABLEKS                       R5 R5 K39 ["OwnerIsNotAgeVerified"]
      251 SETTABLEKS                       R5 R4 K42 ["ShowOwnerNotAgeVerifiedBanner"]
      253 NAMECALL                         R2 R0 K31 ["setState"]
      255 CALL                             R2 2 0
      256 GETUPVAL                         R2 5
      257 GETTABLEKS                       R2 R2 K44 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      259 JUMPIFNOT                        R2 ; [+51]
      260 GETTABLEKS                       R2 R0 K1 ["props"]
      262 GETTABLEKS                       R2 R2 K45 ["OwnerIsCountryBlocked"]
      264 GETTABLEKS                       R3 R1 K45 ["OwnerIsCountryBlocked"]
      266 JUMPIFEQ                         R2 R3 ; [+44]
      268 GETUPVAL                         R2 5
      269 GETTABLEKS                       R2 R2 K13 ["fflagManageCollaboratorsAgeGatingTelemetry"]
      271 JUMPIFNOT                        R2 ; [+29]
      272 GETTABLEKS                       R2 R0 K1 ["props"]
      274 GETTABLEKS                       R2 R2 K45 ["OwnerIsCountryBlocked"]
      276 JUMPIFNOT                        R2 ; [+24]
      277 GETUPVAL                         R2 2
      278 GETUPVAL                         R4 3
      279 DUPTABLE                         R5 K47 [{["userId"], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators_owner_country_blocked_banner", ["placeId"], ["universeId"]}]
      280 GETUPVAL                         R6 4
      281 NAMECALL                         R6 R6 K23 ["GetUserId"]
      283 CALL                             R6 1 1
      284 SETTABLEKS                       R6 R5 K15 ["userId"]
      286 GETIMPORT                        R6 K25 [game]
      288 GETTABLEKS                       R6 R6 K26 ["PlaceId"]
      290 SETTABLEKS                       R6 R5 K20 ["placeId"]
      292 GETIMPORT                        R6 K25 [game]
      294 GETTABLEKS                       R6 R6 K27 ["GameId"]
      296 SETTABLEKS                       R6 R5 K21 ["universeId"]
      298 NAMECALL                         R2 R2 K28 ["logRobloxTelemetryEvent"]
      300 CALL                             R2 3 0
      301 DUPTABLE                         R4 K49 [{"ShowOwnerCountryBlockedBanner"}]
      302 GETTABLEKS                       R5 R0 K1 ["props"]
      304 GETTABLEKS                       R5 R5 K45 ["OwnerIsCountryBlocked"]
      306 SETTABLEKS                       R5 R4 K48 ["ShowOwnerCountryBlockedBanner"]
      308 NAMECALL                         R2 R0 K31 ["setState"]
      310 CALL                             R2 2 0
      311 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["SavePermissions"]
        4 GETTABLEKS                       R3 R1 K2 ["SendAllSearchItemLogs"]
        6 MOVE                             R4 R2
        7 NAMECALL                         R5 R0 K3 ["isGroupGame"]
        9 CALL                             R5 1 1
       10 GETTABLEKS                       R6 R1 K4 ["OwnerId"]
       12 CALL                             R4 2 0
       13 MOVE                             R4 R3
       14 DUPTABLE                         R5 K10 [{["isAdded"] = True, ["isCanceled"] = False, ["isRemoved"] = False}]
       15 CALL                             R4 1 0
       16 GETUPVAL                         R4 0
       17 CALL                             R4 0 1
       18 JUMPIF                           R4 ; [+4]
       19 GETUPVAL                         R4 1
       20 NAMECALL                         R4 R4 K11 ["PublishThenTurnOnTeamCreate"]
       22 CALL                             R4 1 0
       23 RETURN                           R0 0

PROTO_29:
        0 JUMPIFNOTEQKS                    R0 K0 ["YES"] ; [+6]
        2 GETUPVAL                         R1 0
        3 DUPTABLE                         R2 K6 [{["isAdded"] = False, ["isCanceled"] = True, ["isRemoved"] = False}]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_30:
        0 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Plugin"]
        4 GETTABLEKS                       R4 R2 K2 ["Localization"]
        6 GETTABLEKS                       R5 R2 K3 ["Stylizer"]
        8 GETTABLEKS                       R6 R2 K4 ["CloseWidget"]
       10 GETTABLEKS                       R7 R2 K5 ["SendAllSearchItemLogs"]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R8 R8 K6 ["reportCancelPressed"]
       15 NAMECALL                         R9 R0 K7 ["isGroupGame"]
       17 CALL                             R9 1 -1
       18 CALL                             R8 -1 0
       19 JUMPIF                           R1 ; [+3]
       20 MOVE                             R8 R6
       21 CALL                             R8 0 0
       22 RETURN                           R0 0
       23 NEWTABLE                         R8 0 2
       25 DUPTABLE                         R9 K11 [{["Key"] = "NO", ["Text"]}]
       26 LOADK                            R12 K12 ["Buttons"]
       27 LOADK                            R13 K13 ["No"]
       28 NAMECALL                         R10 R4 K14 ["getText"]
       30 CALL                             R10 3 1
       31 SETTABLEKS                       R10 R9 K10 ["Text"]
       33 DUPTABLE                         R10 K18 [{["Key"] = "YES", ["Text"], ["Style"] = "RoundPrimary"}]
       34 LOADK                            R13 K12 ["Buttons"]
       35 LOADK                            R14 K19 ["Yes"]
       36 NAMECALL                         R11 R4 K14 ["getText"]
       38 CALL                             R11 3 1
       39 SETTABLEKS                       R11 R10 K10 ["Text"]
       41 SETLIST                          R8 R9 2 [1]
       43 GETUPVAL                         R9 1
       44 MOVE                             R10 R3
       45 MOVE                             R11 R4
       46 GETUPVAL                         R12 2
       47 DUPTABLE                         R13 K27 [{["Buttons"], ["MinContentSize"], ["Style"] = "CancelDialog", ["OnButtonPressed"], ["OnClose"], ["Title"], ["Modal"] = True}]
       48 SETTABLEKS                       R8 R13 K12 ["Buttons"]
       50 GETTABLEKS                       R14 R5 K28 ["cancelDialog"]
       52 GETTABLEKS                       R14 R14 K29 ["Size"]
       54 SETTABLEKS                       R14 R13 K20 ["MinContentSize"]
       56 NEWCLOSURE                       R14 P0
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R6
       59 SETTABLEKS                       R14 R13 K22 ["OnButtonPressed"]
       61 DUPCLOSURE                       R14 K30 [PROTO_30]
       62 SETTABLEKS                       R14 R13 K23 ["OnClose"]
       64 LOADK                            R16 K24 ["Title"]
       65 LOADK                            R17 K31 ["DiscardChanges"]
       66 NAMECALL                         R14 R4 K14 ["getText"]
       68 CALL                             R14 3 1
       69 SETTABLEKS                       R14 R13 K24 ["Title"]
       71 DUPTABLE                         R14 K33 [{"Contents"}]
       72 GETUPVAL                         R15 3
       73 GETTABLEKS                       R15 R15 K34 ["createElement"]
       75 LOADK                            R16 K35 ["TextLabel"]
       76 DUPTABLE                         R17 K43 [{["BackgroundTransparency"] = 1, ["TextSize"], ["Text"], ["TextColor3"], ["Font"], ["Size"], ["AnchorPoint"], ["Position"]}]
       77 GETTABLEKS                       R18 R5 K28 ["cancelDialog"]
       79 GETTABLEKS                       R18 R18 K10 ["Text"]
       81 GETTABLEKS                       R18 R18 K38 ["TextSize"]
       83 SETTABLEKS                       R18 R17 K38 ["TextSize"]
       85 LOADK                            R20 K44 ["Description"]
       86 LOADK                            R21 K31 ["DiscardChanges"]
       87 NAMECALL                         R18 R4 K14 ["getText"]
       89 CALL                             R18 3 1
       90 SETTABLEKS                       R18 R17 K10 ["Text"]
       92 GETTABLEKS                       R18 R5 K28 ["cancelDialog"]
       94 GETTABLEKS                       R18 R18 K10 ["Text"]
       96 GETTABLEKS                       R18 R18 K39 ["TextColor3"]
       98 SETTABLEKS                       R18 R17 K39 ["TextColor3"]
      100 GETTABLEKS                       R18 R5 K28 ["cancelDialog"]
      102 GETTABLEKS                       R18 R18 K10 ["Text"]
      104 GETTABLEKS                       R18 R18 K40 ["Font"]
      106 SETTABLEKS                       R18 R17 K40 ["Font"]
      108 GETIMPORT                        R18 K47 [UDim2.fromScale]
      110 LOADN                            R19 1
      111 LOADN                            R20 1
      112 CALL                             R18 2 1
      113 SETTABLEKS                       R18 R17 K29 ["Size"]
      115 GETIMPORT                        R18 K50 [Vector2.new]
      117 LOADK                            R19 K51 [0.5]
      118 LOADK                            R20 K51 [0.5]
      119 CALL                             R18 2 1
      120 SETTABLEKS                       R18 R17 K41 ["AnchorPoint"]
      122 GETTABLEKS                       R18 R5 K28 ["cancelDialog"]
      124 GETTABLEKS                       R18 R18 K42 ["Position"]
      126 SETTABLEKS                       R18 R17 K42 ["Position"]
      128 CALL                             R15 2 1
      129 SETTABLEKS                       R15 R14 K32 ["Contents"]
      131 CALL                             R9 5 0
      132 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onSavePressed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K5 [{[1] = False, ["isCanceled"] = True, ["isRemoved"] = False}]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 NAMECALL                         R0 R0 K6 ["PublishThenTurnOnTeamCreate"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 DUPTABLE                         R3 K5 [{[1], ["action"] = "reverify_start", ["upsellEntrySurface"] = "manage_collaborators"}]
        5 GETUPVAL                         R4 3
        6 NAMECALL                         R4 R4 K6 ["GetUserId"]
        8 CALL                             R4 1 1
        9 SETTABLEKS                       R4 R3 K0 ["userid"]
       11 NAMECALL                         R0 R0 K7 ["logRobloxTelemetryEvent"]
       13 CALL                             R0 3 0
       14 GETUPVAL                         R0 4
       15 GETIMPORT                        R1 K9 [pcall]
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          VAL R0
       20 CALL                             R1 1 2
       21 JUMPIF                           R1 ; [+10]
       22 GETIMPORT                        R3 K11 [warn]
       24 LOADK                            R5 K12 ["OpenUrl failed: "]
       25 FASTCALL1                        TOSTRING R2 ; [+3]
       26 MOVE                             R7 R2
       27 GETIMPORT                        R6 K14 [tostring]
       29 CALL                             R6 1 1
       30 CONCAT                           R4 R5 R6
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fflagManageCollaboratorsAgeGatingTelemetry"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["launchCreatorHubUniverseSafetyView"]
        7 GETIMPORT                        R1 K3 [game]
        9 GETTABLEKS                       R1 R1 K4 ["GameId"]
       11 LOADK                            R2 K5 ["owners_view_outside_age_bucket"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K1 ["launchCreatorHubUniverseSafetyView"]
       17 GETIMPORT                        R1 K3 [game]
       19 GETTABLEKS                       R1 R1 K4 ["GameId"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fflagManageCollaboratorsAgeGatingTelemetry"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["launchCreatorHubUniverseSafetyView"]
        7 GETIMPORT                        R1 K3 [game]
        9 GETTABLEKS                       R1 R1 K4 ["GameId"]
       11 LOADK                            R2 K5 ["owners_view_editor_blocking"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K1 ["launchCreatorHubUniverseSafetyView"]
       17 GETIMPORT                        R1 K3 [game]
       19 GETTABLEKS                       R1 R1 K4 ["GameId"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fflagManageCollaboratorsAgeGatingTelemetry"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+12]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 3
        8 DUPTABLE                         R3 K6 [{["userid"], ["action"] = "owner_not_age_verified_cta", ["upsellEntrySurface"] = "manage_collaborators"}]
        9 GETUPVAL                         R4 4
       10 NAMECALL                         R4 R4 K7 ["GetUserId"]
       12 CALL                             R4 1 1
       13 SETTABLEKS                       R4 R3 K1 ["userid"]
       15 NAMECALL                         R0 R0 K8 ["logRobloxTelemetryEvent"]
       17 CALL                             R0 3 0
       18 GETUPVAL                         R0 5
       19 GETIMPORT                        R1 K10 [pcall]
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          VAL R0
       24 CALL                             R1 1 2
       25 JUMPIF                           R1 ; [+10]
       26 GETIMPORT                        R3 K12 [warn]
       28 LOADK                            R5 K13 ["OpenUrl failed: "]
       29 FASTCALL1                        TOSTRING R2 ; [+3]
       30 MOVE                             R7 R2
       31 GETIMPORT                        R6 K15 [tostring]
       33 CALL                             R6 1 1
       34 CONCAT                           R4 R5 R6
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"ActiveAudienceTab"}]
        2 SETTABLEKS                       R0 R3 K0 ["ActiveAudienceTab"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"ActiveAudienceTab"}]
        2 SETTABLEKS                       R0 R3 K0 ["ActiveAudienceTab"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onSavePressed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onCancelPressed"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["launchCreatorHubExperiencePermissionsView"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_50:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Enabled"]
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R1 K2 ["Stylizer"]
        8 GETTABLEKS                       R3 R1 K3 ["Localization"]
       10 GETTABLEKS                       R4 R1 K4 ["SaveState"]
       12 GETTABLEKS                       R5 R1 K5 ["LoadState"]
       14 GETTABLEKS                       R6 R1 K6 ["HasCollaborators"]
       16 GETUPVAL                         R8 0
       17 JUMPIFNOT                        R8 ; [+5]
       18 GETTABLEKS                       R7 R0 K7 ["state"]
       20 GETTABLEKS                       R7 R7 K8 ["ShowSafetyBanner"]
       22 JUMP                             ; [+2]
       23 GETTABLEKS                       R7 R1 K8 ["ShowSafetyBanner"]
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R8 R8 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
       28 JUMPIFNOT                        R8 ; [+4]
       29 GETTABLEKS                       R8 R0 K7 ["state"]
       31 GETTABLEKS                       R8 R8 K10 ["ShowOwnerNotAgeVerifiedBanner"]
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R9 R9 K11 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
       36 JUMPIFNOT                        R9 ; [+6]
       37 GETTABLEKS                       R9 R0 K7 ["state"]
       39 GETTABLEKS                       R9 R9 K12 ["ShowOutsideAgeBucketBanner"]
       41 JUMPIFNOT                        R9 ; [+1]
       42 NOT                              R9 R8
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R10 R10 K13 ["fflagManageCollaboratorsEditorBlockingBanner"]
       46 JUMPIFNOT                        R10 ; [+4]
       47 GETTABLEKS                       R10 R0 K7 ["state"]
       49 GETTABLEKS                       R10 R10 K14 ["ShowEditorBlockingBanner"]
       51 GETUPVAL                         R11 1
       52 GETTABLEKS                       R11 R11 K15 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       54 JUMPIFNOT                        R11 ; [+4]
       55 GETTABLEKS                       R11 R0 K7 ["state"]
       57 GETTABLEKS                       R11 R11 K16 ["ShowOwnerCountryBlockedBanner"]
       59 GETTABLEKS                       R12 R0 K7 ["state"]
       61 GETTABLEKS                       R12 R12 K17 ["ShowTrustedConnectionsBanner"]
       63 GETUPVAL                         R14 1
       64 GETTABLEKS                       R14 R14 K18 ["fflagUpsellCollabTrustedConnectionShowUpsellDialog"]
       66 JUMPIFNOT                        R14 ; [+5]
       67 GETTABLEKS                       R13 R0 K7 ["state"]
       69 GETTABLEKS                       R13 R13 K19 ["ShowTrustedConnectionsOption"]
       71 JUMP                             ; [+1]
       72 LOADB                            R13 0
       73 GETUPVAL                         R14 1
       74 GETTABLEKS                       R14 R14 K20 ["fflagUpsellMCCollabReverification"]
       76 JUMPIFNOT                        R14 ; [+4]
       77 GETTABLEKS                       R14 R0 K7 ["state"]
       79 GETTABLEKS                       R14 R14 K21 ["ShowReverificationBanner"]
       81 GETTABLEKS                       R15 R1 K22 ["HasCurrentEditCollaborators"]
       83 GETTABLEKS                       R16 R1 K23 ["SendAllSearchItemLogs"]
       85 GETUPVAL                         R17 2
       86 GETTABLEKS                       R17 R17 K24 ["Saved"]
       88 JUMPIFNOTEQ                      R4 R17 ; [+5]
       90 GETTABLEKS                       R17 R1 K25 ["CloseWidget"]
       92 CALL                             R17 0 0
       93 RETURN                           R0 0
       94 GETUPVAL                         R18 3
       95 GETTABLEKS                       R18 R18 K26 ["Loaded"]
       97 JUMPIFEQ                         R5 R18 ; [+2]
       99 LOADB                            R17 0 +1
      100 LOADB                            R17 1
      101 GETUPVAL                         R18 4
      102 JUMPIFNOT                        R18 ; [+6]
      103 JUMPIFNOT                        R17 ; [+5]
      104 GETTABLEKS                       R18 R1 K27 ["PrefetchLikelyCollaborators"]
      106 GETTABLEKS                       R19 R1 K28 ["Is17PlusGame"]
      108 CALL                             R18 1 0
      109 LOADB                            R18 0
      110 LOADNIL                          R19
      111 GETUPVAL                         R20 3
      112 GETTABLEKS                       R20 R20 K29 ["Unloaded"]
      114 JUMPIFNOTEQ                      R5 R20 ; [+4]
      116 GETTABLEKS                       R20 R1 K30 ["LoadPermissions"]
      118 CALL                             R20 0 0
      119 GETUPVAL                         R20 3
      120 GETTABLEKS                       R20 R20 K31 ["LoadFailed"]
      122 JUMPIFEQ                         R5 R20 ; [+6]
      124 GETUPVAL                         R20 2
      125 GETTABLEKS                       R20 R20 K32 ["SaveFailed"]
      127 JUMPIFNOTEQ                      R4 R20 ; [+20]
      129 LOADB                            R18 1
      130 GETUPVAL                         R20 3
      131 GETTABLEKS                       R20 R20 K31 ["LoadFailed"]
      133 JUMPIFNOTEQ                      R5 R20 ; [+8]
      135 LOADK                            R22 K33 ["FailureMessage"]
      136 LOADK                            R23 K34 ["LoadFailure"]
      137 NAMECALL                         R20 R3 K35 ["getText"]
      139 CALL                             R20 3 1
      140 MOVE                             R19 R20
      141 JUMP                             ; [+6]
      142 LOADK                            R22 K33 ["FailureMessage"]
      143 LOADK                            R23 K36 ["SaveFailure"]
      144 NAMECALL                         R20 R3 K35 ["getText"]
      146 CALL                             R20 3 1
      147 MOVE                             R19 R20
      148 NAMECALL                         R20 R0 K37 ["isLoggedInUserGameOwner"]
      150 CALL                             R20 1 1
      151 GETTABLEKS                       R21 R1 K38 ["MigrationStatus"]
      153 GETUPVAL                         R22 5
      154 JUMPIFNOT                        R22 ; [+7]
      155 GETUPVAL                         R23 6
      156 GETTABLEKS                       R23 R23 K39 ["MIGRATING"]
      158 JUMPIFEQ                         R21 R23 ; [+2]
      160 LOADB                            R22 0 +1
      161 LOADB                            R22 1
      162 MOVE                             R23 R20
      163 GETUPVAL                         R24 5
      164 JUMPIFNOT                        R24 ; [+2]
      165 JUMPIFNOT                        R22 ; [+1]
      166 LOADB                            R23 0
      167 GETUPVAL                         R24 1
      168 GETTABLEKS                       R24 R24 K15 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      170 JUMPIFNOT                        R24 ; [+2]
      171 GETTABLEKS                       R24 R1 K40 ["OwnerIsCountryBlocked"]
      173 GETUPVAL                         R25 1
      174 GETTABLEKS                       R25 R25 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      176 JUMPIFNOT                        R25 ; [+2]
      177 GETTABLEKS                       R25 R1 K41 ["OwnerIsNotAgeVerified"]
      179 OR                               R26 R24 R25
      180 MOVE                             R27 R17
      181 JUMPIFNOT                        R27 ; [+1]
      182 NOT                              R27 R18
      183 GETUPVAL                         R28 7
      184 CALL                             R28 0 1
      185 MOVE                             R29 R27
      186 JUMPIFNOT                        R29 ; [+3]
      187 NOT                              R29 R28
      188 JUMPIFNOT                        R29 ; [+1]
      189 OR                               R29 R6 R15
      190 JUMPIFNOT                        R15 ; [+2]
      191 LOADK                            R30 K42 ["SaveEnableTcCurrentEditors"]
      192 JUMP                             ; [+1]
      193 LOADK                            R30 K43 ["SaveEnableTC"]
      194 LOADK                            R33 K44 ["Description"]
      195 MOVE                             R34 R30
      196 NAMECALL                         R31 R3 K35 ["getText"]
      198 CALL                             R31 3 1
      199 GETTABLEKS                       R32 R2 K45 ["header"]
      201 GETTABLEKS                       R32 R32 K46 ["height"]
      203 GETTABLEKS                       R33 R2 K47 ["footer"]
      205 GETTABLEKS                       R33 R33 K46 ["height"]
      207 JUMPIFNOT                        R29 ; [+5]
      208 GETTABLEKS                       R34 R2 K48 ["saveMessage"]
      210 GETTABLEKS                       R34 R34 K49 ["boxHeight"]
      212 ADD                              R33 R33 R34
      213 GETUPVAL                         R34 8
      214 JUMPIFNOT                        R34 ; [+1]
      215 ADD                              R33 R33 R32
      216 GETUPVAL                         R34 9
      217 GETTABLEKS                       R34 R34 K50 ["new"]
      219 CALL                             R34 0 1
      220 GETUPVAL                         R35 9
      221 GETTABLEKS                       R35 R35 K50 ["new"]
      223 CALL                             R35 0 1
      224 GETUPVAL                         R37 10
      225 JUMPIFNOT                        R37 ; [+5]
      226 GETUPVAL                         R36 9
      227 GETTABLEKS                       R36 R36 K50 ["new"]
      229 CALL                             R36 0 1
      230 JUMP                             ; [+1]
      231 LOADNIL                          R36
      232 GETUPVAL                         R37 10
      233 JUMPIFNOT                        R37 ; [+8]
      234 MOVE                             R37 R7
      235 JUMPIF                           R37 ; [+6]
      236 MOVE                             R37 R12
      237 JUMPIF                           R37 ; [+4]
      238 GETUPVAL                         R38 1
      239 GETTABLEKS                       R38 R38 K20 ["fflagUpsellMCCollabReverification"]
      241 AND                              R37 R38 R14
      242 LOADK                            R40 K51 ["UpsellBanner"]
      243 LOADK                            R41 K52 ["RecheckAge"]
      244 NAMECALL                         R38 R3 K35 ["getText"]
      246 CALL                             R38 3 1
      247 LOADK                            R41 K51 ["UpsellBanner"]
      248 LOADK                            R42 K53 ["AgeCheckNotValid"]
      249 NAMECALL                         R39 R3 K35 ["getText"]
      251 CALL                             R39 3 1
      252 LOADK                            R42 K54 ["Buttons"]
      253 LOADK                            R43 K55 ["Continue"]
      254 NAMECALL                         R40 R3 K35 ["getText"]
      256 CALL                             R40 3 1
      257 GETUPVAL                         R41 11
      258 GETTABLEKS                       R41 R41 K56 ["createElement"]
      260 LOADK                            R42 K57 ["Frame"]
      261 DUPTABLE                         R43 K60 [{"Size", "BackgroundColor3"}]
      262 GETIMPORT                        R44 K62 [UDim2.new]
      264 LOADN                            R45 1
      265 LOADN                            R46 0
      266 LOADN                            R47 1
      267 LOADN                            R48 0
      268 CALL                             R44 4 1
      269 SETTABLEKS                       R44 R43 K58 ["Size"]
      271 GETTABLEKS                       R44 R2 K63 ["backgroundColor"]
      273 SETTABLEKS                       R44 R43 K59 ["BackgroundColor3"]
      275 DUPTABLE                         R44 K81 [{"Layout", "HeaderContent", "Spacer", "UpsellBanner", "TrustedConnectionsBanner", "ReverificationBanner", "OutsideAgeBucketBanner", "EditorBlockingBanner", "OwnerNotAgeVerifiedBanner", "OwnerCountryBlockedBanner", "CollaborationSubtitleTitleView", "ScrollingFrameNew", "ScrollingFrame", "TextFrame", "upsellDialog", "FooterContent", "LoadingIndicator", "FailureText"}]
      276 MOVE                             R45 R27
      277 JUMPIFNOT                        R45 ; [+28]
      278 GETUPVAL                         R45 11
      279 GETTABLEKS                       R45 R45 K56 ["createElement"]
      281 LOADK                            R46 K82 ["UIListLayout"]
      282 DUPTABLE                         R47 K87 [{"FillDirection", "SortOrder", "HorizontalAlignment", "Padding"}]
      283 GETIMPORT                        R48 K90 [Enum.FillDirection.Vertical]
      285 SETTABLEKS                       R48 R47 K83 ["FillDirection"]
      287 GETIMPORT                        R48 K92 [Enum.SortOrder.LayoutOrder]
      289 SETTABLEKS                       R48 R47 K84 ["SortOrder"]
      291 GETIMPORT                        R48 K94 [Enum.HorizontalAlignment.Center]
      293 SETTABLEKS                       R48 R47 K85 ["HorizontalAlignment"]
      295 GETIMPORT                        R48 K96 [UDim.new]
      297 LOADN                            R49 0
      298 GETTABLEKS                       R50 R2 K97 ["permissionsView"]
      300 GETTABLEKS                       R50 R50 K86 ["Padding"]
      302 CALL                             R48 2 1
      303 SETTABLEKS                       R48 R47 K86 ["Padding"]
      305 CALL                             R45 2 1
      306 SETTABLEKS                       R45 R44 K64 ["Layout"]
      308 GETUPVAL                         R46 1
      309 GETTABLEKS                       R46 R46 K98 ["fflagRemoveHeaderWithUpsellBanner2"]
      311 NOT                              R45 R46
      312 JUMPIFNOT                        R45 ; [+73]
      313 NOT                              R45 R37
      314 JUMPIFNOT                        R45 ; [+71]
      315 GETUPVAL                         R45 8
      316 JUMPIFNOT                        R45 ; [+69]
      317 MOVE                             R45 R27
      318 JUMPIFNOT                        R45 ; [+67]
      319 GETUPVAL                         R45 11
      320 GETTABLEKS                       R45 R45 K56 ["createElement"]
      322 GETUPVAL                         R46 12
      323 DUPTABLE                         R47 K99 [{"LayoutOrder", "Size"}]
      324 NAMECALL                         R48 R34 K100 ["getNextOrder"]
      326 CALL                             R48 1 1
      327 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
      329 GETIMPORT                        R48 K62 [UDim2.new]
      331 LOADN                            R49 1
      332 LOADN                            R50 0
      333 LOADN                            R51 0
      334 GETTABLEKS                       R52 R2 K45 ["header"]
      336 GETTABLEKS                       R52 R52 K46 ["height"]
      338 CALL                             R48 4 1
      339 SETTABLEKS                       R48 R47 K58 ["Size"]
      341 DUPTABLE                         R48 K102 [{"Header"}]
      342 GETUPVAL                         R49 13
      343 GETTABLEKS                       R49 R49 K56 ["createElement"]
      345 GETUPVAL                         R50 14
      346 DUPTABLE                         R51 K110 [{"Stylizer", "Localization", "IsTeamCreateEnabled", "HasUnsavedChanges", "HasCollaborators", "Plugin", "SaveThenTurnOnTeamCreate", "TurnOnTeamCreate", "Links", "FetchLink"}]
      347 SETTABLEKS                       R2 R51 K2 ["Stylizer"]
      349 SETTABLEKS                       R3 R51 K3 ["Localization"]
      351 SETTABLEKS                       R28 R51 K103 ["IsTeamCreateEnabled"]
      353 GETTABLEKS                       R52 R1 K104 ["HasUnsavedChanges"]
      355 SETTABLEKS                       R52 R51 K104 ["HasUnsavedChanges"]
      357 GETTABLEKS                       R52 R1 K6 ["HasCollaborators"]
      359 SETTABLEKS                       R52 R51 K6 ["HasCollaborators"]
      361 GETTABLEKS                       R52 R1 K105 ["Plugin"]
      363 SETTABLEKS                       R52 R51 K105 ["Plugin"]
      365 NEWCLOSURE                       R52 P0
      366 CAPTURE                          VAL R0
      367 SETTABLEKS                       R52 R51 K106 ["SaveThenTurnOnTeamCreate"]
      369 NEWCLOSURE                       R52 P1
      370 CAPTURE                          VAL R16
      371 CAPTURE                          UPVAL U15
      372 SETTABLEKS                       R52 R51 K107 ["TurnOnTeamCreate"]
      374 GETTABLEKS                       R52 R1 K108 ["Links"]
      376 SETTABLEKS                       R52 R51 K108 ["Links"]
      378 GETTABLEKS                       R52 R1 K109 ["FetchLink"]
      380 SETTABLEKS                       R52 R51 K109 ["FetchLink"]
      382 CALL                             R49 2 1
      383 SETTABLEKS                       R49 R48 K101 ["Header"]
      385 CALL                             R45 3 1
      386 SETTABLEKS                       R45 R44 K65 ["HeaderContent"]
      388 GETUPVAL                         R45 1
      389 GETTABLEKS                       R45 R45 K98 ["fflagRemoveHeaderWithUpsellBanner2"]
      391 JUMPIFNOT                        R45 ; [+40]
      392 MOVE                             R45 R37
      393 JUMPIFNOT                        R45 ; [+38]
      394 GETUPVAL                         R46 1
      395 GETTABLEKS                       R46 R46 K11 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      397 JUMPIF                           R46 ; [+3]
      398 GETUPVAL                         R46 1
      399 GETTABLEKS                       R46 R46 K13 ["fflagManageCollaboratorsEditorBlockingBanner"]
      401 NOT                              R45 R46
      402 JUMPIFNOT                        R45 ; [+29]
      403 GETUPVAL                         R46 1
      404 GETTABLEKS                       R46 R46 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      406 JUMPIF                           R46 ; [+3]
      407 GETUPVAL                         R46 1
      408 GETTABLEKS                       R46 R46 K15 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      410 NOT                              R45 R46
      411 JUMPIFNOT                        R45 ; [+20]
      412 GETUPVAL                         R45 13
      413 GETTABLEKS                       R45 R45 K56 ["createElement"]
      415 GETUPVAL                         R46 16
      416 DUPTABLE                         R47 K99 [{"LayoutOrder", "Size"}]
      417 NAMECALL                         R48 R34 K100 ["getNextOrder"]
      419 CALL                             R48 1 1
      420 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
      422 GETIMPORT                        R48 K62 [UDim2.new]
      424 LOADN                            R49 1
      425 LOADN                            R50 0
      426 LOADN                            R51 0
      427 LOADN                            R52 10
      428 CALL                             R48 4 1
      429 SETTABLEKS                       R48 R47 K58 ["Size"]
      431 CALL                             R45 2 1
      432 SETTABLEKS                       R45 R44 K66 ["Spacer"]
      434 GETUPVAL                         R45 10
      435 JUMPIFNOT                        R45 ; [+148]
      436 MOVE                             R45 R7
      437 JUMPIFNOT                        R45 ; [+146]
      438 GETUPVAL                         R46 1
      439 GETTABLEKS                       R46 R46 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      441 NOT                              R45 R46
      442 JUMPIFNOT                        R45 ; [+141]
      443 GETUPVAL                         R45 11
      444 GETTABLEKS                       R45 R45 K56 ["createElement"]
      446 GETUPVAL                         R46 16
      447 DUPTABLE                         R47 K114 [{["LayoutOrder"], ["Size"], ["tag"] = "auto-xy padding-left-large stroke-system-emphasis radius-small bg-over-media-300", ["onActivated"]}]
      448 NAMECALL                         R48 R34 K100 ["getNextOrder"]
      450 CALL                             R48 1 1
      451 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
      453 GETIMPORT                        R48 K62 [UDim2.new]
      455 LOADN                            R49 0
      456 LOADN                            R50 770
      457 LOADN                            R51 0
      458 LOADN                            R52 50
      459 CALL                             R48 4 1
      460 SETTABLEKS                       R48 R47 K58 ["Size"]
      462 GETTABLEKS                       R48 R0 K115 ["launchFAEPlusVPC"]
      464 SETTABLEKS                       R48 R47 K113 ["onActivated"]
      466 NEWTABLE                         R48 4 1
      468 MOVE                             R50 R27
      469 JUMPIFNOT                        R50 ; [+28]
      470 GETUPVAL                         R50 11
      471 GETTABLEKS                       R50 R50 K56 ["createElement"]
      473 LOADK                            R51 K82 ["UIListLayout"]
      474 DUPTABLE                         R52 K117 [{"FillDirection", "VerticalAlignment", "SortOrder", "Padding"}]
      475 GETIMPORT                        R53 K119 [Enum.FillDirection.Horizontal]
      477 SETTABLEKS                       R53 R52 K83 ["FillDirection"]
      479 GETIMPORT                        R53 K120 [Enum.VerticalAlignment.Center]
      481 SETTABLEKS                       R53 R52 K116 ["VerticalAlignment"]
      483 GETIMPORT                        R53 K92 [Enum.SortOrder.LayoutOrder]
      485 SETTABLEKS                       R53 R52 K84 ["SortOrder"]
      487 GETIMPORT                        R53 K96 [UDim.new]
      489 LOADN                            R54 0
      490 GETTABLEKS                       R55 R2 K97 ["permissionsView"]
      492 GETTABLEKS                       R55 R55 K86 ["Padding"]
      494 CALL                             R53 2 1
      495 SETTABLEKS                       R53 R52 K86 ["Padding"]
      497 CALL                             R50 2 1
      498 SETTABLEKS                       R50 R48 K121 ["UpsellLayout"]
      500 GETUPVAL                         R49 13
      501 GETTABLEKS                       R49 R49 K56 ["createElement"]
      503 GETUPVAL                         R50 17
      504 DUPTABLE                         R51 K126 [{"name", "style", "LayoutOrder", "size", "variant"}]
      505 GETUPVAL                         R52 18
      506 GETTABLEKS                       R52 R52 K127 ["IconName"]
      508 GETTABLEKS                       R52 R52 K128 ["TriangleExclamation"]
      510 SETTABLEKS                       R52 R51 K122 ["name"]
      512 DUPTABLE                         R52 K132 [{["Color3"], ["Transparency"] = 0}]
      513 GETIMPORT                        R53 K134 [Color3.fromRGB]
      515 LOADN                            R54 51
      516 LOADN                            R55 95
      517 LOADN                            R56 255
      518 CALL                             R53 3 1
      519 SETTABLEKS                       R53 R52 K129 ["Color3"]
      521 SETTABLEKS                       R52 R51 K123 ["style"]
      523 NAMECALL                         R52 R36 K100 ["getNextOrder"]
      525 CALL                             R52 1 1
      526 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
      528 GETUPVAL                         R52 18
      529 GETTABLEKS                       R52 R52 K135 ["IconSize"]
      531 GETTABLEKS                       R52 R52 K136 ["Large"]
      533 SETTABLEKS                       R52 R51 K124 ["size"]
      535 GETUPVAL                         R52 19
      536 GETTABLEKS                       R52 R52 K137 ["Filled"]
      538 SETTABLEKS                       R52 R51 K125 ["variant"]
      540 CALL                             R49 2 1
      541 SETLIST                          R48 R49 1 [1]
      543 GETUPVAL                         R50 11
      544 GETTABLEKS                       R50 R50 K56 ["createElement"]
      546 GETUPVAL                         R51 20
      547 DUPTABLE                         R52 K140 [{["tag"] = "fill auto-y padding-left-large text-title-medium text-align-x-left text-align-y-center", ["LayoutOrder"], ["Text"]}]
      548 NAMECALL                         R53 R36 K100 ["getNextOrder"]
      550 CALL                             R53 1 1
      551 SETTABLEKS                       R53 R52 K91 ["LayoutOrder"]
      553 LOADK                            R55 K51 ["UpsellBanner"]
      554 LOADK                            R56 K141 ["description"]
      555 NAMECALL                         R53 R3 K35 ["getText"]
      557 CALL                             R53 3 1
      558 SETTABLEKS                       R53 R52 K139 ["Text"]
      560 CALL                             R50 2 1
      561 SETTABLEKS                       R50 R48 K142 ["WarningText"]
      563 GETUPVAL                         R50 11
      564 GETTABLEKS                       R50 R50 K56 ["createElement"]
      566 GETUPVAL                         R51 20
      567 DUPTABLE                         R52 K144 [{["tag"] = "auto-xy padding-right-large text-label-medium text-align-x-center text-align-y-center", ["LayoutOrder"], ["Text"]}]
      568 NAMECALL                         R53 R36 K100 ["getNextOrder"]
      570 CALL                             R53 1 1
      571 SETTABLEKS                       R53 R52 K91 ["LayoutOrder"]
      573 LOADK                            R55 K51 ["UpsellBanner"]
      574 LOADK                            R56 K145 ["CTA"]
      575 NAMECALL                         R53 R3 K35 ["getText"]
      577 CALL                             R53 3 1
      578 SETTABLEKS                       R53 R52 K139 ["Text"]
      580 CALL                             R50 2 1
      581 SETTABLEKS                       R50 R48 K146 ["GetStarted"]
      583 CALL                             R45 3 1
      584 SETTABLEKS                       R45 R44 K51 ["UpsellBanner"]
      586 GETUPVAL                         R45 0
      587 JUMPIFNOT                        R45 ; [+76]
      588 GETUPVAL                         R46 1
      589 GETTABLEKS                       R46 R46 K11 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      591 NOT                              R45 R46
      592 JUMPIFNOT                        R45 ; [+71]
      593 GETUPVAL                         R46 1
      594 GETTABLEKS                       R46 R46 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      596 NOT                              R45 R46
      597 JUMPIFNOT                        R45 ; [+66]
      598 MOVE                             R45 R12
      599 JUMPIFNOT                        R45 ; [+64]
      600 GETUPVAL                         R45 13
      601 GETTABLEKS                       R45 R45 K56 ["createElement"]
      603 GETUPVAL                         R46 16
      604 DUPTABLE                         R47 K148 [{["tag"] = "size-full-0 auto-y padding-x-large padding-top-large"}]
      605 GETUPVAL                         R48 13
      606 GETTABLEKS                       R48 R48 K56 ["createElement"]
      608 GETUPVAL                         R49 21
      609 DUPTABLE                         R50 K153 [{"variant", "severity", "title", "actions", "onClose"}]
      610 GETUPVAL                         R51 22
      611 GETTABLEKS                       R51 R51 K154 ["Standard"]
      613 SETTABLEKS                       R51 R50 K125 ["variant"]
      615 GETUPVAL                         R51 23
      616 GETTABLEKS                       R51 R51 K155 ["Info"]
      618 SETTABLEKS                       R51 R50 K149 ["severity"]
      620 LOADK                            R53 K51 ["UpsellBanner"]
      621 LOADK                            R54 K156 ["nextStepDescription"]
      622 NAMECALL                         R51 R3 K35 ["getText"]
      624 CALL                             R51 3 1
      625 SETTABLEKS                       R51 R50 K150 ["title"]
      627 NEWTABLE                         R51 0 1
      629 DUPTABLE                         R52 K158 [{"text", "variant", "onActivated"}]
      630 LOADK                            R55 K51 ["UpsellBanner"]
      631 LOADK                            R56 K145 ["CTA"]
      632 NAMECALL                         R53 R3 K35 ["getText"]
      634 CALL                             R53 3 1
      635 SETTABLEKS                       R53 R52 K157 ["text"]
      637 GETUPVAL                         R53 24
      638 GETTABLEKS                       R53 R53 K154 ["Standard"]
      640 SETTABLEKS                       R53 R52 K125 ["variant"]
      642 GETUPVAL                         R54 1
      643 GETTABLEKS                       R54 R54 K18 ["fflagUpsellCollabTrustedConnectionShowUpsellDialog"]
      645 JUMPIFNOT                        R54 ; [+4]
      646 JUMPIFNOT                        R13 ; [+3]
      647 GETTABLEKS                       R53 R0 K159 ["launchModal"]
      649 JUMP                             ; [+2]
      650 GETTABLEKS                       R53 R0 K160 ["launchCreatorHub"]
      652 SETTABLEKS                       R53 R52 K113 ["onActivated"]
      654 SETLIST                          R51 R52 1 [1]
      656 SETTABLEKS                       R51 R50 K151 ["actions"]
      658 NEWCLOSURE                       R51 P2
      659 CAPTURE                          VAL R0
      660 SETTABLEKS                       R51 R50 K152 ["onClose"]
      662 CALL                             R48 2 -1
      663 CALL                             R45 -1 1
      664 SETTABLEKS                       R45 R44 K67 ["TrustedConnectionsBanner"]
      666 GETUPVAL                         R45 1
      667 GETTABLEKS                       R45 R45 K20 ["fflagUpsellMCCollabReverification"]
      669 JUMPIFNOT                        R45 ; [+149]
      670 MOVE                             R45 R14
      671 JUMPIFNOT                        R45 ; [+147]
      672 GETUPVAL                         R45 13
      673 GETTABLEKS                       R45 R45 K56 ["createElement"]
      675 GETUPVAL                         R46 16
      676 DUPTABLE                         R47 K162 [{["LayoutOrder"], ["Size"], ["tag"] = "row align-y-center gap-medium padding-left-large padding-right-medium stroke-system-emphasis radius-small bg-over-media-300", ["onActivated"]}]
      677 NAMECALL                         R48 R34 K100 ["getNextOrder"]
      679 CALL                             R48 1 1
      680 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
      682 GETIMPORT                        R48 K62 [UDim2.new]
      684 LOADN                            R49 0
      685 LOADN                            R50 770
      686 LOADN                            R51 0
      687 LOADN                            R52 50
      688 CALL                             R48 4 1
      689 SETTABLEKS                       R48 R47 K58 ["Size"]
      691 DUPCLOSURE                       R48 K163 [PROTO_35]
      692 CAPTURE                          UPVAL U10
      693 CAPTURE                          UPVAL U25
      694 CAPTURE                          UPVAL U26
      695 CAPTURE                          UPVAL U27
      696 CAPTURE                          UPVAL U28
      697 CAPTURE                          UPVAL U29
      698 SETTABLEKS                       R48 R47 K113 ["onActivated"]
      700 DUPTABLE                         R48 K166 [{"Icon", "WarningText", "CloseButton"}]
      701 GETUPVAL                         R49 13
      702 GETTABLEKS                       R49 R49 K56 ["createElement"]
      704 GETUPVAL                         R50 16
      705 DUPTABLE                         R51 K168 [{["LayoutOrder"], ["tag"] = "size-600-600 auto-xy"}]
      706 NAMECALL                         R52 R36 K100 ["getNextOrder"]
      708 CALL                             R52 1 1
      709 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
      711 DUPTABLE                         R52 K170 [{"BackgroundCircle", "Icon"}]
      712 GETUPVAL                         R53 13
      713 GETTABLEKS                       R53 R53 K56 ["createElement"]
      715 GETUPVAL                         R54 16
      716 DUPTABLE                         R55 K173 [{["tag"] = "position-center-center anchor-center-center size-500-500 radius-circle", ["backgroundStyle"]}]
      717 DUPTABLE                         R56 K174 [{"Color3"}]
      718 GETIMPORT                        R57 K176 [Color3.fromHex]
      720 LOADK                            R58 K177 ["#FFFFFF"]
      721 CALL                             R57 1 1
      722 SETTABLEKS                       R57 R56 K129 ["Color3"]
      724 SETTABLEKS                       R56 R55 K172 ["backgroundStyle"]
      726 CALL                             R53 2 1
      727 SETTABLEKS                       R53 R52 K169 ["BackgroundCircle"]
      729 GETUPVAL                         R53 13
      730 GETTABLEKS                       R53 R53 K56 ["createElement"]
      732 GETUPVAL                         R54 17
      733 DUPTABLE                         R55 K179 [{["name"], ["style"], ["tag"] = "align-x-center align-y-center", ["size"], ["variant"]}]
      734 GETUPVAL                         R56 18
      735 GETTABLEKS                       R56 R56 K127 ["IconName"]
      737 GETTABLEKS                       R56 R56 K180 ["CircleI"]
      739 SETTABLEKS                       R56 R55 K122 ["name"]
      741 DUPTABLE                         R56 K132 [{["Color3"], ["Transparency"] = 0}]
      742 GETIMPORT                        R57 K134 [Color3.fromRGB]
      744 LOADN                            R58 51
      745 LOADN                            R59 95
      746 LOADN                            R60 255
      747 CALL                             R57 3 1
      748 SETTABLEKS                       R57 R56 K129 ["Color3"]
      750 SETTABLEKS                       R56 R55 K123 ["style"]
      752 GETUPVAL                         R56 18
      753 GETTABLEKS                       R56 R56 K135 ["IconSize"]
      755 GETTABLEKS                       R56 R56 K136 ["Large"]
      757 SETTABLEKS                       R56 R55 K124 ["size"]
      759 GETUPVAL                         R56 19
      760 GETTABLEKS                       R56 R56 K137 ["Filled"]
      762 SETTABLEKS                       R56 R55 K125 ["variant"]
      764 CALL                             R53 2 1
      765 SETTABLEKS                       R53 R52 K164 ["Icon"]
      767 CALL                             R49 3 1
      768 SETTABLEKS                       R49 R48 K164 ["Icon"]
      770 GETUPVAL                         R49 11
      771 GETTABLEKS                       R49 R49 K56 ["createElement"]
      773 GETUPVAL                         R50 20
      774 DUPTABLE                         R51 K184 [{["tag"] = "fill text-body-medium text-align-x-left text-align-y-center", ["LayoutOrder"], ["Text"], ["RichText"] = True}]
      775 NAMECALL                         R52 R36 K100 ["getNextOrder"]
      777 CALL                             R52 1 1
      778 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
      780 LOADK                            R52 K185 ["<b>%*</b> %* • %*"]
      781 MOVE                             R54 R38
      782 MOVE                             R55 R39
      783 MOVE                             R56 R40
      784 NAMECALL                         R52 R52 K186 ["format"]
      786 CALL                             R52 4 1
      787 SETTABLEKS                       R52 R51 K139 ["Text"]
      789 CALL                             R49 2 1
      790 SETTABLEKS                       R49 R48 K142 ["WarningText"]
      792 GETUPVAL                         R49 13
      793 GETTABLEKS                       R49 R49 K56 ["createElement"]
      795 GETUPVAL                         R50 30
      796 DUPTABLE                         R51 K189 [{["LayoutOrder"], ["icon"] = "icons/navigation/close", ["size"], ["onActivated"]}]
      797 NAMECALL                         R52 R36 K100 ["getNextOrder"]
      799 CALL                             R52 1 1
      800 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
      802 GETUPVAL                         R52 31
      803 GETTABLEKS                       R52 R52 K190 ["Enums"]
      805 GETTABLEKS                       R52 R52 K135 ["IconSize"]
      807 GETTABLEKS                       R52 R52 K191 ["Small"]
      809 SETTABLEKS                       R52 R51 K124 ["size"]
      811 NEWCLOSURE                       R52 P4
      812 CAPTURE                          VAL R0
      813 SETTABLEKS                       R52 R51 K113 ["onActivated"]
      815 CALL                             R49 2 1
      816 SETTABLEKS                       R49 R48 K165 ["CloseButton"]
      818 CALL                             R45 3 1
      819 SETTABLEKS                       R45 R44 K68 ["ReverificationBanner"]
      821 GETUPVAL                         R45 1
      822 GETTABLEKS                       R45 R45 K11 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      824 JUMPIFNOT                        R45 ; [+56]
      825 MOVE                             R45 R20
      826 JUMPIFNOT                        R45 ; [+54]
      827 MOVE                             R45 R9
      828 JUMPIFNOT                        R45 ; [+52]
      829 GETUPVAL                         R45 13
      830 GETTABLEKS                       R45 R45 K56 ["createElement"]
      832 GETUPVAL                         R46 16
      833 DUPTABLE                         R47 K193 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y margin-top-small padding-x-large"}]
      834 NAMECALL                         R48 R34 K100 ["getNextOrder"]
      836 CALL                             R48 1 1
      837 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
      839 NEWTABLE                         R48 0 1
      841 GETUPVAL                         R49 13
      842 GETTABLEKS                       R49 R49 K56 ["createElement"]
      844 GETUPVAL                         R50 32
      845 DUPTABLE                         R51 K195 [{"severity", "title", "link", "onClose"}]
      846 GETUPVAL                         R52 23
      847 GETTABLEKS                       R52 R52 K196 ["Warning"]
      849 SETTABLEKS                       R52 R51 K149 ["severity"]
      851 LOADK                            R54 K197 ["FeedbackAlert"]
      852 LOADK                            R55 K198 ["OutsideAgeGroupWarning"]
      853 NAMECALL                         R52 R3 K35 ["getText"]
      855 CALL                             R52 3 1
      856 SETTABLEKS                       R52 R51 K150 ["title"]
      858 DUPTABLE                         R52 K199 [{"text", "onActivated"}]
      859 LOADK                            R55 K197 ["FeedbackAlert"]
      860 LOADK                            R56 K200 ["ViewDetails"]
      861 NAMECALL                         R53 R3 K35 ["getText"]
      863 CALL                             R53 3 1
      864 SETTABLEKS                       R53 R52 K157 ["text"]
      866 NEWCLOSURE                       R53 P5
      867 CAPTURE                          UPVAL U1
      868 CAPTURE                          VAL R0
      869 SETTABLEKS                       R53 R52 K113 ["onActivated"]
      871 SETTABLEKS                       R52 R51 K194 ["link"]
      873 NEWCLOSURE                       R52 P6
      874 CAPTURE                          VAL R0
      875 SETTABLEKS                       R52 R51 K152 ["onClose"]
      877 CALL                             R49 2 -1
      878 SETLIST                          R48 R49 -1 [1]
      880 CALL                             R45 3 1
      881 SETTABLEKS                       R45 R44 K69 ["OutsideAgeBucketBanner"]
      883 GETUPVAL                         R45 1
      884 GETTABLEKS                       R45 R45 K13 ["fflagManageCollaboratorsEditorBlockingBanner"]
      886 JUMPIFNOT                        R45 ; [+56]
      887 NOT                              R45 R20
      888 JUMPIFNOT                        R45 ; [+54]
      889 MOVE                             R45 R10
      890 JUMPIFNOT                        R45 ; [+52]
      891 GETUPVAL                         R45 13
      892 GETTABLEKS                       R45 R45 K56 ["createElement"]
      894 GETUPVAL                         R46 16
      895 DUPTABLE                         R47 K193 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y margin-top-small padding-x-large"}]
      896 NAMECALL                         R48 R34 K100 ["getNextOrder"]
      898 CALL                             R48 1 1
      899 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
      901 NEWTABLE                         R48 0 1
      903 GETUPVAL                         R49 13
      904 GETTABLEKS                       R49 R49 K56 ["createElement"]
      906 GETUPVAL                         R50 32
      907 DUPTABLE                         R51 K195 [{"severity", "title", "link", "onClose"}]
      908 GETUPVAL                         R52 23
      909 GETTABLEKS                       R52 R52 K196 ["Warning"]
      911 SETTABLEKS                       R52 R51 K149 ["severity"]
      913 LOADK                            R54 K197 ["FeedbackAlert"]
      914 LOADK                            R55 K201 ["EditorBlockingWarning"]
      915 NAMECALL                         R52 R3 K35 ["getText"]
      917 CALL                             R52 3 1
      918 SETTABLEKS                       R52 R51 K150 ["title"]
      920 DUPTABLE                         R52 K199 [{"text", "onActivated"}]
      921 LOADK                            R55 K197 ["FeedbackAlert"]
      922 LOADK                            R56 K200 ["ViewDetails"]
      923 NAMECALL                         R53 R3 K35 ["getText"]
      925 CALL                             R53 3 1
      926 SETTABLEKS                       R53 R52 K157 ["text"]
      928 NEWCLOSURE                       R53 P7
      929 CAPTURE                          UPVAL U1
      930 CAPTURE                          VAL R0
      931 SETTABLEKS                       R53 R52 K113 ["onActivated"]
      933 SETTABLEKS                       R52 R51 K194 ["link"]
      935 NEWCLOSURE                       R52 P8
      936 CAPTURE                          VAL R0
      937 SETTABLEKS                       R52 R51 K152 ["onClose"]
      939 CALL                             R49 2 -1
      940 SETLIST                          R48 R49 -1 [1]
      942 CALL                             R45 3 1
      943 SETTABLEKS                       R45 R44 K70 ["EditorBlockingBanner"]
      945 GETUPVAL                         R45 1
      946 GETTABLEKS                       R45 R45 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      948 JUMPIFNOT                        R45 ; [+84]
      949 MOVE                             R45 R20
      950 JUMPIFNOT                        R45 ; [+82]
      951 MOVE                             R45 R8
      952 JUMPIFNOT                        R45 ; [+80]
      953 GETUPVAL                         R45 13
      954 GETTABLEKS                       R45 R45 K56 ["createElement"]
      956 GETUPVAL                         R46 16
      957 DUPTABLE                         R47 K193 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y margin-top-small padding-x-large"}]
      958 NAMECALL                         R48 R34 K100 ["getNextOrder"]
      960 CALL                             R48 1 1
      961 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
      963 NEWTABLE                         R48 0 1
      965 GETUPVAL                         R49 13
      966 GETTABLEKS                       R49 R49 K56 ["createElement"]
      968 GETUPVAL                         R50 32
      969 DUPTABLE                         R51 K203 [{"severity", "title", "subtitle", "link", "onClose"}]
      970 GETUPVAL                         R52 23
      971 GETTABLEKS                       R52 R52 K196 ["Warning"]
      973 SETTABLEKS                       R52 R51 K149 ["severity"]
      975 NAMECALL                         R53 R0 K204 ["isGroupGame"]
      977 CALL                             R53 1 1
      978 JUMPIFNOT                        R53 ; [+6]
      979 LOADK                            R54 K197 ["FeedbackAlert"]
      980 LOADK                            R55 K205 ["VerifyYourAge"]
      981 NAMECALL                         R52 R3 K35 ["getText"]
      983 CALL                             R52 3 1
      984 JUMP                             ; [+5]
      985 LOADK                            R54 K197 ["FeedbackAlert"]
      986 LOADK                            R55 K206 ["OwnerNotAgeVerifiedTitle"]
      987 NAMECALL                         R52 R3 K35 ["getText"]
      989 CALL                             R52 3 1
      990 SETTABLEKS                       R52 R51 K150 ["title"]
      992 NAMECALL                         R53 R0 K204 ["isGroupGame"]
      994 CALL                             R53 1 1
      995 JUMPIFNOT                        R53 ; [+6]
      996 LOADK                            R54 K197 ["FeedbackAlert"]
      997 LOADK                            R55 K207 ["OwnerNotAgeVerifiedSubtitle"]
      998 NAMECALL                         R52 R3 K35 ["getText"]
     1000 CALL                             R52 3 1
     1001 JUMP                             ; [+1]
     1002 LOADNIL                          R52
     1003 SETTABLEKS                       R52 R51 K202 ["subtitle"]
     1005 DUPTABLE                         R52 K199 [{"text", "onActivated"}]
     1006 LOADK                            R55 K51 ["UpsellBanner"]
     1007 LOADK                            R56 K145 ["CTA"]
     1008 NAMECALL                         R53 R3 K35 ["getText"]
     1010 CALL                             R53 3 1
     1011 SETTABLEKS                       R53 R52 K157 ["text"]
     1013 DUPCLOSURE                       R53 K208 [PROTO_41]
     1014 CAPTURE                          UPVAL U1
     1015 CAPTURE                          UPVAL U10
     1016 CAPTURE                          UPVAL U25
     1017 CAPTURE                          UPVAL U26
     1018 CAPTURE                          UPVAL U27
     1019 CAPTURE                          UPVAL U28
     1020 CAPTURE                          UPVAL U29
     1021 SETTABLEKS                       R53 R52 K113 ["onActivated"]
     1023 SETTABLEKS                       R52 R51 K194 ["link"]
     1025 NEWCLOSURE                       R52 P10
     1026 CAPTURE                          VAL R0
     1027 SETTABLEKS                       R52 R51 K152 ["onClose"]
     1029 CALL                             R49 2 -1
     1030 SETLIST                          R48 R49 -1 [1]
     1032 CALL                             R45 3 1
     1033 SETTABLEKS                       R45 R44 K71 ["OwnerNotAgeVerifiedBanner"]
     1035 GETUPVAL                         R45 1
     1036 GETTABLEKS                       R45 R45 K15 ["fflagManageCollaboratorsOwnerCountryBlocked"]
     1038 JUMPIFNOT                        R45 ; [+41]
     1039 MOVE                             R45 R20
     1040 JUMPIFNOT                        R45 ; [+39]
     1041 MOVE                             R45 R11
     1042 JUMPIFNOT                        R45 ; [+37]
     1043 GETUPVAL                         R45 13
     1044 GETTABLEKS                       R45 R45 K56 ["createElement"]
     1046 GETUPVAL                         R46 16
     1047 DUPTABLE                         R47 K193 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y margin-top-small padding-x-large"}]
     1048 NAMECALL                         R48 R34 K100 ["getNextOrder"]
     1050 CALL                             R48 1 1
     1051 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
     1053 NEWTABLE                         R48 0 1
     1055 GETUPVAL                         R49 13
     1056 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1058 GETUPVAL                         R50 32
     1059 DUPTABLE                         R51 K209 [{"severity", "title", "onClose"}]
     1060 GETUPVAL                         R52 23
     1061 GETTABLEKS                       R52 R52 K196 ["Warning"]
     1063 SETTABLEKS                       R52 R51 K149 ["severity"]
     1065 LOADK                            R54 K197 ["FeedbackAlert"]
     1066 LOADK                            R55 K210 ["OwnerCountryBlockedTitle"]
     1067 NAMECALL                         R52 R3 K35 ["getText"]
     1069 CALL                             R52 3 1
     1070 SETTABLEKS                       R52 R51 K150 ["title"]
     1072 NEWCLOSURE                       R52 P11
     1073 CAPTURE                          VAL R0
     1074 SETTABLEKS                       R52 R51 K152 ["onClose"]
     1076 CALL                             R49 2 -1
     1077 SETLIST                          R48 R49 -1 [1]
     1079 CALL                             R45 3 1
     1080 SETTABLEKS                       R45 R44 K72 ["OwnerCountryBlockedBanner"]
     1082 GETUPVAL                         R45 10
     1083 JUMPIFNOT                        R45 ; [+49]
     1084 GETUPVAL                         R46 7
     1085 CALL                             R46 0 1
     1086 JUMPIF                           R46 ; [+3]
     1087 GETUPVAL                         R46 0
     1088 NOT                              R45 R46
     1089 JUMPIFNOT                        R45 ; [+43]
     1090 GETUPVAL                         R45 11
     1091 GETTABLEKS                       R45 R45 K56 ["createElement"]
     1093 GETUPVAL                         R46 16
     1094 DUPTABLE                         R47 K212 [{["LayoutOrder"], ["Size"], ["tag"] = "auto-xy padding-top-medium"}]
     1095 NAMECALL                         R48 R34 K100 ["getNextOrder"]
     1097 CALL                             R48 1 1
     1098 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
     1100 GETIMPORT                        R48 K62 [UDim2.new]
     1102 LOADN                            R49 0
     1103 LOADN                            R50 770
     1104 LOADN                            R51 0
     1105 LOADN                            R52 10
     1106 CALL                             R48 4 1
     1107 SETTABLEKS                       R48 R47 K58 ["Size"]
     1109 DUPTABLE                         R48 K214 [{"CollaborationTitle"}]
     1110 GETUPVAL                         R49 33
     1111 JUMPIFNOT                        R49 ; [+18]
     1112 GETUPVAL                         R49 13
     1113 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1115 GETUPVAL                         R50 20
     1116 DUPTABLE                         R51 K216 [{["LayoutOrder"], ["tag"] = "auto-xy text-label-small text-align-x-left", ["Text"]}]
     1117 NAMECALL                         R52 R34 K100 ["getNextOrder"]
     1119 CALL                             R52 1 1
     1120 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
     1122 LOADK                            R54 K217 ["Subtitle"]
     1123 LOADK                            R55 K218 ["SearchCollaborators"]
     1124 NAMECALL                         R52 R3 K35 ["getText"]
     1126 CALL                             R52 3 1
     1127 SETTABLEKS                       R52 R51 K139 ["Text"]
     1129 CALL                             R49 2 1
     1130 SETTABLEKS                       R49 R48 K213 ["CollaborationTitle"]
     1132 CALL                             R45 3 1
     1133 SETTABLEKS                       R45 R44 K73 ["CollaborationSubtitleTitleView"]
     1135 GETUPVAL                         R45 10
     1136 JUMPIFNOT                        R45 ; [+187]
     1137 MOVE                             R45 R27
     1138 JUMPIFNOT                        R45 ; [+185]
     1139 GETUPVAL                         R45 11
     1140 GETTABLEKS                       R45 R45 K56 ["createElement"]
     1142 GETUPVAL                         R46 34
     1143 DUPTABLE                         R47 K222 [{["scroll"], ["layout"], ["tag"] = "col align-y-top fill gap-small size-full", ["LayoutOrder"]}]
     1144 DUPTABLE                         R48 K227 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
     1145 GETUPVAL                         R49 35
     1146 GETTABLEKS                       R49 R49 K228 ["Always"]
     1148 SETTABLEKS                       R49 R48 K223 ["scrollBarVisibility"]
     1150 GETIMPORT                        R49 K230 [Enum.ScrollingDirection.Y]
     1152 SETTABLEKS                       R49 R48 K224 ["ScrollingDirection"]
     1154 GETIMPORT                        R49 K232 [Enum.AutomaticSize.Y]
     1156 SETTABLEKS                       R49 R48 K225 ["AutomaticCanvasSize"]
     1158 GETIMPORT                        R49 K62 [UDim2.new]
     1160 CALL                             R49 0 1
     1161 SETTABLEKS                       R49 R48 K226 ["CanvasSize"]
     1163 SETTABLEKS                       R48 R47 K219 ["scroll"]
     1165 DUPTABLE                         R48 K234 [{"HorizontalAlignment", "FillDirection", "SortOrder", "HorizontalFlex"}]
     1166 GETIMPORT                        R49 K236 [Enum.HorizontalAlignment.Left]
     1168 SETTABLEKS                       R49 R48 K85 ["HorizontalAlignment"]
     1170 GETIMPORT                        R49 K90 [Enum.FillDirection.Vertical]
     1172 SETTABLEKS                       R49 R48 K83 ["FillDirection"]
     1174 GETIMPORT                        R49 K92 [Enum.SortOrder.LayoutOrder]
     1176 SETTABLEKS                       R49 R48 K84 ["SortOrder"]
     1178 GETIMPORT                        R49 K239 [Enum.UIFlexAlignment.Fill]
     1180 SETTABLEKS                       R49 R48 K233 ["HorizontalFlex"]
     1182 SETTABLEKS                       R48 R47 K220 ["layout"]
     1184 NAMECALL                         R48 R34 K100 ["getNextOrder"]
     1186 CALL                             R48 1 1
     1187 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
     1189 DUPTABLE                         R48 K244 [{"SearchBarWidget", "AudienceTabs", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
     1190 MOVE                             R49 R20
     1191 JUMPIFNOT                        R49 ; [+30]
     1192 GETUPVAL                         R49 11
     1193 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1195 GETUPVAL                         R50 36
     1196 DUPTABLE                         R51 K249 [{["LayoutOrder"], ["Writable"] = True, ["IsGroupGame"], ["SearchDisabled"], ["ActiveTab"]}]
     1197 NAMECALL                         R52 R35 K100 ["getNextOrder"]
     1199 CALL                             R52 1 1
     1200 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
     1202 NAMECALL                         R52 R0 K204 ["isGroupGame"]
     1204 CALL                             R52 1 1
     1205 SETTABLEKS                       R52 R51 K246 ["IsGroupGame"]
     1207 SETTABLEKS                       R26 R51 K247 ["SearchDisabled"]
     1209 NAMECALL                         R53 R0 K250 ["shouldShowAudienceTabs"]
     1211 CALL                             R53 1 1
     1212 JUMPIFNOT                        R53 ; [+5]
     1213 GETTABLEKS                       R52 R0 K7 ["state"]
     1215 GETTABLEKS                       R52 R52 K251 ["ActiveAudienceTab"]
     1217 JUMP                             ; [+1]
     1218 LOADNIL                          R52
     1219 SETTABLEKS                       R52 R51 K248 ["ActiveTab"]
     1221 CALL                             R49 2 1
     1222 SETTABLEKS                       R49 R48 K240 ["SearchBarWidget"]
     1224 NAMECALL                         R49 R0 K250 ["shouldShowAudienceTabs"]
     1226 CALL                             R49 1 1
     1227 JUMPIFNOT                        R49 ; [+27]
     1228 GETUPVAL                         R49 13
     1229 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1231 GETUPVAL                         R50 37
     1232 DUPTABLE                         R51 K255 [{"LayoutOrder", "ActiveTabId", "Tabs", "OnActivated"}]
     1233 NAMECALL                         R52 R35 K100 ["getNextOrder"]
     1235 CALL                             R52 1 1
     1236 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
     1238 GETTABLEKS                       R52 R0 K7 ["state"]
     1240 GETTABLEKS                       R52 R52 K251 ["ActiveAudienceTab"]
     1242 SETTABLEKS                       R52 R51 K252 ["ActiveTabId"]
     1244 MOVE                             R54 R3
     1245 NAMECALL                         R52 R0 K256 ["getAudienceTabs"]
     1247 CALL                             R52 2 1
     1248 SETTABLEKS                       R52 R51 K253 ["Tabs"]
     1250 NEWCLOSURE                       R52 P12
     1251 CAPTURE                          VAL R0
     1252 SETTABLEKS                       R52 R51 K254 ["OnActivated"]
     1254 CALL                             R49 2 1
     1255 SETTABLEKS                       R49 R48 K241 ["AudienceTabs"]
     1257 NAMECALL                         R50 R0 K250 ["shouldShowAudienceTabs"]
     1259 CALL                             R50 1 1
     1260 NOT                              R49 R50
     1261 JUMPIFNOT                        R49 ; [+11]
     1262 GETUPVAL                         R49 11
     1263 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1265 GETUPVAL                         R50 38
     1266 DUPTABLE                         R51 K257 [{"LayoutOrder"}]
     1267 NAMECALL                         R52 R35 K100 ["getNextOrder"]
     1269 CALL                             R52 1 1
     1270 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
     1272 CALL                             R49 2 1
     1273 SETTABLEKS                       R49 R48 K242 ["CollaboratorFilterWidget"]
     1275 NOT                              R49 R20
     1276 JUMPIFNOT                        R49 ; [+6]
     1277 GETUPVAL                         R49 11
     1278 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1280 LOADK                            R50 K57 ["Frame"]
     1281 DUPTABLE                         R51 K260 [{["BackgroundTransparency"] = 1}]
     1282 CALL                             R49 2 1
     1283 SETTABLEKS                       R49 R48 K57 ["Frame"]
     1285 GETUPVAL                         R49 11
     1286 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1288 GETUPVAL                         R50 39
     1289 DUPTABLE                         R51 K262 [{"LayoutOrder", "Writable", "IsGroupGame", "DisableEditPermission", "ActiveTab"}]
     1290 NAMECALL                         R52 R35 K100 ["getNextOrder"]
     1292 CALL                             R52 1 1
     1293 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
     1295 SETTABLEKS                       R23 R51 K245 ["Writable"]
     1297 GETUPVAL                         R53 40
     1298 JUMPIFNOT                        R53 ; [+4]
     1299 NAMECALL                         R52 R0 K204 ["isGroupGame"]
     1301 CALL                             R52 1 1
     1302 JUMP                             ; [+1]
     1303 LOADNIL                          R52
     1304 SETTABLEKS                       R52 R51 K246 ["IsGroupGame"]
     1306 SETTABLEKS                       R26 R51 K261 ["DisableEditPermission"]
     1308 NAMECALL                         R53 R0 K250 ["shouldShowAudienceTabs"]
     1310 CALL                             R53 1 1
     1311 JUMPIFNOT                        R53 ; [+5]
     1312 GETTABLEKS                       R52 R0 K7 ["state"]
     1314 GETTABLEKS                       R52 R52 K251 ["ActiveAudienceTab"]
     1316 JUMP                             ; [+1]
     1317 LOADNIL                          R52
     1318 SETTABLEKS                       R52 R51 K248 ["ActiveTab"]
     1320 CALL                             R49 2 1
     1321 SETTABLEKS                       R49 R48 K243 ["CollaboratorsWidget"]
     1323 CALL                             R45 3 1
     1324 SETTABLEKS                       R45 R44 K74 ["ScrollingFrameNew"]
     1326 GETUPVAL                         R46 10
     1327 NOT                              R45 R46
     1328 JUMPIFNOT                        R45 ; [+180]
     1329 MOVE                             R45 R27
     1330 JUMPIFNOT                        R45 ; [+178]
     1331 GETUPVAL                         R45 11
     1332 GETTABLEKS                       R45 R45 K56 ["createElement"]
     1334 GETUPVAL                         R46 41
     1335 DUPTABLE                         R47 K264 [{"LayoutOrder", "Size", "Layout", "AutomaticCanvasSize", "Spacing"}]
     1336 NAMECALL                         R48 R34 K100 ["getNextOrder"]
     1338 CALL                             R48 1 1
     1339 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
     1341 GETIMPORT                        R48 K62 [UDim2.new]
     1343 LOADN                            R49 1
     1344 LOADN                            R50 0
     1345 LOADN                            R51 1
     1346 MINUS                            R52 R33
     1347 CALL                             R48 4 1
     1348 SETTABLEKS                       R48 R47 K58 ["Size"]
     1350 GETIMPORT                        R48 K90 [Enum.FillDirection.Vertical]
     1352 SETTABLEKS                       R48 R47 K64 ["Layout"]
     1354 GETIMPORT                        R48 K232 [Enum.AutomaticSize.Y]
     1356 SETTABLEKS                       R48 R47 K225 ["AutomaticCanvasSize"]
     1358 GETIMPORT                        R48 K96 [UDim.new]
     1360 LOADN                            R49 0
     1361 JUMPIFNOT                        R20 ; [+5]
     1362 GETTABLEKS                       R50 R2 K265 ["scrollingFrame"]
     1364 GETTABLEKS                       R50 R50 K266 ["yPadding"]
     1366 JUMP                             ; [+4]
     1367 GETTABLEKS                       R50 R2 K265 ["scrollingFrame"]
     1369 GETTABLEKS                       R50 R50 K267 ["yPaddingNonOwner"]
     1371 CALL                             R48 2 1
     1372 SETTABLEKS                       R48 R47 K263 ["Spacing"]
     1374 DUPTABLE                         R48 K244 [{"SearchBarWidget", "AudienceTabs", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
     1375 MOVE                             R49 R20
     1376 JUMPIFNOT                        R49 ; [+30]
     1377 GETUPVAL                         R49 11
     1378 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1380 GETUPVAL                         R50 36
     1381 DUPTABLE                         R51 K249 [{["LayoutOrder"], ["Writable"] = True, ["IsGroupGame"], ["SearchDisabled"], ["ActiveTab"]}]
     1382 NAMECALL                         R52 R35 K100 ["getNextOrder"]
     1384 CALL                             R52 1 1
     1385 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
     1387 NAMECALL                         R52 R0 K204 ["isGroupGame"]
     1389 CALL                             R52 1 1
     1390 SETTABLEKS                       R52 R51 K246 ["IsGroupGame"]
     1392 SETTABLEKS                       R26 R51 K247 ["SearchDisabled"]
     1394 NAMECALL                         R53 R0 K250 ["shouldShowAudienceTabs"]
     1396 CALL                             R53 1 1
     1397 JUMPIFNOT                        R53 ; [+5]
     1398 GETTABLEKS                       R52 R0 K7 ["state"]
     1400 GETTABLEKS                       R52 R52 K251 ["ActiveAudienceTab"]
     1402 JUMP                             ; [+1]
     1403 LOADNIL                          R52
     1404 SETTABLEKS                       R52 R51 K248 ["ActiveTab"]
     1406 CALL                             R49 2 1
     1407 SETTABLEKS                       R49 R48 K240 ["SearchBarWidget"]
     1409 NAMECALL                         R49 R0 K250 ["shouldShowAudienceTabs"]
     1411 CALL                             R49 1 1
     1412 JUMPIFNOT                        R49 ; [+27]
     1413 GETUPVAL                         R49 13
     1414 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1416 GETUPVAL                         R50 37
     1417 DUPTABLE                         R51 K255 [{"LayoutOrder", "ActiveTabId", "Tabs", "OnActivated"}]
     1418 NAMECALL                         R52 R35 K100 ["getNextOrder"]
     1420 CALL                             R52 1 1
     1421 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
     1423 GETTABLEKS                       R52 R0 K7 ["state"]
     1425 GETTABLEKS                       R52 R52 K251 ["ActiveAudienceTab"]
     1427 SETTABLEKS                       R52 R51 K252 ["ActiveTabId"]
     1429 MOVE                             R54 R3
     1430 NAMECALL                         R52 R0 K256 ["getAudienceTabs"]
     1432 CALL                             R52 2 1
     1433 SETTABLEKS                       R52 R51 K253 ["Tabs"]
     1435 NEWCLOSURE                       R52 P13
     1436 CAPTURE                          VAL R0
     1437 SETTABLEKS                       R52 R51 K254 ["OnActivated"]
     1439 CALL                             R49 2 1
     1440 SETTABLEKS                       R49 R48 K241 ["AudienceTabs"]
     1442 NAMECALL                         R50 R0 K250 ["shouldShowAudienceTabs"]
     1444 CALL                             R50 1 1
     1445 NOT                              R49 R50
     1446 JUMPIFNOT                        R49 ; [+11]
     1447 GETUPVAL                         R49 11
     1448 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1450 GETUPVAL                         R50 38
     1451 DUPTABLE                         R51 K257 [{"LayoutOrder"}]
     1452 NAMECALL                         R52 R35 K100 ["getNextOrder"]
     1454 CALL                             R52 1 1
     1455 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
     1457 CALL                             R49 2 1
     1458 SETTABLEKS                       R49 R48 K242 ["CollaboratorFilterWidget"]
     1460 NOT                              R49 R20
     1461 JUMPIFNOT                        R49 ; [+6]
     1462 GETUPVAL                         R49 11
     1463 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1465 LOADK                            R50 K57 ["Frame"]
     1466 DUPTABLE                         R51 K260 [{["BackgroundTransparency"] = 1}]
     1467 CALL                             R49 2 1
     1468 SETTABLEKS                       R49 R48 K57 ["Frame"]
     1470 GETUPVAL                         R49 11
     1471 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1473 GETUPVAL                         R50 39
     1474 DUPTABLE                         R51 K262 [{"LayoutOrder", "Writable", "IsGroupGame", "DisableEditPermission", "ActiveTab"}]
     1475 NAMECALL                         R52 R35 K100 ["getNextOrder"]
     1477 CALL                             R52 1 1
     1478 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
     1480 SETTABLEKS                       R23 R51 K245 ["Writable"]
     1482 GETUPVAL                         R53 40
     1483 JUMPIFNOT                        R53 ; [+4]
     1484 NAMECALL                         R52 R0 K204 ["isGroupGame"]
     1486 CALL                             R52 1 1
     1487 JUMP                             ; [+1]
     1488 LOADNIL                          R52
     1489 SETTABLEKS                       R52 R51 K246 ["IsGroupGame"]
     1491 SETTABLEKS                       R26 R51 K261 ["DisableEditPermission"]
     1493 NAMECALL                         R53 R0 K250 ["shouldShowAudienceTabs"]
     1495 CALL                             R53 1 1
     1496 JUMPIFNOT                        R53 ; [+5]
     1497 GETTABLEKS                       R52 R0 K7 ["state"]
     1499 GETTABLEKS                       R52 R52 K251 ["ActiveAudienceTab"]
     1501 JUMP                             ; [+1]
     1502 LOADNIL                          R52
     1503 SETTABLEKS                       R52 R51 K248 ["ActiveTab"]
     1505 CALL                             R49 2 1
     1506 SETTABLEKS                       R49 R48 K243 ["CollaboratorsWidget"]
     1508 CALL                             R45 3 1
     1509 SETTABLEKS                       R45 R44 K75 ["ScrollingFrame"]
     1511 JUMPIFNOT                        R29 ; [+75]
     1512 GETUPVAL                         R45 11
     1513 GETTABLEKS                       R45 R45 K56 ["createElement"]
     1515 LOADK                            R46 K57 ["Frame"]
     1516 DUPTABLE                         R47 K269 [{["BackgroundTransparency"] = 1, ["BackgroundColor3"], ["LayoutOrder"], ["Size"], ["BorderSizePixel"] = 0}]
     1517 GETTABLEKS                       R48 R2 K63 ["backgroundColor"]
     1519 SETTABLEKS                       R48 R47 K59 ["BackgroundColor3"]
     1521 NAMECALL                         R48 R34 K100 ["getNextOrder"]
     1523 CALL                             R48 1 1
     1524 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
     1526 GETIMPORT                        R48 K62 [UDim2.new]
     1528 LOADN                            R49 1
     1529 LOADN                            R50 0
     1530 LOADN                            R51 0
     1531 GETTABLEKS                       R52 R2 K48 ["saveMessage"]
     1533 GETTABLEKS                       R52 R52 K49 ["boxHeight"]
     1535 CALL                             R48 4 1
     1536 SETTABLEKS                       R48 R47 K58 ["Size"]
     1538 DUPTABLE                         R48 K270 [{"Text"}]
     1539 GETUPVAL                         R49 11
     1540 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1542 LOADK                            R50 K271 ["TextLabel"]
     1543 GETUPVAL                         R51 42
     1544 GETTABLEKS                       R51 R51 K272 ["Dictionary"]
     1546 GETTABLEKS                       R51 R51 K273 ["join"]
     1548 GETTABLEKS                       R52 R2 K48 ["saveMessage"]
     1550 GETTABLEKS                       R52 R52 K274 ["textStyle"]
     1552 DUPTABLE                         R53 K279 [{["AnchorPoint"], ["Position"], ["Text"], ["TextXAlignment"], ["BorderSizePixel"] = 0, ["TextWrapped"] = True, ["Size"], ["BackgroundTransparency"] = 1}]
     1553 GETIMPORT                        R54 K281 [Vector2.new]
     1555 LOADN                            R55 0
     1556 LOADK                            R56 K282 [0.5]
     1557 CALL                             R54 2 1
     1558 SETTABLEKS                       R54 R53 K275 ["AnchorPoint"]
     1560 GETTABLEKS                       R54 R2 K48 ["saveMessage"]
     1562 GETTABLEKS                       R54 R54 K283 ["InnerTextPosition"]
     1564 SETTABLEKS                       R54 R53 K276 ["Position"]
     1566 SETTABLEKS                       R31 R53 K139 ["Text"]
     1568 GETIMPORT                        R54 K284 [Enum.TextXAlignment.Left]
     1570 SETTABLEKS                       R54 R53 K277 ["TextXAlignment"]
     1572 GETIMPORT                        R54 K62 [UDim2.new]
     1574 LOADK                            R55 K285 [0.55]
     1575 LOADN                            R56 0
     1576 LOADN                            R57 1
     1577 LOADN                            R58 0
     1578 CALL                             R54 4 1
     1579 SETTABLEKS                       R54 R53 K58 ["Size"]
     1581 CALL                             R51 2 -1
     1582 CALL                             R49 -1 1
     1583 SETTABLEKS                       R49 R48 K139 ["Text"]
     1585 CALL                             R45 3 1
     1586 JUMP                             ; [+1]
     1587 LOADNIL                          R45
     1588 SETTABLEKS                       R45 R44 K76 ["TextFrame"]
     1590 GETUPVAL                         R45 0
     1591 JUMPIFNOT                        R45 ; [+15]
     1592 GETTABLEKS                       R45 R0 K7 ["state"]
     1594 GETTABLEKS                       R45 R45 K286 ["upsellDialogEnabled"]
     1596 JUMPIFNOT                        R45 ; [+10]
     1597 GETUPVAL                         R45 13
     1598 GETTABLEKS                       R45 R45 K56 ["createElement"]
     1600 GETUPVAL                         R46 43
     1601 DUPTABLE                         R47 K287 [{"onClose"}]
     1602 NEWCLOSURE                       R48 P14
     1603 CAPTURE                          VAL R0
     1604 SETTABLEKS                       R48 R47 K152 ["onClose"]
     1606 CALL                             R45 2 1
     1607 SETTABLEKS                       R45 R44 K77 ["upsellDialog"]
     1609 MOVE                             R45 R27
     1610 JUMPIFNOT                        R45 ; [+56]
     1611 GETUPVAL                         R45 11
     1612 GETTABLEKS                       R45 R45 K56 ["createElement"]
     1614 GETUPVAL                         R46 12
     1615 DUPTABLE                         R47 K99 [{"LayoutOrder", "Size"}]
     1616 NAMECALL                         R48 R34 K100 ["getNextOrder"]
     1618 CALL                             R48 1 1
     1619 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
     1621 GETIMPORT                        R48 K62 [UDim2.new]
     1623 LOADN                            R49 1
     1624 LOADN                            R50 0
     1625 LOADN                            R51 0
     1626 GETTABLEKS                       R52 R2 K47 ["footer"]
     1628 GETTABLEKS                       R52 R52 K46 ["height"]
     1630 CALL                             R48 4 1
     1631 SETTABLEKS                       R48 R47 K58 ["Size"]
     1633 DUPTABLE                         R48 K289 [{"Footer"}]
     1634 GETUPVAL                         R49 11
     1635 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1637 GETUPVAL                         R50 44
     1638 DUPTABLE                         R51 K293 [{"IsTeamCreateEnabled", "OnSavePressed", "OnCancelPressed", "OnViewAllPermissionsPressed"}]
     1639 SETTABLEKS                       R28 R51 K103 ["IsTeamCreateEnabled"]
     1641 NEWCLOSURE                       R52 P15
     1642 CAPTURE                          VAL R0
     1643 SETTABLEKS                       R52 R51 K290 ["OnSavePressed"]
     1645 NEWCLOSURE                       R52 P16
     1646 CAPTURE                          VAL R0
     1647 SETTABLEKS                       R52 R51 K291 ["OnCancelPressed"]
     1649 GETUPVAL                         R53 1
     1650 GETTABLEKS                       R53 R53 K294 ["fflagViewAllPermissionsInCreatorHub"]
     1652 JUMPIFNOT                        R53 ; [+7]
     1653 NAMECALL                         R53 R0 K204 ["isGroupGame"]
     1655 CALL                             R53 1 1
     1656 JUMPIFNOT                        R53 ; [+3]
     1657 NEWCLOSURE                       R52 P17
     1658 CAPTURE                          VAL R0
     1659 JUMP                             ; [+1]
     1660 LOADNIL                          R52
     1661 SETTABLEKS                       R52 R51 K292 ["OnViewAllPermissionsPressed"]
     1663 CALL                             R49 2 1
     1664 SETTABLEKS                       R49 R48 K288 ["Footer"]
     1666 CALL                             R45 3 1
     1667 SETTABLEKS                       R45 R44 K78 ["FooterContent"]
     1669 NOT                              R45 R17
     1670 JUMPIFNOT                        R45 ; [+22]
     1671 NOT                              R45 R18
     1672 JUMPIFNOT                        R45 ; [+20]
     1673 GETUPVAL                         R45 11
     1674 GETTABLEKS                       R45 R45 K56 ["createElement"]
     1676 GETUPVAL                         R46 45
     1677 DUPTABLE                         R47 K295 [{"AnchorPoint", "Position"}]
     1678 GETIMPORT                        R48 K281 [Vector2.new]
     1680 LOADK                            R49 K282 [0.5]
     1681 LOADK                            R50 K282 [0.5]
     1682 CALL                             R48 2 1
     1683 SETTABLEKS                       R48 R47 K275 ["AnchorPoint"]
     1685 GETIMPORT                        R48 K297 [UDim2.fromScale]
     1687 LOADK                            R49 K282 [0.5]
     1688 LOADK                            R50 K282 [0.5]
     1689 CALL                             R48 2 1
     1690 SETTABLEKS                       R48 R47 K276 ["Position"]
     1692 CALL                             R45 2 1
     1693 SETTABLEKS                       R45 R44 K79 ["LoadingIndicator"]
     1695 MOVE                             R45 R18
     1696 JUMPIFNOT                        R45 ; [+46]
     1697 GETUPVAL                         R45 11
     1698 GETTABLEKS                       R45 R45 K56 ["createElement"]
     1700 LOADK                            R46 K271 ["TextLabel"]
     1701 DUPTABLE                         R47 K301 [{"Text", "AnchorPoint", "Position", "TextColor3", "TextSize", "Font"}]
     1702 SETTABLEKS                       R19 R47 K139 ["Text"]
     1704 GETIMPORT                        R48 K281 [Vector2.new]
     1706 LOADK                            R49 K282 [0.5]
     1707 LOADK                            R50 K282 [0.5]
     1708 CALL                             R48 2 1
     1709 SETTABLEKS                       R48 R47 K275 ["AnchorPoint"]
     1711 GETIMPORT                        R48 K297 [UDim2.fromScale]
     1713 LOADK                            R49 K282 [0.5]
     1714 LOADK                            R50 K302 [0.25]
     1715 CALL                             R48 2 1
     1716 SETTABLEKS                       R48 R47 K276 ["Position"]
     1718 GETTABLEKS                       R48 R2 K303 ["fontStyle"]
     1720 GETTABLEKS                       R48 R48 K304 ["Normal"]
     1722 GETTABLEKS                       R48 R48 K298 ["TextColor3"]
     1724 SETTABLEKS                       R48 R47 K298 ["TextColor3"]
     1726 GETTABLEKS                       R48 R2 K303 ["fontStyle"]
     1728 GETTABLEKS                       R48 R48 K304 ["Normal"]
     1730 GETTABLEKS                       R48 R48 K299 ["TextSize"]
     1732 SETTABLEKS                       R48 R47 K299 ["TextSize"]
     1734 GETTABLEKS                       R48 R2 K303 ["fontStyle"]
     1736 GETTABLEKS                       R48 R48 K304 ["Normal"]
     1738 GETTABLEKS                       R48 R48 K300 ["Font"]
     1740 SETTABLEKS                       R48 R47 K300 ["Font"]
     1742 CALL                             R45 2 1
     1743 SETTABLEKS                       R45 R44 K80 ["FailureText"]
     1745 CALL                             R41 3 -1
     1746 RETURN                           R41 -1

PROTO_51:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 DUPTABLE                         R3 K15 [{"LoadState", "SaveState", "OwnerId", "OwnerType", "GroupOwnerUserId", "HasCollaborators", "HasCurrentEditCollaborators", "HasOutsideAgeBucketEditCollaborators", "HasCurrentUserBlockingCollaborators", "OwnerIsNotAgeVerified", "OwnerIsCountryBlocked", "GroupRolePermissions", "Is17PlusGame", "HasUnsavedChanges", "MigrationStatus"}]
        4 GETTABLEKS                       R4 R0 K0 ["LoadState"]
        6 GETTABLEKS                       R4 R4 K16 ["CurrentLoadState"]
        8 JUMPIF                           R4 ; [+3]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K17 ["Unloaded"]
       12 SETTABLEKS                       R4 R3 K0 ["LoadState"]
       14 GETTABLEKS                       R4 R0 K1 ["SaveState"]
       16 GETTABLEKS                       R4 R4 K18 ["CurrentSaveState"]
       18 JUMPIF                           R4 ; [+3]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K19 ["Unsaved"]
       22 SETTABLEKS                       R4 R3 K1 ["SaveState"]
       24 GETTABLEKS                       R4 R0 K20 ["GameOwnerMetadata"]
       26 GETTABLEKS                       R4 R4 K21 ["creatorId"]
       28 SETTABLEKS                       R4 R3 K2 ["OwnerId"]
       30 GETTABLEKS                       R4 R0 K20 ["GameOwnerMetadata"]
       32 GETTABLEKS                       R4 R4 K22 ["creatorType"]
       34 SETTABLEKS                       R4 R3 K3 ["OwnerType"]
       36 GETTABLEKS                       R4 R0 K20 ["GameOwnerMetadata"]
       38 GETTABLEKS                       R4 R4 K23 ["groupOwnerId"]
       40 SETTABLEKS                       R4 R3 K4 ["GroupOwnerUserId"]
       42 GETUPVAL                         R4 3
       43 MOVE                             R5 R0
       44 CALL                             R4 1 1
       45 SETTABLEKS                       R4 R3 K5 ["HasCollaborators"]
       47 GETUPVAL                         R4 4
       48 MOVE                             R5 R0
       49 CALL                             R4 1 1
       50 SETTABLEKS                       R4 R3 K6 ["HasCurrentEditCollaborators"]
       52 GETUPVAL                         R5 5
       53 GETTABLEKS                       R5 R5 K24 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
       55 JUMPIFNOT                        R5 ; [+4]
       56 GETUPVAL                         R4 6
       57 MOVE                             R5 R0
       58 CALL                             R4 1 1
       59 JUMP                             ; [+1]
       60 LOADNIL                          R4
       61 SETTABLEKS                       R4 R3 K7 ["HasOutsideAgeBucketEditCollaborators"]
       63 GETUPVAL                         R5 5
       64 GETTABLEKS                       R5 R5 K25 ["fflagManageCollaboratorsEditorBlockingBanner"]
       66 JUMPIFNOT                        R5 ; [+4]
       67 GETUPVAL                         R4 7
       68 MOVE                             R5 R0
       69 CALL                             R4 1 1
       70 JUMP                             ; [+1]
       71 LOADNIL                          R4
       72 SETTABLEKS                       R4 R3 K8 ["HasCurrentUserBlockingCollaborators"]
       74 GETUPVAL                         R5 5
       75 GETTABLEKS                       R5 R5 K26 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
       77 JUMPIFNOT                        R5 ; [+4]
       78 GETUPVAL                         R4 8
       79 MOVE                             R5 R0
       80 CALL                             R4 1 1
       81 JUMP                             ; [+1]
       82 LOADNIL                          R4
       83 SETTABLEKS                       R4 R3 K9 ["OwnerIsNotAgeVerified"]
       85 GETUPVAL                         R5 5
       86 GETTABLEKS                       R5 R5 K27 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       88 JUMPIFNOT                        R5 ; [+4]
       89 GETUPVAL                         R4 9
       90 MOVE                             R5 R0
       91 CALL                             R4 1 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R4
       94 SETTABLEKS                       R4 R3 K10 ["OwnerIsCountryBlocked"]
       96 GETTABLEKS                       R4 R0 K11 ["GroupRolePermissions"]
       98 GETTABLEKS                       R4 R4 K28 ["PermissionsByRole"]
      100 SETTABLEKS                       R4 R3 K11 ["GroupRolePermissions"]
      102 GETUPVAL                         R5 10
      103 JUMPIFNOT                        R5 ; [+4]
      104 GETUPVAL                         R4 11
      105 MOVE                             R5 R0
      106 CALL                             R4 1 1
      107 JUMP                             ; [+1]
      108 LOADNIL                          R4
      109 SETTABLEKS                       R4 R3 K12 ["Is17PlusGame"]
      111 SETTABLEKS                       R2 R3 K13 ["HasUnsavedChanges"]
      113 GETUPVAL                         R5 12
      114 JUMPIFNOT                        R5 ; [+4]
      115 GETUPVAL                         R4 13
      116 MOVE                             R5 R0
      117 CALL                             R4 1 1
      118 JUMP                             ; [+1]
      119 LOADNIL                          R4
      120 SETTABLEKS                       R4 R3 K14 ["MigrationStatus"]
      122 RETURN                           R3 1

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["LoadPermissions"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_53:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_54:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_55:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_56:
        0 DUPTABLE                         R1 K4 [{"LoadPermissions", "SavePermissions", "SendAllSearchItemLogs", "PrefetchLikelyCollaborators"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["LoadPermissions"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SavePermissions"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SendAllSearchItemLogs"]
       16 GETUPVAL                         R3 3
       17 JUMPIFNOT                        R3 ; [+4]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U4
       21 JUMP                             ; [+1]
       22 LOADNIL                          R2
       23 SETTABLEKS                       R2 R1 K3 ["PrefetchLikelyCollaborators"]
       25 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["COLLAB2850_FixMcTooltips"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Collab8864_ShowCopyLinkButton"]
       10 NAMECALL                         R1 R1 K3 ["GetFastFlag"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["Collab9031_ManageCollaboratorsEarlyFoundationMigration1"]
       16 NAMECALL                         R2 R2 K3 ["GetFastFlag"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["CollabPV2GroupMigration"]
       22 NAMECALL                         R3 R3 K3 ["GetFastFlag"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K1 [game]
       27 LOADK                            R6 K7 ["StudioPublishService"]
       28 NAMECALL                         R4 R4 K8 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K1 [game]
       33 LOADK                            R7 K9 ["StudioService"]
       34 NAMECALL                         R5 R5 K8 ["GetService"]
       36 CALL                             R5 2 1
       37 GETIMPORT                        R6 K1 [game]
       39 LOADK                            R8 K10 ["BrowserService"]
       40 NAMECALL                         R6 R6 K8 ["GetService"]
       42 CALL                             R6 2 1
       43 GETIMPORT                        R7 K1 [game]
       45 LOADK                            R9 K11 ["StartAuthorizationLink"]
       46 LOADK                            R10 K12 ["https://www.roblox.com/my/account?creatorCollaboration"]
       47 NAMECALL                         R7 R7 K13 ["DefineFastString"]
       49 CALL                             R7 3 1
       50 GETIMPORT                        R8 K15 [script]
       52 GETTABLEKS                       R8 R8 K16 ["Parent"]
       54 GETTABLEKS                       R8 R8 K16 ["Parent"]
       56 GETTABLEKS                       R8 R8 K16 ["Parent"]
       58 GETIMPORT                        R9 K18 [require]
       60 GETTABLEKS                       R10 R8 K19 ["Packages"]
       62 GETTABLEKS                       R10 R10 K20 ["Roact"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K18 [require]
       67 GETTABLEKS                       R11 R8 K19 ["Packages"]
       69 GETTABLEKS                       R11 R11 K21 ["RoactRodux"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K18 [require]
       74 GETTABLEKS                       R12 R8 K19 ["Packages"]
       76 GETTABLEKS                       R12 R12 K22 ["Cryo"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K18 [require]
       81 GETTABLEKS                       R13 R8 K23 ["Bin"]
       83 GETTABLEKS                       R13 R13 K24 ["defineLuaFlags"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K18 [require]
       88 GETTABLEKS                       R14 R8 K19 ["Packages"]
       90 GETTABLEKS                       R14 R14 K25 ["Framework"]
       92 CALL                             R13 1 1
       93 GETTABLEKS                       R14 R13 K26 ["ContextServices"]
       95 GETTABLEKS                       R15 R14 K27 ["withContext"]
       97 GETTABLEKS                       R16 R13 K28 ["Style"]
       99 GETTABLEKS                       R16 R16 K29 ["Stylizer"]
      101 GETTABLEKS                       R17 R14 K30 ["Localization"]
      103 GETTABLEKS                       R18 R13 K31 ["UI"]
      105 GETTABLEKS                       R19 R18 K32 ["ScrollingFrame"]
      107 GETTABLEKS                       R20 R18 K33 ["Container"]
      109 GETTABLEKS                       R21 R18 K34 ["LoadingIndicator"]
      111 GETTABLEKS                       R22 R18 K35 ["StyledDialog"]
      113 GETIMPORT                        R23 K18 [require]
      115 GETTABLEKS                       R24 R8 K19 ["Packages"]
      117 GETTABLEKS                       R24 R24 K36 ["Foundation"]
      119 CALL                             R23 1 1
      120 GETTABLEKS                       R24 R23 K37 ["Text"]
      122 GETTABLEKS                       R25 R23 K38 ["ScrollView"]
      124 GETTABLEKS                       R26 R23 K39 ["Enums"]
      126 GETTABLEKS                       R26 R26 K40 ["ScrollBarVisibility"]
      128 GETTABLEKS                       R27 R23 K39 ["Enums"]
      130 GETTABLEKS                       R28 R23 K41 ["Icon"]
      132 GETTABLEKS                       R29 R23 K42 ["IconButton"]
      134 GETTABLEKS                       R30 R23 K39 ["Enums"]
      136 GETTABLEKS                       R30 R30 K43 ["IconVariant"]
      138 GETTABLEKS                       R31 R23 K44 ["SystemBanner"]
      140 GETTABLEKS                       R32 R23 K45 ["FeedbackAlert"]
      142 GETTABLEKS                       R33 R23 K39 ["Enums"]
      144 GETTABLEKS                       R33 R33 K46 ["AlertVariant"]
      146 GETTABLEKS                       R34 R23 K39 ["Enums"]
      148 GETTABLEKS                       R34 R34 K47 ["AlertSeverity"]
      150 GETTABLEKS                       R35 R23 K39 ["Enums"]
      152 GETTABLEKS                       R35 R35 K48 ["ButtonVariant"]
      154 GETIMPORT                        R36 K18 [require]
      156 GETTABLEKS                       R37 R8 K49 ["Src"]
      158 GETTABLEKS                       R37 R37 K50 ["Util"]
      160 GETTABLEKS                       R37 R37 K51 ["ShowDialog"]
      162 CALL                             R36 1 1
      163 GETIMPORT                        R37 K18 [require]
      165 GETTABLEKS                       R38 R8 K49 ["Src"]
      167 GETTABLEKS                       R38 R38 K52 ["Components"]
      169 GETTABLEKS                       R38 R38 K53 ["CollaboratorsWidget"]
      171 CALL                             R37 1 1
      172 GETIMPORT                        R38 K18 [require]
      174 GETTABLEKS                       R39 R8 K49 ["Src"]
      176 GETTABLEKS                       R39 R39 K52 ["Components"]
      178 GETTABLEKS                       R39 R39 K54 ["CollaboratorSearchWidget"]
      180 CALL                             R38 1 1
      181 GETIMPORT                        R39 K18 [require]
      183 GETTABLEKS                       R40 R8 K49 ["Src"]
      185 GETTABLEKS                       R40 R40 K52 ["Components"]
      187 GETTABLEKS                       R40 R40 K55 ["CollaboratorFilterWidget"]
      189 CALL                             R39 1 1
      190 GETIMPORT                        R40 K18 [require]
      192 GETTABLEKS                       R41 R8 K49 ["Src"]
      194 GETTABLEKS                       R41 R41 K52 ["Components"]
      196 GETTABLEKS                       R41 R41 K56 ["CollaboratorAudienceTabs"]
      198 CALL                             R40 1 1
      199 GETIMPORT                        R41 K18 [require]
      201 GETTABLEKS                       R42 R8 K49 ["Src"]
      203 GETTABLEKS                       R42 R42 K52 ["Components"]
      205 GETTABLEKS                       R42 R42 K57 ["Footer"]
      207 CALL                             R41 1 1
      208 GETIMPORT                        R42 K18 [require]
      210 GETTABLEKS                       R43 R8 K49 ["Src"]
      212 GETTABLEKS                       R43 R43 K50 ["Util"]
      214 GETTABLEKS                       R43 R43 K58 ["Constants"]
      216 CALL                             R42 1 1
      217 GETIMPORT                        R43 K18 [require]
      219 GETTABLEKS                       R44 R8 K49 ["Src"]
      221 GETTABLEKS                       R44 R44 K50 ["Util"]
      223 GETTABLEKS                       R44 R44 K59 ["ShouldShowAudienceTabs"]
      225 CALL                             R43 1 1
      226 GETIMPORT                        R44 K18 [require]
      228 GETTABLEKS                       R45 R8 K49 ["Src"]
      230 GETTABLEKS                       R45 R45 K60 ["Thunks"]
      232 GETTABLEKS                       R45 R45 K61 ["SavePermissions"]
      234 CALL                             R44 1 1
      235 GETIMPORT                        R45 K18 [require]
      237 GETTABLEKS                       R46 R8 K49 ["Src"]
      239 GETTABLEKS                       R46 R46 K60 ["Thunks"]
      241 GETTABLEKS                       R46 R46 K62 ["PermissionsLoader"]
      243 CALL                             R45 1 1
      244 GETIMPORT                        R46 K18 [require]
      246 GETTABLEKS                       R47 R8 K49 ["Src"]
      248 GETTABLEKS                       R47 R47 K60 ["Thunks"]
      250 GETTABLEKS                       R47 R47 K63 ["SendAllSearchItemLogs"]
      252 CALL                             R46 1 1
      253 GETIMPORT                        R47 K1 [game]
      255 LOADK                            R49 K64 ["UpsellCollabSafety2"]
      256 NAMECALL                         R47 R47 K3 ["GetFastFlag"]
      258 CALL                             R47 2 1
      259 GETIMPORT                        R48 K1 [game]
      261 LOADK                            R50 K65 ["UpsellCollabTrustedConnection2"]
      262 NAMECALL                         R48 R48 K3 ["GetFastFlag"]
      264 CALL                             R48 2 1
      265 GETIMPORT                        R49 K18 [require]
      267 GETTABLEKS                       R50 R8 K49 ["Src"]
      269 GETTABLEKS                       R50 R50 K66 ["Networking"]
      271 GETTABLEKS                       R50 R50 K67 ["Requests"]
      273 GETTABLEKS                       R50 R50 K68 ["GetAMPRequest"]
      275 CALL                             R49 1 1
      276 GETIMPORT                        R50 K18 [require]
      278 GETTABLEKS                       R51 R8 K49 ["Src"]
      280 GETTABLEKS                       R51 R51 K50 ["Util"]
      282 GETTABLEKS                       R51 R51 K69 ["IsLikelyCollaboratorPrefetchEnabled"]
      284 CALL                             R50 1 1
      285 MOVE                             R51 R50
      286 CALL                             R51 0 1
      287 LOADNIL                          R52
      288 LOADNIL                          R53
      289 JUMPIFNOT                        R51 ; [+20]
      290 GETIMPORT                        R54 K18 [require]
      292 GETTABLEKS                       R55 R8 K49 ["Src"]
      294 GETTABLEKS                       R55 R55 K60 ["Thunks"]
      296 GETTABLEKS                       R55 R55 K70 ["PrefetchLikelyCollaborators"]
      298 CALL                             R54 1 1
      299 MOVE                             R52 R54
      300 GETIMPORT                        R54 K18 [require]
      302 GETTABLEKS                       R55 R8 K49 ["Src"]
      304 GETTABLEKS                       R55 R55 K71 ["Selectors"]
      306 GETTABLEKS                       R55 R55 K72 ["IsGame17Plus"]
      308 CALL                             R54 1 1
      309 MOVE                             R53 R54
      310 GETIMPORT                        R54 K18 [require]
      312 GETTABLEKS                       R55 R8 K49 ["Src"]
      314 GETTABLEKS                       R55 R55 K50 ["Util"]
      316 GETTABLEKS                       R55 R55 K73 ["LoadState"]
      318 CALL                             R54 1 1
      319 GETIMPORT                        R55 K18 [require]
      321 GETTABLEKS                       R56 R8 K49 ["Src"]
      323 GETTABLEKS                       R56 R56 K50 ["Util"]
      325 GETTABLEKS                       R56 R56 K74 ["SaveState"]
      327 CALL                             R55 1 1
      328 GETIMPORT                        R56 K18 [require]
      330 GETTABLEKS                       R57 R8 K49 ["Src"]
      332 GETTABLEKS                       R57 R57 K71 ["Selectors"]
      334 GETTABLEKS                       R57 R57 K75 ["GetHasCollaborators"]
      336 CALL                             R56 1 1
      337 GETIMPORT                        R57 K18 [require]
      339 GETTABLEKS                       R58 R8 K49 ["Src"]
      341 GETTABLEKS                       R58 R58 K71 ["Selectors"]
      343 GETTABLEKS                       R58 R58 K76 ["GetHasCurrentEditCollaborators"]
      345 CALL                             R57 1 1
      346 GETIMPORT                        R58 K18 [require]
      348 GETTABLEKS                       R59 R8 K49 ["Src"]
      350 GETTABLEKS                       R59 R59 K71 ["Selectors"]
      352 GETTABLEKS                       R59 R59 K77 ["GetHasUnsavedChanges"]
      354 CALL                             R58 1 1
      355 GETIMPORT                        R59 K18 [require]
      357 GETTABLEKS                       R60 R8 K49 ["Src"]
      359 GETTABLEKS                       R60 R60 K71 ["Selectors"]
      361 GETTABLEKS                       R60 R60 K78 ["GetHasOutsideAgeBucketEditCollaborators"]
      363 CALL                             R59 1 1
      364 GETIMPORT                        R60 K18 [require]
      366 GETTABLEKS                       R61 R8 K49 ["Src"]
      368 GETTABLEKS                       R61 R61 K71 ["Selectors"]
      370 GETTABLEKS                       R61 R61 K79 ["GetCurrentUserIsBlockingCollaborators"]
      372 CALL                             R60 1 1
      373 GETIMPORT                        R61 K18 [require]
      375 GETTABLEKS                       R62 R8 K49 ["Src"]
      377 GETTABLEKS                       R62 R62 K71 ["Selectors"]
      379 GETTABLEKS                       R62 R62 K80 ["GetOwnerIsNotAgeVerified"]
      381 CALL                             R61 1 1
      382 GETIMPORT                        R62 K18 [require]
      384 GETTABLEKS                       R63 R8 K49 ["Src"]
      386 GETTABLEKS                       R63 R63 K71 ["Selectors"]
      388 GETTABLEKS                       R63 R63 K81 ["GetMigrationStatus"]
      390 CALL                             R62 1 1
      391 GETIMPORT                        R63 K18 [require]
      393 GETTABLEKS                       R64 R8 K49 ["Src"]
      395 GETTABLEKS                       R64 R64 K50 ["Util"]
      397 GETTABLEKS                       R64 R64 K82 ["MigrationStatus"]
      399 CALL                             R63 1 1
      400 GETIMPORT                        R64 K18 [require]
      402 GETTABLEKS                       R65 R8 K49 ["Src"]
      404 GETTABLEKS                       R65 R65 K71 ["Selectors"]
      406 GETTABLEKS                       R65 R65 K83 ["GetOwnerIsCountryBlocked"]
      408 CALL                             R64 1 1
      409 GETIMPORT                        R65 K18 [require]
      411 GETTABLEKS                       R66 R8 K49 ["Src"]
      413 GETTABLEKS                       R66 R66 K50 ["Util"]
      415 GETTABLEKS                       R66 R66 K84 ["IsTeamCreateEnabled"]
      417 CALL                             R65 1 1
      418 GETTABLEKS                       R66 R13 K50 ["Util"]
      420 GETTABLEKS                       R67 R66 K85 ["LayoutOrderIterator"]
      422 GETIMPORT                        R68 K18 [require]
      424 GETTABLEKS                       R69 R8 K49 ["Src"]
      426 GETTABLEKS                       R69 R69 K50 ["Util"]
      428 GETTABLEKS                       R69 R69 K86 ["Analytics"]
      430 CALL                             R68 1 1
      431 OR                               R69 R2 R1
      432 GETTABLEKS                       R70 R23 K87 ["View"]
      434 GETIMPORT                        R71 K18 [require]
      436 GETTABLEKS                       R72 R8 K19 ["Packages"]
      438 GETTABLEKS                       R72 R72 K88 ["React"]
      440 CALL                             R71 1 1
      441 GETIMPORT                        R72 K18 [require]
      443 GETTABLEKS                       R73 R8 K49 ["Src"]
      445 GETTABLEKS                       R73 R73 K52 ["Components"]
      447 GETTABLEKS                       R73 R73 K89 ["Header"]
      449 CALL                             R72 1 1
      450 GETTABLEKS                       R73 R9 K90 ["PureComponent"]
      452 LOADK                            R75 K91 ["PermissionsView"]
      453 NAMECALL                         R73 R73 K92 ["extend"]
      455 CALL                             R73 2 1
      456 GETIMPORT                        R74 K18 [require]
      458 GETTABLEKS                       R75 R8 K49 ["Src"]
      460 GETTABLEKS                       R75 R75 K50 ["Util"]
      462 GETTABLEKS                       R75 R75 K93 ["Telemetry"]
      464 GETTABLEKS                       R75 R75 K94 ["CTAClickedEvent"]
      466 CALL                             R74 1 1
      467 GETIMPORT                        R75 K18 [require]
      469 GETTABLEKS                       R76 R8 K49 ["Src"]
      471 GETTABLEKS                       R76 R76 K50 ["Util"]
      473 GETTABLEKS                       R76 R76 K93 ["Telemetry"]
      475 GETTABLEKS                       R76 R76 K95 ["SafetyUpsellBannerShownEvent"]
      477 CALL                             R75 1 1
      478 GETIMPORT                        R76 K18 [require]
      480 GETTABLEKS                       R77 R8 K19 ["Packages"]
      482 GETTABLEKS                       R77 R77 K96 ["TelemetryProtocol"]
      484 CALL                             R76 1 1
      485 GETTABLEKS                       R77 R76 K97 ["new"]
      487 CALL                             R77 0 1
      488 GETIMPORT                        R78 K18 [require]
      490 GETTABLEKS                       R79 R8 K49 ["Src"]
      492 GETTABLEKS                       R79 R79 K52 ["Components"]
      494 GETTABLEKS                       R79 R79 K98 ["UpsellDialog"]
      496 CALL                             R78 1 1
      497 DUPCLOSURE                       R79 K99 [PROTO_0]
      498 CAPTURE                          VAL R47
      499 CAPTURE                          VAL R77
      500 CAPTURE                          VAL R74
      501 CAPTURE                          VAL R5
      502 DUPCLOSURE                       R80 K100 [PROTO_2]
      503 CAPTURE                          VAL R6
      504 DUPCLOSURE                       R81 K101 [PROTO_3]
      505 SETTABLEKS                       R81 R73 K102 ["isGroupGame"]
      507 DUPCLOSURE                       R81 K103 [PROTO_4]
      508 CAPTURE                          VAL R5
      509 SETTABLEKS                       R81 R73 K104 ["isLoggedInUserGameOwner"]
      511 DUPCLOSURE                       R81 K105 [PROTO_5]
      512 CAPTURE                          VAL R43
      513 SETTABLEKS                       R81 R73 K106 ["shouldShowAudienceTabs"]
      515 DUPCLOSURE                       R81 K107 [PROTO_6]
      516 CAPTURE                          VAL R42
      517 SETTABLEKS                       R81 R73 K108 ["getAudienceTabs"]
      519 DUPCLOSURE                       R81 K109 [PROTO_14]
      520 CAPTURE                          VAL R42
      521 CAPTURE                          VAL R9
      522 CAPTURE                          VAL R47
      523 CAPTURE                          VAL R77
      524 CAPTURE                          VAL R74
      525 CAPTURE                          VAL R5
      526 CAPTURE                          VAL R7
      527 CAPTURE                          VAL R6
      528 CAPTURE                          VAL R12
      529 CAPTURE                          VAL R75
      530 SETTABLEKS                       R81 R73 K110 ["init"]
      532 DUPCLOSURE                       R81 K111 [PROTO_27]
      533 CAPTURE                          VAL R48
      534 CAPTURE                          VAL R49
      535 CAPTURE                          VAL R77
      536 CAPTURE                          VAL R75
      537 CAPTURE                          VAL R5
      538 CAPTURE                          VAL R12
      539 SETTABLEKS                       R81 R73 K112 ["didUpdate"]
      541 DUPCLOSURE                       R81 K113 [PROTO_28]
      542 CAPTURE                          VAL R65
      543 CAPTURE                          VAL R4
      544 SETTABLEKS                       R81 R73 K114 ["onSavePressed"]
      546 DUPCLOSURE                       R81 K115 [PROTO_31]
      547 CAPTURE                          VAL R68
      548 CAPTURE                          VAL R36
      549 CAPTURE                          VAL R22
      550 CAPTURE                          VAL R9
      551 SETTABLEKS                       R81 R73 K116 ["onCancelPressed"]
      553 DUPCLOSURE                       R81 K117 [PROTO_50]
      554 CAPTURE                          VAL R48
      555 CAPTURE                          VAL R12
      556 CAPTURE                          VAL R55
      557 CAPTURE                          VAL R54
      558 CAPTURE                          VAL R51
      559 CAPTURE                          VAL R3
      560 CAPTURE                          VAL R63
      561 CAPTURE                          VAL R65
      562 CAPTURE                          VAL R69
      563 CAPTURE                          VAL R67
      564 CAPTURE                          VAL R47
      565 CAPTURE                          VAL R9
      566 CAPTURE                          VAL R20
      567 CAPTURE                          VAL R71
      568 CAPTURE                          VAL R72
      569 CAPTURE                          VAL R4
      570 CAPTURE                          VAL R70
      571 CAPTURE                          VAL R28
      572 CAPTURE                          VAL R27
      573 CAPTURE                          VAL R30
      574 CAPTURE                          VAL R24
      575 CAPTURE                          VAL R31
      576 CAPTURE                          VAL R33
      577 CAPTURE                          VAL R34
      578 CAPTURE                          VAL R35
      579 CAPTURE                          VAL R77
      580 CAPTURE                          VAL R74
      581 CAPTURE                          VAL R5
      582 CAPTURE                          VAL R7
      583 CAPTURE                          VAL R6
      584 CAPTURE                          VAL R29
      585 CAPTURE                          VAL R23
      586 CAPTURE                          VAL R32
      587 CAPTURE                          VAL R2
      588 CAPTURE                          VAL R25
      589 CAPTURE                          VAL R26
      590 CAPTURE                          VAL R38
      591 CAPTURE                          VAL R40
      592 CAPTURE                          VAL R39
      593 CAPTURE                          VAL R37
      594 CAPTURE                          VAL R0
      595 CAPTURE                          VAL R19
      596 CAPTURE                          VAL R11
      597 CAPTURE                          VAL R78
      598 CAPTURE                          VAL R41
      599 CAPTURE                          VAL R21
      600 SETTABLEKS                       R81 R73 K118 ["render"]
      602 MOVE                             R81 R15
      603 DUPTABLE                         R82 K119 [{"Stylizer", "Localization"}]
      604 SETTABLEKS                       R16 R82 K29 ["Stylizer"]
      606 SETTABLEKS                       R17 R82 K30 ["Localization"]
      608 CALL                             R81 1 1
      609 MOVE                             R82 R73
      610 CALL                             R81 1 1
      611 MOVE                             R73 R81
      612 GETTABLEKS                       R81 R10 K120 ["connect"]
      614 NEWCLOSURE                       R82 P11
      615 CAPTURE                          VAL R58
      616 CAPTURE                          VAL R54
      617 CAPTURE                          VAL R55
      618 CAPTURE                          VAL R56
      619 CAPTURE                          VAL R57
      620 CAPTURE                          VAL R12
      621 CAPTURE                          VAL R59
      622 CAPTURE                          VAL R60
      623 CAPTURE                          VAL R61
      624 CAPTURE                          VAL R64
      625 CAPTURE                          VAL R51
      626 CAPTURE                          REF R53
      627 CAPTURE                          VAL R3
      628 CAPTURE                          VAL R62
      629 NEWCLOSURE                       R83 P12
      630 CAPTURE                          VAL R45
      631 CAPTURE                          VAL R44
      632 CAPTURE                          VAL R46
      633 CAPTURE                          VAL R51
      634 CAPTURE                          REF R52
      635 CALL                             R81 2 1
      636 MOVE                             R82 R73
      637 CALL                             R81 1 1
      638 MOVE                             R73 R81
      639 CLOSEUPVALS                      R52
      640 RETURN                           R73 1
