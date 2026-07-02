PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["searchBar"]
        3 GETTABLEKS                       R1 R1 K1 ["calculatedQuery"]
        5 GETTABLEKS                       R1 R1 K2 ["search"]
        7 JUMPIFEQ                         R0 R1 ; [+8]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["searchBar"]
       12 GETTABLEKS                       R1 R1 K3 ["setSearchQuery"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["tag"] = "row flex-x-fill align-y-center size-full-0 auto-y padding-y-medium", ["LayoutOrder"]}]
        5 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
        7 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
        9 DUPTABLE                         R4 K8 [{"Title", "SearchBar", "TrailingGroupStub"}]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["createElement"]
       13 GETUPVAL                         R6 2
       14 DUPTABLE                         R7 K12 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-0 auto-y text-heading-large text-align-x-left text-align-y-center content-emphasis"}]
       15 GETTABLEKS                       R8 R0 K13 ["title"]
       17 SETTABLEKS                       R8 R7 K10 ["Text"]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K5 ["Title"]
       22 GETTABLEKS                       R6 R0 K14 ["searchBar"]
       24 JUMPIFNOT                        R6 ; [+29]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K0 ["createElement"]
       28 GETUPVAL                         R6 3
       29 DUPTABLE                         R7 K17 [{["LayoutOrder"] = 2, ["tag"] = "align-x-center size-full-0 auto-y"}]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K0 ["createElement"]
       33 GETUPVAL                         R9 4
       34 DUPTABLE                         R10 K23 [{["OnSearchRequested"], ["ShowSearchIcon"] = True, ["ResultComponent"], ["BaseQuery"]}]
       35 NEWCLOSURE                       R11 P0
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R11 R10 K18 ["OnSearchRequested"]
       39 GETTABLEKS                       R11 R0 K14 ["searchBar"]
       41 GETTABLEKS                       R11 R11 K24 ["resultComponent"]
       43 SETTABLEKS                       R11 R10 K21 ["ResultComponent"]
       45 GETTABLEKS                       R11 R0 K14 ["searchBar"]
       47 GETTABLEKS                       R11 R11 K25 ["calculatedQuery"]
       49 SETTABLEKS                       R11 R10 K22 ["BaseQuery"]
       51 CALL                             R8 2 -1
       52 CALL                             R5 -1 1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R5
       55 SETTABLEKS                       R5 R4 K6 ["SearchBar"]
       57 GETUPVAL                         R5 0
       58 GETTABLEKS                       R5 R5 K0 ["createElement"]
       60 GETUPVAL                         R6 1
       61 DUPTABLE                         R7 K28 [{["LayoutOrder"] = 3, ["tag"] = "size-full-0"}]
       62 CALL                             R5 2 1
       63 SETTABLEKS                       R5 R4 K7 ["TrailingGroupStub"]
       65 CALL                             R1 3 -1
       66 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["View"]
       25 GETTABLEKS                       R4 R2 K12 ["Text"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K8 ["Src"]
       31 GETTABLEKS                       R6 R6 K10 ["Foundation"]
       33 GETTABLEKS                       R6 R6 K13 ["Components"]
       35 GETTABLEKS                       R6 R6 K14 ["SearchBar"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K8 ["Src"]
       42 GETTABLEKS                       R7 R7 K10 ["Foundation"]
       44 GETTABLEKS                       R7 R7 K13 ["Components"]
       46 GETTABLEKS                       R7 R7 K15 ["Frame"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K8 ["Src"]
       53 GETTABLEKS                       R8 R8 K16 ["Types"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K17 [PROTO_1]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R5
       62 RETURN                           R8 1
