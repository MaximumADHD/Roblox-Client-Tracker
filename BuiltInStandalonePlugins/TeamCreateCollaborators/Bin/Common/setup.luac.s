PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["Packages"]
        5 GETTABLEKS                       R2 R2 K3 ["ReactDeveloperTools"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R1 K4 ["tryEnableDevtools"]
       10 DUPTABLE                         R3 K6 [{"pluginName"}]
       11 LOADK                            R4 K7 ["TeamCreateCollaborators"]
       12 SETTABLEKS                       R4 R3 K5 ["pluginName"]
       14 CALL                             R2 1 0
       15 GETIMPORT                        R2 K1 [require]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K2 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K1 [require]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K2 ["Packages"]
       28 GETTABLEKS                       R4 R4 K9 ["ReactRoblox"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K1 [require]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K10 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["MainPlugin"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R2 K12 ["createElement"]
       41 MOVE                             R6 R4
       42 DUPTABLE                         R7 K14 [{"plugin"}]
       43 SETTABLEKS                       R0 R7 K13 ["plugin"]
       45 CALL                             R5 2 1
       46 GETIMPORT                        R6 K17 [Instance.new]
       48 LOADK                            R7 K18 ["Frame"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R3 K19 ["createRoot"]
       52 MOVE                             R8 R6
       53 CALL                             R7 1 1
       54 MOVE                             R10 R5
       55 NAMECALL                         R8 R7 K20 ["render"]
       57 CALL                             R8 2 0
       58 GETTABLEKS                       R8 R0 K21 ["Unloading"]
       60 NEWCLOSURE                       R10 P0
       61 CAPTURE                          VAL R7
       62 NAMECALL                         R8 R8 K22 ["Connect"]
       64 CALL                             R8 2 0
       65 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Name"]
        3 SETTABLEKS                       R1 R0 K0 ["Name"]
        5 GETIMPORT                        R1 K2 [game]
        7 LOADK                            R3 K3 ["RunService"]
        8 NAMECALL                         R1 R1 K4 ["GetService"]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K5 ["get"]
       14 CALL                             R3 0 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K6 ["Standalone"]
       18 JUMPIFEQ                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 NAMECALL                         R3 R1 K7 ["IsEdit"]
       24 CALL                             R3 1 1
       25 JUMPIF                           R2 ; [+1]
       26 JUMPIFNOT                        R3 ; [+3]
       27 GETUPVAL                         R4 2
       28 MOVE                             R5 R0
       29 CALL                             R4 1 0
       30 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TeamCreateCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["pluginType"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_1]
       17 CAPTURE                          VAL R0
       18 DUPCLOSURE                       R3 K10 [PROTO_2]
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 RETURN                           R3 1
