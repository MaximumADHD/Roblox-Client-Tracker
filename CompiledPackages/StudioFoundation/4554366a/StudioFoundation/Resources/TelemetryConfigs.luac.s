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
       10 GETIMPORT                        R3 K6 [pcall]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          REF R2
       15 CALL                             R3 1 0
       16 GETIMPORT                        R3 K8 [game]
       18 LOADK                            R5 K9 ["StudioDialogShownThrottleHundredthsPercent"]
       19 LOADN                            R6 10000
       20 NAMECALL                         R3 R3 K10 ["DefineFastInt"]
       22 CALL                             R3 3 1
       23 GETIMPORT                        R4 K8 [game]
       25 LOADK                            R6 K11 ["StudioDialogInteractedThrottleHundredthsPercent"]
       26 LOADN                            R7 10000
       27 NAMECALL                         R4 R4 K10 ["DefineFastInt"]
       29 CALL                             R4 3 1
       30 GETIMPORT                        R5 K8 [game]
       32 LOADK                            R7 K12 ["StudioDialogDestroyedThrottleHundredthsPercent"]
       33 LOADN                            R8 10000
       34 NAMECALL                         R5 R5 K10 ["DefineFastInt"]
       36 CALL                             R5 3 1
       37 NEWTABLE                         R6 4 0
       39 GETIMPORT                        R7 K15 [table.freeze]
       41 DUPTABLE                         R8 K17 [{"customFields"}]
       42 DUPTABLE                         R9 K19 [{"isFtf"}]
       43 SETTABLEKS                       R2 R9 K18 ["isFtf"]
       45 SETTABLEKS                       R9 R8 K16 ["customFields"]
       47 CALL                             R7 1 1
       48 SETTABLEKS                       R7 R6 K20 ["DEFAULT_METADATA"]
       50 GETIMPORT                        R7 K15 [table.freeze]
       52 DUPTABLE                         R8 K28 [{["eventName"] = "StudioDialogShown", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Event sent when dialogs are shown in Studio"}]
       53 NEWTABLE                         R9 0 2
       55 LOADK                            R10 K29 ["EventIngest"]
       56 LOADK                            R11 K30 ["Points"]
       57 SETLIST                          R9 R10 2 [1]
       59 SETTABLEKS                       R9 R8 K23 ["backends"]
       61 SETTABLEKS                       R3 R8 K24 ["throttlingPercentage"]
       63 NEWTABLE                         R9 0 3
       65 LOADN                            R10 2026
       66 LOADN                            R11 2
       67 LOADN                            R12 17
       68 SETLIST                          R9 R10 3 [1]
       70 SETTABLEKS                       R9 R8 K25 ["lastUpdated"]
       72 CALL                             R7 1 1
       73 SETTABLEKS                       R7 R6 K31 ["DIALOG_SHOWN"]
       75 GETIMPORT                        R7 K15 [table.freeze]
       77 DUPTABLE                         R8 K34 [{["eventName"] = "StudioDialogInteracted", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Event sent when Studio dialogs are interacted with by the user"}]
       78 NEWTABLE                         R9 0 2
       80 LOADK                            R10 K29 ["EventIngest"]
       81 LOADK                            R11 K30 ["Points"]
       82 SETLIST                          R9 R10 2 [1]
       84 SETTABLEKS                       R9 R8 K23 ["backends"]
       86 SETTABLEKS                       R4 R8 K24 ["throttlingPercentage"]
       88 NEWTABLE                         R9 0 3
       90 LOADN                            R10 2026
       91 LOADN                            R11 2
       92 LOADN                            R12 17
       93 SETLIST                          R9 R10 3 [1]
       95 SETTABLEKS                       R9 R8 K25 ["lastUpdated"]
       97 CALL                             R7 1 1
       98 SETTABLEKS                       R7 R6 K35 ["DIALOG_INTERACTED"]
      100 GETIMPORT                        R7 K15 [table.freeze]
      102 DUPTABLE                         R8 K38 [{["eventName"] = "StudioDialogDestroyed", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Event sent when Studio dialogs are torn down"}]
      103 NEWTABLE                         R9 0 2
      105 LOADK                            R10 K29 ["EventIngest"]
      106 LOADK                            R11 K30 ["Points"]
      107 SETLIST                          R9 R10 2 [1]
      109 SETTABLEKS                       R9 R8 K23 ["backends"]
      111 SETTABLEKS                       R5 R8 K24 ["throttlingPercentage"]
      113 NEWTABLE                         R9 0 3
      115 LOADN                            R10 2026
      116 LOADN                            R11 2
      117 LOADN                            R12 17
      118 SETLIST                          R9 R10 3 [1]
      120 SETTABLEKS                       R9 R8 K25 ["lastUpdated"]
      122 CALL                             R7 1 1
      123 SETTABLEKS                       R7 R6 K39 ["DIALOG_DESTROYED"]
      125 GETIMPORT                        R7 K15 [table.freeze]
      127 MOVE                             R8 R6
      128 CALL                             R7 1 -1
      129 CLOSEUPVALS                      R2
      130 RETURN                           R7 -1
