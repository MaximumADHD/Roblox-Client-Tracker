PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Packages"]
        5 GETTABLEKS                       R1 R1 K3 ["TestLoader"]
        7 CALL                             R0 1 1
        8 GETTABLEKS                       R1 R0 K4 ["isFTF"]
       10 CALL                             R1 0 1
       11 SETUPVAL                         R1 1
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADB                            R1 0
        8 GETIMPORT                        R2 K5 [pcall]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          REF R1
       13 CALL                             R2 1 0
       14 GETIMPORT                        R2 K7 [game]
       16 LOADK                            R4 K8 ["StudioDialogShownThrottleHundredthsPercent"]
       17 LOADN                            R5 16
       18 NAMECALL                         R2 R2 K9 ["DefineFastInt"]
       20 CALL                             R2 3 1
       21 GETIMPORT                        R3 K7 [game]
       23 LOADK                            R5 K10 ["StudioDialogInteractedThrottleHundredthsPercent"]
       24 LOADN                            R6 16
       25 NAMECALL                         R3 R3 K9 ["DefineFastInt"]
       27 CALL                             R3 3 1
       28 GETIMPORT                        R4 K7 [game]
       30 LOADK                            R6 K11 ["StudioDialogDestroyedThrottleHundredthsPercent"]
       31 LOADN                            R7 16
       32 NAMECALL                         R4 R4 K9 ["DefineFastInt"]
       34 CALL                             R4 3 1
       35 NEWTABLE                         R5 4 0
       37 GETIMPORT                        R6 K14 [table.freeze]
       39 DUPTABLE                         R7 K16 [{"customFields"}]
       40 DUPTABLE                         R8 K18 [{"isFtf"}]
       41 SETTABLEKS                       R1 R8 K17 ["isFtf"]
       43 SETTABLEKS                       R8 R7 K15 ["customFields"]
       45 CALL                             R6 1 1
       46 SETTABLEKS                       R6 R5 K19 ["DEFAULT_METADATA"]
       48 GETIMPORT                        R6 K14 [table.freeze]
       50 DUPTABLE                         R7 K25 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description"}]
       51 LOADK                            R8 K26 ["StudioDialogShown"]
       52 SETTABLEKS                       R8 R7 K20 ["eventName"]
       54 NEWTABLE                         R8 0 2
       56 LOADK                            R9 K27 ["EventIngest"]
       57 LOADK                            R10 K28 ["Points"]
       58 SETLIST                          R8 R9 2 [1]
       60 SETTABLEKS                       R8 R7 K21 ["backends"]
       62 SETTABLEKS                       R2 R7 K22 ["throttlingPercentage"]
       64 NEWTABLE                         R8 0 3
       66 LOADN                            R9 234
       67 LOADN                            R10 2
       68 LOADN                            R11 17
       69 SETLIST                          R8 R9 3 [1]
       71 SETTABLEKS                       R8 R7 K23 ["lastUpdated"]
       73 LOADK                            R8 K29 ["Event sent when Studio DialogManager dialogs are shown"]
       74 SETTABLEKS                       R8 R7 K24 ["description"]
       76 CALL                             R6 1 1
       77 SETTABLEKS                       R6 R5 K30 ["DIALOG_SHOWN"]
       79 GETIMPORT                        R6 K14 [table.freeze]
       81 DUPTABLE                         R7 K25 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description"}]
       82 LOADK                            R8 K31 ["StudioDialogInteracted"]
       83 SETTABLEKS                       R8 R7 K20 ["eventName"]
       85 NEWTABLE                         R8 0 2
       87 LOADK                            R9 K27 ["EventIngest"]
       88 LOADK                            R10 K28 ["Points"]
       89 SETLIST                          R8 R9 2 [1]
       91 SETTABLEKS                       R8 R7 K21 ["backends"]
       93 SETTABLEKS                       R3 R7 K22 ["throttlingPercentage"]
       95 NEWTABLE                         R8 0 3
       97 LOADN                            R9 234
       98 LOADN                            R10 2
       99 LOADN                            R11 17
      100 SETLIST                          R8 R9 3 [1]
      102 SETTABLEKS                       R8 R7 K23 ["lastUpdated"]
      104 LOADK                            R8 K32 ["Event sent when Studio DialogManager dialogs are interacted with by the user"]
      105 SETTABLEKS                       R8 R7 K24 ["description"]
      107 CALL                             R6 1 1
      108 SETTABLEKS                       R6 R5 K33 ["DIALOG_INTERACTED"]
      110 GETIMPORT                        R6 K14 [table.freeze]
      112 DUPTABLE                         R7 K25 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description"}]
      113 LOADK                            R8 K34 ["StudioDialogDestroyed"]
      114 SETTABLEKS                       R8 R7 K20 ["eventName"]
      116 NEWTABLE                         R8 0 2
      118 LOADK                            R9 K27 ["EventIngest"]
      119 LOADK                            R10 K28 ["Points"]
      120 SETLIST                          R8 R9 2 [1]
      122 SETTABLEKS                       R8 R7 K21 ["backends"]
      124 SETTABLEKS                       R4 R7 K22 ["throttlingPercentage"]
      126 NEWTABLE                         R8 0 3
      128 LOADN                            R9 234
      129 LOADN                            R10 2
      130 LOADN                            R11 17
      131 SETLIST                          R8 R9 3 [1]
      133 SETTABLEKS                       R8 R7 K23 ["lastUpdated"]
      135 LOADK                            R8 K35 ["Event sent when Studio DialogManager dialogs are torn down"]
      136 SETTABLEKS                       R8 R7 K24 ["description"]
      138 CALL                             R6 1 1
      139 SETTABLEKS                       R6 R5 K36 ["DIALOG_DESTROYED"]
      141 GETIMPORT                        R6 K14 [table.freeze]
      143 MOVE                             R7 R5
      144 CALL                             R6 1 -1
      145 CLOSEUPVALS                      R1
      146 RETURN                           R6 -1
