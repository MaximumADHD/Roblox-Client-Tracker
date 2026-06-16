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
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["useContext"]
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R5 R5 K3 ["Context"]
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 4
       18 GETTABLEKS                       R6 R0 K1 ["uuid"]
       20 LOADB                            R7 0
       21 JUMPIFEQKNIL                     R3 ; [+9]
       23 GETTABLEKS                       R9 R3 K4 ["actions"]
       25 LENGTH                           R8 R9
       26 LOADN                            R9 0
       27 JUMPIFLT                         R9 R8 ; [+2]
       29 LOADB                            R7 0 +1
       30 LOADB                            R7 1
       31 CALL                             R5 2 2
       32 GETUPVAL                         R7 5
       33 GETTABLEKS                       R8 R0 K1 ["uuid"]
       35 CALL                             R7 1 4
       36 GETUPVAL                         R11 2
       37 GETTABLEKS                       R11 R11 K5 ["useMemo"]
       39 NEWCLOSURE                       R12 P0
       40 CAPTURE                          VAL R3
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U6
       44 NEWTABLE                         R13 0 1
       46 MOVE                             R14 R3
       47 SETLIST                          R13 R14 1 [1]
       49 CALL                             R11 2 1
       50 GETUPVAL                         R12 2
       51 GETTABLEKS                       R12 R12 K5 ["useMemo"]
       53 DUPCLOSURE                       R13 K6 [PROTO_1]
       54 CAPTURE                          UPVAL U7
       55 NEWTABLE                         R14 0 0
       57 CALL                             R12 2 1
       58 GETUPVAL                         R13 2
       59 GETTABLEKS                       R13 R13 K7 ["useCallback"]
       61 NEWCLOSURE                       R14 P2
       62 CAPTURE                          VAL R3
       63 CAPTURE                          UPVAL U8
       64 CAPTURE                          VAL R4
       65 NEWTABLE                         R15 0 1
       67 MOVE                             R16 R3
       68 SETLIST                          R15 R16 1 [1]
       70 CALL                             R13 2 1
       71 JUMPIFNOTEQKNIL                  R3 ; [+3]
       73 LOADNIL                          R14
       74 RETURN                           R14 1
       75 GETUPVAL                         R14 2
       76 GETTABLEKS                       R14 R14 K8 ["createElement"]
       78 GETUPVAL                         R15 9
       79 DUPTABLE                         R16 K12 [{"LayoutOrder", "tag", "testId"}]
       80 GETTABLEKS                       R17 R0 K9 ["LayoutOrder"]
       82 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
       84 LOADK                            R17 K13 ["size-full-0 auto-y col"]
       85 SETTABLEKS                       R17 R16 K10 ["tag"]
       87 LOADK                            R18 K14 ["context-%*"]
       88 GETTABLEKS                       R20 R3 K15 ["name"]
       90 NAMECALL                         R18 R18 K16 ["format"]
       92 CALL                             R18 2 1
       93 MOVE                             R17 R18
       94 SETTABLEKS                       R17 R16 K11 ["testId"]
       96 DUPTABLE                         R17 K20 [{"Row", "Creating", "Actions"}]
       97 GETUPVAL                         R18 2
       98 GETTABLEKS                       R18 R18 K8 ["createElement"]
      100 GETUPVAL                         R19 10
      101 DUPTABLE                         R20 K22 [{"LayoutOrder", "nodeProps"}]
      102 SETTABLEKS                       R2 R20 K9 ["LayoutOrder"]
      104 DUPTABLE                         R21 K32 [{"context", "createMenu", "depth", "editMenu", "expanded", "icon", "name", "onCreateMenuItemSelected", "onEditMenuItemSelected", "setExpanded"}]
      105 SETTABLEKS                       R3 R21 K23 ["context"]
      107 SETTABLEKS                       R7 R21 K24 ["createMenu"]
      109 LOADN                            R22 0
      110 SETTABLEKS                       R22 R21 K25 ["depth"]
      112 SETTABLEKS                       R12 R21 K26 ["editMenu"]
      114 SETTABLEKS                       R5 R21 K27 ["expanded"]
      116 LOADK                            R22 K33 ["InputContext"]
      117 SETTABLEKS                       R22 R21 K28 ["icon"]
      119 GETTABLEKS                       R22 R3 K15 ["name"]
      121 SETTABLEKS                       R22 R21 K15 ["name"]
      123 SETTABLEKS                       R9 R21 K29 ["onCreateMenuItemSelected"]
      125 SETTABLEKS                       R13 R21 K30 ["onEditMenuItemSelected"]
      127 SETTABLEKS                       R6 R21 K31 ["setExpanded"]
      129 SETTABLEKS                       R21 R20 K21 ["nodeProps"]
      131 CALL                             R18 2 1
      132 SETTABLEKS                       R18 R17 K17 ["Row"]
      134 MOVE                             R18 R8
      135 JUMPIFNOT                        R18 ; [+24]
      136 GETUPVAL                         R18 2
      137 GETTABLEKS                       R18 R18 K8 ["createElement"]
      139 GETUPVAL                         R19 10
      140 DUPTABLE                         R20 K22 [{"LayoutOrder", "nodeProps"}]
      141 MOVE                             R21 R1
      142 CALL                             R21 0 1
      143 SETTABLEKS                       R21 R20 K9 ["LayoutOrder"]
      145 DUPTABLE                         R21 K35 [{"depth", "icon", "name", "onCreated"}]
      146 LOADN                            R22 1
      147 SETTABLEKS                       R22 R21 K25 ["depth"]
      149 LOADK                            R22 K36 ["InputAction"]
      150 SETTABLEKS                       R22 R21 K28 ["icon"]
      152 LOADK                            R22 K36 ["InputAction"]
      153 SETTABLEKS                       R22 R21 K15 ["name"]
      155 SETTABLEKS                       R10 R21 K34 ["onCreated"]
      157 SETTABLEKS                       R21 R20 K21 ["nodeProps"]
      159 CALL                             R18 2 1
      160 SETTABLEKS                       R18 R17 K18 ["Creating"]
      162 MOVE                             R18 R5
      163 JUMPIFNOT                        R18 ; [+14]
      164 GETUPVAL                         R18 2
      165 GETTABLEKS                       R18 R18 K8 ["createElement"]
      167 GETUPVAL                         R19 9
      168 DUPTABLE                         R20 K37 [{"LayoutOrder", "tag"}]
      169 MOVE                             R21 R1
      170 CALL                             R21 0 1
      171 SETTABLEKS                       R21 R20 K9 ["LayoutOrder"]
      173 LOADK                            R21 K13 ["size-full-0 auto-y col"]
      174 SETTABLEKS                       R21 R20 K10 ["tag"]
      176 MOVE                             R21 R11
      177 CALL                             R18 3 1
      178 SETTABLEKS                       R18 R17 K19 ["Actions"]
      180 CALL                             R14 3 -1
      181 RETURN                           R14 -1

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
       36 GETTABLEKS                       R6 R6 K13 ["Table"]
       38 GETTABLEKS                       R6 R6 K14 ["Action"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K11 ["Src"]
       45 GETTABLEKS                       R7 R7 K12 ["Components"]
       47 GETTABLEKS                       R7 R7 K13 ["Table"]
       49 GETTABLEKS                       R7 R7 K15 ["Row"]
       51 GETTABLEKS                       R7 R7 K16 ["Empty"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R8 R0 K11 ["Src"]
       58 GETTABLEKS                       R8 R8 K17 ["Types"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R9 R0 K11 ["Src"]
       65 GETTABLEKS                       R9 R9 K18 ["Hooks"]
       67 GETTABLEKS                       R9 R9 K14 ["Action"]
       69 GETTABLEKS                       R9 R9 K19 ["useCreateAction"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K5 [require]
       74 GETTABLEKS                       R10 R0 K11 ["Src"]
       76 GETTABLEKS                       R10 R10 K18 ["Hooks"]
       78 GETTABLEKS                       R10 R10 K20 ["Context"]
       80 GETTABLEKS                       R10 R10 K21 ["useContext"]
       82 CALL                             R9 1 1
       83 GETIMPORT                        R10 K5 [require]
       85 GETTABLEKS                       R11 R0 K11 ["Src"]
       87 GETTABLEKS                       R11 R11 K18 ["Hooks"]
       89 GETTABLEKS                       R11 R11 K22 ["useExpanded"]
       91 CALL                             R10 1 1
       92 GETIMPORT                        R11 K5 [require]
       94 GETTABLEKS                       R12 R0 K11 ["Src"]
       96 GETTABLEKS                       R12 R12 K23 ["Contexts"]
       98 GETTABLEKS                       R12 R12 K24 ["InputConfiguration"]
      100 CALL                             R11 1 1
      101 GETIMPORT                        R12 K5 [require]
      103 GETTABLEKS                       R13 R0 K11 ["Src"]
      105 GETTABLEKS                       R13 R13 K25 ["Util"]
      107 GETTABLEKS                       R13 R13 K26 ["Constants"]
      109 GETTABLEKS                       R13 R13 K27 ["ContextMenu"]
      111 CALL                             R12 1 1
      112 GETIMPORT                        R13 K5 [require]
      114 GETTABLEKS                       R14 R0 K11 ["Src"]
      116 GETTABLEKS                       R14 R14 K25 ["Util"]
      118 GETTABLEKS                       R14 R14 K26 ["Constants"]
      120 GETTABLEKS                       R14 R14 K28 ["MenuIdentifiers"]
      122 CALL                             R13 1 1
      123 DUPCLOSURE                       R14 K29 [PROTO_3]
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R6
      135 RETURN                           R14 1
