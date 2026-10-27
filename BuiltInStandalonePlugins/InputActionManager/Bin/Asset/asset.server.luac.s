PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["Destroy"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R8 R1
        7 GETUPVAL                         R9 0
        8 MOVE                             R11 R6
        9 NAMECALL                         R9 R9 K0 ["GetOrCreateUniqueId"]
       11 CALL                             R9 2 -1
       12 FASTCALL                         TABLE_INSERT ; [+2]
       13 GETIMPORT                        R7 K3 [table.insert]
       15 CALL                             R7 -1 0
       16 FORGLOOP                         R2 2 ; [-11]
       18 GETIMPORT                        R2 K5 [plugin]
       20 LOADK                            R4 K6 ["FilterInstances"]
       21 MOVE                             R5 R1
       22 NAMECALL                         R2 R2 K7 ["Invoke"]
       24 CALL                             R2 3 0
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContextActionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["UniqueIdLookupService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [plugin]
       15 JUMPIF                           R2 ; [+1]
       16 RETURN                           R0 0
       17 GETIMPORT                        R2 K8 [script]
       19 LOADK                            R4 K9 ["InputActionManager"]
       20 NAMECALL                         R2 R2 K10 ["FindFirstAncestor"]
       22 CALL                             R2 2 1
       23 GETIMPORT                        R3 K12 [require]
       25 GETTABLEKS                       R4 R2 K13 ["Packages"]
       27 GETTABLEKS                       R4 R4 K14 ["TestLoader"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K15 ["launch"]
       32 LOADK                            R5 K9 ["InputActionManager"]
       33 GETTABLEKS                       R6 R2 K16 ["Src"]
       35 CALL                             R4 2 0
       36 GETTABLEKS                       R4 R3 K17 ["isCli"]
       38 CALL                             R4 0 1
       39 JUMPIFNOT                        R4 ; [+1]
       40 RETURN                           R0 0
       41 GETIMPORT                        R4 K12 [require]
       43 GETTABLEKS                       R5 R2 K18 ["Bin"]
       45 GETTABLEKS                       R5 R5 K19 ["Common"]
       47 GETTABLEKS                       R5 R5 K20 ["defineLuaFlags"]
       49 CALL                             R4 1 1
       50 GETTABLEKS                       R5 R4 K21 ["getFFlagEnableInputActionManager"]
       52 CALL                             R5 0 1
       53 JUMPIF                           R5 ; [+1]
       54 RETURN                           R0 0
       55 GETIMPORT                        R5 K12 [require]
       57 GETTABLEKS                       R6 R2 K18 ["Bin"]
       59 GETTABLEKS                       R6 R6 K19 ["Common"]
       61 GETTABLEKS                       R6 R6 K22 ["pluginType"]
       63 CALL                             R5 1 1
       64 GETIMPORT                        R6 K12 [require]
       66 GETTABLEKS                       R7 R2 K16 ["Src"]
       68 GETTABLEKS                       R7 R7 K23 ["Guest"]
       70 GETTABLEKS                       R7 R7 K24 ["createGuestInterface"]
       72 CALL                             R6 1 1
       73 GETIMPORT                        R7 K12 [require]
       75 GETTABLEKS                       R8 R2 K18 ["Bin"]
       77 GETTABLEKS                       R8 R8 K19 ["Common"]
       79 GETTABLEKS                       R8 R8 K25 ["StudioNetworking"]
       81 CALL                             R7 1 1
       82 GETTABLEKS                       R8 R7 K26 ["create"]
       84 DUPTABLE                         R9 K30 [{["plugin"], ["isGuest"], ["isHost"] = True}]
       85 GETIMPORT                        R10 K6 [plugin]
       87 SETTABLEKS                       R10 R9 K5 ["plugin"]
       89 GETTABLEKS                       R11 R5 K31 ["get"]
       91 CALL                             R11 0 1
       92 GETTABLEKS                       R12 R5 K32 ["Asset"]
       94 JUMPIFEQ                         R11 R12 ; [+2]
       96 LOADB                            R10 0 +1
       97 LOADB                            R10 1
       98 SETTABLEKS                       R10 R9 K27 ["isGuest"]
      100 CALL                             R8 1 0
      101 GETTABLEKS                       R8 R7 K31 ["get"]
      103 CALL                             R8 0 1
      104 MOVE                             R9 R6
      105 MOVE                             R10 R8
      106 GETIMPORT                        R11 K6 [plugin]
      108 CALL                             R9 2 1
      109 GETIMPORT                        R10 K6 [plugin]
      111 GETTABLEKS                       R10 R10 K33 ["Unloading"]
      113 DUPCLOSURE                       R12 K34 [PROTO_0]
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R9
      116 NAMECALL                         R10 R10 K35 ["Connect"]
      118 CALL                             R10 2 0
      119 GETTABLEKS                       R10 R4 K36 ["getFFlagIAMOpenFromProperties"]
      121 CALL                             R10 0 1
      122 JUMPIFNOT                        R10 ; [+7]
      123 GETTABLEKS                       R10 R0 K37 ["OpenInputActionManagerSignal"]
      125 DUPCLOSURE                       R12 K38 [PROTO_1]
      126 CAPTURE                          VAL R1
      127 NAMECALL                         R10 R10 K35 ["Connect"]
      129 CALL                             R10 2 0
      130 GETTABLEKS                       R10 R5 K31 ["get"]
      132 CALL                             R10 0 1
      133 GETTABLEKS                       R11 R5 K32 ["Asset"]
      135 JUMPIFEQ                         R10 R11 ; [+2]
      137 RETURN                           R0 0
      138 GETIMPORT                        R10 K12 [require]
      140 GETTABLEKS                       R11 R2 K18 ["Bin"]
      142 GETTABLEKS                       R11 R11 K19 ["Common"]
      144 GETTABLEKS                       R11 R11 K39 ["setup"]
      146 CALL                             R10 1 1
      147 GETIMPORT                        R11 K12 [require]
      149 GETTABLEKS                       R12 R2 K18 ["Bin"]
      151 GETTABLEKS                       R12 R12 K19 ["Common"]
      153 GETTABLEKS                       R12 R12 K40 ["setupMain"]
      155 CALL                             R11 1 1
      156 MOVE                             R12 R10
      157 GETIMPORT                        R13 K6 [plugin]
      159 MOVE                             R14 R11
      160 CALL                             R12 2 0
      161 RETURN                           R0 0
