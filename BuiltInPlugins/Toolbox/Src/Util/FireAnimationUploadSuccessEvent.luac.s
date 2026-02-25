PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+5]
        2 GETUPVAL                         R2 0
        3 LOADK                            R4 K0 ["AnimationClipEditor"]
        4 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
        6 CALL                             R2 2 1
        7 MOVE                             R3 R2
        8 JUMPIFNOT                        R3 ; [+4]
        9 LOADK                            R5 K2 ["animationUploadSuccess"]
       10 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R3 ; [+5]
       14 MOVE                             R6 R0
       15 MOVE                             R7 R1
       16 NAMECALL                         R4 R3 K3 ["Fire"]
       18 CALL                             R4 3 0
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RobloxPluginGuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
