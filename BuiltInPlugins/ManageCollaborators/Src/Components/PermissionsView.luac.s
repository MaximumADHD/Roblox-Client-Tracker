PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+17]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K3 [{"userid", "action", "upsellEntrySurface"}]
        5 GETUPVAL                         R5 3
        6 NAMECALL                         R5 R5 K4 ["GetUserId"]
        8 CALL                             R5 1 1
        9 SETTABLEKS                       R5 R4 K0 ["userid"]
       11 SETTABLEKS                       R0 R4 K1 ["action"]
       13 LOADK                            R5 K5 ["manage_collaborators"]
       14 SETTABLEKS                       R5 R4 K2 ["upsellEntrySurface"]
       16 NAMECALL                         R1 R1 K6 ["logRobloxTelemetryEvent"]
       18 CALL                             R1 3 0
       19 RETURN                           R0 0

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
        1 JUMPIFNOT                        R0 ; [+18]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 DUPTABLE                         R3 K3 [{"userid", "action", "upsellEntrySurface"}]
        5 GETUPVAL                         R4 3
        6 NAMECALL                         R4 R4 K4 ["GetUserId"]
        8 CALL                             R4 1 1
        9 SETTABLEKS                       R4 R3 K0 ["userid"]
       11 LOADK                            R4 K5 ["start"]
       12 SETTABLEKS                       R4 R3 K1 ["action"]
       14 LOADK                            R4 K6 ["manage_collaborators"]
       15 SETTABLEKS                       R4 R3 K2 ["upsellEntrySurface"]
       17 NAMECALL                         R0 R0 K7 ["logRobloxTelemetryEvent"]
       19 CALL                             R0 3 0
       20 GETUPVAL                         R0 4
       21 GETIMPORT                        R1 K9 [pcall]
       23 NEWCLOSURE                       R2 P0
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          VAL R0
       26 CALL                             R1 1 2
       27 JUMPIF                           R1 ; [+10]
       28 GETIMPORT                        R3 K11 [warn]
       30 LOADK                            R5 K12 ["OpenUrl failed: "]
       31 FASTCALL1                        TOSTRING R2 ; [+3]
       32 MOVE                             R7 R2
       33 GETIMPORT                        R6 K14 [tostring]
       35 CALL                             R6 1 1
       36 CONCAT                           R4 R5 R6
       37 CALL                             R3 1 0
       38 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+18]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 DUPTABLE                         R3 K3 [{"userid", "action", "upsellEntrySurface"}]
        5 GETUPVAL                         R4 3
        6 NAMECALL                         R4 R4 K4 ["GetUserId"]
        8 CALL                             R4 1 1
        9 SETTABLEKS                       R4 R3 K0 ["userid"]
       11 LOADK                            R4 K5 ["tc_start"]
       12 SETTABLEKS                       R4 R3 K1 ["action"]
       14 LOADK                            R4 K6 ["manage_collaborators"]
       15 SETTABLEKS                       R4 R3 K2 ["upsellEntrySurface"]
       17 NAMECALL                         R0 R0 K7 ["logRobloxTelemetryEvent"]
       19 CALL                             R0 3 0
       20 GETUPVAL                         R0 4
       21 GETTABLEKS                       R0 R0 K8 ["fstringCreatorHubImpactedExperiencesLink"]
       23 GETIMPORT                        R1 K10 [pcall]
       25 NEWCLOSURE                       R2 P0
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          VAL R0
       28 CALL                             R1 1 2
       29 JUMPIF                           R1 ; [+10]
       30 GETIMPORT                        R3 K12 [warn]
       32 LOADK                            R5 K13 ["OpenUrl failed: "]
       33 FASTCALL1                        TOSTRING R2 ; [+3]
       34 MOVE                             R7 R2
       35 GETIMPORT                        R6 K15 [tostring]
       37 CALL                             R6 1 1
       38 CONCAT                           R4 R5 R6
       39 CALL                             R3 1 0
       40 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["fflagManageCollaboratorsAgeGatingTelemetry"]
        3 JUMPIFNOT                        R3 ; [+2]
        4 ORK                              R2 R1 K1 ["owners_view"]
        5 JUMP                             ; [+1]
        6 LOADK                            R2 K1 ["owners_view"]
        7 GETUPVAL                         R3 1
        8 JUMPIFNOT                        R3 ; [+17]
        9 GETUPVAL                         R3 2
       10 GETUPVAL                         R5 3
       11 DUPTABLE                         R6 K5 [{"userid", "action", "upsellEntrySurface"}]
       12 GETUPVAL                         R7 4
       13 NAMECALL                         R7 R7 K6 ["GetUserId"]
       15 CALL                             R7 1 1
       16 SETTABLEKS                       R7 R6 K2 ["userid"]
       18 SETTABLEKS                       R2 R6 K3 ["action"]
       20 LOADK                            R7 K7 ["manage_collaborators"]
       21 SETTABLEKS                       R7 R6 K4 ["upsellEntrySurface"]
       23 NAMECALL                         R3 R3 K8 ["logRobloxTelemetryEvent"]
       25 CALL                             R3 3 0
       26 GETIMPORT                        R2 K11 [string.format]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K12 ["fstringCreatorHubOwnersViewLinkFormatStr"]
       31 FASTCALL1                        TOSTRING R0 ; [+3]
       32 MOVE                             R5 R0
       33 GETIMPORT                        R4 K14 [tostring]
       35 CALL                             R4 1 1
       36 CALL                             R2 2 1
       37 GETIMPORT                        R3 K16 [pcall]
       39 NEWCLOSURE                       R4 P0
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          VAL R2
       42 CALL                             R3 1 2
       43 JUMPIF                           R3 ; [+10]
       44 GETIMPORT                        R5 K18 [warn]
       46 LOADK                            R7 K19 ["OpenUrl failed: "]
       47 FASTCALL1                        TOSTRING R4 ; [+3]
       48 MOVE                             R9 R4
       49 GETIMPORT                        R8 K14 [tostring]
       51 CALL                             R8 1 1
       52 CONCAT                           R6 R7 R8
       53 CALL                             R5 1 0
       54 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K1 [{"upsellDialogEnabled"}]
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["upsellDialogEnabled"]
        4 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K3 [{"userId", "telemetryType", "upsellEntrySurface"}]
        3 GETUPVAL                         R4 2
        4 NAMECALL                         R4 R4 K4 ["GetUserId"]
        6 CALL                             R4 1 1
        7 SETTABLEKS                       R4 R3 K0 ["userId"]
        9 LOADK                            R4 K5 ["load"]
       10 SETTABLEKS                       R4 R3 K1 ["telemetryType"]
       12 LOADK                            R4 K6 ["manage_collaborators_tc_dialog"]
       13 SETTABLEKS                       R4 R3 K2 ["upsellEntrySurface"]
       15 NAMECALL                         R0 R0 K7 ["logRobloxTelemetryEvent"]
       17 CALL                             R0 3 0
       18 GETUPVAL                         R0 3
       19 DUPCLOSURE                       R2 K8 [PROTO_9]
       20 NAMECALL                         R0 R0 K9 ["setState"]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K1 [{"upsellDialogEnabled"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["upsellDialogEnabled"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K4 ["scrollingFrameRef"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K5 ["contentHeightChanged"]
       16 DUPCLOSURE                       R1 K6 [PROTO_6]
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 SETTABLEKS                       R1 R0 K7 ["launchFAEPlusVPC"]
       25 DUPCLOSURE                       R1 K8 [PROTO_7]
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U6
       32 SETTABLEKS                       R1 R0 K9 ["launchCreatorHub"]
       34 DUPCLOSURE                       R1 K10 [PROTO_8]
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U6
       41 SETTABLEKS                       R1 R0 K11 ["launchCreatorHubUniverseSafetyView"]
       43 NEWCLOSURE                       R1 P4
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R1 R0 K12 ["launchModal"]
       50 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+27]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 DUPTABLE                         R4 K3 [{"userId", "telemetryType", "upsellEntrySurface"}]
        4 GETUPVAL                         R5 2
        5 NAMECALL                         R5 R5 K4 ["GetUserId"]
        7 CALL                             R5 1 1
        8 SETTABLEKS                       R5 R4 K0 ["userId"]
       10 LOADK                            R5 K5 ["load"]
       11 SETTABLEKS                       R5 R4 K1 ["telemetryType"]
       13 LOADK                            R5 K6 ["manage_collaborators"]
       14 SETTABLEKS                       R5 R4 K2 ["upsellEntrySurface"]
       16 NAMECALL                         R1 R1 K7 ["logRobloxTelemetryEvent"]
       18 CALL                             R1 3 0
       19 GETUPVAL                         R1 3
       20 DUPTABLE                         R3 K9 [{"ShowSafetyBanner"}]
       21 LOADB                            R4 1
       22 SETTABLEKS                       R4 R3 K8 ["ShowSafetyBanner"]
       24 NAMECALL                         R1 R1 K10 ["setState"]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R1 3
       29 DUPTABLE                         R3 K9 [{"ShowSafetyBanner"}]
       30 LOADB                            R4 0
       31 SETTABLEKS                       R4 R3 K8 ["ShowSafetyBanner"]
       33 NAMECALL                         R1 R1 K10 ["setState"]
       35 CALL                             R1 2 0
       36 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K1 [{"ShowSafetyBanner"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["ShowSafetyBanner"]
        4 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_13]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_15:
        0 JUMPIFNOT                        R0 ; [+27]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 DUPTABLE                         R4 K3 [{"userId", "telemetryType", "upsellEntrySurface"}]
        4 GETUPVAL                         R5 2
        5 NAMECALL                         R5 R5 K4 ["GetUserId"]
        7 CALL                             R5 1 1
        8 SETTABLEKS                       R5 R4 K0 ["userId"]
       10 LOADK                            R5 K5 ["load"]
       11 SETTABLEKS                       R5 R4 K1 ["telemetryType"]
       13 LOADK                            R5 K6 ["manage_collaborators_establish_trust"]
       14 SETTABLEKS                       R5 R4 K2 ["upsellEntrySurface"]
       16 NAMECALL                         R1 R1 K7 ["logRobloxTelemetryEvent"]
       18 CALL                             R1 3 0
       19 GETUPVAL                         R1 3
       20 DUPTABLE                         R3 K9 [{"ShowTrustedConnectionsBanner"}]
       21 LOADB                            R4 1
       22 SETTABLEKS                       R4 R3 K8 ["ShowTrustedConnectionsBanner"]
       24 NAMECALL                         R1 R1 K10 ["setState"]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R1 3
       29 DUPTABLE                         R3 K9 [{"ShowTrustedConnectionsBanner"}]
       30 LOADB                            R4 0
       31 SETTABLEKS                       R4 R3 K8 ["ShowTrustedConnectionsBanner"]
       33 NAMECALL                         R1 R1 K10 ["setState"]
       35 CALL                             R1 2 0
       36 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R1 K1 [{"ShowTrustedConnectionsBanner"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["ShowTrustedConnectionsBanner"]
        4 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_16]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"ShowTrustedConnectionsOption"}]
        2 SETTABLEKS                       R0 R3 K0 ["ShowTrustedConnectionsOption"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_19:
        0 DUPTABLE                         R1 K1 [{"ShowTrustedConnectionsOption"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["ShowTrustedConnectionsOption"]
        4 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_19]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_21:
        0 JUMPIFNOT                        R0 ; [+27]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 DUPTABLE                         R4 K3 [{"userId", "telemetryType", "upsellEntrySurface"}]
        4 GETUPVAL                         R5 2
        5 NAMECALL                         R5 R5 K4 ["GetUserId"]
        7 CALL                             R5 1 1
        8 SETTABLEKS                       R5 R4 K0 ["userId"]
       10 LOADK                            R5 K5 ["load"]
       11 SETTABLEKS                       R5 R4 K1 ["telemetryType"]
       13 LOADK                            R5 K6 ["manage_collaborators_reverification_banner"]
       14 SETTABLEKS                       R5 R4 K2 ["upsellEntrySurface"]
       16 NAMECALL                         R1 R1 K7 ["logRobloxTelemetryEvent"]
       18 CALL                             R1 3 0
       19 GETUPVAL                         R1 3
       20 DUPTABLE                         R3 K9 [{"ShowReverificationBanner"}]
       21 LOADB                            R4 1
       22 SETTABLEKS                       R4 R3 K8 ["ShowReverificationBanner"]
       24 NAMECALL                         R1 R1 K10 ["setState"]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R1 3
       29 DUPTABLE                         R3 K9 [{"ShowReverificationBanner"}]
       30 LOADB                            R4 0
       31 SETTABLEKS                       R4 R3 K8 ["ShowReverificationBanner"]
       33 NAMECALL                         R1 R1 K10 ["setState"]
       35 CALL                             R1 2 0
       36 RETURN                           R0 0

PROTO_22:
        0 DUPTABLE                         R1 K1 [{"ShowReverificationBanner"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["ShowReverificationBanner"]
        4 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_22]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_24:
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
       86 JUMPIFNOT                        R2 ; [+61]
       87 GETTABLEKS                       R2 R0 K1 ["props"]
       89 GETTABLEKS                       R2 R2 K12 ["HasOutsideAgeBucketEditCollaborators"]
       91 GETTABLEKS                       R3 R1 K12 ["HasOutsideAgeBucketEditCollaborators"]
       93 JUMPIFEQ                         R2 R3 ; [+54]
       95 GETUPVAL                         R2 5
       96 GETTABLEKS                       R2 R2 K13 ["fflagManageCollaboratorsAgeGatingTelemetry"]
       98 JUMPIFNOT                        R2 ; [+39]
       99 NAMECALL                         R2 R0 K14 ["isLoggedInUserGameOwner"]
      101 CALL                             R2 1 1
      102 JUMPIFNOT                        R2 ; [+35]
      103 GETTABLEKS                       R2 R0 K1 ["props"]
      105 GETTABLEKS                       R2 R2 K12 ["HasOutsideAgeBucketEditCollaborators"]
      107 JUMPIFNOT                        R2 ; [+30]
      108 GETUPVAL                         R2 2
      109 GETUPVAL                         R4 3
      110 DUPTABLE                         R5 K20 [{"userId", "telemetryType", "upsellEntrySurface", "placeId", "universeId"}]
      111 GETUPVAL                         R6 4
      112 NAMECALL                         R6 R6 K21 ["GetUserId"]
      114 CALL                             R6 1 1
      115 SETTABLEKS                       R6 R5 K15 ["userId"]
      117 LOADK                            R6 K22 ["load"]
      118 SETTABLEKS                       R6 R5 K16 ["telemetryType"]
      120 LOADK                            R6 K23 ["manage_collaborators_outside_age_bucket_banner"]
      121 SETTABLEKS                       R6 R5 K17 ["upsellEntrySurface"]
      123 GETIMPORT                        R6 K25 [game]
      125 GETTABLEKS                       R6 R6 K26 ["PlaceId"]
      127 SETTABLEKS                       R6 R5 K18 ["placeId"]
      129 GETIMPORT                        R6 K25 [game]
      131 GETTABLEKS                       R6 R6 K27 ["GameId"]
      133 SETTABLEKS                       R6 R5 K19 ["universeId"]
      135 NAMECALL                         R2 R2 K28 ["logRobloxTelemetryEvent"]
      137 CALL                             R2 3 0
      138 DUPTABLE                         R4 K30 [{"ShowOutsideAgeBucketBanner"}]
      139 GETTABLEKS                       R5 R0 K1 ["props"]
      141 GETTABLEKS                       R5 R5 K12 ["HasOutsideAgeBucketEditCollaborators"]
      143 SETTABLEKS                       R5 R4 K29 ["ShowOutsideAgeBucketBanner"]
      145 NAMECALL                         R2 R0 K31 ["setState"]
      147 CALL                             R2 2 0
      148 GETUPVAL                         R2 5
      149 GETTABLEKS                       R2 R2 K32 ["fflagManageCollaboratorsEditorBlockingBanner"]
      151 JUMPIFNOT                        R2 ; [+61]
      152 GETTABLEKS                       R2 R0 K1 ["props"]
      154 GETTABLEKS                       R2 R2 K33 ["HasCurrentUserBlockingCollaborators"]
      156 GETTABLEKS                       R3 R1 K33 ["HasCurrentUserBlockingCollaborators"]
      158 JUMPIFEQ                         R2 R3 ; [+54]
      160 GETUPVAL                         R2 5
      161 GETTABLEKS                       R2 R2 K13 ["fflagManageCollaboratorsAgeGatingTelemetry"]
      163 JUMPIFNOT                        R2 ; [+39]
      164 NAMECALL                         R2 R0 K14 ["isLoggedInUserGameOwner"]
      166 CALL                             R2 1 1
      167 JUMPIF                           R2 ; [+35]
      168 GETTABLEKS                       R2 R0 K1 ["props"]
      170 GETTABLEKS                       R2 R2 K33 ["HasCurrentUserBlockingCollaborators"]
      172 JUMPIFNOT                        R2 ; [+30]
      173 GETUPVAL                         R2 2
      174 GETUPVAL                         R4 3
      175 DUPTABLE                         R5 K20 [{"userId", "telemetryType", "upsellEntrySurface", "placeId", "universeId"}]
      176 GETUPVAL                         R6 4
      177 NAMECALL                         R6 R6 K21 ["GetUserId"]
      179 CALL                             R6 1 1
      180 SETTABLEKS                       R6 R5 K15 ["userId"]
      182 LOADK                            R6 K22 ["load"]
      183 SETTABLEKS                       R6 R5 K16 ["telemetryType"]
      185 LOADK                            R6 K34 ["manage_collaborators_editor_blocking_banner"]
      186 SETTABLEKS                       R6 R5 K17 ["upsellEntrySurface"]
      188 GETIMPORT                        R6 K25 [game]
      190 GETTABLEKS                       R6 R6 K26 ["PlaceId"]
      192 SETTABLEKS                       R6 R5 K18 ["placeId"]
      194 GETIMPORT                        R6 K25 [game]
      196 GETTABLEKS                       R6 R6 K27 ["GameId"]
      198 SETTABLEKS                       R6 R5 K19 ["universeId"]
      200 NAMECALL                         R2 R2 K28 ["logRobloxTelemetryEvent"]
      202 CALL                             R2 3 0
      203 DUPTABLE                         R4 K36 [{"ShowEditorBlockingBanner"}]
      204 GETTABLEKS                       R5 R0 K1 ["props"]
      206 GETTABLEKS                       R5 R5 K33 ["HasCurrentUserBlockingCollaborators"]
      208 SETTABLEKS                       R5 R4 K35 ["ShowEditorBlockingBanner"]
      210 NAMECALL                         R2 R0 K31 ["setState"]
      212 CALL                             R2 2 0
      213 GETUPVAL                         R2 5
      214 GETTABLEKS                       R2 R2 K37 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      216 JUMPIFNOT                        R2 ; [+57]
      217 GETTABLEKS                       R2 R0 K1 ["props"]
      219 GETTABLEKS                       R2 R2 K38 ["OwnerIsNotAgeVerified"]
      221 GETTABLEKS                       R3 R1 K38 ["OwnerIsNotAgeVerified"]
      223 JUMPIFEQ                         R2 R3 ; [+50]
      225 GETUPVAL                         R2 5
      226 GETTABLEKS                       R2 R2 K13 ["fflagManageCollaboratorsAgeGatingTelemetry"]
      228 JUMPIFNOT                        R2 ; [+35]
      229 GETTABLEKS                       R2 R0 K1 ["props"]
      231 GETTABLEKS                       R2 R2 K38 ["OwnerIsNotAgeVerified"]
      233 JUMPIFNOT                        R2 ; [+30]
      234 GETUPVAL                         R2 2
      235 GETUPVAL                         R4 3
      236 DUPTABLE                         R5 K20 [{"userId", "telemetryType", "upsellEntrySurface", "placeId", "universeId"}]
      237 GETUPVAL                         R6 4
      238 NAMECALL                         R6 R6 K21 ["GetUserId"]
      240 CALL                             R6 1 1
      241 SETTABLEKS                       R6 R5 K15 ["userId"]
      243 LOADK                            R6 K22 ["load"]
      244 SETTABLEKS                       R6 R5 K16 ["telemetryType"]
      246 LOADK                            R6 K39 ["manage_collaborators_owner_not_age_verified_banner"]
      247 SETTABLEKS                       R6 R5 K17 ["upsellEntrySurface"]
      249 GETIMPORT                        R6 K25 [game]
      251 GETTABLEKS                       R6 R6 K26 ["PlaceId"]
      253 SETTABLEKS                       R6 R5 K18 ["placeId"]
      255 GETIMPORT                        R6 K25 [game]
      257 GETTABLEKS                       R6 R6 K27 ["GameId"]
      259 SETTABLEKS                       R6 R5 K19 ["universeId"]
      261 NAMECALL                         R2 R2 K28 ["logRobloxTelemetryEvent"]
      263 CALL                             R2 3 0
      264 DUPTABLE                         R4 K41 [{"ShowOwnerNotAgeVerifiedBanner"}]
      265 GETTABLEKS                       R5 R0 K1 ["props"]
      267 GETTABLEKS                       R5 R5 K38 ["OwnerIsNotAgeVerified"]
      269 SETTABLEKS                       R5 R4 K40 ["ShowOwnerNotAgeVerifiedBanner"]
      271 NAMECALL                         R2 R0 K31 ["setState"]
      273 CALL                             R2 2 0
      274 GETUPVAL                         R2 5
      275 GETTABLEKS                       R2 R2 K42 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      277 JUMPIFNOT                        R2 ; [+57]
      278 GETTABLEKS                       R2 R0 K1 ["props"]
      280 GETTABLEKS                       R2 R2 K43 ["OwnerIsCountryBlocked"]
      282 GETTABLEKS                       R3 R1 K43 ["OwnerIsCountryBlocked"]
      284 JUMPIFEQ                         R2 R3 ; [+50]
      286 GETUPVAL                         R2 5
      287 GETTABLEKS                       R2 R2 K13 ["fflagManageCollaboratorsAgeGatingTelemetry"]
      289 JUMPIFNOT                        R2 ; [+35]
      290 GETTABLEKS                       R2 R0 K1 ["props"]
      292 GETTABLEKS                       R2 R2 K43 ["OwnerIsCountryBlocked"]
      294 JUMPIFNOT                        R2 ; [+30]
      295 GETUPVAL                         R2 2
      296 GETUPVAL                         R4 3
      297 DUPTABLE                         R5 K20 [{"userId", "telemetryType", "upsellEntrySurface", "placeId", "universeId"}]
      298 GETUPVAL                         R6 4
      299 NAMECALL                         R6 R6 K21 ["GetUserId"]
      301 CALL                             R6 1 1
      302 SETTABLEKS                       R6 R5 K15 ["userId"]
      304 LOADK                            R6 K22 ["load"]
      305 SETTABLEKS                       R6 R5 K16 ["telemetryType"]
      307 LOADK                            R6 K44 ["manage_collaborators_owner_country_blocked_banner"]
      308 SETTABLEKS                       R6 R5 K17 ["upsellEntrySurface"]
      310 GETIMPORT                        R6 K25 [game]
      312 GETTABLEKS                       R6 R6 K26 ["PlaceId"]
      314 SETTABLEKS                       R6 R5 K18 ["placeId"]
      316 GETIMPORT                        R6 K25 [game]
      318 GETTABLEKS                       R6 R6 K27 ["GameId"]
      320 SETTABLEKS                       R6 R5 K19 ["universeId"]
      322 NAMECALL                         R2 R2 K28 ["logRobloxTelemetryEvent"]
      324 CALL                             R2 3 0
      325 DUPTABLE                         R4 K46 [{"ShowOwnerCountryBlockedBanner"}]
      326 GETTABLEKS                       R5 R0 K1 ["props"]
      328 GETTABLEKS                       R5 R5 K43 ["OwnerIsCountryBlocked"]
      330 SETTABLEKS                       R5 R4 K45 ["ShowOwnerCountryBlockedBanner"]
      332 NAMECALL                         R2 R0 K31 ["setState"]
      334 CALL                             R2 2 0
      335 RETURN                           R0 0

PROTO_25:
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
       40 DUPTABLE                         R10 K15 [{"PluginId", "ItemId"}]
       41 LOADK                            R11 K16 ["ManageCollaborators"]
       42 SETTABLEKS                       R11 R10 K13 ["PluginId"]
       44 LOADK                            R11 K17 ["VerifyAgeDialog"]
       45 SETTABLEKS                       R11 R10 K14 ["ItemId"]
       47 DUPTABLE                         R11 K23 [{"Type", "Title", "Description", "PrimaryButton", "SecondaryButton"}]
       48 LOADK                            R12 K24 ["Critical"]
       49 SETTABLEKS                       R12 R11 K18 ["Type"]
       51 LOADK                            R14 K25 ["DialogSafety"]
       52 LOADK                            R15 K26 ["VerifyYourAge"]
       53 NAMECALL                         R12 R7 K27 ["getText"]
       55 CALL                             R12 3 1
       56 SETTABLEKS                       R12 R11 K19 ["Title"]
       58 LOADK                            R14 K25 ["DialogSafety"]
       59 LOADK                            R15 K28 ["VerifyYourAgeDescription"]
       60 NAMECALL                         R12 R7 K27 ["getText"]
       62 CALL                             R12 3 1
       63 SETTABLEKS                       R12 R11 K20 ["Description"]
       65 DUPTABLE                         R12 K31 [{"Uri", "Text"}]
       66 DUPTABLE                         R13 K15 [{"PluginId", "ItemId"}]
       67 LOADK                            R14 K16 ["ManageCollaborators"]
       68 SETTABLEKS                       R14 R13 K13 ["PluginId"]
       70 LOADK                            R14 K32 ["VerifyAgeDialog/Verify"]
       71 SETTABLEKS                       R14 R13 K14 ["ItemId"]
       73 SETTABLEKS                       R13 R12 K29 ["Uri"]
       75 LOADK                            R15 K33 ["Buttons"]
       76 LOADK                            R16 K34 ["Verify"]
       77 NAMECALL                         R13 R7 K27 ["getText"]
       79 CALL                             R13 3 1
       80 SETTABLEKS                       R13 R12 K30 ["Text"]
       82 SETTABLEKS                       R12 R11 K21 ["PrimaryButton"]
       84 DUPTABLE                         R12 K31 [{"Uri", "Text"}]
       85 DUPTABLE                         R13 K15 [{"PluginId", "ItemId"}]
       86 LOADK                            R14 K16 ["ManageCollaborators"]
       87 SETTABLEKS                       R14 R13 K13 ["PluginId"]
       89 LOADK                            R14 K35 ["VerifyAgeDialog/Cancel"]
       90 SETTABLEKS                       R14 R13 K14 ["ItemId"]
       92 SETTABLEKS                       R13 R12 K29 ["Uri"]
       94 LOADK                            R15 K33 ["Buttons"]
       95 LOADK                            R16 K36 ["Cancel"]
       96 NAMECALL                         R13 R7 K27 ["getText"]
       98 CALL                             R13 3 1
       99 SETTABLEKS                       R13 R12 K30 ["Text"]
      101 SETTABLEKS                       R12 R11 K22 ["SecondaryButton"]
      103 NAMECALL                         R8 R2 K37 ["ShowDialogAsync"]
      105 CALL                             R8 3 1
      106 GETTABLEKS                       R9 R8 K38 ["SelectedButtonUri"]
      108 GETTABLEKS                       R9 R9 K14 ["ItemId"]
      110 JUMPIFNOTEQKS                    R9 K32 ["VerifyAgeDialog/Verify"] ; [+19]
      112 GETUPVAL                         R9 2
      113 GETIMPORT                        R10 K40 [pcall]
      115 NEWCLOSURE                       R11 P0
      116 CAPTURE                          UPVAL U3
      117 CAPTURE                          VAL R9
      118 CALL                             R10 1 2
      119 JUMPIF                           R10 ; [+10]
      120 GETIMPORT                        R12 K42 [warn]
      122 LOADK                            R14 K43 ["OpenUrl failed: "]
      123 FASTCALL1                        TOSTRING R11 ; [+3]
      124 MOVE                             R16 R11
      125 GETIMPORT                        R15 K45 [tostring]
      127 CALL                             R15 1 1
      128 CONCAT                           R13 R14 R15
      129 CALL                             R12 1 0
      130 LOADB                            R9 1
      131 RETURN                           R9 1

PROTO_26:
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
       28 JUMPIFNOT                        R4 ; [+12]
       29 MOVE                             R4 R3
       30 DUPTABLE                         R5 K10 [{"isAdded", "isCanceled", "isRemoved"}]
       31 LOADB                            R6 1
       32 SETTABLEKS                       R6 R5 K7 ["isAdded"]
       34 LOADB                            R6 0
       35 SETTABLEKS                       R6 R5 K8 ["isCanceled"]
       37 LOADB                            R6 0
       38 SETTABLEKS                       R6 R5 K9 ["isRemoved"]
       40 CALL                             R4 1 0
       41 GETUPVAL                         R4 2
       42 CALL                             R4 0 1
       43 JUMPIF                           R4 ; [+4]
       44 GETUPVAL                         R4 3
       45 NAMECALL                         R4 R4 K11 ["PublishThenTurnOnTeamCreate"]
       47 CALL                             R4 1 0
       48 RETURN                           R0 0

PROTO_27:
        0 JUMPIFNOTEQKS                    R0 K0 ["YES"] ; [+17]
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+12]
        4 GETUPVAL                         R1 1
        5 DUPTABLE                         R2 K4 [{"isAdded", "isCanceled", "isRemoved"}]
        6 LOADB                            R3 0
        7 SETTABLEKS                       R3 R2 K1 ["isAdded"]
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R2 K2 ["isCanceled"]
       12 LOADB                            R3 0
       13 SETTABLEKS                       R3 R2 K3 ["isRemoved"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 2
       17 CALL                             R1 0 0
       18 RETURN                           R0 0

PROTO_28:
        0 RETURN                           R0 0

PROTO_29:
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
       29 DUPTABLE                         R9 K10 [{"Key", "Text"}]
       30 LOADK                            R10 K11 ["NO"]
       31 SETTABLEKS                       R10 R9 K8 ["Key"]
       33 LOADK                            R12 K12 ["Buttons"]
       34 LOADK                            R13 K13 ["No"]
       35 NAMECALL                         R10 R4 K14 ["getText"]
       37 CALL                             R10 3 1
       38 SETTABLEKS                       R10 R9 K9 ["Text"]
       40 DUPTABLE                         R10 K16 [{"Key", "Text", "Style"}]
       41 LOADK                            R11 K17 ["YES"]
       42 SETTABLEKS                       R11 R10 K8 ["Key"]
       44 LOADK                            R13 K12 ["Buttons"]
       45 LOADK                            R14 K18 ["Yes"]
       46 NAMECALL                         R11 R4 K14 ["getText"]
       48 CALL                             R11 3 1
       49 SETTABLEKS                       R11 R10 K9 ["Text"]
       51 LOADK                            R11 K19 ["RoundPrimary"]
       52 SETTABLEKS                       R11 R10 K15 ["Style"]
       54 SETLIST                          R8 R9 2 [1]
       56 GETUPVAL                         R9 2
       57 MOVE                             R10 R3
       58 MOVE                             R11 R4
       59 GETUPVAL                         R12 3
       60 DUPTABLE                         R13 K25 [{"Buttons", "MinContentSize", "Style", "OnButtonPressed", "OnClose", "Title", "Modal"}]
       61 SETTABLEKS                       R8 R13 K12 ["Buttons"]
       63 GETTABLEKS                       R14 R5 K26 ["cancelDialog"]
       65 GETTABLEKS                       R14 R14 K27 ["Size"]
       67 SETTABLEKS                       R14 R13 K20 ["MinContentSize"]
       69 LOADK                            R14 K28 ["CancelDialog"]
       70 SETTABLEKS                       R14 R13 K15 ["Style"]
       72 NEWCLOSURE                       R14 P0
       73 CAPTURE                          UPVAL U0
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R6
       76 SETTABLEKS                       R14 R13 K21 ["OnButtonPressed"]
       78 DUPCLOSURE                       R14 K29 [PROTO_28]
       79 SETTABLEKS                       R14 R13 K22 ["OnClose"]
       81 LOADK                            R16 K23 ["Title"]
       82 LOADK                            R17 K30 ["DiscardChanges"]
       83 NAMECALL                         R14 R4 K14 ["getText"]
       85 CALL                             R14 3 1
       86 SETTABLEKS                       R14 R13 K23 ["Title"]
       88 LOADB                            R14 1
       89 SETTABLEKS                       R14 R13 K24 ["Modal"]
       91 DUPTABLE                         R14 K32 [{"Contents"}]
       92 GETUPVAL                         R15 4
       93 GETTABLEKS                       R15 R15 K33 ["createElement"]
       95 LOADK                            R16 K34 ["TextLabel"]
       96 DUPTABLE                         R17 K41 [{"BackgroundTransparency", "TextSize", "Text", "TextColor3", "Font", "Size", "AnchorPoint", "Position"}]
       97 LOADN                            R18 1
       98 SETTABLEKS                       R18 R17 K35 ["BackgroundTransparency"]
      100 GETTABLEKS                       R18 R5 K26 ["cancelDialog"]
      102 GETTABLEKS                       R18 R18 K9 ["Text"]
      104 GETTABLEKS                       R18 R18 K36 ["TextSize"]
      106 SETTABLEKS                       R18 R17 K36 ["TextSize"]
      108 LOADK                            R20 K42 ["Description"]
      109 LOADK                            R21 K30 ["DiscardChanges"]
      110 NAMECALL                         R18 R4 K14 ["getText"]
      112 CALL                             R18 3 1
      113 SETTABLEKS                       R18 R17 K9 ["Text"]
      115 GETTABLEKS                       R18 R5 K26 ["cancelDialog"]
      117 GETTABLEKS                       R18 R18 K9 ["Text"]
      119 GETTABLEKS                       R18 R18 K37 ["TextColor3"]
      121 SETTABLEKS                       R18 R17 K37 ["TextColor3"]
      123 GETTABLEKS                       R18 R5 K26 ["cancelDialog"]
      125 GETTABLEKS                       R18 R18 K9 ["Text"]
      127 GETTABLEKS                       R18 R18 K38 ["Font"]
      129 SETTABLEKS                       R18 R17 K38 ["Font"]
      131 GETIMPORT                        R18 K45 [UDim2.fromScale]
      133 LOADN                            R19 1
      134 LOADN                            R20 1
      135 CALL                             R18 2 1
      136 SETTABLEKS                       R18 R17 K27 ["Size"]
      138 GETIMPORT                        R18 K48 [Vector2.new]
      140 LOADK                            R19 K49 [0.5]
      141 LOADK                            R20 K49 [0.5]
      142 CALL                             R18 2 1
      143 SETTABLEKS                       R18 R17 K39 ["AnchorPoint"]
      145 GETTABLEKS                       R18 R5 K26 ["cancelDialog"]
      147 GETTABLEKS                       R18 R18 K40 ["Position"]
      149 SETTABLEKS                       R18 R17 K40 ["Position"]
      151 CALL                             R15 2 1
      152 SETTABLEKS                       R15 R14 K31 ["Contents"]
      154 CALL                             R9 5 0
      155 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onSavePressed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETUPVAL                         R0 1
        3 DUPTABLE                         R1 K3 [{"isAdded", "isCanceled", "isRemoved"}]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K0 ["isAdded"]
        7 LOADB                            R2 1
        8 SETTABLEKS                       R2 R1 K1 ["isCanceled"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K2 ["isRemoved"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 2
       15 NAMECALL                         R0 R0 K4 ["PublishThenTurnOnTeamCreate"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"ShowTrustedConnectionsBanner"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["ShowTrustedConnectionsBanner"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+18]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 DUPTABLE                         R3 K3 [{"userid", "action", "upsellEntrySurface"}]
        5 GETUPVAL                         R4 3
        6 NAMECALL                         R4 R4 K4 ["GetUserId"]
        8 CALL                             R4 1 1
        9 SETTABLEKS                       R4 R3 K0 ["userid"]
       11 LOADK                            R4 K5 ["reverify_start"]
       12 SETTABLEKS                       R4 R3 K1 ["action"]
       14 LOADK                            R4 K6 ["manage_collaborators"]
       15 SETTABLEKS                       R4 R3 K2 ["upsellEntrySurface"]
       17 NAMECALL                         R0 R0 K7 ["logRobloxTelemetryEvent"]
       19 CALL                             R0 3 0
       20 GETUPVAL                         R0 4
       21 GETIMPORT                        R1 K9 [pcall]
       23 NEWCLOSURE                       R2 P0
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          VAL R0
       26 CALL                             R1 1 2
       27 JUMPIF                           R1 ; [+10]
       28 GETIMPORT                        R3 K11 [warn]
       30 LOADK                            R5 K12 ["OpenUrl failed: "]
       31 FASTCALL1                        TOSTRING R2 ; [+3]
       32 MOVE                             R7 R2
       33 GETIMPORT                        R6 K14 [tostring]
       35 CALL                             R6 1 1
       36 CONCAT                           R4 R5 R6
       37 CALL                             R3 1 0
       38 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"ShowReverificationBanner"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["ShowReverificationBanner"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_35:
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

PROTO_36:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"ShowOutsideAgeBucketBanner"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["ShowOutsideAgeBucketBanner"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_37:
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

PROTO_38:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"ShowEditorBlockingBanner"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["ShowEditorBlockingBanner"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fflagManageCollaboratorsAgeGatingTelemetry"]
        3 JUMPIFNOT                        R0 ; [+20]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+18]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 3
        8 DUPTABLE                         R3 K4 [{"userid", "action", "upsellEntrySurface"}]
        9 GETUPVAL                         R4 4
       10 NAMECALL                         R4 R4 K5 ["GetUserId"]
       12 CALL                             R4 1 1
       13 SETTABLEKS                       R4 R3 K1 ["userid"]
       15 LOADK                            R4 K6 ["owner_not_age_verified_cta"]
       16 SETTABLEKS                       R4 R3 K2 ["action"]
       18 LOADK                            R4 K7 ["manage_collaborators"]
       19 SETTABLEKS                       R4 R3 K3 ["upsellEntrySurface"]
       21 NAMECALL                         R0 R0 K8 ["logRobloxTelemetryEvent"]
       23 CALL                             R0 3 0
       24 GETUPVAL                         R0 5
       25 GETIMPORT                        R1 K10 [pcall]
       27 NEWCLOSURE                       R2 P0
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          VAL R0
       30 CALL                             R1 1 2
       31 JUMPIF                           R1 ; [+10]
       32 GETIMPORT                        R3 K12 [warn]
       34 LOADK                            R5 K13 ["OpenUrl failed: "]
       35 FASTCALL1                        TOSTRING R2 ; [+3]
       36 MOVE                             R7 R2
       37 GETIMPORT                        R6 K15 [tostring]
       39 CALL                             R6 1 1
       40 CONCAT                           R4 R5 R6
       41 CALL                             R3 1 0
       42 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"ShowOwnerNotAgeVerifiedBanner"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["ShowOwnerNotAgeVerifiedBanner"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"ShowOwnerCountryBlockedBanner"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["ShowOwnerCountryBlockedBanner"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"upsellDialogEnabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["upsellDialogEnabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onSavePressed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onCancelPressed"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_45:
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
      155 GETUPVAL                         R21 1
      156 GETTABLEKS                       R21 R21 K15 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      158 JUMPIFNOT                        R21 ; [+2]
      159 GETTABLEKS                       R21 R1 K38 ["OwnerIsCountryBlocked"]
      161 GETUPVAL                         R22 1
      162 GETTABLEKS                       R22 R22 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      164 JUMPIFNOT                        R22 ; [+2]
      165 GETTABLEKS                       R22 R1 K39 ["OwnerIsNotAgeVerified"]
      167 OR                               R23 R21 R22
      168 MOVE                             R24 R17
      169 JUMPIFNOT                        R24 ; [+1]
      170 NOT                              R24 R18
      171 GETUPVAL                         R25 6
      172 CALL                             R25 0 1
      173 MOVE                             R26 R24
      174 JUMPIFNOT                        R26 ; [+3]
      175 NOT                              R26 R25
      176 JUMPIFNOT                        R26 ; [+1]
      177 OR                               R26 R6 R15
      178 JUMPIFNOT                        R15 ; [+2]
      179 LOADK                            R27 K40 ["SaveEnableTcCurrentEditors"]
      180 JUMP                             ; [+1]
      181 LOADK                            R27 K41 ["SaveEnableTC"]
      182 LOADK                            R30 K42 ["Description"]
      183 MOVE                             R31 R27
      184 NAMECALL                         R28 R3 K35 ["getText"]
      186 CALL                             R28 3 1
      187 GETTABLEKS                       R29 R2 K43 ["header"]
      189 GETTABLEKS                       R29 R29 K44 ["height"]
      191 GETTABLEKS                       R30 R2 K45 ["footer"]
      193 GETTABLEKS                       R30 R30 K44 ["height"]
      195 JUMPIFNOT                        R26 ; [+5]
      196 GETTABLEKS                       R31 R2 K46 ["saveMessage"]
      198 GETTABLEKS                       R31 R31 K47 ["boxHeight"]
      200 ADD                              R30 R30 R31
      201 GETUPVAL                         R31 7
      202 JUMPIFNOT                        R31 ; [+1]
      203 ADD                              R30 R30 R29
      204 GETUPVAL                         R31 8
      205 GETTABLEKS                       R31 R31 K48 ["new"]
      207 CALL                             R31 0 1
      208 GETUPVAL                         R32 8
      209 GETTABLEKS                       R32 R32 K48 ["new"]
      211 CALL                             R32 0 1
      212 GETUPVAL                         R34 9
      213 JUMPIFNOT                        R34 ; [+5]
      214 GETUPVAL                         R33 8
      215 GETTABLEKS                       R33 R33 K48 ["new"]
      217 CALL                             R33 0 1
      218 JUMP                             ; [+1]
      219 LOADNIL                          R33
      220 GETUPVAL                         R34 9
      221 JUMPIFNOT                        R34 ; [+8]
      222 MOVE                             R34 R7
      223 JUMPIF                           R34 ; [+6]
      224 MOVE                             R34 R12
      225 JUMPIF                           R34 ; [+4]
      226 GETUPVAL                         R35 1
      227 GETTABLEKS                       R35 R35 K20 ["fflagUpsellMCCollabReverification"]
      229 AND                              R34 R35 R14
      230 LOADK                            R37 K49 ["UpsellBanner"]
      231 LOADK                            R38 K50 ["RecheckAge"]
      232 NAMECALL                         R35 R3 K35 ["getText"]
      234 CALL                             R35 3 1
      235 LOADK                            R38 K49 ["UpsellBanner"]
      236 LOADK                            R39 K51 ["AgeCheckNotValid"]
      237 NAMECALL                         R36 R3 K35 ["getText"]
      239 CALL                             R36 3 1
      240 LOADK                            R39 K52 ["Buttons"]
      241 LOADK                            R40 K53 ["Continue"]
      242 NAMECALL                         R37 R3 K35 ["getText"]
      244 CALL                             R37 3 1
      245 GETUPVAL                         R38 10
      246 GETTABLEKS                       R38 R38 K54 ["createElement"]
      248 LOADK                            R39 K55 ["Frame"]
      249 DUPTABLE                         R40 K58 [{"Size", "BackgroundColor3"}]
      250 GETIMPORT                        R41 K60 [UDim2.new]
      252 LOADN                            R42 1
      253 LOADN                            R43 0
      254 LOADN                            R44 1
      255 LOADN                            R45 0
      256 CALL                             R41 4 1
      257 SETTABLEKS                       R41 R40 K56 ["Size"]
      259 GETTABLEKS                       R41 R2 K61 ["backgroundColor"]
      261 SETTABLEKS                       R41 R40 K57 ["BackgroundColor3"]
      263 DUPTABLE                         R41 K79 [{"Layout", "HeaderContent", "Spacer", "UpsellBanner", "TrustedConnectionsBanner", "ReverificationBanner", "OutsideAgeBucketBanner", "EditorBlockingBanner", "OwnerNotAgeVerifiedBanner", "OwnerCountryBlockedBanner", "CollaborationSubtitleTitleView", "ScrollingFrameNew", "ScrollingFrame", "TextFrame", "upsellDialog", "FooterContent", "LoadingIndicator", "FailureText"}]
      264 MOVE                             R42 R24
      265 JUMPIFNOT                        R42 ; [+28]
      266 GETUPVAL                         R42 10
      267 GETTABLEKS                       R42 R42 K54 ["createElement"]
      269 LOADK                            R43 K80 ["UIListLayout"]
      270 DUPTABLE                         R44 K85 [{"FillDirection", "SortOrder", "HorizontalAlignment", "Padding"}]
      271 GETIMPORT                        R45 K88 [Enum.FillDirection.Vertical]
      273 SETTABLEKS                       R45 R44 K81 ["FillDirection"]
      275 GETIMPORT                        R45 K90 [Enum.SortOrder.LayoutOrder]
      277 SETTABLEKS                       R45 R44 K82 ["SortOrder"]
      279 GETIMPORT                        R45 K92 [Enum.HorizontalAlignment.Center]
      281 SETTABLEKS                       R45 R44 K83 ["HorizontalAlignment"]
      283 GETIMPORT                        R45 K94 [UDim.new]
      285 LOADN                            R46 0
      286 GETTABLEKS                       R47 R2 K95 ["permissionsView"]
      288 GETTABLEKS                       R47 R47 K84 ["Padding"]
      290 CALL                             R45 2 1
      291 SETTABLEKS                       R45 R44 K84 ["Padding"]
      293 CALL                             R42 2 1
      294 SETTABLEKS                       R42 R41 K62 ["Layout"]
      296 GETUPVAL                         R43 1
      297 GETTABLEKS                       R43 R43 K96 ["fflagRemoveHeaderWithUpsellBanner2"]
      299 NOT                              R42 R43
      300 JUMPIFNOT                        R42 ; [+74]
      301 NOT                              R42 R34
      302 JUMPIFNOT                        R42 ; [+72]
      303 GETUPVAL                         R42 7
      304 JUMPIFNOT                        R42 ; [+70]
      305 MOVE                             R42 R24
      306 JUMPIFNOT                        R42 ; [+68]
      307 GETUPVAL                         R42 10
      308 GETTABLEKS                       R42 R42 K54 ["createElement"]
      310 GETUPVAL                         R43 11
      311 DUPTABLE                         R44 K97 [{"LayoutOrder", "Size"}]
      312 NAMECALL                         R45 R31 K98 ["getNextOrder"]
      314 CALL                             R45 1 1
      315 SETTABLEKS                       R45 R44 K89 ["LayoutOrder"]
      317 GETIMPORT                        R45 K60 [UDim2.new]
      319 LOADN                            R46 1
      320 LOADN                            R47 0
      321 LOADN                            R48 0
      322 GETTABLEKS                       R49 R2 K43 ["header"]
      324 GETTABLEKS                       R49 R49 K44 ["height"]
      326 CALL                             R45 4 1
      327 SETTABLEKS                       R45 R44 K56 ["Size"]
      329 DUPTABLE                         R45 K100 [{"Header"}]
      330 GETUPVAL                         R46 12
      331 GETTABLEKS                       R46 R46 K54 ["createElement"]
      333 GETUPVAL                         R47 13
      334 DUPTABLE                         R48 K108 [{"Stylizer", "Localization", "IsTeamCreateEnabled", "HasUnsavedChanges", "HasCollaborators", "Plugin", "SaveThenTurnOnTeamCreate", "TurnOnTeamCreate", "Links", "FetchLink"}]
      335 SETTABLEKS                       R2 R48 K2 ["Stylizer"]
      337 SETTABLEKS                       R3 R48 K3 ["Localization"]
      339 SETTABLEKS                       R25 R48 K101 ["IsTeamCreateEnabled"]
      341 GETTABLEKS                       R49 R1 K102 ["HasUnsavedChanges"]
      343 SETTABLEKS                       R49 R48 K102 ["HasUnsavedChanges"]
      345 GETTABLEKS                       R49 R1 K6 ["HasCollaborators"]
      347 SETTABLEKS                       R49 R48 K6 ["HasCollaborators"]
      349 GETTABLEKS                       R49 R1 K103 ["Plugin"]
      351 SETTABLEKS                       R49 R48 K103 ["Plugin"]
      353 NEWCLOSURE                       R49 P0
      354 CAPTURE                          VAL R0
      355 SETTABLEKS                       R49 R48 K104 ["SaveThenTurnOnTeamCreate"]
      357 NEWCLOSURE                       R49 P1
      358 CAPTURE                          UPVAL U2
      359 CAPTURE                          VAL R16
      360 CAPTURE                          UPVAL U14
      361 SETTABLEKS                       R49 R48 K105 ["TurnOnTeamCreate"]
      363 GETTABLEKS                       R49 R1 K106 ["Links"]
      365 SETTABLEKS                       R49 R48 K106 ["Links"]
      367 GETTABLEKS                       R49 R1 K107 ["FetchLink"]
      369 SETTABLEKS                       R49 R48 K107 ["FetchLink"]
      371 CALL                             R46 2 1
      372 SETTABLEKS                       R46 R45 K99 ["Header"]
      374 CALL                             R42 3 1
      375 SETTABLEKS                       R42 R41 K63 ["HeaderContent"]
      377 GETUPVAL                         R42 1
      378 GETTABLEKS                       R42 R42 K96 ["fflagRemoveHeaderWithUpsellBanner2"]
      380 JUMPIFNOT                        R42 ; [+40]
      381 MOVE                             R42 R34
      382 JUMPIFNOT                        R42 ; [+38]
      383 GETUPVAL                         R43 1
      384 GETTABLEKS                       R43 R43 K11 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      386 JUMPIF                           R43 ; [+3]
      387 GETUPVAL                         R43 1
      388 GETTABLEKS                       R43 R43 K13 ["fflagManageCollaboratorsEditorBlockingBanner"]
      390 NOT                              R42 R43
      391 JUMPIFNOT                        R42 ; [+29]
      392 GETUPVAL                         R43 1
      393 GETTABLEKS                       R43 R43 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      395 JUMPIF                           R43 ; [+3]
      396 GETUPVAL                         R43 1
      397 GETTABLEKS                       R43 R43 K15 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      399 NOT                              R42 R43
      400 JUMPIFNOT                        R42 ; [+20]
      401 GETUPVAL                         R42 12
      402 GETTABLEKS                       R42 R42 K54 ["createElement"]
      404 GETUPVAL                         R43 15
      405 DUPTABLE                         R44 K97 [{"LayoutOrder", "Size"}]
      406 NAMECALL                         R45 R31 K98 ["getNextOrder"]
      408 CALL                             R45 1 1
      409 SETTABLEKS                       R45 R44 K89 ["LayoutOrder"]
      411 GETIMPORT                        R45 K60 [UDim2.new]
      413 LOADN                            R46 1
      414 LOADN                            R47 0
      415 LOADN                            R48 0
      416 LOADN                            R49 10
      417 CALL                             R45 4 1
      418 SETTABLEKS                       R45 R44 K56 ["Size"]
      420 CALL                             R42 2 1
      421 SETTABLEKS                       R42 R41 K64 ["Spacer"]
      423 GETUPVAL                         R42 9
      424 JUMPIFNOT                        R42 ; [+160]
      425 MOVE                             R42 R7
      426 JUMPIFNOT                        R42 ; [+158]
      427 GETUPVAL                         R43 1
      428 GETTABLEKS                       R43 R43 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      430 NOT                              R42 R43
      431 JUMPIFNOT                        R42 ; [+153]
      432 GETUPVAL                         R42 10
      433 GETTABLEKS                       R42 R42 K54 ["createElement"]
      435 GETUPVAL                         R43 15
      436 DUPTABLE                         R44 K111 [{"LayoutOrder", "Size", "tag", "onActivated"}]
      437 NAMECALL                         R45 R31 K98 ["getNextOrder"]
      439 CALL                             R45 1 1
      440 SETTABLEKS                       R45 R44 K89 ["LayoutOrder"]
      442 GETIMPORT                        R45 K60 [UDim2.new]
      444 LOADN                            R46 0
      445 LOADN                            R47 2
      446 LOADN                            R48 0
      447 LOADN                            R49 50
      448 CALL                             R45 4 1
      449 SETTABLEKS                       R45 R44 K56 ["Size"]
      451 LOADK                            R45 K112 ["auto-xy stroke-system-emphasis bg-over-media-300 radius-small padding-left-large"]
      452 SETTABLEKS                       R45 R44 K109 ["tag"]
      454 GETTABLEKS                       R45 R0 K113 ["launchFAEPlusVPC"]
      456 SETTABLEKS                       R45 R44 K110 ["onActivated"]
      458 NEWTABLE                         R45 4 1
      460 MOVE                             R47 R24
      461 JUMPIFNOT                        R47 ; [+28]
      462 GETUPVAL                         R47 10
      463 GETTABLEKS                       R47 R47 K54 ["createElement"]
      465 LOADK                            R48 K80 ["UIListLayout"]
      466 DUPTABLE                         R49 K115 [{"FillDirection", "VerticalAlignment", "SortOrder", "Padding"}]
      467 GETIMPORT                        R50 K117 [Enum.FillDirection.Horizontal]
      469 SETTABLEKS                       R50 R49 K81 ["FillDirection"]
      471 GETIMPORT                        R50 K118 [Enum.VerticalAlignment.Center]
      473 SETTABLEKS                       R50 R49 K114 ["VerticalAlignment"]
      475 GETIMPORT                        R50 K90 [Enum.SortOrder.LayoutOrder]
      477 SETTABLEKS                       R50 R49 K82 ["SortOrder"]
      479 GETIMPORT                        R50 K94 [UDim.new]
      481 LOADN                            R51 0
      482 GETTABLEKS                       R52 R2 K95 ["permissionsView"]
      484 GETTABLEKS                       R52 R52 K84 ["Padding"]
      486 CALL                             R50 2 1
      487 SETTABLEKS                       R50 R49 K84 ["Padding"]
      489 CALL                             R47 2 1
      490 SETTABLEKS                       R47 R45 K119 ["UpsellLayout"]
      492 GETUPVAL                         R46 12
      493 GETTABLEKS                       R46 R46 K54 ["createElement"]
      495 GETUPVAL                         R47 16
      496 DUPTABLE                         R48 K124 [{"name", "style", "LayoutOrder", "size", "variant"}]
      497 GETUPVAL                         R49 17
      498 GETTABLEKS                       R49 R49 K125 ["IconName"]
      500 GETTABLEKS                       R49 R49 K126 ["TriangleExclamation"]
      502 SETTABLEKS                       R49 R48 K120 ["name"]
      504 DUPTABLE                         R49 K129 [{"Color3", "Transparency"}]
      505 GETIMPORT                        R50 K131 [Color3.fromRGB]
      507 LOADN                            R51 51
      508 LOADN                            R52 95
      509 LOADN                            R53 255
      510 CALL                             R50 3 1
      511 SETTABLEKS                       R50 R49 K127 ["Color3"]
      513 LOADN                            R50 0
      514 SETTABLEKS                       R50 R49 K128 ["Transparency"]
      516 SETTABLEKS                       R49 R48 K121 ["style"]
      518 NAMECALL                         R49 R33 K98 ["getNextOrder"]
      520 CALL                             R49 1 1
      521 SETTABLEKS                       R49 R48 K89 ["LayoutOrder"]
      523 GETUPVAL                         R49 17
      524 GETTABLEKS                       R49 R49 K132 ["IconSize"]
      526 GETTABLEKS                       R49 R49 K133 ["Large"]
      528 SETTABLEKS                       R49 R48 K122 ["size"]
      530 GETUPVAL                         R49 18
      531 GETTABLEKS                       R49 R49 K134 ["Filled"]
      533 SETTABLEKS                       R49 R48 K123 ["variant"]
      535 CALL                             R46 2 1
      536 SETLIST                          R45 R46 1 [1]
      538 GETUPVAL                         R47 10
      539 GETTABLEKS                       R47 R47 K54 ["createElement"]
      541 GETUPVAL                         R48 19
      542 DUPTABLE                         R49 K136 [{"tag", "LayoutOrder", "Text"}]
      543 LOADK                            R50 K137 ["auto-y text-align-y-center text-align-x-left text-title-medium padding-left-large fill"]
      544 SETTABLEKS                       R50 R49 K109 ["tag"]
      546 NAMECALL                         R50 R33 K98 ["getNextOrder"]
      548 CALL                             R50 1 1
      549 SETTABLEKS                       R50 R49 K89 ["LayoutOrder"]
      551 LOADK                            R52 K49 ["UpsellBanner"]
      552 LOADK                            R53 K138 ["description"]
      553 NAMECALL                         R50 R3 K35 ["getText"]
      555 CALL                             R50 3 1
      556 SETTABLEKS                       R50 R49 K135 ["Text"]
      558 CALL                             R47 2 1
      559 SETTABLEKS                       R47 R45 K139 ["WarningText"]
      561 GETUPVAL                         R47 10
      562 GETTABLEKS                       R47 R47 K54 ["createElement"]
      564 GETUPVAL                         R48 19
      565 DUPTABLE                         R49 K136 [{"tag", "LayoutOrder", "Text"}]
      566 LOADK                            R50 K140 ["text-align-y-center text-align-x-center text-label-medium padding-right-large auto-xy"]
      567 SETTABLEKS                       R50 R49 K109 ["tag"]
      569 NAMECALL                         R50 R33 K98 ["getNextOrder"]
      571 CALL                             R50 1 1
      572 SETTABLEKS                       R50 R49 K89 ["LayoutOrder"]
      574 LOADK                            R52 K49 ["UpsellBanner"]
      575 LOADK                            R53 K141 ["CTA"]
      576 NAMECALL                         R50 R3 K35 ["getText"]
      578 CALL                             R50 3 1
      579 SETTABLEKS                       R50 R49 K135 ["Text"]
      581 CALL                             R47 2 1
      582 SETTABLEKS                       R47 R45 K142 ["GetStarted"]
      584 CALL                             R42 3 1
      585 SETTABLEKS                       R42 R41 K49 ["UpsellBanner"]
      587 GETUPVAL                         R42 0
      588 JUMPIFNOT                        R42 ; [+79]
      589 GETUPVAL                         R43 1
      590 GETTABLEKS                       R43 R43 K11 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      592 NOT                              R42 R43
      593 JUMPIFNOT                        R42 ; [+74]
      594 GETUPVAL                         R43 1
      595 GETTABLEKS                       R43 R43 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      597 NOT                              R42 R43
      598 JUMPIFNOT                        R42 ; [+69]
      599 MOVE                             R42 R12
      600 JUMPIFNOT                        R42 ; [+67]
      601 GETUPVAL                         R42 12
      602 GETTABLEKS                       R42 R42 K54 ["createElement"]
      604 GETUPVAL                         R43 15
      605 DUPTABLE                         R44 K143 [{"tag"}]
      606 LOADK                            R45 K144 ["padding-x-large padding-top-large size-full-0 auto-y"]
      607 SETTABLEKS                       R45 R44 K109 ["tag"]
      609 GETUPVAL                         R45 12
      610 GETTABLEKS                       R45 R45 K54 ["createElement"]
      612 GETUPVAL                         R46 20
      613 DUPTABLE                         R47 K149 [{"variant", "severity", "title", "actions", "onClose"}]
      614 GETUPVAL                         R48 21
      615 GETTABLEKS                       R48 R48 K150 ["Standard"]
      617 SETTABLEKS                       R48 R47 K123 ["variant"]
      619 GETUPVAL                         R48 22
      620 GETTABLEKS                       R48 R48 K151 ["Info"]
      622 SETTABLEKS                       R48 R47 K145 ["severity"]
      624 LOADK                            R50 K49 ["UpsellBanner"]
      625 LOADK                            R51 K152 ["nextStepDescription"]
      626 NAMECALL                         R48 R3 K35 ["getText"]
      628 CALL                             R48 3 1
      629 SETTABLEKS                       R48 R47 K146 ["title"]
      631 NEWTABLE                         R48 0 1
      633 DUPTABLE                         R49 K154 [{"text", "variant", "onActivated"}]
      634 LOADK                            R52 K49 ["UpsellBanner"]
      635 LOADK                            R53 K141 ["CTA"]
      636 NAMECALL                         R50 R3 K35 ["getText"]
      638 CALL                             R50 3 1
      639 SETTABLEKS                       R50 R49 K153 ["text"]
      641 GETUPVAL                         R50 23
      642 GETTABLEKS                       R50 R50 K150 ["Standard"]
      644 SETTABLEKS                       R50 R49 K123 ["variant"]
      646 GETUPVAL                         R51 1
      647 GETTABLEKS                       R51 R51 K18 ["fflagUpsellCollabTrustedConnectionShowUpsellDialog"]
      649 JUMPIFNOT                        R51 ; [+4]
      650 JUMPIFNOT                        R13 ; [+3]
      651 GETTABLEKS                       R50 R0 K155 ["launchModal"]
      653 JUMP                             ; [+2]
      654 GETTABLEKS                       R50 R0 K156 ["launchCreatorHub"]
      656 SETTABLEKS                       R50 R49 K110 ["onActivated"]
      658 SETLIST                          R48 R49 1 [1]
      660 SETTABLEKS                       R48 R47 K147 ["actions"]
      662 NEWCLOSURE                       R48 P2
      663 CAPTURE                          VAL R0
      664 SETTABLEKS                       R48 R47 K148 ["onClose"]
      666 CALL                             R45 2 -1
      667 CALL                             R42 -1 1
      668 SETTABLEKS                       R42 R41 K65 ["TrustedConnectionsBanner"]
      670 GETUPVAL                         R42 1
      671 GETTABLEKS                       R42 R42 K20 ["fflagUpsellMCCollabReverification"]
      673 JUMPIFNOT                        R42 ; [+174]
      674 MOVE                             R42 R14
      675 JUMPIFNOT                        R42 ; [+172]
      676 GETUPVAL                         R42 12
      677 GETTABLEKS                       R42 R42 K54 ["createElement"]
      679 GETUPVAL                         R43 15
      680 DUPTABLE                         R44 K111 [{"LayoutOrder", "Size", "tag", "onActivated"}]
      681 NAMECALL                         R45 R31 K98 ["getNextOrder"]
      683 CALL                             R45 1 1
      684 SETTABLEKS                       R45 R44 K89 ["LayoutOrder"]
      686 GETIMPORT                        R45 K60 [UDim2.new]
      688 LOADN                            R46 0
      689 LOADN                            R47 2
      690 LOADN                            R48 0
      691 LOADN                            R49 50
      692 CALL                             R45 4 1
      693 SETTABLEKS                       R45 R44 K56 ["Size"]
      695 LOADK                            R45 K157 ["row gap-medium align-y-center stroke-system-emphasis bg-over-media-300 radius-small padding-left-large padding-right-medium"]
      696 SETTABLEKS                       R45 R44 K109 ["tag"]
      698 DUPCLOSURE                       R45 K158 [PROTO_33]
      699 CAPTURE                          UPVAL U9
      700 CAPTURE                          UPVAL U24
      701 CAPTURE                          UPVAL U25
      702 CAPTURE                          UPVAL U26
      703 CAPTURE                          UPVAL U27
      704 CAPTURE                          UPVAL U28
      705 SETTABLEKS                       R45 R44 K110 ["onActivated"]
      707 DUPTABLE                         R45 K161 [{"Icon", "WarningText", "CloseButton"}]
      708 GETUPVAL                         R46 12
      709 GETTABLEKS                       R46 R46 K54 ["createElement"]
      711 GETUPVAL                         R47 15
      712 DUPTABLE                         R48 K162 [{"LayoutOrder", "tag"}]
      713 NAMECALL                         R49 R33 K98 ["getNextOrder"]
      715 CALL                             R49 1 1
      716 SETTABLEKS                       R49 R48 K89 ["LayoutOrder"]
      718 LOADK                            R49 K163 ["auto-xy size-600-600"]
      719 SETTABLEKS                       R49 R48 K109 ["tag"]
      721 DUPTABLE                         R49 K165 [{"BackgroundCircle", "Icon"}]
      722 GETUPVAL                         R50 12
      723 GETTABLEKS                       R50 R50 K54 ["createElement"]
      725 GETUPVAL                         R51 15
      726 DUPTABLE                         R52 K167 [{"tag", "backgroundStyle"}]
      727 LOADK                            R53 K168 ["anchor-center-center position-center-center radius-circle size-500-500"]
      728 SETTABLEKS                       R53 R52 K109 ["tag"]
      730 DUPTABLE                         R53 K169 [{"Color3"}]
      731 GETIMPORT                        R54 K171 [Color3.fromHex]
      733 LOADK                            R55 K172 ["#FFFFFF"]
      734 CALL                             R54 1 1
      735 SETTABLEKS                       R54 R53 K127 ["Color3"]
      737 SETTABLEKS                       R53 R52 K166 ["backgroundStyle"]
      739 CALL                             R50 2 1
      740 SETTABLEKS                       R50 R49 K164 ["BackgroundCircle"]
      742 GETUPVAL                         R50 12
      743 GETTABLEKS                       R50 R50 K54 ["createElement"]
      745 GETUPVAL                         R51 16
      746 DUPTABLE                         R52 K173 [{"name", "style", "tag", "size", "variant"}]
      747 GETUPVAL                         R53 17
      748 GETTABLEKS                       R53 R53 K125 ["IconName"]
      750 GETTABLEKS                       R53 R53 K174 ["CircleI"]
      752 SETTABLEKS                       R53 R52 K120 ["name"]
      754 DUPTABLE                         R53 K129 [{"Color3", "Transparency"}]
      755 GETIMPORT                        R54 K131 [Color3.fromRGB]
      757 LOADN                            R55 51
      758 LOADN                            R56 95
      759 LOADN                            R57 255
      760 CALL                             R54 3 1
      761 SETTABLEKS                       R54 R53 K127 ["Color3"]
      763 LOADN                            R54 0
      764 SETTABLEKS                       R54 R53 K128 ["Transparency"]
      766 SETTABLEKS                       R53 R52 K121 ["style"]
      768 LOADK                            R53 K175 ["align-x-center align-y-center"]
      769 SETTABLEKS                       R53 R52 K109 ["tag"]
      771 GETUPVAL                         R53 17
      772 GETTABLEKS                       R53 R53 K132 ["IconSize"]
      774 GETTABLEKS                       R53 R53 K133 ["Large"]
      776 SETTABLEKS                       R53 R52 K122 ["size"]
      778 GETUPVAL                         R53 18
      779 GETTABLEKS                       R53 R53 K134 ["Filled"]
      781 SETTABLEKS                       R53 R52 K123 ["variant"]
      783 CALL                             R50 2 1
      784 SETTABLEKS                       R50 R49 K159 ["Icon"]
      786 CALL                             R46 3 1
      787 SETTABLEKS                       R46 R45 K159 ["Icon"]
      789 GETUPVAL                         R46 10
      790 GETTABLEKS                       R46 R46 K54 ["createElement"]
      792 GETUPVAL                         R47 19
      793 DUPTABLE                         R48 K177 [{"tag", "LayoutOrder", "Text", "RichText"}]
      794 LOADK                            R49 K178 ["text-align-y-center text-align-x-left text-body-medium fill"]
      795 SETTABLEKS                       R49 R48 K109 ["tag"]
      797 NAMECALL                         R49 R33 K98 ["getNextOrder"]
      799 CALL                             R49 1 1
      800 SETTABLEKS                       R49 R48 K89 ["LayoutOrder"]
      802 LOADK                            R50 K179 ["<b>%*</b> %* • %*"]
      803 MOVE                             R52 R35
      804 MOVE                             R53 R36
      805 MOVE                             R54 R37
      806 NAMECALL                         R50 R50 K180 ["format"]
      808 CALL                             R50 4 1
      809 MOVE                             R49 R50
      810 SETTABLEKS                       R49 R48 K135 ["Text"]
      812 LOADB                            R49 1
      813 SETTABLEKS                       R49 R48 K176 ["RichText"]
      815 CALL                             R46 2 1
      816 SETTABLEKS                       R46 R45 K139 ["WarningText"]
      818 GETUPVAL                         R46 12
      819 GETTABLEKS                       R46 R46 K54 ["createElement"]
      821 GETUPVAL                         R47 29
      822 DUPTABLE                         R48 K182 [{"LayoutOrder", "icon", "size", "onActivated"}]
      823 NAMECALL                         R49 R33 K98 ["getNextOrder"]
      825 CALL                             R49 1 1
      826 SETTABLEKS                       R49 R48 K89 ["LayoutOrder"]
      828 LOADK                            R49 K183 ["icons/navigation/close"]
      829 SETTABLEKS                       R49 R48 K181 ["icon"]
      831 GETUPVAL                         R49 30
      832 GETTABLEKS                       R49 R49 K184 ["Enums"]
      834 GETTABLEKS                       R49 R49 K132 ["IconSize"]
      836 GETTABLEKS                       R49 R49 K185 ["Small"]
      838 SETTABLEKS                       R49 R48 K122 ["size"]
      840 NEWCLOSURE                       R49 P4
      841 CAPTURE                          VAL R0
      842 SETTABLEKS                       R49 R48 K110 ["onActivated"]
      844 CALL                             R46 2 1
      845 SETTABLEKS                       R46 R45 K160 ["CloseButton"]
      847 CALL                             R42 3 1
      848 SETTABLEKS                       R42 R41 K66 ["ReverificationBanner"]
      850 GETUPVAL                         R42 1
      851 GETTABLEKS                       R42 R42 K11 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      853 JUMPIFNOT                        R42 ; [+59]
      854 MOVE                             R42 R20
      855 JUMPIFNOT                        R42 ; [+57]
      856 MOVE                             R42 R9
      857 JUMPIFNOT                        R42 ; [+55]
      858 GETUPVAL                         R42 12
      859 GETTABLEKS                       R42 R42 K54 ["createElement"]
      861 GETUPVAL                         R43 15
      862 DUPTABLE                         R44 K162 [{"LayoutOrder", "tag"}]
      863 NAMECALL                         R45 R31 K98 ["getNextOrder"]
      865 CALL                             R45 1 1
      866 SETTABLEKS                       R45 R44 K89 ["LayoutOrder"]
      868 LOADK                            R45 K186 ["padding-x-large margin-top-small size-full-0 auto-y"]
      869 SETTABLEKS                       R45 R44 K109 ["tag"]
      871 NEWTABLE                         R45 0 1
      873 GETUPVAL                         R46 12
      874 GETTABLEKS                       R46 R46 K54 ["createElement"]
      876 GETUPVAL                         R47 31
      877 DUPTABLE                         R48 K188 [{"severity", "title", "link", "onClose"}]
      878 GETUPVAL                         R49 22
      879 GETTABLEKS                       R49 R49 K189 ["Warning"]
      881 SETTABLEKS                       R49 R48 K145 ["severity"]
      883 LOADK                            R51 K190 ["FeedbackAlert"]
      884 LOADK                            R52 K191 ["OutsideAgeGroupWarning"]
      885 NAMECALL                         R49 R3 K35 ["getText"]
      887 CALL                             R49 3 1
      888 SETTABLEKS                       R49 R48 K146 ["title"]
      890 DUPTABLE                         R49 K192 [{"text", "onActivated"}]
      891 LOADK                            R52 K190 ["FeedbackAlert"]
      892 LOADK                            R53 K193 ["ViewDetails"]
      893 NAMECALL                         R50 R3 K35 ["getText"]
      895 CALL                             R50 3 1
      896 SETTABLEKS                       R50 R49 K153 ["text"]
      898 NEWCLOSURE                       R50 P5
      899 CAPTURE                          UPVAL U1
      900 CAPTURE                          VAL R0
      901 SETTABLEKS                       R50 R49 K110 ["onActivated"]
      903 SETTABLEKS                       R49 R48 K187 ["link"]
      905 NEWCLOSURE                       R49 P6
      906 CAPTURE                          VAL R0
      907 SETTABLEKS                       R49 R48 K148 ["onClose"]
      909 CALL                             R46 2 -1
      910 SETLIST                          R45 R46 -1 [1]
      912 CALL                             R42 3 1
      913 SETTABLEKS                       R42 R41 K67 ["OutsideAgeBucketBanner"]
      915 GETUPVAL                         R42 1
      916 GETTABLEKS                       R42 R42 K13 ["fflagManageCollaboratorsEditorBlockingBanner"]
      918 JUMPIFNOT                        R42 ; [+59]
      919 NOT                              R42 R20
      920 JUMPIFNOT                        R42 ; [+57]
      921 MOVE                             R42 R10
      922 JUMPIFNOT                        R42 ; [+55]
      923 GETUPVAL                         R42 12
      924 GETTABLEKS                       R42 R42 K54 ["createElement"]
      926 GETUPVAL                         R43 15
      927 DUPTABLE                         R44 K162 [{"LayoutOrder", "tag"}]
      928 NAMECALL                         R45 R31 K98 ["getNextOrder"]
      930 CALL                             R45 1 1
      931 SETTABLEKS                       R45 R44 K89 ["LayoutOrder"]
      933 LOADK                            R45 K186 ["padding-x-large margin-top-small size-full-0 auto-y"]
      934 SETTABLEKS                       R45 R44 K109 ["tag"]
      936 NEWTABLE                         R45 0 1
      938 GETUPVAL                         R46 12
      939 GETTABLEKS                       R46 R46 K54 ["createElement"]
      941 GETUPVAL                         R47 31
      942 DUPTABLE                         R48 K188 [{"severity", "title", "link", "onClose"}]
      943 GETUPVAL                         R49 22
      944 GETTABLEKS                       R49 R49 K189 ["Warning"]
      946 SETTABLEKS                       R49 R48 K145 ["severity"]
      948 LOADK                            R51 K190 ["FeedbackAlert"]
      949 LOADK                            R52 K194 ["EditorBlockingWarning"]
      950 NAMECALL                         R49 R3 K35 ["getText"]
      952 CALL                             R49 3 1
      953 SETTABLEKS                       R49 R48 K146 ["title"]
      955 DUPTABLE                         R49 K192 [{"text", "onActivated"}]
      956 LOADK                            R52 K190 ["FeedbackAlert"]
      957 LOADK                            R53 K193 ["ViewDetails"]
      958 NAMECALL                         R50 R3 K35 ["getText"]
      960 CALL                             R50 3 1
      961 SETTABLEKS                       R50 R49 K153 ["text"]
      963 NEWCLOSURE                       R50 P7
      964 CAPTURE                          UPVAL U1
      965 CAPTURE                          VAL R0
      966 SETTABLEKS                       R50 R49 K110 ["onActivated"]
      968 SETTABLEKS                       R49 R48 K187 ["link"]
      970 NEWCLOSURE                       R49 P8
      971 CAPTURE                          VAL R0
      972 SETTABLEKS                       R49 R48 K148 ["onClose"]
      974 CALL                             R46 2 -1
      975 SETLIST                          R45 R46 -1 [1]
      977 CALL                             R42 3 1
      978 SETTABLEKS                       R42 R41 K68 ["EditorBlockingBanner"]
      980 GETUPVAL                         R42 1
      981 GETTABLEKS                       R42 R42 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      983 JUMPIFNOT                        R42 ; [+87]
      984 MOVE                             R42 R20
      985 JUMPIFNOT                        R42 ; [+85]
      986 MOVE                             R42 R8
      987 JUMPIFNOT                        R42 ; [+83]
      988 GETUPVAL                         R42 12
      989 GETTABLEKS                       R42 R42 K54 ["createElement"]
      991 GETUPVAL                         R43 15
      992 DUPTABLE                         R44 K162 [{"LayoutOrder", "tag"}]
      993 NAMECALL                         R45 R31 K98 ["getNextOrder"]
      995 CALL                             R45 1 1
      996 SETTABLEKS                       R45 R44 K89 ["LayoutOrder"]
      998 LOADK                            R45 K186 ["padding-x-large margin-top-small size-full-0 auto-y"]
      999 SETTABLEKS                       R45 R44 K109 ["tag"]
     1001 NEWTABLE                         R45 0 1
     1003 GETUPVAL                         R46 12
     1004 GETTABLEKS                       R46 R46 K54 ["createElement"]
     1006 GETUPVAL                         R47 31
     1007 DUPTABLE                         R48 K196 [{"severity", "title", "subtitle", "link", "onClose"}]
     1008 GETUPVAL                         R49 22
     1009 GETTABLEKS                       R49 R49 K189 ["Warning"]
     1011 SETTABLEKS                       R49 R48 K145 ["severity"]
     1013 NAMECALL                         R50 R0 K197 ["isGroupGame"]
     1015 CALL                             R50 1 1
     1016 JUMPIFNOT                        R50 ; [+6]
     1017 LOADK                            R51 K190 ["FeedbackAlert"]
     1018 LOADK                            R52 K198 ["VerifyYourAge"]
     1019 NAMECALL                         R49 R3 K35 ["getText"]
     1021 CALL                             R49 3 1
     1022 JUMP                             ; [+5]
     1023 LOADK                            R51 K190 ["FeedbackAlert"]
     1024 LOADK                            R52 K199 ["OwnerNotAgeVerifiedTitle"]
     1025 NAMECALL                         R49 R3 K35 ["getText"]
     1027 CALL                             R49 3 1
     1028 SETTABLEKS                       R49 R48 K146 ["title"]
     1030 NAMECALL                         R50 R0 K197 ["isGroupGame"]
     1032 CALL                             R50 1 1
     1033 JUMPIFNOT                        R50 ; [+6]
     1034 LOADK                            R51 K190 ["FeedbackAlert"]
     1035 LOADK                            R52 K200 ["OwnerNotAgeVerifiedSubtitle"]
     1036 NAMECALL                         R49 R3 K35 ["getText"]
     1038 CALL                             R49 3 1
     1039 JUMP                             ; [+1]
     1040 LOADNIL                          R49
     1041 SETTABLEKS                       R49 R48 K195 ["subtitle"]
     1043 DUPTABLE                         R49 K192 [{"text", "onActivated"}]
     1044 LOADK                            R52 K49 ["UpsellBanner"]
     1045 LOADK                            R53 K141 ["CTA"]
     1046 NAMECALL                         R50 R3 K35 ["getText"]
     1048 CALL                             R50 3 1
     1049 SETTABLEKS                       R50 R49 K153 ["text"]
     1051 DUPCLOSURE                       R50 K201 [PROTO_39]
     1052 CAPTURE                          UPVAL U1
     1053 CAPTURE                          UPVAL U9
     1054 CAPTURE                          UPVAL U24
     1055 CAPTURE                          UPVAL U25
     1056 CAPTURE                          UPVAL U26
     1057 CAPTURE                          UPVAL U27
     1058 CAPTURE                          UPVAL U28
     1059 SETTABLEKS                       R50 R49 K110 ["onActivated"]
     1061 SETTABLEKS                       R49 R48 K187 ["link"]
     1063 NEWCLOSURE                       R49 P10
     1064 CAPTURE                          VAL R0
     1065 SETTABLEKS                       R49 R48 K148 ["onClose"]
     1067 CALL                             R46 2 -1
     1068 SETLIST                          R45 R46 -1 [1]
     1070 CALL                             R42 3 1
     1071 SETTABLEKS                       R42 R41 K69 ["OwnerNotAgeVerifiedBanner"]
     1073 GETUPVAL                         R42 1
     1074 GETTABLEKS                       R42 R42 K15 ["fflagManageCollaboratorsOwnerCountryBlocked"]
     1076 JUMPIFNOT                        R42 ; [+44]
     1077 MOVE                             R42 R20
     1078 JUMPIFNOT                        R42 ; [+42]
     1079 MOVE                             R42 R11
     1080 JUMPIFNOT                        R42 ; [+40]
     1081 GETUPVAL                         R42 12
     1082 GETTABLEKS                       R42 R42 K54 ["createElement"]
     1084 GETUPVAL                         R43 15
     1085 DUPTABLE                         R44 K162 [{"LayoutOrder", "tag"}]
     1086 NAMECALL                         R45 R31 K98 ["getNextOrder"]
     1088 CALL                             R45 1 1
     1089 SETTABLEKS                       R45 R44 K89 ["LayoutOrder"]
     1091 LOADK                            R45 K186 ["padding-x-large margin-top-small size-full-0 auto-y"]
     1092 SETTABLEKS                       R45 R44 K109 ["tag"]
     1094 NEWTABLE                         R45 0 1
     1096 GETUPVAL                         R46 12
     1097 GETTABLEKS                       R46 R46 K54 ["createElement"]
     1099 GETUPVAL                         R47 31
     1100 DUPTABLE                         R48 K202 [{"severity", "title", "onClose"}]
     1101 GETUPVAL                         R49 22
     1102 GETTABLEKS                       R49 R49 K189 ["Warning"]
     1104 SETTABLEKS                       R49 R48 K145 ["severity"]
     1106 LOADK                            R51 K190 ["FeedbackAlert"]
     1107 LOADK                            R52 K203 ["OwnerCountryBlockedTitle"]
     1108 NAMECALL                         R49 R3 K35 ["getText"]
     1110 CALL                             R49 3 1
     1111 SETTABLEKS                       R49 R48 K146 ["title"]
     1113 NEWCLOSURE                       R49 P11
     1114 CAPTURE                          VAL R0
     1115 SETTABLEKS                       R49 R48 K148 ["onClose"]
     1117 CALL                             R46 2 -1
     1118 SETLIST                          R45 R46 -1 [1]
     1120 CALL                             R42 3 1
     1121 SETTABLEKS                       R42 R41 K70 ["OwnerCountryBlockedBanner"]
     1123 GETUPVAL                         R42 9
     1124 JUMPIFNOT                        R42 ; [+55]
     1125 GETUPVAL                         R43 6
     1126 CALL                             R43 0 1
     1127 JUMPIF                           R43 ; [+3]
     1128 GETUPVAL                         R43 0
     1129 NOT                              R42 R43
     1130 JUMPIFNOT                        R42 ; [+49]
     1131 GETUPVAL                         R42 10
     1132 GETTABLEKS                       R42 R42 K54 ["createElement"]
     1134 GETUPVAL                         R43 15
     1135 DUPTABLE                         R44 K204 [{"LayoutOrder", "Size", "tag"}]
     1136 NAMECALL                         R45 R31 K98 ["getNextOrder"]
     1138 CALL                             R45 1 1
     1139 SETTABLEKS                       R45 R44 K89 ["LayoutOrder"]
     1141 GETIMPORT                        R45 K60 [UDim2.new]
     1143 LOADN                            R46 0
     1144 LOADN                            R47 2
     1145 LOADN                            R48 0
     1146 LOADN                            R49 10
     1147 CALL                             R45 4 1
     1148 SETTABLEKS                       R45 R44 K56 ["Size"]
     1150 LOADK                            R45 K205 ["auto-xy padding-top-medium"]
     1151 SETTABLEKS                       R45 R44 K109 ["tag"]
     1153 DUPTABLE                         R45 K207 [{"CollaborationTitle"}]
     1154 GETUPVAL                         R46 32
     1155 JUMPIFNOT                        R46 ; [+21]
     1156 GETUPVAL                         R46 12
     1157 GETTABLEKS                       R46 R46 K54 ["createElement"]
     1159 GETUPVAL                         R47 19
     1160 DUPTABLE                         R48 K208 [{"LayoutOrder", "tag", "Text"}]
     1161 NAMECALL                         R49 R31 K98 ["getNextOrder"]
     1163 CALL                             R49 1 1
     1164 SETTABLEKS                       R49 R48 K89 ["LayoutOrder"]
     1166 LOADK                            R49 K209 ["auto-xy text-align-x-left text-label-small"]
     1167 SETTABLEKS                       R49 R48 K109 ["tag"]
     1169 LOADK                            R51 K210 ["Subtitle"]
     1170 LOADK                            R52 K211 ["SearchCollaborators"]
     1171 NAMECALL                         R49 R3 K35 ["getText"]
     1173 CALL                             R49 3 1
     1174 SETTABLEKS                       R49 R48 K135 ["Text"]
     1176 CALL                             R46 2 1
     1177 SETTABLEKS                       R46 R45 K206 ["CollaborationTitle"]
     1179 CALL                             R42 3 1
     1180 SETTABLEKS                       R42 R41 K71 ["CollaborationSubtitleTitleView"]
     1182 GETUPVAL                         R42 9
     1183 JUMPIFNOT                        R42 ; [+134]
     1184 MOVE                             R42 R24
     1185 JUMPIFNOT                        R42 ; [+132]
     1186 GETUPVAL                         R42 10
     1187 GETTABLEKS                       R42 R42 K54 ["createElement"]
     1189 GETUPVAL                         R43 33
     1190 DUPTABLE                         R44 K214 [{"scroll", "layout", "tag", "LayoutOrder"}]
     1191 DUPTABLE                         R45 K219 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
     1192 GETUPVAL                         R46 34
     1193 GETTABLEKS                       R46 R46 K220 ["Always"]
     1195 SETTABLEKS                       R46 R45 K215 ["scrollBarVisibility"]
     1197 GETIMPORT                        R46 K222 [Enum.ScrollingDirection.Y]
     1199 SETTABLEKS                       R46 R45 K216 ["ScrollingDirection"]
     1201 GETIMPORT                        R46 K224 [Enum.AutomaticSize.Y]
     1203 SETTABLEKS                       R46 R45 K217 ["AutomaticCanvasSize"]
     1205 GETIMPORT                        R46 K60 [UDim2.new]
     1207 CALL                             R46 0 1
     1208 SETTABLEKS                       R46 R45 K218 ["CanvasSize"]
     1210 SETTABLEKS                       R45 R44 K212 ["scroll"]
     1212 DUPTABLE                         R45 K226 [{"HorizontalAlignment", "FillDirection", "SortOrder", "HorizontalFlex"}]
     1213 GETIMPORT                        R46 K228 [Enum.HorizontalAlignment.Left]
     1215 SETTABLEKS                       R46 R45 K83 ["HorizontalAlignment"]
     1217 GETIMPORT                        R46 K88 [Enum.FillDirection.Vertical]
     1219 SETTABLEKS                       R46 R45 K81 ["FillDirection"]
     1221 GETIMPORT                        R46 K90 [Enum.SortOrder.LayoutOrder]
     1223 SETTABLEKS                       R46 R45 K82 ["SortOrder"]
     1225 GETIMPORT                        R46 K231 [Enum.UIFlexAlignment.Fill]
     1227 SETTABLEKS                       R46 R45 K225 ["HorizontalFlex"]
     1229 SETTABLEKS                       R45 R44 K213 ["layout"]
     1231 LOADK                            R45 K232 ["fill size-full col align-y-top gap-small"]
     1232 SETTABLEKS                       R45 R44 K109 ["tag"]
     1234 NAMECALL                         R45 R31 K98 ["getNextOrder"]
     1236 CALL                             R45 1 1
     1237 SETTABLEKS                       R45 R44 K89 ["LayoutOrder"]
     1239 DUPTABLE                         R45 K236 [{"SearchBarWidget", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
     1240 MOVE                             R46 R20
     1241 JUMPIFNOT                        R46 ; [+21]
     1242 GETUPVAL                         R46 10
     1243 GETTABLEKS                       R46 R46 K54 ["createElement"]
     1245 GETUPVAL                         R47 35
     1246 DUPTABLE                         R48 K240 [{"LayoutOrder", "Writable", "IsGroupGame", "SearchDisabled"}]
     1247 NAMECALL                         R49 R32 K98 ["getNextOrder"]
     1249 CALL                             R49 1 1
     1250 SETTABLEKS                       R49 R48 K89 ["LayoutOrder"]
     1252 LOADB                            R49 1
     1253 SETTABLEKS                       R49 R48 K237 ["Writable"]
     1255 NAMECALL                         R49 R0 K197 ["isGroupGame"]
     1257 CALL                             R49 1 1
     1258 SETTABLEKS                       R49 R48 K238 ["IsGroupGame"]
     1260 SETTABLEKS                       R23 R48 K239 ["SearchDisabled"]
     1262 CALL                             R46 2 1
     1263 SETTABLEKS                       R46 R45 K233 ["SearchBarWidget"]
     1265 GETUPVAL                         R46 10
     1266 GETTABLEKS                       R46 R46 K54 ["createElement"]
     1268 GETUPVAL                         R47 36
     1269 DUPTABLE                         R48 K241 [{"LayoutOrder"}]
     1270 NAMECALL                         R49 R32 K98 ["getNextOrder"]
     1272 CALL                             R49 1 1
     1273 SETTABLEKS                       R49 R48 K89 ["LayoutOrder"]
     1275 CALL                             R46 2 1
     1276 SETTABLEKS                       R46 R45 K234 ["CollaboratorFilterWidget"]
     1278 NOT                              R46 R20
     1279 JUMPIFNOT                        R46 ; [+9]
     1280 GETUPVAL                         R46 10
     1281 GETTABLEKS                       R46 R46 K54 ["createElement"]
     1283 LOADK                            R47 K55 ["Frame"]
     1284 DUPTABLE                         R48 K243 [{"BackgroundTransparency"}]
     1285 LOADN                            R49 1
     1286 SETTABLEKS                       R49 R48 K242 ["BackgroundTransparency"]
     1288 CALL                             R46 2 1
     1289 SETTABLEKS                       R46 R45 K55 ["Frame"]
     1291 GETUPVAL                         R46 10
     1292 GETTABLEKS                       R46 R46 K54 ["createElement"]
     1294 GETUPVAL                         R47 37
     1295 DUPTABLE                         R48 K245 [{"LayoutOrder", "Writable", "IsGroupGame", "DisableEditPermission"}]
     1296 NAMECALL                         R49 R32 K98 ["getNextOrder"]
     1298 CALL                             R49 1 1
     1299 SETTABLEKS                       R49 R48 K89 ["LayoutOrder"]
     1301 SETTABLEKS                       R20 R48 K237 ["Writable"]
     1303 GETUPVAL                         R50 38
     1304 JUMPIFNOT                        R50 ; [+4]
     1305 NAMECALL                         R49 R0 K197 ["isGroupGame"]
     1307 CALL                             R49 1 1
     1308 JUMP                             ; [+1]
     1309 LOADNIL                          R49
     1310 SETTABLEKS                       R49 R48 K238 ["IsGroupGame"]
     1312 SETTABLEKS                       R23 R48 K244 ["DisableEditPermission"]
     1314 CALL                             R46 2 1
     1315 SETTABLEKS                       R46 R45 K235 ["CollaboratorsWidget"]
     1317 CALL                             R42 3 1
     1318 SETTABLEKS                       R42 R41 K72 ["ScrollingFrameNew"]
     1320 GETUPVAL                         R43 9
     1321 NOT                              R42 R43
     1322 JUMPIFNOT                        R42 ; [+124]
     1323 MOVE                             R42 R24
     1324 JUMPIFNOT                        R42 ; [+122]
     1325 GETUPVAL                         R42 10
     1326 GETTABLEKS                       R42 R42 K54 ["createElement"]
     1328 GETUPVAL                         R43 39
     1329 DUPTABLE                         R44 K247 [{"LayoutOrder", "Size", "Layout", "AutomaticCanvasSize", "Spacing"}]
     1330 NAMECALL                         R45 R31 K98 ["getNextOrder"]
     1332 CALL                             R45 1 1
     1333 SETTABLEKS                       R45 R44 K89 ["LayoutOrder"]
     1335 GETIMPORT                        R45 K60 [UDim2.new]
     1337 LOADN                            R46 1
     1338 LOADN                            R47 0
     1339 LOADN                            R48 1
     1340 MINUS                            R49 R30
     1341 CALL                             R45 4 1
     1342 SETTABLEKS                       R45 R44 K56 ["Size"]
     1344 GETIMPORT                        R45 K88 [Enum.FillDirection.Vertical]
     1346 SETTABLEKS                       R45 R44 K62 ["Layout"]
     1348 GETIMPORT                        R45 K224 [Enum.AutomaticSize.Y]
     1350 SETTABLEKS                       R45 R44 K217 ["AutomaticCanvasSize"]
     1352 GETIMPORT                        R45 K94 [UDim.new]
     1354 LOADN                            R46 0
     1355 JUMPIFNOT                        R20 ; [+5]
     1356 GETTABLEKS                       R47 R2 K248 ["scrollingFrame"]
     1358 GETTABLEKS                       R47 R47 K249 ["yPadding"]
     1360 JUMP                             ; [+4]
     1361 GETTABLEKS                       R47 R2 K248 ["scrollingFrame"]
     1363 GETTABLEKS                       R47 R47 K250 ["yPaddingNonOwner"]
     1365 CALL                             R45 2 1
     1366 SETTABLEKS                       R45 R44 K246 ["Spacing"]
     1368 DUPTABLE                         R45 K236 [{"SearchBarWidget", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
     1369 MOVE                             R46 R20
     1370 JUMPIFNOT                        R46 ; [+21]
     1371 GETUPVAL                         R46 10
     1372 GETTABLEKS                       R46 R46 K54 ["createElement"]
     1374 GETUPVAL                         R47 35
     1375 DUPTABLE                         R48 K240 [{"LayoutOrder", "Writable", "IsGroupGame", "SearchDisabled"}]
     1376 NAMECALL                         R49 R32 K98 ["getNextOrder"]
     1378 CALL                             R49 1 1
     1379 SETTABLEKS                       R49 R48 K89 ["LayoutOrder"]
     1381 LOADB                            R49 1
     1382 SETTABLEKS                       R49 R48 K237 ["Writable"]
     1384 NAMECALL                         R49 R0 K197 ["isGroupGame"]
     1386 CALL                             R49 1 1
     1387 SETTABLEKS                       R49 R48 K238 ["IsGroupGame"]
     1389 SETTABLEKS                       R23 R48 K239 ["SearchDisabled"]
     1391 CALL                             R46 2 1
     1392 SETTABLEKS                       R46 R45 K233 ["SearchBarWidget"]
     1394 GETUPVAL                         R46 10
     1395 GETTABLEKS                       R46 R46 K54 ["createElement"]
     1397 GETUPVAL                         R47 36
     1398 DUPTABLE                         R48 K241 [{"LayoutOrder"}]
     1399 NAMECALL                         R49 R32 K98 ["getNextOrder"]
     1401 CALL                             R49 1 1
     1402 SETTABLEKS                       R49 R48 K89 ["LayoutOrder"]
     1404 CALL                             R46 2 1
     1405 SETTABLEKS                       R46 R45 K234 ["CollaboratorFilterWidget"]
     1407 NOT                              R46 R20
     1408 JUMPIFNOT                        R46 ; [+9]
     1409 GETUPVAL                         R46 10
     1410 GETTABLEKS                       R46 R46 K54 ["createElement"]
     1412 LOADK                            R47 K55 ["Frame"]
     1413 DUPTABLE                         R48 K243 [{"BackgroundTransparency"}]
     1414 LOADN                            R49 1
     1415 SETTABLEKS                       R49 R48 K242 ["BackgroundTransparency"]
     1417 CALL                             R46 2 1
     1418 SETTABLEKS                       R46 R45 K55 ["Frame"]
     1420 GETUPVAL                         R46 10
     1421 GETTABLEKS                       R46 R46 K54 ["createElement"]
     1423 GETUPVAL                         R47 37
     1424 DUPTABLE                         R48 K245 [{"LayoutOrder", "Writable", "IsGroupGame", "DisableEditPermission"}]
     1425 NAMECALL                         R49 R32 K98 ["getNextOrder"]
     1427 CALL                             R49 1 1
     1428 SETTABLEKS                       R49 R48 K89 ["LayoutOrder"]
     1430 SETTABLEKS                       R20 R48 K237 ["Writable"]
     1432 GETUPVAL                         R50 38
     1433 JUMPIFNOT                        R50 ; [+4]
     1434 NAMECALL                         R49 R0 K197 ["isGroupGame"]
     1436 CALL                             R49 1 1
     1437 JUMP                             ; [+1]
     1438 LOADNIL                          R49
     1439 SETTABLEKS                       R49 R48 K238 ["IsGroupGame"]
     1441 SETTABLEKS                       R23 R48 K244 ["DisableEditPermission"]
     1443 CALL                             R46 2 1
     1444 SETTABLEKS                       R46 R45 K235 ["CollaboratorsWidget"]
     1446 CALL                             R42 3 1
     1447 SETTABLEKS                       R42 R41 K73 ["ScrollingFrame"]
     1449 JUMPIFNOT                        R26 ; [+90]
     1450 GETUPVAL                         R42 10
     1451 GETTABLEKS                       R42 R42 K54 ["createElement"]
     1453 LOADK                            R43 K55 ["Frame"]
     1454 DUPTABLE                         R44 K252 [{"BackgroundTransparency", "BackgroundColor3", "LayoutOrder", "Size", "BorderSizePixel"}]
     1455 LOADN                            R45 1
     1456 SETTABLEKS                       R45 R44 K242 ["BackgroundTransparency"]
     1458 GETTABLEKS                       R45 R2 K61 ["backgroundColor"]
     1460 SETTABLEKS                       R45 R44 K57 ["BackgroundColor3"]
     1462 NAMECALL                         R45 R31 K98 ["getNextOrder"]
     1464 CALL                             R45 1 1
     1465 SETTABLEKS                       R45 R44 K89 ["LayoutOrder"]
     1467 GETIMPORT                        R45 K60 [UDim2.new]
     1469 LOADN                            R46 1
     1470 LOADN                            R47 0
     1471 LOADN                            R48 0
     1472 GETTABLEKS                       R49 R2 K46 ["saveMessage"]
     1474 GETTABLEKS                       R49 R49 K47 ["boxHeight"]
     1476 CALL                             R45 4 1
     1477 SETTABLEKS                       R45 R44 K56 ["Size"]
     1479 LOADN                            R45 0
     1480 SETTABLEKS                       R45 R44 K251 ["BorderSizePixel"]
     1482 DUPTABLE                         R45 K253 [{"Text"}]
     1483 GETUPVAL                         R46 10
     1484 GETTABLEKS                       R46 R46 K54 ["createElement"]
     1486 LOADK                            R47 K254 ["TextLabel"]
     1487 GETUPVAL                         R48 40
     1488 GETTABLEKS                       R48 R48 K255 ["Dictionary"]
     1490 GETTABLEKS                       R48 R48 K256 ["join"]
     1492 GETTABLEKS                       R49 R2 K46 ["saveMessage"]
     1494 GETTABLEKS                       R49 R49 K257 ["textStyle"]
     1496 DUPTABLE                         R50 K262 [{"AnchorPoint", "Position", "Text", "TextXAlignment", "BorderSizePixel", "TextWrapped", "Size", "BackgroundTransparency"}]
     1497 GETIMPORT                        R51 K264 [Vector2.new]
     1499 LOADN                            R52 0
     1500 LOADK                            R53 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
     1501 CALL                             R51 2 1
     1502 SETTABLEKS                       R51 R50 K258 ["AnchorPoint"]
     1504 GETTABLEKS                       R51 R2 K46 ["saveMessage"]
     1506 GETTABLEKS                       R51 R51 K266 ["InnerTextPosition"]
     1508 SETTABLEKS                       R51 R50 K259 ["Position"]
     1510 SETTABLEKS                       R28 R50 K135 ["Text"]
     1512 GETIMPORT                        R51 K267 [Enum.TextXAlignment.Left]
     1514 SETTABLEKS                       R51 R50 K260 ["TextXAlignment"]
     1516 LOADN                            R51 0
     1517 SETTABLEKS                       R51 R50 K251 ["BorderSizePixel"]
     1519 LOADB                            R51 1
     1520 SETTABLEKS                       R51 R50 K261 ["TextWrapped"]
     1522 GETIMPORT                        R51 K60 [UDim2.new]
     1524 LOADK                            R52 K12 ["ShowOutsideAgeBucketBanner"]
     1525 LOADN                            R53 0
     1526 LOADN                            R54 1
     1527 LOADN                            R55 0
     1528 CALL                             R51 4 1
     1529 SETTABLEKS                       R51 R50 K56 ["Size"]
     1531 LOADN                            R51 1
     1532 SETTABLEKS                       R51 R50 K242 ["BackgroundTransparency"]
     1534 CALL                             R48 2 -1
     1535 CALL                             R46 -1 1
     1536 SETTABLEKS                       R46 R45 K135 ["Text"]
     1538 CALL                             R42 3 1
     1539 JUMP                             ; [+1]
     1540 LOADNIL                          R42
     1541 SETTABLEKS                       R42 R41 K74 ["TextFrame"]
     1543 GETUPVAL                         R42 0
     1544 JUMPIFNOT                        R42 ; [+15]
     1545 GETTABLEKS                       R42 R0 K7 ["state"]
     1547 GETTABLEKS                       R42 R42 K269 ["upsellDialogEnabled"]
     1549 JUMPIFNOT                        R42 ; [+10]
     1550 GETUPVAL                         R42 12
     1551 GETTABLEKS                       R42 R42 K54 ["createElement"]
     1553 GETUPVAL                         R43 41
     1554 DUPTABLE                         R44 K270 [{"onClose"}]
     1555 NEWCLOSURE                       R45 P12
     1556 CAPTURE                          VAL R0
     1557 SETTABLEKS                       R45 R44 K148 ["onClose"]
     1559 CALL                             R42 2 1
     1560 SETTABLEKS                       R42 R41 K75 ["upsellDialog"]
     1562 MOVE                             R42 R24
     1563 JUMPIFNOT                        R42 ; [+42]
     1564 GETUPVAL                         R42 10
     1565 GETTABLEKS                       R42 R42 K54 ["createElement"]
     1567 GETUPVAL                         R43 11
     1568 DUPTABLE                         R44 K97 [{"LayoutOrder", "Size"}]
     1569 NAMECALL                         R45 R31 K98 ["getNextOrder"]
     1571 CALL                             R45 1 1
     1572 SETTABLEKS                       R45 R44 K89 ["LayoutOrder"]
     1574 GETIMPORT                        R45 K60 [UDim2.new]
     1576 LOADN                            R46 1
     1577 LOADN                            R47 0
     1578 LOADN                            R48 0
     1579 GETTABLEKS                       R49 R2 K45 ["footer"]
     1581 GETTABLEKS                       R49 R49 K44 ["height"]
     1583 CALL                             R45 4 1
     1584 SETTABLEKS                       R45 R44 K56 ["Size"]
     1586 DUPTABLE                         R45 K272 [{"Footer"}]
     1587 GETUPVAL                         R46 10
     1588 GETTABLEKS                       R46 R46 K54 ["createElement"]
     1590 GETUPVAL                         R47 42
     1591 DUPTABLE                         R48 K275 [{"IsTeamCreateEnabled", "OnSavePressed", "OnCancelPressed"}]
     1592 SETTABLEKS                       R25 R48 K101 ["IsTeamCreateEnabled"]
     1594 NEWCLOSURE                       R49 P13
     1595 CAPTURE                          VAL R0
     1596 SETTABLEKS                       R49 R48 K273 ["OnSavePressed"]
     1598 NEWCLOSURE                       R49 P14
     1599 CAPTURE                          VAL R0
     1600 SETTABLEKS                       R49 R48 K274 ["OnCancelPressed"]
     1602 CALL                             R46 2 1
     1603 SETTABLEKS                       R46 R45 K271 ["Footer"]
     1605 CALL                             R42 3 1
     1606 SETTABLEKS                       R42 R41 K76 ["FooterContent"]
     1608 NOT                              R42 R17
     1609 JUMPIFNOT                        R42 ; [+22]
     1610 NOT                              R42 R18
     1611 JUMPIFNOT                        R42 ; [+20]
     1612 GETUPVAL                         R42 10
     1613 GETTABLEKS                       R42 R42 K54 ["createElement"]
     1615 GETUPVAL                         R43 43
     1616 DUPTABLE                         R44 K276 [{"AnchorPoint", "Position"}]
     1617 GETIMPORT                        R45 K264 [Vector2.new]
     1619 LOADK                            R46 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
     1620 LOADK                            R47 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
     1621 CALL                             R45 2 1
     1622 SETTABLEKS                       R45 R44 K258 ["AnchorPoint"]
     1624 GETIMPORT                        R45 K278 [UDim2.fromScale]
     1626 LOADK                            R46 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
     1627 LOADK                            R47 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
     1628 CALL                             R45 2 1
     1629 SETTABLEKS                       R45 R44 K259 ["Position"]
     1631 CALL                             R42 2 1
     1632 SETTABLEKS                       R42 R41 K77 ["LoadingIndicator"]
     1634 MOVE                             R42 R18
     1635 JUMPIFNOT                        R42 ; [+46]
     1636 GETUPVAL                         R42 10
     1637 GETTABLEKS                       R42 R42 K54 ["createElement"]
     1639 LOADK                            R43 K254 ["TextLabel"]
     1640 DUPTABLE                         R44 K282 [{"Text", "AnchorPoint", "Position", "TextColor3", "TextSize", "Font"}]
     1641 SETTABLEKS                       R19 R44 K135 ["Text"]
     1643 GETIMPORT                        R45 K264 [Vector2.new]
     1645 LOADK                            R46 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
     1646 LOADK                            R47 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
     1647 CALL                             R45 2 1
     1648 SETTABLEKS                       R45 R44 K258 ["AnchorPoint"]
     1650 GETIMPORT                        R45 K278 [UDim2.fromScale]
     1652 LOADK                            R46 K9 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
     1653 LOADK                            R47 K27 ["PrefetchLikelyCollaborators"]
     1654 CALL                             R45 2 1
     1655 SETTABLEKS                       R45 R44 K259 ["Position"]
     1657 GETTABLEKS                       R45 R2 K284 ["fontStyle"]
     1659 GETTABLEKS                       R45 R45 K285 ["Normal"]
     1661 GETTABLEKS                       R45 R45 K279 ["TextColor3"]
     1663 SETTABLEKS                       R45 R44 K279 ["TextColor3"]
     1665 GETTABLEKS                       R45 R2 K284 ["fontStyle"]
     1667 GETTABLEKS                       R45 R45 K285 ["Normal"]
     1669 GETTABLEKS                       R45 R45 K280 ["TextSize"]
     1671 SETTABLEKS                       R45 R44 K280 ["TextSize"]
     1673 GETTABLEKS                       R45 R2 K284 ["fontStyle"]
     1675 GETTABLEKS                       R45 R45 K285 ["Normal"]
     1677 GETTABLEKS                       R45 R45 K281 ["Font"]
     1679 SETTABLEKS                       R45 R44 K281 ["Font"]
     1681 CALL                             R42 2 1
     1682 SETTABLEKS                       R42 R41 K78 ["FailureText"]
     1684 CALL                             R38 3 -1
     1685 RETURN                           R38 -1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 DUPTABLE                         R3 K15 [{"LoadState", "SaveState", "OwnerId", "OwnerType", "GroupOwnerUserId", "HasCollaborators", "HasCurrentEditCollaborators", "HasNewEditCollaborators", "HasOutsideAgeBucketEditCollaborators", "HasCurrentUserBlockingCollaborators", "OwnerIsNotAgeVerified", "OwnerIsCountryBlocked", "GroupRolePermissions", "Is17PlusGame", "HasUnsavedChanges"}]
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
       53 GETTABLEKS                       R5 R5 K24 ["fflagManageCollaboratorsVerifyAgeDialog"]
       55 JUMPIFNOT                        R5 ; [+4]
       56 GETUPVAL                         R4 6
       57 MOVE                             R5 R0
       58 CALL                             R4 1 1
       59 JUMP                             ; [+1]
       60 LOADNIL                          R4
       61 SETTABLEKS                       R4 R3 K7 ["HasNewEditCollaborators"]
       63 GETUPVAL                         R5 5
       64 GETTABLEKS                       R5 R5 K25 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
       66 JUMPIFNOT                        R5 ; [+4]
       67 GETUPVAL                         R4 7
       68 MOVE                             R5 R0
       69 CALL                             R4 1 1
       70 JUMP                             ; [+1]
       71 LOADNIL                          R4
       72 SETTABLEKS                       R4 R3 K8 ["HasOutsideAgeBucketEditCollaborators"]
       74 GETUPVAL                         R5 5
       75 GETTABLEKS                       R5 R5 K26 ["fflagManageCollaboratorsEditorBlockingBanner"]
       77 JUMPIFNOT                        R5 ; [+4]
       78 GETUPVAL                         R4 8
       79 MOVE                             R5 R0
       80 CALL                             R4 1 1
       81 JUMP                             ; [+1]
       82 LOADNIL                          R4
       83 SETTABLEKS                       R4 R3 K9 ["HasCurrentUserBlockingCollaborators"]
       85 GETUPVAL                         R5 5
       86 GETTABLEKS                       R5 R5 K27 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
       88 JUMPIFNOT                        R5 ; [+4]
       89 GETUPVAL                         R4 9
       90 MOVE                             R5 R0
       91 CALL                             R4 1 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R4
       94 SETTABLEKS                       R4 R3 K10 ["OwnerIsNotAgeVerified"]
       96 GETUPVAL                         R5 5
       97 GETTABLEKS                       R5 R5 K28 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       99 JUMPIFNOT                        R5 ; [+4]
      100 GETUPVAL                         R4 10
      101 MOVE                             R5 R0
      102 CALL                             R4 1 1
      103 JUMP                             ; [+1]
      104 LOADNIL                          R4
      105 SETTABLEKS                       R4 R3 K11 ["OwnerIsCountryBlocked"]
      107 GETTABLEKS                       R4 R0 K12 ["GroupRolePermissions"]
      109 GETTABLEKS                       R4 R4 K29 ["PermissionsByRole"]
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
      124 RETURN                           R3 1

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["LoadPermissions"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_48:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_49:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
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
      190 GETTABLEKS                       R40 R40 K55 ["Footer"]
      192 CALL                             R39 1 1
      193 GETIMPORT                        R40 K17 [require]
      195 GETTABLEKS                       R41 R7 K48 ["Src"]
      197 GETTABLEKS                       R41 R41 K56 ["Thunks"]
      199 GETTABLEKS                       R41 R41 K57 ["SavePermissions"]
      201 CALL                             R40 1 1
      202 GETIMPORT                        R41 K17 [require]
      204 GETTABLEKS                       R42 R7 K48 ["Src"]
      206 GETTABLEKS                       R42 R42 K56 ["Thunks"]
      208 GETTABLEKS                       R42 R42 K58 ["PermissionsLoader"]
      210 CALL                             R41 1 1
      211 LOADNIL                          R42
      212 GETIMPORT                        R43 K1 [game]
      214 LOADK                            R45 K59 ["Collab8766_LogCollabSearchItemClickedEventV4"]
      215 NAMECALL                         R43 R43 K3 ["GetFastFlag"]
      217 CALL                             R43 2 1
      218 GETIMPORT                        R44 K1 [game]
      220 LOADK                            R46 K60 ["UpsellCollabSafety2"]
      221 NAMECALL                         R44 R44 K3 ["GetFastFlag"]
      223 CALL                             R44 2 1
      224 JUMPIFNOT                        R43 ; [+10]
      225 GETIMPORT                        R45 K17 [require]
      227 GETTABLEKS                       R46 R7 K48 ["Src"]
      229 GETTABLEKS                       R46 R46 K56 ["Thunks"]
      231 GETTABLEKS                       R46 R46 K61 ["SendAllSearchItemLogs"]
      233 CALL                             R45 1 1
      234 MOVE                             R42 R45
      235 GETIMPORT                        R45 K1 [game]
      237 LOADK                            R47 K62 ["UpsellCollabTrustedConnection2"]
      238 NAMECALL                         R45 R45 K3 ["GetFastFlag"]
      240 CALL                             R45 2 1
      241 GETIMPORT                        R46 K17 [require]
      243 GETTABLEKS                       R47 R7 K48 ["Src"]
      245 GETTABLEKS                       R47 R47 K63 ["Networking"]
      247 GETTABLEKS                       R47 R47 K64 ["Requests"]
      249 GETTABLEKS                       R47 R47 K65 ["GetAMPRequest"]
      251 CALL                             R46 1 1
      252 GETIMPORT                        R47 K17 [require]
      254 GETTABLEKS                       R48 R7 K48 ["Src"]
      256 GETTABLEKS                       R48 R48 K63 ["Networking"]
      258 GETTABLEKS                       R48 R48 K64 ["Requests"]
      260 GETTABLEKS                       R48 R48 K66 ["GetCanCollaborate"]
      262 CALL                             R47 1 1
      263 GETIMPORT                        R48 K17 [require]
      265 GETTABLEKS                       R49 R7 K48 ["Src"]
      267 GETTABLEKS                       R49 R49 K49 ["Util"]
      269 GETTABLEKS                       R49 R49 K67 ["IsLikelyCollaboratorPrefetchEnabled"]
      271 CALL                             R48 1 1
      272 MOVE                             R49 R48
      273 CALL                             R49 0 1
      274 LOADNIL                          R50
      275 LOADNIL                          R51
      276 JUMPIFNOT                        R49 ; [+20]
      277 GETIMPORT                        R52 K17 [require]
      279 GETTABLEKS                       R53 R7 K48 ["Src"]
      281 GETTABLEKS                       R53 R53 K56 ["Thunks"]
      283 GETTABLEKS                       R53 R53 K68 ["PrefetchLikelyCollaborators"]
      285 CALL                             R52 1 1
      286 MOVE                             R50 R52
      287 GETIMPORT                        R52 K17 [require]
      289 GETTABLEKS                       R53 R7 K48 ["Src"]
      291 GETTABLEKS                       R53 R53 K69 ["Selectors"]
      293 GETTABLEKS                       R53 R53 K70 ["IsGame17Plus"]
      295 CALL                             R52 1 1
      296 MOVE                             R51 R52
      297 GETIMPORT                        R52 K17 [require]
      299 GETTABLEKS                       R53 R7 K48 ["Src"]
      301 GETTABLEKS                       R53 R53 K49 ["Util"]
      303 GETTABLEKS                       R53 R53 K71 ["LoadState"]
      305 CALL                             R52 1 1
      306 GETIMPORT                        R53 K17 [require]
      308 GETTABLEKS                       R54 R7 K48 ["Src"]
      310 GETTABLEKS                       R54 R54 K49 ["Util"]
      312 GETTABLEKS                       R54 R54 K72 ["SaveState"]
      314 CALL                             R53 1 1
      315 GETIMPORT                        R54 K17 [require]
      317 GETTABLEKS                       R55 R7 K48 ["Src"]
      319 GETTABLEKS                       R55 R55 K69 ["Selectors"]
      321 GETTABLEKS                       R55 R55 K73 ["GetHasCollaborators"]
      323 CALL                             R54 1 1
      324 GETIMPORT                        R55 K17 [require]
      326 GETTABLEKS                       R56 R7 K48 ["Src"]
      328 GETTABLEKS                       R56 R56 K69 ["Selectors"]
      330 GETTABLEKS                       R56 R56 K74 ["GetHasNewEditCollaborators"]
      332 CALL                             R55 1 1
      333 GETIMPORT                        R56 K17 [require]
      335 GETTABLEKS                       R57 R7 K48 ["Src"]
      337 GETTABLEKS                       R57 R57 K69 ["Selectors"]
      339 GETTABLEKS                       R57 R57 K75 ["GetHasCurrentEditCollaborators"]
      341 CALL                             R56 1 1
      342 GETIMPORT                        R57 K17 [require]
      344 GETTABLEKS                       R58 R7 K48 ["Src"]
      346 GETTABLEKS                       R58 R58 K69 ["Selectors"]
      348 GETTABLEKS                       R58 R58 K76 ["GetHasUnsavedChanges"]
      350 CALL                             R57 1 1
      351 GETIMPORT                        R58 K17 [require]
      353 GETTABLEKS                       R59 R7 K48 ["Src"]
      355 GETTABLEKS                       R59 R59 K69 ["Selectors"]
      357 GETTABLEKS                       R59 R59 K77 ["GetHasOutsideAgeBucketEditCollaborators"]
      359 CALL                             R58 1 1
      360 GETIMPORT                        R59 K17 [require]
      362 GETTABLEKS                       R60 R7 K48 ["Src"]
      364 GETTABLEKS                       R60 R60 K69 ["Selectors"]
      366 GETTABLEKS                       R60 R60 K78 ["GetCurrentUserIsBlockingCollaborators"]
      368 CALL                             R59 1 1
      369 GETIMPORT                        R60 K17 [require]
      371 GETTABLEKS                       R61 R7 K48 ["Src"]
      373 GETTABLEKS                       R61 R61 K69 ["Selectors"]
      375 GETTABLEKS                       R61 R61 K79 ["GetOwnerIsNotAgeVerified"]
      377 CALL                             R60 1 1
      378 GETIMPORT                        R61 K17 [require]
      380 GETTABLEKS                       R62 R7 K48 ["Src"]
      382 GETTABLEKS                       R62 R62 K69 ["Selectors"]
      384 GETTABLEKS                       R62 R62 K80 ["GetOwnerIsCountryBlocked"]
      386 CALL                             R61 1 1
      387 GETIMPORT                        R62 K17 [require]
      389 GETTABLEKS                       R63 R7 K48 ["Src"]
      391 GETTABLEKS                       R63 R63 K49 ["Util"]
      393 GETTABLEKS                       R63 R63 K81 ["IsTeamCreateEnabled"]
      395 CALL                             R62 1 1
      396 GETTABLEKS                       R63 R12 K49 ["Util"]
      398 GETTABLEKS                       R64 R63 K82 ["LayoutOrderIterator"]
      400 GETIMPORT                        R65 K17 [require]
      402 GETTABLEKS                       R66 R7 K48 ["Src"]
      404 GETTABLEKS                       R66 R66 K49 ["Util"]
      406 GETTABLEKS                       R66 R66 K83 ["Analytics"]
      408 CALL                             R65 1 1
      409 OR                               R66 R2 R1
      410 GETTABLEKS                       R67 R22 K84 ["View"]
      412 GETIMPORT                        R68 K17 [require]
      414 GETTABLEKS                       R69 R7 K18 ["Packages"]
      416 GETTABLEKS                       R69 R69 K85 ["React"]
      418 CALL                             R68 1 1
      419 GETIMPORT                        R69 K17 [require]
      421 GETTABLEKS                       R70 R7 K48 ["Src"]
      423 GETTABLEKS                       R70 R70 K51 ["Components"]
      425 GETTABLEKS                       R70 R70 K86 ["Header"]
      427 CALL                             R69 1 1
      428 GETTABLEKS                       R70 R8 K87 ["PureComponent"]
      430 LOADK                            R72 K88 ["PermissionsView"]
      431 NAMECALL                         R70 R70 K89 ["extend"]
      433 CALL                             R70 2 1
      434 GETIMPORT                        R71 K17 [require]
      436 GETTABLEKS                       R72 R7 K48 ["Src"]
      438 GETTABLEKS                       R72 R72 K49 ["Util"]
      440 GETTABLEKS                       R72 R72 K90 ["Telemetry"]
      442 GETTABLEKS                       R72 R72 K91 ["CTAClickedEvent"]
      444 CALL                             R71 1 1
      445 GETIMPORT                        R72 K17 [require]
      447 GETTABLEKS                       R73 R7 K48 ["Src"]
      449 GETTABLEKS                       R73 R73 K49 ["Util"]
      451 GETTABLEKS                       R73 R73 K90 ["Telemetry"]
      453 GETTABLEKS                       R73 R73 K92 ["SafetyUpsellBannerShownEvent"]
      455 CALL                             R72 1 1
      456 GETIMPORT                        R73 K17 [require]
      458 GETTABLEKS                       R74 R7 K18 ["Packages"]
      460 GETTABLEKS                       R74 R74 K93 ["TelemetryProtocol"]
      462 CALL                             R73 1 1
      463 GETTABLEKS                       R74 R73 K94 ["new"]
      465 CALL                             R74 0 1
      466 GETIMPORT                        R75 K17 [require]
      468 GETTABLEKS                       R76 R7 K48 ["Src"]
      470 GETTABLEKS                       R76 R76 K51 ["Components"]
      472 GETTABLEKS                       R76 R76 K95 ["UpsellDialog"]
      474 CALL                             R75 1 1
      475 GETIMPORT                        R76 K17 [require]
      477 GETTABLEKS                       R77 R7 K48 ["Src"]
      479 GETTABLEKS                       R77 R77 K38 ["Enums"]
      481 GETTABLEKS                       R77 R77 K96 ["CanCollaborateError"]
      483 CALL                             R76 1 1
      484 DUPCLOSURE                       R77 K97 [PROTO_0]
      485 CAPTURE                          VAL R44
      486 CAPTURE                          VAL R74
      487 CAPTURE                          VAL R71
      488 CAPTURE                          VAL R4
      489 DUPCLOSURE                       R78 K98 [PROTO_2]
      490 CAPTURE                          VAL R5
      491 DUPCLOSURE                       R79 K99 [PROTO_3]
      492 SETTABLEKS                       R79 R70 K100 ["isGroupGame"]
      494 DUPCLOSURE                       R79 K101 [PROTO_4]
      495 CAPTURE                          VAL R4
      496 SETTABLEKS                       R79 R70 K102 ["isLoggedInUserGameOwner"]
      498 DUPCLOSURE                       R79 K103 [PROTO_11]
      499 CAPTURE                          VAL R8
      500 CAPTURE                          VAL R44
      501 CAPTURE                          VAL R74
      502 CAPTURE                          VAL R71
      503 CAPTURE                          VAL R4
      504 CAPTURE                          VAL R6
      505 CAPTURE                          VAL R5
      506 CAPTURE                          VAL R11
      507 CAPTURE                          VAL R72
      508 SETTABLEKS                       R79 R70 K104 ["init"]
      510 DUPCLOSURE                       R79 K105 [PROTO_24]
      511 CAPTURE                          VAL R45
      512 CAPTURE                          VAL R46
      513 CAPTURE                          VAL R74
      514 CAPTURE                          VAL R72
      515 CAPTURE                          VAL R4
      516 CAPTURE                          VAL R11
      517 SETTABLEKS                       R79 R70 K106 ["didUpdate"]
      519 DUPCLOSURE                       R79 K107 [PROTO_25]
      520 CAPTURE                          VAL R47
      521 CAPTURE                          VAL R76
      522 CAPTURE                          VAL R6
      523 CAPTURE                          VAL R5
      524 SETGLOBAL                        R79 K108 ["checkAndMaybeShowVerifyAgeDialog"]
      526 DUPCLOSURE                       R79 K109 [PROTO_26]
      527 CAPTURE                          VAL R11
      528 CAPTURE                          VAL R43
      529 CAPTURE                          VAL R62
      530 CAPTURE                          VAL R3
      531 SETTABLEKS                       R79 R70 K110 ["onSavePressed"]
      533 DUPCLOSURE                       R79 K111 [PROTO_29]
      534 CAPTURE                          VAL R43
      535 CAPTURE                          VAL R65
      536 CAPTURE                          VAL R35
      537 CAPTURE                          VAL R21
      538 CAPTURE                          VAL R8
      539 SETTABLEKS                       R79 R70 K112 ["onCancelPressed"]
      541 DUPCLOSURE                       R79 K113 [PROTO_45]
      542 CAPTURE                          VAL R45
      543 CAPTURE                          VAL R11
      544 CAPTURE                          VAL R43
      545 CAPTURE                          VAL R53
      546 CAPTURE                          VAL R52
      547 CAPTURE                          VAL R49
      548 CAPTURE                          VAL R62
      549 CAPTURE                          VAL R66
      550 CAPTURE                          VAL R64
      551 CAPTURE                          VAL R44
      552 CAPTURE                          VAL R8
      553 CAPTURE                          VAL R19
      554 CAPTURE                          VAL R68
      555 CAPTURE                          VAL R69
      556 CAPTURE                          VAL R3
      557 CAPTURE                          VAL R67
      558 CAPTURE                          VAL R27
      559 CAPTURE                          VAL R26
      560 CAPTURE                          VAL R29
      561 CAPTURE                          VAL R23
      562 CAPTURE                          VAL R30
      563 CAPTURE                          VAL R32
      564 CAPTURE                          VAL R33
      565 CAPTURE                          VAL R34
      566 CAPTURE                          VAL R74
      567 CAPTURE                          VAL R71
      568 CAPTURE                          VAL R4
      569 CAPTURE                          VAL R6
      570 CAPTURE                          VAL R5
      571 CAPTURE                          VAL R28
      572 CAPTURE                          VAL R22
      573 CAPTURE                          VAL R31
      574 CAPTURE                          VAL R2
      575 CAPTURE                          VAL R24
      576 CAPTURE                          VAL R25
      577 CAPTURE                          VAL R37
      578 CAPTURE                          VAL R38
      579 CAPTURE                          VAL R36
      580 CAPTURE                          VAL R0
      581 CAPTURE                          VAL R18
      582 CAPTURE                          VAL R10
      583 CAPTURE                          VAL R75
      584 CAPTURE                          VAL R39
      585 CAPTURE                          VAL R20
      586 SETTABLEKS                       R79 R70 K114 ["render"]
      588 MOVE                             R79 R14
      589 DUPTABLE                         R80 K115 [{"Stylizer", "Localization"}]
      590 SETTABLEKS                       R15 R80 K28 ["Stylizer"]
      592 SETTABLEKS                       R16 R80 K29 ["Localization"]
      594 CALL                             R79 1 1
      595 MOVE                             R80 R70
      596 CALL                             R79 1 1
      597 MOVE                             R70 R79
      598 GETTABLEKS                       R79 R9 K116 ["connect"]
      600 NEWCLOSURE                       R80 P10
      601 CAPTURE                          VAL R57
      602 CAPTURE                          VAL R52
      603 CAPTURE                          VAL R53
      604 CAPTURE                          VAL R54
      605 CAPTURE                          VAL R56
      606 CAPTURE                          VAL R11
      607 CAPTURE                          VAL R55
      608 CAPTURE                          VAL R58
      609 CAPTURE                          VAL R59
      610 CAPTURE                          VAL R60
      611 CAPTURE                          VAL R61
      612 CAPTURE                          VAL R49
      613 CAPTURE                          REF R51
      614 NEWCLOSURE                       R81 P11
      615 CAPTURE                          VAL R41
      616 CAPTURE                          VAL R40
      617 CAPTURE                          VAL R43
      618 CAPTURE                          REF R42
      619 CAPTURE                          VAL R49
      620 CAPTURE                          REF R50
      621 CALL                             R79 2 1
      622 MOVE                             R80 R70
      623 CALL                             R79 1 1
      624 MOVE                             R70 R79
      625 CLOSEUPVALS                      R42
      626 RETURN                           R70 1
