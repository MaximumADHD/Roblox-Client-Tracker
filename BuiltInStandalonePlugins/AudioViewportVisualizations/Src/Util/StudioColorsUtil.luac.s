PROTO_0:
        0 GETIMPORT                        R1 K1 [settings]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R1 R1 K2 ["Studio"]
        5 GETUPVAL                         R2 0
        6 GETTABLE                         R0 R1 R2
        7 RETURN                           R0 1

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R2 K1 [pcall]
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+8]
        7 FASTCALL1                        TYPEOF R3 ; [+3]
        8 MOVE                             R5 R3
        9 GETIMPORT                        R4 K3 [typeof]
       11 CALL                             R4 1 1
       12 JUMPIFNOTEQKS                    R4 K4 ["Color3"] ; [+2]
       14 RETURN                           R3 1
       15 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R4 K0 ["Select Color"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R4
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R2 K2 [pcall]
        7 CALL                             R2 1 2
        8 JUMPIFNOT                        R2 ; [+9]
        9 FASTCALL1                        TYPEOF R3 ; [+3]
       10 MOVE                             R5 R3
       11 GETIMPORT                        R4 K4 [typeof]
       13 CALL                             R4 1 1
       14 JUMPIFNOTEQKS                    R4 K5 ["Color3"] ; [+3]
       16 MOVE                             R0 R3
       17 RETURN                           R0 1
       18 MOVE                             R0 R1
       19 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADK                            R4 K0 ["Hover Over Color"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R4
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R2 K2 [pcall]
        7 CALL                             R2 1 2
        8 JUMPIFNOT                        R2 ; [+9]
        9 FASTCALL1                        TYPEOF R3 ; [+3]
       10 MOVE                             R5 R3
       11 GETIMPORT                        R4 K4 [typeof]
       13 CALL                             R4 1 1
       14 JUMPIFNOTEQKS                    R4 K5 ["Color3"] ; [+3]
       16 MOVE                             R0 R3
       17 RETURN                           R0 1
       18 MOVE                             R0 R1
       19 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["Theme"]
        7 GETTABLEKS                       R0 R0 K4 ["Name"]
        9 RETURN                           R0 1

PROTO_5:
        0 DUPCLOSURE                       R1 K0 [PROTO_4]
        1 FASTPCALL                        pcall 1 ; [+2]
        2 GETIMPORT                        R0 K2 [pcall]
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+6]
        6 JUMPIFNOTEQKS                    R1 K3 ["Light"] ; [+5]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["Light"]
       11 RETURN                           R2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K4 ["Dark"]
       15 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Utility"]
        3 GETTABLEKS                       R0 R0 K1 ["getTokens"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["getColorMode"]
        8 CALL                             R1 0 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K3 ["Desktop"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioViewportVisualizations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Enums"]
       16 GETTABLEKS                       R2 R2 K9 ["ColorMode"]
       18 GETTABLEKS                       R3 R1 K8 ["Enums"]
       20 GETTABLEKS                       R3 R3 K10 ["Device"]
       22 NEWTABLE                         R4 4 0
       24 GETIMPORT                        R5 K13 [Color3.fromRGB]
       26 LOADN                            R6 25
       27 LOADN                            R7 153
       28 LOADN                            R8 255
       29 CALL                             R5 3 1
       30 GETIMPORT                        R6 K13 [Color3.fromRGB]
       32 LOADN                            R7 178
       33 LOADN                            R8 229
       34 LOADN                            R9 255
       35 CALL                             R6 3 1
       36 DUPCLOSURE                       R7 K14 [PROTO_1]
       37 DUPCLOSURE                       R8 K15 [PROTO_2]
       38 CAPTURE                          VAL R5
       39 SETTABLEKS                       R8 R4 K16 ["getSelectionColor"]
       41 DUPCLOSURE                       R8 K17 [PROTO_3]
       42 CAPTURE                          VAL R6
       43 SETTABLEKS                       R8 R4 K18 ["getHoverColor"]
       45 DUPCLOSURE                       R8 K19 [PROTO_5]
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R8 R4 K20 ["getColorMode"]
       49 DUPCLOSURE                       R8 K21 [PROTO_6]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 SETTABLEKS                       R8 R4 K22 ["getTokens"]
       55 RETURN                           R4 1
