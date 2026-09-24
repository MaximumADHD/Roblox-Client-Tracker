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
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+4]
        6 NEWTABLE                         R0 0 0
        8 RETURN                           R0 1
        9 NEWTABLE                         R0 0 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
       14 CALL                             R1 0 1
       15 GETUPVAL                         R2 0
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 GETUPVAL                         R7 3
       20 GETTABLEKS                       R7 R7 K1 ["createElement"]
       22 GETUPVAL                         R8 4
       23 DUPTABLE                         R9 K5 [{"context", "LayoutOrder", "uuid"}]
       24 GETUPVAL                         R10 1
       25 SETTABLEKS                       R10 R9 K2 ["context"]
       27 MOVE                             R10 R1
       28 CALL                             R10 0 1
       29 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       31 SETTABLEKS                       R6 R9 K4 ["uuid"]
       33 CALL                             R7 2 1
       34 SETTABLE                         R7 R0 R6
       35 FORGLOOP                         R2 2 ; [-17]
       37 RETURN                           R0 1

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
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["parentUuid"]
        5 JUMPIFNOTEQKS                    R0 K1 ["DefaultContext"] ; [+3]
        7 LOADNIL                          R0
        8 RETURN                           R0 1
        9 GETUPVAL                         R1 0
       10 JUMPIFNOT                        R1 ; [+10]
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R1 2
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K2 ["enabled"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K3 ["sink"]
       19 CALL                             R0 3 1
       20 RETURN                           R0 1
       21 LOADNIL                          R0
       22 RETURN                           R0 1

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
       16 GETUPVAL                         R1 3
       17 CALL                             R1 0 1
       18 JUMPIFNOT                        R1 ; [+19]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K3 ["ENABLED"]
       22 JUMPIFNOTEQ                      R0 R1 ; [+15]
       24 GETUPVAL                         R1 2
       25 GETTABLEKS                       R1 R1 K1 ["updateContext"]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K2 ["uuid"]
       30 DUPTABLE                         R3 K5 [{"enabled"}]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K4 ["enabled"]
       34 NOT                              R4 R5
       35 SETTABLEKS                       R4 R3 K4 ["enabled"]
       37 CALL                             R1 2 0
       38 GETUPVAL                         R1 3
       39 CALL                             R1 0 1
       40 JUMPIFNOT                        R1 ; [+19]
       41 GETUPVAL                         R1 1
       42 GETTABLEKS                       R1 R1 K6 ["SINK"]
       44 JUMPIFNOTEQ                      R0 R1 ; [+15]
       46 GETUPVAL                         R1 2
       47 GETTABLEKS                       R1 R1 K1 ["updateContext"]
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K2 ["uuid"]
       52 DUPTABLE                         R3 K8 [{"sink"}]
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R5 R5 K7 ["sink"]
       56 NOT                              R4 R5
       57 SETTABLEKS                       R4 R3 K7 ["sink"]
       59 CALL                             R1 2 0
       60 GETUPVAL                         R1 4
       61 CALL                             R1 0 1
       62 JUMPIFNOT                        R1 ; [+12]
       63 GETUPVAL                         R1 1
       64 GETTABLEKS                       R1 R1 K9 ["DUPLICATE"]
       66 JUMPIFNOTEQ                      R0 R1 ; [+8]
       68 GETUPVAL                         R1 2
       69 GETTABLEKS                       R1 R1 K10 ["duplicateContext"]
       71 GETUPVAL                         R2 0
       72 GETTABLEKS                       R2 R2 K2 ["uuid"]
       74 CALL                             R1 1 0
       75 RETURN                           R0 0

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
       73 CAPTURE                          VAL R5
       74 CAPTURE                          UPVAL U3
       75 CAPTURE                          UPVAL U0
       76 CAPTURE                          UPVAL U9
       77 NEWTABLE                         R16 0 2
       79 MOVE                             R17 R13
       80 MOVE                             R18 R5
       81 SETLIST                          R16 R17 2 [1]
       83 CALL                             R14 2 1
       84 GETUPVAL                         R15 0
       85 GETTABLEKS                       R15 R15 K5 ["useMemo"]
       87 NEWCLOSURE                       R16 P2
       88 CAPTURE                          VAL R5
       89 CAPTURE                          UPVAL U8
       90 CAPTURE                          VAL R2
       91 NEWTABLE                         R17 0 2
       93 MOVE                             R18 R5
       94 GETTABLEKS                       R19 R2 K6 ["searchString"]
       96 SETLIST                          R17 R18 2 [1]
       98 CALL                             R15 2 1
       99 GETUPVAL                         R16 0
      100 GETTABLEKS                       R16 R16 K5 ["useMemo"]
      102 NEWCLOSURE                       R17 P3
      103 CAPTURE                          VAL R5
      104 CAPTURE                          UPVAL U10
      105 CAPTURE                          VAL R1
      106 NEWTABLE                         R18 0 2
      108 MOVE                             R19 R1
      109 MOVE                             R20 R5
      110 SETLIST                          R18 R19 2 [1]
      112 CALL                             R16 2 1
      113 GETUPVAL                         R17 0
      114 GETTABLEKS                       R17 R17 K8 ["useCallback"]
      116 NEWCLOSURE                       R18 P4
      117 CAPTURE                          VAL R5
      118 CAPTURE                          UPVAL U11
      119 CAPTURE                          VAL R6
      120 CAPTURE                          UPVAL U12
      121 CAPTURE                          UPVAL U13
      122 NEWTABLE                         R19 0 1
      124 MOVE                             R20 R5
      125 SETLIST                          R19 R20 1 [1]
      127 CALL                             R17 2 1
      128 JUMPIFNOTEQKNIL                  R5 ; [+3]
      130 LOADNIL                          R18
      131 RETURN                           R18 1
      132 GETTABLEKS                       R19 R2 K9 ["contexts"]
      134 GETTABLEKS                       R20 R0 K3 ["uuid"]
      136 GETTABLE                         R18 R19 R20
      137 JUMPIFNOTEQKB                    R18 FALSE ; [+3]
      139 LOADNIL                          R18
      140 RETURN                           R18 1
      141 GETIMPORT                        R18 K11 [next]
      143 MOVE                             R19 R14
      144 CALL                             R18 1 1
      145 JUMPIF                           R18 ; [+3]
      146 JUMPIF                           R15 ; [+2]
      147 LOADNIL                          R18
      148 RETURN                           R18 1
      149 GETUPVAL                         R19 12
      150 CALL                             R19 0 1
      151 JUMPIFNOT                        R19 ; [+4]
      152 GETTABLEKS                       R19 R5 K12 ["enabled"]
      154 NOT                              R18 R19
      155 JUMP                             ; [+1]
      156 LOADNIL                          R18
      157 GETUPVAL                         R19 0
      158 GETTABLEKS                       R19 R19 K13 ["createElement"]
      160 GETUPVAL                         R20 14
      161 DUPTABLE                         R21 K18 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y", ["testId"]}]
      162 GETTABLEKS                       R22 R0 K14 ["LayoutOrder"]
      164 SETTABLEKS                       R22 R21 K14 ["LayoutOrder"]
      166 LOADK                            R22 K19 ["context-%*"]
      167 GETTABLEKS                       R24 R5 K20 ["name"]
      169 NAMECALL                         R22 R22 K21 ["format"]
      171 CALL                             R22 2 1
      172 SETTABLEKS                       R22 R21 K17 ["testId"]
      174 DUPTABLE                         R22 K25 [{"Row", "Creating", "Actions"}]
      175 GETUPVAL                         R23 0
      176 GETTABLEKS                       R23 R23 K13 ["createElement"]
      178 GETUPVAL                         R24 15
      179 DUPTABLE                         R25 K27 [{"LayoutOrder", "nodeProps"}]
      180 SETTABLEKS                       R4 R25 K14 ["LayoutOrder"]
      182 DUPTABLE                         R26 K40 [{["context"], ["createMenu"], ["depth"] = 0, ["disabled"], ["editMenu"], ["expanded"], ["icon"] = "InputContext", ["name"], ["onCreateMenuItemSelected"], ["onEditMenuItemSelected"], ["setExpanded"]}]
      183 SETTABLEKS                       R5 R26 K28 ["context"]
      185 SETTABLEKS                       R9 R26 K29 ["createMenu"]
      187 SETTABLEKS                       R18 R26 K32 ["disabled"]
      189 SETTABLEKS                       R16 R26 K33 ["editMenu"]
      191 SETTABLEKS                       R7 R26 K34 ["expanded"]
      193 GETTABLEKS                       R27 R5 K20 ["name"]
      195 SETTABLEKS                       R27 R26 K20 ["name"]
      197 SETTABLEKS                       R11 R26 K37 ["onCreateMenuItemSelected"]
      199 SETTABLEKS                       R17 R26 K38 ["onEditMenuItemSelected"]
      201 SETTABLEKS                       R8 R26 K39 ["setExpanded"]
      203 SETTABLEKS                       R26 R25 K26 ["nodeProps"]
      205 CALL                             R23 2 1
      206 SETTABLEKS                       R23 R22 K22 ["Row"]
      208 MOVE                             R23 R10
      209 JUMPIFNOT                        R23 ; [+17]
      210 GETUPVAL                         R23 0
      211 GETTABLEKS                       R23 R23 K13 ["createElement"]
      213 GETUPVAL                         R24 15
      214 DUPTABLE                         R25 K27 [{"LayoutOrder", "nodeProps"}]
      215 MOVE                             R26 R3
      216 CALL                             R26 0 1
      217 SETTABLEKS                       R26 R25 K14 ["LayoutOrder"]
      219 DUPTABLE                         R26 K44 [{["depth"] = 1, ["disabled"], ["icon"] = "InputAction", ["name"] = "InputAction", ["onCreated"]}]
      220 SETTABLEKS                       R18 R26 K32 ["disabled"]
      222 SETTABLEKS                       R12 R26 K43 ["onCreated"]
      224 SETTABLEKS                       R26 R25 K26 ["nodeProps"]
      226 CALL                             R23 2 1
      227 SETTABLEKS                       R23 R22 K23 ["Creating"]
      229 MOVE                             R23 R7
      230 JUMPIFNOT                        R23 ; [+11]
      231 GETUPVAL                         R23 0
      232 GETTABLEKS                       R23 R23 K13 ["createElement"]
      234 GETUPVAL                         R24 14
      235 DUPTABLE                         R25 K45 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y"}]
      236 MOVE                             R26 R3
      237 CALL                             R26 0 1
      238 SETTABLEKS                       R26 R25 K14 ["LayoutOrder"]
      240 MOVE                             R26 R14
      241 CALL                             R23 3 1
      242 SETTABLEKS                       R23 R22 K24 ["Actions"]
      244 CALL                             R19 3 -1
      245 RETURN                           R19 -1

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
      160 GETTABLEKS                       R20 R18 K36 ["getFFlagIAMBooleanProperties"]
      162 CALL                             R19 1 1
      163 GETIMPORT                        R20 K5 [require]
      165 GETTABLEKS                       R21 R18 K37 ["getFFlagIAMDuplicate"]
      167 CALL                             R20 1 1
      168 DUPCLOSURE                       R21 K38 [PROTO_5]
      169 CAPTURE                          VAL R2
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R13
      172 CAPTURE                          VAL R3
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R14
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R16
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R15
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R19
      182 CAPTURE                          VAL R20
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R8
      185 RETURN                           R21 1
