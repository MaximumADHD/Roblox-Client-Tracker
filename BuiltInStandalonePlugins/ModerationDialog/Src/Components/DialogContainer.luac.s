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
        0 DUPTABLE                         R0 K2 [{"DialogComponent", "DialogUri"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["DialogComponent"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["join"]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K4 ["GetUri"]
       10 CALL                             R2 1 1
       11 DUPTABLE                         R3 K9 [{["Category"] = "Widget", ["ItemId"] = "Dialog/Moderation"}]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K1 ["DialogUri"]
       15 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 NAMECALL                         R2 R2 K1 ["get"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K2 ["useState"]
       14 LOADB                            R4 0
       15 CALL                             R3 1 2
       16 LOADNIL                          R5
       17 GETUPVAL                         R6 3
       18 JUMPIFNOT                        R6 ; [+13]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K3 ["useMemo"]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R8 0 1
       26 GETTABLEKS                       R9 R0 K4 ["ModerationEndDateTime"]
       28 SETLIST                          R8 R9 1 [1]
       30 CALL                             R6 2 1
       31 MOVE                             R5 R6
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R6 R6 K3 ["useMemo"]
       35 NEWCLOSURE                       R7 P1
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R3
       40 CAPTURE                          REF R5
       41 NEWTABLE                         R8 0 3
       43 MOVE                             R9 R3
       44 MOVE                             R10 R5
       45 GETTABLEKS                       R11 R1 K5 ["locale"]
       47 SETLIST                          R8 R9 3 [1]
       49 CALL                             R6 2 1
       50 GETUPVAL                         R7 2
       51 GETTABLEKS                       R7 R7 K3 ["useMemo"]
       53 NEWCLOSURE                       R8 P2
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R0
       56 NEWTABLE                         R9 0 1
       58 GETTABLEKS                       R10 R1 K5 ["locale"]
       60 SETLIST                          R9 R10 1 [1]
       62 CALL                             R7 2 1
       63 GETUPVAL                         R8 2
       64 GETTABLEKS                       R8 R8 K3 ["useMemo"]
       66 NEWCLOSURE                       R9 P3
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R0
       69 NEWTABLE                         R10 0 1
       71 GETTABLEKS                       R11 R1 K5 ["locale"]
       73 SETLIST                          R10 R11 1 [1]
       75 CALL                             R8 2 1
       76 LOADNIL                          R9
       77 GETTABLEKS                       R11 R0 K6 ["Type"]
       79 JUMPIFNOTEQKS                    R11 K7 ["Warn"] ; [+2]
       81 LOADB                            R10 0 +1
       82 LOADB                            R10 1
       83 GETUPVAL                         R11 3
       84 JUMPIFNOT                        R11 ; [+7]
       85 LOADB                            R11 0
       86 GETTABLEKS                       R12 R0 K6 ["Type"]
       88 JUMPIFEQKS                       R12 K7 ["Warn"] ; [+2]
       90 NOT                              R11 R5
       91 MOVE                             R10 R11
       92 GETUPVAL                         R12 4
       93 JUMPIFNOT                        R12 ; [+14]
       94 GETUPVAL                         R11 2
       95 GETTABLEKS                       R11 R11 K3 ["useMemo"]
       97 NEWCLOSURE                       R12 P4
       98 CAPTURE                          UPVAL U5
       99 CAPTURE                          UPVAL U6
      100 CAPTURE                          VAL R2
      101 NEWTABLE                         R13 0 1
      103 MOVE                             R14 R2
      104 SETLIST                          R13 R14 1 [1]
      106 CALL                             R11 2 1
      107 JUMP                             ; [+1]
      108 LOADNIL                          R11
      109 GETUPVAL                         R12 7
      110 DUPTABLE                         R13 K20 [{["Intent"], ["Heading"], ["Contents"], ["ActionPrimary"], ["ActionSecondary"], ["Modal"] = True, ["DisableTitleBar"], ["OnClosed"], ["Width"] = 510, ["MigrateToStudioFoundation"]}]
      111 JUMPIF                           R10 ; [+2]
      112 LOADK                            R14 K21 ["Warning"]
      113 JUMP                             ; [+1]
      114 LOADK                            R14 K22 ["Error"]
      115 SETTABLEKS                       R14 R13 K8 ["Intent"]
      117 GETUPVAL                         R14 8
      118 GETTABLEKS                       R15 R0 K6 ["Type"]
      120 CALL                             R14 1 1
      121 SETTABLEKS                       R14 R13 K9 ["Heading"]
      123 GETUPVAL                         R14 9
      124 DUPTABLE                         R15 K28 [{"ModeratorNote", "Reason", "SetChecked", "Checked", "Type", "ModerationStartDateTime", "ModerationEndDateTime"}]
      125 GETTABLEKS                       R16 R0 K23 ["ModeratorNote"]
      127 SETTABLEKS                       R16 R15 K23 ["ModeratorNote"]
      129 GETTABLEKS                       R16 R0 K24 ["Reason"]
      131 SETTABLEKS                       R16 R15 K24 ["Reason"]
      133 SETTABLEKS                       R4 R15 K25 ["SetChecked"]
      135 SETTABLEKS                       R3 R15 K26 ["Checked"]
      137 GETTABLEKS                       R16 R0 K6 ["Type"]
      139 SETTABLEKS                       R16 R15 K6 ["Type"]
      141 GETTABLEKS                       R16 R0 K27 ["ModerationStartDateTime"]
      143 SETTABLEKS                       R16 R15 K27 ["ModerationStartDateTime"]
      145 GETTABLEKS                       R16 R0 K4 ["ModerationEndDateTime"]
      147 SETTABLEKS                       R16 R15 K4 ["ModerationEndDateTime"]
      149 CALL                             R14 1 1
      150 SETTABLEKS                       R14 R13 K10 ["Contents"]
      152 JUMPIF                           R10 ; [+2]
      153 MOVE                             R14 R6
      154 JUMP                             ; [+1]
      155 MOVE                             R14 R7
      156 SETTABLEKS                       R14 R13 K11 ["ActionPrimary"]
      158 JUMPIF                           R10 ; [+2]
      159 MOVE                             R14 R7
      160 JUMP                             ; [+1]
      161 MOVE                             R14 R8
      162 SETTABLEKS                       R14 R13 K12 ["ActionSecondary"]
      164 SETTABLEKS                       R10 R13 K15 ["DisableTitleBar"]
      166 GETTABLEKS                       R14 R0 K29 ["OpenQuitDialog"]
      168 SETTABLEKS                       R14 R13 K16 ["OnClosed"]
      170 SETTABLEKS                       R11 R13 K19 ["MigrateToStudioFoundation"]
      172 CALL                             R12 1 1
      173 MOVE                             R9 R12
      174 GETUPVAL                         R12 2
      175 GETTABLEKS                       R12 R12 K30 ["useEffect"]
      177 MOVE                             R13 R9
      178 NEWTABLE                         R14 0 0
      180 CALL                             R12 2 0
      181 LOADNIL                          R12
      182 CLOSEUPVALS                      R5
      183 RETURN                           R12 1

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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETTABLEKS                       R6 R4 K12 ["Plugin"]
       34 GETTABLEKS                       R7 R2 K13 ["UI"]
       36 GETTABLEKS                       R7 R7 K14 ["Hooks"]
       38 GETTABLEKS                       R7 R7 K15 ["RESTRICTED_useDialog"]
       40 GETTABLEKS                       R8 R3 K16 ["Components"]
       42 GETTABLEKS                       R8 R8 K17 ["Dialog"]
       44 GETTABLEKS                       R9 R3 K18 ["Util"]
       46 GETTABLEKS                       R9 R9 K19 ["StudioUri"]
       48 GETIMPORT                        R10 K5 [require]
       50 GETTABLEKS                       R11 R0 K20 ["Src"]
       52 GETTABLEKS                       R11 R11 K16 ["Components"]
       54 GETTABLEKS                       R11 R11 K21 ["DialogContents"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K5 [require]
       59 GETTABLEKS                       R12 R0 K20 ["Src"]
       61 GETTABLEKS                       R12 R12 K22 ["SharedFlags"]
       63 GETTABLEKS                       R12 R12 K23 ["getFFlagStudioUserModerationV2Migration"]
       65 CALL                             R11 1 1
       66 CALL                             R11 0 1
       67 GETIMPORT                        R12 K5 [require]
       69 GETTABLEKS                       R13 R0 K20 ["Src"]
       71 GETTABLEKS                       R13 R13 K22 ["SharedFlags"]
       73 GETTABLEKS                       R13 R13 K24 ["getFFlagModerationDialogMigrateUseDialog"]
       75 CALL                             R12 1 1
       76 CALL                             R12 0 1
       77 DUPCLOSURE                       R13 K25 [PROTO_0]
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R11
       80 DUPCLOSURE                       R14 K26 [PROTO_9]
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R10
       91 RETURN                           R14 1
