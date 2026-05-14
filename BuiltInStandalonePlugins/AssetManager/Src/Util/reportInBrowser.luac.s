PROTO_0:
        0 LOADK                            R2 K0 ["%*abusereport/asset?id=%*"]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K1 ["BaseUrl"]
        4 GETUPVAL                         R5 1
        5 FASTCALL1                        TOSTRING R0 ; [+3]
        6 MOVE                             R8 R0
        7 GETIMPORT                        R7 K3 [tostring]
        9 CALL                             R7 1 1
       10 NAMECALL                         R5 R5 K4 ["UrlEncode"]
       12 CALL                             R5 2 1
       13 NAMECALL                         R2 R2 K5 ["format"]
       15 CALL                             R2 3 1
       16 MOVE                             R1 R2
       17 GETUPVAL                         R2 2
       18 MOVE                             R4 R1
       19 NAMECALL                         R2 R2 K6 ["OpenBrowserWindow"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssetManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["Services"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R2 K3 ["GetService"]
       24 LOADK                            R4 K13 ["BrowserService"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R2 K3 ["GetService"]
       28 LOADK                            R5 K14 ["ContentProvider"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K15 [PROTO_0]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R3
       34 RETURN                           R5 1
