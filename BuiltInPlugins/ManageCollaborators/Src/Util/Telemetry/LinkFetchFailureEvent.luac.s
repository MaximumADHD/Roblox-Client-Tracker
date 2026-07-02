MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Collab9119_LogLinkFetchFailures"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+26]
        8 DUPTABLE                         R1 K13 [{["eventName"] = "LinkFetchFailure", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Reports failures when fetching Studio link requests, including:\n\t- the URL that was requested\n\t- status code (HTTP response code, or -1 for network failures)\n\t- error details (response body, decode errors, or exception messages)\n\t- the type of link being fetched (edit or teamTest)\n\t- the request method (POST)", ["links"] = "https://roblox.atlassian.net/wiki/x/DQFj3"}]
        9 NEWTABLE                         R2 0 1
       11 LOADK                            R3 K14 ["Points"]
       12 SETLIST                          R2 R3 1 [1]
       14 SETTABLEKS                       R2 R1 K6 ["backends"]
       16 GETIMPORT                        R2 K1 [game]
       18 LOADK                            R4 K15 ["LinkFetchFailuresThrottleHundrethsPercent"]
       19 NAMECALL                         R2 R2 K16 ["GetFastInt"]
       21 CALL                             R2 2 1
       22 SETTABLEKS                       R2 R1 K7 ["throttlingPercentage"]
       24 NEWTABLE                         R2 0 3
       26 LOADN                            R3 25
       27 LOADN                            R4 8
       28 LOADN                            R5 26
       29 SETLIST                          R2 R3 3 [1]
       31 SETTABLEKS                       R2 R1 K8 ["lastUpdated"]
       33 RETURN                           R1 1
       34 RETURN                           R0 0
