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
        5 JUMPIFNOT                        R2 ; [+11]
        6 NAMECALL                         R2 R0 K2 ["isGroupGame"]
        8 CALL                             R2 1 1
        9 JUMPIFNOT                        R2 ; [+7]
       10 GETTABLEKS                       R2 R1 K3 ["CanManageEarlyTesters"]
       12 JUMPIFNOT                        R2 ; [+4]
       13 NAMECALL                         R3 R0 K4 ["shouldShowAudienceTabs"]
       15 CALL                             R3 1 1
       16 NOT                              R2 R3
       17 RETURN                           R2 1

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
        1 GETTABLEKS                       R1 R1 K0 ["AUDIENCE_TAB_EARLY_TESTERS"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+14]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["state"]
        8 GETTABLEKS                       R1 R1 K2 ["ActiveAudienceTab"]
       10 JUMPIFEQ                         R1 R0 ; [+7]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K3 ["props"]
       15 GETTABLEKS                       R1 R1 K4 ["LogEarlyTestersTabOpened"]
       17 CALL                             R1 0 0
       18 GETUPVAL                         R1 1
       19 DUPTABLE                         R3 K5 [{"ActiveAudienceTab"}]
       20 SETTABLEKS                       R0 R3 K2 ["ActiveAudienceTab"]
       22 NAMECALL                         R1 R1 K6 ["setState"]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 DUPTABLE                         R1 K2 [{[1] = True}]
        1 RETURN                           R1 1

