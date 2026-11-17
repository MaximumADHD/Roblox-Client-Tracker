PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETTABLEKS                       R3 R0 K2 ["Fragments"]
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R7 R7 K3 ["createElement"]
       11 LOADK                            R8 K4 ["TextLabel"]
       12 NEWTABLE                         R9 4 0
       14 GETUPVAL                         R10 0
       15 GETTABLEKS                       R10 R10 K5 ["Tag"]
       17 GETUPVAL                         R11 1
       18 LOADK                            R12 K6 ["CX-Invisible"]
       19 LOADK                            R13 K7 ["X-Fit"]
       20 LOADK                            R14 K8 ["X-Column"]
       21 CALL                             R11 3 1
       22 SETTABLE                         R11 R9 R10
       23 SETTABLEKS                       R6 R9 K9 ["Text"]
       25 LOADB                            R10 1
       26 SETTABLEKS                       R10 R9 K10 ["RichText"]
       28 GETUPVAL                         R10 2
       29 NAMECALL                         R10 R10 K11 ["getNextOrder"]
       31 CALL                             R10 1 1
       32 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       34 CALL                             R7 2 1
       35 SETTABLE                         R7 R1 R5
       36 FORGLOOP                         R2 2 ; [-29]
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R2 R2 K3 ["createElement"]
       41 LOADK                            R3 K13 ["Frame"]
       42 NEWTABLE                         R4 2 0
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K5 ["Tag"]
       47 GETUPVAL                         R6 1
       48 LOADK                            R7 K14 ["Component-Tooltip"]
       49 CALL                             R6 1 1
       50 SETTABLE                         R6 R4 R5
       51 GETUPVAL                         R5 2
       52 NAMECALL                         R5 R5 K11 ["getNextOrder"]
       54 CALL                             R5 1 1
       55 SETTABLEKS                       R5 R4 K12 ["LayoutOrder"]
       57 MOVE                             R5 R1
       58 CALL                             R2 3 -1
       59 RETURN                           R2 -1

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
       23 GETTABLEKS                       R3 R2 K8 ["Util"]
       25 GETTABLEKS                       R3 R3 K9 ["LayoutOrderIterator"]
       27 GETTABLEKS                       R4 R3 K10 ["new"]
       29 CALL                             R4 0 1
       30 GETTABLEKS                       R5 R2 K11 ["Styling"]
       32 GETTABLEKS                       R5 R5 K12 ["joinTags"]
       34 DUPCLOSURE                       R6 K13 [PROTO_0]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R4
       38 RETURN                           R6 1
