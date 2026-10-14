PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["findInstance"]
        3 GETTABLEKS                       R3 R0 K1 ["path"]
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+5]
        7 LOADK                            R5 K2 ["LuaSourceContainer"]
        8 NAMECALL                         R3 R2 K3 ["IsA"]
       10 CALL                             R3 2 1
       11 JUMPIF                           R3 ; [+1]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R3 R1 K4 ["openScriptAsync"]
       15 MOVE                             R4 R2
       16 GETTABLEKS                       R5 R0 K5 ["startLine"]
       18 GETTABLEKS                       R6 R0 K6 ["endLine"]
       20 CALL                             R3 3 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["findInstance"]
        4 GETTABLEKS                       R4 R1 K1 ["path"]
        6 CALL                             R3 1 1
        7 JUMPIFNOT                        R3 ; [+14]
        8 LOADK                            R6 K2 ["LuaSourceContainer"]
        9 NAMECALL                         R4 R3 K3 ["IsA"]
       11 CALL                             R4 2 1
       12 JUMPIF                           R4 ; [+1]
       13 RETURN                           R0 0
       14 GETTABLEKS                       R4 R2 K4 ["openScriptAsync"]
       16 MOVE                             R5 R3
       17 GETTABLEKS                       R6 R1 K5 ["startLine"]
       19 GETTABLEKS                       R7 R1 K6 ["endLine"]
       21 CALL                             R4 3 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["new"]
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R6 R2 K1 ["openScript"]
       11 NEWCLOSURE                       R8 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U2
       14 NAMECALL                         R6 R6 K2 ["Connect"]
       16 CALL                             R6 2 -1
       17 NAMECALL                         R4 R3 K3 ["Add"]
       19 CALL                             R4 -1 0
       20 GETTABLEKS                       R4 R1 K4 ["Destroying"]
       22 NEWCLOSURE                       R6 P1
       23 CAPTURE                          VAL R3
       24 NAMECALL                         R4 R4 K5 ["Once"]
       26 CALL                             R4 2 0
       27 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["DMNetworking"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R4 K9 ["Bin"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Guest"]
       25 GETTABLEKS                       R5 R5 K11 ["Environment"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Bridges"]
       32 GETTABLEKS                       R6 R6 K13 ["createReadFileBridge"]
       34 GETTABLEKS                       R6 R6 K14 ["ReadFileBridgeTypes"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K15 ["Remotes"]
       41 GETTABLEKS                       R7 R7 K16 ["ReadFileRemotes"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K8 ["Util"]
       48 GETTABLEKS                       R8 R8 K17 ["ToolUtils"]
       50 CALL                             R7 1 1
       51 DUPCLOSURE                       R8 K18 [PROTO_0]
       52 CAPTURE                          VAL R7
       53 DUPTABLE                         R9 K20 [{"openScriptAsync"}]
       54 DUPCLOSURE                       R10 K21 [PROTO_1]
       55 CAPTURE                          VAL R8
       56 SETTABLEKS                       R10 R9 K19 ["openScriptAsync"]
       58 DUPCLOSURE                       R10 K22 [PROTO_4]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R7
       62 DUPTABLE                         R11 K25 [{"bridge", "connectRemotes"}]
       63 SETTABLEKS                       R9 R11 K23 ["bridge"]
       65 SETTABLEKS                       R10 R11 K24 ["connectRemotes"]
       67 RETURN                           R11 1
