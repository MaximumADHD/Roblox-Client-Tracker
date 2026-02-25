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
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+56]
        2 GETTABLEKS                       R2 R1 K0 ["Enabled"]
        4 JUMPIF                           R2 ; [+53]
        5 GETTABLEKS                       R3 R0 K1 ["props"]
        7 GETTABLEKS                       R2 R3 K0 ["Enabled"]
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
       58 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
        0 RETURN                           R0 0

PROTO_24:
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
       78 DUPCLOSURE                       R14 K29 [PROTO_23]
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

PROTO_25:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onSavePressed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"ShowTrustedConnectionsBanner"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["ShowTrustedConnectionsBanner"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"upsellDialogEnabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["upsellDialogEnabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onSavePressed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onCancelPressed"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_31:
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
       33 GETTABLEKS                       R10 R1 K11 ["HasCurrentEditCollaborators"]
       35 GETUPVAL                         R12 1
       36 JUMPIFNOT                        R12 ; [+3]
       37 GETTABLEKS                       R11 R1 K12 ["SendAllSearchItemLogs"]
       39 JUMP                             ; [+1]
       40 LOADNIL                          R11
       41 GETUPVAL                         R13 2
       42 GETTABLEKS                       R12 R13 K13 ["Saved"]
       44 JUMPIFNOTEQ                      R4 R12 ; [+5]
       46 GETTABLEKS                       R12 R1 K14 ["CloseWidget"]
       48 CALL                             R12 0 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R14 3
       51 GETTABLEKS                       R13 R14 K15 ["Loaded"]
       53 JUMPIFEQ                         R5 R13 ; [+2]
       55 LOADB                            R12 0 +1
       56 LOADB                            R12 1
       57 GETUPVAL                         R13 4
       58 JUMPIFNOT                        R13 ; [+6]
       59 JUMPIFNOT                        R12 ; [+5]
       60 GETTABLEKS                       R13 R1 K16 ["PrefetchLikelyCollaborators"]
       62 GETTABLEKS                       R14 R1 K17 ["Is17PlusGame"]
       64 CALL                             R13 1 0
       65 LOADB                            R13 0
       66 LOADNIL                          R14
       67 GETUPVAL                         R16 3
       68 GETTABLEKS                       R15 R16 K18 ["Unloaded"]
       70 JUMPIFNOTEQ                      R5 R15 ; [+4]
       72 GETTABLEKS                       R15 R1 K19 ["LoadPermissions"]
       74 CALL                             R15 0 0
       75 GETUPVAL                         R16 3
       76 GETTABLEKS                       R15 R16 K20 ["LoadFailed"]
       78 JUMPIFEQ                         R5 R15 ; [+6]
       80 GETUPVAL                         R16 2
       81 GETTABLEKS                       R15 R16 K21 ["SaveFailed"]
       83 JUMPIFNOTEQ                      R4 R15 ; [+20]
       85 LOADB                            R13 1
       86 GETUPVAL                         R16 3
       87 GETTABLEKS                       R15 R16 K20 ["LoadFailed"]
       89 JUMPIFNOTEQ                      R5 R15 ; [+8]
       91 LOADK                            R17 K22 ["FailureMessage"]
       92 LOADK                            R18 K23 ["LoadFailure"]
       93 NAMECALL                         R15 R3 K24 ["getText"]
       95 CALL                             R15 3 1
       96 MOVE                             R14 R15
       97 JUMP                             ; [+6]
       98 LOADK                            R17 K22 ["FailureMessage"]
       99 LOADK                            R18 K25 ["SaveFailure"]
      100 NAMECALL                         R15 R3 K24 ["getText"]
      102 CALL                             R15 3 1
      103 MOVE                             R14 R15
      104 NAMECALL                         R15 R0 K26 ["isLoggedInUserGameOwner"]
      106 CALL                             R15 1 1
      107 MOVE                             R16 R12
      108 JUMPIFNOT                        R16 ; [+1]
      109 NOT                              R16 R13
      110 GETUPVAL                         R17 5
      111 CALL                             R17 0 1
      112 MOVE                             R18 R16
      113 JUMPIFNOT                        R18 ; [+3]
      114 NOT                              R18 R17
      115 JUMPIFNOT                        R18 ; [+1]
      116 OR                               R18 R6 R10
      117 JUMPIFNOT                        R10 ; [+2]
      118 LOADK                            R19 K27 ["SaveEnableTcCurrentEditors"]
      119 JUMP                             ; [+1]
      120 LOADK                            R19 K28 ["SaveEnableTC"]
      121 LOADK                            R22 K29 ["Description"]
      122 MOVE                             R23 R19
      123 NAMECALL                         R20 R3 K24 ["getText"]
      125 CALL                             R20 3 1
      126 GETTABLEKS                       R22 R2 K30 ["header"]
      128 GETTABLEKS                       R21 R22 K31 ["height"]
      130 GETTABLEKS                       R23 R2 K32 ["footer"]
      132 GETTABLEKS                       R22 R23 K31 ["height"]
      134 JUMPIFNOT                        R18 ; [+5]
      135 GETTABLEKS                       R24 R2 K33 ["saveMessage"]
      137 GETTABLEKS                       R23 R24 K34 ["boxHeight"]
      139 ADD                              R22 R22 R23
      140 GETUPVAL                         R23 6
      141 JUMPIFNOT                        R23 ; [+1]
      142 ADD                              R22 R22 R21
      143 GETUPVAL                         R24 7
      144 GETTABLEKS                       R23 R24 K35 ["new"]
      146 CALL                             R23 0 1
      147 GETUPVAL                         R25 7
      148 GETTABLEKS                       R24 R25 K35 ["new"]
      150 CALL                             R24 0 1
      151 GETUPVAL                         R26 8
      152 JUMPIFNOT                        R26 ; [+5]
      153 GETUPVAL                         R26 7
      154 GETTABLEKS                       R25 R26 K35 ["new"]
      156 CALL                             R25 0 1
      157 JUMP                             ; [+1]
      158 LOADNIL                          R25
      159 GETUPVAL                         R26 8
      160 JUMPIFNOT                        R26 ; [+1]
      161 OR                               R26 R7 R8
      162 GETUPVAL                         R28 9
      163 GETTABLEKS                       R27 R28 K36 ["createElement"]
      165 LOADK                            R28 K37 ["Frame"]
      166 DUPTABLE                         R29 K40 [{"Size", "BackgroundColor3"}]
      167 GETIMPORT                        R30 K42 [UDim2.new]
      169 LOADN                            R31 1
      170 LOADN                            R32 0
      171 LOADN                            R33 1
      172 LOADN                            R34 0
      173 CALL                             R30 4 1
      174 SETTABLEKS                       R30 R29 K38 ["Size"]
      176 GETTABLEKS                       R30 R2 K43 ["backgroundColor"]
      178 SETTABLEKS                       R30 R29 K39 ["BackgroundColor3"]
      180 DUPTABLE                         R30 K56 [{"Layout", "HeaderContent", "UpsellBanner", "TrustedConnectionsBanner", "CollaborationSubtitleTitleView", "ScrollingFrameNew", "ScrollingFrame", "TextFrame", "upsellDialog", "FooterContent", "LoadingIndicator", "FailureText"}]
      181 MOVE                             R31 R16
      182 JUMPIFNOT                        R31 ; [+28]
      183 GETUPVAL                         R32 9
      184 GETTABLEKS                       R31 R32 K36 ["createElement"]
      186 LOADK                            R32 K57 ["UIListLayout"]
      187 DUPTABLE                         R33 K62 [{"FillDirection", "SortOrder", "HorizontalAlignment", "Padding"}]
      188 GETIMPORT                        R34 K65 [Enum.FillDirection.Vertical]
      190 SETTABLEKS                       R34 R33 K58 ["FillDirection"]
      192 GETIMPORT                        R34 K67 [Enum.SortOrder.LayoutOrder]
      194 SETTABLEKS                       R34 R33 K59 ["SortOrder"]
      196 GETIMPORT                        R34 K69 [Enum.HorizontalAlignment.Center]
      198 SETTABLEKS                       R34 R33 K60 ["HorizontalAlignment"]
      200 GETIMPORT                        R34 K71 [UDim.new]
      202 LOADN                            R35 0
      203 GETTABLEKS                       R37 R2 K72 ["permissionsView"]
      205 GETTABLEKS                       R36 R37 K61 ["Padding"]
      207 CALL                             R34 2 1
      208 SETTABLEKS                       R34 R33 K61 ["Padding"]
      210 CALL                             R31 2 1
      211 SETTABLEKS                       R31 R30 K44 ["Layout"]
      213 GETUPVAL                         R31 10
      214 JUMPIFNOT                        R31 ; [+74]
      215 NOT                              R31 R26
      216 JUMPIFNOT                        R31 ; [+72]
      217 GETUPVAL                         R31 6
      218 JUMPIFNOT                        R31 ; [+70]
      219 MOVE                             R31 R16
      220 JUMPIFNOT                        R31 ; [+68]
      221 GETUPVAL                         R32 9
      222 GETTABLEKS                       R31 R32 K36 ["createElement"]
      224 GETUPVAL                         R32 11
      225 DUPTABLE                         R33 K73 [{"LayoutOrder", "Size"}]
      226 NAMECALL                         R34 R23 K74 ["getNextOrder"]
      228 CALL                             R34 1 1
      229 SETTABLEKS                       R34 R33 K66 ["LayoutOrder"]
      231 GETIMPORT                        R34 K42 [UDim2.new]
      233 LOADN                            R35 1
      234 LOADN                            R36 0
      235 LOADN                            R37 0
      236 GETTABLEKS                       R39 R2 K30 ["header"]
      238 GETTABLEKS                       R38 R39 K31 ["height"]
      240 CALL                             R34 4 1
      241 SETTABLEKS                       R34 R33 K38 ["Size"]
      243 DUPTABLE                         R34 K76 [{"Header"}]
      244 GETUPVAL                         R36 12
      245 GETTABLEKS                       R35 R36 K36 ["createElement"]
      247 GETUPVAL                         R36 13
      248 DUPTABLE                         R37 K84 [{"Stylizer", "Localization", "IsTeamCreateEnabled", "HasUnsavedChanges", "HasCollaborators", "Plugin", "SaveThenTurnOnTeamCreate", "TurnOnTeamCreate", "Links", "FetchLink"}]
      249 SETTABLEKS                       R2 R37 K2 ["Stylizer"]
      251 SETTABLEKS                       R3 R37 K3 ["Localization"]
      253 SETTABLEKS                       R17 R37 K77 ["IsTeamCreateEnabled"]
      255 GETTABLEKS                       R38 R1 K78 ["HasUnsavedChanges"]
      257 SETTABLEKS                       R38 R37 K78 ["HasUnsavedChanges"]
      259 GETTABLEKS                       R38 R1 K6 ["HasCollaborators"]
      261 SETTABLEKS                       R38 R37 K6 ["HasCollaborators"]
      263 GETTABLEKS                       R38 R1 K79 ["Plugin"]
      265 SETTABLEKS                       R38 R37 K79 ["Plugin"]
      267 NEWCLOSURE                       R38 P0
      268 CAPTURE                          VAL R0
      269 SETTABLEKS                       R38 R37 K80 ["SaveThenTurnOnTeamCreate"]
      271 NEWCLOSURE                       R38 P1
      272 CAPTURE                          UPVAL U1
      273 CAPTURE                          VAL R11
      274 CAPTURE                          UPVAL U14
      275 SETTABLEKS                       R38 R37 K81 ["TurnOnTeamCreate"]
      277 GETTABLEKS                       R38 R1 K82 ["Links"]
      279 SETTABLEKS                       R38 R37 K82 ["Links"]
      281 GETTABLEKS                       R38 R1 K83 ["FetchLink"]
      283 SETTABLEKS                       R38 R37 K83 ["FetchLink"]
      285 CALL                             R35 2 1
      286 SETTABLEKS                       R35 R34 K75 ["Header"]
      288 CALL                             R31 3 1
      289 SETTABLEKS                       R31 R30 K45 ["HeaderContent"]
      291 GETUPVAL                         R31 8
      292 JUMPIFNOT                        R31 ; [+155]
      293 MOVE                             R31 R7
      294 JUMPIFNOT                        R31 ; [+153]
      295 GETUPVAL                         R32 9
      296 GETTABLEKS                       R31 R32 K36 ["createElement"]
      298 GETUPVAL                         R32 15
      299 DUPTABLE                         R33 K87 [{"LayoutOrder", "Size", "tag", "onActivated"}]
      300 NAMECALL                         R34 R23 K74 ["getNextOrder"]
      302 CALL                             R34 1 1
      303 SETTABLEKS                       R34 R33 K66 ["LayoutOrder"]
      305 GETIMPORT                        R34 K42 [UDim2.new]
      307 LOADN                            R35 0
      308 LOADN                            R36 2
      309 LOADN                            R37 0
      310 LOADN                            R38 50
      311 CALL                             R34 4 1
      312 SETTABLEKS                       R34 R33 K38 ["Size"]
      314 LOADK                            R34 K88 ["auto-xy stroke-system-emphasis bg-over-media-300 radius-small padding-left-large"]
      315 SETTABLEKS                       R34 R33 K85 ["tag"]
      317 GETTABLEKS                       R34 R0 K89 ["launchFAEPlusVPC"]
      319 SETTABLEKS                       R34 R33 K86 ["onActivated"]
      321 NEWTABLE                         R34 4 1
      323 MOVE                             R36 R16
      324 JUMPIFNOT                        R36 ; [+28]
      325 GETUPVAL                         R37 9
      326 GETTABLEKS                       R36 R37 K36 ["createElement"]
      328 LOADK                            R37 K57 ["UIListLayout"]
      329 DUPTABLE                         R38 K91 [{"FillDirection", "VerticalAlignment", "SortOrder", "Padding"}]
      330 GETIMPORT                        R39 K93 [Enum.FillDirection.Horizontal]
      332 SETTABLEKS                       R39 R38 K58 ["FillDirection"]
      334 GETIMPORT                        R39 K94 [Enum.VerticalAlignment.Center]
      336 SETTABLEKS                       R39 R38 K90 ["VerticalAlignment"]
      338 GETIMPORT                        R39 K67 [Enum.SortOrder.LayoutOrder]
      340 SETTABLEKS                       R39 R38 K59 ["SortOrder"]
      342 GETIMPORT                        R39 K71 [UDim.new]
      344 LOADN                            R40 0
      345 GETTABLEKS                       R42 R2 K72 ["permissionsView"]
      347 GETTABLEKS                       R41 R42 K61 ["Padding"]
      349 CALL                             R39 2 1
      350 SETTABLEKS                       R39 R38 K61 ["Padding"]
      352 CALL                             R36 2 1
      353 SETTABLEKS                       R36 R34 K95 ["UpsellLayout"]
      355 GETUPVAL                         R36 12
      356 GETTABLEKS                       R35 R36 K36 ["createElement"]
      358 GETUPVAL                         R36 16
      359 DUPTABLE                         R37 K100 [{"name", "style", "LayoutOrder", "size", "variant"}]
      360 GETUPVAL                         R40 17
      361 GETTABLEKS                       R39 R40 K101 ["IconName"]
      363 GETTABLEKS                       R38 R39 K102 ["TriangleExclamation"]
      365 SETTABLEKS                       R38 R37 K96 ["name"]
      367 DUPTABLE                         R38 K105 [{"Color3", "Transparency"}]
      368 GETIMPORT                        R39 K107 [Color3.fromRGB]
      370 LOADN                            R40 51
      371 LOADN                            R41 95
      372 LOADN                            R42 255
      373 CALL                             R39 3 1
      374 SETTABLEKS                       R39 R38 K103 ["Color3"]
      376 LOADN                            R39 0
      377 SETTABLEKS                       R39 R38 K104 ["Transparency"]
      379 SETTABLEKS                       R38 R37 K97 ["style"]
      381 NAMECALL                         R38 R25 K74 ["getNextOrder"]
      383 CALL                             R38 1 1
      384 SETTABLEKS                       R38 R37 K66 ["LayoutOrder"]
      386 GETUPVAL                         R40 17
      387 GETTABLEKS                       R39 R40 K108 ["IconSize"]
      389 GETTABLEKS                       R38 R39 K109 ["Large"]
      391 SETTABLEKS                       R38 R37 K98 ["size"]
      393 GETUPVAL                         R39 18
      394 GETTABLEKS                       R38 R39 K110 ["Filled"]
      396 SETTABLEKS                       R38 R37 K99 ["variant"]
      398 CALL                             R35 2 1
      399 SETLIST                          R34 R35 1 [1]
      401 GETUPVAL                         R37 9
      402 GETTABLEKS                       R36 R37 K36 ["createElement"]
      404 GETUPVAL                         R37 19
      405 DUPTABLE                         R38 K112 [{"tag", "LayoutOrder", "Text"}]
      406 LOADK                            R39 K113 ["auto-y text-align-y-center text-align-x-left text-title-medium padding-left-large fill"]
      407 SETTABLEKS                       R39 R38 K85 ["tag"]
      409 NAMECALL                         R39 R25 K74 ["getNextOrder"]
      411 CALL                             R39 1 1
      412 SETTABLEKS                       R39 R38 K66 ["LayoutOrder"]
      414 LOADK                            R41 K46 ["UpsellBanner"]
      415 LOADK                            R42 K114 ["description"]
      416 NAMECALL                         R39 R3 K24 ["getText"]
      418 CALL                             R39 3 1
      419 SETTABLEKS                       R39 R38 K111 ["Text"]
      421 CALL                             R36 2 1
      422 SETTABLEKS                       R36 R34 K115 ["WarningText"]
      424 GETUPVAL                         R37 9
      425 GETTABLEKS                       R36 R37 K36 ["createElement"]
      427 GETUPVAL                         R37 19
      428 DUPTABLE                         R38 K112 [{"tag", "LayoutOrder", "Text"}]
      429 LOADK                            R39 K116 ["text-align-y-center text-align-x-center text-label-medium padding-right-large auto-xy"]
      430 SETTABLEKS                       R39 R38 K85 ["tag"]
      432 NAMECALL                         R39 R25 K74 ["getNextOrder"]
      434 CALL                             R39 1 1
      435 SETTABLEKS                       R39 R38 K66 ["LayoutOrder"]
      437 LOADK                            R41 K46 ["UpsellBanner"]
      438 LOADK                            R42 K117 ["CTA"]
      439 NAMECALL                         R39 R3 K24 ["getText"]
      441 CALL                             R39 3 1
      442 SETTABLEKS                       R39 R38 K111 ["Text"]
      444 CALL                             R36 2 1
      445 SETTABLEKS                       R36 R34 K118 ["GetStarted"]
      447 CALL                             R31 3 1
      448 SETTABLEKS                       R31 R30 K46 ["UpsellBanner"]
      450 GETUPVAL                         R31 0
      451 JUMPIFNOT                        R31 ; [+65]
      452 MOVE                             R31 R8
      453 JUMPIFNOT                        R31 ; [+63]
      454 GETUPVAL                         R32 12
      455 GETTABLEKS                       R31 R32 K36 ["createElement"]
      457 GETUPVAL                         R32 15
      458 DUPTABLE                         R33 K119 [{"tag"}]
      459 LOADK                            R34 K120 ["padding-x-large padding-top-large size-full-0 auto-y"]
      460 SETTABLEKS                       R34 R33 K85 ["tag"]
      462 GETUPVAL                         R35 12
      463 GETTABLEKS                       R34 R35 K36 ["createElement"]
      465 GETUPVAL                         R35 20
      466 DUPTABLE                         R36 K125 [{"variant", "severity", "title", "actions", "onClose"}]
      467 GETUPVAL                         R38 21
      468 GETTABLEKS                       R37 R38 K126 ["Standard"]
      470 SETTABLEKS                       R37 R36 K99 ["variant"]
      472 GETUPVAL                         R38 22
      473 GETTABLEKS                       R37 R38 K127 ["Info"]
      475 SETTABLEKS                       R37 R36 K121 ["severity"]
      477 LOADK                            R39 K46 ["UpsellBanner"]
      478 LOADK                            R40 K128 ["nextStepDescription"]
      479 NAMECALL                         R37 R3 K24 ["getText"]
      481 CALL                             R37 3 1
      482 SETTABLEKS                       R37 R36 K122 ["title"]
      484 NEWTABLE                         R37 0 1
      486 DUPTABLE                         R38 K130 [{"text", "variant", "onActivated"}]
      487 LOADK                            R41 K46 ["UpsellBanner"]
      488 LOADK                            R42 K117 ["CTA"]
      489 NAMECALL                         R39 R3 K24 ["getText"]
      491 CALL                             R39 3 1
      492 SETTABLEKS                       R39 R38 K129 ["text"]
      494 GETUPVAL                         R40 23
      495 GETTABLEKS                       R39 R40 K126 ["Standard"]
      497 SETTABLEKS                       R39 R38 K99 ["variant"]
      499 JUMPIFNOT                        R9 ; [+3]
      500 GETTABLEKS                       R39 R0 K131 ["launchModal"]
      502 JUMP                             ; [+2]
      503 GETTABLEKS                       R39 R0 K89 ["launchFAEPlusVPC"]
      505 SETTABLEKS                       R39 R38 K86 ["onActivated"]
      507 SETLIST                          R37 R38 1 [1]
      509 SETTABLEKS                       R37 R36 K123 ["actions"]
      511 NEWCLOSURE                       R37 P2
      512 CAPTURE                          VAL R0
      513 SETTABLEKS                       R37 R36 K124 ["onClose"]
      515 CALL                             R34 2 -1
      516 CALL                             R31 -1 1
      517 SETTABLEKS                       R31 R30 K47 ["TrustedConnectionsBanner"]
      519 GETUPVAL                         R31 8
      520 JUMPIFNOT                        R31 ; [+55]
      521 GETUPVAL                         R32 5
      522 CALL                             R32 0 1
      523 JUMPIF                           R32 ; [+3]
      524 GETUPVAL                         R32 0
      525 NOT                              R31 R32
      526 JUMPIFNOT                        R31 ; [+49]
      527 GETUPVAL                         R32 9
      528 GETTABLEKS                       R31 R32 K36 ["createElement"]
      530 GETUPVAL                         R32 15
      531 DUPTABLE                         R33 K132 [{"LayoutOrder", "Size", "tag"}]
      532 NAMECALL                         R34 R23 K74 ["getNextOrder"]
      534 CALL                             R34 1 1
      535 SETTABLEKS                       R34 R33 K66 ["LayoutOrder"]
      537 GETIMPORT                        R34 K42 [UDim2.new]
      539 LOADN                            R35 0
      540 LOADN                            R36 2
      541 LOADN                            R37 0
      542 LOADN                            R38 10
      543 CALL                             R34 4 1
      544 SETTABLEKS                       R34 R33 K38 ["Size"]
      546 LOADK                            R34 K133 ["auto-xy padding-top-medium"]
      547 SETTABLEKS                       R34 R33 K85 ["tag"]
      549 DUPTABLE                         R34 K135 [{"CollaborationTitle"}]
      550 GETUPVAL                         R35 24
      551 JUMPIFNOT                        R35 ; [+21]
      552 GETUPVAL                         R36 12
      553 GETTABLEKS                       R35 R36 K36 ["createElement"]
      555 GETUPVAL                         R36 19
      556 DUPTABLE                         R37 K136 [{"LayoutOrder", "tag", "Text"}]
      557 NAMECALL                         R38 R23 K74 ["getNextOrder"]
      559 CALL                             R38 1 1
      560 SETTABLEKS                       R38 R37 K66 ["LayoutOrder"]
      562 LOADK                            R38 K137 ["auto-xy text-align-x-left text-label-small"]
      563 SETTABLEKS                       R38 R37 K85 ["tag"]
      565 LOADK                            R40 K138 ["Subtitle"]
      566 LOADK                            R41 K139 ["SearchCollaborators"]
      567 NAMECALL                         R38 R3 K24 ["getText"]
      569 CALL                             R38 3 1
      570 SETTABLEKS                       R38 R37 K111 ["Text"]
      572 CALL                             R35 2 1
      573 SETTABLEKS                       R35 R34 K134 ["CollaborationTitle"]
      575 CALL                             R31 3 1
      576 SETTABLEKS                       R31 R30 K48 ["CollaborationSubtitleTitleView"]
      578 GETUPVAL                         R31 8
      579 JUMPIFNOT                        R31 ; [+130]
      580 MOVE                             R31 R16
      581 JUMPIFNOT                        R31 ; [+128]
      582 GETUPVAL                         R32 9
      583 GETTABLEKS                       R31 R32 K36 ["createElement"]
      585 GETUPVAL                         R32 25
      586 DUPTABLE                         R33 K142 [{"scroll", "layout", "tag", "LayoutOrder"}]
      587 DUPTABLE                         R34 K147 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
      588 GETUPVAL                         R36 26
      589 GETTABLEKS                       R35 R36 K148 ["Always"]
      591 SETTABLEKS                       R35 R34 K143 ["scrollBarVisibility"]
      593 GETIMPORT                        R35 K150 [Enum.ScrollingDirection.Y]
      595 SETTABLEKS                       R35 R34 K144 ["ScrollingDirection"]
      597 GETIMPORT                        R35 K152 [Enum.AutomaticSize.Y]
      599 SETTABLEKS                       R35 R34 K145 ["AutomaticCanvasSize"]
      601 GETIMPORT                        R35 K42 [UDim2.new]
      603 CALL                             R35 0 1
      604 SETTABLEKS                       R35 R34 K146 ["CanvasSize"]
      606 SETTABLEKS                       R34 R33 K140 ["scroll"]
      608 DUPTABLE                         R34 K154 [{"HorizontalAlignment", "FillDirection", "SortOrder", "HorizontalFlex"}]
      609 GETIMPORT                        R35 K156 [Enum.HorizontalAlignment.Left]
      611 SETTABLEKS                       R35 R34 K60 ["HorizontalAlignment"]
      613 GETIMPORT                        R35 K65 [Enum.FillDirection.Vertical]
      615 SETTABLEKS                       R35 R34 K58 ["FillDirection"]
      617 GETIMPORT                        R35 K67 [Enum.SortOrder.LayoutOrder]
      619 SETTABLEKS                       R35 R34 K59 ["SortOrder"]
      621 GETIMPORT                        R35 K159 [Enum.UIFlexAlignment.Fill]
      623 SETTABLEKS                       R35 R34 K153 ["HorizontalFlex"]
      625 SETTABLEKS                       R34 R33 K141 ["layout"]
      627 LOADK                            R34 K160 ["fill size-full col align-y-top gap-small"]
      628 SETTABLEKS                       R34 R33 K85 ["tag"]
      630 NAMECALL                         R34 R23 K74 ["getNextOrder"]
      632 CALL                             R34 1 1
      633 SETTABLEKS                       R34 R33 K66 ["LayoutOrder"]
      635 DUPTABLE                         R34 K164 [{"SearchBarWidget", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
      636 MOVE                             R35 R15
      637 JUMPIFNOT                        R35 ; [+19]
      638 GETUPVAL                         R36 9
      639 GETTABLEKS                       R35 R36 K36 ["createElement"]
      641 GETUPVAL                         R36 27
      642 DUPTABLE                         R37 K167 [{"LayoutOrder", "Writable", "IsGroupGame"}]
      643 NAMECALL                         R38 R24 K74 ["getNextOrder"]
      645 CALL                             R38 1 1
      646 SETTABLEKS                       R38 R37 K66 ["LayoutOrder"]
      648 LOADB                            R38 1
      649 SETTABLEKS                       R38 R37 K165 ["Writable"]
      651 NAMECALL                         R38 R0 K168 ["isGroupGame"]
      653 CALL                             R38 1 1
      654 SETTABLEKS                       R38 R37 K166 ["IsGroupGame"]
      656 CALL                             R35 2 1
      657 SETTABLEKS                       R35 R34 K161 ["SearchBarWidget"]
      659 GETUPVAL                         R36 9
      660 GETTABLEKS                       R35 R36 K36 ["createElement"]
      662 GETUPVAL                         R36 28
      663 DUPTABLE                         R37 K169 [{"LayoutOrder"}]
      664 NAMECALL                         R38 R24 K74 ["getNextOrder"]
      666 CALL                             R38 1 1
      667 SETTABLEKS                       R38 R37 K66 ["LayoutOrder"]
      669 CALL                             R35 2 1
      670 SETTABLEKS                       R35 R34 K162 ["CollaboratorFilterWidget"]
      672 NOT                              R35 R15
      673 JUMPIFNOT                        R35 ; [+9]
      674 GETUPVAL                         R36 9
      675 GETTABLEKS                       R35 R36 K36 ["createElement"]
      677 LOADK                            R36 K37 ["Frame"]
      678 DUPTABLE                         R37 K171 [{"BackgroundTransparency"}]
      679 LOADN                            R38 1
      680 SETTABLEKS                       R38 R37 K170 ["BackgroundTransparency"]
      682 CALL                             R35 2 1
      683 SETTABLEKS                       R35 R34 K37 ["Frame"]
      685 GETUPVAL                         R36 9
      686 GETTABLEKS                       R35 R36 K36 ["createElement"]
      688 GETUPVAL                         R36 29
      689 DUPTABLE                         R37 K167 [{"LayoutOrder", "Writable", "IsGroupGame"}]
      690 NAMECALL                         R38 R24 K74 ["getNextOrder"]
      692 CALL                             R38 1 1
      693 SETTABLEKS                       R38 R37 K66 ["LayoutOrder"]
      695 SETTABLEKS                       R15 R37 K165 ["Writable"]
      697 GETUPVAL                         R39 30
      698 JUMPIFNOT                        R39 ; [+4]
      699 NAMECALL                         R38 R0 K168 ["isGroupGame"]
      701 CALL                             R38 1 1
      702 JUMP                             ; [+1]
      703 LOADNIL                          R38
      704 SETTABLEKS                       R38 R37 K166 ["IsGroupGame"]
      706 CALL                             R35 2 1
      707 SETTABLEKS                       R35 R34 K163 ["CollaboratorsWidget"]
      709 CALL                             R31 3 1
      710 SETTABLEKS                       R31 R30 K49 ["ScrollingFrameNew"]
      712 GETUPVAL                         R32 8
      713 NOT                              R31 R32
      714 JUMPIFNOT                        R31 ; [+120]
      715 MOVE                             R31 R16
      716 JUMPIFNOT                        R31 ; [+118]
      717 GETUPVAL                         R32 9
      718 GETTABLEKS                       R31 R32 K36 ["createElement"]
      720 GETUPVAL                         R32 31
      721 DUPTABLE                         R33 K173 [{"LayoutOrder", "Size", "Layout", "AutomaticCanvasSize", "Spacing"}]
      722 NAMECALL                         R34 R23 K74 ["getNextOrder"]
      724 CALL                             R34 1 1
      725 SETTABLEKS                       R34 R33 K66 ["LayoutOrder"]
      727 GETIMPORT                        R34 K42 [UDim2.new]
      729 LOADN                            R35 1
      730 LOADN                            R36 0
      731 LOADN                            R37 1
      732 MINUS                            R38 R22
      733 CALL                             R34 4 1
      734 SETTABLEKS                       R34 R33 K38 ["Size"]
      736 GETIMPORT                        R34 K65 [Enum.FillDirection.Vertical]
      738 SETTABLEKS                       R34 R33 K44 ["Layout"]
      740 GETIMPORT                        R34 K152 [Enum.AutomaticSize.Y]
      742 SETTABLEKS                       R34 R33 K145 ["AutomaticCanvasSize"]
      744 GETIMPORT                        R34 K71 [UDim.new]
      746 LOADN                            R35 0
      747 JUMPIFNOT                        R15 ; [+5]
      748 GETTABLEKS                       R37 R2 K174 ["scrollingFrame"]
      750 GETTABLEKS                       R36 R37 K175 ["yPadding"]
      752 JUMP                             ; [+4]
      753 GETTABLEKS                       R37 R2 K174 ["scrollingFrame"]
      755 GETTABLEKS                       R36 R37 K176 ["yPaddingNonOwner"]
      757 CALL                             R34 2 1
      758 SETTABLEKS                       R34 R33 K172 ["Spacing"]
      760 DUPTABLE                         R34 K164 [{"SearchBarWidget", "CollaboratorFilterWidget", "Frame", "CollaboratorsWidget"}]
      761 MOVE                             R35 R15
      762 JUMPIFNOT                        R35 ; [+19]
      763 GETUPVAL                         R36 9
      764 GETTABLEKS                       R35 R36 K36 ["createElement"]
      766 GETUPVAL                         R36 27
      767 DUPTABLE                         R37 K167 [{"LayoutOrder", "Writable", "IsGroupGame"}]
      768 NAMECALL                         R38 R24 K74 ["getNextOrder"]
      770 CALL                             R38 1 1
      771 SETTABLEKS                       R38 R37 K66 ["LayoutOrder"]
      773 LOADB                            R38 1
      774 SETTABLEKS                       R38 R37 K165 ["Writable"]
      776 NAMECALL                         R38 R0 K168 ["isGroupGame"]
      778 CALL                             R38 1 1
      779 SETTABLEKS                       R38 R37 K166 ["IsGroupGame"]
      781 CALL                             R35 2 1
      782 SETTABLEKS                       R35 R34 K161 ["SearchBarWidget"]
      784 GETUPVAL                         R36 9
      785 GETTABLEKS                       R35 R36 K36 ["createElement"]
      787 GETUPVAL                         R36 28
      788 DUPTABLE                         R37 K169 [{"LayoutOrder"}]
      789 NAMECALL                         R38 R24 K74 ["getNextOrder"]
      791 CALL                             R38 1 1
      792 SETTABLEKS                       R38 R37 K66 ["LayoutOrder"]
      794 CALL                             R35 2 1
      795 SETTABLEKS                       R35 R34 K162 ["CollaboratorFilterWidget"]
      797 NOT                              R35 R15
      798 JUMPIFNOT                        R35 ; [+9]
      799 GETUPVAL                         R36 9
      800 GETTABLEKS                       R35 R36 K36 ["createElement"]
      802 LOADK                            R36 K37 ["Frame"]
      803 DUPTABLE                         R37 K171 [{"BackgroundTransparency"}]
      804 LOADN                            R38 1
      805 SETTABLEKS                       R38 R37 K170 ["BackgroundTransparency"]
      807 CALL                             R35 2 1
      808 SETTABLEKS                       R35 R34 K37 ["Frame"]
      810 GETUPVAL                         R36 9
      811 GETTABLEKS                       R35 R36 K36 ["createElement"]
      813 GETUPVAL                         R36 29
      814 DUPTABLE                         R37 K167 [{"LayoutOrder", "Writable", "IsGroupGame"}]
      815 NAMECALL                         R38 R24 K74 ["getNextOrder"]
      817 CALL                             R38 1 1
      818 SETTABLEKS                       R38 R37 K66 ["LayoutOrder"]
      820 SETTABLEKS                       R15 R37 K165 ["Writable"]
      822 GETUPVAL                         R39 30
      823 JUMPIFNOT                        R39 ; [+4]
      824 NAMECALL                         R38 R0 K168 ["isGroupGame"]
      826 CALL                             R38 1 1
      827 JUMP                             ; [+1]
      828 LOADNIL                          R38
      829 SETTABLEKS                       R38 R37 K166 ["IsGroupGame"]
      831 CALL                             R35 2 1
      832 SETTABLEKS                       R35 R34 K163 ["CollaboratorsWidget"]
      834 CALL                             R31 3 1
      835 SETTABLEKS                       R31 R30 K50 ["ScrollingFrame"]
      837 JUMPIFNOT                        R18 ; [+90]
      838 GETUPVAL                         R32 9
      839 GETTABLEKS                       R31 R32 K36 ["createElement"]
      841 LOADK                            R32 K37 ["Frame"]
      842 DUPTABLE                         R33 K178 [{"BackgroundTransparency", "BackgroundColor3", "LayoutOrder", "Size", "BorderSizePixel"}]
      843 LOADN                            R34 1
      844 SETTABLEKS                       R34 R33 K170 ["BackgroundTransparency"]
      846 GETTABLEKS                       R34 R2 K43 ["backgroundColor"]
      848 SETTABLEKS                       R34 R33 K39 ["BackgroundColor3"]
      850 NAMECALL                         R34 R23 K74 ["getNextOrder"]
      852 CALL                             R34 1 1
      853 SETTABLEKS                       R34 R33 K66 ["LayoutOrder"]
      855 GETIMPORT                        R34 K42 [UDim2.new]
      857 LOADN                            R35 1
      858 LOADN                            R36 0
      859 LOADN                            R37 0
      860 GETTABLEKS                       R39 R2 K33 ["saveMessage"]
      862 GETTABLEKS                       R38 R39 K34 ["boxHeight"]
      864 CALL                             R34 4 1
      865 SETTABLEKS                       R34 R33 K38 ["Size"]
      867 LOADN                            R34 0
      868 SETTABLEKS                       R34 R33 K177 ["BorderSizePixel"]
      870 DUPTABLE                         R34 K179 [{"Text"}]
      871 GETUPVAL                         R36 9
      872 GETTABLEKS                       R35 R36 K36 ["createElement"]
      874 LOADK                            R36 K180 ["TextLabel"]
      875 GETUPVAL                         R39 32
      876 GETTABLEKS                       R38 R39 K181 ["Dictionary"]
      878 GETTABLEKS                       R37 R38 K182 ["join"]
      880 GETTABLEKS                       R39 R2 K33 ["saveMessage"]
      882 GETTABLEKS                       R38 R39 K183 ["textStyle"]
      884 DUPTABLE                         R39 K188 [{"AnchorPoint", "Position", "Text", "TextXAlignment", "BorderSizePixel", "TextWrapped", "Size", "BackgroundTransparency"}]
      885 GETIMPORT                        R40 K190 [Vector2.new]
      887 LOADN                            R41 0
      888 LOADK                            R42 K191 [0.5]
      889 CALL                             R40 2 1
      890 SETTABLEKS                       R40 R39 K184 ["AnchorPoint"]
      892 GETTABLEKS                       R41 R2 K33 ["saveMessage"]
      894 GETTABLEKS                       R40 R41 K192 ["InnerTextPosition"]
      896 SETTABLEKS                       R40 R39 K185 ["Position"]
      898 SETTABLEKS                       R20 R39 K111 ["Text"]
      900 GETIMPORT                        R40 K193 [Enum.TextXAlignment.Left]
      902 SETTABLEKS                       R40 R39 K186 ["TextXAlignment"]
      904 LOADN                            R40 0
      905 SETTABLEKS                       R40 R39 K177 ["BorderSizePixel"]
      907 LOADB                            R40 1
      908 SETTABLEKS                       R40 R39 K187 ["TextWrapped"]
      910 GETIMPORT                        R40 K42 [UDim2.new]
      912 LOADK                            R41 K194 [0.55]
      913 LOADN                            R42 0
      914 LOADN                            R43 1
      915 LOADN                            R44 0
      916 CALL                             R40 4 1
      917 SETTABLEKS                       R40 R39 K38 ["Size"]
      919 LOADN                            R40 1
      920 SETTABLEKS                       R40 R39 K170 ["BackgroundTransparency"]
      922 CALL                             R37 2 -1
      923 CALL                             R35 -1 1
      924 SETTABLEKS                       R35 R34 K111 ["Text"]
      926 CALL                             R31 3 1
      927 JUMP                             ; [+1]
      928 LOADNIL                          R31
      929 SETTABLEKS                       R31 R30 K51 ["TextFrame"]
      931 GETUPVAL                         R31 0
      932 JUMPIFNOT                        R31 ; [+15]
      933 GETTABLEKS                       R32 R0 K7 ["state"]
      935 GETTABLEKS                       R31 R32 K195 ["upsellDialogEnabled"]
      937 JUMPIFNOT                        R31 ; [+10]
      938 GETUPVAL                         R32 12
      939 GETTABLEKS                       R31 R32 K36 ["createElement"]
      941 GETUPVAL                         R32 33
      942 DUPTABLE                         R33 K196 [{"onClose"}]
      943 NEWCLOSURE                       R34 P3
      944 CAPTURE                          VAL R0
      945 SETTABLEKS                       R34 R33 K124 ["onClose"]
      947 CALL                             R31 2 1
      948 SETTABLEKS                       R31 R30 K52 ["upsellDialog"]
      950 MOVE                             R31 R16
      951 JUMPIFNOT                        R31 ; [+42]
      952 GETUPVAL                         R32 9
      953 GETTABLEKS                       R31 R32 K36 ["createElement"]
      955 GETUPVAL                         R32 11
      956 DUPTABLE                         R33 K73 [{"LayoutOrder", "Size"}]
      957 NAMECALL                         R34 R23 K74 ["getNextOrder"]
      959 CALL                             R34 1 1
      960 SETTABLEKS                       R34 R33 K66 ["LayoutOrder"]
      962 GETIMPORT                        R34 K42 [UDim2.new]
      964 LOADN                            R35 1
      965 LOADN                            R36 0
      966 LOADN                            R37 0
      967 GETTABLEKS                       R39 R2 K32 ["footer"]
      969 GETTABLEKS                       R38 R39 K31 ["height"]
      971 CALL                             R34 4 1
      972 SETTABLEKS                       R34 R33 K38 ["Size"]
      974 DUPTABLE                         R34 K198 [{"Footer"}]
      975 GETUPVAL                         R36 9
      976 GETTABLEKS                       R35 R36 K36 ["createElement"]
      978 GETUPVAL                         R36 34
      979 DUPTABLE                         R37 K201 [{"IsTeamCreateEnabled", "OnSavePressed", "OnCancelPressed"}]
      980 SETTABLEKS                       R17 R37 K77 ["IsTeamCreateEnabled"]
      982 NEWCLOSURE                       R38 P4
      983 CAPTURE                          VAL R0
      984 SETTABLEKS                       R38 R37 K199 ["OnSavePressed"]
      986 NEWCLOSURE                       R38 P5
      987 CAPTURE                          VAL R0
      988 SETTABLEKS                       R38 R37 K200 ["OnCancelPressed"]
      990 CALL                             R35 2 1
      991 SETTABLEKS                       R35 R34 K197 ["Footer"]
      993 CALL                             R31 3 1
      994 SETTABLEKS                       R31 R30 K53 ["FooterContent"]
      996 NOT                              R31 R12
      997 JUMPIFNOT                        R31 ; [+22]
      998 NOT                              R31 R13
      999 JUMPIFNOT                        R31 ; [+20]
     1000 GETUPVAL                         R32 9
     1001 GETTABLEKS                       R31 R32 K36 ["createElement"]
     1003 GETUPVAL                         R32 35
     1004 DUPTABLE                         R33 K202 [{"AnchorPoint", "Position"}]
     1005 GETIMPORT                        R34 K190 [Vector2.new]
     1007 LOADK                            R35 K191 [0.5]
     1008 LOADK                            R36 K191 [0.5]
     1009 CALL                             R34 2 1
     1010 SETTABLEKS                       R34 R33 K184 ["AnchorPoint"]
     1012 GETIMPORT                        R34 K204 [UDim2.fromScale]
     1014 LOADK                            R35 K191 [0.5]
     1015 LOADK                            R36 K191 [0.5]
     1016 CALL                             R34 2 1
     1017 SETTABLEKS                       R34 R33 K185 ["Position"]
     1019 CALL                             R31 2 1
     1020 SETTABLEKS                       R31 R30 K54 ["LoadingIndicator"]
     1022 MOVE                             R31 R13
     1023 JUMPIFNOT                        R31 ; [+46]
     1024 GETUPVAL                         R32 9
     1025 GETTABLEKS                       R31 R32 K36 ["createElement"]
     1027 LOADK                            R32 K180 ["TextLabel"]
     1028 DUPTABLE                         R33 K208 [{"Text", "AnchorPoint", "Position", "TextColor3", "TextSize", "Font"}]
     1029 SETTABLEKS                       R14 R33 K111 ["Text"]
     1031 GETIMPORT                        R34 K190 [Vector2.new]
     1033 LOADK                            R35 K191 [0.5]
     1034 LOADK                            R36 K191 [0.5]
     1035 CALL                             R34 2 1
     1036 SETTABLEKS                       R34 R33 K184 ["AnchorPoint"]
     1038 GETIMPORT                        R34 K204 [UDim2.fromScale]
     1040 LOADK                            R35 K191 [0.5]
     1041 LOADK                            R36 K209 [0.25]
     1042 CALL                             R34 2 1
     1043 SETTABLEKS                       R34 R33 K185 ["Position"]
     1045 GETTABLEKS                       R36 R2 K210 ["fontStyle"]
     1047 GETTABLEKS                       R35 R36 K211 ["Normal"]
     1049 GETTABLEKS                       R34 R35 K205 ["TextColor3"]
     1051 SETTABLEKS                       R34 R33 K205 ["TextColor3"]
     1053 GETTABLEKS                       R36 R2 K210 ["fontStyle"]
     1055 GETTABLEKS                       R35 R36 K211 ["Normal"]
     1057 GETTABLEKS                       R34 R35 K206 ["TextSize"]
     1059 SETTABLEKS                       R34 R33 K206 ["TextSize"]
     1061 GETTABLEKS                       R36 R2 K210 ["fontStyle"]
     1063 GETTABLEKS                       R35 R36 K211 ["Normal"]
     1065 GETTABLEKS                       R34 R35 K207 ["Font"]
     1067 SETTABLEKS                       R34 R33 K207 ["Font"]
     1069 CALL                             R31 2 1
     1070 SETTABLEKS                       R31 R30 K55 ["FailureText"]
     1072 CALL                             R27 3 -1
     1073 RETURN                           R27 -1

PROTO_32:
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

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["LoadPermissions"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_34:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_35:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_36:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_37:
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
      126 GETTABLEKS                       R29 R22 K38 ["Enums"]
      128 GETTABLEKS                       R28 R29 K41 ["IconVariant"]
      130 GETTABLEKS                       R29 R22 K42 ["SystemBanner"]
      132 GETTABLEKS                       R31 R22 K38 ["Enums"]
      134 GETTABLEKS                       R30 R31 K43 ["AlertVariant"]
      136 GETTABLEKS                       R32 R22 K38 ["Enums"]
      138 GETTABLEKS                       R31 R32 K44 ["AlertSeverity"]
      140 GETTABLEKS                       R33 R22 K38 ["Enums"]
      142 GETTABLEKS                       R32 R33 K45 ["ButtonVariant"]
      144 GETIMPORT                        R33 K17 [require]
      146 GETTABLEKS                       R36 R7 K46 ["Src"]
      148 GETTABLEKS                       R35 R36 K47 ["Util"]
      150 GETTABLEKS                       R34 R35 K48 ["ShowDialog"]
      152 CALL                             R33 1 1
      153 GETIMPORT                        R34 K17 [require]
      155 GETTABLEKS                       R37 R7 K46 ["Src"]
      157 GETTABLEKS                       R36 R37 K49 ["Components"]
      159 GETTABLEKS                       R35 R36 K50 ["CollaboratorsWidget"]
      161 CALL                             R34 1 1
      162 GETIMPORT                        R35 K17 [require]
      164 GETTABLEKS                       R38 R7 K46 ["Src"]
      166 GETTABLEKS                       R37 R38 K49 ["Components"]
      168 GETTABLEKS                       R36 R37 K51 ["CollaboratorSearchWidget"]
      170 CALL                             R35 1 1
      171 GETIMPORT                        R36 K17 [require]
      173 GETTABLEKS                       R39 R7 K46 ["Src"]
      175 GETTABLEKS                       R38 R39 K49 ["Components"]
      177 GETTABLEKS                       R37 R38 K52 ["CollaboratorFilterWidget"]
      179 CALL                             R36 1 1
      180 GETIMPORT                        R37 K17 [require]
      182 GETTABLEKS                       R40 R7 K46 ["Src"]
      184 GETTABLEKS                       R39 R40 K49 ["Components"]
      186 GETTABLEKS                       R38 R39 K53 ["Footer"]
      188 CALL                             R37 1 1
      189 GETIMPORT                        R38 K17 [require]
      191 GETTABLEKS                       R41 R7 K46 ["Src"]
      193 GETTABLEKS                       R40 R41 K54 ["Thunks"]
      195 GETTABLEKS                       R39 R40 K55 ["SavePermissions"]
      197 CALL                             R38 1 1
      198 GETIMPORT                        R39 K17 [require]
      200 GETTABLEKS                       R42 R7 K46 ["Src"]
      202 GETTABLEKS                       R41 R42 K54 ["Thunks"]
      204 GETTABLEKS                       R40 R41 K56 ["PermissionsLoader"]
      206 CALL                             R39 1 1
      207 LOADNIL                          R40
      208 GETIMPORT                        R41 K1 [game]
      210 LOADK                            R43 K57 ["Collab8766_LogCollabSearchItemClickedEventV4"]
      211 NAMECALL                         R41 R41 K3 ["GetFastFlag"]
      213 CALL                             R41 2 1
      214 GETIMPORT                        R42 K1 [game]
      216 LOADK                            R44 K58 ["UpsellCollabSafety2"]
      217 NAMECALL                         R42 R42 K3 ["GetFastFlag"]
      219 CALL                             R42 2 1
      220 GETIMPORT                        R43 K1 [game]
      222 LOADK                            R45 K59 ["RemoveHeaderWithUpsellBanner"]
      223 LOADB                            R46 0
      224 NAMECALL                         R43 R43 K60 ["DefineFastFlag"]
      226 CALL                             R43 3 1
      227 JUMPIFNOT                        R41 ; [+10]
      228 GETIMPORT                        R44 K17 [require]
      230 GETTABLEKS                       R47 R7 K46 ["Src"]
      232 GETTABLEKS                       R46 R47 K54 ["Thunks"]
      234 GETTABLEKS                       R45 R46 K61 ["SendAllSearchItemLogs"]
      236 CALL                             R44 1 1
      237 MOVE                             R40 R44
      238 GETIMPORT                        R44 K1 [game]
      240 LOADK                            R46 K62 ["UpsellCollabTrustedConnection"]
      241 NAMECALL                         R44 R44 K3 ["GetFastFlag"]
      243 CALL                             R44 2 1
      244 GETIMPORT                        R45 K17 [require]
      246 GETTABLEKS                       R49 R7 K46 ["Src"]
      248 GETTABLEKS                       R48 R49 K63 ["Networking"]
      250 GETTABLEKS                       R47 R48 K64 ["Requests"]
      252 GETTABLEKS                       R46 R47 K65 ["GetAMPRequest"]
      254 CALL                             R45 1 1
      255 GETIMPORT                        R46 K17 [require]
      257 GETTABLEKS                       R50 R7 K46 ["Src"]
      259 GETTABLEKS                       R49 R50 K63 ["Networking"]
      261 GETTABLEKS                       R48 R49 K64 ["Requests"]
      263 GETTABLEKS                       R47 R48 K66 ["GetCanCollaborate"]
      265 CALL                             R46 1 1
      266 GETIMPORT                        R47 K17 [require]
      268 GETTABLEKS                       R50 R7 K46 ["Src"]
      270 GETTABLEKS                       R49 R50 K47 ["Util"]
      272 GETTABLEKS                       R48 R49 K67 ["IsLikelyCollaboratorPrefetchEnabled"]
      274 CALL                             R47 1 1
      275 MOVE                             R48 R47
      276 CALL                             R48 0 1
      277 LOADNIL                          R49
      278 LOADNIL                          R50
      279 JUMPIFNOT                        R48 ; [+20]
      280 GETIMPORT                        R51 K17 [require]
      282 GETTABLEKS                       R54 R7 K46 ["Src"]
      284 GETTABLEKS                       R53 R54 K54 ["Thunks"]
      286 GETTABLEKS                       R52 R53 K68 ["PrefetchLikelyCollaborators"]
      288 CALL                             R51 1 1
      289 MOVE                             R49 R51
      290 GETIMPORT                        R51 K17 [require]
      292 GETTABLEKS                       R54 R7 K46 ["Src"]
      294 GETTABLEKS                       R53 R54 K69 ["Selectors"]
      296 GETTABLEKS                       R52 R53 K70 ["IsGame17Plus"]
      298 CALL                             R51 1 1
      299 MOVE                             R50 R51
      300 GETIMPORT                        R51 K17 [require]
      302 GETTABLEKS                       R54 R7 K46 ["Src"]
      304 GETTABLEKS                       R53 R54 K47 ["Util"]
      306 GETTABLEKS                       R52 R53 K71 ["LoadState"]
      308 CALL                             R51 1 1
      309 GETIMPORT                        R52 K17 [require]
      311 GETTABLEKS                       R55 R7 K46 ["Src"]
      313 GETTABLEKS                       R54 R55 K47 ["Util"]
      315 GETTABLEKS                       R53 R54 K72 ["SaveState"]
      317 CALL                             R52 1 1
      318 GETIMPORT                        R53 K17 [require]
      320 GETTABLEKS                       R56 R7 K46 ["Src"]
      322 GETTABLEKS                       R55 R56 K69 ["Selectors"]
      324 GETTABLEKS                       R54 R55 K73 ["GetHasCollaborators"]
      326 CALL                             R53 1 1
      327 GETIMPORT                        R54 K17 [require]
      329 GETTABLEKS                       R57 R7 K46 ["Src"]
      331 GETTABLEKS                       R56 R57 K69 ["Selectors"]
      333 GETTABLEKS                       R55 R56 K74 ["GetHasNewEditCollaborators"]
      335 CALL                             R54 1 1
      336 GETIMPORT                        R55 K17 [require]
      338 GETTABLEKS                       R58 R7 K46 ["Src"]
      340 GETTABLEKS                       R57 R58 K69 ["Selectors"]
      342 GETTABLEKS                       R56 R57 K75 ["GetHasCurrentEditCollaborators"]
      344 CALL                             R55 1 1
      345 GETIMPORT                        R56 K17 [require]
      347 GETTABLEKS                       R59 R7 K46 ["Src"]
      349 GETTABLEKS                       R58 R59 K69 ["Selectors"]
      351 GETTABLEKS                       R57 R58 K76 ["GetHasUnsavedChanges"]
      353 CALL                             R56 1 1
      354 GETIMPORT                        R57 K17 [require]
      356 GETTABLEKS                       R60 R7 K46 ["Src"]
      358 GETTABLEKS                       R59 R60 K47 ["Util"]
      360 GETTABLEKS                       R58 R59 K77 ["IsTeamCreateEnabled"]
      362 CALL                             R57 1 1
      363 GETTABLEKS                       R58 R12 K47 ["Util"]
      365 GETTABLEKS                       R59 R58 K78 ["LayoutOrderIterator"]
      367 GETIMPORT                        R60 K17 [require]
      369 GETTABLEKS                       R63 R7 K46 ["Src"]
      371 GETTABLEKS                       R62 R63 K47 ["Util"]
      373 GETTABLEKS                       R61 R62 K79 ["Analytics"]
      375 CALL                             R60 1 1
      376 OR                               R61 R2 R1
      377 GETTABLEKS                       R62 R22 K80 ["View"]
      379 GETIMPORT                        R63 K17 [require]
      381 GETTABLEKS                       R65 R7 K18 ["Packages"]
      383 GETTABLEKS                       R64 R65 K81 ["React"]
      385 CALL                             R63 1 1
      386 GETIMPORT                        R64 K17 [require]
      388 GETTABLEKS                       R67 R7 K46 ["Src"]
      390 GETTABLEKS                       R66 R67 K49 ["Components"]
      392 GETTABLEKS                       R65 R66 K82 ["Header"]
      394 CALL                             R64 1 1
      395 GETTABLEKS                       R65 R8 K83 ["PureComponent"]
      397 LOADK                            R67 K84 ["PermissionsView"]
      398 NAMECALL                         R65 R65 K85 ["extend"]
      400 CALL                             R65 2 1
      401 GETIMPORT                        R66 K17 [require]
      403 GETTABLEKS                       R70 R7 K46 ["Src"]
      405 GETTABLEKS                       R69 R70 K47 ["Util"]
      407 GETTABLEKS                       R68 R69 K86 ["Telemetry"]
      409 GETTABLEKS                       R67 R68 K87 ["CTAClickedEvent"]
      411 CALL                             R66 1 1
      412 GETIMPORT                        R67 K17 [require]
      414 GETTABLEKS                       R71 R7 K46 ["Src"]
      416 GETTABLEKS                       R70 R71 K47 ["Util"]
      418 GETTABLEKS                       R69 R70 K86 ["Telemetry"]
      420 GETTABLEKS                       R68 R69 K88 ["SafetyUpsellBannerShownEvent"]
      422 CALL                             R67 1 1
      423 GETIMPORT                        R68 K17 [require]
      425 GETTABLEKS                       R70 R7 K18 ["Packages"]
      427 GETTABLEKS                       R69 R70 K89 ["TelemetryProtocol"]
      429 CALL                             R68 1 1
      430 GETTABLEKS                       R69 R68 K90 ["new"]
      432 CALL                             R69 0 1
      433 GETIMPORT                        R70 K17 [require]
      435 GETTABLEKS                       R73 R7 K46 ["Src"]
      437 GETTABLEKS                       R72 R73 K49 ["Components"]
      439 GETTABLEKS                       R71 R72 K91 ["UpsellDialog"]
      441 CALL                             R70 1 1
      442 GETIMPORT                        R71 K17 [require]
      444 GETTABLEKS                       R74 R7 K46 ["Src"]
      446 GETTABLEKS                       R73 R74 K38 ["Enums"]
      448 GETTABLEKS                       R72 R73 K92 ["CanCollaborateError"]
      450 CALL                             R71 1 1
      451 DUPCLOSURE                       R72 K93 [PROTO_0]
      452 CAPTURE                          VAL R42
      453 CAPTURE                          VAL R69
      454 CAPTURE                          VAL R66
      455 CAPTURE                          VAL R4
      456 DUPCLOSURE                       R73 K94 [PROTO_2]
      457 CAPTURE                          VAL R5
      458 DUPCLOSURE                       R74 K95 [PROTO_3]
      459 SETTABLEKS                       R74 R65 K96 ["isGroupGame"]
      461 DUPCLOSURE                       R74 K97 [PROTO_4]
      462 CAPTURE                          VAL R4
      463 SETTABLEKS                       R74 R65 K98 ["isLoggedInUserGameOwner"]
      465 DUPCLOSURE                       R74 K99 [PROTO_9]
      466 CAPTURE                          VAL R8
      467 CAPTURE                          VAL R42
      468 CAPTURE                          VAL R69
      469 CAPTURE                          VAL R66
      470 CAPTURE                          VAL R4
      471 CAPTURE                          VAL R6
      472 CAPTURE                          VAL R5
      473 CAPTURE                          VAL R67
      474 SETTABLEKS                       R74 R65 K100 ["init"]
      476 DUPCLOSURE                       R74 K101 [PROTO_19]
      477 CAPTURE                          VAL R44
      478 CAPTURE                          VAL R45
      479 CAPTURE                          VAL R69
      480 CAPTURE                          VAL R67
      481 CAPTURE                          VAL R4
      482 SETTABLEKS                       R74 R65 K102 ["didUpdate"]
      484 DUPCLOSURE                       R74 K103 [PROTO_20]
      485 CAPTURE                          VAL R46
      486 CAPTURE                          VAL R71
      487 CAPTURE                          VAL R6
      488 CAPTURE                          VAL R5
      489 SETGLOBAL                        R74 K104 ["checkAndMaybeShowVerifyAgeDialog"]
      491 DUPCLOSURE                       R74 K105 [PROTO_21]
      492 CAPTURE                          VAL R11
      493 CAPTURE                          VAL R41
      494 CAPTURE                          VAL R57
      495 CAPTURE                          VAL R3
      496 SETTABLEKS                       R74 R65 K106 ["onSavePressed"]
      498 DUPCLOSURE                       R74 K107 [PROTO_24]
      499 CAPTURE                          VAL R41
      500 CAPTURE                          VAL R60
      501 CAPTURE                          VAL R33
      502 CAPTURE                          VAL R21
      503 CAPTURE                          VAL R8
      504 SETTABLEKS                       R74 R65 K108 ["onCancelPressed"]
      506 DUPCLOSURE                       R74 K109 [PROTO_31]
      507 CAPTURE                          VAL R44
      508 CAPTURE                          VAL R41
      509 CAPTURE                          VAL R52
      510 CAPTURE                          VAL R51
      511 CAPTURE                          VAL R48
      512 CAPTURE                          VAL R57
      513 CAPTURE                          VAL R61
      514 CAPTURE                          VAL R59
      515 CAPTURE                          VAL R42
      516 CAPTURE                          VAL R8
      517 CAPTURE                          VAL R43
      518 CAPTURE                          VAL R19
      519 CAPTURE                          VAL R63
      520 CAPTURE                          VAL R64
      521 CAPTURE                          VAL R3
      522 CAPTURE                          VAL R62
      523 CAPTURE                          VAL R27
      524 CAPTURE                          VAL R26
      525 CAPTURE                          VAL R28
      526 CAPTURE                          VAL R23
      527 CAPTURE                          VAL R29
      528 CAPTURE                          VAL R30
      529 CAPTURE                          VAL R31
      530 CAPTURE                          VAL R32
      531 CAPTURE                          VAL R2
      532 CAPTURE                          VAL R24
      533 CAPTURE                          VAL R25
      534 CAPTURE                          VAL R35
      535 CAPTURE                          VAL R36
      536 CAPTURE                          VAL R34
      537 CAPTURE                          VAL R0
      538 CAPTURE                          VAL R18
      539 CAPTURE                          VAL R10
      540 CAPTURE                          VAL R70
      541 CAPTURE                          VAL R37
      542 CAPTURE                          VAL R20
      543 SETTABLEKS                       R74 R65 K110 ["render"]
      545 MOVE                             R74 R14
      546 DUPTABLE                         R75 K111 [{"Stylizer", "Localization"}]
      547 SETTABLEKS                       R15 R75 K28 ["Stylizer"]
      549 SETTABLEKS                       R16 R75 K29 ["Localization"]
      551 CALL                             R74 1 1
      552 MOVE                             R75 R65
      553 CALL                             R74 1 1
      554 MOVE                             R65 R74
      555 GETTABLEKS                       R74 R9 K112 ["connect"]
      557 NEWCLOSURE                       R75 P10
      558 CAPTURE                          VAL R56
      559 CAPTURE                          VAL R51
      560 CAPTURE                          VAL R52
      561 CAPTURE                          VAL R53
      562 CAPTURE                          VAL R55
      563 CAPTURE                          VAL R11
      564 CAPTURE                          VAL R54
      565 CAPTURE                          VAL R48
      566 CAPTURE                          REF R50
      567 NEWCLOSURE                       R76 P11
      568 CAPTURE                          VAL R39
      569 CAPTURE                          VAL R38
      570 CAPTURE                          VAL R41
      571 CAPTURE                          REF R40
      572 CAPTURE                          VAL R48
      573 CAPTURE                          REF R49
      574 CALL                             R74 2 1
      575 MOVE                             R75 R65
      576 CALL                             R74 1 1
      577 MOVE                             R65 R74
      578 CLOSEUPVALS                      R40
      579 RETURN                           R65 1
