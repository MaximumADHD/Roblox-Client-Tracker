PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["PartyEmulator"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETTABLEKS                       R2 R0 K6 ["Src"]
       13 GETTABLEKS                       R1 R2 K7 ["Util"]
       15 GETIMPORT                        R2 K9 [require]
       17 GETTABLEKS                       R4 R0 K10 ["Packages"]
       19 GETTABLEKS                       R3 R4 K11 ["TestLoader"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R2 K12 ["launch"]
       24 LOADK                            R4 K4 ["PartyEmulator"]
       25 GETTABLEKS                       R5 R0 K6 ["Src"]
       27 CALL                             R3 2 0
       28 GETTABLEKS                       R3 R2 K13 ["isCli"]
       30 CALL                             R3 0 1
       31 JUMPIFNOT                        R3 ; [+1]
       32 RETURN                           R0 0
       33 GETIMPORT                        R3 K9 [require]
       35 GETTABLEKS                       R6 R0 K14 ["Bin"]
       37 GETTABLEKS                       R5 R6 K15 ["Common"]
       39 GETTABLEKS                       R4 R5 K16 ["defineLuaFlags"]
       41 CALL                             R3 1 1
       42 GETTABLEKS                       R4 R3 K17 ["getFFlagEnablePartyEmulatorService"]
       44 CALL                             R4 0 1
       45 JUMPIF                           R4 ; [+1]
       46 RETURN                           R0 0
       47 GETIMPORT                        R4 K9 [require]
       49 GETTABLEKS                       R7 R0 K14 ["Bin"]
       51 GETTABLEKS                       R6 R7 K15 ["Common"]
       53 GETTABLEKS                       R5 R6 K18 ["pluginType"]
       55 CALL                             R4 1 1
       56 GETIMPORT                        R5 K20 [game]
       58 LOADK                            R7 K21 ["RunService"]
       59 NAMECALL                         R5 R5 K22 ["GetService"]
       61 CALL                             R5 2 1
       62 GETIMPORT                        R6 K9 [require]
       64 GETTABLEKS                       R7 R1 K23 ["DmBridge"]
       66 CALL                             R6 1 1
       67 NEWTABLE                         R7 0 0
       69 NAMECALL                         R8 R5 K24 ["IsServer"]
       71 CALL                             R8 1 1
       72 JUMPIFNOT                        R8 ; [+6]
       73 GETTABLEKS                       R8 R6 K25 ["setupAssetDMInvokes"]
       75 GETIMPORT                        R9 K1 [plugin]
       77 CALL                             R8 1 1
       78 MOVE                             R7 R8
       79 GETIMPORT                        R9 K1 [plugin]
       81 GETTABLEKS                       R8 R9 K26 ["Unloading"]
       83 NEWCLOSURE                       R10 P0
       84 CAPTURE                          REF R7
       85 NAMECALL                         R8 R8 K27 ["Connect"]
       87 CALL                             R8 2 0
       88 GETTABLEKS                       R8 R4 K28 ["get"]
       90 CALL                             R8 0 1
       91 GETTABLEKS                       R9 R4 K29 ["Asset"]
       93 JUMPIFEQ                         R8 R9 ; [+3]
       95 CLOSEUPVALS                      R7
       96 RETURN                           R0 0
       97 GETIMPORT                        R8 K9 [require]
       99 GETTABLEKS                       R11 R0 K14 ["Bin"]
      101 GETTABLEKS                       R10 R11 K15 ["Common"]
      103 GETTABLEKS                       R9 R10 K30 ["setup"]
      105 CALL                             R8 1 1
      106 GETIMPORT                        R9 K9 [require]
      108 GETTABLEKS                       R12 R0 K14 ["Bin"]
      110 GETTABLEKS                       R11 R12 K15 ["Common"]
      112 GETTABLEKS                       R10 R11 K31 ["setupMain"]
      114 CALL                             R9 1 1
      115 MOVE                             R10 R8
      116 GETIMPORT                        R11 K1 [plugin]
      118 MOVE                             R12 R9
      119 CALL                             R10 2 0
      120 CLOSEUPVALS                      R7
      121 RETURN                           R0 0
