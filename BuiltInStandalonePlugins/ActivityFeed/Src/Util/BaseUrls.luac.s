PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ContentProvider"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETTABLEKS                       R1 R0 K4 ["BaseUrl"]
        8 SETUPVAL                         R1 0
        9 GETIMPORT                        R1 K7 [string.gsub]
       11 GETUPVAL                         R2 0
       12 LOADK                            R3 K8 ["www"]
       13 LOADK                            R4 K9 ["create"]
       14 CALL                             R1 3 1
       15 SETUPVAL                         R1 1
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 LOADK                            R0 K0 ["https://www.roblox.com"]
        2 LOADK                            R1 K1 ["https://create.roblox.com"]
        3 GETIMPORT                        R2 K3 [pcall]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          REF R0
        7 CAPTURE                          REF R1
        8 CALL                             R2 1 0
        9 DUPTABLE                         R2 K6 [{"wwwPath", "createPath"}]
       10 SETTABLEKS                       R0 R2 K4 ["wwwPath"]
       12 SETTABLEKS                       R1 R2 K5 ["createPath"]
       14 CLOSEUPVALS                      R0
       15 RETURN                           R2 1
