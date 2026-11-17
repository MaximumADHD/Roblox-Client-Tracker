MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"DataModel", "Workspace", "RunService", "HttpRbxApiService"}]
        2 GETIMPORT                        R1 K6 [game]
        4 SETTABLEKS                       R1 R0 K0 ["DataModel"]
        6 GETIMPORT                        R1 K8 [workspace]
        8 SETTABLEKS                       R1 R0 K1 ["Workspace"]
       10 GETIMPORT                        R1 K6 [game]
       12 LOADK                            R3 K2 ["RunService"]
       13 NAMECALL                         R1 R1 K9 ["GetService"]
       15 CALL                             R1 2 1
       16 SETTABLEKS                       R1 R0 K2 ["RunService"]
       18 GETIMPORT                        R1 K6 [game]
       20 LOADK                            R3 K3 ["HttpRbxApiService"]
       21 NAMECALL                         R1 R1 K9 ["GetService"]
       23 CALL                             R1 2 1
       24 SETTABLEKS                       R1 R0 K3 ["HttpRbxApiService"]
       26 RETURN                           R0 1
