PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["TestLoader"]
        5 CALL                             R0 1 1
        6 GETTABLEKS                       R1 R0 K3 ["isFTF"]
        8 CALL                             R1 0 1
        9 SETUPVAL                         R1 1
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 LOADB                            R2 0
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          REF R2
       13 FASTPCALL                        pcall 1 ; [+2]
       14 GETIMPORT                        R3 K6 [pcall]
       16 CALL                             R3 1 0
       17 GETIMPORT                        R3 K8 [game]
       19 LOADK                            R5 K9 ["StudioDialogShownThrottleHundredthsPercent"]
       20 LOADN                            R6 10000
       21 NAMECALL                         R3 R3 K10 ["DefineFastInt"]
       23 CALL                             R3 3 1
       24 GETIMPORT                        R4 K8 [game]
       26 LOADK                            R6 K11 ["StudioDialogInteractedThrottleHundredthsPercent"]
       27 LOADN                            R7 10000
       28 NAMECALL                         R4 R4 K10 ["DefineFastInt"]
       30 CALL                             R4 3 1
       31 GETIMPORT                        R5 K8 [game]
       33 LOADK                            R7 K12 ["StudioDialogDestroyedThrottleHundredthsPercent"]
       34 LOADN                            R8 10000
       35 NAMECALL                         R5 R5 K10 ["DefineFastInt"]
       37 CALL                             R5 3 1
       38 NEWTABLE                         R6 4 0
       40 GETIMPORT                        R7 K15 [table.freeze]
       42 DUPTABLE                         R8 K17 [{"customFields"}]
       43 DUPTABLE                         R9 K19 [{"isFtf"}]
       44 SETTABLEKS                       R2 R9 K18 ["isFtf"]
       46 SETTABLEKS                       R9 R8 K16 ["customFields"]
       48 CALL                             R7 1 1
       49 SETTABLEKS                       R7 R6 K20 ["DEFAULT_METADATA"]
       51 GETIMPORT                        R7 K15 [table.freeze]
       53 DUPTABLE                         R8 K28 [{["eventName"] = "StudioDialogShown", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Event sent when dialogs are shown in Studio"}]
       54 NEWTABLE                         R9 0 2
       56 LOADK                            R10 K29 ["EventIngest"]
       57 LOADK                            R11 K30 ["Points"]
       58 SETLIST                          R9 R10 2 [1]
       60 SETTABLEKS                       R9 R8 K23 ["backends"]
       62 SETTABLEKS                       R3 R8 K24 ["throttlingPercentage"]
       64 NEWTABLE                         R9 0 3
       66 LOADN                            R10 2026
       67 LOADN                            R11 2
       68 LOADN                            R12 17
       69 SETLIST                          R9 R10 3 [1]
       71 SETTABLEKS                       R9 R8 K25 ["lastUpdated"]
       73 CALL                             R7 1 1
       74 SETTABLEKS                       R7 R6 K31 ["DIALOG_SHOWN"]
       76 GETIMPORT                        R7 K15 [table.freeze]
       78 DUPTABLE                         R8 K34 [{["eventName"] = "StudioDialogInteracted", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Event sent when Studio dialogs are interacted with by the user"}]
       79 NEWTABLE                         R9 0 2
       81 LOADK                            R10 K29 ["EventIngest"]
       82 LOADK                            R11 K30 ["Points"]
       83 SETLIST                          R9 R10 2 [1]
       85 SETTABLEKS                       R9 R8 K23 ["backends"]
       87 SETTABLEKS                       R4 R8 K24 ["throttlingPercentage"]
       89 NEWTABLE                         R9 0 3
       91 LOADN                            R10 2026
       92 LOADN                            R11 2
       93 LOADN                            R12 17
       94 SETLIST                          R9 R10 3 [1]
       96 SETTABLEKS                       R9 R8 K25 ["lastUpdated"]
       98 CALL                             R7 1 1
       99 SETTABLEKS                       R7 R6 K35 ["DIALOG_INTERACTED"]
      101 GETIMPORT                        R7 K15 [table.freeze]
      103 DUPTABLE                         R8 K38 [{["eventName"] = "StudioDialogDestroyed", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Event sent when Studio dialogs are torn down"}]
      104 NEWTABLE                         R9 0 2
      106 LOADK                            R10 K29 ["EventIngest"]
      107 LOADK                            R11 K30 ["Points"]
      108 SETLIST                          R9 R10 2 [1]
      110 SETTABLEKS                       R9 R8 K23 ["backends"]
      112 SETTABLEKS                       R5 R8 K24 ["throttlingPercentage"]
      114 NEWTABLE                         R9 0 3
      116 LOADN                            R10 2026
      117 LOADN                            R11 2
      118 LOADN                            R12 17
      119 SETLIST                          R9 R10 3 [1]
      121 SETTABLEKS                       R9 R8 K25 ["lastUpdated"]
      123 CALL                             R7 1 1
      124 SETTABLEKS                       R7 R6 K39 ["DIALOG_DESTROYED"]
      126 GETIMPORT                        R7 K15 [table.freeze]
      128 MOVE                             R8 R6
      129 CALL                             R7 1 -1
      130 CLOSEUPVALS                      R2
      131 RETURN                           R7 -1
