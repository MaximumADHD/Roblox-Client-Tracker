PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Get"]
        3 CALL                             R1 1 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETIMPORT                        R2 K2 [ipairs]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 3
       10 FORGPREP_INEXT                   R2
       11 GETUPVAL                         R7 1
       12 MOVE                             R9 R6
       13 NAMECALL                         R7 R7 K3 ["PublishDescendantAssets"]
       15 CALL                             R7 2 0
       16 GETUPVAL                         R7 0
       17 NEWTABLE                         R9 0 1
       19 MOVE                             R10 R6
       20 SETLIST                          R9 R10 1 [1]
       22 NAMECALL                         R7 R7 K4 ["Set"]
       24 CALL                             R7 2 0
       25 GETTABLEKS                       R9 R6 K5 ["Name"]
       27 NAMECALL                         R7 R0 K6 ["PromptSaveSelection"]
       29 CALL                             R7 2 0
       30 FORGLOOP                         R2 2 [inext] ; [-20]
       32 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["PublishService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 DUPCLOSURE                       R2 K5 [PROTO_0]
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
