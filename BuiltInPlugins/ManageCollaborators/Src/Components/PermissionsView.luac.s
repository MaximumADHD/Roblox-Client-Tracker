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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["scrollingFrameRef"]
        3 GETTABLEKS                       R1 R2 K1 ["current"]
        5 JUMPIFNOT                        R1 ; [+22]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["props"]
        9 GETTABLEKS                       R2 R3 K3 ["Stylizer"]
       11 GETIMPORT                        R3 K6 [UDim2.new]
       13 LOADN                            R4 1
       14 LOADN                            R5 0
       15 LOADN                            R6 0
       16 GETTABLEKS                       R9 R0 K7 ["AbsoluteContentSize"]
       18 GETTABLEKS                       R8 R9 K8 ["Y"]
       20 GETTABLEKS                       R10 R2 K9 ["scrollingFrame"]
       22 GETTABLEKS                       R9 R10 K10 ["yPadding"]
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
       20 GETUPVAL                         R1 4
       21 GETTABLEKS                       R0 R1 K8 ["fstringCreatorHubImpactedExperiencesLink"]
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
        0 DUPTABLE                         R1 K1 [{"upsellDialogEnabled"}]
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["upsellDialogEnabled"]
        4 RETURN                           R1 1

PROTO_9:
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
       19 DUPCLOSURE                       R2 K8 [PROTO_8]
       20 NAMECALL                         R0 R0 K9 ["setState"]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K1 [{"upsellDialogEnabled"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["upsellDialogEnabled"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K3 ["createRef"]
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
       34 NEWCLOSURE                       R1 P3
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U8
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K10 ["launchModal"]
       41 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 DUPTABLE                         R1 K1 [{"ShowSafetyBanner"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["ShowSafetyBanner"]
        4 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_12]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 DUPTABLE                         R1 K1 [{"ShowTrustedConnectionsBanner"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["ShowTrustedConnectionsBanner"]
        4 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_15]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"ShowTrustedConnectionsOption"}]
        2 SETTABLEKS                       R0 R3 K0 ["ShowTrustedConnectionsOption"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_18:
        0 DUPTABLE                         R1 K1 [{"ShowTrustedConnectionsOption"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["ShowTrustedConnectionsOption"]
        4 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_18]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 DUPTABLE                         R1 K1 [{"ShowReverificationBanner"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["ShowReverificationBanner"]
        4 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_21]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R2 R1 K0 ["Enabled"]
        2 JUMPIF                           R2 ; [+80]
        3 GETTABLEKS                       R3 R0 K1 ["props"]
        5 GETTABLEKS                       R2 R3 K0 ["Enabled"]
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
       44 GETUPVAL                         R3 5
       45 GETTABLEKS                       R2 R3 K7 ["fflagUpsellCollabTrustedConnectionShowUpsellDialog"]
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
       62 GETUPVAL                         R3 5
       63 GETTABLEKS                       R2 R3 K9 ["fflagUpsellMCCollabReverification"]
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
       83 RETURN                           R0 0

PROTO_24:
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
       19 GETIMPORT                        R6 K7 [game]
       21 GETTABLEKS                       R5 R6 K8 ["GameId"]
       23 CALL                             R4 1 1
       24 NAMECALL                         R4 R4 K9 ["await"]
       26 CALL                             R4 1 2
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R6 R7 K10 ["NotAgeVerified"]
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
      106 GETTABLEKS                       R10 R8 K38 ["SelectedButtonUri"]
      108 GETTABLEKS                       R9 R10 K14 ["ItemId"]
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

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["fflagManageCollaboratorsVerifyAgeDialog"]
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

PROTO_26:
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

PROTO_27:
        0 RETURN                           R0 0

PROTO_28:
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
       16 GETUPVAL                         R9 1
       17 GETTABLEKS                       R8 R9 K6 ["reportCancelPressed"]
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
       63 GETTABLEKS                       R15 R5 K26 ["cancelDialog"]
       65 GETTABLEKS                       R14 R15 K27 ["Size"]
       67 SETTABLEKS                       R14 R13 K20 ["MinContentSize"]
       69 LOADK                            R14 K28 ["CancelDialog"]
       70 SETTABLEKS                       R14 R13 K15 ["Style"]
       72 NEWCLOSURE                       R14 P0
       73 CAPTURE                          UPVAL U0
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R6
       76 SETTABLEKS                       R14 R13 K21 ["OnButtonPressed"]
       78 DUPCLOSURE                       R14 K29 [PROTO_27]
       79 SETTABLEKS                       R14 R13 K22 ["OnClose"]
       81 LOADK                            R16 K23 ["Title"]
       82 LOADK                            R17 K30 ["DiscardChanges"]
       83 NAMECALL                         R14 R4 K14 ["getText"]
       85 CALL                             R14 3 1
       86 SETTABLEKS                       R14 R13 K23 ["Title"]
       88 LOADB                            R14 1
       89 SETTABLEKS                       R14 R13 K24 ["Modal"]
       91 DUPTABLE                         R14 K32 [{"Contents"}]
       92 GETUPVAL                         R16 4
       93 GETTABLEKS                       R15 R16 K33 ["createElement"]
       95 LOADK                            R16 K34 ["TextLabel"]
       96 DUPTABLE                         R17 K41 [{"BackgroundTransparency", "TextSize", "Text", "TextColor3", "Font", "Size", "AnchorPoint", "Position"}]
       97 LOADN                            R18 1
       98 SETTABLEKS                       R18 R17 K35 ["BackgroundTransparency"]
      100 GETTABLEKS                       R20 R5 K26 ["cancelDialog"]
      102 GETTABLEKS                       R19 R20 K9 ["Text"]
      104 GETTABLEKS                       R18 R19 K36 ["TextSize"]
      106 SETTABLEKS                       R18 R17 K36 ["TextSize"]
      108 LOADK                            R20 K42 ["Description"]
      109 LOADK                            R21 K30 ["DiscardChanges"]
      110 NAMECALL                         R18 R4 K14 ["getText"]
      112 CALL                             R18 3 1
      113 SETTABLEKS                       R18 R17 K9 ["Text"]
      115 GETTABLEKS                       R20 R5 K26 ["cancelDialog"]
      117 GETTABLEKS                       R19 R20 K9 ["Text"]
      119 GETTABLEKS                       R18 R19 K37 ["TextColor3"]
      121 SETTABLEKS                       R18 R17 K37 ["TextColor3"]
      123 GETTABLEKS                       R20 R5 K26 ["cancelDialog"]
      125 GETTABLEKS                       R19 R20 K9 ["Text"]
      127 GETTABLEKS                       R18 R19 K38 ["Font"]
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
      145 GETTABLEKS                       R19 R5 K26 ["cancelDialog"]
      147 GETTABLEKS                       R18 R19 K40 ["Position"]
      149 SETTABLEKS                       R18 R17 K40 ["Position"]
      151 CALL                             R15 2 1
      152 SETTABLEKS                       R15 R14 K31 ["Contents"]
      154 CALL                             R9 5 0
      155 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onSavePressed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"ShowTrustedConnectionsBanner"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["ShowTrustedConnectionsBanner"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_32:
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

PROTO_33:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"ShowReverificationBanner"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["ShowReverificationBanner"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"upsellDialogEnabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["upsellDialogEnabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onSavePressed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onCancelPressed"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_37:
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
       18 GETTABLEKS                       R8 R0 K7 ["state"]
       20 GETTABLEKS                       R7 R8 K8 ["ShowSafetyBanner"]
       22 JUMP                             ; [+2]
       23 GETTABLEKS                       R7 R1 K8 ["ShowSafetyBanner"]
       25 GETTABLEKS                       R9 R0 K7 ["state"]
       27 GETTABLEKS                       R8 R9 K9 ["ShowTrustedConnectionsBanner"]
       29 GETUPVAL                         R11 1
       30 GETTABLEKS                       R10 R11 K10 ["fflagUpsellCollabTrustedConnectionShowUpsellDialog"]
       32 JUMPIFNOT                        R10 ; [+5]
       33 GETTABLEKS                       R10 R0 K7 ["state"]
       35 GETTABLEKS                       R9 R10 K11 ["ShowTrustedConnectionsOption"]
       37 JUMP                             ; [+1]
       38 LOADB                            R9 0
       39 GETUPVAL                         R11 1
       40 GETTABLEKS                       R10 R11 K12 ["fflagUpsellMCCollabReverification"]
       42 JUMPIFNOT                        R10 ; [+4]
       43 GETTABLEKS                       R11 R0 K7 ["state"]
       45 GETTABLEKS                       R10 R11 K13 ["ShowReverificationBanner"]
       47 GETTABLEKS                       R11 R1 K14 ["HasCurrentEditCollaborators"]
       49 GETUPVAL                         R13 2
       50 JUMPIFNOT                        R13 ; [+3]
       51 GETTABLEKS                       R12 R1 K15 ["SendAllSearchItemLogs"]
       53 JUMP                             ; [+1]
       54 LOADNIL                          R12
       55 GETUPVAL                         R14 3
       56 GETTABLEKS                       R13 R14 K16 ["Saved"]
       58 JUMPIFNOTEQ                      R4 R13 ; [+5]
       60 GETTABLEKS                       R13 R1 K17 ["CloseWidget"]
       62 CALL                             R13 0 0
       63 RETURN                           R0 0
       64 GETUPVAL                         R15 4
       65 GETTABLEKS                       R14 R15 K18 ["Loaded"]
       67 JUMPIFEQ                         R5 R14 ; [+2]
       69 LOADB                            R13 0 +1
       70 LOADB                            R13 1
       71 GETUPVAL                         R14 5
       72 JUMPIFNOT                        R14 ; [+6]
       73 JUMPIFNOT                        R13 ; [+5]
       74 GETTABLEKS                       R14 R1 K19 ["PrefetchLikelyCollaborators"]
       76 GETTABLEKS                       R15 R1 K20 ["Is17PlusGame"]
       78 CALL                             R14 1 0
       79 LOADB                            R14 0
       80 LOADNIL                          R15
       81 GETUPVAL                         R17 4
       82 GETTABLEKS                       R16 R17 K21 ["Unloaded"]
       84 JUMPIFNOTEQ                      R5 R16 ; [+4]
       86 GETTABLEKS                       R16 R1 K22 ["LoadPermissions"]
       88 CALL                             R16 0 0
       89 GETUPVAL                         R17 4
       90 GETTABLEKS                       R16 R17 K23 ["LoadFailed"]
       92 JUMPIFEQ                         R5 R16 ; [+6]
       94 GETUPVAL                         R17 3
       95 GETTABLEKS                       R16 R17 K24 ["SaveFailed"]
       97 JUMPIFNOTEQ                      R4 R16 ; [+20]
       99 LOADB                            R14 1
      100 GETUPVAL                         R17 4
      101 GETTABLEKS                       R16 R17 K23 ["LoadFailed"]
      103 JUMPIFNOTEQ                      R5 R16 ; [+8]
      105 LOADK                            R18 K25 ["FailureMessage"]
      106 LOADK                            R19 K26 ["LoadFailure"]
      107 NAMECALL                         R16 R3 K27 ["getText"]
      109 CALL                             R16 3 1
      110 MOVE                             R15 R16
      111 JUMP                             ; [+6]
      112 LOADK                            R18 K25 ["FailureMessage"]
      113 LOADK                            R19 K28 ["SaveFailure"]
      114 NAMECALL                         R16 R3 K27 ["getText"]
      116 CALL                             R16 3 1
      117 MOVE                             R15 R16
      118 NAMECALL                         R16 R0 K29 ["isLoggedInUserGameOwner"]
      120 CALL                             R16 1 1
      121 MOVE                             R17 R13
      122 JUMPIFNOT                        R17 ; [+1]
      123 NOT                              R17 R14
      124 GETUPVAL                         R18 6
      125 CALL                             R18 0 1
      126 MOVE                             R19 R17
      127 JUMPIFNOT                        R19 ; [+3]
      128 NOT                              R19 R18
      129 JUMPIFNOT                        R19 ; [+1]
      130 OR                               R19 R6 R11
      131 JUMPIFNOT                        R11 ; [+2]
      132 LOADK                            R20 K30 ["SaveEnableTcCurrentEditors"]
      133 JUMP                             ; [+1]
      134 LOADK                            R20 K31 ["SaveEnableTC"]
      135 LOADK                            R23 K32 ["Description"]
      136 MOVE                             R24 R20
      137 NAMECALL                         R21 R3 K27 ["getText"]
      139 CALL                             R21 3 1
      140 GETTABLEKS                       R23 R2 K33 ["header"]
      142 GETTABLEKS                       R22 R23 K34 ["height"]
      144 GETTABLEKS                       R24 R2 K35 ["footer"]
      146 GETTABLEKS                       R23 R24 K34 ["height"]
      148 JUMPIFNOT                        R19 ; [+5]
      149 GETTABLEKS                       R25 R2 K36 ["saveMessage"]
      151 GETTABLEKS                       R24 R25 K37 ["boxHeight"]
      153 ADD                              R23 R23 R24
      154 GETUPVAL                         R24 7
      155 JUMPIFNOT                        R24 ; [+1]
      156 ADD                              R23 R23 R22
      157 GETUPVAL                         R25 8
      158 GETTABLEKS                       R24 R25 K38 ["new"]
      160 CALL                             R24 0 1
      161 GETUPVAL                         R26 8
      162 GETTABLEKS                       R25 R26 K38 ["new"]
      164 CALL                             R25 0 1
      165 GETUPVAL                         R27 9
      166 JUMPIFNOT                        R27 ; [+5]
      167 GETUPVAL                         R27 8
      168 GETTABLEKS                       R26 R27 K38 ["new"]
      170 CALL                             R26 0 1
      171 JUMP                             ; [+1]
      172 LOADNIL                          R26
      173 GETUPVAL                         R27 9
      174 JUMPIFNOT                        R27 ; [+8]
      175 MOVE                             R27 R7
      176 JUMPIF                           R27 ; [+6]
      177 MOVE                             R27 R8
      178 JUMPIF                           R27 ; [+4]
      179 GETUPVAL                         R29 1
      180 GETTABLEKS                       R28 R29 K12 ["fflagUpsellMCCollabReverification"]
      182 AND                              R27 R28 R10
      183 LOADK                            R30 K39 ["UpsellBanner"]
      184 LOADK                            R31 K40 ["RecheckAge"]
      185 NAMECALL                         R28 R3 K27 ["getText"]
      187 CALL                             R28 3 1
      188 LOADK                            R31 K39 ["UpsellBanner"]
      189 LOADK                            R32 K41 ["AgeCheckNotValid"]
      190 NAMECALL                         R29 R3 K27 ["getText"]
      192 CALL                             R29 3 1
      193 LOADK                            R32 K42 ["Buttons"]
      194 LOADK                            R33 K43 ["Continue"]
      195 NAMECALL                         R30 R3 K27 ["getText"]
      197 CALL                             R30 3 1
      198 GETUPVAL                         R32 10
      199 GETTABLEKS                       R31 R32 K44 ["createElement"]
      201 LOADK                            R32 K45 ["Frame"]
      202 DUPTABLE                         R33 K48 [{"Size", "BackgroundColor3"}]
      203 GETIMPORT                        R34 K50 [UDim2.new]
      205 LOADN                            R35 1
      206 LOADN                            R36 0
      207 LOADN                            R37 1
      208 LOADN                            R38 0
      209 CALL                             R34 4 1
      210 SETTABLEKS                       R34 R33 K46 ["Size"]
      212 GETTABLEKS                       R34 R2 K51 ["backgroundColor"]
      214 SETTABLEKS                       R34 R33 K47 ["BackgroundColor3"]
      216 DUPTABLE                         R34 K65 [{"Layout", "HeaderContent", "Spacer", "UpsellBanner", "TrustedConnectionsBanner", "ReverificationBanner", "CollaborationSubtitleTitleView", "ScrollingFrameNew", "ScrollingFrame", "TextFrame", "upsellDialog", "FooterContent", "LoadingIndicator", "FailureText"}]
      217 MOVE                             R35 R17
      218 JUMPIFNOT                        R35 ; [+28]
      219 GETUPVAL                         R36 10
      220 GETTABLEKS                       R35 R36 K44 ["createElement"]
      222 LOADK                            R36 K66 ["UIListLayout"]
      223 DUPTABLE                         R37 K71 [{"FillDirection", "SortOrder", "HorizontalAlignment", "Padding"}]
      224 GETIMPORT                        R38 K74 [Enum.FillDirection.Vertical]
      226 SETTABLEKS                       R38 R37 K67 ["FillDirection"]
      228 GETIMPORT                        R38 K76 [Enum.SortOrder.LayoutOrder]
      230 SETTABLEKS                       R38 R37 K68 ["SortOrder"]
      232 GETIMPORT                        R38 K78 [Enum.HorizontalAlignment.Center]
      234 SETTABLEKS                       R38 R37 K69 ["HorizontalAlignment"]
      236 GETIMPORT                        R38 K80 [UDim.new]
      238 LOADN                            R39 0
      239 GETTABLEKS                       R41 R2 K81 ["permissionsView"]
      241 GETTABLEKS                       R40 R41 K70 ["Padding"]
      243 CALL                             R38 2 1
      244 SETTABLEKS                       R38 R37 K70 ["Padding"]
      246 CALL                             R35 2 1
      247 SETTABLEKS                       R35 R34 K52 ["Layout"]
      249 GETUPVAL                         R37 1
      250 GETTABLEKS                       R36 R37 K82 ["fflagRemoveHeaderWithUpsellBanner2"]
      252 NOT                              R35 R36
      253 JUMPIFNOT                        R35 ; [+74]
      254 NOT                              R35 R27
      255 JUMPIFNOT                        R35 ; [+72]
      256 GETUPVAL                         R35 7
      257 JUMPIFNOT                        R35 ; [+70]
      258 MOVE                             R35 R17
      259 JUMPIFNOT                        R35 ; [+68]
      260 GETUPVAL                         R36 10
      261 GETTABLEKS                       R35 R36 K44 ["createElement"]
      263 GETUPVAL                         R36 11
      264 DUPTABLE                         R37 K83 [{"LayoutOrder", "Size"}]
      265 NAMECALL                         R38 R24 K84 ["getNextOrder"]
      267 CALL                             R38 1 1
      268 SETTABLEKS                       R38 R37 K75 ["LayoutOrder"]
      270 GETIMPORT                        R38 K50 [UDim2.new]
      272 LOADN                            R39 1
      273 LOADN                            R40 0
      274 LOADN                            R41 0
      275 GETTABLEKS                       R43 R2 K33 ["header"]
      277 GETTABLEKS                       R42 R43 K34 ["height"]
      279 CALL                             R38 4 1
      280 SETTABLEKS                       R38 R37 K46 ["Size"]
      282 DUPTABLE                         R38 K86 [{"Header"}]
      283 GETUPVAL                         R40 12
      284 GETTABLEKS                       R39 R40 K44 ["createElement"]
      286 GETUPVAL                         R40 13
      287 DUPTABLE                         R41 K94 [{"Stylizer", "Localization", "IsTeamCreateEnabled", "HasUnsavedChanges", "HasCollaborators", "Plugin", "SaveThenTurnOnTeamCreate", "TurnOnTeamCreate", "Links", "FetchLink"}]
      288 SETTABLEKS                       R2 R41 K2 ["Stylizer"]
      290 SETTABLEKS                       R3 R41 K3 ["Localization"]
      292 SETTABLEKS                       R18 R41 K87 ["IsTeamCreateEnabled"]
      294 GETTABLEKS                       R42 R1 K88 ["HasUnsavedChanges"]
      296 SETTABLEKS                       R42 R41 K88 ["HasUnsavedChanges"]
      298 GETTABLEKS                       R42 R1 K6 ["HasCollaborators"]
      300 SETTABLEKS                       R42 R41 K6 ["HasCollaborators"]
      302 GETTABLEKS                       R42 R1 K89 ["Plugin"]
      304 SETTABLEKS                       R42 R41 K89 ["Plugin"]
      306 NEWCLOSURE                       R42 P0
      307 CAPTURE                          VAL R0
      308 SETTABLEKS                       R42 R41 K90 ["SaveThenTurnOnTeamCreate"]
      310 NEWCLOSURE                       R42 P1
      311 CAPTURE                          UPVAL U2
      312 CAPTURE                          VAL R12
      313 CAPTURE                          UPVAL U14
      314 SETTABLEKS                       R42 R41 K91 ["TurnOnTeamCreate"]
      316 GETTABLEKS                       R42 R1 K92 ["Links"]
      318 SETTABLEKS                       R42 R41 K92 ["Links"]
      320 GETTABLEKS                       R42 R1 K93 ["FetchLink"]
      322 SETTABLEKS                       R42 R41 K93 ["FetchLink"]
      324 CALL                             R39 2 1
      325 SETTABLEKS                       R39 R38 K85 ["Header"]
      327 CALL                             R35 3 1
      328 SETTABLEKS                       R35 R34 K53 ["HeaderContent"]
      330 GETUPVAL                         R36 1
      331 GETTABLEKS                       R35 R36 K82 ["fflagRemoveHeaderWithUpsellBanner2"]
      333 JUMPIFNOT                        R35 ; [+22]
      334 MOVE                             R35 R27
      335 JUMPIFNOT                        R35 ; [+20]
      336 GETUPVAL                         R36 12
      337 GETTABLEKS                       R35 R36 K44 ["createElement"]
      339 GETUPVAL                         R36 15
      340 DUPTABLE                         R37 K83 [{"LayoutOrder", "Size"}]
      341 NAMECALL                         R38 R24 K84 ["getNextOrder"]
      343 CALL                             R38 1 1
      344 SETTABLEKS                       R38 R37 K75 ["LayoutOrder"]
      346 GETIMPORT                        R38 K50 [UDim2.new]
      348 LOADN                            R39 1
      349 LOADN                            R40 0
      350 LOADN                            R41 0
      351 LOADN                            R42 10
      352 CALL                             R38 4 1
      353 SETTABLEKS                       R38 R37 K46 ["Size"]
      355 CALL                             R35 2 1
      356 SETTABLEKS                       R35 R34 K54 ["Spacer"]
      358 GETUPVAL                         R35 9
      359 JUMPIFNOT                        R35 ; [+155]
      360 MOVE                             R35 R7
      361 JUMPIFNOT                        R35 ; [+153]
      362 GETUPVAL                         R36 10
      363 GETTABLEKS                       R35 R36 K44 ["createElement"]
      365 GETUPVAL                         R36 15
      366 DUPTABLE                         R37 K97 [{"LayoutOrder", "Size", "tag", "onActivated"}]
      367 NAMECALL                         R38 R24 K84 ["getNextOrder"]
      369 CALL                             R38 1 1
      370 SETTABLEKS                       R38 R37 K75 ["LayoutOrder"]
      372 GETIMPORT                        R38 K50 [UDim2.new]
      374 LOADN                            R39 0
      375 LOADN                            R40 2
      376 LOADN                            R41 0
      377 LOADN                            R42 50
      378 CALL                             R38 4 1
      379 SETTABLEKS                       R38 R37 K46 ["Size"]
      381 LOADK                            R38 K98 ["auto-xy stroke-system-emphasis bg-over-media-300 radius-small padding-left-large"]
      382 SETTABLEKS                       R38 R37 K95 ["tag"]
      384 GETTABLEKS                       R38 R0 K99 ["launchFAEPlusVPC"]
      386 SETTABLEKS                       R38 R37 K96 ["onActivated"]
      388 NEWTABLE                         R38 4 1
      390 MOVE                             R40 R17
      391 JUMPIFNOT                        R40 ; [+28]
      392 GETUPVAL                         R41 10
      393 GETTABLEKS                       R40 R41 K44 ["createElement"]
      395 LOADK                            R41 K66 ["UIListLayout"]
      396 DUPTABLE                         R42 K101 [{"FillDirection", "VerticalAlignment", "SortOrder", "Padding"}]
      397 GETIMPORT                        R43 K103 [Enum.FillDirection.Horizontal]
      399 SETTABLEKS                       R43 R42 K67 ["FillDirection"]
      401 GETIMPORT                        R43 K104 [Enum.VerticalAlignment.Center]
      403 SETTABLEKS                       R43 R42 K100 ["VerticalAlignment"]
      405 GETIMPORT                        R43 K76 [Enum.SortOrder.LayoutOrder]
      407 SETTABLEKS                       R43 R42 K68 ["SortOrder"]
      409 GETIMPORT                        R43 K80 [UDim.new]
      411 LOADN                            R44 0
      412 GETTABLEKS                       R46 R2 K81 ["permissionsView"]
      414 GETTABLEKS                       R45 R46 K70 ["Padding"]
      416 CALL                             R43 2 1
      417 SETTABLEKS                       R43 R42 K70 ["Padding"]
      419 CALL                             R40 2 1
      420 SETTABLEKS                       R40 R38 K105 ["UpsellLayout"]
      422 GETUPVAL                         R40 12
      423 GETTABLEKS                       R39 R40 K44 ["createElement"]
      425 GETUPVAL                         R40 16
      426 DUPTABLE                         R41 K110 [{"name", "style", "LayoutOrder", "size", "variant"}]
      427 GETUPVAL                         R44 17
      428 GETTABLEKS                       R43 R44 K111 ["IconName"]
      430 GETTABLEKS                       R42 R43 K112 ["TriangleExclamation"]
      432 SETTABLEKS                       R42 R41 K106 ["name"]
      434 DUPTABLE                         R42 K115 [{"Color3", "Transparency"}]
      435 GETIMPORT                        R43 K117 [Color3.fromRGB]
      437 LOADN                            R44 51
      438 LOADN                            R45 95
      439 LOADN                            R46 255
      440 CALL                             R43 3 1
      441 SETTABLEKS                       R43 R42 K113 ["Color3"]
      443 LOADN                            R43 0
      444 SETTABLEKS                       R43 R42 K114 ["Transparency"]
      446 SETTABLEKS                       R42 R41 K107 ["style"]
      448 NAMECALL                         R42 R26 K84 ["getNextOrder"]
      450 CALL                             R42 1 1
      451 SETTABLEKS                       R42 R41 K75 ["LayoutOrder"]
      453 GETUPVAL                         R44 17
      454 GETTABLEKS                       R43 R44 K118 ["IconSize"]
      456 GETTABLEKS                       R42 R43 K119 ["Large"]
      458 SETTABLEKS                       R42 R41 K108 ["size"]
      460 GETUPVAL                         R43 18
      461 GETTABLEKS                       R42 R43 K120 ["Filled"]
      463 SETTABLEKS                       R42 R41 K109 ["variant"]
      465 CALL                             R39 2 1
      466 SETLIST                          R38 R39 1 [1]
      468 GETUPVAL                         R41 10
      469 GETTABLEKS                       R40 R41 K44 ["createElement"]
      471 GETUPVAL                         R41 19
      472 DUPTABLE                         R42 K122 [{"tag", "LayoutOrder", "Text"}]
      473 LOADK                            R43 K123 ["auto-y text-align-y-center text-align-x-left text-title-medium padding-left-large fill"]
      474 SETTABLEKS                       R43 R42 K95 ["tag"]
      476 NAMECALL                         R43 R26 K84 ["getNextOrder"]
      478 CALL                             R43 1 1
      479 SETTABLEKS                       R43 R42 K75 ["LayoutOrder"]
      481 LOADK                            R45 K39 ["UpsellBanner"]
      482 LOADK                            R46 K124 ["description"]
      483 NAMECALL                         R43 R3 K27 ["getText"]
      485 CALL                             R43 3 1
      486 SETTABLEKS                       R43 R42 K121 ["Text"]
      488 CALL                             R40 2 1
      489 SETTABLEKS                       R40 R38 K125 ["WarningText"]
      491 GETUPVAL                         R41 10
      492 GETTABLEKS                       R40 R41 K44 ["createElement"]
      494 GETUPVAL                         R41 19
      495 DUPTABLE                         R42 K122 [{"tag", "LayoutOrder", "Text"}]
      496 LOADK                            R43 K126 ["text-align-y-center text-align-x-center text-label-medium padding-right-large auto-xy"]
      497 SETTABLEKS                       R43 R42 K95 ["tag"]
      499 NAMECALL                         R43 R26 K84 ["getNextOrder"]
      501 CALL                             R43 1 1
      502 SETTABLEKS                       R43 R42 K75 ["LayoutOrder"]
      504 LOADK                            R45 K39 ["UpsellBanner"]
      505 LOADK                            R46 K127 ["CTA"]
      506 NAMECALL                         R43 R3 K27 ["getText"]
      508 CALL                             R43 3 1
      509 SETTABLEKS                       R43 R42 K121 ["Text"]
      511 CALL                             R40 2 1
      512 SETTABLEKS                       R40 R38 K128 ["GetStarted"]
      514 CALL                             R35 3 1
      515 SETTABLEKS                       R35 R34 K39 ["UpsellBanner"]
      517 GETUPVAL                         R35 0
      518 JUMPIFNOT                        R35 ; [+69]
      519 MOVE                             R35 R8
      520 JUMPIFNOT                        R35 ; [+67]
      521 GETUPVAL                         R36 12
      522 GETTABLEKS                       R35 R36 K44 ["createElement"]
      524 GETUPVAL                         R36 15
      525 DUPTABLE                         R37 K129 [{"tag"}]
      526 LOADK                            R38 K130 ["padding-x-large padding-top-large size-full-0 auto-y"]
      527 SETTABLEKS                       R38 R37 K95 ["tag"]
      529 GETUPVAL                         R39 12
      530 GETTABLEKS                       R38 R39 K44 ["createElement"]
      532 GETUPVAL                         R39 20
      533 DUPTABLE                         R40 K135 [{"variant", "severity", "title", "actions", "onClose"}]
      534 GETUPVAL                         R42 21
      535 GETTABLEKS                       R41 R42 K136 ["Standard"]
      537 SETTABLEKS                       R41 R40 K109 ["variant"]
      539 GETUPVAL                         R42 22
      540 GETTABLEKS                       R41 R42 K137 ["Info"]
      542 SETTABLEKS                       R41 R40 K131 ["severity"]
      544 LOADK                            R43 K39 ["UpsellBanner"]
      545 LOADK                            R44 K138 ["nextStepDescription"]
      546 NAMECALL                         R41 R3 K27 ["getText"]
      548 CALL                             R41 3 1
      549 SETTABLEKS                       R41 R40 K132 ["title"]
      551 NEWTABLE                         R41 0 1
      553 DUPTABLE                         R42 K140 [{"text", "variant", "onActivated"}]
      554 LOADK                            R45 K39 ["UpsellBanner"]
      555 LOADK                            R46 K127 ["CTA"]
      556 NAMECALL                         R43 R3 K27 ["getText"]
      558 CALL                             R43 3 1
      559 SETTABLEKS                       R43 R42 K139 ["text"]
      561 GETUPVAL                         R44 23
      562 GETTABLEKS                       R43 R44 K136 ["Standard"]
      564 SETTABLEKS                       R43 R42 K109 ["variant"]
      566 GETUPVAL                         R45 1
      567 GETTABLEKS                       R44 R45 K10 ["fflagUpsellCollabTrustedConnectionShowUpsellDialog"]
      569 JUMPIFNOT                        R44 ; [+4]
      570 JUMPIFNOT                        R9 ; [+3]
      571 GETTABLEKS                       R43 R0 K141 ["launchModal"]
      573 JUMP                             ; [+2]
      574 GETTABLEKS                       R43 R0 K142 ["launchCreatorHub"]
      576 SETTABLEKS                       R43 R42 K96 ["onActivated"]
      578 SETLIST                          R41 R42 1 [1]
      580 SETTABLEKS                       R41 R40 K133 ["actions"]
      582 NEWCLOSURE                       R41 P2
      583 CAPTURE                          VAL R0
      584 SETTABLEKS                       R41 R40 K134 ["onClose"]
      586 CALL                             R38 2 -1
      587 CALL                             R35 -1 1
      588 SETTABLEKS                       R35 R34 K55 ["TrustedConnectionsBanner"]
      590 GETUPVAL                         R36 1
      591 GETTABLEKS                       R35 R36 K12 ["fflagUpsellMCCollabReverification"]
      593 JUMPIFNOT                        R35 ; [+174]
      594 MOVE                             R35 R10
      595 JUMPIFNOT                        R35 ; [+172]
      596 GETUPVAL                         R36 12
      597 GETTABLEKS                       R35 R36 K44 ["createElement"]
      599 GETUPVAL                         R36 15
      600 DUPTABLE                         R37 K97 [{"LayoutOrder", "Size", "tag", "onActivated"}]
      601 NAMECALL                         R38 R24 K84 ["getNextOrder"]
      603 CALL                             R38 1 1
      604 SETTABLEKS                       R38 R37 K75 ["LayoutOrder"]
      606 GETIMPORT                        R38 K50 [UDim2.new]
      608 LOADN                            R39 0
      609 LOADN                            R40 2
      610 LOADN                            R41 0
      611 LOADN                            R42 50
      612 CALL                             R38 4 1
      613 SETTABLEKS                       R38 R37 K46 ["Size"]
      615 LOADK                            R38 K143 ["row gap-medium align-y-center stroke-system-emphasis bg-over-media-300 radius-small padding-left-large padding-right-medium"]
      616 SETTABLEKS                       R38 R37 K95 ["tag"]
      618 DUPCLOSURE                       R38 K144 [PROTO_32]
      619 CAPTURE                          UPVAL U9
      620 CAPTURE                          UPVAL U24
      621 CAPTURE                          UPVAL U25
      622 CAPTURE                          UPVAL U26
      623 CAPTURE                          UPVAL U27
      624 CAPTURE                          UPVAL U28
      625 SETTABLEKS                       R38 R37 K96 ["onActivated"]
      627 DUPTABLE                         R38 K147 [{"Icon", "WarningText", "CloseButton"}]
      628 GETUPVAL                         R40 12
      629 GETTABLEKS                       R39 R40 K44 ["createElement"]
      631 GETUPVAL                         R40 15
      632 DUPTABLE                         R41 K148 [{"LayoutOrder", "tag"}]
      633 NAMECALL                         R42 R26 K84 ["getNextOrder"]
      635 CALL                             R42 1 1
      636 SETTABLEKS                       R42 R41 K75 ["LayoutOrder"]
      638 LOADK                            R42 K149 ["auto-xy size-600-600"]
      639 SETTABLEKS                       R42 R41 K95 ["tag"]
      641 DUPTABLE                         R42 K151 [{"BackgroundCircle", "Icon"}]
      642 GETUPVAL                         R44 12
      643 GETTABLEKS                       R43 R44 K44 ["createElement"]
      645 GETUPVAL                         R44 15
      646 DUPTABLE                         R45 K153 [{"tag", "backgroundStyle"}]
      647 LOADK                            R46 K154 ["anchor-center-center position-center-center radius-circle size-500-500"]
      648 SETTABLEKS                       R46 R45 K95 ["tag"]
      650 DUPTABLE                         R46 K155 [{"Color3"}]
      651 GETIMPORT                        R47 K157 [Color3.fromHex]
      653 LOADK                            R48 K158 ["#FFFFFF"]
      654 CALL                             R47 1 1
      655 SETTABLEKS                       R47 R46 K113 ["Color3"]
      657 SETTABLEKS                       R46 R45 K152 ["backgroundStyle"]
      659 CALL                             R43 2 1
      660 SETTABLEKS                       R43 R42 K150 ["BackgroundCircle"]
      662 GETUPVAL                         R44 12
      663 GETTABLEKS                       R43 R44 K44 ["createElement"]
      665 GETUPVAL                         R44 16
      666 DUPTABLE                         R45 K159 [{"name", "style", "tag", "size", "variant"}]
      667 GETUPVAL                         R48 17
      668 GETTABLEKS                       R47 R48 K111 ["IconName"]
      670 GETTABLEKS                       R46 R47 K160 ["CircleI"]
      672 SETTABLEKS                       R46 R45 K106 ["name"]
      674 DUPTABLE                         R46 K115 [{"Color3", "Transparency"}]
      675 GETIMPORT                        R47 K117 [Color3.fromRGB]
      677 LOADN                            R48 51
      678 LOADN                            R49 95
      679 LOADN                            R50 255
      680 CALL                             R47 3 1
      681 SETTABLEKS                       R47 R46 K113 ["Color3"]
      683 LOADN                            R47 0
      684 SETTABLEKS                       R47 R46 K114 ["Transparency"]
      686 SETTABLEKS                       R46 R45 K107 ["style"]
      688 LOADK                            R46 K161 ["align-x-center align-y-center"]
      689 SETTABLEKS                       R46 R45 K95 ["tag"]
      691 GETUPVAL                         R48 17
      692 GETTABLEKS                       R47 R48 K118 ["IconSize"]
      694 GETTABLEKS                       R46 R47 K119 ["Large"]
      696 SETTABLEKS                       R46 R45 K108 ["size"]
      698 GETUPVAL                         R47 18
      699 GETTABLEKS                       R46 R47 K120 ["Filled"]
      701 SETTABLEKS                       R46 R45 K109 ["variant"]
      703 CALL                             R43 2 1
      704 SETTABLEKS                       R43 R42 K145 ["Icon"]
      706 CALL                             R39 3 1
      707 SETTABLEKS                       R39 R38 K145 ["Icon"]
      709 GETUPVAL                         R40 10
      710 GETTABLEKS                       R39 R40 K44 ["createElement"]
      712 GETUPVAL                         R40 19
      713 DUPTABLE                         R41 K163 [{"tag", "LayoutOrder", "Text", "RichText"}]
      714 LOADK                            R42 K164 ["text-align-y-center text-align-x-left text-body-medium fill"]
      715 SETTABLEKS                       R42 R41 K95 ["tag"]
      717 NAMECALL                         R42 R26 K84 ["getNextOrder"]
      719 CALL                             R42 1 1
      720 SETTABLEKS                       R42 R41 K75 ["LayoutOrder"]
      722 LOADK                            R43 K165 ["<b>%*</b> %* • %*"]
      723 MOVE                             R45 R28
      724 MOVE                             R46 R29
      725 MOVE                             R47 R30
      726 NAMECALL                         R43 R43 K166 ["format"]
      728 CALL                             R43 4 1
      729 MOVE                             R42 R43
      730 SETTABLEKS                       R42 R41 K121 ["Text"]
      732 LOADB                            R42 1
      733 SETTABLEKS                       R42 R41 K162 ["RichText"]
      735 CALL                             R39 2 1
      736 SETTABLEKS                       R39 R38 K125 ["WarningText"]
      738 GETUPVAL                         R40 12
      739 GETTABLEKS                       R39 R40 K44 ["createElement"]
      741 GETUPVAL                         R40 29
      742 DUPTABLE                         R41 K168 [{"LayoutOrder", "icon", "size", "onActivated"}]
      743 NAMECALL                         R42 R26 K84 ["getNextOrder"]
      745 CALL                             R42 1 1
      746 SETTABLEKS                       R42 R41 K75 ["LayoutOrder"]
      748 LOADK                            R42 K169 ["icons/navigation/close"]
      749 SETTABLEKS                       R42 R41 K167 ["icon"]
      751 GETUPVAL                         R45 30
      752 GETTABLEKS                       R44 R45 K170 ["Enums"]
      754 GETTABLEKS                       R43 R44 K118 ["IconSize"]
      756 GETTABLEKS                       R42 R43 K171 ["Small"]
      758 SETTABLEKS                       R42 R41 K108 ["size"]
      760 NEWCLOSURE                       R42 P4
      761 CAPTURE                          VAL R0
      762 SETTABLEKS                       R42 R41 K96 ["onActivated"]
      764 CALL                             R39 2 1
      765 SETTABLEKS                       R39 R38 K146 ["CloseButton"]
      767 CALL                             R35 3 1
      768 SETTABLEKS                       R35 R34 K56 ["ReverificationBanner"]
      770 GETUPVAL                         R35 9
      771 JUMPIFNOT                        R35 ; [+55]
      772 GETUPVAL                         R36 6
      773 CALL                             R36 0 1
      774 JUMPIF                           R36 ; [+3]
      775 GETUPVAL                         R36 0
      776 NOT                              R35 R36
      777 JUMPIFNOT                        R35 ; [+49]
      778 GETUPVAL                         R36 10
      779 GETTABLEKS                       R35 R36 K44 ["createElement"]
      781 GETUPVAL                         R36 15
      782 DUPTABLE                         R37 K172 [{"LayoutOrder", "Size", "tag"}]
      783 NAMECALL                         R38 R24 K84 ["getNextOrder"]
      785 CALL                             R38 1 1
      786 SETTABLEKS                       R38 R37 K75 ["LayoutOrder"]
      788 GETIMPORT                        R38 K50 [UDim2.new]
      790 LOADN                            R39 0
      791 LOADN                            R40 2
      792 LOADN                            R41 0
      793 LOADN                            R42 10
      794 CALL                             R38 4 1
      795 SETTABLEKS                       R38 R37 K46 ["Size"]
      797 LOADK                            R38 K173 ["auto-xy padding-top-medium"]
      798 SETTABLEKS                       R38 R37 K95 ["tag"]
      800 DUPTABLE                         R38 K175 [{"CollaborationTitle"}]
      801 GETUPVAL                         R39 31
      802 JUMPIFNOT                        R39 ; [+21]
      803 GETUPVAL                         R40 12
      804 GETTABLEKS                       R39 R40 K44 ["createElement"]
      806 GETUPVAL                         R40 19
      807 DUPTABLE                         R41 K176 [{"LayoutOrder", "tag", "Text"}]
      808 NAMECALL                         R42 R24 K84 ["getNextOrder"]
      810 CALL                             R42 1 1
      811 SETTABLEKS                       R42 R41 K75 ["LayoutOrder"]
      813 LOADK                            R42 K177 ["auto-xy text-align-x-left text-label-small"]
      814 SETTABLEKS                       R42 R41 K95 ["tag"]
      816 LOADK                            R44 K178 ["Subtitle"]
      817 LOADK                            R45 K179 ["SearchCollaborators"]
      818 NAMECALL                         R42 R3 K27 ["getText"]
      820 CALL                             R42 3 1
      821 SETTABLEKS                       R42 R41 K121 ["Text"]
      823 CALL                             R39 2 1
      824 SETTABLEKS                       R39 R38 K174 ["CollaborationTitle"]
      826 CALL                             R35 3 1
      827 SETTABLEKS                       R35 R34 K57 ["CollaborationSubtitleTitleView"]
      829 GETUPVAL                         R35 9
      830 JUMPIFNOT                        R35 ; [+130]
      831 MOVE                             R35 R17
      832 JUMPIFNOT                        R35 ; [+128]
      833 GETUPVAL                         R36 10
      834 GETTABLEKS                       R35 R36 K44 ["createElement"]
      836 GETUPVAL                         R36 32
      837 DUPTABLE                         R37 K182 [{"scroll", "layout", "tag", "LayoutOrder"}]
      838 DUPTABLE                         R38 K187 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
      839 GETUPVAL                         R40 33
      840 GETTABLEKS                       R39 R40 K188 ["Always"]
      842 SETTABLEKS                       R39 R38 K183 ["scrollBarVisibility"]
      844 GETIMPORT                        R39 K190 [Enum.ScrollingDirection.Y]
      846 SETTABLEKS                       R39 R38 K184 ["ScrollingDirection"]
      848 GETIMPORT                        R39 K192 [Enum.AutomaticSize.Y]
      850 SETTABLEKS                       R39 R38 K185 ["AutomaticCanvasSize"]
      852 GETIMPORT                        R39 K50 [UDim2.new]
      854 CALL                             R39 0 1
      855 SETTABLEKS                       R39 R38 K186 ["CanvasSize"]
      857 SETTABLEKS                       R38 R37 K180 ["scroll"]
      859 DUPTABLE                         R38 K194 [{"HorizontalAlignment", "FillDirection", "SortOrder", "HorizontalFlex"}]
      860 GETIMPORT                        R39 K196 [Enum.HorizontalAlignment.Left]
      862 SETTABLEKS                       R39 R38 K69 ["HorizontalAlignment"]
      864 GETIMPORT                        R39 K74 [Enum.FillDirection.Vertical]
      866 SETTABLEKS                       R39 R38 K67 ["FillDirection"]
      868 GETIMPORT                        R39 K76 [Enum.SortOrder.LayoutOrder]
      870 SETTABLEKS                       R39 R38 K68 ["SortOrder"]
      872 GETIMPORT                        R39 K199 [Enum.UIFlexAlignment.Fill]
      874 SETTABLEKS                       R39 R38 K193 ["HorizontalFlex"]
      876 SETTABLEKS                       R38 R37 K181 ["layout"]
      878 LOADK                            R38 K200 ["fill size-full col align-y-top gap-small"]
      879 SETTABLEKS                       R38 R37 K95 ["tag"]
      881 NAMECALL                         R38 R24 K84 ["getNextOrder"]
      883 CALL                             R38 1 1
      884 SETTABLEKS                       R38 R37 K75 ["LayoutOrder"]
      886 DUPTABLE                         R38 K204 [{"SearchBarWidget", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
      887 MOVE                             R39 R16
      888 JUMPIFNOT                        R39 ; [+19]
      889 GETUPVAL                         R40 10
      890 GETTABLEKS                       R39 R40 K44 ["createElement"]
      892 GETUPVAL                         R40 34
      893 DUPTABLE                         R41 K207 [{"LayoutOrder", "Writable", "IsGroupGame"}]
      894 NAMECALL                         R42 R25 K84 ["getNextOrder"]
      896 CALL                             R42 1 1
      897 SETTABLEKS                       R42 R41 K75 ["LayoutOrder"]
      899 LOADB                            R42 1
      900 SETTABLEKS                       R42 R41 K205 ["Writable"]
      902 NAMECALL                         R42 R0 K208 ["isGroupGame"]
      904 CALL                             R42 1 1
      905 SETTABLEKS                       R42 R41 K206 ["IsGroupGame"]
      907 CALL                             R39 2 1
      908 SETTABLEKS                       R39 R38 K201 ["SearchBarWidget"]
      910 GETUPVAL                         R40 10
      911 GETTABLEKS                       R39 R40 K44 ["createElement"]
      913 GETUPVAL                         R40 35
      914 DUPTABLE                         R41 K209 [{"LayoutOrder"}]
      915 NAMECALL                         R42 R25 K84 ["getNextOrder"]
      917 CALL                             R42 1 1
      918 SETTABLEKS                       R42 R41 K75 ["LayoutOrder"]
      920 CALL                             R39 2 1
      921 SETTABLEKS                       R39 R38 K202 ["CollaboratorFilterWidget"]
      923 NOT                              R39 R16
      924 JUMPIFNOT                        R39 ; [+9]
      925 GETUPVAL                         R40 10
      926 GETTABLEKS                       R39 R40 K44 ["createElement"]
      928 LOADK                            R40 K45 ["Frame"]
      929 DUPTABLE                         R41 K211 [{"BackgroundTransparency"}]
      930 LOADN                            R42 1
      931 SETTABLEKS                       R42 R41 K210 ["BackgroundTransparency"]
      933 CALL                             R39 2 1
      934 SETTABLEKS                       R39 R38 K45 ["Frame"]
      936 GETUPVAL                         R40 10
      937 GETTABLEKS                       R39 R40 K44 ["createElement"]
      939 GETUPVAL                         R40 36
      940 DUPTABLE                         R41 K207 [{"LayoutOrder", "Writable", "IsGroupGame"}]
      941 NAMECALL                         R42 R25 K84 ["getNextOrder"]
      943 CALL                             R42 1 1
      944 SETTABLEKS                       R42 R41 K75 ["LayoutOrder"]
      946 SETTABLEKS                       R16 R41 K205 ["Writable"]
      948 GETUPVAL                         R43 37
      949 JUMPIFNOT                        R43 ; [+4]
      950 NAMECALL                         R42 R0 K208 ["isGroupGame"]
      952 CALL                             R42 1 1
      953 JUMP                             ; [+1]
      954 LOADNIL                          R42
      955 SETTABLEKS                       R42 R41 K206 ["IsGroupGame"]
      957 CALL                             R39 2 1
      958 SETTABLEKS                       R39 R38 K203 ["CollaboratorsWidget"]
      960 CALL                             R35 3 1
      961 SETTABLEKS                       R35 R34 K58 ["ScrollingFrameNew"]
      963 GETUPVAL                         R36 9
      964 NOT                              R35 R36
      965 JUMPIFNOT                        R35 ; [+120]
      966 MOVE                             R35 R17
      967 JUMPIFNOT                        R35 ; [+118]
      968 GETUPVAL                         R36 10
      969 GETTABLEKS                       R35 R36 K44 ["createElement"]
      971 GETUPVAL                         R36 38
      972 DUPTABLE                         R37 K213 [{"LayoutOrder", "Size", "Layout", "AutomaticCanvasSize", "Spacing"}]
      973 NAMECALL                         R38 R24 K84 ["getNextOrder"]
      975 CALL                             R38 1 1
      976 SETTABLEKS                       R38 R37 K75 ["LayoutOrder"]
      978 GETIMPORT                        R38 K50 [UDim2.new]
      980 LOADN                            R39 1
      981 LOADN                            R40 0
      982 LOADN                            R41 1
      983 MINUS                            R42 R23
      984 CALL                             R38 4 1
      985 SETTABLEKS                       R38 R37 K46 ["Size"]
      987 GETIMPORT                        R38 K74 [Enum.FillDirection.Vertical]
      989 SETTABLEKS                       R38 R37 K52 ["Layout"]
      991 GETIMPORT                        R38 K192 [Enum.AutomaticSize.Y]
      993 SETTABLEKS                       R38 R37 K185 ["AutomaticCanvasSize"]
      995 GETIMPORT                        R38 K80 [UDim.new]
      997 LOADN                            R39 0
      998 JUMPIFNOT                        R16 ; [+5]
      999 GETTABLEKS                       R41 R2 K214 ["scrollingFrame"]
     1001 GETTABLEKS                       R40 R41 K215 ["yPadding"]
     1003 JUMP                             ; [+4]
     1004 GETTABLEKS                       R41 R2 K214 ["scrollingFrame"]
     1006 GETTABLEKS                       R40 R41 K216 ["yPaddingNonOwner"]
     1008 CALL                             R38 2 1
     1009 SETTABLEKS                       R38 R37 K212 ["Spacing"]
     1011 DUPTABLE                         R38 K204 [{"SearchBarWidget", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
     1012 MOVE                             R39 R16
     1013 JUMPIFNOT                        R39 ; [+19]
     1014 GETUPVAL                         R40 10
     1015 GETTABLEKS                       R39 R40 K44 ["createElement"]
     1017 GETUPVAL                         R40 34
     1018 DUPTABLE                         R41 K207 [{"LayoutOrder", "Writable", "IsGroupGame"}]
     1019 NAMECALL                         R42 R25 K84 ["getNextOrder"]
     1021 CALL                             R42 1 1
     1022 SETTABLEKS                       R42 R41 K75 ["LayoutOrder"]
     1024 LOADB                            R42 1
     1025 SETTABLEKS                       R42 R41 K205 ["Writable"]
     1027 NAMECALL                         R42 R0 K208 ["isGroupGame"]
     1029 CALL                             R42 1 1
     1030 SETTABLEKS                       R42 R41 K206 ["IsGroupGame"]
     1032 CALL                             R39 2 1
     1033 SETTABLEKS                       R39 R38 K201 ["SearchBarWidget"]
     1035 GETUPVAL                         R40 10
     1036 GETTABLEKS                       R39 R40 K44 ["createElement"]
     1038 GETUPVAL                         R40 35
     1039 DUPTABLE                         R41 K209 [{"LayoutOrder"}]
     1040 NAMECALL                         R42 R25 K84 ["getNextOrder"]
     1042 CALL                             R42 1 1
     1043 SETTABLEKS                       R42 R41 K75 ["LayoutOrder"]
     1045 CALL                             R39 2 1
     1046 SETTABLEKS                       R39 R38 K202 ["CollaboratorFilterWidget"]
     1048 NOT                              R39 R16
     1049 JUMPIFNOT                        R39 ; [+9]
     1050 GETUPVAL                         R40 10
     1051 GETTABLEKS                       R39 R40 K44 ["createElement"]
     1053 LOADK                            R40 K45 ["Frame"]
     1054 DUPTABLE                         R41 K211 [{"BackgroundTransparency"}]
     1055 LOADN                            R42 1
     1056 SETTABLEKS                       R42 R41 K210 ["BackgroundTransparency"]
     1058 CALL                             R39 2 1
     1059 SETTABLEKS                       R39 R38 K45 ["Frame"]
     1061 GETUPVAL                         R40 10
     1062 GETTABLEKS                       R39 R40 K44 ["createElement"]
     1064 GETUPVAL                         R40 36
     1065 DUPTABLE                         R41 K207 [{"LayoutOrder", "Writable", "IsGroupGame"}]
     1066 NAMECALL                         R42 R25 K84 ["getNextOrder"]
     1068 CALL                             R42 1 1
     1069 SETTABLEKS                       R42 R41 K75 ["LayoutOrder"]
     1071 SETTABLEKS                       R16 R41 K205 ["Writable"]
     1073 GETUPVAL                         R43 37
     1074 JUMPIFNOT                        R43 ; [+4]
     1075 NAMECALL                         R42 R0 K208 ["isGroupGame"]
     1077 CALL                             R42 1 1
     1078 JUMP                             ; [+1]
     1079 LOADNIL                          R42
     1080 SETTABLEKS                       R42 R41 K206 ["IsGroupGame"]
     1082 CALL                             R39 2 1
     1083 SETTABLEKS                       R39 R38 K203 ["CollaboratorsWidget"]
     1085 CALL                             R35 3 1
     1086 SETTABLEKS                       R35 R34 K59 ["ScrollingFrame"]
     1088 JUMPIFNOT                        R19 ; [+90]
     1089 GETUPVAL                         R36 10
     1090 GETTABLEKS                       R35 R36 K44 ["createElement"]
     1092 LOADK                            R36 K45 ["Frame"]
     1093 DUPTABLE                         R37 K218 [{"BackgroundTransparency", "BackgroundColor3", "LayoutOrder", "Size", "BorderSizePixel"}]
     1094 LOADN                            R38 1
     1095 SETTABLEKS                       R38 R37 K210 ["BackgroundTransparency"]
     1097 GETTABLEKS                       R38 R2 K51 ["backgroundColor"]
     1099 SETTABLEKS                       R38 R37 K47 ["BackgroundColor3"]
     1101 NAMECALL                         R38 R24 K84 ["getNextOrder"]
     1103 CALL                             R38 1 1
     1104 SETTABLEKS                       R38 R37 K75 ["LayoutOrder"]
     1106 GETIMPORT                        R38 K50 [UDim2.new]
     1108 LOADN                            R39 1
     1109 LOADN                            R40 0
     1110 LOADN                            R41 0
     1111 GETTABLEKS                       R43 R2 K36 ["saveMessage"]
     1113 GETTABLEKS                       R42 R43 K37 ["boxHeight"]
     1115 CALL                             R38 4 1
     1116 SETTABLEKS                       R38 R37 K46 ["Size"]
     1118 LOADN                            R38 0
     1119 SETTABLEKS                       R38 R37 K217 ["BorderSizePixel"]
     1121 DUPTABLE                         R38 K219 [{"Text"}]
     1122 GETUPVAL                         R40 10
     1123 GETTABLEKS                       R39 R40 K44 ["createElement"]
     1125 LOADK                            R40 K220 ["TextLabel"]
     1126 GETUPVAL                         R43 39
     1127 GETTABLEKS                       R42 R43 K221 ["Dictionary"]
     1129 GETTABLEKS                       R41 R42 K222 ["join"]
     1131 GETTABLEKS                       R43 R2 K36 ["saveMessage"]
     1133 GETTABLEKS                       R42 R43 K223 ["textStyle"]
     1135 DUPTABLE                         R43 K228 [{"AnchorPoint", "Position", "Text", "TextXAlignment", "BorderSizePixel", "TextWrapped", "Size", "BackgroundTransparency"}]
     1136 GETIMPORT                        R44 K230 [Vector2.new]
     1138 LOADN                            R45 0
     1139 LOADK                            R46 K231 [0.5]
     1140 CALL                             R44 2 1
     1141 SETTABLEKS                       R44 R43 K224 ["AnchorPoint"]
     1143 GETTABLEKS                       R45 R2 K36 ["saveMessage"]
     1145 GETTABLEKS                       R44 R45 K232 ["InnerTextPosition"]
     1147 SETTABLEKS                       R44 R43 K225 ["Position"]
     1149 SETTABLEKS                       R21 R43 K121 ["Text"]
     1151 GETIMPORT                        R44 K233 [Enum.TextXAlignment.Left]
     1153 SETTABLEKS                       R44 R43 K226 ["TextXAlignment"]
     1155 LOADN                            R44 0
     1156 SETTABLEKS                       R44 R43 K217 ["BorderSizePixel"]
     1158 LOADB                            R44 1
     1159 SETTABLEKS                       R44 R43 K227 ["TextWrapped"]
     1161 GETIMPORT                        R44 K50 [UDim2.new]
     1163 LOADK                            R45 K234 [0.55]
     1164 LOADN                            R46 0
     1165 LOADN                            R47 1
     1166 LOADN                            R48 0
     1167 CALL                             R44 4 1
     1168 SETTABLEKS                       R44 R43 K46 ["Size"]
     1170 LOADN                            R44 1
     1171 SETTABLEKS                       R44 R43 K210 ["BackgroundTransparency"]
     1173 CALL                             R41 2 -1
     1174 CALL                             R39 -1 1
     1175 SETTABLEKS                       R39 R38 K121 ["Text"]
     1177 CALL                             R35 3 1
     1178 JUMP                             ; [+1]
     1179 LOADNIL                          R35
     1180 SETTABLEKS                       R35 R34 K60 ["TextFrame"]
     1182 GETUPVAL                         R35 0
     1183 JUMPIFNOT                        R35 ; [+15]
     1184 GETTABLEKS                       R36 R0 K7 ["state"]
     1186 GETTABLEKS                       R35 R36 K235 ["upsellDialogEnabled"]
     1188 JUMPIFNOT                        R35 ; [+10]
     1189 GETUPVAL                         R36 12
     1190 GETTABLEKS                       R35 R36 K44 ["createElement"]
     1192 GETUPVAL                         R36 40
     1193 DUPTABLE                         R37 K236 [{"onClose"}]
     1194 NEWCLOSURE                       R38 P5
     1195 CAPTURE                          VAL R0
     1196 SETTABLEKS                       R38 R37 K134 ["onClose"]
     1198 CALL                             R35 2 1
     1199 SETTABLEKS                       R35 R34 K61 ["upsellDialog"]
     1201 MOVE                             R35 R17
     1202 JUMPIFNOT                        R35 ; [+42]
     1203 GETUPVAL                         R36 10
     1204 GETTABLEKS                       R35 R36 K44 ["createElement"]
     1206 GETUPVAL                         R36 11
     1207 DUPTABLE                         R37 K83 [{"LayoutOrder", "Size"}]
     1208 NAMECALL                         R38 R24 K84 ["getNextOrder"]
     1210 CALL                             R38 1 1
     1211 SETTABLEKS                       R38 R37 K75 ["LayoutOrder"]
     1213 GETIMPORT                        R38 K50 [UDim2.new]
     1215 LOADN                            R39 1
     1216 LOADN                            R40 0
     1217 LOADN                            R41 0
     1218 GETTABLEKS                       R43 R2 K35 ["footer"]
     1220 GETTABLEKS                       R42 R43 K34 ["height"]
     1222 CALL                             R38 4 1
     1223 SETTABLEKS                       R38 R37 K46 ["Size"]
     1225 DUPTABLE                         R38 K238 [{"Footer"}]
     1226 GETUPVAL                         R40 10
     1227 GETTABLEKS                       R39 R40 K44 ["createElement"]
     1229 GETUPVAL                         R40 41
     1230 DUPTABLE                         R41 K241 [{"IsTeamCreateEnabled", "OnSavePressed", "OnCancelPressed"}]
     1231 SETTABLEKS                       R18 R41 K87 ["IsTeamCreateEnabled"]
     1233 NEWCLOSURE                       R42 P6
     1234 CAPTURE                          VAL R0
     1235 SETTABLEKS                       R42 R41 K239 ["OnSavePressed"]
     1237 NEWCLOSURE                       R42 P7
     1238 CAPTURE                          VAL R0
     1239 SETTABLEKS                       R42 R41 K240 ["OnCancelPressed"]
     1241 CALL                             R39 2 1
     1242 SETTABLEKS                       R39 R38 K237 ["Footer"]
     1244 CALL                             R35 3 1
     1245 SETTABLEKS                       R35 R34 K62 ["FooterContent"]
     1247 NOT                              R35 R13
     1248 JUMPIFNOT                        R35 ; [+22]
     1249 NOT                              R35 R14
     1250 JUMPIFNOT                        R35 ; [+20]
     1251 GETUPVAL                         R36 10
     1252 GETTABLEKS                       R35 R36 K44 ["createElement"]
     1254 GETUPVAL                         R36 42
     1255 DUPTABLE                         R37 K242 [{"AnchorPoint", "Position"}]
     1256 GETIMPORT                        R38 K230 [Vector2.new]
     1258 LOADK                            R39 K231 [0.5]
     1259 LOADK                            R40 K231 [0.5]
     1260 CALL                             R38 2 1
     1261 SETTABLEKS                       R38 R37 K224 ["AnchorPoint"]
     1263 GETIMPORT                        R38 K244 [UDim2.fromScale]
     1265 LOADK                            R39 K231 [0.5]
     1266 LOADK                            R40 K231 [0.5]
     1267 CALL                             R38 2 1
     1268 SETTABLEKS                       R38 R37 K225 ["Position"]
     1270 CALL                             R35 2 1
     1271 SETTABLEKS                       R35 R34 K63 ["LoadingIndicator"]
     1273 MOVE                             R35 R14
     1274 JUMPIFNOT                        R35 ; [+46]
     1275 GETUPVAL                         R36 10
     1276 GETTABLEKS                       R35 R36 K44 ["createElement"]
     1278 LOADK                            R36 K220 ["TextLabel"]
     1279 DUPTABLE                         R37 K248 [{"Text", "AnchorPoint", "Position", "TextColor3", "TextSize", "Font"}]
     1280 SETTABLEKS                       R15 R37 K121 ["Text"]
     1282 GETIMPORT                        R38 K230 [Vector2.new]
     1284 LOADK                            R39 K231 [0.5]
     1285 LOADK                            R40 K231 [0.5]
     1286 CALL                             R38 2 1
     1287 SETTABLEKS                       R38 R37 K224 ["AnchorPoint"]
     1289 GETIMPORT                        R38 K244 [UDim2.fromScale]
     1291 LOADK                            R39 K231 [0.5]
     1292 LOADK                            R40 K249 [0.25]
     1293 CALL                             R38 2 1
     1294 SETTABLEKS                       R38 R37 K225 ["Position"]
     1296 GETTABLEKS                       R40 R2 K250 ["fontStyle"]
     1298 GETTABLEKS                       R39 R40 K251 ["Normal"]
     1300 GETTABLEKS                       R38 R39 K245 ["TextColor3"]
     1302 SETTABLEKS                       R38 R37 K245 ["TextColor3"]
     1304 GETTABLEKS                       R40 R2 K250 ["fontStyle"]
     1306 GETTABLEKS                       R39 R40 K251 ["Normal"]
     1308 GETTABLEKS                       R38 R39 K246 ["TextSize"]
     1310 SETTABLEKS                       R38 R37 K246 ["TextSize"]
     1312 GETTABLEKS                       R40 R2 K250 ["fontStyle"]
     1314 GETTABLEKS                       R39 R40 K251 ["Normal"]
     1316 GETTABLEKS                       R38 R39 K247 ["Font"]
     1318 SETTABLEKS                       R38 R37 K247 ["Font"]
     1320 CALL                             R35 2 1
     1321 SETTABLEKS                       R35 R34 K64 ["FailureText"]
     1323 CALL                             R31 3 -1
     1324 RETURN                           R31 -1

PROTO_38:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 DUPTABLE                         R3 K11 [{"LoadState", "SaveState", "OwnerId", "OwnerType", "GroupOwnerUserId", "HasCollaborators", "HasCurrentEditCollaborators", "HasNewEditCollaborators", "GroupRolePermissions", "Is17PlusGame", "HasUnsavedChanges"}]
        4 GETTABLEKS                       R5 R0 K0 ["LoadState"]
        6 GETTABLEKS                       R4 R5 K12 ["CurrentLoadState"]
        8 JUMPIF                           R4 ; [+3]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K13 ["Unloaded"]
       12 SETTABLEKS                       R4 R3 K0 ["LoadState"]
       14 GETTABLEKS                       R5 R0 K1 ["SaveState"]
       16 GETTABLEKS                       R4 R5 K14 ["CurrentSaveState"]
       18 JUMPIF                           R4 ; [+3]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K15 ["Unsaved"]
       22 SETTABLEKS                       R4 R3 K1 ["SaveState"]
       24 GETTABLEKS                       R5 R0 K16 ["GameOwnerMetadata"]
       26 GETTABLEKS                       R4 R5 K17 ["creatorId"]
       28 SETTABLEKS                       R4 R3 K2 ["OwnerId"]
       30 GETTABLEKS                       R5 R0 K16 ["GameOwnerMetadata"]
       32 GETTABLEKS                       R4 R5 K18 ["creatorType"]
       34 SETTABLEKS                       R4 R3 K3 ["OwnerType"]
       36 GETTABLEKS                       R5 R0 K16 ["GameOwnerMetadata"]
       38 GETTABLEKS                       R4 R5 K19 ["groupOwnerId"]
       40 SETTABLEKS                       R4 R3 K4 ["GroupOwnerUserId"]
       42 GETUPVAL                         R4 3
       43 MOVE                             R5 R0
       44 CALL                             R4 1 1
       45 SETTABLEKS                       R4 R3 K5 ["HasCollaborators"]
       47 GETUPVAL                         R4 4
       48 MOVE                             R5 R0
       49 CALL                             R4 1 1
       50 SETTABLEKS                       R4 R3 K6 ["HasCurrentEditCollaborators"]
       52 GETUPVAL                         R6 5
       53 GETTABLEKS                       R5 R6 K20 ["fflagManageCollaboratorsVerifyAgeDialog"]
       55 JUMPIFNOT                        R5 ; [+4]
       56 GETUPVAL                         R4 6
       57 MOVE                             R5 R0
       58 CALL                             R4 1 1
       59 JUMP                             ; [+1]
       60 LOADNIL                          R4
       61 SETTABLEKS                       R4 R3 K7 ["HasNewEditCollaborators"]
       63 GETTABLEKS                       R5 R0 K8 ["GroupRolePermissions"]
       65 GETTABLEKS                       R4 R5 K21 ["PermissionsByRole"]
       67 SETTABLEKS                       R4 R3 K8 ["GroupRolePermissions"]
       69 GETUPVAL                         R5 7
       70 JUMPIFNOT                        R5 ; [+4]
       71 GETUPVAL                         R4 8
       72 MOVE                             R5 R0
       73 CALL                             R4 1 1
       74 JUMP                             ; [+1]
       75 LOADNIL                          R4
       76 SETTABLEKS                       R4 R3 K9 ["Is17PlusGame"]
       78 SETTABLEKS                       R2 R3 K10 ["HasUnsavedChanges"]
       80 RETURN                           R3 1

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["LoadPermissions"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_40:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_41:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_42:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_43:
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
       44 GETIMPORT                        R10 K14 [script]
       46 GETTABLEKS                       R9 R10 K15 ["Parent"]
       48 GETTABLEKS                       R8 R9 K15 ["Parent"]
       50 GETTABLEKS                       R7 R8 K15 ["Parent"]
       52 GETIMPORT                        R8 K17 [require]
       54 GETTABLEKS                       R10 R7 K18 ["Packages"]
       56 GETTABLEKS                       R9 R10 K19 ["Roact"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K17 [require]
       61 GETTABLEKS                       R11 R7 K18 ["Packages"]
       63 GETTABLEKS                       R10 R11 K20 ["RoactRodux"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K17 [require]
       68 GETTABLEKS                       R12 R7 K18 ["Packages"]
       70 GETTABLEKS                       R11 R12 K21 ["Cryo"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K17 [require]
       75 GETTABLEKS                       R13 R7 K22 ["Bin"]
       77 GETTABLEKS                       R12 R13 K23 ["defineLuaFlags"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K17 [require]
       82 GETTABLEKS                       R14 R7 K18 ["Packages"]
       84 GETTABLEKS                       R13 R14 K24 ["Framework"]
       86 CALL                             R12 1 1
       87 GETTABLEKS                       R13 R12 K25 ["ContextServices"]
       89 GETTABLEKS                       R14 R13 K26 ["withContext"]
       91 GETTABLEKS                       R16 R12 K27 ["Style"]
       93 GETTABLEKS                       R15 R16 K28 ["Stylizer"]
       95 GETTABLEKS                       R16 R13 K29 ["Localization"]
       97 GETTABLEKS                       R17 R12 K30 ["UI"]
       99 GETTABLEKS                       R18 R17 K31 ["ScrollingFrame"]
      101 GETTABLEKS                       R19 R17 K32 ["Container"]
      103 GETTABLEKS                       R20 R17 K33 ["LoadingIndicator"]
      105 GETTABLEKS                       R21 R17 K34 ["StyledDialog"]
      107 GETIMPORT                        R22 K17 [require]
      109 GETTABLEKS                       R24 R7 K18 ["Packages"]
      111 GETTABLEKS                       R23 R24 K35 ["Foundation"]
      113 CALL                             R22 1 1
      114 GETTABLEKS                       R23 R22 K36 ["Text"]
      116 GETTABLEKS                       R24 R22 K37 ["ScrollView"]
      118 GETTABLEKS                       R26 R22 K38 ["Enums"]
      120 GETTABLEKS                       R25 R26 K39 ["ScrollBarVisibility"]
      122 GETTABLEKS                       R26 R22 K38 ["Enums"]
      124 GETTABLEKS                       R27 R22 K40 ["Icon"]
      126 GETTABLEKS                       R28 R22 K41 ["IconButton"]
      128 GETTABLEKS                       R30 R22 K38 ["Enums"]
      130 GETTABLEKS                       R29 R30 K42 ["IconVariant"]
      132 GETTABLEKS                       R30 R22 K43 ["SystemBanner"]
      134 GETTABLEKS                       R32 R22 K38 ["Enums"]
      136 GETTABLEKS                       R31 R32 K44 ["AlertVariant"]
      138 GETTABLEKS                       R33 R22 K38 ["Enums"]
      140 GETTABLEKS                       R32 R33 K45 ["AlertSeverity"]
      142 GETTABLEKS                       R34 R22 K38 ["Enums"]
      144 GETTABLEKS                       R33 R34 K46 ["ButtonVariant"]
      146 GETIMPORT                        R34 K17 [require]
      148 GETTABLEKS                       R37 R7 K47 ["Src"]
      150 GETTABLEKS                       R36 R37 K48 ["Util"]
      152 GETTABLEKS                       R35 R36 K49 ["ShowDialog"]
      154 CALL                             R34 1 1
      155 GETIMPORT                        R35 K17 [require]
      157 GETTABLEKS                       R38 R7 K47 ["Src"]
      159 GETTABLEKS                       R37 R38 K50 ["Components"]
      161 GETTABLEKS                       R36 R37 K51 ["CollaboratorsWidget"]
      163 CALL                             R35 1 1
      164 GETIMPORT                        R36 K17 [require]
      166 GETTABLEKS                       R39 R7 K47 ["Src"]
      168 GETTABLEKS                       R38 R39 K50 ["Components"]
      170 GETTABLEKS                       R37 R38 K52 ["CollaboratorSearchWidget"]
      172 CALL                             R36 1 1
      173 GETIMPORT                        R37 K17 [require]
      175 GETTABLEKS                       R40 R7 K47 ["Src"]
      177 GETTABLEKS                       R39 R40 K50 ["Components"]
      179 GETTABLEKS                       R38 R39 K53 ["CollaboratorFilterWidget"]
      181 CALL                             R37 1 1
      182 GETIMPORT                        R38 K17 [require]
      184 GETTABLEKS                       R41 R7 K47 ["Src"]
      186 GETTABLEKS                       R40 R41 K50 ["Components"]
      188 GETTABLEKS                       R39 R40 K54 ["Footer"]
      190 CALL                             R38 1 1
      191 GETIMPORT                        R39 K17 [require]
      193 GETTABLEKS                       R42 R7 K47 ["Src"]
      195 GETTABLEKS                       R41 R42 K55 ["Thunks"]
      197 GETTABLEKS                       R40 R41 K56 ["SavePermissions"]
      199 CALL                             R39 1 1
      200 GETIMPORT                        R40 K17 [require]
      202 GETTABLEKS                       R43 R7 K47 ["Src"]
      204 GETTABLEKS                       R42 R43 K55 ["Thunks"]
      206 GETTABLEKS                       R41 R42 K57 ["PermissionsLoader"]
      208 CALL                             R40 1 1
      209 LOADNIL                          R41
      210 GETIMPORT                        R42 K1 [game]
      212 LOADK                            R44 K58 ["Collab8766_LogCollabSearchItemClickedEventV4"]
      213 NAMECALL                         R42 R42 K3 ["GetFastFlag"]
      215 CALL                             R42 2 1
      216 GETIMPORT                        R43 K1 [game]
      218 LOADK                            R45 K59 ["UpsellCollabSafety2"]
      219 NAMECALL                         R43 R43 K3 ["GetFastFlag"]
      221 CALL                             R43 2 1
      222 JUMPIFNOT                        R42 ; [+10]
      223 GETIMPORT                        R44 K17 [require]
      225 GETTABLEKS                       R47 R7 K47 ["Src"]
      227 GETTABLEKS                       R46 R47 K55 ["Thunks"]
      229 GETTABLEKS                       R45 R46 K60 ["SendAllSearchItemLogs"]
      231 CALL                             R44 1 1
      232 MOVE                             R41 R44
      233 GETIMPORT                        R44 K1 [game]
      235 LOADK                            R46 K61 ["UpsellCollabTrustedConnection2"]
      236 NAMECALL                         R44 R44 K3 ["GetFastFlag"]
      238 CALL                             R44 2 1
      239 GETIMPORT                        R45 K17 [require]
      241 GETTABLEKS                       R49 R7 K47 ["Src"]
      243 GETTABLEKS                       R48 R49 K62 ["Networking"]
      245 GETTABLEKS                       R47 R48 K63 ["Requests"]
      247 GETTABLEKS                       R46 R47 K64 ["GetAMPRequest"]
      249 CALL                             R45 1 1
      250 GETIMPORT                        R46 K17 [require]
      252 GETTABLEKS                       R50 R7 K47 ["Src"]
      254 GETTABLEKS                       R49 R50 K62 ["Networking"]
      256 GETTABLEKS                       R48 R49 K63 ["Requests"]
      258 GETTABLEKS                       R47 R48 K65 ["GetCanCollaborate"]
      260 CALL                             R46 1 1
      261 GETIMPORT                        R47 K17 [require]
      263 GETTABLEKS                       R50 R7 K47 ["Src"]
      265 GETTABLEKS                       R49 R50 K48 ["Util"]
      267 GETTABLEKS                       R48 R49 K66 ["IsLikelyCollaboratorPrefetchEnabled"]
      269 CALL                             R47 1 1
      270 MOVE                             R48 R47
      271 CALL                             R48 0 1
      272 LOADNIL                          R49
      273 LOADNIL                          R50
      274 JUMPIFNOT                        R48 ; [+20]
      275 GETIMPORT                        R51 K17 [require]
      277 GETTABLEKS                       R54 R7 K47 ["Src"]
      279 GETTABLEKS                       R53 R54 K55 ["Thunks"]
      281 GETTABLEKS                       R52 R53 K67 ["PrefetchLikelyCollaborators"]
      283 CALL                             R51 1 1
      284 MOVE                             R49 R51
      285 GETIMPORT                        R51 K17 [require]
      287 GETTABLEKS                       R54 R7 K47 ["Src"]
      289 GETTABLEKS                       R53 R54 K68 ["Selectors"]
      291 GETTABLEKS                       R52 R53 K69 ["IsGame17Plus"]
      293 CALL                             R51 1 1
      294 MOVE                             R50 R51
      295 GETIMPORT                        R51 K17 [require]
      297 GETTABLEKS                       R54 R7 K47 ["Src"]
      299 GETTABLEKS                       R53 R54 K48 ["Util"]
      301 GETTABLEKS                       R52 R53 K70 ["LoadState"]
      303 CALL                             R51 1 1
      304 GETIMPORT                        R52 K17 [require]
      306 GETTABLEKS                       R55 R7 K47 ["Src"]
      308 GETTABLEKS                       R54 R55 K48 ["Util"]
      310 GETTABLEKS                       R53 R54 K71 ["SaveState"]
      312 CALL                             R52 1 1
      313 GETIMPORT                        R53 K17 [require]
      315 GETTABLEKS                       R56 R7 K47 ["Src"]
      317 GETTABLEKS                       R55 R56 K68 ["Selectors"]
      319 GETTABLEKS                       R54 R55 K72 ["GetHasCollaborators"]
      321 CALL                             R53 1 1
      322 GETIMPORT                        R54 K17 [require]
      324 GETTABLEKS                       R57 R7 K47 ["Src"]
      326 GETTABLEKS                       R56 R57 K68 ["Selectors"]
      328 GETTABLEKS                       R55 R56 K73 ["GetHasNewEditCollaborators"]
      330 CALL                             R54 1 1
      331 GETIMPORT                        R55 K17 [require]
      333 GETTABLEKS                       R58 R7 K47 ["Src"]
      335 GETTABLEKS                       R57 R58 K68 ["Selectors"]
      337 GETTABLEKS                       R56 R57 K74 ["GetHasCurrentEditCollaborators"]
      339 CALL                             R55 1 1
      340 GETIMPORT                        R56 K17 [require]
      342 GETTABLEKS                       R59 R7 K47 ["Src"]
      344 GETTABLEKS                       R58 R59 K68 ["Selectors"]
      346 GETTABLEKS                       R57 R58 K75 ["GetHasUnsavedChanges"]
      348 CALL                             R56 1 1
      349 GETIMPORT                        R57 K17 [require]
      351 GETTABLEKS                       R60 R7 K47 ["Src"]
      353 GETTABLEKS                       R59 R60 K48 ["Util"]
      355 GETTABLEKS                       R58 R59 K76 ["IsTeamCreateEnabled"]
      357 CALL                             R57 1 1
      358 GETTABLEKS                       R58 R12 K48 ["Util"]
      360 GETTABLEKS                       R59 R58 K77 ["LayoutOrderIterator"]
      362 GETIMPORT                        R60 K17 [require]
      364 GETTABLEKS                       R63 R7 K47 ["Src"]
      366 GETTABLEKS                       R62 R63 K48 ["Util"]
      368 GETTABLEKS                       R61 R62 K78 ["Analytics"]
      370 CALL                             R60 1 1
      371 OR                               R61 R2 R1
      372 GETTABLEKS                       R62 R22 K79 ["View"]
      374 GETIMPORT                        R63 K17 [require]
      376 GETTABLEKS                       R65 R7 K18 ["Packages"]
      378 GETTABLEKS                       R64 R65 K80 ["React"]
      380 CALL                             R63 1 1
      381 GETIMPORT                        R64 K17 [require]
      383 GETTABLEKS                       R67 R7 K47 ["Src"]
      385 GETTABLEKS                       R66 R67 K50 ["Components"]
      387 GETTABLEKS                       R65 R66 K81 ["Header"]
      389 CALL                             R64 1 1
      390 GETTABLEKS                       R65 R8 K82 ["PureComponent"]
      392 LOADK                            R67 K83 ["PermissionsView"]
      393 NAMECALL                         R65 R65 K84 ["extend"]
      395 CALL                             R65 2 1
      396 GETIMPORT                        R66 K17 [require]
      398 GETTABLEKS                       R70 R7 K47 ["Src"]
      400 GETTABLEKS                       R69 R70 K48 ["Util"]
      402 GETTABLEKS                       R68 R69 K85 ["Telemetry"]
      404 GETTABLEKS                       R67 R68 K86 ["CTAClickedEvent"]
      406 CALL                             R66 1 1
      407 GETIMPORT                        R67 K17 [require]
      409 GETTABLEKS                       R71 R7 K47 ["Src"]
      411 GETTABLEKS                       R70 R71 K48 ["Util"]
      413 GETTABLEKS                       R69 R70 K85 ["Telemetry"]
      415 GETTABLEKS                       R68 R69 K87 ["SafetyUpsellBannerShownEvent"]
      417 CALL                             R67 1 1
      418 GETIMPORT                        R68 K17 [require]
      420 GETTABLEKS                       R70 R7 K18 ["Packages"]
      422 GETTABLEKS                       R69 R70 K88 ["TelemetryProtocol"]
      424 CALL                             R68 1 1
      425 GETTABLEKS                       R69 R68 K89 ["new"]
      427 CALL                             R69 0 1
      428 GETIMPORT                        R70 K17 [require]
      430 GETTABLEKS                       R73 R7 K47 ["Src"]
      432 GETTABLEKS                       R72 R73 K50 ["Components"]
      434 GETTABLEKS                       R71 R72 K90 ["UpsellDialog"]
      436 CALL                             R70 1 1
      437 GETIMPORT                        R71 K17 [require]
      439 GETTABLEKS                       R74 R7 K47 ["Src"]
      441 GETTABLEKS                       R73 R74 K38 ["Enums"]
      443 GETTABLEKS                       R72 R73 K91 ["CanCollaborateError"]
      445 CALL                             R71 1 1
      446 DUPCLOSURE                       R72 K92 [PROTO_0]
      447 CAPTURE                          VAL R43
      448 CAPTURE                          VAL R69
      449 CAPTURE                          VAL R66
      450 CAPTURE                          VAL R4
      451 DUPCLOSURE                       R73 K93 [PROTO_2]
      452 CAPTURE                          VAL R5
      453 DUPCLOSURE                       R74 K94 [PROTO_3]
      454 SETTABLEKS                       R74 R65 K95 ["isGroupGame"]
      456 DUPCLOSURE                       R74 K96 [PROTO_4]
      457 CAPTURE                          VAL R4
      458 SETTABLEKS                       R74 R65 K97 ["isLoggedInUserGameOwner"]
      460 DUPCLOSURE                       R74 K98 [PROTO_10]
      461 CAPTURE                          VAL R8
      462 CAPTURE                          VAL R43
      463 CAPTURE                          VAL R69
      464 CAPTURE                          VAL R66
      465 CAPTURE                          VAL R4
      466 CAPTURE                          VAL R6
      467 CAPTURE                          VAL R5
      468 CAPTURE                          VAL R11
      469 CAPTURE                          VAL R67
      470 SETTABLEKS                       R74 R65 K99 ["init"]
      472 DUPCLOSURE                       R74 K100 [PROTO_23]
      473 CAPTURE                          VAL R44
      474 CAPTURE                          VAL R45
      475 CAPTURE                          VAL R69
      476 CAPTURE                          VAL R67
      477 CAPTURE                          VAL R4
      478 CAPTURE                          VAL R11
      479 SETTABLEKS                       R74 R65 K101 ["didUpdate"]
      481 DUPCLOSURE                       R74 K102 [PROTO_24]
      482 CAPTURE                          VAL R46
      483 CAPTURE                          VAL R71
      484 CAPTURE                          VAL R6
      485 CAPTURE                          VAL R5
      486 SETGLOBAL                        R74 K103 ["checkAndMaybeShowVerifyAgeDialog"]
      488 DUPCLOSURE                       R74 K104 [PROTO_25]
      489 CAPTURE                          VAL R11
      490 CAPTURE                          VAL R42
      491 CAPTURE                          VAL R57
      492 CAPTURE                          VAL R3
      493 SETTABLEKS                       R74 R65 K105 ["onSavePressed"]
      495 DUPCLOSURE                       R74 K106 [PROTO_28]
      496 CAPTURE                          VAL R42
      497 CAPTURE                          VAL R60
      498 CAPTURE                          VAL R34
      499 CAPTURE                          VAL R21
      500 CAPTURE                          VAL R8
      501 SETTABLEKS                       R74 R65 K107 ["onCancelPressed"]
      503 DUPCLOSURE                       R74 K108 [PROTO_37]
      504 CAPTURE                          VAL R44
      505 CAPTURE                          VAL R11
      506 CAPTURE                          VAL R42
      507 CAPTURE                          VAL R52
      508 CAPTURE                          VAL R51
      509 CAPTURE                          VAL R48
      510 CAPTURE                          VAL R57
      511 CAPTURE                          VAL R61
      512 CAPTURE                          VAL R59
      513 CAPTURE                          VAL R43
      514 CAPTURE                          VAL R8
      515 CAPTURE                          VAL R19
      516 CAPTURE                          VAL R63
      517 CAPTURE                          VAL R64
      518 CAPTURE                          VAL R3
      519 CAPTURE                          VAL R62
      520 CAPTURE                          VAL R27
      521 CAPTURE                          VAL R26
      522 CAPTURE                          VAL R29
      523 CAPTURE                          VAL R23
      524 CAPTURE                          VAL R30
      525 CAPTURE                          VAL R31
      526 CAPTURE                          VAL R32
      527 CAPTURE                          VAL R33
      528 CAPTURE                          VAL R69
      529 CAPTURE                          VAL R66
      530 CAPTURE                          VAL R4
      531 CAPTURE                          VAL R6
      532 CAPTURE                          VAL R5
      533 CAPTURE                          VAL R28
      534 CAPTURE                          VAL R22
      535 CAPTURE                          VAL R2
      536 CAPTURE                          VAL R24
      537 CAPTURE                          VAL R25
      538 CAPTURE                          VAL R36
      539 CAPTURE                          VAL R37
      540 CAPTURE                          VAL R35
      541 CAPTURE                          VAL R0
      542 CAPTURE                          VAL R18
      543 CAPTURE                          VAL R10
      544 CAPTURE                          VAL R70
      545 CAPTURE                          VAL R38
      546 CAPTURE                          VAL R20
      547 SETTABLEKS                       R74 R65 K109 ["render"]
      549 MOVE                             R74 R14
      550 DUPTABLE                         R75 K110 [{"Stylizer", "Localization"}]
      551 SETTABLEKS                       R15 R75 K28 ["Stylizer"]
      553 SETTABLEKS                       R16 R75 K29 ["Localization"]
      555 CALL                             R74 1 1
      556 MOVE                             R75 R65
      557 CALL                             R74 1 1
      558 MOVE                             R65 R74
      559 GETTABLEKS                       R74 R9 K111 ["connect"]
      561 NEWCLOSURE                       R75 P10
      562 CAPTURE                          VAL R56
      563 CAPTURE                          VAL R51
      564 CAPTURE                          VAL R52
      565 CAPTURE                          VAL R53
      566 CAPTURE                          VAL R55
      567 CAPTURE                          VAL R11
      568 CAPTURE                          VAL R54
      569 CAPTURE                          VAL R48
      570 CAPTURE                          REF R50
      571 NEWCLOSURE                       R76 P11
      572 CAPTURE                          VAL R40
      573 CAPTURE                          VAL R39
      574 CAPTURE                          VAL R42
      575 CAPTURE                          REF R41
      576 CAPTURE                          VAL R48
      577 CAPTURE                          REF R49
      578 CALL                             R74 2 1
      579 MOVE                             R75 R65
      580 CALL                             R74 1 1
      581 MOVE                             R65 R74
      582 CLOSEUPVALS                      R41
      583 RETURN                           R65 1
