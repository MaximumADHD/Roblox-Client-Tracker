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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["%*:%*() called but %* is unavailable"]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 GETUPVAL                         R6 1
        5 NAMECALL                         R2 R2 K1 ["format"]
        7 CALL                             R2 4 1
        8 MOVE                             R1 R2
        9 LOADK                            R2 K2 ["WARN"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 3
       12 RETURN                           R0 1

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R2 1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 DUPTABLE                         R4 K1 [{"__index"}]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 SETTABLEKS                       R5 R4 K0 ["__index"]
        9 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       11 MOVE                             R3 R1
       12 GETIMPORT                        R2 K3 [setmetatable]
       14 CALL                             R2 2 1
       15 RETURN                           R2 1

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["logIfDebug"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 2 0
       25 GETTABLEKS                       R4 R1 K11 ["isCli"]
       27 CALL                             R4 0 1
       28 JUMPIFNOT                        R4 ; [+170]
       29 DUPTABLE                         R4 K13 [{"__index"}]
       30 DUPCLOSURE                       R5 K14 [PROTO_1]
       31 SETTABLEKS                       R5 R4 K12 ["__index"]
       33 DUPTABLE                         R5 K31 [{"AssetService", "AssetManagerService", "BrowserService", "ContentProvider", "GroupService", "GuiService", "InsertService", "IXPService", "Players", "PluginManagementService", "RbxAnalyticsService", "SoundService", "StartPageService", "StudioService", "TelemetryService", "UserService"}]
       34 NEWTABLE                         R7 0 0
       36 FASTCALL2                        SETMETATABLE R7 R4 ; [+4]
       38 MOVE                             R8 R4
       39 GETIMPORT                        R6 K33 [setmetatable]
       41 CALL                             R6 2 1
       42 SETTABLEKS                       R6 R5 K15 ["AssetService"]
       44 NEWTABLE                         R7 0 0
       46 FASTCALL2                        SETMETATABLE R7 R4 ; [+4]
       48 MOVE                             R8 R4
       49 GETIMPORT                        R6 K33 [setmetatable]
       51 CALL                             R6 2 1
       52 SETTABLEKS                       R6 R5 K16 ["AssetManagerService"]
       54 NEWTABLE                         R7 0 0
       56 FASTCALL2                        SETMETATABLE R7 R4 ; [+4]
       58 MOVE                             R8 R4
       59 GETIMPORT                        R6 K33 [setmetatable]
       61 CALL                             R6 2 1
       62 SETTABLEKS                       R6 R5 K17 ["BrowserService"]
       64 NEWTABLE                         R7 0 0
       66 FASTCALL2                        SETMETATABLE R7 R4 ; [+4]
       68 MOVE                             R8 R4
       69 GETIMPORT                        R6 K33 [setmetatable]
       71 CALL                             R6 2 1
       72 SETTABLEKS                       R6 R5 K18 ["ContentProvider"]
       74 NEWTABLE                         R7 0 0
       76 FASTCALL2                        SETMETATABLE R7 R4 ; [+4]
       78 MOVE                             R8 R4
       79 GETIMPORT                        R6 K33 [setmetatable]
       81 CALL                             R6 2 1
       82 SETTABLEKS                       R6 R5 K19 ["GroupService"]
       84 NEWTABLE                         R7 0 0
       86 FASTCALL2                        SETMETATABLE R7 R4 ; [+4]
       88 MOVE                             R8 R4
       89 GETIMPORT                        R6 K33 [setmetatable]
       91 CALL                             R6 2 1
       92 SETTABLEKS                       R6 R5 K20 ["GuiService"]
       94 NEWTABLE                         R7 0 0
       96 FASTCALL2                        SETMETATABLE R7 R4 ; [+4]
       98 MOVE                             R8 R4
       99 GETIMPORT                        R6 K33 [setmetatable]
      101 CALL                             R6 2 1
      102 SETTABLEKS                       R6 R5 K21 ["InsertService"]
      104 NEWTABLE                         R7 0 0
      106 FASTCALL2                        SETMETATABLE R7 R4 ; [+4]
      108 MOVE                             R8 R4
      109 GETIMPORT                        R6 K33 [setmetatable]
      111 CALL                             R6 2 1
      112 SETTABLEKS                       R6 R5 K22 ["IXPService"]
      114 NEWTABLE                         R7 0 0
      116 FASTCALL2                        SETMETATABLE R7 R4 ; [+4]
      118 MOVE                             R8 R4
      119 GETIMPORT                        R6 K33 [setmetatable]
      121 CALL                             R6 2 1
      122 SETTABLEKS                       R6 R5 K23 ["Players"]
      124 NEWTABLE                         R7 0 0
      126 FASTCALL2                        SETMETATABLE R7 R4 ; [+4]
      128 MOVE                             R8 R4
      129 GETIMPORT                        R6 K33 [setmetatable]
      131 CALL                             R6 2 1
      132 SETTABLEKS                       R6 R5 K24 ["PluginManagementService"]
      134 NEWTABLE                         R7 0 0
      136 FASTCALL2                        SETMETATABLE R7 R4 ; [+4]
      138 MOVE                             R8 R4
      139 GETIMPORT                        R6 K33 [setmetatable]
      141 CALL                             R6 2 1
      142 SETTABLEKS                       R6 R5 K25 ["RbxAnalyticsService"]
      144 NEWTABLE                         R7 0 0
      146 FASTCALL2                        SETMETATABLE R7 R4 ; [+4]
      148 MOVE                             R8 R4
      149 GETIMPORT                        R6 K33 [setmetatable]
      151 CALL                             R6 2 1
      152 SETTABLEKS                       R6 R5 K26 ["SoundService"]
      154 NEWTABLE                         R7 0 0
      156 FASTCALL2                        SETMETATABLE R7 R4 ; [+4]
      158 MOVE                             R8 R4
      159 GETIMPORT                        R6 K33 [setmetatable]
      161 CALL                             R6 2 1
      162 SETTABLEKS                       R6 R5 K27 ["StartPageService"]
      164 NEWTABLE                         R7 0 0
      166 FASTCALL2                        SETMETATABLE R7 R4 ; [+4]
      168 MOVE                             R8 R4
      169 GETIMPORT                        R6 K33 [setmetatable]
      171 CALL                             R6 2 1
      172 SETTABLEKS                       R6 R5 K28 ["StudioService"]
      174 NEWTABLE                         R7 0 0
      176 FASTCALL2                        SETMETATABLE R7 R4 ; [+4]
      178 MOVE                             R8 R4
      179 GETIMPORT                        R6 K33 [setmetatable]
      181 CALL                             R6 2 1
      182 SETTABLEKS                       R6 R5 K29 ["TelemetryService"]
      184 NEWTABLE                         R7 0 0
      186 FASTCALL2                        SETMETATABLE R7 R4 ; [+4]
      188 MOVE                             R8 R4
      189 GETIMPORT                        R6 K33 [setmetatable]
      191 CALL                             R6 2 1
      192 SETTABLEKS                       R6 R5 K30 ["UserService"]
      194 DUPCLOSURE                       R6 K34 [PROTO_2]
      195 CAPTURE                          VAL R5
      196 SETTABLEKS                       R6 R3 K35 ["GetService"]
      198 JUMP                             ; [+3]
      199 DUPCLOSURE                       R4 K36 [PROTO_3]
      200 SETTABLEKS                       R4 R3 K35 ["GetService"]
      202 DUPCLOSURE                       R4 K37 [PROTO_6]
      203 CAPTURE                          VAL R2
      204 SETTABLEKS                       R4 R3 K38 ["MakeUnavailableStub"]
      206 RETURN                           R3 1
