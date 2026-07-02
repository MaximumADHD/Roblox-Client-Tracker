PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Stroke"]
        2 GETTABLEKS                       R2 R2 K1 ["Standard"]
        4 FASTCALL1                        MATH_CEIL R2 ; [+2]
        5 GETIMPORT                        R1 K4 [math.ceil]
        7 CALL                             R1 1 1
        8 DUPTABLE                         R2 K7 [{"container", "input"}]
        9 DUPTABLE                         R3 K11 [{["tag"] = "row auto-xy align-x-left align-y-center", ["padding"]}]
       10 GETIMPORT                        R4 K14 [UDim.new]
       12 LOADN                            R5 0
       13 MOVE                             R6 R1
       14 CALL                             R4 2 1
       15 SETTABLEKS                       R4 R3 K10 ["padding"]
       17 SETTABLEKS                       R3 R2 K5 ["container"]
       19 DUPTABLE                         R3 K16 [{"stroke"}]
       20 DUPTABLE                         R4 K18 [{"thickness"}]
       21 SETTABLEKS                       R1 R4 K17 ["thickness"]
       23 SETTABLEKS                       R4 R3 K15 ["stroke"]
       25 SETTABLEKS                       R3 R2 K6 ["input"]
       27 LOADNIL                          R3
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K19 ["FoundationInternalInputSelectedStylesAndSpacing"]
       31 JUMPIFNOT                        R4 ; [+36]
       32 NEWTABLE                         R4 4 0
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K20 ["XSmall"]
       37 DUPTABLE                         R6 K21 [{"container"}]
       38 DUPTABLE                         R7 K23 [{["tag"] = "gap-medium"}]
       39 SETTABLEKS                       R7 R6 K5 ["container"]
       41 SETTABLE                         R6 R4 R5
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R5 R5 K24 ["Small"]
       45 DUPTABLE                         R6 K21 [{"container"}]
       46 DUPTABLE                         R7 K23 [{["tag"] = "gap-medium"}]
       47 SETTABLEKS                       R7 R6 K5 ["container"]
       49 SETTABLE                         R6 R4 R5
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R5 R5 K25 ["Medium"]
       53 DUPTABLE                         R6 K21 [{"container"}]
       54 DUPTABLE                         R7 K23 [{["tag"] = "gap-medium"}]
       55 SETTABLEKS                       R7 R6 K5 ["container"]
       57 SETTABLE                         R6 R4 R5
       58 GETUPVAL                         R5 1
       59 GETTABLEKS                       R5 R5 K26 ["Large"]
       61 DUPTABLE                         R6 K21 [{"container"}]
       62 DUPTABLE                         R7 K23 [{["tag"] = "gap-medium"}]
       63 SETTABLEKS                       R7 R6 K5 ["container"]
       65 SETTABLE                         R6 R4 R5
       66 MOVE                             R3 R4
       67 JUMP                             ; [+35]
       68 NEWTABLE                         R4 4 0
       70 GETUPVAL                         R5 1
       71 GETTABLEKS                       R5 R5 K20 ["XSmall"]
       73 DUPTABLE                         R6 K21 [{"container"}]
       74 DUPTABLE                         R7 K28 [{["tag"] = "gap-small"}]
       75 SETTABLEKS                       R7 R6 K5 ["container"]
       77 SETTABLE                         R6 R4 R5
       78 GETUPVAL                         R5 1
       79 GETTABLEKS                       R5 R5 K24 ["Small"]
       81 DUPTABLE                         R6 K21 [{"container"}]
       82 DUPTABLE                         R7 K28 [{["tag"] = "gap-small"}]
       83 SETTABLEKS                       R7 R6 K5 ["container"]
       85 SETTABLE                         R6 R4 R5
       86 GETUPVAL                         R5 1
       87 GETTABLEKS                       R5 R5 K25 ["Medium"]
       89 DUPTABLE                         R6 K21 [{"container"}]
       90 DUPTABLE                         R7 K23 [{["tag"] = "gap-medium"}]
       91 SETTABLEKS                       R7 R6 K5 ["container"]
       93 SETTABLE                         R6 R4 R5
       94 GETUPVAL                         R5 1
       95 GETTABLEKS                       R5 R5 K26 ["Large"]
       97 DUPTABLE                         R6 K21 [{"container"}]
       98 DUPTABLE                         R7 K30 [{["tag"] = "gap-large"}]
       99 SETTABLEKS                       R7 R6 K5 ["container"]
      101 SETTABLE                         R6 R4 R5
      102 MOVE                             R3 R4
      103 NEWTABLE                         R4 1 0
      105 LOADB                            R5 1
      106 DUPTABLE                         R6 K21 [{"container"}]
      107 DUPTABLE                         R7 K32 [{["tag"] = "flex-x-between size-full-0"}]
      108 SETTABLEKS                       R7 R6 K5 ["container"]
      110 SETTABLE                         R6 R4 R5
      111 DUPTABLE                         R5 K36 [{"common", "sizes", "justifyContent"}]
      112 SETTABLEKS                       R2 R5 K33 ["common"]
      114 SETTABLEKS                       R3 R5 K34 ["sizes"]
      116 SETTABLEKS                       R4 R5 K35 ["justifyContent"]
      118 RETURN                           R5 1

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
