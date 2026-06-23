PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["searchString"]
        8 JUMPIFEQKS                       R0 K1 [""] ; [+8]
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K2 ["name"]
       14 MOVE                             R3 R0
       15 CALL                             R1 2 1
       16 JUMPIFNOT                        R1 ; [+4]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K3 ["actions"]
       20 RETURN                           R1 1
       21 NEWTABLE                         R1 0 0
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K3 ["actions"]
       26 LOADNIL                          R3
       27 LOADNIL                          R4
       28 FORGPREP                         R2
       29 GETUPVAL                         R7 3
       30 GETTABLEKS                       R7 R7 K4 ["getAction"]
       32 MOVE                             R8 R6
       33 CALL                             R7 1 1
       34 JUMPIFNOT                        R7 ; [+13]
       35 GETUPVAL                         R8 2
       36 GETTABLEKS                       R9 R7 K2 ["name"]
       38 MOVE                             R10 R0
       39 CALL                             R8 2 1
       40 JUMPIFNOT                        R8 ; [+7]
       41 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       43 MOVE                             R9 R1
       44 MOVE                             R10 R6
       45 GETIMPORT                        R8 K7 [table.insert]
       47 CALL                             R8 2 0
       48 FORGLOOP                         R2 2 ; [-20]
       50 LENGTH                           R2 R1
       51 JUMPIFNOTEQKN                    R2 K8 [0] ; [+3]
       53 LOADNIL                          R2
       54 RETURN                           R2 1
       55 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+4]
        3 NEWTABLE                         R0 0 0
        5 RETURN                           R0 1
        6 NEWTABLE                         R0 0 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
       11 CALL                             R1 0 1
       12 GETUPVAL                         R2 0
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K1 ["createElement"]
       19 GETUPVAL                         R8 3
       20 DUPTABLE                         R9 K4 [{"LayoutOrder", "uuid"}]
       21 MOVE                             R10 R1
       22 CALL                             R10 0 1
       23 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       25 SETTABLEKS                       R6 R9 K3 ["uuid"]
       27 CALL                             R7 2 1
       28 SETTABLE                         R7 R0 R6
       29 FORGLOOP                         R2 2 ; [-14]
       31 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADB                            R0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["name"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K1 ["searchString"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K2 ["createNextOrder"]
       17 CALL                             R3 0 1
       18 MOVE                             R4 R3
       19 CALL                             R4 0 1
       20 GETUPVAL                         R5 4
       21 GETTABLEKS                       R6 R0 K3 ["uuid"]
       23 CALL                             R5 1 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K0 ["useContext"]
       27 GETUPVAL                         R7 5
       28 GETTABLEKS                       R7 R7 K1 ["Context"]
       30 CALL                             R6 1 1
       31 GETUPVAL                         R7 6
       32 GETTABLEKS                       R8 R0 K3 ["uuid"]
       34 LOADB                            R9 0
       35 JUMPIFEQKNIL                     R5 ; [+9]
       37 GETTABLEKS                       R11 R5 K4 ["actions"]
       39 LENGTH                           R10 R11
       40 LOADN                            R11 0
       41 JUMPIFLT                         R11 R10 ; [+2]
       43 LOADB                            R9 0 +1
       44 LOADB                            R9 1
       45 CALL                             R7 2 2
       46 GETUPVAL                         R9 7
       47 GETTABLEKS                       R10 R0 K3 ["uuid"]
       49 CALL                             R9 1 4
       50 GETUPVAL                         R13 0
       51 GETTABLEKS                       R13 R13 K5 ["useMemo"]
       53 NEWCLOSURE                       R14 P0
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R2
       56 CAPTURE                          UPVAL U8
       57 CAPTURE                          VAL R6
       58 NEWTABLE                         R15 0 3
       60 MOVE                             R16 R5
       61 GETTABLEKS                       R17 R2 K6 ["searchString"]
       63 GETTABLEKS                       R18 R6 K7 ["getAction"]
       65 SETLIST                          R15 R16 3 [1]
       67 CALL                             R13 2 1
       68 GETUPVAL                         R14 0
       69 GETTABLEKS                       R14 R14 K5 ["useMemo"]
       71 NEWCLOSURE                       R15 P1
       72 CAPTURE                          VAL R13
       73 CAPTURE                          UPVAL U3
       74 CAPTURE                          UPVAL U0
       75 CAPTURE                          UPVAL U9
       76 NEWTABLE                         R16 0 1
       78 MOVE                             R17 R13
       79 SETLIST                          R16 R17 1 [1]
       81 CALL                             R14 2 1
       82 GETUPVAL                         R15 0
       83 GETTABLEKS                       R15 R15 K5 ["useMemo"]
       85 NEWCLOSURE                       R16 P2
       86 CAPTURE                          VAL R5
       87 CAPTURE                          UPVAL U8
       88 CAPTURE                          VAL R2
       89 NEWTABLE                         R17 0 2
       91 MOVE                             R18 R5
       92 GETTABLEKS                       R19 R2 K6 ["searchString"]
       94 SETLIST                          R17 R18 2 [1]
       96 CALL                             R15 2 1
       97 GETUPVAL                         R16 0
       98 GETTABLEKS                       R16 R16 K5 ["useMemo"]
      100 NEWCLOSURE                       R17 P3
      101 CAPTURE                          UPVAL U10
      102 CAPTURE                          VAL R1
      103 NEWTABLE                         R18 0 1
      105 MOVE                             R19 R1
      106 SETLIST                          R18 R19 1 [1]
      108 CALL                             R16 2 1
      109 GETUPVAL                         R17 0
      110 GETTABLEKS                       R17 R17 K8 ["useCallback"]
      112 NEWCLOSURE                       R18 P4
      113 CAPTURE                          VAL R5
      114 CAPTURE                          UPVAL U11
      115 CAPTURE                          VAL R6
      116 NEWTABLE                         R19 0 1
      118 MOVE                             R20 R5
      119 SETLIST                          R19 R20 1 [1]
      121 CALL                             R17 2 1
      122 JUMPIFNOTEQKNIL                  R5 ; [+3]
      124 LOADNIL                          R18
      125 RETURN                           R18 1
      126 GETTABLEKS                       R19 R2 K9 ["contexts"]
      128 GETTABLEKS                       R20 R0 K3 ["uuid"]
      130 GETTABLE                         R18 R19 R20
      131 JUMPIFNOTEQKB                    R18 FALSE ; [+3]
      133 LOADNIL                          R18
      134 RETURN                           R18 1
      135 GETIMPORT                        R18 K11 [next]
      137 MOVE                             R19 R14
      138 CALL                             R18 1 1
      139 JUMPIF                           R18 ; [+3]
      140 JUMPIF                           R15 ; [+2]
      141 LOADNIL                          R18
      142 RETURN                           R18 1
      143 GETUPVAL                         R18 0
      144 GETTABLEKS                       R18 R18 K12 ["createElement"]
      146 GETUPVAL                         R19 12
      147 DUPTABLE                         R20 K16 [{"LayoutOrder", "tag", "testId"}]
      148 GETTABLEKS                       R21 R0 K13 ["LayoutOrder"]
      150 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      152 LOADK                            R21 K17 ["size-full-0 auto-y col"]
      153 SETTABLEKS                       R21 R20 K14 ["tag"]
      155 LOADK                            R22 K18 ["context-%*"]
      156 GETTABLEKS                       R24 R5 K19 ["name"]
      158 NAMECALL                         R22 R22 K20 ["format"]
      160 CALL                             R22 2 1
      161 MOVE                             R21 R22
      162 SETTABLEKS                       R21 R20 K15 ["testId"]
      164 DUPTABLE                         R21 K24 [{"Row", "Creating", "Actions"}]
      165 GETUPVAL                         R22 0
      166 GETTABLEKS                       R22 R22 K12 ["createElement"]
      168 GETUPVAL                         R23 13
      169 DUPTABLE                         R24 K26 [{"LayoutOrder", "nodeProps"}]
      170 SETTABLEKS                       R4 R24 K13 ["LayoutOrder"]
      172 DUPTABLE                         R25 K36 [{"context", "createMenu", "depth", "editMenu", "expanded", "icon", "name", "onCreateMenuItemSelected", "onEditMenuItemSelected", "setExpanded"}]
      173 SETTABLEKS                       R5 R25 K27 ["context"]
      175 SETTABLEKS                       R9 R25 K28 ["createMenu"]
      177 LOADN                            R26 0
      178 SETTABLEKS                       R26 R25 K29 ["depth"]
      180 SETTABLEKS                       R16 R25 K30 ["editMenu"]
      182 SETTABLEKS                       R7 R25 K31 ["expanded"]
      184 LOADK                            R26 K37 ["InputContext"]
      185 SETTABLEKS                       R26 R25 K32 ["icon"]
      187 GETTABLEKS                       R26 R5 K19 ["name"]
      189 SETTABLEKS                       R26 R25 K19 ["name"]
      191 SETTABLEKS                       R11 R25 K33 ["onCreateMenuItemSelected"]
      193 SETTABLEKS                       R17 R25 K34 ["onEditMenuItemSelected"]
      195 SETTABLEKS                       R8 R25 K35 ["setExpanded"]
      197 SETTABLEKS                       R25 R24 K25 ["nodeProps"]
      199 CALL                             R22 2 1
      200 SETTABLEKS                       R22 R21 K21 ["Row"]
      202 MOVE                             R22 R10
      203 JUMPIFNOT                        R22 ; [+24]
      204 GETUPVAL                         R22 0
      205 GETTABLEKS                       R22 R22 K12 ["createElement"]
      207 GETUPVAL                         R23 13
      208 DUPTABLE                         R24 K26 [{"LayoutOrder", "nodeProps"}]
      209 MOVE                             R25 R3
      210 CALL                             R25 0 1
      211 SETTABLEKS                       R25 R24 K13 ["LayoutOrder"]
      213 DUPTABLE                         R25 K39 [{"depth", "icon", "name", "onCreated"}]
      214 LOADN                            R26 1
      215 SETTABLEKS                       R26 R25 K29 ["depth"]
      217 LOADK                            R26 K40 ["InputAction"]
      218 SETTABLEKS                       R26 R25 K32 ["icon"]
      220 LOADK                            R26 K40 ["InputAction"]
      221 SETTABLEKS                       R26 R25 K19 ["name"]
      223 SETTABLEKS                       R12 R25 K38 ["onCreated"]
      225 SETTABLEKS                       R25 R24 K25 ["nodeProps"]
      227 CALL                             R22 2 1
      228 SETTABLEKS                       R22 R21 K22 ["Creating"]
      230 MOVE                             R22 R7
      231 JUMPIFNOT                        R22 ; [+14]
      232 GETUPVAL                         R22 0
      233 GETTABLEKS                       R22 R22 K12 ["createElement"]
      235 GETUPVAL                         R23 12
      236 DUPTABLE                         R24 K41 [{"LayoutOrder", "tag"}]
      237 MOVE                             R25 R3
      238 CALL                             R25 0 1
      239 SETTABLEKS                       R25 R24 K13 ["LayoutOrder"]
      241 LOADK                            R25 K17 ["size-full-0 auto-y col"]
      242 SETTABLEKS                       R25 R24 K14 ["tag"]
      244 MOVE                             R25 R14
      245 CALL                             R22 3 1
      246 SETTABLEKS                       R22 R21 K23 ["Actions"]
      248 CALL                             R18 3 -1
      249 RETURN                           R18 -1

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
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Contexts"]
       37 GETTABLEKS                       R5 R5 K12 ["Localization"]
       39 GETTABLEKS                       R6 R1 K13 ["View"]
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K14 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Components"]
       47 GETTABLEKS                       R8 R8 K16 ["Table"]
       49 GETTABLEKS                       R8 R8 K17 ["Action"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K14 ["Src"]
       56 GETTABLEKS                       R9 R9 K15 ["Components"]
       58 GETTABLEKS                       R9 R9 K16 ["Table"]
       60 GETTABLEKS                       R9 R9 K18 ["Row"]
       62 GETTABLEKS                       R9 R9 K19 ["Empty"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K14 ["Src"]
       69 GETTABLEKS                       R10 R10 K20 ["Types"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K14 ["Src"]
       76 GETTABLEKS                       R11 R11 K21 ["Hooks"]
       78 GETTABLEKS                       R11 R11 K17 ["Action"]
       80 GETTABLEKS                       R11 R11 K22 ["useCreateAction"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K14 ["Src"]
       87 GETTABLEKS                       R12 R12 K21 ["Hooks"]
       89 GETTABLEKS                       R12 R12 K23 ["Context"]
       91 GETTABLEKS                       R12 R12 K24 ["useContext"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R13 R0 K14 ["Src"]
       98 GETTABLEKS                       R13 R13 K21 ["Hooks"]
      100 GETTABLEKS                       R13 R13 K25 ["useExpanded"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R14 R0 K14 ["Src"]
      107 GETTABLEKS                       R14 R14 K11 ["Contexts"]
      109 GETTABLEKS                       R14 R14 K26 ["FilterConfiguration"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETTABLEKS                       R15 R0 K14 ["Src"]
      116 GETTABLEKS                       R15 R15 K11 ["Contexts"]
      118 GETTABLEKS                       R15 R15 K27 ["InputConfiguration"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETTABLEKS                       R16 R0 K14 ["Src"]
      125 GETTABLEKS                       R16 R16 K28 ["Util"]
      127 GETTABLEKS                       R16 R16 K29 ["Menus"]
      129 GETTABLEKS                       R16 R16 K30 ["getContextMenu"]
      131 CALL                             R15 1 1
      132 GETIMPORT                        R16 K5 [require]
      134 GETTABLEKS                       R17 R0 K14 ["Src"]
      136 GETTABLEKS                       R17 R17 K28 ["Util"]
      138 GETTABLEKS                       R17 R17 K31 ["Filter"]
      140 GETTABLEKS                       R17 R17 K32 ["matchesSearch"]
      142 CALL                             R16 1 1
      143 GETIMPORT                        R17 K5 [require]
      145 GETTABLEKS                       R18 R0 K14 ["Src"]
      147 GETTABLEKS                       R18 R18 K28 ["Util"]
      149 GETTABLEKS                       R18 R18 K33 ["Constants"]
      151 GETTABLEKS                       R18 R18 K34 ["MenuIdentifiers"]
      153 CALL                             R17 1 1
      154 DUPCLOSURE                       R18 K35 [PROTO_5]
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R12
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R15
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R6
      168 CAPTURE                          VAL R8
      169 RETURN                           R18 1
