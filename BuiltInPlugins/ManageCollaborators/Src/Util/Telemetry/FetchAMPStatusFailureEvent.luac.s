MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UpsellCollabSafety2"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+35]
        8 DUPTABLE                         R1 K10 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
        9 LOADK                            R2 K11 ["FetchAMPStatusFailure"]
       10 SETTABLEKS                       R2 R1 K4 ["eventName"]
       12 NEWTABLE                         R2 0 1
       14 LOADK                            R3 K12 ["Points"]
       15 SETLIST                          R2 R3 1 [1]
       17 SETTABLEKS                       R2 R1 K5 ["backends"]
       19 GETIMPORT                        R2 K1 [game]
       21 LOADK                            R4 K13 ["FetchAMPStatusFailureThrottleHundrethsPercent"]
       22 NAMECALL                         R2 R2 K14 ["GetFastInt"]
       24 CALL                             R2 2 1
       25 SETTABLEKS                       R2 R1 K6 ["throttlingPercentage"]
       27 NEWTABLE                         R2 0 3
       29 LOADN                            R3 11
       30 LOADN                            R4 11
       31 LOADN                            R5 25
       32 SETLIST                          R2 R3 3 [1]
       34 SETTABLEKS                       R2 R1 K7 ["lastUpdated"]
       36 LOADK                            R2 K15 ["Reports failures when fetching AMP status for Age Verification and Collaboration Setting including:\n\t- the URL that was requested\n\t- status code (HTTP response code, or -1 for network failures)\n\t- error details (response body, decode errors, or exception messages)"]
       37 SETTABLEKS                       R2 R1 K8 ["description"]
       39 LOADK                            R2 K16 [""]
       40 SETTABLEKS                       R2 R1 K9 ["links"]
       42 RETURN                           R1 1
       43 NEWTABLE                         R1 0 0
       45 RETURN                           R1 1
