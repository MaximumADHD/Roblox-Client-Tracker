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
       93 GETTABLEKS                       R7 R1 K39 ["Src"]
       95 GETTABLEKS                       R7 R7 K40 ["Guest"]
       97 GETTABLEKS                       R7 R7 K41 ["GuestEnvironmentStore"]
       99 CALL                             R6 1 1
      100 GETIMPORT                        R7 K9 [require]
      102 GETTABLEKS                       R8 R1 K39 ["Src"]
      104 GETTABLEKS                       R8 R8 K40 ["Guest"]
      106 GETTABLEKS                       R8 R8 K42 ["createStudioEnvironment"]
      108 CALL                             R7 1 1
      109 MOVE                             R8 R7
      110 GETIMPORT                        R9 K35 [plugin]
      112 CALL                             R8 1 1
      113 GETTABLEKS                       R9 R6 K43 ["set"]
      115 MOVE                             R10 R8
      116 CALL                             R9 1 0
      117 GETIMPORT                        R9 K9 [require]
      119 GETTABLEKS                       R10 R1 K10 ["Bin"]
      121 GETTABLEKS                       R10 R10 K11 ["Common"]
      123 GETTABLEKS                       R10 R10 K44 ["setup"]
      125 CALL                             R9 1 1
      126 GETIMPORT                        R10 K9 [require]
      128 GETTABLEKS                       R11 R1 K10 ["Bin"]
      130 GETTABLEKS                       R11 R11 K11 ["Common"]
      132 GETTABLEKS                       R11 R11 K45 ["setupMain"]
      134 CALL                             R10 1 1
      135 MOVE                             R11 R9
      136 GETIMPORT                        R12 K35 [plugin]
      138 MOVE                             R13 R10
      139 CALL                             R11 2 0
      140 RETURN                           R0 0
