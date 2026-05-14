PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R3 K1 ["AssetType"]
        4 GETTABLEKS                       R5 R3 K2 ["homeConfiguration"]
        6 LOADB                            R6 1
        7 GETTABLEKS                       R7 R1 K1 ["AssetType"]
        9 JUMPIFNOTEQ                      R4 R7 ; [+7]
       11 GETUPVAL                         R7 0
       12 MOVE                             R8 R5
       13 GETTABLEKS                       R9 R1 K2 ["homeConfiguration"]
       15 CALL                             R7 2 1
       16 NOT                              R6 R7
       17 RETURN                           R6 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["AssetType"]
        4 GETTABLEKS                       R3 R1 K2 ["CategoryName"]
        6 GETTABLEKS                       R5 R1 K3 ["homeConfiguration"]
        8 GETTABLEKS                       R6 R2 K4 ["Name"]
       10 GETTABLE                         R4 R5 R6
       11 GETTABLEKS                       R5 R1 K5 ["SortName"]
       13 GETTABLEKS                       R6 R1 K6 ["Stylizer"]
       15 GETTABLEKS                       R7 R1 K7 ["TryOpenAssetConfig"]
       17 JUMPIFNOTEQKNIL                  R4 ; [+3]
       19 LOADNIL                          R8
       20 RETURN                           R8 1
       21 NEWTABLE                         R8 0 0
       23 NEWTABLE                         R9 0 0
       25 JUMPIFNOT                        R4 ; [+28]
       26 GETIMPORT                        R10 K9 [pairs]
       28 GETTABLEKS                       R11 R4 K10 ["sections"]
       30 CALL                             R10 1 3
       31 FORGPREP_NEXT                    R10
       32 GETTABLEKS                       R15 R14 K11 ["name"]
       34 JUMPIFNOTEQKS                    R15 K12 ["categories"] ; [+10]
       36 GETTABLEKS                       R15 R14 K13 ["subcategory"]
       38 JUMPIFEQKNIL                     R15 ; [+6]
       40 GETTABLEKS                       R15 R14 K13 ["subcategory"]
       42 GETTABLEKS                       R9 R15 K14 ["children"]
       44 JUMP                             ; [+7]
       45 FASTCALL2                        TABLE_INSERT R8 R14 ; [+5]
       47 MOVE                             R16 R8
       48 MOVE                             R17 R14
       49 GETIMPORT                        R15 K17 [table.insert]
       51 CALL                             R15 2 0
       52 FORGLOOP                         R10 2 ; [-21]
       54 GETUPVAL                         R10 0
       55 GETTABLEKS                       R10 R10 K18 ["createElement"]
       57 LOADK                            R11 K19 ["Frame"]
       58 DUPTABLE                         R12 K24 [{"BackgroundColor3", "BorderSizePixel", "Position", "Size"}]
       59 GETTABLEKS                       R13 R6 K25 ["backgroundColor"]
       61 SETTABLEKS                       R13 R12 K20 ["BackgroundColor3"]
       63 LOADN                            R13 0
       64 SETTABLEKS                       R13 R12 K21 ["BorderSizePixel"]
       66 GETTABLEKS                       R13 R1 K22 ["Position"]
       68 SETTABLEKS                       R13 R12 K22 ["Position"]
       70 GETTABLEKS                       R13 R1 K23 ["Size"]
       72 SETTABLEKS                       R13 R12 K23 ["Size"]
       74 DUPTABLE                         R13 K27 [{"Navigation"}]
       75 GETUPVAL                         R14 0
       76 GETTABLEKS                       R14 R14 K18 ["createElement"]
       78 GETUPVAL                         R15 1
       79 DUPTABLE                         R16 K33 [{"AssetType", "CategoryName", "Config", "MaxWidth", "SortName", "AssetSections", "SubcategoryDict", "TopKeywords", "TryOpenAssetConfig"}]
       80 SETTABLEKS                       R2 R16 K1 ["AssetType"]
       82 SETTABLEKS                       R3 R16 K2 ["CategoryName"]
       84 SETTABLEKS                       R4 R16 K28 ["Config"]
       86 GETTABLEKS                       R17 R1 K29 ["MaxWidth"]
       88 SETTABLEKS                       R17 R16 K29 ["MaxWidth"]
       90 SETTABLEKS                       R5 R16 K5 ["SortName"]
       92 SETTABLEKS                       R8 R16 K30 ["AssetSections"]
       94 SETTABLEKS                       R9 R16 K31 ["SubcategoryDict"]
       96 GETTABLEKS                       R17 R4 K34 ["topKeywords"]
       98 SETTABLEKS                       R17 R16 K32 ["TopKeywords"]
      100 SETTABLEKS                       R7 R16 K7 ["TryOpenAssetConfig"]
      102 CALL                             R14 2 1
      103 SETTABLEKS                       R14 R13 K26 ["Navigation"]
      105 CALL                             R10 3 -1
      106 RETURN                           R10 -1

