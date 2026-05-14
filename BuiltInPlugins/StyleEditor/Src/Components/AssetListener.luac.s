PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+1]
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R3 R2 K2 ["assetTypeId"]
       11 GETIMPORT                        R4 K6 [Enum.AssetType.FontFamily]
       13 GETTABLEKS                       R4 R4 K7 ["Value"]
       15 JUMPIFNOTEQ                      R3 R4 ; [+4]
       17 GETTABLEKS                       R3 R2 K8 ["assetId"]
       19 JUMPIF                           R3 ; [+1]
       20 RETURN                           R0 0
       21 GETUPVAL                         R3 1
       22 GETUPVAL                         R4 2
       23 NEWTABLE                         R5 0 1
       25 GETTABLEKS                       R7 R2 K8 ["assetId"]
       27 FASTCALL1                        TOSTRING R7 ; [+2]
       28 GETIMPORT                        R6 K10 [tostring]
       30 CALL                             R6 1 1
       31 SETLIST                          R5 R6 1 [1]
       33 CALL                             R4 1 -1
       34 CALL                             R3 -1 0
       35 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 2
        6 CALL                             R1 0 -1
        7 CALL                             R0 -1 0
        8 GETUPVAL                         R0 3
        9 LOADK                            R2 K0 ["AddToolboxAssetToInventory"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U5
       14 NAMECALL                         R0 R0 K1 ["Bind"]
       16 CALL                             R0 3 1
       17 NEWCLOSURE                       R1 P1
       18 CAPTURE                          VAL R0
       19 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 NEWTABLE                         R3 0 0
       12 CALL                             R1 2 0
       13 LOADNIL                          R1
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MemStorageService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETTABLEKS                       R2 R2 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R2 K10 ["Packages"]
       25 GETTABLEKS                       R4 R4 K11 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K12 ["useEffect"]
       30 GETIMPORT                        R5 K9 [require]
       32 GETTABLEKS                       R6 R2 K13 ["Src"]
       34 GETTABLEKS                       R6 R6 K14 ["Hooks"]
       36 GETTABLEKS                       R6 R6 K15 ["useDispatch"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K9 [require]
       41 GETTABLEKS                       R7 R2 K13 ["Src"]
       43 GETTABLEKS                       R7 R7 K16 ["Thunks"]
       45 GETTABLEKS                       R7 R7 K17 ["Asset"]
       47 GETTABLEKS                       R7 R7 K18 ["LoadBuiltinFonts"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R2 K13 ["Src"]
       54 GETTABLEKS                       R8 R8 K16 ["Thunks"]
       56 GETTABLEKS                       R8 R8 K17 ["Asset"]
       58 GETTABLEKS                       R8 R8 K19 ["LoadToolboxFonts"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R2 K13 ["Src"]
       65 GETTABLEKS                       R9 R9 K16 ["Thunks"]
       67 GETTABLEKS                       R9 R9 K17 ["Asset"]
       69 GETTABLEKS                       R9 R9 K20 ["LoadFontFamilyInfo"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K9 [require]
       74 GETTABLEKS                       R10 R2 K13 ["Src"]
       76 GETTABLEKS                       R10 R10 K21 ["Types"]
       78 CALL                             R9 1 1
       79 DUPCLOSURE                       R10 K22 [PROTO_4]
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R8
       87 RETURN                           R10 1
