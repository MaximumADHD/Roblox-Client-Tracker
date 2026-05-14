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
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+3]
        7 MOVE                             R1 R0
        8 JUMP                             ; [+3]
        9 NAMECALL                         R1 R0 K3 ["toString"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K4 ["XPath"]
       15 GETTABLEKS                       R2 R2 K5 ["new"]
       17 LOADK                            R4 K6 ["game.CoreGui.TextureGenerator.%*"]
       18 MOVE                             R6 R1
       19 NAMECALL                         R4 R4 K7 ["format"]
       21 CALL                             R4 2 1
       22 MOVE                             R3 R4
       23 CALL                             R2 1 -1
       24 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Element"]
        3 GETTABLEKS                       R1 R1 K1 ["new"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_5:
        0 LOADNIL                          R1
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["XPath"]
       11 GETTABLEKS                       R2 R2 K4 ["new"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 JUMP                             ; [+1]
       16 MOVE                             R2 R0
       17 NAMECALL                         R3 R2 K5 ["parent"]
       19 CALL                             R3 1 1
       20 NAMECALL                         R4 R3 K6 ["toString"]
       22 CALL                             R4 1 1
       23 NAMECALL                         R5 R2 K6 ["toString"]
       25 CALL                             R5 1 1
       26 JUMPIFEQ                         R4 R5 ; [+23]
       28 LOADN                            R7 0
       29 NAMECALL                         R5 R3 K7 ["setWait"]
       31 CALL                             R5 2 1
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K8 ["Element"]
       35 GETTABLEKS                       R6 R6 K4 ["new"]
       37 GETUPVAL                         R7 1
       38 MOVE                             R8 R5
       39 CALL                             R7 1 -1
       40 CALL                             R6 -1 1
       41 MOVE                             R4 R6
       42 NAMECALL                         R4 R4 K9 ["getRbxInstance"]
       44 CALL                             R4 1 1
       45 MOVE                             R1 R4
       46 JUMPIFNOTEQKNIL                  R1 ; [+3]
       48 MOVE                             R2 R3
       49 JUMPBACK                         ; [-33]
       50 NEWTABLE                         R3 0 0
       52 JUMPIFNOT                        R1 ; [+35]
       53 MOVE                             R5 R3
       54 NAMECALL                         R6 R1 K10 ["GetFullName"]
       56 CALL                             R6 1 -1
       57 FASTCALL                         TABLE_INSERT ; [+2]
       58 GETIMPORT                        R4 K13 [table.insert]
       60 CALL                             R4 -1 0
       61 FASTCALL2K                       TABLE_INSERT R3 K14 ; [+5]
       63 MOVE                             R5 R3
       64 LOADK                            R6 K14 ["Children found:"]
       65 GETIMPORT                        R4 K13 [table.insert]
       67 CALL                             R4 2 0
       68 NAMECALL                         R4 R1 K15 ["GetChildren"]
       70 CALL                             R4 1 3
       71 FORGPREP                         R4
       72 LOADK                            R12 K16 ["\t- %*"]
       73 GETTABLEKS                       R14 R8 K17 ["Name"]
       75 NAMECALL                         R12 R12 K18 ["format"]
       77 CALL                             R12 2 1
       78 MOVE                             R11 R12
       79 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       81 MOVE                             R10 R3
       82 GETIMPORT                        R9 K13 [table.insert]
       84 CALL                             R9 2 0
       85 FORGLOOP                         R4 2 ; [-14]
       87 JUMP                             ; [+7]
       88 FASTCALL2K                       TABLE_INSERT R3 K19 ; [+5]
       90 MOVE                             R5 R3
       91 LOADK                            R6 K19 ["No segment found"]
       92 GETIMPORT                        R4 K13 [table.insert]
       94 CALL                             R4 2 0
       95 GETIMPORT                        R4 K21 [table.concat]
       97 MOVE                             R5 R3
       98 LOADK                            R6 K22 ["\n"]
       99 CALL                             R4 2 -1
      100 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Element"]
        3 GETTABLEKS                       R1 R1 K1 ["new"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 1
        9 NAMECALL                         R2 R1 K2 ["getRbxInstance"]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKNIL                  R2 ; [+25]
       14 FASTCALL1                        TYPEOF R0 ; [+3]
       15 MOVE                             R5 R0
       16 GETIMPORT                        R4 K4 [typeof]
       18 CALL                             R4 1 1
       19 JUMPIFNOTEQKS                    R4 K5 ["string"] ; [+3]
       21 MOVE                             R3 R0
       22 JUMP                             ; [+3]
       23 NAMECALL                         R3 R0 K6 ["toString"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K8 [error]
       28 LOADK                            R6 K9 ["%* was not found\nClosest match: %*"]
       29 MOVE                             R8 R3
       30 GETUPVAL                         R9 2
       31 MOVE                             R10 R0
       32 CALL                             R9 1 1
       33 NAMECALL                         R6 R6 K10 ["format"]
       35 CALL                             R6 3 1
       36 MOVE                             R5 R6
       37 CALL                             R4 1 0
       38 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 NAMECALL                         R1 R0 K0 ["click"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["act"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R2 K1 [game]
        2 MOVE                             R4 R1
        3 LOADB                            R5 1
        4 NAMECALL                         R2 R2 K2 ["FindFirstChild"]
        6 CALL                             R2 3 1
        7 LOADK                            R6 K3 ["%* not found"]
        8 MOVE                             R8 R1
        9 NAMECALL                         R6 R6 K4 ["format"]
       11 CALL                             R6 2 1
       12 MOVE                             R5 R6
       13 FASTCALL2                        ASSERT R2 R5 ; [+4]
       15 MOVE                             R4 R2
       16 GETIMPORT                        R3 K6 [assert]
       18 CALL                             R3 2 0
       19 GETIMPORT                        R3 K9 [string.gsub]
       21 NAMECALL                         R4 R2 K10 ["GetFullName"]
       23 CALL                             R4 1 1
       24 LOADK                            R5 K11 ["CoreGui.TextureGenerator."]
       25 LOADK                            R6 K12 [""]
       26 CALL                             R3 3 1
       27 MOVE                             R6 R3
       28 NAMECALL                         R4 R0 K13 ["clickPath"]
       30 CALL                             R4 2 0
       31 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_root"]
        3 NAMECALL                         R0 R0 K1 ["unmount"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["_layerCollector"]
        9 NAMECALL                         R0 R0 K3 ["Destroy"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_11:
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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dev"]
       20 GETTABLEKS                       R3 R3 K9 ["Rhodium"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["RhodiumTests"]
       27 GETTABLEKS                       R4 R4 K11 ["createMockContext"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 8 0
       32 SETTABLEKS                       R4 R4 K12 ["__index"]
       34 DUPCLOSURE                       R5 K13 [PROTO_1]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R5 R4 K14 ["new"]
       40 DUPCLOSURE                       R5 K15 [PROTO_2]
       41 SETTABLEKS                       R5 R4 K16 ["getLayerCollector"]
       43 DUPCLOSURE                       R5 K17 [PROTO_3]
       44 CAPTURE                          VAL R2
       45 DUPCLOSURE                       R6 K18 [PROTO_4]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 DUPCLOSURE                       R7 K19 [PROTO_5]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R5
       51 DUPCLOSURE                       R8 K20 [PROTO_6]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R7
       55 DUPCLOSURE                       R9 K21 [PROTO_8]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R8
       58 SETTABLEKS                       R9 R4 K22 ["clickPath"]
       60 DUPCLOSURE                       R9 K23 [PROTO_9]
       61 SETTABLEKS                       R9 R4 K24 ["clickInstance"]
       63 DUPCLOSURE                       R9 K25 [PROTO_11]
       64 CAPTURE                          VAL R1
       65 SETTABLEKS                       R9 R4 K26 ["destroy"]
       67 RETURN                           R4 1
