PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K8 [{[1] = "react_new_devtools_connection", ["lastUpdated"], ["description"] = "A new connection to React Devtools", ["links"] = "https://roblox.atlassian.net/wiki/spaces/luauee/pages/3836510338/DevTools+Telemetry", ["customFields"]}]
        2 NEWTABLE                         R2 0 3
        4 LOADN                            R3 2025
        5 LOADN                            R4 8
        6 LOADN                            R5 28
        7 SETLIST                          R2 R3 3 [1]
        9 SETTABLEKS                       R2 R1 K2 ["lastUpdated"]
       11 GETUPVAL                         R2 1
       12 SETTABLEKS                       R2 R1 K7 ["customFields"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K8 [{[1] = "react_failed_devtools_connection", ["lastUpdated"], ["description"] = "A failed connection to React Devtools", ["links"] = "https://roblox.atlassian.net/wiki/spaces/luauee/pages/3836510338/DevTools+Telemetry", ["customFields"]}]
        2 NEWTABLE                         R3 0 3
        4 LOADN                            R4 2025
        5 LOADN                            R5 8
        6 LOADN                            R6 28
        7 SETLIST                          R3 R4 3 [1]
        9 SETTABLEKS                       R3 R2 K2 ["lastUpdated"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K9 ["assign"]
       14 NEWTABLE                         R4 0 0
       16 GETUPVAL                         R5 2
       17 DUPTABLE                         R6 K11 [{"error_type"}]
       18 SETTABLEKS                       R0 R6 K10 ["error_type"]
       20 CALL                             R3 3 1
       21 SETTABLEKS                       R3 R2 K7 ["customFields"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Object"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K2 ["Parent"]
       20 GETTABLEKS                       R4 R4 K7 ["reportCounter"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R5 R5 K2 ["Parent"]
       29 GETTABLEKS                       R5 R5 K8 ["customFields"]
       31 CALL                             R4 1 1
       32 NEWTABLE                         R5 4 0
       34 SETTABLEKS                       R4 R5 K8 ["customFields"]
       36 DUPCLOSURE                       R6 K9 [PROTO_0]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R6 R5 K10 ["reportNewDevtoolsConnection"]
       41 DUPCLOSURE                       R7 K11 [PROTO_1]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R4
       45 SETTABLEKS                       R7 R5 K12 ["reportFailedDevtoolsConnection"]
       47 RETURN                           R5 1
