PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AudioViewportVisualizations"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 LOADK                            R3 K2 ["Folder"]
        7 NAMECALL                         R1 R0 K3 ["IsA"]
        9 CALL                             R1 2 1
       10 JUMPIFNOT                        R1 ; [+1]
       11 RETURN                           R0 1
       12 GETIMPORT                        R1 K6 [Instance.new]
       14 LOADK                            R2 K2 ["Folder"]
       15 CALL                             R1 1 1
       16 LOADK                            R2 K0 ["AudioViewportVisualizations"]
       17 SETTABLEKS                       R2 R1 K7 ["Name"]
       19 LOADB                            R2 0
       20 SETTABLEKS                       R2 R1 K8 ["Archivable"]
       22 GETUPVAL                         R2 0
       23 SETTABLEKS                       R2 R1 K9 ["Parent"]
       25 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["AudioViewportVisualizations"]
        2 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+7]
        6 LOADK                            R5 K2 ["Folder"]
        7 NAMECALL                         R3 R2 K3 ["IsA"]
        9 CALL                             R3 2 1
       10 JUMPIFNOT                        R3 ; [+2]
       11 MOVE                             R1 R2
       12 JUMP                             ; [+14]
       13 GETIMPORT                        R3 K6 [Instance.new]
       15 LOADK                            R4 K2 ["Folder"]
       16 CALL                             R3 1 1
       17 LOADK                            R4 K0 ["AudioViewportVisualizations"]
       18 SETTABLEKS                       R4 R3 K7 ["Name"]
       20 LOADB                            R4 0
       21 SETTABLEKS                       R4 R3 K8 ["Archivable"]
       23 GETUPVAL                         R4 0
       24 SETTABLEKS                       R4 R3 K9 ["Parent"]
       26 MOVE                             R1 R3
       27 MOVE                             R4 R0
       28 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       30 CALL                             R2 2 1
       31 JUMPIFNOT                        R2 ; [+6]
       32 LOADK                            R5 K2 ["Folder"]
       33 NAMECALL                         R3 R2 K3 ["IsA"]
       35 CALL                             R3 2 1
       36 JUMPIFNOT                        R3 ; [+1]
       37 RETURN                           R2 1
       38 GETIMPORT                        R3 K6 [Instance.new]
       40 LOADK                            R4 K2 ["Folder"]
       41 CALL                             R3 1 1
       42 SETTABLEKS                       R0 R3 K7 ["Name"]
       44 LOADB                            R4 0
       45 SETTABLEKS                       R4 R3 K8 ["Archivable"]
       47 SETTABLEKS                       R1 R3 K9 ["Parent"]
       49 RETURN                           R3 1

PROTO_2:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R1 R0 K0 ["Parent"]
        4 NAMECALL                         R2 R0 K1 ["Destroy"]
        6 CALL                             R2 1 0
        7 JUMPIFNOT                        R1 ; [+18]
        8 LOADK                            R4 K2 ["Folder"]
        9 NAMECALL                         R2 R1 K3 ["IsA"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+13]
       13 GETTABLEKS                       R2 R1 K4 ["Name"]
       15 JUMPIFNOTEQKS                    R2 K5 ["AudioViewportVisualizations"] ; [+10]
       17 NAMECALL                         R3 R1 K6 ["GetChildren"]
       19 CALL                             R3 1 1
       20 LENGTH                           R2 R3
       21 JUMPIFNOTEQKN                    R2 K7 [0] ; [+4]
       23 NAMECALL                         R2 R1 K1 ["Destroy"]
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 2 0
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 CAPTURE                          VAL R0
       11 DUPCLOSURE                       R3 K5 [PROTO_1]
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R3 R1 K6 ["create"]
       15 DUPCLOSURE                       R3 K7 [PROTO_2]
       16 SETTABLEKS                       R3 R1 K8 ["destroy"]
       18 RETURN                           R1 1
