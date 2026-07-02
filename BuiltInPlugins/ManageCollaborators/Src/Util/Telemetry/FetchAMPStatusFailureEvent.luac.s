MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UpsellCollabSafety2"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+26]
        8 DUPTABLE                         R1 K13 [{["eventName"] = "FetchAMPStatusFailure", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Reports failures when fetching AMP status for Age Verification and Collaboration Setting including:\n\t- the URL that was requested\n\t- status code (HTTP response code, or -1 for network failures)\n\t- error details (response body, decode errors, or exception messages)", ["links"] = ""}]
        9 NEWTABLE                         R2 0 1
       11 LOADK                            R3 K14 ["Points"]
       12 SETLIST                          R2 R3 1 [1]
       14 SETTABLEKS                       R2 R1 K6 ["backends"]
       16 GETIMPORT                        R2 K1 [game]
       18 LOADK                            R4 K15 ["FetchAMPStatusFailureThrottleHundrethsPercent"]
       19 NAMECALL                         R2 R2 K16 ["GetFastInt"]
       21 CALL                             R2 2 1
       22 SETTABLEKS                       R2 R1 K7 ["throttlingPercentage"]
       24 NEWTABLE                         R2 0 3
       26 LOADN                            R3 11
       27 LOADN                            R4 11
       28 LOADN                            R5 25
       29 SETLIST                          R2 R3 3 [1]
       31 SETTABLEKS                       R2 R1 K8 ["lastUpdated"]
       33 RETURN                           R1 1
       34 NEWTABLE                         R1 0 0
       36 RETURN                           R1 1
