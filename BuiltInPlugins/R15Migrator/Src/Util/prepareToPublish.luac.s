PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["prepareToPublish"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["RemoveAllScriptBackups"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K2 ["conversionIdFilter"]
       12 CALL                             R1 0 -1
       13 CALL                             R0 -1 1
       14 MOVE                             R1 R0
       15 LOADNIL                          R2
       16 LOADNIL                          R3
       17 FORGPREP                         R1
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R6 R6 K3 ["removeConversionId"]
       21 MOVE                             R7 R5
       22 CALL                             R6 1 0
       23 FORGLOOP                         R1 2 ; [-6]
       25 GETUPVAL                         R1 3
       26 GETTABLEKS                       R1 R1 K4 ["removeAllSavedData"]
       28 CALL                             R1 0 0
       29 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["SaveInterface"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["PublishTagging"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K7 ["Util"]
       31 GETTABLEKS                       R4 R4 K10 ["findAllInServices"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K7 ["Util"]
       40 GETTABLEKS                       R5 R5 K11 ["ScriptHistory"]
       42 GETTABLEKS                       R5 R5 K12 ["ChunkUtil"]
       44 CALL                             R4 1 1
       45 DUPCLOSURE                       R5 K13 [PROTO_0]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R1
       50 RETURN                           R5 1
