PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 MOVE                             R5 R0
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 MOVE                             R12 R9
        9 NAMECALL                         R10 R1 K0 ["getScriptInstanceFromGUID"]
       11 CALL                             R10 2 1
       12 GETUPVAL                         R11 0
       13 MOVE                             R13 R10
       14 NAMECALL                         R11 R11 K1 ["GetScriptBackupChunks"]
       16 CALL                             R11 2 1
       17 JUMPIFNOT                        R11 ; [+10]
       18 GETUPVAL                         R12 0
       19 MOVE                             R14 R10
       20 MOVE                             R15 R11
       21 NAMECALL                         R12 R12 K2 ["DidSourceChange"]
       23 CALL                             R12 3 1
       24 JUMPIFNOT                        R12 ; [+3]
       25 LOADB                            R12 1
       26 SETTABLE                         R12 R3 R9
       27 SETTABLE                         R11 R4 R9
       28 FORGLOOP                         R5 2 ; [-21]
       30 GETIMPORT                        R5 K4 [next]
       32 MOVE                             R6 R4
       33 CALL                             R5 1 1
       34 MOVE                             R6 R4
       35 LOADNIL                          R7
       36 LOADNIL                          R8
       37 FORGPREP                         R6
       38 MOVE                             R13 R9
       39 NAMECALL                         R11 R1 K0 ["getScriptInstanceFromGUID"]
       41 CALL                             R11 2 1
       42 MOVE                             R14 R9
       43 NAMECALL                         R12 R1 K5 ["setRevertedScriptSource"]
       45 CALL                             R12 2 0
       46 GETUPVAL                         R12 0
       47 MOVE                             R14 R11
       48 GETTABLEN                        R15 R10 1
       49 NAMECALL                         R12 R12 K6 ["ReplaceWithChunk"]
       51 CALL                             R12 3 0
       52 LENGTH                           R12 R10
       53 LOADN                            R13 1
       54 JUMPIFNOTLT                      R13 R12 ; [+12]
       56 LOADN                            R14 2
       57 LENGTH                           R12 R10
       58 LOADN                            R13 1
       59 FORNPREP                         R12
       60 GETUPVAL                         R15 0
       61 MOVE                             R17 R11
       62 GETTABLE                         R18 R10 R14
       63 NAMECALL                         R15 R15 K7 ["AppendChunk"]
       65 CALL                             R15 3 0
       66 FORNLOOP                         R12
       67 JUMPIFNOT                        R2 ; [+3]
       68 MOVE                             R12 R2
       69 MOVE                             R13 R9
       70 CALL                             R12 1 0
       71 JUMPIFEQ                         R9 R5 ; [+5]
       73 MOVE                             R14 R9
       74 NAMECALL                         R12 R1 K8 ["closeScriptIfOpen"]
       76 CALL                             R12 2 0
       77 FORGLOOP                         R6 2 ; [-40]
       79 JUMPIFNOT                        R5 ; [+4]
       80 MOVE                             R8 R5
       81 NAMECALL                         R6 R1 K8 ["closeScriptIfOpen"]
       83 CALL                             R6 2 0
       84 RETURN                           R3 1

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
