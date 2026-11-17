PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openFiltersFn"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 LOADK                            R3 K2 ["Frame"]
        8 NEWTABLE                         R4 1 0
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["Tag"]
       13 GETUPVAL                         R6 2
       14 LOADK                            R7 K4 ["X-Column"]
       15 LOADK                            R8 K5 ["X-Center"]
       16 LOADK                            R9 K6 ["Component-ListEmptyComponent"]
       17 CALL                             R6 3 1
       18 SETTABLE                         R6 R4 R5
       19 DUPTABLE                         R5 K10 [{"NoFilterResultsIcon", "Description", "Edit"}]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K1 ["createElement"]
       23 LOADK                            R7 K11 ["ImageLabel"]
       24 DUPTABLE                         R8 K13 [{"LayoutOrder"}]
       25 GETUPVAL                         R9 3
       26 NAMECALL                         R9 R9 K14 ["getNextOrder"]
       28 CALL                             R9 1 1
       29 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       31 CALL                             R6 2 1
       32 SETTABLEKS                       R6 R5 K7 ["NoFilterResultsIcon"]
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K1 ["createElement"]
       37 LOADK                            R7 K15 ["TextLabel"]
       38 NEWTABLE                         R8 4 0
       40 GETUPVAL                         R9 1
       41 GETTABLEKS                       R9 R9 K3 ["Tag"]
       43 GETUPVAL                         R10 2
       44 LOADK                            R11 K16 ["CX-Invisible"]
       45 LOADK                            R12 K17 ["X-Fit"]
       46 CALL                             R10 2 1
       47 SETTABLE                         R10 R8 R9
       48 GETUPVAL                         R9 3
       49 NAMECALL                         R9 R9 K14 ["getNextOrder"]
       51 CALL                             R9 1 1
       52 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       54 LOADK                            R11 K18 ["EmptyComponent"]
       55 LOADK                            R12 K19 ["NoEventsText"]
       56 NAMECALL                         R9 R1 K20 ["getText"]
       58 CALL                             R9 3 1
       59 SETTABLEKS                       R9 R8 K21 ["Text"]
       61 CALL                             R6 2 1
       62 SETTABLEKS                       R6 R5 K8 ["Description"]
       64 GETUPVAL                         R6 1
       65 GETTABLEKS                       R6 R6 K1 ["createElement"]
       67 LOADK                            R7 K22 ["TextButton"]
       68 NEWTABLE                         R8 4 0
       70 GETUPVAL                         R9 1
       71 GETTABLEKS                       R9 R9 K3 ["Tag"]
       73 GETUPVAL                         R10 2
       74 LOADK                            R11 K17 ["X-Fit"]
       75 CALL                             R10 1 1
       76 SETTABLE                         R10 R8 R9
       77 GETUPVAL                         R9 1
       78 GETTABLEKS                       R9 R9 K23 ["Event"]
       80 GETTABLEKS                       R9 R9 K24 ["Activated"]
       82 NEWCLOSURE                       R10 P0
       83 CAPTURE                          VAL R0
       84 SETTABLE                         R10 R8 R9
       85 LOADK                            R11 K18 ["EmptyComponent"]
       86 LOADK                            R12 K25 ["EditButtonText"]
       87 NAMECALL                         R9 R1 K20 ["getText"]
       89 CALL                             R9 3 1
       90 SETTABLEKS                       R9 R8 K21 ["Text"]
       92 GETUPVAL                         R9 3
       93 NAMECALL                         R9 R9 K14 ["getNextOrder"]
       95 CALL                             R9 1 1
       96 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       98 CALL                             R6 2 1
       99 SETTABLEKS                       R6 R5 K9 ["Edit"]
      101 CALL                             R2 3 -1
      102 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R3 R3 K9 ["Localization"]
       27 GETTABLEKS                       R4 R2 K10 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["LayoutOrderIterator"]
       31 GETTABLEKS                       R5 R4 K12 ["new"]
       33 CALL                             R5 0 1
       34 GETTABLEKS                       R6 R2 K13 ["Styling"]
       36 GETTABLEKS                       R6 R6 K14 ["joinTags"]
       38 DUPCLOSURE                       R7 K15 [PROTO_1]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R5
       43 RETURN                           R7 1
