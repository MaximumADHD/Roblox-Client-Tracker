MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 LOADK                            R3 K3 ["Plugin"]
        6 NAMECALL                         R1 R0 K4 ["FindFirstAncestorWhichIsA"]
        8 CALL                             R1 2 1
        9 LOADK                            R3 K5 ["Folder"]
       10 NAMECALL                         R1 R1 K6 ["FindFirstChildWhichIsA"]
       12 CALL                             R1 2 1
       13 JUMPIFNOTEQKNIL                  R1 ; [+10]
       15 LOADK                            R4 K3 ["Plugin"]
       16 NAMECALL                         R2 R0 K4 ["FindFirstAncestorWhichIsA"]
       18 CALL                             R2 2 1
       19 LOADK                            R4 K7 ["ModuleScript"]
       20 NAMECALL                         R2 R2 K6 ["FindFirstChildWhichIsA"]
       22 CALL                             R2 2 1
       23 MOVE                             R1 R2
       24 LOADK                            R4 K8 ["Packages"]
       25 NAMECALL                         R2 R1 K9 ["FindFirstChild"]
       27 CALL                             R2 2 1
       28 JUMPIFNOTEQKNIL                  R2 ; [+8]
       30 LOADK                            R4 K8 ["Packages"]
       31 LOADB                            R5 1
       32 NAMECALL                         R2 R1 K9 ["FindFirstChild"]
       34 CALL                             R2 3 1
       35 GETTABLEKS                       R1 R2 K2 ["Parent"]
       37 RETURN                           R1 1
