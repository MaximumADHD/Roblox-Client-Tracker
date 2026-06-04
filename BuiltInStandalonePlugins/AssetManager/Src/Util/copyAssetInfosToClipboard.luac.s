PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 MOVE                             R9 R2
        7 LOADK                            R12 K0 ["AssetProperty"]
        8 MOVE                             R13 R7
        9 NAMECALL                         R10 R0 K1 ["getText"]
       11 CALL                             R10 3 -1
       12 FASTCALL                         TABLE_INSERT ; [+2]
       13 GETIMPORT                        R8 K4 [table.insert]
       15 CALL                             R8 -1 0
       16 FORGLOOP                         R3 2 ; [-11]
       18 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 NAMECALL                         R4 R0 K0 ["getItemsCache"]
        4 CALL                             R4 1 1
        5 NAMECALL                         R5 R0 K1 ["getCurrentShownScope"]
        7 CALL                             R5 1 1
        8 MOVE                             R6 R2
        9 LOADNIL                          R7
       10 LOADNIL                          R8
       11 FORGPREP                         R6
       12 GETTABLEKS                       R13 R5 K2 ["Uid"]
       14 MOVE                             R14 R1
       15 MOVE                             R15 R10
       16 NAMECALL                         R11 R4 K3 ["getItemField"]
       18 CALL                             R11 4 1
       19 GETUPVAL                         R12 0
       20 GETTABLEKS                       R12 R12 K4 ["AssetInfoField"]
       22 GETTABLEKS                       R12 R12 K5 ["Creator"]
       24 JUMPIFNOTEQ                      R10 R12 ; [+3]
       26 GETTABLEKS                       R11 R11 K6 ["Name"]
       28 JUMPIFNOTEQKNIL                  R11 ; [+2]
       30 LOADB                            R13 0 +1
       31 LOADB                            R13 1
       32 LOADK                            R15 K7 ["Could not find field %* for asset with path %* in items cache"]
       33 MOVE                             R17 R10
       34 MOVE                             R18 R1
       35 NAMECALL                         R15 R15 K8 ["format"]
       37 CALL                             R15 3 1
       38 MOVE                             R14 R15
       39 FASTCALL2                        ASSERT R13 R14 ; [+3]
       41 GETIMPORT                        R12 K10 [assert]
       43 CALL                             R12 2 0
       44 FASTCALL2                        TABLE_INSERT R3 R11 ; [+5]
       46 MOVE                             R13 R3
       47 MOVE                             R14 R11
       48 GETIMPORT                        R12 K13 [table.insert]
       50 CALL                             R12 2 0
       51 FORGLOOP                         R6 2 ; [-40]
       53 RETURN                           R3 1

PROTO_2:
        0 NEWTABLE                         R4 0 1
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R3
        5 CALL                             R5 2 1
        6 SETLIST                          R4 R5 1 [1]
        8 MOVE                             R5 R2
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 GETUPVAL                         R10 1
       13 MOVE                             R11 R0
       14 MOVE                             R12 R9
       15 MOVE                             R13 R3
       16 CALL                             R10 3 1
       17 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       19 MOVE                             R12 R4
       20 MOVE                             R13 R10
       21 GETIMPORT                        R11 K2 [table.insert]
       23 CALL                             R11 2 0
       24 FORGLOOP                         R5 2 ; [-13]
       26 GETUPVAL                         R5 2
       27 MOVE                             R6 R4
       28 CALL                             R5 1 1
       29 GETUPVAL                         R6 3
       30 MOVE                             R8 R5
       31 NAMECALL                         R6 R6 K3 ["CopyToClipboard"]
       33 CALL                             R6 2 0
       34 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["Services"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["GetService"]
       25 LOADK                            R4 K11 ["StudioService"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R5 K8 ["Util"]
       33 GETTABLEKS                       R5 R5 K12 ["convertTableToCsv"]
       35 CALL                             R4 1 1
       36 DUPCLOSURE                       R5 K13 [PROTO_0]
       37 DUPCLOSURE                       R6 K14 [PROTO_1]
       38 CAPTURE                          VAL R1
       39 DUPCLOSURE                       R7 K15 [PROTO_2]
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 RETURN                           R7 1
