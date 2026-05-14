PROTO_0:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Error setting universe data sharing configuration"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 LOADNIL                          R1
        6 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K3 [{"Url", "Method", "Body"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K4 ["BuildRobloxUrl"]
        4 LOADK                            R3 K5 ["apis"]
        5 LOADK                            R4 K6 ["resource-settings/v1/universes"]
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R1 K0 ["Url"]
        9 LOADK                            R2 K7 ["POST"]
       10 SETTABLEKS                       R2 R1 K1 ["Method"]
       12 GETUPVAL                         R2 1
       13 DUPTABLE                         R4 K9 [{"configurations"}]
       14 NEWTABLE                         R5 0 1
       16 DUPTABLE                         R6 K12 [{"universeId", "dataSharingLicenseTypes"}]
       17 SETTABLEKS                       R0 R6 K10 ["universeId"]
       19 NEWTABLE                         R7 0 1
       21 LOADK                            R8 K13 ["RobloxGlobal"]
       22 SETLIST                          R7 R8 1 [1]
       24 SETTABLEKS                       R7 R6 K11 ["dataSharingLicenseTypes"]
       26 SETLIST                          R5 R6 1 [1]
       28 SETTABLEKS                       R5 R4 K8 ["configurations"]
       30 NAMECALL                         R2 R2 K14 ["JSONEncode"]
       32 CALL                             R2 2 1
       33 SETTABLEKS                       R2 R1 K2 ["Body"]
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R2 R2 K15 ["Request"]
       38 MOVE                             R3 R1
       39 CALL                             R2 1 1
       40 DUPCLOSURE                       R4 K16 [PROTO_0]
       41 NAMECALL                         R2 R2 K17 ["catch"]
       43 CALL                             R2 2 -1
       44 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R1 K9 ["Src"]
       21 GETTABLEKS                       R3 R3 K10 ["Network"]
       23 GETTABLEKS                       R3 R3 K11 ["Http"]
       25 CALL                             R2 1 1
       26 DUPCLOSURE                       R3 K12 [PROTO_1]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R0
       29 RETURN                           R3 1
