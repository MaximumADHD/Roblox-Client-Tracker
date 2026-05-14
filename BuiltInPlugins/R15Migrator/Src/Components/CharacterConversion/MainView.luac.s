PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 DUPTABLE                         R8 K3 [{"key", "text", "characterInfo"}]
        7 GETTABLEKS                       R9 R7 K0 ["key"]
        9 SETTABLEKS                       R9 R8 K0 ["key"]
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R10 R7 K4 ["fullName"]
       14 CALL                             R9 1 1
       15 SETTABLEKS                       R9 R8 K1 ["text"]
       17 SETTABLEKS                       R7 R8 K2 ["characterInfo"]
       19 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       21 MOVE                             R10 R2
       22 MOVE                             R11 R8
       23 GETIMPORT                        R9 K7 [table.insert]
       25 CALL                             R9 2 0
       26 FORGLOOP                         R3 2 ; [-21]
       28 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 NEWTABLE                         R3 0 0
        6 DUPTABLE                         R6 K5 [{"key", "text", "children"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R7 R7 K6 ["InProgress"]
       10 SETTABLEKS                       R7 R6 K2 ["key"]
       12 LOADK                            R9 K7 ["CharacterConversion"]
       13 LOADK                            R10 K8 ["Issues"]
       14 NAMECALL                         R7 R2 K9 ["getText"]
       16 CALL                             R7 3 1
       17 SETTABLEKS                       R7 R6 K3 ["text"]
       19 GETTABLEKS                       R9 R1 K10 ["characters"]
       21 NAMECALL                         R7 R0 K11 ["getChildItems"]
       23 CALL                             R7 2 1
       24 SETTABLEKS                       R7 R6 K4 ["children"]
       26 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       28 MOVE                             R5 R3
       29 GETIMPORT                        R4 K14 [table.insert]
       31 CALL                             R4 2 0
       32 DUPTABLE                         R6 K5 [{"key", "text", "children"}]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K15 ["Completed"]
       36 SETTABLEKS                       R7 R6 K2 ["key"]
       38 LOADK                            R9 K7 ["CharacterConversion"]
       39 LOADK                            R10 K16 ["Converted"]
       40 NAMECALL                         R7 R2 K9 ["getText"]
       42 CALL                             R7 3 1
       43 SETTABLEKS                       R7 R6 K3 ["text"]
       45 GETTABLEKS                       R9 R1 K17 ["convertedCharacters"]
       47 NAMECALL                         R7 R0 K11 ["getChildItems"]
       49 CALL                             R7 2 1
       50 SETTABLEKS                       R7 R6 K4 ["children"]
       52 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       54 MOVE                             R5 R3
       55 GETIMPORT                        R4 K14 [table.insert]
       57 CALL                             R4 2 0
       58 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Size"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 NAMECALL                         R4 R0 K3 ["getItems"]
        8 CALL                             R4 1 1
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K4 ["createElement"]
       12 GETUPVAL                         R6 1
       13 DUPTABLE                         R7 K7 [{"OnResetPlugin", "Size", "LayoutOrder", "Items"}]
       14 GETTABLEKS                       R8 R1 K5 ["OnResetPlugin"]
       16 SETTABLEKS                       R8 R7 K5 ["OnResetPlugin"]
       18 SETTABLEKS                       R2 R7 K1 ["Size"]
       20 SETTABLEKS                       R3 R7 K2 ["LayoutOrder"]
       22 SETTABLEKS                       R4 R7 K6 ["Items"]
       24 CALL                             R5 2 -1
       25 RETURN                           R5 -1

PROTO_3:
        0 DUPTABLE                         R2 K2 [{"characters", "convertedCharacters"}]
        1 GETTABLEKS                       R3 R0 K3 ["CharacterConversion"]
        3 GETTABLEKS                       R3 R3 K0 ["characters"]
        5 SETTABLEKS                       R3 R2 K0 ["characters"]
        7 GETTABLEKS                       R3 R0 K3 ["CharacterConversion"]
        9 GETTABLEKS                       R3 R3 K1 ["convertedCharacters"]
       11 SETTABLEKS                       R3 R2 K1 ["convertedCharacters"]
       13 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["ItemState"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Components"]
       43 GETTABLEKS                       R6 R6 K14 ["CharacterConversion"]
       45 GETTABLEKS                       R6 R6 K15 ["CharacterList"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K10 ["Src"]
       52 GETTABLEKS                       R7 R7 K11 ["Util"]
       54 GETTABLEKS                       R7 R7 K16 ["sanitizeString"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R1 K17 ["ContextServices"]
       59 GETTABLEKS                       R8 R2 K18 ["PureComponent"]
       61 LOADK                            R10 K19 ["ModelConversionMainView"]
       62 NAMECALL                         R8 R8 K20 ["extend"]
       64 CALL                             R8 2 1
       65 DUPCLOSURE                       R9 K21 [PROTO_0]
       66 CAPTURE                          VAL R6
       67 SETTABLEKS                       R9 R8 K22 ["getChildItems"]
       69 DUPCLOSURE                       R9 K23 [PROTO_1]
       70 CAPTURE                          VAL R4
       71 SETTABLEKS                       R9 R8 K24 ["getItems"]
       73 DUPCLOSURE                       R9 K25 [PROTO_2]
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R5
       76 SETTABLEKS                       R9 R8 K26 ["render"]
       78 GETTABLEKS                       R9 R7 K27 ["withContext"]
       80 DUPTABLE                         R10 K31 [{"Plugin", "Localization", "Stylizer"}]
       81 GETTABLEKS                       R11 R7 K28 ["Plugin"]
       83 SETTABLEKS                       R11 R10 K28 ["Plugin"]
       85 GETTABLEKS                       R11 R7 K29 ["Localization"]
       87 SETTABLEKS                       R11 R10 K29 ["Localization"]
       89 GETTABLEKS                       R11 R7 K30 ["Stylizer"]
       91 SETTABLEKS                       R11 R10 K30 ["Stylizer"]
       93 CALL                             R9 1 1
       94 MOVE                             R10 R8
       95 CALL                             R9 1 1
       96 MOVE                             R8 R9
       97 DUPCLOSURE                       R9 K32 [PROTO_3]
       98 GETTABLEKS                       R10 R3 K33 ["connect"]
      100 MOVE                             R11 R9
      101 CALL                             R10 1 1
      102 MOVE                             R11 R8
      103 CALL                             R10 1 -1
      104 RETURN                           R10 -1
