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
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+18]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K3 [{"userid", "action", "upsellEntrySurface"}]
        5 GETUPVAL                         R5 3
        6 NAMECALL                         R5 R5 K4 ["GetUserId"]
        8 CALL                             R5 1 1
        9 SETTABLEKS                       R5 R4 K0 ["userid"]
       11 LOADK                            R5 K5 ["owners_view"]
       12 SETTABLEKS                       R5 R4 K1 ["action"]
       14 LOADK                            R5 K6 ["manage_collaborators"]
       15 SETTABLEKS                       R5 R4 K2 ["upsellEntrySurface"]
       17 NAMECALL                         R1 R1 K7 ["logRobloxTelemetryEvent"]
       19 CALL                             R1 3 0
       20 GETIMPORT                        R1 K10 [string.format]
       22 GETUPVAL                         R2 4
       23 GETTABLEKS                       R2 R2 K11 ["fstringCreatorHubOwnersViewLinkFormatStr"]
       25 FASTCALL1                        TOSTRING R0 ; [+3]
       26 MOVE                             R4 R0
       27 GETIMPORT                        R3 K13 [tostring]
       29 CALL                             R3 1 1
       30 CALL                             R1 2 1
       31 GETIMPORT                        R2 K15 [pcall]
       33 NEWCLOSURE                       R3 P0
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          VAL R1
       36 CALL                             R2 1 2
       37 JUMPIF                           R2 ; [+10]
       38 GETIMPORT                        R4 K17 [warn]
       40 LOADK                            R6 K18 ["OpenUrl failed: "]
       41 FASTCALL1                        TOSTRING R3 ; [+3]
       42 MOVE                             R8 R3
       43 GETIMPORT                        R7 K13 [tostring]
       45 CALL                             R7 1 1
       46 CONCAT                           R5 R6 R7
       47 CALL                             R4 1 0
       48 RETURN                           R0 0

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
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U7
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
       86 JUMPIFNOT                        R2 ; [+18]
       87 GETTABLEKS                       R2 R0 K1 ["props"]
       89 GETTABLEKS                       R2 R2 K12 ["HasOutsideAgeBucketEditCollaborators"]
       91 GETTABLEKS                       R3 R1 K12 ["HasOutsideAgeBucketEditCollaborators"]
       93 JUMPIFEQ                         R2 R3 ; [+11]
       95 DUPTABLE                         R4 K14 [{"ShowOutsideAgeBucketBanner"}]
       96 GETTABLEKS                       R5 R0 K1 ["props"]
       98 GETTABLEKS                       R5 R5 K12 ["HasOutsideAgeBucketEditCollaborators"]
      100 SETTABLEKS                       R5 R4 K13 ["ShowOutsideAgeBucketBanner"]
      102 NAMECALL                         R2 R0 K15 ["setState"]
      104 CALL                             R2 2 0
      105 GETUPVAL                         R2 5
      106 GETTABLEKS                       R2 R2 K16 ["fflagManageCollaboratorsEditorBlockingBanner"]
      108 JUMPIFNOT                        R2 ; [+18]
      109 GETTABLEKS                       R2 R0 K1 ["props"]
      111 GETTABLEKS                       R2 R2 K17 ["HasCurrentUserBlockingCollaborators"]
      113 GETTABLEKS                       R3 R1 K17 ["HasCurrentUserBlockingCollaborators"]
      115 JUMPIFEQ                         R2 R3 ; [+11]
      117 DUPTABLE                         R4 K19 [{"ShowEditorBlockingBanner"}]
      118 GETTABLEKS                       R5 R0 K1 ["props"]
      120 GETTABLEKS                       R5 R5 K17 ["HasCurrentUserBlockingCollaborators"]
      122 SETTABLEKS                       R5 R4 K18 ["ShowEditorBlockingBanner"]
      124 NAMECALL                         R2 R0 K15 ["setState"]
      126 CALL                             R2 2 0
      127 GETUPVAL                         R2 5
      128 GETTABLEKS                       R2 R2 K20 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      130 JUMPIFNOT                        R2 ; [+18]
      131 GETTABLEKS                       R2 R0 K1 ["props"]
      133 GETTABLEKS                       R2 R2 K21 ["OwnerIsNotAgeVerified"]
      135 GETTABLEKS                       R3 R1 K21 ["OwnerIsNotAgeVerified"]
      137 JUMPIFEQ                         R2 R3 ; [+11]
      139 DUPTABLE                         R4 K23 [{"ShowOwnerNotAgeVerifiedBanner"}]
      140 GETTABLEKS                       R5 R0 K1 ["props"]
      142 GETTABLEKS                       R5 R5 K21 ["OwnerIsNotAgeVerified"]
      144 SETTABLEKS                       R5 R4 K22 ["ShowOwnerNotAgeVerifiedBanner"]
      146 NAMECALL                         R2 R0 K15 ["setState"]
      148 CALL                             R2 2 0
      149 RETURN                           R0 0

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
        1 GETTABLEKS                       R0 R0 K0 ["launchCreatorHubUniverseSafetyView"]
        3 GETIMPORT                        R1 K2 [game]
        5 GETTABLEKS                       R1 R1 K3 ["GameId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

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
        1 GETTABLEKS                       R0 R0 K0 ["launchCreatorHubUniverseSafetyView"]
        3 GETIMPORT                        R1 K2 [game]
        5 GETTABLEKS                       R1 R1 K3 ["GameId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

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
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 2
        7 JUMPIF                           R1 ; [+10]
        8 GETIMPORT                        R3 K3 [warn]
       10 LOADK                            R5 K4 ["OpenUrl failed: "]
       11 FASTCALL1                        TOSTRING R2 ; [+3]
       12 MOVE                             R7 R2
       13 GETIMPORT                        R6 K6 [tostring]
       15 CALL                             R6 1 1
       16 CONCAT                           R4 R5 R6
       17 CALL                             R3 1 0
       18 RETURN                           R0 0

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
        1 DUPTABLE                         R2 K1 [{"upsellDialogEnabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["upsellDialogEnabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onSavePressed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onCancelPressed"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_44:
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
       26 GETTABLEKS                       R8 R8 K9 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
       28 JUMPIFNOT                        R8 ; [+4]
       29 GETTABLEKS                       R8 R0 K7 ["state"]
       31 GETTABLEKS                       R8 R8 K10 ["ShowOutsideAgeBucketBanner"]
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R9 R9 K11 ["fflagManageCollaboratorsEditorBlockingBanner"]
       36 JUMPIFNOT                        R9 ; [+4]
       37 GETTABLEKS                       R9 R0 K7 ["state"]
       39 GETTABLEKS                       R9 R9 K12 ["ShowEditorBlockingBanner"]
       41 GETUPVAL                         R10 1
       42 GETTABLEKS                       R10 R10 K13 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
       44 JUMPIFNOT                        R10 ; [+4]
       45 GETTABLEKS                       R10 R0 K7 ["state"]
       47 GETTABLEKS                       R10 R10 K14 ["ShowOwnerNotAgeVerifiedBanner"]
       49 GETTABLEKS                       R11 R0 K7 ["state"]
       51 GETTABLEKS                       R11 R11 K15 ["ShowTrustedConnectionsBanner"]
       53 GETUPVAL                         R13 1
       54 GETTABLEKS                       R13 R13 K16 ["fflagUpsellCollabTrustedConnectionShowUpsellDialog"]
       56 JUMPIFNOT                        R13 ; [+5]
       57 GETTABLEKS                       R12 R0 K7 ["state"]
       59 GETTABLEKS                       R12 R12 K17 ["ShowTrustedConnectionsOption"]
       61 JUMP                             ; [+1]
       62 LOADB                            R12 0
       63 GETUPVAL                         R13 1
       64 GETTABLEKS                       R13 R13 K18 ["fflagUpsellMCCollabReverification"]
       66 JUMPIFNOT                        R13 ; [+4]
       67 GETTABLEKS                       R13 R0 K7 ["state"]
       69 GETTABLEKS                       R13 R13 K19 ["ShowReverificationBanner"]
       71 GETTABLEKS                       R14 R1 K20 ["HasCurrentEditCollaborators"]
       73 GETUPVAL                         R16 2
       74 JUMPIFNOT                        R16 ; [+3]
       75 GETTABLEKS                       R15 R1 K21 ["SendAllSearchItemLogs"]
       77 JUMP                             ; [+1]
       78 LOADNIL                          R15
       79 GETUPVAL                         R16 3
       80 GETTABLEKS                       R16 R16 K22 ["Saved"]
       82 JUMPIFNOTEQ                      R4 R16 ; [+5]
       84 GETTABLEKS                       R16 R1 K23 ["CloseWidget"]
       86 CALL                             R16 0 0
       87 RETURN                           R0 0
       88 GETUPVAL                         R17 4
       89 GETTABLEKS                       R17 R17 K24 ["Loaded"]
       91 JUMPIFEQ                         R5 R17 ; [+2]
       93 LOADB                            R16 0 +1
       94 LOADB                            R16 1
       95 GETUPVAL                         R17 5
       96 JUMPIFNOT                        R17 ; [+6]
       97 JUMPIFNOT                        R16 ; [+5]
       98 GETTABLEKS                       R17 R1 K25 ["PrefetchLikelyCollaborators"]
      100 GETTABLEKS                       R18 R1 K26 ["Is17PlusGame"]
      102 CALL                             R17 1 0
      103 LOADB                            R17 0
      104 LOADNIL                          R18
      105 GETUPVAL                         R19 4
      106 GETTABLEKS                       R19 R19 K27 ["Unloaded"]
      108 JUMPIFNOTEQ                      R5 R19 ; [+4]
      110 GETTABLEKS                       R19 R1 K28 ["LoadPermissions"]
      112 CALL                             R19 0 0
      113 GETUPVAL                         R19 4
      114 GETTABLEKS                       R19 R19 K29 ["LoadFailed"]
      116 JUMPIFEQ                         R5 R19 ; [+6]
      118 GETUPVAL                         R19 3
      119 GETTABLEKS                       R19 R19 K30 ["SaveFailed"]
      121 JUMPIFNOTEQ                      R4 R19 ; [+20]
      123 LOADB                            R17 1
      124 GETUPVAL                         R19 4
      125 GETTABLEKS                       R19 R19 K29 ["LoadFailed"]
      127 JUMPIFNOTEQ                      R5 R19 ; [+8]
      129 LOADK                            R21 K31 ["FailureMessage"]
      130 LOADK                            R22 K32 ["LoadFailure"]
      131 NAMECALL                         R19 R3 K33 ["getText"]
      133 CALL                             R19 3 1
      134 MOVE                             R18 R19
      135 JUMP                             ; [+6]
      136 LOADK                            R21 K31 ["FailureMessage"]
      137 LOADK                            R22 K34 ["SaveFailure"]
      138 NAMECALL                         R19 R3 K33 ["getText"]
      140 CALL                             R19 3 1
      141 MOVE                             R18 R19
      142 NAMECALL                         R19 R0 K35 ["isLoggedInUserGameOwner"]
      144 CALL                             R19 1 1
      145 MOVE                             R20 R16
      146 JUMPIFNOT                        R20 ; [+1]
      147 NOT                              R20 R17
      148 GETUPVAL                         R21 6
      149 CALL                             R21 0 1
      150 MOVE                             R22 R20
      151 JUMPIFNOT                        R22 ; [+3]
      152 NOT                              R22 R21
      153 JUMPIFNOT                        R22 ; [+1]
      154 OR                               R22 R6 R14
      155 JUMPIFNOT                        R14 ; [+2]
      156 LOADK                            R23 K36 ["SaveEnableTcCurrentEditors"]
      157 JUMP                             ; [+1]
      158 LOADK                            R23 K37 ["SaveEnableTC"]
      159 LOADK                            R26 K38 ["Description"]
      160 MOVE                             R27 R23
      161 NAMECALL                         R24 R3 K33 ["getText"]
      163 CALL                             R24 3 1
      164 GETTABLEKS                       R25 R2 K39 ["header"]
      166 GETTABLEKS                       R25 R25 K40 ["height"]
      168 GETTABLEKS                       R26 R2 K41 ["footer"]
      170 GETTABLEKS                       R26 R26 K40 ["height"]
      172 JUMPIFNOT                        R22 ; [+5]
      173 GETTABLEKS                       R27 R2 K42 ["saveMessage"]
      175 GETTABLEKS                       R27 R27 K43 ["boxHeight"]
      177 ADD                              R26 R26 R27
      178 GETUPVAL                         R27 7
      179 JUMPIFNOT                        R27 ; [+1]
      180 ADD                              R26 R26 R25
      181 GETUPVAL                         R27 8
      182 GETTABLEKS                       R27 R27 K44 ["new"]
      184 CALL                             R27 0 1
      185 GETUPVAL                         R28 8
      186 GETTABLEKS                       R28 R28 K44 ["new"]
      188 CALL                             R28 0 1
      189 GETUPVAL                         R30 9
      190 JUMPIFNOT                        R30 ; [+5]
      191 GETUPVAL                         R29 8
      192 GETTABLEKS                       R29 R29 K44 ["new"]
      194 CALL                             R29 0 1
      195 JUMP                             ; [+1]
      196 LOADNIL                          R29
      197 GETUPVAL                         R30 9
      198 JUMPIFNOT                        R30 ; [+8]
      199 MOVE                             R30 R7
      200 JUMPIF                           R30 ; [+6]
      201 MOVE                             R30 R11
      202 JUMPIF                           R30 ; [+4]
      203 GETUPVAL                         R31 1
      204 GETTABLEKS                       R31 R31 K18 ["fflagUpsellMCCollabReverification"]
      206 AND                              R30 R31 R13
      207 LOADK                            R33 K45 ["UpsellBanner"]
      208 LOADK                            R34 K46 ["RecheckAge"]
      209 NAMECALL                         R31 R3 K33 ["getText"]
      211 CALL                             R31 3 1
      212 LOADK                            R34 K45 ["UpsellBanner"]
      213 LOADK                            R35 K47 ["AgeCheckNotValid"]
      214 NAMECALL                         R32 R3 K33 ["getText"]
      216 CALL                             R32 3 1
      217 LOADK                            R35 K48 ["Buttons"]
      218 LOADK                            R36 K49 ["Continue"]
      219 NAMECALL                         R33 R3 K33 ["getText"]
      221 CALL                             R33 3 1
      222 GETUPVAL                         R34 10
      223 GETTABLEKS                       R34 R34 K50 ["createElement"]
      225 LOADK                            R35 K51 ["Frame"]
      226 DUPTABLE                         R36 K54 [{"Size", "BackgroundColor3"}]
      227 GETIMPORT                        R37 K56 [UDim2.new]
      229 LOADN                            R38 1
      230 LOADN                            R39 0
      231 LOADN                            R40 1
      232 LOADN                            R41 0
      233 CALL                             R37 4 1
      234 SETTABLEKS                       R37 R36 K52 ["Size"]
      236 GETTABLEKS                       R37 R2 K57 ["backgroundColor"]
      238 SETTABLEKS                       R37 R36 K53 ["BackgroundColor3"]
      240 DUPTABLE                         R37 K74 [{"Layout", "HeaderContent", "Spacer", "UpsellBanner", "TrustedConnectionsBanner", "ReverificationBanner", "OutsideAgeBucketBanner", "EditorBlockingBanner", "OwnerNotAgeVerifiedBanner", "CollaborationSubtitleTitleView", "ScrollingFrameNew", "ScrollingFrame", "TextFrame", "upsellDialog", "FooterContent", "LoadingIndicator", "FailureText"}]
      241 MOVE                             R38 R20
      242 JUMPIFNOT                        R38 ; [+28]
      243 GETUPVAL                         R38 10
      244 GETTABLEKS                       R38 R38 K50 ["createElement"]
      246 LOADK                            R39 K75 ["UIListLayout"]
      247 DUPTABLE                         R40 K80 [{"FillDirection", "SortOrder", "HorizontalAlignment", "Padding"}]
      248 GETIMPORT                        R41 K83 [Enum.FillDirection.Vertical]
      250 SETTABLEKS                       R41 R40 K76 ["FillDirection"]
      252 GETIMPORT                        R41 K85 [Enum.SortOrder.LayoutOrder]
      254 SETTABLEKS                       R41 R40 K77 ["SortOrder"]
      256 GETIMPORT                        R41 K87 [Enum.HorizontalAlignment.Center]
      258 SETTABLEKS                       R41 R40 K78 ["HorizontalAlignment"]
      260 GETIMPORT                        R41 K89 [UDim.new]
      262 LOADN                            R42 0
      263 GETTABLEKS                       R43 R2 K90 ["permissionsView"]
      265 GETTABLEKS                       R43 R43 K79 ["Padding"]
      267 CALL                             R41 2 1
      268 SETTABLEKS                       R41 R40 K79 ["Padding"]
      270 CALL                             R38 2 1
      271 SETTABLEKS                       R38 R37 K58 ["Layout"]
      273 GETUPVAL                         R39 1
      274 GETTABLEKS                       R39 R39 K91 ["fflagRemoveHeaderWithUpsellBanner2"]
      276 NOT                              R38 R39
      277 JUMPIFNOT                        R38 ; [+74]
      278 NOT                              R38 R30
      279 JUMPIFNOT                        R38 ; [+72]
      280 GETUPVAL                         R38 7
      281 JUMPIFNOT                        R38 ; [+70]
      282 MOVE                             R38 R20
      283 JUMPIFNOT                        R38 ; [+68]
      284 GETUPVAL                         R38 10
      285 GETTABLEKS                       R38 R38 K50 ["createElement"]
      287 GETUPVAL                         R39 11
      288 DUPTABLE                         R40 K92 [{"LayoutOrder", "Size"}]
      289 NAMECALL                         R41 R27 K93 ["getNextOrder"]
      291 CALL                             R41 1 1
      292 SETTABLEKS                       R41 R40 K84 ["LayoutOrder"]
      294 GETIMPORT                        R41 K56 [UDim2.new]
      296 LOADN                            R42 1
      297 LOADN                            R43 0
      298 LOADN                            R44 0
      299 GETTABLEKS                       R45 R2 K39 ["header"]
      301 GETTABLEKS                       R45 R45 K40 ["height"]
      303 CALL                             R41 4 1
      304 SETTABLEKS                       R41 R40 K52 ["Size"]
      306 DUPTABLE                         R41 K95 [{"Header"}]
      307 GETUPVAL                         R42 12
      308 GETTABLEKS                       R42 R42 K50 ["createElement"]
      310 GETUPVAL                         R43 13
      311 DUPTABLE                         R44 K103 [{"Stylizer", "Localization", "IsTeamCreateEnabled", "HasUnsavedChanges", "HasCollaborators", "Plugin", "SaveThenTurnOnTeamCreate", "TurnOnTeamCreate", "Links", "FetchLink"}]
      312 SETTABLEKS                       R2 R44 K2 ["Stylizer"]
      314 SETTABLEKS                       R3 R44 K3 ["Localization"]
      316 SETTABLEKS                       R21 R44 K96 ["IsTeamCreateEnabled"]
      318 GETTABLEKS                       R45 R1 K97 ["HasUnsavedChanges"]
      320 SETTABLEKS                       R45 R44 K97 ["HasUnsavedChanges"]
      322 GETTABLEKS                       R45 R1 K6 ["HasCollaborators"]
      324 SETTABLEKS                       R45 R44 K6 ["HasCollaborators"]
      326 GETTABLEKS                       R45 R1 K98 ["Plugin"]
      328 SETTABLEKS                       R45 R44 K98 ["Plugin"]
      330 NEWCLOSURE                       R45 P0
      331 CAPTURE                          VAL R0
      332 SETTABLEKS                       R45 R44 K99 ["SaveThenTurnOnTeamCreate"]
      334 NEWCLOSURE                       R45 P1
      335 CAPTURE                          UPVAL U2
      336 CAPTURE                          VAL R15
      337 CAPTURE                          UPVAL U14
      338 SETTABLEKS                       R45 R44 K100 ["TurnOnTeamCreate"]
      340 GETTABLEKS                       R45 R1 K101 ["Links"]
      342 SETTABLEKS                       R45 R44 K101 ["Links"]
      344 GETTABLEKS                       R45 R1 K102 ["FetchLink"]
      346 SETTABLEKS                       R45 R44 K102 ["FetchLink"]
      348 CALL                             R42 2 1
      349 SETTABLEKS                       R42 R41 K94 ["Header"]
      351 CALL                             R38 3 1
      352 SETTABLEKS                       R38 R37 K59 ["HeaderContent"]
      354 GETUPVAL                         R38 1
      355 GETTABLEKS                       R38 R38 K91 ["fflagRemoveHeaderWithUpsellBanner2"]
      357 JUMPIFNOT                        R38 ; [+31]
      358 MOVE                             R38 R30
      359 JUMPIFNOT                        R38 ; [+29]
      360 GETUPVAL                         R39 1
      361 GETTABLEKS                       R39 R39 K9 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      363 JUMPIF                           R39 ; [+3]
      364 GETUPVAL                         R39 1
      365 GETTABLEKS                       R39 R39 K11 ["fflagManageCollaboratorsEditorBlockingBanner"]
      367 NOT                              R38 R39
      368 JUMPIFNOT                        R38 ; [+20]
      369 GETUPVAL                         R38 12
      370 GETTABLEKS                       R38 R38 K50 ["createElement"]
      372 GETUPVAL                         R39 15
      373 DUPTABLE                         R40 K92 [{"LayoutOrder", "Size"}]
      374 NAMECALL                         R41 R27 K93 ["getNextOrder"]
      376 CALL                             R41 1 1
      377 SETTABLEKS                       R41 R40 K84 ["LayoutOrder"]
      379 GETIMPORT                        R41 K56 [UDim2.new]
      381 LOADN                            R42 1
      382 LOADN                            R43 0
      383 LOADN                            R44 0
      384 LOADN                            R45 10
      385 CALL                             R41 4 1
      386 SETTABLEKS                       R41 R40 K52 ["Size"]
      388 CALL                             R38 2 1
      389 SETTABLEKS                       R38 R37 K60 ["Spacer"]
      391 GETUPVAL                         R38 9
      392 JUMPIFNOT                        R38 ; [+160]
      393 MOVE                             R38 R7
      394 JUMPIFNOT                        R38 ; [+158]
      395 GETUPVAL                         R39 1
      396 GETTABLEKS                       R39 R39 K13 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      398 NOT                              R38 R39
      399 JUMPIFNOT                        R38 ; [+153]
      400 GETUPVAL                         R38 10
      401 GETTABLEKS                       R38 R38 K50 ["createElement"]
      403 GETUPVAL                         R39 15
      404 DUPTABLE                         R40 K106 [{"LayoutOrder", "Size", "tag", "onActivated"}]
      405 NAMECALL                         R41 R27 K93 ["getNextOrder"]
      407 CALL                             R41 1 1
      408 SETTABLEKS                       R41 R40 K84 ["LayoutOrder"]
      410 GETIMPORT                        R41 K56 [UDim2.new]
      412 LOADN                            R42 0
      413 LOADN                            R43 2
      414 LOADN                            R44 0
      415 LOADN                            R45 50
      416 CALL                             R41 4 1
      417 SETTABLEKS                       R41 R40 K52 ["Size"]
      419 LOADK                            R41 K107 ["auto-xy stroke-system-emphasis bg-over-media-300 radius-small padding-left-large"]
      420 SETTABLEKS                       R41 R40 K104 ["tag"]
      422 GETTABLEKS                       R41 R0 K108 ["launchFAEPlusVPC"]
      424 SETTABLEKS                       R41 R40 K105 ["onActivated"]
      426 NEWTABLE                         R41 4 1
      428 MOVE                             R43 R20
      429 JUMPIFNOT                        R43 ; [+28]
      430 GETUPVAL                         R43 10
      431 GETTABLEKS                       R43 R43 K50 ["createElement"]
      433 LOADK                            R44 K75 ["UIListLayout"]
      434 DUPTABLE                         R45 K110 [{"FillDirection", "VerticalAlignment", "SortOrder", "Padding"}]
      435 GETIMPORT                        R46 K112 [Enum.FillDirection.Horizontal]
      437 SETTABLEKS                       R46 R45 K76 ["FillDirection"]
      439 GETIMPORT                        R46 K113 [Enum.VerticalAlignment.Center]
      441 SETTABLEKS                       R46 R45 K109 ["VerticalAlignment"]
      443 GETIMPORT                        R46 K85 [Enum.SortOrder.LayoutOrder]
      445 SETTABLEKS                       R46 R45 K77 ["SortOrder"]
      447 GETIMPORT                        R46 K89 [UDim.new]
      449 LOADN                            R47 0
      450 GETTABLEKS                       R48 R2 K90 ["permissionsView"]
      452 GETTABLEKS                       R48 R48 K79 ["Padding"]
      454 CALL                             R46 2 1
      455 SETTABLEKS                       R46 R45 K79 ["Padding"]
      457 CALL                             R43 2 1
      458 SETTABLEKS                       R43 R41 K114 ["UpsellLayout"]
      460 GETUPVAL                         R42 12
      461 GETTABLEKS                       R42 R42 K50 ["createElement"]
      463 GETUPVAL                         R43 16
      464 DUPTABLE                         R44 K119 [{"name", "style", "LayoutOrder", "size", "variant"}]
      465 GETUPVAL                         R45 17
      466 GETTABLEKS                       R45 R45 K120 ["IconName"]
      468 GETTABLEKS                       R45 R45 K121 ["TriangleExclamation"]
      470 SETTABLEKS                       R45 R44 K115 ["name"]
      472 DUPTABLE                         R45 K124 [{"Color3", "Transparency"}]
      473 GETIMPORT                        R46 K126 [Color3.fromRGB]
      475 LOADN                            R47 51
      476 LOADN                            R48 95
      477 LOADN                            R49 255
      478 CALL                             R46 3 1
      479 SETTABLEKS                       R46 R45 K122 ["Color3"]
      481 LOADN                            R46 0
      482 SETTABLEKS                       R46 R45 K123 ["Transparency"]
      484 SETTABLEKS                       R45 R44 K116 ["style"]
      486 NAMECALL                         R45 R29 K93 ["getNextOrder"]
      488 CALL                             R45 1 1
      489 SETTABLEKS                       R45 R44 K84 ["LayoutOrder"]
      491 GETUPVAL                         R45 17
      492 GETTABLEKS                       R45 R45 K127 ["IconSize"]
      494 GETTABLEKS                       R45 R45 K128 ["Large"]
      496 SETTABLEKS                       R45 R44 K117 ["size"]
      498 GETUPVAL                         R45 18
      499 GETTABLEKS                       R45 R45 K129 ["Filled"]
      501 SETTABLEKS                       R45 R44 K118 ["variant"]
      503 CALL                             R42 2 1
      504 SETLIST                          R41 R42 1 [1]
      506 GETUPVAL                         R43 10
      507 GETTABLEKS                       R43 R43 K50 ["createElement"]
      509 GETUPVAL                         R44 19
      510 DUPTABLE                         R45 K131 [{"tag", "LayoutOrder", "Text"}]
      511 LOADK                            R46 K132 ["auto-y text-align-y-center text-align-x-left text-title-medium padding-left-large fill"]
      512 SETTABLEKS                       R46 R45 K104 ["tag"]
      514 NAMECALL                         R46 R29 K93 ["getNextOrder"]
      516 CALL                             R46 1 1
      517 SETTABLEKS                       R46 R45 K84 ["LayoutOrder"]
      519 LOADK                            R48 K45 ["UpsellBanner"]
      520 LOADK                            R49 K133 ["description"]
      521 NAMECALL                         R46 R3 K33 ["getText"]
      523 CALL                             R46 3 1
      524 SETTABLEKS                       R46 R45 K130 ["Text"]
      526 CALL                             R43 2 1
      527 SETTABLEKS                       R43 R41 K134 ["WarningText"]
      529 GETUPVAL                         R43 10
      530 GETTABLEKS                       R43 R43 K50 ["createElement"]
      532 GETUPVAL                         R44 19
      533 DUPTABLE                         R45 K131 [{"tag", "LayoutOrder", "Text"}]
      534 LOADK                            R46 K135 ["text-align-y-center text-align-x-center text-label-medium padding-right-large auto-xy"]
      535 SETTABLEKS                       R46 R45 K104 ["tag"]
      537 NAMECALL                         R46 R29 K93 ["getNextOrder"]
      539 CALL                             R46 1 1
      540 SETTABLEKS                       R46 R45 K84 ["LayoutOrder"]
      542 LOADK                            R48 K45 ["UpsellBanner"]
      543 LOADK                            R49 K136 ["CTA"]
      544 NAMECALL                         R46 R3 K33 ["getText"]
      546 CALL                             R46 3 1
      547 SETTABLEKS                       R46 R45 K130 ["Text"]
      549 CALL                             R43 2 1
      550 SETTABLEKS                       R43 R41 K137 ["GetStarted"]
      552 CALL                             R38 3 1
      553 SETTABLEKS                       R38 R37 K45 ["UpsellBanner"]
      555 GETUPVAL                         R38 0
      556 JUMPIFNOT                        R38 ; [+79]
      557 GETUPVAL                         R39 1
      558 GETTABLEKS                       R39 R39 K9 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      560 NOT                              R38 R39
      561 JUMPIFNOT                        R38 ; [+74]
      562 GETUPVAL                         R39 1
      563 GETTABLEKS                       R39 R39 K13 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      565 NOT                              R38 R39
      566 JUMPIFNOT                        R38 ; [+69]
      567 MOVE                             R38 R11
      568 JUMPIFNOT                        R38 ; [+67]
      569 GETUPVAL                         R38 12
      570 GETTABLEKS                       R38 R38 K50 ["createElement"]
      572 GETUPVAL                         R39 15
      573 DUPTABLE                         R40 K138 [{"tag"}]
      574 LOADK                            R41 K139 ["padding-x-large padding-top-large size-full-0 auto-y"]
      575 SETTABLEKS                       R41 R40 K104 ["tag"]
      577 GETUPVAL                         R41 12
      578 GETTABLEKS                       R41 R41 K50 ["createElement"]
      580 GETUPVAL                         R42 20
      581 DUPTABLE                         R43 K144 [{"variant", "severity", "title", "actions", "onClose"}]
      582 GETUPVAL                         R44 21
      583 GETTABLEKS                       R44 R44 K145 ["Standard"]
      585 SETTABLEKS                       R44 R43 K118 ["variant"]
      587 GETUPVAL                         R44 22
      588 GETTABLEKS                       R44 R44 K146 ["Info"]
      590 SETTABLEKS                       R44 R43 K140 ["severity"]
      592 LOADK                            R46 K45 ["UpsellBanner"]
      593 LOADK                            R47 K147 ["nextStepDescription"]
      594 NAMECALL                         R44 R3 K33 ["getText"]
      596 CALL                             R44 3 1
      597 SETTABLEKS                       R44 R43 K141 ["title"]
      599 NEWTABLE                         R44 0 1
      601 DUPTABLE                         R45 K149 [{"text", "variant", "onActivated"}]
      602 LOADK                            R48 K45 ["UpsellBanner"]
      603 LOADK                            R49 K136 ["CTA"]
      604 NAMECALL                         R46 R3 K33 ["getText"]
      606 CALL                             R46 3 1
      607 SETTABLEKS                       R46 R45 K148 ["text"]
      609 GETUPVAL                         R46 23
      610 GETTABLEKS                       R46 R46 K145 ["Standard"]
      612 SETTABLEKS                       R46 R45 K118 ["variant"]
      614 GETUPVAL                         R47 1
      615 GETTABLEKS                       R47 R47 K16 ["fflagUpsellCollabTrustedConnectionShowUpsellDialog"]
      617 JUMPIFNOT                        R47 ; [+4]
      618 JUMPIFNOT                        R12 ; [+3]
      619 GETTABLEKS                       R46 R0 K150 ["launchModal"]
      621 JUMP                             ; [+2]
      622 GETTABLEKS                       R46 R0 K151 ["launchCreatorHub"]
      624 SETTABLEKS                       R46 R45 K105 ["onActivated"]
      626 SETLIST                          R44 R45 1 [1]
      628 SETTABLEKS                       R44 R43 K142 ["actions"]
      630 NEWCLOSURE                       R44 P2
      631 CAPTURE                          VAL R0
      632 SETTABLEKS                       R44 R43 K143 ["onClose"]
      634 CALL                             R41 2 -1
      635 CALL                             R38 -1 1
      636 SETTABLEKS                       R38 R37 K61 ["TrustedConnectionsBanner"]
      638 GETUPVAL                         R38 1
      639 GETTABLEKS                       R38 R38 K18 ["fflagUpsellMCCollabReverification"]
      641 JUMPIFNOT                        R38 ; [+174]
      642 MOVE                             R38 R13
      643 JUMPIFNOT                        R38 ; [+172]
      644 GETUPVAL                         R38 12
      645 GETTABLEKS                       R38 R38 K50 ["createElement"]
      647 GETUPVAL                         R39 15
      648 DUPTABLE                         R40 K106 [{"LayoutOrder", "Size", "tag", "onActivated"}]
      649 NAMECALL                         R41 R27 K93 ["getNextOrder"]
      651 CALL                             R41 1 1
      652 SETTABLEKS                       R41 R40 K84 ["LayoutOrder"]
      654 GETIMPORT                        R41 K56 [UDim2.new]
      656 LOADN                            R42 0
      657 LOADN                            R43 2
      658 LOADN                            R44 0
      659 LOADN                            R45 50
      660 CALL                             R41 4 1
      661 SETTABLEKS                       R41 R40 K52 ["Size"]
      663 LOADK                            R41 K152 ["row gap-medium align-y-center stroke-system-emphasis bg-over-media-300 radius-small padding-left-large padding-right-medium"]
      664 SETTABLEKS                       R41 R40 K104 ["tag"]
      666 DUPCLOSURE                       R41 K153 [PROTO_33]
      667 CAPTURE                          UPVAL U9
      668 CAPTURE                          UPVAL U24
      669 CAPTURE                          UPVAL U25
      670 CAPTURE                          UPVAL U26
      671 CAPTURE                          UPVAL U27
      672 CAPTURE                          UPVAL U28
      673 SETTABLEKS                       R41 R40 K105 ["onActivated"]
      675 DUPTABLE                         R41 K156 [{"Icon", "WarningText", "CloseButton"}]
      676 GETUPVAL                         R42 12
      677 GETTABLEKS                       R42 R42 K50 ["createElement"]
      679 GETUPVAL                         R43 15
      680 DUPTABLE                         R44 K157 [{"LayoutOrder", "tag"}]
      681 NAMECALL                         R45 R29 K93 ["getNextOrder"]
      683 CALL                             R45 1 1
      684 SETTABLEKS                       R45 R44 K84 ["LayoutOrder"]
      686 LOADK                            R45 K158 ["auto-xy size-600-600"]
      687 SETTABLEKS                       R45 R44 K104 ["tag"]
      689 DUPTABLE                         R45 K160 [{"BackgroundCircle", "Icon"}]
      690 GETUPVAL                         R46 12
      691 GETTABLEKS                       R46 R46 K50 ["createElement"]
      693 GETUPVAL                         R47 15
      694 DUPTABLE                         R48 K162 [{"tag", "backgroundStyle"}]
      695 LOADK                            R49 K163 ["anchor-center-center position-center-center radius-circle size-500-500"]
      696 SETTABLEKS                       R49 R48 K104 ["tag"]
      698 DUPTABLE                         R49 K164 [{"Color3"}]
      699 GETIMPORT                        R50 K166 [Color3.fromHex]
      701 LOADK                            R51 K167 ["#FFFFFF"]
      702 CALL                             R50 1 1
      703 SETTABLEKS                       R50 R49 K122 ["Color3"]
      705 SETTABLEKS                       R49 R48 K161 ["backgroundStyle"]
      707 CALL                             R46 2 1
      708 SETTABLEKS                       R46 R45 K159 ["BackgroundCircle"]
      710 GETUPVAL                         R46 12
      711 GETTABLEKS                       R46 R46 K50 ["createElement"]
      713 GETUPVAL                         R47 16
      714 DUPTABLE                         R48 K168 [{"name", "style", "tag", "size", "variant"}]
      715 GETUPVAL                         R49 17
      716 GETTABLEKS                       R49 R49 K120 ["IconName"]
      718 GETTABLEKS                       R49 R49 K169 ["CircleI"]
      720 SETTABLEKS                       R49 R48 K115 ["name"]
      722 DUPTABLE                         R49 K124 [{"Color3", "Transparency"}]
      723 GETIMPORT                        R50 K126 [Color3.fromRGB]
      725 LOADN                            R51 51
      726 LOADN                            R52 95
      727 LOADN                            R53 255
      728 CALL                             R50 3 1
      729 SETTABLEKS                       R50 R49 K122 ["Color3"]
      731 LOADN                            R50 0
      732 SETTABLEKS                       R50 R49 K123 ["Transparency"]
      734 SETTABLEKS                       R49 R48 K116 ["style"]
      736 LOADK                            R49 K170 ["align-x-center align-y-center"]
      737 SETTABLEKS                       R49 R48 K104 ["tag"]
      739 GETUPVAL                         R49 17
      740 GETTABLEKS                       R49 R49 K127 ["IconSize"]
      742 GETTABLEKS                       R49 R49 K128 ["Large"]
      744 SETTABLEKS                       R49 R48 K117 ["size"]
      746 GETUPVAL                         R49 18
      747 GETTABLEKS                       R49 R49 K129 ["Filled"]
      749 SETTABLEKS                       R49 R48 K118 ["variant"]
      751 CALL                             R46 2 1
      752 SETTABLEKS                       R46 R45 K154 ["Icon"]
      754 CALL                             R42 3 1
      755 SETTABLEKS                       R42 R41 K154 ["Icon"]
      757 GETUPVAL                         R42 10
      758 GETTABLEKS                       R42 R42 K50 ["createElement"]
      760 GETUPVAL                         R43 19
      761 DUPTABLE                         R44 K172 [{"tag", "LayoutOrder", "Text", "RichText"}]
      762 LOADK                            R45 K173 ["text-align-y-center text-align-x-left text-body-medium fill"]
      763 SETTABLEKS                       R45 R44 K104 ["tag"]
      765 NAMECALL                         R45 R29 K93 ["getNextOrder"]
      767 CALL                             R45 1 1
      768 SETTABLEKS                       R45 R44 K84 ["LayoutOrder"]
      770 LOADK                            R46 K174 ["<b>%*</b> %* • %*"]
      771 MOVE                             R48 R31
      772 MOVE                             R49 R32
      773 MOVE                             R50 R33
      774 NAMECALL                         R46 R46 K175 ["format"]
      776 CALL                             R46 4 1
      777 MOVE                             R45 R46
      778 SETTABLEKS                       R45 R44 K130 ["Text"]
      780 LOADB                            R45 1
      781 SETTABLEKS                       R45 R44 K171 ["RichText"]
      783 CALL                             R42 2 1
      784 SETTABLEKS                       R42 R41 K134 ["WarningText"]
      786 GETUPVAL                         R42 12
      787 GETTABLEKS                       R42 R42 K50 ["createElement"]
      789 GETUPVAL                         R43 29
      790 DUPTABLE                         R44 K177 [{"LayoutOrder", "icon", "size", "onActivated"}]
      791 NAMECALL                         R45 R29 K93 ["getNextOrder"]
      793 CALL                             R45 1 1
      794 SETTABLEKS                       R45 R44 K84 ["LayoutOrder"]
      796 LOADK                            R45 K178 ["icons/navigation/close"]
      797 SETTABLEKS                       R45 R44 K176 ["icon"]
      799 GETUPVAL                         R45 30
      800 GETTABLEKS                       R45 R45 K179 ["Enums"]
      802 GETTABLEKS                       R45 R45 K127 ["IconSize"]
      804 GETTABLEKS                       R45 R45 K180 ["Small"]
      806 SETTABLEKS                       R45 R44 K117 ["size"]
      808 NEWCLOSURE                       R45 P4
      809 CAPTURE                          VAL R0
      810 SETTABLEKS                       R45 R44 K105 ["onActivated"]
      812 CALL                             R42 2 1
      813 SETTABLEKS                       R42 R41 K155 ["CloseButton"]
      815 CALL                             R38 3 1
      816 SETTABLEKS                       R38 R37 K62 ["ReverificationBanner"]
      818 GETUPVAL                         R38 1
      819 GETTABLEKS                       R38 R38 K9 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
      821 JUMPIFNOT                        R38 ; [+58]
      822 MOVE                             R38 R19
      823 JUMPIFNOT                        R38 ; [+56]
      824 MOVE                             R38 R8
      825 JUMPIFNOT                        R38 ; [+54]
      826 GETUPVAL                         R38 12
      827 GETTABLEKS                       R38 R38 K50 ["createElement"]
      829 GETUPVAL                         R39 15
      830 DUPTABLE                         R40 K157 [{"LayoutOrder", "tag"}]
      831 NAMECALL                         R41 R27 K93 ["getNextOrder"]
      833 CALL                             R41 1 1
      834 SETTABLEKS                       R41 R40 K84 ["LayoutOrder"]
      836 LOADK                            R41 K181 ["padding-x-large margin-top-small size-full-0 auto-y"]
      837 SETTABLEKS                       R41 R40 K104 ["tag"]
      839 NEWTABLE                         R41 0 1
      841 GETUPVAL                         R42 12
      842 GETTABLEKS                       R42 R42 K50 ["createElement"]
      844 GETUPVAL                         R43 31
      845 DUPTABLE                         R44 K183 [{"severity", "title", "link", "onClose"}]
      846 GETUPVAL                         R45 22
      847 GETTABLEKS                       R45 R45 K184 ["Warning"]
      849 SETTABLEKS                       R45 R44 K140 ["severity"]
      851 LOADK                            R47 K185 ["FeedbackAlert"]
      852 LOADK                            R48 K186 ["OutsideAgeGroupWarning"]
      853 NAMECALL                         R45 R3 K33 ["getText"]
      855 CALL                             R45 3 1
      856 SETTABLEKS                       R45 R44 K141 ["title"]
      858 DUPTABLE                         R45 K187 [{"text", "onActivated"}]
      859 LOADK                            R48 K185 ["FeedbackAlert"]
      860 LOADK                            R49 K188 ["ViewDetails"]
      861 NAMECALL                         R46 R3 K33 ["getText"]
      863 CALL                             R46 3 1
      864 SETTABLEKS                       R46 R45 K148 ["text"]
      866 NEWCLOSURE                       R46 P5
      867 CAPTURE                          VAL R0
      868 SETTABLEKS                       R46 R45 K105 ["onActivated"]
      870 SETTABLEKS                       R45 R44 K182 ["link"]
      872 NEWCLOSURE                       R45 P6
      873 CAPTURE                          VAL R0
      874 SETTABLEKS                       R45 R44 K143 ["onClose"]
      876 CALL                             R42 2 -1
      877 SETLIST                          R41 R42 -1 [1]
      879 CALL                             R38 3 1
      880 SETTABLEKS                       R38 R37 K63 ["OutsideAgeBucketBanner"]
      882 GETUPVAL                         R38 1
      883 GETTABLEKS                       R38 R38 K11 ["fflagManageCollaboratorsEditorBlockingBanner"]
      885 JUMPIFNOT                        R38 ; [+58]
      886 NOT                              R38 R19
      887 JUMPIFNOT                        R38 ; [+56]
      888 MOVE                             R38 R9
      889 JUMPIFNOT                        R38 ; [+54]
      890 GETUPVAL                         R38 12
      891 GETTABLEKS                       R38 R38 K50 ["createElement"]
      893 GETUPVAL                         R39 15
      894 DUPTABLE                         R40 K157 [{"LayoutOrder", "tag"}]
      895 NAMECALL                         R41 R27 K93 ["getNextOrder"]
      897 CALL                             R41 1 1
      898 SETTABLEKS                       R41 R40 K84 ["LayoutOrder"]
      900 LOADK                            R41 K181 ["padding-x-large margin-top-small size-full-0 auto-y"]
      901 SETTABLEKS                       R41 R40 K104 ["tag"]
      903 NEWTABLE                         R41 0 1
      905 GETUPVAL                         R42 12
      906 GETTABLEKS                       R42 R42 K50 ["createElement"]
      908 GETUPVAL                         R43 31
      909 DUPTABLE                         R44 K183 [{"severity", "title", "link", "onClose"}]
      910 GETUPVAL                         R45 22
      911 GETTABLEKS                       R45 R45 K184 ["Warning"]
      913 SETTABLEKS                       R45 R44 K140 ["severity"]
      915 LOADK                            R47 K185 ["FeedbackAlert"]
      916 LOADK                            R48 K189 ["EditorBlockingWarning"]
      917 NAMECALL                         R45 R3 K33 ["getText"]
      919 CALL                             R45 3 1
      920 SETTABLEKS                       R45 R44 K141 ["title"]
      922 DUPTABLE                         R45 K187 [{"text", "onActivated"}]
      923 LOADK                            R48 K185 ["FeedbackAlert"]
      924 LOADK                            R49 K188 ["ViewDetails"]
      925 NAMECALL                         R46 R3 K33 ["getText"]
      927 CALL                             R46 3 1
      928 SETTABLEKS                       R46 R45 K148 ["text"]
      930 NEWCLOSURE                       R46 P7
      931 CAPTURE                          VAL R0
      932 SETTABLEKS                       R46 R45 K105 ["onActivated"]
      934 SETTABLEKS                       R45 R44 K182 ["link"]
      936 NEWCLOSURE                       R45 P8
      937 CAPTURE                          VAL R0
      938 SETTABLEKS                       R45 R44 K143 ["onClose"]
      940 CALL                             R42 2 -1
      941 SETLIST                          R41 R42 -1 [1]
      943 CALL                             R38 3 1
      944 SETTABLEKS                       R38 R37 K64 ["EditorBlockingBanner"]
      946 GETUPVAL                         R38 1
      947 GETTABLEKS                       R38 R38 K13 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      949 JUMPIFNOT                        R38 ; [+82]
      950 MOVE                             R38 R19
      951 JUMPIFNOT                        R38 ; [+80]
      952 MOVE                             R38 R10
      953 JUMPIFNOT                        R38 ; [+78]
      954 GETUPVAL                         R38 12
      955 GETTABLEKS                       R38 R38 K50 ["createElement"]
      957 GETUPVAL                         R39 15
      958 DUPTABLE                         R40 K157 [{"LayoutOrder", "tag"}]
      959 NAMECALL                         R41 R27 K93 ["getNextOrder"]
      961 CALL                             R41 1 1
      962 SETTABLEKS                       R41 R40 K84 ["LayoutOrder"]
      964 LOADK                            R41 K181 ["padding-x-large margin-top-small size-full-0 auto-y"]
      965 SETTABLEKS                       R41 R40 K104 ["tag"]
      967 NEWTABLE                         R41 0 1
      969 GETUPVAL                         R42 12
      970 GETTABLEKS                       R42 R42 K50 ["createElement"]
      972 GETUPVAL                         R43 31
      973 DUPTABLE                         R44 K191 [{"severity", "title", "subtitle", "link", "onClose"}]
      974 GETUPVAL                         R45 22
      975 GETTABLEKS                       R45 R45 K184 ["Warning"]
      977 SETTABLEKS                       R45 R44 K140 ["severity"]
      979 NAMECALL                         R46 R0 K192 ["isGroupGame"]
      981 CALL                             R46 1 1
      982 JUMPIFNOT                        R46 ; [+6]
      983 LOADK                            R47 K185 ["FeedbackAlert"]
      984 LOADK                            R48 K193 ["VerifyYourAge"]
      985 NAMECALL                         R45 R3 K33 ["getText"]
      987 CALL                             R45 3 1
      988 JUMP                             ; [+5]
      989 LOADK                            R47 K185 ["FeedbackAlert"]
      990 LOADK                            R48 K194 ["OwnerNotAgeVerifiedTitle"]
      991 NAMECALL                         R45 R3 K33 ["getText"]
      993 CALL                             R45 3 1
      994 SETTABLEKS                       R45 R44 K141 ["title"]
      996 NAMECALL                         R46 R0 K192 ["isGroupGame"]
      998 CALL                             R46 1 1
      999 JUMPIFNOT                        R46 ; [+6]
     1000 LOADK                            R47 K185 ["FeedbackAlert"]
     1001 LOADK                            R48 K195 ["OwnerNotAgeVerifiedSubtitle"]
     1002 NAMECALL                         R45 R3 K33 ["getText"]
     1004 CALL                             R45 3 1
     1005 JUMP                             ; [+1]
     1006 LOADNIL                          R45
     1007 SETTABLEKS                       R45 R44 K190 ["subtitle"]
     1009 DUPTABLE                         R45 K187 [{"text", "onActivated"}]
     1010 LOADK                            R48 K45 ["UpsellBanner"]
     1011 LOADK                            R49 K136 ["CTA"]
     1012 NAMECALL                         R46 R3 K33 ["getText"]
     1014 CALL                             R46 3 1
     1015 SETTABLEKS                       R46 R45 K148 ["text"]
     1017 DUPCLOSURE                       R46 K196 [PROTO_39]
     1018 CAPTURE                          UPVAL U27
     1019 CAPTURE                          UPVAL U28
     1020 SETTABLEKS                       R46 R45 K105 ["onActivated"]
     1022 SETTABLEKS                       R45 R44 K182 ["link"]
     1024 NEWCLOSURE                       R45 P10
     1025 CAPTURE                          VAL R0
     1026 SETTABLEKS                       R45 R44 K143 ["onClose"]
     1028 CALL                             R42 2 -1
     1029 SETLIST                          R41 R42 -1 [1]
     1031 CALL                             R38 3 1
     1032 SETTABLEKS                       R38 R37 K65 ["OwnerNotAgeVerifiedBanner"]
     1034 GETUPVAL                         R38 9
     1035 JUMPIFNOT                        R38 ; [+55]
     1036 GETUPVAL                         R39 6
     1037 CALL                             R39 0 1
     1038 JUMPIF                           R39 ; [+3]
     1039 GETUPVAL                         R39 0
     1040 NOT                              R38 R39
     1041 JUMPIFNOT                        R38 ; [+49]
     1042 GETUPVAL                         R38 10
     1043 GETTABLEKS                       R38 R38 K50 ["createElement"]
     1045 GETUPVAL                         R39 15
     1046 DUPTABLE                         R40 K197 [{"LayoutOrder", "Size", "tag"}]
     1047 NAMECALL                         R41 R27 K93 ["getNextOrder"]
     1049 CALL                             R41 1 1
     1050 SETTABLEKS                       R41 R40 K84 ["LayoutOrder"]
     1052 GETIMPORT                        R41 K56 [UDim2.new]
     1054 LOADN                            R42 0
     1055 LOADN                            R43 2
     1056 LOADN                            R44 0
     1057 LOADN                            R45 10
     1058 CALL                             R41 4 1
     1059 SETTABLEKS                       R41 R40 K52 ["Size"]
     1061 LOADK                            R41 K198 ["auto-xy padding-top-medium"]
     1062 SETTABLEKS                       R41 R40 K104 ["tag"]
     1064 DUPTABLE                         R41 K200 [{"CollaborationTitle"}]
     1065 GETUPVAL                         R42 32
     1066 JUMPIFNOT                        R42 ; [+21]
     1067 GETUPVAL                         R42 12
     1068 GETTABLEKS                       R42 R42 K50 ["createElement"]
     1070 GETUPVAL                         R43 19
     1071 DUPTABLE                         R44 K201 [{"LayoutOrder", "tag", "Text"}]
     1072 NAMECALL                         R45 R27 K93 ["getNextOrder"]
     1074 CALL                             R45 1 1
     1075 SETTABLEKS                       R45 R44 K84 ["LayoutOrder"]
     1077 LOADK                            R45 K202 ["auto-xy text-align-x-left text-label-small"]
     1078 SETTABLEKS                       R45 R44 K104 ["tag"]
     1080 LOADK                            R47 K203 ["Subtitle"]
     1081 LOADK                            R48 K204 ["SearchCollaborators"]
     1082 NAMECALL                         R45 R3 K33 ["getText"]
     1084 CALL                             R45 3 1
     1085 SETTABLEKS                       R45 R44 K130 ["Text"]
     1087 CALL                             R42 2 1
     1088 SETTABLEKS                       R42 R41 K199 ["CollaborationTitle"]
     1090 CALL                             R38 3 1
     1091 SETTABLEKS                       R38 R37 K66 ["CollaborationSubtitleTitleView"]
     1093 GETUPVAL                         R38 9
     1094 JUMPIFNOT                        R38 ; [+130]
     1095 MOVE                             R38 R20
     1096 JUMPIFNOT                        R38 ; [+128]
     1097 GETUPVAL                         R38 10
     1098 GETTABLEKS                       R38 R38 K50 ["createElement"]
     1100 GETUPVAL                         R39 33
     1101 DUPTABLE                         R40 K207 [{"scroll", "layout", "tag", "LayoutOrder"}]
     1102 DUPTABLE                         R41 K212 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
     1103 GETUPVAL                         R42 34
     1104 GETTABLEKS                       R42 R42 K213 ["Always"]
     1106 SETTABLEKS                       R42 R41 K208 ["scrollBarVisibility"]
     1108 GETIMPORT                        R42 K215 [Enum.ScrollingDirection.Y]
     1110 SETTABLEKS                       R42 R41 K209 ["ScrollingDirection"]
     1112 GETIMPORT                        R42 K217 [Enum.AutomaticSize.Y]
     1114 SETTABLEKS                       R42 R41 K210 ["AutomaticCanvasSize"]
     1116 GETIMPORT                        R42 K56 [UDim2.new]
     1118 CALL                             R42 0 1
     1119 SETTABLEKS                       R42 R41 K211 ["CanvasSize"]
     1121 SETTABLEKS                       R41 R40 K205 ["scroll"]
     1123 DUPTABLE                         R41 K219 [{"HorizontalAlignment", "FillDirection", "SortOrder", "HorizontalFlex"}]
     1124 GETIMPORT                        R42 K221 [Enum.HorizontalAlignment.Left]
     1126 SETTABLEKS                       R42 R41 K78 ["HorizontalAlignment"]
     1128 GETIMPORT                        R42 K83 [Enum.FillDirection.Vertical]
     1130 SETTABLEKS                       R42 R41 K76 ["FillDirection"]
     1132 GETIMPORT                        R42 K85 [Enum.SortOrder.LayoutOrder]
     1134 SETTABLEKS                       R42 R41 K77 ["SortOrder"]
     1136 GETIMPORT                        R42 K224 [Enum.UIFlexAlignment.Fill]
     1138 SETTABLEKS                       R42 R41 K218 ["HorizontalFlex"]
     1140 SETTABLEKS                       R41 R40 K206 ["layout"]
     1142 LOADK                            R41 K225 ["fill size-full col align-y-top gap-small"]
     1143 SETTABLEKS                       R41 R40 K104 ["tag"]
     1145 NAMECALL                         R41 R27 K93 ["getNextOrder"]
     1147 CALL                             R41 1 1
     1148 SETTABLEKS                       R41 R40 K84 ["LayoutOrder"]
     1150 DUPTABLE                         R41 K229 [{"SearchBarWidget", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
     1151 MOVE                             R42 R19
     1152 JUMPIFNOT                        R42 ; [+19]
     1153 GETUPVAL                         R42 10
     1154 GETTABLEKS                       R42 R42 K50 ["createElement"]
     1156 GETUPVAL                         R43 35
     1157 DUPTABLE                         R44 K232 [{"LayoutOrder", "Writable", "IsGroupGame"}]
     1158 NAMECALL                         R45 R28 K93 ["getNextOrder"]
     1160 CALL                             R45 1 1
     1161 SETTABLEKS                       R45 R44 K84 ["LayoutOrder"]
     1163 LOADB                            R45 1
     1164 SETTABLEKS                       R45 R44 K230 ["Writable"]
     1166 NAMECALL                         R45 R0 K192 ["isGroupGame"]
     1168 CALL                             R45 1 1
     1169 SETTABLEKS                       R45 R44 K231 ["IsGroupGame"]
     1171 CALL                             R42 2 1
     1172 SETTABLEKS                       R42 R41 K226 ["SearchBarWidget"]
     1174 GETUPVAL                         R42 10
     1175 GETTABLEKS                       R42 R42 K50 ["createElement"]
     1177 GETUPVAL                         R43 36
     1178 DUPTABLE                         R44 K233 [{"LayoutOrder"}]
     1179 NAMECALL                         R45 R28 K93 ["getNextOrder"]
     1181 CALL                             R45 1 1
     1182 SETTABLEKS                       R45 R44 K84 ["LayoutOrder"]
     1184 CALL                             R42 2 1
     1185 SETTABLEKS                       R42 R41 K227 ["CollaboratorFilterWidget"]
     1187 NOT                              R42 R19
     1188 JUMPIFNOT                        R42 ; [+9]
     1189 GETUPVAL                         R42 10
     1190 GETTABLEKS                       R42 R42 K50 ["createElement"]
     1192 LOADK                            R43 K51 ["Frame"]
     1193 DUPTABLE                         R44 K235 [{"BackgroundTransparency"}]
     1194 LOADN                            R45 1
     1195 SETTABLEKS                       R45 R44 K234 ["BackgroundTransparency"]
     1197 CALL                             R42 2 1
     1198 SETTABLEKS                       R42 R41 K51 ["Frame"]
     1200 GETUPVAL                         R42 10
     1201 GETTABLEKS                       R42 R42 K50 ["createElement"]
     1203 GETUPVAL                         R43 37
     1204 DUPTABLE                         R44 K232 [{"LayoutOrder", "Writable", "IsGroupGame"}]
     1205 NAMECALL                         R45 R28 K93 ["getNextOrder"]
     1207 CALL                             R45 1 1
     1208 SETTABLEKS                       R45 R44 K84 ["LayoutOrder"]
     1210 SETTABLEKS                       R19 R44 K230 ["Writable"]
     1212 GETUPVAL                         R46 38
     1213 JUMPIFNOT                        R46 ; [+4]
     1214 NAMECALL                         R45 R0 K192 ["isGroupGame"]
     1216 CALL                             R45 1 1
     1217 JUMP                             ; [+1]
     1218 LOADNIL                          R45
     1219 SETTABLEKS                       R45 R44 K231 ["IsGroupGame"]
     1221 CALL                             R42 2 1
     1222 SETTABLEKS                       R42 R41 K228 ["CollaboratorsWidget"]
     1224 CALL                             R38 3 1
     1225 SETTABLEKS                       R38 R37 K67 ["ScrollingFrameNew"]
     1227 GETUPVAL                         R39 9
     1228 NOT                              R38 R39
     1229 JUMPIFNOT                        R38 ; [+120]
     1230 MOVE                             R38 R20
     1231 JUMPIFNOT                        R38 ; [+118]
     1232 GETUPVAL                         R38 10
     1233 GETTABLEKS                       R38 R38 K50 ["createElement"]
     1235 GETUPVAL                         R39 39
     1236 DUPTABLE                         R40 K237 [{"LayoutOrder", "Size", "Layout", "AutomaticCanvasSize", "Spacing"}]
     1237 NAMECALL                         R41 R27 K93 ["getNextOrder"]
     1239 CALL                             R41 1 1
     1240 SETTABLEKS                       R41 R40 K84 ["LayoutOrder"]
     1242 GETIMPORT                        R41 K56 [UDim2.new]
     1244 LOADN                            R42 1
     1245 LOADN                            R43 0
     1246 LOADN                            R44 1
     1247 MINUS                            R45 R26
     1248 CALL                             R41 4 1
     1249 SETTABLEKS                       R41 R40 K52 ["Size"]
     1251 GETIMPORT                        R41 K83 [Enum.FillDirection.Vertical]
     1253 SETTABLEKS                       R41 R40 K58 ["Layout"]
     1255 GETIMPORT                        R41 K217 [Enum.AutomaticSize.Y]
     1257 SETTABLEKS                       R41 R40 K210 ["AutomaticCanvasSize"]
     1259 GETIMPORT                        R41 K89 [UDim.new]
     1261 LOADN                            R42 0
     1262 JUMPIFNOT                        R19 ; [+5]
     1263 GETTABLEKS                       R43 R2 K238 ["scrollingFrame"]
     1265 GETTABLEKS                       R43 R43 K239 ["yPadding"]
     1267 JUMP                             ; [+4]
     1268 GETTABLEKS                       R43 R2 K238 ["scrollingFrame"]
     1270 GETTABLEKS                       R43 R43 K240 ["yPaddingNonOwner"]
     1272 CALL                             R41 2 1
     1273 SETTABLEKS                       R41 R40 K236 ["Spacing"]
     1275 DUPTABLE                         R41 K229 [{"SearchBarWidget", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
     1276 MOVE                             R42 R19
     1277 JUMPIFNOT                        R42 ; [+19]
     1278 GETUPVAL                         R42 10
     1279 GETTABLEKS                       R42 R42 K50 ["createElement"]
     1281 GETUPVAL                         R43 35
     1282 DUPTABLE                         R44 K232 [{"LayoutOrder", "Writable", "IsGroupGame"}]
     1283 NAMECALL                         R45 R28 K93 ["getNextOrder"]
     1285 CALL                             R45 1 1
     1286 SETTABLEKS                       R45 R44 K84 ["LayoutOrder"]
     1288 LOADB                            R45 1
     1289 SETTABLEKS                       R45 R44 K230 ["Writable"]
     1291 NAMECALL                         R45 R0 K192 ["isGroupGame"]
     1293 CALL                             R45 1 1
     1294 SETTABLEKS                       R45 R44 K231 ["IsGroupGame"]
     1296 CALL                             R42 2 1
     1297 SETTABLEKS                       R42 R41 K226 ["SearchBarWidget"]
     1299 GETUPVAL                         R42 10
     1300 GETTABLEKS                       R42 R42 K50 ["createElement"]
     1302 GETUPVAL                         R43 36
     1303 DUPTABLE                         R44 K233 [{"LayoutOrder"}]
     1304 NAMECALL                         R45 R28 K93 ["getNextOrder"]
     1306 CALL                             R45 1 1
     1307 SETTABLEKS                       R45 R44 K84 ["LayoutOrder"]
     1309 CALL                             R42 2 1
     1310 SETTABLEKS                       R42 R41 K227 ["CollaboratorFilterWidget"]
     1312 NOT                              R42 R19
     1313 JUMPIFNOT                        R42 ; [+9]
     1314 GETUPVAL                         R42 10
     1315 GETTABLEKS                       R42 R42 K50 ["createElement"]
     1317 LOADK                            R43 K51 ["Frame"]
     1318 DUPTABLE                         R44 K235 [{"BackgroundTransparency"}]
     1319 LOADN                            R45 1
     1320 SETTABLEKS                       R45 R44 K234 ["BackgroundTransparency"]
     1322 CALL                             R42 2 1
     1323 SETTABLEKS                       R42 R41 K51 ["Frame"]
     1325 GETUPVAL                         R42 10
     1326 GETTABLEKS                       R42 R42 K50 ["createElement"]
     1328 GETUPVAL                         R43 37
     1329 DUPTABLE                         R44 K232 [{"LayoutOrder", "Writable", "IsGroupGame"}]
     1330 NAMECALL                         R45 R28 K93 ["getNextOrder"]
     1332 CALL                             R45 1 1
     1333 SETTABLEKS                       R45 R44 K84 ["LayoutOrder"]
     1335 SETTABLEKS                       R19 R44 K230 ["Writable"]
     1337 GETUPVAL                         R46 38
     1338 JUMPIFNOT                        R46 ; [+4]
     1339 NAMECALL                         R45 R0 K192 ["isGroupGame"]
     1341 CALL                             R45 1 1
     1342 JUMP                             ; [+1]
     1343 LOADNIL                          R45
     1344 SETTABLEKS                       R45 R44 K231 ["IsGroupGame"]
     1346 CALL                             R42 2 1
     1347 SETTABLEKS                       R42 R41 K228 ["CollaboratorsWidget"]
     1349 CALL                             R38 3 1
     1350 SETTABLEKS                       R38 R37 K68 ["ScrollingFrame"]
     1352 JUMPIFNOT                        R22 ; [+90]
     1353 GETUPVAL                         R38 10
     1354 GETTABLEKS                       R38 R38 K50 ["createElement"]
     1356 LOADK                            R39 K51 ["Frame"]
     1357 DUPTABLE                         R40 K242 [{"BackgroundTransparency", "BackgroundColor3", "LayoutOrder", "Size", "BorderSizePixel"}]
     1358 LOADN                            R41 1
     1359 SETTABLEKS                       R41 R40 K234 ["BackgroundTransparency"]
     1361 GETTABLEKS                       R41 R2 K57 ["backgroundColor"]
     1363 SETTABLEKS                       R41 R40 K53 ["BackgroundColor3"]
     1365 NAMECALL                         R41 R27 K93 ["getNextOrder"]
     1367 CALL                             R41 1 1
     1368 SETTABLEKS                       R41 R40 K84 ["LayoutOrder"]
     1370 GETIMPORT                        R41 K56 [UDim2.new]
     1372 LOADN                            R42 1
     1373 LOADN                            R43 0
     1374 LOADN                            R44 0
     1375 GETTABLEKS                       R45 R2 K42 ["saveMessage"]
     1377 GETTABLEKS                       R45 R45 K43 ["boxHeight"]
     1379 CALL                             R41 4 1
     1380 SETTABLEKS                       R41 R40 K52 ["Size"]
     1382 LOADN                            R41 0
     1383 SETTABLEKS                       R41 R40 K241 ["BorderSizePixel"]
     1385 DUPTABLE                         R41 K243 [{"Text"}]
     1386 GETUPVAL                         R42 10
     1387 GETTABLEKS                       R42 R42 K50 ["createElement"]
     1389 LOADK                            R43 K244 ["TextLabel"]
     1390 GETUPVAL                         R44 40
     1391 GETTABLEKS                       R44 R44 K245 ["Dictionary"]
     1393 GETTABLEKS                       R44 R44 K246 ["join"]
     1395 GETTABLEKS                       R45 R2 K42 ["saveMessage"]
     1397 GETTABLEKS                       R45 R45 K247 ["textStyle"]
     1399 DUPTABLE                         R46 K252 [{"AnchorPoint", "Position", "Text", "TextXAlignment", "BorderSizePixel", "TextWrapped", "Size", "BackgroundTransparency"}]
     1400 GETIMPORT                        R47 K254 [Vector2.new]
     1402 LOADN                            R48 0
     1403 LOADK                            R49 K255 [0.5]
     1404 CALL                             R47 2 1
     1405 SETTABLEKS                       R47 R46 K248 ["AnchorPoint"]
     1407 GETTABLEKS                       R47 R2 K42 ["saveMessage"]
     1409 GETTABLEKS                       R47 R47 K256 ["InnerTextPosition"]
     1411 SETTABLEKS                       R47 R46 K249 ["Position"]
     1413 SETTABLEKS                       R24 R46 K130 ["Text"]
     1415 GETIMPORT                        R47 K257 [Enum.TextXAlignment.Left]
     1417 SETTABLEKS                       R47 R46 K250 ["TextXAlignment"]
     1419 LOADN                            R47 0
     1420 SETTABLEKS                       R47 R46 K241 ["BorderSizePixel"]
     1422 LOADB                            R47 1
     1423 SETTABLEKS                       R47 R46 K251 ["TextWrapped"]
     1425 GETIMPORT                        R47 K56 [UDim2.new]
     1427 LOADK                            R48 K2 ["Stylizer"]
     1428 LOADN                            R49 0
     1429 LOADN                            R50 1
     1430 LOADN                            R51 0
     1431 CALL                             R47 4 1
     1432 SETTABLEKS                       R47 R46 K52 ["Size"]
     1434 LOADN                            R47 1
     1435 SETTABLEKS                       R47 R46 K234 ["BackgroundTransparency"]
     1437 CALL                             R44 2 -1
     1438 CALL                             R42 -1 1
     1439 SETTABLEKS                       R42 R41 K130 ["Text"]
     1441 CALL                             R38 3 1
     1442 JUMP                             ; [+1]
     1443 LOADNIL                          R38
     1444 SETTABLEKS                       R38 R37 K69 ["TextFrame"]
     1446 GETUPVAL                         R38 0
     1447 JUMPIFNOT                        R38 ; [+15]
     1448 GETTABLEKS                       R38 R0 K7 ["state"]
     1450 GETTABLEKS                       R38 R38 K259 ["upsellDialogEnabled"]
     1452 JUMPIFNOT                        R38 ; [+10]
     1453 GETUPVAL                         R38 12
     1454 GETTABLEKS                       R38 R38 K50 ["createElement"]
     1456 GETUPVAL                         R39 41
     1457 DUPTABLE                         R40 K260 [{"onClose"}]
     1458 NEWCLOSURE                       R41 P11
     1459 CAPTURE                          VAL R0
     1460 SETTABLEKS                       R41 R40 K143 ["onClose"]
     1462 CALL                             R38 2 1
     1463 SETTABLEKS                       R38 R37 K70 ["upsellDialog"]
     1465 MOVE                             R38 R20
     1466 JUMPIFNOT                        R38 ; [+42]
     1467 GETUPVAL                         R38 10
     1468 GETTABLEKS                       R38 R38 K50 ["createElement"]
     1470 GETUPVAL                         R39 11
     1471 DUPTABLE                         R40 K92 [{"LayoutOrder", "Size"}]
     1472 NAMECALL                         R41 R27 K93 ["getNextOrder"]
     1474 CALL                             R41 1 1
     1475 SETTABLEKS                       R41 R40 K84 ["LayoutOrder"]
     1477 GETIMPORT                        R41 K56 [UDim2.new]
     1479 LOADN                            R42 1
     1480 LOADN                            R43 0
     1481 LOADN                            R44 0
     1482 GETTABLEKS                       R45 R2 K41 ["footer"]
     1484 GETTABLEKS                       R45 R45 K40 ["height"]
     1486 CALL                             R41 4 1
     1487 SETTABLEKS                       R41 R40 K52 ["Size"]
     1489 DUPTABLE                         R41 K262 [{"Footer"}]
     1490 GETUPVAL                         R42 10
     1491 GETTABLEKS                       R42 R42 K50 ["createElement"]
     1493 GETUPVAL                         R43 42
     1494 DUPTABLE                         R44 K265 [{"IsTeamCreateEnabled", "OnSavePressed", "OnCancelPressed"}]
     1495 SETTABLEKS                       R21 R44 K96 ["IsTeamCreateEnabled"]
     1497 NEWCLOSURE                       R45 P12
     1498 CAPTURE                          VAL R0
     1499 SETTABLEKS                       R45 R44 K263 ["OnSavePressed"]
     1501 NEWCLOSURE                       R45 P13
     1502 CAPTURE                          VAL R0
     1503 SETTABLEKS                       R45 R44 K264 ["OnCancelPressed"]
     1505 CALL                             R42 2 1
     1506 SETTABLEKS                       R42 R41 K261 ["Footer"]
     1508 CALL                             R38 3 1
     1509 SETTABLEKS                       R38 R37 K71 ["FooterContent"]
     1511 NOT                              R38 R16
     1512 JUMPIFNOT                        R38 ; [+22]
     1513 NOT                              R38 R17
     1514 JUMPIFNOT                        R38 ; [+20]
     1515 GETUPVAL                         R38 10
     1516 GETTABLEKS                       R38 R38 K50 ["createElement"]
     1518 GETUPVAL                         R39 43
     1519 DUPTABLE                         R40 K266 [{"AnchorPoint", "Position"}]
     1520 GETIMPORT                        R41 K254 [Vector2.new]
     1522 LOADK                            R42 K255 [0.5]
     1523 LOADK                            R43 K255 [0.5]
     1524 CALL                             R41 2 1
     1525 SETTABLEKS                       R41 R40 K248 ["AnchorPoint"]
     1527 GETIMPORT                        R41 K268 [UDim2.fromScale]
     1529 LOADK                            R42 K255 [0.5]
     1530 LOADK                            R43 K255 [0.5]
     1531 CALL                             R41 2 1
     1532 SETTABLEKS                       R41 R40 K249 ["Position"]
     1534 CALL                             R38 2 1
     1535 SETTABLEKS                       R38 R37 K72 ["LoadingIndicator"]
     1537 MOVE                             R38 R17
     1538 JUMPIFNOT                        R38 ; [+46]
     1539 GETUPVAL                         R38 10
     1540 GETTABLEKS                       R38 R38 K50 ["createElement"]
     1542 LOADK                            R39 K244 ["TextLabel"]
     1543 DUPTABLE                         R40 K272 [{"Text", "AnchorPoint", "Position", "TextColor3", "TextSize", "Font"}]
     1544 SETTABLEKS                       R18 R40 K130 ["Text"]
     1546 GETIMPORT                        R41 K254 [Vector2.new]
     1548 LOADK                            R42 K255 [0.5]
     1549 LOADK                            R43 K255 [0.5]
     1550 CALL                             R41 2 1
     1551 SETTABLEKS                       R41 R40 K248 ["AnchorPoint"]
     1553 GETIMPORT                        R41 K268 [UDim2.fromScale]
     1555 LOADK                            R42 K255 [0.5]
     1556 LOADK                            R43 K17 ["ShowTrustedConnectionsOption"]
     1557 CALL                             R41 2 1
     1558 SETTABLEKS                       R41 R40 K249 ["Position"]
     1560 GETTABLEKS                       R41 R2 K274 ["fontStyle"]
     1562 GETTABLEKS                       R41 R41 K275 ["Normal"]
     1564 GETTABLEKS                       R41 R41 K269 ["TextColor3"]
     1566 SETTABLEKS                       R41 R40 K269 ["TextColor3"]
     1568 GETTABLEKS                       R41 R2 K274 ["fontStyle"]
     1570 GETTABLEKS                       R41 R41 K275 ["Normal"]
     1572 GETTABLEKS                       R41 R41 K270 ["TextSize"]
     1574 SETTABLEKS                       R41 R40 K270 ["TextSize"]
     1576 GETTABLEKS                       R41 R2 K274 ["fontStyle"]
     1578 GETTABLEKS                       R41 R41 K275 ["Normal"]
     1580 GETTABLEKS                       R41 R41 K271 ["Font"]
     1582 SETTABLEKS                       R41 R40 K271 ["Font"]
     1584 CALL                             R38 2 1
     1585 SETTABLEKS                       R38 R37 K73 ["FailureText"]
     1587 CALL                             R34 3 -1
     1588 RETURN                           R34 -1

PROTO_45:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 DUPTABLE                         R3 K14 [{"LoadState", "SaveState", "OwnerId", "OwnerType", "GroupOwnerUserId", "HasCollaborators", "HasCurrentEditCollaborators", "HasNewEditCollaborators", "HasOutsideAgeBucketEditCollaborators", "HasCurrentUserBlockingCollaborators", "OwnerIsNotAgeVerified", "GroupRolePermissions", "Is17PlusGame", "HasUnsavedChanges"}]
        4 GETTABLEKS                       R4 R0 K0 ["LoadState"]
        6 GETTABLEKS                       R4 R4 K15 ["CurrentLoadState"]
        8 JUMPIF                           R4 ; [+3]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K16 ["Unloaded"]
       12 SETTABLEKS                       R4 R3 K0 ["LoadState"]
       14 GETTABLEKS                       R4 R0 K1 ["SaveState"]
       16 GETTABLEKS                       R4 R4 K17 ["CurrentSaveState"]
       18 JUMPIF                           R4 ; [+3]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K18 ["Unsaved"]
       22 SETTABLEKS                       R4 R3 K1 ["SaveState"]
       24 GETTABLEKS                       R4 R0 K19 ["GameOwnerMetadata"]
       26 GETTABLEKS                       R4 R4 K20 ["creatorId"]
       28 SETTABLEKS                       R4 R3 K2 ["OwnerId"]
       30 GETTABLEKS                       R4 R0 K19 ["GameOwnerMetadata"]
       32 GETTABLEKS                       R4 R4 K21 ["creatorType"]
       34 SETTABLEKS                       R4 R3 K3 ["OwnerType"]
       36 GETTABLEKS                       R4 R0 K19 ["GameOwnerMetadata"]
       38 GETTABLEKS                       R4 R4 K22 ["groupOwnerId"]
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
       53 GETTABLEKS                       R5 R5 K23 ["fflagManageCollaboratorsVerifyAgeDialog"]
       55 JUMPIFNOT                        R5 ; [+4]
       56 GETUPVAL                         R4 6
       57 MOVE                             R5 R0
       58 CALL                             R4 1 1
       59 JUMP                             ; [+1]
       60 LOADNIL                          R4
       61 SETTABLEKS                       R4 R3 K7 ["HasNewEditCollaborators"]
       63 GETUPVAL                         R5 5
       64 GETTABLEKS                       R5 R5 K24 ["fflagManageCollaboratorsOutsideAgeBucketAlert"]
       66 JUMPIFNOT                        R5 ; [+4]
       67 GETUPVAL                         R4 7
       68 MOVE                             R5 R0
       69 CALL                             R4 1 1
       70 JUMP                             ; [+1]
       71 LOADNIL                          R4
       72 SETTABLEKS                       R4 R3 K8 ["HasOutsideAgeBucketEditCollaborators"]
       74 GETUPVAL                         R5 5
       75 GETTABLEKS                       R5 R5 K25 ["fflagManageCollaboratorsEditorBlockingBanner"]
       77 JUMPIFNOT                        R5 ; [+4]
       78 GETUPVAL                         R4 8
       79 MOVE                             R5 R0
       80 CALL                             R4 1 1
       81 JUMP                             ; [+1]
       82 LOADNIL                          R4
       83 SETTABLEKS                       R4 R3 K9 ["HasCurrentUserBlockingCollaborators"]
       85 GETUPVAL                         R5 5
       86 GETTABLEKS                       R5 R5 K26 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
       88 JUMPIFNOT                        R5 ; [+4]
       89 GETUPVAL                         R4 9
       90 MOVE                             R5 R0
       91 CALL                             R4 1 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R4
       94 SETTABLEKS                       R4 R3 K10 ["OwnerIsNotAgeVerified"]
       96 GETTABLEKS                       R4 R0 K11 ["GroupRolePermissions"]
       98 GETTABLEKS                       R4 R4 K27 ["PermissionsByRole"]
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
      113 RETURN                           R3 1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["LoadPermissions"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_47:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
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
      382 GETTABLEKS                       R62 R62 K49 ["Util"]
      384 GETTABLEKS                       R62 R62 K80 ["IsTeamCreateEnabled"]
      386 CALL                             R61 1 1
      387 GETTABLEKS                       R62 R12 K49 ["Util"]
      389 GETTABLEKS                       R63 R62 K81 ["LayoutOrderIterator"]
      391 GETIMPORT                        R64 K17 [require]
      393 GETTABLEKS                       R65 R7 K48 ["Src"]
      395 GETTABLEKS                       R65 R65 K49 ["Util"]
      397 GETTABLEKS                       R65 R65 K82 ["Analytics"]
      399 CALL                             R64 1 1
      400 OR                               R65 R2 R1
      401 GETTABLEKS                       R66 R22 K83 ["View"]
      403 GETIMPORT                        R67 K17 [require]
      405 GETTABLEKS                       R68 R7 K18 ["Packages"]
      407 GETTABLEKS                       R68 R68 K84 ["React"]
      409 CALL                             R67 1 1
      410 GETIMPORT                        R68 K17 [require]
      412 GETTABLEKS                       R69 R7 K48 ["Src"]
      414 GETTABLEKS                       R69 R69 K51 ["Components"]
      416 GETTABLEKS                       R69 R69 K85 ["Header"]
      418 CALL                             R68 1 1
      419 GETTABLEKS                       R69 R8 K86 ["PureComponent"]
      421 LOADK                            R71 K87 ["PermissionsView"]
      422 NAMECALL                         R69 R69 K88 ["extend"]
      424 CALL                             R69 2 1
      425 GETIMPORT                        R70 K17 [require]
      427 GETTABLEKS                       R71 R7 K48 ["Src"]
      429 GETTABLEKS                       R71 R71 K49 ["Util"]
      431 GETTABLEKS                       R71 R71 K89 ["Telemetry"]
      433 GETTABLEKS                       R71 R71 K90 ["CTAClickedEvent"]
      435 CALL                             R70 1 1
      436 GETIMPORT                        R71 K17 [require]
      438 GETTABLEKS                       R72 R7 K48 ["Src"]
      440 GETTABLEKS                       R72 R72 K49 ["Util"]
      442 GETTABLEKS                       R72 R72 K89 ["Telemetry"]
      444 GETTABLEKS                       R72 R72 K91 ["SafetyUpsellBannerShownEvent"]
      446 CALL                             R71 1 1
      447 GETIMPORT                        R72 K17 [require]
      449 GETTABLEKS                       R73 R7 K18 ["Packages"]
      451 GETTABLEKS                       R73 R73 K92 ["TelemetryProtocol"]
      453 CALL                             R72 1 1
      454 GETTABLEKS                       R73 R72 K93 ["new"]
      456 CALL                             R73 0 1
      457 GETIMPORT                        R74 K17 [require]
      459 GETTABLEKS                       R75 R7 K48 ["Src"]
      461 GETTABLEKS                       R75 R75 K51 ["Components"]
      463 GETTABLEKS                       R75 R75 K94 ["UpsellDialog"]
      465 CALL                             R74 1 1
      466 GETIMPORT                        R75 K17 [require]
      468 GETTABLEKS                       R76 R7 K48 ["Src"]
      470 GETTABLEKS                       R76 R76 K38 ["Enums"]
      472 GETTABLEKS                       R76 R76 K95 ["CanCollaborateError"]
      474 CALL                             R75 1 1
      475 DUPCLOSURE                       R76 K96 [PROTO_0]
      476 CAPTURE                          VAL R44
      477 CAPTURE                          VAL R73
      478 CAPTURE                          VAL R70
      479 CAPTURE                          VAL R4
      480 DUPCLOSURE                       R77 K97 [PROTO_2]
      481 CAPTURE                          VAL R5
      482 DUPCLOSURE                       R78 K98 [PROTO_3]
      483 SETTABLEKS                       R78 R69 K99 ["isGroupGame"]
      485 DUPCLOSURE                       R78 K100 [PROTO_4]
      486 CAPTURE                          VAL R4
      487 SETTABLEKS                       R78 R69 K101 ["isLoggedInUserGameOwner"]
      489 DUPCLOSURE                       R78 K102 [PROTO_11]
      490 CAPTURE                          VAL R8
      491 CAPTURE                          VAL R44
      492 CAPTURE                          VAL R73
      493 CAPTURE                          VAL R70
      494 CAPTURE                          VAL R4
      495 CAPTURE                          VAL R6
      496 CAPTURE                          VAL R5
      497 CAPTURE                          VAL R11
      498 CAPTURE                          VAL R71
      499 SETTABLEKS                       R78 R69 K103 ["init"]
      501 DUPCLOSURE                       R78 K104 [PROTO_24]
      502 CAPTURE                          VAL R45
      503 CAPTURE                          VAL R46
      504 CAPTURE                          VAL R73
      505 CAPTURE                          VAL R71
      506 CAPTURE                          VAL R4
      507 CAPTURE                          VAL R11
      508 SETTABLEKS                       R78 R69 K105 ["didUpdate"]
      510 DUPCLOSURE                       R78 K106 [PROTO_25]
      511 CAPTURE                          VAL R47
      512 CAPTURE                          VAL R75
      513 CAPTURE                          VAL R6
      514 CAPTURE                          VAL R5
      515 SETGLOBAL                        R78 K107 ["checkAndMaybeShowVerifyAgeDialog"]
      517 DUPCLOSURE                       R78 K108 [PROTO_26]
      518 CAPTURE                          VAL R11
      519 CAPTURE                          VAL R43
      520 CAPTURE                          VAL R61
      521 CAPTURE                          VAL R3
      522 SETTABLEKS                       R78 R69 K109 ["onSavePressed"]
      524 DUPCLOSURE                       R78 K110 [PROTO_29]
      525 CAPTURE                          VAL R43
      526 CAPTURE                          VAL R64
      527 CAPTURE                          VAL R35
      528 CAPTURE                          VAL R21
      529 CAPTURE                          VAL R8
      530 SETTABLEKS                       R78 R69 K111 ["onCancelPressed"]
      532 DUPCLOSURE                       R78 K112 [PROTO_44]
      533 CAPTURE                          VAL R45
      534 CAPTURE                          VAL R11
      535 CAPTURE                          VAL R43
      536 CAPTURE                          VAL R53
      537 CAPTURE                          VAL R52
      538 CAPTURE                          VAL R49
      539 CAPTURE                          VAL R61
      540 CAPTURE                          VAL R65
      541 CAPTURE                          VAL R63
      542 CAPTURE                          VAL R44
      543 CAPTURE                          VAL R8
      544 CAPTURE                          VAL R19
      545 CAPTURE                          VAL R67
      546 CAPTURE                          VAL R68
      547 CAPTURE                          VAL R3
      548 CAPTURE                          VAL R66
      549 CAPTURE                          VAL R27
      550 CAPTURE                          VAL R26
      551 CAPTURE                          VAL R29
      552 CAPTURE                          VAL R23
      553 CAPTURE                          VAL R30
      554 CAPTURE                          VAL R32
      555 CAPTURE                          VAL R33
      556 CAPTURE                          VAL R34
      557 CAPTURE                          VAL R73
      558 CAPTURE                          VAL R70
      559 CAPTURE                          VAL R4
      560 CAPTURE                          VAL R6
      561 CAPTURE                          VAL R5
      562 CAPTURE                          VAL R28
      563 CAPTURE                          VAL R22
      564 CAPTURE                          VAL R31
      565 CAPTURE                          VAL R2
      566 CAPTURE                          VAL R24
      567 CAPTURE                          VAL R25
      568 CAPTURE                          VAL R37
      569 CAPTURE                          VAL R38
      570 CAPTURE                          VAL R36
      571 CAPTURE                          VAL R0
      572 CAPTURE                          VAL R18
      573 CAPTURE                          VAL R10
      574 CAPTURE                          VAL R74
      575 CAPTURE                          VAL R39
      576 CAPTURE                          VAL R20
      577 SETTABLEKS                       R78 R69 K113 ["render"]
      579 MOVE                             R78 R14
      580 DUPTABLE                         R79 K114 [{"Stylizer", "Localization"}]
      581 SETTABLEKS                       R15 R79 K28 ["Stylizer"]
      583 SETTABLEKS                       R16 R79 K29 ["Localization"]
      585 CALL                             R78 1 1
      586 MOVE                             R79 R69
      587 CALL                             R78 1 1
      588 MOVE                             R69 R78
      589 GETTABLEKS                       R78 R9 K115 ["connect"]
      591 NEWCLOSURE                       R79 P10
      592 CAPTURE                          VAL R57
      593 CAPTURE                          VAL R52
      594 CAPTURE                          VAL R53
      595 CAPTURE                          VAL R54
      596 CAPTURE                          VAL R56
      597 CAPTURE                          VAL R11
      598 CAPTURE                          VAL R55
      599 CAPTURE                          VAL R58
      600 CAPTURE                          VAL R59
      601 CAPTURE                          VAL R60
      602 CAPTURE                          VAL R49
      603 CAPTURE                          REF R51
      604 NEWCLOSURE                       R80 P11
      605 CAPTURE                          VAL R41
      606 CAPTURE                          VAL R40
      607 CAPTURE                          VAL R43
      608 CAPTURE                          REF R42
      609 CAPTURE                          VAL R49
      610 CAPTURE                          REF R50
      611 CALL                             R78 2 1
      612 MOVE                             R79 R69
      613 CALL                             R78 1 1
      614 MOVE                             R69 R78
      615 CLOSEUPVALS                      R42
      616 RETURN                           R69 1
