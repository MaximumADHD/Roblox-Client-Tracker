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
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K5 ["FoundationUIStrokeInner"]
        5 JUMPIFNOT                        R4 ; [+2]
        6 LOADK                            R3 K6 ["row align-y-center flex-x-between stroke-standard stroke-position-inner"]
        7 JUMP                             ; [+1]
        8 LOADK                            R3 K7 ["row align-y-center flex-x-between stroke-standard"]
        9 SETTABLEKS                       R3 R2 K3 ["tag"]
       11 SETTABLEKS                       R2 R1 K0 ["container"]
       13 DUPTABLE                         R2 K4 [{"tag"}]
       14 LOADK                            R3 K8 ["auto-xy text-truncate-split shrink"]
       15 SETTABLEKS                       R3 R2 K3 ["tag"]
       17 SETTABLEKS                       R2 R1 K1 ["text"]
       19 NEWTABLE                         R2 4 0
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K9 ["XSmall"]
       24 DUPTABLE                         R4 K11 [{"container", "text", "arrow"}]
       25 DUPTABLE                         R5 K4 [{"tag"}]
       26 LOADK                            R6 K12 ["radius-small padding-small gap-xxsmall size-full-600"]
       27 SETTABLEKS                       R6 R5 K3 ["tag"]
       29 SETTABLEKS                       R5 R4 K0 ["container"]
       31 DUPTABLE                         R5 K4 [{"tag"}]
       32 LOADK                            R6 K13 ["text-body-small"]
       33 SETTABLEKS                       R6 R5 K3 ["tag"]
       35 SETTABLEKS                       R5 R4 K1 ["text"]
       37 DUPTABLE                         R5 K15 [{"size"}]
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K16 ["Small"]
       41 SETTABLEKS                       R6 R5 K14 ["size"]
       43 SETTABLEKS                       R5 R4 K10 ["arrow"]
       45 SETTABLE                         R4 R2 R3
       46 GETUPVAL                         R3 1
       47 GETTABLEKS                       R3 R3 K16 ["Small"]
       49 DUPTABLE                         R4 K11 [{"container", "text", "arrow"}]
       50 DUPTABLE                         R5 K4 [{"tag"}]
       51 LOADK                            R6 K17 ["radius-medium padding-medium gap-xxsmall size-full-800"]
       52 SETTABLEKS                       R6 R5 K3 ["tag"]
       54 SETTABLEKS                       R5 R4 K0 ["container"]
       56 DUPTABLE                         R5 K4 [{"tag"}]
       57 LOADK                            R6 K13 ["text-body-small"]
       58 SETTABLEKS                       R6 R5 K3 ["tag"]
       60 SETTABLEKS                       R5 R4 K1 ["text"]
       62 DUPTABLE                         R5 K15 [{"size"}]
       63 GETUPVAL                         R6 1
       64 GETTABLEKS                       R6 R6 K16 ["Small"]
       66 SETTABLEKS                       R6 R5 K14 ["size"]
       68 SETTABLEKS                       R5 R4 K10 ["arrow"]
       70 SETTABLE                         R4 R2 R3
       71 GETUPVAL                         R3 1
       72 GETTABLEKS                       R3 R3 K18 ["Medium"]
       74 DUPTABLE                         R4 K11 [{"container", "text", "arrow"}]
       75 DUPTABLE                         R5 K4 [{"tag"}]
       76 LOADK                            R6 K19 ["radius-medium padding-medium size-full-1000"]
       77 SETTABLEKS                       R6 R5 K3 ["tag"]
       79 SETTABLEKS                       R5 R4 K0 ["container"]
       81 DUPTABLE                         R5 K4 [{"tag"}]
       82 LOADK                            R6 K20 ["text-body-medium"]
       83 SETTABLEKS                       R6 R5 K3 ["tag"]
       85 SETTABLEKS                       R5 R4 K1 ["text"]
       87 DUPTABLE                         R5 K15 [{"size"}]
       88 GETUPVAL                         R6 1
       89 GETTABLEKS                       R6 R6 K18 ["Medium"]
       91 SETTABLEKS                       R6 R5 K14 ["size"]
       93 SETTABLEKS                       R5 R4 K10 ["arrow"]
       95 SETTABLE                         R4 R2 R3
       96 GETUPVAL                         R3 1
       97 GETTABLEKS                       R3 R3 K21 ["Large"]
       99 DUPTABLE                         R4 K11 [{"container", "text", "arrow"}]
      100 DUPTABLE                         R5 K4 [{"tag"}]
      101 LOADK                            R6 K22 ["radius-medium padding-medium size-full-1200"]
      102 SETTABLEKS                       R6 R5 K3 ["tag"]
      104 SETTABLEKS                       R5 R4 K0 ["container"]
      106 DUPTABLE                         R5 K4 [{"tag"}]
      107 LOADK                            R6 K23 ["text-body-large"]
      108 SETTABLEKS                       R6 R5 K3 ["tag"]
      110 SETTABLEKS                       R5 R4 K1 ["text"]
      112 DUPTABLE                         R5 K15 [{"size"}]
      113 GETUPVAL                         R6 1
      114 GETTABLEKS                       R6 R6 K18 ["Medium"]
      116 SETTABLEKS                       R6 R5 K14 ["size"]
      118 SETTABLEKS                       R5 R4 K10 ["arrow"]
      120 SETTABLE                         R4 R2 R3
      121 NEWTABLE                         R3 8 0
      123 GETUPVAL                         R4 2
      124 GETTABLEKS                       R4 R4 K24 ["Disabled"]
      126 DUPTABLE                         R5 K2 [{"container", "text"}]
      127 DUPTABLE                         R6 K4 [{"tag"}]
      128 LOADK                            R7 K25 ["stroke-muted"]
      129 SETTABLEKS                       R7 R6 K3 ["tag"]
      131 SETTABLEKS                       R6 R5 K0 ["container"]
      133 DUPTABLE                         R6 K4 [{"tag"}]
      134 LOADK                            R7 K26 ["content-muted"]
      135 SETTABLEKS                       R7 R6 K3 ["tag"]
      137 SETTABLEKS                       R6 R5 K1 ["text"]
      139 SETTABLE                         R5 R3 R4
      140 GETUPVAL                         R4 2
      141 GETTABLEKS                       R4 R4 K27 ["Initialize"]
      143 DUPTABLE                         R5 K2 [{"container", "text"}]
      144 DUPTABLE                         R6 K4 [{"tag"}]
      145 LOADK                            R7 K28 ["stroke-default"]
      146 SETTABLEKS                       R7 R6 K3 ["tag"]
      148 SETTABLEKS                       R6 R5 K0 ["container"]
      150 DUPTABLE                         R6 K4 [{"tag"}]
      151 LOADK                            R7 K29 ["content-default"]
      152 SETTABLEKS                       R7 R6 K3 ["tag"]
      154 SETTABLEKS                       R6 R5 K1 ["text"]
      156 SETTABLE                         R5 R3 R4
      157 GETUPVAL                         R4 2
      158 GETTABLEKS                       R4 R4 K30 ["Default"]
      160 DUPTABLE                         R5 K2 [{"container", "text"}]
      161 DUPTABLE                         R6 K4 [{"tag"}]
      162 LOADK                            R7 K28 ["stroke-default"]
      163 SETTABLEKS                       R7 R6 K3 ["tag"]
      165 SETTABLEKS                       R6 R5 K0 ["container"]
      167 DUPTABLE                         R6 K4 [{"tag"}]
      168 LOADK                            R7 K29 ["content-default"]
      169 SETTABLEKS                       R7 R6 K3 ["tag"]
      171 SETTABLEKS                       R6 R5 K1 ["text"]
      173 SETTABLE                         R5 R3 R4
      174 GETUPVAL                         R4 2
      175 GETTABLEKS                       R4 R4 K31 ["Hover"]
      177 DUPTABLE                         R5 K2 [{"container", "text"}]
      178 DUPTABLE                         R6 K4 [{"tag"}]
      179 LOADK                            R7 K32 ["stroke-emphasis"]
      180 SETTABLEKS                       R7 R6 K3 ["tag"]
      182 SETTABLEKS                       R6 R5 K0 ["container"]
      184 DUPTABLE                         R6 K4 [{"tag"}]
      185 LOADK                            R7 K33 ["content-emphasis"]
      186 SETTABLEKS                       R7 R6 K3 ["tag"]
      188 SETTABLEKS                       R6 R5 K1 ["text"]
      190 SETTABLE                         R5 R3 R4
      191 GETUPVAL                         R4 2
      192 GETTABLEKS                       R4 R4 K34 ["Pressed"]
      194 DUPTABLE                         R5 K2 [{"container", "text"}]
      195 DUPTABLE                         R6 K4 [{"tag"}]
      196 LOADK                            R7 K32 ["stroke-emphasis"]
      197 SETTABLEKS                       R7 R6 K3 ["tag"]
      199 SETTABLEKS                       R6 R5 K0 ["container"]
      201 DUPTABLE                         R6 K4 [{"tag"}]
      202 LOADK                            R7 K33 ["content-emphasis"]
      203 SETTABLEKS                       R7 R6 K3 ["tag"]
      205 SETTABLEKS                       R6 R5 K1 ["text"]
      207 SETTABLE                         R5 R3 R4
      208 DUPTABLE                         R4 K2 [{"container", "text"}]
      209 DUPTABLE                         R5 K4 [{"tag"}]
      210 LOADK                            R6 K35 ["stroke-alert"]
      211 SETTABLEKS                       R6 R5 K3 ["tag"]
      213 SETTABLEKS                       R5 R4 K0 ["container"]
      215 DUPTABLE                         R5 K4 [{"tag"}]
      216 LOADK                            R6 K29 ["content-default"]
      217 SETTABLEKS                       R6 R5 K3 ["tag"]
      219 SETTABLEKS                       R5 R4 K1 ["text"]
      221 SETTABLEKS                       R4 R3 K36 ["Error"]
      223 GETUPVAL                         R4 3
      224 GETTABLEKS                       R4 R4 K37 ["map"]
      226 MOVE                             R5 R3
      227 DUPCLOSURE                       R6 K38 [PROTO_0]
      228 CAPTURE                          UPVAL U3
      229 CALL                             R4 2 1
      230 DUPTABLE                         R5 K43 [{"common", "sizes", "states", "placeholderStates"}]
      231 SETTABLEKS                       R1 R5 K39 ["common"]
      233 SETTABLEKS                       R2 R5 K40 ["sizes"]
      235 SETTABLEKS                       R3 R5 K41 ["states"]
      237 SETTABLEKS                       R4 R5 K42 ["placeholderStates"]
      239 RETURN                           R5 1

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
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R12 R0 K15 ["Utility"]
       78 GETTABLEKS                       R12 R12 K21 ["Flags"]
       80 CALL                             R11 1 1
       81 DUPCLOSURE                       R12 K22 [PROTO_1]
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R2
       86 DUPCLOSURE                       R13 K23 [PROTO_2]
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R8
       90 RETURN                           R13 1
