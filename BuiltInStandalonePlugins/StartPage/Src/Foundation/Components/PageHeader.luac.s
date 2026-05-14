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
        4 DUPTABLE                         R3 K3 [{"tag", "LayoutOrder"}]
        5 LOADK                            R4 K4 ["row size-full-0 auto-y padding-y-medium align-y-center flex-x-fill"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
       10 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       12 DUPTABLE                         R4 K8 [{"Title", "SearchBar", "TrailingGroupStub"}]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K0 ["createElement"]
       16 GETUPVAL                         R6 2
       17 DUPTABLE                         R7 K10 [{"LayoutOrder", "Text", "tag"}]
       18 LOADN                            R8 1
       19 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       21 GETTABLEKS                       R8 R0 K11 ["title"]
       23 SETTABLEKS                       R8 R7 K9 ["Text"]
       25 LOADK                            R8 K12 ["size-full-0 auto-y text-align-x-left text-align-y-center text-heading-large content-emphasis"]
       26 SETTABLEKS                       R8 R7 K1 ["tag"]
       28 CALL                             R5 2 1
       29 SETTABLEKS                       R5 R4 K5 ["Title"]
       31 GETTABLEKS                       R6 R0 K13 ["searchBar"]
       33 JUMPIFNOT                        R6 ; [+38]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K0 ["createElement"]
       37 GETUPVAL                         R6 3
       38 DUPTABLE                         R7 K14 [{"LayoutOrder", "tag"}]
       39 LOADN                            R8 2
       40 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       42 LOADK                            R8 K15 ["size-full-0 auto-y align-x-center"]
       43 SETTABLEKS                       R8 R7 K1 ["tag"]
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R8 R8 K0 ["createElement"]
       48 GETUPVAL                         R9 4
       49 DUPTABLE                         R10 K20 [{"OnSearchRequested", "ShowSearchIcon", "ResultComponent", "BaseQuery"}]
       50 NEWCLOSURE                       R11 P0
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R11 R10 K16 ["OnSearchRequested"]
       54 LOADB                            R11 1
       55 SETTABLEKS                       R11 R10 K17 ["ShowSearchIcon"]
       57 GETTABLEKS                       R11 R0 K13 ["searchBar"]
       59 GETTABLEKS                       R11 R11 K21 ["resultComponent"]
       61 SETTABLEKS                       R11 R10 K18 ["ResultComponent"]
       63 GETTABLEKS                       R11 R0 K13 ["searchBar"]
       65 GETTABLEKS                       R11 R11 K22 ["calculatedQuery"]
       67 SETTABLEKS                       R11 R10 K19 ["BaseQuery"]
       69 CALL                             R8 2 -1
       70 CALL                             R5 -1 1
       71 JUMP                             ; [+1]
       72 LOADNIL                          R5
       73 SETTABLEKS                       R5 R4 K6 ["SearchBar"]
       75 GETUPVAL                         R5 0
       76 GETTABLEKS                       R5 R5 K0 ["createElement"]
       78 GETUPVAL                         R6 1
       79 DUPTABLE                         R7 K14 [{"LayoutOrder", "tag"}]
       80 LOADN                            R8 3
       81 SETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       83 LOADK                            R8 K23 ["size-full-0"]
       84 SETTABLEKS                       R8 R7 K1 ["tag"]
       86 CALL                             R5 2 1
       87 SETTABLEKS                       R5 R4 K7 ["TrailingGroupStub"]
       89 CALL                             R1 3 -1
       90 RETURN                           R1 -1

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
