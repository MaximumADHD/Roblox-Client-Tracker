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
       38 GETTABLEKS                       R3 R2 K16 ["getFFlagEnableCreatorConfig"]
       40 CALL                             R3 0 1
       41 JUMPIF                           R3 ; [+1]
       42 RETURN                           R0 0
       43 GETTABLEKS                       R3 R2 K17 ["getFFlagCreatorConfigDmChangedListener"]
       45 CALL                             R3 0 1
       46 JUMPIFNOT                        R3 ; [+20]
       47 GETIMPORT                        R5 K1 [plugin]
       49 GETTABLEKS                       R4 R5 K18 ["MultipleDocumentInterfaceInstance"]
       51 GETTABLEKS                       R5 R4 K19 ["FocusedDataModelSession"]
       53 GETTABLEKS                       R6 R5 K20 ["CurrentDataModelTypeChanged"]
       55 DUPCLOSURE                       R8 K21 [PROTO_0]
       56 CAPTURE                          VAL R5
       57 NAMECALL                         R6 R6 K22 ["Connect"]
       59 CALL                             R6 2 0
       60 GETTABLEKS                       R6 R4 K23 ["DataModelSessionStarted"]
       62 DUPCLOSURE                       R8 K24 [PROTO_1]
       63 CAPTURE                          VAL R5
       64 NAMECALL                         R6 R6 K22 ["Connect"]
       66 CALL                             R6 2 0
       67 GETIMPORT                        R4 K26 [game]
       69 LOADK                            R6 K27 ["RunService"]
       70 NAMECALL                         R4 R4 K28 ["GetService"]
       72 CALL                             R4 2 1
       73 NAMECALL                         R4 R4 K29 ["IsEdit"]
       75 CALL                             R4 1 1
       76 JUMPIFNOT                        R4 ; [+48]
       77 GETIMPORT                        R5 K26 [game]
       79 GETTABLEKS                       R4 R5 K30 ["PlaceId"]
       81 GETIMPORT                        R6 K26 [game]
       83 GETTABLEKS                       R5 R6 K31 ["GameId"]
       85 GETIMPORT                        R6 K1 [plugin]
       87 LOADK                            R8 K32 ["placeid"]
       88 MOVE                             R9 R4
       89 NAMECALL                         R6 R6 K33 ["SetItem"]
       91 CALL                             R6 3 0
       92 GETIMPORT                        R6 K1 [plugin]
       94 LOADK                            R8 K34 ["universeid"]
       95 MOVE                             R9 R5
       96 NAMECALL                         R6 R6 K33 ["SetItem"]
       98 CALL                             R6 3 0
       99 GETIMPORT                        R6 K1 [plugin]
      101 LOADK                            R8 K35 ["idsupdated"]
      102 NAMECALL                         R6 R6 K36 ["Invoke"]
      104 CALL                             R6 2 0
      105 GETIMPORT                        R6 K26 [game]
      107 LOADK                            R8 K30 ["PlaceId"]
      108 NAMECALL                         R6 R6 K37 ["GetPropertyChangedSignal"]
      110 CALL                             R6 2 1
      111 DUPCLOSURE                       R8 K38 [PROTO_2]
      112 NAMECALL                         R6 R6 K22 ["Connect"]
      114 CALL                             R6 2 0
      115 GETIMPORT                        R6 K26 [game]
      117 LOADK                            R8 K31 ["GameId"]
      118 NAMECALL                         R6 R6 K37 ["GetPropertyChangedSignal"]
      120 CALL                             R6 2 1
      121 DUPCLOSURE                       R8 K39 [PROTO_3]
      122 NAMECALL                         R6 R6 K22 ["Connect"]
      124 CALL                             R6 2 0
      125 GETIMPORT                        R4 K7 [require]
      127 GETTABLEKS                       R7 R0 K13 ["Bin"]
      129 GETTABLEKS                       R6 R7 K14 ["Common"]
      131 GETTABLEKS                       R5 R6 K40 ["pluginType"]
      133 CALL                             R4 1 1
      134 GETTABLEKS                       R5 R4 K41 ["get"]
      136 CALL                             R5 0 1
      137 GETTABLEKS                       R6 R4 K42 ["Asset"]
      139 JUMPIFEQ                         R5 R6 ; [+2]
      141 RETURN                           R0 0
      142 GETIMPORT                        R5 K7 [require]
      144 GETTABLEKS                       R8 R0 K13 ["Bin"]
      146 GETTABLEKS                       R7 R8 K14 ["Common"]
      148 GETTABLEKS                       R6 R7 K43 ["setup"]
      150 CALL                             R5 1 1
      151 GETIMPORT                        R6 K7 [require]
      153 GETTABLEKS                       R9 R0 K13 ["Bin"]
      155 GETTABLEKS                       R8 R9 K14 ["Common"]
      157 GETTABLEKS                       R7 R8 K44 ["setupMain"]
      159 CALL                             R6 1 1
      160 MOVE                             R7 R5
      161 GETIMPORT                        R8 K1 [plugin]
      163 MOVE                             R9 R6
      164 CALL                             R7 2 0
      165 RETURN                           R0 0
