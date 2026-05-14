PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["<%*>"]
        2 GETUPVAL                         R4 1
        3 LOADK                            R6 K1 ["Label"]
        4 LOADK                            R7 K2 ["UnknownUser"]
        5 NAMECALL                         R4 R4 K3 ["getText"]
        7 CALL                             R4 3 1
        8 NAMECALL                         R2 R2 K4 ["format"]
       10 CALL                             R2 2 1
       11 MOVE                             R1 R2
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["cancel"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 GETUPVAL                         R0 0
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K2 ["getUserName"]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K3 ["userId"]
       21 CALL                             R1 1 1
       22 GETUPVAL                         R3 3
       23 NAMECALL                         R1 R1 K4 ["andThen"]
       25 CALL                             R1 2 1
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 NAMECALL                         R1 R1 K5 ["catch"]
       31 CALL                             R1 2 1
       32 SETTABLEKS                       R1 R0 K0 ["current"]
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 3
        8 NAMECALL                         R3 R3 K1 ["use"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K2 ["useState"]
       14 LOADK                            R5 K3 [". . ."]
       15 CALL                             R4 1 2
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K4 ["useRef"]
       19 LOADNIL                          R7
       20 CALL                             R6 1 1
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R7 R7 K5 ["useEffect"]
       24 NEWCLOSURE                       R8 P0
       25 CAPTURE                          VAL R6
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R5
       29 CAPTURE                          VAL R3
       30 NEWTABLE                         R9 0 1
       32 GETTABLEKS                       R10 R0 K6 ["userId"]
       34 SETLIST                          R9 R10 1 [1]
       36 CALL                             R7 2 0
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R7 R7 K7 ["createElement"]
       40 GETUPVAL                         R8 4
       41 GETTABLEKS                       R8 R8 K8 ["View"]
       43 DUPTABLE                         R9 K11 [{"tag", "LayoutOrder"}]
       44 LOADK                            R10 K12 ["size-0-0 auto-xy row align-y-center gap-xsmall"]
       45 SETTABLEKS                       R10 R9 K9 ["tag"]
       47 GETTABLEKS                       R10 R0 K10 ["LayoutOrder"]
       49 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       51 DUPTABLE                         R10 K14 [{"Tooltip"}]
       52 GETUPVAL                         R11 1
       53 GETTABLEKS                       R11 R11 K7 ["createElement"]
       55 GETUPVAL                         R12 4
       56 GETTABLEKS                       R12 R12 K13 ["Tooltip"]
       58 DUPTABLE                         R13 K16 [{"title"}]
       59 SETTABLEKS                       R4 R13 K15 ["title"]
       61 DUPTABLE                         R14 K18 [{"Avatar"}]
       62 GETUPVAL                         R15 1
       63 GETTABLEKS                       R15 R15 K7 ["createElement"]
       65 GETUPVAL                         R16 4
       66 GETTABLEKS                       R16 R16 K17 ["Avatar"]
       68 DUPTABLE                         R17 K20 [{"userId", "size", "LayoutOrder"}]
       69 GETTABLEKS                       R18 R0 K6 ["userId"]
       71 SETTABLEKS                       R18 R17 K6 ["userId"]
       73 GETUPVAL                         R18 4
       74 GETTABLEKS                       R18 R18 K21 ["Enums"]
       76 GETTABLEKS                       R18 R18 K22 ["InputSize"]
       78 GETTABLEKS                       R18 R18 K23 ["XSmall"]
       80 SETTABLEKS                       R18 R17 K19 ["size"]
       82 MOVE                             R18 R1
       83 CALL                             R18 0 1
       84 SETTABLEKS                       R18 R17 K10 ["LayoutOrder"]
       86 CALL                             R15 2 1
       87 SETTABLEKS                       R15 R14 K17 ["Avatar"]
       89 CALL                             R11 3 1
       90 SETTABLEKS                       R11 R10 K13 ["Tooltip"]
       92 CALL                             R7 3 -1
       93 RETURN                           R7 -1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["createElement"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["Text"]
        9 DUPTABLE                         R5 K5 [{"tag", "Text", "key", "LayoutOrder"}]
       10 LOADK                            R6 K6 ["size-0-0 auto-xy text-body-small text-align-x-left"]
       11 SETTABLEKS                       R6 R5 K2 ["tag"]
       13 LOADK                            R7 K7 ["%*:"]
       14 GETUPVAL                         R9 2
       15 LOADK                            R11 K8 ["Label"]
       16 LOADK                            R12 K9 ["Collaborators"]
       17 NAMECALL                         R9 R9 K10 ["getText"]
       19 CALL                             R9 3 1
       20 NAMECALL                         R7 R7 K11 ["format"]
       22 CALL                             R7 2 1
       23 MOVE                             R6 R7
       24 SETTABLEKS                       R6 R5 K1 ["Text"]
       26 GETUPVAL                         R6 3
       27 LOADK                            R7 K8 ["Label"]
       28 CALL                             R6 1 1
       29 SETTABLEKS                       R6 R5 K3 ["key"]
       31 GETUPVAL                         R6 4
       32 CALL                             R6 0 1
       33 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       35 CALL                             R3 2 -1
       36 FASTCALL                         TABLE_INSERT ; [+2]
       37 GETIMPORT                        R1 K14 [table.insert]
       39 CALL                             R1 -1 0
       40 GETUPVAL                         R1 5
       41 GETTABLEKS                       R1 R1 K15 ["contributors"]
       43 LOADNIL                          R2
       44 LOADNIL                          R3
       45 FORGPREP                         R1
       46 MOVE                             R7 R0
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R8 R8 K0 ["createElement"]
       50 GETUPVAL                         R9 6
       51 DUPTABLE                         R10 K17 [{"userId", "key", "LayoutOrder"}]
       52 SETTABLEKS                       R5 R10 K16 ["userId"]
       54 GETUPVAL                         R11 3
       55 LOADK                            R12 K18 ["Contributor"]
       56 CALL                             R11 1 1
       57 SETTABLEKS                       R11 R10 K3 ["key"]
       59 GETUPVAL                         R11 4
       60 CALL                             R11 0 1
       61 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
       63 CALL                             R8 2 -1
       64 FASTCALL                         TABLE_INSERT ; [+2]
       65 GETIMPORT                        R6 K14 [table.insert]
       67 CALL                             R6 -1 0
       68 FORGLOOP                         R1 2 ; [-23]
       70 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R3 R3 K0 ["use"]
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R4 R4 K1 ["useMemo"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U5
       19 NEWTABLE                         R6 0 1
       21 GETTABLEKS                       R7 R0 K2 ["contributors"]
       23 SETLIST                          R6 R7 1 [1]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 3
       27 GETTABLEKS                       R5 R5 K3 ["createElement"]
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R6 R6 K4 ["View"]
       32 DUPTABLE                         R7 K7 [{"tag", "LayoutOrder"}]
       33 LOADK                            R8 K8 ["size-full-0 auto-y row align-y-center wrap gap-small"]
       34 SETTABLEKS                       R8 R7 K5 ["tag"]
       36 GETTABLEKS                       R8 R0 K6 ["LayoutOrder"]
       38 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
       40 MOVE                             R8 R4
       41 CALL                             R5 3 -1
       42 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
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
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETTABLEKS                       R7 R0 K13 ["Src"]
       41 GETTABLEKS                       R7 R7 K14 ["Contexts"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R7 K15 ["NetworkContext"]
       47 CALL                             R8 1 1
       48 GETTABLEKS                       R9 R2 K16 ["createNextOrder"]
       50 GETTABLEKS                       R10 R2 K17 ["createUniqueKey"]
       52 DUPCLOSURE                       R11 K18 [PROTO_2]
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R3
       58 DUPCLOSURE                       R12 K19 [PROTO_4]
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R11
       65 RETURN                           R12 1
