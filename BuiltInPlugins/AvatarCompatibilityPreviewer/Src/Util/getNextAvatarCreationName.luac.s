PROTO_0:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 ADDK                             R1 R1 K0 [1]
        3 SETUPVAL                         R1 0
        4 LOADK                            R1 K1 ["prompt_to_avatar_build_%*"]
        5 GETUPVAL                         R3 0
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 2 1
        9 MOVE                             R0 R1
       10 GETUPVAL                         R1 1
       11 MOVE                             R3 R0
       12 NAMECALL                         R1 R1 K3 ["FindFirstChild"]
       14 CALL                             R1 2 1
       15 JUMPIFEQKNIL                     R1 ; [+2]
       17 JUMPBACK                         ; [-17]
       18 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 LOADN                            R1 0
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          REF R1
       10 CAPTURE                          VAL R0
       11 CLOSEUPVALS                      R1
       12 RETURN                           R2 1
