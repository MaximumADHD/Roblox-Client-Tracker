PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 LOADN                            R5 0
        5 LOADN                            R6 0
        6 MOVE                             R7 R0
        7 LOADNIL                          R8
        8 LOADNIL                          R9
        9 FORGPREP                         R7
       10 MOVE                             R14 R1
       11 MOVE                             R15 R11
       12 GETUPVAL                         R16 0
       13 GETTABLEKS                       R16 R16 K0 ["AssetInfoField"]
       15 GETTABLEKS                       R16 R16 K1 ["AssetType"]
       17 NAMECALL                         R12 R2 K2 ["getItemField"]
       19 CALL                             R12 4 1
       20 LOADB                            R13 0
       21 JUMPIFNOTEQKNIL                  R12 ; [+14]
       23 LENGTH                           R16 R0
       24 JUMPIFEQKN                       R16 K3 [1] ; [+2]
       26 LOADB                            R15 0 +1
       27 LOADB                            R15 1
       28 FASTCALL2K                       ASSERT R15 K4 ; [+4]
       30 LOADK                            R16 K4 ["If item type is not in cache, there should only be one folder being moved"]
       31 GETIMPORT                        R14 K6 [assert]
       33 CALL                             R14 2 0
       34 LOADB                            R13 1
       35 JUMP                             ; [+9]
       36 GETUPVAL                         R14 0
       37 GETTABLEKS                       R14 R14 K1 ["AssetType"]
       39 GETTABLEKS                       R14 R14 K7 ["Folder"]
       41 JUMPIFEQ                         R12 R14 ; [+2]
       43 LOADB                            R13 0 +1
       44 LOADB                            R13 1
       45 MOVE                             R14 R13
       46 JUMPIFNOT                        R14 ; [+7]
       47 GETUPVAL                         R15 1
       48 GETTABLEKS                       R15 R15 K8 ["MoveBatchFolderMax"]
       50 JUMPIFLE                         R15 R5 ; [+2]
       52 LOADB                            R14 0 +1
       53 LOADB                            R14 1
       54 NOT                              R15 R13
       55 JUMPIFNOT                        R15 ; [+7]
       56 GETUPVAL                         R16 1
       57 GETTABLEKS                       R16 R16 K9 ["MoveBatchAssetMax"]
       59 JUMPIFLE                         R16 R6 ; [+2]
       61 LOADB                            R15 0 +1
       62 LOADB                            R15 1
       63 JUMPIF                           R14 ; [+1]
       64 JUMPIFNOT                        R15 ; [+11]
       65 FASTCALL2                        TABLE_INSERT R3 R4 ; [+5]
       67 MOVE                             R17 R3
       68 MOVE                             R18 R4
       69 GETIMPORT                        R16 K12 [table.insert]
       71 CALL                             R16 2 0
       72 NEWTABLE                         R4 0 0
       74 LOADN                            R5 0
       75 LOADN                            R6 0
       76 FASTCALL2                        TABLE_INSERT R4 R11 ; [+5]
       78 MOVE                             R17 R4
       79 MOVE                             R18 R11
       80 GETIMPORT                        R16 K12 [table.insert]
       82 CALL                             R16 2 0
       83 JUMPIFNOT                        R13 ; [+2]
       84 ADDK                             R5 R5 K3 [1]
       85 JUMP                             ; [+1]
       86 ADDK                             R6 R6 K3 [1]
       87 FORGLOOP                         R7 2 ; [-78]
       89 LENGTH                           R7 R4
       90 LOADN                            R8 0
       91 JUMPIFNOTLT                      R8 R7 ; [+8]
       93 FASTCALL2                        TABLE_INSERT R3 R4 ; [+5]
       95 MOVE                             R8 R3
       96 MOVE                             R9 R4
       97 GETIMPORT                        R7 K12 [table.insert]
       99 CALL                             R7 2 0
      100 RETURN                           R3 1

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
       18 GETTABLEKS                       R3 R3 K8 ["Resources"]
       20 GETTABLEKS                       R3 R3 K9 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Controllers"]
       29 GETTABLEKS                       R4 R4 K11 ["ItemsCache"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K12 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 RETURN                           R4 1
