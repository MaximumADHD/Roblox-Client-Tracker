PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["windows"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 MOVE                             R5 R4
        7 LOADNIL                          R6
        8 LOADNIL                          R7
        9 FORGPREP                         R5
       10 GETUPVAL                         R10 1
       11 GETTABLEKS                       R10 R10 K1 ["byNameAndType"]
       13 GETUPVAL                         R11 2
       14 MOVE                             R12 R8
       15 MOVE                             R13 R3
       16 CALL                             R10 3 1
       17 GETTABLEKS                       R11 R9 K2 ["setIsActive"]
       19 JUMPIFNOTEQKNIL                  R10 ; [+2]
       21 LOADB                            R12 0 +1
       22 LOADB                            R12 1
       23 CALL                             R11 1 0
       24 JUMPIFEQKNIL                     R10 ; [+37]
       26 GETTABLEKS                       R11 R9 K3 ["setPropertyId"]
       28 GETTABLEKS                       R12 R10 K4 ["id"]
       30 CALL                             R11 1 0
       31 GETTABLEKS                       R11 R9 K5 ["setPropertyInfo"]
       33 GETTABLEKS                       R12 R10 K6 ["aggregatePropertyInfo"]
       35 CALL                             R11 1 0
       36 GETTABLEKS                       R11 R10 K4 ["id"]
       38 GETTABLEKS                       R11 R11 K7 ["className"]
       40 GETTABLEKS                       R12 R10 K4 ["id"]
       42 GETTABLEKS                       R12 R12 K8 ["name"]
       44 LOADK                            R14 K9 ["%*%*"]
       45 JUMPIFNOT                        R11 ; [+4]
       46 MOVE                             R17 R11
       47 LOADK                            R18 K10 [" "]
       48 CONCAT                           R16 R17 R18
       49 JUMP                             ; [+1]
       50 LOADK                            R16 K11 [""]
       51 MOVE                             R17 R12
       52 NAMECALL                         R14 R14 K12 ["format"]
       54 CALL                             R14 3 1
       55 MOVE                             R13 R14
       56 GETTABLEKS                       R14 R9 K13 ["handle"]
       58 GETTABLEKS                       R14 R14 K14 ["setTitle"]
       60 MOVE                             R15 R13
       61 CALL                             R14 1 0
       62 JUMPIFNOTEQKNIL                  R10 ; [+11]
       64 GETTABLEKS                       R11 R9 K15 ["isOpen"]
       66 CALL                             R11 0 1
       67 JUMPIF                           R11 ; [+6]
       68 GETUPVAL                         R11 0
       69 GETTABLEKS                       R11 R11 K16 ["cleanupWindow"]
       71 MOVE                             R12 R3
       72 MOVE                             R13 R8
       73 CALL                             R11 2 0
       74 FORGLOOP                         R5 2 ; [-65]
       76 FORGLOOP                         R0 2 ; [-71]
       78 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["useSignalState"]
       10 GETTABLEKS                       R3 R0 K3 ["session"]
       12 GETTABLEKS                       R3 R3 K4 ["observeProperties"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K5 ["useEffect"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R5 0 3
       24 MOVE                             R6 R2
       25 GETTABLEKS                       R7 R1 K6 ["windows"]
       27 GETTABLEKS                       R8 R1 K7 ["cleanupWindow"]
       29 SETLIST                          R5 R6 3 [1]
       31 CALL                             R3 2 0
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K8 ["useRef"]
       35 GETTABLEKS                       R4 R1 K9 ["cleanupAllWindows"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R4 R1 K9 ["cleanupAllWindows"]
       40 SETTABLEKS                       R4 R3 K10 ["current"]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K5 ["useEffect"]
       45 NEWCLOSURE                       R5 P1
       46 CAPTURE                          VAL R3
       47 NEWTABLE                         R6 0 0
       49 CALL                             R4 2 0
       50 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["session"]
        3 GETTABLEKS                       R1 R1 K1 ["observeProperties"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 NEWTABLE                         R2 0 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["windows"]
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 MOVE                             R8 R7
       16 LOADNIL                          R9
       17 LOADNIL                          R10
       18 FORGPREP                         R8
       19 GETUPVAL                         R13 2
       20 GETTABLEKS                       R13 R13 K3 ["byNameAndType"]
       22 MOVE                             R14 R1
       23 MOVE                             R15 R11
       24 MOVE                             R16 R6
       25 CALL                             R13 3 1
       26 JUMPIFNOTEQKNIL                  R13 ; [+5]
       28 GETTABLEKS                       R14 R12 K4 ["isOpen"]
       30 CALL                             R14 0 1
       31 JUMPIFNOT                        R14 ; [+20]
       32 LOADK                            R15 K5 ["%*%*"]
       33 GETTABLEKS                       R21 R12 K7 ["propertyInfo"]
       35 CALL                             R21 0 1
       36 MOVE                             R19 R21
       37 GETTABLEKS                       R19 R19 K8 ["type"]
       39 LOADK                            R20 K9 [" "]
       40 CONCAT                           R18 R19 R20
       41 ORK                              R17 R18 K6 [""]
       42 GETTABLEKS                       R18 R12 K10 ["propertyId"]
       44 CALL                             R18 0 1
       45 GETTABLEKS                       R18 R18 K11 ["name"]
       47 NAMECALL                         R15 R15 K12 ["format"]
       49 CALL                             R15 3 1
       50 MOVE                             R14 R15
       51 SETTABLE                         R12 R2 R14
       52 FORGLOOP                         R8 2 ; [-34]
       54 FORGLOOP                         R3 2 ; [-40]
       56 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 GETUPVAL                         R2 4
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["useSignalState"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 NEWTABLE                         R5 0 2
       21 GETTABLEKS                       R6 R0 K4 ["session"]
       23 GETTABLEKS                       R6 R6 K5 ["observeProperties"]
       25 GETTABLEKS                       R7 R1 K6 ["windows"]
       27 SETLIST                          R5 R6 2 [1]
       29 CALL                             R3 2 -1
       30 CALL                             R2 -1 1
       31 NEWTABLE                         R3 0 0
       33 MOVE                             R4 R2
       34 LOADNIL                          R5
       35 LOADNIL                          R6
       36 FORGPREP                         R4
       37 GETUPVAL                         R9 6
       38 GETUPVAL                         R10 7
       39 DUPTABLE                         R11 K8 [{"window", "session"}]
       40 SETTABLEKS                       R8 R11 K7 ["window"]
       42 GETTABLEKS                       R12 R0 K4 ["session"]
       44 SETTABLEKS                       R12 R11 K4 ["session"]
       46 CALL                             R9 2 1
       47 SETTABLE                         R9 R3 R7
       48 FORGLOOP                         R4 2 ; [-12]
       50 GETUPVAL                         R4 6
       51 GETUPVAL                         R5 8
       52 NEWTABLE                         R6 0 0
       54 MOVE                             R7 R3
       55 DUPTABLE                         R8 K10 [{"WindowEffects"}]
       56 GETUPVAL                         R9 6
       57 GETUPVAL                         R10 9
       58 DUPTABLE                         R11 K11 [{"session"}]
       59 GETTABLEKS                       R12 R0 K4 ["session"]
       61 SETTABLEKS                       R12 R11 K4 ["session"]
       63 CALL                             R9 2 1
       64 SETTABLEKS                       R9 R8 K9 ["WindowEffects"]
       66 CALL                             R4 4 -1
       67 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["findProperty"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["PropertyEditorTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["PropertyTypes"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K8 ["Parent"]
       35 GETTABLEKS                       R6 R6 K12 ["React"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K13 ["RpcTypes"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K8 ["Parent"]
       47 GETTABLEKS                       R8 R8 K14 ["Signals"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K8 ["Parent"]
       54 GETTABLEKS                       R9 R9 K15 ["SignalsReact"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETIMPORT                        R10 K1 [script]
       61 GETTABLEKS                       R10 R10 K8 ["Parent"]
       63 GETTABLEKS                       R10 R10 K16 ["Contexts"]
       65 GETTABLEKS                       R10 R10 K17 ["WindowManagerContext"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K18 ["Components"]
       72 GETTABLEKS                       R11 R11 K6 ["Util"]
       74 GETTABLEKS                       R11 R11 K19 ["WindowPortal"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["Util"]
       81 GETTABLEKS                       R12 R12 K20 ["shallowEqual"]
       83 CALL                             R11 1 1
       84 GETTABLEKS                       R12 R2 K21 ["View"]
       86 GETTABLEKS                       R13 R5 K22 ["createElement"]
       88 DUPCLOSURE                       R14 K23 [PROTO_3]
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R1
       93 DUPCLOSURE                       R15 K24 [PROTO_6]
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R14
      104 RETURN                           R15 1
