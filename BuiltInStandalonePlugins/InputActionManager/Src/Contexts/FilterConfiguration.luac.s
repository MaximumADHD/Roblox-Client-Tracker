PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["filterInstances"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["filterInstances"]
        7 LENGTH                           R0 R1
        8 JUMPIFNOTEQKN                    R0 K1 [0] ; [+4]
       10 NEWTABLE                         R0 0 0
       12 RETURN                           R0 1
       13 NEWTABLE                         R0 0 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K0 ["filterInstances"]
       18 LOADNIL                          R2
       19 LOADNIL                          R3
       20 FORGPREP                         R1
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K2 ["getBinding"]
       24 MOVE                             R7 R5
       25 CALL                             R6 1 1
       26 JUMPIFNOT                        R6 ; [+15]
       27 GETTABLEKS                       R7 R6 K3 ["parentUuid"]
       29 LOADB                            R8 1
       30 SETTABLE                         R8 R0 R7
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R7 R7 K4 ["getAction"]
       34 GETTABLEKS                       R8 R6 K3 ["parentUuid"]
       36 CALL                             R7 1 1
       37 JUMPIFNOT                        R7 ; [+4]
       38 GETTABLEKS                       R8 R7 K3 ["parentUuid"]
       40 LOADB                            R9 1
       41 SETTABLE                         R9 R0 R8
       42 GETUPVAL                         R7 1
       43 GETTABLEKS                       R7 R7 K4 ["getAction"]
       45 MOVE                             R8 R5
       46 CALL                             R7 1 1
       47 JUMPIFNOT                        R7 ; [+4]
       48 GETTABLEKS                       R8 R7 K3 ["parentUuid"]
       50 LOADB                            R9 1
       51 SETTABLE                         R9 R0 R8
       52 GETUPVAL                         R8 1
       53 GETTABLEKS                       R8 R8 K5 ["getContext"]
       55 MOVE                             R9 R5
       56 CALL                             R8 1 1
       57 JUMPIFNOT                        R8 ; [+9]
       58 GETTABLEKS                       R9 R8 K6 ["actions"]
       60 LOADNIL                          R10
       61 LOADNIL                          R11
       62 FORGPREP                         R9
       63 LOADB                            R14 1
       64 SETTABLE                         R14 R0 R13
       65 FORGLOOP                         R9 2 ; [-3]
       67 LOADB                            R9 1
       68 SETTABLE                         R9 R0 R5
       69 FORGLOOP                         R1 2 ; [-49]
       71 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 CALL                             R1 -1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["filterInstances"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["filterInstances"]
        7 LENGTH                           R0 R1
        8 JUMPIFNOTEQKN                    R0 K1 [0] ; [+3]
       10 LOADNIL                          R0
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K2 ["onContextOrderChanged"]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CALL                             R0 1 -1
       19 RETURN                           R0 -1

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
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["InputActionManager_FilterSchemas"]
        2 NEWTABLE                         R3 1 0
        4 LOADB                            R4 0
        5 SETTABLEKS                       R4 R3 K1 ["VR"]
        7 CALL                             R1 2 2
        8 GETUPVAL                         R3 0
        9 LOADK                            R4 K2 ["InputActionManager_FilterBuiltin"]
       10 NEWTABLE                         R5 0 0
       12 CALL                             R3 2 2
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K3 ["useContext"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K4 ["Context"]
       19 CALL                             R5 1 1
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R5
       26 CALL                             R6 1 1
       27 GETUPVAL                         R7 3
       28 GETTABLEKS                       R7 R7 K6 ["useStagnatingState"]
       30 MOVE                             R8 R6
       31 CALL                             R8 0 1
       32 NEWTABLE                         R9 0 1
       34 GETTABLEKS                       R10 R0 K7 ["filterInstances"]
       36 SETLIST                          R9 R10 1 [1]
       38 CALL                             R7 2 2
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K8 ["useEffect"]
       42 NEWCLOSURE                       R10 P1
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R8
       46 CAPTURE                          VAL R6
       47 NEWTABLE                         R11 0 3
       49 MOVE                             R12 R5
       50 GETTABLEKS                       R13 R0 K7 ["filterInstances"]
       52 MOVE                             R14 R6
       53 SETLIST                          R11 R12 3 [1]
       55 CALL                             R9 2 0
       56 GETUPVAL                         R9 1
       57 GETTABLEKS                       R9 R9 K9 ["useState"]
       59 NEWTABLE                         R10 0 0
       61 CALL                             R9 1 2
       62 GETUPVAL                         R11 1
       63 GETTABLEKS                       R11 R11 K9 ["useState"]
       65 LOADK                            R12 K10 [""]
       66 CALL                             R11 1 2
       67 GETUPVAL                         R13 1
       68 GETTABLEKS                       R13 R13 K5 ["useCallback"]
       70 NEWCLOSURE                       R14 P2
       71 CAPTURE                          VAL R2
       72 NEWTABLE                         R15 0 0
       74 CALL                             R13 2 1
       75 GETUPVAL                         R14 1
       76 GETTABLEKS                       R14 R14 K5 ["useCallback"]
       78 NEWCLOSURE                       R15 P3
       79 CAPTURE                          VAL R10
       80 NEWTABLE                         R16 0 0
       82 CALL                             R14 2 1
       83 GETUPVAL                         R15 1
       84 GETTABLEKS                       R15 R15 K5 ["useCallback"]
       86 NEWCLOSURE                       R16 P4
       87 CAPTURE                          VAL R4
       88 NEWTABLE                         R17 0 0
       90 CALL                             R15 2 1
       91 GETUPVAL                         R16 1
       92 GETTABLEKS                       R16 R16 K11 ["useMemo"]
       94 NEWCLOSURE                       R17 P5
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R12
      104 NEWTABLE                         R18 0 8
      106 MOVE                             R19 R3
      107 MOVE                             R20 R9
      108 MOVE                             R21 R7
      109 MOVE                             R22 R1
      110 MOVE                             R23 R11
      111 MOVE                             R24 R15
      112 MOVE                             R25 R13
      113 MOVE                             R26 R14
      114 SETLIST                          R18 R19 8 [1]
      116 CALL                             R16 2 1
      117 GETUPVAL                         R17 1
      118 GETTABLEKS                       R17 R17 K12 ["createElement"]
      120 GETUPVAL                         R18 4
      121 GETTABLEKS                       R18 R18 K13 ["Provider"]
      123 DUPTABLE                         R19 K15 [{"value"}]
      124 SETTABLEKS                       R16 R19 K14 ["value"]
      126 GETTABLEKS                       R20 R0 K16 ["children"]
      128 CALL                             R17 3 -1
      129 RETURN                           R17 -1

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
       46 DUPTABLE                         R6 K25 [{["builtin"], ["contexts"], ["instances"], ["schemas"], ["searchString"] = "", ["setBuiltinVisible"], ["setContextVisible"], ["setSchemaVisible"], ["setSearchString"]}]
       47 NEWTABLE                         R7 0 0
       49 SETTABLEKS                       R7 R6 K15 ["builtin"]
       51 NEWTABLE                         R7 0 0
       53 SETTABLEKS                       R7 R6 K16 ["contexts"]
       55 NEWTABLE                         R7 0 0
       57 SETTABLEKS                       R7 R6 K17 ["instances"]
       59 NEWTABLE                         R7 0 0
       61 SETTABLEKS                       R7 R6 K18 ["schemas"]
       63 GETTABLEKS                       R7 R2 K26 ["createUnimplemented"]
       65 LOADK                            R8 K21 ["setBuiltinVisible"]
       66 CALL                             R7 1 1
       67 SETTABLEKS                       R7 R6 K21 ["setBuiltinVisible"]
       69 GETTABLEKS                       R7 R2 K26 ["createUnimplemented"]
       71 LOADK                            R8 K22 ["setContextVisible"]
       72 CALL                             R7 1 1
       73 SETTABLEKS                       R7 R6 K22 ["setContextVisible"]
       75 GETTABLEKS                       R7 R2 K26 ["createUnimplemented"]
       77 LOADK                            R8 K23 ["setSchemaVisible"]
       78 CALL                             R7 1 1
       79 SETTABLEKS                       R7 R6 K23 ["setSchemaVisible"]
       81 GETTABLEKS                       R7 R2 K26 ["createUnimplemented"]
       83 LOADK                            R8 K24 ["setSearchString"]
       84 CALL                             R7 1 1
       85 SETTABLEKS                       R7 R6 K24 ["setSearchString"]
       87 GETTABLEKS                       R7 R1 K27 ["createContext"]
       89 MOVE                             R8 R6
       90 CALL                             R7 1 1
       91 DUPCLOSURE                       R8 K28 [PROTO_10]
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R7
       97 DUPTABLE                         R9 K31 [{"Context", "Provider"}]
       98 SETTABLEKS                       R7 R9 K29 ["Context"]
      100 SETTABLEKS                       R8 R9 K30 ["Provider"]
      102 RETURN                           R9 1
