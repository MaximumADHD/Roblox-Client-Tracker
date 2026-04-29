PROTO_0:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R2 K2 ["DmChanged"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K3 ["CurrentDataModelType"]
        6 NAMECALL                         R0 R0 K4 ["Invoke"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R2 K2 ["DmChanged"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K3 ["CurrentDataModelType"]
        6 NAMECALL                         R0 R0 K4 ["Invoke"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R2 K2 ["placeid"]
        3 GETIMPORT                        R4 K4 [game]
        5 GETTABLEKS                       R3 R4 K5 ["PlaceId"]
        7 NAMECALL                         R0 R0 K6 ["SetItem"]
        9 CALL                             R0 3 0
       10 GETIMPORT                        R0 K1 [plugin]
       12 LOADK                            R2 K7 ["idsupdated"]
       13 NAMECALL                         R0 R0 K8 ["Invoke"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R2 K2 ["universeid"]
        3 GETIMPORT                        R4 K4 [game]
        5 GETTABLEKS                       R3 R4 K5 ["GameId"]
        7 NAMECALL                         R0 R0 K6 ["SetItem"]
        9 CALL                             R0 3 0
       10 GETIMPORT                        R0 K1 [plugin]
       12 LOADK                            R2 K7 ["idsupdated"]
       13 NAMECALL                         R0 R0 K8 ["Invoke"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["CreatorConfig"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R3 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R3 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["CreatorConfig"]
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
       38 GETTABLEKS                       R3 R2 K16 ["getFFlagCreatorConfigDmChangedListener"]
       40 CALL                             R3 0 1
       41 JUMPIFNOT                        R3 ; [+20]
       42 GETIMPORT                        R5 K1 [plugin]
       44 GETTABLEKS                       R4 R5 K17 ["MultipleDocumentInterfaceInstance"]
       46 GETTABLEKS                       R5 R4 K18 ["FocusedDataModelSession"]
       48 GETTABLEKS                       R6 R5 K19 ["CurrentDataModelTypeChanged"]
       50 DUPCLOSURE                       R8 K20 [PROTO_0]
       51 CAPTURE                          VAL R5
       52 NAMECALL                         R6 R6 K21 ["Connect"]
       54 CALL                             R6 2 0
       55 GETTABLEKS                       R6 R4 K22 ["DataModelSessionStarted"]
       57 DUPCLOSURE                       R8 K23 [PROTO_1]
       58 CAPTURE                          VAL R5
       59 NAMECALL                         R6 R6 K21 ["Connect"]
       61 CALL                             R6 2 0
       62 GETIMPORT                        R4 K25 [game]
       64 LOADK                            R6 K26 ["RunService"]
       65 NAMECALL                         R4 R4 K27 ["GetService"]
       67 CALL                             R4 2 1
       68 NAMECALL                         R4 R4 K28 ["IsEdit"]
       70 CALL                             R4 1 1
       71 JUMPIFNOT                        R4 ; [+48]
       72 GETIMPORT                        R5 K25 [game]
       74 GETTABLEKS                       R4 R5 K29 ["PlaceId"]
       76 GETIMPORT                        R6 K25 [game]
       78 GETTABLEKS                       R5 R6 K30 ["GameId"]
       80 GETIMPORT                        R6 K1 [plugin]
       82 LOADK                            R8 K31 ["placeid"]
       83 MOVE                             R9 R4
       84 NAMECALL                         R6 R6 K32 ["SetItem"]
       86 CALL                             R6 3 0
       87 GETIMPORT                        R6 K1 [plugin]
       89 LOADK                            R8 K33 ["universeid"]
       90 MOVE                             R9 R5
       91 NAMECALL                         R6 R6 K32 ["SetItem"]
       93 CALL                             R6 3 0
       94 GETIMPORT                        R6 K1 [plugin]
       96 LOADK                            R8 K34 ["idsupdated"]
       97 NAMECALL                         R6 R6 K35 ["Invoke"]
       99 CALL                             R6 2 0
      100 GETIMPORT                        R6 K25 [game]
      102 LOADK                            R8 K29 ["PlaceId"]
      103 NAMECALL                         R6 R6 K36 ["GetPropertyChangedSignal"]
      105 CALL                             R6 2 1
      106 DUPCLOSURE                       R8 K37 [PROTO_2]
      107 NAMECALL                         R6 R6 K21 ["Connect"]
      109 CALL                             R6 2 0
      110 GETIMPORT                        R6 K25 [game]
      112 LOADK                            R8 K30 ["GameId"]
      113 NAMECALL                         R6 R6 K36 ["GetPropertyChangedSignal"]
      115 CALL                             R6 2 1
      116 DUPCLOSURE                       R8 K38 [PROTO_3]
      117 NAMECALL                         R6 R6 K21 ["Connect"]
      119 CALL                             R6 2 0
      120 GETIMPORT                        R4 K7 [require]
      122 GETTABLEKS                       R7 R0 K13 ["Bin"]
      124 GETTABLEKS                       R6 R7 K14 ["Common"]
      126 GETTABLEKS                       R5 R6 K39 ["pluginType"]
      128 CALL                             R4 1 1
      129 GETTABLEKS                       R5 R4 K40 ["get"]
      131 CALL                             R5 0 1
      132 GETTABLEKS                       R6 R4 K41 ["Asset"]
      134 JUMPIFEQ                         R5 R6 ; [+2]
      136 RETURN                           R0 0
      137 GETIMPORT                        R5 K7 [require]
      139 GETTABLEKS                       R8 R0 K13 ["Bin"]
      141 GETTABLEKS                       R7 R8 K14 ["Common"]
      143 GETTABLEKS                       R6 R7 K42 ["setup"]
      145 CALL                             R5 1 1
      146 GETIMPORT                        R6 K7 [require]
      148 GETTABLEKS                       R9 R0 K13 ["Bin"]
      150 GETTABLEKS                       R8 R9 K14 ["Common"]
      152 GETTABLEKS                       R7 R8 K43 ["setupMain"]
      154 CALL                             R6 1 1
      155 MOVE                             R7 R5
      156 GETIMPORT                        R8 K1 [plugin]
      158 MOVE                             R9 R6
      159 CALL                             R7 2 0
      160 RETURN                           R0 0
