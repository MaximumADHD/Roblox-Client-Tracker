PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["responseCode"]
        4 SETTABLEKS                       R2 R1 K0 ["responseCode"]
        6 GETTABLEKS                       R2 R0 K1 ["responseBody"]
        8 JUMPIFNOT                        R2 ; [+8]
        9 GETTABLEKS                       R2 R0 K0 ["responseCode"]
       11 JUMPIFEQKN                       R2 K2 [200] ; [+5]
       13 GETTABLEKS                       R2 R0 K1 ["responseBody"]
       15 SETTABLEKS                       R2 R1 K1 ["responseBody"]
       17 GETTABLEKS                       R2 R0 K3 ["responseTimeMs"]
       19 JUMPIFNOT                        R2 ; [+4]
       20 GETTABLEKS                       R2 R0 K3 ["responseTimeMs"]
       22 SETTABLEKS                       R2 R1 K3 ["responseTimeMs"]
       24 GETTABLEKS                       R2 R0 K4 ["url"]
       26 JUMPIFNOT                        R2 ; [+4]
       27 GETTABLEKS                       R2 R0 K4 ["url"]
       29 SETTABLEKS                       R2 R1 K4 ["url"]
       31 GETTABLEKS                       R2 R0 K5 ["Method"]
       33 JUMPIFNOT                        R2 ; [+4]
       34 GETTABLEKS                       R2 R0 K5 ["Method"]
       36 SETTABLEKS                       R2 R1 K6 ["requestType"]
       38 GETTABLEKS                       R2 R0 K6 ["requestType"]
       40 JUMPIFNOT                        R2 ; [+4]
       41 GETTABLEKS                       R2 R0 K6 ["requestType"]
       43 SETTABLEKS                       R2 R1 K6 ["requestType"]
       45 GETUPVAL                         R2 0
       46 LOADK                            R4 K7 ["StudioPackagesEndpointsStatus"]
       47 MOVE                             R5 R1
       48 GETUPVAL                         R6 1
       49 NAMECALL                         R2 R2 K8 ["reportInfluxSeries"]
       51 CALL                             R2 4 0
       52 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+16]
        3 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        5 GETTABLEKS                       R1 R2 K1 ["ErrorMessage"]
        7 JUMPIFNOT                        R1 ; [+11]
        8 GETTABLEKS                       R2 R0 K0 ["responseBody"]
       10 GETTABLEKS                       R1 R2 K1 ["ErrorMessage"]
       12 SETTABLEKS                       R1 R0 K0 ["responseBody"]
       14 GETTABLEKS                       R1 R0 K0 ["responseBody"]
       16 LOADNIL                          R2
       17 SETTABLEKS                       R2 R1 K1 ["ErrorMessage"]
       19 GETTABLEKS                       R1 R0 K2 ["requestOptions"]
       21 JUMPIFNOT                        R1 ; [+48]
       22 GETTABLEKS                       R2 R0 K2 ["requestOptions"]
       24 GETTABLEKS                       R1 R2 K3 ["Url"]
       26 JUMPIFNOT                        R1 ; [+11]
       27 GETTABLEKS                       R2 R0 K2 ["requestOptions"]
       29 GETTABLEKS                       R1 R2 K3 ["Url"]
       31 SETTABLEKS                       R1 R0 K4 ["url"]
       33 GETTABLEKS                       R1 R0 K2 ["requestOptions"]
       35 LOADNIL                          R2
       36 SETTABLEKS                       R2 R1 K4 ["url"]
       38 GETTABLEKS                       R2 R0 K2 ["requestOptions"]
       40 GETTABLEKS                       R1 R2 K4 ["url"]
       42 JUMPIFNOT                        R1 ; [+11]
       43 GETTABLEKS                       R2 R0 K2 ["requestOptions"]
       45 GETTABLEKS                       R1 R2 K4 ["url"]
       47 SETTABLEKS                       R1 R0 K4 ["url"]
       49 GETTABLEKS                       R1 R0 K2 ["requestOptions"]
       51 LOADNIL                          R2
       52 SETTABLEKS                       R2 R1 K4 ["url"]
       54 GETTABLEKS                       R2 R0 K2 ["requestOptions"]
       56 GETTABLEKS                       R1 R2 K5 ["Method"]
       58 JUMPIFNOT                        R1 ; [+11]
       59 GETTABLEKS                       R2 R0 K2 ["requestOptions"]
       61 GETTABLEKS                       R1 R2 K5 ["Method"]
       63 SETTABLEKS                       R1 R0 K6 ["requestType"]
       65 GETTABLEKS                       R1 R0 K2 ["requestOptions"]
       67 LOADNIL                          R2
       68 SETTABLEKS                       R2 R1 K5 ["Method"]
       70 GETTABLEKS                       R2 R0 K4 ["url"]
       72 GETTABLEKS                       R1 R2 K3 ["Url"]
       74 JUMPIFNOT                        R1 ; [+6]
       75 GETTABLEKS                       R2 R0 K4 ["url"]
       77 GETTABLEKS                       R1 R2 K3 ["Url"]
       79 SETTABLEKS                       R1 R0 K4 ["url"]
       81 GETUPVAL                         R1 0
       82 MOVE                             R2 R0
       83 CALL                             R1 1 0
       84 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RbxAnalyticsService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["InfluxReportingPackageAnalyticsHundrethsPercent"]
       10 NAMECALL                         R1 R1 K5 ["GetFastInt"]
       12 CALL                             R1 2 1
       13 DUPCLOSURE                       R2 K6 [PROTO_0]
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 DUPCLOSURE                       R3 K7 [PROTO_1]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
