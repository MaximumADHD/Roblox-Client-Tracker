PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        4 JUMPIFNOT                        R2 ; [+49]
        5 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        7 GETTABLEKS                       R2 R3 K1 ["data"]
        9 JUMPIFNOT                        R2 ; [+44]
       10 LOADN                            R4 1
       11 GETTABLEKS                       R6 R0 K0 ["responseBody"]
       13 GETTABLEKS                       R5 R6 K1 ["data"]
       15 LENGTH                           R2 R5
       16 LOADN                            R3 1
       17 FORNPREP                         R2
       18 GETTABLEKS                       R7 R0 K0 ["responseBody"]
       20 GETTABLEKS                       R6 R7 K1 ["data"]
       22 GETTABLE                         R5 R6 R4
       23 GETTABLEKS                       R6 R5 K2 ["tagId"]
       25 JUMPIFNOT                        R6 ; [+21]
       26 GETTABLEKS                       R7 R5 K3 ["status"]
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R8 R9 K4 ["TAGS_SUGGESTION_SUCCESS"]
       31 JUMPIFNOTEQ                      R7 R8 ; [+15]
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R7 R8 K5 ["hasTag"]
       36 GETUPVAL                         R8 2
       37 MOVE                             R9 R6
       38 CALL                             R7 2 1
       39 JUMPIF                           R7 ; [+7]
       40 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       42 MOVE                             R8 R1
       43 MOVE                             R9 R5
       44 GETIMPORT                        R7 K8 [table.insert]
       46 CALL                             R7 2 0
       47 LENGTH                           R7 R1
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R8 R9 K9 ["MAX_DISPLAY_SUGGESTIONS"]
       51 JUMPIFLT                         R8 R7 ; [+2]
       53 FORNLOOP                         R2
       54 GETUPVAL                         R2 3
       55 GETUPVAL                         R4 4
       56 MOVE                             R5 R1
       57 GETUPVAL                         R6 5
       58 GETUPVAL                         R7 6
       59 CALL                             R4 3 -1
       60 NAMECALL                         R2 R2 K10 ["dispatch"]
       62 CALL                             R2 -1 0
       63 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Failed to fetch tag suggestions!"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [tick]
        2 CALL                             R1 0 1
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U4
       11 DUPCLOSURE                       R3 K2 [PROTO_1]
       12 CAPTURE                          UPVAL U5
       13 GETUPVAL                         R4 6
       14 GETUPVAL                         R6 4
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R7 R8 K3 ["MAX_FETCH_SUGGESTIONS"]
       18 NAMECALL                         R4 R4 K4 ["tagsPrefixSearch"]
       20 CALL                             R4 3 1
       21 MOVE                             R6 R2
       22 MOVE                             R7 R3
       23 NAMECALL                         R4 R4 K5 ["andThen"]
       25 CALL                             R4 3 -1
       26 RETURN                           R4 -1

PROTO_3:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Flags"]
       17 GETTABLEKS                       R2 R3 K7 ["getFFlagRemoveItemTags"]
       19 CALL                             R1 1 1
       20 MOVE                             R2 R1
       21 CALL                             R2 0 1
       22 JUMPIF                           R2 ; [+34]
       23 GETTABLEKS                       R3 R0 K5 ["Src"]
       25 GETTABLEKS                       R2 R3 K8 ["Util"]
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R2 K9 ["AssetConfigConstants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R2 K10 ["TagsUtil"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R2 K11 ["DebugFlags"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R9 R0 K5 ["Src"]
       46 GETTABLEKS                       R8 R9 K12 ["Actions"]
       48 GETTABLEKS                       R7 R8 K13 ["SetTagSuggestions"]
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K14 [PROTO_3]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R5
       56 RETURN                           R7 1
       57 RETURN                           R0 0
