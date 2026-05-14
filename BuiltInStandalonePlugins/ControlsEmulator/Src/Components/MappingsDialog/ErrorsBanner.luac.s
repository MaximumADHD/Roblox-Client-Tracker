PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+32]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+29]
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K0 ["current"]
       12 JUMPIFEQKNIL                     R0 ; [+11]
       14 GETIMPORT                        R0 K3 [task.cancel]
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K0 ["current"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 3
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K0 ["current"]
       24 GETUPVAL                         R0 3
       25 GETIMPORT                        R1 K5 [task.delay]
       27 LOADN                            R2 4
       28 NEWCLOSURE                       R3 P0
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U3
       31 CALL                             R1 2 1
       32 SETTABLEKS                       R1 R0 K0 ["current"]
       34 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K1 ["latestErrorMessage"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 LOADB                            R3 0
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["useRef"]
       15 LOADNIL                          R5
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R3
       22 NEWTABLE                         R7 0 1
       24 MOVE                             R8 R3
       25 SETLIST                          R7 R8 1 [1]
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R1
       33 NEWTABLE                         R8 0 0
       35 CALL                             R6 2 1
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K6 ["useEffect"]
       39 NEWCLOSURE                       R8 P2
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 NEWTABLE                         R9 0 4
       47 MOVE                             R10 R1
       48 MOVE                             R11 R5
       49 MOVE                             R12 R3
       50 MOVE                             R13 R4
       51 SETLIST                          R9 R10 4 [1]
       53 CALL                             R7 2 0
       54 JUMPIFNOT                        R2 ; [+64]
       55 GETUPVAL                         R7 0
       56 GETTABLEKS                       R7 R7 K7 ["createElement"]
       58 LOADK                            R8 K8 ["Frame"]
       59 NEWTABLE                         R9 4 0
       61 LOADK                            R10 K9 ["MappingsCollisionsBanner"]
       62 SETTABLEKS                       R10 R9 K10 ["Name"]
       64 GETUPVAL                         R10 0
       65 GETTABLEKS                       R10 R10 K11 ["Tag"]
       67 GETUPVAL                         R11 2
       68 LOADK                            R12 K12 ["Component-MappingsCollisionsBanner"]
       69 LOADK                            R13 K13 ["data-testid=Component-MappingsCollisionsBanner"]
       70 LOADK                            R14 K14 ["CX-Invisible"]
       71 LOADK                            R15 K15 ["X-Fill"]
       72 CALL                             R11 4 1
       73 SETTABLE                         R11 R9 R10
       74 GETUPVAL                         R10 3
       75 NAMECALL                         R10 R10 K16 ["getNextOrder"]
       77 CALL                             R10 1 1
       78 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
       80 DUPTABLE                         R10 K19 [{"BannerContents"}]
       81 GETUPVAL                         R11 0
       82 GETTABLEKS                       R11 R11 K7 ["createElement"]
       84 LOADK                            R12 K8 ["Frame"]
       85 DUPTABLE                         R13 K20 [{"LayoutOrder"}]
       86 GETUPVAL                         R14 3
       87 NAMECALL                         R14 R14 K16 ["getNextOrder"]
       89 CALL                             R14 1 1
       90 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
       92 DUPTABLE                         R14 K22 [{"WarningText"}]
       93 GETUPVAL                         R15 0
       94 GETTABLEKS                       R15 R15 K7 ["createElement"]
       96 LOADK                            R16 K23 ["TextLabel"]
       97 DUPTABLE                         R17 K25 [{"Text", "LayoutOrder"}]
       98 FASTCALL1                        TOSTRING R1 ; [+3]
       99 MOVE                             R19 R1
      100 GETIMPORT                        R18 K27 [tostring]
      102 CALL                             R18 1 1
      103 SETTABLEKS                       R18 R17 K24 ["Text"]
      105 GETUPVAL                         R18 3
      106 NAMECALL                         R18 R18 K16 ["getNextOrder"]
      108 CALL                             R18 1 1
      109 SETTABLEKS                       R18 R17 K17 ["LayoutOrder"]
      111 CALL                             R15 2 1
      112 SETTABLEKS                       R15 R14 K21 ["WarningText"]
      114 CALL                             R11 3 1
      115 SETTABLEKS                       R11 R10 K18 ["BannerContents"]
      117 CALL                             R7 3 1
      118 RETURN                           R7 1
      119 LOADNIL                          R7
      120 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
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
       21 GETTABLEKS                       R3 R2 K9 ["Util"]
       23 GETTABLEKS                       R3 R3 K10 ["LayoutOrderIterator"]
       25 GETTABLEKS                       R4 R3 K11 ["new"]
       27 CALL                             R4 0 1
       28 GETTABLEKS                       R5 R2 K12 ["Styling"]
       30 GETTABLEKS                       R5 R5 K13 ["joinTags"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K14 ["Src"]
       36 GETTABLEKS                       R7 R7 K9 ["Util"]
       38 GETTABLEKS                       R7 R7 K15 ["MappingsContext"]
       40 CALL                             R6 1 1
       41 DUPCLOSURE                       R7 K16 [PROTO_4]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R4
       46 GETTABLEKS                       R8 R1 K17 ["memo"]
       48 MOVE                             R9 R7
       49 CALL                             R8 1 -1
       50 RETURN                           R8 -1
