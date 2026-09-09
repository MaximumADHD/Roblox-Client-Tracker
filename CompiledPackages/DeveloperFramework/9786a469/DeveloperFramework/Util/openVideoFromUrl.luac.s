PROTO_0:
        0 LOADK                            R2 K0 ["https://"]
        1 LOADK                            R3 K1 ["www.youtube.com"]
        2 GETIMPORT                        R4 K4 [string.format]
        4 LOADK                            R5 K5 ["/watch?v=%s"]
        5 MOVE                             R6 R0
        6 CALL                             R4 2 1
        7 CONCAT                           R1 R2 R4
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["OpenBrowserWindow"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 2 0
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 SETTABLEKS                       R2 R1 K5 ["getYoutubeWatchUrl"]
       12 DUPCLOSURE                       R2 K6 [PROTO_1]
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R1 K7 ["open"]
       16 RETURN                           R1 1
