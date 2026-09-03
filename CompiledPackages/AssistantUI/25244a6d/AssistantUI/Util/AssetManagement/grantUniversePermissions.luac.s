PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 SETTABLE                         R3 R2 R0
        7 JUMPIF                           R1 ; [+3]
        8 GETUPVAL                         R2 1
        9 LOADB                            R3 1
       10 SETTABLE                         R3 R2 R0
       11 GETUPVAL                         R2 2
       12 SUBK                             R2 R2 K0 [1]
       13 SETUPVAL                         R2 2
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+11]
        7 FASTCALL1                        TYPE R2 ; [+3]
        8 MOVE                             R4 R2
        9 GETIMPORT                        R3 K3 [type]
       11 CALL                             R3 1 1
       12 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+5]
       14 GETTABLEKS                       R3 R2 K5 ["IsComplete"]
       16 JUMPIFEQKB                       R3 TRUE ; [+2]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R3 R2 K6 ["AssetId"]
       21 FASTCALL1                        TYPEOF R3 ; [+3]
       22 MOVE                             R5 R3
       23 GETIMPORT                        R4 K8 [typeof]
       25 CALL                             R4 1 1
       26 JUMPIFEQKS                       R4 K9 ["number"] ; [+2]
       28 RETURN                           R0 0
       29 GETUPVAL                         R5 1
       30 GETTABLE                         R4 R5 R3
       31 JUMPIF                           R4 ; [+1]
       32 RETURN                           R0 0
       33 GETUPVAL                         R6 1
       34 GETTABLE                         R5 R6 R3
       35 JUMPIF                           R5 ; [+1]
       36 JUMP                             ; [+6]
       37 GETUPVAL                         R5 1
       38 LOADNIL                          R6
       39 SETTABLE                         R6 R5 R3
       40 GETUPVAL                         R5 2
       41 SUBK                             R5 R5 K10 [1]
       42 SETUPVAL                         R5 2
       43 GETUPVAL                         R5 2
       44 JUMPIFNOTEQKN                    R5 K11 [0] ; [+4]
       46 GETUPVAL                         R5 3
       47 CALL                             R5 0 0
       48 RETURN                           R0 0
       49 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ShareAccessToAssetsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 MOVE                             R3 R2
        1 GETUPVAL                         R4 0
        2 CALL                             R3 1 0
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K0 ["DependencyGrantProgressReceived"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R3 R3 K1 ["Connect"]
       13 CALL                             R3 2 1
       14 SETUPVAL                         R3 1
       15 GETIMPORT                        R3 K3 [pcall]
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U6
       20 CALL                             R3 1 2
       21 JUMPIF                           R3 ; [+11]
       22 GETUPVAL                         R5 1
       23 JUMPIFNOT                        R5 ; [+6]
       24 GETUPVAL                         R5 1
       25 NAMECALL                         R5 R5 K4 ["Disconnect"]
       27 CALL                             R5 1 0
       28 LOADNIL                          R5
       29 SETUPVAL                         R5 1
       30 MOVE                             R5 R0
       31 CALL                             R5 0 0
       32 RETURN                           R0 0
       33 LENGTH                           R5 R4
       34 JUMPIFEQKN                       R5 K5 [0] ; [+33]
       36 GETIMPORT                        R5 K7 [warn]
       38 LOADK                            R7 K8 ["Failed to grant universe access to assetIds: %*"]
       39 GETIMPORT                        R9 K11 [table.concat]
       41 MOVE                             R10 R4
       42 LOADK                            R11 K12 [", "]
       43 CALL                             R9 2 1
       44 NAMECALL                         R7 R7 K13 ["format"]
       46 CALL                             R7 2 1
       47 MOVE                             R6 R7
       48 CALL                             R5 1 0
       49 MOVE                             R5 R4
       50 LOADNIL                          R6
       51 LOADNIL                          R7
       52 FORGPREP                         R5
       53 GETUPVAL                         R11 4
       54 GETTABLE                         R10 R11 R9
       55 JUMPIF                           R10 ; [+1]
       56 JUMP                             ; [+9]
       57 GETUPVAL                         R10 4
       58 LOADNIL                          R11
       59 SETTABLE                         R11 R10 R9
       60 GETUPVAL                         R10 7
       61 LOADB                            R11 1
       62 SETTABLE                         R11 R10 R9
       63 GETUPVAL                         R10 5
       64 SUBK                             R10 R10 K14 [1]
       65 SETUPVAL                         R10 5
       66 FORGLOOP                         R5 2 ; [-14]
       68 GETUPVAL                         R5 6
       69 LOADNIL                          R6
       70 LOADNIL                          R7
       71 FORGPREP                         R5
       72 GETUPVAL                         R11 8
       73 GETTABLE                         R10 R11 R8
       74 JUMPIFNOT                        R10 ; [+14]
       75 GETIMPORT                        R11 K18 [Enum.AssetType.Model]
       77 JUMPIFEQ                         R10 R11 ; [+11]
       79 GETUPVAL                         R12 4
       80 GETTABLE                         R11 R12 R9
       81 JUMPIF                           R11 ; [+1]
       82 JUMP                             ; [+6]
       83 GETUPVAL                         R11 4
       84 LOADNIL                          R12
       85 SETTABLE                         R12 R11 R9
       86 GETUPVAL                         R11 5
       87 SUBK                             R11 R11 K14 [1]
       88 SETUPVAL                         R11 5
       89 FORGLOOP                         R5 2 ; [-18]
       91 GETUPVAL                         R5 5
       92 JUMPIFNOTEQKN                    R5 K5 [0] ; [+11]
       94 GETUPVAL                         R5 1
       95 JUMPIFNOT                        R5 ; [+6]
       96 GETUPVAL                         R5 1
       97 NAMECALL                         R5 R5 K4 ["Disconnect"]
       99 CALL                             R5 1 0
      100 LOADNIL                          R5
      101 SETUPVAL                         R5 1
      102 MOVE                             R5 R0
      103 CALL                             R5 0 0
      104 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Error"]
        3 JUMPIFNOT                        R1 ; [+31]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["Error"]
        7 GETTABLEKS                       R1 R1 K1 ["isKind"]
        9 JUMPIFNOT                        R1 ; [+25]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["Error"]
       13 GETTABLEKS                       R1 R1 K1 ["isKind"]
       15 MOVE                             R2 R0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["Error"]
       19 GETTABLEKS                       R3 R3 K2 ["Kind"]
       21 GETTABLEKS                       R3 R3 K3 ["TimedOut"]
       23 CALL                             R1 2 1
       24 JUMPIFNOT                        R1 ; [+10]
       25 GETIMPORT                        R1 K5 [warn]
       27 LOADK                            R3 K6 ["Dependency grants timed out after %* seconds; continuing with insertion."]
       28 GETUPVAL                         R5 1
       29 NAMECALL                         R3 R3 K7 ["format"]
       31 CALL                             R3 2 1
       32 MOVE                             R2 R3
       33 CALL                             R1 1 0
       34 RETURN                           R0 0
       35 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["collectSet"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["count"]
        8 MOVE                             R5 R3
        9 CALL                             R4 1 1
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K2 ["FIntAmrAssetDependencyGrantEventTimeout"]
       13 NEWTABLE                         R6 0 0
       15 NEWCLOSURE                       R7 P0
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R6
       18 CAPTURE                          REF R4
       19 LOADNIL                          R8
       20 NEWCLOSURE                       R9 P1
       21 CAPTURE                          REF R8
       22 GETUPVAL                         R10 2
       23 GETTABLEKS                       R10 R10 K3 ["new"]
       25 NEWCLOSURE                       R11 P2
       26 CAPTURE                          VAL R9
       27 CAPTURE                          REF R8
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R3
       31 CAPTURE                          REF R4
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R6
       34 CAPTURE                          VAL R1
       35 CALL                             R10 1 1
       36 MOVE                             R13 R5
       37 NAMECALL                         R11 R10 K4 ["timeout"]
       39 CALL                             R11 2 1
       40 NEWCLOSURE                       R13 P3
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R5
       43 NAMECALL                         R11 R11 K5 ["catch"]
       45 CALL                             R11 2 1
       46 NEWCLOSURE                       R13 P4
       47 CAPTURE                          REF R8
       48 NAMECALL                         R11 R11 K6 ["finally"]
       50 CALL                             R11 2 1
       51 NAMECALL                         R11 R11 K7 ["await"]
       53 CALL                             R11 1 0
       54 CLOSEUPVALS                      R4
       55 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Flags"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Parent"]
       29 GETTABLEKS                       R5 R5 K13 ["Promise"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K14 [PROTO_8]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R1
       37 RETURN                           R5 1