PROTO_2:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["props"]
        4 GETTABLEKS                       R2 R2 K3 ["EnabledAssetTypes"]
        6 CALL                             R1 1 3
        7 FORGPREP_INEXT                   R1
        8 GETTABLEKS                       R7 R0 K2 ["props"]
       10 GETTABLEKS                       R7 R7 K4 ["homeConfiguration"]
       12 GETTABLEKS                       R8 R5 K5 ["Name"]
       14 GETTABLE                         R6 R7 R8
       15 JUMPIFNOTEQKNIL                  R6 ; [+18]
       17 GETTABLEKS                       R6 R0 K2 ["props"]
       19 GETTABLEKS                       R6 R6 K6 ["Network"]
       21 GETTABLEKS                       R6 R6 K7 ["networkInterface"]
       23 GETTABLEKS                       R7 R0 K2 ["props"]
       25 GETTABLEKS                       R7 R7 K8 ["getHomeConfigurationRequest"]
       27 MOVE                             R8 R6
       28 MOVE                             R9 R5
       29 GETTABLEKS                       R10 R0 K2 ["props"]
       31 GETTABLEKS                       R10 R10 K9 ["Locale"]
       33 CALL                             R7 3 0
       34 FORGLOOP                         R1 2 [inext] ; [-27]
       36 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K1 [{"homeConfiguration"}]
        6 GETTABLEKS                       R3 R0 K0 ["homeConfiguration"]
        8 JUMPIF                           R3 ; [+2]
        9 NEWTABLE                         R3 0 0
       11 SETTABLEKS                       R3 R2 K0 ["homeConfiguration"]
       13 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"getHomeConfigurationRequest"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["getHomeConfigurationRequest"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["Framework"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R0 K9 ["Src"]
       30 GETTABLEKS                       R5 R5 K10 ["Networking"]
       32 GETTABLEKS                       R5 R5 K11 ["Requests"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R5 K12 ["GetHomeConfigurationRequest"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R4 K13 ["ContextServices"]
       41 GETTABLEKS                       R8 R7 K14 ["withContext"]
       43 GETIMPORT                        R9 K5 [require]
       45 GETTABLEKS                       R10 R0 K9 ["Src"]
       47 GETTABLEKS                       R10 R10 K13 ["ContextServices"]
       49 GETTABLEKS                       R10 R10 K15 ["NetworkContext"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R0 K9 ["Src"]
       56 GETTABLEKS                       R11 R11 K16 ["Types"]
       58 GETTABLEKS                       R11 R11 K17 ["Category"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R12 R0 K9 ["Src"]
       65 GETTABLEKS                       R12 R12 K16 ["Types"]
       67 GETTABLEKS                       R12 R12 K18 ["HomeTypes"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K5 [require]
       72 GETTABLEKS                       R13 R0 K9 ["Src"]
       74 GETTABLEKS                       R13 R13 K16 ["Types"]
       76 GETTABLEKS                       R13 R13 K19 ["Sort"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K5 [require]
       81 GETTABLEKS                       R14 R0 K9 ["Src"]
       83 GETTABLEKS                       R14 R14 K20 ["Components"]
       85 GETTABLEKS                       R14 R14 K21 ["Home"]
       87 GETTABLEKS                       R14 R14 K22 ["NavigationContainer"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K5 [require]
       92 GETTABLEKS                       R15 R1 K8 ["Framework"]
       94 CALL                             R14 1 1
       95 GETTABLEKS                       R14 R14 K23 ["Util"]
       97 GETTABLEKS                       R15 R14 K24 ["deepEqual"]
       99 GETTABLEKS                       R16 R2 K25 ["Component"]
      101 LOADK                            R18 K26 ["HomeWrapper"]
      102 NAMECALL                         R16 R16 K27 ["extend"]
      104 CALL                             R16 2 1
      105 DUPTABLE                         R17 K30 [{"CategoryName", "SortName"}]
      106 GETTABLEKS                       R18 R10 K31 ["FREE_MODELS"]
      108 GETTABLEKS                       R18 R18 K32 ["name"]
      110 SETTABLEKS                       R18 R17 K28 ["CategoryName"]
      112 GETTABLEKS                       R18 R12 K33 ["getDefaultSortNameForCategory"]
      114 GETTABLEKS                       R19 R10 K31 ["FREE_MODELS"]
      116 GETTABLEKS                       R19 R19 K32 ["name"]
      118 CALL                             R18 1 1
      119 SETTABLEKS                       R18 R17 K29 ["SortName"]
      121 SETTABLEKS                       R17 R16 K34 ["defaultProps"]
      123 DUPCLOSURE                       R17 K35 [PROTO_0]
      124 CAPTURE                          VAL R15
      125 SETTABLEKS                       R17 R16 K36 ["shouldUpdate"]
      127 DUPCLOSURE                       R17 K37 [PROTO_1]
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R13
      130 SETTABLEKS                       R17 R16 K38 ["render"]
      132 DUPCLOSURE                       R17 K39 [PROTO_2]
      133 SETTABLEKS                       R17 R16 K40 ["didMount"]
      135 MOVE                             R17 R8
      136 DUPTABLE                         R18 K43 [{"Stylizer", "Network"}]
      137 GETTABLEKS                       R19 R7 K41 ["Stylizer"]
      139 SETTABLEKS                       R19 R18 K41 ["Stylizer"]
      141 SETTABLEKS                       R9 R18 K42 ["Network"]
      143 CALL                             R17 1 1
      144 MOVE                             R18 R16
      145 CALL                             R17 1 1
      146 MOVE                             R16 R17
      147 DUPCLOSURE                       R17 K44 [PROTO_3]
      148 DUPCLOSURE                       R18 K45 [PROTO_5]
      149 CAPTURE                          VAL R6
      150 GETTABLEKS                       R19 R3 K46 ["connect"]
      152 MOVE                             R20 R17
      153 MOVE                             R21 R18
      154 CALL                             R19 2 1
      155 MOVE                             R20 R16
      156 CALL                             R19 1 -1
      157 RETURN                           R19 -1
