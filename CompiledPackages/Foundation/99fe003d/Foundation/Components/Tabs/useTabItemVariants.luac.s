PROTO_0:
        0 DUPTABLE                         R1 K2 [{"text", "content"}]
        1 DUPTABLE                         R2 K5 [{["tag"] = "auto-x"}]
        2 SETTABLEKS                       R2 R1 K0 ["text"]
        4 DUPTABLE                         R2 K7 [{["tag"] = "row align-x-center align-y-center gap-small"}]
        5 SETTABLEKS                       R2 R1 K1 ["content"]
        7 NEWTABLE                         R2 4 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K8 ["XSmall"]
       12 DUPTABLE                         R4 K10 [{"text", "content", "icon"}]
       13 DUPTABLE                         R5 K12 [{["tag"] = "size-0-400 text-label-small"}]
       14 SETTABLEKS                       R5 R4 K0 ["text"]
       16 DUPTABLE                         R5 K14 [{["tag"] = "padding-y-small"}]
       17 SETTABLEKS                       R5 R4 K1 ["content"]
       19 DUPTABLE                         R5 K16 [{"size"}]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K8 ["XSmall"]
       23 SETTABLEKS                       R6 R5 K15 ["size"]
       25 SETTABLEKS                       R5 R4 K9 ["icon"]
       27 SETTABLE                         R4 R2 R3
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K17 ["Small"]
       31 DUPTABLE                         R4 K10 [{"text", "content", "icon"}]
       32 DUPTABLE                         R5 K19 [{["tag"] = "size-0-600 text-label-medium"}]
       33 SETTABLEKS                       R5 R4 K0 ["text"]
       35 DUPTABLE                         R5 K14 [{["tag"] = "padding-y-small"}]
       36 SETTABLEKS                       R5 R4 K1 ["content"]
       38 DUPTABLE                         R5 K16 [{"size"}]
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R6 R6 K20 ["Medium"]
       42 SETTABLEKS                       R6 R5 K15 ["size"]
       44 SETTABLEKS                       R5 R4 K9 ["icon"]
       46 SETTABLE                         R4 R2 R3
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K20 ["Medium"]
       50 DUPTABLE                         R4 K10 [{"text", "content", "icon"}]
       51 DUPTABLE                         R5 K19 [{["tag"] = "size-0-600 text-label-medium"}]
       52 SETTABLEKS                       R5 R4 K0 ["text"]
       54 DUPTABLE                         R5 K22 [{["tag"] = "padding-y-medium"}]
       55 SETTABLEKS                       R5 R4 K1 ["content"]
       57 DUPTABLE                         R5 K16 [{"size"}]
       58 GETUPVAL                         R6 1
       59 GETTABLEKS                       R6 R6 K20 ["Medium"]
       61 SETTABLEKS                       R6 R5 K15 ["size"]
       63 SETTABLEKS                       R5 R4 K9 ["icon"]
       65 SETTABLE                         R4 R2 R3
       66 GETUPVAL                         R3 0
       67 GETTABLEKS                       R3 R3 K23 ["Large"]
       69 DUPTABLE                         R4 K10 [{"text", "content", "icon"}]
       70 DUPTABLE                         R5 K19 [{["tag"] = "size-0-600 text-label-medium"}]
       71 SETTABLEKS                       R5 R4 K0 ["text"]
       73 DUPTABLE                         R5 K25 [{["tag"] = "padding-y-xlarge"}]
       74 SETTABLEKS                       R5 R4 K1 ["content"]
       76 DUPTABLE                         R5 K16 [{"size"}]
       77 GETUPVAL                         R6 1
       78 GETTABLEKS                       R6 R6 K20 ["Medium"]
       80 SETTABLEKS                       R6 R5 K15 ["size"]
       82 SETTABLEKS                       R5 R4 K9 ["icon"]
       84 SETTABLE                         R4 R2 R3
       85 NEWTABLE                         R3 4 0
       87 GETUPVAL                         R4 0
       88 GETTABLEKS                       R4 R4 K8 ["XSmall"]
       90 DUPTABLE                         R5 K26 [{"content"}]
       91 DUPTABLE                         R6 K28 [{["tag"] = "padding-x-small"}]
       92 SETTABLEKS                       R6 R5 K1 ["content"]
       94 SETTABLE                         R5 R3 R4
       95 GETUPVAL                         R4 0
       96 GETTABLEKS                       R4 R4 K17 ["Small"]
       98 DUPTABLE                         R5 K26 [{"content"}]
       99 DUPTABLE                         R6 K28 [{["tag"] = "padding-x-small"}]
      100 SETTABLEKS                       R6 R5 K1 ["content"]
      102 SETTABLE                         R5 R3 R4
      103 GETUPVAL                         R4 0
      104 GETTABLEKS                       R4 R4 K20 ["Medium"]
      106 DUPTABLE                         R5 K26 [{"content"}]
      107 DUPTABLE                         R6 K30 [{["tag"] = "padding-x-medium"}]
      108 SETTABLEKS                       R6 R5 K1 ["content"]
      110 SETTABLE                         R5 R3 R4
      111 GETUPVAL                         R4 0
      112 GETTABLEKS                       R4 R4 K23 ["Large"]
      114 DUPTABLE                         R5 K26 [{"content"}]
      115 DUPTABLE                         R6 K32 [{["tag"] = "padding-x-large"}]
      116 SETTABLEKS                       R6 R5 K1 ["content"]
      118 SETTABLE                         R5 R3 R4
      119 NEWTABLE                         R4 2 0
      121 LOADB                            R5 0
      122 DUPTABLE                         R6 K34 [{"container", "content"}]
      123 DUPTABLE                         R7 K36 [{["tag"] = "auto-xy"}]
      124 SETTABLEKS                       R7 R6 K33 ["container"]
      126 DUPTABLE                         R7 K38 [{["tag"] = "size-0-0 auto-xy"}]
      127 SETTABLEKS                       R7 R6 K1 ["content"]
      129 SETTABLE                         R6 R4 R5
      130 LOADB                            R5 1
      131 DUPTABLE                         R6 K34 [{"container", "content"}]
      132 DUPTABLE                         R7 K40 [{["tag"] = "grow auto-xy"}]
      133 SETTABLEKS                       R7 R6 K33 ["container"]
      135 GETUPVAL                         R8 2
      136 GETTABLEKS                       R8 R8 K41 ["FoundationTabsInlineSizeFull"]
      138 JUMPIFNOT                        R8 ; [+9]
      139 DUPTABLE                         R7 K44 [{["tag"] = "auto-y", ["Size"]}]
      140 GETIMPORT                        R8 K47 [UDim2.fromScale]
      142 LOADN                            R9 1
      143 LOADN                            R10 0
      144 CALL                             R8 2 1
      145 SETTABLEKS                       R8 R7 K43 ["Size"]
      147 JUMP                             ; [+1]
      148 DUPTABLE                         R7 K49 [{["tag"] = "size-full-0 auto-y"}]
      149 SETTABLEKS                       R7 R6 K1 ["content"]
      151 SETTABLE                         R6 R4 R5
      152 DUPTABLE                         R5 K54 [{"common", "sizes", "isFill", "paddings"}]
      153 SETTABLEKS                       R1 R5 K50 ["common"]
      155 SETTABLEKS                       R2 R5 K51 ["sizes"]
      157 SETTABLEKS                       R4 R5 K52 ["isFill"]
      159 SETTABLEKS                       R3 R5 K53 ["paddings"]
      161 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useVariants"]
        3 LOADK                            R4 K1 ["Tab"]
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R0
        6 CALL                             R3 3 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R5 R3 K2 ["common"]
       10 GETTABLEKS                       R7 R3 K3 ["sizes"]
       12 GETTABLE                         R6 R7 R1
       13 GETTABLEKS                       R8 R3 K4 ["isFill"]
       15 GETTABLE                         R7 R8 R2
       16 JUMPIFNOT                        R2 ; [+4]
       17 GETTABLEKS                       R9 R3 K5 ["paddings"]
       19 GETTABLE                         R8 R9 R1
       20 JUMP                             ; [+2]
       21 NEWTABLE                         R8 0 0
       23 CALL                             R4 4 -1
       24 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R2 K7 ["composeStyleVariant"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Utility"]
       18 GETTABLEKS                       R3 R3 K8 ["Flags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Providers"]
       25 GETTABLEKS                       R4 R4 K10 ["Style"]
       27 GETTABLEKS                       R4 R4 K11 ["Tokens"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Providers"]
       34 GETTABLEKS                       R5 R5 K10 ["Style"]
       36 GETTABLEKS                       R5 R5 K12 ["VariantsContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K13 ["Enums"]
       43 GETTABLEKS                       R6 R6 K14 ["InputSize"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K13 ["Enums"]
       50 GETTABLEKS                       R7 R7 K15 ["IconSize"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K16 [PROTO_0]
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R2
       57 DUPCLOSURE                       R8 K17 [PROTO_1]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R1
       61 RETURN                           R8 1
