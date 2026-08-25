PROTO_0:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTEQKN                    R2 K0 [1] ; [+20]
        3 GETTABLEN                        R2 R0 1
        4 JUMPIFNOT                        R1 ; [+11]
        5 GETUPVAL                         R3 0
        6 LOADK                            R6 K1 ["rbxassetid://%*"]
        7 MOVE                             R8 R2
        8 NAMECALL                         R6 R6 K2 ["format"]
       10 CALL                             R6 2 1
       11 MOVE                             R5 R6
       12 NAMECALL                         R3 R3 K3 ["CopyToClipboard"]
       14 CALL                             R3 2 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 0
       17 MOVE                             R5 R2
       18 NAMECALL                         R3 R3 K3 ["CopyToClipboard"]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R2 1
       23 MOVE                             R4 R0
       24 NAMECALL                         R2 R2 K4 ["JSONEncode"]
       26 CALL                             R2 2 1
       27 GETUPVAL                         R3 0
       28 MOVE                             R5 R2
       29 NAMECALL                         R3 R3 K3 ["CopyToClipboard"]
       31 CALL                             R3 2 0
       32 RETURN                           R0 0

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
