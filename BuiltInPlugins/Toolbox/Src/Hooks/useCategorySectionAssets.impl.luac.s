PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R5 K0 ["name"]
        8 SETTABLE                         R5 R0 R6
        9 FORGLOOP                         R1 2 ; [-4]
       11 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 0
        5 JUMPIFNOT                        R2 ; [+52]
        6 GETUPVAL                         R2 1
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R9 R6 K0 ["name"]
       13 GETTABLE                         R7 R8 R9
       14 JUMPIFNOT                        R7 ; [+5]
       15 GETUPVAL                         R8 2
       16 MOVE                             R9 R6
       17 MOVE                             R10 R7
       18 CALL                             R8 2 1
       19 JUMPIF                           R8 ; [+7]
       20 FASTCALL2                        TABLE_INSERT R0 R6 ; [+5]
       22 MOVE                             R9 R0
       23 MOVE                             R10 R6
       24 GETIMPORT                        R8 K3 [table.insert]
       26 CALL                             R8 2 0
       27 FORGLOOP                         R2 2 ; [-18]
       29 GETUPVAL                         R2 0
       30 LOADNIL                          R3
       31 LOADNIL                          R4
       32 FORGPREP                         R2
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R9 R6 K0 ["name"]
       36 GETTABLE                         R7 R8 R9
       37 JUMPIFNOT                        R7 ; [+5]
       38 GETUPVAL                         R8 2
       39 MOVE                             R9 R6
       40 MOVE                             R10 R7
       41 CALL                             R8 2 1
       42 JUMPIF                           R8 ; [+7]
       43 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       45 MOVE                             R9 R1
       46 MOVE                             R10 R6
       47 GETIMPORT                        R8 K3 [table.insert]
       49 CALL                             R8 2 0
       50 FORGLOOP                         R2 2 ; [-18]
       52 DUPTABLE                         R2 K6 [{"added", "removed"}]
       53 SETTABLEKS                       R0 R2 K4 ["added"]
       55 SETTABLEKS                       R1 R2 K5 ["removed"]
       57 RETURN                           R2 1
       58 DUPTABLE                         R2 K6 [{"added", "removed"}]
       59 GETUPVAL                         R3 3
       60 SETTABLEKS                       R3 R2 K4 ["added"]
       62 NEWTABLE                         R3 0 0
       64 SETTABLEKS                       R3 R2 K5 ["removed"]
       66 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIFNOT                        R1 ; [+21]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        6 GETTABLEKS                       R1 R1 K1 ["join"]
        8 MOVE                             R2 R0
        9 NEWTABLE                         R3 1 0
       11 GETUPVAL                         R4 0
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       15 GETTABLEKS                       R5 R5 K1 ["join"]
       17 GETUPVAL                         R7 0
       18 GETTABLE                         R6 R0 R7
       19 DUPTABLE                         R7 K4 [{["loading"] = True}]
       20 CALL                             R5 2 1
       21 SETTABLE                         R5 R3 R4
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
       27 GETTABLEKS                       R1 R1 K1 ["join"]
       29 MOVE                             R2 R0
       30 NEWTABLE                         R3 1 0
       32 GETUPVAL                         R4 0
       33 DUPTABLE                         R5 K8 [{["loading"] = True, ["assets"], ["assetMap"], ["assetIds"]}]
       34 NEWTABLE                         R6 0 0
       36 SETTABLEKS                       R6 R5 K5 ["assets"]
       38 NEWTABLE                         R6 0 0
       40 SETTABLEKS                       R6 R5 K6 ["assetMap"]
       42 NEWTABLE                         R6 0 0
       44 SETTABLEKS                       R6 R5 K7 ["assetIds"]
       46 SETTABLE                         R5 R3 R4
       47 CALL                             R1 2 -1
       48 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Dictionary"]
        3 GETTABLEKS                       R0 R0 K1 ["join"]
        5 GETUPVAL                         R1 1
        6 JUMPIF                           R1 ; [+2]
        7 NEWTABLE                         R1 0 0
        9 DUPTABLE                         R2 K3 [{"nextPageCursor"}]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["nextPageCursor"]
       13 SETTABLEKS                       R3 R2 K2 ["nextPageCursor"]
       15 CALL                             R0 2 1
       16 GETUPVAL                         R1 3
       17 GETUPVAL                         R2 4
       18 MOVE                             R3 R0
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R3 R1 K0 ["assets"]
        5 JUMPIFNOT                        R3 ; [+4]
        6 GETTABLEKS                       R3 R1 K0 ["assets"]
        8 LENGTH                           R2 R3
        9 JUMP                             ; [+1]
       10 LOADN                            R2 0
       11 NEWTABLE                         R3 0 0
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K1 ["assetIds"]
       16 LOADNIL                          R5
       17 LOADNIL                          R6
       18 FORGPREP                         R4
       19 GETUPVAL                         R10 1
       20 GETTABLEKS                       R10 R10 K2 ["assetMap"]
       22 GETTABLE                         R9 R10 R8
       23 JUMPIFNOT                        R9 ; [+27]
       24 ADD                              R10 R2 R7
       25 GETUPVAL                         R14 2
       26 GETTABLEKS                       R14 R14 K4 ["current"]
       28 DIV                              R13 R2 R14
       29 FASTCALL1                        MATH_ROUND R13 ; [+2]
       30 GETIMPORT                        R12 K7 [math.round]
       32 CALL                             R12 1 1
       33 ADDK                             R11 R12 K3 [1]
       34 DUPTABLE                         R12 K11 [{"page", "pagePosition", "position"}]
       35 SETTABLEKS                       R11 R12 K8 ["page"]
       37 SETTABLEKS                       R7 R12 K9 ["pagePosition"]
       39 SETTABLEKS                       R10 R12 K10 ["position"]
       41 SETTABLEKS                       R12 R9 K12 ["Context"]
       43 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       45 MOVE                             R13 R3
       46 MOVE                             R14 R9
       47 GETIMPORT                        R12 K15 [table.insert]
       49 CALL                             R12 2 0
       50 JUMP                             ; [+14]
       51 GETUPVAL                         R10 3
       52 GETTABLEKS                       R10 R10 K16 ["shouldDebugWarnings"]
       54 CALL                             R10 0 1
       55 JUMPIFNOT                        R10 ; [+9]
       56 GETIMPORT                        R10 K18 [warn]
       58 LOADK                            R12 K19 ["asset with ID %* not found in asset map"]
       59 MOVE                             R14 R8
       60 NAMECALL                         R12 R12 K20 ["format"]
       62 CALL                             R12 2 1
       63 MOVE                             R11 R12
       64 CALL                             R10 1 0
       65 FORGLOOP                         R4 2 ; [-47]
       67 GETUPVAL                         R4 4
       68 GETTABLEKS                       R4 R4 K21 ["Dictionary"]
       70 GETTABLEKS                       R4 R4 K22 ["join"]
       72 MOVE                             R5 R0
       73 NEWTABLE                         R6 1 0
       75 GETUPVAL                         R7 0
       76 GETUPVAL                         R8 4
       77 GETTABLEKS                       R8 R8 K21 ["Dictionary"]
       79 GETTABLEKS                       R8 R8 K22 ["join"]
       81 MOVE                             R9 R1
       82 DUPTABLE                         R10 K26 [{["loading"] = False, [2], ["assetMap"], ["assetIds"], ["fetchNextPage"]}]
       83 GETUPVAL                         R11 4
       84 GETTABLEKS                       R11 R11 K27 ["List"]
       86 GETTABLEKS                       R11 R11 K22 ["join"]
       88 GETTABLEKS                       R12 R1 K0 ["assets"]
       90 MOVE                             R13 R3
       91 CALL                             R11 2 1
       92 SETTABLEKS                       R11 R10 K0 ["assets"]
       94 NEWTABLE                         R11 0 0
       96 SETTABLEKS                       R11 R10 K2 ["assetMap"]
       98 NEWTABLE                         R11 0 0
      100 SETTABLEKS                       R11 R10 K1 ["assetIds"]
      102 NEWCLOSURE                       R11 P0
      103 CAPTURE                          UPVAL U4
      104 CAPTURE                          UPVAL U5
      105 CAPTURE                          UPVAL U1
      106 CAPTURE                          UPVAL U6
      107 CAPTURE                          UPVAL U0
      108 SETTABLEKS                       R11 R10 K25 ["fetchNextPage"]
      110 CALL                             R8 2 1
      111 SETTABLE                         R8 R6 R7
      112 CALL                             R4 2 -1
      113 RETURN                           R4 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R2 R1 K0 ["current"]
       10 ADDK                             R2 R2 K1 [1]
       11 SETTABLEKS                       R2 R1 K0 ["current"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["current"]
       16 GETUPVAL                         R2 1
       17 LOADNIL                          R3
       18 SETTABLE                         R3 R1 R2
       19 GETUPVAL                         R1 3
       20 GETTABLEKS                       R1 R1 K0 ["current"]
       22 GETUPVAL                         R2 1
       23 LOADB                            R3 1
       24 SETTABLE                         R3 R1 R2
       25 GETUPVAL                         R1 4
       26 NEWCLOSURE                       R2 P0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          UPVAL U7
       33 CAPTURE                          UPVAL U8
       34 CALL                             R1 1 0
       35 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 MOVE                             R2 R0
        6 NEWTABLE                         R3 1 0
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       12 GETTABLEKS                       R5 R5 K1 ["join"]
       14 GETUPVAL                         R7 1
       15 GETTABLE                         R6 R0 R7
       16 DUPTABLE                         R7 K4 [{["loading"] = False}]
       17 CALL                             R5 2 1
       18 SETTABLE                         R5 R3 R4
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+11]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R3 K3 ["failed to fetch assets for category \"%*\" and section \"%*\":"]
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 NAMECALL                         R3 R3 K4 ["format"]
       12 CALL                             R3 3 1
       13 MOVE                             R2 R3
       14 MOVE                             R3 R0
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K5 ["current"]
       19 GETUPVAL                         R2 2
       20 LOADNIL                          R3
       21 SETTABLE                         R3 R1 R2
       22 GETUPVAL                         R1 4
       23 NEWCLOSURE                       R2 P0
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          UPVAL U2
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["current"]
        9 LOADB                            R3 1
       10 SETTABLE                         R3 R2 R0
       11 GETUPVAL                         R2 1
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U2
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K1 ["fetchCategoryAssets"]
       19 GETUPVAL                         R3 4
       20 GETUPVAL                         R4 5
       21 MOVE                             R5 R0
       22 MOVE                             R6 R1
       23 CALL                             R2 4 1
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U8
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U9
       34 NAMECALL                         R2 R2 K2 ["andThen"]
       36 CALL                             R2 2 1
       37 NEWCLOSURE                       R4 P2
       38 CAPTURE                          UPVAL U8
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U2
       44 NAMECALL                         R2 R2 K3 ["catch"]
       46 CALL                             R2 2 0
       47 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 MOVE                             R2 R0
        6 NEWTABLE                         R3 1 0
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K2 ["None"]
       12 SETTABLE                         R5 R3 R4
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 LOADNIL                          R2
        4 SETTABLE                         R2 R1 R0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["current"]
        8 LOADNIL                          R2
        9 SETTABLE                         R2 R1 R0
       10 GETUPVAL                         R1 2
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removed"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R6 R4 K1 ["name"]
        9 CALL                             R5 1 0
       10 FORGLOOP                         R0 2 ; [-5]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K2 ["added"]
       15 LOADNIL                          R1
       16 LOADNIL                          R2
       17 FORGPREP                         R0
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R6 R4 K1 ["name"]
       21 GETTABLEKS                       R7 R4 K3 ["fetchArgs"]
       23 CALL                             R5 2 0
       24 FORGLOOP                         R0 2 ; [-7]
       26 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["use"]
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R2 R2 K1 ["networkInterface"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["useState"]
        9 NEWTABLE                         R4 0 0
       11 CALL                             R3 1 2
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K3 ["useRef"]
       15 NEWTABLE                         R6 0 0
       17 CALL                             R5 1 1
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K3 ["useRef"]
       21 NEWTABLE                         R7 0 0
       23 CALL                             R6 1 1
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K3 ["useRef"]
       27 LOADN                            R8 0
       28 CALL                             R7 1 1
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R8 R8 K4 ["useMemo"]
       32 NEWCLOSURE                       R9 P0
       33 CAPTURE                          VAL R1
       34 NEWTABLE                         R10 0 1
       36 MOVE                             R11 R1
       37 SETLIST                          R10 R11 1 [1]
       39 CALL                             R8 2 1
       40 GETUPVAL                         R9 2
       41 MOVE                             R10 R8
       42 CALL                             R9 1 1
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R10 R10 K4 ["useMemo"]
       46 NEWCLOSURE                       R11 P1
       47 CAPTURE                          VAL R9
       48 CAPTURE                          VAL R8
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          VAL R1
       51 NEWTABLE                         R12 0 3
       53 MOVE                             R13 R8
       54 MOVE                             R14 R9
       55 MOVE                             R15 R1
       56 SETLIST                          R12 R13 3 [1]
       58 CALL                             R10 2 1
       59 LOADNIL                          R11
       60 GETUPVAL                         R12 1
       61 GETTABLEKS                       R12 R12 K5 ["useCallback"]
       63 NEWCLOSURE                       R13 P2
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R4
       66 CAPTURE                          UPVAL U4
       67 CAPTURE                          UPVAL U5
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R5
       72 CAPTURE                          UPVAL U6
       73 CAPTURE                          REF R11
       74 NEWTABLE                         R14 0 2
       76 MOVE                             R15 R0
       77 MOVE                             R16 R2
       78 SETLIST                          R14 R15 2 [1]
       80 CALL                             R12 2 1
       81 MOVE                             R11 R12
       82 GETUPVAL                         R12 1
       83 GETTABLEKS                       R12 R12 K5 ["useCallback"]
       85 NEWCLOSURE                       R13 P3
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R4
       89 CAPTURE                          UPVAL U4
       90 NEWTABLE                         R14 0 0
       92 CALL                             R12 2 1
       93 GETUPVAL                         R13 1
       94 GETTABLEKS                       R13 R13 K6 ["useEffect"]
       96 NEWCLOSURE                       R14 P4
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R12
       99 CAPTURE                          REF R11
      100 NEWTABLE                         R15 0 3
      102 MOVE                             R16 R10
      103 MOVE                             R17 R11
      104 MOVE                             R18 R12
      105 SETLIST                          R15 R16 3 [1]
      107 CALL                             R13 2 0
      108 CLOSEUPVALS                      R11
      109 RETURN                           R3 1

PROTO_13:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U5
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["ContextServices"]
       34 GETTABLEKS                       R5 R5 K12 ["NetworkContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Requests"]
       43 GETTABLEKS                       R6 R6 K14 ["fetchCategoryAssets"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Components"]
       52 GETTABLEKS                       R7 R7 K16 ["ResultsFetcher"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K10 ["Src"]
       59 GETTABLEKS                       R8 R8 K17 ["Util"]
       61 GETTABLEKS                       R8 R8 K18 ["DebugFlags"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K10 ["Src"]
       68 GETTABLEKS                       R9 R9 K19 ["Hooks"]
       70 GETTABLEKS                       R9 R9 K20 ["usePrevious"]
       72 CALL                             R8 1 1
       73 GETTABLEKS                       R9 R2 K17 ["Util"]
       75 GETTABLEKS                       R9 R9 K21 ["deepEqual"]
       77 DUPCLOSURE                       R10 K22 [PROTO_13]
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R7
       84 RETURN                           R10 1
