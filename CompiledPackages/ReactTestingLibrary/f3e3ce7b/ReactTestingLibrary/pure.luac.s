PROTO_0:
        0 GETUPVAL                         R0 1
        1 CALL                             R0 0 1
        2 NAMECALL                         R0 R0 K0 ["expect"]
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolve"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 NAMECALL                         R0 R0 K1 ["andThen"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U2
        6 CALL                             R1 1 1
        7 NAMECALL                         R1 R1 K0 ["expect"]
        9 CALL                             R1 1 0
       10 CLOSEUPVALS                      R0
       11 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resolve"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R0
        8 NAMECALL                         R1 R1 K1 ["andThen"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R0 1
        1 CALL                             R0 0 1
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          REF R1
        4 CAPTURE                          VAL R0
        5 CALL                             R2 1 0
        6 CLOSEUPVALS                      R1
        7 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+8]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["createElement"]
        5 GETUPVAL                         R2 0
        6 LOADNIL                          R3
        7 MOVE                             R4 R0
        8 CALL                             R1 3 1
        9 RETURN                           R1 1
       10 MOVE                             R1 R0
       11 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETIMPORT                        R0 K1 [error]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K2 ["new"]
        7 LOADK                            R2 K3 ["hydrate not supported"]
        8 CALL                             R1 1 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 2
       12 GETUPVAL                         R3 3
       13 GETUPVAL                         R4 4
       14 JUMPIFNOT                        R4 ; [+9]
       15 GETUPVAL                         R4 5
       16 GETTABLEKS                       R4 R4 K4 ["createElement"]
       18 GETUPVAL                         R5 4
       19 LOADNIL                          R6
       20 MOVE                             R7 R3
       21 CALL                             R4 3 1
       22 MOVE                             R2 R4
       23 JUMP                             ; [+1]
       24 MOVE                             R2 R3
       25 NAMECALL                         R0 R0 K5 ["render"]
       27 CALL                             R0 2 0
       28 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["log"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R5 3
        7 CALL                             R2 3 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_9:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["isArray"]
        6 MOVE                             R5 R0
        7 CALL                             R4 1 1
        8 JUMPIFNOT                        R4 ; [+11]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K1 ["forEach"]
       12 MOVE                             R4 R0
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 CALL                             R3 2 1
       19 RETURN                           R3 1
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K2 ["log"]
       23 GETUPVAL                         R4 3
       24 MOVE                             R5 R0
       25 MOVE                             R6 R1
       26 MOVE                             R7 R2
       27 CALL                             R4 3 -1
       28 CALL                             R3 -1 1
       29 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unmount"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R2 R2 K0 ["createElement"]
        6 GETUPVAL                         R3 1
        7 LOADNIL                          R4
        8 MOVE                             R5 R0
        9 CALL                             R2 3 1
       10 JUMP                             ; [+1]
       11 MOVE                             R2 R0
       12 DUPTABLE                         R3 K3 [{"container", "baseElement"}]
       13 GETUPVAL                         R4 3
       14 SETTABLEKS                       R4 R3 K1 ["container"]
       16 GETUPVAL                         R4 4
       17 SETTABLEKS                       R4 R3 K2 ["baseElement"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R0 K1 [warn]
        2 LOADK                            R1 K2 ["asFragment not supported"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 JUMPIFNOTEQKNIL                  R1 ; [+4]
        2 NEWTABLE                         R2 0 0
        4 JUMP                             ; [+1]
        5 MOVE                             R2 R1
        6 GETTABLEKS                       R3 R2 K0 ["container"]
        8 GETTABLEKS                       R8 R2 K1 ["baseElement"]
       10 JUMPIFNOTEQKNIL                  R8 ; [+4]
       12 GETTABLEKS                       R4 R2 K0 ["container"]
       14 JUMP                             ; [+2]
       15 GETTABLEKS                       R4 R2 K1 ["baseElement"]
       17 GETTABLEKS                       R5 R2 K2 ["queries"]
       19 GETTABLEKS                       R8 R2 K3 ["hydrate"]
       21 JUMPIFNOTEQKNIL                  R8 ; [+3]
       23 LOADB                            R6 0
       24 JUMP                             ; [+2]
       25 GETTABLEKS                       R6 R2 K3 ["hydrate"]
       27 GETTABLEKS                       R7 R2 K4 ["wrapper"]
       29 JUMPIF                           R4 ; [+3]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R4 R8 K5 ["document"]
       33 JUMPIF                           R3 ; [+7]
       34 GETIMPORT                        R8 K8 [Instance.new]
       36 LOADK                            R9 K9 ["Folder"]
       37 CALL                             R8 1 1
       38 MOVE                             R3 R8
       39 SETTABLEKS                       R4 R3 K10 ["Parent"]
       41 LOADNIL                          R8
       42 GETUPVAL                         R10 1
       43 GETTABLE                         R9 R10 R3
       44 JUMPIF                           R9 ; [+9]
       45 GETUPVAL                         R9 2
       46 GETTABLEKS                       R9 R9 K11 ["createLegacyRoot"]
       48 MOVE                             R10 R3
       49 CALL                             R9 1 1
       50 MOVE                             R8 R9
       51 GETUPVAL                         R9 1
       52 SETTABLE                         R8 R9 R3
       53 JUMP                             ; [+2]
       54 GETUPVAL                         R9 1
       55 GETTABLE                         R8 R9 R3
       56 NEWCLOSURE                       R9 P0
       57 CAPTURE                          VAL R7
       58 CAPTURE                          UPVAL U3
       59 GETUPVAL                         R10 4
       60 NEWCLOSURE                       R11 P1
       61 CAPTURE                          VAL R6
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          REF R8
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R7
       66 CAPTURE                          UPVAL U3
       67 CALL                             R10 1 0
       68 GETUPVAL                         R10 6
       69 GETTABLEKS                       R10 R10 K12 ["assign"]
       71 NEWTABLE                         R11 0 0
       73 DUPTABLE                         R12 K17 [{"container", "baseElement", "debug", "unmount", "rerender", "asFragment"}]
       74 SETTABLEKS                       R3 R12 K0 ["container"]
       76 SETTABLEKS                       R4 R12 K1 ["baseElement"]
       78 NEWCLOSURE                       R13 P2
       79 CAPTURE                          REF R4
       80 CAPTURE                          UPVAL U7
       81 CAPTURE                          UPVAL U8
       82 CAPTURE                          UPVAL U9
       83 SETTABLEKS                       R13 R12 K13 ["debug"]
       85 NEWCLOSURE                       R13 P3
       86 CAPTURE                          UPVAL U4
       87 CAPTURE                          REF R8
       88 SETTABLEKS                       R13 R12 K14 ["unmount"]
       90 NEWCLOSURE                       R13 P4
       91 CAPTURE                          UPVAL U10
       92 CAPTURE                          VAL R7
       93 CAPTURE                          UPVAL U3
       94 CAPTURE                          REF R3
       95 CAPTURE                          REF R4
       96 SETTABLEKS                       R13 R12 K15 ["rerender"]
       98 DUPCLOSURE                       R13 K18 [PROTO_13]
       99 SETTABLEKS                       R13 R12 K16 ["asFragment"]
      101 GETUPVAL                         R13 11
      102 MOVE                             R14 R4
      103 MOVE                             R15 R5
      104 CALL                             R13 2 -1
      105 CALL                             R10 -1 -1
      106 CLOSEUPVALS                      R3
      107 RETURN                           R10 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unmount"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 NEWCLOSURE                       R6 P0
        6 CAPTURE                          VAL R4
        7 CALL                             R5 1 0
        8 GETTABLEKS                       R5 R3 K0 ["Parent"]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K1 ["document"]
       13 JUMPIFNOTEQ                      R5 R6 ; [+4]
       15 LOADNIL                          R5
       16 SETTABLEKS                       R5 R3 K0 ["Parent"]
       18 FORGLOOP                         R0 2 ; [-15]
       20 GETIMPORT                        R0 K4 [table.clear]
       22 GETUPVAL                         R1 0
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Error"]
       14 GETTABLEKS                       R3 R1 K7 ["Array"]
       16 GETTABLEKS                       R4 R1 K8 ["Object"]
       18 GETTABLEKS                       R5 R1 K9 ["console"]
       20 GETIMPORT                        R6 K4 [require]
       22 GETTABLEKS                       R7 R0 K10 ["Promise"]
       24 CALL                             R6 1 1
       25 GETIMPORT                        R7 K4 [require]
       27 GETTABLEKS                       R8 R0 K11 ["ReactRoblox"]
       29 CALL                             R7 1 1
       30 NEWTABLE                         R8 4 0
       32 GETIMPORT                        R9 K4 [require]
       34 GETTABLEKS                       R10 R0 K12 ["React"]
       36 CALL                             R9 1 1
       37 GETIMPORT                        R10 K4 [require]
       39 GETTABLEKS                       R11 R0 K13 ["DomTestingLibrary"]
       41 CALL                             R10 1 1
       42 GETTABLEKS                       R11 R10 K14 ["getQueriesForElement"]
       44 GETTABLEKS                       R12 R10 K15 ["prettyDOM"]
       46 GETTABLEKS                       R13 R10 K16 ["configure"]
       48 GETIMPORT                        R14 K4 [require]
       50 GETIMPORT                        R16 K1 [script]
       52 GETTABLEKS                       R16 R16 K2 ["Parent"]
       54 GETTABLEKS                       R15 R16 K17 ["act-compat"]
       56 CALL                             R14 1 1
       57 GETTABLEKS                       R15 R14 K18 ["default"]
       59 GETTABLEKS                       R16 R14 K19 ["asyncAct"]
       61 GETIMPORT                        R17 K4 [require]
       63 GETIMPORT                        R19 K1 [script]
       65 GETTABLEKS                       R19 R19 K2 ["Parent"]
       67 GETTABLEKS                       R18 R19 K20 ["fire-event"]
       69 CALL                             R17 1 1
       70 GETTABLEKS                       R17 R17 K21 ["fireEvent"]
       72 MOVE                             R18 R13
       73 DUPTABLE                         R19 K24 [{"asyncWrapper", "eventWrapper"}]
       74 DUPCLOSURE                       R20 K25 [PROTO_3]
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R16
       77 SETTABLEKS                       R20 R19 K22 ["asyncWrapper"]
       79 DUPCLOSURE                       R20 K26 [PROTO_5]
       80 CAPTURE                          VAL R15
       81 SETTABLEKS                       R20 R19 K23 ["eventWrapper"]
       83 CALL                             R18 1 0
       84 NEWTABLE                         R18 0 0
       86 DUPCLOSURE                       R19 K27 [PROTO_14]
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R18
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R15
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R19
       98 CAPTURE                          VAL R11
       99 DUPCLOSURE                       R20 K28 [PROTO_16]
      100 CAPTURE                          VAL R18
      101 CAPTURE                          VAL R15
      102 CAPTURE                          VAL R10
      103 GETTABLEKS                       R21 R4 K29 ["assign"]
      105 MOVE                             R22 R8
      106 GETIMPORT                        R23 K4 [require]
      108 GETTABLEKS                       R24 R0 K13 ["DomTestingLibrary"]
      110 CALL                             R23 1 -1
      111 CALL                             R21 -1 0
      112 SETTABLEKS                       R19 R8 K30 ["render"]
      114 SETTABLEKS                       R20 R8 K31 ["cleanup"]
      116 SETTABLEKS                       R15 R8 K32 ["act"]
      118 SETTABLEKS                       R17 R8 K21 ["fireEvent"]
      120 RETURN                           R8 1
