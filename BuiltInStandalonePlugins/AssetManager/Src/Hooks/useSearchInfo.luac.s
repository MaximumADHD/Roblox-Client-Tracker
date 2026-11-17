PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnIsSearchInitiatedChanged"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["Connect"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnPendingSearchTermChanged"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["Connect"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnActiveSearchTermChanged"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["Connect"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSearchOptionsChanged"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["Connect"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnIsSearchRequestedChanged"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["Connect"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["OnIsDefaultSearchStateChanged"]
        6 GETUPVAL                         R2 2
        7 NAMECALL                         R0 R0 K1 ["Connect"]
        9 CALL                             R0 2 1
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["IxpVariable"]
        8 GETTABLEKS                       R3 R3 K2 ["Omnisearch"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["IxpValue"]
       14 GETTABLEKS                       R3 R3 K4 ["Experiment"]
       16 JUMPIFEQ                         R2 R3 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 GETUPVAL                         R2 3
       21 NAMECALL                         R3 R0 K5 ["getIsSearchInitiated"]
       23 CALL                             R3 1 -1
       24 CALL                             R2 -1 2
       25 GETUPVAL                         R4 3
       26 NAMECALL                         R5 R0 K6 ["getIsSearchRequested"]
       28 CALL                             R5 1 -1
       29 CALL                             R4 -1 2
       30 GETUPVAL                         R6 3
       31 NAMECALL                         R7 R0 K7 ["getIsDefaultSearchState"]
       33 CALL                             R7 1 -1
       34 CALL                             R6 -1 2
       35 GETUPVAL                         R8 3
       36 NAMECALL                         R9 R0 K8 ["getPendingSearchTerm"]
       38 CALL                             R9 1 -1
       39 CALL                             R8 -1 2
       40 GETUPVAL                         R10 3
       41 NAMECALL                         R11 R0 K9 ["getActiveSearchTerm"]
       43 CALL                             R11 1 -1
       44 CALL                             R10 -1 2
       45 GETUPVAL                         R12 3
       46 NAMECALL                         R13 R0 K10 ["getSearchOptions"]
       48 CALL                             R13 1 -1
       49 CALL                             R12 -1 2
       50 JUMPIFNOT                        R1 ; [+2]
       51 MOVE                             R14 R4
       52 JUMP                             ; [+1]
       53 MOVE                             R14 R2
       54 DUPTABLE                         R15 K17 [{"IsSearchInitiated", "IsSearchRequested", "PendingSearchTerm", "ActiveSearchTerm", "SearchOptions", "IsDefaultSearchState"}]
       55 SETTABLEKS                       R2 R15 K11 ["IsSearchInitiated"]
       57 SETTABLEKS                       R14 R15 K12 ["IsSearchRequested"]
       59 SETTABLEKS                       R8 R15 K13 ["PendingSearchTerm"]
       61 SETTABLEKS                       R10 R15 K14 ["ActiveSearchTerm"]
       63 SETTABLEKS                       R12 R15 K15 ["SearchOptions"]
       65 JUMPIFNOT                        R1 ; [+2]
       66 LOADB                            R16 0
       67 JUMP                             ; [+1]
       68 MOVE                             R16 R6
       69 SETTABLEKS                       R16 R15 K16 ["IsDefaultSearchState"]
       71 GETUPVAL                         R16 4
       72 NEWCLOSURE                       R17 P0
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R3
       75 NEWTABLE                         R18 0 0
       77 CALL                             R16 2 0
       78 GETUPVAL                         R16 4
       79 NEWCLOSURE                       R17 P1
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R9
       82 NEWTABLE                         R18 0 0
       84 CALL                             R16 2 0
       85 GETUPVAL                         R16 4
       86 NEWCLOSURE                       R17 P2
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R11
       89 NEWTABLE                         R18 0 0
       91 CALL                             R16 2 0
       92 GETUPVAL                         R16 4
       93 NEWCLOSURE                       R17 P3
       94 CAPTURE                          VAL R0
       95 CAPTURE                          VAL R13
       96 NEWTABLE                         R18 0 0
       98 CALL                             R16 2 0
       99 GETUPVAL                         R16 4
      100 NEWCLOSURE                       R17 P4
      101 CAPTURE                          VAL R0
      102 CAPTURE                          VAL R5
      103 NEWTABLE                         R18 0 0
      105 CALL                             R16 2 0
      106 GETUPVAL                         R16 4
      107 NEWCLOSURE                       R17 P5
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R0
      110 CAPTURE                          VAL R7
      111 NEWTABLE                         R18 0 1
      113 MOVE                             R19 R1
      114 SETLIST                          R18 R19 1 [1]
      116 CALL                             R16 2 0
      117 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["useState"]
       23 GETTABLEKS                       R4 R2 K11 ["useEffect"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Controllers"]
       31 GETTABLEKS                       R6 R6 K13 ["SearchController"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R7 R7 K14 ["Hooks"]
       40 GETTABLEKS                       R7 R7 K15 ["useIxpValue"]
       42 CALL                             R6 1 1
       43 DUPCLOSURE                       R7 K16 [PROTO_12]
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 RETURN                           R7 1
