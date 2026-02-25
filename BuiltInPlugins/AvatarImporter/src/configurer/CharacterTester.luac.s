PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["StarterCharacter"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 NAMECALL                         R1 R0 K2 ["Destroy"]
        8 CALL                             R1 1 0
        9 JUMP                             ; [+1]
       10 RETURN                           R0 0
       11 JUMPBACK                         ; [-12]
       12 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETIMPORT                        R2 K3 [workspace]
        4 NAMECALL                         R2 R2 K4 ["GetChildren"]
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 3
        8 FORGPREP_NEXT                    R1
        9 LOADK                            R8 K5 ["Accessory"]
       10 NAMECALL                         R6 R5 K6 ["IsA"]
       12 CALL                             R6 2 1
       13 JUMPIFNOT                        R6 ; [+5]
       14 NAMECALL                         R6 R5 K7 ["Clone"]
       16 CALL                             R6 1 1
       17 SETTABLEKS                       R0 R6 K8 ["Parent"]
       19 FORGLOOP                         R1 2 ; [-11]
       21 RETURN                           R0 0

PROTO_2:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 0
        4 NAMECALL                         R1 R0 K0 ["Clone"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 LOADK                            R2 K1 ["StarterCharacter"]
       11 SETTABLEKS                       R2 R1 K2 ["Name"]
       13 GETUPVAL                         R2 2
       14 SETTABLEKS                       R2 R1 K3 ["Parent"]
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["StarterPlayer"]
        6 NAMECALL                         R1 R1 K3 ["GetService"]
        8 CALL                             R1 2 1
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 CAPTURE                          VAL R1
       11 DUPCLOSURE                       R3 K5 [PROTO_1]
       12 DUPCLOSURE                       R4 K6 [PROTO_2]
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R4 R0 K7 ["SetupCharacterForTesting"]
       18 RETURN                           R0 1
