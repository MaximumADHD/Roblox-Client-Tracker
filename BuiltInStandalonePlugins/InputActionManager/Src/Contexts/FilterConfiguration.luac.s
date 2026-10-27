PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+3]
        3 NEWTABLE                         R0 0 0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K0 ["filterInstances"]
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K0 ["filterInstances"]
       13 LENGTH                           R0 R1
       14 JUMPIFNOTEQKN                    R0 K1 [0] ; [+4]
       16 NEWTABLE                         R0 0 0
       18 RETURN                           R0 1
       19 NEWTABLE                         R0 0 0
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K0 ["filterInstances"]
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 FORGPREP                         R1
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K2 ["getBinding"]
       30 MOVE                             R7 R5
       31 CALL                             R6 1 1
       32 JUMPIFNOT                        R6 ; [+15]
       33 GETTABLEKS                       R7 R6 K3 ["parentUuid"]
       35 LOADB                            R8 1
       36 SETTABLE                         R8 R0 R7
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R7 R7 K4 ["getAction"]
       40 GETTABLEKS                       R8 R6 K3 ["parentUuid"]
       42 CALL                             R7 1 1
       43 JUMPIFNOT                        R7 ; [+4]
       44 GETTABLEKS                       R8 R7 K3 ["parentUuid"]
       46 LOADB                            R9 1
       47 SETTABLE                         R9 R0 R8
       48 GETUPVAL                         R7 2
       49 GETTABLEKS                       R7 R7 K4 ["getAction"]
       51 MOVE                             R8 R5
       52 CALL                             R7 1 1
       53 JUMPIFNOT                        R7 ; [+4]
       54 GETTABLEKS                       R8 R7 K3 ["parentUuid"]
       56 LOADB                            R9 1
       57 SETTABLE                         R9 R0 R8
       58 GETUPVAL                         R8 2
       59 GETTABLEKS                       R8 R8 K5 ["getContext"]
       61 MOVE                             R9 R5
       62 CALL                             R8 1 1
       63 JUMPIFNOT                        R8 ; [+9]
       64 GETTABLEKS                       R9 R8 K6 ["actions"]
       66 LOADNIL                          R10
       67 LOADNIL                          R11
       68 FORGPREP                         R9
       69 LOADB                            R14 1
       70 SETTABLE                         R14 R0 R13
       71 FORGLOOP                         R9 2 ; [-3]
       73 LOADB                            R9 1
       74 SETTABLE                         R9 R0 R5
       75 FORGLOOP                         R1 2 ; [-49]
       77 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 CALL                             R1 -1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["filterInstances"]
        6 JUMPIFNOT                        R0 ; [+6]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["filterInstances"]
       10 LENGTH                           R0 R1
       11 JUMPIFNOTEQKN                    R0 K1 [0] ; [+3]
       13 LOADNIL                          R0
       14 RETURN                           R0 1
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K2 ["onContextOrderChanged"]
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CALL                             R0 1 -1
       22 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETUPVAL                         R2 1
        4 JUMPIFEQKNIL                     R2 ; [+6]
        6 GETUPVAL                         R2 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R0 K9 [{"builtin", "contexts", "instances", "schemas", "searchString", "setBuiltinVisible", "setContextVisible", "setSchemaVisible", "setSearchString"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["builtin"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["contexts"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["instances"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["schemas"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["searchString"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["setBuiltinVisible"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["setContextVisible"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["setSchemaVisible"]
       25 GETUPVAL                         R1 8
       26 SETTABLEKS                       R1 R0 K8 ["setSearchString"]
       28 RETURN                           R0 1

PROTO_10:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 0
        5 CALL                             R5 0 1
        6 JUMPIFNOT                        R5 ; [+18]
        7 GETUPVAL                         R5 1
        8 LOADK                            R6 K0 ["InputActionManager_FilterSchemas"]
        9 NEWTABLE                         R7 1 0
       11 LOADB                            R8 0
       12 SETTABLEKS                       R8 R7 K1 ["VR"]
       14 CALL                             R5 2 2
       15 MOVE                             R1 R5
       16 MOVE                             R2 R6
       17 GETUPVAL                         R5 1
       18 LOADK                            R6 K2 ["InputActionManager_FilterBuiltin"]
       19 NEWTABLE                         R7 0 0
       21 CALL                             R5 2 2
       22 MOVE                             R3 R5
       23 MOVE                             R4 R6
       24 JUMP                             ; [+11]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K3 ["useState"]
       28 NEWTABLE                         R6 1 0
       30 LOADB                            R7 0
       31 SETTABLEKS                       R7 R6 K1 ["VR"]
       33 CALL                             R5 1 2
       34 MOVE                             R1 R5
       35 MOVE                             R2 R6
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R5 R5 K4 ["useContext"]
       39 GETUPVAL                         R6 3
       40 GETTABLEKS                       R6 R6 K5 ["Context"]
       42 CALL                             R5 1 1
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       46 NEWCLOSURE                       R7 P0
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R5
       50 CALL                             R6 1 1
       51 GETUPVAL                         R7 5
       52 GETTABLEKS                       R7 R7 K7 ["useStagnatingState"]
       54 MOVE                             R8 R6
       55 CALL                             R8 0 1
       56 NEWTABLE                         R9 0 1
       58 GETTABLEKS                       R10 R0 K8 ["filterInstances"]
       60 SETLIST                          R9 R10 1 [1]
       62 CALL                             R7 2 2
       63 GETUPVAL                         R9 2
       64 GETTABLEKS                       R9 R9 K9 ["useEffect"]
       66 NEWCLOSURE                       R10 P1
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R6
       72 NEWTABLE                         R11 0 3
       74 MOVE                             R12 R5
       75 GETTABLEKS                       R13 R0 K8 ["filterInstances"]
       77 MOVE                             R14 R6
       78 SETLIST                          R11 R12 3 [1]
       80 CALL                             R9 2 0
       81 GETUPVAL                         R9 2
       82 GETTABLEKS                       R9 R9 K3 ["useState"]
       84 NEWTABLE                         R10 0 0
       86 CALL                             R9 1 2
       87 GETUPVAL                         R11 2
       88 GETTABLEKS                       R11 R11 K3 ["useState"]
       90 LOADK                            R12 K10 [""]
       91 CALL                             R11 1 2
       92 GETUPVAL                         R13 2
       93 GETTABLEKS                       R13 R13 K6 ["useCallback"]
       95 NEWCLOSURE                       R14 P2
       96 CAPTURE                          REF R2
       97 NEWTABLE                         R15 0 0
       99 CALL                             R13 2 1
      100 GETUPVAL                         R14 2
      101 GETTABLEKS                       R14 R14 K6 ["useCallback"]
      103 NEWCLOSURE                       R15 P3
      104 CAPTURE                          VAL R10
      105 NEWTABLE                         R16 0 0
      107 CALL                             R14 2 1
      108 GETUPVAL                         R15 2
      109 GETTABLEKS                       R15 R15 K6 ["useCallback"]
      111 NEWCLOSURE                       R16 P4
      112 CAPTURE                          UPVAL U0
      113 CAPTURE                          REF R4
      114 NEWTABLE                         R17 0 0
      116 CALL                             R15 2 1
      117 GETUPVAL                         R16 2
      118 GETTABLEKS                       R16 R16 K11 ["useMemo"]
      120 NEWCLOSURE                       R17 P5
      121 CAPTURE                          REF R3
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R7
      124 CAPTURE                          REF R1
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R12
      130 NEWTABLE                         R18 0 8
      132 MOVE                             R19 R3
      133 MOVE                             R20 R9
      134 MOVE                             R21 R7
      135 MOVE                             R22 R1
      136 MOVE                             R23 R11
      137 MOVE                             R24 R15
      138 MOVE                             R25 R13
      139 MOVE                             R26 R14
      140 SETLIST                          R18 R19 8 [1]
      142 CALL                             R16 2 1
      143 GETUPVAL                         R17 2
      144 GETTABLEKS                       R17 R17 K12 ["createElement"]
      146 GETUPVAL                         R18 6
      147 GETTABLEKS                       R18 R18 K13 ["Provider"]
      149 DUPTABLE                         R19 K15 [{"value"}]
      150 SETTABLEKS                       R16 R19 K14 ["value"]
      152 GETTABLEKS                       R20 R0 K16 ["children"]
      154 CALL                             R17 3 -1
      155 CLOSEUPVALS                      R1
      156 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K12 ["InputConfiguration"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Hooks"]
       43 GETTABLEKS                       R6 R6 K14 ["useSavedState"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Flags"]
       52 GETTABLEKS                       R7 R7 K16 ["getFFlagIAMSavedFilters"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K9 ["Src"]
       59 GETTABLEKS                       R8 R8 K15 ["Flags"]
       61 GETTABLEKS                       R8 R8 K17 ["getFFlagIAMOpenFromProperties"]
       63 CALL                             R7 1 1
       64 DUPTABLE                         R8 K28 [{["builtin"], ["contexts"], ["instances"], ["schemas"], ["searchString"] = "", ["setBuiltinVisible"], ["setContextVisible"], ["setSchemaVisible"], ["setSearchString"]}]
       65 NEWTABLE                         R9 0 0
       67 SETTABLEKS                       R9 R8 K18 ["builtin"]
       69 NEWTABLE                         R9 0 0
       71 SETTABLEKS                       R9 R8 K19 ["contexts"]
       73 NEWTABLE                         R9 0 0
       75 SETTABLEKS                       R9 R8 K20 ["instances"]
       77 NEWTABLE                         R9 0 0
       79 SETTABLEKS                       R9 R8 K21 ["schemas"]
       81 GETTABLEKS                       R9 R2 K29 ["createUnimplemented"]
       83 LOADK                            R10 K24 ["setBuiltinVisible"]
       84 CALL                             R9 1 1
       85 SETTABLEKS                       R9 R8 K24 ["setBuiltinVisible"]
       87 GETTABLEKS                       R9 R2 K29 ["createUnimplemented"]
       89 LOADK                            R10 K25 ["setContextVisible"]
       90 CALL                             R9 1 1
       91 SETTABLEKS                       R9 R8 K25 ["setContextVisible"]
       93 GETTABLEKS                       R9 R2 K29 ["createUnimplemented"]
       95 LOADK                            R10 K26 ["setSchemaVisible"]
       96 CALL                             R9 1 1
       97 SETTABLEKS                       R9 R8 K26 ["setSchemaVisible"]
       99 GETTABLEKS                       R9 R2 K29 ["createUnimplemented"]
      101 LOADK                            R10 K27 ["setSearchString"]
      102 CALL                             R9 1 1
      103 SETTABLEKS                       R9 R8 K27 ["setSearchString"]
      105 GETTABLEKS                       R9 R1 K30 ["createContext"]
      107 MOVE                             R10 R8
      108 CALL                             R9 1 1
      109 DUPCLOSURE                       R10 K31 [PROTO_10]
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R9
      117 DUPTABLE                         R11 K34 [{"Context", "Provider"}]
      118 SETTABLEKS                       R9 R11 K32 ["Context"]
      120 SETTABLEKS                       R10 R11 K33 ["Provider"]
      122 RETURN                           R11 1
