PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["operationId"]
        2 RETURN                           R1 1

PROTO_1:
        0 LOADNIL                          R1
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+3]
        8 MOVE                             R1 R0
        9 JUMP                             ; [+35]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R3 R0
       12 GETIMPORT                        R2 K1 [type]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+29]
       17 GETTABLEKS                       R2 R0 K4 ["Body"]
       19 FASTCALL1                        TYPE R2 ; [+3]
       20 MOVE                             R4 R2
       21 GETIMPORT                        R3 K1 [type]
       23 CALL                             R3 1 1
       24 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+20]
       26 GETTABLEKS                       R3 R2 K5 ["errors"]
       28 JUMPIFNOT                        R3 ; [+16]
       29 GETTABLEKS                       R4 R2 K5 ["errors"]
       31 GETTABLEN                        R3 R4 1
       32 JUMPIFNOT                        R3 ; [+12]
       33 GETTABLEKS                       R4 R2 K5 ["errors"]
       35 GETTABLEN                        R3 R4 1
       36 GETTABLEKS                       R3 R3 K6 ["message"]
       38 JUMPIF                           R3 ; [+5]
       39 GETTABLEKS                       R4 R2 K5 ["errors"]
       41 GETTABLEN                        R3 R4 1
       42 GETTABLEKS                       R3 R3 K7 ["userFacingMessage"]
       44 MOVE                             R1 R3
       45 GETUPVAL                         R2 0
       46 GETTABLEKS                       R2 R2 K8 ["reject"]
       48 ORK                              R3 R1 K9 ["Couldn't start the update. Please try again."]
       49 CALL                             R2 1 -1
       50 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R4 R1 K0 ["originalAssetId"]
        2 GETTABLEKS                       R5 R1 K1 ["assetType"]
        4 GETTABLEKS                       R5 R5 K2 ["Name"]
        6 NAMECALL                         R2 R0 K3 ["createAvatarItemUpdateContext"]
        8 CALL                             R2 3 1
        9 DUPCLOSURE                       R4 K4 [PROTO_0]
       10 NAMECALL                         R2 R2 K5 ["andThen"]
       12 CALL                             R2 2 1
       13 DUPCLOSURE                       R4 K6 [PROTO_1]
       14 CAPTURE                          UPVAL U0
       15 NAMECALL                         R2 R2 K7 ["catch"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R1 R1 K8 ["Util"]
       16 GETTABLEKS                       R1 R1 K9 ["Promise"]
       18 DUPCLOSURE                       R2 K10 [PROTO_2]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
