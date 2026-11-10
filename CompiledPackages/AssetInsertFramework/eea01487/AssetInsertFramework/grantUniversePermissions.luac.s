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
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["JSONDecode"]
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R0
        7 CALL                             R1 3 2
        8 JUMPIFNOT                        R1 ; [+11]
        9 FASTCALL1                        TYPE R2 ; [+3]
       10 MOVE                             R4 R2
       11 GETIMPORT                        R3 K4 [type]
       13 CALL                             R3 1 1
       14 JUMPIFNOTEQKS                    R3 K5 ["table"] ; [+5]
       16 GETTABLEKS                       R3 R2 K6 ["IsComplete"]
       18 JUMPIFEQKB                       R3 TRUE ; [+2]
       20 RETURN                           R0 0
       21 GETTABLEKS                       R3 R2 K7 ["AssetId"]
       23 FASTCALL1                        TYPEOF R3 ; [+3]
       24 MOVE                             R5 R3
       25 GETIMPORT                        R4 K9 [typeof]
       27 CALL                             R4 1 1
       28 JUMPIFEQKS                       R4 K10 ["number"] ; [+2]
       30 RETURN                           R0 0
       31 GETUPVAL                         R5 1
       32 GETTABLE                         R4 R5 R3
       33 JUMPIF                           R4 ; [+1]
       34 RETURN                           R0 0
       35 GETUPVAL                         R6 1
       36 GETTABLE                         R5 R6 R3
       37 JUMPIF                           R5 ; [+1]
       38 JUMP                             ; [+6]
       39 GETUPVAL                         R5 1
       40 LOADNIL                          R6
       41 SETTABLE                         R6 R5 R3
       42 GETUPVAL                         R5 2
       43 SUBK                             R5 R5 K11 [1]
       44 SETUPVAL                         R5 2
       45 GETUPVAL                         R5 2
       46 JUMPIFNOTEQKN                    R5 K12 [0] ; [+4]
       48 GETUPVAL                         R5 3
       49 CALL                             R5 0 0
       50 RETURN                           R0 0
       51 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ShareAccessToAssetsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
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
       21 JUMPIF                           R3 ; [+15]
       22 GETUPVAL                         R5 7
       23 JUMPIFNOT                        R5 ; [+2]
       24 LOADK                            R5 K4 ["ShareFailed"]
       25 SETUPVAL                         R5 8
       26 GETUPVAL                         R5 1
       27 JUMPIFNOT                        R5 ; [+6]
       28 GETUPVAL                         R5 1
       29 NAMECALL                         R5 R5 K5 ["Disconnect"]
       31 CALL                             R5 1 0
       32 LOADNIL                          R5
       33 SETUPVAL                         R5 1
       34 MOVE                             R5 R0
       35 CALL                             R5 0 0
       36 RETURN                           R0 0
       37 LENGTH                           R5 R4
       38 JUMPIFEQKN                       R5 K6 [0] ; [+32]
       40 GETIMPORT                        R5 K8 [warn]
       42 LOADK                            R6 K9 ["Failed to grant universe access to assetIds: %*"]
       43 GETIMPORT                        R8 K12 [table.concat]
       45 MOVE                             R9 R4
       46 LOADK                            R10 K13 [", "]
       47 CALL                             R8 2 1
       48 NAMECALL                         R6 R6 K14 ["format"]
       50 CALL                             R6 2 1
       51 CALL                             R5 1 0
       52 MOVE                             R5 R4
       53 LOADNIL                          R6
       54 LOADNIL                          R7
       55 FORGPREP                         R5
       56 GETUPVAL                         R11 4
       57 GETTABLE                         R10 R11 R9
       58 JUMPIF                           R10 ; [+1]
       59 JUMP                             ; [+9]
       60 GETUPVAL                         R10 4
       61 LOADNIL                          R11
       62 SETTABLE                         R11 R10 R9
       63 GETUPVAL                         R10 9
       64 LOADB                            R11 1
       65 SETTABLE                         R11 R10 R9
       66 GETUPVAL                         R10 5
       67 SUBK                             R10 R10 K15 [1]
       68 SETUPVAL                         R10 5
       69 FORGLOOP                         R5 2 ; [-14]
       71 GETUPVAL                         R5 6
       72 LOADNIL                          R6
       73 LOADNIL                          R7
       74 FORGPREP                         R5
       75 GETUPVAL                         R11 10
       76 GETTABLE                         R10 R11 R8
       77 JUMPIFNOT                        R10 ; [+14]
       78 GETIMPORT                        R11 K19 [Enum.AssetType.Model]
       80 JUMPIFEQ                         R10 R11 ; [+11]
       82 GETUPVAL                         R12 4
       83 GETTABLE                         R11 R12 R9
       84 JUMPIF                           R11 ; [+1]
       85 JUMP                             ; [+6]
       86 GETUPVAL                         R11 4
       87 LOADNIL                          R12
       88 SETTABLE                         R12 R11 R9
       89 GETUPVAL                         R11 5
       90 SUBK                             R11 R11 K15 [1]
       91 SETUPVAL                         R11 5
       92 FORGLOOP                         R5 2 ; [-18]
       94 GETUPVAL                         R5 7
       95 JUMPIFNOT                        R5 ; [+7]
       96 GETUPVAL                         R6 5
       97 LOADN                            R7 0
       98 JUMPIFLT                         R7 R6 ; [+2]
      100 LOADB                            R5 0 +1
      101 LOADB                            R5 1
      102 SETUPVAL                         R5 11
      103 GETUPVAL                         R5 5
      104 JUMPIFNOTEQKN                    R5 K6 [0] ; [+11]
      106 GETUPVAL                         R5 1
      107 JUMPIFNOT                        R5 ; [+6]
      108 GETUPVAL                         R5 1
      109 NAMECALL                         R5 R5 K5 ["Disconnect"]
      111 CALL                             R5 1 0
      112 LOADNIL                          R5
      113 SETUPVAL                         R5 1
      114 MOVE                             R5 R0
      115 CALL                             R5 0 0
      116 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Error"]
        3 JUMPIFNOT                        R1 ; [+34]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["Error"]
        7 GETTABLEKS                       R1 R1 K1 ["isKind"]
        9 JUMPIFNOT                        R1 ; [+28]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["Error"]
       13 GETTABLEKS                       R1 R1 K1 ["isKind"]
       15 MOVE                             R2 R0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["Error"]
       19 GETTABLEKS                       R3 R3 K2 ["Kind"]
       21 GETTABLEKS                       R3 R3 K3 ["TimedOut"]
       23 CALL                             R1 2 1
       24 JUMPIFNOT                        R1 ; [+13]
       25 GETUPVAL                         R1 1
       26 JUMPIFNOT                        R1 ; [+2]
       27 LOADK                            R1 K3 ["TimedOut"]
       28 SETUPVAL                         R1 2
       29 GETIMPORT                        R1 K5 [warn]
       31 LOADK                            R2 K6 ["Dependency grants timed out after %* seconds; continuing with insertion."]
       32 GETUPVAL                         R4 3
       33 NAMECALL                         R2 R2 K7 ["format"]
       35 CALL                             R2 2 1
       36 CALL                             R1 1 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R1 1
       39 JUMPIFNOT                        R1 ; [+2]
       40 LOADK                            R1 K8 ["Failed"]
       41 SETUPVAL                         R1 2
       42 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["collectSet"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["count"]
        8 MOVE                             R5 R3
        9 CALL                             R4 1 1
       10 GETUPVAL                         R5 1
       11 CALL                             R5 0 1
       12 NEWTABLE                         R6 0 0
       14 GETUPVAL                         R7 2
       15 CALL                             R7 0 1
       16 JUMPIFNOT                        R7 ; [+4]
       17 GETIMPORT                        R8 K4 [os.clock]
       19 CALL                             R8 0 1
       20 JUMP                             ; [+1]
       21 LOADN                            R8 0
       22 LOADK                            R9 K5 ["Ok"]
       23 LOADB                            R10 0
       24 NEWCLOSURE                       R11 P0
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R6
       27 CAPTURE                          REF R4
       28 LOADNIL                          R12
       29 NEWCLOSURE                       R13 P1
       30 CAPTURE                          REF R12
       31 GETUPVAL                         R14 3
       32 GETTABLEKS                       R14 R14 K6 ["new"]
       34 NEWCLOSURE                       R15 P2
       35 CAPTURE                          VAL R13
       36 CAPTURE                          REF R12
       37 CAPTURE                          VAL R2
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          VAL R3
       40 CAPTURE                          REF R4
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R7
       43 CAPTURE                          REF R9
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R1
       46 CAPTURE                          REF R10
       47 CALL                             R14 1 1
       48 MOVE                             R17 R5
       49 NAMECALL                         R15 R14 K7 ["timeout"]
       51 CALL                             R15 2 1
       52 NEWCLOSURE                       R17 P3
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          VAL R7
       55 CAPTURE                          REF R9
       56 CAPTURE                          VAL R5
       57 NAMECALL                         R15 R15 K8 ["catch"]
       59 CALL                             R15 2 1
       60 NEWCLOSURE                       R17 P4
       61 CAPTURE                          REF R12
       62 NAMECALL                         R15 R15 K9 ["finally"]
       64 CALL                             R15 2 1
       65 NAMECALL                         R15 R15 K10 ["await"]
       67 CALL                             R15 1 0
       68 JUMPIFNOT                        R7 ; [+16]
       69 LENGTH                           R15 R0
       70 LOADN                            R16 0
       71 JUMPIFNOTLT                      R16 R15 ; [+13]
       73 GETUPVAL                         R15 5
       74 LOADK                            R16 K11 ["GrantUniversePermissions"]
       75 GETIMPORT                        R18 K4 [os.clock]
       77 CALL                             R18 0 1
       78 SUB                              R17 R18 R8
       79 DUPTABLE                         R18 K14 [{"outcome", "waitedForDependencies"}]
       80 SETTABLEKS                       R9 R18 K12 ["outcome"]
       82 SETTABLEKS                       R10 R18 K13 ["waitedForDependencies"]
       84 CALL                             R15 3 0
       85 CLOSEUPVALS                      R4
       86 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETIMPORT                        R2 K8 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Parent"]
       15 GETTABLEKS                       R3 R3 K9 ["Dash"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R4 R1 K6 ["Parent"]
       22 GETTABLEKS                       R4 R4 K10 ["Promise"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K8 [require]
       27 GETTABLEKS                       R5 R1 K11 ["Utils"]
       29 GETTABLEKS                       R5 R5 K12 ["sendLatencyStat"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K8 [require]
       34 GETTABLEKS                       R6 R1 K13 ["Flags"]
       36 GETTABLEKS                       R6 R6 K14 ["getFFlagAinGrantLatencyTelemetry"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K8 [require]
       41 GETTABLEKS                       R7 R1 K13 ["Flags"]
       43 GETTABLEKS                       R7 R7 K15 ["getFIntAmrAssetDependencyGrantEventTimeout"]
       45 CALL                             R6 1 1
       46 DUPCLOSURE                       R7 K16 [PROTO_7]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R4
       53 RETURN                           R7 1
