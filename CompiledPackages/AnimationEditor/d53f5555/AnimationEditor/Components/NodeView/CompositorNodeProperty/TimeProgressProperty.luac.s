PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Value"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADN                            R0 0
        5 RETURN                           R0 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["Value"]
        9 GETTABLEKS                       R1 R2 K2 ["StartTime"]
       11 ORK                              R0 R1 K1 [0]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K0 ["Value"]
       15 GETTABLEKS                       R2 R3 K3 ["EndTime"]
       17 JUMPIFNOT                        R2 ; [+13]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K0 ["Value"]
       21 GETTABLEKS                       R2 R3 K3 ["EndTime"]
       23 JUMPIFEQKN                       R2 K1 [0] ; [+7]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R2 R3 K0 ["Value"]
       28 GETTABLEKS                       R1 R2 K3 ["EndTime"]
       30 JUMP                             ; [+13]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K0 ["Value"]
       34 GETTABLEKS                       R2 R3 K4 ["Duration"]
       36 JUMPIFNOT                        R2 ; [+6]
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R2 R3 K0 ["Value"]
       40 GETTABLEKS                       R1 R2 K4 ["Duration"]
       42 JUMP                             ; [+1]
       43 LOADN                            R1 0
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R4 R5 K0 ["Value"]
       47 GETTABLEKS                       R3 R4 K5 ["Time"]
       49 ORK                              R2 R3 K1 [0]
       50 SUB                              R3 R1 R0
       51 JUMPIFNOTEQKN                    R3 K1 [0] ; [+3]
       53 LOADN                            R4 0
       54 RETURN                           R4 1
       55 SUB                              R5 R2 R0
       56 DIV                              R4 R5 R3
       57 LOADN                            R7 100
       58 MUL                              R6 R7 R4
       59 LOADN                            R7 0
       60 LOADN                            R8 100
       61 FASTCALL                         MATH_CLAMP ; [+2]
       62 GETIMPORT                        R5 K8 [math.clamp]
       64 CALL                             R5 3 1
       65 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["formatTimestamp"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Value"]
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K1 ["Value"]
       10 GETTABLEKS                       R1 R2 K2 ["Time"]
       12 JUMPIF                           R1 ; [+1]
       13 LOADN                            R1 0
       14 CALL                             R0 1 -1
       15 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["Value"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["useMemo"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R0
       18 NEWTABLE                         R4 0 1
       20 GETTABLEKS                       R5 R0 K1 ["Value"]
       22 SETLIST                          R4 R5 1 [1]
       24 CALL                             R2 2 1
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K2 ["createElement"]
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R4 R5 K3 ["View"]
       31 DUPTABLE                         R5 K6 [{"tag", "LayoutOrder"}]
       32 GETUPVAL                         R8 2
       33 GETTABLEKS                       R7 R8 K7 ["Hooks"]
       35 GETTABLEKS                       R6 R7 K8 ["useDefaultTags"]
       37 GETTABLEKS                       R7 R0 K9 ["tags"]
       39 LOADK                            R8 K10 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       40 CALL                             R6 2 1
       41 SETTABLEKS                       R6 R5 K4 ["tag"]
       43 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       45 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       47 DUPTABLE                         R6 K13 [{"CompositorNodeInputLabel", "Input"}]
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R7 R8 K2 ["createElement"]
       51 GETUPVAL                         R8 3
       52 DUPTABLE                         R9 K16 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       53 NEWTABLE                         R10 1 0
       55 LOADB                            R11 1
       56 SETTABLEKS                       R11 R10 K17 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       58 SETTABLEKS                       R10 R9 K4 ["tag"]
       60 SETTABLEKS                       R2 R9 K14 ["Text"]
       62 LOADN                            R10 1
       63 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       65 GETTABLEKS                       R10 R0 K18 ["IsReadOnly"]
       67 JUMPIF                           R10 ; [+4]
       68 GETTABLEKS                       R10 R0 K19 ["IsDisabled"]
       70 JUMPIF                           R10 ; [+1]
       71 LOADB                            R10 0
       72 SETTABLEKS                       R10 R9 K15 ["isDisabled"]
       74 CALL                             R7 2 1
       75 SETTABLEKS                       R7 R6 K11 ["CompositorNodeInputLabel"]
       77 GETUPVAL                         R8 0
       78 GETTABLEKS                       R7 R8 K2 ["createElement"]
       80 GETUPVAL                         R9 2
       81 GETTABLEKS                       R8 R9 K20 ["Progress"]
       83 DUPTABLE                         R9 K25 [{"shape", "value", "size", "width", "LayoutOrder"}]
       84 GETUPVAL                         R13 2
       85 GETTABLEKS                       R12 R13 K26 ["Enums"]
       87 GETTABLEKS                       R11 R12 K27 ["ProgressShape"]
       89 GETTABLEKS                       R10 R11 K28 ["Bar"]
       91 SETTABLEKS                       R10 R9 K21 ["shape"]
       93 SETTABLEKS                       R1 R9 K22 ["value"]
       95 GETUPVAL                         R13 2
       96 GETTABLEKS                       R12 R13 K26 ["Enums"]
       98 GETTABLEKS                       R11 R12 K29 ["InputSize"]
      100 GETTABLEKS                       R10 R11 K30 ["Medium"]
      102 SETTABLEKS                       R10 R9 K23 ["size"]
      104 GETIMPORT                        R10 K33 [UDim.new]
      106 LOADN                            R11 0
      107 LOADN                            R12 90
      108 CALL                             R10 2 1
      109 SETTABLEKS                       R10 R9 K24 ["width"]
      111 LOADN                            R10 2
      112 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
      114 CALL                             R7 2 1
      115 SETTABLEKS                       R7 R6 K12 ["Input"]
      117 CALL                             R3 3 -1
      118 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["NodeView"]
       20 GETTABLEKS                       R4 R5 K10 ["CompositorNodeProperty"]
       22 GETTABLEKS                       R3 R4 K11 ["PropertyLabel"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R7 R0 K8 ["Components"]
       29 GETTABLEKS                       R6 R7 K9 ["NodeView"]
       31 GETTABLEKS                       R5 R6 K10 ["CompositorNodeProperty"]
       33 GETTABLEKS                       R4 R5 K12 ["PropertyUtils"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R6 R0 K6 ["Parent"]
       40 GETTABLEKS                       R5 R6 K13 ["React"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K14 [PROTO_2]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 RETURN                           R5 1
