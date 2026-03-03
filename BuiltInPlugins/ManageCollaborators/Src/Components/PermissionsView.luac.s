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
        0 DUPTABLE                         R1 K1 [{"upsellDialogEnabled"}]
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["upsellDialogEnabled"]
        4 RETURN                           R1 1

PROTO_8:
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
       19 DUPCLOSURE                       R2 K8 [PROTO_7]
       20 NAMECALL                         R0 R0 K9 ["setState"]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_9:
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
       25 NEWCLOSURE                       R1 P2
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U7
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R1 R0 K8 ["launchModal"]
       32 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 DUPTABLE                         R1 K1 [{"ShowSafetyBanner"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["ShowSafetyBanner"]
        4 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_11]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 DUPTABLE                         R1 K1 [{"ShowTrustedConnectionsBanner"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["ShowTrustedConnectionsBanner"]
        4 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_14]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"ShowTrustedConnectionsOption"}]
        2 SETTABLEKS                       R0 R3 K0 ["ShowTrustedConnectionsOption"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R1 K1 [{"ShowTrustedConnectionsOption"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["ShowTrustedConnectionsOption"]
        4 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_17]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
        0 DUPTABLE                         R1 K1 [{"ShowReverificationBanner"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["ShowReverificationBanner"]
        4 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_20]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R2 R1 K0 ["Enabled"]
        2 JUMPIF                           R2 ; [+76]
        3 GETTABLEKS                       R3 R0 K1 ["props"]
        5 GETTABLEKS                       R2 R3 K0 ["Enabled"]
        7 JUMPIFNOT                        R2 ; [+71]
        8 GETUPVAL                         R2 0
        9 JUMPIFNOT                        R2 ; [+48]
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
       44 GETUPVAL                         R2 1
       45 LOADK                            R3 K7 ["ShowTrustedConnectionsOption"]
       46 LOADK                            R4 K3 ["studio/CollaborationSettings"]
       47 CALL                             R2 2 1
       48 NEWCLOSURE                       R4 P4
       49 CAPTURE                          VAL R0
       50 NAMECALL                         R2 R2 K4 ["andThen"]
       52 CALL                             R2 2 1
       53 NEWCLOSURE                       R4 P5
       54 CAPTURE                          VAL R0
       55 NAMECALL                         R2 R2 K5 ["catch"]
       57 CALL                             R2 2 0
       58 GETUPVAL                         R3 5
       59 GETTABLEKS                       R2 R3 K8 ["fflagUpsellMCCollabReverification"]
       61 JUMPIFNOT                        R2 ; [+17]
       62 GETUPVAL                         R2 1
       63 LOADK                            R3 K9 ["ShouldShowStudioAgeReverificationRequiredBanner"]
       64 LOADK                            R4 K3 ["studio/CollaborationSettings"]
       65 CALL                             R2 2 1
       66 NEWCLOSURE                       R4 P6
       67 CAPTURE                          UPVAL U2
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          VAL R0
       71 NAMECALL                         R2 R2 K4 ["andThen"]
       73 CALL                             R2 2 1
       74 NEWCLOSURE                       R4 P7
       75 CAPTURE                          VAL R0
       76 NAMECALL                         R2 R2 K5 ["catch"]
       78 CALL                             R2 2 0
       79 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 RETURN                           R0 0

PROTO_27:
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
       78 DUPCLOSURE                       R14 K29 [PROTO_26]
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

PROTO_28:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onSavePressed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"ShowTrustedConnectionsBanner"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["ShowTrustedConnectionsBanner"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_31:
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

PROTO_32:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"ShowReverificationBanner"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["ShowReverificationBanner"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"upsellDialogEnabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["upsellDialogEnabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onSavePressed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onCancelPressed"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_36:
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
       29 GETTABLEKS                       R10 R0 K7 ["state"]
       31 GETTABLEKS                       R9 R10 K10 ["ShowTrustedConnectionsOption"]
       33 GETUPVAL                         R11 1
       34 GETTABLEKS                       R10 R11 K11 ["fflagUpsellMCCollabReverification"]
       36 JUMPIFNOT                        R10 ; [+4]
       37 GETTABLEKS                       R11 R0 K7 ["state"]
       39 GETTABLEKS                       R10 R11 K12 ["ShowReverificationBanner"]
       41 GETTABLEKS                       R11 R1 K13 ["HasCurrentEditCollaborators"]
       43 GETUPVAL                         R13 2
       44 JUMPIFNOT                        R13 ; [+3]
       45 GETTABLEKS                       R12 R1 K14 ["SendAllSearchItemLogs"]
       47 JUMP                             ; [+1]
       48 LOADNIL                          R12
       49 GETUPVAL                         R14 3
       50 GETTABLEKS                       R13 R14 K15 ["Saved"]
       52 JUMPIFNOTEQ                      R4 R13 ; [+5]
       54 GETTABLEKS                       R13 R1 K16 ["CloseWidget"]
       56 CALL                             R13 0 0
       57 RETURN                           R0 0
       58 GETUPVAL                         R15 4
       59 GETTABLEKS                       R14 R15 K17 ["Loaded"]
       61 JUMPIFEQ                         R5 R14 ; [+2]
       63 LOADB                            R13 0 +1
       64 LOADB                            R13 1
       65 GETUPVAL                         R14 5
       66 JUMPIFNOT                        R14 ; [+6]
       67 JUMPIFNOT                        R13 ; [+5]
       68 GETTABLEKS                       R14 R1 K18 ["PrefetchLikelyCollaborators"]
       70 GETTABLEKS                       R15 R1 K19 ["Is17PlusGame"]
       72 CALL                             R14 1 0
       73 LOADB                            R14 0
       74 LOADNIL                          R15
       75 GETUPVAL                         R17 4
       76 GETTABLEKS                       R16 R17 K20 ["Unloaded"]
       78 JUMPIFNOTEQ                      R5 R16 ; [+4]
       80 GETTABLEKS                       R16 R1 K21 ["LoadPermissions"]
       82 CALL                             R16 0 0
       83 GETUPVAL                         R17 4
       84 GETTABLEKS                       R16 R17 K22 ["LoadFailed"]
       86 JUMPIFEQ                         R5 R16 ; [+6]
       88 GETUPVAL                         R17 3
       89 GETTABLEKS                       R16 R17 K23 ["SaveFailed"]
       91 JUMPIFNOTEQ                      R4 R16 ; [+20]
       93 LOADB                            R14 1
       94 GETUPVAL                         R17 4
       95 GETTABLEKS                       R16 R17 K22 ["LoadFailed"]
       97 JUMPIFNOTEQ                      R5 R16 ; [+8]
       99 LOADK                            R18 K24 ["FailureMessage"]
      100 LOADK                            R19 K25 ["LoadFailure"]
      101 NAMECALL                         R16 R3 K26 ["getText"]
      103 CALL                             R16 3 1
      104 MOVE                             R15 R16
      105 JUMP                             ; [+6]
      106 LOADK                            R18 K24 ["FailureMessage"]
      107 LOADK                            R19 K27 ["SaveFailure"]
      108 NAMECALL                         R16 R3 K26 ["getText"]
      110 CALL                             R16 3 1
      111 MOVE                             R15 R16
      112 NAMECALL                         R16 R0 K28 ["isLoggedInUserGameOwner"]
      114 CALL                             R16 1 1
      115 MOVE                             R17 R13
      116 JUMPIFNOT                        R17 ; [+1]
      117 NOT                              R17 R14
      118 GETUPVAL                         R18 6
      119 CALL                             R18 0 1
      120 MOVE                             R19 R17
      121 JUMPIFNOT                        R19 ; [+3]
      122 NOT                              R19 R18
      123 JUMPIFNOT                        R19 ; [+1]
      124 OR                               R19 R6 R11
      125 JUMPIFNOT                        R11 ; [+2]
      126 LOADK                            R20 K29 ["SaveEnableTcCurrentEditors"]
      127 JUMP                             ; [+1]
      128 LOADK                            R20 K30 ["SaveEnableTC"]
      129 LOADK                            R23 K31 ["Description"]
      130 MOVE                             R24 R20
      131 NAMECALL                         R21 R3 K26 ["getText"]
      133 CALL                             R21 3 1
      134 GETTABLEKS                       R23 R2 K32 ["header"]
      136 GETTABLEKS                       R22 R23 K33 ["height"]
      138 GETTABLEKS                       R24 R2 K34 ["footer"]
      140 GETTABLEKS                       R23 R24 K33 ["height"]
      142 JUMPIFNOT                        R19 ; [+5]
      143 GETTABLEKS                       R25 R2 K35 ["saveMessage"]
      145 GETTABLEKS                       R24 R25 K36 ["boxHeight"]
      147 ADD                              R23 R23 R24
      148 GETUPVAL                         R24 7
      149 JUMPIFNOT                        R24 ; [+1]
      150 ADD                              R23 R23 R22
      151 GETUPVAL                         R25 8
      152 GETTABLEKS                       R24 R25 K37 ["new"]
      154 CALL                             R24 0 1
      155 GETUPVAL                         R26 8
      156 GETTABLEKS                       R25 R26 K37 ["new"]
      158 CALL                             R25 0 1
      159 GETUPVAL                         R27 9
      160 JUMPIFNOT                        R27 ; [+5]
      161 GETUPVAL                         R27 8
      162 GETTABLEKS                       R26 R27 K37 ["new"]
      164 CALL                             R26 0 1
      165 JUMP                             ; [+1]
      166 LOADNIL                          R26
      167 GETUPVAL                         R27 9
      168 JUMPIFNOT                        R27 ; [+8]
      169 MOVE                             R27 R7
      170 JUMPIF                           R27 ; [+6]
      171 MOVE                             R27 R8
      172 JUMPIF                           R27 ; [+4]
      173 GETUPVAL                         R29 1
      174 GETTABLEKS                       R28 R29 K11 ["fflagUpsellMCCollabReverification"]
      176 AND                              R27 R28 R10
      177 LOADK                            R30 K38 ["UpsellBanner"]
      178 LOADK                            R31 K39 ["RecheckAge"]
      179 NAMECALL                         R28 R3 K26 ["getText"]
      181 CALL                             R28 3 1
      182 LOADK                            R31 K38 ["UpsellBanner"]
      183 LOADK                            R32 K40 ["AgeCheckNotValid"]
      184 NAMECALL                         R29 R3 K26 ["getText"]
      186 CALL                             R29 3 1
      187 LOADK                            R32 K41 ["Buttons"]
      188 LOADK                            R33 K42 ["Continue"]
      189 NAMECALL                         R30 R3 K26 ["getText"]
      191 CALL                             R30 3 1
      192 GETUPVAL                         R32 10
      193 GETTABLEKS                       R31 R32 K43 ["createElement"]
      195 LOADK                            R32 K44 ["Frame"]
      196 DUPTABLE                         R33 K47 [{"Size", "BackgroundColor3"}]
      197 GETIMPORT                        R34 K49 [UDim2.new]
      199 LOADN                            R35 1
      200 LOADN                            R36 0
      201 LOADN                            R37 1
      202 LOADN                            R38 0
      203 CALL                             R34 4 1
      204 SETTABLEKS                       R34 R33 K45 ["Size"]
      206 GETTABLEKS                       R34 R2 K50 ["backgroundColor"]
      208 SETTABLEKS                       R34 R33 K46 ["BackgroundColor3"]
      210 DUPTABLE                         R34 K64 [{"Layout", "HeaderContent", "Spacer", "UpsellBanner", "TrustedConnectionsBanner", "ReverificationBanner", "CollaborationSubtitleTitleView", "ScrollingFrameNew", "ScrollingFrame", "TextFrame", "upsellDialog", "FooterContent", "LoadingIndicator", "FailureText"}]
      211 MOVE                             R35 R17
      212 JUMPIFNOT                        R35 ; [+28]
      213 GETUPVAL                         R36 10
      214 GETTABLEKS                       R35 R36 K43 ["createElement"]
      216 LOADK                            R36 K65 ["UIListLayout"]
      217 DUPTABLE                         R37 K70 [{"FillDirection", "SortOrder", "HorizontalAlignment", "Padding"}]
      218 GETIMPORT                        R38 K73 [Enum.FillDirection.Vertical]
      220 SETTABLEKS                       R38 R37 K66 ["FillDirection"]
      222 GETIMPORT                        R38 K75 [Enum.SortOrder.LayoutOrder]
      224 SETTABLEKS                       R38 R37 K67 ["SortOrder"]
      226 GETIMPORT                        R38 K77 [Enum.HorizontalAlignment.Center]
      228 SETTABLEKS                       R38 R37 K68 ["HorizontalAlignment"]
      230 GETIMPORT                        R38 K79 [UDim.new]
      232 LOADN                            R39 0
      233 GETTABLEKS                       R41 R2 K80 ["permissionsView"]
      235 GETTABLEKS                       R40 R41 K69 ["Padding"]
      237 CALL                             R38 2 1
      238 SETTABLEKS                       R38 R37 K69 ["Padding"]
      240 CALL                             R35 2 1
      241 SETTABLEKS                       R35 R34 K51 ["Layout"]
      243 GETUPVAL                         R37 1
      244 GETTABLEKS                       R36 R37 K81 ["fflagRemoveHeaderWithUpsellBanner2"]
      246 NOT                              R35 R36
      247 JUMPIFNOT                        R35 ; [+74]
      248 NOT                              R35 R27
      249 JUMPIFNOT                        R35 ; [+72]
      250 GETUPVAL                         R35 7
      251 JUMPIFNOT                        R35 ; [+70]
      252 MOVE                             R35 R17
      253 JUMPIFNOT                        R35 ; [+68]
      254 GETUPVAL                         R36 10
      255 GETTABLEKS                       R35 R36 K43 ["createElement"]
      257 GETUPVAL                         R36 11
      258 DUPTABLE                         R37 K82 [{"LayoutOrder", "Size"}]
      259 NAMECALL                         R38 R24 K83 ["getNextOrder"]
      261 CALL                             R38 1 1
      262 SETTABLEKS                       R38 R37 K74 ["LayoutOrder"]
      264 GETIMPORT                        R38 K49 [UDim2.new]
      266 LOADN                            R39 1
      267 LOADN                            R40 0
      268 LOADN                            R41 0
      269 GETTABLEKS                       R43 R2 K32 ["header"]
      271 GETTABLEKS                       R42 R43 K33 ["height"]
      273 CALL                             R38 4 1
      274 SETTABLEKS                       R38 R37 K45 ["Size"]
      276 DUPTABLE                         R38 K85 [{"Header"}]
      277 GETUPVAL                         R40 12
      278 GETTABLEKS                       R39 R40 K43 ["createElement"]
      280 GETUPVAL                         R40 13
      281 DUPTABLE                         R41 K93 [{"Stylizer", "Localization", "IsTeamCreateEnabled", "HasUnsavedChanges", "HasCollaborators", "Plugin", "SaveThenTurnOnTeamCreate", "TurnOnTeamCreate", "Links", "FetchLink"}]
      282 SETTABLEKS                       R2 R41 K2 ["Stylizer"]
      284 SETTABLEKS                       R3 R41 K3 ["Localization"]
      286 SETTABLEKS                       R18 R41 K86 ["IsTeamCreateEnabled"]
      288 GETTABLEKS                       R42 R1 K87 ["HasUnsavedChanges"]
      290 SETTABLEKS                       R42 R41 K87 ["HasUnsavedChanges"]
      292 GETTABLEKS                       R42 R1 K6 ["HasCollaborators"]
      294 SETTABLEKS                       R42 R41 K6 ["HasCollaborators"]
      296 GETTABLEKS                       R42 R1 K88 ["Plugin"]
      298 SETTABLEKS                       R42 R41 K88 ["Plugin"]
      300 NEWCLOSURE                       R42 P0
      301 CAPTURE                          VAL R0
      302 SETTABLEKS                       R42 R41 K89 ["SaveThenTurnOnTeamCreate"]
      304 NEWCLOSURE                       R42 P1
      305 CAPTURE                          UPVAL U2
      306 CAPTURE                          VAL R12
      307 CAPTURE                          UPVAL U14
      308 SETTABLEKS                       R42 R41 K90 ["TurnOnTeamCreate"]
      310 GETTABLEKS                       R42 R1 K91 ["Links"]
      312 SETTABLEKS                       R42 R41 K91 ["Links"]
      314 GETTABLEKS                       R42 R1 K92 ["FetchLink"]
      316 SETTABLEKS                       R42 R41 K92 ["FetchLink"]
      318 CALL                             R39 2 1
      319 SETTABLEKS                       R39 R38 K84 ["Header"]
      321 CALL                             R35 3 1
      322 SETTABLEKS                       R35 R34 K52 ["HeaderContent"]
      324 GETUPVAL                         R36 1
      325 GETTABLEKS                       R35 R36 K81 ["fflagRemoveHeaderWithUpsellBanner2"]
      327 JUMPIFNOT                        R35 ; [+22]
      328 MOVE                             R35 R27
      329 JUMPIFNOT                        R35 ; [+20]
      330 GETUPVAL                         R36 12
      331 GETTABLEKS                       R35 R36 K43 ["createElement"]
      333 GETUPVAL                         R36 15
      334 DUPTABLE                         R37 K82 [{"LayoutOrder", "Size"}]
      335 NAMECALL                         R38 R24 K83 ["getNextOrder"]
      337 CALL                             R38 1 1
      338 SETTABLEKS                       R38 R37 K74 ["LayoutOrder"]
      340 GETIMPORT                        R38 K49 [UDim2.new]
      342 LOADN                            R39 1
      343 LOADN                            R40 0
      344 LOADN                            R41 0
      345 LOADN                            R42 10
      346 CALL                             R38 4 1
      347 SETTABLEKS                       R38 R37 K45 ["Size"]
      349 CALL                             R35 2 1
      350 SETTABLEKS                       R35 R34 K53 ["Spacer"]
      352 GETUPVAL                         R35 9
      353 JUMPIFNOT                        R35 ; [+155]
      354 MOVE                             R35 R7
      355 JUMPIFNOT                        R35 ; [+153]
      356 GETUPVAL                         R36 10
      357 GETTABLEKS                       R35 R36 K43 ["createElement"]
      359 GETUPVAL                         R36 15
      360 DUPTABLE                         R37 K96 [{"LayoutOrder", "Size", "tag", "onActivated"}]
      361 NAMECALL                         R38 R24 K83 ["getNextOrder"]
      363 CALL                             R38 1 1
      364 SETTABLEKS                       R38 R37 K74 ["LayoutOrder"]
      366 GETIMPORT                        R38 K49 [UDim2.new]
      368 LOADN                            R39 0
      369 LOADN                            R40 2
      370 LOADN                            R41 0
      371 LOADN                            R42 50
      372 CALL                             R38 4 1
      373 SETTABLEKS                       R38 R37 K45 ["Size"]
      375 LOADK                            R38 K97 ["auto-xy stroke-system-emphasis bg-over-media-300 radius-small padding-left-large"]
      376 SETTABLEKS                       R38 R37 K94 ["tag"]
      378 GETTABLEKS                       R38 R0 K98 ["launchFAEPlusVPC"]
      380 SETTABLEKS                       R38 R37 K95 ["onActivated"]
      382 NEWTABLE                         R38 4 1
      384 MOVE                             R40 R17
      385 JUMPIFNOT                        R40 ; [+28]
      386 GETUPVAL                         R41 10
      387 GETTABLEKS                       R40 R41 K43 ["createElement"]
      389 LOADK                            R41 K65 ["UIListLayout"]
      390 DUPTABLE                         R42 K100 [{"FillDirection", "VerticalAlignment", "SortOrder", "Padding"}]
      391 GETIMPORT                        R43 K102 [Enum.FillDirection.Horizontal]
      393 SETTABLEKS                       R43 R42 K66 ["FillDirection"]
      395 GETIMPORT                        R43 K103 [Enum.VerticalAlignment.Center]
      397 SETTABLEKS                       R43 R42 K99 ["VerticalAlignment"]
      399 GETIMPORT                        R43 K75 [Enum.SortOrder.LayoutOrder]
      401 SETTABLEKS                       R43 R42 K67 ["SortOrder"]
      403 GETIMPORT                        R43 K79 [UDim.new]
      405 LOADN                            R44 0
      406 GETTABLEKS                       R46 R2 K80 ["permissionsView"]
      408 GETTABLEKS                       R45 R46 K69 ["Padding"]
      410 CALL                             R43 2 1
      411 SETTABLEKS                       R43 R42 K69 ["Padding"]
      413 CALL                             R40 2 1
      414 SETTABLEKS                       R40 R38 K104 ["UpsellLayout"]
      416 GETUPVAL                         R40 12
      417 GETTABLEKS                       R39 R40 K43 ["createElement"]
      419 GETUPVAL                         R40 16
      420 DUPTABLE                         R41 K109 [{"name", "style", "LayoutOrder", "size", "variant"}]
      421 GETUPVAL                         R44 17
      422 GETTABLEKS                       R43 R44 K110 ["IconName"]
      424 GETTABLEKS                       R42 R43 K111 ["TriangleExclamation"]
      426 SETTABLEKS                       R42 R41 K105 ["name"]
      428 DUPTABLE                         R42 K114 [{"Color3", "Transparency"}]
      429 GETIMPORT                        R43 K116 [Color3.fromRGB]
      431 LOADN                            R44 51
      432 LOADN                            R45 95
      433 LOADN                            R46 255
      434 CALL                             R43 3 1
      435 SETTABLEKS                       R43 R42 K112 ["Color3"]
      437 LOADN                            R43 0
      438 SETTABLEKS                       R43 R42 K113 ["Transparency"]
      440 SETTABLEKS                       R42 R41 K106 ["style"]
      442 NAMECALL                         R42 R26 K83 ["getNextOrder"]
      444 CALL                             R42 1 1
      445 SETTABLEKS                       R42 R41 K74 ["LayoutOrder"]
      447 GETUPVAL                         R44 17
      448 GETTABLEKS                       R43 R44 K117 ["IconSize"]
      450 GETTABLEKS                       R42 R43 K118 ["Large"]
      452 SETTABLEKS                       R42 R41 K107 ["size"]
      454 GETUPVAL                         R43 18
      455 GETTABLEKS                       R42 R43 K119 ["Filled"]
      457 SETTABLEKS                       R42 R41 K108 ["variant"]
      459 CALL                             R39 2 1
      460 SETLIST                          R38 R39 1 [1]
      462 GETUPVAL                         R41 10
      463 GETTABLEKS                       R40 R41 K43 ["createElement"]
      465 GETUPVAL                         R41 19
      466 DUPTABLE                         R42 K121 [{"tag", "LayoutOrder", "Text"}]
      467 LOADK                            R43 K122 ["auto-y text-align-y-center text-align-x-left text-title-medium padding-left-large fill"]
      468 SETTABLEKS                       R43 R42 K94 ["tag"]
      470 NAMECALL                         R43 R26 K83 ["getNextOrder"]
      472 CALL                             R43 1 1
      473 SETTABLEKS                       R43 R42 K74 ["LayoutOrder"]
      475 LOADK                            R45 K38 ["UpsellBanner"]
      476 LOADK                            R46 K123 ["description"]
      477 NAMECALL                         R43 R3 K26 ["getText"]
      479 CALL                             R43 3 1
      480 SETTABLEKS                       R43 R42 K120 ["Text"]
      482 CALL                             R40 2 1
      483 SETTABLEKS                       R40 R38 K124 ["WarningText"]
      485 GETUPVAL                         R41 10
      486 GETTABLEKS                       R40 R41 K43 ["createElement"]
      488 GETUPVAL                         R41 19
      489 DUPTABLE                         R42 K121 [{"tag", "LayoutOrder", "Text"}]
      490 LOADK                            R43 K125 ["text-align-y-center text-align-x-center text-label-medium padding-right-large auto-xy"]
      491 SETTABLEKS                       R43 R42 K94 ["tag"]
      493 NAMECALL                         R43 R26 K83 ["getNextOrder"]
      495 CALL                             R43 1 1
      496 SETTABLEKS                       R43 R42 K74 ["LayoutOrder"]
      498 LOADK                            R45 K38 ["UpsellBanner"]
      499 LOADK                            R46 K126 ["CTA"]
      500 NAMECALL                         R43 R3 K26 ["getText"]
      502 CALL                             R43 3 1
      503 SETTABLEKS                       R43 R42 K120 ["Text"]
      505 CALL                             R40 2 1
      506 SETTABLEKS                       R40 R38 K127 ["GetStarted"]
      508 CALL                             R35 3 1
      509 SETTABLEKS                       R35 R34 K38 ["UpsellBanner"]
      511 GETUPVAL                         R35 0
      512 JUMPIFNOT                        R35 ; [+65]
      513 MOVE                             R35 R8
      514 JUMPIFNOT                        R35 ; [+63]
      515 GETUPVAL                         R36 12
      516 GETTABLEKS                       R35 R36 K43 ["createElement"]
      518 GETUPVAL                         R36 15
      519 DUPTABLE                         R37 K128 [{"tag"}]
      520 LOADK                            R38 K129 ["padding-x-large padding-top-large size-full-0 auto-y"]
      521 SETTABLEKS                       R38 R37 K94 ["tag"]
      523 GETUPVAL                         R39 12
      524 GETTABLEKS                       R38 R39 K43 ["createElement"]
      526 GETUPVAL                         R39 20
      527 DUPTABLE                         R40 K134 [{"variant", "severity", "title", "actions", "onClose"}]
      528 GETUPVAL                         R42 21
      529 GETTABLEKS                       R41 R42 K135 ["Standard"]
      531 SETTABLEKS                       R41 R40 K108 ["variant"]
      533 GETUPVAL                         R42 22
      534 GETTABLEKS                       R41 R42 K136 ["Info"]
      536 SETTABLEKS                       R41 R40 K130 ["severity"]
      538 LOADK                            R43 K38 ["UpsellBanner"]
      539 LOADK                            R44 K137 ["nextStepDescription"]
      540 NAMECALL                         R41 R3 K26 ["getText"]
      542 CALL                             R41 3 1
      543 SETTABLEKS                       R41 R40 K131 ["title"]
      545 NEWTABLE                         R41 0 1
      547 DUPTABLE                         R42 K139 [{"text", "variant", "onActivated"}]
      548 LOADK                            R45 K38 ["UpsellBanner"]
      549 LOADK                            R46 K126 ["CTA"]
      550 NAMECALL                         R43 R3 K26 ["getText"]
      552 CALL                             R43 3 1
      553 SETTABLEKS                       R43 R42 K138 ["text"]
      555 GETUPVAL                         R44 23
      556 GETTABLEKS                       R43 R44 K135 ["Standard"]
      558 SETTABLEKS                       R43 R42 K108 ["variant"]
      560 JUMPIFNOT                        R9 ; [+3]
      561 GETTABLEKS                       R43 R0 K140 ["launchModal"]
      563 JUMP                             ; [+2]
      564 GETTABLEKS                       R43 R0 K98 ["launchFAEPlusVPC"]
      566 SETTABLEKS                       R43 R42 K95 ["onActivated"]
      568 SETLIST                          R41 R42 1 [1]
      570 SETTABLEKS                       R41 R40 K132 ["actions"]
      572 NEWCLOSURE                       R41 P2
      573 CAPTURE                          VAL R0
      574 SETTABLEKS                       R41 R40 K133 ["onClose"]
      576 CALL                             R38 2 -1
      577 CALL                             R35 -1 1
      578 SETTABLEKS                       R35 R34 K54 ["TrustedConnectionsBanner"]
      580 GETUPVAL                         R36 1
      581 GETTABLEKS                       R35 R36 K11 ["fflagUpsellMCCollabReverification"]
      583 JUMPIFNOT                        R35 ; [+174]
      584 MOVE                             R35 R10
      585 JUMPIFNOT                        R35 ; [+172]
      586 GETUPVAL                         R36 12
      587 GETTABLEKS                       R35 R36 K43 ["createElement"]
      589 GETUPVAL                         R36 15
      590 DUPTABLE                         R37 K96 [{"LayoutOrder", "Size", "tag", "onActivated"}]
      591 NAMECALL                         R38 R24 K83 ["getNextOrder"]
      593 CALL                             R38 1 1
      594 SETTABLEKS                       R38 R37 K74 ["LayoutOrder"]
      596 GETIMPORT                        R38 K49 [UDim2.new]
      598 LOADN                            R39 0
      599 LOADN                            R40 2
      600 LOADN                            R41 0
      601 LOADN                            R42 50
      602 CALL                             R38 4 1
      603 SETTABLEKS                       R38 R37 K45 ["Size"]
      605 LOADK                            R38 K141 ["row gap-medium align-y-center stroke-system-emphasis bg-over-media-300 radius-small padding-left-large padding-right-medium"]
      606 SETTABLEKS                       R38 R37 K94 ["tag"]
      608 DUPCLOSURE                       R38 K142 [PROTO_31]
      609 CAPTURE                          UPVAL U9
      610 CAPTURE                          UPVAL U24
      611 CAPTURE                          UPVAL U25
      612 CAPTURE                          UPVAL U26
      613 CAPTURE                          UPVAL U27
      614 CAPTURE                          UPVAL U28
      615 SETTABLEKS                       R38 R37 K95 ["onActivated"]
      617 DUPTABLE                         R38 K145 [{"Icon", "WarningText", "CloseButton"}]
      618 GETUPVAL                         R40 12
      619 GETTABLEKS                       R39 R40 K43 ["createElement"]
      621 GETUPVAL                         R40 15
      622 DUPTABLE                         R41 K146 [{"LayoutOrder", "tag"}]
      623 NAMECALL                         R42 R26 K83 ["getNextOrder"]
      625 CALL                             R42 1 1
      626 SETTABLEKS                       R42 R41 K74 ["LayoutOrder"]
      628 LOADK                            R42 K147 ["auto-xy size-600-600"]
      629 SETTABLEKS                       R42 R41 K94 ["tag"]
      631 DUPTABLE                         R42 K149 [{"BackgroundCircle", "Icon"}]
      632 GETUPVAL                         R44 12
      633 GETTABLEKS                       R43 R44 K43 ["createElement"]
      635 GETUPVAL                         R44 15
      636 DUPTABLE                         R45 K151 [{"tag", "backgroundStyle"}]
      637 LOADK                            R46 K152 ["anchor-center-center position-center-center radius-circle size-500-500"]
      638 SETTABLEKS                       R46 R45 K94 ["tag"]
      640 DUPTABLE                         R46 K153 [{"Color3"}]
      641 GETIMPORT                        R47 K155 [Color3.fromHex]
      643 LOADK                            R48 K156 ["#FFFFFF"]
      644 CALL                             R47 1 1
      645 SETTABLEKS                       R47 R46 K112 ["Color3"]
      647 SETTABLEKS                       R46 R45 K150 ["backgroundStyle"]
      649 CALL                             R43 2 1
      650 SETTABLEKS                       R43 R42 K148 ["BackgroundCircle"]
      652 GETUPVAL                         R44 12
      653 GETTABLEKS                       R43 R44 K43 ["createElement"]
      655 GETUPVAL                         R44 16
      656 DUPTABLE                         R45 K157 [{"name", "style", "tag", "size", "variant"}]
      657 GETUPVAL                         R48 17
      658 GETTABLEKS                       R47 R48 K110 ["IconName"]
      660 GETTABLEKS                       R46 R47 K158 ["CircleI"]
      662 SETTABLEKS                       R46 R45 K105 ["name"]
      664 DUPTABLE                         R46 K114 [{"Color3", "Transparency"}]
      665 GETIMPORT                        R47 K116 [Color3.fromRGB]
      667 LOADN                            R48 51
      668 LOADN                            R49 95
      669 LOADN                            R50 255
      670 CALL                             R47 3 1
      671 SETTABLEKS                       R47 R46 K112 ["Color3"]
      673 LOADN                            R47 0
      674 SETTABLEKS                       R47 R46 K113 ["Transparency"]
      676 SETTABLEKS                       R46 R45 K106 ["style"]
      678 LOADK                            R46 K159 ["align-x-center align-y-center"]
      679 SETTABLEKS                       R46 R45 K94 ["tag"]
      681 GETUPVAL                         R48 17
      682 GETTABLEKS                       R47 R48 K117 ["IconSize"]
      684 GETTABLEKS                       R46 R47 K118 ["Large"]
      686 SETTABLEKS                       R46 R45 K107 ["size"]
      688 GETUPVAL                         R47 18
      689 GETTABLEKS                       R46 R47 K119 ["Filled"]
      691 SETTABLEKS                       R46 R45 K108 ["variant"]
      693 CALL                             R43 2 1
      694 SETTABLEKS                       R43 R42 K143 ["Icon"]
      696 CALL                             R39 3 1
      697 SETTABLEKS                       R39 R38 K143 ["Icon"]
      699 GETUPVAL                         R40 10
      700 GETTABLEKS                       R39 R40 K43 ["createElement"]
      702 GETUPVAL                         R40 19
      703 DUPTABLE                         R41 K161 [{"tag", "LayoutOrder", "Text", "RichText"}]
      704 LOADK                            R42 K162 ["text-align-y-center text-align-x-left text-body-medium fill"]
      705 SETTABLEKS                       R42 R41 K94 ["tag"]
      707 NAMECALL                         R42 R26 K83 ["getNextOrder"]
      709 CALL                             R42 1 1
      710 SETTABLEKS                       R42 R41 K74 ["LayoutOrder"]
      712 LOADK                            R43 K163 ["<b>%*</b> %* • %*"]
      713 MOVE                             R45 R28
      714 MOVE                             R46 R29
      715 MOVE                             R47 R30
      716 NAMECALL                         R43 R43 K164 ["format"]
      718 CALL                             R43 4 1
      719 MOVE                             R42 R43
      720 SETTABLEKS                       R42 R41 K120 ["Text"]
      722 LOADB                            R42 1
      723 SETTABLEKS                       R42 R41 K160 ["RichText"]
      725 CALL                             R39 2 1
      726 SETTABLEKS                       R39 R38 K124 ["WarningText"]
      728 GETUPVAL                         R40 12
      729 GETTABLEKS                       R39 R40 K43 ["createElement"]
      731 GETUPVAL                         R40 29
      732 DUPTABLE                         R41 K166 [{"LayoutOrder", "icon", "size", "onActivated"}]
      733 NAMECALL                         R42 R26 K83 ["getNextOrder"]
      735 CALL                             R42 1 1
      736 SETTABLEKS                       R42 R41 K74 ["LayoutOrder"]
      738 LOADK                            R42 K167 ["icons/navigation/close"]
      739 SETTABLEKS                       R42 R41 K165 ["icon"]
      741 GETUPVAL                         R45 30
      742 GETTABLEKS                       R44 R45 K168 ["Enums"]
      744 GETTABLEKS                       R43 R44 K117 ["IconSize"]
      746 GETTABLEKS                       R42 R43 K169 ["Small"]
      748 SETTABLEKS                       R42 R41 K107 ["size"]
      750 NEWCLOSURE                       R42 P4
      751 CAPTURE                          VAL R0
      752 SETTABLEKS                       R42 R41 K95 ["onActivated"]
      754 CALL                             R39 2 1
      755 SETTABLEKS                       R39 R38 K144 ["CloseButton"]
      757 CALL                             R35 3 1
      758 SETTABLEKS                       R35 R34 K55 ["ReverificationBanner"]
      760 GETUPVAL                         R35 9
      761 JUMPIFNOT                        R35 ; [+55]
      762 GETUPVAL                         R36 6
      763 CALL                             R36 0 1
      764 JUMPIF                           R36 ; [+3]
      765 GETUPVAL                         R36 0
      766 NOT                              R35 R36
      767 JUMPIFNOT                        R35 ; [+49]
      768 GETUPVAL                         R36 10
      769 GETTABLEKS                       R35 R36 K43 ["createElement"]
      771 GETUPVAL                         R36 15
      772 DUPTABLE                         R37 K170 [{"LayoutOrder", "Size", "tag"}]
      773 NAMECALL                         R38 R24 K83 ["getNextOrder"]
      775 CALL                             R38 1 1
      776 SETTABLEKS                       R38 R37 K74 ["LayoutOrder"]
      778 GETIMPORT                        R38 K49 [UDim2.new]
      780 LOADN                            R39 0
      781 LOADN                            R40 2
      782 LOADN                            R41 0
      783 LOADN                            R42 10
      784 CALL                             R38 4 1
      785 SETTABLEKS                       R38 R37 K45 ["Size"]
      787 LOADK                            R38 K171 ["auto-xy padding-top-medium"]
      788 SETTABLEKS                       R38 R37 K94 ["tag"]
      790 DUPTABLE                         R38 K173 [{"CollaborationTitle"}]
      791 GETUPVAL                         R39 31
      792 JUMPIFNOT                        R39 ; [+21]
      793 GETUPVAL                         R40 12
      794 GETTABLEKS                       R39 R40 K43 ["createElement"]
      796 GETUPVAL                         R40 19
      797 DUPTABLE                         R41 K174 [{"LayoutOrder", "tag", "Text"}]
      798 NAMECALL                         R42 R24 K83 ["getNextOrder"]
      800 CALL                             R42 1 1
      801 SETTABLEKS                       R42 R41 K74 ["LayoutOrder"]
      803 LOADK                            R42 K175 ["auto-xy text-align-x-left text-label-small"]
      804 SETTABLEKS                       R42 R41 K94 ["tag"]
      806 LOADK                            R44 K176 ["Subtitle"]
      807 LOADK                            R45 K177 ["SearchCollaborators"]
      808 NAMECALL                         R42 R3 K26 ["getText"]
      810 CALL                             R42 3 1
      811 SETTABLEKS                       R42 R41 K120 ["Text"]
      813 CALL                             R39 2 1
      814 SETTABLEKS                       R39 R38 K172 ["CollaborationTitle"]
      816 CALL                             R35 3 1
      817 SETTABLEKS                       R35 R34 K56 ["CollaborationSubtitleTitleView"]
      819 GETUPVAL                         R35 9
      820 JUMPIFNOT                        R35 ; [+130]
      821 MOVE                             R35 R17
      822 JUMPIFNOT                        R35 ; [+128]
      823 GETUPVAL                         R36 10
      824 GETTABLEKS                       R35 R36 K43 ["createElement"]
      826 GETUPVAL                         R36 32
      827 DUPTABLE                         R37 K180 [{"scroll", "layout", "tag", "LayoutOrder"}]
      828 DUPTABLE                         R38 K185 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
      829 GETUPVAL                         R40 33
      830 GETTABLEKS                       R39 R40 K186 ["Always"]
      832 SETTABLEKS                       R39 R38 K181 ["scrollBarVisibility"]
      834 GETIMPORT                        R39 K188 [Enum.ScrollingDirection.Y]
      836 SETTABLEKS                       R39 R38 K182 ["ScrollingDirection"]
      838 GETIMPORT                        R39 K190 [Enum.AutomaticSize.Y]
      840 SETTABLEKS                       R39 R38 K183 ["AutomaticCanvasSize"]
      842 GETIMPORT                        R39 K49 [UDim2.new]
      844 CALL                             R39 0 1
      845 SETTABLEKS                       R39 R38 K184 ["CanvasSize"]
      847 SETTABLEKS                       R38 R37 K178 ["scroll"]
      849 DUPTABLE                         R38 K192 [{"HorizontalAlignment", "FillDirection", "SortOrder", "HorizontalFlex"}]
      850 GETIMPORT                        R39 K194 [Enum.HorizontalAlignment.Left]
      852 SETTABLEKS                       R39 R38 K68 ["HorizontalAlignment"]
      854 GETIMPORT                        R39 K73 [Enum.FillDirection.Vertical]
      856 SETTABLEKS                       R39 R38 K66 ["FillDirection"]
      858 GETIMPORT                        R39 K75 [Enum.SortOrder.LayoutOrder]
      860 SETTABLEKS                       R39 R38 K67 ["SortOrder"]
      862 GETIMPORT                        R39 K197 [Enum.UIFlexAlignment.Fill]
      864 SETTABLEKS                       R39 R38 K191 ["HorizontalFlex"]
      866 SETTABLEKS                       R38 R37 K179 ["layout"]
      868 LOADK                            R38 K198 ["fill size-full col align-y-top gap-small"]
      869 SETTABLEKS                       R38 R37 K94 ["tag"]
      871 NAMECALL                         R38 R24 K83 ["getNextOrder"]
      873 CALL                             R38 1 1
      874 SETTABLEKS                       R38 R37 K74 ["LayoutOrder"]
      876 DUPTABLE                         R38 K202 [{"SearchBarWidget", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
      877 MOVE                             R39 R16
      878 JUMPIFNOT                        R39 ; [+19]
      879 GETUPVAL                         R40 10
      880 GETTABLEKS                       R39 R40 K43 ["createElement"]
      882 GETUPVAL                         R40 34
      883 DUPTABLE                         R41 K205 [{"LayoutOrder", "Writable", "IsGroupGame"}]
      884 NAMECALL                         R42 R25 K83 ["getNextOrder"]
      886 CALL                             R42 1 1
      887 SETTABLEKS                       R42 R41 K74 ["LayoutOrder"]
      889 LOADB                            R42 1
      890 SETTABLEKS                       R42 R41 K203 ["Writable"]
      892 NAMECALL                         R42 R0 K206 ["isGroupGame"]
      894 CALL                             R42 1 1
      895 SETTABLEKS                       R42 R41 K204 ["IsGroupGame"]
      897 CALL                             R39 2 1
      898 SETTABLEKS                       R39 R38 K199 ["SearchBarWidget"]
      900 GETUPVAL                         R40 10
      901 GETTABLEKS                       R39 R40 K43 ["createElement"]
      903 GETUPVAL                         R40 35
      904 DUPTABLE                         R41 K207 [{"LayoutOrder"}]
      905 NAMECALL                         R42 R25 K83 ["getNextOrder"]
      907 CALL                             R42 1 1
      908 SETTABLEKS                       R42 R41 K74 ["LayoutOrder"]
      910 CALL                             R39 2 1
      911 SETTABLEKS                       R39 R38 K200 ["CollaboratorFilterWidget"]
      913 NOT                              R39 R16
      914 JUMPIFNOT                        R39 ; [+9]
      915 GETUPVAL                         R40 10
      916 GETTABLEKS                       R39 R40 K43 ["createElement"]
      918 LOADK                            R40 K44 ["Frame"]
      919 DUPTABLE                         R41 K209 [{"BackgroundTransparency"}]
      920 LOADN                            R42 1
      921 SETTABLEKS                       R42 R41 K208 ["BackgroundTransparency"]
      923 CALL                             R39 2 1
      924 SETTABLEKS                       R39 R38 K44 ["Frame"]
      926 GETUPVAL                         R40 10
      927 GETTABLEKS                       R39 R40 K43 ["createElement"]
      929 GETUPVAL                         R40 36
      930 DUPTABLE                         R41 K205 [{"LayoutOrder", "Writable", "IsGroupGame"}]
      931 NAMECALL                         R42 R25 K83 ["getNextOrder"]
      933 CALL                             R42 1 1
      934 SETTABLEKS                       R42 R41 K74 ["LayoutOrder"]
      936 SETTABLEKS                       R16 R41 K203 ["Writable"]
      938 GETUPVAL                         R43 37
      939 JUMPIFNOT                        R43 ; [+4]
      940 NAMECALL                         R42 R0 K206 ["isGroupGame"]
      942 CALL                             R42 1 1
      943 JUMP                             ; [+1]
      944 LOADNIL                          R42
      945 SETTABLEKS                       R42 R41 K204 ["IsGroupGame"]
      947 CALL                             R39 2 1
      948 SETTABLEKS                       R39 R38 K201 ["CollaboratorsWidget"]
      950 CALL                             R35 3 1
      951 SETTABLEKS                       R35 R34 K57 ["ScrollingFrameNew"]
      953 GETUPVAL                         R36 9
      954 NOT                              R35 R36
      955 JUMPIFNOT                        R35 ; [+120]
      956 MOVE                             R35 R17
      957 JUMPIFNOT                        R35 ; [+118]
      958 GETUPVAL                         R36 10
      959 GETTABLEKS                       R35 R36 K43 ["createElement"]
      961 GETUPVAL                         R36 38
      962 DUPTABLE                         R37 K211 [{"LayoutOrder", "Size", "Layout", "AutomaticCanvasSize", "Spacing"}]
      963 NAMECALL                         R38 R24 K83 ["getNextOrder"]
      965 CALL                             R38 1 1
      966 SETTABLEKS                       R38 R37 K74 ["LayoutOrder"]
      968 GETIMPORT                        R38 K49 [UDim2.new]
      970 LOADN                            R39 1
      971 LOADN                            R40 0
      972 LOADN                            R41 1
      973 MINUS                            R42 R23
      974 CALL                             R38 4 1
      975 SETTABLEKS                       R38 R37 K45 ["Size"]
      977 GETIMPORT                        R38 K73 [Enum.FillDirection.Vertical]
      979 SETTABLEKS                       R38 R37 K51 ["Layout"]
      981 GETIMPORT                        R38 K190 [Enum.AutomaticSize.Y]
      983 SETTABLEKS                       R38 R37 K183 ["AutomaticCanvasSize"]
      985 GETIMPORT                        R38 K79 [UDim.new]
      987 LOADN                            R39 0
      988 JUMPIFNOT                        R16 ; [+5]
      989 GETTABLEKS                       R41 R2 K212 ["scrollingFrame"]
      991 GETTABLEKS                       R40 R41 K213 ["yPadding"]
      993 JUMP                             ; [+4]
      994 GETTABLEKS                       R41 R2 K212 ["scrollingFrame"]
      996 GETTABLEKS                       R40 R41 K214 ["yPaddingNonOwner"]
      998 CALL                             R38 2 1
      999 SETTABLEKS                       R38 R37 K210 ["Spacing"]
     1001 DUPTABLE                         R38 K202 [{"SearchBarWidget", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
     1002 MOVE                             R39 R16
     1003 JUMPIFNOT                        R39 ; [+19]
     1004 GETUPVAL                         R40 10
     1005 GETTABLEKS                       R39 R40 K43 ["createElement"]
     1007 GETUPVAL                         R40 34
     1008 DUPTABLE                         R41 K205 [{"LayoutOrder", "Writable", "IsGroupGame"}]
     1009 NAMECALL                         R42 R25 K83 ["getNextOrder"]
     1011 CALL                             R42 1 1
     1012 SETTABLEKS                       R42 R41 K74 ["LayoutOrder"]
     1014 LOADB                            R42 1
     1015 SETTABLEKS                       R42 R41 K203 ["Writable"]
     1017 NAMECALL                         R42 R0 K206 ["isGroupGame"]
     1019 CALL                             R42 1 1
     1020 SETTABLEKS                       R42 R41 K204 ["IsGroupGame"]
     1022 CALL                             R39 2 1
     1023 SETTABLEKS                       R39 R38 K199 ["SearchBarWidget"]
     1025 GETUPVAL                         R40 10
     1026 GETTABLEKS                       R39 R40 K43 ["createElement"]
     1028 GETUPVAL                         R40 35
     1029 DUPTABLE                         R41 K207 [{"LayoutOrder"}]
     1030 NAMECALL                         R42 R25 K83 ["getNextOrder"]
     1032 CALL                             R42 1 1
     1033 SETTABLEKS                       R42 R41 K74 ["LayoutOrder"]
     1035 CALL                             R39 2 1
     1036 SETTABLEKS                       R39 R38 K200 ["CollaboratorFilterWidget"]
     1038 NOT                              R39 R16
     1039 JUMPIFNOT                        R39 ; [+9]
     1040 GETUPVAL                         R40 10
     1041 GETTABLEKS                       R39 R40 K43 ["createElement"]
     1043 LOADK                            R40 K44 ["Frame"]
     1044 DUPTABLE                         R41 K209 [{"BackgroundTransparency"}]
     1045 LOADN                            R42 1
     1046 SETTABLEKS                       R42 R41 K208 ["BackgroundTransparency"]
     1048 CALL                             R39 2 1
     1049 SETTABLEKS                       R39 R38 K44 ["Frame"]
     1051 GETUPVAL                         R40 10
     1052 GETTABLEKS                       R39 R40 K43 ["createElement"]
     1054 GETUPVAL                         R40 36
     1055 DUPTABLE                         R41 K205 [{"LayoutOrder", "Writable", "IsGroupGame"}]
     1056 NAMECALL                         R42 R25 K83 ["getNextOrder"]
     1058 CALL                             R42 1 1
     1059 SETTABLEKS                       R42 R41 K74 ["LayoutOrder"]
     1061 SETTABLEKS                       R16 R41 K203 ["Writable"]
     1063 GETUPVAL                         R43 37
     1064 JUMPIFNOT                        R43 ; [+4]
     1065 NAMECALL                         R42 R0 K206 ["isGroupGame"]
     1067 CALL                             R42 1 1
     1068 JUMP                             ; [+1]
     1069 LOADNIL                          R42
     1070 SETTABLEKS                       R42 R41 K204 ["IsGroupGame"]
     1072 CALL                             R39 2 1
     1073 SETTABLEKS                       R39 R38 K201 ["CollaboratorsWidget"]
     1075 CALL                             R35 3 1
     1076 SETTABLEKS                       R35 R34 K58 ["ScrollingFrame"]
     1078 JUMPIFNOT                        R19 ; [+90]
     1079 GETUPVAL                         R36 10
     1080 GETTABLEKS                       R35 R36 K43 ["createElement"]
     1082 LOADK                            R36 K44 ["Frame"]
     1083 DUPTABLE                         R37 K216 [{"BackgroundTransparency", "BackgroundColor3", "LayoutOrder", "Size", "BorderSizePixel"}]
     1084 LOADN                            R38 1
     1085 SETTABLEKS                       R38 R37 K208 ["BackgroundTransparency"]
     1087 GETTABLEKS                       R38 R2 K50 ["backgroundColor"]
     1089 SETTABLEKS                       R38 R37 K46 ["BackgroundColor3"]
     1091 NAMECALL                         R38 R24 K83 ["getNextOrder"]
     1093 CALL                             R38 1 1
     1094 SETTABLEKS                       R38 R37 K74 ["LayoutOrder"]
     1096 GETIMPORT                        R38 K49 [UDim2.new]
     1098 LOADN                            R39 1
     1099 LOADN                            R40 0
     1100 LOADN                            R41 0
     1101 GETTABLEKS                       R43 R2 K35 ["saveMessage"]
     1103 GETTABLEKS                       R42 R43 K36 ["boxHeight"]
     1105 CALL                             R38 4 1
     1106 SETTABLEKS                       R38 R37 K45 ["Size"]
     1108 LOADN                            R38 0
     1109 SETTABLEKS                       R38 R37 K215 ["BorderSizePixel"]
     1111 DUPTABLE                         R38 K217 [{"Text"}]
     1112 GETUPVAL                         R40 10
     1113 GETTABLEKS                       R39 R40 K43 ["createElement"]
     1115 LOADK                            R40 K218 ["TextLabel"]
     1116 GETUPVAL                         R43 39
     1117 GETTABLEKS                       R42 R43 K219 ["Dictionary"]
     1119 GETTABLEKS                       R41 R42 K220 ["join"]
     1121 GETTABLEKS                       R43 R2 K35 ["saveMessage"]
     1123 GETTABLEKS                       R42 R43 K221 ["textStyle"]
     1125 DUPTABLE                         R43 K226 [{"AnchorPoint", "Position", "Text", "TextXAlignment", "BorderSizePixel", "TextWrapped", "Size", "BackgroundTransparency"}]
     1126 GETIMPORT                        R44 K228 [Vector2.new]
     1128 LOADN                            R45 0
     1129 LOADK                            R46 K229 [0.5]
     1130 CALL                             R44 2 1
     1131 SETTABLEKS                       R44 R43 K222 ["AnchorPoint"]
     1133 GETTABLEKS                       R45 R2 K35 ["saveMessage"]
     1135 GETTABLEKS                       R44 R45 K230 ["InnerTextPosition"]
     1137 SETTABLEKS                       R44 R43 K223 ["Position"]
     1139 SETTABLEKS                       R21 R43 K120 ["Text"]
     1141 GETIMPORT                        R44 K231 [Enum.TextXAlignment.Left]
     1143 SETTABLEKS                       R44 R43 K224 ["TextXAlignment"]
     1145 LOADN                            R44 0
     1146 SETTABLEKS                       R44 R43 K215 ["BorderSizePixel"]
     1148 LOADB                            R44 1
     1149 SETTABLEKS                       R44 R43 K225 ["TextWrapped"]
     1151 GETIMPORT                        R44 K49 [UDim2.new]
     1153 LOADK                            R45 K232 [0.55]
     1154 LOADN                            R46 0
     1155 LOADN                            R47 1
     1156 LOADN                            R48 0
     1157 CALL                             R44 4 1
     1158 SETTABLEKS                       R44 R43 K45 ["Size"]
     1160 LOADN                            R44 1
     1161 SETTABLEKS                       R44 R43 K208 ["BackgroundTransparency"]
     1163 CALL                             R41 2 -1
     1164 CALL                             R39 -1 1
     1165 SETTABLEKS                       R39 R38 K120 ["Text"]
     1167 CALL                             R35 3 1
     1168 JUMP                             ; [+1]
     1169 LOADNIL                          R35
     1170 SETTABLEKS                       R35 R34 K59 ["TextFrame"]
     1172 GETUPVAL                         R35 0
     1173 JUMPIFNOT                        R35 ; [+15]
     1174 GETTABLEKS                       R36 R0 K7 ["state"]
     1176 GETTABLEKS                       R35 R36 K233 ["upsellDialogEnabled"]
     1178 JUMPIFNOT                        R35 ; [+10]
     1179 GETUPVAL                         R36 12
     1180 GETTABLEKS                       R35 R36 K43 ["createElement"]
     1182 GETUPVAL                         R36 40
     1183 DUPTABLE                         R37 K234 [{"onClose"}]
     1184 NEWCLOSURE                       R38 P5
     1185 CAPTURE                          VAL R0
     1186 SETTABLEKS                       R38 R37 K133 ["onClose"]
     1188 CALL                             R35 2 1
     1189 SETTABLEKS                       R35 R34 K60 ["upsellDialog"]
     1191 MOVE                             R35 R17
     1192 JUMPIFNOT                        R35 ; [+42]
     1193 GETUPVAL                         R36 10
     1194 GETTABLEKS                       R35 R36 K43 ["createElement"]
     1196 GETUPVAL                         R36 11
     1197 DUPTABLE                         R37 K82 [{"LayoutOrder", "Size"}]
     1198 NAMECALL                         R38 R24 K83 ["getNextOrder"]
     1200 CALL                             R38 1 1
     1201 SETTABLEKS                       R38 R37 K74 ["LayoutOrder"]
     1203 GETIMPORT                        R38 K49 [UDim2.new]
     1205 LOADN                            R39 1
     1206 LOADN                            R40 0
     1207 LOADN                            R41 0
     1208 GETTABLEKS                       R43 R2 K34 ["footer"]
     1210 GETTABLEKS                       R42 R43 K33 ["height"]
     1212 CALL                             R38 4 1
     1213 SETTABLEKS                       R38 R37 K45 ["Size"]
     1215 DUPTABLE                         R38 K236 [{"Footer"}]
     1216 GETUPVAL                         R40 10
     1217 GETTABLEKS                       R39 R40 K43 ["createElement"]
     1219 GETUPVAL                         R40 41
     1220 DUPTABLE                         R41 K239 [{"IsTeamCreateEnabled", "OnSavePressed", "OnCancelPressed"}]
     1221 SETTABLEKS                       R18 R41 K86 ["IsTeamCreateEnabled"]
     1223 NEWCLOSURE                       R42 P6
     1224 CAPTURE                          VAL R0
     1225 SETTABLEKS                       R42 R41 K237 ["OnSavePressed"]
     1227 NEWCLOSURE                       R42 P7
     1228 CAPTURE                          VAL R0
     1229 SETTABLEKS                       R42 R41 K238 ["OnCancelPressed"]
     1231 CALL                             R39 2 1
     1232 SETTABLEKS                       R39 R38 K235 ["Footer"]
     1234 CALL                             R35 3 1
     1235 SETTABLEKS                       R35 R34 K61 ["FooterContent"]
     1237 NOT                              R35 R13
     1238 JUMPIFNOT                        R35 ; [+22]
     1239 NOT                              R35 R14
     1240 JUMPIFNOT                        R35 ; [+20]
     1241 GETUPVAL                         R36 10
     1242 GETTABLEKS                       R35 R36 K43 ["createElement"]
     1244 GETUPVAL                         R36 42
     1245 DUPTABLE                         R37 K240 [{"AnchorPoint", "Position"}]
     1246 GETIMPORT                        R38 K228 [Vector2.new]
     1248 LOADK                            R39 K229 [0.5]
     1249 LOADK                            R40 K229 [0.5]
     1250 CALL                             R38 2 1
     1251 SETTABLEKS                       R38 R37 K222 ["AnchorPoint"]
     1253 GETIMPORT                        R38 K242 [UDim2.fromScale]
     1255 LOADK                            R39 K229 [0.5]
     1256 LOADK                            R40 K229 [0.5]
     1257 CALL                             R38 2 1
     1258 SETTABLEKS                       R38 R37 K223 ["Position"]
     1260 CALL                             R35 2 1
     1261 SETTABLEKS                       R35 R34 K62 ["LoadingIndicator"]
     1263 MOVE                             R35 R14
     1264 JUMPIFNOT                        R35 ; [+46]
     1265 GETUPVAL                         R36 10
     1266 GETTABLEKS                       R35 R36 K43 ["createElement"]
     1268 LOADK                            R36 K218 ["TextLabel"]
     1269 DUPTABLE                         R37 K246 [{"Text", "AnchorPoint", "Position", "TextColor3", "TextSize", "Font"}]
     1270 SETTABLEKS                       R15 R37 K120 ["Text"]
     1272 GETIMPORT                        R38 K228 [Vector2.new]
     1274 LOADK                            R39 K229 [0.5]
     1275 LOADK                            R40 K229 [0.5]
     1276 CALL                             R38 2 1
     1277 SETTABLEKS                       R38 R37 K222 ["AnchorPoint"]
     1279 GETIMPORT                        R38 K242 [UDim2.fromScale]
     1281 LOADK                            R39 K229 [0.5]
     1282 LOADK                            R40 K247 [0.25]
     1283 CALL                             R38 2 1
     1284 SETTABLEKS                       R38 R37 K223 ["Position"]
     1286 GETTABLEKS                       R40 R2 K248 ["fontStyle"]
     1288 GETTABLEKS                       R39 R40 K249 ["Normal"]
     1290 GETTABLEKS                       R38 R39 K243 ["TextColor3"]
     1292 SETTABLEKS                       R38 R37 K243 ["TextColor3"]
     1294 GETTABLEKS                       R40 R2 K248 ["fontStyle"]
     1296 GETTABLEKS                       R39 R40 K249 ["Normal"]
     1298 GETTABLEKS                       R38 R39 K244 ["TextSize"]
     1300 SETTABLEKS                       R38 R37 K244 ["TextSize"]
     1302 GETTABLEKS                       R40 R2 K248 ["fontStyle"]
     1304 GETTABLEKS                       R39 R40 K249 ["Normal"]
     1306 GETTABLEKS                       R38 R39 K245 ["Font"]
     1308 SETTABLEKS                       R38 R37 K245 ["Font"]
     1310 CALL                             R35 2 1
     1311 SETTABLEKS                       R35 R34 K63 ["FailureText"]
     1313 CALL                             R31 3 -1
     1314 RETURN                           R31 -1

PROTO_37:
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

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["LoadPermissions"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_39:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
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
      235 LOADK                            R46 K61 ["UpsellCollabTrustedConnection"]
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
      460 DUPCLOSURE                       R74 K98 [PROTO_9]
      461 CAPTURE                          VAL R8
      462 CAPTURE                          VAL R43
      463 CAPTURE                          VAL R69
      464 CAPTURE                          VAL R66
      465 CAPTURE                          VAL R4
      466 CAPTURE                          VAL R6
      467 CAPTURE                          VAL R5
      468 CAPTURE                          VAL R67
      469 SETTABLEKS                       R74 R65 K99 ["init"]
      471 DUPCLOSURE                       R74 K100 [PROTO_22]
      472 CAPTURE                          VAL R44
      473 CAPTURE                          VAL R45
      474 CAPTURE                          VAL R69
      475 CAPTURE                          VAL R67
      476 CAPTURE                          VAL R4
      477 CAPTURE                          VAL R11
      478 SETTABLEKS                       R74 R65 K101 ["didUpdate"]
      480 DUPCLOSURE                       R74 K102 [PROTO_23]
      481 CAPTURE                          VAL R46
      482 CAPTURE                          VAL R71
      483 CAPTURE                          VAL R6
      484 CAPTURE                          VAL R5
      485 SETGLOBAL                        R74 K103 ["checkAndMaybeShowVerifyAgeDialog"]
      487 DUPCLOSURE                       R74 K104 [PROTO_24]
      488 CAPTURE                          VAL R11
      489 CAPTURE                          VAL R42
      490 CAPTURE                          VAL R57
      491 CAPTURE                          VAL R3
      492 SETTABLEKS                       R74 R65 K105 ["onSavePressed"]
      494 DUPCLOSURE                       R74 K106 [PROTO_27]
      495 CAPTURE                          VAL R42
      496 CAPTURE                          VAL R60
      497 CAPTURE                          VAL R34
      498 CAPTURE                          VAL R21
      499 CAPTURE                          VAL R8
      500 SETTABLEKS                       R74 R65 K107 ["onCancelPressed"]
      502 DUPCLOSURE                       R74 K108 [PROTO_36]
      503 CAPTURE                          VAL R44
      504 CAPTURE                          VAL R11
      505 CAPTURE                          VAL R42
      506 CAPTURE                          VAL R52
      507 CAPTURE                          VAL R51
      508 CAPTURE                          VAL R48
      509 CAPTURE                          VAL R57
      510 CAPTURE                          VAL R61
      511 CAPTURE                          VAL R59
      512 CAPTURE                          VAL R43
      513 CAPTURE                          VAL R8
      514 CAPTURE                          VAL R19
      515 CAPTURE                          VAL R63
      516 CAPTURE                          VAL R64
      517 CAPTURE                          VAL R3
      518 CAPTURE                          VAL R62
      519 CAPTURE                          VAL R27
      520 CAPTURE                          VAL R26
      521 CAPTURE                          VAL R29
      522 CAPTURE                          VAL R23
      523 CAPTURE                          VAL R30
      524 CAPTURE                          VAL R31
      525 CAPTURE                          VAL R32
      526 CAPTURE                          VAL R33
      527 CAPTURE                          VAL R69
      528 CAPTURE                          VAL R66
      529 CAPTURE                          VAL R4
      530 CAPTURE                          VAL R6
      531 CAPTURE                          VAL R5
      532 CAPTURE                          VAL R28
      533 CAPTURE                          VAL R22
      534 CAPTURE                          VAL R2
      535 CAPTURE                          VAL R24
      536 CAPTURE                          VAL R25
      537 CAPTURE                          VAL R36
      538 CAPTURE                          VAL R37
      539 CAPTURE                          VAL R35
      540 CAPTURE                          VAL R0
      541 CAPTURE                          VAL R18
      542 CAPTURE                          VAL R10
      543 CAPTURE                          VAL R70
      544 CAPTURE                          VAL R38
      545 CAPTURE                          VAL R20
      546 SETTABLEKS                       R74 R65 K109 ["render"]
      548 MOVE                             R74 R14
      549 DUPTABLE                         R75 K110 [{"Stylizer", "Localization"}]
      550 SETTABLEKS                       R15 R75 K28 ["Stylizer"]
      552 SETTABLEKS                       R16 R75 K29 ["Localization"]
      554 CALL                             R74 1 1
      555 MOVE                             R75 R65
      556 CALL                             R74 1 1
      557 MOVE                             R65 R74
      558 GETTABLEKS                       R74 R9 K111 ["connect"]
      560 NEWCLOSURE                       R75 P10
      561 CAPTURE                          VAL R56
      562 CAPTURE                          VAL R51
      563 CAPTURE                          VAL R52
      564 CAPTURE                          VAL R53
      565 CAPTURE                          VAL R55
      566 CAPTURE                          VAL R11
      567 CAPTURE                          VAL R54
      568 CAPTURE                          VAL R48
      569 CAPTURE                          REF R50
      570 NEWCLOSURE                       R76 P11
      571 CAPTURE                          VAL R40
      572 CAPTURE                          VAL R39
      573 CAPTURE                          VAL R42
      574 CAPTURE                          REF R41
      575 CAPTURE                          VAL R48
      576 CAPTURE                          REF R49
      577 CALL                             R74 2 1
      578 MOVE                             R75 R65
      579 CALL                             R74 1 1
      580 MOVE                             R65 R74
      581 CLOSEUPVALS                      R41
      582 RETURN                           R65 1
