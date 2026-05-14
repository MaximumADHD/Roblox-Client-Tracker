PROTO_0:
        0 DUPTABLE                         R2 K6 [{"searchKey", "isArchived", "isTemplates", "pageSize", "creatorType", "creatorTargetId"}]
        1 LOADK                            R3 K7 ["ImpactedExperiences"]
        2 SETTABLEKS                       R3 R2 K0 ["searchKey"]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["isArchived"]
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K2 ["isTemplates"]
       10 GETUPVAL                         R3 0
       11 SETTABLEKS                       R3 R2 K3 ["pageSize"]
       13 SETTABLEKS                       R0 R2 K4 ["creatorType"]
       15 SETTABLEKS                       R1 R2 K5 ["creatorTargetId"]
       17 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["DiscoverExperiencesSearch failed for impact check: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 DUPTABLE                         R1 K6 [{"games", "targetResults"}]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K4 ["games"]
       14 LOADN                            R2 0
       15 SETTABLEKS                       R2 R1 K5 ["targetResults"]
       17 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADN                            R3 0
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+13]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["resolve"]
        8 DUPTABLE                         R3 K3 [{"games", "targetResults"}]
        9 NEWTABLE                         R4 0 0
       11 SETTABLEKS                       R4 R3 K1 ["games"]
       13 LOADN                            R4 0
       14 SETTABLEKS                       R4 R3 K2 ["targetResults"]
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1
       18 DUPCLOSURE                       R4 K4 [PROTO_1]
       19 NAMECALL                         R2 R1 K5 ["catch"]
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1

PROTO_3:
        0 DUPTABLE                         R2 K4 [{"telemetryType", "upsellEntrySurface", "userId", "studioSid"}]
        1 LOADK                            R3 K5 ["load"]
        2 SETTABLEKS                       R3 R2 K0 ["telemetryType"]
        4 SETTABLEKS                       R0 R2 K1 ["upsellEntrySurface"]
        6 GETUPVAL                         R3 0
        7 NAMECALL                         R3 R3 K6 ["GetUserId"]
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R3 R2 K2 ["userId"]
       12 GETUPVAL                         R3 1
       13 NAMECALL                         R3 R3 K7 ["GetSessionId"]
       15 CALL                             R3 1 1
       16 SETTABLEKS                       R3 R2 K3 ["studioSid"]
       18 JUMPIFNOT                        R1 ; [+7]
       19 MOVE                             R3 R1
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 SETTABLE                         R7 R2 R6
       24 FORGLOOP                         R3 2 ; [-2]
       26 GETUPVAL                         R3 2
       27 GETUPVAL                         R5 3
       28 MOVE                             R6 R2
       29 NAMECALL                         R3 R3 K8 ["log"]
       31 CALL                             R3 3 0
       32 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+55]
        2 GETUPVAL                         R0 0
        3 LOADK                            R2 K0 ["VerifyAgeAlertClosedTimestamp"]
        4 NAMECALL                         R0 R0 K1 ["GetSetting"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+11]
        8 GETIMPORT                        R1 K4 [os.time]
       10 CALL                             R1 0 1
       11 SUB                              R2 R1 R0
       12 GETUPVAL                         R3 1
       13 LOADK                            R5 K5 [86400]
       14 JUMPIFLT                         R2 R5 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 CALL                             R3 1 0
       19 GETUPVAL                         R1 2
       20 JUMPIFNOT                        R1 ; [+17]
       21 GETUPVAL                         R1 0
       22 LOADK                            R3 K6 ["EstablishTrustBannerClosedTimestamp"]
       23 NAMECALL                         R1 R1 K1 ["GetSetting"]
       25 CALL                             R1 2 1
       26 JUMPIFNOT                        R1 ; [+11]
       27 GETIMPORT                        R2 K4 [os.time]
       29 CALL                             R2 0 1
       30 SUB                              R3 R2 R1
       31 GETUPVAL                         R4 3
       32 LOADK                            R6 K5 [86400]
       33 JUMPIFLT                         R3 R6 ; [+2]
       35 LOADB                            R5 0 +1
       36 LOADB                            R5 1
       37 CALL                             R4 1 0
       38 GETUPVAL                         R1 4
       39 JUMPIFNOT                        R1 ; [+17]
       40 GETUPVAL                         R1 0
       41 LOADK                            R3 K7 ["AgeReverificationAlertClosedTimestamp"]
       42 NAMECALL                         R1 R1 K1 ["GetSetting"]
       44 CALL                             R1 2 1
       45 JUMPIFNOT                        R1 ; [+11]
       46 GETIMPORT                        R2 K4 [os.time]
       48 CALL                             R2 0 1
       49 SUB                              R3 R2 R1
       50 GETUPVAL                         R4 5
       51 LOADK                            R6 K5 [86400]
       52 JUMPIFLT                         R3 R6 ; [+2]
       54 LOADB                            R5 0 +1
       55 LOADB                            R5 1
       56 CALL                             R4 1 0
       57 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+10]
        1 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        3 JUMPIFNOTEQKB                    R1 FALSE ; [+7]
        5 GETUPVAL                         R1 0
        6 LOADNIL                          R2
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 1
        9 LOADNIL                          R2
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["Uri"]
        5 NAMECALL                         R1 R1 K1 ["BindAsync"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+7]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 NAMECALL                         R2 R1 K2 ["Connect"]
       14 CALL                             R2 2 1
       15 MOVE                             R0 R2
       16 NEWCLOSURE                       R2 P1
       17 CAPTURE                          REF R0
       18 CLOSEUPVALS                      R0
       19 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 NOT                              R2 R0
        5 SETTABLEKS                       R2 R1 K0 ["Value"]
        7 GETUPVAL                         R1 2
        8 NEWTABLE                         R3 0 1
       10 GETUPVAL                         R4 1
       11 SETLIST                          R3 R4 1 [1]
       13 NAMECALL                         R1 R1 K1 ["UpdateAsync"]
       15 CALL                             R1 2 0
       16 JUMPIFNOT                        R0 ; [+25]
       17 DUPTABLE                         R1 K6 [{"telemetryType", "upsellEntrySurface", "userId", "studioSid"}]
       18 LOADK                            R2 K7 ["load"]
       19 SETTABLEKS                       R2 R1 K2 ["telemetryType"]
       21 LOADK                            R2 K8 ["start_page"]
       22 SETTABLEKS                       R2 R1 K3 ["upsellEntrySurface"]
       24 GETUPVAL                         R2 3
       25 NAMECALL                         R2 R2 K9 ["GetUserId"]
       27 CALL                             R2 1 1
       28 SETTABLEKS                       R2 R1 K4 ["userId"]
       30 GETUPVAL                         R2 4
       31 NAMECALL                         R2 R2 K10 ["GetSessionId"]
       33 CALL                             R2 1 1
       34 SETTABLEKS                       R2 R1 K5 ["studioSid"]
       36 GETUPVAL                         R2 5
       37 GETUPVAL                         R4 6
       38 MOVE                             R5 R1
       39 NAMECALL                         R2 R2 K11 ["log"]
       41 CALL                             R2 3 0
       42 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Failed to check for user age verified status: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 0
       10 LOADB                            R2 0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [tostring]
        5 CALL                             R3 1 1
        6 DUPTABLE                         R2 K8 [{"searchKey", "isArchived", "isTemplates", "pageSize", "creatorType", "creatorTargetId"}]
        7 LOADK                            R4 K9 ["ImpactedExperiences"]
        8 SETTABLEKS                       R4 R2 K2 ["searchKey"]
       10 LOADB                            R4 0
       11 SETTABLEKS                       R4 R2 K3 ["isArchived"]
       13 LOADB                            R4 0
       14 SETTABLEKS                       R4 R2 K4 ["isTemplates"]
       16 GETUPVAL                         R4 1
       17 SETTABLEKS                       R4 R2 K5 ["pageSize"]
       19 LOADK                            R4 K10 ["Group"]
       20 SETTABLEKS                       R4 R2 K6 ["creatorType"]
       22 SETTABLEKS                       R3 R2 K7 ["creatorTargetId"]
       24 CALL                             R1 1 -1
       25 RETURN                           R1 -1

