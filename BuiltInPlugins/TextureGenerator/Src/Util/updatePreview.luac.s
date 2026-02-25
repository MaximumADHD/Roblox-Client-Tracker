PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["previewId"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["previewId"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["previewAngle"]
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R3 R5 R4
        4 GETTABLEKS                       R5 R1 K0 ["previewAngle"]
        6 GETUPVAL                         R6 0
        7 GETTABLE                         R4 R6 R5
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETTABLEKS                       R4 R1 K3 ["uuid"]
        4 GETTABLE                         R3 R0 R4
        5 CALL                             R2 1 1
        6 MOVE                             R3 R1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 JUMPIFEQKS                       R6 K3 ["uuid"] ; [+4]
       12 JUMPIFEQKS                       R6 K4 ["previewId"] ; [+2]
       14 SETTABLE                         R7 R2 R6
       15 FORGLOOP                         R3 2 ; [-6]
       17 GETTABLEKS                       R3 R1 K4 ["previewId"]
       19 JUMPIFEQKNIL                     R3 ; [+60]
       21 GETTABLEKS                       R3 R2 K5 ["allPreviews"]
       23 JUMPIFNOTEQKNIL                  R3 ; [+17]
       25 NEWTABLE                         R3 0 1
       27 DUPTABLE                         R4 K7 [{"previewId", "status"}]
       28 GETTABLEKS                       R5 R1 K4 ["previewId"]
       30 SETTABLEKS                       R5 R4 K4 ["previewId"]
       32 GETTABLEKS                       R5 R1 K6 ["status"]
       34 SETTABLEKS                       R5 R4 K6 ["status"]
       36 SETLIST                          R3 R4 1 [1]
       38 SETTABLEKS                       R3 R2 K5 ["allPreviews"]
       40 JUMP                             ; [+47]
       41 GETIMPORT                        R3 K2 [table.clone]
       43 GETTABLEKS                       R4 R2 K5 ["allPreviews"]
       45 CALL                             R3 1 1
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R4 R5 K8 ["find"]
       49 MOVE                             R5 R3
       50 NEWCLOSURE                       R6 P0
       51 CAPTURE                          VAL R1
       52 CALL                             R4 2 1
       53 JUMPIFNOT                        R4 ; [+2]
       54 SETTABLE                         R1 R3 R4
       55 JUMP                             ; [+7]
       56 FASTCALL2                        TABLE_INSERT R3 R1 ; [+5]
       58 MOVE                             R6 R3
       59 MOVE                             R7 R1
       60 GETIMPORT                        R5 K10 [table.insert]
       62 CALL                             R5 2 0
       63 GETIMPORT                        R5 K12 [table.sort]
       65 MOVE                             R6 R3
       66 DUPCLOSURE                       R7 K13 [PROTO_2]
       67 CAPTURE                          UPVAL U1
       68 CALL                             R5 2 0
       69 GETUPVAL                         R5 2
       70 CALL                             R5 0 1
       71 JUMPIFNOT                        R5 ; [+5]
       72 GETIMPORT                        R5 K15 [print]
       74 LOADK                            R6 K16 ["all previews"]
       75 MOVE                             R7 R3
       76 CALL                             R5 2 0
       77 SETTABLEKS                       R3 R2 K5 ["allPreviews"]
       79 JUMP                             ; [+8]
       80 GETTABLEKS                       R3 R2 K5 ["allPreviews"]
       82 JUMPIFNOTEQKNIL                  R3 ; [+5]
       84 NEWTABLE                         R3 0 0
       86 SETTABLEKS                       R3 R2 K5 ["allPreviews"]
       88 GETTABLEKS                       R3 R1 K3 ["uuid"]
       90 SETTABLE                         R2 R0 R3
       91 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagDebugTextureGeneratorLogging"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Dash"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R5 K11 ["Types"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 4 0
       32 LOADN                            R5 1
       33 SETTABLEKS                       R5 R4 K12 ["PreviewFront"]
       35 LOADN                            R5 2
       36 SETTABLEKS                       R5 R4 K13 ["Preview90"]
       38 LOADN                            R5 3
       39 SETTABLEKS                       R5 R4 K14 ["Preview180"]
       41 LOADN                            R5 4
       42 SETTABLEKS                       R5 R4 K15 ["Preview270"]
       44 DUPCLOSURE                       R5 K16 [PROTO_0]
       45 CAPTURE                          VAL R4
       46 DUPCLOSURE                       R6 K17 [PROTO_3]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R1
       50 RETURN                           R6 1
