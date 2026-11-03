PROTO_0:
        0 LOADB                            R2 1
        1 JUMPIFEQKNIL                     R0 ; [+10]
        3 FASTCALL1                        TYPE R0 ; [+3]
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K1 [type]
        7 CALL                             R3 1 1
        8 JUMPIFEQ                         R3 R1 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["string"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 LOADN                            R1 0
       10 MOVE                             R2 R0
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 ADDK                             R1 R1 K3 [1]
       15 FORGLOOP                         R2 1 ; [-2]
       17 LOADB                            R2 0
       18 LENGTH                           R3 R0
       19 JUMPIFNOTEQ                      R1 R3 ; [+7]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K4 ["all"]
       24 MOVE                             R3 R0
       25 DUPCLOSURE                       R4 K5 [PROTO_1]
       26 CALL                             R2 2 1
       27 RETURN                           R2 1

PROTO_3:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+6]
        8 MODK                             R2 R0 K3 [1]
        9 JUMPIFEQKN                       R2 K4 [0] ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_4:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+83]
        7 GETTABLEKS                       R2 R0 K3 ["Source"]
        9 FASTCALL1                        TYPE R2 ; [+2]
       10 GETIMPORT                        R1 K1 [type]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K4 ["string"] ; [+75]
       15 GETTABLEKS                       R1 R0 K5 ["ItemTypes"]
       17 JUMPIFEQKNIL                     R1 ; [+6]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R2 R0 K5 ["ItemTypes"]
       22 CALL                             R1 1 1
       23 JUMPIFNOT                        R1 ; [+65]
       24 GETTABLEKS                       R2 R0 K6 ["IsPackage"]
       26 LOADB                            R1 1
       27 JUMPIFEQKNIL                     R2 ; [+10]
       29 FASTCALL1                        TYPE R2 ; [+3]
       30 MOVE                             R4 R2
       31 GETIMPORT                        R3 K1 [type]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K7 ["boolean"] ; [+2]
       36 LOADB                            R1 0 +1
       37 LOADB                            R1 1
       38 JUMPIFNOT                        R1 ; [+50]
       39 GETTABLEKS                       R2 R0 K8 ["ScopeType"]
       41 LOADB                            R1 1
       42 JUMPIFEQKNIL                     R2 ; [+10]
       44 FASTCALL1                        TYPE R2 ; [+3]
       45 MOVE                             R4 R2
       46 GETIMPORT                        R3 K1 [type]
       48 CALL                             R3 1 1
       49 JUMPIFEQKS                       R3 K4 ["string"] ; [+2]
       51 LOADB                            R1 0 +1
       52 LOADB                            R1 1
       53 JUMPIFNOT                        R1 ; [+35]
       54 GETTABLEKS                       R1 R0 K9 ["ScopeId"]
       56 JUMPIFEQKNIL                     R1 ; [+17]
       58 GETTABLEKS                       R2 R0 K9 ["ScopeId"]
       60 LOADB                            R1 0
       61 FASTCALL1                        TYPE R2 ; [+3]
       62 MOVE                             R4 R2
       63 GETIMPORT                        R3 K1 [type]
       65 CALL                             R3 1 1
       66 JUMPIFNOTEQKS                    R3 K10 ["number"] ; [+6]
       68 MODK                             R3 R2 K11 [1]
       69 JUMPIFEQKN                       R3 K12 [0] ; [+2]
       71 LOADB                            R1 0 +1
       72 LOADB                            R1 1
       73 JUMPIFNOT                        R1 ; [+15]
       74 GETTABLEKS                       R2 R0 K13 ["ViewType"]
       76 LOADB                            R1 1
       77 JUMPIFEQKNIL                     R2 ; [+10]
       79 FASTCALL1                        TYPE R2 ; [+3]
       80 MOVE                             R4 R2
       81 GETIMPORT                        R3 K1 [type]
       83 CALL                             R3 1 1
       84 JUMPIFEQKS                       R3 K4 ["string"] ; [+2]
       86 LOADB                            R1 0 +1
       87 LOADB                            R1 1
       88 JUMPIF                           R1 ; [+2]
       89 LOADNIL                          R1
       90 RETURN                           R1 1
       91 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["SharedPluginConstants"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 DUPCLOSURE                       R4 K10 [PROTO_2]
       23 CAPTURE                          VAL R1
       24 DUPCLOSURE                       R5 K11 [PROTO_3]
       25 DUPCLOSURE                       R6 K12 [PROTO_4]
       26 CAPTURE                          VAL R4
       27 RETURN                           R6 1