PROTO_11:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+4]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["map"]
        9 MOVE                             R2 R0
       10 DUPCLOSURE                       R3 K2 [PROTO_10]
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K3 ["all"]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 -1
       19 RETURN                           R2 -1

PROTO_12:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Group impact-check fan-out failed: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 NEWTABLE                         R1 0 0
       11 RETURN                           R1 1

PROTO_13:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R8 R5 K0 ["IsPlaceholder"]
        6 NOT                              R7 R8
        7 FASTCALL2K                       ASSERT R7 K1 ; [+4]
        9 LOADK                            R8 K1 ["Data returned from network should not be a placeholder sentinel value"]
       10 GETIMPORT                        R6 K3 [assert]
       12 CALL                             R6 2 0
       13 GETTABLEKS                       R6 R5 K4 ["Id"]
       15 JUMPIFNOT                        R6 ; [+10]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R8 R5 K4 ["Id"]
       19 GETTABLE                         R6 R7 R8
       20 JUMPIF                           R6 ; [+5]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R7 R5 K4 ["Id"]
       24 LOADB                            R8 1
       25 SETTABLE                         R8 R6 R7
       26 FORGLOOP                         R1 2 ; [-23]
       28 RETURN                           R0 0

PROTO_14:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 GETTABLEN                        R3 R0 3
        3 NEWTABLE                         R4 0 0
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          VAL R4
        7 MOVE                             R6 R5
        8 GETTABLEKS                       R7 R1 K0 ["games"]
       10 CALL                             R6 1 0
       11 MOVE                             R6 R5
       12 GETTABLEKS                       R7 R2 K0 ["games"]
       14 CALL                             R6 1 0
       15 MOVE                             R6 R3
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 FORGPREP                         R6
       19 MOVE                             R11 R5
       20 GETTABLEKS                       R12 R10 K0 ["games"]
       22 CALL                             R11 1 0
       23 FORGLOOP                         R6 2 ; [-5]
       25 NEWTABLE                         R6 0 0
       27 MOVE                             R7 R4
       28 LOADNIL                          R8
       29 LOADNIL                          R9
       30 FORGPREP                         R7
       31 FASTCALL2                        TABLE_INSERT R6 R10 ; [+5]
       33 MOVE                             R13 R6
       34 MOVE                             R14 R10
       35 GETIMPORT                        R12 K3 [table.insert]
       37 CALL                             R12 2 0
       38 FORGLOOP                         R7 1 ; [-8]
       40 GETIMPORT                        R7 K5 [table.sort]
       42 MOVE                             R8 R6
       43 CALL                             R7 1 0
       44 LENGTH                           R8 R3
       45 ADDK                             R7 R8 K6 [2]
       46 SETUPVAL                         R7 0
       47 LENGTH                           R7 R6
       48 SETUPVAL                         R7 1
       49 LENGTH                           R7 R6
       50 GETUPVAL                         R8 2
       51 JUMPIFNOTLE                      R8 R7 ; [+3]
       53 LOADB                            R7 1
       54 RETURN                           R7 1
       55 GETUPVAL                         R7 3
       56 MOVE                             R8 R6
       57 CALL                             R7 1 -1
       58 RETURN                           R7 -1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["IsImpacted"]
        2 RETURN                           R1 1

