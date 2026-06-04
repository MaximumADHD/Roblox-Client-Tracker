PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["handlers"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 LOADNIL                          R1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["getFFlagSceneAnalysisBugfixesMay2026"]
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R0 ; [+32]
       11 GETIMPORT                        R3 K3 [pcall]
       13 MOVE                             R4 R0
       14 GETUPVAL                         R5 3
       15 CALL                             R3 2 2
       16 JUMPIFNOT                        R2 ; [+13]
       17 JUMPIFNOT                        R3 ; [+2]
       18 MOVE                             R1 R4
       19 JUMP                             ; [+34]
       20 DUPTABLE                         R5 K5 [{"error"}]
       21 FASTCALL1                        TOSTRING R4 ; [+3]
       22 MOVE                             R7 R4
       23 GETIMPORT                        R6 K7 [tostring]
       25 CALL                             R6 1 1
       26 SETTABLEKS                       R6 R5 K4 ["error"]
       28 MOVE                             R1 R5
       29 JUMP                             ; [+24]
       30 JUMPIFNOT                        R3 ; [+2]
       31 MOVE                             R5 R4
       32 JUMPIF                           R5 ; [+8]
       33 DUPTABLE                         R5 K5 [{"error"}]
       34 FASTCALL1                        TOSTRING R4 ; [+3]
       35 MOVE                             R7 R4
       36 GETIMPORT                        R6 K7 [tostring]
       38 CALL                             R6 1 1
       39 SETTABLEKS                       R6 R5 K4 ["error"]
       41 MOVE                             R1 R5
       42 JUMP                             ; [+11]
       43 DUPTABLE                         R3 K5 [{"error"}]
       44 LOADK                            R5 K8 ["Unknown method: "]
       45 GETUPVAL                         R7 1
       46 FASTCALL1                        TOSTRING R7 ; [+2]
       47 GETIMPORT                        R6 K7 [tostring]
       49 CALL                             R6 1 1
       50 CONCAT                           R4 R5 R6
       51 SETTABLEKS                       R4 R3 K4 ["error"]
       53 MOVE                             R1 R3
       54 GETUPVAL                         R3 4
       55 LOADK                            R5 K9 ["DeliverResponse"]
       56 GETUPVAL                         R6 5
       57 MOVE                             R7 R1
       58 NAMECALL                         R3 R3 K10 ["Invoke"]
       60 CALL                             R3 4 0
       61 JUMPIFNOT                        R2 ; [+16]
       62 FASTCALL1                        TYPE R1 ; [+3]
       63 MOVE                             R4 R1
       64 GETIMPORT                        R3 K12 [type]
       66 CALL                             R3 1 1
       67 JUMPIFNOTEQKS                    R3 K13 ["table"] ; [+18]
       69 GETTABLEKS                       R3 R1 K4 ["error"]
       71 JUMPIFNOT                        R3 ; [+14]
       72 GETIMPORT                        R3 K15 [warn]
       74 GETTABLEKS                       R4 R1 K4 ["error"]
       76 CALL                             R3 1 0
       77 RETURN                           R0 0
       78 GETTABLEKS                       R3 R1 K4 ["error"]
       80 JUMPIFNOT                        R3 ; [+5]
       81 GETIMPORT                        R3 K15 [warn]
       83 GETTABLEKS                       R4 R1 K4 ["error"]
       85 CALL                             R3 1 0
       86 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R3 K2 [task.spawn]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 4 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["plugin"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K3 ["handlers"]
       14 LOADK                            R4 K4 ["PluginBridgeRequest"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R0
       19 NAMECALL                         R2 R0 K5 ["OnInvoke"]
       21 CALL                             R2 3 1
       22 SETTABLEKS                       R2 R1 K6 ["connection"]
       24 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["connection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 FASTCALL1                        TYPE R2 ; [+3]
        1 MOVE                             R6 R2
        2 GETIMPORT                        R5 K1 [type]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["function"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["Expected a function"]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 GETTABLEKS                       R3 R0 K6 ["handlers"]
       17 SETTABLE                         R2 R3 R1
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 4 0
       18 SETTABLEKS                       R2 R2 K9 ["__index"]
       20 DUPCLOSURE                       R3 K10 [PROTO_2]
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R3 R2 K11 ["new"]
       25 DUPCLOSURE                       R3 K12 [PROTO_3]
       26 SETTABLEKS                       R3 R2 K13 ["Disconnect"]
       28 DUPCLOSURE                       R3 K14 [PROTO_4]
       29 SETTABLEKS                       R3 R2 K15 ["Bind"]
       31 RETURN                           R2 1
