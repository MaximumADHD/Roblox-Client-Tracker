PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Stroke"]
        2 GETTABLEKS                       R2 R2 K1 ["Standard"]
        4 FASTCALL1                        MATH_CEIL R2 ; [+2]
        5 GETIMPORT                        R1 K4 [math.ceil]
        7 CALL                             R1 1 1
        8 DUPTABLE                         R2 K7 [{"container", "input"}]
        9 DUPTABLE                         R3 K10 [{"tag", "padding"}]
       10 LOADK                            R4 K11 ["row auto-xy align-x-left align-y-center"]
       11 SETTABLEKS                       R4 R3 K8 ["tag"]
       13 GETIMPORT                        R4 K14 [UDim.new]
       15 LOADN                            R5 0
       16 MOVE                             R6 R1
       17 CALL                             R4 2 1
       18 SETTABLEKS                       R4 R3 K9 ["padding"]
       20 SETTABLEKS                       R3 R2 K5 ["container"]
       22 DUPTABLE                         R3 K16 [{"stroke"}]
       23 DUPTABLE                         R4 K18 [{"thickness"}]
       24 SETTABLEKS                       R1 R4 K17 ["thickness"]
       26 SETTABLEKS                       R4 R3 K15 ["stroke"]
       28 SETTABLEKS                       R3 R2 K6 ["input"]
       30 LOADNIL                          R3
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K19 ["FoundationInternalInputSelectedStylesAndSpacing"]
       34 JUMPIFNOT                        R4 ; [+48]
       35 NEWTABLE                         R4 4 0
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R5 R5 K20 ["XSmall"]
       40 DUPTABLE                         R6 K21 [{"container"}]
       41 DUPTABLE                         R7 K22 [{"tag"}]
       42 LOADK                            R8 K23 ["gap-medium"]
       43 SETTABLEKS                       R8 R7 K8 ["tag"]
       45 SETTABLEKS                       R7 R6 K5 ["container"]
       47 SETTABLE                         R6 R4 R5
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R5 R5 K24 ["Small"]
       51 DUPTABLE                         R6 K21 [{"container"}]
       52 DUPTABLE                         R7 K22 [{"tag"}]
       53 LOADK                            R8 K23 ["gap-medium"]
       54 SETTABLEKS                       R8 R7 K8 ["tag"]
       56 SETTABLEKS                       R7 R6 K5 ["container"]
       58 SETTABLE                         R6 R4 R5
       59 GETUPVAL                         R5 1
       60 GETTABLEKS                       R5 R5 K25 ["Medium"]
       62 DUPTABLE                         R6 K21 [{"container"}]
       63 DUPTABLE                         R7 K22 [{"tag"}]
       64 LOADK                            R8 K23 ["gap-medium"]
       65 SETTABLEKS                       R8 R7 K8 ["tag"]
       67 SETTABLEKS                       R7 R6 K5 ["container"]
       69 SETTABLE                         R6 R4 R5
       70 GETUPVAL                         R5 1
       71 GETTABLEKS                       R5 R5 K26 ["Large"]
       73 DUPTABLE                         R6 K21 [{"container"}]
       74 DUPTABLE                         R7 K22 [{"tag"}]
       75 LOADK                            R8 K23 ["gap-medium"]
       76 SETTABLEKS                       R8 R7 K8 ["tag"]
       78 SETTABLEKS                       R7 R6 K5 ["container"]
       80 SETTABLE                         R6 R4 R5
       81 MOVE                             R3 R4
       82 JUMP                             ; [+47]
       83 NEWTABLE                         R4 4 0
       85 GETUPVAL                         R5 1
       86 GETTABLEKS                       R5 R5 K20 ["XSmall"]
       88 DUPTABLE                         R6 K21 [{"container"}]
       89 DUPTABLE                         R7 K22 [{"tag"}]
       90 LOADK                            R8 K27 ["gap-small"]
       91 SETTABLEKS                       R8 R7 K8 ["tag"]
       93 SETTABLEKS                       R7 R6 K5 ["container"]
       95 SETTABLE                         R6 R4 R5
       96 GETUPVAL                         R5 1
       97 GETTABLEKS                       R5 R5 K24 ["Small"]
       99 DUPTABLE                         R6 K21 [{"container"}]
      100 DUPTABLE                         R7 K22 [{"tag"}]
      101 LOADK                            R8 K27 ["gap-small"]
      102 SETTABLEKS                       R8 R7 K8 ["tag"]
      104 SETTABLEKS                       R7 R6 K5 ["container"]
      106 SETTABLE                         R6 R4 R5
      107 GETUPVAL                         R5 1
      108 GETTABLEKS                       R5 R5 K25 ["Medium"]
      110 DUPTABLE                         R6 K21 [{"container"}]
      111 DUPTABLE                         R7 K22 [{"tag"}]
      112 LOADK                            R8 K23 ["gap-medium"]
      113 SETTABLEKS                       R8 R7 K8 ["tag"]
      115 SETTABLEKS                       R7 R6 K5 ["container"]
      117 SETTABLE                         R6 R4 R5
      118 GETUPVAL                         R5 1
      119 GETTABLEKS                       R5 R5 K26 ["Large"]
      121 DUPTABLE                         R6 K21 [{"container"}]
      122 DUPTABLE                         R7 K22 [{"tag"}]
      123 LOADK                            R8 K28 ["gap-large"]
      124 SETTABLEKS                       R8 R7 K8 ["tag"]
      126 SETTABLEKS                       R7 R6 K5 ["container"]
      128 SETTABLE                         R6 R4 R5
      129 MOVE                             R3 R4
      130 NEWTABLE                         R4 1 0
      132 LOADB                            R5 1
      133 DUPTABLE                         R6 K21 [{"container"}]
      134 DUPTABLE                         R7 K22 [{"tag"}]
      135 LOADK                            R8 K29 ["flex-x-between size-full-0"]
      136 SETTABLEKS                       R8 R7 K8 ["tag"]
      138 SETTABLEKS                       R7 R6 K5 ["container"]
      140 SETTABLE                         R6 R4 R5
      141 DUPTABLE                         R5 K33 [{"common", "sizes", "justifyContent"}]
      142 SETTABLEKS                       R2 R5 K30 ["common"]
      144 SETTABLEKS                       R3 R5 K31 ["sizes"]
      146 SETTABLEKS                       R4 R5 K32 ["justifyContent"]
      148 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useVariants"]
        3 LOADK                            R4 K1 ["InternalInput"]
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R0
        6 CALL                             R3 3 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R5 R3 K2 ["common"]
       10 GETTABLEKS                       R7 R3 K3 ["sizes"]
       12 GETTABLE                         R6 R7 R1
       13 GETTABLEKS                       R8 R3 K4 ["justifyContent"]
       15 ORK                              R9 R2 K5 [False]
       16 GETTABLE                         R7 R8 R9
       17 CALL                             R4 3 -1
       18 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Enums"]
       25 GETTABLEKS                       R4 R4 K11 ["InputSize"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Utility"]
       32 GETTABLEKS                       R5 R5 K12 ["composeStyleVariant"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Providers"]
       39 GETTABLEKS                       R6 R6 K14 ["Style"]
       41 GETTABLEKS                       R6 R6 K15 ["Tokens"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Providers"]
       48 GETTABLEKS                       R7 R7 K14 ["Style"]
       50 GETTABLEKS                       R7 R7 K16 ["VariantsContext"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K17 [PROTO_0]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R3
       56 DUPCLOSURE                       R8 K18 [PROTO_1]
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R4
       60 RETURN                           R8 1
