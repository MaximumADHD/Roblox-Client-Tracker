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
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["fflagGroupGameEarlyTesters"]
        5 JUMPIFNOT                        R2 ; [+22]
        6 GETUPVAL                         R2 1
        7 JUMPIFNOT                        R2 ; [+20]
        8 NAMECALL                         R2 R0 K2 ["isGroupGame"]
       10 CALL                             R2 1 1
       11 JUMPIFNOT                        R2 ; [+16]
       12 LOADB                            R2 0
       13 GETTABLEKS                       R3 R1 K3 ["MigrationStatus"]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K4 ["MIGRATED"]
       18 JUMPIFNOTEQ                      R3 R4 ; [+9]
       20 NAMECALL                         R2 R0 K5 ["isLoggedInUserGameOwner"]
       22 CALL                             R2 1 1
       23 JUMPIFNOT                        R2 ; [+4]
       24 NAMECALL                         R3 R0 K6 ["shouldShowAudienceTabs"]
       26 CALL                             R3 1 1
       27 NOT                              R2 R3
       28 RETURN                           R2 1

PROTO_7:
        0 NEWTABLE                         R2 0 2
        2 DUPTABLE                         R3 K2 [{"id", "text"}]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K3 ["AUDIENCE_TAB_ACCESS"]
        6 SETTABLEKS                       R4 R3 K0 ["id"]
        8 LOADK                            R6 K4 ["AudienceTabs"]
        9 LOADK                            R7 K5 ["Access"]
       10 NAMECALL                         R4 R1 K6 ["getText"]
       12 CALL                             R4 3 1
       13 SETTABLEKS                       R4 R3 K1 ["text"]
       15 DUPTABLE                         R4 K2 [{"id", "text"}]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K7 ["AUDIENCE_TAB_EARLY_TESTERS"]
       19 SETTABLEKS                       R5 R4 K0 ["id"]
       21 LOADK                            R7 K4 ["AudienceTabs"]
       22 LOADK                            R8 K8 ["EarlyTesters"]
       23 NAMECALL                         R5 R1 K6 ["getText"]
       25 CALL                             R5 3 1
       26 SETTABLEKS                       R5 R4 K1 ["text"]
       28 SETLIST                          R2 R3 2 [1]
       30 RETURN                           R2 1

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 DUPTABLE                         R1 K2 [{[1] = True}]
        1 RETURN                           R1 1

PROTO_14:
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
       13 DUPCLOSURE                       R2 K8 [PROTO_13]
       14 NAMECALL                         R0 R0 K9 ["setState"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R1 K3 [{[1] = False, ["ActiveAudienceTab"]}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K4 ["AUDIENCE_TAB_ACCESS"]
        4 SETTABLEKS                       R2 R1 K2 ["ActiveAudienceTab"]
        6 SETTABLEKS                       R1 R0 K5 ["state"]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K6 ["createRef"]
       11 CALL                             R1 0 1
       12 SETTABLEKS                       R1 R0 K7 ["scrollingFrameRef"]
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K8 ["contentHeightChanged"]
       18 DUPCLOSURE                       R1 K9 [PROTO_9]
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U7
       25 SETTABLEKS                       R1 R0 K10 ["launchFAEPlusVPC"]
       27 DUPCLOSURE                       R1 K11 [PROTO_10]
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U8
       33 CAPTURE                          UPVAL U7
       34 SETTABLEKS                       R1 R0 K12 ["launchCreatorHub"]
       36 DUPCLOSURE                       R1 K13 [PROTO_11]
       37 CAPTURE                          UPVAL U8
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          UPVAL U7
       43 SETTABLEKS                       R1 R0 K14 ["launchCreatorHubUniverseSafetyView"]
       45 DUPCLOSURE                       R1 K15 [PROTO_12]
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

PROTO_16:
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

PROTO_17:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_17]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_20]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"ShowTrustedConnectionsOption"}]
        2 SETTABLEKS                       R0 R3 K0 ["ShowTrustedConnectionsOption"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_23:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 RETURN                           R1 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_23]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 RETURN                           R1 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_26]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_28:
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

PROTO_29:
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

PROTO_30:
        0 JUMPIFNOTEQKS                    R0 K0 ["YES"] ; [+6]
        2 GETUPVAL                         R1 0
        3 DUPTABLE                         R2 K6 [{["isAdded"] = False, ["isCanceled"] = True, ["isRemoved"] = False}]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_31:
        0 RETURN                           R0 0

PROTO_32:
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
       61 DUPCLOSURE                       R14 K30 [PROTO_31]
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

