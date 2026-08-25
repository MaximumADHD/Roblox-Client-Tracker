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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 DUPTABLE                         R1 K2 [{[1] = True}]
        1 RETURN                           R1 1

PROTO_11:
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
       13 DUPCLOSURE                       R2 K8 [PROTO_10]
       14 NAMECALL                         R0 R0 K9 ["setState"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K4 ["createRef"]
        6 CALL                             R1 0 1
        7 SETTABLEKS                       R1 R0 K5 ["scrollingFrameRef"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K6 ["contentHeightChanged"]
       13 DUPCLOSURE                       R1 K7 [PROTO_6]
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          UPVAL U6
       20 SETTABLEKS                       R1 R0 K8 ["launchFAEPlusVPC"]
       22 DUPCLOSURE                       R1 K9 [PROTO_7]
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U7
       28 CAPTURE                          UPVAL U6
       29 SETTABLEKS                       R1 R0 K10 ["launchCreatorHub"]
       31 DUPCLOSURE                       R1 K11 [PROTO_8]
       32 CAPTURE                          UPVAL U7
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U6
       38 SETTABLEKS                       R1 R0 K12 ["launchCreatorHubUniverseSafetyView"]
       40 DUPCLOSURE                       R1 K13 [PROTO_9]
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          UPVAL U7
       46 CAPTURE                          UPVAL U6
       47 SETTABLEKS                       R1 R0 K14 ["launchCreatorHubExperiencePermissionsView"]
       49 NEWCLOSURE                       R1 P5
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          UPVAL U8
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R1 R0 K15 ["launchModal"]
       56 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_14]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_16:
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
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"ShowTrustedConnectionsOption"}]
        2 SETTABLEKS                       R0 R3 K0 ["ShowTrustedConnectionsOption"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

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

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["Plugin"]
        2 NAMECALL                         R1 R1 K1 ["get"]
        4 CALL                             R1 1 1
        5 LOADK                            R4 K2 ["DialogManager"]
        6 NAMECALL                         R2 R1 K3 ["GetPluginComponent"]
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R4 R0 K4 ["HasCurrentEditCollaborators"]
       11 NOT                              R3 R4
       12 JUMPIFNOT                        R3 ; [+2]
       13 GETTABLEKS                       R3 R0 K5 ["HasNewEditCollaborators"]
       15 JUMPIF                           R3 ; [+2]
       16 LOADB                            R4 0
       17 RETURN                           R4 1
       18 GETUPVAL                         R4 0
       19 GETIMPORT                        R5 K7 [game]
       21 GETTABLEKS                       R5 R5 K8 ["GameId"]
       23 CALL                             R4 1 1
       24 NAMECALL                         R4 R4 K9 ["await"]
       26 CALL                             R4 1 2
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K10 ["NotAgeVerified"]
       30 JUMPIFEQ                         R5 R6 ; [+3]
       32 LOADB                            R6 0
       33 RETURN                           R6 1
       34 GETTABLEKS                       R6 R0 K11 ["CloseWidget"]
       36 MOVE                             R7 R6
       37 CALL                             R7 0 0
       38 GETTABLEKS                       R7 R0 K12 ["Localization"]
       40 DUPTABLE                         R10 K17 [{["PluginId"] = "ManageCollaborators", ["ItemId"] = "VerifyAgeDialog"}]
       41 DUPTABLE                         R11 K24 [{["Type"] = "Critical", ["Title"], ["Description"], ["PrimaryButton"], ["SecondaryButton"]}]
       42 LOADK                            R14 K25 ["DialogSafety"]
       43 LOADK                            R15 K26 ["VerifyYourAge"]
       44 NAMECALL                         R12 R7 K27 ["getText"]
       46 CALL                             R12 3 1
       47 SETTABLEKS                       R12 R11 K20 ["Title"]
       49 LOADK                            R14 K25 ["DialogSafety"]
       50 LOADK                            R15 K28 ["VerifyYourAgeDescription"]
       51 NAMECALL                         R12 R7 K27 ["getText"]
       53 CALL                             R12 3 1
       54 SETTABLEKS                       R12 R11 K21 ["Description"]
       56 DUPTABLE                         R12 K31 [{"Uri", "Text"}]
       57 DUPTABLE                         R13 K33 [{["PluginId"] = "ManageCollaborators", ["ItemId"] = "VerifyAgeDialog/Verify"}]
       58 SETTABLEKS                       R13 R12 K29 ["Uri"]
       60 LOADK                            R15 K34 ["Buttons"]
       61 LOADK                            R16 K35 ["Verify"]
       62 NAMECALL                         R13 R7 K27 ["getText"]
       64 CALL                             R13 3 1
       65 SETTABLEKS                       R13 R12 K30 ["Text"]
       67 SETTABLEKS                       R12 R11 K22 ["PrimaryButton"]
       69 DUPTABLE                         R12 K31 [{"Uri", "Text"}]
       70 DUPTABLE                         R13 K37 [{["PluginId"] = "ManageCollaborators", ["ItemId"] = "VerifyAgeDialog/Cancel"}]
       71 SETTABLEKS                       R13 R12 K29 ["Uri"]
       73 LOADK                            R15 K34 ["Buttons"]
       74 LOADK                            R16 K38 ["Cancel"]
       75 NAMECALL                         R13 R7 K27 ["getText"]
       77 CALL                             R13 3 1
       78 SETTABLEKS                       R13 R12 K30 ["Text"]
       80 SETTABLEKS                       R12 R11 K23 ["SecondaryButton"]
       82 NAMECALL                         R8 R2 K39 ["ShowDialogAsync"]
       84 CALL                             R8 3 1
       85 GETTABLEKS                       R9 R8 K40 ["SelectedButtonUri"]
       87 GETTABLEKS                       R9 R9 K15 ["ItemId"]
       89 JUMPIFNOTEQKS                    R9 K32 ["VerifyAgeDialog/Verify"] ; [+19]
       91 GETUPVAL                         R9 2
       92 GETIMPORT                        R10 K42 [pcall]
       94 NEWCLOSURE                       R11 P0
       95 CAPTURE                          UPVAL U3
       96 CAPTURE                          VAL R9
       97 CALL                             R10 1 2
       98 JUMPIF                           R10 ; [+10]
       99 GETIMPORT                        R12 K44 [warn]
      101 LOADK                            R14 K45 ["OpenUrl failed: "]
      102 FASTCALL1                        TOSTRING R11 ; [+3]
      103 MOVE                             R16 R11
      104 GETIMPORT                        R15 K47 [tostring]
      106 CALL                             R15 1 1
      107 CONCAT                           R13 R14 R15
      108 CALL                             R12 1 0
      109 LOADB                            R9 1
      110 RETURN                           R9 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["fflagManageCollaboratorsVerifyAgeDialog"]
        5 JUMPIFNOT                        R2 ; [+6]
        6 GETGLOBAL                        R2 K2 ["checkAndMaybeShowVerifyAgeDialog"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R2 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R2 R1 K3 ["SavePermissions"]
       14 GETUPVAL                         R4 1
       15 JUMPIFNOT                        R4 ; [+3]
       16 GETTABLEKS                       R3 R1 K4 ["SendAllSearchItemLogs"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 MOVE                             R4 R2
       21 NAMECALL                         R5 R0 K5 ["isGroupGame"]
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R6 R1 K6 ["OwnerId"]
       26 CALL                             R4 2 0
       27 GETUPVAL                         R4 1
       28 JUMPIFNOT                        R4 ; [+3]
       29 MOVE                             R4 R3
       30 DUPTABLE                         R5 K12 [{["isAdded"] = True, ["isCanceled"] = False, ["isRemoved"] = False}]
       31 CALL                             R4 1 0
       32 GETUPVAL                         R4 2
       33 CALL                             R4 0 1
       34 JUMPIF                           R4 ; [+4]
       35 GETUPVAL                         R4 3
       36 NAMECALL                         R4 R4 K13 ["PublishThenTurnOnTeamCreate"]
       38 CALL                             R4 1 0
       39 RETURN                           R0 0

PROTO_28:
        0 JUMPIFNOTEQKS                    R0 K0 ["YES"] ; [+8]
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETUPVAL                         R1 1
        5 DUPTABLE                         R2 K6 [{["isAdded"] = False, ["isCanceled"] = True, ["isRemoved"] = False}]
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_29:
        0 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Plugin"]
        4 GETTABLEKS                       R4 R2 K2 ["Localization"]
        6 GETTABLEKS                       R5 R2 K3 ["Stylizer"]
        8 GETTABLEKS                       R6 R2 K4 ["CloseWidget"]
       10 GETUPVAL                         R8 0
       11 JUMPIFNOT                        R8 ; [+3]
       12 GETTABLEKS                       R7 R2 K5 ["SendAllSearchItemLogs"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R7
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R8 R8 K6 ["reportCancelPressed"]
       19 NAMECALL                         R9 R0 K7 ["isGroupGame"]
       21 CALL                             R9 1 -1
       22 CALL                             R8 -1 0
       23 JUMPIF                           R1 ; [+3]
       24 MOVE                             R8 R6
       25 CALL                             R8 0 0
       26 RETURN                           R0 0
       27 NEWTABLE                         R8 0 2
       29 DUPTABLE                         R9 K11 [{["Key"] = "NO", ["Text"]}]
       30 LOADK                            R12 K12 ["Buttons"]
       31 LOADK                            R13 K13 ["No"]
       32 NAMECALL                         R10 R4 K14 ["getText"]
       34 CALL                             R10 3 1
       35 SETTABLEKS                       R10 R9 K10 ["Text"]
       37 DUPTABLE                         R10 K18 [{["Key"] = "YES", ["Text"], ["Style"] = "RoundPrimary"}]
       38 LOADK                            R13 K12 ["Buttons"]
       39 LOADK                            R14 K19 ["Yes"]
       40 NAMECALL                         R11 R4 K14 ["getText"]
       42 CALL                             R11 3 1
       43 SETTABLEKS                       R11 R10 K10 ["Text"]
       45 SETLIST                          R8 R9 2 [1]
       47 GETUPVAL                         R9 2
       48 MOVE                             R10 R3
       49 MOVE                             R11 R4
       50 GETUPVAL                         R12 3
       51 DUPTABLE                         R13 K27 [{["Buttons"], ["MinContentSize"], ["Style"] = "CancelDialog", ["OnButtonPressed"], ["OnClose"], ["Title"], ["Modal"] = True}]
       52 SETTABLEKS                       R8 R13 K12 ["Buttons"]
       54 GETTABLEKS                       R14 R5 K28 ["cancelDialog"]
       56 GETTABLEKS                       R14 R14 K29 ["Size"]
       58 SETTABLEKS                       R14 R13 K20 ["MinContentSize"]
       60 NEWCLOSURE                       R14 P0
       61 CAPTURE                          UPVAL U0
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R6
       64 SETTABLEKS                       R14 R13 K22 ["OnButtonPressed"]
       66 DUPCLOSURE                       R14 K30 [PROTO_29]
       67 SETTABLEKS                       R14 R13 K23 ["OnClose"]
       69 LOADK                            R16 K24 ["Title"]
       70 LOADK                            R17 K31 ["DiscardChanges"]
       71 NAMECALL                         R14 R4 K14 ["getText"]
       73 CALL                             R14 3 1
       74 SETTABLEKS                       R14 R13 K24 ["Title"]
       76 DUPTABLE                         R14 K33 [{"Contents"}]
       77 GETUPVAL                         R15 4
       78 GETTABLEKS                       R15 R15 K34 ["createElement"]
       80 LOADK                            R16 K35 ["TextLabel"]
       81 DUPTABLE                         R17 K43 [{["BackgroundTransparency"] = 1, ["TextSize"], ["Text"], ["TextColor3"], ["Font"], ["Size"], ["AnchorPoint"], ["Position"]}]
       82 GETTABLEKS                       R18 R5 K28 ["cancelDialog"]
       84 GETTABLEKS                       R18 R18 K10 ["Text"]
       86 GETTABLEKS                       R18 R18 K38 ["TextSize"]
       88 SETTABLEKS                       R18 R17 K38 ["TextSize"]
       90 LOADK                            R20 K44 ["Description"]
       91 LOADK                            R21 K31 ["DiscardChanges"]
       92 NAMECALL                         R18 R4 K14 ["getText"]
       94 CALL                             R18 3 1
       95 SETTABLEKS                       R18 R17 K10 ["Text"]
       97 GETTABLEKS                       R18 R5 K28 ["cancelDialog"]
       99 GETTABLEKS                       R18 R18 K10 ["Text"]
      101 GETTABLEKS                       R18 R18 K39 ["TextColor3"]
      103 SETTABLEKS                       R18 R17 K39 ["TextColor3"]
      105 GETTABLEKS                       R18 R5 K28 ["cancelDialog"]
      107 GETTABLEKS                       R18 R18 K10 ["Text"]
      109 GETTABLEKS                       R18 R18 K40 ["Font"]
      111 SETTABLEKS                       R18 R17 K40 ["Font"]
      113 GETIMPORT                        R18 K47 [UDim2.fromScale]
      115 LOADN                            R19 1
      116 LOADN                            R20 1
      117 CALL                             R18 2 1
      118 SETTABLEKS                       R18 R17 K29 ["Size"]
      120 GETIMPORT                        R18 K50 [Vector2.new]
      122 LOADK                            R19 K51 [0.5]
      123 LOADK                            R20 K51 [0.5]
      124 CALL                             R18 2 1
      125 SETTABLEKS                       R18 R17 K41 ["AnchorPoint"]
      127 GETTABLEKS                       R18 R5 K28 ["cancelDialog"]
      129 GETTABLEKS                       R18 R18 K42 ["Position"]
      131 SETTABLEKS                       R18 R17 K42 ["Position"]
      133 CALL                             R15 2 1
      134 SETTABLEKS                       R15 R14 K32 ["Contents"]
      136 CALL                             R9 5 0
      137 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onSavePressed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 DUPTABLE                         R1 K5 [{[1] = False, ["isCanceled"] = True, ["isRemoved"] = False}]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 NAMECALL                         R0 R0 K6 ["PublishThenTurnOnTeamCreate"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_36:
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
       11 LOADK                            R2 K5 ["owners_view_editor_blocking"]
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

PROTO_41:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

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
        1 NAMECALL                         R0 R0 K0 ["onSavePressed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onCancelPressed"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["launchCreatorHubExperiencePermissionsView"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_47:
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
       83 GETUPVAL                         R17 2
       84 JUMPIFNOT                        R17 ; [+3]
       85 GETTABLEKS                       R16 R1 K23 ["SendAllSearchItemLogs"]
       87 JUMP                             ; [+1]
       88 LOADNIL                          R16
       89 GETUPVAL                         R17 3
       90 GETTABLEKS                       R17 R17 K24 ["Saved"]
       92 JUMPIFNOTEQ                      R4 R17 ; [+5]
       94 GETTABLEKS                       R17 R1 K25 ["CloseWidget"]
       96 CALL                             R17 0 0
       97 RETURN                           R0 0
       98 GETUPVAL                         R18 4
       99 GETTABLEKS                       R18 R18 K26 ["Loaded"]
      101 JUMPIFEQ                         R5 R18 ; [+2]
      103 LOADB                            R17 0 +1
      104 LOADB                            R17 1
      105 GETUPVAL                         R18 5
      106 JUMPIFNOT                        R18 ; [+6]
      107 JUMPIFNOT                        R17 ; [+5]
      108 GETTABLEKS                       R18 R1 K27 ["PrefetchLikelyCollaborators"]
      110 GETTABLEKS                       R19 R1 K28 ["Is17PlusGame"]
      112 CALL                             R18 1 0
      113 LOADB                            R18 0
      114 LOADNIL                          R19
      115 GETUPVAL                         R20 4
      116 GETTABLEKS                       R20 R20 K29 ["Unloaded"]
      118 JUMPIFNOTEQ                      R5 R20 ; [+4]
      120 GETTABLEKS                       R20 R1 K30 ["LoadPermissions"]
      122 CALL                             R20 0 0
      123 GETUPVAL                         R20 4
      124 GETTABLEKS                       R20 R20 K31 ["LoadFailed"]
      126 JUMPIFEQ                         R5 R20 ; [+6]
      128 GETUPVAL                         R20 3
      129 GETTABLEKS                       R20 R20 K32 ["SaveFailed"]
      131 JUMPIFNOTEQ                      R4 R20 ; [+20]
      133 LOADB                            R18 1
      134 GETUPVAL                         R20 4
      135 GETTABLEKS                       R20 R20 K31 ["LoadFailed"]
      137 JUMPIFNOTEQ                      R5 R20 ; [+8]
      139 LOADK                            R22 K33 ["FailureMessage"]
      140 LOADK                            R23 K34 ["LoadFailure"]
      141 NAMECALL                         R20 R3 K35 ["getText"]
      143 CALL                             R20 3 1
      144 MOVE                             R19 R20
      145 JUMP                             ; [+6]
      146 LOADK                            R22 K33 ["FailureMessage"]
      147 LOADK                            R23 K36 ["SaveFailure"]
      148 NAMECALL                         R20 R3 K35 ["getText"]
      150 CALL                             R20 3 1
      151 MOVE                             R19 R20
      152 NAMECALL                         R20 R0 K37 ["isLoggedInUserGameOwner"]
      154 CALL                             R20 1 1
      155 GETTABLEKS                       R21 R1 K38 ["MigrationStatus"]
      157 GETUPVAL                         R22 6
      158 JUMPIFNOT                        R22 ; [+7]
      159 GETUPVAL                         R23 7
      160 GETTABLEKS                       R23 R23 K39 ["MIGRATING"]
      162 JUMPIFEQ                         R21 R23 ; [+2]
      164 LOADB                            R22 0 +1
      165 LOADB                            R22 1
      166 MOVE                             R23 R20
      167 GETUPVAL                         R24 6
      168 JUMPIFNOT                        R24 ; [+2]
      169 JUMPIFNOT                        R22 ; [+1]
      170 LOADB                            R23 0
      171 GETUPVAL                         R24 1
      172 GETTABLEKS                       R24 R24 K15 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      174 JUMPIFNOT                        R24 ; [+2]
      175 GETTABLEKS                       R24 R1 K40 ["OwnerIsCountryBlocked"]
      177 GETUPVAL                         R25 1
      178 GETTABLEKS                       R25 R25 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      180 JUMPIFNOT                        R25 ; [+2]
      181 GETTABLEKS                       R25 R1 K41 ["OwnerIsNotAgeVerified"]
      183 OR                               R26 R24 R25
      184 MOVE                             R27 R17
      185 JUMPIFNOT                        R27 ; [+1]
      186 NOT                              R27 R18
      187 GETUPVAL                         R28 8
      188 CALL                             R28 0 1
      189 MOVE                             R29 R27
      190 JUMPIFNOT                        R29 ; [+3]
      191 NOT                              R29 R28
      192 JUMPIFNOT                        R29 ; [+1]
      193 OR                               R29 R6 R15
      194 JUMPIFNOT                        R15 ; [+2]
      195 LOADK                            R30 K42 ["SaveEnableTcCurrentEditors"]
      196 JUMP                             ; [+1]
      197 LOADK                            R30 K43 ["SaveEnableTC"]
      198 LOADK                            R33 K44 ["Description"]
      199 MOVE                             R34 R30
      200 NAMECALL                         R31 R3 K35 ["getText"]
      202 CALL                             R31 3 1
      203 GETTABLEKS                       R32 R2 K45 ["header"]
      205 GETTABLEKS                       R32 R32 K46 ["height"]
      207 GETTABLEKS                       R33 R2 K47 ["footer"]
      209 GETTABLEKS                       R33 R33 K46 ["height"]
      211 JUMPIFNOT                        R29 ; [+5]
      212 GETTABLEKS                       R34 R2 K48 ["saveMessage"]
      214 GETTABLEKS                       R34 R34 K49 ["boxHeight"]
      216 ADD                              R33 R33 R34
      217 GETUPVAL                         R34 9
      218 JUMPIFNOT                        R34 ; [+1]
      219 ADD                              R33 R33 R32
      220 GETUPVAL                         R34 10
      221 GETTABLEKS                       R34 R34 K50 ["new"]
      223 CALL                             R34 0 1
      224 GETUPVAL                         R35 10
      225 GETTABLEKS                       R35 R35 K50 ["new"]
      227 CALL                             R35 0 1
      228 GETUPVAL                         R37 11
      229 JUMPIFNOT                        R37 ; [+5]
      230 GETUPVAL                         R36 10
      231 GETTABLEKS                       R36 R36 K50 ["new"]
      233 CALL                             R36 0 1
      234 JUMP                             ; [+1]
      235 LOADNIL                          R36
      236 GETUPVAL                         R37 11
      237 JUMPIFNOT                        R37 ; [+8]
      238 MOVE                             R37 R7
      239 JUMPIF                           R37 ; [+6]
      240 MOVE                             R37 R12
      241 JUMPIF                           R37 ; [+4]
      242 GETUPVAL                         R38 1
      243 GETTABLEKS                       R38 R38 K20 ["fflagUpsellMCCollabReverification"]
      245 AND                              R37 R38 R14
      246 LOADK                            R40 K51 ["UpsellBanner"]
      247 LOADK                            R41 K52 ["RecheckAge"]
      248 NAMECALL                         R38 R3 K35 ["getText"]
      250 CALL                             R38 3 1
      251 LOADK                            R41 K51 ["UpsellBanner"]
      252 LOADK                            R42 K53 ["AgeCheckNotValid"]
      253 NAMECALL                         R39 R3 K35 ["getText"]
      255 CALL                             R39 3 1
      256 LOADK                            R42 K54 ["Buttons"]
      257 LOADK                            R43 K55 ["Continue"]
      258 NAMECALL                         R40 R3 K35 ["getText"]
      260 CALL                             R40 3 1
      261 GETUPVAL                         R41 12
      262 GETTABLEKS                       R41 R41 K56 ["createElement"]
      264 LOADK                            R42 K57 ["Frame"]
      265 DUPTABLE                         R43 K60 [{"Size", "BackgroundColor3"}]
      266 GETIMPORT                        R44 K62 [UDim2.new]
      268 LOADN                            R45 1
      269 LOADN                            R46 0
      270 LOADN                            R47 1
      271 LOADN                            R48 0
      272 CALL                             R44 4 1
      273 SETTABLEKS                       R44 R43 K58 ["Size"]
      275 GETTABLEKS                       R44 R2 K63 ["backgroundColor"]
      277 SETTABLEKS                       R44 R43 K59 ["BackgroundColor3"]
      279 DUPTABLE                         R44 K81 [{"Layout", "HeaderContent", "Spacer", "UpsellBanner", "TrustedConnectionsBanner", "ReverificationBanner", "OutsideAgeBucketBanner", "EditorBlockingBanner", "OwnerNotAgeVerifiedBanner", "OwnerCountryBlockedBanner", "CollaborationSubtitleTitleView", "ScrollingFrameNew", "ScrollingFrame", "TextFrame", "upsellDialog", "FooterContent", "LoadingIndicator", "FailureText"}]
      280 MOVE                             R45 R27
      281 JUMPIFNOT                        R45 ; [+28]
      282 GETUPVAL                         R45 12
      283 GETTABLEKS                       R45 R45 K56 ["createElement"]
      285 LOADK                            R46 K82 ["UIListLayout"]
      286 DUPTABLE                         R47 K87 [{"FillDirection", "SortOrder", "HorizontalAlignment", "Padding"}]
      287 GETIMPORT                        R48 K90 [Enum.FillDirection.Vertical]
      289 SETTABLEKS                       R48 R47 K83 ["FillDirection"]
      291 GETIMPORT                        R48 K92 [Enum.SortOrder.LayoutOrder]
      293 SETTABLEKS                       R48 R47 K84 ["SortOrder"]
      295 GETIMPORT                        R48 K94 [Enum.HorizontalAlignment.Center]
      297 SETTABLEKS                       R48 R47 K85 ["HorizontalAlignment"]
      299 GETIMPORT                        R48 K96 [UDim.new]
      301 LOADN                            R49 0
      302 GETTABLEKS                       R50 R2 K97 ["permissionsView"]
      304 GETTABLEKS                       R50 R50 K86 ["Padding"]
      306 CALL                             R48 2 1
      307 SETTABLEKS                       R48 R47 K86 ["Padding"]
      309 CALL                             R45 2 1
      310 SETTABLEKS                       R45 R44 K64 ["Layout"]
      312 GETUPVAL                         R46 1
      313 GETTABLEKS                       R46 R46 K98 ["fflagRemoveHeaderWithUpsellBanner2"]
      315 NOT                              R45 R46
      316 JUMPIFNOT                        R45 ; [+74]
      317 NOT                              R45 R37
      318 JUMPIFNOT                        R45 ; [+72]
      319 GETUPVAL                         R45 9
      320 JUMPIFNOT                        R45 ; [+70]
      321 MOVE                             R45 R27
      322 JUMPIFNOT                        R45 ; [+68]
      323 GETUPVAL                         R45 12
      324 GETTABLEKS                       R45 R45 K56 ["createElement"]
      326 GETUPVAL                         R46 13
      327 DUPTABLE                         R47 K99 [{"LayoutOrder", "Size"}]
      328 NAMECALL                         R48 R34 K100 ["getNextOrder"]
      330 CALL                             R48 1 1
      331 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
      333 GETIMPORT                        R48 K62 [UDim2.new]
      335 LOADN                            R49 1
      336 LOADN                            R50 0
      337 LOADN                            R51 0
      338 GETTABLEKS                       R52 R2 K45 ["header"]
      340 GETTABLEKS                       R52 R52 K46 ["height"]
      342 CALL                             R48 4 1
      343 SETTABLEKS                       R48 R47 K58 ["Size"]
      345 DUPTABLE                         R48 K102 [{"Header"}]
      346 GETUPVAL                         R49 14
      347 GETTABLEKS                       R49 R49 K56 ["createElement"]
      349 GETUPVAL                         R50 15
      350 DUPTABLE                         R51 K110 [{"Stylizer", "Localization", "IsTeamCreateEnabled", "HasUnsavedChanges", "HasCollaborators", "Plugin", "SaveThenTurnOnTeamCreate", "TurnOnTeamCreate", "Links", "FetchLink"}]
      351 SETTABLEKS                       R2 R51 K2 ["Stylizer"]
      353 SETTABLEKS                       R3 R51 K3 ["Localization"]
      355 SETTABLEKS                       R28 R51 K103 ["IsTeamCreateEnabled"]
      357 GETTABLEKS                       R52 R1 K104 ["HasUnsavedChanges"]
      359 SETTABLEKS                       R52 R51 K104 ["HasUnsavedChanges"]
      361 GETTABLEKS                       R52 R1 K6 ["HasCollaborators"]
      363 SETTABLEKS                       R52 R51 K6 ["HasCollaborators"]
      365 GETTABLEKS                       R52 R1 K105 ["Plugin"]
      367 SETTABLEKS                       R52 R51 K105 ["Plugin"]
      369 NEWCLOSURE                       R52 P0
      370 CAPTURE                          VAL R0
      371 SETTABLEKS                       R52 R51 K106 ["SaveThenTurnOnTeamCreate"]
      373 NEWCLOSURE                       R52 P1
      374 CAPTURE                          UPVAL U2
      375 CAPTURE                          VAL R16
      376 CAPTURE                          UPVAL U16
      377 SETTABLEKS                       R52 R51 K107 ["TurnOnTeamCreate"]
      379 GETTABLEKS                       R52 R1 K108 ["Links"]
      381 SETTABLEKS                       R52 R51 K108 ["Links"]
      383 GETTABLEKS                       R52 R1 K109 ["FetchLink"]
      385 SETTABLEKS                       R52 R51 K109 ["FetchLink"]
      387 CALL                             R49 2 1
      388 SETTABLEKS                       R49 R48 K101 ["Header"]
      390 CALL                             R45 3 1
      391 SETTABLEKS                       R45 R44 K65 ["HeaderContent"]
      393 GETUPVAL                         R45 1
      394 GETTABLEKS                       R45 R45 K98 ["fflagRemoveHeaderWithUpsellBanner2"]
      396 JUMPIFNOT                        R45 ; [+40]
      397 MOVE                             R45 R37
      398 JUMPIFNOT                        R45 ; [+38]
      399 GETUPVAL                         R46 1
      400 GETTABLEKS                       R46 R46 K11 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      402 JUMPIF                           R46 ; [+3]
      403 GETUPVAL                         R46 1
      404 GETTABLEKS                       R46 R46 K13 ["fflagManageCollaboratorsEditorBlockingBanner"]
      406 NOT                              R45 R46
      407 JUMPIFNOT                        R45 ; [+29]
      408 GETUPVAL                         R46 1
      409 GETTABLEKS                       R46 R46 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      411 JUMPIF                           R46 ; [+3]
      412 GETUPVAL                         R46 1
      413 GETTABLEKS                       R46 R46 K15 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      415 NOT                              R45 R46
      416 JUMPIFNOT                        R45 ; [+20]
      417 GETUPVAL                         R45 14
      418 GETTABLEKS                       R45 R45 K56 ["createElement"]
      420 GETUPVAL                         R46 17
      421 DUPTABLE                         R47 K99 [{"LayoutOrder", "Size"}]
      422 NAMECALL                         R48 R34 K100 ["getNextOrder"]
      424 CALL                             R48 1 1
      425 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
      427 GETIMPORT                        R48 K62 [UDim2.new]
      429 LOADN                            R49 1
      430 LOADN                            R50 0
      431 LOADN                            R51 0
      432 LOADN                            R52 10
      433 CALL                             R48 4 1
      434 SETTABLEKS                       R48 R47 K58 ["Size"]
      436 CALL                             R45 2 1
      437 SETTABLEKS                       R45 R44 K66 ["Spacer"]
      439 GETUPVAL                         R45 11
      440 JUMPIFNOT                        R45 ; [+148]
      441 MOVE                             R45 R7
      442 JUMPIFNOT                        R45 ; [+146]
      443 GETUPVAL                         R46 1
      444 GETTABLEKS                       R46 R46 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      446 NOT                              R45 R46
      447 JUMPIFNOT                        R45 ; [+141]
      448 GETUPVAL                         R45 12
      449 GETTABLEKS                       R45 R45 K56 ["createElement"]
      451 GETUPVAL                         R46 17
      452 DUPTABLE                         R47 K114 [{["LayoutOrder"], ["Size"], ["tag"] = "auto-xy padding-left-large stroke-system-emphasis radius-small bg-over-media-300", ["onActivated"]}]
      453 NAMECALL                         R48 R34 K100 ["getNextOrder"]
      455 CALL                             R48 1 1
      456 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
      458 GETIMPORT                        R48 K62 [UDim2.new]
      460 LOADN                            R49 0
      461 LOADN                            R50 770
      462 LOADN                            R51 0
      463 LOADN                            R52 50
      464 CALL                             R48 4 1
      465 SETTABLEKS                       R48 R47 K58 ["Size"]
      467 GETTABLEKS                       R48 R0 K115 ["launchFAEPlusVPC"]
      469 SETTABLEKS                       R48 R47 K113 ["onActivated"]
      471 NEWTABLE                         R48 4 1
      473 MOVE                             R50 R27
      474 JUMPIFNOT                        R50 ; [+28]
      475 GETUPVAL                         R50 12
      476 GETTABLEKS                       R50 R50 K56 ["createElement"]
      478 LOADK                            R51 K82 ["UIListLayout"]
      479 DUPTABLE                         R52 K117 [{"FillDirection", "VerticalAlignment", "SortOrder", "Padding"}]
      480 GETIMPORT                        R53 K119 [Enum.FillDirection.Horizontal]
      482 SETTABLEKS                       R53 R52 K83 ["FillDirection"]
      484 GETIMPORT                        R53 K120 [Enum.VerticalAlignment.Center]
      486 SETTABLEKS                       R53 R52 K116 ["VerticalAlignment"]
      488 GETIMPORT                        R53 K92 [Enum.SortOrder.LayoutOrder]
      490 SETTABLEKS                       R53 R52 K84 ["SortOrder"]
      492 GETIMPORT                        R53 K96 [UDim.new]
      494 LOADN                            R54 0
      495 GETTABLEKS                       R55 R2 K97 ["permissionsView"]
      497 GETTABLEKS                       R55 R55 K86 ["Padding"]
      499 CALL                             R53 2 1
      500 SETTABLEKS                       R53 R52 K86 ["Padding"]
      502 CALL                             R50 2 1
      503 SETTABLEKS                       R50 R48 K121 ["UpsellLayout"]
      505 GETUPVAL                         R49 14
      506 GETTABLEKS                       R49 R49 K56 ["createElement"]
      508 GETUPVAL                         R50 18
      509 DUPTABLE                         R51 K126 [{"name", "style", "LayoutOrder", "size", "variant"}]
      510 GETUPVAL                         R52 19
      511 GETTABLEKS                       R52 R52 K127 ["IconName"]
      513 GETTABLEKS                       R52 R52 K128 ["TriangleExclamation"]
      515 SETTABLEKS                       R52 R51 K122 ["name"]
      517 DUPTABLE                         R52 K132 [{["Color3"], ["Transparency"] = 0}]
      518 GETIMPORT                        R53 K134 [Color3.fromRGB]
      520 LOADN                            R54 51
      521 LOADN                            R55 95
      522 LOADN                            R56 255
      523 CALL                             R53 3 1
      524 SETTABLEKS                       R53 R52 K129 ["Color3"]
      526 SETTABLEKS                       R52 R51 K123 ["style"]
      528 NAMECALL                         R52 R36 K100 ["getNextOrder"]
      530 CALL                             R52 1 1
      531 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
      533 GETUPVAL                         R52 19
      534 GETTABLEKS                       R52 R52 K135 ["IconSize"]
      536 GETTABLEKS                       R52 R52 K136 ["Large"]
      538 SETTABLEKS                       R52 R51 K124 ["size"]
      540 GETUPVAL                         R52 20
      541 GETTABLEKS                       R52 R52 K137 ["Filled"]
      543 SETTABLEKS                       R52 R51 K125 ["variant"]
      545 CALL                             R49 2 1
      546 SETLIST                          R48 R49 1 [1]
      548 GETUPVAL                         R50 12
      549 GETTABLEKS                       R50 R50 K56 ["createElement"]
      551 GETUPVAL                         R51 21
      552 DUPTABLE                         R52 K140 [{["tag"] = "fill auto-y padding-left-large text-title-medium text-align-x-left text-align-y-center", ["LayoutOrder"], ["Text"]}]
      553 NAMECALL                         R53 R36 K100 ["getNextOrder"]
      555 CALL                             R53 1 1
      556 SETTABLEKS                       R53 R52 K91 ["LayoutOrder"]
      558 LOADK                            R55 K51 ["UpsellBanner"]
      559 LOADK                            R56 K141 ["description"]
      560 NAMECALL                         R53 R3 K35 ["getText"]
      562 CALL                             R53 3 1
      563 SETTABLEKS                       R53 R52 K139 ["Text"]
      565 CALL                             R50 2 1
      566 SETTABLEKS                       R50 R48 K142 ["WarningText"]
      568 GETUPVAL                         R50 12
      569 GETTABLEKS                       R50 R50 K56 ["createElement"]
      571 GETUPVAL                         R51 21
      572 DUPTABLE                         R52 K144 [{["tag"] = "auto-xy padding-right-large text-label-medium text-align-x-center text-align-y-center", ["LayoutOrder"], ["Text"]}]
      573 NAMECALL                         R53 R36 K100 ["getNextOrder"]
      575 CALL                             R53 1 1
      576 SETTABLEKS                       R53 R52 K91 ["LayoutOrder"]
      578 LOADK                            R55 K51 ["UpsellBanner"]
      579 LOADK                            R56 K145 ["CTA"]
      580 NAMECALL                         R53 R3 K35 ["getText"]
      582 CALL                             R53 3 1
      583 SETTABLEKS                       R53 R52 K139 ["Text"]
      585 CALL                             R50 2 1
      586 SETTABLEKS                       R50 R48 K146 ["GetStarted"]
      588 CALL                             R45 3 1
      589 SETTABLEKS                       R45 R44 K51 ["UpsellBanner"]
      591 GETUPVAL                         R45 0
      592 JUMPIFNOT                        R45 ; [+76]
      593 GETUPVAL                         R46 1
      594 GETTABLEKS                       R46 R46 K11 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      596 NOT                              R45 R46
      597 JUMPIFNOT                        R45 ; [+71]
      598 GETUPVAL                         R46 1
      599 GETTABLEKS                       R46 R46 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      601 NOT                              R45 R46
      602 JUMPIFNOT                        R45 ; [+66]
      603 MOVE                             R45 R12
      604 JUMPIFNOT                        R45 ; [+64]
      605 GETUPVAL                         R45 14
      606 GETTABLEKS                       R45 R45 K56 ["createElement"]
      608 GETUPVAL                         R46 17
      609 DUPTABLE                         R47 K148 [{["tag"] = "size-full-0 auto-y padding-x-large padding-top-large"}]
      610 GETUPVAL                         R48 14
      611 GETTABLEKS                       R48 R48 K56 ["createElement"]
      613 GETUPVAL                         R49 22
      614 DUPTABLE                         R50 K153 [{"variant", "severity", "title", "actions", "onClose"}]
      615 GETUPVAL                         R51 23
      616 GETTABLEKS                       R51 R51 K154 ["Standard"]
      618 SETTABLEKS                       R51 R50 K125 ["variant"]
      620 GETUPVAL                         R51 24
      621 GETTABLEKS                       R51 R51 K155 ["Info"]
      623 SETTABLEKS                       R51 R50 K149 ["severity"]
      625 LOADK                            R53 K51 ["UpsellBanner"]
      626 LOADK                            R54 K156 ["nextStepDescription"]
      627 NAMECALL                         R51 R3 K35 ["getText"]
      629 CALL                             R51 3 1
      630 SETTABLEKS                       R51 R50 K150 ["title"]
      632 NEWTABLE                         R51 0 1
      634 DUPTABLE                         R52 K158 [{"text", "variant", "onActivated"}]
      635 LOADK                            R55 K51 ["UpsellBanner"]
      636 LOADK                            R56 K145 ["CTA"]
      637 NAMECALL                         R53 R3 K35 ["getText"]
      639 CALL                             R53 3 1
      640 SETTABLEKS                       R53 R52 K157 ["text"]
      642 GETUPVAL                         R53 25
      643 GETTABLEKS                       R53 R53 K154 ["Standard"]
      645 SETTABLEKS                       R53 R52 K125 ["variant"]
      647 GETUPVAL                         R54 1
      648 GETTABLEKS                       R54 R54 K18 ["fflagUpsellCollabTrustedConnectionShowUpsellDialog"]
      650 JUMPIFNOT                        R54 ; [+4]
      651 JUMPIFNOT                        R13 ; [+3]
      652 GETTABLEKS                       R53 R0 K159 ["launchModal"]
      654 JUMP                             ; [+2]
      655 GETTABLEKS                       R53 R0 K160 ["launchCreatorHub"]
      657 SETTABLEKS                       R53 R52 K113 ["onActivated"]
      659 SETLIST                          R51 R52 1 [1]
      661 SETTABLEKS                       R51 R50 K151 ["actions"]
      663 NEWCLOSURE                       R51 P2
      664 CAPTURE                          VAL R0
      665 SETTABLEKS                       R51 R50 K152 ["onClose"]
      667 CALL                             R48 2 -1
      668 CALL                             R45 -1 1
      669 SETTABLEKS                       R45 R44 K67 ["TrustedConnectionsBanner"]
      671 GETUPVAL                         R45 1
      672 GETTABLEKS                       R45 R45 K20 ["fflagUpsellMCCollabReverification"]
      674 JUMPIFNOT                        R45 ; [+150]
      675 MOVE                             R45 R14
      676 JUMPIFNOT                        R45 ; [+148]
      677 GETUPVAL                         R45 14
      678 GETTABLEKS                       R45 R45 K56 ["createElement"]
      680 GETUPVAL                         R46 17
      681 DUPTABLE                         R47 K162 [{["LayoutOrder"], ["Size"], ["tag"] = "row align-y-center gap-medium padding-left-large padding-right-medium stroke-system-emphasis radius-small bg-over-media-300", ["onActivated"]}]
      682 NAMECALL                         R48 R34 K100 ["getNextOrder"]
      684 CALL                             R48 1 1
      685 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
      687 GETIMPORT                        R48 K62 [UDim2.new]
      689 LOADN                            R49 0
      690 LOADN                            R50 770
      691 LOADN                            R51 0
      692 LOADN                            R52 50
      693 CALL                             R48 4 1
      694 SETTABLEKS                       R48 R47 K58 ["Size"]
      696 DUPCLOSURE                       R48 K163 [PROTO_34]
      697 CAPTURE                          UPVAL U11
      698 CAPTURE                          UPVAL U26
      699 CAPTURE                          UPVAL U27
      700 CAPTURE                          UPVAL U28
      701 CAPTURE                          UPVAL U29
      702 CAPTURE                          UPVAL U30
      703 SETTABLEKS                       R48 R47 K113 ["onActivated"]
      705 DUPTABLE                         R48 K166 [{"Icon", "WarningText", "CloseButton"}]
      706 GETUPVAL                         R49 14
      707 GETTABLEKS                       R49 R49 K56 ["createElement"]
      709 GETUPVAL                         R50 17
      710 DUPTABLE                         R51 K168 [{["LayoutOrder"], ["tag"] = "size-600-600 auto-xy"}]
      711 NAMECALL                         R52 R36 K100 ["getNextOrder"]
      713 CALL                             R52 1 1
      714 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
      716 DUPTABLE                         R52 K170 [{"BackgroundCircle", "Icon"}]
      717 GETUPVAL                         R53 14
      718 GETTABLEKS                       R53 R53 K56 ["createElement"]
      720 GETUPVAL                         R54 17
      721 DUPTABLE                         R55 K173 [{["tag"] = "position-center-center anchor-center-center size-500-500 radius-circle", ["backgroundStyle"]}]
      722 DUPTABLE                         R56 K174 [{"Color3"}]
      723 GETIMPORT                        R57 K176 [Color3.fromHex]
      725 LOADK                            R58 K177 ["#FFFFFF"]
      726 CALL                             R57 1 1
      727 SETTABLEKS                       R57 R56 K129 ["Color3"]
      729 SETTABLEKS                       R56 R55 K172 ["backgroundStyle"]
      731 CALL                             R53 2 1
      732 SETTABLEKS                       R53 R52 K169 ["BackgroundCircle"]
      734 GETUPVAL                         R53 14
      735 GETTABLEKS                       R53 R53 K56 ["createElement"]
      737 GETUPVAL                         R54 18
      738 DUPTABLE                         R55 K179 [{["name"], ["style"], ["tag"] = "align-x-center align-y-center", ["size"], ["variant"]}]
      739 GETUPVAL                         R56 19
      740 GETTABLEKS                       R56 R56 K127 ["IconName"]
      742 GETTABLEKS                       R56 R56 K180 ["CircleI"]
      744 SETTABLEKS                       R56 R55 K122 ["name"]
      746 DUPTABLE                         R56 K132 [{["Color3"], ["Transparency"] = 0}]
      747 GETIMPORT                        R57 K134 [Color3.fromRGB]
      749 LOADN                            R58 51
      750 LOADN                            R59 95
      751 LOADN                            R60 255
      752 CALL                             R57 3 1
      753 SETTABLEKS                       R57 R56 K129 ["Color3"]
      755 SETTABLEKS                       R56 R55 K123 ["style"]
      757 GETUPVAL                         R56 19
      758 GETTABLEKS                       R56 R56 K135 ["IconSize"]
      760 GETTABLEKS                       R56 R56 K136 ["Large"]
      762 SETTABLEKS                       R56 R55 K124 ["size"]
      764 GETUPVAL                         R56 20
      765 GETTABLEKS                       R56 R56 K137 ["Filled"]
      767 SETTABLEKS                       R56 R55 K125 ["variant"]
      769 CALL                             R53 2 1
      770 SETTABLEKS                       R53 R52 K164 ["Icon"]
      772 CALL                             R49 3 1
      773 SETTABLEKS                       R49 R48 K164 ["Icon"]
      775 GETUPVAL                         R49 12
      776 GETTABLEKS                       R49 R49 K56 ["createElement"]
      778 GETUPVAL                         R50 21
      779 DUPTABLE                         R51 K184 [{["tag"] = "fill text-body-medium text-align-x-left text-align-y-center", ["LayoutOrder"], ["Text"], ["RichText"] = True}]
      780 NAMECALL                         R52 R36 K100 ["getNextOrder"]
      782 CALL                             R52 1 1
      783 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
      785 LOADK                            R53 K185 ["<b>%*</b> %* • %*"]
      786 MOVE                             R55 R38
      787 MOVE                             R56 R39
      788 MOVE                             R57 R40
      789 NAMECALL                         R53 R53 K186 ["format"]
      791 CALL                             R53 4 1
      792 MOVE                             R52 R53
      793 SETTABLEKS                       R52 R51 K139 ["Text"]
      795 CALL                             R49 2 1
      796 SETTABLEKS                       R49 R48 K142 ["WarningText"]
      798 GETUPVAL                         R49 14
      799 GETTABLEKS                       R49 R49 K56 ["createElement"]
      801 GETUPVAL                         R50 31
      802 DUPTABLE                         R51 K189 [{["LayoutOrder"], ["icon"] = "icons/navigation/close", ["size"], ["onActivated"]}]
      803 NAMECALL                         R52 R36 K100 ["getNextOrder"]
      805 CALL                             R52 1 1
      806 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
      808 GETUPVAL                         R52 32
      809 GETTABLEKS                       R52 R52 K190 ["Enums"]
      811 GETTABLEKS                       R52 R52 K135 ["IconSize"]
      813 GETTABLEKS                       R52 R52 K191 ["Small"]
      815 SETTABLEKS                       R52 R51 K124 ["size"]
      817 NEWCLOSURE                       R52 P4
      818 CAPTURE                          VAL R0
      819 SETTABLEKS                       R52 R51 K113 ["onActivated"]
      821 CALL                             R49 2 1
      822 SETTABLEKS                       R49 R48 K165 ["CloseButton"]
      824 CALL                             R45 3 1
      825 SETTABLEKS                       R45 R44 K68 ["ReverificationBanner"]
      827 GETUPVAL                         R45 1
      828 GETTABLEKS                       R45 R45 K11 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      830 JUMPIFNOT                        R45 ; [+56]
      831 MOVE                             R45 R20
      832 JUMPIFNOT                        R45 ; [+54]
      833 MOVE                             R45 R9
      834 JUMPIFNOT                        R45 ; [+52]
      835 GETUPVAL                         R45 14
      836 GETTABLEKS                       R45 R45 K56 ["createElement"]
      838 GETUPVAL                         R46 17
      839 DUPTABLE                         R47 K193 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y margin-top-small padding-x-large"}]
      840 NAMECALL                         R48 R34 K100 ["getNextOrder"]
      842 CALL                             R48 1 1
      843 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
      845 NEWTABLE                         R48 0 1
      847 GETUPVAL                         R49 14
      848 GETTABLEKS                       R49 R49 K56 ["createElement"]
      850 GETUPVAL                         R50 33
      851 DUPTABLE                         R51 K195 [{"severity", "title", "link", "onClose"}]
      852 GETUPVAL                         R52 24
      853 GETTABLEKS                       R52 R52 K196 ["Warning"]
      855 SETTABLEKS                       R52 R51 K149 ["severity"]
      857 LOADK                            R54 K197 ["FeedbackAlert"]
      858 LOADK                            R55 K198 ["OutsideAgeGroupWarning"]
      859 NAMECALL                         R52 R3 K35 ["getText"]
      861 CALL                             R52 3 1
      862 SETTABLEKS                       R52 R51 K150 ["title"]
      864 DUPTABLE                         R52 K199 [{"text", "onActivated"}]
      865 LOADK                            R55 K197 ["FeedbackAlert"]
      866 LOADK                            R56 K200 ["ViewDetails"]
      867 NAMECALL                         R53 R3 K35 ["getText"]
      869 CALL                             R53 3 1
      870 SETTABLEKS                       R53 R52 K157 ["text"]
      872 NEWCLOSURE                       R53 P5
      873 CAPTURE                          UPVAL U1
      874 CAPTURE                          VAL R0
      875 SETTABLEKS                       R53 R52 K113 ["onActivated"]
      877 SETTABLEKS                       R52 R51 K194 ["link"]
      879 NEWCLOSURE                       R52 P6
      880 CAPTURE                          VAL R0
      881 SETTABLEKS                       R52 R51 K152 ["onClose"]
      883 CALL                             R49 2 -1
      884 SETLIST                          R48 R49 -1 [1]
      886 CALL                             R45 3 1
      887 SETTABLEKS                       R45 R44 K69 ["OutsideAgeBucketBanner"]
      889 GETUPVAL                         R45 1
      890 GETTABLEKS                       R45 R45 K13 ["fflagManageCollaboratorsEditorBlockingBanner"]
      892 JUMPIFNOT                        R45 ; [+56]
      893 NOT                              R45 R20
      894 JUMPIFNOT                        R45 ; [+54]
      895 MOVE                             R45 R10
      896 JUMPIFNOT                        R45 ; [+52]
      897 GETUPVAL                         R45 14
      898 GETTABLEKS                       R45 R45 K56 ["createElement"]
      900 GETUPVAL                         R46 17
      901 DUPTABLE                         R47 K193 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y margin-top-small padding-x-large"}]
      902 NAMECALL                         R48 R34 K100 ["getNextOrder"]
      904 CALL                             R48 1 1
      905 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
      907 NEWTABLE                         R48 0 1
      909 GETUPVAL                         R49 14
      910 GETTABLEKS                       R49 R49 K56 ["createElement"]
      912 GETUPVAL                         R50 33
      913 DUPTABLE                         R51 K195 [{"severity", "title", "link", "onClose"}]
      914 GETUPVAL                         R52 24
      915 GETTABLEKS                       R52 R52 K196 ["Warning"]
      917 SETTABLEKS                       R52 R51 K149 ["severity"]
      919 LOADK                            R54 K197 ["FeedbackAlert"]
      920 LOADK                            R55 K201 ["EditorBlockingWarning"]
      921 NAMECALL                         R52 R3 K35 ["getText"]
      923 CALL                             R52 3 1
      924 SETTABLEKS                       R52 R51 K150 ["title"]
      926 DUPTABLE                         R52 K199 [{"text", "onActivated"}]
      927 LOADK                            R55 K197 ["FeedbackAlert"]
      928 LOADK                            R56 K200 ["ViewDetails"]
      929 NAMECALL                         R53 R3 K35 ["getText"]
      931 CALL                             R53 3 1
      932 SETTABLEKS                       R53 R52 K157 ["text"]
      934 NEWCLOSURE                       R53 P7
      935 CAPTURE                          UPVAL U1
      936 CAPTURE                          VAL R0
      937 SETTABLEKS                       R53 R52 K113 ["onActivated"]
      939 SETTABLEKS                       R52 R51 K194 ["link"]
      941 NEWCLOSURE                       R52 P8
      942 CAPTURE                          VAL R0
      943 SETTABLEKS                       R52 R51 K152 ["onClose"]
      945 CALL                             R49 2 -1
      946 SETLIST                          R48 R49 -1 [1]
      948 CALL                             R45 3 1
      949 SETTABLEKS                       R45 R44 K70 ["EditorBlockingBanner"]
      951 GETUPVAL                         R45 1
      952 GETTABLEKS                       R45 R45 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      954 JUMPIFNOT                        R45 ; [+84]
      955 MOVE                             R45 R20
      956 JUMPIFNOT                        R45 ; [+82]
      957 MOVE                             R45 R8
      958 JUMPIFNOT                        R45 ; [+80]
      959 GETUPVAL                         R45 14
      960 GETTABLEKS                       R45 R45 K56 ["createElement"]
      962 GETUPVAL                         R46 17
      963 DUPTABLE                         R47 K193 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y margin-top-small padding-x-large"}]
      964 NAMECALL                         R48 R34 K100 ["getNextOrder"]
      966 CALL                             R48 1 1
      967 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
      969 NEWTABLE                         R48 0 1
      971 GETUPVAL                         R49 14
      972 GETTABLEKS                       R49 R49 K56 ["createElement"]
      974 GETUPVAL                         R50 33
      975 DUPTABLE                         R51 K203 [{"severity", "title", "subtitle", "link", "onClose"}]
      976 GETUPVAL                         R52 24
      977 GETTABLEKS                       R52 R52 K196 ["Warning"]
      979 SETTABLEKS                       R52 R51 K149 ["severity"]
      981 NAMECALL                         R53 R0 K204 ["isGroupGame"]
      983 CALL                             R53 1 1
      984 JUMPIFNOT                        R53 ; [+6]
      985 LOADK                            R54 K197 ["FeedbackAlert"]
      986 LOADK                            R55 K205 ["VerifyYourAge"]
      987 NAMECALL                         R52 R3 K35 ["getText"]
      989 CALL                             R52 3 1
      990 JUMP                             ; [+5]
      991 LOADK                            R54 K197 ["FeedbackAlert"]
      992 LOADK                            R55 K206 ["OwnerNotAgeVerifiedTitle"]
      993 NAMECALL                         R52 R3 K35 ["getText"]
      995 CALL                             R52 3 1
      996 SETTABLEKS                       R52 R51 K150 ["title"]
      998 NAMECALL                         R53 R0 K204 ["isGroupGame"]
     1000 CALL                             R53 1 1
     1001 JUMPIFNOT                        R53 ; [+6]
     1002 LOADK                            R54 K197 ["FeedbackAlert"]
     1003 LOADK                            R55 K207 ["OwnerNotAgeVerifiedSubtitle"]
     1004 NAMECALL                         R52 R3 K35 ["getText"]
     1006 CALL                             R52 3 1
     1007 JUMP                             ; [+1]
     1008 LOADNIL                          R52
     1009 SETTABLEKS                       R52 R51 K202 ["subtitle"]
     1011 DUPTABLE                         R52 K199 [{"text", "onActivated"}]
     1012 LOADK                            R55 K51 ["UpsellBanner"]
     1013 LOADK                            R56 K145 ["CTA"]
     1014 NAMECALL                         R53 R3 K35 ["getText"]
     1016 CALL                             R53 3 1
     1017 SETTABLEKS                       R53 R52 K157 ["text"]
     1019 DUPCLOSURE                       R53 K208 [PROTO_40]
     1020 CAPTURE                          UPVAL U1
     1021 CAPTURE                          UPVAL U11
     1022 CAPTURE                          UPVAL U26
     1023 CAPTURE                          UPVAL U27
     1024 CAPTURE                          UPVAL U28
     1025 CAPTURE                          UPVAL U29
     1026 CAPTURE                          UPVAL U30
     1027 SETTABLEKS                       R53 R52 K113 ["onActivated"]
     1029 SETTABLEKS                       R52 R51 K194 ["link"]
     1031 NEWCLOSURE                       R52 P10
     1032 CAPTURE                          VAL R0
     1033 SETTABLEKS                       R52 R51 K152 ["onClose"]
     1035 CALL                             R49 2 -1
     1036 SETLIST                          R48 R49 -1 [1]
     1038 CALL                             R45 3 1
     1039 SETTABLEKS                       R45 R44 K71 ["OwnerNotAgeVerifiedBanner"]
     1041 GETUPVAL                         R45 1
     1042 GETTABLEKS                       R45 R45 K15 ["fflagManageCollaboratorsOwnerCountryBlocked"]
     1044 JUMPIFNOT                        R45 ; [+41]
     1045 MOVE                             R45 R20
     1046 JUMPIFNOT                        R45 ; [+39]
     1047 MOVE                             R45 R11
     1048 JUMPIFNOT                        R45 ; [+37]
     1049 GETUPVAL                         R45 14
     1050 GETTABLEKS                       R45 R45 K56 ["createElement"]
     1052 GETUPVAL                         R46 17
     1053 DUPTABLE                         R47 K193 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y margin-top-small padding-x-large"}]
     1054 NAMECALL                         R48 R34 K100 ["getNextOrder"]
     1056 CALL                             R48 1 1
     1057 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
     1059 NEWTABLE                         R48 0 1
     1061 GETUPVAL                         R49 14
     1062 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1064 GETUPVAL                         R50 33
     1065 DUPTABLE                         R51 K209 [{"severity", "title", "onClose"}]
     1066 GETUPVAL                         R52 24
     1067 GETTABLEKS                       R52 R52 K196 ["Warning"]
     1069 SETTABLEKS                       R52 R51 K149 ["severity"]
     1071 LOADK                            R54 K197 ["FeedbackAlert"]
     1072 LOADK                            R55 K210 ["OwnerCountryBlockedTitle"]
     1073 NAMECALL                         R52 R3 K35 ["getText"]
     1075 CALL                             R52 3 1
     1076 SETTABLEKS                       R52 R51 K150 ["title"]
     1078 NEWCLOSURE                       R52 P11
     1079 CAPTURE                          VAL R0
     1080 SETTABLEKS                       R52 R51 K152 ["onClose"]
     1082 CALL                             R49 2 -1
     1083 SETLIST                          R48 R49 -1 [1]
     1085 CALL                             R45 3 1
     1086 SETTABLEKS                       R45 R44 K72 ["OwnerCountryBlockedBanner"]
     1088 GETUPVAL                         R45 11
     1089 JUMPIFNOT                        R45 ; [+49]
     1090 GETUPVAL                         R46 8
     1091 CALL                             R46 0 1
     1092 JUMPIF                           R46 ; [+3]
     1093 GETUPVAL                         R46 0
     1094 NOT                              R45 R46
     1095 JUMPIFNOT                        R45 ; [+43]
     1096 GETUPVAL                         R45 12
     1097 GETTABLEKS                       R45 R45 K56 ["createElement"]
     1099 GETUPVAL                         R46 17
     1100 DUPTABLE                         R47 K212 [{["LayoutOrder"], ["Size"], ["tag"] = "auto-xy padding-top-medium"}]
     1101 NAMECALL                         R48 R34 K100 ["getNextOrder"]
     1103 CALL                             R48 1 1
     1104 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
     1106 GETIMPORT                        R48 K62 [UDim2.new]
     1108 LOADN                            R49 0
     1109 LOADN                            R50 770
     1110 LOADN                            R51 0
     1111 LOADN                            R52 10
     1112 CALL                             R48 4 1
     1113 SETTABLEKS                       R48 R47 K58 ["Size"]
     1115 DUPTABLE                         R48 K214 [{"CollaborationTitle"}]
     1116 GETUPVAL                         R49 34
     1117 JUMPIFNOT                        R49 ; [+18]
     1118 GETUPVAL                         R49 14
     1119 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1121 GETUPVAL                         R50 21
     1122 DUPTABLE                         R51 K216 [{["LayoutOrder"], ["tag"] = "auto-xy text-label-small text-align-x-left", ["Text"]}]
     1123 NAMECALL                         R52 R34 K100 ["getNextOrder"]
     1125 CALL                             R52 1 1
     1126 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
     1128 LOADK                            R54 K217 ["Subtitle"]
     1129 LOADK                            R55 K218 ["SearchCollaborators"]
     1130 NAMECALL                         R52 R3 K35 ["getText"]
     1132 CALL                             R52 3 1
     1133 SETTABLEKS                       R52 R51 K139 ["Text"]
     1135 CALL                             R49 2 1
     1136 SETTABLEKS                       R49 R48 K213 ["CollaborationTitle"]
     1138 CALL                             R45 3 1
     1139 SETTABLEKS                       R45 R44 K73 ["CollaborationSubtitleTitleView"]
     1141 GETUPVAL                         R45 11
     1142 JUMPIFNOT                        R45 ; [+125]
     1143 MOVE                             R45 R27
     1144 JUMPIFNOT                        R45 ; [+123]
     1145 GETUPVAL                         R45 12
     1146 GETTABLEKS                       R45 R45 K56 ["createElement"]
     1148 GETUPVAL                         R46 35
     1149 DUPTABLE                         R47 K222 [{["scroll"], ["layout"], ["tag"] = "col align-y-top fill gap-small size-full", ["LayoutOrder"]}]
     1150 DUPTABLE                         R48 K227 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
     1151 GETUPVAL                         R49 36
     1152 GETTABLEKS                       R49 R49 K228 ["Always"]
     1154 SETTABLEKS                       R49 R48 K223 ["scrollBarVisibility"]
     1156 GETIMPORT                        R49 K230 [Enum.ScrollingDirection.Y]
     1158 SETTABLEKS                       R49 R48 K224 ["ScrollingDirection"]
     1160 GETIMPORT                        R49 K232 [Enum.AutomaticSize.Y]
     1162 SETTABLEKS                       R49 R48 K225 ["AutomaticCanvasSize"]
     1164 GETIMPORT                        R49 K62 [UDim2.new]
     1166 CALL                             R49 0 1
     1167 SETTABLEKS                       R49 R48 K226 ["CanvasSize"]
     1169 SETTABLEKS                       R48 R47 K219 ["scroll"]
     1171 DUPTABLE                         R48 K234 [{"HorizontalAlignment", "FillDirection", "SortOrder", "HorizontalFlex"}]
     1172 GETIMPORT                        R49 K236 [Enum.HorizontalAlignment.Left]
     1174 SETTABLEKS                       R49 R48 K85 ["HorizontalAlignment"]
     1176 GETIMPORT                        R49 K90 [Enum.FillDirection.Vertical]
     1178 SETTABLEKS                       R49 R48 K83 ["FillDirection"]
     1180 GETIMPORT                        R49 K92 [Enum.SortOrder.LayoutOrder]
     1182 SETTABLEKS                       R49 R48 K84 ["SortOrder"]
     1184 GETIMPORT                        R49 K239 [Enum.UIFlexAlignment.Fill]
     1186 SETTABLEKS                       R49 R48 K233 ["HorizontalFlex"]
     1188 SETTABLEKS                       R48 R47 K220 ["layout"]
     1190 NAMECALL                         R48 R34 K100 ["getNextOrder"]
     1192 CALL                             R48 1 1
     1193 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
     1195 DUPTABLE                         R48 K243 [{"SearchBarWidget", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
     1196 MOVE                             R49 R20
     1197 JUMPIFNOT                        R49 ; [+18]
     1198 GETUPVAL                         R49 12
     1199 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1201 GETUPVAL                         R50 37
     1202 DUPTABLE                         R51 K247 [{["LayoutOrder"], ["Writable"] = True, ["IsGroupGame"], ["SearchDisabled"]}]
     1203 NAMECALL                         R52 R35 K100 ["getNextOrder"]
     1205 CALL                             R52 1 1
     1206 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
     1208 NAMECALL                         R52 R0 K204 ["isGroupGame"]
     1210 CALL                             R52 1 1
     1211 SETTABLEKS                       R52 R51 K245 ["IsGroupGame"]
     1213 SETTABLEKS                       R26 R51 K246 ["SearchDisabled"]
     1215 CALL                             R49 2 1
     1216 SETTABLEKS                       R49 R48 K240 ["SearchBarWidget"]
     1218 GETUPVAL                         R49 12
     1219 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1221 GETUPVAL                         R50 38
     1222 DUPTABLE                         R51 K248 [{"LayoutOrder"}]
     1223 NAMECALL                         R52 R35 K100 ["getNextOrder"]
     1225 CALL                             R52 1 1
     1226 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
     1228 CALL                             R49 2 1
     1229 SETTABLEKS                       R49 R48 K241 ["CollaboratorFilterWidget"]
     1231 NOT                              R49 R20
     1232 JUMPIFNOT                        R49 ; [+6]
     1233 GETUPVAL                         R49 12
     1234 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1236 LOADK                            R50 K57 ["Frame"]
     1237 DUPTABLE                         R51 K251 [{["BackgroundTransparency"] = 1}]
     1238 CALL                             R49 2 1
     1239 SETTABLEKS                       R49 R48 K57 ["Frame"]
     1241 GETUPVAL                         R49 12
     1242 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1244 GETUPVAL                         R50 39
     1245 DUPTABLE                         R51 K253 [{"LayoutOrder", "Writable", "IsGroupGame", "DisableEditPermission"}]
     1246 NAMECALL                         R52 R35 K100 ["getNextOrder"]
     1248 CALL                             R52 1 1
     1249 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
     1251 SETTABLEKS                       R23 R51 K244 ["Writable"]
     1253 GETUPVAL                         R53 40
     1254 JUMPIFNOT                        R53 ; [+4]
     1255 NAMECALL                         R52 R0 K204 ["isGroupGame"]
     1257 CALL                             R52 1 1
     1258 JUMP                             ; [+1]
     1259 LOADNIL                          R52
     1260 SETTABLEKS                       R52 R51 K245 ["IsGroupGame"]
     1262 SETTABLEKS                       R26 R51 K252 ["DisableEditPermission"]
     1264 CALL                             R49 2 1
     1265 SETTABLEKS                       R49 R48 K242 ["CollaboratorsWidget"]
     1267 CALL                             R45 3 1
     1268 SETTABLEKS                       R45 R44 K74 ["ScrollingFrameNew"]
     1270 GETUPVAL                         R46 11
     1271 NOT                              R45 R46
     1272 JUMPIFNOT                        R45 ; [+118]
     1273 MOVE                             R45 R27
     1274 JUMPIFNOT                        R45 ; [+116]
     1275 GETUPVAL                         R45 12
     1276 GETTABLEKS                       R45 R45 K56 ["createElement"]
     1278 GETUPVAL                         R46 41
     1279 DUPTABLE                         R47 K255 [{"LayoutOrder", "Size", "Layout", "AutomaticCanvasSize", "Spacing"}]
     1280 NAMECALL                         R48 R34 K100 ["getNextOrder"]
     1282 CALL                             R48 1 1
     1283 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
     1285 GETIMPORT                        R48 K62 [UDim2.new]
     1287 LOADN                            R49 1
     1288 LOADN                            R50 0
     1289 LOADN                            R51 1
     1290 MINUS                            R52 R33
     1291 CALL                             R48 4 1
     1292 SETTABLEKS                       R48 R47 K58 ["Size"]
     1294 GETIMPORT                        R48 K90 [Enum.FillDirection.Vertical]
     1296 SETTABLEKS                       R48 R47 K64 ["Layout"]
     1298 GETIMPORT                        R48 K232 [Enum.AutomaticSize.Y]
     1300 SETTABLEKS                       R48 R47 K225 ["AutomaticCanvasSize"]
     1302 GETIMPORT                        R48 K96 [UDim.new]
     1304 LOADN                            R49 0
     1305 JUMPIFNOT                        R20 ; [+5]
     1306 GETTABLEKS                       R50 R2 K256 ["scrollingFrame"]
     1308 GETTABLEKS                       R50 R50 K257 ["yPadding"]
     1310 JUMP                             ; [+4]
     1311 GETTABLEKS                       R50 R2 K256 ["scrollingFrame"]
     1313 GETTABLEKS                       R50 R50 K258 ["yPaddingNonOwner"]
     1315 CALL                             R48 2 1
     1316 SETTABLEKS                       R48 R47 K254 ["Spacing"]
     1318 DUPTABLE                         R48 K243 [{"SearchBarWidget", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
     1319 MOVE                             R49 R20
     1320 JUMPIFNOT                        R49 ; [+18]
     1321 GETUPVAL                         R49 12
     1322 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1324 GETUPVAL                         R50 37
     1325 DUPTABLE                         R51 K247 [{["LayoutOrder"], ["Writable"] = True, ["IsGroupGame"], ["SearchDisabled"]}]
     1326 NAMECALL                         R52 R35 K100 ["getNextOrder"]
     1328 CALL                             R52 1 1
     1329 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
     1331 NAMECALL                         R52 R0 K204 ["isGroupGame"]
     1333 CALL                             R52 1 1
     1334 SETTABLEKS                       R52 R51 K245 ["IsGroupGame"]
     1336 SETTABLEKS                       R26 R51 K246 ["SearchDisabled"]
     1338 CALL                             R49 2 1
     1339 SETTABLEKS                       R49 R48 K240 ["SearchBarWidget"]
     1341 GETUPVAL                         R49 12
     1342 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1344 GETUPVAL                         R50 38
     1345 DUPTABLE                         R51 K248 [{"LayoutOrder"}]
     1346 NAMECALL                         R52 R35 K100 ["getNextOrder"]
     1348 CALL                             R52 1 1
     1349 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
     1351 CALL                             R49 2 1
     1352 SETTABLEKS                       R49 R48 K241 ["CollaboratorFilterWidget"]
     1354 NOT                              R49 R20
     1355 JUMPIFNOT                        R49 ; [+6]
     1356 GETUPVAL                         R49 12
     1357 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1359 LOADK                            R50 K57 ["Frame"]
     1360 DUPTABLE                         R51 K251 [{["BackgroundTransparency"] = 1}]
     1361 CALL                             R49 2 1
     1362 SETTABLEKS                       R49 R48 K57 ["Frame"]
     1364 GETUPVAL                         R49 12
     1365 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1367 GETUPVAL                         R50 39
     1368 DUPTABLE                         R51 K253 [{"LayoutOrder", "Writable", "IsGroupGame", "DisableEditPermission"}]
     1369 NAMECALL                         R52 R35 K100 ["getNextOrder"]
     1371 CALL                             R52 1 1
     1372 SETTABLEKS                       R52 R51 K91 ["LayoutOrder"]
     1374 SETTABLEKS                       R23 R51 K244 ["Writable"]
     1376 GETUPVAL                         R53 40
     1377 JUMPIFNOT                        R53 ; [+4]
     1378 NAMECALL                         R52 R0 K204 ["isGroupGame"]
     1380 CALL                             R52 1 1
     1381 JUMP                             ; [+1]
     1382 LOADNIL                          R52
     1383 SETTABLEKS                       R52 R51 K245 ["IsGroupGame"]
     1385 SETTABLEKS                       R26 R51 K252 ["DisableEditPermission"]
     1387 CALL                             R49 2 1
     1388 SETTABLEKS                       R49 R48 K242 ["CollaboratorsWidget"]
     1390 CALL                             R45 3 1
     1391 SETTABLEKS                       R45 R44 K75 ["ScrollingFrame"]
     1393 JUMPIFNOT                        R29 ; [+75]
     1394 GETUPVAL                         R45 12
     1395 GETTABLEKS                       R45 R45 K56 ["createElement"]
     1397 LOADK                            R46 K57 ["Frame"]
     1398 DUPTABLE                         R47 K260 [{["BackgroundTransparency"] = 1, ["BackgroundColor3"], ["LayoutOrder"], ["Size"], ["BorderSizePixel"] = 0}]
     1399 GETTABLEKS                       R48 R2 K63 ["backgroundColor"]
     1401 SETTABLEKS                       R48 R47 K59 ["BackgroundColor3"]
     1403 NAMECALL                         R48 R34 K100 ["getNextOrder"]
     1405 CALL                             R48 1 1
     1406 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
     1408 GETIMPORT                        R48 K62 [UDim2.new]
     1410 LOADN                            R49 1
     1411 LOADN                            R50 0
     1412 LOADN                            R51 0
     1413 GETTABLEKS                       R52 R2 K48 ["saveMessage"]
     1415 GETTABLEKS                       R52 R52 K49 ["boxHeight"]
     1417 CALL                             R48 4 1
     1418 SETTABLEKS                       R48 R47 K58 ["Size"]
     1420 DUPTABLE                         R48 K261 [{"Text"}]
     1421 GETUPVAL                         R49 12
     1422 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1424 LOADK                            R50 K262 ["TextLabel"]
     1425 GETUPVAL                         R51 42
     1426 GETTABLEKS                       R51 R51 K263 ["Dictionary"]
     1428 GETTABLEKS                       R51 R51 K264 ["join"]
     1430 GETTABLEKS                       R52 R2 K48 ["saveMessage"]
     1432 GETTABLEKS                       R52 R52 K265 ["textStyle"]
     1434 DUPTABLE                         R53 K270 [{["AnchorPoint"], ["Position"], ["Text"], ["TextXAlignment"], ["BorderSizePixel"] = 0, ["TextWrapped"] = True, ["Size"], ["BackgroundTransparency"] = 1}]
     1435 GETIMPORT                        R54 K272 [Vector2.new]
     1437 LOADN                            R55 0
     1438 LOADK                            R56 K273 [0.5]
     1439 CALL                             R54 2 1
     1440 SETTABLEKS                       R54 R53 K266 ["AnchorPoint"]
     1442 GETTABLEKS                       R54 R2 K48 ["saveMessage"]
     1444 GETTABLEKS                       R54 R54 K274 ["InnerTextPosition"]
     1446 SETTABLEKS                       R54 R53 K267 ["Position"]
     1448 SETTABLEKS                       R31 R53 K139 ["Text"]
     1450 GETIMPORT                        R54 K275 [Enum.TextXAlignment.Left]
     1452 SETTABLEKS                       R54 R53 K268 ["TextXAlignment"]
     1454 GETIMPORT                        R54 K62 [UDim2.new]
     1456 LOADK                            R55 K276 [0.55]
     1457 LOADN                            R56 0
     1458 LOADN                            R57 1
     1459 LOADN                            R58 0
     1460 CALL                             R54 4 1
     1461 SETTABLEKS                       R54 R53 K58 ["Size"]
     1463 CALL                             R51 2 -1
     1464 CALL                             R49 -1 1
     1465 SETTABLEKS                       R49 R48 K139 ["Text"]
     1467 CALL                             R45 3 1
     1468 JUMP                             ; [+1]
     1469 LOADNIL                          R45
     1470 SETTABLEKS                       R45 R44 K76 ["TextFrame"]
     1472 GETUPVAL                         R45 0
     1473 JUMPIFNOT                        R45 ; [+15]
     1474 GETTABLEKS                       R45 R0 K7 ["state"]
     1476 GETTABLEKS                       R45 R45 K277 ["upsellDialogEnabled"]
     1478 JUMPIFNOT                        R45 ; [+10]
     1479 GETUPVAL                         R45 14
     1480 GETTABLEKS                       R45 R45 K56 ["createElement"]
     1482 GETUPVAL                         R46 43
     1483 DUPTABLE                         R47 K278 [{"onClose"}]
     1484 NEWCLOSURE                       R48 P12
     1485 CAPTURE                          VAL R0
     1486 SETTABLEKS                       R48 R47 K152 ["onClose"]
     1488 CALL                             R45 2 1
     1489 SETTABLEKS                       R45 R44 K77 ["upsellDialog"]
     1491 MOVE                             R45 R27
     1492 JUMPIFNOT                        R45 ; [+56]
     1493 GETUPVAL                         R45 12
     1494 GETTABLEKS                       R45 R45 K56 ["createElement"]
     1496 GETUPVAL                         R46 13
     1497 DUPTABLE                         R47 K99 [{"LayoutOrder", "Size"}]
     1498 NAMECALL                         R48 R34 K100 ["getNextOrder"]
     1500 CALL                             R48 1 1
     1501 SETTABLEKS                       R48 R47 K91 ["LayoutOrder"]
     1503 GETIMPORT                        R48 K62 [UDim2.new]
     1505 LOADN                            R49 1
     1506 LOADN                            R50 0
     1507 LOADN                            R51 0
     1508 GETTABLEKS                       R52 R2 K47 ["footer"]
     1510 GETTABLEKS                       R52 R52 K46 ["height"]
     1512 CALL                             R48 4 1
     1513 SETTABLEKS                       R48 R47 K58 ["Size"]
     1515 DUPTABLE                         R48 K280 [{"Footer"}]
     1516 GETUPVAL                         R49 12
     1517 GETTABLEKS                       R49 R49 K56 ["createElement"]
     1519 GETUPVAL                         R50 44
     1520 DUPTABLE                         R51 K284 [{"IsTeamCreateEnabled", "OnSavePressed", "OnCancelPressed", "OnViewAllPermissionsPressed"}]
     1521 SETTABLEKS                       R28 R51 K103 ["IsTeamCreateEnabled"]
     1523 NEWCLOSURE                       R52 P13
     1524 CAPTURE                          VAL R0
     1525 SETTABLEKS                       R52 R51 K281 ["OnSavePressed"]
     1527 NEWCLOSURE                       R52 P14
     1528 CAPTURE                          VAL R0
     1529 SETTABLEKS                       R52 R51 K282 ["OnCancelPressed"]
     1531 GETUPVAL                         R53 1
     1532 GETTABLEKS                       R53 R53 K285 ["fflagViewAllPermissionsInCreatorHub"]
     1534 JUMPIFNOT                        R53 ; [+7]
     1535 NAMECALL                         R53 R0 K204 ["isGroupGame"]
     1537 CALL                             R53 1 1
     1538 JUMPIFNOT                        R53 ; [+3]
     1539 NEWCLOSURE                       R52 P15
     1540 CAPTURE                          VAL R0
     1541 JUMP                             ; [+1]
     1542 LOADNIL                          R52
     1543 SETTABLEKS                       R52 R51 K283 ["OnViewAllPermissionsPressed"]
     1545 CALL                             R49 2 1
     1546 SETTABLEKS                       R49 R48 K279 ["Footer"]
     1548 CALL                             R45 3 1
     1549 SETTABLEKS                       R45 R44 K78 ["FooterContent"]
     1551 NOT                              R45 R17
     1552 JUMPIFNOT                        R45 ; [+22]
     1553 NOT                              R45 R18
     1554 JUMPIFNOT                        R45 ; [+20]
     1555 GETUPVAL                         R45 12
     1556 GETTABLEKS                       R45 R45 K56 ["createElement"]
     1558 GETUPVAL                         R46 45
     1559 DUPTABLE                         R47 K286 [{"AnchorPoint", "Position"}]
     1560 GETIMPORT                        R48 K272 [Vector2.new]
     1562 LOADK                            R49 K273 [0.5]
     1563 LOADK                            R50 K273 [0.5]
     1564 CALL                             R48 2 1
     1565 SETTABLEKS                       R48 R47 K266 ["AnchorPoint"]
     1567 GETIMPORT                        R48 K288 [UDim2.fromScale]
     1569 LOADK                            R49 K273 [0.5]
     1570 LOADK                            R50 K273 [0.5]
     1571 CALL                             R48 2 1
     1572 SETTABLEKS                       R48 R47 K267 ["Position"]
     1574 CALL                             R45 2 1
     1575 SETTABLEKS                       R45 R44 K79 ["LoadingIndicator"]
     1577 MOVE                             R45 R18
     1578 JUMPIFNOT                        R45 ; [+46]
     1579 GETUPVAL                         R45 12
     1580 GETTABLEKS                       R45 R45 K56 ["createElement"]
     1582 LOADK                            R46 K262 ["TextLabel"]
     1583 DUPTABLE                         R47 K292 [{"Text", "AnchorPoint", "Position", "TextColor3", "TextSize", "Font"}]
     1584 SETTABLEKS                       R19 R47 K139 ["Text"]
     1586 GETIMPORT                        R48 K272 [Vector2.new]
     1588 LOADK                            R49 K273 [0.5]
     1589 LOADK                            R50 K273 [0.5]
     1590 CALL                             R48 2 1
     1591 SETTABLEKS                       R48 R47 K266 ["AnchorPoint"]
     1593 GETIMPORT                        R48 K288 [UDim2.fromScale]
     1595 LOADK                            R49 K273 [0.5]
     1596 LOADK                            R50 K293 [0.25]
     1597 CALL                             R48 2 1
     1598 SETTABLEKS                       R48 R47 K267 ["Position"]
     1600 GETTABLEKS                       R48 R2 K294 ["fontStyle"]
     1602 GETTABLEKS                       R48 R48 K295 ["Normal"]
     1604 GETTABLEKS                       R48 R48 K289 ["TextColor3"]
     1606 SETTABLEKS                       R48 R47 K289 ["TextColor3"]
     1608 GETTABLEKS                       R48 R2 K294 ["fontStyle"]
     1610 GETTABLEKS                       R48 R48 K295 ["Normal"]
     1612 GETTABLEKS                       R48 R48 K290 ["TextSize"]
     1614 SETTABLEKS                       R48 R47 K290 ["TextSize"]
     1616 GETTABLEKS                       R48 R2 K294 ["fontStyle"]
     1618 GETTABLEKS                       R48 R48 K295 ["Normal"]
     1620 GETTABLEKS                       R48 R48 K291 ["Font"]
     1622 SETTABLEKS                       R48 R47 K291 ["Font"]
     1624 CALL                             R45 2 1
     1625 SETTABLEKS                       R45 R44 K80 ["FailureText"]
     1627 CALL                             R41 3 -1
     1628 RETURN                           R41 -1

PROTO_48:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 DUPTABLE                         R3 K16 [{"LoadState", "SaveState", "OwnerId", "OwnerType", "GroupOwnerUserId", "HasCollaborators", "HasCurrentEditCollaborators", "HasNewEditCollaborators", "HasOutsideAgeBucketEditCollaborators", "HasCurrentUserBlockingCollaborators", "OwnerIsNotAgeVerified", "OwnerIsCountryBlocked", "GroupRolePermissions", "Is17PlusGame", "HasUnsavedChanges", "MigrationStatus"}]
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
       53 GETTABLEKS                       R5 R5 K25 ["fflagManageCollaboratorsVerifyAgeDialog"]
       55 JUMPIFNOT                        R5 ; [+4]
       56 GETUPVAL                         R4 6
       57 MOVE                             R5 R0
       58 CALL                             R4 1 1
       59 JUMP                             ; [+1]
       60 LOADNIL                          R4
       61 SETTABLEKS                       R4 R3 K7 ["HasNewEditCollaborators"]
       63 GETUPVAL                         R5 5
       64 GETTABLEKS                       R5 R5 K26 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
       66 JUMPIFNOT                        R5 ; [+4]
       67 GETUPVAL                         R4 7
       68 MOVE                             R5 R0
       69 CALL                             R4 1 1
       70 JUMP                             ; [+1]
       71 LOADNIL                          R4
       72 SETTABLEKS                       R4 R3 K8 ["HasOutsideAgeBucketEditCollaborators"]
       74 GETUPVAL                         R5 5
       75 GETTABLEKS                       R5 R5 K27 ["fflagManageCollaboratorsEditorBlockingBanner"]
       77 JUMPIFNOT                        R5 ; [+4]
       78 GETUPVAL                         R4 8
       79 MOVE                             R5 R0
       80 CALL                             R4 1 1
       81 JUMP                             ; [+1]
       82 LOADNIL                          R4
       83 SETTABLEKS                       R4 R3 K9 ["HasCurrentUserBlockingCollaborators"]
       85 GETUPVAL                         R5 5
       86 GETTABLEKS                       R5 R5 K28 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
       88 JUMPIFNOT                        R5 ; [+4]
       89 GETUPVAL                         R4 9
       90 MOVE                             R5 R0
       91 CALL                             R4 1 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R4
       94 SETTABLEKS                       R4 R3 K10 ["OwnerIsNotAgeVerified"]
       96 GETUPVAL                         R5 5
       97 GETTABLEKS                       R5 R5 K29 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       99 JUMPIFNOT                        R5 ; [+4]
      100 GETUPVAL                         R4 10
      101 MOVE                             R5 R0
      102 CALL                             R4 1 1
      103 JUMP                             ; [+1]
      104 LOADNIL                          R4
      105 SETTABLEKS                       R4 R3 K11 ["OwnerIsCountryBlocked"]
      107 GETTABLEKS                       R4 R0 K12 ["GroupRolePermissions"]
      109 GETTABLEKS                       R4 R4 K30 ["PermissionsByRole"]
      111 SETTABLEKS                       R4 R3 K12 ["GroupRolePermissions"]
      113 GETUPVAL                         R5 11
      114 JUMPIFNOT                        R5 ; [+4]
      115 GETUPVAL                         R4 12
      116 MOVE                             R5 R0
      117 CALL                             R4 1 1
      118 JUMP                             ; [+1]
      119 LOADNIL                          R4
      120 SETTABLEKS                       R4 R3 K13 ["Is17PlusGame"]
      122 SETTABLEKS                       R2 R3 K14 ["HasUnsavedChanges"]
      124 GETUPVAL                         R5 13
      125 JUMPIFNOT                        R5 ; [+4]
      126 GETUPVAL                         R4 14
      127 MOVE                             R5 R0
      128 CALL                             R4 1 1
      129 JUMP                             ; [+1]
      130 LOADNIL                          R4
      131 SETTABLEKS                       R4 R3 K15 ["MigrationStatus"]
      133 RETURN                           R3 1

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["LoadPermissions"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_50:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
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
        0 DUPTABLE                         R1 K4 [{"LoadPermissions", "SavePermissions", "SendAllSearchItemLogs", "PrefetchLikelyCollaborators"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["LoadPermissions"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SavePermissions"]
       11 GETUPVAL                         R3 2
       12 JUMPIFNOT                        R3 ; [+4]
       13 NEWCLOSURE                       R2 P2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 JUMP                             ; [+1]
       17 LOADNIL                          R2
       18 SETTABLEKS                       R2 R1 K2 ["SendAllSearchItemLogs"]
       20 GETUPVAL                         R3 4
       21 JUMPIFNOT                        R3 ; [+4]
       22 NEWCLOSURE                       R2 P3
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U5
       25 JUMP                             ; [+1]
       26 LOADNIL                          R2
       27 SETTABLEKS                       R2 R1 K3 ["PrefetchLikelyCollaborators"]
       29 RETURN                           R1 1

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
      196 GETTABLEKS                       R41 R41 K56 ["Footer"]
      198 CALL                             R40 1 1
      199 GETIMPORT                        R41 K18 [require]
      201 GETTABLEKS                       R42 R8 K49 ["Src"]
      203 GETTABLEKS                       R42 R42 K57 ["Thunks"]
      205 GETTABLEKS                       R42 R42 K58 ["SavePermissions"]
      207 CALL                             R41 1 1
      208 GETIMPORT                        R42 K18 [require]
      210 GETTABLEKS                       R43 R8 K49 ["Src"]
      212 GETTABLEKS                       R43 R43 K57 ["Thunks"]
      214 GETTABLEKS                       R43 R43 K59 ["PermissionsLoader"]
      216 CALL                             R42 1 1
      217 LOADNIL                          R43
      218 GETIMPORT                        R44 K1 [game]
      220 LOADK                            R46 K60 ["Collab8766_LogCollabSearchItemClickedEventV4"]
      221 NAMECALL                         R44 R44 K3 ["GetFastFlag"]
      223 CALL                             R44 2 1
      224 GETIMPORT                        R45 K1 [game]
      226 LOADK                            R47 K61 ["UpsellCollabSafety2"]
      227 NAMECALL                         R45 R45 K3 ["GetFastFlag"]
      229 CALL                             R45 2 1
      230 JUMPIFNOT                        R44 ; [+10]
      231 GETIMPORT                        R46 K18 [require]
      233 GETTABLEKS                       R47 R8 K49 ["Src"]
      235 GETTABLEKS                       R47 R47 K57 ["Thunks"]
      237 GETTABLEKS                       R47 R47 K62 ["SendAllSearchItemLogs"]
      239 CALL                             R46 1 1
      240 MOVE                             R43 R46
      241 GETIMPORT                        R46 K1 [game]
      243 LOADK                            R48 K63 ["UpsellCollabTrustedConnection2"]
      244 NAMECALL                         R46 R46 K3 ["GetFastFlag"]
      246 CALL                             R46 2 1
      247 GETIMPORT                        R47 K18 [require]
      249 GETTABLEKS                       R48 R8 K49 ["Src"]
      251 GETTABLEKS                       R48 R48 K64 ["Networking"]
      253 GETTABLEKS                       R48 R48 K65 ["Requests"]
      255 GETTABLEKS                       R48 R48 K66 ["GetAMPRequest"]
      257 CALL                             R47 1 1
      258 GETIMPORT                        R48 K18 [require]
      260 GETTABLEKS                       R49 R8 K49 ["Src"]
      262 GETTABLEKS                       R49 R49 K64 ["Networking"]
      264 GETTABLEKS                       R49 R49 K65 ["Requests"]
      266 GETTABLEKS                       R49 R49 K67 ["GetCanCollaborate"]
      268 CALL                             R48 1 1
      269 GETIMPORT                        R49 K18 [require]
      271 GETTABLEKS                       R50 R8 K49 ["Src"]
      273 GETTABLEKS                       R50 R50 K50 ["Util"]
      275 GETTABLEKS                       R50 R50 K68 ["IsLikelyCollaboratorPrefetchEnabled"]
      277 CALL                             R49 1 1
      278 MOVE                             R50 R49
      279 CALL                             R50 0 1
      280 LOADNIL                          R51
      281 LOADNIL                          R52
      282 JUMPIFNOT                        R50 ; [+20]
      283 GETIMPORT                        R53 K18 [require]
      285 GETTABLEKS                       R54 R8 K49 ["Src"]
      287 GETTABLEKS                       R54 R54 K57 ["Thunks"]
      289 GETTABLEKS                       R54 R54 K69 ["PrefetchLikelyCollaborators"]
      291 CALL                             R53 1 1
      292 MOVE                             R51 R53
      293 GETIMPORT                        R53 K18 [require]
      295 GETTABLEKS                       R54 R8 K49 ["Src"]
      297 GETTABLEKS                       R54 R54 K70 ["Selectors"]
      299 GETTABLEKS                       R54 R54 K71 ["IsGame17Plus"]
      301 CALL                             R53 1 1
      302 MOVE                             R52 R53
      303 GETIMPORT                        R53 K18 [require]
      305 GETTABLEKS                       R54 R8 K49 ["Src"]
      307 GETTABLEKS                       R54 R54 K50 ["Util"]
      309 GETTABLEKS                       R54 R54 K72 ["LoadState"]
      311 CALL                             R53 1 1
      312 GETIMPORT                        R54 K18 [require]
      314 GETTABLEKS                       R55 R8 K49 ["Src"]
      316 GETTABLEKS                       R55 R55 K50 ["Util"]
      318 GETTABLEKS                       R55 R55 K73 ["SaveState"]
      320 CALL                             R54 1 1
      321 GETIMPORT                        R55 K18 [require]
      323 GETTABLEKS                       R56 R8 K49 ["Src"]
      325 GETTABLEKS                       R56 R56 K70 ["Selectors"]
      327 GETTABLEKS                       R56 R56 K74 ["GetHasCollaborators"]
      329 CALL                             R55 1 1
      330 GETIMPORT                        R56 K18 [require]
      332 GETTABLEKS                       R57 R8 K49 ["Src"]
      334 GETTABLEKS                       R57 R57 K70 ["Selectors"]
      336 GETTABLEKS                       R57 R57 K75 ["GetHasNewEditCollaborators"]
      338 CALL                             R56 1 1
      339 GETIMPORT                        R57 K18 [require]
      341 GETTABLEKS                       R58 R8 K49 ["Src"]
      343 GETTABLEKS                       R58 R58 K70 ["Selectors"]
      345 GETTABLEKS                       R58 R58 K76 ["GetHasCurrentEditCollaborators"]
      347 CALL                             R57 1 1
      348 GETIMPORT                        R58 K18 [require]
      350 GETTABLEKS                       R59 R8 K49 ["Src"]
      352 GETTABLEKS                       R59 R59 K70 ["Selectors"]
      354 GETTABLEKS                       R59 R59 K77 ["GetHasUnsavedChanges"]
      356 CALL                             R58 1 1
      357 GETIMPORT                        R59 K18 [require]
      359 GETTABLEKS                       R60 R8 K49 ["Src"]
      361 GETTABLEKS                       R60 R60 K70 ["Selectors"]
      363 GETTABLEKS                       R60 R60 K78 ["GetHasOutsideAgeBucketEditCollaborators"]
      365 CALL                             R59 1 1
      366 GETIMPORT                        R60 K18 [require]
      368 GETTABLEKS                       R61 R8 K49 ["Src"]
      370 GETTABLEKS                       R61 R61 K70 ["Selectors"]
      372 GETTABLEKS                       R61 R61 K79 ["GetCurrentUserIsBlockingCollaborators"]
      374 CALL                             R60 1 1
      375 GETIMPORT                        R61 K18 [require]
      377 GETTABLEKS                       R62 R8 K49 ["Src"]
      379 GETTABLEKS                       R62 R62 K70 ["Selectors"]
      381 GETTABLEKS                       R62 R62 K80 ["GetOwnerIsNotAgeVerified"]
      383 CALL                             R61 1 1
      384 GETIMPORT                        R62 K18 [require]
      386 GETTABLEKS                       R63 R8 K49 ["Src"]
      388 GETTABLEKS                       R63 R63 K70 ["Selectors"]
      390 GETTABLEKS                       R63 R63 K81 ["GetMigrationStatus"]
      392 CALL                             R62 1 1
      393 GETIMPORT                        R63 K18 [require]
      395 GETTABLEKS                       R64 R8 K49 ["Src"]
      397 GETTABLEKS                       R64 R64 K50 ["Util"]
      399 GETTABLEKS                       R64 R64 K82 ["MigrationStatus"]
      401 CALL                             R63 1 1
      402 GETIMPORT                        R64 K18 [require]
      404 GETTABLEKS                       R65 R8 K49 ["Src"]
      406 GETTABLEKS                       R65 R65 K70 ["Selectors"]
      408 GETTABLEKS                       R65 R65 K83 ["GetOwnerIsCountryBlocked"]
      410 CALL                             R64 1 1
      411 GETIMPORT                        R65 K18 [require]
      413 GETTABLEKS                       R66 R8 K49 ["Src"]
      415 GETTABLEKS                       R66 R66 K50 ["Util"]
      417 GETTABLEKS                       R66 R66 K84 ["IsTeamCreateEnabled"]
      419 CALL                             R65 1 1
      420 GETTABLEKS                       R66 R13 K50 ["Util"]
      422 GETTABLEKS                       R67 R66 K85 ["LayoutOrderIterator"]
      424 GETIMPORT                        R68 K18 [require]
      426 GETTABLEKS                       R69 R8 K49 ["Src"]
      428 GETTABLEKS                       R69 R69 K50 ["Util"]
      430 GETTABLEKS                       R69 R69 K86 ["Analytics"]
      432 CALL                             R68 1 1
      433 OR                               R69 R2 R1
      434 GETTABLEKS                       R70 R23 K87 ["View"]
      436 GETIMPORT                        R71 K18 [require]
      438 GETTABLEKS                       R72 R8 K19 ["Packages"]
      440 GETTABLEKS                       R72 R72 K88 ["React"]
      442 CALL                             R71 1 1
      443 GETIMPORT                        R72 K18 [require]
      445 GETTABLEKS                       R73 R8 K49 ["Src"]
      447 GETTABLEKS                       R73 R73 K52 ["Components"]
      449 GETTABLEKS                       R73 R73 K89 ["Header"]
      451 CALL                             R72 1 1
      452 GETTABLEKS                       R73 R9 K90 ["PureComponent"]
      454 LOADK                            R75 K91 ["PermissionsView"]
      455 NAMECALL                         R73 R73 K92 ["extend"]
      457 CALL                             R73 2 1
      458 GETIMPORT                        R74 K18 [require]
      460 GETTABLEKS                       R75 R8 K49 ["Src"]
      462 GETTABLEKS                       R75 R75 K50 ["Util"]
      464 GETTABLEKS                       R75 R75 K93 ["Telemetry"]
      466 GETTABLEKS                       R75 R75 K94 ["CTAClickedEvent"]
      468 CALL                             R74 1 1
      469 GETIMPORT                        R75 K18 [require]
      471 GETTABLEKS                       R76 R8 K49 ["Src"]
      473 GETTABLEKS                       R76 R76 K50 ["Util"]
      475 GETTABLEKS                       R76 R76 K93 ["Telemetry"]
      477 GETTABLEKS                       R76 R76 K95 ["SafetyUpsellBannerShownEvent"]
      479 CALL                             R75 1 1
      480 GETIMPORT                        R76 K18 [require]
      482 GETTABLEKS                       R77 R8 K19 ["Packages"]
      484 GETTABLEKS                       R77 R77 K96 ["TelemetryProtocol"]
      486 CALL                             R76 1 1
      487 GETTABLEKS                       R77 R76 K97 ["new"]
      489 CALL                             R77 0 1
      490 GETIMPORT                        R78 K18 [require]
      492 GETTABLEKS                       R79 R8 K49 ["Src"]
      494 GETTABLEKS                       R79 R79 K52 ["Components"]
      496 GETTABLEKS                       R79 R79 K98 ["UpsellDialog"]
      498 CALL                             R78 1 1
      499 GETIMPORT                        R79 K18 [require]
      501 GETTABLEKS                       R80 R8 K49 ["Src"]
      503 GETTABLEKS                       R80 R80 K39 ["Enums"]
      505 GETTABLEKS                       R80 R80 K99 ["CanCollaborateError"]
      507 CALL                             R79 1 1
      508 DUPCLOSURE                       R80 K100 [PROTO_0]
      509 CAPTURE                          VAL R45
      510 CAPTURE                          VAL R77
      511 CAPTURE                          VAL R74
      512 CAPTURE                          VAL R5
      513 DUPCLOSURE                       R81 K101 [PROTO_2]
      514 CAPTURE                          VAL R6
      515 DUPCLOSURE                       R82 K102 [PROTO_3]
      516 SETTABLEKS                       R82 R73 K103 ["isGroupGame"]
      518 DUPCLOSURE                       R82 K104 [PROTO_4]
      519 CAPTURE                          VAL R5
      520 SETTABLEKS                       R82 R73 K105 ["isLoggedInUserGameOwner"]
      522 DUPCLOSURE                       R82 K106 [PROTO_12]
      523 CAPTURE                          VAL R9
      524 CAPTURE                          VAL R45
      525 CAPTURE                          VAL R77
      526 CAPTURE                          VAL R74
      527 CAPTURE                          VAL R5
      528 CAPTURE                          VAL R7
      529 CAPTURE                          VAL R6
      530 CAPTURE                          VAL R12
      531 CAPTURE                          VAL R75
      532 SETTABLEKS                       R82 R73 K107 ["init"]
      534 DUPCLOSURE                       R82 K108 [PROTO_25]
      535 CAPTURE                          VAL R46
      536 CAPTURE                          VAL R47
      537 CAPTURE                          VAL R77
      538 CAPTURE                          VAL R75
      539 CAPTURE                          VAL R5
      540 CAPTURE                          VAL R12
      541 SETTABLEKS                       R82 R73 K109 ["didUpdate"]
      543 DUPCLOSURE                       R82 K110 [PROTO_26]
      544 CAPTURE                          VAL R48
      545 CAPTURE                          VAL R79
      546 CAPTURE                          VAL R7
      547 CAPTURE                          VAL R6
      548 SETGLOBAL                        R82 K111 ["checkAndMaybeShowVerifyAgeDialog"]
      550 DUPCLOSURE                       R82 K112 [PROTO_27]
      551 CAPTURE                          VAL R12
      552 CAPTURE                          VAL R44
      553 CAPTURE                          VAL R65
      554 CAPTURE                          VAL R4
      555 SETTABLEKS                       R82 R73 K113 ["onSavePressed"]
      557 DUPCLOSURE                       R82 K114 [PROTO_30]
      558 CAPTURE                          VAL R44
      559 CAPTURE                          VAL R68
      560 CAPTURE                          VAL R36
      561 CAPTURE                          VAL R22
      562 CAPTURE                          VAL R9
      563 SETTABLEKS                       R82 R73 K115 ["onCancelPressed"]
      565 DUPCLOSURE                       R82 K116 [PROTO_47]
      566 CAPTURE                          VAL R46
      567 CAPTURE                          VAL R12
      568 CAPTURE                          VAL R44
      569 CAPTURE                          VAL R54
      570 CAPTURE                          VAL R53
      571 CAPTURE                          VAL R50
      572 CAPTURE                          VAL R3
      573 CAPTURE                          VAL R63
      574 CAPTURE                          VAL R65
      575 CAPTURE                          VAL R69
      576 CAPTURE                          VAL R67
      577 CAPTURE                          VAL R45
      578 CAPTURE                          VAL R9
      579 CAPTURE                          VAL R20
      580 CAPTURE                          VAL R71
      581 CAPTURE                          VAL R72
      582 CAPTURE                          VAL R4
      583 CAPTURE                          VAL R70
      584 CAPTURE                          VAL R28
      585 CAPTURE                          VAL R27
      586 CAPTURE                          VAL R30
      587 CAPTURE                          VAL R24
      588 CAPTURE                          VAL R31
      589 CAPTURE                          VAL R33
      590 CAPTURE                          VAL R34
      591 CAPTURE                          VAL R35
      592 CAPTURE                          VAL R77
      593 CAPTURE                          VAL R74
      594 CAPTURE                          VAL R5
      595 CAPTURE                          VAL R7
      596 CAPTURE                          VAL R6
      597 CAPTURE                          VAL R29
      598 CAPTURE                          VAL R23
      599 CAPTURE                          VAL R32
      600 CAPTURE                          VAL R2
      601 CAPTURE                          VAL R25
      602 CAPTURE                          VAL R26
      603 CAPTURE                          VAL R38
      604 CAPTURE                          VAL R39
      605 CAPTURE                          VAL R37
      606 CAPTURE                          VAL R0
      607 CAPTURE                          VAL R19
      608 CAPTURE                          VAL R11
      609 CAPTURE                          VAL R78
      610 CAPTURE                          VAL R40
      611 CAPTURE                          VAL R21
      612 SETTABLEKS                       R82 R73 K117 ["render"]
      614 MOVE                             R82 R15
      615 DUPTABLE                         R83 K118 [{"Stylizer", "Localization"}]
      616 SETTABLEKS                       R16 R83 K29 ["Stylizer"]
      618 SETTABLEKS                       R17 R83 K30 ["Localization"]
      620 CALL                             R82 1 1
      621 MOVE                             R83 R73
      622 CALL                             R82 1 1
      623 MOVE                             R73 R82
      624 GETTABLEKS                       R82 R10 K119 ["connect"]
      626 NEWCLOSURE                       R83 P10
      627 CAPTURE                          VAL R58
      628 CAPTURE                          VAL R53
      629 CAPTURE                          VAL R54
      630 CAPTURE                          VAL R55
      631 CAPTURE                          VAL R57
      632 CAPTURE                          VAL R12
      633 CAPTURE                          VAL R56
      634 CAPTURE                          VAL R59
      635 CAPTURE                          VAL R60
      636 CAPTURE                          VAL R61
      637 CAPTURE                          VAL R64
      638 CAPTURE                          VAL R50
      639 CAPTURE                          REF R52
      640 CAPTURE                          VAL R3
      641 CAPTURE                          VAL R62
      642 NEWCLOSURE                       R84 P11
      643 CAPTURE                          VAL R42
      644 CAPTURE                          VAL R41
      645 CAPTURE                          VAL R44
      646 CAPTURE                          REF R43
      647 CAPTURE                          VAL R50
      648 CAPTURE                          REF R51
      649 CALL                             R82 2 1
      650 MOVE                             R83 R73
      651 CALL                             R82 1 1
      652 MOVE                             R73 R82
      653 CLOSEUPVALS                      R43
      654 RETURN                           R73 1
