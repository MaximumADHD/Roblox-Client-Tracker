PROTO_0:
        0 GETTABLEN                        R3 R0 1
        1 MOVE                             R4 R0
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 FORGPREP                         R4
        5 MOVE                             R11 R8
        6 NAMECALL                         R9 R1 K0 ["getRevertedScriptSource"]
        8 CALL                             R9 2 1
        9 MOVE                             R12 R8
       10 NAMECALL                         R10 R1 K1 ["getScriptInstanceFromGUID"]
       12 CALL                             R10 2 1
       13 GETUPVAL                         R11 0
       14 MOVE                             R13 R9
       15 NAMECALL                         R11 R11 K2 ["SplitIntoChunks"]
       17 CALL                             R11 2 1
       18 LENGTH                           R12 R11
       19 JUMPIFEQKN                       R12 K3 [0] ; [+28]
       21 GETUPVAL                         R12 0
       22 MOVE                             R14 R10
       23 GETTABLEN                        R15 R11 1
       24 NAMECALL                         R12 R12 K4 ["ReplaceWithChunk"]
       26 CALL                             R12 3 0
       27 LOADN                            R14 2
       28 LENGTH                           R12 R11
       29 LOADN                            R13 1
       30 FORNPREP                         R12
       31 GETUPVAL                         R15 0
       32 MOVE                             R17 R10
       33 GETTABLE                         R18 R11 R14
       34 NAMECALL                         R15 R15 K5 ["AppendChunk"]
       36 CALL                             R15 3 0
       37 FORNLOOP                         R12
       38 JUMPIFNOT                        R2 ; [+3]
       39 MOVE                             R12 R2
       40 MOVE                             R13 R8
       41 CALL                             R12 1 0
       42 JUMPIFEQ                         R8 R3 ; [+5]
       44 MOVE                             R14 R8
       45 NAMECALL                         R12 R1 K6 ["closeScriptIfOpen"]
       47 CALL                             R12 2 0
       48 FORGLOOP                         R4 2 ; [-44]
       50 JUMPIFNOT                        R3 ; [+4]
       51 MOVE                             R6 R3
       52 NAMECALL                         R4 R1 K6 ["closeScriptIfOpen"]
       54 CALL                             R4 2 0
       55 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Util"]
       13 GETTABLEKS                       R3 R4 K8 ["ScriptHistory"]
       15 GETTABLEKS                       R2 R3 K9 ["ChunkUtil"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K10 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
