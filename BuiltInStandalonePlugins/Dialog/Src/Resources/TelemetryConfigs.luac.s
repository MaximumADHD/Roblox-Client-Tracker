MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["StudioDialogShownThrottleHundredthsPercent"]
       17 LOADN                            R5 16
       18 NAMECALL                         R2 R2 K11 ["DefineFastInt"]
       20 CALL                             R2 3 1
       21 GETIMPORT                        R3 K9 [game]
       23 LOADK                            R5 K12 ["StudioDialogInteractedThrottleHundredthsPercent"]
       24 LOADN                            R6 16
       25 NAMECALL                         R3 R3 K11 ["DefineFastInt"]
       27 CALL                             R3 3 1
       28 GETIMPORT                        R4 K9 [game]
       30 LOADK                            R6 K13 ["StudioDialogDestroyedThrottleHundredthsPercent"]
       31 LOADN                            R7 16
       32 NAMECALL                         R4 R4 K11 ["DefineFastInt"]
       34 CALL                             R4 3 1
       35 NEWTABLE                         R5 4 0
       37 GETIMPORT                        R6 K16 [table.freeze]
       39 DUPTABLE                         R7 K18 [{"customFields"}]
       40 DUPTABLE                         R8 K20 [{"isFtf"}]
       41 GETTABLEKS                       R9 R1 K21 ["isFTF"]
       43 CALL                             R9 0 1
       44 SETTABLEKS                       R9 R8 K19 ["isFtf"]
       46 SETTABLEKS                       R8 R7 K17 ["customFields"]
       48 CALL                             R6 1 1
       49 SETTABLEKS                       R6 R5 K22 ["DEFAULT_METADATA"]
       51 GETIMPORT                        R6 K16 [table.freeze]
       53 DUPTABLE                         R7 K28 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description"}]
       54 LOADK                            R8 K29 ["StudioDialogShown"]
       55 SETTABLEKS                       R8 R7 K23 ["eventName"]
       57 NEWTABLE                         R8 0 2
       59 LOADK                            R9 K30 ["EventIngest"]
       60 LOADK                            R10 K31 ["Points"]
       61 SETLIST                          R8 R9 2 [1]
       63 SETTABLEKS                       R8 R7 K24 ["backends"]
       65 SETTABLEKS                       R2 R7 K25 ["throttlingPercentage"]
       67 NEWTABLE                         R8 0 3
       69 LOADN                            R9 234
       70 LOADN                            R10 2
       71 LOADN                            R11 17
       72 SETLIST                          R8 R9 3 [1]
       74 SETTABLEKS                       R8 R7 K26 ["lastUpdated"]
       76 LOADK                            R8 K32 ["Event sent when Studio DialogManager dialogs are shown"]
       77 SETTABLEKS                       R8 R7 K27 ["description"]
       79 CALL                             R6 1 1
       80 SETTABLEKS                       R6 R5 K33 ["DIALOG_SHOWN"]
       82 GETIMPORT                        R6 K16 [table.freeze]
       84 DUPTABLE                         R7 K28 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description"}]
       85 LOADK                            R8 K34 ["StudioDialogInteracted"]
       86 SETTABLEKS                       R8 R7 K23 ["eventName"]
       88 NEWTABLE                         R8 0 2
       90 LOADK                            R9 K30 ["EventIngest"]
       91 LOADK                            R10 K31 ["Points"]
       92 SETLIST                          R8 R9 2 [1]
       94 SETTABLEKS                       R8 R7 K24 ["backends"]
       96 SETTABLEKS                       R3 R7 K25 ["throttlingPercentage"]
       98 NEWTABLE                         R8 0 3
      100 LOADN                            R9 234
      101 LOADN                            R10 2
      102 LOADN                            R11 17
      103 SETLIST                          R8 R9 3 [1]
      105 SETTABLEKS                       R8 R7 K26 ["lastUpdated"]
      107 LOADK                            R8 K35 ["Event sent when Studio DialogManager dialogs are interacted with by the user"]
      108 SETTABLEKS                       R8 R7 K27 ["description"]
      110 CALL                             R6 1 1
      111 SETTABLEKS                       R6 R5 K36 ["DIALOG_INTERACTED"]
      113 GETIMPORT                        R6 K16 [table.freeze]
      115 DUPTABLE                         R7 K28 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description"}]
      116 LOADK                            R8 K37 ["StudioDialogDestroyed"]
      117 SETTABLEKS                       R8 R7 K23 ["eventName"]
      119 NEWTABLE                         R8 0 2
      121 LOADK                            R9 K30 ["EventIngest"]
      122 LOADK                            R10 K31 ["Points"]
      123 SETLIST                          R8 R9 2 [1]
      125 SETTABLEKS                       R8 R7 K24 ["backends"]
      127 SETTABLEKS                       R4 R7 K25 ["throttlingPercentage"]
      129 NEWTABLE                         R8 0 3
      131 LOADN                            R9 234
      132 LOADN                            R10 2
      133 LOADN                            R11 17
      134 SETLIST                          R8 R9 3 [1]
      136 SETTABLEKS                       R8 R7 K26 ["lastUpdated"]
      138 LOADK                            R8 K38 ["Event sent when Studio DialogManager dialogs are torn down"]
      139 SETTABLEKS                       R8 R7 K27 ["description"]
      141 CALL                             R6 1 1
      142 SETTABLEKS                       R6 R5 K39 ["DIALOG_DESTROYED"]
      144 GETIMPORT                        R6 K16 [table.freeze]
      146 MOVE                             R7 R5
      147 CALL                             R6 1 -1
      148 RETURN                           R6 -1
