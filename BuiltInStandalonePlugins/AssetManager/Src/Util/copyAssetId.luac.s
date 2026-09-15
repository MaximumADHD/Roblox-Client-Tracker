PROTO_0:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTEQKN                    R2 K0 [1] ; [+19]
        3 GETTABLEN                        R2 R0 1
        4 JUMPIFNOT                        R1 ; [+10]
        5 GETUPVAL                         R3 0
        6 LOADK                            R5 K1 ["rbxassetid://%*"]
        7 MOVE                             R7 R2
        8 NAMECALL                         R5 R5 K2 ["format"]
       10 CALL                             R5 2 1
       11 NAMECALL                         R3 R3 K3 ["CopyToClipboard"]
       13 CALL                             R3 2 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R3 0
       16 MOVE                             R5 R2
       17 NAMECALL                         R3 R3 K3 ["CopyToClipboard"]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 1
       22 MOVE                             R4 R0
       23 NAMECALL                         R2 R2 K4 ["JSONEncode"]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R3 0
       27 MOVE                             R5 R2
       28 NAMECALL                         R3 R3 K3 ["CopyToClipboard"]
       30 CALL                             R3 2 0
       31 RETURN                           R0 0

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
       24 LOADK                            R4 K13 ["StudioService"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K14 [PROTO_0]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R0
       29 RETURN                           R4 1
