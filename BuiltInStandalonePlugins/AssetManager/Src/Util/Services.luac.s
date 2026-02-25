PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 DUPCLOSURE                       R2 K0 [PROTO_0]
        1 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetService"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 1 0
       16 GETTABLEKS                       R3 R1 K8 ["isCli"]
       18 CALL                             R3 0 1
       19 JUMPIFNOT                        R3 ; [+154]
       20 DUPTABLE                         R3 K10 [{"__index"}]
       21 DUPCLOSURE                       R4 K11 [PROTO_1]
       22 SETTABLEKS                       R4 R3 K9 ["__index"]
       24 DUPTABLE                         R4 K26 [{"AssetService", "AssetManagerService", "BrowserService", "BulkImportService", "ContentProvider", "GroupService", "GuiService", "InsertService", "Players", "RbxAnalyticsService", "SoundService", "StartPageService", "StudioService", "UserService"}]
       25 NEWTABLE                         R6 0 0
       27 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
       29 MOVE                             R7 R3
       30 GETIMPORT                        R5 K28 [setmetatable]
       32 CALL                             R5 2 1
       33 SETTABLEKS                       R5 R4 K12 ["AssetService"]
       35 NEWTABLE                         R6 0 0
       37 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
       39 MOVE                             R7 R3
       40 GETIMPORT                        R5 K28 [setmetatable]
       42 CALL                             R5 2 1
       43 SETTABLEKS                       R5 R4 K13 ["AssetManagerService"]
       45 NEWTABLE                         R6 0 0
       47 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
       49 MOVE                             R7 R3
       50 GETIMPORT                        R5 K28 [setmetatable]
       52 CALL                             R5 2 1
       53 SETTABLEKS                       R5 R4 K14 ["BrowserService"]
       55 NEWTABLE                         R6 0 0
       57 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
       59 MOVE                             R7 R3
       60 GETIMPORT                        R5 K28 [setmetatable]
       62 CALL                             R5 2 1
       63 SETTABLEKS                       R5 R4 K15 ["BulkImportService"]
       65 NEWTABLE                         R6 0 0
       67 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
       69 MOVE                             R7 R3
       70 GETIMPORT                        R5 K28 [setmetatable]
       72 CALL                             R5 2 1
       73 SETTABLEKS                       R5 R4 K16 ["ContentProvider"]
       75 NEWTABLE                         R6 0 0
       77 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
       79 MOVE                             R7 R3
       80 GETIMPORT                        R5 K28 [setmetatable]
       82 CALL                             R5 2 1
       83 SETTABLEKS                       R5 R4 K17 ["GroupService"]
       85 NEWTABLE                         R6 0 0
       87 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
       89 MOVE                             R7 R3
       90 GETIMPORT                        R5 K28 [setmetatable]
       92 CALL                             R5 2 1
       93 SETTABLEKS                       R5 R4 K18 ["GuiService"]
       95 NEWTABLE                         R6 0 0
       97 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
       99 MOVE                             R7 R3
      100 GETIMPORT                        R5 K28 [setmetatable]
      102 CALL                             R5 2 1
      103 SETTABLEKS                       R5 R4 K19 ["InsertService"]
      105 GETIMPORT                        R6 K5 [require]
      107 GETTABLEKS                       R9 R0 K29 ["Tests"]
      109 GETTABLEKS                       R8 R9 K30 ["Services"]
      111 GETTABLEKS                       R7 R8 K31 ["MockPlayersService"]
      113 CALL                             R6 1 1
      114 GETTABLEKS                       R5 R6 K32 ["new"]
      116 CALL                             R5 0 1
      117 SETTABLEKS                       R5 R4 K20 ["Players"]
      119 NEWTABLE                         R6 0 0
      121 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
      123 MOVE                             R7 R3
      124 GETIMPORT                        R5 K28 [setmetatable]
      126 CALL                             R5 2 1
      127 SETTABLEKS                       R5 R4 K21 ["RbxAnalyticsService"]
      129 NEWTABLE                         R6 0 0
      131 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
      133 MOVE                             R7 R3
      134 GETIMPORT                        R5 K28 [setmetatable]
      136 CALL                             R5 2 1
      137 SETTABLEKS                       R5 R4 K22 ["SoundService"]
      139 NEWTABLE                         R6 0 0
      141 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
      143 MOVE                             R7 R3
      144 GETIMPORT                        R5 K28 [setmetatable]
      146 CALL                             R5 2 1
      147 SETTABLEKS                       R5 R4 K23 ["StartPageService"]
      149 NEWTABLE                         R6 0 0
      151 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
      153 MOVE                             R7 R3
      154 GETIMPORT                        R5 K28 [setmetatable]
      156 CALL                             R5 2 1
      157 SETTABLEKS                       R5 R4 K24 ["StudioService"]
      159 NEWTABLE                         R6 0 0
      161 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
      163 MOVE                             R7 R3
      164 GETIMPORT                        R5 K28 [setmetatable]
      166 CALL                             R5 2 1
      167 SETTABLEKS                       R5 R4 K25 ["UserService"]
      169 DUPCLOSURE                       R5 K33 [PROTO_2]
      170 CAPTURE                          VAL R4
      171 SETTABLEKS                       R5 R2 K34 ["GetService"]
      173 RETURN                           R2 1
      174 DUPCLOSURE                       R3 K35 [PROTO_3]
      175 SETTABLEKS                       R3 R2 K34 ["GetService"]
      177 RETURN                           R2 1
