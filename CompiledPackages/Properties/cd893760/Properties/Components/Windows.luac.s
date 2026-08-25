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
        8 GETTABLEKS                       R2 R2 K2 ["use"]
       10 GETTABLEKS                       R3 R0 K3 ["session"]
       12 GETTABLEKS                       R3 R3 K4 ["propertiesObservable"]
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
       50 NEWTABLE                         R4 0 0
       52 GETTABLEKS                       R5 R1 K6 ["windows"]
       54 LOADNIL                          R6
       55 LOADNIL                          R7
       56 FORGPREP                         R5
       57 MOVE                             R10 R9
       58 LOADNIL                          R11
       59 LOADNIL                          R12
       60 FORGPREP                         R10
       61 GETUPVAL                         R15 3
       62 GETTABLEKS                       R15 R15 K11 ["byNameAndType"]
       64 MOVE                             R16 R2
       65 MOVE                             R17 R13
       66 MOVE                             R18 R8
       67 CALL                             R15 3 1
       68 JUMPIFNOTEQKNIL                  R15 ; [+5]
       70 GETTABLEKS                       R16 R14 K12 ["isOpen"]
       72 CALL                             R16 0 1
       73 JUMPIFNOT                        R16 ; [+30]
       74 LOADK                            R17 K13 ["%*%*"]
       75 GETTABLEKS                       R23 R14 K15 ["propertyInfo"]
       77 CALL                             R23 0 1
       78 MOVE                             R21 R23
       79 GETTABLEKS                       R21 R21 K16 ["type"]
       81 LOADK                            R22 K17 [" "]
       82 CONCAT                           R20 R21 R22
       83 ORK                              R19 R20 K14 [""]
       84 GETTABLEKS                       R20 R14 K18 ["propertyId"]
       86 CALL                             R20 0 1
       87 GETTABLEKS                       R20 R20 K19 ["name"]
       89 NAMECALL                         R17 R17 K20 ["format"]
       91 CALL                             R17 3 1
       92 MOVE                             R16 R17
       93 GETUPVAL                         R17 4
       94 GETUPVAL                         R18 5
       95 DUPTABLE                         R19 K22 [{"window", "session"}]
       96 SETTABLEKS                       R14 R19 K21 ["window"]
       98 GETTABLEKS                       R20 R0 K3 ["session"]
      100 SETTABLEKS                       R20 R19 K3 ["session"]
      102 CALL                             R17 2 1
      103 SETTABLE                         R17 R4 R16
      104 FORGLOOP                         R10 2 ; [-44]
      106 FORGLOOP                         R5 2 ; [-50]
      108 GETUPVAL                         R5 4
      109 GETUPVAL                         R6 6
      110 NEWTABLE                         R7 0 0
      112 MOVE                             R8 R4
      113 CALL                             R5 3 -1
      114 RETURN                           R5 -1

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
       23 GETTABLEKS                       R4 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["Observable"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["PropertyEditorTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["PropertyTypes"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K8 ["Parent"]
       42 GETTABLEKS                       R7 R7 K13 ["React"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K14 ["RpcTypes"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETIMPORT                        R9 K1 [script]
       54 GETTABLEKS                       R9 R9 K8 ["Parent"]
       56 GETTABLEKS                       R9 R9 K15 ["Contexts"]
       58 GETTABLEKS                       R9 R9 K16 ["WindowManagerContext"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K17 ["Components"]
       65 GETTABLEKS                       R10 R10 K6 ["Util"]
       67 GETTABLEKS                       R10 R10 K18 ["WindowPortal"]
       69 CALL                             R9 1 1
       70 GETTABLEKS                       R10 R2 K19 ["View"]
       72 GETTABLEKS                       R11 R6 K20 ["createElement"]
       74 DUPCLOSURE                       R12 K21 [PROTO_3]
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R10
       82 RETURN                           R12 1
