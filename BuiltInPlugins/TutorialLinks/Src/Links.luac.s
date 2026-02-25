PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K2 [ipairs]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 3
        7 FORGPREP_INEXT                   R2
        8 LOADK                            R9 K3 ["BillboardGui"]
        9 NAMECALL                         R7 R6 K4 ["IsA"]
       11 CALL                             R7 2 1
       12 JUMPIF                           R7 ; [+5]
       13 LOADK                            R9 K5 ["SurfaceGui"]
       14 NAMECALL                         R7 R6 K4 ["IsA"]
       16 CALL                             R7 2 1
       17 JUMPIFNOT                        R7 ; [+5]
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R7 R8 K6 ["addGui"]
       21 MOVE                             R8 R6
       22 CALL                             R7 1 0
       23 FORGLOOP                         R2 2 [inext] ; [-16]
       25 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R1 R3 K2 ["connections"]
        5 CALL                             R0 1 3
        6 FORGPREP_INEXT                   R0
        7 NAMECALL                         R5 R4 K3 ["Disconnect"]
        9 CALL                             R5 1 0
       10 FORGLOOP                         R0 2 [inext] ; [-4]
       12 GETUPVAL                         R0 0
       13 NEWTABLE                         R1 0 0
       15 SETTABLEKS                       R1 R0 K2 ["connections"]
       17 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K2 [ipairs]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 3
        7 FORGPREP_INEXT                   R2
        8 LOADK                            R9 K3 ["TextButton"]
        9 NAMECALL                         R7 R6 K4 ["IsA"]
       11 CALL                             R7 2 1
       12 JUMPIFNOT                        R7 ; [+5]
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R7 R8 K5 ["addLink"]
       16 MOVE                             R8 R6
       17 CALL                             R7 1 0
       18 FORGLOOP                         R2 2 [inext] ; [-11]
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["TutorialLink"]
        2 NAMECALL                         R0 R0 K1 ["GetAttribute"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 1
        6 LOADK                            R4 K2 ["https://create.roblox.com/"]
        7 MOVE                             R5 R0
        8 CONCAT                           R3 R4 R5
        9 NAMECALL                         R1 R1 K3 ["OpenBrowserWindow"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R3 K0 ["TutorialLink"]
        1 NAMECALL                         R1 R0 K1 ["GetAttribute"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+16]
        5 GETTABLEKS                       R2 R0 K2 ["Activated"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 NAMECALL                         R2 R2 K3 ["Connect"]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K4 ["connections"]
       16 FASTCALL2                        TABLE_INSERT R4 R2 ; [+3]
       18 MOVE                             R5 R2
       19 GETUPVAL                         R3 2
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K6 [table.insert]
        9 DUPTABLE                         R2 K8 [{"connections"}]
       10 NEWTABLE                         R3 0 0
       12 SETTABLEKS                       R3 R2 K7 ["connections"]
       14 DUPCLOSURE                       R3 K9 [PROTO_0]
       15 CAPTURE                          VAL R2
       16 SETTABLEKS                       R3 R2 K10 ["addLinks"]
       18 DUPCLOSURE                       R3 K11 [PROTO_1]
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R3 R2 K12 ["removeLinks"]
       22 DUPCLOSURE                       R3 K13 [PROTO_2]
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R3 R2 K14 ["addGui"]
       26 DUPCLOSURE                       R3 K15 [PROTO_4]
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R3 R2 K16 ["addLink"]
       32 RETURN                           R2 1
