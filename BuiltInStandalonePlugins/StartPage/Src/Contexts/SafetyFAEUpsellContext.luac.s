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
        1 JUMPIFNOT                        R0 ; [+36]
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
       38 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        3 JUMPIFNOTEQKB                    R1 FALSE ; [+4]
        5 GETUPVAL                         R1 0
        6 LOADNIL                          R2
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

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
        8 JUMPIFNOT                        R1 ; [+6]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U2
       11 NAMECALL                         R2 R1 K2 ["Connect"]
       13 CALL                             R2 2 1
       14 MOVE                             R0 R2
       15 NEWCLOSURE                       R2 P1
       16 CAPTURE                          REF R0
       17 CLOSEUPVALS                      R0
       18 RETURN                           R2 1

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
       29 RETURN                           R0 0
       30 GETIMPORT                        R2 K5 [error]
       32 LOADK                            R3 K6 ["Error: DiscoverShowStudioFAEBanner returned "]
       33 MOVE                             R4 R1
       34 CALL                             R2 2 0
       35 RETURN                           R0 0
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
       90 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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
       35 NEWCLOSURE                       R10 P0
       36 CAPTURE                          VAL R3
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          UPVAL U7
       40 GETUPVAL                         R12 4
       41 GETTABLEKS                       R11 R12 K5 ["useState"]
       43 LOADB                            R12 0
       44 CALL                             R11 1 2
       45 GETUPVAL                         R14 4
       46 GETTABLEKS                       R13 R14 K5 ["useState"]
       48 LOADB                            R14 0
       49 CALL                             R13 1 2
       50 GETUPVAL                         R16 4
       51 GETTABLEKS                       R15 R16 K6 ["useEffect"]
       53 NEWCLOSURE                       R16 P1
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R12
       56 CAPTURE                          UPVAL U8
       57 CAPTURE                          VAL R14
       58 NEWTABLE                         R17 0 0
       60 CALL                             R15 2 0
       61 GETUPVAL                         R16 4
       62 GETTABLEKS                       R15 R16 K6 ["useEffect"]
       64 NEWCLOSURE                       R16 P2
       65 CAPTURE                          VAL R2
       66 CAPTURE                          UPVAL U9
       67 CAPTURE                          VAL R7
       68 NEWTABLE                         R17 0 0
       70 CALL                             R15 2 0
       71 GETUPVAL                         R16 4
       72 GETTABLEKS                       R15 R16 K6 ["useEffect"]
       74 NEWCLOSURE                       R16 P3
       75 CAPTURE                          UPVAL U6
       76 CAPTURE                          VAL R6
       77 CAPTURE                          UPVAL U10
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R7
       80 CAPTURE                          UPVAL U9
       81 CAPTURE                          VAL R2
       82 CAPTURE                          UPVAL U5
       83 CAPTURE                          UPVAL U7
       84 CAPTURE                          UPVAL U8
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R5
       87 CAPTURE                          UPVAL U11
       88 NEWTABLE                         R17 0 3
       90 MOVE                             R18 R6
       91 MOVE                             R19 R7
       92 MOVE                             R20 R9
       93 SETLIST                          R17 R18 3 [1]
       95 CALL                             R15 2 0
       96 MOVE                             R15 R6
       97 JUMPIFNOT                        R15 ; [+1]
       98 NOT                              R15 R11
       99 GETUPVAL                         R17 4
      100 GETTABLEKS                       R16 R17 K7 ["useCallback"]
      102 NEWCLOSURE                       R17 P4
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R1
      105 NEWTABLE                         R18 0 1
      107 MOVE                             R19 R12
      108 SETLIST                          R18 R19 1 [1]
      110 CALL                             R16 2 1
      111 MOVE                             R17 R8
      112 JUMPIFNOT                        R17 ; [+1]
      113 NOT                              R17 R13
      114 GETUPVAL                         R19 4
      115 GETTABLEKS                       R18 R19 K7 ["useCallback"]
      117 NEWCLOSURE                       R19 P5
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R1
      120 NEWTABLE                         R20 0 1
      122 MOVE                             R21 R14
      123 SETLIST                          R20 R21 1 [1]
      125 CALL                             R18 2 1
      126 DUPTABLE                         R19 K13 [{"showVerifyAgeBanner", "showEstablishTrustBanner", "shouldShowEstablishTrustDialog", "onClose", "onTrustBannerClose"}]
      127 SETTABLEKS                       R15 R19 K8 ["showVerifyAgeBanner"]
      129 GETUPVAL                         R21 8
      130 JUMPIFNOT                        R21 ; [+2]
      131 MOVE                             R20 R17
      132 JUMP                             ; [+1]
      133 LOADNIL                          R20
      134 SETTABLEKS                       R20 R19 K9 ["showEstablishTrustBanner"]
      136 GETUPVAL                         R21 8
      137 JUMPIFNOT                        R21 ; [+2]
      138 MOVE                             R20 R4
      139 JUMP                             ; [+1]
      140 LOADNIL                          R20
      141 SETTABLEKS                       R20 R19 K10 ["shouldShowEstablishTrustDialog"]
      143 SETTABLEKS                       R16 R19 K11 ["onClose"]
      145 GETUPVAL                         R21 8
      146 JUMPIFNOT                        R21 ; [+2]
      147 MOVE                             R20 R18
      148 JUMP                             ; [+1]
      149 LOADNIL                          R20
      150 SETTABLEKS                       R20 R19 K12 ["onTrustBannerClose"]
      152 GETUPVAL                         R21 4
      153 GETTABLEKS                       R20 R21 K14 ["createElement"]
      155 GETUPVAL                         R22 12
      156 GETTABLEKS                       R21 R22 K15 ["Provider"]
      158 DUPTABLE                         R22 K17 [{"value"}]
      159 SETTABLEKS                       R19 R22 K16 ["value"]
      161 GETTABLEKS                       R23 R0 K18 ["children"]
      163 CALL                             R20 3 -1
      164 RETURN                           R20 -1

