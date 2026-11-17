MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETTABLEKS                       R2 R1 K4 ["object"]
        9 DUPTABLE                         R3 K8 [{"ClientIpAddress", "PlatformTypeId", "PolicyCountryId"}]
       10 GETTABLEKS                       R4 R1 K9 ["String"]
       12 SETTABLEKS                       R4 R3 K5 ["ClientIpAddress"]
       14 GETTABLEKS                       R4 R1 K10 ["Int32"]
       16 SETTABLEKS                       R4 R3 K6 ["PlatformTypeId"]
       18 GETTABLEKS                       R4 R1 K10 ["Int32"]
       20 SETTABLEKS                       R4 R3 K7 ["PolicyCountryId"]
       22 CALL                             R2 1 -1
       23 RETURN                           R2 -1
