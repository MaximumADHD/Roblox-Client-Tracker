PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["SourceType"]
        2 GETIMPORT                        R2 K4 [Enum.ContentSourceType.Uri]
        4 JUMPIFNOTEQ                      R1 R2 ; [+4]
        6 GETTABLEKS                       R1 R0 K3 ["Uri"]
        8 RETURN                           R1 1
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ExplorerIconContent"]
        4 GETTABLEKS                       R3 R2 K1 ["SourceType"]
        6 GETIMPORT                        R4 K5 [Enum.ContentSourceType.Uri]
        8 JUMPIFNOTEQ                      R3 R4 ; [+4]
       10 GETTABLEKS                       R1 R2 K4 ["Uri"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ExplorerIconContent"]
        4 GETTABLEKS                       R3 R2 K1 ["SourceType"]
        6 GETIMPORT                        R4 K5 [Enum.ContentSourceType.Uri]
        8 JUMPIFNOTEQ                      R3 R4 ; [+4]
       10 GETTABLEKS                       R1 R2 K4 ["Uri"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R4 K0 ["Folder"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+25]
        5 LOADK                            R4 K2 ["ExplorerIconContent"]
        6 NAMECALL                         R2 R0 K3 ["GetPropertyChangedSignal"]
        8 CALL                             R2 2 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R0
       12 NAMECALL                         R2 R2 K4 ["Connect"]
       14 CALL                             R2 2 1
       15 GETTABLEKS                       R4 R0 K2 ["ExplorerIconContent"]
       17 GETTABLEKS                       R5 R4 K5 ["SourceType"]
       19 GETIMPORT                        R6 K9 [Enum.ContentSourceType.Uri]
       21 JUMPIFNOTEQ                      R5 R6 ; [+4]
       23 GETTABLEKS                       R3 R4 K8 ["Uri"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R3
       27 NEWCLOSURE                       R4 P1
       28 CAPTURE                          VAL R2
       29 RETURN                           R3 2
       30 LOADK                            R4 K10 ["Model"]
       31 NAMECALL                         R2 R0 K1 ["IsA"]
       33 CALL                             R2 2 1
       34 JUMPIFNOT                        R2 ; [+25]
       35 LOADK                            R4 K2 ["ExplorerIconContent"]
       36 NAMECALL                         R2 R0 K3 ["GetPropertyChangedSignal"]
       38 CALL                             R2 2 1
       39 NEWCLOSURE                       R4 P2
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R0
       42 NAMECALL                         R2 R2 K4 ["Connect"]
       44 CALL                             R2 2 1
       45 GETTABLEKS                       R4 R0 K2 ["ExplorerIconContent"]
       47 GETTABLEKS                       R5 R4 K5 ["SourceType"]
       49 GETIMPORT                        R6 K9 [Enum.ContentSourceType.Uri]
       51 JUMPIFNOTEQ                      R5 R6 ; [+4]
       53 GETTABLEKS                       R3 R4 K8 ["Uri"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R3
       57 NEWCLOSURE                       R4 P3
       58 CAPTURE                          VAL R2
       59 RETURN                           R3 2
       60 LOADNIL                          R2
       61 DUPCLOSURE                       R3 K11 [PROTO_5]
       62 RETURN                           R2 2

PROTO_7:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Fields"]
       11 GETTABLEKS                       R2 R2 K7 ["FieldTypes"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 DUPTABLE                         R3 K17 [{["key"] = "explorerIcon", ["icon"] = "", ["watch"], ["validateArgs"], ["permanent"] = True}]
       16 DUPCLOSURE                       R4 K18 [PROTO_6]
       17 SETTABLEKS                       R4 R3 K13 ["watch"]
       19 DUPCLOSURE                       R4 K19 [PROTO_7]
       20 SETTABLEKS                       R4 R3 K14 ["validateArgs"]
       22 RETURN                           R3 1
