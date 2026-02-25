PROTO_0:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["Name"]
        3 GETUPVAL                         R3 0
        4 JUMPIFEQ                         R2 R3 ; [+14]
        6 GETTABLEKS                       R2 R0 K0 ["Name"]
        8 LOADN                            R4 1
        9 GETUPVAL                         R6 1
       10 LENGTH                           R5 R6
       11 NAMECALL                         R2 R2 K1 ["sub"]
       13 CALL                             R2 3 1
       14 GETUPVAL                         R3 1
       15 JUMPIFEQ                         R2 R3 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R4 R0
        1 NAMECALL                         R2 R1 K0 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["Packages"]
        9 GETTABLEKS                       R2 R3 K2 ["_Index"]
       11 MOVE                             R4 R0
       12 LOADK                            R5 K3 ["-"]
       13 CONCAT                           R3 R4 R5
       14 GETUPVAL                         R4 1
       15 NAMECALL                         R5 R2 K4 ["GetChildren"]
       17 CALL                             R5 1 1
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R3
       21 CALL                             R4 2 1
       22 JUMPIFNOT                        R4 ; [+9]
       23 MOVE                             R7 R0
       24 NAMECALL                         R5 R4 K0 ["FindFirstChild"]
       26 CALL                             R5 2 1
       27 NAMECALL                         R6 R5 K5 ["Clone"]
       29 CALL                             R6 1 1
       30 SETTABLEKS                       R1 R6 K6 ["Parent"]
       32 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Packages"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIF                           R0 ; [+11]
        6 GETIMPORT                        R1 K4 [Instance.new]
        8 LOADK                            R2 K5 ["Folder"]
        9 CALL                             R1 1 1
       10 MOVE                             R0 R1
       11 LOADK                            R1 K0 ["Packages"]
       12 SETTABLEKS                       R1 R0 K6 ["Name"]
       14 GETUPVAL                         R1 0
       15 SETTABLEKS                       R1 R0 K7 ["Parent"]
       17 GETUPVAL                         R1 1
       18 LOADK                            R2 K8 ["Dash"]
       19 MOVE                             R3 R0
       20 CALL                             R1 2 0
       21 GETUPVAL                         R1 1
       22 LOADK                            R2 K9 ["DeveloperTools"]
       23 MOVE                             R3 R0
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["ReplicatedStorage"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R0 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["Dash"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R2 K11 ["find"]
       24 DUPCLOSURE                       R4 K12 [PROTO_1]
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R3
       27 DUPCLOSURE                       R5 K13 [PROTO_2]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R4
       30 RETURN                           R5 1
