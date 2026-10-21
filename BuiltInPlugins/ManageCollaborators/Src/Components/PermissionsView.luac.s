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
      151 GETUPVAL                         R21 1
      152 GETTABLEKS                       R21 R21 K15 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      154 JUMPIFNOT                        R21 ; [+2]
      155 GETTABLEKS                       R21 R1 K38 ["OwnerIsCountryBlocked"]
      157 GETUPVAL                         R22 1
      158 GETTABLEKS                       R22 R22 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      160 JUMPIFNOT                        R22 ; [+2]
      161 GETTABLEKS                       R22 R1 K39 ["OwnerIsNotAgeVerified"]
      163 OR                               R23 R21 R22
      164 MOVE                             R24 R17
      165 JUMPIFNOT                        R24 ; [+1]
      166 NOT                              R24 R18
      167 GETUPVAL                         R25 5
      168 CALL                             R25 0 1
      169 MOVE                             R26 R24
      170 JUMPIFNOT                        R26 ; [+3]
      171 NOT                              R26 R25
      172 JUMPIFNOT                        R26 ; [+1]
      173 OR                               R26 R6 R15
      174 JUMPIFNOT                        R15 ; [+2]
      175 LOADK                            R27 K40 ["SaveEnableTcCurrentEditors"]
      176 JUMP                             ; [+1]
      177 LOADK                            R27 K41 ["SaveEnableTC"]
      178 LOADK                            R30 K42 ["Description"]
      179 MOVE                             R31 R27
      180 NAMECALL                         R28 R3 K35 ["getText"]
      182 CALL                             R28 3 1
      183 GETTABLEKS                       R29 R2 K43 ["header"]
      185 GETTABLEKS                       R29 R29 K44 ["height"]
      187 GETTABLEKS                       R30 R2 K45 ["footer"]
      189 GETTABLEKS                       R30 R30 K44 ["height"]
      191 JUMPIFNOT                        R26 ; [+5]
      192 GETTABLEKS                       R31 R2 K46 ["saveMessage"]
      194 GETTABLEKS                       R31 R31 K47 ["boxHeight"]
      196 ADD                              R30 R30 R31
      197 GETUPVAL                         R31 6
      198 JUMPIFNOT                        R31 ; [+1]
      199 ADD                              R30 R30 R29
      200 GETUPVAL                         R31 7
      201 GETTABLEKS                       R31 R31 K48 ["new"]
      203 CALL                             R31 0 1
      204 GETUPVAL                         R32 7
      205 GETTABLEKS                       R32 R32 K48 ["new"]
      207 CALL                             R32 0 1
      208 NAMECALL                         R33 R0 K49 ["shouldUseEarlyTesterChipLayout"]
      210 CALL                             R33 1 1
      211 GETTABLEKS                       R34 R1 K50 ["SelectedPill"]
      213 MOVE                             R35 R20
      214 JUMPIFNOT                        R35 ; [+11]
      215 NOT                              R35 R33
      216 JUMPIF                           R35 ; [+9]
      217 LOADB                            R35 0
      218 JUMPIFEQKNIL                     R34 ; [+7]
      220 GETTABLEKS                       R36 R34 K51 ["key"]
      222 JUMPIFEQKS                       R36 K52 ["Creators"] ; [+2]
      224 LOADB                            R35 0 +1
      225 LOADB                            R35 1
      226 LOADNIL                          R36
      227 LOADNIL                          R37
      228 JUMPIFNOT                        R33 ; [+8]
      229 NAMECALL                         R38 R32 K53 ["getNextOrder"]
      231 CALL                             R38 1 1
      232 MOVE                             R37 R38
      233 NAMECALL                         R38 R32 K53 ["getNextOrder"]
      235 CALL                             R38 1 1
      236 MOVE                             R36 R38
      237 GETUPVAL                         R39 8
      238 JUMPIFNOT                        R39 ; [+5]
      239 GETUPVAL                         R38 7
      240 GETTABLEKS                       R38 R38 K48 ["new"]
      242 CALL                             R38 0 1
      243 JUMP                             ; [+1]
      244 LOADNIL                          R38
      245 GETUPVAL                         R39 8
      246 JUMPIFNOT                        R39 ; [+8]
      247 MOVE                             R39 R7
      248 JUMPIF                           R39 ; [+6]
      249 MOVE                             R39 R12
      250 JUMPIF                           R39 ; [+4]
      251 GETUPVAL                         R40 1
      252 GETTABLEKS                       R40 R40 K20 ["fflagUpsellMCCollabReverification"]
      254 AND                              R39 R40 R14
      255 LOADK                            R42 K54 ["UpsellBanner"]
      256 LOADK                            R43 K55 ["RecheckAge"]
      257 NAMECALL                         R40 R3 K35 ["getText"]
      259 CALL                             R40 3 1
      260 LOADK                            R43 K54 ["UpsellBanner"]
      261 LOADK                            R44 K56 ["AgeCheckNotValid"]
      262 NAMECALL                         R41 R3 K35 ["getText"]
      264 CALL                             R41 3 1
      265 LOADK                            R44 K57 ["Buttons"]
      266 LOADK                            R45 K58 ["Continue"]
      267 NAMECALL                         R42 R3 K35 ["getText"]
      269 CALL                             R42 3 1
      270 GETUPVAL                         R43 9
      271 GETTABLEKS                       R43 R43 K59 ["createElement"]
      273 LOADK                            R44 K60 ["Frame"]
      274 DUPTABLE                         R45 K63 [{"Size", "BackgroundColor3"}]
      275 GETIMPORT                        R46 K65 [UDim2.new]
      277 LOADN                            R47 1
      278 LOADN                            R48 0
      279 LOADN                            R49 1
      280 LOADN                            R50 0
      281 CALL                             R46 4 1
      282 SETTABLEKS                       R46 R45 K61 ["Size"]
      284 GETTABLEKS                       R46 R2 K66 ["backgroundColor"]
      286 SETTABLEKS                       R46 R45 K62 ["BackgroundColor3"]
      288 DUPTABLE                         R46 K84 [{"Layout", "HeaderContent", "Spacer", "UpsellBanner", "TrustedConnectionsBanner", "ReverificationBanner", "OutsideAgeBucketBanner", "EditorBlockingBanner", "OwnerNotAgeVerifiedBanner", "OwnerCountryBlockedBanner", "CollaborationSubtitleTitleView", "ScrollingFrameNew", "ScrollingFrame", "TextFrame", "upsellDialog", "FooterContent", "LoadingIndicator", "FailureText"}]
      289 MOVE                             R47 R24
      290 JUMPIFNOT                        R47 ; [+28]
      291 GETUPVAL                         R47 9
      292 GETTABLEKS                       R47 R47 K59 ["createElement"]
      294 LOADK                            R48 K85 ["UIListLayout"]
      295 DUPTABLE                         R49 K90 [{"FillDirection", "SortOrder", "HorizontalAlignment", "Padding"}]
      296 GETIMPORT                        R50 K93 [Enum.FillDirection.Vertical]
      298 SETTABLEKS                       R50 R49 K86 ["FillDirection"]
      300 GETIMPORT                        R50 K95 [Enum.SortOrder.LayoutOrder]
      302 SETTABLEKS                       R50 R49 K87 ["SortOrder"]
      304 GETIMPORT                        R50 K97 [Enum.HorizontalAlignment.Center]
      306 SETTABLEKS                       R50 R49 K88 ["HorizontalAlignment"]
      308 GETIMPORT                        R50 K99 [UDim.new]
      310 LOADN                            R51 0
      311 GETTABLEKS                       R52 R2 K100 ["permissionsView"]
      313 GETTABLEKS                       R52 R52 K89 ["Padding"]
      315 CALL                             R50 2 1
      316 SETTABLEKS                       R50 R49 K89 ["Padding"]
      318 CALL                             R47 2 1
      319 SETTABLEKS                       R47 R46 K67 ["Layout"]
      321 GETUPVAL                         R48 1
      322 GETTABLEKS                       R48 R48 K101 ["fflagRemoveHeaderWithUpsellBanner2"]
      324 NOT                              R47 R48
      325 JUMPIFNOT                        R47 ; [+73]
      326 NOT                              R47 R39
      327 JUMPIFNOT                        R47 ; [+71]
      328 GETUPVAL                         R47 6
      329 JUMPIFNOT                        R47 ; [+69]
      330 MOVE                             R47 R24
      331 JUMPIFNOT                        R47 ; [+67]
      332 GETUPVAL                         R47 9
      333 GETTABLEKS                       R47 R47 K59 ["createElement"]
      335 GETUPVAL                         R48 10
      336 DUPTABLE                         R49 K102 [{"LayoutOrder", "Size"}]
      337 NAMECALL                         R50 R31 K53 ["getNextOrder"]
      339 CALL                             R50 1 1
      340 SETTABLEKS                       R50 R49 K94 ["LayoutOrder"]
      342 GETIMPORT                        R50 K65 [UDim2.new]
      344 LOADN                            R51 1
      345 LOADN                            R52 0
      346 LOADN                            R53 0
      347 GETTABLEKS                       R54 R2 K43 ["header"]
      349 GETTABLEKS                       R54 R54 K44 ["height"]
      351 CALL                             R50 4 1
      352 SETTABLEKS                       R50 R49 K61 ["Size"]
      354 DUPTABLE                         R50 K104 [{"Header"}]
      355 GETUPVAL                         R51 11
      356 GETTABLEKS                       R51 R51 K59 ["createElement"]
      358 GETUPVAL                         R52 12
      359 DUPTABLE                         R53 K112 [{"Stylizer", "Localization", "IsTeamCreateEnabled", "HasUnsavedChanges", "HasCollaborators", "Plugin", "SaveThenTurnOnTeamCreate", "TurnOnTeamCreate", "Links", "FetchLink"}]
      360 SETTABLEKS                       R2 R53 K2 ["Stylizer"]
      362 SETTABLEKS                       R3 R53 K3 ["Localization"]
      364 SETTABLEKS                       R25 R53 K105 ["IsTeamCreateEnabled"]
      366 GETTABLEKS                       R54 R1 K106 ["HasUnsavedChanges"]
      368 SETTABLEKS                       R54 R53 K106 ["HasUnsavedChanges"]
      370 GETTABLEKS                       R54 R1 K6 ["HasCollaborators"]
      372 SETTABLEKS                       R54 R53 K6 ["HasCollaborators"]
      374 GETTABLEKS                       R54 R1 K107 ["Plugin"]
      376 SETTABLEKS                       R54 R53 K107 ["Plugin"]
      378 NEWCLOSURE                       R54 P0
      379 CAPTURE                          VAL R0
      380 SETTABLEKS                       R54 R53 K108 ["SaveThenTurnOnTeamCreate"]
      382 NEWCLOSURE                       R54 P1
      383 CAPTURE                          VAL R16
      384 CAPTURE                          UPVAL U13
      385 SETTABLEKS                       R54 R53 K109 ["TurnOnTeamCreate"]
      387 GETTABLEKS                       R54 R1 K110 ["Links"]
      389 SETTABLEKS                       R54 R53 K110 ["Links"]
      391 GETTABLEKS                       R54 R1 K111 ["FetchLink"]
      393 SETTABLEKS                       R54 R53 K111 ["FetchLink"]
      395 CALL                             R51 2 1
      396 SETTABLEKS                       R51 R50 K103 ["Header"]
      398 CALL                             R47 3 1
      399 SETTABLEKS                       R47 R46 K68 ["HeaderContent"]
      401 GETUPVAL                         R47 1
      402 GETTABLEKS                       R47 R47 K101 ["fflagRemoveHeaderWithUpsellBanner2"]
      404 JUMPIFNOT                        R47 ; [+40]
      405 MOVE                             R47 R39
      406 JUMPIFNOT                        R47 ; [+38]
      407 GETUPVAL                         R48 1
      408 GETTABLEKS                       R48 R48 K11 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      410 JUMPIF                           R48 ; [+3]
      411 GETUPVAL                         R48 1
      412 GETTABLEKS                       R48 R48 K13 ["fflagManageCollaboratorsEditorBlockingBanner"]
      414 NOT                              R47 R48
      415 JUMPIFNOT                        R47 ; [+29]
      416 GETUPVAL                         R48 1
      417 GETTABLEKS                       R48 R48 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      419 JUMPIF                           R48 ; [+3]
      420 GETUPVAL                         R48 1
      421 GETTABLEKS                       R48 R48 K15 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      423 NOT                              R47 R48
      424 JUMPIFNOT                        R47 ; [+20]
      425 GETUPVAL                         R47 11
      426 GETTABLEKS                       R47 R47 K59 ["createElement"]
      428 GETUPVAL                         R48 14
      429 DUPTABLE                         R49 K102 [{"LayoutOrder", "Size"}]
      430 NAMECALL                         R50 R31 K53 ["getNextOrder"]
      432 CALL                             R50 1 1
      433 SETTABLEKS                       R50 R49 K94 ["LayoutOrder"]
      435 GETIMPORT                        R50 K65 [UDim2.new]
      437 LOADN                            R51 1
      438 LOADN                            R52 0
      439 LOADN                            R53 0
      440 LOADN                            R54 10
      441 CALL                             R50 4 1
      442 SETTABLEKS                       R50 R49 K61 ["Size"]
      444 CALL                             R47 2 1
      445 SETTABLEKS                       R47 R46 K69 ["Spacer"]
      447 GETUPVAL                         R47 8
      448 JUMPIFNOT                        R47 ; [+148]
      449 MOVE                             R47 R7
      450 JUMPIFNOT                        R47 ; [+146]
      451 GETUPVAL                         R48 1
      452 GETTABLEKS                       R48 R48 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      454 NOT                              R47 R48
      455 JUMPIFNOT                        R47 ; [+141]
      456 GETUPVAL                         R47 9
      457 GETTABLEKS                       R47 R47 K59 ["createElement"]
      459 GETUPVAL                         R48 14
      460 DUPTABLE                         R49 K116 [{["LayoutOrder"], ["Size"], ["tag"] = "auto-xy padding-left-large stroke-system-emphasis radius-small bg-over-media-300", ["onActivated"]}]
      461 NAMECALL                         R50 R31 K53 ["getNextOrder"]
      463 CALL                             R50 1 1
      464 SETTABLEKS                       R50 R49 K94 ["LayoutOrder"]
      466 GETIMPORT                        R50 K65 [UDim2.new]
      468 LOADN                            R51 0
      469 LOADN                            R52 770
      470 LOADN                            R53 0
      471 LOADN                            R54 50
      472 CALL                             R50 4 1
      473 SETTABLEKS                       R50 R49 K61 ["Size"]
      475 GETTABLEKS                       R50 R0 K117 ["launchFAEPlusVPC"]
      477 SETTABLEKS                       R50 R49 K115 ["onActivated"]
      479 NEWTABLE                         R50 4 1
      481 MOVE                             R52 R24
      482 JUMPIFNOT                        R52 ; [+28]
      483 GETUPVAL                         R52 9
      484 GETTABLEKS                       R52 R52 K59 ["createElement"]
      486 LOADK                            R53 K85 ["UIListLayout"]
      487 DUPTABLE                         R54 K119 [{"FillDirection", "VerticalAlignment", "SortOrder", "Padding"}]
      488 GETIMPORT                        R55 K121 [Enum.FillDirection.Horizontal]
      490 SETTABLEKS                       R55 R54 K86 ["FillDirection"]
      492 GETIMPORT                        R55 K122 [Enum.VerticalAlignment.Center]
      494 SETTABLEKS                       R55 R54 K118 ["VerticalAlignment"]
      496 GETIMPORT                        R55 K95 [Enum.SortOrder.LayoutOrder]
      498 SETTABLEKS                       R55 R54 K87 ["SortOrder"]
      500 GETIMPORT                        R55 K99 [UDim.new]
      502 LOADN                            R56 0
      503 GETTABLEKS                       R57 R2 K100 ["permissionsView"]
      505 GETTABLEKS                       R57 R57 K89 ["Padding"]
      507 CALL                             R55 2 1
      508 SETTABLEKS                       R55 R54 K89 ["Padding"]
      510 CALL                             R52 2 1
      511 SETTABLEKS                       R52 R50 K123 ["UpsellLayout"]
      513 GETUPVAL                         R51 11
      514 GETTABLEKS                       R51 R51 K59 ["createElement"]
      516 GETUPVAL                         R52 15
      517 DUPTABLE                         R53 K128 [{"name", "style", "LayoutOrder", "size", "variant"}]
      518 GETUPVAL                         R54 16
      519 GETTABLEKS                       R54 R54 K129 ["IconName"]
      521 GETTABLEKS                       R54 R54 K130 ["TriangleExclamation"]
      523 SETTABLEKS                       R54 R53 K124 ["name"]
      525 DUPTABLE                         R54 K134 [{["Color3"], ["Transparency"] = 0}]
      526 GETIMPORT                        R55 K136 [Color3.fromRGB]
      528 LOADN                            R56 51
      529 LOADN                            R57 95
      530 LOADN                            R58 255
      531 CALL                             R55 3 1
      532 SETTABLEKS                       R55 R54 K131 ["Color3"]
      534 SETTABLEKS                       R54 R53 K125 ["style"]
      536 NAMECALL                         R54 R38 K53 ["getNextOrder"]
      538 CALL                             R54 1 1
      539 SETTABLEKS                       R54 R53 K94 ["LayoutOrder"]
      541 GETUPVAL                         R54 16
      542 GETTABLEKS                       R54 R54 K137 ["IconSize"]
      544 GETTABLEKS                       R54 R54 K138 ["Large"]
      546 SETTABLEKS                       R54 R53 K126 ["size"]
      548 GETUPVAL                         R54 17
      549 GETTABLEKS                       R54 R54 K139 ["Filled"]
      551 SETTABLEKS                       R54 R53 K127 ["variant"]
      553 CALL                             R51 2 1
      554 SETLIST                          R50 R51 1 [1]
      556 GETUPVAL                         R52 9
      557 GETTABLEKS                       R52 R52 K59 ["createElement"]
      559 GETUPVAL                         R53 18
      560 DUPTABLE                         R54 K142 [{["tag"] = "fill auto-y padding-left-large text-title-medium text-align-x-left text-align-y-center", ["LayoutOrder"], ["Text"]}]
      561 NAMECALL                         R55 R38 K53 ["getNextOrder"]
      563 CALL                             R55 1 1
      564 SETTABLEKS                       R55 R54 K94 ["LayoutOrder"]
      566 LOADK                            R57 K54 ["UpsellBanner"]
      567 LOADK                            R58 K143 ["description"]
      568 NAMECALL                         R55 R3 K35 ["getText"]
      570 CALL                             R55 3 1
      571 SETTABLEKS                       R55 R54 K141 ["Text"]
      573 CALL                             R52 2 1
      574 SETTABLEKS                       R52 R50 K144 ["WarningText"]
      576 GETUPVAL                         R52 9
      577 GETTABLEKS                       R52 R52 K59 ["createElement"]
      579 GETUPVAL                         R53 18
      580 DUPTABLE                         R54 K146 [{["tag"] = "auto-xy padding-right-large text-label-medium text-align-x-center text-align-y-center", ["LayoutOrder"], ["Text"]}]
      581 NAMECALL                         R55 R38 K53 ["getNextOrder"]
      583 CALL                             R55 1 1
      584 SETTABLEKS                       R55 R54 K94 ["LayoutOrder"]
      586 LOADK                            R57 K54 ["UpsellBanner"]
      587 LOADK                            R58 K147 ["CTA"]
      588 NAMECALL                         R55 R3 K35 ["getText"]
      590 CALL                             R55 3 1
      591 SETTABLEKS                       R55 R54 K141 ["Text"]
      593 CALL                             R52 2 1
      594 SETTABLEKS                       R52 R50 K148 ["GetStarted"]
      596 CALL                             R47 3 1
      597 SETTABLEKS                       R47 R46 K54 ["UpsellBanner"]
      599 GETUPVAL                         R47 0
      600 JUMPIFNOT                        R47 ; [+76]
      601 GETUPVAL                         R48 1
      602 GETTABLEKS                       R48 R48 K11 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      604 NOT                              R47 R48
      605 JUMPIFNOT                        R47 ; [+71]
      606 GETUPVAL                         R48 1
      607 GETTABLEKS                       R48 R48 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      609 NOT                              R47 R48
      610 JUMPIFNOT                        R47 ; [+66]
      611 MOVE                             R47 R12
      612 JUMPIFNOT                        R47 ; [+64]
      613 GETUPVAL                         R47 11
      614 GETTABLEKS                       R47 R47 K59 ["createElement"]
      616 GETUPVAL                         R48 14
      617 DUPTABLE                         R49 K150 [{["tag"] = "size-full-0 auto-y padding-x-large padding-top-large"}]
      618 GETUPVAL                         R50 11
      619 GETTABLEKS                       R50 R50 K59 ["createElement"]
      621 GETUPVAL                         R51 19
      622 DUPTABLE                         R52 K155 [{"variant", "severity", "title", "actions", "onClose"}]
      623 GETUPVAL                         R53 20
      624 GETTABLEKS                       R53 R53 K156 ["Standard"]
      626 SETTABLEKS                       R53 R52 K127 ["variant"]
      628 GETUPVAL                         R53 21
      629 GETTABLEKS                       R53 R53 K157 ["Info"]
      631 SETTABLEKS                       R53 R52 K151 ["severity"]
      633 LOADK                            R55 K54 ["UpsellBanner"]
      634 LOADK                            R56 K158 ["nextStepDescription"]
      635 NAMECALL                         R53 R3 K35 ["getText"]
      637 CALL                             R53 3 1
      638 SETTABLEKS                       R53 R52 K152 ["title"]
      640 NEWTABLE                         R53 0 1
      642 DUPTABLE                         R54 K160 [{"text", "variant", "onActivated"}]
      643 LOADK                            R57 K54 ["UpsellBanner"]
      644 LOADK                            R58 K147 ["CTA"]
      645 NAMECALL                         R55 R3 K35 ["getText"]
      647 CALL                             R55 3 1
      648 SETTABLEKS                       R55 R54 K159 ["text"]
      650 GETUPVAL                         R55 22
      651 GETTABLEKS                       R55 R55 K156 ["Standard"]
      653 SETTABLEKS                       R55 R54 K127 ["variant"]
      655 GETUPVAL                         R56 1
      656 GETTABLEKS                       R56 R56 K18 ["fflagUpsellCollabTrustedConnectionShowUpsellDialog"]
      658 JUMPIFNOT                        R56 ; [+4]
      659 JUMPIFNOT                        R13 ; [+3]
      660 GETTABLEKS                       R55 R0 K161 ["launchModal"]
      662 JUMP                             ; [+2]
      663 GETTABLEKS                       R55 R0 K162 ["launchCreatorHub"]
      665 SETTABLEKS                       R55 R54 K115 ["onActivated"]
      667 SETLIST                          R53 R54 1 [1]
      669 SETTABLEKS                       R53 R52 K153 ["actions"]
      671 NEWCLOSURE                       R53 P2
      672 CAPTURE                          VAL R0
      673 SETTABLEKS                       R53 R52 K154 ["onClose"]
      675 CALL                             R50 2 -1
      676 CALL                             R47 -1 1
      677 SETTABLEKS                       R47 R46 K70 ["TrustedConnectionsBanner"]
      679 GETUPVAL                         R47 1
      680 GETTABLEKS                       R47 R47 K20 ["fflagUpsellMCCollabReverification"]
      682 JUMPIFNOT                        R47 ; [+149]
      683 MOVE                             R47 R14
      684 JUMPIFNOT                        R47 ; [+147]
      685 GETUPVAL                         R47 11
      686 GETTABLEKS                       R47 R47 K59 ["createElement"]
      688 GETUPVAL                         R48 14
      689 DUPTABLE                         R49 K164 [{["LayoutOrder"], ["Size"], ["tag"] = "row align-y-center gap-medium padding-left-large padding-right-medium stroke-system-emphasis radius-small bg-over-media-300", ["onActivated"]}]
      690 NAMECALL                         R50 R31 K53 ["getNextOrder"]
      692 CALL                             R50 1 1
      693 SETTABLEKS                       R50 R49 K94 ["LayoutOrder"]
      695 GETIMPORT                        R50 K65 [UDim2.new]
      697 LOADN                            R51 0
      698 LOADN                            R52 770
      699 LOADN                            R53 0
      700 LOADN                            R54 50
      701 CALL                             R50 4 1
      702 SETTABLEKS                       R50 R49 K61 ["Size"]
      704 DUPCLOSURE                       R50 K165 [PROTO_36]
      705 CAPTURE                          UPVAL U8
      706 CAPTURE                          UPVAL U23
      707 CAPTURE                          UPVAL U24
      708 CAPTURE                          UPVAL U25
      709 CAPTURE                          UPVAL U26
      710 CAPTURE                          UPVAL U27
      711 SETTABLEKS                       R50 R49 K115 ["onActivated"]
      713 DUPTABLE                         R50 K168 [{"Icon", "WarningText", "CloseButton"}]
      714 GETUPVAL                         R51 11
      715 GETTABLEKS                       R51 R51 K59 ["createElement"]
      717 GETUPVAL                         R52 14
      718 DUPTABLE                         R53 K170 [{["LayoutOrder"], ["tag"] = "size-600-600 auto-xy"}]
      719 NAMECALL                         R54 R38 K53 ["getNextOrder"]
      721 CALL                             R54 1 1
      722 SETTABLEKS                       R54 R53 K94 ["LayoutOrder"]
      724 DUPTABLE                         R54 K172 [{"BackgroundCircle", "Icon"}]
      725 GETUPVAL                         R55 11
      726 GETTABLEKS                       R55 R55 K59 ["createElement"]
      728 GETUPVAL                         R56 14
      729 DUPTABLE                         R57 K175 [{["tag"] = "position-center-center anchor-center-center size-500-500 radius-circle", ["backgroundStyle"]}]
      730 DUPTABLE                         R58 K176 [{"Color3"}]
      731 GETIMPORT                        R59 K178 [Color3.fromHex]
      733 LOADK                            R60 K179 ["#FFFFFF"]
      734 CALL                             R59 1 1
      735 SETTABLEKS                       R59 R58 K131 ["Color3"]
      737 SETTABLEKS                       R58 R57 K174 ["backgroundStyle"]
      739 CALL                             R55 2 1
      740 SETTABLEKS                       R55 R54 K171 ["BackgroundCircle"]
      742 GETUPVAL                         R55 11
      743 GETTABLEKS                       R55 R55 K59 ["createElement"]
      745 GETUPVAL                         R56 15
      746 DUPTABLE                         R57 K181 [{["name"], ["style"], ["tag"] = "align-x-center align-y-center", ["size"], ["variant"]}]
      747 GETUPVAL                         R58 16
      748 GETTABLEKS                       R58 R58 K129 ["IconName"]
      750 GETTABLEKS                       R58 R58 K182 ["CircleI"]
      752 SETTABLEKS                       R58 R57 K124 ["name"]
      754 DUPTABLE                         R58 K134 [{["Color3"], ["Transparency"] = 0}]
      755 GETIMPORT                        R59 K136 [Color3.fromRGB]
      757 LOADN                            R60 51
      758 LOADN                            R61 95
      759 LOADN                            R62 255
      760 CALL                             R59 3 1
      761 SETTABLEKS                       R59 R58 K131 ["Color3"]
      763 SETTABLEKS                       R58 R57 K125 ["style"]
      765 GETUPVAL                         R58 16
      766 GETTABLEKS                       R58 R58 K137 ["IconSize"]
      768 GETTABLEKS                       R58 R58 K138 ["Large"]
      770 SETTABLEKS                       R58 R57 K126 ["size"]
      772 GETUPVAL                         R58 17
      773 GETTABLEKS                       R58 R58 K139 ["Filled"]
      775 SETTABLEKS                       R58 R57 K127 ["variant"]
      777 CALL                             R55 2 1
      778 SETTABLEKS                       R55 R54 K166 ["Icon"]
      780 CALL                             R51 3 1
      781 SETTABLEKS                       R51 R50 K166 ["Icon"]
      783 GETUPVAL                         R51 9
      784 GETTABLEKS                       R51 R51 K59 ["createElement"]
      786 GETUPVAL                         R52 18
      787 DUPTABLE                         R53 K186 [{["tag"] = "fill text-body-medium text-align-x-left text-align-y-center", ["LayoutOrder"], ["Text"], ["RichText"] = True}]
      788 NAMECALL                         R54 R38 K53 ["getNextOrder"]
      790 CALL                             R54 1 1
      791 SETTABLEKS                       R54 R53 K94 ["LayoutOrder"]
      793 LOADK                            R54 K187 ["<b>%*</b> %* • %*"]
      794 MOVE                             R56 R40
      795 MOVE                             R57 R41
      796 MOVE                             R58 R42
      797 NAMECALL                         R54 R54 K188 ["format"]
      799 CALL                             R54 4 1
      800 SETTABLEKS                       R54 R53 K141 ["Text"]
      802 CALL                             R51 2 1
      803 SETTABLEKS                       R51 R50 K144 ["WarningText"]
      805 GETUPVAL                         R51 11
      806 GETTABLEKS                       R51 R51 K59 ["createElement"]
      808 GETUPVAL                         R52 28
      809 DUPTABLE                         R53 K191 [{["LayoutOrder"], ["icon"] = "icons/navigation/close", ["size"], ["onActivated"]}]
      810 NAMECALL                         R54 R38 K53 ["getNextOrder"]
      812 CALL                             R54 1 1
      813 SETTABLEKS                       R54 R53 K94 ["LayoutOrder"]
      815 GETUPVAL                         R54 29
      816 GETTABLEKS                       R54 R54 K192 ["Enums"]
      818 GETTABLEKS                       R54 R54 K137 ["IconSize"]
      820 GETTABLEKS                       R54 R54 K193 ["Small"]
      822 SETTABLEKS                       R54 R53 K126 ["size"]
      824 NEWCLOSURE                       R54 P4
      825 CAPTURE                          VAL R0
      826 SETTABLEKS                       R54 R53 K115 ["onActivated"]
      828 CALL                             R51 2 1
      829 SETTABLEKS                       R51 R50 K167 ["CloseButton"]
      831 CALL                             R47 3 1
      832 SETTABLEKS                       R47 R46 K71 ["ReverificationBanner"]
      834 GETUPVAL                         R47 1
      835 GETTABLEKS                       R47 R47 K11 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      837 JUMPIFNOT                        R47 ; [+56]
      838 MOVE                             R47 R20
      839 JUMPIFNOT                        R47 ; [+54]
      840 MOVE                             R47 R9
      841 JUMPIFNOT                        R47 ; [+52]
      842 GETUPVAL                         R47 11
      843 GETTABLEKS                       R47 R47 K59 ["createElement"]
      845 GETUPVAL                         R48 14
      846 DUPTABLE                         R49 K195 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y margin-top-small padding-x-large"}]
      847 NAMECALL                         R50 R31 K53 ["getNextOrder"]
      849 CALL                             R50 1 1
      850 SETTABLEKS                       R50 R49 K94 ["LayoutOrder"]
      852 NEWTABLE                         R50 0 1
      854 GETUPVAL                         R51 11
      855 GETTABLEKS                       R51 R51 K59 ["createElement"]
      857 GETUPVAL                         R52 30
      858 DUPTABLE                         R53 K197 [{"severity", "title", "link", "onClose"}]
      859 GETUPVAL                         R54 21
      860 GETTABLEKS                       R54 R54 K198 ["Warning"]
      862 SETTABLEKS                       R54 R53 K151 ["severity"]
      864 LOADK                            R56 K199 ["FeedbackAlert"]
      865 LOADK                            R57 K200 ["OutsideAgeGroupWarning"]
      866 NAMECALL                         R54 R3 K35 ["getText"]
      868 CALL                             R54 3 1
      869 SETTABLEKS                       R54 R53 K152 ["title"]
      871 DUPTABLE                         R54 K201 [{"text", "onActivated"}]
      872 LOADK                            R57 K199 ["FeedbackAlert"]
      873 LOADK                            R58 K202 ["ViewDetails"]
      874 NAMECALL                         R55 R3 K35 ["getText"]
      876 CALL                             R55 3 1
      877 SETTABLEKS                       R55 R54 K159 ["text"]
      879 NEWCLOSURE                       R55 P5
      880 CAPTURE                          UPVAL U1
      881 CAPTURE                          VAL R0
      882 SETTABLEKS                       R55 R54 K115 ["onActivated"]
      884 SETTABLEKS                       R54 R53 K196 ["link"]
      886 NEWCLOSURE                       R54 P6
      887 CAPTURE                          VAL R0
      888 SETTABLEKS                       R54 R53 K154 ["onClose"]
      890 CALL                             R51 2 -1
      891 SETLIST                          R50 R51 -1 [1]
      893 CALL                             R47 3 1
      894 SETTABLEKS                       R47 R46 K72 ["OutsideAgeBucketBanner"]
      896 GETUPVAL                         R47 1
      897 GETTABLEKS                       R47 R47 K13 ["fflagManageCollaboratorsEditorBlockingBanner"]
      899 JUMPIFNOT                        R47 ; [+56]
      900 NOT                              R47 R20
      901 JUMPIFNOT                        R47 ; [+54]
      902 MOVE                             R47 R10
      903 JUMPIFNOT                        R47 ; [+52]
      904 GETUPVAL                         R47 11
      905 GETTABLEKS                       R47 R47 K59 ["createElement"]
      907 GETUPVAL                         R48 14
      908 DUPTABLE                         R49 K195 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y margin-top-small padding-x-large"}]
      909 NAMECALL                         R50 R31 K53 ["getNextOrder"]
      911 CALL                             R50 1 1
      912 SETTABLEKS                       R50 R49 K94 ["LayoutOrder"]
      914 NEWTABLE                         R50 0 1
      916 GETUPVAL                         R51 11
      917 GETTABLEKS                       R51 R51 K59 ["createElement"]
      919 GETUPVAL                         R52 30
      920 DUPTABLE                         R53 K197 [{"severity", "title", "link", "onClose"}]
      921 GETUPVAL                         R54 21
      922 GETTABLEKS                       R54 R54 K198 ["Warning"]
      924 SETTABLEKS                       R54 R53 K151 ["severity"]
      926 LOADK                            R56 K199 ["FeedbackAlert"]
      927 LOADK                            R57 K203 ["EditorBlockingWarning"]
      928 NAMECALL                         R54 R3 K35 ["getText"]
      930 CALL                             R54 3 1
      931 SETTABLEKS                       R54 R53 K152 ["title"]
      933 DUPTABLE                         R54 K201 [{"text", "onActivated"}]
      934 LOADK                            R57 K199 ["FeedbackAlert"]
      935 LOADK                            R58 K202 ["ViewDetails"]
      936 NAMECALL                         R55 R3 K35 ["getText"]
      938 CALL                             R55 3 1
      939 SETTABLEKS                       R55 R54 K159 ["text"]
      941 NEWCLOSURE                       R55 P7
      942 CAPTURE                          UPVAL U1
      943 CAPTURE                          VAL R0
      944 SETTABLEKS                       R55 R54 K115 ["onActivated"]
      946 SETTABLEKS                       R54 R53 K196 ["link"]
      948 NEWCLOSURE                       R54 P8
      949 CAPTURE                          VAL R0
      950 SETTABLEKS                       R54 R53 K154 ["onClose"]
      952 CALL                             R51 2 -1
      953 SETLIST                          R50 R51 -1 [1]
      955 CALL                             R47 3 1
      956 SETTABLEKS                       R47 R46 K73 ["EditorBlockingBanner"]
      958 GETUPVAL                         R47 1
      959 GETTABLEKS                       R47 R47 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      961 JUMPIFNOT                        R47 ; [+84]
      962 MOVE                             R47 R20
      963 JUMPIFNOT                        R47 ; [+82]
      964 MOVE                             R47 R8
      965 JUMPIFNOT                        R47 ; [+80]
      966 GETUPVAL                         R47 11
      967 GETTABLEKS                       R47 R47 K59 ["createElement"]
      969 GETUPVAL                         R48 14
      970 DUPTABLE                         R49 K195 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y margin-top-small padding-x-large"}]
      971 NAMECALL                         R50 R31 K53 ["getNextOrder"]
      973 CALL                             R50 1 1
      974 SETTABLEKS                       R50 R49 K94 ["LayoutOrder"]
      976 NEWTABLE                         R50 0 1
      978 GETUPVAL                         R51 11
      979 GETTABLEKS                       R51 R51 K59 ["createElement"]
      981 GETUPVAL                         R52 30
      982 DUPTABLE                         R53 K205 [{"severity", "title", "subtitle", "link", "onClose"}]
      983 GETUPVAL                         R54 21
      984 GETTABLEKS                       R54 R54 K198 ["Warning"]
      986 SETTABLEKS                       R54 R53 K151 ["severity"]
      988 NAMECALL                         R55 R0 K206 ["isGroupGame"]
      990 CALL                             R55 1 1
      991 JUMPIFNOT                        R55 ; [+6]
      992 LOADK                            R56 K199 ["FeedbackAlert"]
      993 LOADK                            R57 K207 ["VerifyYourAge"]
      994 NAMECALL                         R54 R3 K35 ["getText"]
      996 CALL                             R54 3 1
      997 JUMP                             ; [+5]
      998 LOADK                            R56 K199 ["FeedbackAlert"]
      999 LOADK                            R57 K208 ["OwnerNotAgeVerifiedTitle"]
     1000 NAMECALL                         R54 R3 K35 ["getText"]
     1002 CALL                             R54 3 1
     1003 SETTABLEKS                       R54 R53 K152 ["title"]
     1005 NAMECALL                         R55 R0 K206 ["isGroupGame"]
     1007 CALL                             R55 1 1
     1008 JUMPIFNOT                        R55 ; [+6]
     1009 LOADK                            R56 K199 ["FeedbackAlert"]
     1010 LOADK                            R57 K209 ["OwnerNotAgeVerifiedSubtitle"]
     1011 NAMECALL                         R54 R3 K35 ["getText"]
     1013 CALL                             R54 3 1
     1014 JUMP                             ; [+1]
     1015 LOADNIL                          R54
     1016 SETTABLEKS                       R54 R53 K204 ["subtitle"]
     1018 DUPTABLE                         R54 K201 [{"text", "onActivated"}]
     1019 LOADK                            R57 K54 ["UpsellBanner"]
     1020 LOADK                            R58 K147 ["CTA"]
     1021 NAMECALL                         R55 R3 K35 ["getText"]
     1023 CALL                             R55 3 1
     1024 SETTABLEKS                       R55 R54 K159 ["text"]
     1026 DUPCLOSURE                       R55 K210 [PROTO_42]
     1027 CAPTURE                          UPVAL U1
     1028 CAPTURE                          UPVAL U8
     1029 CAPTURE                          UPVAL U23
     1030 CAPTURE                          UPVAL U24
     1031 CAPTURE                          UPVAL U25
     1032 CAPTURE                          UPVAL U26
     1033 CAPTURE                          UPVAL U27
     1034 SETTABLEKS                       R55 R54 K115 ["onActivated"]
     1036 SETTABLEKS                       R54 R53 K196 ["link"]
     1038 NEWCLOSURE                       R54 P10
     1039 CAPTURE                          VAL R0
     1040 SETTABLEKS                       R54 R53 K154 ["onClose"]
     1042 CALL                             R51 2 -1
     1043 SETLIST                          R50 R51 -1 [1]
     1045 CALL                             R47 3 1
     1046 SETTABLEKS                       R47 R46 K74 ["OwnerNotAgeVerifiedBanner"]
     1048 GETUPVAL                         R47 1
     1049 GETTABLEKS                       R47 R47 K15 ["fflagManageCollaboratorsOwnerCountryBlocked"]
     1051 JUMPIFNOT                        R47 ; [+41]
     1052 MOVE                             R47 R20
     1053 JUMPIFNOT                        R47 ; [+39]
     1054 MOVE                             R47 R11
     1055 JUMPIFNOT                        R47 ; [+37]
     1056 GETUPVAL                         R47 11
     1057 GETTABLEKS                       R47 R47 K59 ["createElement"]
     1059 GETUPVAL                         R48 14
     1060 DUPTABLE                         R49 K195 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y margin-top-small padding-x-large"}]
     1061 NAMECALL                         R50 R31 K53 ["getNextOrder"]
     1063 CALL                             R50 1 1
     1064 SETTABLEKS                       R50 R49 K94 ["LayoutOrder"]
     1066 NEWTABLE                         R50 0 1
     1068 GETUPVAL                         R51 11
     1069 GETTABLEKS                       R51 R51 K59 ["createElement"]
     1071 GETUPVAL                         R52 30
     1072 DUPTABLE                         R53 K211 [{"severity", "title", "onClose"}]
     1073 GETUPVAL                         R54 21
     1074 GETTABLEKS                       R54 R54 K198 ["Warning"]
     1076 SETTABLEKS                       R54 R53 K151 ["severity"]
     1078 LOADK                            R56 K199 ["FeedbackAlert"]
     1079 LOADK                            R57 K212 ["OwnerCountryBlockedTitle"]
     1080 NAMECALL                         R54 R3 K35 ["getText"]
     1082 CALL                             R54 3 1
     1083 SETTABLEKS                       R54 R53 K152 ["title"]
     1085 NEWCLOSURE                       R54 P11
     1086 CAPTURE                          VAL R0
     1087 SETTABLEKS                       R54 R53 K154 ["onClose"]
     1089 CALL                             R51 2 -1
     1090 SETLIST                          R50 R51 -1 [1]
     1092 CALL                             R47 3 1
     1093 SETTABLEKS                       R47 R46 K75 ["OwnerCountryBlockedBanner"]
     1095 GETUPVAL                         R47 8
     1096 JUMPIFNOT                        R47 ; [+56]
     1097 NAMECALL                         R48 R0 K213 ["shouldShowAudienceTabs"]
     1099 CALL                             R48 1 1
     1100 NOT                              R47 R48
     1101 JUMPIFNOT                        R47 ; [+51]
     1102 GETUPVAL                         R48 5
     1103 CALL                             R48 0 1
     1104 JUMPIF                           R48 ; [+3]
     1105 GETUPVAL                         R48 0
     1106 NOT                              R47 R48
     1107 JUMPIFNOT                        R47 ; [+45]
     1108 NOT                              R47 R33
     1109 JUMPIFNOT                        R47 ; [+43]
     1110 GETUPVAL                         R47 9
     1111 GETTABLEKS                       R47 R47 K59 ["createElement"]
     1113 GETUPVAL                         R48 14
     1114 DUPTABLE                         R49 K215 [{["LayoutOrder"], ["Size"], ["tag"] = "auto-xy padding-top-medium"}]
     1115 NAMECALL                         R50 R31 K53 ["getNextOrder"]
     1117 CALL                             R50 1 1
     1118 SETTABLEKS                       R50 R49 K94 ["LayoutOrder"]
     1120 GETIMPORT                        R50 K65 [UDim2.new]
     1122 LOADN                            R51 0
     1123 LOADN                            R52 770
     1124 LOADN                            R53 0
     1125 LOADN                            R54 10
     1126 CALL                             R50 4 1
     1127 SETTABLEKS                       R50 R49 K61 ["Size"]
     1129 DUPTABLE                         R50 K217 [{"CollaborationTitle"}]
     1130 GETUPVAL                         R51 31
     1131 JUMPIFNOT                        R51 ; [+18]
     1132 GETUPVAL                         R51 11
     1133 GETTABLEKS                       R51 R51 K59 ["createElement"]
     1135 GETUPVAL                         R52 18
     1136 DUPTABLE                         R53 K219 [{["LayoutOrder"], ["tag"] = "auto-xy text-label-small text-align-x-left", ["Text"]}]
     1137 NAMECALL                         R54 R31 K53 ["getNextOrder"]
     1139 CALL                             R54 1 1
     1140 SETTABLEKS                       R54 R53 K94 ["LayoutOrder"]
     1142 LOADK                            R56 K220 ["Subtitle"]
     1143 LOADK                            R57 K221 ["SearchCollaborators"]
     1144 NAMECALL                         R54 R3 K35 ["getText"]
     1146 CALL                             R54 3 1
     1147 SETTABLEKS                       R54 R53 K141 ["Text"]
     1149 CALL                             R51 2 1
     1150 SETTABLEKS                       R51 R50 K216 ["CollaborationTitle"]
     1152 CALL                             R47 3 1
     1153 SETTABLEKS                       R47 R46 K76 ["CollaborationSubtitleTitleView"]
     1155 GETUPVAL                         R47 8
     1156 JUMPIFNOT                        R47 ; [+211]
     1157 MOVE                             R47 R24
     1158 JUMPIFNOT                        R47 ; [+209]
     1159 GETUPVAL                         R47 9
     1160 GETTABLEKS                       R47 R47 K59 ["createElement"]
     1162 GETUPVAL                         R48 32
     1163 DUPTABLE                         R49 K225 [{["scroll"], ["layout"], ["tag"] = "col align-y-top fill gap-small size-full", ["LayoutOrder"]}]
     1164 DUPTABLE                         R50 K230 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
     1165 GETUPVAL                         R51 33
     1166 GETTABLEKS                       R51 R51 K231 ["Always"]
     1168 SETTABLEKS                       R51 R50 K226 ["scrollBarVisibility"]
     1170 GETIMPORT                        R51 K233 [Enum.ScrollingDirection.Y]
     1172 SETTABLEKS                       R51 R50 K227 ["ScrollingDirection"]
     1174 GETIMPORT                        R51 K235 [Enum.AutomaticSize.Y]
     1176 SETTABLEKS                       R51 R50 K228 ["AutomaticCanvasSize"]
     1178 GETIMPORT                        R51 K65 [UDim2.new]
     1180 CALL                             R51 0 1
     1181 SETTABLEKS                       R51 R50 K229 ["CanvasSize"]
     1183 SETTABLEKS                       R50 R49 K222 ["scroll"]
     1185 DUPTABLE                         R50 K237 [{"HorizontalAlignment", "FillDirection", "SortOrder", "HorizontalFlex"}]
     1186 GETIMPORT                        R51 K239 [Enum.HorizontalAlignment.Left]
     1188 SETTABLEKS                       R51 R50 K88 ["HorizontalAlignment"]
     1190 GETIMPORT                        R51 K93 [Enum.FillDirection.Vertical]
     1192 SETTABLEKS                       R51 R50 K86 ["FillDirection"]
     1194 GETIMPORT                        R51 K95 [Enum.SortOrder.LayoutOrder]
     1196 SETTABLEKS                       R51 R50 K87 ["SortOrder"]
     1198 GETIMPORT                        R51 K242 [Enum.UIFlexAlignment.Fill]
     1200 SETTABLEKS                       R51 R50 K236 ["HorizontalFlex"]
     1202 SETTABLEKS                       R50 R49 K223 ["layout"]
     1204 NAMECALL                         R50 R31 K53 ["getNextOrder"]
     1206 CALL                             R50 1 1
     1207 SETTABLEKS                       R50 R49 K94 ["LayoutOrder"]
     1209 DUPTABLE                         R50 K247 [{"AudienceTabs", "SearchBarWidget", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
     1210 NAMECALL                         R51 R0 K213 ["shouldShowAudienceTabs"]
     1212 CALL                             R51 1 1
     1213 JUMPIFNOT                        R51 ; [+27]
     1214 GETUPVAL                         R51 11
     1215 GETTABLEKS                       R51 R51 K59 ["createElement"]
     1217 GETUPVAL                         R52 34
     1218 DUPTABLE                         R53 K251 [{"LayoutOrder", "ActiveTabId", "Tabs", "OnActivated"}]
     1219 NAMECALL                         R54 R32 K53 ["getNextOrder"]
     1221 CALL                             R54 1 1
     1222 SETTABLEKS                       R54 R53 K94 ["LayoutOrder"]
     1224 GETTABLEKS                       R54 R0 K7 ["state"]
     1226 GETTABLEKS                       R54 R54 K252 ["ActiveAudienceTab"]
     1228 SETTABLEKS                       R54 R53 K248 ["ActiveTabId"]
     1230 MOVE                             R56 R3
     1231 NAMECALL                         R54 R0 K253 ["getAudienceTabs"]
     1233 CALL                             R54 2 1
     1234 SETTABLEKS                       R54 R53 K249 ["Tabs"]
     1236 NEWCLOSURE                       R54 P12
     1237 CAPTURE                          VAL R0
     1238 SETTABLEKS                       R54 R53 K250 ["OnActivated"]
     1240 CALL                             R51 2 1
     1241 SETTABLEKS                       R51 R50 K243 ["AudienceTabs"]
     1243 MOVE                             R51 R35
     1244 JUMPIFNOT                        R51 ; [+52]
     1245 GETUPVAL                         R51 9
     1246 GETTABLEKS                       R51 R51 K59 ["createElement"]
     1248 GETUPVAL                         R52 35
     1249 DUPTABLE                         R53 K260 [{["LayoutOrder"], ["Writable"] = True, ["IsGroupGame"], ["SearchDisabled"], ["ActiveTab"], ["HeaderText"], ["DefaultText"]}]
     1250 MOVE                             R54 R36
     1251 JUMPIF                           R54 ; [+3]
     1252 NAMECALL                         R54 R32 K53 ["getNextOrder"]
     1254 CALL                             R54 1 1
     1255 SETTABLEKS                       R54 R53 K94 ["LayoutOrder"]
     1257 NAMECALL                         R54 R0 K206 ["isGroupGame"]
     1259 CALL                             R54 1 1
     1260 SETTABLEKS                       R54 R53 K255 ["IsGroupGame"]
     1262 SETTABLEKS                       R23 R53 K256 ["SearchDisabled"]
     1264 NAMECALL                         R55 R0 K213 ["shouldShowAudienceTabs"]
     1266 CALL                             R55 1 1
     1267 JUMPIFNOT                        R55 ; [+5]
     1268 GETTABLEKS                       R54 R0 K7 ["state"]
     1270 GETTABLEKS                       R54 R54 K252 ["ActiveAudienceTab"]
     1272 JUMP                             ; [+1]
     1273 LOADNIL                          R54
     1274 SETTABLEKS                       R54 R53 K257 ["ActiveTab"]
     1276 JUMPIFNOT                        R33 ; [+6]
     1277 LOADK                            R56 K220 ["Subtitle"]
     1278 LOADK                            R57 K261 ["Search"]
     1279 NAMECALL                         R54 R3 K35 ["getText"]
     1281 CALL                             R54 3 1
     1282 JUMP                             ; [+1]
     1283 LOADNIL                          R54
     1284 SETTABLEKS                       R54 R53 K258 ["HeaderText"]
     1286 JUMPIFNOT                        R33 ; [+6]
     1287 LOADK                            R56 K262 ["SearchBar"]
     1288 LOADK                            R57 K263 ["SearchUsers"]
     1289 NAMECALL                         R54 R3 K35 ["getText"]
     1291 CALL                             R54 3 1
     1292 JUMP                             ; [+1]
     1293 LOADNIL                          R54
     1294 SETTABLEKS                       R54 R53 K259 ["DefaultText"]
     1296 CALL                             R51 2 1
     1297 SETTABLEKS                       R51 R50 K244 ["SearchBarWidget"]
     1299 NAMECALL                         R52 R0 K213 ["shouldShowAudienceTabs"]
     1301 CALL                             R52 1 1
     1302 NOT                              R51 R52
     1303 JUMPIFNOT                        R51 ; [+13]
     1304 GETUPVAL                         R51 9
     1305 GETTABLEKS                       R51 R51 K59 ["createElement"]
     1307 GETUPVAL                         R52 36
     1308 DUPTABLE                         R53 K264 [{"LayoutOrder"}]
     1309 MOVE                             R54 R37
     1310 JUMPIF                           R54 ; [+3]
     1311 NAMECALL                         R54 R32 K53 ["getNextOrder"]
     1313 CALL                             R54 1 1
     1314 SETTABLEKS                       R54 R53 K94 ["LayoutOrder"]
     1316 CALL                             R51 2 1
     1317 SETTABLEKS                       R51 R50 K245 ["CollaboratorFilterWidget"]
     1319 NOT                              R51 R20
     1320 JUMPIFNOT                        R51 ; [+6]
     1321 GETUPVAL                         R51 9
     1322 GETTABLEKS                       R51 R51 K59 ["createElement"]
     1324 LOADK                            R52 K60 ["Frame"]
     1325 DUPTABLE                         R53 K267 [{["BackgroundTransparency"] = 1}]
     1326 CALL                             R51 2 1
     1327 SETTABLEKS                       R51 R50 K60 ["Frame"]
     1329 GETUPVAL                         R51 9
     1330 GETTABLEKS                       R51 R51 K59 ["createElement"]
     1332 GETUPVAL                         R52 37
     1333 DUPTABLE                         R53 K269 [{"LayoutOrder", "Writable", "IsGroupGame", "DisableEditPermission", "ActiveTab"}]
     1334 NAMECALL                         R54 R32 K53 ["getNextOrder"]
     1336 CALL                             R54 1 1
     1337 SETTABLEKS                       R54 R53 K94 ["LayoutOrder"]
     1339 SETTABLEKS                       R20 R53 K254 ["Writable"]
     1341 GETUPVAL                         R55 38
     1342 JUMPIFNOT                        R55 ; [+4]
     1343 NAMECALL                         R54 R0 K206 ["isGroupGame"]
     1345 CALL                             R54 1 1
     1346 JUMP                             ; [+1]
     1347 LOADNIL                          R54
     1348 SETTABLEKS                       R54 R53 K255 ["IsGroupGame"]
     1350 SETTABLEKS                       R23 R53 K268 ["DisableEditPermission"]
     1352 NAMECALL                         R55 R0 K213 ["shouldShowAudienceTabs"]
     1354 CALL                             R55 1 1
     1355 JUMPIFNOT                        R55 ; [+5]
     1356 GETTABLEKS                       R54 R0 K7 ["state"]
     1358 GETTABLEKS                       R54 R54 K252 ["ActiveAudienceTab"]
     1360 JUMP                             ; [+1]
     1361 LOADNIL                          R54
     1362 SETTABLEKS                       R54 R53 K257 ["ActiveTab"]
     1364 CALL                             R51 2 1
     1365 SETTABLEKS                       R51 R50 K246 ["CollaboratorsWidget"]
     1367 CALL                             R47 3 1
     1368 SETTABLEKS                       R47 R46 K77 ["ScrollingFrameNew"]
     1370 GETUPVAL                         R48 8
     1371 NOT                              R47 R48
     1372 JUMPIFNOT                        R47 ; [+204]
     1373 MOVE                             R47 R24
     1374 JUMPIFNOT                        R47 ; [+202]
     1375 GETUPVAL                         R47 9
     1376 GETTABLEKS                       R47 R47 K59 ["createElement"]
     1378 GETUPVAL                         R48 39
     1379 DUPTABLE                         R49 K271 [{"LayoutOrder", "Size", "Layout", "AutomaticCanvasSize", "Spacing"}]
     1380 NAMECALL                         R50 R31 K53 ["getNextOrder"]
     1382 CALL                             R50 1 1
     1383 SETTABLEKS                       R50 R49 K94 ["LayoutOrder"]
     1385 GETIMPORT                        R50 K65 [UDim2.new]
     1387 LOADN                            R51 1
     1388 LOADN                            R52 0
     1389 LOADN                            R53 1
     1390 MINUS                            R54 R30
     1391 CALL                             R50 4 1
     1392 SETTABLEKS                       R50 R49 K61 ["Size"]
     1394 GETIMPORT                        R50 K93 [Enum.FillDirection.Vertical]
     1396 SETTABLEKS                       R50 R49 K67 ["Layout"]
     1398 GETIMPORT                        R50 K235 [Enum.AutomaticSize.Y]
     1400 SETTABLEKS                       R50 R49 K228 ["AutomaticCanvasSize"]
     1402 GETIMPORT                        R50 K99 [UDim.new]
     1404 LOADN                            R51 0
     1405 JUMPIFNOT                        R20 ; [+5]
     1406 GETTABLEKS                       R52 R2 K272 ["scrollingFrame"]
     1408 GETTABLEKS                       R52 R52 K273 ["yPadding"]
     1410 JUMP                             ; [+4]
     1411 GETTABLEKS                       R52 R2 K272 ["scrollingFrame"]
     1413 GETTABLEKS                       R52 R52 K274 ["yPaddingNonOwner"]
     1415 CALL                             R50 2 1
     1416 SETTABLEKS                       R50 R49 K270 ["Spacing"]
     1418 DUPTABLE                         R50 K247 [{"AudienceTabs", "SearchBarWidget", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
     1419 NAMECALL                         R51 R0 K213 ["shouldShowAudienceTabs"]
     1421 CALL                             R51 1 1
     1422 JUMPIFNOT                        R51 ; [+27]
     1423 GETUPVAL                         R51 11
     1424 GETTABLEKS                       R51 R51 K59 ["createElement"]
     1426 GETUPVAL                         R52 34
     1427 DUPTABLE                         R53 K251 [{"LayoutOrder", "ActiveTabId", "Tabs", "OnActivated"}]
     1428 NAMECALL                         R54 R32 K53 ["getNextOrder"]
     1430 CALL                             R54 1 1
     1431 SETTABLEKS                       R54 R53 K94 ["LayoutOrder"]
     1433 GETTABLEKS                       R54 R0 K7 ["state"]
     1435 GETTABLEKS                       R54 R54 K252 ["ActiveAudienceTab"]
     1437 SETTABLEKS                       R54 R53 K248 ["ActiveTabId"]
     1439 MOVE                             R56 R3
     1440 NAMECALL                         R54 R0 K253 ["getAudienceTabs"]
     1442 CALL                             R54 2 1
     1443 SETTABLEKS                       R54 R53 K249 ["Tabs"]
     1445 NEWCLOSURE                       R54 P13
     1446 CAPTURE                          VAL R0
     1447 SETTABLEKS                       R54 R53 K250 ["OnActivated"]
     1449 CALL                             R51 2 1
     1450 SETTABLEKS                       R51 R50 K243 ["AudienceTabs"]
     1452 MOVE                             R51 R35
     1453 JUMPIFNOT                        R51 ; [+52]
     1454 GETUPVAL                         R51 9
     1455 GETTABLEKS                       R51 R51 K59 ["createElement"]
     1457 GETUPVAL                         R52 35
     1458 DUPTABLE                         R53 K260 [{["LayoutOrder"], ["Writable"] = True, ["IsGroupGame"], ["SearchDisabled"], ["ActiveTab"], ["HeaderText"], ["DefaultText"]}]
     1459 MOVE                             R54 R36
     1460 JUMPIF                           R54 ; [+3]
     1461 NAMECALL                         R54 R32 K53 ["getNextOrder"]
     1463 CALL                             R54 1 1
     1464 SETTABLEKS                       R54 R53 K94 ["LayoutOrder"]
     1466 NAMECALL                         R54 R0 K206 ["isGroupGame"]
     1468 CALL                             R54 1 1
     1469 SETTABLEKS                       R54 R53 K255 ["IsGroupGame"]
     1471 SETTABLEKS                       R23 R53 K256 ["SearchDisabled"]
     1473 NAMECALL                         R55 R0 K213 ["shouldShowAudienceTabs"]
     1475 CALL                             R55 1 1
     1476 JUMPIFNOT                        R55 ; [+5]
     1477 GETTABLEKS                       R54 R0 K7 ["state"]
     1479 GETTABLEKS                       R54 R54 K252 ["ActiveAudienceTab"]
     1481 JUMP                             ; [+1]
     1482 LOADNIL                          R54
     1483 SETTABLEKS                       R54 R53 K257 ["ActiveTab"]
     1485 JUMPIFNOT                        R33 ; [+6]
     1486 LOADK                            R56 K220 ["Subtitle"]
     1487 LOADK                            R57 K261 ["Search"]
     1488 NAMECALL                         R54 R3 K35 ["getText"]
     1490 CALL                             R54 3 1
     1491 JUMP                             ; [+1]
     1492 LOADNIL                          R54
     1493 SETTABLEKS                       R54 R53 K258 ["HeaderText"]
     1495 JUMPIFNOT                        R33 ; [+6]
     1496 LOADK                            R56 K262 ["SearchBar"]
     1497 LOADK                            R57 K263 ["SearchUsers"]
     1498 NAMECALL                         R54 R3 K35 ["getText"]
     1500 CALL                             R54 3 1
     1501 JUMP                             ; [+1]
     1502 LOADNIL                          R54
     1503 SETTABLEKS                       R54 R53 K259 ["DefaultText"]
     1505 CALL                             R51 2 1
     1506 SETTABLEKS                       R51 R50 K244 ["SearchBarWidget"]
     1508 NAMECALL                         R52 R0 K213 ["shouldShowAudienceTabs"]
     1510 CALL                             R52 1 1
     1511 NOT                              R51 R52
     1512 JUMPIFNOT                        R51 ; [+13]
     1513 GETUPVAL                         R51 9
     1514 GETTABLEKS                       R51 R51 K59 ["createElement"]
     1516 GETUPVAL                         R52 36
     1517 DUPTABLE                         R53 K264 [{"LayoutOrder"}]
     1518 MOVE                             R54 R37
     1519 JUMPIF                           R54 ; [+3]
     1520 NAMECALL                         R54 R32 K53 ["getNextOrder"]
     1522 CALL                             R54 1 1
     1523 SETTABLEKS                       R54 R53 K94 ["LayoutOrder"]
     1525 CALL                             R51 2 1
     1526 SETTABLEKS                       R51 R50 K245 ["CollaboratorFilterWidget"]
     1528 NOT                              R51 R20
     1529 JUMPIFNOT                        R51 ; [+6]
     1530 GETUPVAL                         R51 9
     1531 GETTABLEKS                       R51 R51 K59 ["createElement"]
     1533 LOADK                            R52 K60 ["Frame"]
     1534 DUPTABLE                         R53 K267 [{["BackgroundTransparency"] = 1}]
     1535 CALL                             R51 2 1
     1536 SETTABLEKS                       R51 R50 K60 ["Frame"]
     1538 GETUPVAL                         R51 9
     1539 GETTABLEKS                       R51 R51 K59 ["createElement"]
     1541 GETUPVAL                         R52 37
     1542 DUPTABLE                         R53 K269 [{"LayoutOrder", "Writable", "IsGroupGame", "DisableEditPermission", "ActiveTab"}]
     1543 NAMECALL                         R54 R32 K53 ["getNextOrder"]
     1545 CALL                             R54 1 1
     1546 SETTABLEKS                       R54 R53 K94 ["LayoutOrder"]
     1548 SETTABLEKS                       R20 R53 K254 ["Writable"]
     1550 GETUPVAL                         R55 38
     1551 JUMPIFNOT                        R55 ; [+4]
     1552 NAMECALL                         R54 R0 K206 ["isGroupGame"]
     1554 CALL                             R54 1 1
     1555 JUMP                             ; [+1]
     1556 LOADNIL                          R54
     1557 SETTABLEKS                       R54 R53 K255 ["IsGroupGame"]
     1559 SETTABLEKS                       R23 R53 K268 ["DisableEditPermission"]
     1561 NAMECALL                         R55 R0 K213 ["shouldShowAudienceTabs"]
     1563 CALL                             R55 1 1
     1564 JUMPIFNOT                        R55 ; [+5]
     1565 GETTABLEKS                       R54 R0 K7 ["state"]
     1567 GETTABLEKS                       R54 R54 K252 ["ActiveAudienceTab"]
     1569 JUMP                             ; [+1]
     1570 LOADNIL                          R54
     1571 SETTABLEKS                       R54 R53 K257 ["ActiveTab"]
     1573 CALL                             R51 2 1
     1574 SETTABLEKS                       R51 R50 K246 ["CollaboratorsWidget"]
     1576 CALL                             R47 3 1
     1577 SETTABLEKS                       R47 R46 K78 ["ScrollingFrame"]
     1579 JUMPIFNOT                        R26 ; [+75]
     1580 GETUPVAL                         R47 9
     1581 GETTABLEKS                       R47 R47 K59 ["createElement"]
     1583 LOADK                            R48 K60 ["Frame"]
     1584 DUPTABLE                         R49 K276 [{["BackgroundTransparency"] = 1, ["BackgroundColor3"], ["LayoutOrder"], ["Size"], ["BorderSizePixel"] = 0}]
     1585 GETTABLEKS                       R50 R2 K66 ["backgroundColor"]
     1587 SETTABLEKS                       R50 R49 K62 ["BackgroundColor3"]
     1589 NAMECALL                         R50 R31 K53 ["getNextOrder"]
     1591 CALL                             R50 1 1
     1592 SETTABLEKS                       R50 R49 K94 ["LayoutOrder"]
     1594 GETIMPORT                        R50 K65 [UDim2.new]
     1596 LOADN                            R51 1
     1597 LOADN                            R52 0
     1598 LOADN                            R53 0
     1599 GETTABLEKS                       R54 R2 K46 ["saveMessage"]
     1601 GETTABLEKS                       R54 R54 K47 ["boxHeight"]
     1603 CALL                             R50 4 1
     1604 SETTABLEKS                       R50 R49 K61 ["Size"]
     1606 DUPTABLE                         R50 K277 [{"Text"}]
     1607 GETUPVAL                         R51 9
     1608 GETTABLEKS                       R51 R51 K59 ["createElement"]
     1610 LOADK                            R52 K278 ["TextLabel"]
     1611 GETUPVAL                         R53 40
     1612 GETTABLEKS                       R53 R53 K279 ["Dictionary"]
     1614 GETTABLEKS                       R53 R53 K280 ["join"]
     1616 GETTABLEKS                       R54 R2 K46 ["saveMessage"]
     1618 GETTABLEKS                       R54 R54 K281 ["textStyle"]
     1620 DUPTABLE                         R55 K286 [{["AnchorPoint"], ["Position"], ["Text"], ["TextXAlignment"], ["BorderSizePixel"] = 0, ["TextWrapped"] = True, ["Size"], ["BackgroundTransparency"] = 1}]
     1621 GETIMPORT                        R56 K288 [Vector2.new]
     1623 LOADN                            R57 0
     1624 LOADK                            R58 K289 [0.5]
     1625 CALL                             R56 2 1
     1626 SETTABLEKS                       R56 R55 K282 ["AnchorPoint"]
     1628 GETTABLEKS                       R56 R2 K46 ["saveMessage"]
     1630 GETTABLEKS                       R56 R56 K290 ["InnerTextPosition"]
     1632 SETTABLEKS                       R56 R55 K283 ["Position"]
     1634 SETTABLEKS                       R28 R55 K141 ["Text"]
     1636 GETIMPORT                        R56 K291 [Enum.TextXAlignment.Left]
     1638 SETTABLEKS                       R56 R55 K284 ["TextXAlignment"]
     1640 GETIMPORT                        R56 K65 [UDim2.new]
     1642 LOADK                            R57 K292 [0.55]
     1643 LOADN                            R58 0
     1644 LOADN                            R59 1
     1645 LOADN                            R60 0
     1646 CALL                             R56 4 1
     1647 SETTABLEKS                       R56 R55 K61 ["Size"]
     1649 CALL                             R53 2 -1
     1650 CALL                             R51 -1 1
     1651 SETTABLEKS                       R51 R50 K141 ["Text"]
     1653 CALL                             R47 3 1
     1654 JUMP                             ; [+1]
     1655 LOADNIL                          R47
     1656 SETTABLEKS                       R47 R46 K79 ["TextFrame"]
     1658 GETUPVAL                         R47 0
     1659 JUMPIFNOT                        R47 ; [+15]
     1660 GETTABLEKS                       R47 R0 K7 ["state"]
     1662 GETTABLEKS                       R47 R47 K293 ["upsellDialogEnabled"]
     1664 JUMPIFNOT                        R47 ; [+10]
     1665 GETUPVAL                         R47 11
     1666 GETTABLEKS                       R47 R47 K59 ["createElement"]
     1668 GETUPVAL                         R48 41
     1669 DUPTABLE                         R49 K294 [{"onClose"}]
     1670 NEWCLOSURE                       R50 P14
     1671 CAPTURE                          VAL R0
     1672 SETTABLEKS                       R50 R49 K154 ["onClose"]
     1674 CALL                             R47 2 1
     1675 SETTABLEKS                       R47 R46 K80 ["upsellDialog"]
     1677 MOVE                             R47 R24
     1678 JUMPIFNOT                        R47 ; [+62]
     1679 GETUPVAL                         R47 9
     1680 GETTABLEKS                       R47 R47 K59 ["createElement"]
     1682 GETUPVAL                         R48 10
     1683 DUPTABLE                         R49 K102 [{"LayoutOrder", "Size"}]
     1684 NAMECALL                         R50 R31 K53 ["getNextOrder"]
     1686 CALL                             R50 1 1
     1687 SETTABLEKS                       R50 R49 K94 ["LayoutOrder"]
     1689 GETIMPORT                        R50 K65 [UDim2.new]
     1691 LOADN                            R51 1
     1692 LOADN                            R52 0
     1693 LOADN                            R53 0
     1694 GETTABLEKS                       R54 R2 K45 ["footer"]
     1696 GETTABLEKS                       R54 R54 K44 ["height"]
     1698 CALL                             R50 4 1
     1699 SETTABLEKS                       R50 R49 K61 ["Size"]
     1701 DUPTABLE                         R50 K296 [{"Footer"}]
     1702 GETUPVAL                         R51 9
     1703 GETTABLEKS                       R51 R51 K59 ["createElement"]
     1705 GETUPVAL                         R52 42
     1706 DUPTABLE                         R53 K301 [{"IsTeamCreateEnabled", "OnSavePressed", "OnCancelPressed", "OnViewAllPermissionsPressed", "FetchGameLink"}]
     1707 SETTABLEKS                       R25 R53 K105 ["IsTeamCreateEnabled"]
     1709 NEWCLOSURE                       R54 P15
     1710 CAPTURE                          VAL R0
     1711 SETTABLEKS                       R54 R53 K297 ["OnSavePressed"]
     1713 NEWCLOSURE                       R54 P16
     1714 CAPTURE                          VAL R0
     1715 SETTABLEKS                       R54 R53 K298 ["OnCancelPressed"]
     1717 GETUPVAL                         R55 1
     1718 GETTABLEKS                       R55 R55 K302 ["fflagViewAllPermissionsInCreatorHub"]
     1720 JUMPIFNOT                        R55 ; [+7]
     1721 NAMECALL                         R55 R0 K206 ["isGroupGame"]
     1723 CALL                             R55 1 1
     1724 JUMPIFNOT                        R55 ; [+3]
     1725 NEWCLOSURE                       R54 P17
     1726 CAPTURE                          VAL R0
     1727 JUMP                             ; [+1]
     1728 LOADNIL                          R54
     1729 SETTABLEKS                       R54 R53 K299 ["OnViewAllPermissionsPressed"]
     1731 GETTABLEKS                       R54 R0 K0 ["props"]
     1733 GETTABLEKS                       R54 R54 K300 ["FetchGameLink"]
     1735 SETTABLEKS                       R54 R53 K300 ["FetchGameLink"]
     1737 CALL                             R51 2 1
     1738 SETTABLEKS                       R51 R50 K295 ["Footer"]
     1740 CALL                             R47 3 1
     1741 SETTABLEKS                       R47 R46 K81 ["FooterContent"]
     1743 NOT                              R47 R17
     1744 JUMPIFNOT                        R47 ; [+22]
     1745 NOT                              R47 R18
     1746 JUMPIFNOT                        R47 ; [+20]
     1747 GETUPVAL                         R47 9
     1748 GETTABLEKS                       R47 R47 K59 ["createElement"]
     1750 GETUPVAL                         R48 43
     1751 DUPTABLE                         R49 K303 [{"AnchorPoint", "Position"}]
     1752 GETIMPORT                        R50 K288 [Vector2.new]
     1754 LOADK                            R51 K289 [0.5]
     1755 LOADK                            R52 K289 [0.5]
     1756 CALL                             R50 2 1
     1757 SETTABLEKS                       R50 R49 K282 ["AnchorPoint"]
     1759 GETIMPORT                        R50 K305 [UDim2.fromScale]
     1761 LOADK                            R51 K289 [0.5]
     1762 LOADK                            R52 K289 [0.5]
     1763 CALL                             R50 2 1
     1764 SETTABLEKS                       R50 R49 K283 ["Position"]
     1766 CALL                             R47 2 1
     1767 SETTABLEKS                       R47 R46 K82 ["LoadingIndicator"]
     1769 MOVE                             R47 R18
     1770 JUMPIFNOT                        R47 ; [+46]
     1771 GETUPVAL                         R47 9
     1772 GETTABLEKS                       R47 R47 K59 ["createElement"]
     1774 LOADK                            R48 K278 ["TextLabel"]
     1775 DUPTABLE                         R49 K309 [{"Text", "AnchorPoint", "Position", "TextColor3", "TextSize", "Font"}]
     1776 SETTABLEKS                       R19 R49 K141 ["Text"]
     1778 GETIMPORT                        R50 K288 [Vector2.new]
     1780 LOADK                            R51 K289 [0.5]
     1781 LOADK                            R52 K289 [0.5]
     1782 CALL                             R50 2 1
     1783 SETTABLEKS                       R50 R49 K282 ["AnchorPoint"]
     1785 GETIMPORT                        R50 K305 [UDim2.fromScale]
     1787 LOADK                            R51 K289 [0.5]
     1788 LOADK                            R52 K310 [0.25]
     1789 CALL                             R50 2 1
     1790 SETTABLEKS                       R50 R49 K283 ["Position"]
     1792 GETTABLEKS                       R50 R2 K311 ["fontStyle"]
     1794 GETTABLEKS                       R50 R50 K312 ["Normal"]
     1796 GETTABLEKS                       R50 R50 K306 ["TextColor3"]
     1798 SETTABLEKS                       R50 R49 K306 ["TextColor3"]
     1800 GETTABLEKS                       R50 R2 K311 ["fontStyle"]
     1802 GETTABLEKS                       R50 R50 K312 ["Normal"]
     1804 GETTABLEKS                       R50 R50 K307 ["TextSize"]
     1806 SETTABLEKS                       R50 R49 K307 ["TextSize"]
     1808 GETTABLEKS                       R50 R2 K311 ["fontStyle"]
     1810 GETTABLEKS                       R50 R50 K312 ["Normal"]
     1812 GETTABLEKS                       R50 R50 K308 ["Font"]
     1814 SETTABLEKS                       R50 R49 K308 ["Font"]
     1816 CALL                             R47 2 1
     1817 SETTABLEKS                       R47 R46 K83 ["FailureText"]
     1819 CALL                             R43 3 -1
     1820 RETURN                           R43 -1

PROTO_52:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 DUPTABLE                         R3 K16 [{"LoadState", "SaveState", "OwnerId", "OwnerType", "GroupOwnerUserId", "HasCollaborators", "HasCurrentEditCollaborators", "HasOutsideAgeBucketEditCollaborators", "HasCurrentUserBlockingCollaborators", "OwnerIsNotAgeVerified", "OwnerIsCountryBlocked", "GroupRolePermissions", "Is17PlusGame", "HasUnsavedChanges", "SelectedPill", "CanManageEarlyTesters"}]
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
      113 GETUPVAL                         R4 12
      114 MOVE                             R5 R0
      115 CALL                             R4 1 1
      116 SETTABLEKS                       R4 R3 K14 ["SelectedPill"]
      118 GETUPVAL                         R4 13
      119 MOVE                             R5 R0
      120 CALL                             R4 1 1
      121 SETTABLEKS                       R4 R3 K15 ["CanManageEarlyTesters"]
      123 RETURN                           R3 1

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
       21 LOADK                            R5 K6 ["StudioPublishService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K1 [game]
       27 LOADK                            R6 K8 ["StudioService"]
       28 NAMECALL                         R4 R4 K7 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K1 [game]
       33 LOADK                            R7 K9 ["BrowserService"]
       34 NAMECALL                         R5 R5 K7 ["GetService"]
       36 CALL                             R5 2 1
       37 GETIMPORT                        R6 K1 [game]
       39 LOADK                            R8 K10 ["StartAuthorizationLink"]
       40 LOADK                            R9 K11 ["https://www.roblox.com/my/account?creatorCollaboration"]
       41 NAMECALL                         R6 R6 K12 ["DefineFastString"]
       43 CALL                             R6 3 1
       44 GETIMPORT                        R7 K14 [script]
       46 GETTABLEKS                       R7 R7 K15 ["Parent"]
       48 GETTABLEKS                       R7 R7 K15 ["Parent"]
       50 GETTABLEKS                       R7 R7 K15 ["Parent"]
       52 GETIMPORT                        R8 K17 [require]
       54 GETTABLEKS                       R9 R7 K18 ["Packages"]
       56 GETTABLEKS                       R9 R9 K19 ["Roact"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K17 [require]
       61 GETTABLEKS                       R10 R7 K18 ["Packages"]
       63 GETTABLEKS                       R10 R10 K20 ["RoactRodux"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K17 [require]
       68 GETTABLEKS                       R11 R7 K18 ["Packages"]
       70 GETTABLEKS                       R11 R11 K21 ["Cryo"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K17 [require]
       75 GETTABLEKS                       R12 R7 K22 ["Bin"]
       77 GETTABLEKS                       R12 R12 K23 ["defineLuaFlags"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K17 [require]
       82 GETTABLEKS                       R13 R7 K18 ["Packages"]
       84 GETTABLEKS                       R13 R13 K24 ["Framework"]
       86 CALL                             R12 1 1
       87 GETTABLEKS                       R13 R12 K25 ["ContextServices"]
       89 GETTABLEKS                       R14 R13 K26 ["withContext"]
       91 GETTABLEKS                       R15 R12 K27 ["Style"]
       93 GETTABLEKS                       R15 R15 K28 ["Stylizer"]
       95 GETTABLEKS                       R16 R13 K29 ["Localization"]
       97 GETTABLEKS                       R17 R12 K30 ["UI"]
       99 GETTABLEKS                       R18 R17 K31 ["ScrollingFrame"]
      101 GETTABLEKS                       R19 R17 K32 ["Container"]
      103 GETTABLEKS                       R20 R17 K33 ["LoadingIndicator"]
      105 GETTABLEKS                       R21 R17 K34 ["StyledDialog"]
      107 GETIMPORT                        R22 K17 [require]
      109 GETTABLEKS                       R23 R7 K18 ["Packages"]
      111 GETTABLEKS                       R23 R23 K35 ["Foundation"]
      113 CALL                             R22 1 1
      114 GETTABLEKS                       R23 R22 K36 ["Text"]
      116 GETTABLEKS                       R24 R22 K37 ["ScrollView"]
      118 GETTABLEKS                       R25 R22 K38 ["Enums"]
      120 GETTABLEKS                       R25 R25 K39 ["ScrollBarVisibility"]
      122 GETTABLEKS                       R26 R22 K38 ["Enums"]
      124 GETTABLEKS                       R27 R22 K40 ["Icon"]
      126 GETTABLEKS                       R28 R22 K41 ["IconButton"]
      128 GETTABLEKS                       R29 R22 K38 ["Enums"]
      130 GETTABLEKS                       R29 R29 K42 ["IconVariant"]
      132 GETTABLEKS                       R30 R22 K43 ["SystemBanner"]
      134 GETTABLEKS                       R31 R22 K44 ["FeedbackAlert"]
      136 GETTABLEKS                       R32 R22 K38 ["Enums"]
      138 GETTABLEKS                       R32 R32 K45 ["AlertVariant"]
      140 GETTABLEKS                       R33 R22 K38 ["Enums"]
      142 GETTABLEKS                       R33 R33 K46 ["AlertSeverity"]
      144 GETTABLEKS                       R34 R22 K38 ["Enums"]
      146 GETTABLEKS                       R34 R34 K47 ["ButtonVariant"]
      148 GETIMPORT                        R35 K17 [require]
      150 GETTABLEKS                       R36 R7 K48 ["Src"]
      152 GETTABLEKS                       R36 R36 K49 ["Util"]
      154 GETTABLEKS                       R36 R36 K50 ["ShowDialog"]
      156 CALL                             R35 1 1
      157 GETIMPORT                        R36 K17 [require]
      159 GETTABLEKS                       R37 R7 K48 ["Src"]
      161 GETTABLEKS                       R37 R37 K51 ["Components"]
      163 GETTABLEKS                       R37 R37 K52 ["CollaboratorsWidget"]
      165 CALL                             R36 1 1
      166 GETIMPORT                        R37 K17 [require]
      168 GETTABLEKS                       R38 R7 K48 ["Src"]
      170 GETTABLEKS                       R38 R38 K51 ["Components"]
      172 GETTABLEKS                       R38 R38 K53 ["CollaboratorSearchWidget"]
      174 CALL                             R37 1 1
      175 GETIMPORT                        R38 K17 [require]
      177 GETTABLEKS                       R39 R7 K48 ["Src"]
      179 GETTABLEKS                       R39 R39 K51 ["Components"]
      181 GETTABLEKS                       R39 R39 K54 ["CollaboratorFilterWidget"]
      183 CALL                             R38 1 1
      184 GETIMPORT                        R39 K17 [require]
      186 GETTABLEKS                       R40 R7 K48 ["Src"]
      188 GETTABLEKS                       R40 R40 K51 ["Components"]
      190 GETTABLEKS                       R40 R40 K55 ["CollaboratorAudienceTabs"]
      192 CALL                             R39 1 1
      193 GETIMPORT                        R40 K17 [require]
      195 GETTABLEKS                       R41 R7 K48 ["Src"]
      197 GETTABLEKS                       R41 R41 K51 ["Components"]
      199 GETTABLEKS                       R41 R41 K56 ["Footer"]
      201 CALL                             R40 1 1
      202 GETIMPORT                        R41 K17 [require]
      204 GETTABLEKS                       R42 R7 K48 ["Src"]
      206 GETTABLEKS                       R42 R42 K49 ["Util"]
      208 GETTABLEKS                       R42 R42 K57 ["Constants"]
      210 CALL                             R41 1 1
      211 GETIMPORT                        R42 K17 [require]
      213 GETTABLEKS                       R43 R7 K48 ["Src"]
      215 GETTABLEKS                       R43 R43 K49 ["Util"]
      217 GETTABLEKS                       R43 R43 K58 ["ShouldShowAudienceTabs"]
      219 CALL                             R42 1 1
      220 GETIMPORT                        R43 K17 [require]
      222 GETTABLEKS                       R44 R7 K48 ["Src"]
      224 GETTABLEKS                       R44 R44 K59 ["Thunks"]
      226 GETTABLEKS                       R44 R44 K60 ["SavePermissions"]
      228 CALL                             R43 1 1
      229 GETIMPORT                        R44 K17 [require]
      231 GETTABLEKS                       R45 R7 K48 ["Src"]
      233 GETTABLEKS                       R45 R45 K59 ["Thunks"]
      235 GETTABLEKS                       R45 R45 K61 ["PermissionsLoader"]
      237 CALL                             R44 1 1
      238 GETIMPORT                        R45 K17 [require]
      240 GETTABLEKS                       R46 R7 K48 ["Src"]
      242 GETTABLEKS                       R46 R46 K59 ["Thunks"]
      244 GETTABLEKS                       R46 R46 K62 ["SendAllSearchItemLogs"]
      246 CALL                             R45 1 1
      247 GETIMPORT                        R46 K1 [game]
      249 LOADK                            R48 K63 ["UpsellCollabSafety2"]
      250 NAMECALL                         R46 R46 K3 ["GetFastFlag"]
      252 CALL                             R46 2 1
      253 GETIMPORT                        R47 K1 [game]
      255 LOADK                            R49 K64 ["UpsellCollabTrustedConnection2"]
      256 NAMECALL                         R47 R47 K3 ["GetFastFlag"]
      258 CALL                             R47 2 1
      259 GETIMPORT                        R48 K17 [require]
      261 GETTABLEKS                       R49 R7 K48 ["Src"]
      263 GETTABLEKS                       R49 R49 K65 ["Networking"]
      265 GETTABLEKS                       R49 R49 K66 ["Requests"]
      267 GETTABLEKS                       R49 R49 K67 ["GetAMPRequest"]
      269 CALL                             R48 1 1
      270 GETIMPORT                        R49 K17 [require]
      272 GETTABLEKS                       R50 R7 K48 ["Src"]
      274 GETTABLEKS                       R50 R50 K49 ["Util"]
      276 GETTABLEKS                       R50 R50 K68 ["IsLikelyCollaboratorPrefetchEnabled"]
      278 CALL                             R49 1 1
      279 MOVE                             R50 R49
      280 CALL                             R50 0 1
      281 LOADNIL                          R51
      282 LOADNIL                          R52
      283 JUMPIFNOT                        R50 ; [+20]
      284 GETIMPORT                        R53 K17 [require]
      286 GETTABLEKS                       R54 R7 K48 ["Src"]
      288 GETTABLEKS                       R54 R54 K59 ["Thunks"]
      290 GETTABLEKS                       R54 R54 K69 ["PrefetchLikelyCollaborators"]
      292 CALL                             R53 1 1
      293 MOVE                             R51 R53
      294 GETIMPORT                        R53 K17 [require]
      296 GETTABLEKS                       R54 R7 K48 ["Src"]
      298 GETTABLEKS                       R54 R54 K70 ["Selectors"]
      300 GETTABLEKS                       R54 R54 K71 ["IsGame17Plus"]
      302 CALL                             R53 1 1
      303 MOVE                             R52 R53
      304 GETIMPORT                        R53 K17 [require]
      306 GETTABLEKS                       R54 R7 K48 ["Src"]
      308 GETTABLEKS                       R54 R54 K49 ["Util"]
      310 GETTABLEKS                       R54 R54 K72 ["LoadState"]
      312 CALL                             R53 1 1
      313 GETIMPORT                        R54 K17 [require]
      315 GETTABLEKS                       R55 R7 K48 ["Src"]
      317 GETTABLEKS                       R55 R55 K49 ["Util"]
      319 GETTABLEKS                       R55 R55 K73 ["SaveState"]
      321 CALL                             R54 1 1
      322 GETIMPORT                        R55 K17 [require]
      324 GETTABLEKS                       R56 R7 K48 ["Src"]
      326 GETTABLEKS                       R56 R56 K70 ["Selectors"]
      328 GETTABLEKS                       R56 R56 K74 ["GetHasCollaborators"]
      330 CALL                             R55 1 1
      331 GETIMPORT                        R56 K17 [require]
      333 GETTABLEKS                       R57 R7 K48 ["Src"]
      335 GETTABLEKS                       R57 R57 K70 ["Selectors"]
      337 GETTABLEKS                       R57 R57 K75 ["GetHasCurrentEditCollaborators"]
      339 CALL                             R56 1 1
      340 GETIMPORT                        R57 K17 [require]
      342 GETTABLEKS                       R58 R7 K48 ["Src"]
      344 GETTABLEKS                       R58 R58 K70 ["Selectors"]
      346 GETTABLEKS                       R58 R58 K76 ["GetHasUnsavedChanges"]
      348 CALL                             R57 1 1
      349 GETIMPORT                        R58 K17 [require]
      351 GETTABLEKS                       R59 R7 K48 ["Src"]
      353 GETTABLEKS                       R59 R59 K70 ["Selectors"]
      355 GETTABLEKS                       R59 R59 K77 ["GetHasOutsideAgeBucketEditCollaborators"]
      357 CALL                             R58 1 1
      358 GETIMPORT                        R59 K17 [require]
      360 GETTABLEKS                       R60 R7 K48 ["Src"]
      362 GETTABLEKS                       R60 R60 K70 ["Selectors"]
      364 GETTABLEKS                       R60 R60 K78 ["GetCurrentUserIsBlockingCollaborators"]
      366 CALL                             R59 1 1
      367 GETIMPORT                        R60 K17 [require]
      369 GETTABLEKS                       R61 R7 K48 ["Src"]
      371 GETTABLEKS                       R61 R61 K70 ["Selectors"]
      373 GETTABLEKS                       R61 R61 K79 ["GetOwnerIsNotAgeVerified"]
      375 CALL                             R60 1 1
      376 GETIMPORT                        R61 K17 [require]
      378 GETTABLEKS                       R62 R7 K48 ["Src"]
      380 GETTABLEKS                       R62 R62 K70 ["Selectors"]
      382 GETTABLEKS                       R62 R62 K80 ["GetSelectedFilterPill"]
      384 CALL                             R61 1 1
      385 GETIMPORT                        R62 K17 [require]
      387 GETTABLEKS                       R63 R7 K48 ["Src"]
      389 GETTABLEKS                       R63 R63 K70 ["Selectors"]
      391 GETTABLEKS                       R63 R63 K81 ["CanManageEarlyTesters"]
      393 CALL                             R62 1 1
      394 GETIMPORT                        R63 K17 [require]
      396 GETTABLEKS                       R64 R7 K48 ["Src"]
      398 GETTABLEKS                       R64 R64 K70 ["Selectors"]
      400 GETTABLEKS                       R64 R64 K82 ["GetOwnerIsCountryBlocked"]
      402 CALL                             R63 1 1
      403 GETIMPORT                        R64 K17 [require]
      405 GETTABLEKS                       R65 R7 K48 ["Src"]
      407 GETTABLEKS                       R65 R65 K49 ["Util"]
      409 GETTABLEKS                       R65 R65 K83 ["IsTeamCreateEnabled"]
      411 CALL                             R64 1 1
      412 GETTABLEKS                       R65 R12 K49 ["Util"]
      414 GETTABLEKS                       R66 R65 K84 ["LayoutOrderIterator"]
      416 GETIMPORT                        R67 K17 [require]
      418 GETTABLEKS                       R68 R7 K48 ["Src"]
      420 GETTABLEKS                       R68 R68 K49 ["Util"]
      422 GETTABLEKS                       R68 R68 K85 ["Analytics"]
      424 CALL                             R67 1 1
      425 OR                               R68 R2 R1
      426 GETTABLEKS                       R69 R22 K86 ["View"]
      428 GETIMPORT                        R70 K17 [require]
      430 GETTABLEKS                       R71 R7 K18 ["Packages"]
      432 GETTABLEKS                       R71 R71 K87 ["React"]
      434 CALL                             R70 1 1
      435 GETIMPORT                        R71 K17 [require]
      437 GETTABLEKS                       R72 R7 K48 ["Src"]
      439 GETTABLEKS                       R72 R72 K51 ["Components"]
      441 GETTABLEKS                       R72 R72 K88 ["Header"]
      443 CALL                             R71 1 1
      444 GETTABLEKS                       R72 R8 K89 ["PureComponent"]
      446 LOADK                            R74 K90 ["PermissionsView"]
      447 NAMECALL                         R72 R72 K91 ["extend"]
      449 CALL                             R72 2 1
      450 GETIMPORT                        R73 K17 [require]
      452 GETTABLEKS                       R74 R7 K48 ["Src"]
      454 GETTABLEKS                       R74 R74 K49 ["Util"]
      456 GETTABLEKS                       R74 R74 K92 ["Telemetry"]
      458 GETTABLEKS                       R74 R74 K93 ["CTAClickedEvent"]
      460 CALL                             R73 1 1
      461 GETIMPORT                        R74 K17 [require]
      463 GETTABLEKS                       R75 R7 K48 ["Src"]
      465 GETTABLEKS                       R75 R75 K49 ["Util"]
      467 GETTABLEKS                       R75 R75 K92 ["Telemetry"]
      469 GETTABLEKS                       R75 R75 K94 ["SafetyUpsellBannerShownEvent"]
      471 CALL                             R74 1 1
      472 GETIMPORT                        R75 K17 [require]
      474 GETTABLEKS                       R76 R7 K18 ["Packages"]
      476 GETTABLEKS                       R76 R76 K95 ["TelemetryProtocol"]
      478 CALL                             R75 1 1
      479 GETTABLEKS                       R76 R75 K96 ["new"]
      481 CALL                             R76 0 1
      482 GETIMPORT                        R77 K17 [require]
      484 GETTABLEKS                       R78 R7 K48 ["Src"]
      486 GETTABLEKS                       R78 R78 K51 ["Components"]
      488 GETTABLEKS                       R78 R78 K97 ["UpsellDialog"]
      490 CALL                             R77 1 1
      491 DUPCLOSURE                       R78 K98 [PROTO_0]
      492 CAPTURE                          VAL R46
      493 CAPTURE                          VAL R76
      494 CAPTURE                          VAL R73
      495 CAPTURE                          VAL R4
      496 DUPCLOSURE                       R79 K99 [PROTO_2]
      497 CAPTURE                          VAL R5
      498 DUPCLOSURE                       R80 K100 [PROTO_3]
      499 SETTABLEKS                       R80 R72 K101 ["isGroupGame"]
      501 DUPCLOSURE                       R80 K102 [PROTO_4]
      502 CAPTURE                          VAL R4
      503 SETTABLEKS                       R80 R72 K103 ["isLoggedInUserGameOwner"]
      505 DUPCLOSURE                       R80 K104 [PROTO_5]
      506 CAPTURE                          VAL R42
      507 SETTABLEKS                       R80 R72 K105 ["shouldShowAudienceTabs"]
      509 DUPCLOSURE                       R80 K106 [PROTO_6]
      510 CAPTURE                          VAL R11
      511 SETTABLEKS                       R80 R72 K107 ["shouldUseEarlyTesterChipLayout"]
      513 DUPCLOSURE                       R80 K108 [PROTO_7]
      514 CAPTURE                          VAL R41
      515 SETTABLEKS                       R80 R72 K109 ["getAudienceTabs"]
      517 DUPCLOSURE                       R80 K110 [PROTO_15]
      518 CAPTURE                          VAL R41
      519 CAPTURE                          VAL R8
      520 CAPTURE                          VAL R46
      521 CAPTURE                          VAL R76
      522 CAPTURE                          VAL R73
      523 CAPTURE                          VAL R4
      524 CAPTURE                          VAL R6
      525 CAPTURE                          VAL R5
      526 CAPTURE                          VAL R11
      527 CAPTURE                          VAL R74
      528 SETTABLEKS                       R80 R72 K111 ["init"]
      530 DUPCLOSURE                       R80 K112 [PROTO_28]
      531 CAPTURE                          VAL R47
      532 CAPTURE                          VAL R48
      533 CAPTURE                          VAL R76
      534 CAPTURE                          VAL R74
      535 CAPTURE                          VAL R4
      536 CAPTURE                          VAL R11
      537 SETTABLEKS                       R80 R72 K113 ["didUpdate"]
      539 DUPCLOSURE                       R80 K114 [PROTO_29]
      540 CAPTURE                          VAL R64
      541 CAPTURE                          VAL R3
      542 SETTABLEKS                       R80 R72 K115 ["onSavePressed"]
      544 DUPCLOSURE                       R80 K116 [PROTO_32]
      545 CAPTURE                          VAL R67
      546 CAPTURE                          VAL R35
      547 CAPTURE                          VAL R21
      548 CAPTURE                          VAL R8
      549 SETTABLEKS                       R80 R72 K117 ["onCancelPressed"]
      551 DUPCLOSURE                       R80 K118 [PROTO_51]
      552 CAPTURE                          VAL R47
      553 CAPTURE                          VAL R11
      554 CAPTURE                          VAL R54
      555 CAPTURE                          VAL R53
      556 CAPTURE                          VAL R50
      557 CAPTURE                          VAL R64
      558 CAPTURE                          VAL R68
      559 CAPTURE                          VAL R66
      560 CAPTURE                          VAL R46
      561 CAPTURE                          VAL R8
      562 CAPTURE                          VAL R19
      563 CAPTURE                          VAL R70
      564 CAPTURE                          VAL R71
      565 CAPTURE                          VAL R3
      566 CAPTURE                          VAL R69
      567 CAPTURE                          VAL R27
      568 CAPTURE                          VAL R26
      569 CAPTURE                          VAL R29
      570 CAPTURE                          VAL R23
      571 CAPTURE                          VAL R30
      572 CAPTURE                          VAL R32
      573 CAPTURE                          VAL R33
      574 CAPTURE                          VAL R34
      575 CAPTURE                          VAL R76
      576 CAPTURE                          VAL R73
      577 CAPTURE                          VAL R4
      578 CAPTURE                          VAL R6
      579 CAPTURE                          VAL R5
      580 CAPTURE                          VAL R28
      581 CAPTURE                          VAL R22
      582 CAPTURE                          VAL R31
      583 CAPTURE                          VAL R2
      584 CAPTURE                          VAL R24
      585 CAPTURE                          VAL R25
      586 CAPTURE                          VAL R39
      587 CAPTURE                          VAL R37
      588 CAPTURE                          VAL R38
      589 CAPTURE                          VAL R36
      590 CAPTURE                          VAL R0
      591 CAPTURE                          VAL R18
      592 CAPTURE                          VAL R10
      593 CAPTURE                          VAL R77
      594 CAPTURE                          VAL R40
      595 CAPTURE                          VAL R20
      596 SETTABLEKS                       R80 R72 K119 ["render"]
      598 MOVE                             R80 R14
      599 DUPTABLE                         R81 K120 [{"Stylizer", "Localization"}]
      600 SETTABLEKS                       R15 R81 K28 ["Stylizer"]
      602 SETTABLEKS                       R16 R81 K29 ["Localization"]
      604 CALL                             R80 1 1
      605 MOVE                             R81 R72
      606 CALL                             R80 1 1
      607 MOVE                             R72 R80
      608 GETTABLEKS                       R80 R9 K121 ["connect"]
      610 NEWCLOSURE                       R81 P12
      611 CAPTURE                          VAL R57
      612 CAPTURE                          VAL R53
      613 CAPTURE                          VAL R54
      614 CAPTURE                          VAL R55
      615 CAPTURE                          VAL R56
      616 CAPTURE                          VAL R11
      617 CAPTURE                          VAL R58
      618 CAPTURE                          VAL R59
      619 CAPTURE                          VAL R60
      620 CAPTURE                          VAL R63
      621 CAPTURE                          VAL R50
      622 CAPTURE                          REF R52
      623 CAPTURE                          VAL R61
      624 CAPTURE                          VAL R62
      625 NEWCLOSURE                       R82 P13
      626 CAPTURE                          VAL R44
      627 CAPTURE                          VAL R43
      628 CAPTURE                          VAL R45
      629 CAPTURE                          VAL R50
      630 CAPTURE                          REF R51
      631 CALL                             R80 2 1
      632 MOVE                             R81 R72
      633 CALL                             R80 1 1
      634 MOVE                             R72 R80
      635 CLOSEUPVALS                      R51
      636 RETURN                           R72 1
