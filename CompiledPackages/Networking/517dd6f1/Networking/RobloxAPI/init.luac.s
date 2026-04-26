PROTO_0:
        0 LOADK                            R6 K0 ["Instance"]
        1 NAMECALL                         R4 R0 K1 ["IsA"]
        3 CALL                             R4 2 1
        4 FASTCALL2K                       ASSERT R4 K2 ; [+4]
        6 LOADK                            R5 K2 ["dir is expected to be an Instance"]
        7 GETIMPORT                        R3 K4 [assert]
        9 CALL                             R3 2 0
       10 NEWTABLE                         R3 0 0
       12 GETIMPORT                        R4 K6 [ipairs]
       14 NAMECALL                         R5 R0 K7 ["GetChildren"]
       16 CALL                             R5 1 -1
       17 CALL                             R4 -1 3
       18 FORGPREP_INEXT                   R4
       19 GETTABLEKS                       R9 R8 K8 ["Name"]
       21 LOADK                            R11 K9 ["%.test$"]
       22 NAMECALL                         R9 R9 K10 ["match"]
       24 CALL                             R9 2 1
       25 JUMPIF                           R9 ; [+46]
       26 GETTABLEKS                       R9 R8 K8 ["Name"]
       28 LOADK                            R11 K11 ["%.spec$"]
       29 NAMECALL                         R9 R9 K10 ["match"]
       31 CALL                             R9 2 1
       32 JUMPIF                           R9 ; [+39]
       33 GETTABLEKS                       R9 R8 K12 ["ClassName"]
       35 JUMPIFNOTEQKS                    R9 K13 ["Folder"] ; [+10]
       37 GETTABLEKS                       R9 R8 K8 ["Name"]
       39 GETUPVAL                         R10 0
       40 MOVE                             R11 R8
       41 MOVE                             R12 R1
       42 MOVE                             R13 R2
       43 CALL                             R10 3 1
       44 SETTABLE                         R10 R3 R9
       45 JUMP                             ; [+26]
       46 GETTABLEKS                       R9 R8 K12 ["ClassName"]
       48 JUMPIFNOTEQKS                    R9 K14 ["ModuleScript"] ; [+13]
       50 GETIMPORT                        R9 K16 [require]
       52 MOVE                             R10 R8
       53 CALL                             R9 1 1
       54 GETTABLEKS                       R10 R8 K8 ["Name"]
       56 MOVE                             R11 R9
       57 MOVE                             R12 R1
       58 MOVE                             R13 R2
       59 CALL                             R11 2 1
       60 SETTABLE                         R11 R3 R10
       61 JUMP                             ; [+10]
       62 GETIMPORT                        R9 K18 [warn]
       64 GETIMPORT                        R10 K21 [string.format]
       66 LOADK                            R11 K22 ["Unexpected object found when constructing children table : %s"]
       67 NAMECALL                         R12 R8 K23 ["GetFullName"]
       69 CALL                             R12 1 -1
       70 CALL                             R10 -1 -1
       71 CALL                             R9 -1 0
       72 FORGLOOP                         R4 2 [inext] ; [-54]
       74 GETIMPORT                        R4 K25 [next]
       76 MOVE                             R5 R3
       77 CALL                             R4 1 1
       78 JUMPIFNOTEQKNIL                  R4 ; [+11]
       80 GETIMPORT                        R4 K18 [warn]
       82 GETIMPORT                        R5 K21 [string.format]
       84 LOADK                            R6 K26 ["Could not find any children for %s"]
       85 NAMECALL                         R7 R0 K23 ["GetFullName"]
       87 CALL                             R7 1 -1
       88 CALL                             R5 -1 -1
       89 CALL                             R4 -1 0
       90 GETUPVAL                         R4 1
       91 MOVE                             R5 R3
       92 CALL                             R4 1 -1
       93 RETURN                           R4 -1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 NEWTABLE                         R0 0 0
        3 GETTABLEKS                       R1 R0 K0 ["networking"]
        5 JUMPIF                           R1 ; [+9]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["new"]
        9 DUPTABLE                         R3 K3 [{"isInternal"}]
       10 LOADB                            R4 1
       11 SETTABLEKS                       R4 R3 K2 ["isInternal"]
       13 CALL                             R2 1 1
       14 MOVE                             R1 R2
       15 GETTABLEKS                       R2 R0 K4 ["baseUrl"]
       17 JUMPIF                           R2 ; [+5]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K1 ["new"]
       21 CALL                             R3 0 1
       22 MOVE                             R2 R3
       23 DUPTABLE                         R3 K17 [{"_baseUrls", "APIS", "API", "AssetGame", "Catalog", "GameInternationalization", "Inventory", "Locale", "LocalizationTables", "Develop", "TranslationRoles", "WWW"}]
       24 SETTABLEKS                       R2 R3 K5 ["_baseUrls"]
       26 GETUPVAL                         R4 2
       27 GETIMPORT                        R6 K19 [script]
       29 GETTABLEKS                       R5 R6 K6 ["APIS"]
       31 MOVE                             R6 R1
       32 MOVE                             R7 R2
       33 CALL                             R4 3 1
       34 SETTABLEKS                       R4 R3 K6 ["APIS"]
       36 GETUPVAL                         R4 2
       37 GETIMPORT                        R6 K19 [script]
       39 GETTABLEKS                       R5 R6 K7 ["API"]
       41 MOVE                             R6 R1
       42 MOVE                             R7 R2
       43 CALL                             R4 3 1
       44 SETTABLEKS                       R4 R3 K7 ["API"]
       46 GETUPVAL                         R4 2
       47 GETIMPORT                        R6 K19 [script]
       49 GETTABLEKS                       R5 R6 K8 ["AssetGame"]
       51 MOVE                             R6 R1
       52 MOVE                             R7 R2
       53 CALL                             R4 3 1
       54 SETTABLEKS                       R4 R3 K8 ["AssetGame"]
       56 GETUPVAL                         R4 2
       57 GETIMPORT                        R6 K19 [script]
       59 GETTABLEKS                       R5 R6 K9 ["Catalog"]
       61 MOVE                             R6 R1
       62 MOVE                             R7 R2
       63 CALL                             R4 3 1
       64 SETTABLEKS                       R4 R3 K9 ["Catalog"]
       66 GETUPVAL                         R4 2
       67 GETIMPORT                        R6 K19 [script]
       69 GETTABLEKS                       R5 R6 K10 ["GameInternationalization"]
       71 MOVE                             R6 R1
       72 MOVE                             R7 R2
       73 CALL                             R4 3 1
       74 SETTABLEKS                       R4 R3 K10 ["GameInternationalization"]
       76 GETUPVAL                         R4 2
       77 GETIMPORT                        R6 K19 [script]
       79 GETTABLEKS                       R5 R6 K11 ["Inventory"]
       81 MOVE                             R6 R1
       82 MOVE                             R7 R2
       83 CALL                             R4 3 1
       84 SETTABLEKS                       R4 R3 K11 ["Inventory"]
       86 GETUPVAL                         R4 2
       87 GETIMPORT                        R6 K19 [script]
       89 GETTABLEKS                       R5 R6 K12 ["Locale"]
       91 MOVE                             R6 R1
       92 MOVE                             R7 R2
       93 CALL                             R4 3 1
       94 SETTABLEKS                       R4 R3 K12 ["Locale"]
       96 GETUPVAL                         R4 2
       97 GETIMPORT                        R6 K19 [script]
       99 GETTABLEKS                       R5 R6 K13 ["LocalizationTables"]
      101 MOVE                             R6 R1
      102 MOVE                             R7 R2
      103 CALL                             R4 3 1
      104 SETTABLEKS                       R4 R3 K13 ["LocalizationTables"]
      106 GETUPVAL                         R4 2
      107 GETIMPORT                        R6 K19 [script]
      109 GETTABLEKS                       R5 R6 K14 ["Develop"]
      111 MOVE                             R6 R1
      112 MOVE                             R7 R2
      113 CALL                             R4 3 1
      114 SETTABLEKS                       R4 R3 K14 ["Develop"]
      116 GETUPVAL                         R4 2
      117 GETIMPORT                        R6 K19 [script]
      119 GETTABLEKS                       R5 R6 K15 ["TranslationRoles"]
      121 MOVE                             R6 R1
      122 MOVE                             R7 R2
      123 CALL                             R4 3 1
      124 SETTABLEKS                       R4 R3 K15 ["TranslationRoles"]
      126 GETUPVAL                         R4 2
      127 GETIMPORT                        R6 K19 [script]
      129 GETTABLEKS                       R5 R6 K16 ["WWW"]
      131 MOVE                             R6 R1
      132 MOVE                             R7 R2
      133 CALL                             R4 3 1
      134 SETTABLEKS                       R4 R3 K16 ["WWW"]
      136 GETUPVAL                         R6 3
      137 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      139 MOVE                             R5 R3
      140 GETIMPORT                        R4 K21 [setmetatable]
      142 CALL                             R4 2 0
      143 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Networking"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R3 K1 [script]
       11 GETTABLEKS                       R2 R3 K6 ["Url"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R3 K5 [require]
       16 GETTABLEKS                       R4 R0 K7 ["Http"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R2 R3 K2 ["Networking"]
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Util"]
       25 GETTABLEKS                       R4 R5 K9 ["strict"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K10 [PROTO_0]
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R3
       31 DUPTABLE                         R5 K11 [{"Url"}]
       32 SETTABLEKS                       R1 R5 K6 ["Url"]
       34 SETTABLEKS                       R5 R5 K12 ["__index"]
       36 DUPCLOSURE                       R6 K13 [PROTO_1]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R5
       41 SETTABLEKS                       R6 R5 K14 ["new"]
       43 RETURN                           R5 1