PROTO_15:
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
       13 DUPCLOSURE                       R2 K8 [PROTO_14]
       14 NAMECALL                         R0 R0 K9 ["setState"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R1 K3 [{[1] = False, ["ActiveAudienceTab"]}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K4 ["AUDIENCE_TAB_ACCESS"]
        4 SETTABLEKS                       R2 R1 K2 ["ActiveAudienceTab"]
        6 SETTABLEKS                       R1 R0 K5 ["state"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K6 ["onAudienceTabActivated"]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K7 ["createRef"]
       16 CALL                             R1 0 1
       17 SETTABLEKS                       R1 R0 K8 ["scrollingFrameRef"]
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K9 ["contentHeightChanged"]
       23 DUPCLOSURE                       R1 K10 [PROTO_10]
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U7
       30 SETTABLEKS                       R1 R0 K11 ["launchFAEPlusVPC"]
       32 DUPCLOSURE                       R1 K12 [PROTO_11]
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          UPVAL U8
       38 CAPTURE                          UPVAL U7
       39 SETTABLEKS                       R1 R0 K13 ["launchCreatorHub"]
       41 DUPCLOSURE                       R1 K14 [PROTO_12]
       42 CAPTURE                          UPVAL U8
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U7
       48 SETTABLEKS                       R1 R0 K15 ["launchCreatorHubUniverseSafetyView"]
       50 DUPCLOSURE                       R1 K16 [PROTO_13]
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          UPVAL U8
       56 CAPTURE                          UPVAL U7
       57 SETTABLEKS                       R1 R0 K17 ["launchCreatorHubExperiencePermissionsView"]
       59 NEWCLOSURE                       R1 P6
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          UPVAL U9
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R1 R0 K18 ["launchModal"]
       66 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_18]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_21]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"ShowTrustedConnectionsOption"}]
        2 SETTABLEKS                       R0 R3 K0 ["ShowTrustedConnectionsOption"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_24:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_24]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_27]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fflagPrefetchLikelyCollaboratorsOnce"]
        3 JUMPIFNOT                        R2 ; [+27]
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+25]
        6 GETTABLEKS                       R2 R1 K1 ["LoadState"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["Loaded"]
       11 JUMPIFEQ                         R2 R3 ; [+19]
       13 GETTABLEKS                       R2 R0 K3 ["props"]
       15 GETTABLEKS                       R2 R2 K1 ["LoadState"]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K2 ["Loaded"]
       20 JUMPIFNOTEQ                      R2 R3 ; [+10]
       22 GETTABLEKS                       R2 R0 K3 ["props"]
       24 GETTABLEKS                       R2 R2 K4 ["PrefetchLikelyCollaborators"]
       26 GETTABLEKS                       R3 R0 K3 ["props"]
       28 GETTABLEKS                       R3 R3 K5 ["Is17PlusGame"]
       30 CALL                             R2 1 0
       31 GETTABLEKS                       R2 R1 K6 ["Enabled"]
       33 JUMPIF                           R2 ; [+102]
       34 GETTABLEKS                       R2 R0 K3 ["props"]
       36 GETTABLEKS                       R2 R2 K6 ["Enabled"]
       38 JUMPIFNOT                        R2 ; [+97]
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R2 R2 K7 ["fflagEarlyTesterTelemetry"]
       42 JUMPIFNOT                        R2 ; [+18]
       43 GETTABLEKS                       R2 R0 K8 ["state"]
       45 GETTABLEKS                       R2 R2 K9 ["ActiveAudienceTab"]
       47 GETUPVAL                         R3 3
       48 GETTABLEKS                       R3 R3 K10 ["AUDIENCE_TAB_ACCESS"]
       50 JUMPIFEQ                         R2 R3 ; [+10]
       52 DUPTABLE                         R4 K11 [{"ActiveAudienceTab"}]
       53 GETUPVAL                         R5 3
       54 GETTABLEKS                       R5 R5 K10 ["AUDIENCE_TAB_ACCESS"]
       56 SETTABLEKS                       R5 R4 K9 ["ActiveAudienceTab"]
       58 NAMECALL                         R2 R0 K12 ["setState"]
       60 CALL                             R2 2 0
       61 GETUPVAL                         R2 4
       62 JUMPIFNOT                        R2 ; [+52]
       63 GETUPVAL                         R2 5
       64 LOADK                            R3 K13 ["ShouldShowCollabBanner"]
       65 LOADK                            R4 K14 ["studio/CollaborationSettings"]
       66 CALL                             R2 2 1
       67 NEWCLOSURE                       R4 P0
       68 CAPTURE                          UPVAL U6
       69 CAPTURE                          UPVAL U7
       70 CAPTURE                          UPVAL U8
       71 CAPTURE                          VAL R0
       72 NAMECALL                         R2 R2 K15 ["andThen"]
       74 CALL                             R2 2 1
       75 NEWCLOSURE                       R4 P1
       76 CAPTURE                          VAL R0
       77 NAMECALL                         R2 R2 K16 ["catch"]
       79 CALL                             R2 2 0
       80 GETUPVAL                         R2 5
       81 LOADK                            R3 K17 ["ShowEstablishTrustBanner"]
       82 LOADK                            R4 K14 ["studio/CollaborationSettings"]
       83 CALL                             R2 2 1
       84 NEWCLOSURE                       R4 P2
       85 CAPTURE                          UPVAL U6
       86 CAPTURE                          UPVAL U7
       87 CAPTURE                          UPVAL U8
       88 CAPTURE                          VAL R0
       89 NAMECALL                         R2 R2 K15 ["andThen"]
       91 CALL                             R2 2 1
       92 NEWCLOSURE                       R4 P3
       93 CAPTURE                          VAL R0
       94 NAMECALL                         R2 R2 K16 ["catch"]
       96 CALL                             R2 2 0
       97 GETUPVAL                         R2 0
       98 GETTABLEKS                       R2 R2 K18 ["fflagUpsellCollabTrustedConnectionShowUpsellDialog"]
      100 JUMPIFNOT                        R2 ; [+14]
      101 GETUPVAL                         R2 5
      102 LOADK                            R3 K19 ["ShowTrustedConnectionsOption"]
      103 LOADK                            R4 K14 ["studio/CollaborationSettings"]
      104 CALL                             R2 2 1
      105 NEWCLOSURE                       R4 P4
      106 CAPTURE                          VAL R0
      107 NAMECALL                         R2 R2 K15 ["andThen"]
      109 CALL                             R2 2 1
      110 NEWCLOSURE                       R4 P5
      111 CAPTURE                          VAL R0
      112 NAMECALL                         R2 R2 K16 ["catch"]
      114 CALL                             R2 2 0
      115 GETUPVAL                         R2 0
      116 GETTABLEKS                       R2 R2 K20 ["fflagUpsellMCCollabReverification"]
      118 JUMPIFNOT                        R2 ; [+17]
      119 GETUPVAL                         R2 5
      120 LOADK                            R3 K21 ["ShouldShowStudioAgeReverificationRequiredBanner"]
      121 LOADK                            R4 K14 ["studio/CollaborationSettings"]
      122 CALL                             R2 2 1
      123 NEWCLOSURE                       R4 P6
      124 CAPTURE                          UPVAL U6
      125 CAPTURE                          UPVAL U7
      126 CAPTURE                          UPVAL U8
      127 CAPTURE                          VAL R0
      128 NAMECALL                         R2 R2 K15 ["andThen"]
      130 CALL                             R2 2 1
      131 NEWCLOSURE                       R4 P7
      132 CAPTURE                          VAL R0
      133 NAMECALL                         R2 R2 K16 ["catch"]
      135 CALL                             R2 2 0
      136 GETUPVAL                         R2 0
      137 GETTABLEKS                       R2 R2 K22 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      139 JUMPIFNOT                        R2 ; [+55]
      140 GETTABLEKS                       R2 R0 K3 ["props"]
      142 GETTABLEKS                       R2 R2 K23 ["HasOutsideAgeBucketEditCollaborators"]
      144 GETTABLEKS                       R3 R1 K23 ["HasOutsideAgeBucketEditCollaborators"]
      146 JUMPIFEQ                         R2 R3 ; [+48]
      148 GETUPVAL                         R2 0
      149 GETTABLEKS                       R2 R2 K24 ["fflagManageCollaboratorsAgeGatingTelemetry"]
      151 JUMPIFNOT                        R2 ; [+33]
      152 NAMECALL                         R2 R0 K25 ["isLoggedInUserGameOwner"]
      154 CALL                             R2 1 1
      155 JUMPIFNOT                        R2 ; [+29]
      156 GETTABLEKS                       R2 R0 K3 ["props"]
      158 GETTABLEKS                       R2 R2 K23 ["HasOutsideAgeBucketEditCollaborators"]
      160 JUMPIFNOT                        R2 ; [+24]
      161 GETUPVAL                         R2 6
      162 GETUPVAL                         R4 7
      163 DUPTABLE                         R5 K33 [{["userId"], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators_outside_age_bucket_banner", ["placeId"], ["universeId"]}]
      164 GETUPVAL                         R6 8
      165 NAMECALL                         R6 R6 K34 ["GetUserId"]
      167 CALL                             R6 1 1
      168 SETTABLEKS                       R6 R5 K26 ["userId"]
      170 GETIMPORT                        R6 K36 [game]
      172 GETTABLEKS                       R6 R6 K37 ["PlaceId"]
      174 SETTABLEKS                       R6 R5 K31 ["placeId"]
      176 GETIMPORT                        R6 K36 [game]
      178 GETTABLEKS                       R6 R6 K38 ["GameId"]
      180 SETTABLEKS                       R6 R5 K32 ["universeId"]
      182 NAMECALL                         R2 R2 K39 ["logRobloxTelemetryEvent"]
      184 CALL                             R2 3 0
      185 DUPTABLE                         R4 K41 [{"ShowOutsideAgeBucketBanner"}]
      186 GETTABLEKS                       R5 R0 K3 ["props"]
      188 GETTABLEKS                       R5 R5 K23 ["HasOutsideAgeBucketEditCollaborators"]
      190 SETTABLEKS                       R5 R4 K40 ["ShowOutsideAgeBucketBanner"]
      192 NAMECALL                         R2 R0 K12 ["setState"]
      194 CALL                             R2 2 0
      195 GETUPVAL                         R2 0
      196 GETTABLEKS                       R2 R2 K42 ["fflagManageCollaboratorsEditorBlockingBanner"]
      198 JUMPIFNOT                        R2 ; [+55]
      199 GETTABLEKS                       R2 R0 K3 ["props"]
      201 GETTABLEKS                       R2 R2 K43 ["HasCurrentUserBlockingCollaborators"]
      203 GETTABLEKS                       R3 R1 K43 ["HasCurrentUserBlockingCollaborators"]
      205 JUMPIFEQ                         R2 R3 ; [+48]
      207 GETUPVAL                         R2 0
      208 GETTABLEKS                       R2 R2 K24 ["fflagManageCollaboratorsAgeGatingTelemetry"]
      210 JUMPIFNOT                        R2 ; [+33]
      211 NAMECALL                         R2 R0 K25 ["isLoggedInUserGameOwner"]
      213 CALL                             R2 1 1
      214 JUMPIF                           R2 ; [+29]
      215 GETTABLEKS                       R2 R0 K3 ["props"]
      217 GETTABLEKS                       R2 R2 K43 ["HasCurrentUserBlockingCollaborators"]
      219 JUMPIFNOT                        R2 ; [+24]
      220 GETUPVAL                         R2 6
      221 GETUPVAL                         R4 7
      222 DUPTABLE                         R5 K45 [{["userId"], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators_editor_blocking_banner", ["placeId"], ["universeId"]}]
      223 GETUPVAL                         R6 8
      224 NAMECALL                         R6 R6 K34 ["GetUserId"]
      226 CALL                             R6 1 1
      227 SETTABLEKS                       R6 R5 K26 ["userId"]
      229 GETIMPORT                        R6 K36 [game]
      231 GETTABLEKS                       R6 R6 K37 ["PlaceId"]
      233 SETTABLEKS                       R6 R5 K31 ["placeId"]
      235 GETIMPORT                        R6 K36 [game]
      237 GETTABLEKS                       R6 R6 K38 ["GameId"]
      239 SETTABLEKS                       R6 R5 K32 ["universeId"]
      241 NAMECALL                         R2 R2 K39 ["logRobloxTelemetryEvent"]
      243 CALL                             R2 3 0
      244 DUPTABLE                         R4 K47 [{"ShowEditorBlockingBanner"}]
      245 GETTABLEKS                       R5 R0 K3 ["props"]
      247 GETTABLEKS                       R5 R5 K43 ["HasCurrentUserBlockingCollaborators"]
      249 SETTABLEKS                       R5 R4 K46 ["ShowEditorBlockingBanner"]
      251 NAMECALL                         R2 R0 K12 ["setState"]
      253 CALL                             R2 2 0
      254 GETUPVAL                         R2 0
      255 GETTABLEKS                       R2 R2 K48 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      257 JUMPIFNOT                        R2 ; [+51]
      258 GETTABLEKS                       R2 R0 K3 ["props"]
      260 GETTABLEKS                       R2 R2 K49 ["OwnerIsNotAgeVerified"]
      262 GETTABLEKS                       R3 R1 K49 ["OwnerIsNotAgeVerified"]
      264 JUMPIFEQ                         R2 R3 ; [+44]
      266 GETUPVAL                         R2 0
      267 GETTABLEKS                       R2 R2 K24 ["fflagManageCollaboratorsAgeGatingTelemetry"]
      269 JUMPIFNOT                        R2 ; [+29]
      270 GETTABLEKS                       R2 R0 K3 ["props"]
      272 GETTABLEKS                       R2 R2 K49 ["OwnerIsNotAgeVerified"]
      274 JUMPIFNOT                        R2 ; [+24]
      275 GETUPVAL                         R2 6
      276 GETUPVAL                         R4 7
      277 DUPTABLE                         R5 K51 [{["userId"], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators_owner_not_age_verified_banner", ["placeId"], ["universeId"]}]
      278 GETUPVAL                         R6 8
      279 NAMECALL                         R6 R6 K34 ["GetUserId"]
      281 CALL                             R6 1 1
      282 SETTABLEKS                       R6 R5 K26 ["userId"]
      284 GETIMPORT                        R6 K36 [game]
      286 GETTABLEKS                       R6 R6 K37 ["PlaceId"]
      288 SETTABLEKS                       R6 R5 K31 ["placeId"]
      290 GETIMPORT                        R6 K36 [game]
      292 GETTABLEKS                       R6 R6 K38 ["GameId"]
      294 SETTABLEKS                       R6 R5 K32 ["universeId"]
      296 NAMECALL                         R2 R2 K39 ["logRobloxTelemetryEvent"]
      298 CALL                             R2 3 0
      299 DUPTABLE                         R4 K53 [{"ShowOwnerNotAgeVerifiedBanner"}]
      300 GETTABLEKS                       R5 R0 K3 ["props"]
      302 GETTABLEKS                       R5 R5 K49 ["OwnerIsNotAgeVerified"]
      304 SETTABLEKS                       R5 R4 K52 ["ShowOwnerNotAgeVerifiedBanner"]
      306 NAMECALL                         R2 R0 K12 ["setState"]
      308 CALL                             R2 2 0
      309 GETUPVAL                         R2 0
      310 GETTABLEKS                       R2 R2 K54 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      312 JUMPIFNOT                        R2 ; [+51]
      313 GETTABLEKS                       R2 R0 K3 ["props"]
      315 GETTABLEKS                       R2 R2 K55 ["OwnerIsCountryBlocked"]
      317 GETTABLEKS                       R3 R1 K55 ["OwnerIsCountryBlocked"]
      319 JUMPIFEQ                         R2 R3 ; [+44]
      321 GETUPVAL                         R2 0
      322 GETTABLEKS                       R2 R2 K24 ["fflagManageCollaboratorsAgeGatingTelemetry"]
      324 JUMPIFNOT                        R2 ; [+29]
      325 GETTABLEKS                       R2 R0 K3 ["props"]
      327 GETTABLEKS                       R2 R2 K55 ["OwnerIsCountryBlocked"]
      329 JUMPIFNOT                        R2 ; [+24]
      330 GETUPVAL                         R2 6
      331 GETUPVAL                         R4 7
      332 DUPTABLE                         R5 K57 [{["userId"], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators_owner_country_blocked_banner", ["placeId"], ["universeId"]}]
      333 GETUPVAL                         R6 8
      334 NAMECALL                         R6 R6 K34 ["GetUserId"]
      336 CALL                             R6 1 1
      337 SETTABLEKS                       R6 R5 K26 ["userId"]
      339 GETIMPORT                        R6 K36 [game]
      341 GETTABLEKS                       R6 R6 K37 ["PlaceId"]
      343 SETTABLEKS                       R6 R5 K31 ["placeId"]
      345 GETIMPORT                        R6 K36 [game]
      347 GETTABLEKS                       R6 R6 K38 ["GameId"]
      349 SETTABLEKS                       R6 R5 K32 ["universeId"]
      351 NAMECALL                         R2 R2 K39 ["logRobloxTelemetryEvent"]
      353 CALL                             R2 3 0
      354 DUPTABLE                         R4 K59 [{"ShowOwnerCountryBlockedBanner"}]
      355 GETTABLEKS                       R5 R0 K3 ["props"]
      357 GETTABLEKS                       R5 R5 K55 ["OwnerIsCountryBlocked"]
      359 SETTABLEKS                       R5 R4 K58 ["ShowOwnerCountryBlockedBanner"]
      361 NAMECALL                         R2 R0 K12 ["setState"]
      363 CALL                             R2 2 0
      364 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
        0 JUMPIFNOTEQKS                    R0 K0 ["YES"] ; [+6]
        2 GETUPVAL                         R1 0
        3 DUPTABLE                         R2 K6 [{["isAdded"] = False, ["isCanceled"] = True, ["isRemoved"] = False}]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_32:
        0 RETURN                           R0 0

PROTO_33:
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
       61 DUPCLOSURE                       R14 K30 [PROTO_32]
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
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onSavePressed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onCancelPressed"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["launchCreatorHubExperiencePermissionsView"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_48:
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
       83 GETUPVAL                         R16 2
       84 GETTABLEKS                       R16 R16 K23 ["Saved"]
       86 JUMPIFNOTEQ                      R4 R16 ; [+5]
       88 GETTABLEKS                       R16 R1 K24 ["CloseWidget"]
       90 CALL                             R16 0 0
       91 RETURN                           R0 0
       92 GETUPVAL                         R17 3
       93 GETTABLEKS                       R17 R17 K25 ["Loaded"]
       95 JUMPIFEQ                         R5 R17 ; [+2]
       97 LOADB                            R16 0 +1
       98 LOADB                            R16 1
       99 GETUPVAL                         R17 4
      100 JUMPIFNOT                        R17 ; [+10]
      101 JUMPIFNOT                        R16 ; [+9]
      102 GETUPVAL                         R17 1
      103 GETTABLEKS                       R17 R17 K26 ["fflagPrefetchLikelyCollaboratorsOnce"]
      105 JUMPIF                           R17 ; [+5]
      106 GETTABLEKS                       R17 R1 K27 ["PrefetchLikelyCollaborators"]
      108 GETTABLEKS                       R18 R1 K28 ["Is17PlusGame"]
      110 CALL                             R17 1 0
      111 LOADB                            R17 0
      112 LOADNIL                          R18
      113 GETUPVAL                         R19 3
      114 GETTABLEKS                       R19 R19 K29 ["Unloaded"]
      116 JUMPIFNOTEQ                      R5 R19 ; [+4]
      118 GETTABLEKS                       R19 R1 K30 ["LoadPermissions"]
      120 CALL                             R19 0 0
      121 GETUPVAL                         R19 3
      122 GETTABLEKS                       R19 R19 K31 ["LoadFailed"]
      124 JUMPIFEQ                         R5 R19 ; [+6]
      126 GETUPVAL                         R19 2
      127 GETTABLEKS                       R19 R19 K32 ["SaveFailed"]
      129 JUMPIFNOTEQ                      R4 R19 ; [+20]
      131 LOADB                            R17 1
      132 GETUPVAL                         R19 3
      133 GETTABLEKS                       R19 R19 K31 ["LoadFailed"]
      135 JUMPIFNOTEQ                      R5 R19 ; [+8]
      137 LOADK                            R21 K33 ["FailureMessage"]
      138 LOADK                            R22 K34 ["LoadFailure"]
      139 NAMECALL                         R19 R3 K35 ["getText"]
      141 CALL                             R19 3 1
      142 MOVE                             R18 R19
      143 JUMP                             ; [+6]
      144 LOADK                            R21 K33 ["FailureMessage"]
      145 LOADK                            R22 K36 ["SaveFailure"]
      146 NAMECALL                         R19 R3 K35 ["getText"]
      148 CALL                             R19 3 1
      149 MOVE                             R18 R19
      150 NAMECALL                         R19 R0 K37 ["isLoggedInUserGameOwner"]
      152 CALL                             R19 1 1
      153 GETUPVAL                         R20 1
      154 GETTABLEKS                       R20 R20 K15 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      156 JUMPIFNOT                        R20 ; [+2]
      157 GETTABLEKS                       R20 R1 K38 ["OwnerIsCountryBlocked"]
      159 GETUPVAL                         R21 1
      160 GETTABLEKS                       R21 R21 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      162 JUMPIFNOT                        R21 ; [+2]
      163 GETTABLEKS                       R21 R1 K39 ["OwnerIsNotAgeVerified"]
      165 OR                               R22 R20 R21
      166 MOVE                             R23 R16
      167 JUMPIFNOT                        R23 ; [+1]
      168 NOT                              R23 R17
      169 GETUPVAL                         R24 5
      170 CALL                             R24 0 1
      171 MOVE                             R25 R23
      172 JUMPIFNOT                        R25 ; [+3]
      173 NOT                              R25 R24
      174 JUMPIFNOT                        R25 ; [+1]
      175 OR                               R25 R6 R15
      176 JUMPIFNOT                        R15 ; [+2]
      177 LOADK                            R26 K40 ["SaveEnableTcCurrentEditors"]
      178 JUMP                             ; [+1]
      179 LOADK                            R26 K41 ["SaveEnableTC"]
      180 LOADK                            R29 K42 ["Description"]
      181 MOVE                             R30 R26
      182 NAMECALL                         R27 R3 K35 ["getText"]
      184 CALL                             R27 3 1
      185 GETTABLEKS                       R28 R2 K43 ["header"]
      187 GETTABLEKS                       R28 R28 K44 ["height"]
      189 GETTABLEKS                       R29 R2 K45 ["footer"]
      191 GETTABLEKS                       R29 R29 K44 ["height"]
      193 JUMPIFNOT                        R25 ; [+5]
      194 GETTABLEKS                       R30 R2 K46 ["saveMessage"]
      196 GETTABLEKS                       R30 R30 K47 ["boxHeight"]
      198 ADD                              R29 R29 R30
      199 GETUPVAL                         R30 6
      200 JUMPIFNOT                        R30 ; [+1]
      201 ADD                              R29 R29 R28
      202 GETUPVAL                         R30 7
      203 GETTABLEKS                       R30 R30 K48 ["new"]
      205 CALL                             R30 0 1
      206 GETUPVAL                         R31 7
      207 GETTABLEKS                       R31 R31 K48 ["new"]
      209 CALL                             R31 0 1
      210 NAMECALL                         R32 R0 K49 ["shouldUseEarlyTesterChipLayout"]
      212 CALL                             R32 1 1
      213 GETTABLEKS                       R33 R1 K50 ["SelectedPill"]
      215 MOVE                             R34 R19
      216 JUMPIFNOT                        R34 ; [+11]
      217 NOT                              R34 R32
      218 JUMPIF                           R34 ; [+9]
      219 LOADB                            R34 0
      220 JUMPIFEQKNIL                     R33 ; [+7]
      222 GETTABLEKS                       R35 R33 K51 ["key"]
      224 JUMPIFEQKS                       R35 K52 ["Creators"] ; [+2]
      226 LOADB                            R34 0 +1
      227 LOADB                            R34 1
      228 LOADNIL                          R35
      229 LOADNIL                          R36
      230 JUMPIFNOT                        R32 ; [+8]
      231 NAMECALL                         R37 R31 K53 ["getNextOrder"]
      233 CALL                             R37 1 1
      234 MOVE                             R36 R37
      235 NAMECALL                         R37 R31 K53 ["getNextOrder"]
      237 CALL                             R37 1 1
      238 MOVE                             R35 R37
      239 GETUPVAL                         R38 8
      240 JUMPIFNOT                        R38 ; [+5]
      241 GETUPVAL                         R37 7
      242 GETTABLEKS                       R37 R37 K48 ["new"]
      244 CALL                             R37 0 1
      245 JUMP                             ; [+1]
      246 LOADNIL                          R37
      247 GETUPVAL                         R38 8
      248 JUMPIFNOT                        R38 ; [+8]
      249 MOVE                             R38 R7
      250 JUMPIF                           R38 ; [+6]
      251 MOVE                             R38 R12
      252 JUMPIF                           R38 ; [+4]
      253 GETUPVAL                         R39 1
      254 GETTABLEKS                       R39 R39 K20 ["fflagUpsellMCCollabReverification"]
      256 AND                              R38 R39 R14
      257 LOADK                            R41 K54 ["UpsellBanner"]
      258 LOADK                            R42 K55 ["RecheckAge"]
      259 NAMECALL                         R39 R3 K35 ["getText"]
      261 CALL                             R39 3 1
      262 LOADK                            R42 K54 ["UpsellBanner"]
      263 LOADK                            R43 K56 ["AgeCheckNotValid"]
      264 NAMECALL                         R40 R3 K35 ["getText"]
      266 CALL                             R40 3 1
      267 LOADK                            R43 K57 ["Buttons"]
      268 LOADK                            R44 K58 ["Continue"]
      269 NAMECALL                         R41 R3 K35 ["getText"]
      271 CALL                             R41 3 1
      272 GETUPVAL                         R42 9
      273 GETTABLEKS                       R42 R42 K59 ["createElement"]
      275 LOADK                            R43 K60 ["Frame"]
      276 DUPTABLE                         R44 K63 [{"Size", "BackgroundColor3"}]
      277 GETIMPORT                        R45 K65 [UDim2.new]
      279 LOADN                            R46 1
      280 LOADN                            R47 0
      281 LOADN                            R48 1
      282 LOADN                            R49 0
      283 CALL                             R45 4 1
      284 SETTABLEKS                       R45 R44 K61 ["Size"]
      286 GETTABLEKS                       R45 R2 K66 ["backgroundColor"]
      288 SETTABLEKS                       R45 R44 K62 ["BackgroundColor3"]
      290 DUPTABLE                         R45 K84 [{"Layout", "HeaderContent", "Spacer", "UpsellBanner", "TrustedConnectionsBanner", "ReverificationBanner", "OutsideAgeBucketBanner", "EditorBlockingBanner", "OwnerNotAgeVerifiedBanner", "OwnerCountryBlockedBanner", "CollaborationSubtitleTitleView", "ScrollingFrameNew", "ScrollingFrame", "TextFrame", "upsellDialog", "FooterContent", "LoadingIndicator", "FailureText"}]
      291 MOVE                             R46 R23
      292 JUMPIFNOT                        R46 ; [+28]
      293 GETUPVAL                         R46 9
      294 GETTABLEKS                       R46 R46 K59 ["createElement"]
      296 LOADK                            R47 K85 ["UIListLayout"]
      297 DUPTABLE                         R48 K90 [{"FillDirection", "SortOrder", "HorizontalAlignment", "Padding"}]
      298 GETIMPORT                        R49 K93 [Enum.FillDirection.Vertical]
      300 SETTABLEKS                       R49 R48 K86 ["FillDirection"]
      302 GETIMPORT                        R49 K95 [Enum.SortOrder.LayoutOrder]
      304 SETTABLEKS                       R49 R48 K87 ["SortOrder"]
      306 GETIMPORT                        R49 K97 [Enum.HorizontalAlignment.Center]
      308 SETTABLEKS                       R49 R48 K88 ["HorizontalAlignment"]
      310 GETIMPORT                        R49 K99 [UDim.new]
      312 LOADN                            R50 0
      313 GETTABLEKS                       R51 R2 K100 ["permissionsView"]
      315 GETTABLEKS                       R51 R51 K89 ["Padding"]
      317 CALL                             R49 2 1
      318 SETTABLEKS                       R49 R48 K89 ["Padding"]
      320 CALL                             R46 2 1
      321 SETTABLEKS                       R46 R45 K67 ["Layout"]
      323 GETUPVAL                         R47 1
      324 GETTABLEKS                       R47 R47 K101 ["fflagRemoveHeaderWithUpsellBanner2"]
      326 NOT                              R46 R47
      327 JUMPIFNOT                        R46 ; [+40]
      328 NOT                              R46 R38
      329 JUMPIFNOT                        R46 ; [+38]
      330 GETUPVAL                         R46 6
      331 JUMPIFNOT                        R46 ; [+36]
      332 MOVE                             R46 R23
      333 JUMPIFNOT                        R46 ; [+34]
      334 GETUPVAL                         R46 9
      335 GETTABLEKS                       R46 R46 K59 ["createElement"]
      337 GETUPVAL                         R47 10
      338 DUPTABLE                         R48 K102 [{"LayoutOrder", "Size"}]
      339 NAMECALL                         R49 R30 K53 ["getNextOrder"]
      341 CALL                             R49 1 1
      342 SETTABLEKS                       R49 R48 K94 ["LayoutOrder"]
      344 GETIMPORT                        R49 K65 [UDim2.new]
      346 LOADN                            R50 1
      347 LOADN                            R51 0
      348 LOADN                            R52 0
      349 GETTABLEKS                       R53 R2 K43 ["header"]
      351 GETTABLEKS                       R53 R53 K44 ["height"]
      353 CALL                             R49 4 1
      354 SETTABLEKS                       R49 R48 K61 ["Size"]
      356 DUPTABLE                         R49 K104 [{"Header"}]
      357 GETUPVAL                         R50 11
      358 GETTABLEKS                       R50 R50 K59 ["createElement"]
      360 GETUPVAL                         R51 12
      361 DUPTABLE                         R52 K105 [{"Stylizer"}]
      362 SETTABLEKS                       R2 R52 K2 ["Stylizer"]
      364 CALL                             R50 2 1
      365 SETTABLEKS                       R50 R49 K103 ["Header"]
      367 CALL                             R46 3 1
      368 SETTABLEKS                       R46 R45 K68 ["HeaderContent"]
      370 GETUPVAL                         R46 1
      371 GETTABLEKS                       R46 R46 K101 ["fflagRemoveHeaderWithUpsellBanner2"]
      373 JUMPIFNOT                        R46 ; [+40]
      374 MOVE                             R46 R38
      375 JUMPIFNOT                        R46 ; [+38]
      376 GETUPVAL                         R47 1
      377 GETTABLEKS                       R47 R47 K11 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      379 JUMPIF                           R47 ; [+3]
      380 GETUPVAL                         R47 1
      381 GETTABLEKS                       R47 R47 K13 ["fflagManageCollaboratorsEditorBlockingBanner"]
      383 NOT                              R46 R47
      384 JUMPIFNOT                        R46 ; [+29]
      385 GETUPVAL                         R47 1
      386 GETTABLEKS                       R47 R47 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      388 JUMPIF                           R47 ; [+3]
      389 GETUPVAL                         R47 1
      390 GETTABLEKS                       R47 R47 K15 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      392 NOT                              R46 R47
      393 JUMPIFNOT                        R46 ; [+20]
      394 GETUPVAL                         R46 11
      395 GETTABLEKS                       R46 R46 K59 ["createElement"]
      397 GETUPVAL                         R47 13
      398 DUPTABLE                         R48 K102 [{"LayoutOrder", "Size"}]
      399 NAMECALL                         R49 R30 K53 ["getNextOrder"]
      401 CALL                             R49 1 1
      402 SETTABLEKS                       R49 R48 K94 ["LayoutOrder"]
      404 GETIMPORT                        R49 K65 [UDim2.new]
      406 LOADN                            R50 1
      407 LOADN                            R51 0
      408 LOADN                            R52 0
      409 LOADN                            R53 10
      410 CALL                             R49 4 1
      411 SETTABLEKS                       R49 R48 K61 ["Size"]
      413 CALL                             R46 2 1
      414 SETTABLEKS                       R46 R45 K69 ["Spacer"]
      416 GETUPVAL                         R46 8
      417 JUMPIFNOT                        R46 ; [+148]
      418 MOVE                             R46 R7
      419 JUMPIFNOT                        R46 ; [+146]
      420 GETUPVAL                         R47 1
      421 GETTABLEKS                       R47 R47 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      423 NOT                              R46 R47
      424 JUMPIFNOT                        R46 ; [+141]
      425 GETUPVAL                         R46 9
      426 GETTABLEKS                       R46 R46 K59 ["createElement"]
      428 GETUPVAL                         R47 13
      429 DUPTABLE                         R48 K109 [{["LayoutOrder"], ["Size"], ["tag"] = "auto-xy padding-left-large stroke-system-emphasis radius-small bg-over-media-300", ["onActivated"]}]
      430 NAMECALL                         R49 R30 K53 ["getNextOrder"]
      432 CALL                             R49 1 1
      433 SETTABLEKS                       R49 R48 K94 ["LayoutOrder"]
      435 GETIMPORT                        R49 K65 [UDim2.new]
      437 LOADN                            R50 0
      438 LOADN                            R51 770
      439 LOADN                            R52 0
      440 LOADN                            R53 50
      441 CALL                             R49 4 1
      442 SETTABLEKS                       R49 R48 K61 ["Size"]
      444 GETTABLEKS                       R49 R0 K110 ["launchFAEPlusVPC"]
      446 SETTABLEKS                       R49 R48 K108 ["onActivated"]
      448 NEWTABLE                         R49 4 1
      450 MOVE                             R51 R23
      451 JUMPIFNOT                        R51 ; [+28]
      452 GETUPVAL                         R51 9
      453 GETTABLEKS                       R51 R51 K59 ["createElement"]
      455 LOADK                            R52 K85 ["UIListLayout"]
      456 DUPTABLE                         R53 K112 [{"FillDirection", "VerticalAlignment", "SortOrder", "Padding"}]
      457 GETIMPORT                        R54 K114 [Enum.FillDirection.Horizontal]
      459 SETTABLEKS                       R54 R53 K86 ["FillDirection"]
      461 GETIMPORT                        R54 K115 [Enum.VerticalAlignment.Center]
      463 SETTABLEKS                       R54 R53 K111 ["VerticalAlignment"]
      465 GETIMPORT                        R54 K95 [Enum.SortOrder.LayoutOrder]
      467 SETTABLEKS                       R54 R53 K87 ["SortOrder"]
      469 GETIMPORT                        R54 K99 [UDim.new]
      471 LOADN                            R55 0
      472 GETTABLEKS                       R56 R2 K100 ["permissionsView"]
      474 GETTABLEKS                       R56 R56 K89 ["Padding"]
      476 CALL                             R54 2 1
      477 SETTABLEKS                       R54 R53 K89 ["Padding"]
      479 CALL                             R51 2 1
      480 SETTABLEKS                       R51 R49 K116 ["UpsellLayout"]
      482 GETUPVAL                         R50 11
      483 GETTABLEKS                       R50 R50 K59 ["createElement"]
      485 GETUPVAL                         R51 14
      486 DUPTABLE                         R52 K121 [{"name", "style", "LayoutOrder", "size", "variant"}]
      487 GETUPVAL                         R53 15
      488 GETTABLEKS                       R53 R53 K122 ["IconName"]
      490 GETTABLEKS                       R53 R53 K123 ["TriangleExclamation"]
      492 SETTABLEKS                       R53 R52 K117 ["name"]
      494 DUPTABLE                         R53 K127 [{["Color3"], ["Transparency"] = 0}]
      495 GETIMPORT                        R54 K129 [Color3.fromRGB]
      497 LOADN                            R55 51
      498 LOADN                            R56 95
      499 LOADN                            R57 255
      500 CALL                             R54 3 1
      501 SETTABLEKS                       R54 R53 K124 ["Color3"]
      503 SETTABLEKS                       R53 R52 K118 ["style"]
      505 NAMECALL                         R53 R37 K53 ["getNextOrder"]
      507 CALL                             R53 1 1
      508 SETTABLEKS                       R53 R52 K94 ["LayoutOrder"]
      510 GETUPVAL                         R53 15
      511 GETTABLEKS                       R53 R53 K130 ["IconSize"]
      513 GETTABLEKS                       R53 R53 K131 ["Large"]
      515 SETTABLEKS                       R53 R52 K119 ["size"]
      517 GETUPVAL                         R53 16
      518 GETTABLEKS                       R53 R53 K132 ["Filled"]
      520 SETTABLEKS                       R53 R52 K120 ["variant"]
      522 CALL                             R50 2 1
      523 SETLIST                          R49 R50 1 [1]
      525 GETUPVAL                         R51 9
      526 GETTABLEKS                       R51 R51 K59 ["createElement"]
      528 GETUPVAL                         R52 17
      529 DUPTABLE                         R53 K135 [{["tag"] = "fill auto-y padding-left-large text-title-medium text-align-x-left text-align-y-center", ["LayoutOrder"], ["Text"]}]
      530 NAMECALL                         R54 R37 K53 ["getNextOrder"]
      532 CALL                             R54 1 1
      533 SETTABLEKS                       R54 R53 K94 ["LayoutOrder"]
      535 LOADK                            R56 K54 ["UpsellBanner"]
      536 LOADK                            R57 K136 ["description"]
      537 NAMECALL                         R54 R3 K35 ["getText"]
      539 CALL                             R54 3 1
      540 SETTABLEKS                       R54 R53 K134 ["Text"]
      542 CALL                             R51 2 1
      543 SETTABLEKS                       R51 R49 K137 ["WarningText"]
      545 GETUPVAL                         R51 9
      546 GETTABLEKS                       R51 R51 K59 ["createElement"]
      548 GETUPVAL                         R52 17
      549 DUPTABLE                         R53 K139 [{["tag"] = "auto-xy padding-right-large text-label-medium text-align-x-center text-align-y-center", ["LayoutOrder"], ["Text"]}]
      550 NAMECALL                         R54 R37 K53 ["getNextOrder"]
      552 CALL                             R54 1 1
      553 SETTABLEKS                       R54 R53 K94 ["LayoutOrder"]
      555 LOADK                            R56 K54 ["UpsellBanner"]
      556 LOADK                            R57 K140 ["CTA"]
      557 NAMECALL                         R54 R3 K35 ["getText"]
      559 CALL                             R54 3 1
      560 SETTABLEKS                       R54 R53 K134 ["Text"]
      562 CALL                             R51 2 1
      563 SETTABLEKS                       R51 R49 K141 ["GetStarted"]
      565 CALL                             R46 3 1
      566 SETTABLEKS                       R46 R45 K54 ["UpsellBanner"]
      568 GETUPVAL                         R46 0
      569 JUMPIFNOT                        R46 ; [+76]
      570 GETUPVAL                         R47 1
      571 GETTABLEKS                       R47 R47 K11 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      573 NOT                              R46 R47
      574 JUMPIFNOT                        R46 ; [+71]
      575 GETUPVAL                         R47 1
      576 GETTABLEKS                       R47 R47 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      578 NOT                              R46 R47
      579 JUMPIFNOT                        R46 ; [+66]
      580 MOVE                             R46 R12
      581 JUMPIFNOT                        R46 ; [+64]
      582 GETUPVAL                         R46 11
      583 GETTABLEKS                       R46 R46 K59 ["createElement"]
      585 GETUPVAL                         R47 13
      586 DUPTABLE                         R48 K143 [{["tag"] = "size-full-0 auto-y padding-x-large padding-top-large"}]
      587 GETUPVAL                         R49 11
      588 GETTABLEKS                       R49 R49 K59 ["createElement"]
      590 GETUPVAL                         R50 18
      591 DUPTABLE                         R51 K148 [{"variant", "severity", "title", "actions", "onClose"}]
      592 GETUPVAL                         R52 19
      593 GETTABLEKS                       R52 R52 K149 ["Standard"]
      595 SETTABLEKS                       R52 R51 K120 ["variant"]
      597 GETUPVAL                         R52 20
      598 GETTABLEKS                       R52 R52 K150 ["Info"]
      600 SETTABLEKS                       R52 R51 K144 ["severity"]
      602 LOADK                            R54 K54 ["UpsellBanner"]
      603 LOADK                            R55 K151 ["nextStepDescription"]
      604 NAMECALL                         R52 R3 K35 ["getText"]
      606 CALL                             R52 3 1
      607 SETTABLEKS                       R52 R51 K145 ["title"]
      609 NEWTABLE                         R52 0 1
      611 DUPTABLE                         R53 K153 [{"text", "variant", "onActivated"}]
      612 LOADK                            R56 K54 ["UpsellBanner"]
      613 LOADK                            R57 K140 ["CTA"]
      614 NAMECALL                         R54 R3 K35 ["getText"]
      616 CALL                             R54 3 1
      617 SETTABLEKS                       R54 R53 K152 ["text"]
      619 GETUPVAL                         R54 21
      620 GETTABLEKS                       R54 R54 K149 ["Standard"]
      622 SETTABLEKS                       R54 R53 K120 ["variant"]
      624 GETUPVAL                         R55 1
      625 GETTABLEKS                       R55 R55 K18 ["fflagUpsellCollabTrustedConnectionShowUpsellDialog"]
      627 JUMPIFNOT                        R55 ; [+4]
      628 JUMPIFNOT                        R13 ; [+3]
      629 GETTABLEKS                       R54 R0 K154 ["launchModal"]
      631 JUMP                             ; [+2]
      632 GETTABLEKS                       R54 R0 K155 ["launchCreatorHub"]
      634 SETTABLEKS                       R54 R53 K108 ["onActivated"]
      636 SETLIST                          R52 R53 1 [1]
      638 SETTABLEKS                       R52 R51 K146 ["actions"]
      640 NEWCLOSURE                       R52 P0
      641 CAPTURE                          VAL R0
      642 SETTABLEKS                       R52 R51 K147 ["onClose"]
      644 CALL                             R49 2 -1
      645 CALL                             R46 -1 1
      646 SETTABLEKS                       R46 R45 K70 ["TrustedConnectionsBanner"]
      648 GETUPVAL                         R46 1
      649 GETTABLEKS                       R46 R46 K20 ["fflagUpsellMCCollabReverification"]
      651 JUMPIFNOT                        R46 ; [+149]
      652 MOVE                             R46 R14
      653 JUMPIFNOT                        R46 ; [+147]
      654 GETUPVAL                         R46 11
      655 GETTABLEKS                       R46 R46 K59 ["createElement"]
      657 GETUPVAL                         R47 13
      658 DUPTABLE                         R48 K157 [{["LayoutOrder"], ["Size"], ["tag"] = "row align-y-center gap-medium padding-left-large padding-right-medium stroke-system-emphasis radius-small bg-over-media-300", ["onActivated"]}]
      659 NAMECALL                         R49 R30 K53 ["getNextOrder"]
      661 CALL                             R49 1 1
      662 SETTABLEKS                       R49 R48 K94 ["LayoutOrder"]
      664 GETIMPORT                        R49 K65 [UDim2.new]
      666 LOADN                            R50 0
      667 LOADN                            R51 770
      668 LOADN                            R52 0
      669 LOADN                            R53 50
      670 CALL                             R49 4 1
      671 SETTABLEKS                       R49 R48 K61 ["Size"]
      673 DUPCLOSURE                       R49 K158 [PROTO_35]
      674 CAPTURE                          UPVAL U8
      675 CAPTURE                          UPVAL U22
      676 CAPTURE                          UPVAL U23
      677 CAPTURE                          UPVAL U24
      678 CAPTURE                          UPVAL U25
      679 CAPTURE                          UPVAL U26
      680 SETTABLEKS                       R49 R48 K108 ["onActivated"]
      682 DUPTABLE                         R49 K161 [{"Icon", "WarningText", "CloseButton"}]
      683 GETUPVAL                         R50 11
      684 GETTABLEKS                       R50 R50 K59 ["createElement"]
      686 GETUPVAL                         R51 13
      687 DUPTABLE                         R52 K163 [{["LayoutOrder"], ["tag"] = "size-600-600 auto-xy"}]
      688 NAMECALL                         R53 R37 K53 ["getNextOrder"]
      690 CALL                             R53 1 1
      691 SETTABLEKS                       R53 R52 K94 ["LayoutOrder"]
      693 DUPTABLE                         R53 K165 [{"BackgroundCircle", "Icon"}]
      694 GETUPVAL                         R54 11
      695 GETTABLEKS                       R54 R54 K59 ["createElement"]
      697 GETUPVAL                         R55 13
      698 DUPTABLE                         R56 K168 [{["tag"] = "position-center-center anchor-center-center size-500-500 radius-circle", ["backgroundStyle"]}]
      699 DUPTABLE                         R57 K169 [{"Color3"}]
      700 GETIMPORT                        R58 K171 [Color3.fromHex]
      702 LOADK                            R59 K172 ["#FFFFFF"]
      703 CALL                             R58 1 1
      704 SETTABLEKS                       R58 R57 K124 ["Color3"]
      706 SETTABLEKS                       R57 R56 K167 ["backgroundStyle"]
      708 CALL                             R54 2 1
      709 SETTABLEKS                       R54 R53 K164 ["BackgroundCircle"]
      711 GETUPVAL                         R54 11
      712 GETTABLEKS                       R54 R54 K59 ["createElement"]
      714 GETUPVAL                         R55 14
      715 DUPTABLE                         R56 K174 [{["name"], ["style"], ["tag"] = "align-x-center align-y-center", ["size"], ["variant"]}]
      716 GETUPVAL                         R57 15
      717 GETTABLEKS                       R57 R57 K122 ["IconName"]
      719 GETTABLEKS                       R57 R57 K175 ["CircleI"]
      721 SETTABLEKS                       R57 R56 K117 ["name"]
      723 DUPTABLE                         R57 K127 [{["Color3"], ["Transparency"] = 0}]
      724 GETIMPORT                        R58 K129 [Color3.fromRGB]
      726 LOADN                            R59 51
      727 LOADN                            R60 95
      728 LOADN                            R61 255
      729 CALL                             R58 3 1
      730 SETTABLEKS                       R58 R57 K124 ["Color3"]
      732 SETTABLEKS                       R57 R56 K118 ["style"]
      734 GETUPVAL                         R57 15
      735 GETTABLEKS                       R57 R57 K130 ["IconSize"]
      737 GETTABLEKS                       R57 R57 K131 ["Large"]
      739 SETTABLEKS                       R57 R56 K119 ["size"]
      741 GETUPVAL                         R57 16
      742 GETTABLEKS                       R57 R57 K132 ["Filled"]
      744 SETTABLEKS                       R57 R56 K120 ["variant"]
      746 CALL                             R54 2 1
      747 SETTABLEKS                       R54 R53 K159 ["Icon"]
      749 CALL                             R50 3 1
      750 SETTABLEKS                       R50 R49 K159 ["Icon"]
      752 GETUPVAL                         R50 9
      753 GETTABLEKS                       R50 R50 K59 ["createElement"]
      755 GETUPVAL                         R51 17
      756 DUPTABLE                         R52 K179 [{["tag"] = "fill text-body-medium text-align-x-left text-align-y-center", ["LayoutOrder"], ["Text"], ["RichText"] = True}]
      757 NAMECALL                         R53 R37 K53 ["getNextOrder"]
      759 CALL                             R53 1 1
      760 SETTABLEKS                       R53 R52 K94 ["LayoutOrder"]
      762 LOADK                            R53 K180 ["<b>%*</b> %* • %*"]
      763 MOVE                             R55 R39
      764 MOVE                             R56 R40
      765 MOVE                             R57 R41
      766 NAMECALL                         R53 R53 K181 ["format"]
      768 CALL                             R53 4 1
      769 SETTABLEKS                       R53 R52 K134 ["Text"]
      771 CALL                             R50 2 1
      772 SETTABLEKS                       R50 R49 K137 ["WarningText"]
      774 GETUPVAL                         R50 11
      775 GETTABLEKS                       R50 R50 K59 ["createElement"]
      777 GETUPVAL                         R51 27
      778 DUPTABLE                         R52 K184 [{["LayoutOrder"], ["icon"] = "icons/navigation/close", ["size"], ["onActivated"]}]
      779 NAMECALL                         R53 R37 K53 ["getNextOrder"]
      781 CALL                             R53 1 1
      782 SETTABLEKS                       R53 R52 K94 ["LayoutOrder"]
      784 GETUPVAL                         R53 28
      785 GETTABLEKS                       R53 R53 K185 ["Enums"]
      787 GETTABLEKS                       R53 R53 K130 ["IconSize"]
      789 GETTABLEKS                       R53 R53 K186 ["Small"]
      791 SETTABLEKS                       R53 R52 K119 ["size"]
      793 NEWCLOSURE                       R53 P2
      794 CAPTURE                          VAL R0
      795 SETTABLEKS                       R53 R52 K108 ["onActivated"]
      797 CALL                             R50 2 1
      798 SETTABLEKS                       R50 R49 K160 ["CloseButton"]
      800 CALL                             R46 3 1
      801 SETTABLEKS                       R46 R45 K71 ["ReverificationBanner"]
      803 GETUPVAL                         R46 1
      804 GETTABLEKS                       R46 R46 K11 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      806 JUMPIFNOT                        R46 ; [+56]
      807 MOVE                             R46 R19
      808 JUMPIFNOT                        R46 ; [+54]
      809 MOVE                             R46 R9
      810 JUMPIFNOT                        R46 ; [+52]
      811 GETUPVAL                         R46 11
      812 GETTABLEKS                       R46 R46 K59 ["createElement"]
      814 GETUPVAL                         R47 13
      815 DUPTABLE                         R48 K188 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y margin-top-small padding-x-large"}]
      816 NAMECALL                         R49 R30 K53 ["getNextOrder"]
      818 CALL                             R49 1 1
      819 SETTABLEKS                       R49 R48 K94 ["LayoutOrder"]
      821 NEWTABLE                         R49 0 1
      823 GETUPVAL                         R50 11
      824 GETTABLEKS                       R50 R50 K59 ["createElement"]
      826 GETUPVAL                         R51 29
      827 DUPTABLE                         R52 K190 [{"severity", "title", "link", "onClose"}]
      828 GETUPVAL                         R53 20
      829 GETTABLEKS                       R53 R53 K191 ["Warning"]
      831 SETTABLEKS                       R53 R52 K144 ["severity"]
      833 LOADK                            R55 K192 ["FeedbackAlert"]
      834 LOADK                            R56 K193 ["OutsideAgeGroupWarning"]
      835 NAMECALL                         R53 R3 K35 ["getText"]
      837 CALL                             R53 3 1
      838 SETTABLEKS                       R53 R52 K145 ["title"]
      840 DUPTABLE                         R53 K194 [{"text", "onActivated"}]
      841 LOADK                            R56 K192 ["FeedbackAlert"]
      842 LOADK                            R57 K195 ["ViewDetails"]
      843 NAMECALL                         R54 R3 K35 ["getText"]
      845 CALL                             R54 3 1
      846 SETTABLEKS                       R54 R53 K152 ["text"]
      848 NEWCLOSURE                       R54 P3
      849 CAPTURE                          UPVAL U1
      850 CAPTURE                          VAL R0
      851 SETTABLEKS                       R54 R53 K108 ["onActivated"]
      853 SETTABLEKS                       R53 R52 K189 ["link"]
      855 NEWCLOSURE                       R53 P4
      856 CAPTURE                          VAL R0
      857 SETTABLEKS                       R53 R52 K147 ["onClose"]
      859 CALL                             R50 2 -1
      860 SETLIST                          R49 R50 -1 [1]
      862 CALL                             R46 3 1
      863 SETTABLEKS                       R46 R45 K72 ["OutsideAgeBucketBanner"]
      865 GETUPVAL                         R46 1
      866 GETTABLEKS                       R46 R46 K13 ["fflagManageCollaboratorsEditorBlockingBanner"]
      868 JUMPIFNOT                        R46 ; [+56]
      869 NOT                              R46 R19
      870 JUMPIFNOT                        R46 ; [+54]
      871 MOVE                             R46 R10
      872 JUMPIFNOT                        R46 ; [+52]
      873 GETUPVAL                         R46 11
      874 GETTABLEKS                       R46 R46 K59 ["createElement"]
      876 GETUPVAL                         R47 13
      877 DUPTABLE                         R48 K188 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y margin-top-small padding-x-large"}]
      878 NAMECALL                         R49 R30 K53 ["getNextOrder"]
      880 CALL                             R49 1 1
      881 SETTABLEKS                       R49 R48 K94 ["LayoutOrder"]
      883 NEWTABLE                         R49 0 1
      885 GETUPVAL                         R50 11
      886 GETTABLEKS                       R50 R50 K59 ["createElement"]
      888 GETUPVAL                         R51 29
      889 DUPTABLE                         R52 K190 [{"severity", "title", "link", "onClose"}]
      890 GETUPVAL                         R53 20
      891 GETTABLEKS                       R53 R53 K191 ["Warning"]
      893 SETTABLEKS                       R53 R52 K144 ["severity"]
      895 LOADK                            R55 K192 ["FeedbackAlert"]
      896 LOADK                            R56 K196 ["EditorBlockingWarning"]
      897 NAMECALL                         R53 R3 K35 ["getText"]
      899 CALL                             R53 3 1
      900 SETTABLEKS                       R53 R52 K145 ["title"]
      902 DUPTABLE                         R53 K194 [{"text", "onActivated"}]
      903 LOADK                            R56 K192 ["FeedbackAlert"]
      904 LOADK                            R57 K195 ["ViewDetails"]
      905 NAMECALL                         R54 R3 K35 ["getText"]
      907 CALL                             R54 3 1
      908 SETTABLEKS                       R54 R53 K152 ["text"]
      910 NEWCLOSURE                       R54 P5
      911 CAPTURE                          UPVAL U1
      912 CAPTURE                          VAL R0
      913 SETTABLEKS                       R54 R53 K108 ["onActivated"]
      915 SETTABLEKS                       R53 R52 K189 ["link"]
      917 NEWCLOSURE                       R53 P6
      918 CAPTURE                          VAL R0
      919 SETTABLEKS                       R53 R52 K147 ["onClose"]
      921 CALL                             R50 2 -1
      922 SETLIST                          R49 R50 -1 [1]
      924 CALL                             R46 3 1
      925 SETTABLEKS                       R46 R45 K73 ["EditorBlockingBanner"]
      927 GETUPVAL                         R46 1
      928 GETTABLEKS                       R46 R46 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      930 JUMPIFNOT                        R46 ; [+84]
      931 MOVE                             R46 R19
      932 JUMPIFNOT                        R46 ; [+82]
      933 MOVE                             R46 R8
      934 JUMPIFNOT                        R46 ; [+80]
      935 GETUPVAL                         R46 11
      936 GETTABLEKS                       R46 R46 K59 ["createElement"]
      938 GETUPVAL                         R47 13
      939 DUPTABLE                         R48 K188 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y margin-top-small padding-x-large"}]
      940 NAMECALL                         R49 R30 K53 ["getNextOrder"]
      942 CALL                             R49 1 1
      943 SETTABLEKS                       R49 R48 K94 ["LayoutOrder"]
      945 NEWTABLE                         R49 0 1
      947 GETUPVAL                         R50 11
      948 GETTABLEKS                       R50 R50 K59 ["createElement"]
      950 GETUPVAL                         R51 29
      951 DUPTABLE                         R52 K198 [{"severity", "title", "subtitle", "link", "onClose"}]
      952 GETUPVAL                         R53 20
      953 GETTABLEKS                       R53 R53 K191 ["Warning"]
      955 SETTABLEKS                       R53 R52 K144 ["severity"]
      957 NAMECALL                         R54 R0 K199 ["isGroupGame"]
      959 CALL                             R54 1 1
      960 JUMPIFNOT                        R54 ; [+6]
      961 LOADK                            R55 K192 ["FeedbackAlert"]
      962 LOADK                            R56 K200 ["VerifyYourAge"]
      963 NAMECALL                         R53 R3 K35 ["getText"]
      965 CALL                             R53 3 1
      966 JUMP                             ; [+5]
      967 LOADK                            R55 K192 ["FeedbackAlert"]
      968 LOADK                            R56 K201 ["OwnerNotAgeVerifiedTitle"]
      969 NAMECALL                         R53 R3 K35 ["getText"]
      971 CALL                             R53 3 1
      972 SETTABLEKS                       R53 R52 K145 ["title"]
      974 NAMECALL                         R54 R0 K199 ["isGroupGame"]
      976 CALL                             R54 1 1
      977 JUMPIFNOT                        R54 ; [+6]
      978 LOADK                            R55 K192 ["FeedbackAlert"]
      979 LOADK                            R56 K202 ["OwnerNotAgeVerifiedSubtitle"]
      980 NAMECALL                         R53 R3 K35 ["getText"]
      982 CALL                             R53 3 1
      983 JUMP                             ; [+1]
      984 LOADNIL                          R53
      985 SETTABLEKS                       R53 R52 K197 ["subtitle"]
      987 DUPTABLE                         R53 K194 [{"text", "onActivated"}]
      988 LOADK                            R56 K54 ["UpsellBanner"]
      989 LOADK                            R57 K140 ["CTA"]
      990 NAMECALL                         R54 R3 K35 ["getText"]
      992 CALL                             R54 3 1
      993 SETTABLEKS                       R54 R53 K152 ["text"]
      995 DUPCLOSURE                       R54 K203 [PROTO_41]
      996 CAPTURE                          UPVAL U1
      997 CAPTURE                          UPVAL U8
      998 CAPTURE                          UPVAL U22
      999 CAPTURE                          UPVAL U23
     1000 CAPTURE                          UPVAL U24
     1001 CAPTURE                          UPVAL U25
     1002 CAPTURE                          UPVAL U26
     1003 SETTABLEKS                       R54 R53 K108 ["onActivated"]
     1005 SETTABLEKS                       R53 R52 K189 ["link"]
     1007 NEWCLOSURE                       R53 P8
     1008 CAPTURE                          VAL R0
     1009 SETTABLEKS                       R53 R52 K147 ["onClose"]
     1011 CALL                             R50 2 -1
     1012 SETLIST                          R49 R50 -1 [1]
     1014 CALL                             R46 3 1
     1015 SETTABLEKS                       R46 R45 K74 ["OwnerNotAgeVerifiedBanner"]
     1017 GETUPVAL                         R46 1
     1018 GETTABLEKS                       R46 R46 K15 ["fflagManageCollaboratorsOwnerCountryBlocked"]
     1020 JUMPIFNOT                        R46 ; [+41]
     1021 MOVE                             R46 R19
     1022 JUMPIFNOT                        R46 ; [+39]
     1023 MOVE                             R46 R11
     1024 JUMPIFNOT                        R46 ; [+37]
     1025 GETUPVAL                         R46 11
     1026 GETTABLEKS                       R46 R46 K59 ["createElement"]
     1028 GETUPVAL                         R47 13
     1029 DUPTABLE                         R48 K188 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y margin-top-small padding-x-large"}]
     1030 NAMECALL                         R49 R30 K53 ["getNextOrder"]
     1032 CALL                             R49 1 1
     1033 SETTABLEKS                       R49 R48 K94 ["LayoutOrder"]
     1035 NEWTABLE                         R49 0 1
     1037 GETUPVAL                         R50 11
     1038 GETTABLEKS                       R50 R50 K59 ["createElement"]
     1040 GETUPVAL                         R51 29
     1041 DUPTABLE                         R52 K204 [{"severity", "title", "onClose"}]
     1042 GETUPVAL                         R53 20
     1043 GETTABLEKS                       R53 R53 K191 ["Warning"]
     1045 SETTABLEKS                       R53 R52 K144 ["severity"]
     1047 LOADK                            R55 K192 ["FeedbackAlert"]
     1048 LOADK                            R56 K205 ["OwnerCountryBlockedTitle"]
     1049 NAMECALL                         R53 R3 K35 ["getText"]
     1051 CALL                             R53 3 1
     1052 SETTABLEKS                       R53 R52 K145 ["title"]
     1054 NEWCLOSURE                       R53 P9
     1055 CAPTURE                          VAL R0
     1056 SETTABLEKS                       R53 R52 K147 ["onClose"]
     1058 CALL                             R50 2 -1
     1059 SETLIST                          R49 R50 -1 [1]
     1061 CALL                             R46 3 1
     1062 SETTABLEKS                       R46 R45 K75 ["OwnerCountryBlockedBanner"]
     1064 GETUPVAL                         R46 8
     1065 JUMPIFNOT                        R46 ; [+56]
     1066 NAMECALL                         R47 R0 K206 ["shouldShowAudienceTabs"]
     1068 CALL                             R47 1 1
     1069 NOT                              R46 R47
     1070 JUMPIFNOT                        R46 ; [+51]
     1071 GETUPVAL                         R47 5
     1072 CALL                             R47 0 1
     1073 JUMPIF                           R47 ; [+3]
     1074 GETUPVAL                         R47 0
     1075 NOT                              R46 R47
     1076 JUMPIFNOT                        R46 ; [+45]
     1077 NOT                              R46 R32
     1078 JUMPIFNOT                        R46 ; [+43]
     1079 GETUPVAL                         R46 9
     1080 GETTABLEKS                       R46 R46 K59 ["createElement"]
     1082 GETUPVAL                         R47 13
     1083 DUPTABLE                         R48 K208 [{["LayoutOrder"], ["Size"], ["tag"] = "auto-xy padding-top-medium"}]
     1084 NAMECALL                         R49 R30 K53 ["getNextOrder"]
     1086 CALL                             R49 1 1
     1087 SETTABLEKS                       R49 R48 K94 ["LayoutOrder"]
     1089 GETIMPORT                        R49 K65 [UDim2.new]
     1091 LOADN                            R50 0
     1092 LOADN                            R51 770
     1093 LOADN                            R52 0
     1094 LOADN                            R53 10
     1095 CALL                             R49 4 1
     1096 SETTABLEKS                       R49 R48 K61 ["Size"]
     1098 DUPTABLE                         R49 K210 [{"CollaborationTitle"}]
     1099 GETUPVAL                         R50 30
     1100 JUMPIFNOT                        R50 ; [+18]
     1101 GETUPVAL                         R50 11
     1102 GETTABLEKS                       R50 R50 K59 ["createElement"]
     1104 GETUPVAL                         R51 17
     1105 DUPTABLE                         R52 K212 [{["LayoutOrder"], ["tag"] = "auto-xy text-label-small text-align-x-left", ["Text"]}]
     1106 NAMECALL                         R53 R30 K53 ["getNextOrder"]
     1108 CALL                             R53 1 1
     1109 SETTABLEKS                       R53 R52 K94 ["LayoutOrder"]
     1111 LOADK                            R55 K213 ["Subtitle"]
     1112 LOADK                            R56 K214 ["SearchCollaborators"]
     1113 NAMECALL                         R53 R3 K35 ["getText"]
     1115 CALL                             R53 3 1
     1116 SETTABLEKS                       R53 R52 K134 ["Text"]
     1118 CALL                             R50 2 1
     1119 SETTABLEKS                       R50 R49 K209 ["CollaborationTitle"]
     1121 CALL                             R46 3 1
     1122 SETTABLEKS                       R46 R45 K76 ["CollaborationSubtitleTitleView"]
     1124 GETUPVAL                         R46 8
     1125 JUMPIFNOT                        R46 ; [+211]
     1126 MOVE                             R46 R23
     1127 JUMPIFNOT                        R46 ; [+209]
     1128 GETUPVAL                         R46 9
     1129 GETTABLEKS                       R46 R46 K59 ["createElement"]
     1131 GETUPVAL                         R47 31
     1132 DUPTABLE                         R48 K218 [{["scroll"], ["layout"], ["tag"] = "col align-y-top fill gap-small size-full", ["LayoutOrder"]}]
     1133 DUPTABLE                         R49 K223 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
     1134 GETUPVAL                         R50 32
     1135 GETTABLEKS                       R50 R50 K224 ["Always"]
     1137 SETTABLEKS                       R50 R49 K219 ["scrollBarVisibility"]
     1139 GETIMPORT                        R50 K226 [Enum.ScrollingDirection.Y]
     1141 SETTABLEKS                       R50 R49 K220 ["ScrollingDirection"]
     1143 GETIMPORT                        R50 K228 [Enum.AutomaticSize.Y]
     1145 SETTABLEKS                       R50 R49 K221 ["AutomaticCanvasSize"]
     1147 GETIMPORT                        R50 K65 [UDim2.new]
     1149 CALL                             R50 0 1
     1150 SETTABLEKS                       R50 R49 K222 ["CanvasSize"]
     1152 SETTABLEKS                       R49 R48 K215 ["scroll"]
     1154 DUPTABLE                         R49 K230 [{"HorizontalAlignment", "FillDirection", "SortOrder", "HorizontalFlex"}]
     1155 GETIMPORT                        R50 K232 [Enum.HorizontalAlignment.Left]
     1157 SETTABLEKS                       R50 R49 K88 ["HorizontalAlignment"]
     1159 GETIMPORT                        R50 K93 [Enum.FillDirection.Vertical]
     1161 SETTABLEKS                       R50 R49 K86 ["FillDirection"]
     1163 GETIMPORT                        R50 K95 [Enum.SortOrder.LayoutOrder]
     1165 SETTABLEKS                       R50 R49 K87 ["SortOrder"]
     1167 GETIMPORT                        R50 K235 [Enum.UIFlexAlignment.Fill]
     1169 SETTABLEKS                       R50 R49 K229 ["HorizontalFlex"]
     1171 SETTABLEKS                       R49 R48 K216 ["layout"]
     1173 NAMECALL                         R49 R30 K53 ["getNextOrder"]
     1175 CALL                             R49 1 1
     1176 SETTABLEKS                       R49 R48 K94 ["LayoutOrder"]
     1178 DUPTABLE                         R49 K240 [{"AudienceTabs", "SearchBarWidget", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
     1179 NAMECALL                         R50 R0 K206 ["shouldShowAudienceTabs"]
     1181 CALL                             R50 1 1
     1182 JUMPIFNOT                        R50 ; [+27]
     1183 GETUPVAL                         R50 11
     1184 GETTABLEKS                       R50 R50 K59 ["createElement"]
     1186 GETUPVAL                         R51 33
     1187 DUPTABLE                         R52 K244 [{"LayoutOrder", "ActiveTabId", "Tabs", "OnActivated"}]
     1188 NAMECALL                         R53 R31 K53 ["getNextOrder"]
     1190 CALL                             R53 1 1
     1191 SETTABLEKS                       R53 R52 K94 ["LayoutOrder"]
     1193 GETTABLEKS                       R53 R0 K7 ["state"]
     1195 GETTABLEKS                       R53 R53 K245 ["ActiveAudienceTab"]
     1197 SETTABLEKS                       R53 R52 K241 ["ActiveTabId"]
     1199 MOVE                             R55 R3
     1200 NAMECALL                         R53 R0 K246 ["getAudienceTabs"]
     1202 CALL                             R53 2 1
     1203 SETTABLEKS                       R53 R52 K242 ["Tabs"]
     1205 GETTABLEKS                       R53 R0 K247 ["onAudienceTabActivated"]
     1207 SETTABLEKS                       R53 R52 K243 ["OnActivated"]
     1209 CALL                             R50 2 1
     1210 SETTABLEKS                       R50 R49 K236 ["AudienceTabs"]
     1212 MOVE                             R50 R34
     1213 JUMPIFNOT                        R50 ; [+52]
     1214 GETUPVAL                         R50 9
     1215 GETTABLEKS                       R50 R50 K59 ["createElement"]
     1217 GETUPVAL                         R51 34
     1218 DUPTABLE                         R52 K254 [{["LayoutOrder"], ["Writable"] = True, ["IsGroupGame"], ["SearchDisabled"], ["ActiveTab"], ["HeaderText"], ["DefaultText"]}]
     1219 MOVE                             R53 R35
     1220 JUMPIF                           R53 ; [+3]
     1221 NAMECALL                         R53 R31 K53 ["getNextOrder"]
     1223 CALL                             R53 1 1
     1224 SETTABLEKS                       R53 R52 K94 ["LayoutOrder"]
     1226 NAMECALL                         R53 R0 K199 ["isGroupGame"]
     1228 CALL                             R53 1 1
     1229 SETTABLEKS                       R53 R52 K249 ["IsGroupGame"]
     1231 SETTABLEKS                       R22 R52 K250 ["SearchDisabled"]
     1233 NAMECALL                         R54 R0 K206 ["shouldShowAudienceTabs"]
     1235 CALL                             R54 1 1
     1236 JUMPIFNOT                        R54 ; [+5]
     1237 GETTABLEKS                       R53 R0 K7 ["state"]
     1239 GETTABLEKS                       R53 R53 K245 ["ActiveAudienceTab"]
     1241 JUMP                             ; [+1]
     1242 LOADNIL                          R53
     1243 SETTABLEKS                       R53 R52 K251 ["ActiveTab"]
     1245 JUMPIFNOT                        R32 ; [+6]
     1246 LOADK                            R55 K213 ["Subtitle"]
     1247 LOADK                            R56 K255 ["Search"]
     1248 NAMECALL                         R53 R3 K35 ["getText"]
     1250 CALL                             R53 3 1
     1251 JUMP                             ; [+1]
     1252 LOADNIL                          R53
     1253 SETTABLEKS                       R53 R52 K252 ["HeaderText"]
     1255 JUMPIFNOT                        R32 ; [+6]
     1256 LOADK                            R55 K256 ["SearchBar"]
     1257 LOADK                            R56 K257 ["SearchUsers"]
     1258 NAMECALL                         R53 R3 K35 ["getText"]
     1260 CALL                             R53 3 1
     1261 JUMP                             ; [+1]
     1262 LOADNIL                          R53
     1263 SETTABLEKS                       R53 R52 K253 ["DefaultText"]
     1265 CALL                             R50 2 1
     1266 SETTABLEKS                       R50 R49 K237 ["SearchBarWidget"]
     1268 NAMECALL                         R51 R0 K206 ["shouldShowAudienceTabs"]
     1270 CALL                             R51 1 1
     1271 NOT                              R50 R51
     1272 JUMPIFNOT                        R50 ; [+13]
     1273 GETUPVAL                         R50 9
     1274 GETTABLEKS                       R50 R50 K59 ["createElement"]
     1276 GETUPVAL                         R51 35
     1277 DUPTABLE                         R52 K258 [{"LayoutOrder"}]
     1278 MOVE                             R53 R36
     1279 JUMPIF                           R53 ; [+3]
     1280 NAMECALL                         R53 R31 K53 ["getNextOrder"]
     1282 CALL                             R53 1 1
     1283 SETTABLEKS                       R53 R52 K94 ["LayoutOrder"]
     1285 CALL                             R50 2 1
     1286 SETTABLEKS                       R50 R49 K238 ["CollaboratorFilterWidget"]
     1288 NOT                              R50 R19
     1289 JUMPIFNOT                        R50 ; [+6]
     1290 GETUPVAL                         R50 9
     1291 GETTABLEKS                       R50 R50 K59 ["createElement"]
     1293 LOADK                            R51 K60 ["Frame"]
     1294 DUPTABLE                         R52 K261 [{["BackgroundTransparency"] = 1}]
     1295 CALL                             R50 2 1
     1296 SETTABLEKS                       R50 R49 K60 ["Frame"]
     1298 GETUPVAL                         R50 9
     1299 GETTABLEKS                       R50 R50 K59 ["createElement"]
     1301 GETUPVAL                         R51 36
     1302 DUPTABLE                         R52 K263 [{"LayoutOrder", "Writable", "IsGroupGame", "DisableEditPermission", "ActiveTab"}]
     1303 NAMECALL                         R53 R31 K53 ["getNextOrder"]
     1305 CALL                             R53 1 1
     1306 SETTABLEKS                       R53 R52 K94 ["LayoutOrder"]
     1308 SETTABLEKS                       R19 R52 K248 ["Writable"]
     1310 GETUPVAL                         R54 37
     1311 JUMPIFNOT                        R54 ; [+4]
     1312 NAMECALL                         R53 R0 K199 ["isGroupGame"]
     1314 CALL                             R53 1 1
     1315 JUMP                             ; [+1]
     1316 LOADNIL                          R53
     1317 SETTABLEKS                       R53 R52 K249 ["IsGroupGame"]
     1319 SETTABLEKS                       R22 R52 K262 ["DisableEditPermission"]
     1321 NAMECALL                         R54 R0 K206 ["shouldShowAudienceTabs"]
     1323 CALL                             R54 1 1
     1324 JUMPIFNOT                        R54 ; [+5]
     1325 GETTABLEKS                       R53 R0 K7 ["state"]
     1327 GETTABLEKS                       R53 R53 K245 ["ActiveAudienceTab"]
     1329 JUMP                             ; [+1]
     1330 LOADNIL                          R53
     1331 SETTABLEKS                       R53 R52 K251 ["ActiveTab"]
     1333 CALL                             R50 2 1
     1334 SETTABLEKS                       R50 R49 K239 ["CollaboratorsWidget"]
     1336 CALL                             R46 3 1
     1337 SETTABLEKS                       R46 R45 K77 ["ScrollingFrameNew"]
     1339 GETUPVAL                         R47 8
     1340 NOT                              R46 R47
     1341 JUMPIFNOT                        R46 ; [+204]
     1342 MOVE                             R46 R23
     1343 JUMPIFNOT                        R46 ; [+202]
     1344 GETUPVAL                         R46 9
     1345 GETTABLEKS                       R46 R46 K59 ["createElement"]
     1347 GETUPVAL                         R47 38
     1348 DUPTABLE                         R48 K265 [{"LayoutOrder", "Size", "Layout", "AutomaticCanvasSize", "Spacing"}]
     1349 NAMECALL                         R49 R30 K53 ["getNextOrder"]
     1351 CALL                             R49 1 1
     1352 SETTABLEKS                       R49 R48 K94 ["LayoutOrder"]
     1354 GETIMPORT                        R49 K65 [UDim2.new]
     1356 LOADN                            R50 1
     1357 LOADN                            R51 0
     1358 LOADN                            R52 1
     1359 MINUS                            R53 R29
     1360 CALL                             R49 4 1
     1361 SETTABLEKS                       R49 R48 K61 ["Size"]
     1363 GETIMPORT                        R49 K93 [Enum.FillDirection.Vertical]
     1365 SETTABLEKS                       R49 R48 K67 ["Layout"]
     1367 GETIMPORT                        R49 K228 [Enum.AutomaticSize.Y]
     1369 SETTABLEKS                       R49 R48 K221 ["AutomaticCanvasSize"]
     1371 GETIMPORT                        R49 K99 [UDim.new]
     1373 LOADN                            R50 0
     1374 JUMPIFNOT                        R19 ; [+5]
     1375 GETTABLEKS                       R51 R2 K266 ["scrollingFrame"]
     1377 GETTABLEKS                       R51 R51 K267 ["yPadding"]
     1379 JUMP                             ; [+4]
     1380 GETTABLEKS                       R51 R2 K266 ["scrollingFrame"]
     1382 GETTABLEKS                       R51 R51 K268 ["yPaddingNonOwner"]
     1384 CALL                             R49 2 1
     1385 SETTABLEKS                       R49 R48 K264 ["Spacing"]
     1387 DUPTABLE                         R49 K240 [{"AudienceTabs", "SearchBarWidget", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
     1388 NAMECALL                         R50 R0 K206 ["shouldShowAudienceTabs"]
     1390 CALL                             R50 1 1
     1391 JUMPIFNOT                        R50 ; [+27]
     1392 GETUPVAL                         R50 11
     1393 GETTABLEKS                       R50 R50 K59 ["createElement"]
     1395 GETUPVAL                         R51 33
     1396 DUPTABLE                         R52 K244 [{"LayoutOrder", "ActiveTabId", "Tabs", "OnActivated"}]
     1397 NAMECALL                         R53 R31 K53 ["getNextOrder"]
     1399 CALL                             R53 1 1
     1400 SETTABLEKS                       R53 R52 K94 ["LayoutOrder"]
     1402 GETTABLEKS                       R53 R0 K7 ["state"]
     1404 GETTABLEKS                       R53 R53 K245 ["ActiveAudienceTab"]
     1406 SETTABLEKS                       R53 R52 K241 ["ActiveTabId"]
     1408 MOVE                             R55 R3
     1409 NAMECALL                         R53 R0 K246 ["getAudienceTabs"]
     1411 CALL                             R53 2 1
     1412 SETTABLEKS                       R53 R52 K242 ["Tabs"]
     1414 GETTABLEKS                       R53 R0 K247 ["onAudienceTabActivated"]
     1416 SETTABLEKS                       R53 R52 K243 ["OnActivated"]
     1418 CALL                             R50 2 1
     1419 SETTABLEKS                       R50 R49 K236 ["AudienceTabs"]
     1421 MOVE                             R50 R34
     1422 JUMPIFNOT                        R50 ; [+52]
     1423 GETUPVAL                         R50 9
     1424 GETTABLEKS                       R50 R50 K59 ["createElement"]
     1426 GETUPVAL                         R51 34
     1427 DUPTABLE                         R52 K254 [{["LayoutOrder"], ["Writable"] = True, ["IsGroupGame"], ["SearchDisabled"], ["ActiveTab"], ["HeaderText"], ["DefaultText"]}]
     1428 MOVE                             R53 R35
     1429 JUMPIF                           R53 ; [+3]
     1430 NAMECALL                         R53 R31 K53 ["getNextOrder"]
     1432 CALL                             R53 1 1
     1433 SETTABLEKS                       R53 R52 K94 ["LayoutOrder"]
     1435 NAMECALL                         R53 R0 K199 ["isGroupGame"]
     1437 CALL                             R53 1 1
     1438 SETTABLEKS                       R53 R52 K249 ["IsGroupGame"]
     1440 SETTABLEKS                       R22 R52 K250 ["SearchDisabled"]
     1442 NAMECALL                         R54 R0 K206 ["shouldShowAudienceTabs"]
     1444 CALL                             R54 1 1
     1445 JUMPIFNOT                        R54 ; [+5]
     1446 GETTABLEKS                       R53 R0 K7 ["state"]
     1448 GETTABLEKS                       R53 R53 K245 ["ActiveAudienceTab"]
     1450 JUMP                             ; [+1]
     1451 LOADNIL                          R53
     1452 SETTABLEKS                       R53 R52 K251 ["ActiveTab"]
     1454 JUMPIFNOT                        R32 ; [+6]
     1455 LOADK                            R55 K213 ["Subtitle"]
     1456 LOADK                            R56 K255 ["Search"]
     1457 NAMECALL                         R53 R3 K35 ["getText"]
     1459 CALL                             R53 3 1
     1460 JUMP                             ; [+1]
     1461 LOADNIL                          R53
     1462 SETTABLEKS                       R53 R52 K252 ["HeaderText"]
     1464 JUMPIFNOT                        R32 ; [+6]
     1465 LOADK                            R55 K256 ["SearchBar"]
     1466 LOADK                            R56 K257 ["SearchUsers"]
     1467 NAMECALL                         R53 R3 K35 ["getText"]
     1469 CALL                             R53 3 1
     1470 JUMP                             ; [+1]
     1471 LOADNIL                          R53
     1472 SETTABLEKS                       R53 R52 K253 ["DefaultText"]
     1474 CALL                             R50 2 1
     1475 SETTABLEKS                       R50 R49 K237 ["SearchBarWidget"]
     1477 NAMECALL                         R51 R0 K206 ["shouldShowAudienceTabs"]
     1479 CALL                             R51 1 1
     1480 NOT                              R50 R51
     1481 JUMPIFNOT                        R50 ; [+13]
     1482 GETUPVAL                         R50 9
     1483 GETTABLEKS                       R50 R50 K59 ["createElement"]
     1485 GETUPVAL                         R51 35
     1486 DUPTABLE                         R52 K258 [{"LayoutOrder"}]
     1487 MOVE                             R53 R36
     1488 JUMPIF                           R53 ; [+3]
     1489 NAMECALL                         R53 R31 K53 ["getNextOrder"]
     1491 CALL                             R53 1 1
     1492 SETTABLEKS                       R53 R52 K94 ["LayoutOrder"]
     1494 CALL                             R50 2 1
     1495 SETTABLEKS                       R50 R49 K238 ["CollaboratorFilterWidget"]
     1497 NOT                              R50 R19
     1498 JUMPIFNOT                        R50 ; [+6]
     1499 GETUPVAL                         R50 9
     1500 GETTABLEKS                       R50 R50 K59 ["createElement"]
     1502 LOADK                            R51 K60 ["Frame"]
     1503 DUPTABLE                         R52 K261 [{["BackgroundTransparency"] = 1}]
     1504 CALL                             R50 2 1
     1505 SETTABLEKS                       R50 R49 K60 ["Frame"]
     1507 GETUPVAL                         R50 9
     1508 GETTABLEKS                       R50 R50 K59 ["createElement"]
     1510 GETUPVAL                         R51 36
     1511 DUPTABLE                         R52 K263 [{"LayoutOrder", "Writable", "IsGroupGame", "DisableEditPermission", "ActiveTab"}]
     1512 NAMECALL                         R53 R31 K53 ["getNextOrder"]
     1514 CALL                             R53 1 1
     1515 SETTABLEKS                       R53 R52 K94 ["LayoutOrder"]
     1517 SETTABLEKS                       R19 R52 K248 ["Writable"]
     1519 GETUPVAL                         R54 37
     1520 JUMPIFNOT                        R54 ; [+4]
     1521 NAMECALL                         R53 R0 K199 ["isGroupGame"]
     1523 CALL                             R53 1 1
     1524 JUMP                             ; [+1]
     1525 LOADNIL                          R53
     1526 SETTABLEKS                       R53 R52 K249 ["IsGroupGame"]
     1528 SETTABLEKS                       R22 R52 K262 ["DisableEditPermission"]
     1530 NAMECALL                         R54 R0 K206 ["shouldShowAudienceTabs"]
     1532 CALL                             R54 1 1
     1533 JUMPIFNOT                        R54 ; [+5]
     1534 GETTABLEKS                       R53 R0 K7 ["state"]
     1536 GETTABLEKS                       R53 R53 K245 ["ActiveAudienceTab"]
     1538 JUMP                             ; [+1]
     1539 LOADNIL                          R53
     1540 SETTABLEKS                       R53 R52 K251 ["ActiveTab"]
     1542 CALL                             R50 2 1
     1543 SETTABLEKS                       R50 R49 K239 ["CollaboratorsWidget"]
     1545 CALL                             R46 3 1
     1546 SETTABLEKS                       R46 R45 K78 ["ScrollingFrame"]
     1548 JUMPIFNOT                        R25 ; [+75]
     1549 GETUPVAL                         R46 9
     1550 GETTABLEKS                       R46 R46 K59 ["createElement"]
     1552 LOADK                            R47 K60 ["Frame"]
     1553 DUPTABLE                         R48 K270 [{["BackgroundTransparency"] = 1, ["BackgroundColor3"], ["LayoutOrder"], ["Size"], ["BorderSizePixel"] = 0}]
     1554 GETTABLEKS                       R49 R2 K66 ["backgroundColor"]
     1556 SETTABLEKS                       R49 R48 K62 ["BackgroundColor3"]
     1558 NAMECALL                         R49 R30 K53 ["getNextOrder"]
     1560 CALL                             R49 1 1
     1561 SETTABLEKS                       R49 R48 K94 ["LayoutOrder"]
     1563 GETIMPORT                        R49 K65 [UDim2.new]
     1565 LOADN                            R50 1
     1566 LOADN                            R51 0
     1567 LOADN                            R52 0
     1568 GETTABLEKS                       R53 R2 K46 ["saveMessage"]
     1570 GETTABLEKS                       R53 R53 K47 ["boxHeight"]
     1572 CALL                             R49 4 1
     1573 SETTABLEKS                       R49 R48 K61 ["Size"]
     1575 DUPTABLE                         R49 K271 [{"Text"}]
     1576 GETUPVAL                         R50 9
     1577 GETTABLEKS                       R50 R50 K59 ["createElement"]
     1579 LOADK                            R51 K272 ["TextLabel"]
     1580 GETUPVAL                         R52 39
     1581 GETTABLEKS                       R52 R52 K273 ["Dictionary"]
     1583 GETTABLEKS                       R52 R52 K274 ["join"]
     1585 GETTABLEKS                       R53 R2 K46 ["saveMessage"]
     1587 GETTABLEKS                       R53 R53 K275 ["textStyle"]
     1589 DUPTABLE                         R54 K280 [{["AnchorPoint"], ["Position"], ["Text"], ["TextXAlignment"], ["BorderSizePixel"] = 0, ["TextWrapped"] = True, ["Size"], ["BackgroundTransparency"] = 1}]
     1590 GETIMPORT                        R55 K282 [Vector2.new]
     1592 LOADN                            R56 0
     1593 LOADK                            R57 K283 [0.5]
     1594 CALL                             R55 2 1
     1595 SETTABLEKS                       R55 R54 K276 ["AnchorPoint"]
     1597 GETTABLEKS                       R55 R2 K46 ["saveMessage"]
     1599 GETTABLEKS                       R55 R55 K284 ["InnerTextPosition"]
     1601 SETTABLEKS                       R55 R54 K277 ["Position"]
     1603 SETTABLEKS                       R27 R54 K134 ["Text"]
     1605 GETIMPORT                        R55 K285 [Enum.TextXAlignment.Left]
     1607 SETTABLEKS                       R55 R54 K278 ["TextXAlignment"]
     1609 GETIMPORT                        R55 K65 [UDim2.new]
     1611 LOADK                            R56 K286 [0.55]
     1612 LOADN                            R57 0
     1613 LOADN                            R58 1
     1614 LOADN                            R59 0
     1615 CALL                             R55 4 1
     1616 SETTABLEKS                       R55 R54 K61 ["Size"]
     1618 CALL                             R52 2 -1
     1619 CALL                             R50 -1 1
     1620 SETTABLEKS                       R50 R49 K134 ["Text"]
     1622 CALL                             R46 3 1
     1623 JUMP                             ; [+1]
     1624 LOADNIL                          R46
     1625 SETTABLEKS                       R46 R45 K79 ["TextFrame"]
     1627 GETUPVAL                         R46 0
     1628 JUMPIFNOT                        R46 ; [+15]
     1629 GETTABLEKS                       R46 R0 K7 ["state"]
     1631 GETTABLEKS                       R46 R46 K287 ["upsellDialogEnabled"]
     1633 JUMPIFNOT                        R46 ; [+10]
     1634 GETUPVAL                         R46 11
     1635 GETTABLEKS                       R46 R46 K59 ["createElement"]
     1637 GETUPVAL                         R47 40
     1638 DUPTABLE                         R48 K288 [{"onClose"}]
     1639 NEWCLOSURE                       R49 P10
     1640 CAPTURE                          VAL R0
     1641 SETTABLEKS                       R49 R48 K147 ["onClose"]
     1643 CALL                             R46 2 1
     1644 SETTABLEKS                       R46 R45 K80 ["upsellDialog"]
     1646 MOVE                             R46 R23
     1647 JUMPIFNOT                        R46 ; [+74]
     1648 GETUPVAL                         R46 9
     1649 GETTABLEKS                       R46 R46 K59 ["createElement"]
     1651 GETUPVAL                         R47 10
     1652 DUPTABLE                         R48 K102 [{"LayoutOrder", "Size"}]
     1653 NAMECALL                         R49 R30 K53 ["getNextOrder"]
     1655 CALL                             R49 1 1
     1656 SETTABLEKS                       R49 R48 K94 ["LayoutOrder"]
     1658 GETIMPORT                        R49 K65 [UDim2.new]
     1660 LOADN                            R50 1
     1661 LOADN                            R51 0
     1662 LOADN                            R52 0
     1663 GETTABLEKS                       R53 R2 K45 ["footer"]
     1665 GETTABLEKS                       R53 R53 K44 ["height"]
     1667 CALL                             R49 4 1
     1668 SETTABLEKS                       R49 R48 K61 ["Size"]
     1670 DUPTABLE                         R49 K290 [{"Footer"}]
     1671 GETUPVAL                         R50 9
     1672 GETTABLEKS                       R50 R50 K59 ["createElement"]
     1674 GETUPVAL                         R51 41
     1675 DUPTABLE                         R52 K296 [{"IsTeamCreateEnabled", "OnSavePressed", "OnCancelPressed", "OnViewAllPermissionsPressed", "FetchGameLink", "ActiveTab"}]
     1676 SETTABLEKS                       R24 R52 K291 ["IsTeamCreateEnabled"]
     1678 NEWCLOSURE                       R53 P11
     1679 CAPTURE                          VAL R0
     1680 SETTABLEKS                       R53 R52 K292 ["OnSavePressed"]
     1682 NEWCLOSURE                       R53 P12
     1683 CAPTURE                          VAL R0
     1684 SETTABLEKS                       R53 R52 K293 ["OnCancelPressed"]
     1686 GETUPVAL                         R54 1
     1687 GETTABLEKS                       R54 R54 K297 ["fflagViewAllPermissionsInCreatorHub"]
     1689 JUMPIFNOT                        R54 ; [+7]
     1690 NAMECALL                         R54 R0 K199 ["isGroupGame"]
     1692 CALL                             R54 1 1
     1693 JUMPIFNOT                        R54 ; [+3]
     1694 NEWCLOSURE                       R53 P13
     1695 CAPTURE                          VAL R0
     1696 JUMP                             ; [+1]
     1697 LOADNIL                          R53
     1698 SETTABLEKS                       R53 R52 K294 ["OnViewAllPermissionsPressed"]
     1700 GETTABLEKS                       R53 R0 K0 ["props"]
     1702 GETTABLEKS                       R53 R53 K295 ["FetchGameLink"]
     1704 SETTABLEKS                       R53 R52 K295 ["FetchGameLink"]
     1706 NAMECALL                         R54 R0 K206 ["shouldShowAudienceTabs"]
     1708 CALL                             R54 1 1
     1709 JUMPIFNOT                        R54 ; [+5]
     1710 GETTABLEKS                       R53 R0 K7 ["state"]
     1712 GETTABLEKS                       R53 R53 K245 ["ActiveAudienceTab"]
     1714 JUMP                             ; [+1]
     1715 LOADNIL                          R53
     1716 SETTABLEKS                       R53 R52 K251 ["ActiveTab"]
     1718 CALL                             R50 2 1
     1719 SETTABLEKS                       R50 R49 K289 ["Footer"]
     1721 CALL                             R46 3 1
     1722 SETTABLEKS                       R46 R45 K81 ["FooterContent"]
     1724 NOT                              R46 R16
     1725 JUMPIFNOT                        R46 ; [+22]
     1726 NOT                              R46 R17
     1727 JUMPIFNOT                        R46 ; [+20]
     1728 GETUPVAL                         R46 9
     1729 GETTABLEKS                       R46 R46 K59 ["createElement"]
     1731 GETUPVAL                         R47 42
     1732 DUPTABLE                         R48 K298 [{"AnchorPoint", "Position"}]
     1733 GETIMPORT                        R49 K282 [Vector2.new]
     1735 LOADK                            R50 K283 [0.5]
     1736 LOADK                            R51 K283 [0.5]
     1737 CALL                             R49 2 1
     1738 SETTABLEKS                       R49 R48 K276 ["AnchorPoint"]
     1740 GETIMPORT                        R49 K300 [UDim2.fromScale]
     1742 LOADK                            R50 K283 [0.5]
     1743 LOADK                            R51 K283 [0.5]
     1744 CALL                             R49 2 1
     1745 SETTABLEKS                       R49 R48 K277 ["Position"]
     1747 CALL                             R46 2 1
     1748 SETTABLEKS                       R46 R45 K82 ["LoadingIndicator"]
     1750 MOVE                             R46 R17
     1751 JUMPIFNOT                        R46 ; [+46]
     1752 GETUPVAL                         R46 9
     1753 GETTABLEKS                       R46 R46 K59 ["createElement"]
     1755 LOADK                            R47 K272 ["TextLabel"]
     1756 DUPTABLE                         R48 K304 [{"Text", "AnchorPoint", "Position", "TextColor3", "TextSize", "Font"}]
     1757 SETTABLEKS                       R18 R48 K134 ["Text"]
     1759 GETIMPORT                        R49 K282 [Vector2.new]
     1761 LOADK                            R50 K283 [0.5]
     1762 LOADK                            R51 K283 [0.5]
     1763 CALL                             R49 2 1
     1764 SETTABLEKS                       R49 R48 K276 ["AnchorPoint"]
     1766 GETIMPORT                        R49 K300 [UDim2.fromScale]
     1768 LOADK                            R50 K283 [0.5]
     1769 LOADK                            R51 K305 [0.25]
     1770 CALL                             R49 2 1
     1771 SETTABLEKS                       R49 R48 K277 ["Position"]
     1773 GETTABLEKS                       R49 R2 K306 ["fontStyle"]
     1775 GETTABLEKS                       R49 R49 K307 ["Normal"]
     1777 GETTABLEKS                       R49 R49 K301 ["TextColor3"]
     1779 SETTABLEKS                       R49 R48 K301 ["TextColor3"]
     1781 GETTABLEKS                       R49 R2 K306 ["fontStyle"]
     1783 GETTABLEKS                       R49 R49 K307 ["Normal"]
     1785 GETTABLEKS                       R49 R49 K302 ["TextSize"]
     1787 SETTABLEKS                       R49 R48 K302 ["TextSize"]
     1789 GETTABLEKS                       R49 R2 K306 ["fontStyle"]
     1791 GETTABLEKS                       R49 R49 K307 ["Normal"]
     1793 GETTABLEKS                       R49 R49 K303 ["Font"]
     1795 SETTABLEKS                       R49 R48 K303 ["Font"]
     1797 CALL                             R46 2 1
     1798 SETTABLEKS                       R46 R45 K83 ["FailureText"]
     1800 CALL                             R42 3 -1
     1801 RETURN                           R42 -1

PROTO_49:
        0 DUPTABLE                         R2 K15 [{"LoadState", "SaveState", "OwnerId", "OwnerType", "GroupOwnerUserId", "HasCollaborators", "HasCurrentEditCollaborators", "HasOutsideAgeBucketEditCollaborators", "HasCurrentUserBlockingCollaborators", "OwnerIsNotAgeVerified", "OwnerIsCountryBlocked", "GroupRolePermissions", "Is17PlusGame", "SelectedPill", "CanManageEarlyTesters"}]
        1 GETTABLEKS                       R3 R0 K0 ["LoadState"]
        3 GETTABLEKS                       R3 R3 K16 ["CurrentLoadState"]
        5 JUMPIF                           R3 ; [+3]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K17 ["Unloaded"]
        9 SETTABLEKS                       R3 R2 K0 ["LoadState"]
       11 GETTABLEKS                       R3 R0 K1 ["SaveState"]
       13 GETTABLEKS                       R3 R3 K18 ["CurrentSaveState"]
       15 JUMPIF                           R3 ; [+3]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K19 ["Unsaved"]
       19 SETTABLEKS                       R3 R2 K1 ["SaveState"]
       21 GETTABLEKS                       R3 R0 K20 ["GameOwnerMetadata"]
       23 GETTABLEKS                       R3 R3 K21 ["creatorId"]
       25 SETTABLEKS                       R3 R2 K2 ["OwnerId"]
       27 GETTABLEKS                       R3 R0 K20 ["GameOwnerMetadata"]
       29 GETTABLEKS                       R3 R3 K22 ["creatorType"]
       31 SETTABLEKS                       R3 R2 K3 ["OwnerType"]
       33 GETTABLEKS                       R3 R0 K20 ["GameOwnerMetadata"]
       35 GETTABLEKS                       R3 R3 K23 ["groupOwnerId"]
       37 SETTABLEKS                       R3 R2 K4 ["GroupOwnerUserId"]
       39 GETUPVAL                         R3 2
       40 MOVE                             R4 R0
       41 CALL                             R3 1 1
       42 SETTABLEKS                       R3 R2 K5 ["HasCollaborators"]
       44 GETUPVAL                         R3 3
       45 MOVE                             R4 R0
       46 CALL                             R3 1 1
       47 SETTABLEKS                       R3 R2 K6 ["HasCurrentEditCollaborators"]
       49 GETUPVAL                         R4 4
       50 GETTABLEKS                       R4 R4 K24 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
       52 JUMPIFNOT                        R4 ; [+4]
       53 GETUPVAL                         R3 5
       54 MOVE                             R4 R0
       55 CALL                             R3 1 1
       56 JUMP                             ; [+1]
       57 LOADNIL                          R3
       58 SETTABLEKS                       R3 R2 K7 ["HasOutsideAgeBucketEditCollaborators"]
       60 GETUPVAL                         R4 4
       61 GETTABLEKS                       R4 R4 K25 ["fflagManageCollaboratorsEditorBlockingBanner"]
       63 JUMPIFNOT                        R4 ; [+4]
       64 GETUPVAL                         R3 6
       65 MOVE                             R4 R0
       66 CALL                             R3 1 1
       67 JUMP                             ; [+1]
       68 LOADNIL                          R3
       69 SETTABLEKS                       R3 R2 K8 ["HasCurrentUserBlockingCollaborators"]
       71 GETUPVAL                         R4 4
       72 GETTABLEKS                       R4 R4 K26 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
       74 JUMPIFNOT                        R4 ; [+4]
       75 GETUPVAL                         R3 7
       76 MOVE                             R4 R0
       77 CALL                             R3 1 1
       78 JUMP                             ; [+1]
       79 LOADNIL                          R3
       80 SETTABLEKS                       R3 R2 K9 ["OwnerIsNotAgeVerified"]
       82 GETUPVAL                         R4 4
       83 GETTABLEKS                       R4 R4 K27 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       85 JUMPIFNOT                        R4 ; [+4]
       86 GETUPVAL                         R3 8
       87 MOVE                             R4 R0
       88 CALL                             R3 1 1
       89 JUMP                             ; [+1]
       90 LOADNIL                          R3
       91 SETTABLEKS                       R3 R2 K10 ["OwnerIsCountryBlocked"]
       93 GETTABLEKS                       R3 R0 K11 ["GroupRolePermissions"]
       95 GETTABLEKS                       R3 R3 K28 ["PermissionsByRole"]
       97 SETTABLEKS                       R3 R2 K11 ["GroupRolePermissions"]
       99 GETUPVAL                         R4 9
      100 JUMPIFNOT                        R4 ; [+4]
      101 GETUPVAL                         R3 10
      102 MOVE                             R4 R0
      103 CALL                             R3 1 1
      104 JUMP                             ; [+1]
      105 LOADNIL                          R3
      106 SETTABLEKS                       R3 R2 K12 ["Is17PlusGame"]
      108 GETUPVAL                         R3 11
      109 MOVE                             R4 R0
      110 CALL                             R3 1 1
      111 SETTABLEKS                       R3 R2 K13 ["SelectedPill"]
      113 GETUPVAL                         R3 12
      114 MOVE                             R4 R0
      115 CALL                             R3 1 1
      116 SETTABLEKS                       R3 R2 K14 ["CanManageEarlyTesters"]
      118 RETURN                           R2 1

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["LoadPermissions"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_51:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_52:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_54:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_55:
        0 DUPTABLE                         R1 K5 [{"LoadPermissions", "SavePermissions", "SendAllSearchItemLogs", "LogEarlyTestersTabOpened", "PrefetchLikelyCollaborators"}]
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
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 SETTABLEKS                       R2 R1 K3 ["LogEarlyTestersTabOpened"]
       22 GETUPVAL                         R3 5
       23 JUMPIFNOT                        R3 ; [+4]
       24 NEWCLOSURE                       R2 P4
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U6
       27 JUMP                             ; [+1]
       28 LOADNIL                          R2
       29 SETTABLEKS                       R2 R1 K4 ["PrefetchLikelyCollaborators"]
       31 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["COLLAB2850_FixMcTooltips"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Collab9031_ManageCollaboratorsEarlyFoundationMigration1"]
       10 NAMECALL                         R1 R1 K3 ["GetFastFlag"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["StudioPublishService"]
       16 NAMECALL                         R2 R2 K6 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K7 ["StudioService"]
       22 NAMECALL                         R3 R3 K6 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K1 [game]
       27 LOADK                            R6 K8 ["BrowserService"]
       28 NAMECALL                         R4 R4 K6 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K1 [game]
       33 LOADK                            R7 K9 ["StartAuthorizationLink"]
       34 LOADK                            R8 K10 ["https://www.roblox.com/my/account?creatorCollaboration"]
       35 NAMECALL                         R5 R5 K11 ["DefineFastString"]
       37 CALL                             R5 3 1
       38 GETIMPORT                        R6 K13 [script]
       40 GETTABLEKS                       R6 R6 K14 ["Parent"]
       42 GETTABLEKS                       R6 R6 K14 ["Parent"]
       44 GETTABLEKS                       R6 R6 K14 ["Parent"]
       46 GETIMPORT                        R7 K16 [require]
       48 GETTABLEKS                       R8 R6 K17 ["Packages"]
       50 GETTABLEKS                       R8 R8 K18 ["Roact"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K16 [require]
       55 GETTABLEKS                       R9 R6 K17 ["Packages"]
       57 GETTABLEKS                       R9 R9 K19 ["RoactRodux"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K16 [require]
       62 GETTABLEKS                       R10 R6 K17 ["Packages"]
       64 GETTABLEKS                       R10 R10 K20 ["Cryo"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K16 [require]
       69 GETTABLEKS                       R11 R6 K21 ["Bin"]
       71 GETTABLEKS                       R11 R11 K22 ["defineLuaFlags"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K16 [require]
       76 GETTABLEKS                       R12 R6 K17 ["Packages"]
       78 GETTABLEKS                       R12 R12 K23 ["Framework"]
       80 CALL                             R11 1 1
       81 GETTABLEKS                       R12 R11 K24 ["ContextServices"]
       83 GETTABLEKS                       R13 R12 K25 ["withContext"]
       85 GETTABLEKS                       R14 R11 K26 ["Style"]
       87 GETTABLEKS                       R14 R14 K27 ["Stylizer"]
       89 GETTABLEKS                       R15 R12 K28 ["Localization"]
       91 GETTABLEKS                       R16 R11 K29 ["UI"]
       93 GETTABLEKS                       R17 R16 K30 ["ScrollingFrame"]
       95 GETTABLEKS                       R18 R16 K31 ["Container"]
       97 GETTABLEKS                       R19 R16 K32 ["LoadingIndicator"]
       99 GETTABLEKS                       R20 R16 K33 ["StyledDialog"]
      101 GETIMPORT                        R21 K16 [require]
      103 GETTABLEKS                       R22 R6 K17 ["Packages"]
      105 GETTABLEKS                       R22 R22 K34 ["Foundation"]
      107 CALL                             R21 1 1
      108 GETTABLEKS                       R22 R21 K35 ["Text"]
      110 GETTABLEKS                       R23 R21 K36 ["ScrollView"]
      112 GETTABLEKS                       R24 R21 K37 ["Enums"]
      114 GETTABLEKS                       R24 R24 K38 ["ScrollBarVisibility"]
      116 GETTABLEKS                       R25 R21 K37 ["Enums"]
      118 GETTABLEKS                       R26 R21 K39 ["Icon"]
      120 GETTABLEKS                       R27 R21 K40 ["IconButton"]
      122 GETTABLEKS                       R28 R21 K37 ["Enums"]
      124 GETTABLEKS                       R28 R28 K41 ["IconVariant"]
      126 GETTABLEKS                       R29 R21 K42 ["SystemBanner"]
      128 GETTABLEKS                       R30 R21 K43 ["FeedbackAlert"]
      130 GETTABLEKS                       R31 R21 K37 ["Enums"]
      132 GETTABLEKS                       R31 R31 K44 ["AlertVariant"]
      134 GETTABLEKS                       R32 R21 K37 ["Enums"]
      136 GETTABLEKS                       R32 R32 K45 ["AlertSeverity"]
      138 GETTABLEKS                       R33 R21 K37 ["Enums"]
      140 GETTABLEKS                       R33 R33 K46 ["ButtonVariant"]
      142 GETIMPORT                        R34 K16 [require]
      144 GETTABLEKS                       R35 R6 K47 ["Src"]
      146 GETTABLEKS                       R35 R35 K48 ["Util"]
      148 GETTABLEKS                       R35 R35 K49 ["ShowDialog"]
      150 CALL                             R34 1 1
      151 GETIMPORT                        R35 K16 [require]
      153 GETTABLEKS                       R36 R6 K47 ["Src"]
      155 GETTABLEKS                       R36 R36 K50 ["Components"]
      157 GETTABLEKS                       R36 R36 K51 ["CollaboratorsWidget"]
      159 CALL                             R35 1 1
      160 GETIMPORT                        R36 K16 [require]
      162 GETTABLEKS                       R37 R6 K47 ["Src"]
      164 GETTABLEKS                       R37 R37 K50 ["Components"]
      166 GETTABLEKS                       R37 R37 K52 ["CollaboratorSearchWidget"]
      168 CALL                             R36 1 1
      169 GETIMPORT                        R37 K16 [require]
      171 GETTABLEKS                       R38 R6 K47 ["Src"]
      173 GETTABLEKS                       R38 R38 K50 ["Components"]
      175 GETTABLEKS                       R38 R38 K53 ["CollaboratorFilterWidget"]
      177 CALL                             R37 1 1
      178 GETIMPORT                        R38 K16 [require]
      180 GETTABLEKS                       R39 R6 K47 ["Src"]
      182 GETTABLEKS                       R39 R39 K50 ["Components"]
      184 GETTABLEKS                       R39 R39 K54 ["CollaboratorAudienceTabs"]
      186 CALL                             R38 1 1
      187 GETIMPORT                        R39 K16 [require]
      189 GETTABLEKS                       R40 R6 K47 ["Src"]
      191 GETTABLEKS                       R40 R40 K50 ["Components"]
      193 GETTABLEKS                       R40 R40 K55 ["Footer"]
      195 CALL                             R39 1 1
      196 GETIMPORT                        R40 K16 [require]
      198 GETTABLEKS                       R41 R6 K47 ["Src"]
      200 GETTABLEKS                       R41 R41 K48 ["Util"]
      202 GETTABLEKS                       R41 R41 K56 ["Constants"]
      204 CALL                             R40 1 1
      205 GETIMPORT                        R41 K16 [require]
      207 GETTABLEKS                       R42 R6 K47 ["Src"]
      209 GETTABLEKS                       R42 R42 K48 ["Util"]
      211 GETTABLEKS                       R42 R42 K57 ["ShouldShowAudienceTabs"]
      213 CALL                             R41 1 1
      214 GETIMPORT                        R42 K16 [require]
      216 GETTABLEKS                       R43 R6 K47 ["Src"]
      218 GETTABLEKS                       R43 R43 K58 ["Thunks"]
      220 GETTABLEKS                       R43 R43 K59 ["SavePermissions"]
      222 CALL                             R42 1 1
      223 GETIMPORT                        R43 K16 [require]
      225 GETTABLEKS                       R44 R6 K47 ["Src"]
      227 GETTABLEKS                       R44 R44 K58 ["Thunks"]
      229 GETTABLEKS                       R44 R44 K60 ["PermissionsLoader"]
      231 CALL                             R43 1 1
      232 GETIMPORT                        R44 K16 [require]
      234 GETTABLEKS                       R45 R6 K47 ["Src"]
      236 GETTABLEKS                       R45 R45 K58 ["Thunks"]
      238 GETTABLEKS                       R45 R45 K61 ["SendAllSearchItemLogs"]
      240 CALL                             R44 1 1
      241 GETIMPORT                        R45 K16 [require]
      243 GETTABLEKS                       R46 R6 K47 ["Src"]
      245 GETTABLEKS                       R46 R46 K58 ["Thunks"]
      247 GETTABLEKS                       R46 R46 K62 ["LogEarlyTesterTelemetry"]
      249 CALL                             R45 1 1
      250 GETIMPORT                        R46 K16 [require]
      252 GETTABLEKS                       R47 R6 K47 ["Src"]
      254 GETTABLEKS                       R47 R47 K48 ["Util"]
      256 GETTABLEKS                       R47 R47 K63 ["Telemetry"]
      258 GETTABLEKS                       R47 R47 K64 ["EarlyTestersTabOpenedEvent"]
      260 CALL                             R46 1 1
      261 GETIMPORT                        R47 K1 [game]
      263 LOADK                            R49 K65 ["UpsellCollabSafety2"]
      264 NAMECALL                         R47 R47 K3 ["GetFastFlag"]
      266 CALL                             R47 2 1
      267 GETIMPORT                        R48 K1 [game]
      269 LOADK                            R50 K66 ["UpsellCollabTrustedConnection2"]
      270 NAMECALL                         R48 R48 K3 ["GetFastFlag"]
      272 CALL                             R48 2 1
      273 GETIMPORT                        R49 K16 [require]
      275 GETTABLEKS                       R50 R6 K47 ["Src"]
      277 GETTABLEKS                       R50 R50 K67 ["Networking"]
      279 GETTABLEKS                       R50 R50 K68 ["Requests"]
      281 GETTABLEKS                       R50 R50 K69 ["GetAMPRequest"]
      283 CALL                             R49 1 1
      284 GETIMPORT                        R50 K16 [require]
      286 GETTABLEKS                       R51 R6 K47 ["Src"]
      288 GETTABLEKS                       R51 R51 K48 ["Util"]
      290 GETTABLEKS                       R51 R51 K70 ["IsLikelyCollaboratorPrefetchEnabled"]
      292 CALL                             R50 1 1
      293 MOVE                             R51 R50
      294 CALL                             R51 0 1
      295 LOADNIL                          R52
      296 LOADNIL                          R53
      297 JUMPIFNOT                        R51 ; [+20]
      298 GETIMPORT                        R54 K16 [require]
      300 GETTABLEKS                       R55 R6 K47 ["Src"]
      302 GETTABLEKS                       R55 R55 K58 ["Thunks"]
      304 GETTABLEKS                       R55 R55 K71 ["PrefetchLikelyCollaborators"]
      306 CALL                             R54 1 1
      307 MOVE                             R52 R54
      308 GETIMPORT                        R54 K16 [require]
      310 GETTABLEKS                       R55 R6 K47 ["Src"]
      312 GETTABLEKS                       R55 R55 K72 ["Selectors"]
      314 GETTABLEKS                       R55 R55 K73 ["IsGame17Plus"]
      316 CALL                             R54 1 1
      317 MOVE                             R53 R54
      318 GETIMPORT                        R54 K16 [require]
      320 GETTABLEKS                       R55 R6 K47 ["Src"]
      322 GETTABLEKS                       R55 R55 K48 ["Util"]
      324 GETTABLEKS                       R55 R55 K74 ["LoadState"]
      326 CALL                             R54 1 1
      327 GETIMPORT                        R55 K16 [require]
      329 GETTABLEKS                       R56 R6 K47 ["Src"]
      331 GETTABLEKS                       R56 R56 K48 ["Util"]
      333 GETTABLEKS                       R56 R56 K75 ["SaveState"]
      335 CALL                             R55 1 1
      336 GETIMPORT                        R56 K16 [require]
      338 GETTABLEKS                       R57 R6 K47 ["Src"]
      340 GETTABLEKS                       R57 R57 K72 ["Selectors"]
      342 GETTABLEKS                       R57 R57 K76 ["GetHasCollaborators"]
      344 CALL                             R56 1 1
      345 GETIMPORT                        R57 K16 [require]
      347 GETTABLEKS                       R58 R6 K47 ["Src"]
      349 GETTABLEKS                       R58 R58 K72 ["Selectors"]
      351 GETTABLEKS                       R58 R58 K77 ["GetHasCurrentEditCollaborators"]
      353 CALL                             R57 1 1
      354 GETIMPORT                        R58 K16 [require]
      356 GETTABLEKS                       R59 R6 K47 ["Src"]
      358 GETTABLEKS                       R59 R59 K72 ["Selectors"]
      360 GETTABLEKS                       R59 R59 K78 ["GetHasOutsideAgeBucketEditCollaborators"]
      362 CALL                             R58 1 1
      363 GETIMPORT                        R59 K16 [require]
      365 GETTABLEKS                       R60 R6 K47 ["Src"]
      367 GETTABLEKS                       R60 R60 K72 ["Selectors"]
      369 GETTABLEKS                       R60 R60 K79 ["GetCurrentUserIsBlockingCollaborators"]
      371 CALL                             R59 1 1
      372 GETIMPORT                        R60 K16 [require]
      374 GETTABLEKS                       R61 R6 K47 ["Src"]
      376 GETTABLEKS                       R61 R61 K72 ["Selectors"]
      378 GETTABLEKS                       R61 R61 K80 ["GetOwnerIsNotAgeVerified"]
      380 CALL                             R60 1 1
      381 GETIMPORT                        R61 K16 [require]
      383 GETTABLEKS                       R62 R6 K47 ["Src"]
      385 GETTABLEKS                       R62 R62 K72 ["Selectors"]
      387 GETTABLEKS                       R62 R62 K81 ["GetSelectedFilterPill"]
      389 CALL                             R61 1 1
      390 GETIMPORT                        R62 K16 [require]
      392 GETTABLEKS                       R63 R6 K47 ["Src"]
      394 GETTABLEKS                       R63 R63 K72 ["Selectors"]
      396 GETTABLEKS                       R63 R63 K82 ["CanManageEarlyTesters"]
      398 CALL                             R62 1 1
      399 GETIMPORT                        R63 K16 [require]
      401 GETTABLEKS                       R64 R6 K47 ["Src"]
      403 GETTABLEKS                       R64 R64 K72 ["Selectors"]
      405 GETTABLEKS                       R64 R64 K83 ["GetOwnerIsCountryBlocked"]
      407 CALL                             R63 1 1
      408 GETIMPORT                        R64 K16 [require]
      410 GETTABLEKS                       R65 R6 K47 ["Src"]
      412 GETTABLEKS                       R65 R65 K48 ["Util"]
      414 GETTABLEKS                       R65 R65 K84 ["IsTeamCreateEnabled"]
      416 CALL                             R64 1 1
      417 GETTABLEKS                       R65 R11 K48 ["Util"]
      419 GETTABLEKS                       R66 R65 K85 ["LayoutOrderIterator"]
      421 GETIMPORT                        R67 K16 [require]
      423 GETTABLEKS                       R68 R6 K47 ["Src"]
      425 GETTABLEKS                       R68 R68 K48 ["Util"]
      427 GETTABLEKS                       R68 R68 K86 ["Analytics"]
      429 CALL                             R67 1 1
      430 GETTABLEKS                       R68 R21 K87 ["View"]
      432 GETIMPORT                        R69 K16 [require]
      434 GETTABLEKS                       R70 R6 K17 ["Packages"]
      436 GETTABLEKS                       R70 R70 K88 ["React"]
      438 CALL                             R69 1 1
      439 GETIMPORT                        R70 K16 [require]
      441 GETTABLEKS                       R71 R6 K47 ["Src"]
      443 GETTABLEKS                       R71 R71 K50 ["Components"]
      445 GETTABLEKS                       R71 R71 K89 ["Header"]
      447 CALL                             R70 1 1
      448 GETTABLEKS                       R71 R7 K90 ["PureComponent"]
      450 LOADK                            R73 K91 ["PermissionsView"]
      451 NAMECALL                         R71 R71 K92 ["extend"]
      453 CALL                             R71 2 1
      454 GETIMPORT                        R72 K16 [require]
      456 GETTABLEKS                       R73 R6 K47 ["Src"]
      458 GETTABLEKS                       R73 R73 K48 ["Util"]
      460 GETTABLEKS                       R73 R73 K63 ["Telemetry"]
      462 GETTABLEKS                       R73 R73 K93 ["CTAClickedEvent"]
      464 CALL                             R72 1 1
      465 GETIMPORT                        R73 K16 [require]
      467 GETTABLEKS                       R74 R6 K47 ["Src"]
      469 GETTABLEKS                       R74 R74 K48 ["Util"]
      471 GETTABLEKS                       R74 R74 K63 ["Telemetry"]
      473 GETTABLEKS                       R74 R74 K94 ["SafetyUpsellBannerShownEvent"]
      475 CALL                             R73 1 1
      476 GETIMPORT                        R74 K16 [require]
      478 GETTABLEKS                       R75 R6 K17 ["Packages"]
      480 GETTABLEKS                       R75 R75 K95 ["TelemetryProtocol"]
      482 CALL                             R74 1 1
      483 GETTABLEKS                       R75 R74 K96 ["new"]
      485 CALL                             R75 0 1
      486 GETIMPORT                        R76 K16 [require]
      488 GETTABLEKS                       R77 R6 K47 ["Src"]
      490 GETTABLEKS                       R77 R77 K50 ["Components"]
      492 GETTABLEKS                       R77 R77 K97 ["UpsellDialog"]
      494 CALL                             R76 1 1
      495 DUPCLOSURE                       R77 K98 [PROTO_0]
      496 CAPTURE                          VAL R47
      497 CAPTURE                          VAL R75
      498 CAPTURE                          VAL R72
      499 CAPTURE                          VAL R3
      500 DUPCLOSURE                       R78 K99 [PROTO_2]
      501 CAPTURE                          VAL R4
      502 DUPCLOSURE                       R79 K100 [PROTO_3]
      503 SETTABLEKS                       R79 R71 K101 ["isGroupGame"]
      505 DUPCLOSURE                       R79 K102 [PROTO_4]
      506 CAPTURE                          VAL R3
      507 SETTABLEKS                       R79 R71 K103 ["isLoggedInUserGameOwner"]
      509 DUPCLOSURE                       R79 K104 [PROTO_5]
      510 CAPTURE                          VAL R41
      511 SETTABLEKS                       R79 R71 K105 ["shouldShowAudienceTabs"]
      513 DUPCLOSURE                       R79 K106 [PROTO_6]
      514 CAPTURE                          VAL R10
      515 SETTABLEKS                       R79 R71 K107 ["shouldUseEarlyTesterChipLayout"]
      517 DUPCLOSURE                       R79 K108 [PROTO_7]
      518 CAPTURE                          VAL R40
      519 SETTABLEKS                       R79 R71 K109 ["getAudienceTabs"]
      521 DUPCLOSURE                       R79 K110 [PROTO_16]
      522 CAPTURE                          VAL R40
      523 CAPTURE                          VAL R7
      524 CAPTURE                          VAL R47
      525 CAPTURE                          VAL R75
      526 CAPTURE                          VAL R72
      527 CAPTURE                          VAL R3
      528 CAPTURE                          VAL R5
      529 CAPTURE                          VAL R4
      530 CAPTURE                          VAL R10
      531 CAPTURE                          VAL R73
      532 SETTABLEKS                       R79 R71 K111 ["init"]
      534 DUPCLOSURE                       R79 K112 [PROTO_29]
      535 CAPTURE                          VAL R10
      536 CAPTURE                          VAL R51
      537 CAPTURE                          VAL R54
      538 CAPTURE                          VAL R40
      539 CAPTURE                          VAL R48
      540 CAPTURE                          VAL R49
      541 CAPTURE                          VAL R75
      542 CAPTURE                          VAL R73
      543 CAPTURE                          VAL R3
      544 SETTABLEKS                       R79 R71 K113 ["didUpdate"]
      546 DUPCLOSURE                       R79 K114 [PROTO_30]
      547 CAPTURE                          VAL R64
      548 CAPTURE                          VAL R2
      549 SETTABLEKS                       R79 R71 K115 ["onSavePressed"]
      551 DUPCLOSURE                       R79 K116 [PROTO_33]
      552 CAPTURE                          VAL R67
      553 CAPTURE                          VAL R34
      554 CAPTURE                          VAL R20
      555 CAPTURE                          VAL R7
      556 SETTABLEKS                       R79 R71 K117 ["onCancelPressed"]
      558 DUPCLOSURE                       R79 K118 [PROTO_48]
      559 CAPTURE                          VAL R48
      560 CAPTURE                          VAL R10
      561 CAPTURE                          VAL R55
      562 CAPTURE                          VAL R54
      563 CAPTURE                          VAL R51
      564 CAPTURE                          VAL R64
      565 CAPTURE                          VAL R1
      566 CAPTURE                          VAL R66
      567 CAPTURE                          VAL R47
      568 CAPTURE                          VAL R7
      569 CAPTURE                          VAL R18
      570 CAPTURE                          VAL R69
      571 CAPTURE                          VAL R70
      572 CAPTURE                          VAL R68
      573 CAPTURE                          VAL R26
      574 CAPTURE                          VAL R25
      575 CAPTURE                          VAL R28
      576 CAPTURE                          VAL R22
      577 CAPTURE                          VAL R29
      578 CAPTURE                          VAL R31
      579 CAPTURE                          VAL R32
      580 CAPTURE                          VAL R33
      581 CAPTURE                          VAL R75
      582 CAPTURE                          VAL R72
      583 CAPTURE                          VAL R3
      584 CAPTURE                          VAL R5
      585 CAPTURE                          VAL R4
      586 CAPTURE                          VAL R27
      587 CAPTURE                          VAL R21
      588 CAPTURE                          VAL R30
      589 CAPTURE                          VAL R1
      590 CAPTURE                          VAL R23
      591 CAPTURE                          VAL R24
      592 CAPTURE                          VAL R38
      593 CAPTURE                          VAL R36
      594 CAPTURE                          VAL R37
      595 CAPTURE                          VAL R35
      596 CAPTURE                          VAL R0
      597 CAPTURE                          VAL R17
      598 CAPTURE                          VAL R9
      599 CAPTURE                          VAL R76
      600 CAPTURE                          VAL R39
      601 CAPTURE                          VAL R19
      602 SETTABLEKS                       R79 R71 K119 ["render"]
      604 MOVE                             R79 R13
      605 DUPTABLE                         R80 K120 [{"Stylizer", "Localization"}]
      606 SETTABLEKS                       R14 R80 K27 ["Stylizer"]
      608 SETTABLEKS                       R15 R80 K28 ["Localization"]
      610 CALL                             R79 1 1
      611 MOVE                             R80 R71
      612 CALL                             R79 1 1
      613 MOVE                             R71 R79
      614 GETTABLEKS                       R79 R8 K121 ["connect"]
      616 NEWCLOSURE                       R80 P12
      617 CAPTURE                          VAL R54
      618 CAPTURE                          VAL R55
      619 CAPTURE                          VAL R56
      620 CAPTURE                          VAL R57
      621 CAPTURE                          VAL R10
      622 CAPTURE                          VAL R58
      623 CAPTURE                          VAL R59
      624 CAPTURE                          VAL R60
      625 CAPTURE                          VAL R63
      626 CAPTURE                          VAL R51
      627 CAPTURE                          REF R53
      628 CAPTURE                          VAL R61
      629 CAPTURE                          VAL R62
      630 NEWCLOSURE                       R81 P13
      631 CAPTURE                          VAL R43
      632 CAPTURE                          VAL R42
      633 CAPTURE                          VAL R44
      634 CAPTURE                          VAL R45
      635 CAPTURE                          VAL R46
      636 CAPTURE                          VAL R51
      637 CAPTURE                          REF R52
      638 CALL                             R79 2 1
      639 MOVE                             R80 R71
      640 CALL                             R79 1 1
      641 MOVE                             R71 R79
      642 CLOSEUPVALS                      R52
      643 RETURN                           R71 1
