PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K4 [{"telemetryType", "upsellEntrySurface", "userId", "studioSid"}]
        3 LOADK                            R5 K5 ["load"]
        4 SETTABLEKS                       R5 R4 K0 ["telemetryType"]
        6 SETTABLEKS                       R0 R4 K1 ["upsellEntrySurface"]
        8 GETUPVAL                         R5 2
        9 NAMECALL                         R5 R5 K6 ["GetUserId"]
       11 CALL                             R5 1 1
       12 SETTABLEKS                       R5 R4 K2 ["userId"]
       14 GETUPVAL                         R5 3
       15 NAMECALL                         R5 R5 K7 ["GetSessionId"]
       17 CALL                             R5 1 1
       18 SETTABLEKS                       R5 R4 K3 ["studioSid"]
       20 NAMECALL                         R1 R1 K8 ["log"]
       22 CALL                             R1 3 0
       23 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["Uri"]
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

PROTO_5:
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
       16 JUMPIFNOT                        R0 ; [+24]
       17 GETUPVAL                         R1 3
       18 GETUPVAL                         R3 4
       19 DUPTABLE                         R4 K6 [{"telemetryType", "upsellEntrySurface", "userId", "studioSid"}]
       20 LOADK                            R5 K7 ["load"]
       21 SETTABLEKS                       R5 R4 K2 ["telemetryType"]
       23 LOADK                            R5 K8 ["start_page"]
       24 SETTABLEKS                       R5 R4 K3 ["upsellEntrySurface"]
       26 GETUPVAL                         R5 5
       27 NAMECALL                         R5 R5 K9 ["GetUserId"]
       29 CALL                             R5 1 1
       30 SETTABLEKS                       R5 R4 K4 ["userId"]
       32 GETUPVAL                         R5 6
       33 NAMECALL                         R5 R5 K10 ["GetSessionId"]
       35 CALL                             R5 1 1
       36 SETTABLEKS                       R5 R4 K5 ["studioSid"]
       38 NAMECALL                         R1 R1 K11 ["log"]
       40 CALL                             R1 3 0
       41 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R1
        4 CALL                             R3 1 0
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R2
        7 CALL                             R3 1 0
        8 JUMPIFNOT                        R1 ; [+24]
        9 GETUPVAL                         R3 2
       10 GETUPVAL                         R5 3
       11 DUPTABLE                         R6 K4 [{"telemetryType", "upsellEntrySurface", "userId", "studioSid"}]
       12 LOADK                            R7 K5 ["load"]
       13 SETTABLEKS                       R7 R6 K0 ["telemetryType"]
       15 LOADK                            R7 K6 ["start_page_establish_trust"]
       16 SETTABLEKS                       R7 R6 K1 ["upsellEntrySurface"]
       18 GETUPVAL                         R7 4
       19 NAMECALL                         R7 R7 K7 ["GetUserId"]
       21 CALL                             R7 1 1
       22 SETTABLEKS                       R7 R6 K2 ["userId"]
       24 GETUPVAL                         R7 5
       25 NAMECALL                         R7 R7 K8 ["GetSessionId"]
       27 CALL                             R7 1 1
       28 SETTABLEKS                       R7 R6 K3 ["studioSid"]
       30 NAMECALL                         R3 R3 K9 ["log"]
       32 CALL                             R3 3 0
       33 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 JUMPIFNOT                        R0 ; [+24]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K4 [{"telemetryType", "upsellEntrySurface", "userId", "studioSid"}]
        7 LOADK                            R5 K5 ["load"]
        8 SETTABLEKS                       R5 R4 K0 ["telemetryType"]
       10 LOADK                            R5 K6 ["start_page_age_reverification"]
       11 SETTABLEKS                       R5 R4 K1 ["upsellEntrySurface"]
       13 GETUPVAL                         R5 3
       14 NAMECALL                         R5 R5 K7 ["GetUserId"]
       16 CALL                             R5 1 1
       17 SETTABLEKS                       R5 R4 K2 ["userId"]
       19 GETUPVAL                         R5 4
       20 NAMECALL                         R5 R5 K8 ["GetSessionId"]
       22 CALL                             R5 1 1
       23 SETTABLEKS                       R5 R4 K3 ["studioSid"]
       25 NAMECALL                         R1 R1 K9 ["log"]
       27 CALL                             R1 3 0
       28 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U7
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U8
       21 NAMECALL                         R2 R1 K2 ["andThen"]
       23 CALL                             R2 2 1
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          UPVAL U4
       26 NAMECALL                         R2 R2 K3 ["catch"]
       28 CALL                             R2 2 0
       29 JUMP                             ; [+60]
       30 GETIMPORT                        R2 K5 [error]
       32 LOADK                            R3 K6 ["Error: DiscoverShowStudioFAEBanner returned "]
       33 MOVE                             R4 R1
       34 CALL                             R2 2 0
       35 JUMP                             ; [+54]
       36 GETUPVAL                         R1 1
       37 JUMPIFNOTEQKB                    R1 FALSE ; [+52]
       39 GETUPVAL                         R1 9
       40 JUMPIFNOT                        R1 ; [+49]
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
       51 JUMPIFNOT                        R1 ; [+1]
       52 JUMPIF                           R2 ; [+11]
       53 GETIMPORT                        R3 K10 [warn]
       55 LOADK                            R4 K11 ["DiscoverShowStudioFAEBanner failed to return a valid promise."]
       56 CALL                             R3 1 0
       57 GETUPVAL                         R3 10
       58 LOADB                            R4 0
       59 CALL                             R3 1 0
       60 GETUPVAL                         R3 11
       61 LOADB                            R4 0
       62 CALL                             R3 1 0
       63 RETURN                           R0 0
       64 GETUPVAL                         R4 12
       65 GETTABLEKS                       R3 R4 K12 ["all"]
       67 NEWTABLE                         R4 0 2
       69 MOVE                             R5 R1
       70 MOVE                             R6 R2
       71 SETLIST                          R4 R5 2 [1]
       73 CALL                             R3 1 1
       74 NEWCLOSURE                       R5 P2
       75 CAPTURE                          UPVAL U10
       76 CAPTURE                          UPVAL U11
       77 CAPTURE                          UPVAL U3
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          UPVAL U8
       81 NAMECALL                         R3 R3 K2 ["andThen"]
       83 CALL                             R3 2 1
       84 NEWCLOSURE                       R5 P3
       85 CAPTURE                          UPVAL U10
       86 CAPTURE                          UPVAL U11
       87 NAMECALL                         R3 R3 K3 ["catch"]
       89 CALL                             R3 2 0
       90 GETUPVAL                         R1 13
       91 JUMPIFNOT                        R1 ; [+29]
       92 GETUPVAL                         R1 14
       93 JUMPIFNOTEQKNIL                  R1 ; [+27]
       95 GETUPVAL                         R1 2
       96 MOVE                             R2 R0
       97 LOADK                            R3 K13 ["ShouldShowStudioAgeReverificationRequiredBanner"]
       98 GETUPVAL                         R4 3
       99 CALL                             R1 3 1
      100 JUMPIFNOT                        R1 ; [+15]
      101 NEWCLOSURE                       R4 P4
      102 CAPTURE                          UPVAL U15
      103 CAPTURE                          UPVAL U3
      104 CAPTURE                          UPVAL U7
      105 CAPTURE                          UPVAL U0
      106 CAPTURE                          UPVAL U8
      107 NAMECALL                         R2 R1 K2 ["andThen"]
      109 CALL                             R2 2 1
      110 NEWCLOSURE                       R4 P5
      111 CAPTURE                          UPVAL U15
      112 NAMECALL                         R2 R2 K3 ["catch"]
      114 CALL                             R2 2 0
      115 RETURN                           R0 0
      116 GETIMPORT                        R2 K5 [error]
      118 LOADK                            R3 K6 ["Error: DiscoverShowStudioFAEBanner returned "]
      119 MOVE                             R4 R1
      120 CALL                             R2 2 0
      121 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        ASSERT R2 ; [+2]
        2 GETIMPORT                        R1 K1 [assert]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K2 ["use"]
        8 CALL                             R1 1 1
        9 NAMECALL                         R1 R1 K3 ["get"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R2 R3 K4 ["getSettingsBridge"]
       15 CALL                             R2 0 1
       16 GETUPVAL                         R3 3
       17 NAMECALL                         R3 R3 K2 ["use"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R5 4
       21 GETTABLEKS                       R4 R5 K5 ["useState"]
       23 LOADNIL                          R5
       24 CALL                             R4 1 2
       25 GETUPVAL                         R7 4
       26 GETTABLEKS                       R6 R7 K5 ["useState"]
       28 LOADNIL                          R7
       29 CALL                             R6 1 2
       30 GETUPVAL                         R9 4
       31 GETTABLEKS                       R8 R9 K5 ["useState"]
       33 LOADNIL                          R9
       34 CALL                             R8 1 2
       35 GETUPVAL                         R11 4
       36 GETTABLEKS                       R10 R11 K5 ["useState"]
       38 LOADNIL                          R11
       39 CALL                             R10 1 2
       40 NEWCLOSURE                       R12 P0
       41 CAPTURE                          VAL R3
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U7
       45 GETUPVAL                         R14 4
       46 GETTABLEKS                       R13 R14 K5 ["useState"]
       48 LOADB                            R14 0
       49 CALL                             R13 1 2
       50 GETUPVAL                         R16 4
       51 GETTABLEKS                       R15 R16 K5 ["useState"]
       53 LOADB                            R16 0
       54 CALL                             R15 1 2
       55 GETUPVAL                         R18 4
       56 GETTABLEKS                       R17 R18 K5 ["useState"]
       58 LOADB                            R18 0
       59 CALL                             R17 1 2
       60 GETUPVAL                         R20 4
       61 GETTABLEKS                       R19 R20 K6 ["useEffect"]
       63 NEWCLOSURE                       R20 P1
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R14
       66 CAPTURE                          UPVAL U8
       67 CAPTURE                          VAL R16
       68 CAPTURE                          UPVAL U9
       69 CAPTURE                          VAL R18
       70 NEWTABLE                         R21 0 0
       72 CALL                             R19 2 0
       73 GETUPVAL                         R20 4
       74 GETTABLEKS                       R19 R20 K6 ["useEffect"]
       76 NEWCLOSURE                       R20 P2
       77 CAPTURE                          VAL R2
       78 CAPTURE                          UPVAL U10
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R11
       81 NEWTABLE                         R21 0 0
       83 CALL                             R19 2 0
       84 GETUPVAL                         R20 4
       85 GETTABLEKS                       R19 R20 K6 ["useEffect"]
       87 NEWCLOSURE                       R20 P3
       88 CAPTURE                          UPVAL U6
       89 CAPTURE                          VAL R6
       90 CAPTURE                          UPVAL U11
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R7
       93 CAPTURE                          UPVAL U10
       94 CAPTURE                          VAL R2
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          UPVAL U7
       97 CAPTURE                          UPVAL U8
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R5
      100 CAPTURE                          UPVAL U12
      101 CAPTURE                          UPVAL U9
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R11
      104 NEWTABLE                         R21 0 3
      106 MOVE                             R22 R6
      107 MOVE                             R23 R8
      108 MOVE                             R24 R10
      109 SETLIST                          R21 R22 3 [1]
      111 CALL                             R19 2 0
      112 MOVE                             R19 R6
      113 JUMPIFNOT                        R19 ; [+1]
      114 NOT                              R19 R13
      115 GETUPVAL                         R21 4
      116 GETTABLEKS                       R20 R21 K7 ["useCallback"]
      118 NEWCLOSURE                       R21 P4
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R1
      121 NEWTABLE                         R22 0 1
      123 MOVE                             R23 R14
      124 SETLIST                          R22 R23 1 [1]
      126 CALL                             R20 2 1
      127 MOVE                             R21 R8
      128 JUMPIFNOT                        R21 ; [+1]
      129 NOT                              R21 R15
      130 GETUPVAL                         R23 4
      131 GETTABLEKS                       R22 R23 K7 ["useCallback"]
      133 NEWCLOSURE                       R23 P5
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R1
      136 NEWTABLE                         R24 0 1
      138 MOVE                             R25 R16
      139 SETLIST                          R24 R25 1 [1]
      141 CALL                             R22 2 1
      142 MOVE                             R23 R10
      143 JUMPIFNOT                        R23 ; [+1]
      144 NOT                              R23 R17
      145 GETUPVAL                         R25 4
      146 GETTABLEKS                       R24 R25 K7 ["useCallback"]
      148 NEWCLOSURE                       R25 P6
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R1
      151 NEWTABLE                         R26 0 1
      153 MOVE                             R27 R18
      154 SETLIST                          R26 R27 1 [1]
      156 CALL                             R24 2 1
      157 DUPTABLE                         R25 K15 [{"showVerifyAgeBanner", "showEstablishTrustBanner", "shouldShowEstablishTrustDialog", "showAgeReverificationBanner", "onClose", "onTrustBannerClose", "onAgeReverificationBannerClose"}]
      158 SETTABLEKS                       R19 R25 K8 ["showVerifyAgeBanner"]
      160 GETUPVAL                         R27 8
      161 JUMPIFNOT                        R27 ; [+2]
      162 MOVE                             R26 R21
      163 JUMP                             ; [+1]
      164 LOADNIL                          R26
      165 SETTABLEKS                       R26 R25 K9 ["showEstablishTrustBanner"]
      167 GETUPVAL                         R27 8
      168 JUMPIFNOT                        R27 ; [+2]
      169 MOVE                             R26 R4
      170 JUMP                             ; [+1]
      171 LOADNIL                          R26
      172 SETTABLEKS                       R26 R25 K10 ["shouldShowEstablishTrustDialog"]
      174 GETUPVAL                         R27 9
      175 JUMPIFNOT                        R27 ; [+2]
      176 MOVE                             R26 R23
      177 JUMP                             ; [+1]
      178 LOADNIL                          R26
      179 SETTABLEKS                       R26 R25 K11 ["showAgeReverificationBanner"]
      181 SETTABLEKS                       R20 R25 K12 ["onClose"]
      183 GETUPVAL                         R27 8
      184 JUMPIFNOT                        R27 ; [+2]
      185 MOVE                             R26 R22
      186 JUMP                             ; [+1]
      187 LOADNIL                          R26
      188 SETTABLEKS                       R26 R25 K13 ["onTrustBannerClose"]
      190 GETUPVAL                         R27 9
      191 JUMPIFNOT                        R27 ; [+2]
      192 MOVE                             R26 R24
      193 JUMP                             ; [+1]
      194 LOADNIL                          R26
      195 SETTABLEKS                       R26 R25 K14 ["onAgeReverificationBannerClose"]
      197 GETUPVAL                         R27 4
      198 GETTABLEKS                       R26 R27 K16 ["createElement"]
      200 GETUPVAL                         R28 13
      201 GETTABLEKS                       R27 R28 K17 ["Provider"]
      203 DUPTABLE                         R28 K19 [{"value"}]
      204 SETTABLEKS                       R25 R28 K18 ["value"]
      206 GETTABLEKS                       R29 R0 K20 ["children"]
      208 CALL                             R26 3 -1
      209 RETURN                           R26 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        ASSERT R1 ; [+2]
        2 GETIMPORT                        R0 K1 [assert]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K2 ["useContext"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["createContext"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R7 R0 K10 ["Src"]
       27 GETTABLEKS                       R6 R7 K11 ["Network"]
       29 GETTABLEKS                       R5 R6 K12 ["DiscoverShowStudioFAEBanner"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R8 R0 K10 ["Src"]
       36 GETTABLEKS                       R7 R8 K13 ["Util"]
       38 GETTABLEKS                       R6 R7 K14 ["Services"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R10 R0 K10 ["Src"]
       45 GETTABLEKS                       R9 R10 K13 ["Util"]
       47 GETTABLEKS                       R8 R9 K15 ["Telemetry"]
       49 GETTABLEKS                       R7 R8 K16 ["TelemetryContext"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R11 R0 K10 ["Src"]
       56 GETTABLEKS                       R10 R11 K13 ["Util"]
       58 GETTABLEKS                       R9 R10 K15 ["Telemetry"]
       60 GETTABLEKS                       R8 R9 K17 ["StudioSafetyUpsellBannerShownEvent"]
       62 CALL                             R7 1 1
       63 GETTABLEKS                       R9 R1 K18 ["ContextServices"]
       65 GETTABLEKS                       R8 R9 K19 ["Plugin"]
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R12 R0 K10 ["Src"]
       71 GETTABLEKS                       R11 R12 K20 ["SharedFlags"]
       73 GETTABLEKS                       R10 R11 K21 ["getFFlagLuaStartPageVerifyAgeBanner"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R13 R0 K10 ["Src"]
       80 GETTABLEKS                       R12 R13 K20 ["SharedFlags"]
       82 GETTABLEKS                       R11 R12 K22 ["getFFlagStartPageEstablishTrustBanner"]
       84 CALL                             R10 1 1
       85 CALL                             R10 0 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R14 R0 K10 ["Src"]
       90 GETTABLEKS                       R13 R14 K20 ["SharedFlags"]
       92 GETTABLEKS                       R12 R13 K23 ["getFFlagStartPageFAEReverification"]
       94 CALL                             R11 1 1
       95 CALL                             R11 0 1
       96 GETTABLEKS                       R12 R5 K24 ["RbxAnalyticsService"]
       98 GETTABLEKS                       R13 R5 K25 ["StudioService"]
      100 GETTABLEKS                       R15 R1 K13 ["Util"]
      102 GETTABLEKS                       R14 R15 K26 ["Promise"]
      104 MOVE                             R15 R3
      105 LOADNIL                          R16
      106 CALL                             R15 1 1
      107 DUPTABLE                         R16 K30 [{"Uri", "Text", "Enabled"}]
      108 DUPTABLE                         R17 K35 [{"DataModel", "PluginId", "Category", "ItemId"}]
      109 LOADK                            R18 K36 ["Standalone"]
      110 SETTABLEKS                       R18 R17 K31 ["DataModel"]
      112 LOADK                            R18 K37 ["LogoutMenu"]
      113 SETTABLEKS                       R18 R17 K32 ["PluginId"]
      115 LOADK                            R18 K38 ["Settings"]
      116 SETTABLEKS                       R18 R17 K33 ["Category"]
      118 LOADK                            R18 K39 ["UserIsAMPAgeVerified"]
      119 SETTABLEKS                       R18 R17 K34 ["ItemId"]
      121 SETTABLEKS                       R17 R16 K27 ["Uri"]
      123 LOADK                            R17 K40 ["placeholder"]
      124 SETTABLEKS                       R17 R16 K28 ["Text"]
      126 LOADB                            R17 1
      127 SETTABLEKS                       R17 R16 K29 ["Enabled"]
      129 DUPCLOSURE                       R17 K41 [PROTO_15]
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R16
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R15
      144 DUPCLOSURE                       R18 K42 [PROTO_16]
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R15
      148 DUPTABLE                         R19 K45 [{"Provider", "useContext"}]
      149 SETTABLEKS                       R17 R19 K43 ["Provider"]
      151 SETTABLEKS                       R18 R19 K44 ["useContext"]
      153 RETURN                           R19 1
