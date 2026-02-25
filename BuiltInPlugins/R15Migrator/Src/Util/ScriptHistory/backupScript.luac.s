PROTO_0:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R4 R6 K0 ["AttributeChunkNameBase"]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R6 R0
        5 GETIMPORT                        R5 K2 [tostring]
        7 CALL                             R5 1 1
        8 CONCAT                           R3 R4 R5
        9 GETUPVAL                         R4 1
       10 MOVE                             R6 R1
       11 NAMECALL                         R4 R4 K3 ["JSONEncode"]
       13 CALL                             R4 2 1
       14 MOVE                             R7 R3
       15 MOVE                             R8 R4
       16 NAMECALL                         R5 R2 K4 ["SetAttribute"]
       18 CALL                             R5 3 0
       19 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["AttributeChunkCountName"]
        4 NAMECALL                         R1 R0 K1 ["GetAttribute"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R3 R0 K2 ["Source"]
       12 NAMECALL                         R1 R1 K3 ["SplitIntoChunks"]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K0 ["AttributeChunkCountName"]
       18 LENGTH                           R5 R1
       19 NAMECALL                         R2 R0 K4 ["SetAttribute"]
       21 CALL                             R2 3 0
       22 MOVE                             R2 R1
       23 LOADNIL                          R3
       24 LOADNIL                          R4
       25 FORGPREP                         R2
       26 DUPTABLE                         R7 K6 [{"source"}]
       27 SETTABLEKS                       R6 R7 K5 ["source"]
       29 GETUPVAL                         R11 0
       30 GETTABLEKS                       R9 R11 K7 ["AttributeChunkNameBase"]
       32 FASTCALL1                        TOSTRING R5 ; [+3]
       33 MOVE                             R11 R5
       34 GETIMPORT                        R10 K9 [tostring]
       36 CALL                             R10 1 1
       37 CONCAT                           R8 R9 R10
       38 GETUPVAL                         R9 2
       39 MOVE                             R11 R7
       40 NAMECALL                         R9 R9 K10 ["JSONEncode"]
       42 CALL                             R9 2 1
       43 MOVE                             R12 R8
       44 MOVE                             R13 R9
       45 NAMECALL                         R10 R0 K4 ["SetAttribute"]
       47 CALL                             R10 3 0
       48 FORGLOOP                         R2 2 ; [-23]
       50 GETUPVAL                         R2 1
       51 MOVE                             R4 R0
       52 NAMECALL                         R2 R2 K11 ["TrackBackup"]
       54 CALL                             R2 2 0
       55 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["R15Migrator"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R6 R1 K10 ["Src"]
       17 GETTABLEKS                       R5 R6 K11 ["Util"]
       19 GETTABLEKS                       R4 R5 K12 ["ScriptAnalysis"]
       21 GETTABLEKS                       R3 R4 K13 ["Constants"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R7 R1 K10 ["Src"]
       28 GETTABLEKS                       R6 R7 K11 ["Util"]
       30 GETTABLEKS                       R5 R6 K14 ["ScriptHistory"]
       32 GETTABLEKS                       R4 R5 K15 ["ChunkUtil"]
       34 CALL                             R3 1 1
       35 DUPCLOSURE                       R4 K16 [PROTO_0]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R0
       38 DUPCLOSURE                       R5 K17 [PROTO_1]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R0
       42 RETURN                           R5 1
