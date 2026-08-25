PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETTABLEKS                       R1 R0 K0 ["Success"]
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["eventEnd"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["BenchmarkingEvent"]
       12 GETTABLEKS                       R2 R2 K3 ["Insert"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETIMPORT                        R1 K1 [warn]
        5 LOADK                            R3 K2 ["Failed to insert assets: %*"]
        6 MOVE                             R5 R0
        7 JUMPIFNOT                        R5 ; [+2]
        8 GETTABLEKS                       R5 R0 K3 ["Errors"]
       10 NAMECALL                         R3 R3 K4 ["format"]
       12 CALL                             R3 2 1
       13 MOVE                             R2 R3
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R4 R1 K0 ["Ids"]
        2 LENGTH                           R3 R4
        3 JUMPIFNOTEQKN                    R3 K1 [0] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 CALL                             R3 0 1
        8 JUMPIFNOT                        R3 ; [+9]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["eventStart"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K3 ["BenchmarkingEvent"]
       15 GETTABLEKS                       R4 R4 K4 ["Insert"]
       17 CALL                             R3 1 0
       18 JUMPIFNOT                        R2 ; [+11]
       19 GETTABLEKS                       R4 R2 K5 ["UseAssetPosition"]
       21 JUMPIFNOT                        R4 ; [+8]
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K6 ["Types"]
       25 GETTABLEKS                       R3 R3 K7 ["InsertPositionMode"]
       27 GETTABLEKS                       R3 R3 K8 ["AssetPosition"]
       29 JUMP                             ; [+7]
       30 GETUPVAL                         R3 3
       31 GETTABLEKS                       R3 R3 K6 ["Types"]
       33 GETTABLEKS                       R3 R3 K7 ["InsertPositionMode"]
       35 GETTABLEKS                       R3 R3 K9 ["Camera"]
       37 DUPTABLE                         R4 K16 [{["GameId"], ["PositionMode"], ["SkipCameraMove"] = False, ["StudioComponents"], ["UseAnimationInstance"]}]
       38 LOADK                            R7 K10 ["GameId"]
       39 NAMECALL                         R5 R0 K17 ["GetItem"]
       41 CALL                             R5 2 1
       42 JUMPIF                           R5 ; [+4]
       43 GETIMPORT                        R5 K19 [game]
       45 GETTABLEKS                       R5 R5 K10 ["GameId"]
       47 SETTABLEKS                       R5 R4 K10 ["GameId"]
       49 SETTABLEKS                       R3 R4 K11 ["PositionMode"]
       51 DUPTABLE                         R5 K21 [{"AssetAccessController"}]
       52 LOADK                            R8 K20 ["AssetAccessController"]
       53 NAMECALL                         R6 R0 K22 ["GetPluginComponent"]
       55 CALL                             R6 2 1
       56 SETTABLEKS                       R6 R5 K20 ["AssetAccessController"]
       58 SETTABLEKS                       R5 R4 K14 ["StudioComponents"]
       60 JUMPIFEQKNIL                     R2 ; [+4]
       62 GETTABLEKS                       R5 R2 K15 ["UseAnimationInstance"]
       64 JUMPIF                           R5 ; [+1]
       65 LOADB                            R5 0
       66 SETTABLEKS                       R5 R4 K15 ["UseAnimationInstance"]
       68 GETUPVAL                         R5 3
       69 GETTABLEKS                       R5 R5 K23 ["Utils"]
       71 GETTABLEKS                       R5 R5 K24 ["createInsertAssetsPromise"]
       73 GETTABLEKS                       R6 R1 K0 ["Ids"]
       75 GETTABLEKS                       R7 R1 K6 ["Types"]
       77 GETTABLEKS                       R8 R1 K25 ["Names"]
       79 GETTABLEKS                       R9 R1 K26 ["IsPackage"]
       81 MOVE                             R10 R4
       82 CALL                             R5 5 1
       83 DUPCLOSURE                       R7 K27 [PROTO_0]
       84 CAPTURE                          UPVAL U0
       85 CAPTURE                          UPVAL U1
       86 CAPTURE                          UPVAL U2
       87 NAMECALL                         R5 R5 K28 ["andThen"]
       89 CALL                             R5 2 1
       90 DUPCLOSURE                       R7 K29 [PROTO_1]
       91 CAPTURE                          UPVAL U4
       92 NAMECALL                         R5 R5 K30 ["catch"]
       94 CALL                             R5 2 0
       95 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetInsertFramework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Analytics"]
       27 GETTABLEKS                       R4 R4 K9 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Analytics"]
       36 GETTABLEKS                       R5 R5 K11 ["Benchmarking"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Flags"]
       45 GETTABLEKS                       R6 R6 K13 ["getFFlagAmrEnableBenchmarking"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K8 ["Src"]
       52 GETTABLEKS                       R7 R7 K12 ["Flags"]
       54 GETTABLEKS                       R7 R7 K14 ["getFFlagDebugAmrOutput"]
       56 CALL                             R6 1 1
       57 DUPCLOSURE                       R7 K15 [PROTO_2]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R6
       63 RETURN                           R7 1