PROTO_33:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onSavePressed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K5 [{[1] = False, ["isCanceled"] = True, ["isRemoved"] = False}]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 NAMECALL                         R0 R0 K6 ["PublishThenTurnOnTeamCreate"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_36:
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

PROTO_37:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_38:
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

PROTO_39:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_40:
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

PROTO_41:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_42:
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

PROTO_43:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"ActiveAudienceTab"}]
        2 SETTABLEKS                       R0 R3 K0 ["ActiveAudienceTab"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"ActiveAudienceTab"}]
        2 SETTABLEKS                       R0 R3 K0 ["ActiveAudienceTab"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onSavePressed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onCancelPressed"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["launchCreatorHubExperiencePermissionsView"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_51:
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
      224 NAMECALL                         R36 R0 K51 ["shouldUseEarlyTesterChipLayout"]
      226 CALL                             R36 1 1
      227 GETTABLEKS                       R37 R1 K52 ["SelectedPill"]
      229 MOVE                             R38 R20
      230 JUMPIFNOT                        R38 ; [+11]
      231 NOT                              R38 R36
      232 JUMPIF                           R38 ; [+9]
      233 LOADB                            R38 0
      234 JUMPIFEQKNIL                     R37 ; [+7]
      236 GETTABLEKS                       R39 R37 K53 ["key"]
      238 JUMPIFEQKS                       R39 K54 ["Creators"] ; [+2]
      240 LOADB                            R38 0 +1
      241 LOADB                            R38 1
      242 LOADNIL                          R39
      243 LOADNIL                          R40
      244 JUMPIFNOT                        R36 ; [+8]
      245 NAMECALL                         R41 R35 K55 ["getNextOrder"]
      247 CALL                             R41 1 1
      248 MOVE                             R40 R41
      249 NAMECALL                         R41 R35 K55 ["getNextOrder"]
      251 CALL                             R41 1 1
      252 MOVE                             R39 R41
      253 GETUPVAL                         R42 10
      254 JUMPIFNOT                        R42 ; [+5]
      255 GETUPVAL                         R41 9
      256 GETTABLEKS                       R41 R41 K50 ["new"]
      258 CALL                             R41 0 1
      259 JUMP                             ; [+1]
      260 LOADNIL                          R41
      261 GETUPVAL                         R42 10
      262 JUMPIFNOT                        R42 ; [+8]
      263 MOVE                             R42 R7
      264 JUMPIF                           R42 ; [+6]
      265 MOVE                             R42 R12
      266 JUMPIF                           R42 ; [+4]
      267 GETUPVAL                         R43 1
      268 GETTABLEKS                       R43 R43 K20 ["fflagUpsellMCCollabReverification"]
      270 AND                              R42 R43 R14
      271 LOADK                            R45 K56 ["UpsellBanner"]
      272 LOADK                            R46 K57 ["RecheckAge"]
      273 NAMECALL                         R43 R3 K35 ["getText"]
      275 CALL                             R43 3 1
      276 LOADK                            R46 K56 ["UpsellBanner"]
      277 LOADK                            R47 K58 ["AgeCheckNotValid"]
      278 NAMECALL                         R44 R3 K35 ["getText"]
      280 CALL                             R44 3 1
      281 LOADK                            R47 K59 ["Buttons"]
      282 LOADK                            R48 K60 ["Continue"]
      283 NAMECALL                         R45 R3 K35 ["getText"]
      285 CALL                             R45 3 1
      286 GETUPVAL                         R46 11
      287 GETTABLEKS                       R46 R46 K61 ["createElement"]
      289 LOADK                            R47 K62 ["Frame"]
      290 DUPTABLE                         R48 K65 [{"Size", "BackgroundColor3"}]
      291 GETIMPORT                        R49 K67 [UDim2.new]
      293 LOADN                            R50 1
      294 LOADN                            R51 0
      295 LOADN                            R52 1
      296 LOADN                            R53 0
      297 CALL                             R49 4 1
      298 SETTABLEKS                       R49 R48 K63 ["Size"]
      300 GETTABLEKS                       R49 R2 K68 ["backgroundColor"]
      302 SETTABLEKS                       R49 R48 K64 ["BackgroundColor3"]
      304 DUPTABLE                         R49 K86 [{"Layout", "HeaderContent", "Spacer", "UpsellBanner", "TrustedConnectionsBanner", "ReverificationBanner", "OutsideAgeBucketBanner", "EditorBlockingBanner", "OwnerNotAgeVerifiedBanner", "OwnerCountryBlockedBanner", "CollaborationSubtitleTitleView", "ScrollingFrameNew", "ScrollingFrame", "TextFrame", "upsellDialog", "FooterContent", "LoadingIndicator", "FailureText"}]
      305 MOVE                             R50 R27
      306 JUMPIFNOT                        R50 ; [+28]
      307 GETUPVAL                         R50 11
      308 GETTABLEKS                       R50 R50 K61 ["createElement"]
      310 LOADK                            R51 K87 ["UIListLayout"]
      311 DUPTABLE                         R52 K92 [{"FillDirection", "SortOrder", "HorizontalAlignment", "Padding"}]
      312 GETIMPORT                        R53 K95 [Enum.FillDirection.Vertical]
      314 SETTABLEKS                       R53 R52 K88 ["FillDirection"]
      316 GETIMPORT                        R53 K97 [Enum.SortOrder.LayoutOrder]
      318 SETTABLEKS                       R53 R52 K89 ["SortOrder"]
      320 GETIMPORT                        R53 K99 [Enum.HorizontalAlignment.Center]
      322 SETTABLEKS                       R53 R52 K90 ["HorizontalAlignment"]
      324 GETIMPORT                        R53 K101 [UDim.new]
      326 LOADN                            R54 0
      327 GETTABLEKS                       R55 R2 K102 ["permissionsView"]
      329 GETTABLEKS                       R55 R55 K91 ["Padding"]
      331 CALL                             R53 2 1
      332 SETTABLEKS                       R53 R52 K91 ["Padding"]
      334 CALL                             R50 2 1
      335 SETTABLEKS                       R50 R49 K69 ["Layout"]
      337 GETUPVAL                         R51 1
      338 GETTABLEKS                       R51 R51 K103 ["fflagRemoveHeaderWithUpsellBanner2"]
      340 NOT                              R50 R51
      341 JUMPIFNOT                        R50 ; [+73]
      342 NOT                              R50 R42
      343 JUMPIFNOT                        R50 ; [+71]
      344 GETUPVAL                         R50 8
      345 JUMPIFNOT                        R50 ; [+69]
      346 MOVE                             R50 R27
      347 JUMPIFNOT                        R50 ; [+67]
      348 GETUPVAL                         R50 11
      349 GETTABLEKS                       R50 R50 K61 ["createElement"]
      351 GETUPVAL                         R51 12
      352 DUPTABLE                         R52 K104 [{"LayoutOrder", "Size"}]
      353 NAMECALL                         R53 R34 K55 ["getNextOrder"]
      355 CALL                             R53 1 1
      356 SETTABLEKS                       R53 R52 K96 ["LayoutOrder"]
      358 GETIMPORT                        R53 K67 [UDim2.new]
      360 LOADN                            R54 1
      361 LOADN                            R55 0
      362 LOADN                            R56 0
      363 GETTABLEKS                       R57 R2 K45 ["header"]
      365 GETTABLEKS                       R57 R57 K46 ["height"]
      367 CALL                             R53 4 1
      368 SETTABLEKS                       R53 R52 K63 ["Size"]
      370 DUPTABLE                         R53 K106 [{"Header"}]
      371 GETUPVAL                         R54 13
      372 GETTABLEKS                       R54 R54 K61 ["createElement"]
      374 GETUPVAL                         R55 14
      375 DUPTABLE                         R56 K114 [{"Stylizer", "Localization", "IsTeamCreateEnabled", "HasUnsavedChanges", "HasCollaborators", "Plugin", "SaveThenTurnOnTeamCreate", "TurnOnTeamCreate", "Links", "FetchLink"}]
      376 SETTABLEKS                       R2 R56 K2 ["Stylizer"]
      378 SETTABLEKS                       R3 R56 K3 ["Localization"]
      380 SETTABLEKS                       R28 R56 K107 ["IsTeamCreateEnabled"]
      382 GETTABLEKS                       R57 R1 K108 ["HasUnsavedChanges"]
      384 SETTABLEKS                       R57 R56 K108 ["HasUnsavedChanges"]
      386 GETTABLEKS                       R57 R1 K6 ["HasCollaborators"]
      388 SETTABLEKS                       R57 R56 K6 ["HasCollaborators"]
      390 GETTABLEKS                       R57 R1 K109 ["Plugin"]
      392 SETTABLEKS                       R57 R56 K109 ["Plugin"]
      394 NEWCLOSURE                       R57 P0
      395 CAPTURE                          VAL R0
      396 SETTABLEKS                       R57 R56 K110 ["SaveThenTurnOnTeamCreate"]
      398 NEWCLOSURE                       R57 P1
      399 CAPTURE                          VAL R16
      400 CAPTURE                          UPVAL U15
      401 SETTABLEKS                       R57 R56 K111 ["TurnOnTeamCreate"]
      403 GETTABLEKS                       R57 R1 K112 ["Links"]
      405 SETTABLEKS                       R57 R56 K112 ["Links"]
      407 GETTABLEKS                       R57 R1 K113 ["FetchLink"]
      409 SETTABLEKS                       R57 R56 K113 ["FetchLink"]
      411 CALL                             R54 2 1
      412 SETTABLEKS                       R54 R53 K105 ["Header"]
      414 CALL                             R50 3 1
      415 SETTABLEKS                       R50 R49 K70 ["HeaderContent"]
      417 GETUPVAL                         R50 1
      418 GETTABLEKS                       R50 R50 K103 ["fflagRemoveHeaderWithUpsellBanner2"]
      420 JUMPIFNOT                        R50 ; [+40]
      421 MOVE                             R50 R42
      422 JUMPIFNOT                        R50 ; [+38]
      423 GETUPVAL                         R51 1
      424 GETTABLEKS                       R51 R51 K11 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      426 JUMPIF                           R51 ; [+3]
      427 GETUPVAL                         R51 1
      428 GETTABLEKS                       R51 R51 K13 ["fflagManageCollaboratorsEditorBlockingBanner"]
      430 NOT                              R50 R51
      431 JUMPIFNOT                        R50 ; [+29]
      432 GETUPVAL                         R51 1
      433 GETTABLEKS                       R51 R51 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      435 JUMPIF                           R51 ; [+3]
      436 GETUPVAL                         R51 1
      437 GETTABLEKS                       R51 R51 K15 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      439 NOT                              R50 R51
      440 JUMPIFNOT                        R50 ; [+20]
      441 GETUPVAL                         R50 13
      442 GETTABLEKS                       R50 R50 K61 ["createElement"]
      444 GETUPVAL                         R51 16
      445 DUPTABLE                         R52 K104 [{"LayoutOrder", "Size"}]
      446 NAMECALL                         R53 R34 K55 ["getNextOrder"]
      448 CALL                             R53 1 1
      449 SETTABLEKS                       R53 R52 K96 ["LayoutOrder"]
      451 GETIMPORT                        R53 K67 [UDim2.new]
      453 LOADN                            R54 1
      454 LOADN                            R55 0
      455 LOADN                            R56 0
      456 LOADN                            R57 10
      457 CALL                             R53 4 1
      458 SETTABLEKS                       R53 R52 K63 ["Size"]
      460 CALL                             R50 2 1
      461 SETTABLEKS                       R50 R49 K71 ["Spacer"]
      463 GETUPVAL                         R50 10
      464 JUMPIFNOT                        R50 ; [+148]
      465 MOVE                             R50 R7
      466 JUMPIFNOT                        R50 ; [+146]
      467 GETUPVAL                         R51 1
      468 GETTABLEKS                       R51 R51 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      470 NOT                              R50 R51
      471 JUMPIFNOT                        R50 ; [+141]
      472 GETUPVAL                         R50 11
      473 GETTABLEKS                       R50 R50 K61 ["createElement"]
      475 GETUPVAL                         R51 16
      476 DUPTABLE                         R52 K118 [{["LayoutOrder"], ["Size"], ["tag"] = "auto-xy padding-left-large stroke-system-emphasis radius-small bg-over-media-300", ["onActivated"]}]
      477 NAMECALL                         R53 R34 K55 ["getNextOrder"]
      479 CALL                             R53 1 1
      480 SETTABLEKS                       R53 R52 K96 ["LayoutOrder"]
      482 GETIMPORT                        R53 K67 [UDim2.new]
      484 LOADN                            R54 0
      485 LOADN                            R55 770
      486 LOADN                            R56 0
      487 LOADN                            R57 50
      488 CALL                             R53 4 1
      489 SETTABLEKS                       R53 R52 K63 ["Size"]
      491 GETTABLEKS                       R53 R0 K119 ["launchFAEPlusVPC"]
      493 SETTABLEKS                       R53 R52 K117 ["onActivated"]
      495 NEWTABLE                         R53 4 1
      497 MOVE                             R55 R27
      498 JUMPIFNOT                        R55 ; [+28]
      499 GETUPVAL                         R55 11
      500 GETTABLEKS                       R55 R55 K61 ["createElement"]
      502 LOADK                            R56 K87 ["UIListLayout"]
      503 DUPTABLE                         R57 K121 [{"FillDirection", "VerticalAlignment", "SortOrder", "Padding"}]
      504 GETIMPORT                        R58 K123 [Enum.FillDirection.Horizontal]
      506 SETTABLEKS                       R58 R57 K88 ["FillDirection"]
      508 GETIMPORT                        R58 K124 [Enum.VerticalAlignment.Center]
      510 SETTABLEKS                       R58 R57 K120 ["VerticalAlignment"]
      512 GETIMPORT                        R58 K97 [Enum.SortOrder.LayoutOrder]
      514 SETTABLEKS                       R58 R57 K89 ["SortOrder"]
      516 GETIMPORT                        R58 K101 [UDim.new]
      518 LOADN                            R59 0
      519 GETTABLEKS                       R60 R2 K102 ["permissionsView"]
      521 GETTABLEKS                       R60 R60 K91 ["Padding"]
      523 CALL                             R58 2 1
      524 SETTABLEKS                       R58 R57 K91 ["Padding"]
      526 CALL                             R55 2 1
      527 SETTABLEKS                       R55 R53 K125 ["UpsellLayout"]
      529 GETUPVAL                         R54 13
      530 GETTABLEKS                       R54 R54 K61 ["createElement"]
      532 GETUPVAL                         R55 17
      533 DUPTABLE                         R56 K130 [{"name", "style", "LayoutOrder", "size", "variant"}]
      534 GETUPVAL                         R57 18
      535 GETTABLEKS                       R57 R57 K131 ["IconName"]
      537 GETTABLEKS                       R57 R57 K132 ["TriangleExclamation"]
      539 SETTABLEKS                       R57 R56 K126 ["name"]
      541 DUPTABLE                         R57 K136 [{["Color3"], ["Transparency"] = 0}]
      542 GETIMPORT                        R58 K138 [Color3.fromRGB]
      544 LOADN                            R59 51
      545 LOADN                            R60 95
      546 LOADN                            R61 255
      547 CALL                             R58 3 1
      548 SETTABLEKS                       R58 R57 K133 ["Color3"]
      550 SETTABLEKS                       R57 R56 K127 ["style"]
      552 NAMECALL                         R57 R41 K55 ["getNextOrder"]
      554 CALL                             R57 1 1
      555 SETTABLEKS                       R57 R56 K96 ["LayoutOrder"]
      557 GETUPVAL                         R57 18
      558 GETTABLEKS                       R57 R57 K139 ["IconSize"]
      560 GETTABLEKS                       R57 R57 K140 ["Large"]
      562 SETTABLEKS                       R57 R56 K128 ["size"]
      564 GETUPVAL                         R57 19
      565 GETTABLEKS                       R57 R57 K141 ["Filled"]
      567 SETTABLEKS                       R57 R56 K129 ["variant"]
      569 CALL                             R54 2 1
      570 SETLIST                          R53 R54 1 [1]
      572 GETUPVAL                         R55 11
      573 GETTABLEKS                       R55 R55 K61 ["createElement"]
      575 GETUPVAL                         R56 20
      576 DUPTABLE                         R57 K144 [{["tag"] = "fill auto-y padding-left-large text-title-medium text-align-x-left text-align-y-center", ["LayoutOrder"], ["Text"]}]
      577 NAMECALL                         R58 R41 K55 ["getNextOrder"]
      579 CALL                             R58 1 1
      580 SETTABLEKS                       R58 R57 K96 ["LayoutOrder"]
      582 LOADK                            R60 K56 ["UpsellBanner"]
      583 LOADK                            R61 K145 ["description"]
      584 NAMECALL                         R58 R3 K35 ["getText"]
      586 CALL                             R58 3 1
      587 SETTABLEKS                       R58 R57 K143 ["Text"]
      589 CALL                             R55 2 1
      590 SETTABLEKS                       R55 R53 K146 ["WarningText"]
      592 GETUPVAL                         R55 11
      593 GETTABLEKS                       R55 R55 K61 ["createElement"]
      595 GETUPVAL                         R56 20
      596 DUPTABLE                         R57 K148 [{["tag"] = "auto-xy padding-right-large text-label-medium text-align-x-center text-align-y-center", ["LayoutOrder"], ["Text"]}]
      597 NAMECALL                         R58 R41 K55 ["getNextOrder"]
      599 CALL                             R58 1 1
      600 SETTABLEKS                       R58 R57 K96 ["LayoutOrder"]
      602 LOADK                            R60 K56 ["UpsellBanner"]
      603 LOADK                            R61 K149 ["CTA"]
      604 NAMECALL                         R58 R3 K35 ["getText"]
      606 CALL                             R58 3 1
      607 SETTABLEKS                       R58 R57 K143 ["Text"]
      609 CALL                             R55 2 1
      610 SETTABLEKS                       R55 R53 K150 ["GetStarted"]
      612 CALL                             R50 3 1
      613 SETTABLEKS                       R50 R49 K56 ["UpsellBanner"]
      615 GETUPVAL                         R50 0
      616 JUMPIFNOT                        R50 ; [+76]
      617 GETUPVAL                         R51 1
      618 GETTABLEKS                       R51 R51 K11 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      620 NOT                              R50 R51
      621 JUMPIFNOT                        R50 ; [+71]
      622 GETUPVAL                         R51 1
      623 GETTABLEKS                       R51 R51 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      625 NOT                              R50 R51
      626 JUMPIFNOT                        R50 ; [+66]
      627 MOVE                             R50 R12
      628 JUMPIFNOT                        R50 ; [+64]
      629 GETUPVAL                         R50 13
      630 GETTABLEKS                       R50 R50 K61 ["createElement"]
      632 GETUPVAL                         R51 16
      633 DUPTABLE                         R52 K152 [{["tag"] = "size-full-0 auto-y padding-x-large padding-top-large"}]
      634 GETUPVAL                         R53 13
      635 GETTABLEKS                       R53 R53 K61 ["createElement"]
      637 GETUPVAL                         R54 21
      638 DUPTABLE                         R55 K157 [{"variant", "severity", "title", "actions", "onClose"}]
      639 GETUPVAL                         R56 22
      640 GETTABLEKS                       R56 R56 K158 ["Standard"]
      642 SETTABLEKS                       R56 R55 K129 ["variant"]
      644 GETUPVAL                         R56 23
      645 GETTABLEKS                       R56 R56 K159 ["Info"]
      647 SETTABLEKS                       R56 R55 K153 ["severity"]
      649 LOADK                            R58 K56 ["UpsellBanner"]
      650 LOADK                            R59 K160 ["nextStepDescription"]
      651 NAMECALL                         R56 R3 K35 ["getText"]
      653 CALL                             R56 3 1
      654 SETTABLEKS                       R56 R55 K154 ["title"]
      656 NEWTABLE                         R56 0 1
      658 DUPTABLE                         R57 K162 [{"text", "variant", "onActivated"}]
      659 LOADK                            R60 K56 ["UpsellBanner"]
      660 LOADK                            R61 K149 ["CTA"]
      661 NAMECALL                         R58 R3 K35 ["getText"]
      663 CALL                             R58 3 1
      664 SETTABLEKS                       R58 R57 K161 ["text"]
      666 GETUPVAL                         R58 24
      667 GETTABLEKS                       R58 R58 K158 ["Standard"]
      669 SETTABLEKS                       R58 R57 K129 ["variant"]
      671 GETUPVAL                         R59 1
      672 GETTABLEKS                       R59 R59 K18 ["fflagUpsellCollabTrustedConnectionShowUpsellDialog"]
      674 JUMPIFNOT                        R59 ; [+4]
      675 JUMPIFNOT                        R13 ; [+3]
      676 GETTABLEKS                       R58 R0 K163 ["launchModal"]
      678 JUMP                             ; [+2]
      679 GETTABLEKS                       R58 R0 K164 ["launchCreatorHub"]
      681 SETTABLEKS                       R58 R57 K117 ["onActivated"]
      683 SETLIST                          R56 R57 1 [1]
      685 SETTABLEKS                       R56 R55 K155 ["actions"]
      687 NEWCLOSURE                       R56 P2
      688 CAPTURE                          VAL R0
      689 SETTABLEKS                       R56 R55 K156 ["onClose"]
      691 CALL                             R53 2 -1
      692 CALL                             R50 -1 1
      693 SETTABLEKS                       R50 R49 K72 ["TrustedConnectionsBanner"]
      695 GETUPVAL                         R50 1
      696 GETTABLEKS                       R50 R50 K20 ["fflagUpsellMCCollabReverification"]
      698 JUMPIFNOT                        R50 ; [+149]
      699 MOVE                             R50 R14
      700 JUMPIFNOT                        R50 ; [+147]
      701 GETUPVAL                         R50 13
      702 GETTABLEKS                       R50 R50 K61 ["createElement"]
      704 GETUPVAL                         R51 16
      705 DUPTABLE                         R52 K166 [{["LayoutOrder"], ["Size"], ["tag"] = "row align-y-center gap-medium padding-left-large padding-right-medium stroke-system-emphasis radius-small bg-over-media-300", ["onActivated"]}]
      706 NAMECALL                         R53 R34 K55 ["getNextOrder"]
      708 CALL                             R53 1 1
      709 SETTABLEKS                       R53 R52 K96 ["LayoutOrder"]
      711 GETIMPORT                        R53 K67 [UDim2.new]
      713 LOADN                            R54 0
      714 LOADN                            R55 770
      715 LOADN                            R56 0
      716 LOADN                            R57 50
      717 CALL                             R53 4 1
      718 SETTABLEKS                       R53 R52 K63 ["Size"]
      720 DUPCLOSURE                       R53 K167 [PROTO_36]
      721 CAPTURE                          UPVAL U10
      722 CAPTURE                          UPVAL U25
      723 CAPTURE                          UPVAL U26
      724 CAPTURE                          UPVAL U27
      725 CAPTURE                          UPVAL U28
      726 CAPTURE                          UPVAL U29
      727 SETTABLEKS                       R53 R52 K117 ["onActivated"]
      729 DUPTABLE                         R53 K170 [{"Icon", "WarningText", "CloseButton"}]
      730 GETUPVAL                         R54 13
      731 GETTABLEKS                       R54 R54 K61 ["createElement"]
      733 GETUPVAL                         R55 16
      734 DUPTABLE                         R56 K172 [{["LayoutOrder"], ["tag"] = "size-600-600 auto-xy"}]
      735 NAMECALL                         R57 R41 K55 ["getNextOrder"]
      737 CALL                             R57 1 1
      738 SETTABLEKS                       R57 R56 K96 ["LayoutOrder"]
      740 DUPTABLE                         R57 K174 [{"BackgroundCircle", "Icon"}]
      741 GETUPVAL                         R58 13
      742 GETTABLEKS                       R58 R58 K61 ["createElement"]
      744 GETUPVAL                         R59 16
      745 DUPTABLE                         R60 K177 [{["tag"] = "position-center-center anchor-center-center size-500-500 radius-circle", ["backgroundStyle"]}]
      746 DUPTABLE                         R61 K178 [{"Color3"}]
      747 GETIMPORT                        R62 K180 [Color3.fromHex]
      749 LOADK                            R63 K181 ["#FFFFFF"]
      750 CALL                             R62 1 1
      751 SETTABLEKS                       R62 R61 K133 ["Color3"]
      753 SETTABLEKS                       R61 R60 K176 ["backgroundStyle"]
      755 CALL                             R58 2 1
      756 SETTABLEKS                       R58 R57 K173 ["BackgroundCircle"]
      758 GETUPVAL                         R58 13
      759 GETTABLEKS                       R58 R58 K61 ["createElement"]
      761 GETUPVAL                         R59 17
      762 DUPTABLE                         R60 K183 [{["name"], ["style"], ["tag"] = "align-x-center align-y-center", ["size"], ["variant"]}]
      763 GETUPVAL                         R61 18
      764 GETTABLEKS                       R61 R61 K131 ["IconName"]
      766 GETTABLEKS                       R61 R61 K184 ["CircleI"]
      768 SETTABLEKS                       R61 R60 K126 ["name"]
      770 DUPTABLE                         R61 K136 [{["Color3"], ["Transparency"] = 0}]
      771 GETIMPORT                        R62 K138 [Color3.fromRGB]
      773 LOADN                            R63 51
      774 LOADN                            R64 95
      775 LOADN                            R65 255
      776 CALL                             R62 3 1
      777 SETTABLEKS                       R62 R61 K133 ["Color3"]
      779 SETTABLEKS                       R61 R60 K127 ["style"]
      781 GETUPVAL                         R61 18
      782 GETTABLEKS                       R61 R61 K139 ["IconSize"]
      784 GETTABLEKS                       R61 R61 K140 ["Large"]
      786 SETTABLEKS                       R61 R60 K128 ["size"]
      788 GETUPVAL                         R61 19
      789 GETTABLEKS                       R61 R61 K141 ["Filled"]
      791 SETTABLEKS                       R61 R60 K129 ["variant"]
      793 CALL                             R58 2 1
      794 SETTABLEKS                       R58 R57 K168 ["Icon"]
      796 CALL                             R54 3 1
      797 SETTABLEKS                       R54 R53 K168 ["Icon"]
      799 GETUPVAL                         R54 11
      800 GETTABLEKS                       R54 R54 K61 ["createElement"]
      802 GETUPVAL                         R55 20
      803 DUPTABLE                         R56 K188 [{["tag"] = "fill text-body-medium text-align-x-left text-align-y-center", ["LayoutOrder"], ["Text"], ["RichText"] = True}]
      804 NAMECALL                         R57 R41 K55 ["getNextOrder"]
      806 CALL                             R57 1 1
      807 SETTABLEKS                       R57 R56 K96 ["LayoutOrder"]
      809 LOADK                            R57 K189 ["<b>%*</b> %* • %*"]
      810 MOVE                             R59 R43
      811 MOVE                             R60 R44
      812 MOVE                             R61 R45
      813 NAMECALL                         R57 R57 K190 ["format"]
      815 CALL                             R57 4 1
      816 SETTABLEKS                       R57 R56 K143 ["Text"]
      818 CALL                             R54 2 1
      819 SETTABLEKS                       R54 R53 K146 ["WarningText"]
      821 GETUPVAL                         R54 13
      822 GETTABLEKS                       R54 R54 K61 ["createElement"]
      824 GETUPVAL                         R55 30
      825 DUPTABLE                         R56 K193 [{["LayoutOrder"], ["icon"] = "icons/navigation/close", ["size"], ["onActivated"]}]
      826 NAMECALL                         R57 R41 K55 ["getNextOrder"]
      828 CALL                             R57 1 1
      829 SETTABLEKS                       R57 R56 K96 ["LayoutOrder"]
      831 GETUPVAL                         R57 31
      832 GETTABLEKS                       R57 R57 K194 ["Enums"]
      834 GETTABLEKS                       R57 R57 K139 ["IconSize"]
      836 GETTABLEKS                       R57 R57 K195 ["Small"]
      838 SETTABLEKS                       R57 R56 K128 ["size"]
      840 NEWCLOSURE                       R57 P4
      841 CAPTURE                          VAL R0
      842 SETTABLEKS                       R57 R56 K117 ["onActivated"]
      844 CALL                             R54 2 1
      845 SETTABLEKS                       R54 R53 K169 ["CloseButton"]
      847 CALL                             R50 3 1
      848 SETTABLEKS                       R50 R49 K73 ["ReverificationBanner"]
      850 GETUPVAL                         R50 1
      851 GETTABLEKS                       R50 R50 K11 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      853 JUMPIFNOT                        R50 ; [+56]
      854 MOVE                             R50 R20
      855 JUMPIFNOT                        R50 ; [+54]
      856 MOVE                             R50 R9
      857 JUMPIFNOT                        R50 ; [+52]
      858 GETUPVAL                         R50 13
      859 GETTABLEKS                       R50 R50 K61 ["createElement"]
      861 GETUPVAL                         R51 16
      862 DUPTABLE                         R52 K197 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y margin-top-small padding-x-large"}]
      863 NAMECALL                         R53 R34 K55 ["getNextOrder"]
      865 CALL                             R53 1 1
      866 SETTABLEKS                       R53 R52 K96 ["LayoutOrder"]
      868 NEWTABLE                         R53 0 1
      870 GETUPVAL                         R54 13
      871 GETTABLEKS                       R54 R54 K61 ["createElement"]
      873 GETUPVAL                         R55 32
      874 DUPTABLE                         R56 K199 [{"severity", "title", "link", "onClose"}]
      875 GETUPVAL                         R57 23
      876 GETTABLEKS                       R57 R57 K200 ["Warning"]
      878 SETTABLEKS                       R57 R56 K153 ["severity"]
      880 LOADK                            R59 K201 ["FeedbackAlert"]
      881 LOADK                            R60 K202 ["OutsideAgeGroupWarning"]
      882 NAMECALL                         R57 R3 K35 ["getText"]
      884 CALL                             R57 3 1
      885 SETTABLEKS                       R57 R56 K154 ["title"]
      887 DUPTABLE                         R57 K203 [{"text", "onActivated"}]
      888 LOADK                            R60 K201 ["FeedbackAlert"]
      889 LOADK                            R61 K204 ["ViewDetails"]
      890 NAMECALL                         R58 R3 K35 ["getText"]
      892 CALL                             R58 3 1
      893 SETTABLEKS                       R58 R57 K161 ["text"]
      895 NEWCLOSURE                       R58 P5
      896 CAPTURE                          UPVAL U1
      897 CAPTURE                          VAL R0
      898 SETTABLEKS                       R58 R57 K117 ["onActivated"]
      900 SETTABLEKS                       R57 R56 K198 ["link"]
      902 NEWCLOSURE                       R57 P6
      903 CAPTURE                          VAL R0
      904 SETTABLEKS                       R57 R56 K156 ["onClose"]
      906 CALL                             R54 2 -1
      907 SETLIST                          R53 R54 -1 [1]
      909 CALL                             R50 3 1
      910 SETTABLEKS                       R50 R49 K74 ["OutsideAgeBucketBanner"]
      912 GETUPVAL                         R50 1
      913 GETTABLEKS                       R50 R50 K13 ["fflagManageCollaboratorsEditorBlockingBanner"]
      915 JUMPIFNOT                        R50 ; [+56]
      916 NOT                              R50 R20
      917 JUMPIFNOT                        R50 ; [+54]
      918 MOVE                             R50 R10
      919 JUMPIFNOT                        R50 ; [+52]
      920 GETUPVAL                         R50 13
      921 GETTABLEKS                       R50 R50 K61 ["createElement"]
      923 GETUPVAL                         R51 16
      924 DUPTABLE                         R52 K197 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y margin-top-small padding-x-large"}]
      925 NAMECALL                         R53 R34 K55 ["getNextOrder"]
      927 CALL                             R53 1 1
      928 SETTABLEKS                       R53 R52 K96 ["LayoutOrder"]
      930 NEWTABLE                         R53 0 1
      932 GETUPVAL                         R54 13
      933 GETTABLEKS                       R54 R54 K61 ["createElement"]
      935 GETUPVAL                         R55 32
      936 DUPTABLE                         R56 K199 [{"severity", "title", "link", "onClose"}]
      937 GETUPVAL                         R57 23
      938 GETTABLEKS                       R57 R57 K200 ["Warning"]
      940 SETTABLEKS                       R57 R56 K153 ["severity"]
      942 LOADK                            R59 K201 ["FeedbackAlert"]
      943 LOADK                            R60 K205 ["EditorBlockingWarning"]
      944 NAMECALL                         R57 R3 K35 ["getText"]
      946 CALL                             R57 3 1
      947 SETTABLEKS                       R57 R56 K154 ["title"]
      949 DUPTABLE                         R57 K203 [{"text", "onActivated"}]
      950 LOADK                            R60 K201 ["FeedbackAlert"]
      951 LOADK                            R61 K204 ["ViewDetails"]
      952 NAMECALL                         R58 R3 K35 ["getText"]
      954 CALL                             R58 3 1
      955 SETTABLEKS                       R58 R57 K161 ["text"]
      957 NEWCLOSURE                       R58 P7
      958 CAPTURE                          UPVAL U1
      959 CAPTURE                          VAL R0
      960 SETTABLEKS                       R58 R57 K117 ["onActivated"]
      962 SETTABLEKS                       R57 R56 K198 ["link"]
      964 NEWCLOSURE                       R57 P8
      965 CAPTURE                          VAL R0
      966 SETTABLEKS                       R57 R56 K156 ["onClose"]
      968 CALL                             R54 2 -1
      969 SETLIST                          R53 R54 -1 [1]
      971 CALL                             R50 3 1
      972 SETTABLEKS                       R50 R49 K75 ["EditorBlockingBanner"]
      974 GETUPVAL                         R50 1
      975 GETTABLEKS                       R50 R50 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      977 JUMPIFNOT                        R50 ; [+84]
      978 MOVE                             R50 R20
      979 JUMPIFNOT                        R50 ; [+82]
      980 MOVE                             R50 R8
      981 JUMPIFNOT                        R50 ; [+80]
      982 GETUPVAL                         R50 13
      983 GETTABLEKS                       R50 R50 K61 ["createElement"]
      985 GETUPVAL                         R51 16
      986 DUPTABLE                         R52 K197 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y margin-top-small padding-x-large"}]
      987 NAMECALL                         R53 R34 K55 ["getNextOrder"]
      989 CALL                             R53 1 1
      990 SETTABLEKS                       R53 R52 K96 ["LayoutOrder"]
      992 NEWTABLE                         R53 0 1
      994 GETUPVAL                         R54 13
      995 GETTABLEKS                       R54 R54 K61 ["createElement"]
      997 GETUPVAL                         R55 32
      998 DUPTABLE                         R56 K207 [{"severity", "title", "subtitle", "link", "onClose"}]
      999 GETUPVAL                         R57 23
     1000 GETTABLEKS                       R57 R57 K200 ["Warning"]
     1002 SETTABLEKS                       R57 R56 K153 ["severity"]
     1004 NAMECALL                         R58 R0 K208 ["isGroupGame"]
     1006 CALL                             R58 1 1
     1007 JUMPIFNOT                        R58 ; [+6]
     1008 LOADK                            R59 K201 ["FeedbackAlert"]
     1009 LOADK                            R60 K209 ["VerifyYourAge"]
     1010 NAMECALL                         R57 R3 K35 ["getText"]
     1012 CALL                             R57 3 1
     1013 JUMP                             ; [+5]
     1014 LOADK                            R59 K201 ["FeedbackAlert"]
     1015 LOADK                            R60 K210 ["OwnerNotAgeVerifiedTitle"]
     1016 NAMECALL                         R57 R3 K35 ["getText"]
     1018 CALL                             R57 3 1
     1019 SETTABLEKS                       R57 R56 K154 ["title"]
     1021 NAMECALL                         R58 R0 K208 ["isGroupGame"]
     1023 CALL                             R58 1 1
     1024 JUMPIFNOT                        R58 ; [+6]
     1025 LOADK                            R59 K201 ["FeedbackAlert"]
     1026 LOADK                            R60 K211 ["OwnerNotAgeVerifiedSubtitle"]
     1027 NAMECALL                         R57 R3 K35 ["getText"]
     1029 CALL                             R57 3 1
     1030 JUMP                             ; [+1]
     1031 LOADNIL                          R57
     1032 SETTABLEKS                       R57 R56 K206 ["subtitle"]
     1034 DUPTABLE                         R57 K203 [{"text", "onActivated"}]
     1035 LOADK                            R60 K56 ["UpsellBanner"]
     1036 LOADK                            R61 K149 ["CTA"]
     1037 NAMECALL                         R58 R3 K35 ["getText"]
     1039 CALL                             R58 3 1
     1040 SETTABLEKS                       R58 R57 K161 ["text"]
     1042 DUPCLOSURE                       R58 K212 [PROTO_42]
     1043 CAPTURE                          UPVAL U1
     1044 CAPTURE                          UPVAL U10
     1045 CAPTURE                          UPVAL U25
     1046 CAPTURE                          UPVAL U26
     1047 CAPTURE                          UPVAL U27
     1048 CAPTURE                          UPVAL U28
     1049 CAPTURE                          UPVAL U29
     1050 SETTABLEKS                       R58 R57 K117 ["onActivated"]
     1052 SETTABLEKS                       R57 R56 K198 ["link"]
     1054 NEWCLOSURE                       R57 P10
     1055 CAPTURE                          VAL R0
     1056 SETTABLEKS                       R57 R56 K156 ["onClose"]
     1058 CALL                             R54 2 -1
     1059 SETLIST                          R53 R54 -1 [1]
     1061 CALL                             R50 3 1
     1062 SETTABLEKS                       R50 R49 K76 ["OwnerNotAgeVerifiedBanner"]
     1064 GETUPVAL                         R50 1
     1065 GETTABLEKS                       R50 R50 K15 ["fflagManageCollaboratorsOwnerCountryBlocked"]
     1067 JUMPIFNOT                        R50 ; [+41]
     1068 MOVE                             R50 R20
     1069 JUMPIFNOT                        R50 ; [+39]
     1070 MOVE                             R50 R11
     1071 JUMPIFNOT                        R50 ; [+37]
     1072 GETUPVAL                         R50 13
     1073 GETTABLEKS                       R50 R50 K61 ["createElement"]
     1075 GETUPVAL                         R51 16
     1076 DUPTABLE                         R52 K197 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y margin-top-small padding-x-large"}]
     1077 NAMECALL                         R53 R34 K55 ["getNextOrder"]
     1079 CALL                             R53 1 1
     1080 SETTABLEKS                       R53 R52 K96 ["LayoutOrder"]
     1082 NEWTABLE                         R53 0 1
     1084 GETUPVAL                         R54 13
     1085 GETTABLEKS                       R54 R54 K61 ["createElement"]
     1087 GETUPVAL                         R55 32
     1088 DUPTABLE                         R56 K213 [{"severity", "title", "onClose"}]
     1089 GETUPVAL                         R57 23
     1090 GETTABLEKS                       R57 R57 K200 ["Warning"]
     1092 SETTABLEKS                       R57 R56 K153 ["severity"]
     1094 LOADK                            R59 K201 ["FeedbackAlert"]
     1095 LOADK                            R60 K214 ["OwnerCountryBlockedTitle"]
     1096 NAMECALL                         R57 R3 K35 ["getText"]
     1098 CALL                             R57 3 1
     1099 SETTABLEKS                       R57 R56 K154 ["title"]
     1101 NEWCLOSURE                       R57 P11
     1102 CAPTURE                          VAL R0
     1103 SETTABLEKS                       R57 R56 K156 ["onClose"]
     1105 CALL                             R54 2 -1
     1106 SETLIST                          R53 R54 -1 [1]
     1108 CALL                             R50 3 1
     1109 SETTABLEKS                       R50 R49 K77 ["OwnerCountryBlockedBanner"]
     1111 GETUPVAL                         R50 10
     1112 JUMPIFNOT                        R50 ; [+56]
     1113 NAMECALL                         R51 R0 K215 ["shouldShowAudienceTabs"]
     1115 CALL                             R51 1 1
     1116 NOT                              R50 R51
     1117 JUMPIFNOT                        R50 ; [+51]
     1118 GETUPVAL                         R51 7
     1119 CALL                             R51 0 1
     1120 JUMPIF                           R51 ; [+3]
     1121 GETUPVAL                         R51 0
     1122 NOT                              R50 R51
     1123 JUMPIFNOT                        R50 ; [+45]
     1124 NOT                              R50 R36
     1125 JUMPIFNOT                        R50 ; [+43]
     1126 GETUPVAL                         R50 11
     1127 GETTABLEKS                       R50 R50 K61 ["createElement"]
     1129 GETUPVAL                         R51 16
     1130 DUPTABLE                         R52 K217 [{["LayoutOrder"], ["Size"], ["tag"] = "auto-xy padding-top-medium"}]
     1131 NAMECALL                         R53 R34 K55 ["getNextOrder"]
     1133 CALL                             R53 1 1
     1134 SETTABLEKS                       R53 R52 K96 ["LayoutOrder"]
     1136 GETIMPORT                        R53 K67 [UDim2.new]
     1138 LOADN                            R54 0
     1139 LOADN                            R55 770
     1140 LOADN                            R56 0
     1141 LOADN                            R57 10
     1142 CALL                             R53 4 1
     1143 SETTABLEKS                       R53 R52 K63 ["Size"]
     1145 DUPTABLE                         R53 K219 [{"CollaborationTitle"}]
     1146 GETUPVAL                         R54 33
     1147 JUMPIFNOT                        R54 ; [+18]
     1148 GETUPVAL                         R54 13
     1149 GETTABLEKS                       R54 R54 K61 ["createElement"]
     1151 GETUPVAL                         R55 20
     1152 DUPTABLE                         R56 K221 [{["LayoutOrder"], ["tag"] = "auto-xy text-label-small text-align-x-left", ["Text"]}]
     1153 NAMECALL                         R57 R34 K55 ["getNextOrder"]
     1155 CALL                             R57 1 1
     1156 SETTABLEKS                       R57 R56 K96 ["LayoutOrder"]
     1158 LOADK                            R59 K222 ["Subtitle"]
     1159 LOADK                            R60 K223 ["SearchCollaborators"]
     1160 NAMECALL                         R57 R3 K35 ["getText"]
     1162 CALL                             R57 3 1
     1163 SETTABLEKS                       R57 R56 K143 ["Text"]
     1165 CALL                             R54 2 1
     1166 SETTABLEKS                       R54 R53 K218 ["CollaborationTitle"]
     1168 CALL                             R50 3 1
     1169 SETTABLEKS                       R50 R49 K78 ["CollaborationSubtitleTitleView"]
     1171 GETUPVAL                         R50 10
     1172 JUMPIFNOT                        R50 ; [+211]
     1173 MOVE                             R50 R27
     1174 JUMPIFNOT                        R50 ; [+209]
     1175 GETUPVAL                         R50 11
     1176 GETTABLEKS                       R50 R50 K61 ["createElement"]
     1178 GETUPVAL                         R51 34
     1179 DUPTABLE                         R52 K227 [{["scroll"], ["layout"], ["tag"] = "col align-y-top fill gap-small size-full", ["LayoutOrder"]}]
     1180 DUPTABLE                         R53 K232 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
     1181 GETUPVAL                         R54 35
     1182 GETTABLEKS                       R54 R54 K233 ["Always"]
     1184 SETTABLEKS                       R54 R53 K228 ["scrollBarVisibility"]
     1186 GETIMPORT                        R54 K235 [Enum.ScrollingDirection.Y]
     1188 SETTABLEKS                       R54 R53 K229 ["ScrollingDirection"]
     1190 GETIMPORT                        R54 K237 [Enum.AutomaticSize.Y]
     1192 SETTABLEKS                       R54 R53 K230 ["AutomaticCanvasSize"]
     1194 GETIMPORT                        R54 K67 [UDim2.new]
     1196 CALL                             R54 0 1
     1197 SETTABLEKS                       R54 R53 K231 ["CanvasSize"]
     1199 SETTABLEKS                       R53 R52 K224 ["scroll"]
     1201 DUPTABLE                         R53 K239 [{"HorizontalAlignment", "FillDirection", "SortOrder", "HorizontalFlex"}]
     1202 GETIMPORT                        R54 K241 [Enum.HorizontalAlignment.Left]
     1204 SETTABLEKS                       R54 R53 K90 ["HorizontalAlignment"]
     1206 GETIMPORT                        R54 K95 [Enum.FillDirection.Vertical]
     1208 SETTABLEKS                       R54 R53 K88 ["FillDirection"]
     1210 GETIMPORT                        R54 K97 [Enum.SortOrder.LayoutOrder]
     1212 SETTABLEKS                       R54 R53 K89 ["SortOrder"]
     1214 GETIMPORT                        R54 K244 [Enum.UIFlexAlignment.Fill]
     1216 SETTABLEKS                       R54 R53 K238 ["HorizontalFlex"]
     1218 SETTABLEKS                       R53 R52 K225 ["layout"]
     1220 NAMECALL                         R53 R34 K55 ["getNextOrder"]
     1222 CALL                             R53 1 1
     1223 SETTABLEKS                       R53 R52 K96 ["LayoutOrder"]
     1225 DUPTABLE                         R53 K249 [{"AudienceTabs", "SearchBarWidget", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
     1226 NAMECALL                         R54 R0 K215 ["shouldShowAudienceTabs"]
     1228 CALL                             R54 1 1
     1229 JUMPIFNOT                        R54 ; [+27]
     1230 GETUPVAL                         R54 13
     1231 GETTABLEKS                       R54 R54 K61 ["createElement"]
     1233 GETUPVAL                         R55 36
     1234 DUPTABLE                         R56 K253 [{"LayoutOrder", "ActiveTabId", "Tabs", "OnActivated"}]
     1235 NAMECALL                         R57 R35 K55 ["getNextOrder"]
     1237 CALL                             R57 1 1
     1238 SETTABLEKS                       R57 R56 K96 ["LayoutOrder"]
     1240 GETTABLEKS                       R57 R0 K7 ["state"]
     1242 GETTABLEKS                       R57 R57 K254 ["ActiveAudienceTab"]
     1244 SETTABLEKS                       R57 R56 K250 ["ActiveTabId"]
     1246 MOVE                             R59 R3
     1247 NAMECALL                         R57 R0 K255 ["getAudienceTabs"]
     1249 CALL                             R57 2 1
     1250 SETTABLEKS                       R57 R56 K251 ["Tabs"]
     1252 NEWCLOSURE                       R57 P12
     1253 CAPTURE                          VAL R0
     1254 SETTABLEKS                       R57 R56 K252 ["OnActivated"]
     1256 CALL                             R54 2 1
     1257 SETTABLEKS                       R54 R53 K245 ["AudienceTabs"]
     1259 MOVE                             R54 R38
     1260 JUMPIFNOT                        R54 ; [+52]
     1261 GETUPVAL                         R54 11
     1262 GETTABLEKS                       R54 R54 K61 ["createElement"]
     1264 GETUPVAL                         R55 37
     1265 DUPTABLE                         R56 K262 [{["LayoutOrder"], ["Writable"] = True, ["IsGroupGame"], ["SearchDisabled"], ["ActiveTab"], ["HeaderText"], ["DefaultText"]}]
     1266 MOVE                             R57 R39
     1267 JUMPIF                           R57 ; [+3]
     1268 NAMECALL                         R57 R35 K55 ["getNextOrder"]
     1270 CALL                             R57 1 1
     1271 SETTABLEKS                       R57 R56 K96 ["LayoutOrder"]
     1273 NAMECALL                         R57 R0 K208 ["isGroupGame"]
     1275 CALL                             R57 1 1
     1276 SETTABLEKS                       R57 R56 K257 ["IsGroupGame"]
     1278 SETTABLEKS                       R26 R56 K258 ["SearchDisabled"]
     1280 NAMECALL                         R58 R0 K215 ["shouldShowAudienceTabs"]
     1282 CALL                             R58 1 1
     1283 JUMPIFNOT                        R58 ; [+5]
     1284 GETTABLEKS                       R57 R0 K7 ["state"]
     1286 GETTABLEKS                       R57 R57 K254 ["ActiveAudienceTab"]
     1288 JUMP                             ; [+1]
     1289 LOADNIL                          R57
     1290 SETTABLEKS                       R57 R56 K259 ["ActiveTab"]
     1292 JUMPIFNOT                        R36 ; [+6]
     1293 LOADK                            R59 K222 ["Subtitle"]
     1294 LOADK                            R60 K263 ["Search"]
     1295 NAMECALL                         R57 R3 K35 ["getText"]
     1297 CALL                             R57 3 1
     1298 JUMP                             ; [+1]
     1299 LOADNIL                          R57
     1300 SETTABLEKS                       R57 R56 K260 ["HeaderText"]
     1302 JUMPIFNOT                        R36 ; [+6]
     1303 LOADK                            R59 K264 ["SearchBar"]
     1304 LOADK                            R60 K265 ["SearchUsers"]
     1305 NAMECALL                         R57 R3 K35 ["getText"]
     1307 CALL                             R57 3 1
     1308 JUMP                             ; [+1]
     1309 LOADNIL                          R57
     1310 SETTABLEKS                       R57 R56 K261 ["DefaultText"]
     1312 CALL                             R54 2 1
     1313 SETTABLEKS                       R54 R53 K246 ["SearchBarWidget"]
     1315 NAMECALL                         R55 R0 K215 ["shouldShowAudienceTabs"]
     1317 CALL                             R55 1 1
     1318 NOT                              R54 R55
     1319 JUMPIFNOT                        R54 ; [+13]
     1320 GETUPVAL                         R54 11
     1321 GETTABLEKS                       R54 R54 K61 ["createElement"]
     1323 GETUPVAL                         R55 38
     1324 DUPTABLE                         R56 K266 [{"LayoutOrder"}]
     1325 MOVE                             R57 R40
     1326 JUMPIF                           R57 ; [+3]
     1327 NAMECALL                         R57 R35 K55 ["getNextOrder"]
     1329 CALL                             R57 1 1
     1330 SETTABLEKS                       R57 R56 K96 ["LayoutOrder"]
     1332 CALL                             R54 2 1
     1333 SETTABLEKS                       R54 R53 K247 ["CollaboratorFilterWidget"]
     1335 NOT                              R54 R20
     1336 JUMPIFNOT                        R54 ; [+6]
     1337 GETUPVAL                         R54 11
     1338 GETTABLEKS                       R54 R54 K61 ["createElement"]
     1340 LOADK                            R55 K62 ["Frame"]
     1341 DUPTABLE                         R56 K269 [{["BackgroundTransparency"] = 1}]
     1342 CALL                             R54 2 1
     1343 SETTABLEKS                       R54 R53 K62 ["Frame"]
     1345 GETUPVAL                         R54 11
     1346 GETTABLEKS                       R54 R54 K61 ["createElement"]
     1348 GETUPVAL                         R55 39
     1349 DUPTABLE                         R56 K271 [{"LayoutOrder", "Writable", "IsGroupGame", "DisableEditPermission", "ActiveTab"}]
     1350 NAMECALL                         R57 R35 K55 ["getNextOrder"]
     1352 CALL                             R57 1 1
     1353 SETTABLEKS                       R57 R56 K96 ["LayoutOrder"]
     1355 SETTABLEKS                       R23 R56 K256 ["Writable"]
     1357 GETUPVAL                         R58 40
     1358 JUMPIFNOT                        R58 ; [+4]
     1359 NAMECALL                         R57 R0 K208 ["isGroupGame"]
     1361 CALL                             R57 1 1
     1362 JUMP                             ; [+1]
     1363 LOADNIL                          R57
     1364 SETTABLEKS                       R57 R56 K257 ["IsGroupGame"]
     1366 SETTABLEKS                       R26 R56 K270 ["DisableEditPermission"]
     1368 NAMECALL                         R58 R0 K215 ["shouldShowAudienceTabs"]
     1370 CALL                             R58 1 1
     1371 JUMPIFNOT                        R58 ; [+5]
     1372 GETTABLEKS                       R57 R0 K7 ["state"]
     1374 GETTABLEKS                       R57 R57 K254 ["ActiveAudienceTab"]
     1376 JUMP                             ; [+1]
     1377 LOADNIL                          R57
     1378 SETTABLEKS                       R57 R56 K259 ["ActiveTab"]
     1380 CALL                             R54 2 1
     1381 SETTABLEKS                       R54 R53 K248 ["CollaboratorsWidget"]
     1383 CALL                             R50 3 1
     1384 SETTABLEKS                       R50 R49 K79 ["ScrollingFrameNew"]
     1386 GETUPVAL                         R51 10
     1387 NOT                              R50 R51
     1388 JUMPIFNOT                        R50 ; [+204]
     1389 MOVE                             R50 R27
     1390 JUMPIFNOT                        R50 ; [+202]
     1391 GETUPVAL                         R50 11
     1392 GETTABLEKS                       R50 R50 K61 ["createElement"]
     1394 GETUPVAL                         R51 41
     1395 DUPTABLE                         R52 K273 [{"LayoutOrder", "Size", "Layout", "AutomaticCanvasSize", "Spacing"}]
     1396 NAMECALL                         R53 R34 K55 ["getNextOrder"]
     1398 CALL                             R53 1 1
     1399 SETTABLEKS                       R53 R52 K96 ["LayoutOrder"]
     1401 GETIMPORT                        R53 K67 [UDim2.new]
     1403 LOADN                            R54 1
     1404 LOADN                            R55 0
     1405 LOADN                            R56 1
     1406 MINUS                            R57 R33
     1407 CALL                             R53 4 1
     1408 SETTABLEKS                       R53 R52 K63 ["Size"]
     1410 GETIMPORT                        R53 K95 [Enum.FillDirection.Vertical]
     1412 SETTABLEKS                       R53 R52 K69 ["Layout"]
     1414 GETIMPORT                        R53 K237 [Enum.AutomaticSize.Y]
     1416 SETTABLEKS                       R53 R52 K230 ["AutomaticCanvasSize"]
     1418 GETIMPORT                        R53 K101 [UDim.new]
     1420 LOADN                            R54 0
     1421 JUMPIFNOT                        R20 ; [+5]
     1422 GETTABLEKS                       R55 R2 K274 ["scrollingFrame"]
     1424 GETTABLEKS                       R55 R55 K275 ["yPadding"]
     1426 JUMP                             ; [+4]
     1427 GETTABLEKS                       R55 R2 K274 ["scrollingFrame"]
     1429 GETTABLEKS                       R55 R55 K276 ["yPaddingNonOwner"]
     1431 CALL                             R53 2 1
     1432 SETTABLEKS                       R53 R52 K272 ["Spacing"]
     1434 DUPTABLE                         R53 K249 [{"AudienceTabs", "SearchBarWidget", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
     1435 NAMECALL                         R54 R0 K215 ["shouldShowAudienceTabs"]
     1437 CALL                             R54 1 1
     1438 JUMPIFNOT                        R54 ; [+27]
     1439 GETUPVAL                         R54 13
     1440 GETTABLEKS                       R54 R54 K61 ["createElement"]
     1442 GETUPVAL                         R55 36
     1443 DUPTABLE                         R56 K253 [{"LayoutOrder", "ActiveTabId", "Tabs", "OnActivated"}]
     1444 NAMECALL                         R57 R35 K55 ["getNextOrder"]
     1446 CALL                             R57 1 1
     1447 SETTABLEKS                       R57 R56 K96 ["LayoutOrder"]
     1449 GETTABLEKS                       R57 R0 K7 ["state"]
     1451 GETTABLEKS                       R57 R57 K254 ["ActiveAudienceTab"]
     1453 SETTABLEKS                       R57 R56 K250 ["ActiveTabId"]
     1455 MOVE                             R59 R3
     1456 NAMECALL                         R57 R0 K255 ["getAudienceTabs"]
     1458 CALL                             R57 2 1
     1459 SETTABLEKS                       R57 R56 K251 ["Tabs"]
     1461 NEWCLOSURE                       R57 P13
     1462 CAPTURE                          VAL R0
     1463 SETTABLEKS                       R57 R56 K252 ["OnActivated"]
     1465 CALL                             R54 2 1
     1466 SETTABLEKS                       R54 R53 K245 ["AudienceTabs"]
     1468 MOVE                             R54 R38
     1469 JUMPIFNOT                        R54 ; [+52]
     1470 GETUPVAL                         R54 11
     1471 GETTABLEKS                       R54 R54 K61 ["createElement"]
     1473 GETUPVAL                         R55 37
     1474 DUPTABLE                         R56 K262 [{["LayoutOrder"], ["Writable"] = True, ["IsGroupGame"], ["SearchDisabled"], ["ActiveTab"], ["HeaderText"], ["DefaultText"]}]
     1475 MOVE                             R57 R39
     1476 JUMPIF                           R57 ; [+3]
     1477 NAMECALL                         R57 R35 K55 ["getNextOrder"]
     1479 CALL                             R57 1 1
     1480 SETTABLEKS                       R57 R56 K96 ["LayoutOrder"]
     1482 NAMECALL                         R57 R0 K208 ["isGroupGame"]
     1484 CALL                             R57 1 1
     1485 SETTABLEKS                       R57 R56 K257 ["IsGroupGame"]
     1487 SETTABLEKS                       R26 R56 K258 ["SearchDisabled"]
     1489 NAMECALL                         R58 R0 K215 ["shouldShowAudienceTabs"]
     1491 CALL                             R58 1 1
     1492 JUMPIFNOT                        R58 ; [+5]
     1493 GETTABLEKS                       R57 R0 K7 ["state"]
     1495 GETTABLEKS                       R57 R57 K254 ["ActiveAudienceTab"]
     1497 JUMP                             ; [+1]
     1498 LOADNIL                          R57
     1499 SETTABLEKS                       R57 R56 K259 ["ActiveTab"]
     1501 JUMPIFNOT                        R36 ; [+6]
     1502 LOADK                            R59 K222 ["Subtitle"]
     1503 LOADK                            R60 K263 ["Search"]
     1504 NAMECALL                         R57 R3 K35 ["getText"]
     1506 CALL                             R57 3 1
     1507 JUMP                             ; [+1]
     1508 LOADNIL                          R57
     1509 SETTABLEKS                       R57 R56 K260 ["HeaderText"]
     1511 JUMPIFNOT                        R36 ; [+6]
     1512 LOADK                            R59 K264 ["SearchBar"]
     1513 LOADK                            R60 K265 ["SearchUsers"]
     1514 NAMECALL                         R57 R3 K35 ["getText"]
     1516 CALL                             R57 3 1
     1517 JUMP                             ; [+1]
     1518 LOADNIL                          R57
     1519 SETTABLEKS                       R57 R56 K261 ["DefaultText"]
     1521 CALL                             R54 2 1
     1522 SETTABLEKS                       R54 R53 K246 ["SearchBarWidget"]
     1524 NAMECALL                         R55 R0 K215 ["shouldShowAudienceTabs"]
     1526 CALL                             R55 1 1
     1527 NOT                              R54 R55
     1528 JUMPIFNOT                        R54 ; [+13]
     1529 GETUPVAL                         R54 11
     1530 GETTABLEKS                       R54 R54 K61 ["createElement"]
     1532 GETUPVAL                         R55 38
     1533 DUPTABLE                         R56 K266 [{"LayoutOrder"}]
     1534 MOVE                             R57 R40
     1535 JUMPIF                           R57 ; [+3]
     1536 NAMECALL                         R57 R35 K55 ["getNextOrder"]
     1538 CALL                             R57 1 1
     1539 SETTABLEKS                       R57 R56 K96 ["LayoutOrder"]
     1541 CALL                             R54 2 1
     1542 SETTABLEKS                       R54 R53 K247 ["CollaboratorFilterWidget"]
     1544 NOT                              R54 R20
     1545 JUMPIFNOT                        R54 ; [+6]
     1546 GETUPVAL                         R54 11
     1547 GETTABLEKS                       R54 R54 K61 ["createElement"]
     1549 LOADK                            R55 K62 ["Frame"]
     1550 DUPTABLE                         R56 K269 [{["BackgroundTransparency"] = 1}]
     1551 CALL                             R54 2 1
     1552 SETTABLEKS                       R54 R53 K62 ["Frame"]
     1554 GETUPVAL                         R54 11
     1555 GETTABLEKS                       R54 R54 K61 ["createElement"]
     1557 GETUPVAL                         R55 39
     1558 DUPTABLE                         R56 K271 [{"LayoutOrder", "Writable", "IsGroupGame", "DisableEditPermission", "ActiveTab"}]
     1559 NAMECALL                         R57 R35 K55 ["getNextOrder"]
     1561 CALL                             R57 1 1
     1562 SETTABLEKS                       R57 R56 K96 ["LayoutOrder"]
     1564 SETTABLEKS                       R23 R56 K256 ["Writable"]
     1566 GETUPVAL                         R58 40
     1567 JUMPIFNOT                        R58 ; [+4]
     1568 NAMECALL                         R57 R0 K208 ["isGroupGame"]
     1570 CALL                             R57 1 1
     1571 JUMP                             ; [+1]
     1572 LOADNIL                          R57
     1573 SETTABLEKS                       R57 R56 K257 ["IsGroupGame"]
     1575 SETTABLEKS                       R26 R56 K270 ["DisableEditPermission"]
     1577 NAMECALL                         R58 R0 K215 ["shouldShowAudienceTabs"]
     1579 CALL                             R58 1 1
     1580 JUMPIFNOT                        R58 ; [+5]
     1581 GETTABLEKS                       R57 R0 K7 ["state"]
     1583 GETTABLEKS                       R57 R57 K254 ["ActiveAudienceTab"]
     1585 JUMP                             ; [+1]
     1586 LOADNIL                          R57
     1587 SETTABLEKS                       R57 R56 K259 ["ActiveTab"]
     1589 CALL                             R54 2 1
     1590 SETTABLEKS                       R54 R53 K248 ["CollaboratorsWidget"]
     1592 CALL                             R50 3 1
     1593 SETTABLEKS                       R50 R49 K80 ["ScrollingFrame"]
     1595 JUMPIFNOT                        R29 ; [+75]
     1596 GETUPVAL                         R50 11
     1597 GETTABLEKS                       R50 R50 K61 ["createElement"]
     1599 LOADK                            R51 K62 ["Frame"]
     1600 DUPTABLE                         R52 K278 [{["BackgroundTransparency"] = 1, ["BackgroundColor3"], ["LayoutOrder"], ["Size"], ["BorderSizePixel"] = 0}]
     1601 GETTABLEKS                       R53 R2 K68 ["backgroundColor"]
     1603 SETTABLEKS                       R53 R52 K64 ["BackgroundColor3"]
     1605 NAMECALL                         R53 R34 K55 ["getNextOrder"]
     1607 CALL                             R53 1 1
     1608 SETTABLEKS                       R53 R52 K96 ["LayoutOrder"]
     1610 GETIMPORT                        R53 K67 [UDim2.new]
     1612 LOADN                            R54 1
     1613 LOADN                            R55 0
     1614 LOADN                            R56 0
     1615 GETTABLEKS                       R57 R2 K48 ["saveMessage"]
     1617 GETTABLEKS                       R57 R57 K49 ["boxHeight"]
     1619 CALL                             R53 4 1
     1620 SETTABLEKS                       R53 R52 K63 ["Size"]
     1622 DUPTABLE                         R53 K279 [{"Text"}]
     1623 GETUPVAL                         R54 11
     1624 GETTABLEKS                       R54 R54 K61 ["createElement"]
     1626 LOADK                            R55 K280 ["TextLabel"]
     1627 GETUPVAL                         R56 42
     1628 GETTABLEKS                       R56 R56 K281 ["Dictionary"]
     1630 GETTABLEKS                       R56 R56 K282 ["join"]
     1632 GETTABLEKS                       R57 R2 K48 ["saveMessage"]
     1634 GETTABLEKS                       R57 R57 K283 ["textStyle"]
     1636 DUPTABLE                         R58 K288 [{["AnchorPoint"], ["Position"], ["Text"], ["TextXAlignment"], ["BorderSizePixel"] = 0, ["TextWrapped"] = True, ["Size"], ["BackgroundTransparency"] = 1}]
     1637 GETIMPORT                        R59 K290 [Vector2.new]
     1639 LOADN                            R60 0
     1640 LOADK                            R61 K291 [0.5]
     1641 CALL                             R59 2 1
     1642 SETTABLEKS                       R59 R58 K284 ["AnchorPoint"]
     1644 GETTABLEKS                       R59 R2 K48 ["saveMessage"]
     1646 GETTABLEKS                       R59 R59 K292 ["InnerTextPosition"]
     1648 SETTABLEKS                       R59 R58 K285 ["Position"]
     1650 SETTABLEKS                       R31 R58 K143 ["Text"]
     1652 GETIMPORT                        R59 K293 [Enum.TextXAlignment.Left]
     1654 SETTABLEKS                       R59 R58 K286 ["TextXAlignment"]
     1656 GETIMPORT                        R59 K67 [UDim2.new]
     1658 LOADK                            R60 K294 [0.55]
     1659 LOADN                            R61 0
     1660 LOADN                            R62 1
     1661 LOADN                            R63 0
     1662 CALL                             R59 4 1
     1663 SETTABLEKS                       R59 R58 K63 ["Size"]
     1665 CALL                             R56 2 -1
     1666 CALL                             R54 -1 1
     1667 SETTABLEKS                       R54 R53 K143 ["Text"]
     1669 CALL                             R50 3 1
     1670 JUMP                             ; [+1]
     1671 LOADNIL                          R50
     1672 SETTABLEKS                       R50 R49 K81 ["TextFrame"]
     1674 GETUPVAL                         R50 0
     1675 JUMPIFNOT                        R50 ; [+15]
     1676 GETTABLEKS                       R50 R0 K7 ["state"]
     1678 GETTABLEKS                       R50 R50 K295 ["upsellDialogEnabled"]
     1680 JUMPIFNOT                        R50 ; [+10]
     1681 GETUPVAL                         R50 13
     1682 GETTABLEKS                       R50 R50 K61 ["createElement"]
     1684 GETUPVAL                         R51 43
     1685 DUPTABLE                         R52 K296 [{"onClose"}]
     1686 NEWCLOSURE                       R53 P14
     1687 CAPTURE                          VAL R0
     1688 SETTABLEKS                       R53 R52 K156 ["onClose"]
     1690 CALL                             R50 2 1
     1691 SETTABLEKS                       R50 R49 K82 ["upsellDialog"]
     1693 MOVE                             R50 R27
     1694 JUMPIFNOT                        R50 ; [+62]
     1695 GETUPVAL                         R50 11
     1696 GETTABLEKS                       R50 R50 K61 ["createElement"]
     1698 GETUPVAL                         R51 12
     1699 DUPTABLE                         R52 K104 [{"LayoutOrder", "Size"}]
     1700 NAMECALL                         R53 R34 K55 ["getNextOrder"]
     1702 CALL                             R53 1 1
     1703 SETTABLEKS                       R53 R52 K96 ["LayoutOrder"]
     1705 GETIMPORT                        R53 K67 [UDim2.new]
     1707 LOADN                            R54 1
     1708 LOADN                            R55 0
     1709 LOADN                            R56 0
     1710 GETTABLEKS                       R57 R2 K47 ["footer"]
     1712 GETTABLEKS                       R57 R57 K46 ["height"]
     1714 CALL                             R53 4 1
     1715 SETTABLEKS                       R53 R52 K63 ["Size"]
     1717 DUPTABLE                         R53 K298 [{"Footer"}]
     1718 GETUPVAL                         R54 11
     1719 GETTABLEKS                       R54 R54 K61 ["createElement"]
     1721 GETUPVAL                         R55 44
     1722 DUPTABLE                         R56 K303 [{"IsTeamCreateEnabled", "OnSavePressed", "OnCancelPressed", "OnViewAllPermissionsPressed", "FetchGameLink"}]
     1723 SETTABLEKS                       R28 R56 K107 ["IsTeamCreateEnabled"]
     1725 NEWCLOSURE                       R57 P15
     1726 CAPTURE                          VAL R0
     1727 SETTABLEKS                       R57 R56 K299 ["OnSavePressed"]
     1729 NEWCLOSURE                       R57 P16
     1730 CAPTURE                          VAL R0
     1731 SETTABLEKS                       R57 R56 K300 ["OnCancelPressed"]
     1733 GETUPVAL                         R58 1
     1734 GETTABLEKS                       R58 R58 K304 ["fflagViewAllPermissionsInCreatorHub"]
     1736 JUMPIFNOT                        R58 ; [+7]
     1737 NAMECALL                         R58 R0 K208 ["isGroupGame"]
     1739 CALL                             R58 1 1
     1740 JUMPIFNOT                        R58 ; [+3]
     1741 NEWCLOSURE                       R57 P17
     1742 CAPTURE                          VAL R0
     1743 JUMP                             ; [+1]
     1744 LOADNIL                          R57
     1745 SETTABLEKS                       R57 R56 K301 ["OnViewAllPermissionsPressed"]
     1747 GETTABLEKS                       R57 R0 K0 ["props"]
     1749 GETTABLEKS                       R57 R57 K302 ["FetchGameLink"]
     1751 SETTABLEKS                       R57 R56 K302 ["FetchGameLink"]
     1753 CALL                             R54 2 1
     1754 SETTABLEKS                       R54 R53 K297 ["Footer"]
     1756 CALL                             R50 3 1
     1757 SETTABLEKS                       R50 R49 K83 ["FooterContent"]
     1759 NOT                              R50 R17
     1760 JUMPIFNOT                        R50 ; [+22]
     1761 NOT                              R50 R18
     1762 JUMPIFNOT                        R50 ; [+20]
     1763 GETUPVAL                         R50 11
     1764 GETTABLEKS                       R50 R50 K61 ["createElement"]
     1766 GETUPVAL                         R51 45
     1767 DUPTABLE                         R52 K305 [{"AnchorPoint", "Position"}]
     1768 GETIMPORT                        R53 K290 [Vector2.new]
     1770 LOADK                            R54 K291 [0.5]
     1771 LOADK                            R55 K291 [0.5]
     1772 CALL                             R53 2 1
     1773 SETTABLEKS                       R53 R52 K284 ["AnchorPoint"]
     1775 GETIMPORT                        R53 K307 [UDim2.fromScale]
     1777 LOADK                            R54 K291 [0.5]
     1778 LOADK                            R55 K291 [0.5]
     1779 CALL                             R53 2 1
     1780 SETTABLEKS                       R53 R52 K285 ["Position"]
     1782 CALL                             R50 2 1
     1783 SETTABLEKS                       R50 R49 K84 ["LoadingIndicator"]
     1785 MOVE                             R50 R18
     1786 JUMPIFNOT                        R50 ; [+46]
     1787 GETUPVAL                         R50 11
     1788 GETTABLEKS                       R50 R50 K61 ["createElement"]
     1790 LOADK                            R51 K280 ["TextLabel"]
     1791 DUPTABLE                         R52 K311 [{"Text", "AnchorPoint", "Position", "TextColor3", "TextSize", "Font"}]
     1792 SETTABLEKS                       R19 R52 K143 ["Text"]
     1794 GETIMPORT                        R53 K290 [Vector2.new]
     1796 LOADK                            R54 K291 [0.5]
     1797 LOADK                            R55 K291 [0.5]
     1798 CALL                             R53 2 1
     1799 SETTABLEKS                       R53 R52 K284 ["AnchorPoint"]
     1801 GETIMPORT                        R53 K307 [UDim2.fromScale]
     1803 LOADK                            R54 K291 [0.5]
     1804 LOADK                            R55 K312 [0.25]
     1805 CALL                             R53 2 1
     1806 SETTABLEKS                       R53 R52 K285 ["Position"]
     1808 GETTABLEKS                       R53 R2 K313 ["fontStyle"]
     1810 GETTABLEKS                       R53 R53 K314 ["Normal"]
     1812 GETTABLEKS                       R53 R53 K308 ["TextColor3"]
     1814 SETTABLEKS                       R53 R52 K308 ["TextColor3"]
     1816 GETTABLEKS                       R53 R2 K313 ["fontStyle"]
     1818 GETTABLEKS                       R53 R53 K314 ["Normal"]
     1820 GETTABLEKS                       R53 R53 K309 ["TextSize"]
     1822 SETTABLEKS                       R53 R52 K309 ["TextSize"]
     1824 GETTABLEKS                       R53 R2 K313 ["fontStyle"]
     1826 GETTABLEKS                       R53 R53 K314 ["Normal"]
     1828 GETTABLEKS                       R53 R53 K310 ["Font"]
     1830 SETTABLEKS                       R53 R52 K310 ["Font"]
     1832 CALL                             R50 2 1
     1833 SETTABLEKS                       R50 R49 K85 ["FailureText"]
     1835 CALL                             R46 3 -1
     1836 RETURN                           R46 -1

PROTO_52:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 DUPTABLE                         R3 K16 [{"LoadState", "SaveState", "OwnerId", "OwnerType", "GroupOwnerUserId", "HasCollaborators", "HasCurrentEditCollaborators", "HasOutsideAgeBucketEditCollaborators", "HasCurrentUserBlockingCollaborators", "OwnerIsNotAgeVerified", "OwnerIsCountryBlocked", "GroupRolePermissions", "Is17PlusGame", "HasUnsavedChanges", "MigrationStatus", "SelectedPill"}]
        4 GETTABLEKS                       R4 R0 K0 ["LoadState"]
        6 GETTABLEKS                       R4 R4 K17 ["CurrentLoadState"]
        8 JUMPIF                           R4 ; [+3]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K18 ["Unloaded"]
       12 SETTABLEKS                       R4 R3 K0 ["LoadState"]
       14 GETTABLEKS                       R4 R0 K1 ["SaveState"]
       16 GETTABLEKS                       R4 R4 K19 ["CurrentSaveState"]
       18 JUMPIF                           R4 ; [+3]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K20 ["Unsaved"]
       22 SETTABLEKS                       R4 R3 K1 ["SaveState"]
       24 GETTABLEKS                       R4 R0 K21 ["GameOwnerMetadata"]
       26 GETTABLEKS                       R4 R4 K22 ["creatorId"]
       28 SETTABLEKS                       R4 R3 K2 ["OwnerId"]
       30 GETTABLEKS                       R4 R0 K21 ["GameOwnerMetadata"]
       32 GETTABLEKS                       R4 R4 K23 ["creatorType"]
       34 SETTABLEKS                       R4 R3 K3 ["OwnerType"]
       36 GETTABLEKS                       R4 R0 K21 ["GameOwnerMetadata"]
       38 GETTABLEKS                       R4 R4 K24 ["groupOwnerId"]
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
       53 GETTABLEKS                       R5 R5 K25 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
       55 JUMPIFNOT                        R5 ; [+4]
       56 GETUPVAL                         R4 6
       57 MOVE                             R5 R0
       58 CALL                             R4 1 1
       59 JUMP                             ; [+1]
       60 LOADNIL                          R4
       61 SETTABLEKS                       R4 R3 K7 ["HasOutsideAgeBucketEditCollaborators"]
       63 GETUPVAL                         R5 5
       64 GETTABLEKS                       R5 R5 K26 ["fflagManageCollaboratorsEditorBlockingBanner"]
       66 JUMPIFNOT                        R5 ; [+4]
       67 GETUPVAL                         R4 7
       68 MOVE                             R5 R0
       69 CALL                             R4 1 1
       70 JUMP                             ; [+1]
       71 LOADNIL                          R4
       72 SETTABLEKS                       R4 R3 K8 ["HasCurrentUserBlockingCollaborators"]
       74 GETUPVAL                         R5 5
       75 GETTABLEKS                       R5 R5 K27 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
       77 JUMPIFNOT                        R5 ; [+4]
       78 GETUPVAL                         R4 8
       79 MOVE                             R5 R0
       80 CALL                             R4 1 1
       81 JUMP                             ; [+1]
       82 LOADNIL                          R4
       83 SETTABLEKS                       R4 R3 K9 ["OwnerIsNotAgeVerified"]
       85 GETUPVAL                         R5 5
       86 GETTABLEKS                       R5 R5 K28 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       88 JUMPIFNOT                        R5 ; [+4]
       89 GETUPVAL                         R4 9
       90 MOVE                             R5 R0
       91 CALL                             R4 1 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R4
       94 SETTABLEKS                       R4 R3 K10 ["OwnerIsCountryBlocked"]
       96 GETTABLEKS                       R4 R0 K11 ["GroupRolePermissions"]
       98 GETTABLEKS                       R4 R4 K29 ["PermissionsByRole"]
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
      122 GETUPVAL                         R4 14
      123 MOVE                             R5 R0
      124 CALL                             R4 1 1
      125 SETTABLEKS                       R4 R3 K15 ["SelectedPill"]
      127 RETURN                           R3 1

PROTO_53:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["LoadPermissions"]
        4 CALL                             R1 1 -1
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
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_57:
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
      395 GETTABLEKS                       R64 R64 K71 ["Selectors"]
      397 GETTABLEKS                       R64 R64 K82 ["GetSelectedFilterPill"]
      399 CALL                             R63 1 1
      400 GETIMPORT                        R64 K18 [require]
      402 GETTABLEKS                       R65 R8 K49 ["Src"]
      404 GETTABLEKS                       R65 R65 K50 ["Util"]
      406 GETTABLEKS                       R65 R65 K83 ["MigrationStatus"]
      408 CALL                             R64 1 1
      409 GETIMPORT                        R65 K18 [require]
      411 GETTABLEKS                       R66 R8 K49 ["Src"]
      413 GETTABLEKS                       R66 R66 K71 ["Selectors"]
      415 GETTABLEKS                       R66 R66 K84 ["GetOwnerIsCountryBlocked"]
      417 CALL                             R65 1 1
      418 GETIMPORT                        R66 K18 [require]
      420 GETTABLEKS                       R67 R8 K49 ["Src"]
      422 GETTABLEKS                       R67 R67 K50 ["Util"]
      424 GETTABLEKS                       R67 R67 K85 ["IsTeamCreateEnabled"]
      426 CALL                             R66 1 1
      427 GETTABLEKS                       R67 R13 K50 ["Util"]
      429 GETTABLEKS                       R68 R67 K86 ["LayoutOrderIterator"]
      431 GETIMPORT                        R69 K18 [require]
      433 GETTABLEKS                       R70 R8 K49 ["Src"]
      435 GETTABLEKS                       R70 R70 K50 ["Util"]
      437 GETTABLEKS                       R70 R70 K87 ["Analytics"]
      439 CALL                             R69 1 1
      440 OR                               R70 R2 R1
      441 GETTABLEKS                       R71 R23 K88 ["View"]
      443 GETIMPORT                        R72 K18 [require]
      445 GETTABLEKS                       R73 R8 K19 ["Packages"]
      447 GETTABLEKS                       R73 R73 K89 ["React"]
      449 CALL                             R72 1 1
      450 GETIMPORT                        R73 K18 [require]
      452 GETTABLEKS                       R74 R8 K49 ["Src"]
      454 GETTABLEKS                       R74 R74 K52 ["Components"]
      456 GETTABLEKS                       R74 R74 K90 ["Header"]
      458 CALL                             R73 1 1
      459 GETTABLEKS                       R74 R9 K91 ["PureComponent"]
      461 LOADK                            R76 K92 ["PermissionsView"]
      462 NAMECALL                         R74 R74 K93 ["extend"]
      464 CALL                             R74 2 1
      465 GETIMPORT                        R75 K18 [require]
      467 GETTABLEKS                       R76 R8 K49 ["Src"]
      469 GETTABLEKS                       R76 R76 K50 ["Util"]
      471 GETTABLEKS                       R76 R76 K94 ["Telemetry"]
      473 GETTABLEKS                       R76 R76 K95 ["CTAClickedEvent"]
      475 CALL                             R75 1 1
      476 GETIMPORT                        R76 K18 [require]
      478 GETTABLEKS                       R77 R8 K49 ["Src"]
      480 GETTABLEKS                       R77 R77 K50 ["Util"]
      482 GETTABLEKS                       R77 R77 K94 ["Telemetry"]
      484 GETTABLEKS                       R77 R77 K96 ["SafetyUpsellBannerShownEvent"]
      486 CALL                             R76 1 1
      487 GETIMPORT                        R77 K18 [require]
      489 GETTABLEKS                       R78 R8 K19 ["Packages"]
      491 GETTABLEKS                       R78 R78 K97 ["TelemetryProtocol"]
      493 CALL                             R77 1 1
      494 GETTABLEKS                       R78 R77 K98 ["new"]
      496 CALL                             R78 0 1
      497 GETIMPORT                        R79 K18 [require]
      499 GETTABLEKS                       R80 R8 K49 ["Src"]
      501 GETTABLEKS                       R80 R80 K52 ["Components"]
      503 GETTABLEKS                       R80 R80 K99 ["UpsellDialog"]
      505 CALL                             R79 1 1
      506 DUPCLOSURE                       R80 K100 [PROTO_0]
      507 CAPTURE                          VAL R47
      508 CAPTURE                          VAL R78
      509 CAPTURE                          VAL R75
      510 CAPTURE                          VAL R5
      511 DUPCLOSURE                       R81 K101 [PROTO_2]
      512 CAPTURE                          VAL R6
      513 DUPCLOSURE                       R82 K102 [PROTO_3]
      514 SETTABLEKS                       R82 R74 K103 ["isGroupGame"]
      516 DUPCLOSURE                       R82 K104 [PROTO_4]
      517 CAPTURE                          VAL R5
      518 SETTABLEKS                       R82 R74 K105 ["isLoggedInUserGameOwner"]
      520 DUPCLOSURE                       R82 K106 [PROTO_5]
      521 CAPTURE                          VAL R43
      522 SETTABLEKS                       R82 R74 K107 ["shouldShowAudienceTabs"]
      524 DUPCLOSURE                       R82 K108 [PROTO_6]
      525 CAPTURE                          VAL R12
      526 CAPTURE                          VAL R3
      527 CAPTURE                          VAL R64
      528 SETTABLEKS                       R82 R74 K109 ["shouldUseEarlyTesterChipLayout"]
      530 DUPCLOSURE                       R82 K110 [PROTO_7]
      531 CAPTURE                          VAL R42
      532 SETTABLEKS                       R82 R74 K111 ["getAudienceTabs"]
      534 DUPCLOSURE                       R82 K112 [PROTO_15]
      535 CAPTURE                          VAL R42
      536 CAPTURE                          VAL R9
      537 CAPTURE                          VAL R47
      538 CAPTURE                          VAL R78
      539 CAPTURE                          VAL R75
      540 CAPTURE                          VAL R5
      541 CAPTURE                          VAL R7
      542 CAPTURE                          VAL R6
      543 CAPTURE                          VAL R12
      544 CAPTURE                          VAL R76
      545 SETTABLEKS                       R82 R74 K113 ["init"]
      547 DUPCLOSURE                       R82 K114 [PROTO_28]
      548 CAPTURE                          VAL R48
      549 CAPTURE                          VAL R49
      550 CAPTURE                          VAL R78
      551 CAPTURE                          VAL R76
      552 CAPTURE                          VAL R5
      553 CAPTURE                          VAL R12
      554 SETTABLEKS                       R82 R74 K115 ["didUpdate"]
      556 DUPCLOSURE                       R82 K116 [PROTO_29]
      557 CAPTURE                          VAL R66
      558 CAPTURE                          VAL R4
      559 SETTABLEKS                       R82 R74 K117 ["onSavePressed"]
      561 DUPCLOSURE                       R82 K118 [PROTO_32]
      562 CAPTURE                          VAL R69
      563 CAPTURE                          VAL R36
      564 CAPTURE                          VAL R22
      565 CAPTURE                          VAL R9
      566 SETTABLEKS                       R82 R74 K119 ["onCancelPressed"]
      568 DUPCLOSURE                       R82 K120 [PROTO_51]
      569 CAPTURE                          VAL R48
      570 CAPTURE                          VAL R12
      571 CAPTURE                          VAL R55
      572 CAPTURE                          VAL R54
      573 CAPTURE                          VAL R51
      574 CAPTURE                          VAL R3
      575 CAPTURE                          VAL R64
      576 CAPTURE                          VAL R66
      577 CAPTURE                          VAL R70
      578 CAPTURE                          VAL R68
      579 CAPTURE                          VAL R47
      580 CAPTURE                          VAL R9
      581 CAPTURE                          VAL R20
      582 CAPTURE                          VAL R72
      583 CAPTURE                          VAL R73
      584 CAPTURE                          VAL R4
      585 CAPTURE                          VAL R71
      586 CAPTURE                          VAL R28
      587 CAPTURE                          VAL R27
      588 CAPTURE                          VAL R30
      589 CAPTURE                          VAL R24
      590 CAPTURE                          VAL R31
      591 CAPTURE                          VAL R33
      592 CAPTURE                          VAL R34
      593 CAPTURE                          VAL R35
      594 CAPTURE                          VAL R78
      595 CAPTURE                          VAL R75
      596 CAPTURE                          VAL R5
      597 CAPTURE                          VAL R7
      598 CAPTURE                          VAL R6
      599 CAPTURE                          VAL R29
      600 CAPTURE                          VAL R23
      601 CAPTURE                          VAL R32
      602 CAPTURE                          VAL R2
      603 CAPTURE                          VAL R25
      604 CAPTURE                          VAL R26
      605 CAPTURE                          VAL R40
      606 CAPTURE                          VAL R38
      607 CAPTURE                          VAL R39
      608 CAPTURE                          VAL R37
      609 CAPTURE                          VAL R0
      610 CAPTURE                          VAL R19
      611 CAPTURE                          VAL R11
      612 CAPTURE                          VAL R79
      613 CAPTURE                          VAL R41
      614 CAPTURE                          VAL R21
      615 SETTABLEKS                       R82 R74 K121 ["render"]
      617 MOVE                             R82 R15
      618 DUPTABLE                         R83 K122 [{"Stylizer", "Localization"}]
      619 SETTABLEKS                       R16 R83 K29 ["Stylizer"]
      621 SETTABLEKS                       R17 R83 K30 ["Localization"]
      623 CALL                             R82 1 1
      624 MOVE                             R83 R74
      625 CALL                             R82 1 1
      626 MOVE                             R74 R82
      627 GETTABLEKS                       R82 R10 K123 ["connect"]
      629 NEWCLOSURE                       R83 P12
      630 CAPTURE                          VAL R58
      631 CAPTURE                          VAL R54
      632 CAPTURE                          VAL R55
      633 CAPTURE                          VAL R56
      634 CAPTURE                          VAL R57
      635 CAPTURE                          VAL R12
      636 CAPTURE                          VAL R59
      637 CAPTURE                          VAL R60
      638 CAPTURE                          VAL R61
      639 CAPTURE                          VAL R65
      640 CAPTURE                          VAL R51
      641 CAPTURE                          REF R53
      642 CAPTURE                          VAL R3
      643 CAPTURE                          VAL R62
      644 CAPTURE                          VAL R63
      645 NEWCLOSURE                       R84 P13
      646 CAPTURE                          VAL R45
      647 CAPTURE                          VAL R44
      648 CAPTURE                          VAL R46
      649 CAPTURE                          VAL R51
      650 CAPTURE                          REF R52
      651 CALL                             R82 2 1
      652 MOVE                             R83 R74
      653 CALL                             R82 1 1
      654 MOVE                             R74 R82
      655 CLOSEUPVALS                      R52
      656 RETURN                           R74 1
