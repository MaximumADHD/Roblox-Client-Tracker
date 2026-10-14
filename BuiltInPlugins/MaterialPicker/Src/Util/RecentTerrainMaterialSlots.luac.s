PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["CONFIGURATION_NAME"]
        4 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        6 CALL                             R0 2 1
        7 JUMPIFEQKNIL                     R0 ; [+8]
        9 LOADK                            R4 K2 ["Configuration"]
       10 NAMECALL                         R2 R0 K3 ["IsA"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+2]
       14 MOVE                             R1 R0
       15 RETURN                           R1 1
       16 LOADNIL                          R1
       17 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["CONFIGURATION_NAME"]
        4 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        6 CALL                             R0 2 1
        7 JUMPIFEQKNIL                     R0 ; [+10]
        9 LOADK                            R4 K2 ["Configuration"]
       10 NAMECALL                         R2 R0 K3 ["IsA"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+2]
       14 MOVE                             R1 R0
       15 RETURN                           R1 1
       16 LOADNIL                          R1
       17 RETURN                           R1 1
       18 GETIMPORT                        R1 K6 [Instance.new]
       20 LOADK                            R2 K2 ["Configuration"]
       21 CALL                             R1 1 1
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K0 ["CONFIGURATION_NAME"]
       25 SETTABLEKS                       R2 R1 K7 ["Name"]
       27 GETUPVAL                         R2 0
       28 SETTABLEKS                       R2 R1 K8 ["Parent"]
       30 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["CONFIGURATION_NAME"]
        4 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        6 CALL                             R1 2 1
        7 JUMPIFEQKNIL                     R1 ; [+8]
        9 LOADK                            R4 K2 ["Configuration"]
       10 NAMECALL                         R2 R1 K3 ["IsA"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+2]
       14 MOVE                             R0 R1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R0
       17 JUMPIFNOTEQKNIL                  R0 ; [+4]
       19 NEWTABLE                         R1 0 0
       21 RETURN                           R1 1
       22 LOADK                            R3 K4 ["RecentlyUsedTerrainSlots"]
       23 NAMECALL                         R1 R0 K5 ["GetAttribute"]
       25 CALL                             R1 2 1
       26 FASTCALL1                        TYPEOF R1 ; [+3]
       27 MOVE                             R3 R1
       28 GETIMPORT                        R2 K7 [typeof]
       30 CALL                             R2 1 1
       31 JUMPIFEQKS                       R2 K8 ["string"] ; [+4]
       33 NEWTABLE                         R2 0 0
       35 RETURN                           R2 1
       36 GETIMPORT                        R2 K10 [pcall]
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R3 R3 K11 ["JSONDecode"]
       41 GETUPVAL                         R4 2
       42 MOVE                             R5 R1
       43 CALL                             R2 3 2
       44 JUMPIFNOT                        R2 ; [+7]
       45 FASTCALL1                        TYPEOF R3 ; [+3]
       46 MOVE                             R5 R3
       47 GETIMPORT                        R4 K7 [typeof]
       49 CALL                             R4 1 1
       50 JUMPIFEQKS                       R4 K12 ["table"] ; [+4]
       52 NEWTABLE                         R4 0 0
       54 RETURN                           R4 1
       55 NEWTABLE                         R4 0 0
       57 NEWTABLE                         R5 0 0
       59 MOVE                             R6 R3
       60 LOADNIL                          R7
       61 LOADNIL                          R8
       62 FORGPREP                         R6
       63 FASTCALL1                        TYPE R10 ; [+3]
       64 MOVE                             R12 R10
       65 GETIMPORT                        R11 K14 [type]
       67 CALL                             R11 1 1
       68 JUMPIFNOTEQKS                    R11 K15 ["number"] ; [+21]
       70 MODK                             R11 R10 K16 [1]
       71 JUMPIFNOTEQKN                    R11 K17 [0] ; [+18]
       73 LOADN                            R11 0
       74 JUMPIFNOTLE                      R11 R10 ; [+15]
       76 LOADN                            R11 64
       77 JUMPIFNOTLT                      R10 R11 ; [+12]
       79 GETTABLE                         R11 R5 R10
       80 JUMPIF                           R11 ; [+9]
       81 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       83 MOVE                             R12 R4
       84 MOVE                             R13 R10
       85 GETIMPORT                        R11 K19 [table.insert]
       87 CALL                             R11 2 0
       88 LOADB                            R11 1
       89 SETTABLE                         R11 R5 R10
       90 FORGLOOP                         R6 2 ; [-28]
       92 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["read"]
        3 CALL                             R1 0 1
        4 GETIMPORT                        R2 K3 [table.find]
        6 MOVE                             R3 R1
        7 MOVE                             R4 R0
        8 CALL                             R2 2 1
        9 JUMPIFEQKNIL                     R2 ; [+6]
       11 GETIMPORT                        R3 K5 [table.remove]
       13 MOVE                             R4 R1
       14 MOVE                             R5 R2
       15 CALL                             R3 2 0
       16 FASTCALL2                        TABLE_INSERT R1 R0 ; [+5]
       18 MOVE                             R4 R1
       19 MOVE                             R5 R0
       20 GETIMPORT                        R3 K7 [table.insert]
       22 CALL                             R3 2 0
       23 LENGTH                           R3 R1
       24 LOADN                            R4 64
       25 JUMPIFNOTLT                      R4 R3 ; [+7]
       27 GETIMPORT                        R3 K5 [table.remove]
       29 MOVE                             R4 R1
       30 LOADN                            R5 1
       31 CALL                             R3 2 0
       32 JUMPBACK                         ; [-10]
       33 GETUPVAL                         R4 1
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R6 R6 K8 ["CONFIGURATION_NAME"]
       37 NAMECALL                         R4 R4 K9 ["FindFirstChild"]
       39 CALL                             R4 2 1
       40 JUMPIFEQKNIL                     R4 ; [+10]
       42 LOADK                            R7 K10 ["Configuration"]
       43 NAMECALL                         R5 R4 K11 ["IsA"]
       45 CALL                             R5 2 1
       46 JUMPIFNOT                        R5 ; [+2]
       47 MOVE                             R3 R4
       48 JUMP                             ; [+15]
       49 LOADNIL                          R3
       50 JUMP                             ; [+13]
       51 GETIMPORT                        R5 K14 [Instance.new]
       53 LOADK                            R6 K10 ["Configuration"]
       54 CALL                             R5 1 1
       55 GETUPVAL                         R6 2
       56 GETTABLEKS                       R6 R6 K8 ["CONFIGURATION_NAME"]
       58 SETTABLEKS                       R6 R5 K15 ["Name"]
       60 GETUPVAL                         R6 1
       61 SETTABLEKS                       R6 R5 K16 ["Parent"]
       63 MOVE                             R3 R5
       64 JUMPIFEQKNIL                     R3 ; [+10]
       66 LOADK                            R6 K17 ["RecentlyUsedTerrainSlots"]
       67 GETUPVAL                         R7 3
       68 MOVE                             R9 R1
       69 NAMECALL                         R7 R7 K18 ["JSONEncode"]
       71 CALL                             R7 2 -1
       72 NAMECALL                         R4 R3 K19 ["SetAttribute"]
       74 CALL                             R4 -1 0
       75 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["ServerStorage"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 GETTABLEKS                       R4 R4 K12 ["Constants"]
       25 GETTABLEKS                       R4 R4 K13 ["TERRAIN_CUSTOM_MATERIALS"]
       27 CALL                             R3 1 1
       28 NEWTABLE                         R4 2 0
       30 DUPCLOSURE                       R5 K14 [PROTO_0]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 DUPCLOSURE                       R6 K15 [PROTO_1]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 DUPCLOSURE                       R7 K16 [PROTO_2]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R7 R4 K17 ["read"]
       42 DUPCLOSURE                       R7 K18 [PROTO_3]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R7 R4 K19 ["record"]
       49 RETURN                           R4 1
