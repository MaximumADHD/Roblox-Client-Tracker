MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["FastSetting"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K7 [game]
       12 LOADK                            R3 K8 ["StudioOpenCloudMCP"]
       13 LOADB                            R4 0
       14 NAMECALL                         R1 R1 K9 ["DefineFastFlag"]
       16 CALL                             R1 3 0
       17 GETTABLEKS                       R1 R0 K10 ["createFFlag"]
       19 LOADK                            R2 K8 ["StudioOpenCloudMCP"]
       20 LOADB                            R3 0
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1
