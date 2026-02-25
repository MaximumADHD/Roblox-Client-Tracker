MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Collab9119_LogLinkFetchFailures"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+35]
        8 DUPTABLE                         R1 K10 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
        9 LOADK                            R2 K11 ["LinkFetchFailure"]
       10 SETTABLEKS                       R2 R1 K4 ["eventName"]
       12 NEWTABLE                         R2 0 1
       14 LOADK                            R3 K12 ["Points"]
       15 SETLIST                          R2 R3 1 [1]
       17 SETTABLEKS                       R2 R1 K5 ["backends"]
       19 GETIMPORT                        R2 K1 [game]
       21 LOADK                            R4 K13 ["LinkFetchFailuresThrottleHundrethsPercent"]
       22 NAMECALL                         R2 R2 K14 ["GetFastInt"]
       24 CALL                             R2 2 1
       25 SETTABLEKS                       R2 R1 K6 ["throttlingPercentage"]
       27 NEWTABLE                         R2 0 3
       29 LOADN                            R3 25
       30 LOADN                            R4 8
       31 LOADN                            R5 26
       32 SETLIST                          R2 R3 3 [1]
       34 SETTABLEKS                       R2 R1 K7 ["lastUpdated"]
       36 LOADK                            R2 K15 ["Reports failures when fetching Studio link requests, including:\n\t- the URL that was requested\n\t- status code (HTTP response code, or -1 for network failures)\n\t- error details (response body, decode errors, or exception messages)\n\t- the type of link being fetched (edit or teamTest)\n\t- the request method (POST)"]
       37 SETTABLEKS                       R2 R1 K8 ["description"]
       39 LOADK                            R2 K16 ["https://roblox.atlassian.net/wiki/x/DQFj3"]
       40 SETTABLEKS                       R2 R1 K9 ["links"]
       42 RETURN                           R1 1
       43 RETURN                           R0 0