PROTO_13:
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
       86 GETTABLEKS                       R11 R5 K23 ["RbxAnalyticsService"]
       88 GETTABLEKS                       R12 R5 K24 ["StudioService"]
       90 GETTABLEKS                       R14 R1 K13 ["Util"]
       92 GETTABLEKS                       R13 R14 K25 ["Promise"]
       94 MOVE                             R14 R3
       95 LOADNIL                          R15
       96 CALL                             R14 1 1
       97 DUPTABLE                         R15 K29 [{"Uri", "Text", "Enabled"}]
       98 DUPTABLE                         R16 K34 [{"DataModel", "PluginId", "Category", "ItemId"}]
       99 LOADK                            R17 K35 ["Standalone"]
      100 SETTABLEKS                       R17 R16 K30 ["DataModel"]
      102 LOADK                            R17 K36 ["LogoutMenu"]
      103 SETTABLEKS                       R17 R16 K31 ["PluginId"]
      105 LOADK                            R17 K37 ["Settings"]
      106 SETTABLEKS                       R17 R16 K32 ["Category"]
      108 LOADK                            R17 K38 ["UserIsAMPAgeVerified"]
      109 SETTABLEKS                       R17 R16 K33 ["ItemId"]
      111 SETTABLEKS                       R16 R15 K26 ["Uri"]
      113 LOADK                            R16 K39 ["placeholder"]
      114 SETTABLEKS                       R16 R15 K27 ["Text"]
      116 LOADB                            R16 1
      117 SETTABLEKS                       R16 R15 K28 ["Enabled"]
      119 DUPCLOSURE                       R16 K40 [PROTO_12]
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R14
      133 DUPCLOSURE                       R17 K41 [PROTO_13]
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R14
      137 DUPTABLE                         R18 K44 [{"Provider", "useContext"}]
      138 SETTABLEKS                       R16 R18 K42 ["Provider"]
      140 SETTABLEKS                       R17 R18 K43 ["useContext"]
      142 RETURN                           R18 1
