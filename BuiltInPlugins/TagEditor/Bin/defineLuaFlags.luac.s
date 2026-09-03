MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ReportTagEditorEventsThrottleHundrethsPercent2"]
        4 LOADN                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["TagEditorExternalUpdate"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K5 ["DefineFastFlag"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K6 ["TagEditorShowTextSeparately"]
       18 LOADB                            R3 0
       19 NAMECALL                         R0 R0 K5 ["DefineFastFlag"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K7 ["TagEditorVersionedUris"]
       25 LOADB                            R3 0
       26 NAMECALL                         R0 R0 K5 ["DefineFastFlag"]
       28 CALL                             R0 3 0
       29 LOADNIL                          R0
       30 RETURN                           R0 1