PROTO_16:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADB                            R1 0
        3 RETURN                           R1 1
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [type]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K2 ["boolean"] ; [+2]
       11 RETURN                           R0 1
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K3 ["filter"]
       15 MOVE                             R2 R0
       16 DUPCLOSURE                       R3 K4 [PROTO_15]
       17 CALL                             R1 2 1
       18 LENGTH                           R3 R1
       19 LOADN                            R4 0
       20 JUMPIFLT                         R4 R3 ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 RETURN                           R2 1

PROTO_17:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 GETTABLEN                        R3 R0 3
        3 GETUPVAL                         R4 0
        4 AND                              R5 R1 R3
        5 CALL                             R4 1 0
        6 GETUPVAL                         R4 1
        7 MOVE                             R5 R2
        8 CALL                             R4 1 0
        9 JUMPIFNOT                        R1 ; [+11]
       10 JUMPIFNOT                        R3 ; [+10]
       11 GETUPVAL                         R4 2
       12 LOADK                            R5 K0 ["start_page_establish_trust"]
       13 DUPTABLE                         R6 K3 [{"bucketCount", "unionSize"}]
       14 GETUPVAL                         R7 3
       15 SETTABLEKS                       R7 R6 K1 ["bucketCount"]
       17 GETUPVAL                         R7 4
       18 SETTABLEKS                       R7 R6 K2 ["unionSize"]
       20 CALL                             R4 2 0
       21 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Failed to resolve FAE Banner permissions: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 0
       10 LOADB                            R2 0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 1
       13 LOADB                            R2 0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 JUMPIFNOT                        R0 ; [+25]
        4 DUPTABLE                         R1 K4 [{"telemetryType", "upsellEntrySurface", "userId", "studioSid"}]
        5 LOADK                            R2 K5 ["load"]
        6 SETTABLEKS                       R2 R1 K0 ["telemetryType"]
        8 LOADK                            R2 K6 ["start_page_age_reverification"]
        9 SETTABLEKS                       R2 R1 K1 ["upsellEntrySurface"]
       11 GETUPVAL                         R2 1
       12 NAMECALL                         R2 R2 K7 ["GetUserId"]
       14 CALL                             R2 1 1
       15 SETTABLEKS                       R2 R1 K2 ["userId"]
       17 GETUPVAL                         R2 2
       18 NAMECALL                         R2 R2 K8 ["GetSessionId"]
       20 CALL                             R2 1 1
       21 SETTABLEKS                       R2 R1 K3 ["studioSid"]
       23 GETUPVAL                         R2 3
       24 GETUPVAL                         R4 4
       25 MOVE                             R5 R1
       26 NAMECALL                         R2 R2 K9 ["log"]
       28 CALL                             R2 3 0
       29 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Failed to check for age reverification banner status: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 0
       10 LOADB                            R2 0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+30]
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 LOADK                            R3 K1 ["ShouldShowStudioBanner"]
       10 GETUPVAL                         R4 3
       11 CALL                             R1 3 1
       12 JUMPIFNOT                        R1 ; [+17]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U7
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U8
       21 NAMECALL                         R2 R1 K2 ["andThen"]
       23 CALL                             R2 2 1
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          UPVAL U4
       26 NAMECALL                         R2 R2 K3 ["catch"]
       28 CALL                             R2 2 0
       29 JUMP                             ; [+171]
       30 GETIMPORT                        R2 K5 [error]
       32 LOADK                            R3 K6 ["Error: DiscoverShowStudioFAEBanner returned "]
       33 MOVE                             R4 R1
       34 CALL                             R2 2 0
       35 JUMP                             ; [+165]
       36 GETUPVAL                         R1 1
       37 JUMPIFNOTEQKB                    R1 FALSE ; [+163]
       39 GETUPVAL                         R1 9
       40 JUMPIFNOT                        R1 ; [+160]
       41 GETUPVAL                         R1 2
       42 MOVE                             R2 R0
       43 LOADK                            R3 K7 ["ShowEstablishTrustBanner"]
       44 GETUPVAL                         R4 3
       45 CALL                             R1 3 1
       46 GETUPVAL                         R2 2
       47 MOVE                             R3 R0
       48 LOADK                            R4 K8 ["ShowTrustedConnectionsOption"]
       49 GETUPVAL                         R5 3
       50 CALL                             R2 3 1
       51 LOADN                            R3 0
       52 LOADN                            R4 0
       53 LOADNIL                          R5
       54 GETUPVAL                         R6 10
       55 JUMPIFNOT                        R6 ; [+7]
       56 GETUPVAL                         R6 11
       57 GETTABLEKS                       R6 R6 K9 ["resolve"]
       59 LOADB                            R7 1
       60 CALL                             R6 1 1
       61 MOVE                             R5 R6
       62 JUMP                             ; [+84]
       63 FASTCALL1                        TOSTRING R0 ; [+3]
       64 MOVE                             R7 R0
       65 GETIMPORT                        R6 K11 [tostring]
       67 CALL                             R6 1 1
       68 GETUPVAL                         R7 12
       69 DUPTABLE                         R8 K18 [{"searchKey", "isArchived", "isTemplates", "pageSize", "creatorType", "creatorTargetId"}]
       70 LOADK                            R9 K19 ["ImpactedExperiences"]
       71 SETTABLEKS                       R9 R8 K12 ["searchKey"]
       73 LOADB                            R9 0
       74 SETTABLEKS                       R9 R8 K13 ["isArchived"]
       76 LOADB                            R9 0
       77 SETTABLEKS                       R9 R8 K14 ["isTemplates"]
       79 GETUPVAL                         R9 13
       80 SETTABLEKS                       R9 R8 K15 ["pageSize"]
       82 LOADK                            R9 K20 ["User"]
       83 SETTABLEKS                       R9 R8 K16 ["creatorType"]
       85 SETTABLEKS                       R6 R8 K17 ["creatorTargetId"]
       87 CALL                             R7 1 1
       88 GETUPVAL                         R8 12
       89 DUPTABLE                         R9 K18 [{"searchKey", "isArchived", "isTemplates", "pageSize", "creatorType", "creatorTargetId"}]
       90 LOADK                            R10 K19 ["ImpactedExperiences"]
       91 SETTABLEKS                       R10 R9 K12 ["searchKey"]
       93 LOADB                            R10 0
       94 SETTABLEKS                       R10 R9 K13 ["isArchived"]
       96 LOADB                            R10 0
       97 SETTABLEKS                       R10 R9 K14 ["isTemplates"]
       99 GETUPVAL                         R10 13
      100 SETTABLEKS                       R10 R9 K15 ["pageSize"]
      102 LOADK                            R10 K21 ["Team"]
      103 SETTABLEKS                       R10 R9 K16 ["creatorType"]
      105 SETTABLEKS                       R6 R9 K17 ["creatorTargetId"]
      107 CALL                             R8 1 1
      108 GETUPVAL                         R9 14
      109 CALL                             R9 0 1
      110 DUPCLOSURE                       R11 K22 [PROTO_11]
      111 CAPTURE                          UPVAL U15
      112 CAPTURE                          UPVAL U12
      113 CAPTURE                          UPVAL U13
      114 CAPTURE                          UPVAL U11
      115 NAMECALL                         R9 R9 K2 ["andThen"]
      117 CALL                             R9 2 1
      118 DUPCLOSURE                       R11 K23 [PROTO_12]
      119 NAMECALL                         R9 R9 K3 ["catch"]
      121 CALL                             R9 2 1
      122 GETUPVAL                         R10 11
      123 GETTABLEKS                       R10 R10 K24 ["all"]
      125 NEWTABLE                         R11 0 3
      127 MOVE                             R12 R7
      128 MOVE                             R13 R8
      129 MOVE                             R14 R9
      130 SETLIST                          R11 R12 3 [1]
      132 CALL                             R10 1 1
      133 NEWCLOSURE                       R12 P4
      134 CAPTURE                          REF R3
      135 CAPTURE                          REF R4
      136 CAPTURE                          UPVAL U16
      137 CAPTURE                          UPVAL U17
      138 NAMECALL                         R10 R10 K2 ["andThen"]
      140 CALL                             R10 2 1
      141 DUPCLOSURE                       R12 K25 [PROTO_16]
      142 CAPTURE                          UPVAL U15
      143 NAMECALL                         R10 R10 K2 ["andThen"]
      145 CALL                             R10 2 1
      146 MOVE                             R5 R10
      147 JUMPIF                           R5 ; [+12]
      148 GETIMPORT                        R6 K27 [warn]
      150 LOADK                            R7 K28 ["DiscoverImpactedStatus failed to return a valid promise."]
      151 CALL                             R6 1 0
      152 GETUPVAL                         R6 18
      153 LOADB                            R7 0
      154 CALL                             R6 1 0
      155 GETUPVAL                         R6 19
      156 LOADB                            R7 0
      157 CALL                             R6 1 0
      158 CLOSEUPVALS                      R3
      159 RETURN                           R0 0
      160 JUMPIFNOT                        R1 ; [+1]
      161 JUMPIF                           R2 ; [+12]
      162 GETIMPORT                        R6 K27 [warn]
      164 LOADK                            R7 K29 ["DiscoverShowStudioFAEBanner failed to return a valid promise."]
      165 CALL                             R6 1 0
      166 GETUPVAL                         R6 18
      167 LOADB                            R7 0
      168 CALL                             R6 1 0
      169 GETUPVAL                         R6 19
      170 LOADB                            R7 0
      171 CALL                             R6 1 0
      172 CLOSEUPVALS                      R3
      173 RETURN                           R0 0
      174 GETUPVAL                         R6 11
      175 GETTABLEKS                       R6 R6 K24 ["all"]
      177 NEWTABLE                         R7 0 3
      179 MOVE                             R8 R1
      180 MOVE                             R9 R2
      181 MOVE                             R10 R5
      182 SETLIST                          R7 R8 3 [1]
      184 CALL                             R6 1 1
      185 NEWCLOSURE                       R8 P6
      186 CAPTURE                          UPVAL U18
      187 CAPTURE                          UPVAL U19
      188 CAPTURE                          UPVAL U20
      189 CAPTURE                          REF R3
      190 CAPTURE                          REF R4
      191 NAMECALL                         R6 R6 K2 ["andThen"]
      193 CALL                             R6 2 1
      194 NEWCLOSURE                       R8 P7
      195 CAPTURE                          UPVAL U18
      196 CAPTURE                          UPVAL U19
      197 NAMECALL                         R6 R6 K3 ["catch"]
      199 CALL                             R6 2 0
      200 CLOSEUPVALS                      R3
      201 GETUPVAL                         R1 21
      202 JUMPIFNOT                        R1 ; [+29]
      203 GETUPVAL                         R1 22
      204 JUMPIFNOTEQKNIL                  R1 ; [+27]
      206 GETUPVAL                         R1 2
      207 MOVE                             R2 R0
      208 LOADK                            R3 K30 ["ShouldShowStudioAgeReverificationRequiredBanner"]
      209 GETUPVAL                         R4 3
      210 CALL                             R1 3 1
      211 JUMPIFNOT                        R1 ; [+15]
      212 NEWCLOSURE                       R4 P8
      213 CAPTURE                          UPVAL U23
      214 CAPTURE                          UPVAL U0
      215 CAPTURE                          UPVAL U7
      216 CAPTURE                          UPVAL U3
      217 CAPTURE                          UPVAL U8
      218 NAMECALL                         R2 R1 K2 ["andThen"]
      220 CALL                             R2 2 1
      221 NEWCLOSURE                       R4 P9
      222 CAPTURE                          UPVAL U23
      223 NAMECALL                         R2 R2 K3 ["catch"]
      225 CALL                             R2 2 0
      226 RETURN                           R0 0
      227 GETIMPORT                        R2 K5 [error]
      229 LOADK                            R3 K6 ["Error: DiscoverShowStudioFAEBanner returned "]
      230 MOVE                             R4 R1
      231 CALL                             R2 2 0
      232 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+8]
        5 GETUPVAL                         R0 1
        6 LOADK                            R2 K0 ["VerifyAgeAlertClosedTimestamp"]
        7 GETIMPORT                        R3 K3 [os.time]
        9 CALL                             R3 0 -1
       10 NAMECALL                         R0 R0 K4 ["SetSetting"]
       12 CALL                             R0 -1 0
       13 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+8]
        5 GETUPVAL                         R0 1
        6 LOADK                            R2 K0 ["EstablishTrustBannerClosedTimestamp"]
        7 GETIMPORT                        R3 K3 [os.time]
        9 CALL                             R3 0 -1
       10 NAMECALL                         R0 R0 K4 ["SetSetting"]
       12 CALL                             R0 -1 0
       13 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+8]
        5 GETUPVAL                         R0 1
        6 LOADK                            R2 K0 ["AgeReverificationAlertClosedTimestamp"]
        7 GETIMPORT                        R3 K3 [os.time]
        9 CALL                             R3 0 -1
       10 NAMECALL                         R0 R0 K4 ["SetSetting"]
       12 CALL                             R0 -1 0
       13 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        ASSERT R2 ; [+2]
        2 GETIMPORT                        R1 K1 [assert]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K2 ["use"]
        8 CALL                             R1 1 1
        9 NAMECALL                         R1 R1 K3 ["get"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K4 ["getSettingsBridge"]
       15 CALL                             R2 0 1
       16 GETUPVAL                         R3 3
       17 NAMECALL                         R3 R3 K2 ["use"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 4
       21 GETTABLEKS                       R4 R4 K5 ["useState"]
       23 LOADNIL                          R5
       24 CALL                             R4 1 2
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R6 R6 K5 ["useState"]
       28 LOADNIL                          R7
       29 CALL                             R6 1 2
       30 GETUPVAL                         R8 4
       31 GETTABLEKS                       R8 R8 K5 ["useState"]
       33 LOADNIL                          R9
       34 CALL                             R8 1 2
       35 GETUPVAL                         R10 4
       36 GETTABLEKS                       R10 R10 K5 ["useState"]
       38 LOADNIL                          R11
       39 CALL                             R10 1 2
       40 NEWCLOSURE                       R12 P0
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          VAL R3
       44 CAPTURE                          UPVAL U7
       45 GETUPVAL                         R13 4
       46 GETTABLEKS                       R13 R13 K5 ["useState"]
       48 LOADB                            R14 0
       49 CALL                             R13 1 2
       50 GETUPVAL                         R15 4
       51 GETTABLEKS                       R15 R15 K5 ["useState"]
       53 LOADB                            R16 0
       54 CALL                             R15 1 2
       55 GETUPVAL                         R17 4
       56 GETTABLEKS                       R17 R17 K5 ["useState"]
       58 LOADB                            R18 0
       59 CALL                             R17 1 2
       60 GETUPVAL                         R19 4
       61 GETTABLEKS                       R19 R19 K6 ["useEffect"]
       63 NEWCLOSURE                       R20 P1
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R14
       66 CAPTURE                          UPVAL U8
       67 CAPTURE                          VAL R16
       68 CAPTURE                          UPVAL U9
       69 CAPTURE                          VAL R18
       70 NEWTABLE                         R21 0 0
       72 CALL                             R19 2 0
       73 GETUPVAL                         R19 4
       74 GETTABLEKS                       R19 R19 K6 ["useEffect"]
       76 NEWCLOSURE                       R20 P2
       77 CAPTURE                          VAL R2
       78 CAPTURE                          UPVAL U10
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R11
       81 NEWTABLE                         R21 0 0
       83 CALL                             R19 2 0
       84 GETUPVAL                         R19 4
       85 GETTABLEKS                       R19 R19 K6 ["useEffect"]
       87 NEWCLOSURE                       R20 P3
       88 CAPTURE                          UPVAL U5
       89 CAPTURE                          VAL R6
       90 CAPTURE                          UPVAL U11
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R7
       93 CAPTURE                          UPVAL U10
       94 CAPTURE                          VAL R2
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          UPVAL U7
       97 CAPTURE                          UPVAL U8
       98 CAPTURE                          UPVAL U12
       99 CAPTURE                          UPVAL U13
      100 CAPTURE                          UPVAL U14
      101 CAPTURE                          UPVAL U15
      102 CAPTURE                          UPVAL U16
      103 CAPTURE                          UPVAL U17
      104 CAPTURE                          UPVAL U18
      105 CAPTURE                          UPVAL U19
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R12
      109 CAPTURE                          UPVAL U9
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R11
      112 NEWTABLE                         R21 0 3
      114 MOVE                             R22 R6
      115 MOVE                             R23 R8
      116 MOVE                             R24 R10
      117 SETLIST                          R21 R22 3 [1]
      119 CALL                             R19 2 0
      120 MOVE                             R19 R6
      121 JUMPIFNOT                        R19 ; [+1]
      122 NOT                              R19 R13
      123 GETUPVAL                         R20 4
      124 GETTABLEKS                       R20 R20 K7 ["useCallback"]
      126 NEWCLOSURE                       R21 P4
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R1
      129 NEWTABLE                         R22 0 1
      131 MOVE                             R23 R14
      132 SETLIST                          R22 R23 1 [1]
      134 CALL                             R20 2 1
      135 MOVE                             R21 R8
      136 JUMPIFNOT                        R21 ; [+1]
      137 NOT                              R21 R15
      138 GETUPVAL                         R22 4
      139 GETTABLEKS                       R22 R22 K7 ["useCallback"]
      141 NEWCLOSURE                       R23 P5
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R1
      144 NEWTABLE                         R24 0 1
      146 MOVE                             R25 R16
      147 SETLIST                          R24 R25 1 [1]
      149 CALL                             R22 2 1
      150 MOVE                             R23 R10
      151 JUMPIFNOT                        R23 ; [+1]
      152 NOT                              R23 R17
      153 GETUPVAL                         R24 4
      154 GETTABLEKS                       R24 R24 K7 ["useCallback"]
      156 NEWCLOSURE                       R25 P6
      157 CAPTURE                          VAL R18
      158 CAPTURE                          VAL R1
      159 NEWTABLE                         R26 0 1
      161 MOVE                             R27 R18
      162 SETLIST                          R26 R27 1 [1]
      164 CALL                             R24 2 1
      165 DUPTABLE                         R25 K15 [{"showVerifyAgeBanner", "showEstablishTrustBanner", "shouldShowEstablishTrustDialog", "showAgeReverificationBanner", "onClose", "onTrustBannerClose", "onAgeReverificationBannerClose"}]
      166 SETTABLEKS                       R19 R25 K8 ["showVerifyAgeBanner"]
      168 GETUPVAL                         R27 8
      169 JUMPIFNOT                        R27 ; [+2]
      170 MOVE                             R26 R21
      171 JUMP                             ; [+1]
      172 LOADNIL                          R26
      173 SETTABLEKS                       R26 R25 K9 ["showEstablishTrustBanner"]
      175 GETUPVAL                         R27 8
      176 JUMPIFNOT                        R27 ; [+2]
      177 MOVE                             R26 R4
      178 JUMP                             ; [+1]
      179 LOADNIL                          R26
      180 SETTABLEKS                       R26 R25 K10 ["shouldShowEstablishTrustDialog"]
      182 GETUPVAL                         R27 9
      183 JUMPIFNOT                        R27 ; [+2]
      184 MOVE                             R26 R23
      185 JUMP                             ; [+1]
      186 LOADNIL                          R26
      187 SETTABLEKS                       R26 R25 K11 ["showAgeReverificationBanner"]
      189 SETTABLEKS                       R20 R25 K12 ["onClose"]
      191 GETUPVAL                         R27 8
      192 JUMPIFNOT                        R27 ; [+2]
      193 MOVE                             R26 R22
      194 JUMP                             ; [+1]
      195 LOADNIL                          R26
      196 SETTABLEKS                       R26 R25 K13 ["onTrustBannerClose"]
      198 GETUPVAL                         R27 9
      199 JUMPIFNOT                        R27 ; [+2]
      200 MOVE                             R26 R24
      201 JUMP                             ; [+1]
      202 LOADNIL                          R26
      203 SETTABLEKS                       R26 R25 K14 ["onAgeReverificationBannerClose"]
      205 GETUPVAL                         R26 4
      206 GETTABLEKS                       R26 R26 K16 ["createElement"]
      208 GETUPVAL                         R27 20
      209 GETTABLEKS                       R27 R27 K17 ["Provider"]
      211 DUPTABLE                         R28 K19 [{"value"}]
      212 SETTABLEKS                       R25 R28 K18 ["value"]
      214 GETTABLEKS                       R29 R0 K20 ["children"]
      216 CALL                             R26 3 -1
      217 RETURN                           R26 -1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        ASSERT R1 ; [+2]
        2 GETIMPORT                        R0 K1 [assert]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K2 ["useContext"]
        8 GETUPVAL                         R1 2
        9 CALL                             R0 1 1
       10 JUMPIF                           R0 ; [+4]
       11 GETIMPORT                        R1 K4 [error]
       13 LOADK                            R2 K5 ["Attempted to access Context outside of provider"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["TypedDash"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K12 ["createContext"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K9 ["Src"]
       36 GETTABLEKS                       R6 R6 K13 ["Network"]
       38 GETTABLEKS                       R6 R6 K14 ["DiscoverShowStudioFAEBanner"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K9 ["Src"]
       45 GETTABLEKS                       R7 R7 K10 ["Util"]
       47 GETTABLEKS                       R7 R7 K15 ["Services"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K9 ["Src"]
       54 GETTABLEKS                       R8 R8 K10 ["Util"]
       56 GETTABLEKS                       R8 R8 K16 ["Telemetry"]
       58 GETTABLEKS                       R8 R8 K17 ["TelemetryContext"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R9 R0 K9 ["Src"]
       65 GETTABLEKS                       R9 R9 K10 ["Util"]
       67 GETTABLEKS                       R9 R9 K16 ["Telemetry"]
       69 GETTABLEKS                       R9 R9 K18 ["StudioSafetyUpsellBannerShownEvent"]
       71 CALL                             R8 1 1
       72 GETTABLEKS                       R9 R1 K19 ["ContextServices"]
       74 GETTABLEKS                       R9 R9 K20 ["Plugin"]
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K9 ["Src"]
       80 GETTABLEKS                       R11 R11 K21 ["SharedFlags"]
       82 GETTABLEKS                       R11 R11 K22 ["getFFlagLuaStartPageVerifyAgeBanner"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K9 ["Src"]
       89 GETTABLEKS                       R12 R12 K21 ["SharedFlags"]
       91 GETTABLEKS                       R12 R12 K23 ["getFFlagStartPageEstablishTrustBanner"]
       93 CALL                             R11 1 1
       94 CALL                             R11 0 1
       95 GETIMPORT                        R12 K5 [require]
       97 GETTABLEKS                       R13 R0 K9 ["Src"]
       99 GETTABLEKS                       R13 R13 K21 ["SharedFlags"]
      101 GETTABLEKS                       R13 R13 K24 ["getFFlagStartPageEstablishTrustBannerSkipImpactCheck"]
      103 CALL                             R12 1 1
      104 CALL                             R12 0 1
      105 GETIMPORT                        R13 K5 [require]
      107 GETTABLEKS                       R14 R0 K9 ["Src"]
      109 GETTABLEKS                       R14 R14 K21 ["SharedFlags"]
      111 GETTABLEKS                       R14 R14 K25 ["getFFlagStartPageFAEReverification"]
      113 CALL                             R13 1 1
      114 CALL                             R13 0 1
      115 GETTABLEKS                       R14 R6 K26 ["RbxAnalyticsService"]
      117 GETTABLEKS                       R15 R6 K27 ["StudioService"]
      119 GETTABLEKS                       R16 R1 K10 ["Util"]
      121 GETTABLEKS                       R16 R16 K28 ["Promise"]
      123 GETIMPORT                        R17 K5 [require]
      125 GETTABLEKS                       R18 R0 K9 ["Src"]
      127 GETTABLEKS                       R18 R18 K29 ["Types"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K5 [require]
      132 GETTABLEKS                       R19 R0 K9 ["Src"]
      134 GETTABLEKS                       R19 R19 K13 ["Network"]
      136 GETTABLEKS                       R19 R19 K30 ["DiscoverImpactedStatus"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R20 R0 K9 ["Src"]
      143 GETTABLEKS                       R20 R20 K13 ["Network"]
      145 GETTABLEKS                       R20 R20 K31 ["DiscoverExperiencesSearch"]
      147 CALL                             R19 1 1
      148 GETIMPORT                        R20 K5 [require]
      150 GETTABLEKS                       R21 R0 K9 ["Src"]
      152 GETTABLEKS                       R21 R21 K13 ["Network"]
      154 GETTABLEKS                       R21 R21 K32 ["DiscoverManageableGroupIds"]
      156 CALL                             R20 1 1
      157 MOVE                             R21 R4
      158 LOADNIL                          R22
      159 CALL                             R21 1 1
      160 DUPTABLE                         R22 K36 [{"Uri", "Text", "Enabled"}]
      161 DUPTABLE                         R23 K41 [{"DataModel", "PluginId", "Category", "ItemId"}]
      162 LOADK                            R24 K42 ["Standalone"]
      163 SETTABLEKS                       R24 R23 K37 ["DataModel"]
      165 LOADK                            R24 K43 ["LogoutMenu"]
      166 SETTABLEKS                       R24 R23 K38 ["PluginId"]
      168 LOADK                            R24 K44 ["Settings"]
      169 SETTABLEKS                       R24 R23 K39 ["Category"]
      171 LOADK                            R24 K45 ["UserIsAMPAgeVerified"]
      172 SETTABLEKS                       R24 R23 K40 ["ItemId"]
      174 SETTABLEKS                       R23 R22 K33 ["Uri"]
      176 LOADK                            R23 K46 ["placeholder"]
      177 SETTABLEKS                       R23 R22 K34 ["Text"]
      179 LOADB                            R23 1
      180 SETTABLEKS                       R23 R22 K35 ["Enabled"]
      182 GETIMPORT                        R23 K5 [require]
      184 GETTABLEKS                       R24 R0 K9 ["Src"]
      186 GETTABLEKS                       R24 R24 K21 ["SharedFlags"]
      188 GETTABLEKS                       R24 R24 K47 ["getFIntStartPageImpactedExperiencesPageSize"]
      190 CALL                             R23 1 1
      191 CALL                             R23 0 1
      192 GETIMPORT                        R24 K5 [require]
      194 GETTABLEKS                       R25 R0 K9 ["Src"]
      196 GETTABLEKS                       R25 R25 K21 ["SharedFlags"]
      198 GETTABLEKS                       R25 R25 K48 ["getFIntStartPageImpactedExperiencesShortCircuitThreshold"]
      200 CALL                             R24 1 1
      201 CALL                             R24 0 1
      202 DUPCLOSURE                       R25 K49 [PROTO_0]
      203 CAPTURE                          VAL R23
      204 DUPCLOSURE                       R26 K50 [PROTO_2]
      205 CAPTURE                          VAL R19
      206 CAPTURE                          VAL R16
      207 DUPCLOSURE                       R27 K51 [PROTO_25]
      208 CAPTURE                          VAL R10
      209 CAPTURE                          VAL R9
      210 CAPTURE                          VAL R6
      211 CAPTURE                          VAL R7
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R15
      214 CAPTURE                          VAL R14
      215 CAPTURE                          VAL R8
      216 CAPTURE                          VAL R11
      217 CAPTURE                          VAL R13
      218 CAPTURE                          VAL R22
      219 CAPTURE                          VAL R5
      220 CAPTURE                          VAL R12
      221 CAPTURE                          VAL R16
      222 CAPTURE                          VAL R26
      223 CAPTURE                          VAL R23
      224 CAPTURE                          VAL R20
      225 CAPTURE                          VAL R3
      226 CAPTURE                          VAL R24
      227 CAPTURE                          VAL R18
      228 CAPTURE                          VAL R21
      229 DUPCLOSURE                       R28 K52 [PROTO_26]
      230 CAPTURE                          VAL R10
      231 CAPTURE                          VAL R2
      232 CAPTURE                          VAL R21
      233 DUPTABLE                         R29 K55 [{"Provider", "useContext"}]
      234 SETTABLEKS                       R27 R29 K53 ["Provider"]
      236 SETTABLEKS                       R28 R29 K54 ["useContext"]
      238 RETURN                           R29 1
