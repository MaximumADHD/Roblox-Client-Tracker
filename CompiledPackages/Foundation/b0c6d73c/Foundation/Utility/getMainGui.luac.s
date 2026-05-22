PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsClient"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+9]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["LocalPlayer"]
        8 JUMPIFNOT                        R0 ; [+5]
        9 GETUPVAL                         R0 0
       10 NAMECALL                         R0 R0 K2 ["IsRunning"]
       12 CALL                             R0 1 1
       13 JUMPIF                           R0 ; [+2]
       14 LOADNIL                          R0
       15 RETURN                           R0 1
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K1 ["LocalPlayer"]
       19 LOADK                            R2 K3 ["PlayerGui"]
       20 LOADN                            R3 3
       21 NAMECALL                         R0 R0 K4 ["WaitForChild"]
       23 CALL                             R0 3 -1
       24 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FoundationUseMainGuiUtility"]
        3 JUMPIF                           R0 ; [+4]
        4 GETIMPORT                        R0 K2 [error]
        6 LOADK                            R1 K3 ["FoundationUseMainGuiUtility is not enabled"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 1
        9 CALL                             R0 0 1
       10 JUMPIFNOT                        R0 ; [+2]
       11 GETUPVAL                         R0 2
       12 RETURN                           R0 1
       13 GETUPVAL                         R0 3
       14 JUMPIF                           R0 ; [+27]
       15 GETUPVAL                         R1 5
       16 NAMECALL                         R1 R1 K4 ["IsClient"]
       18 CALL                             R1 1 1
       19 JUMPIFNOT                        R1 ; [+9]
       20 GETUPVAL                         R1 6
       21 GETTABLEKS                       R1 R1 K5 ["LocalPlayer"]
       23 JUMPIFNOT                        R1 ; [+5]
       24 GETUPVAL                         R1 5
       25 NAMECALL                         R1 R1 K6 ["IsRunning"]
       27 CALL                             R1 1 1
       28 JUMPIF                           R1 ; [+2]
       29 LOADNIL                          R0
       30 JUMP                             ; [+8]
       31 GETUPVAL                         R0 6
       32 GETTABLEKS                       R0 R0 K5 ["LocalPlayer"]
       34 LOADK                            R2 K7 ["PlayerGui"]
       35 LOADN                            R3 3
       36 NAMECALL                         R0 R0 K8 ["WaitForChild"]
       38 CALL                             R0 3 1
       39 SETUPVAL                         R0 4
       40 LOADB                            R0 1
       41 SETUPVAL                         R0 3
       42 GETUPVAL                         R0 4
       43 JUMPIFNOT                        R0 ; [+2]
       44 GETUPVAL                         R0 4
       45 RETURN                           R0 1
       46 GETIMPORT                        R0 K2 [error]
       48 LOADK                            R1 K9 ["PlayerGui not found"]
       49 CALL                             R0 1 0
       50 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R2 K7 ["Wrappers"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Services"]
       16 GETTABLEKS                       R2 R2 K9 ["CoreGui"]
       18 GETTABLEKS                       R3 R1 K8 ["Services"]
       20 GETTABLEKS                       R3 R3 K10 ["RunService"]
       22 GETTABLEKS                       R4 R1 K8 ["Services"]
       24 GETTABLEKS                       R4 R4 K11 ["Players"]
       26 GETIMPORT                        R5 K5 [require]
       28 GETTABLEKS                       R6 R0 K6 ["Utility"]
       30 GETTABLEKS                       R6 R6 K12 ["Flags"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K5 [require]
       35 GETTABLEKS                       R7 R0 K6 ["Utility"]
       37 GETTABLEKS                       R7 R7 K13 ["isPluginSecurity"]
       39 CALL                             R6 1 1
       40 LOADB                            R7 0
       41 LOADNIL                          R8
       42 DUPCLOSURE                       R9 K14 [PROTO_0]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 NEWCLOSURE                       R10 P1
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R2
       49 CAPTURE                          REF R7
       50 CAPTURE                          REF R8
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R4
       53 CLOSEUPVALS                      R7
       54 RETURN                           R10 1
