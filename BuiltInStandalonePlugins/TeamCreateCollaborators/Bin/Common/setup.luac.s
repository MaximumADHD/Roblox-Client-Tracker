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
       10 DUPTABLE                         R3 K7 [{["pluginName"] = "TeamCreateCollaborators"}]
       11 CALL                             R2 1 0
       12 GETIMPORT                        R2 K1 [require]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["Packages"]
       17 GETTABLEKS                       R3 R3 K8 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K1 [require]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K2 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactRoblox"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K1 [require]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K10 ["Src"]
       33 GETTABLEKS                       R5 R5 K11 ["MainPlugin"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R2 K12 ["createElement"]
       38 MOVE                             R6 R4
       39 DUPTABLE                         R7 K14 [{"plugin"}]
       40 SETTABLEKS                       R0 R7 K13 ["plugin"]
       42 CALL                             R5 2 1
       43 GETIMPORT                        R6 K17 [Instance.new]
       45 LOADK                            R7 K18 ["Frame"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R3 K19 ["createRoot"]
       49 MOVE                             R8 R6
       50 CALL                             R7 1 1
       51 MOVE                             R10 R5
       52 NAMECALL                         R8 R7 K20 ["render"]
       54 CALL                             R8 2 0
       55 GETTABLEKS                       R8 R0 K21 ["Unloading"]
       57 NEWCLOSURE                       R10 P0
       58 CAPTURE                          VAL R7
       59 NAMECALL                         R8 R8 K22 ["Connect"]
       61 CALL                             R8 2 0
       62 RETURN                           R0 0

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
