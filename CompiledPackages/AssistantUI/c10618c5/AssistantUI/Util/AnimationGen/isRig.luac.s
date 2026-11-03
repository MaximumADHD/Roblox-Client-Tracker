PROTO_0:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 LOADB                            R1 1
        8 LOADK                            R4 K2 ["Humanoid"]
        9 NAMECALL                         R2 R0 K3 ["FindFirstChildOfClass"]
       11 CALL                             R2 2 1
       12 JUMPIFNOTEQKNIL                  R2 ; [+9]
       14 LOADK                            R4 K4 ["AnimationController"]
       15 NAMECALL                         R2 R0 K3 ["FindFirstChildOfClass"]
       17 CALL                             R2 2 1
       18 JUMPIFNOTEQKNIL                  R2 ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
