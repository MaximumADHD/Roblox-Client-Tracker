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
       19 GETTABLEKS                       R9 R8 K8 ["ClassName"]
       21 JUMPIFNOTEQKS                    R9 K9 ["Folder"] ; [+10]
       23 GETTABLEKS                       R9 R8 K10 ["Name"]
       25 GETUPVAL                         R10 0
       26 MOVE                             R11 R8
       27 MOVE                             R12 R1
       28 MOVE                             R13 R2
       29 CALL                             R10 3 1
       30 SETTABLE                         R10 R3 R9
       31 JUMP                             ; [+26]
       32 GETTABLEKS                       R9 R8 K8 ["ClassName"]
       34 JUMPIFNOTEQKS                    R9 K11 ["ModuleScript"] ; [+13]
       36 GETIMPORT                        R9 K13 [require]
       38 MOVE                             R10 R8
       39 CALL                             R9 1 1
       40 GETTABLEKS                       R10 R8 K10 ["Name"]
       42 MOVE                             R11 R9
       43 MOVE                             R12 R1
       44 MOVE                             R13 R2
       45 CALL                             R11 2 1
       46 SETTABLE                         R11 R3 R10
       47 JUMP                             ; [+10]
       48 GETIMPORT                        R9 K15 [warn]
       50 GETIMPORT                        R10 K18 [string.format]
       52 LOADK                            R11 K19 ["Unexpected object found when constructing children table : %s"]
       53 NAMECALL                         R12 R8 K20 ["GetFullName"]
       55 CALL                             R12 1 -1
       56 CALL                             R10 -1 -1
       57 CALL                             R9 -1 0
       58 FORGLOOP                         R4 2 [inext] ; [-40]
       60 GETIMPORT                        R4 K22 [next]
       62 MOVE                             R5 R3
       63 CALL                             R4 1 1
       64 JUMPIFNOTEQKNIL                  R4 ; [+11]
       66 GETIMPORT                        R4 K15 [warn]
       68 GETIMPORT                        R5 K18 [string.format]
       70 LOADK                            R6 K23 ["Could not find any children for %s"]
       71 NAMECALL                         R7 R0 K20 ["GetFullName"]
       73 CALL                             R7 1 -1
       74 CALL                             R5 -1 -1
       75 CALL                             R4 -1 0
       76 GETUPVAL                         R4 1
       77 MOVE                             R5 R3
       78 CALL                             R4 1 -1
       79 RETURN                           R4 -1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 NEWTABLE                         R0 0 0
        3 GETTABLEKS                       R1 R0 K0 ["networking"]
        5 JUMPIF                           R1 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["new"]
        9 DUPTABLE                         R3 K4 [{["isInternal"] = True}]
       10 CALL                             R2 1 1
       11 MOVE                             R1 R2
       12 GETTABLEKS                       R2 R0 K5 ["baseUrl"]
       14 JUMPIF                           R2 ; [+5]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K1 ["new"]
       18 CALL                             R3 0 1
       19 MOVE                             R2 R3
       20 DUPTABLE                         R3 K18 [{"_baseUrls", "APIS", "API", "AssetGame", "Catalog", "GameInternationalization", "Inventory", "Locale", "LocalizationTables", "Develop", "TranslationRoles", "WWW"}]
       21 SETTABLEKS                       R2 R3 K6 ["_baseUrls"]
       23 GETUPVAL                         R4 2
       24 GETIMPORT                        R5 K20 [script]
       26 GETTABLEKS                       R5 R5 K7 ["APIS"]
       28 MOVE                             R6 R1
       29 MOVE                             R7 R2
       30 CALL                             R4 3 1
       31 SETTABLEKS                       R4 R3 K7 ["APIS"]
       33 GETUPVAL                         R4 2
       34 GETIMPORT                        R5 K20 [script]
       36 GETTABLEKS                       R5 R5 K8 ["API"]
       38 MOVE                             R6 R1
       39 MOVE                             R7 R2
       40 CALL                             R4 3 1
       41 SETTABLEKS                       R4 R3 K8 ["API"]
       43 GETUPVAL                         R4 2
       44 GETIMPORT                        R5 K20 [script]
       46 GETTABLEKS                       R5 R5 K9 ["AssetGame"]
       48 MOVE                             R6 R1
       49 MOVE                             R7 R2
       50 CALL                             R4 3 1
       51 SETTABLEKS                       R4 R3 K9 ["AssetGame"]
       53 GETUPVAL                         R4 2
       54 GETIMPORT                        R5 K20 [script]
       56 GETTABLEKS                       R5 R5 K10 ["Catalog"]
       58 MOVE                             R6 R1
       59 MOVE                             R7 R2
       60 CALL                             R4 3 1
       61 SETTABLEKS                       R4 R3 K10 ["Catalog"]
       63 GETUPVAL                         R4 2
       64 GETIMPORT                        R5 K20 [script]
       66 GETTABLEKS                       R5 R5 K11 ["GameInternationalization"]
       68 MOVE                             R6 R1
       69 MOVE                             R7 R2
       70 CALL                             R4 3 1
       71 SETTABLEKS                       R4 R3 K11 ["GameInternationalization"]
       73 GETUPVAL                         R4 2
       74 GETIMPORT                        R5 K20 [script]
       76 GETTABLEKS                       R5 R5 K12 ["Inventory"]
       78 MOVE                             R6 R1
       79 MOVE                             R7 R2
       80 CALL                             R4 3 1
       81 SETTABLEKS                       R4 R3 K12 ["Inventory"]
       83 GETUPVAL                         R4 2
       84 GETIMPORT                        R5 K20 [script]
       86 GETTABLEKS                       R5 R5 K13 ["Locale"]
       88 MOVE                             R6 R1
       89 MOVE                             R7 R2
       90 CALL                             R4 3 1
       91 SETTABLEKS                       R4 R3 K13 ["Locale"]
       93 GETUPVAL                         R4 2
       94 GETIMPORT                        R5 K20 [script]
       96 GETTABLEKS                       R5 R5 K14 ["LocalizationTables"]
       98 MOVE                             R6 R1
       99 MOVE                             R7 R2
      100 CALL                             R4 3 1
      101 SETTABLEKS                       R4 R3 K14 ["LocalizationTables"]
      103 GETUPVAL                         R4 2
      104 GETIMPORT                        R5 K20 [script]
      106 GETTABLEKS                       R5 R5 K15 ["Develop"]
      108 MOVE                             R6 R1
      109 MOVE                             R7 R2
      110 CALL                             R4 3 1
      111 SETTABLEKS                       R4 R3 K15 ["Develop"]
      113 GETUPVAL                         R4 2
      114 GETIMPORT                        R5 K20 [script]
      116 GETTABLEKS                       R5 R5 K16 ["TranslationRoles"]
      118 MOVE                             R6 R1
      119 MOVE                             R7 R2
      120 CALL                             R4 3 1
      121 SETTABLEKS                       R4 R3 K16 ["TranslationRoles"]
      123 GETUPVAL                         R4 2
      124 GETIMPORT                        R5 K20 [script]
      126 GETTABLEKS                       R5 R5 K17 ["WWW"]
      128 MOVE                             R6 R1
      129 MOVE                             R7 R2
      130 CALL                             R4 3 1
      131 SETTABLEKS                       R4 R3 K17 ["WWW"]
      133 GETUPVAL                         R6 3
      134 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
      136 MOVE                             R5 R3
      137 GETIMPORT                        R4 K22 [setmetatable]
      139 CALL                             R4 2 0
      140 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETIMPORT                        R2 K1 [script]
        9 GETTABLEKS                       R2 R2 K5 ["Url"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Http"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K7 ["Networking"]
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["Util"]
       23 GETTABLEKS                       R4 R4 K9 ["strict"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K10 [PROTO_0]
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R3
       29 DUPTABLE                         R5 K11 [{"Url"}]
       30 SETTABLEKS                       R1 R5 K5 ["Url"]
       32 SETTABLEKS                       R5 R5 K12 ["__index"]
       34 DUPCLOSURE                       R6 K13 [PROTO_1]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R5
       39 SETTABLEKS                       R6 R5 K14 ["new"]
       41 RETURN                           R5 1
