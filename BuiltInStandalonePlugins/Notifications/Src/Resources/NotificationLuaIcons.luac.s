MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R5 R0 K5 ["Src"]
       13 GETTABLEKS                       R4 R5 K6 ["Util"]
       15 GETTABLEKS                       R3 R4 K7 ["SharedFlags"]
       17 GETTABLEKS                       R2 R3 K8 ["getFFlagNotificationEventVideoIcons"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R6 R0 K5 ["Src"]
       24 GETTABLEKS                       R5 R6 K6 ["Util"]
       26 GETTABLEKS                       R4 R5 K7 ["SharedFlags"]
       28 GETTABLEKS                       R3 R4 K9 ["getFFlagNotificationPersonAddIcons"]
       30 CALL                             R2 1 1
       31 NEWTABLE                         R3 0 21
       33 LOADK                            R4 K10 ["CampaignFilledNeutral"]
       34 LOADK                            R5 K11 ["CheckFilledPositive"]
       35 LOADK                            R6 K12 ["CreateFilledEmphasis"]
       36 LOADK                            R7 K13 ["CreateFilledNeutral"]
       37 LOADK                            R8 K14 ["CreateFilledWarning"]
       38 LOADK                            R9 K15 ["EditOffFilledNegative"]
       39 LOADK                            R10 K16 ["ErrorFilledError"]
       40 LOADK                            R11 K17 ["HappyFilledNeutral"]
       41 LOADK                            R12 K18 ["NotificationBell"]
       42 LOADK                            R13 K19 ["NotificationSettings"]
       43 LOADK                            R14 K20 ["PlayArrowFilledEmphasis"]
       44 LOADK                            R15 K21 ["PlayArrowFilledNeutral"]
       45 LOADK                            R16 K22 ["PlayArrowFilledWarning"]
       46 LOADK                            R17 K23 ["PlayDisabledFilledNegative"]
       47 LOADK                            R18 K24 ["ThreeDots"]
       48 LOADK                            R19 K25 ["TranslateFilledNeutral"]
       49 SETLIST                          R3 R4 16 [1]
       51 LOADK                            R4 K26 ["UpdateFilledEmphasis"]
       52 LOADK                            R5 K27 ["UpdateFilledNegative"]
       53 LOADK                            R6 K28 ["UpdateFilledPositive"]
       54 LOADK                            R7 K29 ["UpdateFilledWarning"]
       55 LOADK                            R8 K30 ["WarningFilledWarning"]
       56 SETLIST                          R3 R4 5 [17]
       58 MOVE                             R4 R1
       59 CALL                             R4 0 1
       60 JUMPIFNOT                        R4 ; [+21]
       61 FASTCALL2K                       TABLE_INSERT R3 K31 ; [+5]
       63 MOVE                             R5 R3
       64 LOADK                            R6 K31 ["EventFilledNeutral"]
       65 GETIMPORT                        R4 K34 [table.insert]
       67 CALL                             R4 2 0
       68 FASTCALL2K                       TABLE_INSERT R3 K35 ; [+5]
       70 MOVE                             R5 R3
       71 LOADK                            R6 K35 ["VideoCamFilledEmphasis"]
       72 GETIMPORT                        R4 K34 [table.insert]
       74 CALL                             R4 2 0
       75 FASTCALL2K                       TABLE_INSERT R3 K36 ; [+5]
       77 MOVE                             R5 R3
       78 LOADK                            R6 K36 ["VideoCamFilledNeutral"]
       79 GETIMPORT                        R4 K34 [table.insert]
       81 CALL                             R4 2 0
       82 MOVE                             R4 R2
       83 CALL                             R4 0 1
       84 JUMPIFNOT                        R4 ; [+7]
       85 FASTCALL2K                       TABLE_INSERT R3 K37 ; [+5]
       87 MOVE                             R5 R3
       88 LOADK                            R6 K37 ["PersonAddNeutral"]
       89 GETIMPORT                        R4 K34 [table.insert]
       91 CALL                             R4 2 0
       92 RETURN                           R3 1
