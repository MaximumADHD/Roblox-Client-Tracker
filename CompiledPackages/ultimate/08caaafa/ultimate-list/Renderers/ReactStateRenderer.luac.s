PROTO_0:
        0 FASTCALL1                        TOSTRING R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [tostring]
        4 CALL                             R2 1 1
        5 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"lockedTo", "scrollAxis"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["lockedTo"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K3 ["scrollAxisBinding"]
        8 NAMECALL                         R2 R2 K4 ["getValue"]
       10 CALL                             R2 1 1
       11 SETTABLEKS                       R2 R1 K1 ["scrollAxis"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K5 ["virtualizedListController"]
       17 GETTABLEKS                       R0 R0 K6 ["get"]
       19 CALL                             R0 0 1
       20 SETUPVAL                         R0 1
       21 GETUPVAL                         R0 3
       22 GETUPVAL                         R1 1
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["virtualizedListController"]
        4 GETTABLEKS                       R1 R1 K1 ["bindToUpdate"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          REF R0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U3
       11 CALL                             R1 1 -1
       12 CLOSEUPVALS                      R0
       13 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["config"]
        3 GETTABLEKS                       R2 R2 K1 ["freezeViewWhileScrolling"]
        5 JUMPIFEQKB                       R2 FALSE ; [+19]
        7 JUMPIFEQKNIL                     R1 ; [+17]
        9 GETTABLEKS                       R2 R1 K2 ["lockedTo"]
       11 GETUPVAL                         R3 1
       12 JUMPIFNOTEQ                      R2 R3 ; [+12]
       14 GETUPVAL                         R2 2
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K3 ["position"]
       18 GETTABLEKS                       R4 R1 K4 ["scrollAxis"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K5 ["direction"]
       23 CALL                             R2 3 -1
       24 RETURN                           R2 -1
       25 GETUPVAL                         R2 2
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K3 ["position"]
       29 MOVE                             R4 R0
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K5 ["direction"]
       33 CALL                             R2 3 -1
       34 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["virtualizedListController"]
        5 GETTABLEKS                       R2 R2 K2 ["get"]
        7 CALL                             R1 1 2
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["useBinding"]
       11 LOADNIL                          R4
       12 CALL                             R3 1 2
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R2
       21 NEWTABLE                         R7 0 2
       23 GETTABLEKS                       R8 R0 K1 ["virtualizedListController"]
       25 GETTABLEKS                       R9 R0 K5 ["scrollAxisBinding"]
       27 SETLIST                          R7 R8 2 [1]
       29 CALL                             R5 2 0
       30 NEWTABLE                         R5 0 0
       32 GETTABLEKS                       R6 R0 K6 ["getKey"]
       34 JUMPIF                           R6 ; [+1]
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R7 R0 K1 ["virtualizedListController"]
       38 GETTABLEKS                       R7 R7 K7 ["getRange"]
       40 CALL                             R7 0 1
       41 MOVE                             R8 R1
       42 LOADNIL                          R9
       43 LOADNIL                          R10
       44 FORGPREP                         R8
       45 GETTABLEKS                       R14 R7 K8 ["X"]
       47 SUBK                             R15 R11 K9 [1]
       48 ADD                              R13 R14 R15
       49 GETUPVAL                         R14 2
       50 GETTABLEKS                       R14 R14 K10 ["getUDimRect"]
       52 GETTABLEKS                       R15 R0 K11 ["dimensions"]
       54 MOVE                             R16 R12
       55 MOVE                             R17 R13
       56 GETTABLEKS                       R18 R0 K1 ["virtualizedListController"]
       58 GETTABLEKS                       R18 R18 K12 ["getWindowSize"]
       60 CALL                             R18 0 1
       61 GETTABLEKS                       R19 R0 K13 ["direction"]
       63 CALL                             R14 5 1
       64 MOVE                             R15 R6
       65 MOVE                             R16 R12
       66 MOVE                             R17 R13
       67 CALL                             R15 2 1
       68 GETUPVAL                         R16 3
       69 LOADK                            R17 K14 ["Frame"]
       70 DUPTABLE                         R18 K18 [{"BackgroundTransparency", "Position", "Size"}]
       71 LOADN                            R19 1
       72 SETTABLEKS                       R19 R18 K15 ["BackgroundTransparency"]
       74 GETUPVAL                         R19 4
       75 NEWCLOSURE                       R20 P1
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R1
       78 CAPTURE                          UPVAL U5
       79 CAPTURE                          VAL R14
       80 GETTABLEKS                       R21 R0 K5 ["scrollAxisBinding"]
       82 MOVE                             R22 R3
       83 CALL                             R19 3 1
       84 SETTABLEKS                       R19 R18 K16 ["Position"]
       86 GETTABLEKS                       R19 R14 K19 ["size"]
       88 SETTABLEKS                       R19 R18 K17 ["Size"]
       90 GETTABLEKS                       R19 R0 K20 ["callback"]
       92 MOVE                             R20 R12
       93 CALL                             R19 1 -1
       94 CALL                             R16 -1 1
       95 SETTABLE                         R16 R5 R15
       96 FORGLOOP                         R8 2 ; [-52]
       98 GETUPVAL                         R8 3
       99 GETUPVAL                         R9 0
      100 GETTABLEKS                       R9 R9 K21 ["Fragment"]
      102 LOADNIL                          R10
      103 MOVE                             R11 R5
      104 CALL                             R8 3 -1
      105 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ultimate-list"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Dimensions"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Dimensions"]
       16 GETTABLEKS                       R3 R3 K7 ["DimensionsMethods"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K8 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Renderers"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K6 ["Dimensions"]
       35 GETTABLEKS                       R6 R6 K11 ["adjustPositionToScrollAxis"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K12 ["createVirtualizedListController"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K13 ["Util"]
       47 GETTABLEKS                       R8 R8 K14 ["joinAndMapBindings"]
       49 CALL                             R7 1 1
       50 GETTABLEKS                       R8 R3 K15 ["createElement"]
       52 DUPCLOSURE                       R9 K16 [PROTO_0]
       53 DUPCLOSURE                       R10 K17 [PROTO_4]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R5
       60 RETURN                           R10 1
