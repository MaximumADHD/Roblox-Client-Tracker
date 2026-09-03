PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MemStorageService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Gen3d"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Bin"]
       17 GETTABLEKS                       R3 R3 K11 ["Common"]
       19 GETTABLEKS                       R3 R3 K12 ["defineLuaFlags"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R2 K13 ["getFFlagEnableTextureGenStudio"]
       24 CALL                             R3 0 1
       25 JUMPIF                           R3 ; [+1]
       26 RETURN                           R0 0
       27 GETIMPORT                        R3 K9 [require]
       29 GETTABLEKS                       R4 R1 K14 ["Packages"]
       31 GETTABLEKS                       R4 R4 K15 ["TestLoader"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R3 K16 ["isCli"]
       36 CALL                             R4 0 1
       37 JUMPIFNOT                        R4 ; [+5]
       38 GETIMPORT                        R4 K18 [error]
       40 LOADK                            R5 K19 ["roblox-cli should not be loading standalone plugins"]
       41 CALL                             R4 1 0
       42 RETURN                           R0 0
       43 GETIMPORT                        R4 K9 [require]
       45 GETTABLEKS                       R5 R1 K10 ["Bin"]
       47 GETTABLEKS                       R5 R5 K11 ["Common"]
       49 GETTABLEKS                       R5 R5 K20 ["pluginType"]
       51 CALL                             R4 1 1
       52 GETTABLEKS                       R5 R4 K21 ["get"]
       54 CALL                             R5 0 1
       55 GETTABLEKS                       R6 R4 K22 ["Standalone"]
       57 JUMPIFEQ                         R5 R6 ; [+2]
       59 RETURN                           R0 0
       60 LOADK                            R7 K23 ["Gen3dLoaded"]
       61 LOADK                            R8 K24 ["true"]
       62 NAMECALL                         R5 R0 K25 ["SetItem"]
       64 CALL                             R5 3 0
       65 GETIMPORT                        R5 K9 [require]
       67 GETTABLEKS                       R6 R1 K10 ["Bin"]
       69 GETTABLEKS                       R6 R6 K11 ["Common"]
       71 GETTABLEKS                       R6 R6 K26 ["StudioNetworking"]
       73 CALL                             R5 1 1
       74 GETTABLEKS                       R6 R5 K27 ["create"]
       76 DUPTABLE                         R7 K34 [{["plugin"], ["isGuest"] = True, ["isHost"] = False, ["useSuspendOverride"] = True}]
       77 GETIMPORT                        R8 K35 [plugin]
       79 SETTABLEKS                       R8 R7 K28 ["plugin"]
       81 CALL                             R6 1 0
       82 GETIMPORT                        R6 K35 [plugin]
       84 GETTABLEKS                       R6 R6 K36 ["Unloading"]
       86 DUPCLOSURE                       R8 K37 [PROTO_0]
       87 CAPTURE                          VAL R5
       88 NAMECALL                         R6 R6 K38 ["Connect"]
       90 CALL                             R6 2 0
       91 GETIMPORT                        R6 K9 [require]
       93 GETTABLEKS                       R7 R1 K14 ["Packages"]
       95 GETTABLEKS                       R7 R7 K39 ["AssistantUI"]
       97 CALL                             R6 1 1
       98 GETIMPORT                        R7 K9 [require]
      100 GETTABLEKS                       R8 R1 K14 ["Packages"]
      102 GETTABLEKS                       R8 R8 K40 ["_Index"]
      104 GETTABLEKS                       R8 R8 K39 ["AssistantUI"]
      106 GETTABLEKS                       R8 R8 K39 ["AssistantUI"]
      108 GETTABLEKS                       R8 R8 K41 ["Guest"]
      110 GETTABLEKS                       R8 R8 K42 ["JsonEnvironment"]
      112 CALL                             R7 1 1
      113 GETIMPORT                        R8 K9 [require]
      115 GETTABLEKS                       R9 R1 K43 ["Src"]
      117 GETTABLEKS                       R9 R9 K41 ["Guest"]
      119 GETTABLEKS                       R9 R9 K44 ["createStudioEnvironment"]
      121 CALL                             R8 1 1
      122 MOVE                             R9 R8
      123 GETIMPORT                        R10 K35 [plugin]
      125 CALL                             R9 1 1
      126 GETTABLEKS                       R10 R6 K41 ["Guest"]
      128 GETTABLEKS                       R10 R10 K45 ["Environment"]
      130 GETTABLEKS                       R10 R10 K46 ["set"]
      132 MOVE                             R11 R9
      133 CALL                             R10 1 0
      134 GETTABLEKS                       R10 R7 K47 ["setup"]
      136 MOVE                             R11 R9
      137 CALL                             R10 1 0
      138 GETIMPORT                        R10 K9 [require]
      140 GETTABLEKS                       R11 R1 K10 ["Bin"]
      142 GETTABLEKS                       R11 R11 K11 ["Common"]
      144 GETTABLEKS                       R11 R11 K47 ["setup"]
      146 CALL                             R10 1 1
      147 GETIMPORT                        R11 K9 [require]
      149 GETTABLEKS                       R12 R1 K10 ["Bin"]
      151 GETTABLEKS                       R12 R12 K11 ["Common"]
      153 GETTABLEKS                       R12 R12 K48 ["setupMain"]
      155 CALL                             R11 1 1
      156 MOVE                             R12 R10
      157 GETIMPORT                        R13 K35 [plugin]
      159 MOVE                             R14 R11
      160 CALL                             R12 2 0
      161 RETURN                           R0 0
