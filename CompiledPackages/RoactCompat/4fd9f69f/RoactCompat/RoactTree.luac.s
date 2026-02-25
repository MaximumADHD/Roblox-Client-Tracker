PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["type"]
        5 FASTCALL1                        TOSTRING R1 ; [+2]
        6 GETIMPORT                        R0 K2 [tostring]
        8 CALL                             R0 1 1
        9 RETURN                           R0 1
       10 LOADK                            R0 K3 ["<unknown>"]
       11 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1
        7 LOADK                            R0 K0 [""]
        8 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["createPortal"]
        4 NEWTABLE                         R3 1 0
        6 GETUPVAL                         R4 2
        7 GETUPVAL                         R5 3
        8 SETTABLE                         R5 R3 R4
        9 GETUPVAL                         R4 4
       10 CALL                             R2 2 -1
       11 NAMECALL                         R0 R0 K1 ["render"]
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R4 K1 [_G]
        2 GETTABLEKS                       R3 R4 K2 ["__DEV__"]
        4 JUMPIFNOT                        R3 ; [+9]
        5 GETIMPORT                        R4 K1 [_G]
        7 GETTABLEKS                       R3 R4 K3 ["__COMPAT_WARNINGS__"]
        9 JUMPIFNOT                        R3 ; [+4]
       10 GETUPVAL                         R3 0
       11 LOADK                            R4 K4 ["mount"]
       12 LOADK                            R5 K5 ["Please use the createRoot API in ReactRoblox"]
       13 CALL                             R3 2 0
       14 JUMPIFEQKNIL                     R1 ; [+33]
       16 FASTCALL1                        TYPEOF R1 ; [+3]
       17 MOVE                             R4 R1
       18 GETIMPORT                        R3 K7 [typeof]
       20 CALL                             R3 1 1
       21 JUMPIFEQKS                       R3 K8 ["Instance"] ; [+26]
       23 GETIMPORT                        R3 K10 [error]
       25 GETIMPORT                        R4 K13 [string.format]
       27 LOADK                            R5 K14 ["Cannot mount element (`%s`) into a parent that is not a Roblox Instance (got type `%s`) \n%s"]
       28 JUMPIFNOT                        R0 ; [+7]
       29 GETTABLEKS                       R7 R0 K15 ["type"]
       31 FASTCALL1                        TOSTRING R7 ; [+2]
       32 GETIMPORT                        R6 K17 [tostring]
       34 CALL                             R6 1 1
       35 JUMP                             ; [+1]
       36 LOADK                            R6 K18 ["<unknown>"]
       37 FASTCALL1                        TYPEOF R1 ; [+3]
       38 MOVE                             R8 R1
       39 GETIMPORT                        R7 K7 [typeof]
       41 CALL                             R7 1 1
       42 NEWCLOSURE                       R8 P0
       43 CAPTURE                          REF R1
       44 CAPTURE                          UPVAL U1
       45 CALL                             R8 0 -1
       46 CALL                             R4 -1 -1
       47 CALL                             R3 -1 0
       48 LOADNIL                          R3
       49 GETIMPORT                        R5 K1 [_G]
       51 GETTABLEKS                       R4 R5 K19 ["__ROACT_17_COMPAT_LEGACY_ROOT__"]
       53 JUMPIFNOT                        R4 ; [+10]
       54 GETUPVAL                         R5 2
       55 GETTABLEKS                       R4 R5 K20 ["createLegacyRoot"]
       57 GETIMPORT                        R5 K22 [Instance.new]
       59 LOADK                            R6 K23 ["Folder"]
       60 CALL                             R5 1 -1
       61 CALL                             R4 -1 1
       62 MOVE                             R3 R4
       63 JUMP                             ; [+9]
       64 GETUPVAL                         R5 2
       65 GETTABLEKS                       R4 R5 K24 ["createRoot"]
       67 GETIMPORT                        R5 K22 [Instance.new]
       69 LOADK                            R6 K23 ["Folder"]
       70 CALL                             R5 1 -1
       71 CALL                             R4 -1 1
       72 MOVE                             R3 R4
       73 JUMPIFNOTEQKNIL                  R1 ; [+9]
       75 GETIMPORT                        R4 K22 [Instance.new]
       77 LOADK                            R5 K23 ["Folder"]
       78 CALL                             R4 1 1
       79 MOVE                             R1 R4
       80 LOADK                            R4 K25 ["Target"]
       81 SETTABLEKS                       R4 R1 K26 ["Name"]
       83 JUMPIFNOTEQKNIL                  R2 ; [+9]
       85 GETIMPORT                        R5 K1 [_G]
       87 GETTABLEKS                       R4 R5 K19 ["__ROACT_17_COMPAT_LEGACY_ROOT__"]
       89 JUMPIFNOT                        R4 ; [+2]
       90 LOADK                            R2 K27 ["ReactLegacyRoot"]
       91 JUMP                             ; [+1]
       92 LOADK                            R2 K28 ["ReactRoot"]
       93 GETIMPORT                        R5 K1 [_G]
       95 GETTABLEKS                       R4 R5 K29 ["__ROACT_17_INLINE_ACT__"]
       97 JUMPIFNOT                        R4 ; [+11]
       98 GETUPVAL                         R5 2
       99 GETTABLEKS                       R4 R5 K30 ["act"]
      101 NEWCLOSURE                       R5 P1
      102 CAPTURE                          REF R3
      103 CAPTURE                          UPVAL U2
      104 CAPTURE                          REF R2
      105 CAPTURE                          VAL R0
      106 CAPTURE                          REF R1
      107 CALL                             R4 1 0
      108 JUMP                             ; [+11]
      109 GETUPVAL                         R7 2
      110 GETTABLEKS                       R6 R7 K31 ["createPortal"]
      112 NEWTABLE                         R7 1 0
      114 SETTABLE                         R0 R7 R2
      115 MOVE                             R8 R1
      116 CALL                             R6 2 -1
      117 NAMECALL                         R4 R3 K32 ["render"]
      119 CALL                             R4 -1 0
      120 DUPTABLE                         R4 K36 [{"root", "parent", "key"}]
      121 SETTABLEKS                       R3 R4 K33 ["root"]
      123 SETTABLEKS                       R1 R4 K34 ["parent"]
      125 SETTABLEKS                       R2 R4 K35 ["key"]
      127 CLOSEUPVALS                      R1
      128 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["root"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["createPortal"]
        6 NEWTABLE                         R3 1 0
        8 GETUPVAL                         R4 2
        9 GETUPVAL                         R5 3
       10 SETTABLE                         R5 R3 R4
       11 GETUPVAL                         R4 4
       12 CALL                             R2 2 -1
       13 NAMECALL                         R0 R0 K2 ["render"]
       15 CALL                             R0 -1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R2 R3 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+9]
        5 GETIMPORT                        R3 K1 [_G]
        7 GETTABLEKS                       R2 R3 K3 ["__COMPAT_WARNINGS__"]
        9 JUMPIFNOT                        R2 ; [+4]
       10 GETUPVAL                         R2 0
       11 LOADK                            R3 K4 ["update"]
       12 LOADK                            R4 K5 ["Please use the createRoot API in ReactRoblox"]
       13 CALL                             R2 2 0
       14 GETTABLEKS                       R2 R0 K6 ["key"]
       16 GETTABLEKS                       R3 R0 K7 ["parent"]
       18 GETIMPORT                        R5 K1 [_G]
       20 GETTABLEKS                       R4 R5 K8 ["__ROACT_17_INLINE_ACT__"]
       22 JUMPIFNOT                        R4 ; [+11]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R4 R5 K9 ["act"]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 CALL                             R4 1 0
       33 RETURN                           R0 1
       34 GETTABLEKS                       R4 R0 K10 ["root"]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R6 R7 K11 ["createPortal"]
       39 NEWTABLE                         R7 1 0
       41 SETTABLE                         R1 R7 R2
       42 MOVE                             R8 R3
       43 CALL                             R6 2 -1
       44 NAMECALL                         R4 R4 K12 ["render"]
       46 CALL                             R4 -1 0
       47 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["root"]
        3 NAMECALL                         R0 R0 K1 ["unmount"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETIMPORT                        R2 K1 [_G]
        7 GETTABLEKS                       R1 R2 K3 ["__COMPAT_WARNINGS__"]
        9 JUMPIFNOT                        R1 ; [+4]
       10 GETUPVAL                         R1 0
       11 LOADK                            R2 K4 ["unmount"]
       12 LOADK                            R3 K5 ["Please use the createRoot API in ReactRoblox"]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R2 K1 [_G]
       16 GETTABLEKS                       R1 R2 K6 ["__ROACT_17_INLINE_ACT__"]
       18 JUMPIFNOT                        R1 ; [+7]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R1 R2 K7 ["act"]
       22 NEWCLOSURE                       R2 P0
       23 CAPTURE                          VAL R0
       24 CALL                             R1 1 0
       25 RETURN                           R0 0
       26 GETTABLEKS                       R1 R0 K8 ["root"]
       28 NAMECALL                         R1 R1 K4 ["unmount"]
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R3 R1 K6 ["util"]
       14 GETTABLEKS                       R2 R3 K7 ["inspect"]
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R0 K8 ["ReactRoblox"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K4 [require]
       23 GETIMPORT                        R7 K1 [script]
       25 GETTABLEKS                       R6 R7 K2 ["Parent"]
       27 GETTABLEKS                       R5 R6 K9 ["warnOnce"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K10 [PROTO_3]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 DUPCLOSURE                       R6 K11 [PROTO_5]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R3
       37 DUPCLOSURE                       R7 K12 [PROTO_7]
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 DUPTABLE                         R8 K16 [{"mount", "update", "unmount"}]
       41 SETTABLEKS                       R5 R8 K13 ["mount"]
       43 SETTABLEKS                       R6 R8 K14 ["update"]
       45 SETTABLEKS                       R7 R8 K15 ["unmount"]
       47 RETURN                           R8 1
