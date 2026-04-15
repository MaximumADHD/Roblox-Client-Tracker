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
        0 NEWTABLE                         R4 0 0
        2 NAMECALL                         R5 R0 K0 ["getItemsCache"]
        4 CALL                             R5 1 1
        5 NAMECALL                         R6 R1 K1 ["getCurrentScope"]
        7 CALL                             R6 1 1
        8 MOVE                             R7 R3
        9 LOADNIL                          R8
       10 LOADNIL                          R9
       11 FORGPREP                         R7
       12 GETTABLEKS                       R14 R6 K2 ["Uid"]
       14 MOVE                             R15 R2
       15 MOVE                             R16 R11
       16 NAMECALL                         R12 R5 K3 ["getItemField"]
       18 CALL                             R12 4 1
       19 GETUPVAL                         R15 0
       20 GETTABLEKS                       R14 R15 K4 ["AssetInfoField"]
       22 GETTABLEKS                       R13 R14 K5 ["Creator"]
       24 JUMPIFNOTEQ                      R11 R13 ; [+3]
       26 GETTABLEKS                       R12 R12 K6 ["Name"]
       28 JUMPIFNOTEQKNIL                  R12 ; [+2]
       30 LOADB                            R14 0 +1
       31 LOADB                            R14 1
       32 LOADK                            R16 K7 ["Could not find field %* for asset with path %* in items cache"]
       33 MOVE                             R18 R11
       34 MOVE                             R19 R2
       35 NAMECALL                         R16 R16 K8 ["format"]
       37 CALL                             R16 3 1
       38 MOVE                             R15 R16
       39 FASTCALL2                        ASSERT R14 R15 ; [+3]
       41 GETIMPORT                        R13 K10 [assert]
       43 CALL                             R13 2 0
       44 FASTCALL2                        TABLE_INSERT R4 R12 ; [+5]
       46 MOVE                             R14 R4
       47 MOVE                             R15 R12
       48 GETIMPORT                        R13 K13 [table.insert]
       50 CALL                             R13 2 0
       51 FORGLOOP                         R7 2 ; [-40]
       53 RETURN                           R4 1

PROTO_2:
        0 NEWTABLE                         R5 0 1
        2 GETUPVAL                         R6 0
        3 MOVE                             R7 R2
        4 MOVE                             R8 R4
        5 CALL                             R6 2 1
        6 SETLIST                          R5 R6 1 [1]
        8 MOVE                             R6 R3
        9 LOADNIL                          R7
       10 LOADNIL                          R8
       11 FORGPREP                         R6
       12 GETUPVAL                         R11 1
       13 MOVE                             R12 R0
       14 MOVE                             R13 R1
       15 MOVE                             R14 R10
       16 MOVE                             R15 R4
       17 CALL                             R11 4 1
       18 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
       20 MOVE                             R13 R5
       21 MOVE                             R14 R11
       22 GETIMPORT                        R12 K2 [table.insert]
       24 CALL                             R12 2 0
       25 FORGLOOP                         R6 2 ; [-14]
       27 GETUPVAL                         R6 2
       28 MOVE                             R7 R5
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 3
       31 MOVE                             R9 R6
       32 NAMECALL                         R7 R7 K3 ["CopyToClipboard"]
       34 CALL                             R7 2 0
       35 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["Services"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["GetService"]
       25 LOADK                            R4 K11 ["StudioService"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R7 R0 K6 ["Src"]
       31 GETTABLEKS                       R6 R7 K8 ["Util"]
       33 GETTABLEKS                       R5 R6 K12 ["convertTableToCsv"]
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
