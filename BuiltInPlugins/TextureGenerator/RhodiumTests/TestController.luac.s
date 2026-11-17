PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_root"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["Component"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["Providers"]
       10 JUMPIF                           R4 ; [+2]
       11 NEWTABLE                         R4 0 0
       13 CALL                             R2 2 -1
       14 NAMECALL                         R0 R0 K3 ["render"]
       16 CALL                             R0 -1 0
       17 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 2 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 GETIMPORT                        R2 K4 [Instance.new]
       10 LOADK                            R3 K5 ["ScreenGui"]
       11 CALL                             R2 1 1
       12 LOADK                            R3 K6 ["TextureGenerator"]
       13 SETTABLEKS                       R3 R2 K7 ["Name"]
       15 GETIMPORT                        R3 K9 [game]
       17 GETTABLEKS                       R3 R3 K10 ["CoreGui"]
       19 SETTABLEKS                       R3 R2 K11 ["Parent"]
       21 SETTABLEKS                       R2 R1 K12 ["_layerCollector"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K13 ["createRoot"]
       26 GETTABLEKS                       R4 R1 K12 ["_layerCollector"]
       28 CALL                             R3 1 1
       29 SETTABLEKS                       R3 R1 K14 ["_root"]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K15 ["act"]
       34 NEWCLOSURE                       R4 P0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          VAL R0
       38 CALL                             R3 1 0
       39 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_layerCollector"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETIMPORT                        R3 K2 [string.split]
        5 MOVE                             R4 R1
        6 LOADK                            R5 K3 ["."]
        7 CALL                             R3 2 3
        8 FORGPREP                         R3
        9 JUMPIFNOTEQKNIL                  R2 ; [+3]
       11 LOADNIL                          R8
       12 RETURN                           R8 1
       13 MOVE                             R10 R7
       14 LOADN                            R11 2
       15 NAMECALL                         R8 R2 K4 ["WaitForChild"]
       17 CALL                             R8 3 1
       18 MOVE                             R2 R8
       19 FORGLOOP                         R3 2 ; [-11]
       21 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETIMPORT                        R3 K2 [string.split]
        5 MOVE                             R4 R1
        6 LOADK                            R5 K3 ["."]
        7 CALL                             R3 2 1
        8 MOVE                             R4 R2
        9 NAMECALL                         R5 R2 K4 ["GetFullName"]
       11 CALL                             R5 1 1
       12 MOVE                             R6 R3
       13 LOADNIL                          R7
       14 LOADNIL                          R8
       15 FORGPREP                         R6
       16 MOVE                             R11 R4
       17 JUMPIFNOT                        R11 ; [+4]
       18 MOVE                             R13 R10
       19 NAMECALL                         R11 R4 K5 ["FindFirstChild"]
       21 CALL                             R11 2 1
       22 JUMPIFNOTEQKNIL                  R11 ; [+36]
       24 NEWTABLE                         R12 0 2
       26 LOADK                            R13 K6 ["Closest match: %*"]
       27 MOVE                             R15 R5
       28 NAMECALL                         R13 R13 K7 ["format"]
       30 CALL                             R13 2 1
       31 LOADK                            R14 K8 ["Children found:"]
       32 SETLIST                          R12 R13 2 [1]
       34 JUMPIFNOT                        R4 ; [+18]
       35 NAMECALL                         R13 R4 K9 ["GetChildren"]
       37 CALL                             R13 1 3
       38 FORGPREP                         R13
       39 LOADK                            R20 K10 ["\t- %*"]
       40 GETTABLEKS                       R22 R17 K11 ["Name"]
       42 NAMECALL                         R20 R20 K7 ["format"]
       44 CALL                             R20 2 1
       45 FASTCALL2                        TABLE_INSERT R12 R20 ; [+4]
       47 MOVE                             R19 R12
       48 GETIMPORT                        R18 K14 [table.insert]
       50 CALL                             R18 2 0
       51 FORGLOOP                         R13 2 ; [-13]
       53 GETIMPORT                        R13 K16 [table.concat]
       55 MOVE                             R14 R12
       56 LOADK                            R15 K17 ["\n"]
       57 CALL                             R13 2 -1
       58 RETURN                           R13 -1
       59 MOVE                             R4 R11
       60 NAMECALL                         R12 R11 K4 ["GetFullName"]
       62 CALL                             R12 1 1
       63 MOVE                             R5 R12
       64 FORGLOOP                         R6 2 ; [-49]
       66 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["X"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Y"]
        7 LOADN                            R4 0
        8 LOADB                            R5 1
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K2 ["_layerCollector"]
       12 LOADN                            R7 0
       13 NAMECALL                         R0 R0 K3 ["SendMouseButtonEvent"]
       15 CALL                             R0 7 0
       16 GETUPVAL                         R0 0
       17 NAMECALL                         R0 R0 K4 ["WaitForInputEventsProcessed"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 0
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K0 ["X"]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K1 ["Y"]
       27 LOADN                            R4 0
       28 LOADB                            R5 0
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K2 ["_layerCollector"]
       32 LOADN                            R7 0
       33 NAMECALL                         R0 R0 K3 ["SendMouseButtonEvent"]
       35 CALL                             R0 7 0
       36 GETUPVAL                         R0 0
       37 NAMECALL                         R0 R0 K4 ["WaitForInputEventsProcessed"]
       39 CALL                             R0 1 0
       40 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R1 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R5 R1 K2 ["AbsoluteSize"]
        4 DIVK                             R4 R5 K1 [2]
        5 ADD                              R2 R3 R4
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["act"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R0
       13 CALL                             R3 1 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["_layerCollector"]
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+14]
        7 GETIMPORT                        R3 K2 [error]
        9 LOADK                            R4 K3 ["%* was not found\n%*"]
       10 MOVE                             R6 R1
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R8 R0 K0 ["_layerCollector"]
       14 MOVE                             R9 R1
       15 CALL                             R7 2 1
       16 NAMECALL                         R4 R4 K4 ["format"]
       18 CALL                             R4 3 1
       19 CALL                             R3 1 0
       20 LOADK                            R6 K5 ["GuiObject"]
       21 NAMECALL                         R4 R2 K6 ["IsA"]
       23 CALL                             R4 2 1
       24 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       26 LOADK                            R5 K7 ["Resolved path is not a GuiObject"]
       27 GETIMPORT                        R3 K9 [assert]
       29 CALL                             R3 2 0
       30 MOVE                             R5 R2
       31 NAMECALL                         R3 R0 K10 ["clickElement"]
       33 CALL                             R3 2 0
       34 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_layerCollector"]
        2 MOVE                             R4 R1
        3 LOADB                            R5 1
        4 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
        6 CALL                             R2 3 1
        7 LOADK                            R5 K2 ["%* not found"]
        8 MOVE                             R7 R1
        9 NAMECALL                         R5 R5 K3 ["format"]
       11 CALL                             R5 2 1
       12 FASTCALL2                        ASSERT R2 R5 ; [+4]
       14 MOVE                             R4 R2
       15 GETIMPORT                        R3 K5 [assert]
       17 CALL                             R3 2 0
       18 LOADK                            R6 K6 ["GuiObject"]
       19 NAMECALL                         R4 R2 K7 ["IsA"]
       21 CALL                             R4 2 1
       22 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       24 LOADK                            R5 K8 ["Resolved path is not a GuiObject"]
       25 GETIMPORT                        R3 K5 [assert]
       27 CALL                             R3 2 0
       28 MOVE                             R5 R2
       29 NAMECALL                         R3 R0 K9 ["clickElement"]
       31 CALL                             R3 2 0
       32 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_root"]
        3 NAMECALL                         R0 R0 K1 ["unmount"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["_layerCollector"]
        9 NAMECALL                         R0 R0 K3 ["Destroy"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["act"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["ReactRoblox"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["VirtualInputManager"]
       17 NAMECALL                         R2 R2 K11 ["GetService"]
       19 CALL                             R2 2 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R0 K6 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R3 R3 K13 ["TestHelpers"]
       29 GETTABLEKS                       R3 R3 K14 ["getContentRoot"]
       31 GETIMPORT                        R4 K5 [require]
       33 GETTABLEKS                       R5 R0 K15 ["RhodiumTests"]
       35 GETTABLEKS                       R5 R5 K16 ["createMockContext"]
       37 CALL                             R4 1 1
       38 NEWTABLE                         R5 8 0
       40 SETTABLEKS                       R5 R5 K17 ["__index"]
       42 DUPCLOSURE                       R6 K18 [PROTO_1]
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R4
       46 SETTABLEKS                       R6 R5 K19 ["new"]
       48 DUPCLOSURE                       R6 K20 [PROTO_2]
       49 SETTABLEKS                       R6 R5 K21 ["getLayerCollector"]
       51 DUPCLOSURE                       R6 K22 [PROTO_3]
       52 CAPTURE                          VAL R3
       53 DUPCLOSURE                       R7 K23 [PROTO_4]
       54 CAPTURE                          VAL R3
       55 DUPCLOSURE                       R8 K24 [PROTO_6]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R8 R5 K25 ["clickElement"]
       60 DUPCLOSURE                       R8 K26 [PROTO_7]
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R7
       63 SETTABLEKS                       R8 R5 K27 ["clickPath"]
       65 DUPCLOSURE                       R8 K28 [PROTO_8]
       66 SETTABLEKS                       R8 R5 K29 ["clickInstance"]
       68 DUPCLOSURE                       R8 K30 [PROTO_10]
       69 CAPTURE                          VAL R1
       70 SETTABLEKS                       R8 R5 K31 ["destroy"]
       72 RETURN                           R5 1
