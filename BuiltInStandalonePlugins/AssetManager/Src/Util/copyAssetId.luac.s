PROTO_0:
        0 JUMPIFNOT                        R1 ; [+7]
        1 LOADK                            R2 K0 ["rbxassetid://%*&version=%*"]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 NAMECALL                         R2 R2 K1 ["format"]
        6 CALL                             R2 3 1
        7 RETURN                           R2 1
        8 LOADK                            R2 K2 ["rbxassetid://%*"]
        9 MOVE                             R4 R0
       10 NAMECALL                         R2 R2 K1 ["format"]
       12 CALL                             R2 2 1
       13 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+3]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R1
        4 JUMPIF                           R2 ; [+1]
        5 LOADNIL                          R2
        6 JUMPIFNOT                        R2 ; [+7]
        7 LOADK                            R3 K0 ["rbxassetid://%*&version=%*"]
        8 MOVE                             R5 R0
        9 MOVE                             R6 R2
       10 NAMECALL                         R3 R3 K1 ["format"]
       12 CALL                             R3 3 1
       13 RETURN                           R3 1
       14 LOADK                            R3 K2 ["rbxassetid://%*"]
       15 MOVE                             R5 R0
       16 NAMECALL                         R3 R3 K1 ["format"]
       18 CALL                             R3 2 1
       19 RETURN                           R3 1

PROTO_2:
        0 LENGTH                           R3 R0
        1 JUMPIFNOTEQKN                    R3 K0 [1] ; [+31]
        3 GETTABLEN                        R3 R0 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 GETTABLEN                        R4 R2 1
        6 JUMPIF                           R4 ; [+1]
        7 LOADNIL                          R4
        8 JUMPIFNOT                        R1 ; [+18]
        9 GETUPVAL                         R5 0
       10 JUMPIFNOT                        R4 ; [+7]
       11 LOADK                            R7 K1 ["rbxassetid://%*&version=%*"]
       12 MOVE                             R9 R3
       13 MOVE                             R10 R4
       14 NAMECALL                         R7 R7 K2 ["format"]
       16 CALL                             R7 3 1
       17 JUMP                             ; [+5]
       18 LOADK                            R7 K3 ["rbxassetid://%*"]
       19 MOVE                             R9 R3
       20 NAMECALL                         R7 R7 K2 ["format"]
       22 CALL                             R7 2 1
       23 NAMECALL                         R5 R5 K4 ["CopyToClipboard"]
       25 CALL                             R5 2 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R5 0
       28 MOVE                             R7 R3
       29 NAMECALL                         R5 R5 K4 ["CopyToClipboard"]
       31 CALL                             R5 2 0
       32 RETURN                           R0 0
       33 LOADNIL                          R3
       34 JUMPIFNOT                        R1 ; [+13]
       35 GETUPVAL                         R4 1
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R6 R6 K5 ["map"]
       39 MOVE                             R7 R0
       40 NEWCLOSURE                       R8 P0
       41 CAPTURE                          VAL R2
       42 CALL                             R6 2 -1
       43 NAMECALL                         R4 R4 K6 ["JSONEncode"]
       45 CALL                             R4 -1 1
       46 MOVE                             R3 R4
       47 JUMP                             ; [+6]
       48 GETUPVAL                         R4 1
       49 MOVE                             R6 R0
       50 NAMECALL                         R4 R4 K6 ["JSONEncode"]
       52 CALL                             R4 2 1
       53 MOVE                             R3 R4
       54 GETUPVAL                         R4 0
       55 MOVE                             R6 R3
       56 NAMECALL                         R4 R4 K4 ["CopyToClipboard"]
       58 CALL                             R4 2 0
       59 RETURN                           R0 0

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
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Util"]
       26 GETTABLEKS                       R4 R4 K14 ["Services"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K3 ["GetService"]
       31 LOADK                            R5 K15 ["StudioService"]
       32 CALL                             R4 1 1
       33 DUPCLOSURE                       R5 K16 [PROTO_0]
       34 DUPCLOSURE                       R6 K17 [PROTO_2]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R2
       38 RETURN                           R6 1
