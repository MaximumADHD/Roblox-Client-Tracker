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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+9]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["parentUuid"]
        8 JUMPIFNOTEQKS                    R0 K1 ["DefaultContext"] ; [+3]
       10 LOADNIL                          R0
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 2
       13 GETUPVAL                         R1 3
       14 CALL                             R0 1 -1
       15 RETURN                           R0 -1

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
      102 CAPTURE                          VAL R5
      103 CAPTURE                          UPVAL U11
      104 CAPTURE                          VAL R1
      105 NEWTABLE                         R18 0 2
      107 MOVE                             R19 R1
      108 MOVE                             R20 R5
      109 SETLIST                          R18 R19 2 [1]
      111 CALL                             R16 2 1
      112 GETUPVAL                         R17 0
      113 GETTABLEKS                       R17 R17 K8 ["useCallback"]
      115 NEWCLOSURE                       R18 P4
      116 CAPTURE                          VAL R5
      117 CAPTURE                          UPVAL U12
      118 CAPTURE                          VAL R6
      119 NEWTABLE                         R19 0 1
      121 MOVE                             R20 R5
      122 SETLIST                          R19 R20 1 [1]
      124 CALL                             R17 2 1
      125 JUMPIFNOTEQKNIL                  R5 ; [+3]
      127 LOADNIL                          R18
      128 RETURN                           R18 1
      129 GETTABLEKS                       R19 R2 K9 ["contexts"]
      131 GETTABLEKS                       R20 R0 K3 ["uuid"]
      133 GETTABLE                         R18 R19 R20
      134 JUMPIFNOTEQKB                    R18 FALSE ; [+3]
      136 LOADNIL                          R18
      137 RETURN                           R18 1
      138 GETIMPORT                        R18 K11 [next]
      140 MOVE                             R19 R14
      141 CALL                             R18 1 1
      142 JUMPIF                           R18 ; [+3]
      143 JUMPIF                           R15 ; [+2]
      144 LOADNIL                          R18
      145 RETURN                           R18 1
      146 GETUPVAL                         R18 0
      147 GETTABLEKS                       R18 R18 K12 ["createElement"]
      149 GETUPVAL                         R19 13
      150 DUPTABLE                         R20 K17 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      151 GETTABLEKS                       R21 R0 K13 ["LayoutOrder"]
      153 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      155 LOADK                            R22 K18 ["context-%*"]
      156 GETTABLEKS                       R24 R5 K19 ["name"]
      158 NAMECALL                         R22 R22 K20 ["format"]
      160 CALL                             R22 2 1
      161 MOVE                             R21 R22
      162 SETTABLEKS                       R21 R20 K16 ["testId"]
      164 DUPTABLE                         R21 K24 [{"Row", "Creating", "Actions"}]
      165 GETUPVAL                         R22 0
      166 GETTABLEKS                       R22 R22 K12 ["createElement"]
      168 GETUPVAL                         R23 14
      169 DUPTABLE                         R24 K26 [{"LayoutOrder", "nodeProps"}]
      170 SETTABLEKS                       R4 R24 K13 ["LayoutOrder"]
      172 DUPTABLE                         R25 K38 [{["context"], ["createMenu"], ["depth"] = 0, ["editMenu"], ["expanded"], ["icon"] = "InputContext", ["name"], ["onCreateMenuItemSelected"], ["onEditMenuItemSelected"], ["setExpanded"]}]
      173 SETTABLEKS                       R5 R25 K27 ["context"]
      175 SETTABLEKS                       R9 R25 K28 ["createMenu"]
      177 SETTABLEKS                       R16 R25 K31 ["editMenu"]
      179 SETTABLEKS                       R7 R25 K32 ["expanded"]
      181 GETTABLEKS                       R26 R5 K19 ["name"]
      183 SETTABLEKS                       R26 R25 K19 ["name"]
      185 SETTABLEKS                       R11 R25 K35 ["onCreateMenuItemSelected"]
      187 SETTABLEKS                       R17 R25 K36 ["onEditMenuItemSelected"]
      189 SETTABLEKS                       R8 R25 K37 ["setExpanded"]
      191 SETTABLEKS                       R25 R24 K25 ["nodeProps"]
      193 CALL                             R22 2 1
      194 SETTABLEKS                       R22 R21 K21 ["Row"]
      196 MOVE                             R22 R10
      197 JUMPIFNOT                        R22 ; [+15]
      198 GETUPVAL                         R22 0
      199 GETTABLEKS                       R22 R22 K12 ["createElement"]
      201 GETUPVAL                         R23 14
      202 DUPTABLE                         R24 K26 [{"LayoutOrder", "nodeProps"}]
      203 MOVE                             R25 R3
      204 CALL                             R25 0 1
      205 SETTABLEKS                       R25 R24 K13 ["LayoutOrder"]
      207 DUPTABLE                         R25 K42 [{["depth"] = 1, ["icon"] = "InputAction", ["name"] = "InputAction", ["onCreated"]}]
      208 SETTABLEKS                       R12 R25 K41 ["onCreated"]
      210 SETTABLEKS                       R25 R24 K25 ["nodeProps"]
      212 CALL                             R22 2 1
      213 SETTABLEKS                       R22 R21 K22 ["Creating"]
      215 MOVE                             R22 R7
      216 JUMPIFNOT                        R22 ; [+11]
      217 GETUPVAL                         R22 0
      218 GETTABLEKS                       R22 R22 K12 ["createElement"]
      220 GETUPVAL                         R23 13
      221 DUPTABLE                         R24 K43 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y"}]
      222 MOVE                             R25 R3
      223 CALL                             R25 0 1
      224 SETTABLEKS                       R25 R24 K13 ["LayoutOrder"]
      226 MOVE                             R25 R14
      227 CALL                             R22 3 1
      228 SETTABLEKS                       R22 R21 K23 ["Actions"]
      230 CALL                             R18 3 -1
      231 RETURN                           R18 -1

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
      154 GETTABLEKS                       R18 R0 K14 ["Src"]
      156 GETTABLEKS                       R18 R18 K35 ["Flags"]
      158 GETIMPORT                        R19 K5 [require]
      160 GETTABLEKS                       R20 R18 K36 ["getFFlagIAMDisableRenamingDefaultContext"]
      162 CALL                             R19 1 1
      163 DUPCLOSURE                       R20 K37 [PROTO_5]
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R5
      166 CAPTURE                          VAL R13
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R11
      169 CAPTURE                          VAL R14
      170 CAPTURE                          VAL R12
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R7
      174 CAPTURE                          VAL R19
      175 CAPTURE                          VAL R15
      176 CAPTURE                          VAL R17
      177 CAPTURE                          VAL R6
      178 CAPTURE                          VAL R8
      179 RETURN                           R20 1
