PROTO_0:
        0 LOADK                            R1 K0 ["%*abusereport/asset?id=%*"]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K1 ["BaseUrl"]
        4 GETUPVAL                         R4 1
        5 FASTCALL1                        TOSTRING R0 ; [+3]
        6 MOVE                             R7 R0
        7 GETIMPORT                        R6 K3 [tostring]
        9 CALL                             R6 1 1
       10 NAMECALL                         R4 R4 K4 ["UrlEncode"]
       12 CALL                             R4 2 1
       13 NAMECALL                         R1 R1 K5 ["format"]
       15 CALL                             R1 3 1
       16 GETUPVAL                         R2 2
       17 MOVE                             R4 R1
       18 NAMECALL                         R2 R2 K6 ["OpenBrowserWindow"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssetManagement"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Services"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K3 ["GetService"]
       20 LOADK                            R4 K11 ["BrowserService"]
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R4 R2 K3 ["GetService"]
       24 LOADK                            R5 K12 ["ContentProvider"]
       25 CALL                             R4 1 1
       26 DUPCLOSURE                       R5 K13 [PROTO_0]
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R3
       30 RETURN                           R5 1
