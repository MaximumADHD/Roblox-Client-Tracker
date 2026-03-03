PROTO_0:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["rbxasset://textures/"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+6]
        6 GETIMPORT                        R1 K2 [string.find]
        8 MOVE                             R2 R0
        9 LOADK                            R3 K4 ["rbxasset://SystemCursors/"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+1]
       12 RETURN                           R0 1
       13 LOADK                            R2 K4 ["rbxasset://SystemCursors/"]
       14 MOVE                             R3 R0
       15 CONCAT                           R1 R2 R3
       16 RETURN                           R1 1

PROTO_1:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["Mouse.new expects a PluginMouse instance."]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 DUPTABLE                         R1 K5 [{"mouse", "cursors"}]
        8 SETTABLEKS                       R0 R1 K3 ["mouse"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K4 ["cursors"]
       14 GETUPVAL                         R4 0
       15 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       17 MOVE                             R3 R1
       18 GETIMPORT                        R2 K7 [setmetatable]
       20 CALL                             R2 2 0
       21 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["mouse"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["cursors"]
        2 LOADK                            R2 K1 [-∞]
        3 GETIMPORT                        R3 K3 [pairs]
        5 MOVE                             R4 R1
        6 CALL                             R3 1 3
        7 FORGPREP_NEXT                    R3
        8 JUMPIFNOTLT                      R2 R6 ; [+2]
       10 MOVE                             R2 R6
       11 FORGLOOP                         R3 2 ; [-4]
       13 GETTABLE                         R3 R1 R2
       14 JUMPIFNOT                        R3 ; [+11]
       15 LENGTH                           R4 R3
       16 LOADN                            R5 0
       17 JUMPIFNOTLT                      R5 R4 ; [+8]
       19 GETTABLEKS                       R4 R0 K4 ["mouse"]
       21 LENGTH                           R6 R3
       22 GETTABLE                         R5 R3 R6
       23 SETTABLEKS                       R5 R4 K5 ["Icon"]
       25 RETURN                           R0 0
       26 GETTABLEKS                       R4 R0 K4 ["mouse"]
       28 GETUPVAL                         R5 0
       29 SETTABLEKS                       R5 R4 K5 ["Icon"]
       31 RETURN                           R0 0

PROTO_4:
        0 ORK                              R2 R2 K0 [1]
        1 GETTABLEKS                       R4 R0 K1 ["cursors"]
        3 GETTABLE                         R3 R4 R2
        4 JUMPIF                           R3 ; [+2]
        5 NEWTABLE                         R3 0 0
        7 GETIMPORT                        R7 K4 [string.find]
        9 MOVE                             R8 R1
       10 LOADK                            R9 K5 ["rbxasset://textures/"]
       11 CALL                             R7 2 1
       12 JUMPIF                           R7 ; [+6]
       13 GETIMPORT                        R7 K4 [string.find]
       15 MOVE                             R8 R1
       16 LOADK                            R9 K6 ["rbxasset://SystemCursors/"]
       17 CALL                             R7 2 1
       18 JUMPIFNOT                        R7 ; [+2]
       19 MOVE                             R6 R1
       20 JUMP                             ; [+4]
       21 LOADK                            R7 K6 ["rbxasset://SystemCursors/"]
       22 MOVE                             R8 R1
       23 CONCAT                           R6 R7 R8
       24 JUMP                             ; [0]
       25 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       27 MOVE                             R5 R3
       28 GETIMPORT                        R4 K9 [table.insert]
       30 CALL                             R4 2 0
       31 GETTABLEKS                       R4 R0 K1 ["cursors"]
       33 SETTABLE                         R3 R4 R2
       34 NAMECALL                         R4 R0 K10 ["__updateCursor"]
       36 CALL                             R4 1 0
       37 RETURN                           R0 0

PROTO_5:
        0 ORK                              R1 R1 K0 [1]
        1 GETTABLEKS                       R3 R0 K1 ["cursors"]
        3 GETTABLE                         R2 R3 R1
        4 JUMPIFNOT                        R2 ; [+15]
        5 GETIMPORT                        R3 K4 [table.remove]
        7 MOVE                             R4 R2
        8 LENGTH                           R5 R2
        9 CALL                             R3 2 0
       10 LENGTH                           R3 R2
       11 JUMPIFNOTEQKN                    R3 K5 [0] ; [+5]
       13 GETTABLEKS                       R3 R0 K1 ["cursors"]
       15 LOADNIL                          R4
       16 SETTABLE                         R4 R3 R1
       17 NAMECALL                         R3 R0 K6 ["__updateCursor"]
       19 CALL                             R3 1 0
       20 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["cursors"]
        4 GETTABLEKS                       R1 R0 K1 ["mouse"]
        6 GETUPVAL                         R2 0
        7 SETTABLEKS                       R2 R1 K2 ["Icon"]
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["DevFrameworkDefaultMouseCursorFix"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 1
        8 JUMPIFNOT                        R0 ; [+2]
        9 LOADK                            R1 K4 ["rbxasset://SystemCursors/Arrow"]
       10 JUMP                             ; [+1]
       11 LOADK                            R1 K5 [""]
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 GETIMPORT                        R4 K8 [script]
       15 LOADK                            R6 K9 ["UI"]
       16 NAMECALL                         R4 R4 K10 ["FindFirstAncestor"]
       18 CALL                             R4 2 1
       19 GETTABLEKS                       R3 R4 K11 ["Parent"]
       21 GETIMPORT                        R4 K13 [require]
       23 GETTABLEKS                       R7 R3 K9 ["UI"]
       25 GETTABLEKS                       R6 R7 K14 ["ContextServices"]
       27 GETTABLEKS                       R5 R6 K15 ["ContextItem"]
       29 CALL                             R4 1 1
       30 LOADK                            R7 K16 ["Mouse"]
       31 NAMECALL                         R5 R4 K17 ["extend"]
       33 CALL                             R5 2 1
       34 DUPCLOSURE                       R6 K18 [PROTO_1]
       35 CAPTURE                          VAL R5
       36 SETTABLEKS                       R6 R5 K19 ["new"]
       38 DUPCLOSURE                       R6 K20 [PROTO_2]
       39 SETTABLEKS                       R6 R5 K21 ["get"]
       41 DUPCLOSURE                       R6 K22 [PROTO_3]
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R6 R5 K23 ["__updateCursor"]
       45 DUPCLOSURE                       R6 K24 [PROTO_4]
       46 SETTABLEKS                       R6 R5 K25 ["__pushCursor"]
       48 DUPCLOSURE                       R6 K26 [PROTO_5]
       49 SETTABLEKS                       R6 R5 K27 ["__popCursor"]
       51 DUPCLOSURE                       R6 K28 [PROTO_6]
       52 CAPTURE                          VAL R1
       53 SETTABLEKS                       R6 R5 K29 ["__resetCursor"]
       55 RETURN                           R5 1
