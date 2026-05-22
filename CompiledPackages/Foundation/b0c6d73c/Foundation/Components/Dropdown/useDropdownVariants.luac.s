PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["join"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"text"}]
        5 DUPTABLE                         R4 K4 [{"tag"}]
        6 LOADK                            R5 K5 ["content-muted"]
        7 SETTABLEKS                       R5 R4 K3 ["tag"]
        9 SETTABLEKS                       R4 R3 K1 ["text"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"container", "text"}]
        1 DUPTABLE                         R2 K4 [{"tag"}]
        2 LOADK                            R3 K5 ["row flex-x-between align-y-center stroke-standard stroke-position-inner"]
        3 SETTABLEKS                       R3 R2 K3 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["container"]
        7 DUPTABLE                         R2 K4 [{"tag"}]
        8 LOADK                            R3 K6 ["shrink auto-xy text-truncate-split"]
        9 SETTABLEKS                       R3 R2 K3 ["tag"]
       11 SETTABLEKS                       R2 R1 K1 ["text"]
       13 NEWTABLE                         R2 4 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K7 ["XSmall"]
       18 DUPTABLE                         R4 K9 [{"container", "text", "arrow"}]
       19 DUPTABLE                         R5 K4 [{"tag"}]
       20 LOADK                            R6 K10 ["gap-xxsmall size-full-600 padding-small radius-small"]
       21 SETTABLEKS                       R6 R5 K3 ["tag"]
       23 SETTABLEKS                       R5 R4 K0 ["container"]
       25 DUPTABLE                         R5 K4 [{"tag"}]
       26 LOADK                            R6 K11 ["text-body-small"]
       27 SETTABLEKS                       R6 R5 K3 ["tag"]
       29 SETTABLEKS                       R5 R4 K1 ["text"]
       31 DUPTABLE                         R5 K13 [{"size"}]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K7 ["XSmall"]
       35 SETTABLEKS                       R6 R5 K12 ["size"]
       37 SETTABLEKS                       R5 R4 K8 ["arrow"]
       39 SETTABLE                         R4 R2 R3
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R3 R3 K14 ["Small"]
       43 DUPTABLE                         R4 K9 [{"container", "text", "arrow"}]
       44 DUPTABLE                         R5 K4 [{"tag"}]
       45 LOADK                            R6 K15 ["gap-xxsmall size-full-800 padding-medium radius-medium"]
       46 SETTABLEKS                       R6 R5 K3 ["tag"]
       48 SETTABLEKS                       R5 R4 K0 ["container"]
       50 DUPTABLE                         R5 K4 [{"tag"}]
       51 LOADK                            R6 K11 ["text-body-small"]
       52 SETTABLEKS                       R6 R5 K3 ["tag"]
       54 SETTABLEKS                       R5 R4 K1 ["text"]
       56 DUPTABLE                         R5 K13 [{"size"}]
       57 GETUPVAL                         R6 1
       58 GETTABLEKS                       R6 R6 K14 ["Small"]
       60 SETTABLEKS                       R6 R5 K12 ["size"]
       62 SETTABLEKS                       R5 R4 K8 ["arrow"]
       64 SETTABLE                         R4 R2 R3
       65 GETUPVAL                         R3 0
       66 GETTABLEKS                       R3 R3 K16 ["Medium"]
       68 DUPTABLE                         R4 K9 [{"container", "text", "arrow"}]
       69 DUPTABLE                         R5 K4 [{"tag"}]
       70 LOADK                            R6 K17 ["size-full-1000 padding-medium radius-medium"]
       71 SETTABLEKS                       R6 R5 K3 ["tag"]
       73 SETTABLEKS                       R5 R4 K0 ["container"]
       75 DUPTABLE                         R5 K4 [{"tag"}]
       76 LOADK                            R6 K18 ["text-body-medium"]
       77 SETTABLEKS                       R6 R5 K3 ["tag"]
       79 SETTABLEKS                       R5 R4 K1 ["text"]
       81 DUPTABLE                         R5 K13 [{"size"}]
       82 GETUPVAL                         R6 1
       83 GETTABLEKS                       R6 R6 K16 ["Medium"]
       85 SETTABLEKS                       R6 R5 K12 ["size"]
       87 SETTABLEKS                       R5 R4 K8 ["arrow"]
       89 SETTABLE                         R4 R2 R3
       90 GETUPVAL                         R3 0
       91 GETTABLEKS                       R3 R3 K19 ["Large"]
       93 DUPTABLE                         R4 K9 [{"container", "text", "arrow"}]
       94 DUPTABLE                         R5 K4 [{"tag"}]
       95 LOADK                            R6 K20 ["size-full-1200 padding-medium radius-medium"]
       96 SETTABLEKS                       R6 R5 K3 ["tag"]
       98 SETTABLEKS                       R5 R4 K0 ["container"]
      100 DUPTABLE                         R5 K4 [{"tag"}]
      101 LOADK                            R6 K21 ["text-body-large"]
      102 SETTABLEKS                       R6 R5 K3 ["tag"]
      104 SETTABLEKS                       R5 R4 K1 ["text"]
      106 DUPTABLE                         R5 K13 [{"size"}]
      107 GETUPVAL                         R6 1
      108 GETTABLEKS                       R6 R6 K19 ["Large"]
      110 SETTABLEKS                       R6 R5 K12 ["size"]
      112 SETTABLEKS                       R5 R4 K8 ["arrow"]
      114 SETTABLE                         R4 R2 R3
      115 NEWTABLE                         R3 8 0
      117 GETUPVAL                         R4 2
      118 GETTABLEKS                       R4 R4 K22 ["Disabled"]
      120 DUPTABLE                         R5 K2 [{"container", "text"}]
      121 DUPTABLE                         R6 K4 [{"tag"}]
      122 LOADK                            R7 K23 ["stroke-muted"]
      123 SETTABLEKS                       R7 R6 K3 ["tag"]
      125 SETTABLEKS                       R6 R5 K0 ["container"]
      127 DUPTABLE                         R6 K4 [{"tag"}]
      128 LOADK                            R7 K24 ["content-muted"]
      129 SETTABLEKS                       R7 R6 K3 ["tag"]
      131 SETTABLEKS                       R6 R5 K1 ["text"]
      133 SETTABLE                         R5 R3 R4
      134 GETUPVAL                         R4 2
      135 GETTABLEKS                       R4 R4 K25 ["Initialize"]
      137 DUPTABLE                         R5 K2 [{"container", "text"}]
      138 DUPTABLE                         R6 K4 [{"tag"}]
      139 LOADK                            R7 K26 ["stroke-default"]
      140 SETTABLEKS                       R7 R6 K3 ["tag"]
      142 SETTABLEKS                       R6 R5 K0 ["container"]
      144 DUPTABLE                         R6 K4 [{"tag"}]
      145 LOADK                            R7 K27 ["content-default"]
      146 SETTABLEKS                       R7 R6 K3 ["tag"]
      148 SETTABLEKS                       R6 R5 K1 ["text"]
      150 SETTABLE                         R5 R3 R4
      151 GETUPVAL                         R4 2
      152 GETTABLEKS                       R4 R4 K28 ["Default"]
      154 DUPTABLE                         R5 K2 [{"container", "text"}]
      155 DUPTABLE                         R6 K4 [{"tag"}]
      156 LOADK                            R7 K26 ["stroke-default"]
      157 SETTABLEKS                       R7 R6 K3 ["tag"]
      159 SETTABLEKS                       R6 R5 K0 ["container"]
      161 DUPTABLE                         R6 K4 [{"tag"}]
      162 LOADK                            R7 K27 ["content-default"]
      163 SETTABLEKS                       R7 R6 K3 ["tag"]
      165 SETTABLEKS                       R6 R5 K1 ["text"]
      167 SETTABLE                         R5 R3 R4
      168 GETUPVAL                         R4 2
      169 GETTABLEKS                       R4 R4 K29 ["Hover"]
      171 DUPTABLE                         R5 K2 [{"container", "text"}]
      172 DUPTABLE                         R6 K4 [{"tag"}]
      173 LOADK                            R7 K30 ["stroke-emphasis"]
      174 SETTABLEKS                       R7 R6 K3 ["tag"]
      176 SETTABLEKS                       R6 R5 K0 ["container"]
      178 DUPTABLE                         R6 K4 [{"tag"}]
      179 LOADK                            R7 K31 ["content-emphasis"]
      180 SETTABLEKS                       R7 R6 K3 ["tag"]
      182 SETTABLEKS                       R6 R5 K1 ["text"]
      184 SETTABLE                         R5 R3 R4
      185 GETUPVAL                         R4 2
      186 GETTABLEKS                       R4 R4 K32 ["Pressed"]
      188 DUPTABLE                         R5 K2 [{"container", "text"}]
      189 DUPTABLE                         R6 K4 [{"tag"}]
      190 LOADK                            R7 K30 ["stroke-emphasis"]
      191 SETTABLEKS                       R7 R6 K3 ["tag"]
      193 SETTABLEKS                       R6 R5 K0 ["container"]
      195 DUPTABLE                         R6 K4 [{"tag"}]
      196 LOADK                            R7 K31 ["content-emphasis"]
      197 SETTABLEKS                       R7 R6 K3 ["tag"]
      199 SETTABLEKS                       R6 R5 K1 ["text"]
      201 SETTABLE                         R5 R3 R4
      202 DUPTABLE                         R4 K2 [{"container", "text"}]
      203 DUPTABLE                         R5 K4 [{"tag"}]
      204 LOADK                            R6 K33 ["stroke-alert"]
      205 SETTABLEKS                       R6 R5 K3 ["tag"]
      207 SETTABLEKS                       R5 R4 K0 ["container"]
      209 DUPTABLE                         R5 K4 [{"tag"}]
      210 LOADK                            R6 K27 ["content-default"]
      211 SETTABLEKS                       R6 R5 K3 ["tag"]
      213 SETTABLEKS                       R5 R4 K1 ["text"]
      215 SETTABLEKS                       R4 R3 K34 ["Error"]
      217 GETUPVAL                         R4 3
      218 GETTABLEKS                       R4 R4 K35 ["map"]
      220 MOVE                             R5 R3
      221 DUPCLOSURE                       R6 K36 [PROTO_0]
      222 CAPTURE                          UPVAL U3
      223 CALL                             R4 2 1
      224 DUPTABLE                         R5 K41 [{"common", "sizes", "states", "placeholderStates"}]
      225 SETTABLEKS                       R1 R5 K37 ["common"]
      227 SETTABLEKS                       R2 R5 K38 ["sizes"]
      229 SETTABLEKS                       R3 R5 K39 ["states"]
      231 SETTABLEKS                       R4 R5 K40 ["placeholderStates"]
      233 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["useVariants"]
        3 LOADK                            R6 K1 ["Dropdown"]
        4 GETUPVAL                         R7 1
        5 MOVE                             R8 R0
        6 CALL                             R5 3 1
        7 JUMPIFNOT                        R4 ; [+2]
        8 LOADK                            R6 K2 ["Error"]
        9 JUMP                             ; [+1]
       10 MOVE                             R6 R2
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R8 R5 K3 ["common"]
       14 GETTABLEKS                       R10 R5 K4 ["sizes"]
       16 GETTABLE                         R9 R10 R1
       17 JUMPIFNOT                        R3 ; [+4]
       18 GETTABLEKS                       R11 R5 K5 ["placeholderStates"]
       20 GETTABLE                         R10 R11 R6
       21 JUMP                             ; [+3]
       22 GETTABLEKS                       R11 R5 K6 ["states"]
       24 GETTABLE                         R10 R11 R6
       25 CALL                             R7 3 -1
       26 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R5 K11 ["ControlState"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Enums"]
       32 GETTABLEKS                       R6 R6 K12 ["InputSize"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Enums"]
       39 GETTABLEKS                       R7 R7 K13 ["IconSize"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K10 ["Enums"]
       46 GETTABLEKS                       R8 R8 K14 ["InputLabelSize"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K15 ["Utility"]
       53 GETTABLEKS                       R9 R9 K16 ["composeStyleVariant"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K17 ["Providers"]
       60 GETTABLEKS                       R10 R10 K18 ["Style"]
       62 GETTABLEKS                       R10 R10 K19 ["Tokens"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K17 ["Providers"]
       69 GETTABLEKS                       R11 R11 K18 ["Style"]
       71 GETTABLEKS                       R11 R11 K20 ["VariantsContext"]
       73 CALL                             R10 1 1
       74 DUPCLOSURE                       R11 K21 [PROTO_1]
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R2
       79 DUPCLOSURE                       R12 K22 [PROTO_2]
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R8
       83 RETURN                           R12 1
