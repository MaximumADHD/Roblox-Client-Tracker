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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["JSONDecode"]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 FASTPCALL                        pcall 3 ; [+2]
        6 GETIMPORT                        R1 K2 [pcall]
        8 CALL                             R1 3 2
        9 JUMPIFNOT                        R1 ; [+11]
       10 FASTCALL1                        TYPE R2 ; [+3]
       11 MOVE                             R4 R2
       12 GETIMPORT                        R3 K4 [type]
       14 CALL                             R3 1 1
       15 JUMPIFNOTEQKS                    R3 K5 ["table"] ; [+5]
       17 GETTABLEKS                       R3 R2 K6 ["IsComplete"]
       19 JUMPIFEQKB                       R3 TRUE ; [+2]
       21 RETURN                           R0 0
       22 GETTABLEKS                       R3 R2 K7 ["AssetId"]
       24 FASTCALL1                        TYPEOF R3 ; [+3]
       25 MOVE                             R5 R3
       26 GETIMPORT                        R4 K9 [typeof]
       28 CALL                             R4 1 1
       29 JUMPIFEQKS                       R4 K10 ["number"] ; [+2]
       31 RETURN                           R0 0
       32 GETUPVAL                         R5 1
       33 GETTABLE                         R4 R5 R3
       34 JUMPIF                           R4 ; [+1]
       35 RETURN                           R0 0
       36 GETUPVAL                         R6 1
       37 GETTABLE                         R5 R6 R3
       38 JUMPIF                           R5 ; [+1]
       39 JUMP                             ; [+6]
       40 GETUPVAL                         R5 1
       41 LOADNIL                          R6
       42 SETTABLE                         R6 R5 R3
       43 GETUPVAL                         R5 2
       44 SUBK                             R5 R5 K11 [1]
       45 SETUPVAL                         R5 2
       46 GETUPVAL                         R5 2
       47 JUMPIFNOTEQKN                    R5 K12 [0] ; [+4]
       49 GETUPVAL                         R5 3
       50 CALL                             R5 0 0
       51 RETURN                           R0 0
       52 RETURN                           R0 0

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
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U6
       18 FASTPCALL                        pcall 1 ; [+2]
       19 GETIMPORT                        R3 K3 [pcall]
       21 CALL                             R3 1 2
       22 JUMPIF                           R3 ; [+15]
       23 GETUPVAL                         R5 7
       24 JUMPIFNOT                        R5 ; [+2]
       25 LOADK                            R5 K4 ["ShareFailed"]
       26 SETUPVAL                         R5 8
       27 GETUPVAL                         R5 1
       28 JUMPIFNOT                        R5 ; [+6]
       29 GETUPVAL                         R5 1
       30 NAMECALL                         R5 R5 K5 ["Disconnect"]
       32 CALL                             R5 1 0
       33 LOADNIL                          R5
       34 SETUPVAL                         R5 1
       35 MOVE                             R5 R0
       36 CALL                             R5 0 0
       37 RETURN                           R0 0
       38 LENGTH                           R5 R4
       39 JUMPIFEQKN                       R5 K6 [0] ; [+32]
       41 GETIMPORT                        R5 K8 [warn]
       43 LOADK                            R6 K9 ["Failed to grant universe access to assetIds: %*"]
       44 GETIMPORT                        R8 K12 [table.concat]
       46 MOVE                             R9 R4
       47 LOADK                            R10 K13 [", "]
       48 CALL                             R8 2 1
       49 NAMECALL                         R6 R6 K14 ["format"]
       51 CALL                             R6 2 1
       52 CALL                             R5 1 0
       53 MOVE                             R5 R4
       54 LOADNIL                          R6
       55 LOADNIL                          R7
       56 FORGPREP                         R5
       57 GETUPVAL                         R11 4
       58 GETTABLE                         R10 R11 R9
       59 JUMPIF                           R10 ; [+1]
       60 JUMP                             ; [+9]
       61 GETUPVAL                         R10 4
       62 LOADNIL                          R11
       63 SETTABLE                         R11 R10 R9
       64 GETUPVAL                         R10 9
       65 LOADB                            R11 1
       66 SETTABLE                         R11 R10 R9
       67 GETUPVAL                         R10 5
       68 SUBK                             R10 R10 K15 [1]
       69 SETUPVAL                         R10 5
       70 FORGLOOP                         R5 2 ; [-14]
       72 GETUPVAL                         R5 6
       73 LOADNIL                          R6
       74 LOADNIL                          R7
       75 FORGPREP                         R5
       76 GETUPVAL                         R11 10
       77 GETTABLE                         R10 R11 R8
       78 JUMPIFNOT                        R10 ; [+14]
       79 GETIMPORT                        R11 K19 [Enum.AssetType.Model]
       81 JUMPIFEQ                         R10 R11 ; [+11]
       83 GETUPVAL                         R12 4
       84 GETTABLE                         R11 R12 R9
       85 JUMPIF                           R11 ; [+1]
       86 JUMP                             ; [+6]
       87 GETUPVAL                         R11 4
       88 LOADNIL                          R12
       89 SETTABLE                         R12 R11 R9
       90 GETUPVAL                         R11 5
       91 SUBK                             R11 R11 K15 [1]
       92 SETUPVAL                         R11 5
       93 FORGLOOP                         R5 2 ; [-18]
       95 GETUPVAL                         R5 7
       96 JUMPIFNOT                        R5 ; [+7]
       97 GETUPVAL                         R6 5
       98 LOADN                            R7 0
       99 JUMPIFLT                         R7 R6 ; [+2]
      101 LOADB                            R5 0 +1
      102 LOADB                            R5 1
      103 SETUPVAL                         R5 11
      104 GETUPVAL                         R5 5
      105 JUMPIFNOTEQKN                    R5 K6 [0] ; [+11]
      107 GETUPVAL                         R5 1
      108 JUMPIFNOT                        R5 ; [+6]
      109 GETUPVAL                         R5 1
      110 NAMECALL                         R5 R5 K5 ["Disconnect"]
      112 CALL                             R5 1 0
      113 LOADNIL                          R5
      114 SETUPVAL                         R5 1
      115 MOVE                             R5 R0
      116 CALL                             R5 0 0
      117 RETURN                           R0 0

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
