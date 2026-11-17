MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["definePathMetadata"]
        7 DUPTABLE                         R2 K8 [{["baseUrl"] = "https://gamejoin.roblox.com", ["pathPrefix"] = }]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1
