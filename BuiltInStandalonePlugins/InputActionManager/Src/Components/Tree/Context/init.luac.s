PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["actions"]
        7 JUMP                             ; [+2]
        8 NEWTABLE                         R1 0 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K1 ["createNextOrder"]
       13 CALL                             R2 0 1
       14 MOVE                             R3 R1
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K2 ["createElement"]
       21 GETUPVAL                         R9 3
       22 DUPTABLE                         R10 K5 [{"LayoutOrder", "uuid"}]
       23 MOVE                             R11 R2
       24 CALL                             R11 0 1
       25 SETTABLEKS                       R11 R10 K3 ["LayoutOrder"]
       27 SETTABLEKS                       R7 R10 K4 ["uuid"]
       29 CALL                             R8 2 1
       30 SETTABLE                         R8 R0 R7
       31 FORGLOOP                         R3 2 ; [-14]
       33 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["DELETE"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+9]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["updateContext"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K2 ["uuid"]
       14 LOADNIL                          R3
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 MOVE                             R2 R1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R4 R0 K1 ["uuid"]
        9 LOADK                            R5 K2 ["InputContext"]
       10 CALL                             R3 2 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K3 ["useContext"]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R5 R5 K4 ["Context"]
       17 CALL                             R4 1 1
       18 GETUPVAL                         R5 4
       19 GETTABLEKS                       R6 R0 K1 ["uuid"]
       21 LOADB                            R7 0
       22 JUMPIFEQKNIL                     R3 ; [+9]
       24 GETTABLEKS                       R9 R3 K5 ["actions"]
       26 LENGTH                           R8 R9
       27 LOADN                            R9 0
       28 JUMPIFLT                         R9 R8 ; [+2]
       30 LOADB                            R7 0 +1
       31 LOADB                            R7 1
       32 CALL                             R5 2 2
       33 GETUPVAL                         R7 5
       34 GETTABLEKS                       R8 R0 K1 ["uuid"]
       36 CALL                             R7 1 4
       37 GETUPVAL                         R11 2
       38 GETTABLEKS                       R11 R11 K6 ["useMemo"]
       40 NEWCLOSURE                       R12 P0
       41 CAPTURE                          VAL R3
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          UPVAL U6
       45 NEWTABLE                         R13 0 1
       47 MOVE                             R14 R3
       48 SETLIST                          R13 R14 1 [1]
       50 CALL                             R11 2 1
       51 GETUPVAL                         R12 2
       52 GETTABLEKS                       R12 R12 K6 ["useMemo"]
       54 DUPCLOSURE                       R13 K7 [PROTO_1]
       55 CAPTURE                          UPVAL U7
       56 NEWTABLE                         R14 0 0
       58 CALL                             R12 2 1
       59 GETUPVAL                         R13 2
       60 GETTABLEKS                       R13 R13 K8 ["useCallback"]
       62 NEWCLOSURE                       R14 P2
       63 CAPTURE                          VAL R3
       64 CAPTURE                          UPVAL U8
       65 CAPTURE                          VAL R4
       66 NEWTABLE                         R15 0 1
       68 MOVE                             R16 R3
       69 SETLIST                          R15 R16 1 [1]
       71 CALL                             R13 2 1
       72 JUMPIFNOTEQKNIL                  R3 ; [+3]
       74 LOADNIL                          R14
       75 RETURN                           R14 1
       76 GETUPVAL                         R14 2
       77 GETTABLEKS                       R14 R14 K9 ["createElement"]
       79 GETUPVAL                         R15 9
       80 DUPTABLE                         R16 K13 [{"LayoutOrder", "tag", "testId"}]
       81 GETTABLEKS                       R17 R0 K10 ["LayoutOrder"]
       83 SETTABLEKS                       R17 R16 K10 ["LayoutOrder"]
       85 LOADK                            R17 K14 ["size-full-0 auto-y col"]
       86 SETTABLEKS                       R17 R16 K11 ["tag"]
       88 LOADK                            R18 K15 ["context-%*"]
       89 GETTABLEKS                       R20 R3 K16 ["name"]
       91 NAMECALL                         R18 R18 K17 ["format"]
       93 CALL                             R18 2 1
       94 MOVE                             R17 R18
       95 SETTABLEKS                       R17 R16 K12 ["testId"]
       97 DUPTABLE                         R17 K21 [{"Row", "Creating", "Actions"}]
       98 GETUPVAL                         R18 2
       99 GETTABLEKS                       R18 R18 K9 ["createElement"]
      101 GETUPVAL                         R19 10
      102 DUPTABLE                         R20 K23 [{"LayoutOrder", "nodeProps"}]
      103 SETTABLEKS                       R2 R20 K10 ["LayoutOrder"]
      105 DUPTABLE                         R21 K33 [{"context", "createMenu", "depth", "editMenu", "expanded", "icon", "name", "onCreateMenuItemSelected", "onEditMenuItemSelected", "setExpanded"}]
      106 SETTABLEKS                       R3 R21 K24 ["context"]
      108 SETTABLEKS                       R7 R21 K25 ["createMenu"]
      110 LOADN                            R22 0
      111 SETTABLEKS                       R22 R21 K26 ["depth"]
      113 SETTABLEKS                       R12 R21 K27 ["editMenu"]
      115 SETTABLEKS                       R5 R21 K28 ["expanded"]
      117 LOADK                            R22 K2 ["InputContext"]
      118 SETTABLEKS                       R22 R21 K29 ["icon"]
      120 GETTABLEKS                       R22 R3 K16 ["name"]
      122 SETTABLEKS                       R22 R21 K16 ["name"]
      124 SETTABLEKS                       R9 R21 K30 ["onCreateMenuItemSelected"]
      126 SETTABLEKS                       R13 R21 K31 ["onEditMenuItemSelected"]
      128 SETTABLEKS                       R6 R21 K32 ["setExpanded"]
      130 SETTABLEKS                       R21 R20 K22 ["nodeProps"]
      132 CALL                             R18 2 1
      133 SETTABLEKS                       R18 R17 K18 ["Row"]
      135 MOVE                             R18 R8
      136 JUMPIFNOT                        R18 ; [+24]
      137 GETUPVAL                         R18 2
      138 GETTABLEKS                       R18 R18 K9 ["createElement"]
      140 GETUPVAL                         R19 10
      141 DUPTABLE                         R20 K23 [{"LayoutOrder", "nodeProps"}]
      142 MOVE                             R21 R1
      143 CALL                             R21 0 1
      144 SETTABLEKS                       R21 R20 K10 ["LayoutOrder"]
      146 DUPTABLE                         R21 K35 [{"depth", "icon", "name", "onCreated"}]
      147 LOADN                            R22 1
      148 SETTABLEKS                       R22 R21 K26 ["depth"]
      150 LOADK                            R22 K36 ["InputAction"]
      151 SETTABLEKS                       R22 R21 K29 ["icon"]
      153 LOADK                            R22 K36 ["InputAction"]
      154 SETTABLEKS                       R22 R21 K16 ["name"]
      156 SETTABLEKS                       R10 R21 K34 ["onCreated"]
      158 SETTABLEKS                       R21 R20 K22 ["nodeProps"]
      160 CALL                             R18 2 1
      161 SETTABLEKS                       R18 R17 K19 ["Creating"]
      163 MOVE                             R18 R5
      164 JUMPIFNOT                        R18 ; [+14]
      165 GETUPVAL                         R18 2
      166 GETTABLEKS                       R18 R18 K9 ["createElement"]
      168 GETUPVAL                         R19 9
      169 DUPTABLE                         R20 K37 [{"LayoutOrder", "tag"}]
      170 MOVE                             R21 R1
      171 CALL                             R21 0 1
      172 SETTABLEKS                       R21 R20 K10 ["LayoutOrder"]
      174 LOADK                            R21 K14 ["size-full-0 auto-y col"]
      175 SETTABLEKS                       R21 R20 K11 ["tag"]
      177 MOVE                             R21 R11
      178 CALL                             R18 3 1
      179 SETTABLEKS                       R18 R17 K20 ["Actions"]
      181 CALL                             R14 3 -1
      182 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["View"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Components"]
       36 GETTABLEKS                       R6 R6 K13 ["Tree"]
       38 GETTABLEKS                       R6 R6 K14 ["Action"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K11 ["Src"]
       45 GETTABLEKS                       R7 R7 K12 ["Components"]
       47 GETTABLEKS                       R7 R7 K13 ["Tree"]
       49 GETTABLEKS                       R7 R7 K15 ["Context"]
       51 GETTABLEKS                       R7 R7 K16 ["EmptyRow"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R8 R0 K11 ["Src"]
       58 GETTABLEKS                       R8 R8 K17 ["Types"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R9 R0 K11 ["Src"]
       65 GETTABLEKS                       R9 R9 K18 ["Hooks"]
       67 GETTABLEKS                       R9 R9 K19 ["useCreateAction"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K5 [require]
       72 GETTABLEKS                       R10 R0 K11 ["Src"]
       74 GETTABLEKS                       R10 R10 K18 ["Hooks"]
       76 GETTABLEKS                       R10 R10 K20 ["useExpanded"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K5 [require]
       81 GETTABLEKS                       R11 R0 K11 ["Src"]
       83 GETTABLEKS                       R11 R11 K18 ["Hooks"]
       85 GETTABLEKS                       R11 R11 K21 ["useItem"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K5 [require]
       90 GETTABLEKS                       R12 R0 K11 ["Src"]
       92 GETTABLEKS                       R12 R12 K22 ["Contexts"]
       94 GETTABLEKS                       R12 R12 K23 ["DatamodelReference"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K5 [require]
       99 GETTABLEKS                       R13 R0 K11 ["Src"]
      101 GETTABLEKS                       R13 R13 K24 ["Util"]
      103 GETTABLEKS                       R13 R13 K25 ["Constants"]
      105 GETTABLEKS                       R13 R13 K26 ["ContextMenu"]
      107 CALL                             R12 1 1
      108 GETIMPORT                        R13 K5 [require]
      110 GETTABLEKS                       R14 R0 K11 ["Src"]
      112 GETTABLEKS                       R14 R14 K24 ["Util"]
      114 GETTABLEKS                       R14 R14 K25 ["Constants"]
      116 GETTABLEKS                       R14 R14 K27 ["MenuIdentifiers"]
      118 CALL                             R13 1 1
      119 DUPCLOSURE                       R14 K28 [PROTO_3]
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R6
      131 RETURN                           R14 1
