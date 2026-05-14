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
       60 LOADB                            R3 0
       61 FASTCALL1                        ASSERT R3 ; [+2]
       62 GETIMPORT                        R2 K18 [assert]
       64 CALL                             R2 1 0
       65 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnReactivate"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [table.freeze]
        2 DUPTABLE                         R1 K6 [{"Label", "Enabled", "OnActivated"}]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K7 ["Buttons"]
        5 LOADK                            R5 K8 ["Reactivate"]
        6 NAMECALL                         R2 R2 K9 ["getText"]
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K3 ["Label"]
       11 GETUPVAL                         R2 1
       12 SETTABLEKS                       R2 R1 K4 ["Enabled"]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U2
       16 SETTABLEKS                       R2 R1 K5 ["OnActivated"]
       18 CALL                             R0 1 -1
       19 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnLogout"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CloseStudioInstance"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useState"]
        7 LOADB                            R3 0
        8 CALL                             R2 1 2
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R0
       16 NEWTABLE                         R6 0 2
       18 MOVE                             R7 R2
       19 GETTABLEKS                       R8 R1 K3 ["locale"]
       21 SETLIST                          R6 R7 2 [1]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R7 0 1
       32 GETTABLEKS                       R8 R1 K3 ["locale"]
       34 SETLIST                          R7 R8 1 [1]
       36 CALL                             R5 2 1
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       40 NEWCLOSURE                       R7 P2
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R8 0 1
       45 GETTABLEKS                       R9 R1 K3 ["locale"]
       47 SETLIST                          R8 R9 1 [1]
       49 CALL                             R6 2 1
       50 LOADNIL                          R7
       51 GETUPVAL                         R8 2
       52 DUPTABLE                         R9 K13 [{"Intent", "Heading", "Contents", "ActionPrimary", "ActionSecondary", "Modal", "DisableTitleBar", "OnClosed", "Width"}]
       53 GETTABLEKS                       R11 R0 K14 ["Type"]
       55 JUMPIFNOTEQKS                    R11 K15 ["Warn"] ; [+3]
       57 LOADK                            R10 K16 ["Warning"]
       58 JUMP                             ; [+1]
       59 LOADK                            R10 K17 ["Error"]
       60 SETTABLEKS                       R10 R9 K4 ["Intent"]
       62 GETUPVAL                         R10 3
       63 GETTABLEKS                       R11 R0 K14 ["Type"]
       65 CALL                             R10 1 1
       66 SETTABLEKS                       R10 R9 K5 ["Heading"]
       68 GETUPVAL                         R10 4
       69 DUPTABLE                         R11 K24 [{"ReviewDateTime", "ModeratorNote", "Reason", "SetChecked", "Checked", "Type", "BannedDateTime"}]
       70 GETTABLEKS                       R12 R0 K18 ["ReviewDateTime"]
       72 SETTABLEKS                       R12 R11 K18 ["ReviewDateTime"]
       74 GETTABLEKS                       R12 R0 K19 ["ModeratorNote"]
       76 SETTABLEKS                       R12 R11 K19 ["ModeratorNote"]
       78 GETTABLEKS                       R12 R0 K20 ["Reason"]
       80 SETTABLEKS                       R12 R11 K20 ["Reason"]
       82 SETTABLEKS                       R3 R11 K21 ["SetChecked"]
       84 SETTABLEKS                       R2 R11 K22 ["Checked"]
       86 GETTABLEKS                       R12 R0 K14 ["Type"]
       88 SETTABLEKS                       R12 R11 K14 ["Type"]
       90 GETTABLEKS                       R12 R0 K23 ["BannedDateTime"]
       92 SETTABLEKS                       R12 R11 K23 ["BannedDateTime"]
       94 CALL                             R10 1 1
       95 SETTABLEKS                       R10 R9 K6 ["Contents"]
       97 GETTABLEKS                       R11 R0 K14 ["Type"]
       99 JUMPIFNOTEQKS                    R11 K15 ["Warn"] ; [+3]
      101 MOVE                             R10 R4
      102 JUMP                             ; [+1]
      103 MOVE                             R10 R5
      104 SETTABLEKS                       R10 R9 K7 ["ActionPrimary"]
      106 GETTABLEKS                       R11 R0 K14 ["Type"]
      108 JUMPIFNOTEQKS                    R11 K15 ["Warn"] ; [+3]
      110 MOVE                             R10 R5
      111 JUMP                             ; [+1]
      112 MOVE                             R10 R6
      113 SETTABLEKS                       R10 R9 K8 ["ActionSecondary"]
      115 LOADB                            R10 1
      116 SETTABLEKS                       R10 R9 K9 ["Modal"]
      118 GETTABLEKS                       R11 R0 K14 ["Type"]
      120 JUMPIFNOTEQKS                    R11 K15 ["Warn"] ; [+2]
      122 LOADB                            R10 0 +1
      123 LOADB                            R10 1
      124 SETTABLEKS                       R10 R9 K10 ["DisableTitleBar"]
      126 GETTABLEKS                       R10 R0 K25 ["OpenQuitDialog"]
      128 SETTABLEKS                       R10 R9 K11 ["OnClosed"]
      130 LOADN                            R10 254
      131 SETTABLEKS                       R10 R9 K12 ["Width"]
      133 CALL                             R8 1 1
      134 MOVE                             R7 R8
      135 GETUPVAL                         R8 1
      136 GETTABLEKS                       R8 R8 K26 ["useEffect"]
      138 MOVE                             R9 R7
      139 NEWTABLE                         R10 0 0
      141 CALL                             R8 2 0
      142 LOADNIL                          R8
      143 RETURN                           R8 1

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
       40 DUPCLOSURE                       R7 K17 [PROTO_0]
       41 CAPTURE                          VAL R4
       42 DUPCLOSURE                       R8 K18 [PROTO_7]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R6
       48 RETURN                           R8 1
