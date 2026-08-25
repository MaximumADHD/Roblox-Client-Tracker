PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 JUMPIFNOTEQKS                    R0 K1 ["Warn"] ; [+7]
        6 LOADK                            R4 K2 ["WarningHeader"]
        7 LOADK                            R5 K2 ["WarningHeader"]
        8 NAMECALL                         R2 R1 K3 ["getText"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1
       12 JUMPIFNOTEQKS                    R0 K4 ["Ban 1 Day"] ; [+7]
       14 LOADK                            R4 K5 ["BanHeader"]
       15 LOADK                            R5 K6 ["Ban1DayHeader"]
       16 NAMECALL                         R2 R1 K3 ["getText"]
       18 CALL                             R2 3 -1
       19 RETURN                           R2 -1
       20 JUMPIFNOTEQKS                    R0 K7 ["Ban 3 Days"] ; [+7]
       22 LOADK                            R4 K5 ["BanHeader"]
       23 LOADK                            R5 K8 ["Ban3DaysHeader"]
       24 NAMECALL                         R2 R1 K3 ["getText"]
       26 CALL                             R2 3 -1
       27 RETURN                           R2 -1
       28 JUMPIFNOTEQKS                    R0 K9 ["Ban 7 Days"] ; [+7]
       30 LOADK                            R4 K5 ["BanHeader"]
       31 LOADK                            R5 K10 ["Ban7DaysHeader"]
       32 NAMECALL                         R2 R1 K3 ["getText"]
       34 CALL                             R2 3 -1
       35 RETURN                           R2 -1
       36 JUMPIFNOTEQKS                    R0 K11 ["Ban 14 Days"] ; [+7]
       38 LOADK                            R4 K5 ["BanHeader"]
       39 LOADK                            R5 K12 ["Ban14DaysHeader"]
       40 NAMECALL                         R2 R1 K3 ["getText"]
       42 CALL                             R2 3 -1
       43 RETURN                           R2 -1
       44 JUMPIFNOTEQKS                    R0 K13 ["Ban 6 Months"] ; [+7]
       46 LOADK                            R4 K5 ["BanHeader"]
       47 LOADK                            R5 K14 ["Ban6MonthsHeader"]
       48 NAMECALL                         R2 R1 K3 ["getText"]
       50 CALL                             R2 3 -1
       51 RETURN                           R2 -1
       52 JUMPIFNOTEQKS                    R0 K15 ["Ban 1 Year"] ; [+7]
       54 LOADK                            R4 K5 ["BanHeader"]
       55 LOADK                            R5 K16 ["Ban1YearHeader"]
       56 NAMECALL                         R2 R1 K3 ["getText"]
       58 CALL                             R2 3 -1
       59 RETURN                           R2 -1
       60 GETUPVAL                         R2 1
       61 JUMPIFNOT                        R2 ; [+8]
       62 JUMPIFNOTEQKS                    R0 K17 ["Deactivated"] ; [+7]
       64 LOADK                            R4 K5 ["BanHeader"]
       65 LOADK                            R5 K17 ["Deactivated"]
       66 NAMECALL                         R2 R1 K3 ["getText"]
       68 CALL                             R2 3 -1
       69 RETURN                           R2 -1
       70 GETUPVAL                         R2 1
       71 JUMPIFNOT                        R2 ; [+8]
       72 JUMPIFNOTEQKS                    R0 K18 ["Delete"] ; [+7]
       74 LOADK                            R4 K5 ["BanHeader"]
       75 LOADK                            R5 K19 ["Terminated"]
       76 NAMECALL                         R2 R1 K3 ["getText"]
       78 CALL                             R2 3 -1
       79 RETURN                           R2 -1
       80 LOADB                            R3 0
       81 FASTCALL1                        ASSERT R3 ; [+2]
       82 GETIMPORT                        R2 K21 [assert]
       84 CALL                             R2 1 0
       85 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [DateTime.fromIsoDate]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["ModerationEndDateTime"]
        5 CALL                             R0 1 1
        6 JUMPIF                           R0 ; [+2]
        7 LOADB                            R1 1
        8 RETURN                           R1 1
        9 GETIMPORT                        R2 K5 [DateTime.now]
       11 CALL                             R2 0 1
       12 GETTABLEKS                       R2 R2 K6 ["UnixTimestampMillis"]
       14 GETTABLEKS                       R3 R0 K6 ["UnixTimestampMillis"]
       16 JUMPIFLE                         R3 R2 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnReactivate"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [table.freeze]
        2 DUPTABLE                         R1 K6 [{"Label", "Enabled", "OnActivated"}]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K7 ["Buttons"]
        5 LOADK                            R5 K8 ["Reactivate"]
        6 NAMECALL                         R2 R2 K9 ["getText"]
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K3 ["Label"]
       11 GETUPVAL                         R3 1
       12 JUMPIFNOT                        R3 ; [+9]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K10 ["Type"]
       16 JUMPIFNOTEQKS                    R3 K11 ["Warn"] ; [+3]
       18 GETUPVAL                         R2 3
       19 JUMP                             ; [+3]
       20 GETUPVAL                         R2 4
       21 JUMP                             ; [+1]
       22 GETUPVAL                         R2 3
       23 SETTABLEKS                       R2 R1 K4 ["Enabled"]
       25 NEWCLOSURE                       R2 P0
       26 CAPTURE                          UPVAL U2
       27 SETTABLEKS                       R2 R1 K5 ["OnActivated"]
       29 CALL                             R0 1 -1
       30 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnLogout"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [table.freeze]
        2 DUPTABLE                         R1 K5 [{"Label", "OnActivated"}]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K6 ["Buttons"]
        5 LOADK                            R5 K7 ["LogOut"]
        6 NAMECALL                         R2 R2 K8 ["getText"]
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K3 ["Label"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 SETTABLEKS                       R2 R1 K4 ["OnActivated"]
       15 CALL                             R0 1 -1
       16 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CloseStudioInstance"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K2 [table.freeze]
        2 DUPTABLE                         R1 K5 [{"Label", "OnActivated"}]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K6 ["Buttons"]
        5 LOADK                            R5 K7 ["Quit"]
        6 NAMECALL                         R2 R2 K8 ["getText"]
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K3 ["Label"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 SETTABLEKS                       R2 R1 K4 ["OnActivated"]
       15 CALL                             R0 1 -1
       16 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useState"]
        7 LOADB                            R3 0
        8 CALL                             R2 1 2
        9 LOADNIL                          R4
       10 GETUPVAL                         R5 2
       11 JUMPIFNOT                        R5 ; [+13]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R7 0 1
       19 GETTABLEKS                       R8 R0 K3 ["ModerationEndDateTime"]
       21 SETLIST                          R7 R8 1 [1]
       23 CALL                             R5 2 1
       24 MOVE                             R4 R5
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          REF R4
       34 NEWTABLE                         R7 0 3
       36 MOVE                             R8 R2
       37 MOVE                             R9 R4
       38 GETTABLEKS                       R10 R1 K4 ["locale"]
       40 SETLIST                          R7 R8 3 [1]
       42 CALL                             R5 2 1
       43 GETUPVAL                         R6 1
       44 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       46 NEWCLOSURE                       R7 P2
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R0
       49 NEWTABLE                         R8 0 1
       51 GETTABLEKS                       R9 R1 K4 ["locale"]
       53 SETLIST                          R8 R9 1 [1]
       55 CALL                             R6 2 1
       56 GETUPVAL                         R7 1
       57 GETTABLEKS                       R7 R7 K2 ["useMemo"]
       59 NEWCLOSURE                       R8 P3
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R0
       62 NEWTABLE                         R9 0 1
       64 GETTABLEKS                       R10 R1 K4 ["locale"]
       66 SETLIST                          R9 R10 1 [1]
       68 CALL                             R7 2 1
       69 LOADNIL                          R8
       70 GETTABLEKS                       R10 R0 K5 ["Type"]
       72 JUMPIFNOTEQKS                    R10 K6 ["Warn"] ; [+2]
       74 LOADB                            R9 0 +1
       75 LOADB                            R9 1
       76 GETUPVAL                         R10 2
       77 JUMPIFNOT                        R10 ; [+7]
       78 LOADB                            R10 0
       79 GETTABLEKS                       R11 R0 K5 ["Type"]
       81 JUMPIFEQKS                       R11 K6 ["Warn"] ; [+2]
       83 NOT                              R10 R4
       84 MOVE                             R9 R10
       85 GETUPVAL                         R10 3
       86 DUPTABLE                         R11 K18 [{["Intent"], ["Heading"], ["Contents"], ["ActionPrimary"], ["ActionSecondary"], ["Modal"] = True, ["DisableTitleBar"], ["OnClosed"], ["Width"] = 510}]
       87 JUMPIF                           R9 ; [+2]
       88 LOADK                            R12 K19 ["Warning"]
       89 JUMP                             ; [+1]
       90 LOADK                            R12 K20 ["Error"]
       91 SETTABLEKS                       R12 R11 K7 ["Intent"]
       93 GETUPVAL                         R12 4
       94 GETTABLEKS                       R13 R0 K5 ["Type"]
       96 CALL                             R12 1 1
       97 SETTABLEKS                       R12 R11 K8 ["Heading"]
       99 GETUPVAL                         R12 5
      100 DUPTABLE                         R13 K26 [{"ModeratorNote", "Reason", "SetChecked", "Checked", "Type", "ModerationStartDateTime", "ModerationEndDateTime"}]
      101 GETTABLEKS                       R14 R0 K21 ["ModeratorNote"]
      103 SETTABLEKS                       R14 R13 K21 ["ModeratorNote"]
      105 GETTABLEKS                       R14 R0 K22 ["Reason"]
      107 SETTABLEKS                       R14 R13 K22 ["Reason"]
      109 SETTABLEKS                       R3 R13 K23 ["SetChecked"]
      111 SETTABLEKS                       R2 R13 K24 ["Checked"]
      113 GETTABLEKS                       R14 R0 K5 ["Type"]
      115 SETTABLEKS                       R14 R13 K5 ["Type"]
      117 GETTABLEKS                       R14 R0 K25 ["ModerationStartDateTime"]
      119 SETTABLEKS                       R14 R13 K25 ["ModerationStartDateTime"]
      121 GETTABLEKS                       R14 R0 K3 ["ModerationEndDateTime"]
      123 SETTABLEKS                       R14 R13 K3 ["ModerationEndDateTime"]
      125 CALL                             R12 1 1
      126 SETTABLEKS                       R12 R11 K9 ["Contents"]
      128 JUMPIF                           R9 ; [+2]
      129 MOVE                             R12 R5
      130 JUMP                             ; [+1]
      131 MOVE                             R12 R6
      132 SETTABLEKS                       R12 R11 K10 ["ActionPrimary"]
      134 JUMPIF                           R9 ; [+2]
      135 MOVE                             R12 R6
      136 JUMP                             ; [+1]
      137 MOVE                             R12 R7
      138 SETTABLEKS                       R12 R11 K11 ["ActionSecondary"]
      140 SETTABLEKS                       R9 R11 K14 ["DisableTitleBar"]
      142 GETTABLEKS                       R12 R0 K27 ["OpenQuitDialog"]
      144 SETTABLEKS                       R12 R11 K15 ["OnClosed"]
      146 CALL                             R10 1 1
      147 MOVE                             R8 R10
      148 GETUPVAL                         R10 1
      149 GETTABLEKS                       R10 R10 K28 ["useEffect"]
      151 MOVE                             R11 R8
      152 NEWTABLE                         R12 0 0
      154 CALL                             R10 2 0
      155 LOADNIL                          R10
      156 CLOSEUPVALS                      R4
      157 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModerationDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R5 R5 K12 ["Hooks"]
       29 GETTABLEKS                       R5 R5 K13 ["useDialog"]
       31 GETIMPORT                        R6 K5 [require]
       33 GETTABLEKS                       R7 R0 K14 ["Src"]
       35 GETTABLEKS                       R7 R7 K15 ["Components"]
       37 GETTABLEKS                       R7 R7 K16 ["DialogContents"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K5 [require]
       42 GETTABLEKS                       R8 R0 K14 ["Src"]
       44 GETTABLEKS                       R8 R8 K17 ["SharedFlags"]
       46 GETTABLEKS                       R8 R8 K18 ["getFFlagStudioUserModerationV2Migration"]
       48 CALL                             R7 1 1
       49 CALL                             R7 0 1
       50 DUPCLOSURE                       R8 K19 [PROTO_0]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R7
       53 DUPCLOSURE                       R9 K20 [PROTO_8]
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R6
       60 RETURN                           R9 1
