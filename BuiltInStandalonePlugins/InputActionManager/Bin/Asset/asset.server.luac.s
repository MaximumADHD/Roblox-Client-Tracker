PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["Destroy"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["InputActionManager"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["InputActionManager"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R3 R0 K13 ["Bin"]
       33 GETTABLEKS                       R3 R3 K14 ["Common"]
       35 GETTABLEKS                       R3 R3 K15 ["defineLuaFlags"]
       37 CALL                             R2 1 1
       38 GETTABLEKS                       R3 R2 K16 ["getFFlagEnableInputActionManager"]
       40 CALL                             R3 0 1
       41 JUMPIF                           R3 ; [+1]
       42 RETURN                           R0 0
       43 GETIMPORT                        R3 K7 [require]
       45 GETTABLEKS                       R4 R0 K13 ["Bin"]
       47 GETTABLEKS                       R4 R4 K14 ["Common"]
       49 GETTABLEKS                       R4 R4 K17 ["pluginType"]
       51 CALL                             R3 1 1
       52 GETIMPORT                        R4 K7 [require]
       54 GETTABLEKS                       R5 R0 K11 ["Src"]
       56 GETTABLEKS                       R5 R5 K18 ["Guest"]
       58 GETTABLEKS                       R5 R5 K19 ["createGuestInterface"]
       60 CALL                             R4 1 1
       61 GETIMPORT                        R5 K7 [require]
       63 GETTABLEKS                       R6 R0 K13 ["Bin"]
       65 GETTABLEKS                       R6 R6 K14 ["Common"]
       67 GETTABLEKS                       R6 R6 K20 ["StudioNetworking"]
       69 CALL                             R5 1 1
       70 GETTABLEKS                       R6 R5 K21 ["create"]
       72 DUPTABLE                         R7 K25 [{[1], ["isGuest"], ["isHost"] = True}]
       73 GETIMPORT                        R8 K1 [plugin]
       75 SETTABLEKS                       R8 R7 K0 ["plugin"]
       77 GETTABLEKS                       R9 R3 K26 ["get"]
       79 CALL                             R9 0 1
       80 GETTABLEKS                       R10 R3 K27 ["Asset"]
       82 JUMPIFEQ                         R9 R10 ; [+2]
       84 LOADB                            R8 0 +1
       85 LOADB                            R8 1
       86 SETTABLEKS                       R8 R7 K22 ["isGuest"]
       88 CALL                             R6 1 0
       89 GETTABLEKS                       R6 R5 K26 ["get"]
       91 CALL                             R6 0 1
       92 MOVE                             R7 R4
       93 MOVE                             R8 R6
       94 GETIMPORT                        R9 K1 [plugin]
       96 CALL                             R7 2 1
       97 GETIMPORT                        R8 K1 [plugin]
       99 GETTABLEKS                       R8 R8 K28 ["Unloading"]
      101 DUPCLOSURE                       R10 K29 [PROTO_0]
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R7
      104 NAMECALL                         R8 R8 K30 ["Connect"]
      106 CALL                             R8 2 0
      107 GETTABLEKS                       R8 R3 K26 ["get"]
      109 CALL                             R8 0 1
      110 GETTABLEKS                       R9 R3 K27 ["Asset"]
      112 JUMPIFEQ                         R8 R9 ; [+2]
      114 RETURN                           R0 0
      115 GETIMPORT                        R8 K7 [require]
      117 GETTABLEKS                       R9 R0 K13 ["Bin"]
      119 GETTABLEKS                       R9 R9 K14 ["Common"]
      121 GETTABLEKS                       R9 R9 K31 ["setup"]
      123 CALL                             R8 1 1
      124 GETIMPORT                        R9 K7 [require]
      126 GETTABLEKS                       R10 R0 K13 ["Bin"]
      128 GETTABLEKS                       R10 R10 K14 ["Common"]
      130 GETTABLEKS                       R10 R10 K32 ["setupMain"]
      132 CALL                             R9 1 1
      133 MOVE                             R10 R8
      134 GETIMPORT                        R11 K1 [plugin]
      136 MOVE                             R12 R9
      137 CALL                             R10 2 0
      138 RETURN                           R0 0
