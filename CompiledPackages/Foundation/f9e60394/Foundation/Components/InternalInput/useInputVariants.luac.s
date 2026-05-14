PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Stroke"]
        2 GETTABLEKS                       R2 R2 K1 ["Standard"]
        4 FASTCALL1                        MATH_CEIL R2 ; [+2]
        5 GETIMPORT                        R1 K4 [math.ceil]
        7 CALL                             R1 1 1
        8 DUPTABLE                         R2 K7 [{"container", "input"}]
        9 DUPTABLE                         R3 K10 [{"tag", "padding"}]
       10 LOADK                            R4 K11 ["row align-x-left align-y-center auto-xy"]
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
       30 NEWTABLE                         R3 4 0
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K19 ["XSmall"]
       35 DUPTABLE                         R5 K20 [{"container"}]
       36 DUPTABLE                         R6 K21 [{"tag"}]
       37 LOADK                            R7 K22 ["gap-medium"]
       38 SETTABLEKS                       R7 R6 K8 ["tag"]
       40 SETTABLEKS                       R6 R5 K5 ["container"]
       42 SETTABLE                         R5 R3 R4
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K23 ["Small"]
       46 DUPTABLE                         R5 K20 [{"container"}]
       47 DUPTABLE                         R6 K21 [{"tag"}]
       48 LOADK                            R7 K22 ["gap-medium"]
       49 SETTABLEKS                       R7 R6 K8 ["tag"]
       51 SETTABLEKS                       R6 R5 K5 ["container"]
       53 SETTABLE                         R5 R3 R4
       54 GETUPVAL                         R4 0
       55 GETTABLEKS                       R4 R4 K24 ["Medium"]
       57 DUPTABLE                         R5 K20 [{"container"}]
       58 DUPTABLE                         R6 K21 [{"tag"}]
       59 LOADK                            R7 K22 ["gap-medium"]
       60 SETTABLEKS                       R7 R6 K8 ["tag"]
       62 SETTABLEKS                       R6 R5 K5 ["container"]
       64 SETTABLE                         R5 R3 R4
       65 GETUPVAL                         R4 0
       66 GETTABLEKS                       R4 R4 K25 ["Large"]
       68 DUPTABLE                         R5 K20 [{"container"}]
       69 DUPTABLE                         R6 K21 [{"tag"}]
       70 LOADK                            R7 K22 ["gap-medium"]
       71 SETTABLEKS                       R7 R6 K8 ["tag"]
       73 SETTABLEKS                       R6 R5 K5 ["container"]
       75 SETTABLE                         R5 R3 R4
       76 NEWTABLE                         R4 2 0
       78 GETIMPORT                        R5 K29 [Enum.HorizontalAlignment.Left]
       80 DUPTABLE                         R6 K20 [{"container"}]
       81 DUPTABLE                         R7 K21 [{"tag"}]
       82 LOADK                            R8 K30 ["flex-x-between size-full-0"]
       83 SETTABLEKS                       R8 R7 K8 ["tag"]
       85 SETTABLEKS                       R7 R6 K5 ["container"]
       87 SETTABLE                         R6 R4 R5
       88 GETIMPORT                        R5 K32 [Enum.HorizontalAlignment.Right]
       90 DUPTABLE                         R6 K20 [{"container"}]
       91 DUPTABLE                         R7 K21 [{"tag"}]
       92 LOADK                            R8 K33 [""]
       93 SETTABLEKS                       R8 R7 K8 ["tag"]
       95 SETTABLEKS                       R7 R6 K5 ["container"]
       97 SETTABLE                         R6 R4 R5
       98 DUPTABLE                         R5 K37 [{"common", "sizes", "labelPosition"}]
       99 SETTABLEKS                       R2 R5 K34 ["common"]
      101 SETTABLEKS                       R3 R5 K35 ["sizes"]
      103 SETTABLEKS                       R4 R5 K36 ["labelPosition"]
      105 RETURN                           R5 1

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
       13 GETTABLEKS                       R8 R3 K4 ["labelPosition"]
       15 GETTABLE                         R7 R8 R2
       16 CALL                             R4 3 -1
       17 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R3 K9 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Utility"]
       25 GETTABLEKS                       R4 R4 K11 ["composeStyleVariant"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Providers"]
       32 GETTABLEKS                       R5 R5 K13 ["Style"]
       34 GETTABLEKS                       R5 R5 K14 ["Tokens"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K12 ["Providers"]
       41 GETTABLEKS                       R6 R6 K13 ["Style"]
       43 GETTABLEKS                       R6 R6 K15 ["VariantsContext"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K16 [PROTO_0]
       47 CAPTURE                          VAL R2
       48 DUPCLOSURE                       R7 K17 [PROTO_1]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R3
       52 RETURN                           R7 1
