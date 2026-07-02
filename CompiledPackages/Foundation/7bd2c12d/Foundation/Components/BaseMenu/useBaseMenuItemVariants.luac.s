PROTO_0:
        0 DUPTABLE                         R1 K5 [{"container", "icon", "text", "title", "check"}]
        1 DUPTABLE                         R2 K8 [{["tag"] = "row align-y-center flex-x-between auto-x"}]
        2 SETTABLEKS                       R2 R1 K0 ["container"]
        4 DUPTABLE                         R2 K10 [{"tag", "style"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K11 ["FoundationBaseMenuItemImageRadius"]
        8 JUMPIFNOT                        R4 ; [+2]
        9 LOADK                            R3 K12 ["radius-small content-emphasis"]
       10 JUMP                             ; [+1]
       11 LOADK                            R3 K13 ["content-emphasis"]
       12 SETTABLEKS                       R3 R2 K6 ["tag"]
       14 GETTABLEKS                       R3 R0 K14 ["Color"]
       16 GETTABLEKS                       R3 R3 K15 ["Content"]
       18 GETTABLEKS                       R3 R3 K16 ["Emphasis"]
       20 SETTABLEKS                       R3 R2 K9 ["style"]
       22 SETTABLEKS                       R2 R1 K1 ["icon"]
       24 DUPTABLE                         R2 K18 [{["tag"] = "content-emphasis auto-xy fill text-align-x-left text-truncate-split"}]
       25 SETTABLEKS                       R2 R1 K2 ["text"]
       27 DUPTABLE                         R2 K20 [{["tag"] = "content-default auto-xy fill text-align-x-left text-truncate-split"}]
       28 SETTABLEKS                       R2 R1 K3 ["title"]
       30 DUPTABLE                         R2 K21 [{["tag"] = "content-emphasis", ["style"]}]
       31 GETTABLEKS                       R3 R0 K14 ["Color"]
       33 GETTABLEKS                       R3 R3 K15 ["Content"]
       35 GETTABLEKS                       R3 R3 K16 ["Emphasis"]
       37 SETTABLEKS                       R3 R2 K9 ["style"]
       39 SETTABLEKS                       R2 R1 K4 ["check"]
       41 NEWTABLE                         R2 4 0
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R3 R3 K22 ["XSmall"]
       46 DUPTABLE                         R4 K5 [{"container", "icon", "text", "title", "check"}]
       47 DUPTABLE                         R5 K24 [{["tag"] = "size-full-600 radius-small padding-x-medium gap-xsmall"}]
       48 SETTABLEKS                       R5 R4 K0 ["container"]
       50 DUPTABLE                         R5 K27 [{["tag"] = "size-400", ["size"]}]
       51 GETUPVAL                         R6 2
       52 GETTABLEKS                       R6 R6 K22 ["XSmall"]
       54 SETTABLEKS                       R6 R5 K26 ["size"]
       56 SETTABLEKS                       R5 R4 K1 ["icon"]
       58 DUPTABLE                         R5 K29 [{["tag"] = "text-body-small"}]
       59 SETTABLEKS                       R5 R4 K2 ["text"]
       61 DUPTABLE                         R5 K31 [{["tag"] = "text-caption-small"}]
       62 SETTABLEKS                       R5 R4 K3 ["title"]
       64 DUPTABLE                         R5 K33 [{["tag"] = "size-300", ["size"]}]
       65 GETTABLEKS                       R6 R0 K34 ["Size"]
       67 GETTABLEKS                       R6 R6 K35 ["Size_600"]
       69 SETTABLEKS                       R6 R5 K26 ["size"]
       71 SETTABLEKS                       R5 R4 K4 ["check"]
       73 SETTABLE                         R4 R2 R3
       74 GETUPVAL                         R3 1
       75 GETTABLEKS                       R3 R3 K36 ["Small"]
       77 DUPTABLE                         R4 K5 [{"container", "icon", "text", "title", "check"}]
       78 DUPTABLE                         R5 K38 [{["tag"] = "size-full-800 radius-medium padding-x-medium gap-xsmall"}]
       79 SETTABLEKS                       R5 R4 K0 ["container"]
       81 DUPTABLE                         R5 K40 [{["tag"] = "size-500", ["size"]}]
       82 GETUPVAL                         R6 2
       83 GETTABLEKS                       R6 R6 K36 ["Small"]
       85 SETTABLEKS                       R6 R5 K26 ["size"]
       87 SETTABLEKS                       R5 R4 K1 ["icon"]
       89 DUPTABLE                         R5 K29 [{["tag"] = "text-body-small"}]
       90 SETTABLEKS                       R5 R4 K2 ["text"]
       92 DUPTABLE                         R5 K31 [{["tag"] = "text-caption-small"}]
       93 SETTABLEKS                       R5 R4 K3 ["title"]
       95 DUPTABLE                         R5 K27 [{["tag"] = "size-400", ["size"]}]
       96 GETTABLEKS                       R6 R0 K34 ["Size"]
       98 GETTABLEKS                       R6 R6 K41 ["Size_700"]
      100 SETTABLEKS                       R6 R5 K26 ["size"]
      102 SETTABLEKS                       R5 R4 K4 ["check"]
      104 SETTABLE                         R4 R2 R3
      105 GETUPVAL                         R3 1
      106 GETTABLEKS                       R3 R3 K42 ["Medium"]
      108 DUPTABLE                         R4 K5 [{"container", "icon", "text", "title", "check"}]
      109 DUPTABLE                         R5 K44 [{["tag"] = "size-full-1000 radius-medium padding-x-medium gap-small"}]
      110 SETTABLEKS                       R5 R4 K0 ["container"]
      112 DUPTABLE                         R5 K46 [{["tag"] = "size-600", ["size"]}]
      113 GETUPVAL                         R6 2
      114 GETTABLEKS                       R6 R6 K42 ["Medium"]
      116 SETTABLEKS                       R6 R5 K26 ["size"]
      118 SETTABLEKS                       R5 R4 K1 ["icon"]
      120 DUPTABLE                         R5 K48 [{["tag"] = "text-body-medium"}]
      121 SETTABLEKS                       R5 R4 K2 ["text"]
      123 DUPTABLE                         R5 K50 [{["tag"] = "text-caption-medium"}]
      124 SETTABLEKS                       R5 R4 K3 ["title"]
      126 DUPTABLE                         R5 K40 [{["tag"] = "size-500", ["size"]}]
      127 GETTABLEKS                       R6 R0 K34 ["Size"]
      129 GETTABLEKS                       R6 R6 K51 ["Size_800"]
      131 SETTABLEKS                       R6 R5 K26 ["size"]
      133 SETTABLEKS                       R5 R4 K4 ["check"]
      135 SETTABLE                         R4 R2 R3
      136 GETUPVAL                         R3 1
      137 GETTABLEKS                       R3 R3 K52 ["Large"]
      139 DUPTABLE                         R4 K5 [{"container", "icon", "text", "title", "check"}]
      140 DUPTABLE                         R5 K54 [{["tag"] = "size-full-1200 radius-medium padding-x-large gap-small"}]
      141 SETTABLEKS                       R5 R4 K0 ["container"]
      143 DUPTABLE                         R5 K56 [{["tag"] = "size-700", ["size"]}]
      144 GETUPVAL                         R6 2
      145 GETTABLEKS                       R6 R6 K52 ["Large"]
      147 SETTABLEKS                       R6 R5 K26 ["size"]
      149 SETTABLEKS                       R5 R4 K1 ["icon"]
      151 DUPTABLE                         R5 K58 [{["tag"] = "text-body-large"}]
      152 SETTABLEKS                       R5 R4 K2 ["text"]
      154 DUPTABLE                         R5 K60 [{["tag"] = "text-caption-large"}]
      155 SETTABLEKS                       R5 R4 K3 ["title"]
      157 DUPTABLE                         R5 K46 [{["tag"] = "size-600", ["size"]}]
      158 GETTABLEKS                       R6 R0 K34 ["Size"]
      160 GETTABLEKS                       R6 R6 K61 ["Size_900"]
      162 SETTABLEKS                       R6 R5 K26 ["size"]
      164 SETTABLEKS                       R5 R4 K4 ["check"]
      166 SETTABLE                         R4 R2 R3
      167 NEWTABLE                         R3 2 0
      169 LOADB                            R4 0
      170 DUPTABLE                         R5 K62 [{"container"}]
      171 DUPTABLE                         R6 K64 [{["tag"] = ""}]
      172 SETTABLEKS                       R6 R5 K0 ["container"]
      174 SETTABLE                         R5 R3 R4
      175 LOADB                            R4 1
      176 DUPTABLE                         R5 K62 [{"container"}]
      177 DUPTABLE                         R6 K66 [{["tag"] = "bg-surface-200"}]
      178 SETTABLEKS                       R6 R5 K0 ["container"]
      180 SETTABLE                         R5 R3 R4
      181 DUPTABLE                         R4 K70 [{"common", "sizes", "isChecked"}]
      182 SETTABLEKS                       R1 R4 K67 ["common"]
      184 SETTABLEKS                       R2 R4 K68 ["sizes"]
      186 SETTABLEKS                       R3 R4 K69 ["isChecked"]
      188 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useVariants"]
        3 LOADK                            R4 K1 ["BaseMenuItem"]
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R0
        6 CALL                             R3 3 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R5 R3 K2 ["common"]
       10 GETTABLEKS                       R7 R3 K3 ["sizes"]
       12 GETTABLE                         R6 R7 R1
       13 GETTABLEKS                       R8 R3 K4 ["isChecked"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R3 K9 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Providers"]
       25 GETTABLEKS                       R4 R4 K11 ["Style"]
       27 GETTABLEKS                       R4 R4 K12 ["VariantsContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Utility"]
       34 GETTABLEKS                       R5 R5 K13 ["composeStyleVariant"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Providers"]
       41 GETTABLEKS                       R6 R6 K11 ["Style"]
       43 GETTABLEKS                       R6 R6 K14 ["Tokens"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K15 ["Components"]
       50 GETTABLEKS                       R7 R7 K16 ["Types"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K8 ["Enums"]
       57 GETTABLEKS                       R8 R8 K17 ["IconSize"]
       59 CALL                             R7 1 1
       60 DUPCLOSURE                       R8 K18 [PROTO_0]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R7
       64 DUPCLOSURE                       R9 K19 [PROTO_1]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R4
       68 RETURN                           R9 1
