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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 1 0
       16 GETTABLEKS                       R3 R1 K8 ["isCli"]
       18 CALL                             R3 0 1
       19 JUMPIFNOT                        R3 ; [+150]
       20 DUPTABLE                         R3 K10 [{"__index"}]
       21 DUPCLOSURE                       R4 K11 [PROTO_1]
       22 SETTABLEKS                       R4 R3 K9 ["__index"]
       24 DUPTABLE                         R4 K26 [{"AssetService", "AssetManagerService", "BrowserService", "ContentProvider", "GroupService", "GuiService", "InsertService", "Players", "RbxAnalyticsService", "SoundService", "StartPageService", "StudioService", "TelemetryService", "UserService"}]
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
       63 SETTABLEKS                       R5 R4 K15 ["ContentProvider"]
       65 NEWTABLE                         R6 0 0
       67 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
       69 MOVE                             R7 R3
       70 GETIMPORT                        R5 K28 [setmetatable]
       72 CALL                             R5 2 1
       73 SETTABLEKS                       R5 R4 K16 ["GroupService"]
       75 NEWTABLE                         R6 0 0
       77 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
       79 MOVE                             R7 R3
       80 GETIMPORT                        R5 K28 [setmetatable]
       82 CALL                             R5 2 1
       83 SETTABLEKS                       R5 R4 K17 ["GuiService"]
       85 NEWTABLE                         R6 0 0
       87 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
       89 MOVE                             R7 R3
       90 GETIMPORT                        R5 K28 [setmetatable]
       92 CALL                             R5 2 1
       93 SETTABLEKS                       R5 R4 K18 ["InsertService"]
       95 NEWTABLE                         R6 0 0
       97 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
       99 MOVE                             R7 R3
      100 GETIMPORT                        R5 K28 [setmetatable]
      102 CALL                             R5 2 1
      103 SETTABLEKS                       R5 R4 K19 ["Players"]
      105 NEWTABLE                         R6 0 0
      107 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
      109 MOVE                             R7 R3
      110 GETIMPORT                        R5 K28 [setmetatable]
      112 CALL                             R5 2 1
      113 SETTABLEKS                       R5 R4 K20 ["RbxAnalyticsService"]
      115 NEWTABLE                         R6 0 0
      117 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
      119 MOVE                             R7 R3
      120 GETIMPORT                        R5 K28 [setmetatable]
      122 CALL                             R5 2 1
      123 SETTABLEKS                       R5 R4 K21 ["SoundService"]
      125 NEWTABLE                         R6 0 0
      127 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
      129 MOVE                             R7 R3
      130 GETIMPORT                        R5 K28 [setmetatable]
      132 CALL                             R5 2 1
      133 SETTABLEKS                       R5 R4 K22 ["StartPageService"]
      135 NEWTABLE                         R6 0 0
      137 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
      139 MOVE                             R7 R3
      140 GETIMPORT                        R5 K28 [setmetatable]
      142 CALL                             R5 2 1
      143 SETTABLEKS                       R5 R4 K23 ["StudioService"]
      145 NEWTABLE                         R6 0 0
      147 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
      149 MOVE                             R7 R3
      150 GETIMPORT                        R5 K28 [setmetatable]
      152 CALL                             R5 2 1
      153 SETTABLEKS                       R5 R4 K24 ["TelemetryService"]
      155 NEWTABLE                         R6 0 0
      157 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
      159 MOVE                             R7 R3
      160 GETIMPORT                        R5 K28 [setmetatable]
      162 CALL                             R5 2 1
      163 SETTABLEKS                       R5 R4 K25 ["UserService"]
      165 DUPCLOSURE                       R5 K29 [PROTO_2]
      166 CAPTURE                          VAL R4
      167 SETTABLEKS                       R5 R2 K30 ["GetService"]
      169 RETURN                           R2 1
      170 DUPCLOSURE                       R3 K31 [PROTO_3]
      171 SETTABLEKS                       R3 R2 K30 ["GetService"]
      173 RETURN                           R2 1
