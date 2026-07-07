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
       17 LOADN                            R5 10000
       18 NAMECALL                         R2 R2 K9 ["DefineFastInt"]
       20 CALL                             R2 3 1
       21 GETIMPORT                        R3 K7 [game]
       23 LOADK                            R5 K10 ["StudioDialogInteractedThrottleHundredthsPercent"]
       24 LOADN                            R6 10000
       25 NAMECALL                         R3 R3 K9 ["DefineFastInt"]
       27 CALL                             R3 3 1
       28 GETIMPORT                        R4 K7 [game]
       30 LOADK                            R6 K11 ["StudioDialogDestroyedThrottleHundredthsPercent"]
       31 LOADN                            R7 10000
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
       50 DUPTABLE                         R7 K27 [{["eventName"] = "StudioDialogShown", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Event sent when Studio DialogManager dialogs are shown"}]
       51 NEWTABLE                         R8 0 2
       53 LOADK                            R9 K28 ["EventIngest"]
       54 LOADK                            R10 K29 ["Points"]
       55 SETLIST                          R8 R9 2 [1]
       57 SETTABLEKS                       R8 R7 K22 ["backends"]
       59 SETTABLEKS                       R2 R7 K23 ["throttlingPercentage"]
       61 NEWTABLE                         R8 0 3
       63 LOADN                            R9 2026
       64 LOADN                            R10 2
       65 LOADN                            R11 17
       66 SETLIST                          R8 R9 3 [1]
       68 SETTABLEKS                       R8 R7 K24 ["lastUpdated"]
       70 CALL                             R6 1 1
       71 SETTABLEKS                       R6 R5 K30 ["DIALOG_SHOWN"]
       73 GETIMPORT                        R6 K14 [table.freeze]
       75 DUPTABLE                         R7 K33 [{["eventName"] = "StudioDialogInteracted", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Event sent when Studio DialogManager dialogs are interacted with by the user"}]
       76 NEWTABLE                         R8 0 2
       78 LOADK                            R9 K28 ["EventIngest"]
       79 LOADK                            R10 K29 ["Points"]
       80 SETLIST                          R8 R9 2 [1]
       82 SETTABLEKS                       R8 R7 K22 ["backends"]
       84 SETTABLEKS                       R3 R7 K23 ["throttlingPercentage"]
       86 NEWTABLE                         R8 0 3
       88 LOADN                            R9 2026
       89 LOADN                            R10 2
       90 LOADN                            R11 17
       91 SETLIST                          R8 R9 3 [1]
       93 SETTABLEKS                       R8 R7 K24 ["lastUpdated"]
       95 CALL                             R6 1 1
       96 SETTABLEKS                       R6 R5 K34 ["DIALOG_INTERACTED"]
       98 GETIMPORT                        R6 K14 [table.freeze]
      100 DUPTABLE                         R7 K37 [{["eventName"] = "StudioDialogDestroyed", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Event sent when Studio DialogManager dialogs are torn down"}]
      101 NEWTABLE                         R8 0 2
      103 LOADK                            R9 K28 ["EventIngest"]
      104 LOADK                            R10 K29 ["Points"]
      105 SETLIST                          R8 R9 2 [1]
      107 SETTABLEKS                       R8 R7 K22 ["backends"]
      109 SETTABLEKS                       R4 R7 K23 ["throttlingPercentage"]
      111 NEWTABLE                         R8 0 3
      113 LOADN                            R9 2026
      114 LOADN                            R10 2
      115 LOADN                            R11 17
      116 SETLIST                          R8 R9 3 [1]
      118 SETTABLEKS                       R8 R7 K24 ["lastUpdated"]
      120 CALL                             R6 1 1
      121 SETTABLEKS                       R6 R5 K38 ["DIALOG_DESTROYED"]
      123 GETIMPORT                        R6 K14 [table.freeze]
      125 MOVE                             R7 R5
      126 CALL                             R6 1 -1
      127 CLOSEUPVALS                      R1
      128 RETURN                           R6 -1
