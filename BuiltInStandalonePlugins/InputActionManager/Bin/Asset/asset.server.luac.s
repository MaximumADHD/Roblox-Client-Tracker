PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["Destroy"]
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
       13 GETTABLEKS                       R3 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R3 K9 ["TestLoader"]
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
       31 GETTABLEKS                       R5 R0 K13 ["Bin"]
       33 GETTABLEKS                       R4 R5 K14 ["Common"]
       35 GETTABLEKS                       R3 R4 K15 ["defineLuaFlags"]
       37 CALL                             R2 1 1
       38 GETTABLEKS                       R3 R2 K16 ["getFFlagEnableInputActionManager"]
       40 CALL                             R3 0 1
       41 JUMPIF                           R3 ; [+1]
       42 RETURN                           R0 0
       43 GETIMPORT                        R3 K7 [require]
       45 GETTABLEKS                       R6 R0 K13 ["Bin"]
       47 GETTABLEKS                       R5 R6 K14 ["Common"]
       49 GETTABLEKS                       R4 R5 K17 ["pluginType"]
       51 CALL                             R3 1 1
       52 GETIMPORT                        R4 K7 [require]
       54 GETTABLEKS                       R7 R0 K11 ["Src"]
       56 GETTABLEKS                       R6 R7 K18 ["Guest"]
       58 GETTABLEKS                       R5 R6 K19 ["createGuestInterface"]
       60 CALL                             R4 1 1
       61 GETIMPORT                        R5 K7 [require]
       63 GETTABLEKS                       R8 R0 K13 ["Bin"]
       65 GETTABLEKS                       R7 R8 K14 ["Common"]
       67 GETTABLEKS                       R6 R7 K20 ["StudioNetworking"]
       69 CALL                             R5 1 1
       70 GETTABLEKS                       R6 R5 K21 ["create"]
       72 DUPTABLE                         R7 K24 [{"plugin", "isGuest", "isHost"}]
       73 GETIMPORT                        R8 K1 [plugin]
       75 SETTABLEKS                       R8 R7 K0 ["plugin"]
       77 GETTABLEKS                       R9 R3 K25 ["get"]
       79 CALL                             R9 0 1
       80 GETTABLEKS                       R10 R3 K26 ["Asset"]
       82 JUMPIFEQ                         R9 R10 ; [+2]
       84 LOADB                            R8 0 +1
       85 LOADB                            R8 1
       86 SETTABLEKS                       R8 R7 K22 ["isGuest"]
       88 LOADB                            R8 1
       89 SETTABLEKS                       R8 R7 K23 ["isHost"]
       91 CALL                             R6 1 0
       92 GETTABLEKS                       R6 R5 K25 ["get"]
       94 CALL                             R6 0 1
       95 MOVE                             R7 R4
       96 MOVE                             R8 R6
       97 CALL                             R7 1 1
       98 GETIMPORT                        R9 K1 [plugin]
      100 GETTABLEKS                       R8 R9 K27 ["Unloading"]
      102 DUPCLOSURE                       R10 K28 [PROTO_0]
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R7
      105 NAMECALL                         R8 R8 K29 ["Connect"]
      107 CALL                             R8 2 0
      108 GETTABLEKS                       R8 R3 K25 ["get"]
      110 CALL                             R8 0 1
      111 GETTABLEKS                       R9 R3 K26 ["Asset"]
      113 JUMPIFEQ                         R8 R9 ; [+2]
      115 RETURN                           R0 0
      116 GETIMPORT                        R8 K7 [require]
      118 GETTABLEKS                       R11 R0 K13 ["Bin"]
      120 GETTABLEKS                       R10 R11 K14 ["Common"]
      122 GETTABLEKS                       R9 R10 K30 ["setup"]
      124 CALL                             R8 1 1
      125 GETIMPORT                        R9 K7 [require]
      127 GETTABLEKS                       R12 R0 K13 ["Bin"]
      129 GETTABLEKS                       R11 R12 K14 ["Common"]
      131 GETTABLEKS                       R10 R11 K31 ["setupMain"]
      133 CALL                             R9 1 1
      134 MOVE                             R10 R8
      135 GETIMPORT                        R11 K1 [plugin]
      137 MOVE                             R12 R9
      138 CALL                             R10 2 0
      139 RETURN                           R0 0
