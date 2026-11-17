PROTO_0:
        0 GETUPVAL                         R4 0
        1 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
        3 MOVE                             R5 R1
        4 GETIMPORT                        R3 K2 [table.insert]
        6 CALL                             R3 2 0
        7 GETIMPORT                        R3 K4 [pairs]
        9 MOVE                             R4 R0
       10 CALL                             R3 1 3
       11 FORGPREP_NEXT                    R3
       12 GETTABLEKS                       R8 R7 K5 ["path"]
       14 JUMPIFNOT                        R8 ; [+10]
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R9 R7 K5 ["path"]
       18 MOVE                             R10 R2
       19 CALL                             R8 2 1
       20 JUMPIFNOT                        R8 ; [+4]
       21 GETUPVAL                         R8 2
       22 SETTABLEKS                       R7 R8 K6 ["currentCategory"]
       24 JUMP                             ; [+17]
       25 GETTABLEKS                       R8 R7 K7 ["children"]
       27 JUMPIFNOT                        R8 ; [+14]
       28 GETIMPORT                        R8 K9 [next]
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R9 R9 K6 ["currentCategory"]
       33 CALL                             R8 1 1
       34 JUMPIFNOTEQKNIL                  R8 ; [+7]
       36 GETUPVAL                         R8 3
       37 GETTABLEKS                       R9 R7 K7 ["children"]
       39 MOVE                             R10 R7
       40 MOVE                             R11 R2
       41 CALL                             R8 3 0
       42 FORGLOOP                         R3 2 ; [-31]
       44 GETIMPORT                        R3 K9 [next]
       46 GETUPVAL                         R4 2
       47 GETTABLEKS                       R4 R4 K6 ["currentCategory"]
       49 CALL                             R3 1 1
       50 JUMPIFNOTEQKNIL                  R3 ; [+7]
       52 GETIMPORT                        R3 K11 [table.remove]
       54 GETUPVAL                         R4 0
       55 GETUPVAL                         R6 0
       56 LENGTH                           R5 R6
       57 CALL                             R3 2 0
       58 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"Expansion", "Selection"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R3 R0 K0 ["Expansion"]
        4 GETUPVAL                         R4 1
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R1 K0 ["Expansion"]
        8 GETUPVAL                         R2 2
        9 SETTABLEKS                       R2 R1 K1 ["Selection"]
       11 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Path"]
        4 LENGTH                           R2 R3
        5 JUMPIFEQKN                       R2 K2 [0] ; [+84]
        7 GETTABLEKS                       R2 R0 K3 ["state"]
        9 GETTABLEKS                       R2 R2 K4 ["lastPath"]
       11 GETTABLEKS                       R3 R1 K1 ["Path"]
       13 JUMPIFEQ                         R2 R3 ; [+76]
       15 NEWTABLE                         R2 0 0
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R3
       22 MOVE                             R4 R3
       23 GETTABLEKS                       R5 R0 K5 ["categories"]
       25 NEWTABLE                         R6 0 0
       27 GETTABLEKS                       R7 R1 K1 ["Path"]
       29 CALL                             R4 3 0
       30 GETIMPORT                        R4 K7 [next]
       32 MOVE                             R5 R2
       33 CALL                             R4 1 1
       34 JUMPIFNOT                        R4 ; [+43]
       35 GETTABLEKS                       R4 R0 K8 ["currentCategory"]
       37 GETTABLEKS                       R4 R4 K9 ["path"]
       39 JUMPIFNOT                        R4 ; [+38]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R5 R0 K5 ["categories"]
       43 MOVE                             R6 R2
       44 CALL                             R4 2 1
       45 JUMPIF                           R4 ; [+32]
       46 NEWTABLE                         R4 0 0
       48 NEWTABLE                         R5 0 0
       50 GETIMPORT                        R6 K11 [ipairs]
       52 MOVE                             R7 R2
       53 CALL                             R6 1 3
       54 FORGPREP_INEXT                   R6
       55 LOADB                            R11 1
       56 SETTABLE                         R11 R5 R10
       57 FORGLOOP                         R6 2 [inext] ; [-3]
       59 GETTABLEKS                       R6 R0 K8 ["currentCategory"]
       61 LOADB                            R7 1
       62 SETTABLE                         R7 R4 R6
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R7 R0 K3 ["state"]
       66 GETTABLEKS                       R7 R7 K12 ["Selection"]
       68 MOVE                             R8 R4
       69 CALL                             R6 2 1
       70 JUMPIF                           R6 ; [+7]
       71 NEWCLOSURE                       R8 P1
       72 CAPTURE                          UPVAL U1
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R4
       75 NAMECALL                         R6 R0 K13 ["setState"]
       77 CALL                             R6 2 0
       78 NEWTABLE                         R4 0 0
       80 SETTABLEKS                       R4 R0 K8 ["currentCategory"]
       82 DUPTABLE                         R6 K14 [{"lastPath"}]
       83 GETTABLEKS                       R7 R1 K1 ["Path"]
       85 SETTABLEKS                       R7 R6 K4 ["lastPath"]
       87 NAMECALL                         R4 R0 K13 ["setState"]
       89 CALL                             R4 2 0
       90 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"Expansion"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R3 R0 K0 ["Expansion"]
        4 GETUPVAL                         R4 1
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R1 K0 ["Expansion"]
        8 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R1 K0 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETIMPORT                        R2 K2 [pairs]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 GETTABLEKS                       R7 R1 K3 ["MaterialServiceController"]
       10 GETTABLEKS                       R9 R5 K4 ["path"]
       12 NAMECALL                         R7 R7 K5 ["setPath"]
       14 CALL                             R7 2 0
       15 FORGLOOP                         R2 2 ; [-8]
       17 GETTABLEKS                       R2 R1 K6 ["Analytics"]
       19 LOADK                            R4 K7 ["clickOnCategoriesOpen"]
       20 NAMECALL                         R2 R2 K8 ["report"]
       22 CALL                             R2 2 0
       23 GETUPVAL                         R2 0
       24 DUPTABLE                         R4 K10 [{"Selection"}]
       25 SETTABLEKS                       R0 R4 K9 ["Selection"]
       27 NAMECALL                         R2 R2 K11 ["setState"]
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["currentCategory"]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R1 R0 K1 ["onExpansionChange"]
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K2 ["onSelectionChange"]
       13 DUPTABLE                         R1 K6 [{"Expansion", "Selection", "lastPath"}]
       14 NEWTABLE                         R2 0 0
       16 SETTABLEKS                       R2 R1 K3 ["Expansion"]
       18 NEWTABLE                         R2 0 0
       20 SETTABLEKS                       R2 R1 K4 ["Selection"]
       22 NEWTABLE                         R2 0 0
       24 SETTABLEKS                       R2 R1 K5 ["lastPath"]
       26 SETTABLEKS                       R1 R0 K7 ["state"]
       28 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["MaterialServiceController"]
        6 NAMECALL                         R3 R3 K3 ["getRootCategory"]
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R4 R0 K4 ["categories"]
       11 JUMPIF                           R4 ; [+25]
       12 GETUPVAL                         R4 0
       13 MOVE                             R5 R3
       14 MOVE                             R6 R2
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R0 K4 ["categories"]
       18 GETTABLEKS                       R5 R0 K4 ["categories"]
       20 GETTABLEN                        R4 R5 1
       21 DUPTABLE                         R7 K7 [{"Expansion", "Selection"}]
       22 NEWTABLE                         R8 1 0
       24 LOADB                            R9 1
       25 SETTABLE                         R9 R8 R4
       26 SETTABLEKS                       R8 R7 K5 ["Expansion"]
       28 NEWTABLE                         R8 1 0
       30 LOADB                            R9 1
       31 SETTABLE                         R9 R8 R4
       32 SETTABLEKS                       R8 R7 K6 ["Selection"]
       34 NAMECALL                         R5 R0 K8 ["setState"]
       36 CALL                             R5 2 0
       37 NAMECALL                         R4 R0 K9 ["updateSelection"]
       39 CALL                             R4 1 0
       40 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R1 R0 K0 ["updateSelection"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 GETTABLEKS                       R4 R1 K3 ["ZIndex"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["createElement"]
       11 GETUPVAL                         R6 1
       12 DUPTABLE                         R7 K10 [{"Size", "ZIndex", "Expansion", "Selection", "RootItems", "OnExpansionChange", "OnSelectionChange"}]
       13 SETTABLEKS                       R3 R7 K2 ["Size"]
       15 SETTABLEKS                       R4 R7 K3 ["ZIndex"]
       17 GETTABLEKS                       R8 R2 K5 ["Expansion"]
       19 SETTABLEKS                       R8 R7 K5 ["Expansion"]
       21 GETTABLEKS                       R8 R2 K6 ["Selection"]
       23 SETTABLEKS                       R8 R7 K6 ["Selection"]
       25 GETTABLEKS                       R8 R0 K11 ["categories"]
       27 JUMPIF                           R8 ; [+2]
       28 NEWTABLE                         R8 0 0
       30 SETTABLEKS                       R8 R7 K7 ["RootItems"]
       32 GETTABLEKS                       R8 R0 K12 ["onExpansionChange"]
       34 SETTABLEKS                       R8 R7 K8 ["OnExpansionChange"]
       36 GETTABLEKS                       R8 R0 K13 ["onSelectionChange"]
       38 SETTABLEKS                       R8 R7 K9 ["OnSelectionChange"]
       40 CALL                             R5 2 -1
       41 RETURN                           R5 -1

PROTO_10:
        0 DUPTABLE                         R2 K1 [{"Path"}]
        1 GETTABLEKS                       R3 R0 K2 ["MaterialBrowserReducer"]
        3 GETTABLEKS                       R3 R3 K0 ["Path"]
        5 SETTABLEKS                       R3 R2 K0 ["Path"]
        7 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R1 K1 [{"dispatchSetPath"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchSetPath"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Types"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Packages"]
       22 GETTABLEKS                       R3 R3 K8 ["Roact"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Packages"]
       29 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K7 ["Packages"]
       36 GETTABLEKS                       R5 R5 K10 ["Framework"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K11 ["Dash"]
       41 GETTABLEKS                       R5 R5 K12 ["join"]
       43 GETTABLEKS                       R6 R4 K13 ["Util"]
       45 GETTABLEKS                       R6 R6 K14 ["deepEqual"]
       47 GETTABLEKS                       R7 R4 K15 ["ContextServices"]
       49 GETTABLEKS                       R8 R7 K16 ["withContext"]
       51 GETTABLEKS                       R9 R7 K17 ["Analytics"]
       53 GETTABLEKS                       R10 R7 K18 ["Localization"]
       55 GETTABLEKS                       R11 R4 K19 ["UI"]
       57 GETTABLEKS                       R12 R11 K20 ["TreeView"]
       59 GETTABLEKS                       R13 R0 K5 ["Src"]
       61 GETTABLEKS                       R13 R13 K21 ["Actions"]
       63 GETIMPORT                        R14 K4 [require]
       65 GETTABLEKS                       R15 R13 K22 ["SetPath"]
       67 CALL                             R14 1 1
       68 GETTABLEKS                       R15 R0 K5 ["Src"]
       70 GETTABLEKS                       R15 R15 K13 ["Util"]
       72 GETIMPORT                        R16 K4 [require]
       74 GETTABLEKS                       R17 R15 K23 ["getCategories"]
       76 CALL                             R16 1 1
       77 GETTABLEKS                       R17 R0 K5 ["Src"]
       79 GETTABLEKS                       R17 R17 K24 ["Controllers"]
       81 GETIMPORT                        R18 K4 [require]
       83 GETTABLEKS                       R19 R17 K25 ["MaterialServiceController"]
       85 CALL                             R18 1 1
       86 GETTABLEKS                       R19 R2 K26 ["PureComponent"]
       88 LOADK                            R21 K27 ["SideBar"]
       89 NAMECALL                         R19 R19 K28 ["extend"]
       91 CALL                             R19 2 1
       92 DUPCLOSURE                       R20 K29 [PROTO_2]
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R5
       95 SETTABLEKS                       R20 R19 K30 ["updateSelection"]
       97 DUPCLOSURE                       R20 K31 [PROTO_6]
       98 CAPTURE                          VAL R5
       99 SETTABLEKS                       R20 R19 K32 ["init"]
      101 DUPCLOSURE                       R20 K33 [PROTO_7]
      102 CAPTURE                          VAL R16
      103 SETTABLEKS                       R20 R19 K34 ["didMount"]
      105 DUPCLOSURE                       R20 K35 [PROTO_8]
      106 SETTABLEKS                       R20 R19 K36 ["didUpdate"]
      108 DUPCLOSURE                       R20 K37 [PROTO_9]
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R12
      111 SETTABLEKS                       R20 R19 K38 ["render"]
      113 MOVE                             R20 R8
      114 DUPTABLE                         R21 K39 [{"Analytics", "Localization", "MaterialServiceController"}]
      115 SETTABLEKS                       R9 R21 K17 ["Analytics"]
      117 SETTABLEKS                       R10 R21 K18 ["Localization"]
      119 SETTABLEKS                       R18 R21 K25 ["MaterialServiceController"]
      121 CALL                             R20 1 1
      122 MOVE                             R21 R19
      123 CALL                             R20 1 1
      124 MOVE                             R19 R20
      125 GETTABLEKS                       R20 R3 K40 ["connect"]
      127 DUPCLOSURE                       R21 K41 [PROTO_10]
      128 DUPCLOSURE                       R22 K42 [PROTO_12]
      129 CAPTURE                          VAL R14
      130 CALL                             R20 2 1
      131 MOVE                             R21 R19
      132 CALL                             R20 1 -1
      133 RETURN                           R20 -1
