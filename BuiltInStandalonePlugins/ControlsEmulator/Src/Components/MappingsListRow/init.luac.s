PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["PS4"]
        4 JUMPIFEQ                         R0 R1 ; [+7]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K1 ["PS5"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+29]
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K2 ["keyName"]
       15 JUMPIFNOTEQKS                    R0 K3 ["Y"] ; [+3]
       17 LOADK                            R0 K4 ["△"]
       18 RETURN                           R0 1
       19 GETUPVAL                         R0 2
       20 GETTABLEKS                       R0 R0 K2 ["keyName"]
       22 JUMPIFNOTEQKS                    R0 K5 ["X"] ; [+3]
       24 LOADK                            R0 K6 ["☐"]
       25 RETURN                           R0 1
       26 GETUPVAL                         R0 2
       27 GETTABLEKS                       R0 R0 K2 ["keyName"]
       29 JUMPIFNOTEQKS                    R0 K7 ["B"] ; [+3]
       31 LOADK                            R0 K8 ["O"]
       32 RETURN                           R0 1
       33 GETUPVAL                         R0 2
       34 GETTABLEKS                       R0 R0 K2 ["keyName"]
       36 JUMPIFNOTEQKS                    R0 K9 ["A"] ; [+3]
       38 LOADK                            R0 K5 ["X"]
       39 RETURN                           R0 1
       40 GETUPVAL                         R0 2
       41 GETTABLEKS                       R0 R0 K2 ["keyName"]
       43 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onHover"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onHover"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["keyName"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onHover"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onHover"]
        7 LOADNIL                          R1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setIsUpdatingMappingFor"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["setIsUpdatingMappingFor"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["keyName"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useContext"]
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K1 ["useContext"]
       12 GETUPVAL                         R4 3
       13 CALL                             R3 1 1
       14 LOADB                            R4 0
       15 GETTABLEKS                       R5 R2 K2 ["isUpdatingMappingForKey"]
       17 JUMPIFEQKNIL                     R5 ; [+9]
       19 GETTABLEKS                       R5 R2 K2 ["isUpdatingMappingForKey"]
       21 GETTABLEKS                       R6 R0 K3 ["keyName"]
       23 JUMPIFEQ                         R5 R6 ; [+2]
       25 LOADB                            R4 0 +1
       26 LOADB                            R4 1
       27 LOADK                            R7 K4 ["MappingsListRow"]
       28 LOADK                            R8 K5 ["PressKeysLabel"]
       29 NAMECALL                         R5 R1 K6 ["getText"]
       31 CALL                             R5 3 1
       32 GETTABLEKS                       R6 R2 K7 ["isUpdatingMappingForGamepadId"]
       34 GETTABLEKS                       R8 R2 K8 ["mappings"]
       36 GETTABLE                         R7 R8 R6
       37 JUMPIF                           R7 ; [+2]
       38 NEWTABLE                         R7 0 0
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R8 R8 K9 ["useMemo"]
       43 NEWCLOSURE                       R9 P0
       44 CAPTURE                          VAL R6
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R0
       47 NEWTABLE                         R10 0 2
       49 MOVE                             R11 R6
       50 GETTABLEKS                       R12 R0 K3 ["keyName"]
       52 SETLIST                          R10 R11 2 [1]
       54 CALL                             R8 2 1
       55 GETUPVAL                         R9 1
       56 GETTABLEKS                       R9 R9 K10 ["useCallback"]
       58 NEWCLOSURE                       R10 P1
       59 CAPTURE                          VAL R0
       60 NEWTABLE                         R11 0 2
       62 GETTABLEKS                       R12 R0 K11 ["onHover"]
       64 GETTABLEKS                       R13 R0 K3 ["keyName"]
       66 SETLIST                          R11 R12 2 [1]
       68 CALL                             R9 2 1
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R10 R10 K10 ["useCallback"]
       72 NEWCLOSURE                       R11 P2
       73 CAPTURE                          VAL R0
       74 NEWTABLE                         R12 0 1
       76 GETTABLEKS                       R13 R0 K11 ["onHover"]
       78 SETLIST                          R12 R13 1 [1]
       80 CALL                             R10 2 1
       81 GETUPVAL                         R11 1
       82 GETTABLEKS                       R11 R11 K12 ["createElement"]
       84 LOADK                            R12 K13 ["Frame"]
       85 NEWTABLE                         R13 2 0
       87 GETUPVAL                         R14 1
       88 GETTABLEKS                       R14 R14 K14 ["Tag"]
       90 LOADK                            R15 K15 ["Component-MappingsListRow X-RowS CX-Invisible"]
       91 SETTABLE                         R15 R13 R14
       92 GETTABLEKS                       R14 R0 K16 ["LayoutOrder"]
       94 SETTABLEKS                       R14 R13 K16 ["LayoutOrder"]
       96 DUPTABLE                         R14 K19 [{"DestKey", "SrcKey"}]
       97 GETUPVAL                         R15 1
       98 GETTABLEKS                       R15 R15 K12 ["createElement"]
      100 LOADK                            R16 K20 ["TextButton"]
      101 NEWTABLE                         R17 4 0
      103 GETUPVAL                         R18 1
      104 GETTABLEKS                       R18 R18 K14 ["Tag"]
      106 LOADK                            R19 K21 ["DestKey CX-Invisible"]
      107 SETTABLE                         R19 R17 R18
      108 SETTABLEKS                       R8 R17 K22 ["Text"]
      110 GETUPVAL                         R18 5
      111 NAMECALL                         R18 R18 K23 ["getNextOrder"]
      113 CALL                             R18 1 1
      114 SETTABLEKS                       R18 R17 K16 ["LayoutOrder"]
      116 GETUPVAL                         R18 1
      117 GETTABLEKS                       R18 R18 K24 ["Event"]
      119 GETTABLEKS                       R18 R18 K25 ["MouseEnter"]
      121 SETTABLE                         R10 R17 R18
      122 CALL                             R15 2 1
      123 SETTABLEKS                       R15 R14 K17 ["DestKey"]
      125 GETUPVAL                         R15 1
      126 GETTABLEKS                       R15 R15 K12 ["createElement"]
      128 LOADK                            R16 K20 ["TextButton"]
      129 NEWTABLE                         R17 8 0
      131 GETUPVAL                         R18 1
      132 GETTABLEKS                       R18 R18 K14 ["Tag"]
      134 LOADK                            R19 K18 ["SrcKey"]
      135 SETTABLE                         R19 R17 R18
      136 JUMPIFNOT                        R4 ; [+2]
      137 MOVE                             R18 R5
      138 JUMP                             ; [+5]
      139 GETUPVAL                         R18 6
      140 GETTABLEKS                       R20 R0 K3 ["keyName"]
      142 GETTABLE                         R19 R7 R20
      143 CALL                             R18 1 1
      144 SETTABLEKS                       R18 R17 K22 ["Text"]
      146 GETUPVAL                         R18 5
      147 NAMECALL                         R18 R18 K23 ["getNextOrder"]
      149 CALL                             R18 1 1
      150 SETTABLEKS                       R18 R17 K16 ["LayoutOrder"]
      152 GETUPVAL                         R18 1
      153 GETTABLEKS                       R18 R18 K24 ["Event"]
      155 GETTABLEKS                       R18 R18 K26 ["Activated"]
      157 NEWCLOSURE                       R19 P3
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R0
      161 SETTABLE                         R19 R17 R18
      162 GETUPVAL                         R18 1
      163 GETTABLEKS                       R18 R18 K24 ["Event"]
      165 GETTABLEKS                       R18 R18 K25 ["MouseEnter"]
      167 SETTABLE                         R9 R17 R18
      168 CALL                             R15 2 1
      169 SETTABLEKS                       R15 R14 K18 ["SrcKey"]
      171 CALL                             R11 3 -1
      172 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["enumToDisplayKeyCode"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["Localization"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K9 ["Src"]
       38 GETTABLEKS                       R7 R7 K10 ["Util"]
       40 GETTABLEKS                       R7 R7 K14 ["MappingsContext"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K9 ["Src"]
       47 GETTABLEKS                       R8 R8 K10 ["Util"]
       49 GETTABLEKS                       R8 R8 K15 ["MappingsActionsContext"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R2 K10 ["Util"]
       54 GETTABLEKS                       R8 R8 K16 ["LayoutOrderIterator"]
       56 GETTABLEKS                       R9 R8 K17 ["new"]
       58 CALL                             R9 0 1
       59 GETIMPORT                        R10 K5 [require]
       61 GETTABLEKS                       R11 R0 K9 ["Src"]
       63 GETTABLEKS                       R11 R11 K10 ["Util"]
       65 GETTABLEKS                       R11 R11 K18 ["Constants"]
       67 CALL                             R10 1 1
       68 GETTABLEKS                       R11 R10 K19 ["GAMEPAD_TYPE_TO_ID"]
       70 GETIMPORT                        R12 K5 [require]
       72 GETTABLEKS                       R13 R0 K9 ["Src"]
       74 GETTABLEKS                       R13 R13 K10 ["Util"]
       76 GETTABLEKS                       R13 R13 K20 ["KeyNamesConstants"]
       78 CALL                             R12 1 1
       79 DUPCLOSURE                       R13 K21 [PROTO_4]
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R3
       87 GETTABLEKS                       R14 R1 K22 ["memo"]
       89 MOVE                             R15 R13
       90 CALL                             R14 1 -1
       91 RETURN                           R14 -1
