PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["type"]
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
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["createPortal"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["__DEV__"]
        3 JUMPIFNOT                        R3 ; [+8]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["__COMPAT_WARNINGS__"]
        7 JUMPIFNOT                        R3 ; [+4]
        8 GETUPVAL                         R3 1
        9 LOADK                            R4 K2 ["mount"]
       10 LOADK                            R5 K3 ["Please use the createRoot API in ReactRoblox"]
       11 CALL                             R3 2 0
       12 JUMPIFEQKNIL                     R1 ; [+33]
       14 FASTCALL1                        TYPEOF R1 ; [+3]
       15 MOVE                             R4 R1
       16 GETIMPORT                        R3 K5 [typeof]
       18 CALL                             R3 1 1
       19 JUMPIFEQKS                       R3 K6 ["Instance"] ; [+26]
       21 GETIMPORT                        R3 K8 [error]
       23 GETIMPORT                        R4 K11 [string.format]
       25 LOADK                            R5 K12 ["Cannot mount element (`%s`) into a parent that is not a Roblox Instance (got type `%s`) \n%s"]
       26 JUMPIFNOT                        R0 ; [+7]
       27 GETTABLEKS                       R7 R0 K13 ["type"]
       29 FASTCALL1                        TOSTRING R7 ; [+2]
       30 GETIMPORT                        R6 K15 [tostring]
       32 CALL                             R6 1 1
       33 JUMP                             ; [+1]
       34 LOADK                            R6 K16 ["<unknown>"]
       35 FASTCALL1                        TYPEOF R1 ; [+3]
       36 MOVE                             R8 R1
       37 GETIMPORT                        R7 K5 [typeof]
       39 CALL                             R7 1 1
       40 NEWCLOSURE                       R8 P0
       41 CAPTURE                          REF R1
       42 CAPTURE                          UPVAL U2
       43 CALL                             R8 0 -1
       44 CALL                             R4 -1 -1
       45 CALL                             R3 -1 0
       46 LOADNIL                          R3
       47 GETIMPORT                        R4 K18 [_G]
       49 GETTABLEKS                       R4 R4 K19 ["__ROACT_17_COMPAT_LEGACY_ROOT__"]
       51 JUMPIFNOT                        R4 ; [+10]
       52 GETUPVAL                         R4 3
       53 GETTABLEKS                       R4 R4 K20 ["createLegacyRoot"]
       55 GETIMPORT                        R5 K22 [Instance.new]
       57 LOADK                            R6 K23 ["Folder"]
       58 CALL                             R5 1 -1
       59 CALL                             R4 -1 1
       60 MOVE                             R3 R4
       61 JUMP                             ; [+9]
       62 GETUPVAL                         R4 3
       63 GETTABLEKS                       R4 R4 K24 ["createRoot"]
       65 GETIMPORT                        R5 K22 [Instance.new]
       67 LOADK                            R6 K23 ["Folder"]
       68 CALL                             R5 1 -1
       69 CALL                             R4 -1 1
       70 MOVE                             R3 R4
       71 JUMPIFNOTEQKNIL                  R1 ; [+9]
       73 GETIMPORT                        R4 K22 [Instance.new]
       75 LOADK                            R5 K23 ["Folder"]
       76 CALL                             R4 1 1
       77 LOADK                            R5 K25 ["Target"]
       78 SETTABLEKS                       R5 R4 K26 ["Name"]
       80 MOVE                             R1 R4
       81 JUMPIFNOTEQKNIL                  R2 ; [+9]
       83 GETIMPORT                        R4 K18 [_G]
       85 GETTABLEKS                       R4 R4 K19 ["__ROACT_17_COMPAT_LEGACY_ROOT__"]
       87 JUMPIFNOT                        R4 ; [+2]
       88 LOADK                            R2 K27 ["ReactLegacyRoot"]
       89 JUMP                             ; [+1]
       90 LOADK                            R2 K28 ["ReactRoot"]
       91 GETUPVAL                         R4 0
       92 GETTABLEKS                       R4 R4 K29 ["__ROACT_17_INLINE_ACT__"]
       94 JUMPIFNOT                        R4 ; [+11]
       95 GETUPVAL                         R4 3
       96 GETTABLEKS                       R4 R4 K30 ["act"]
       98 NEWCLOSURE                       R5 P1
       99 CAPTURE                          REF R3
      100 CAPTURE                          UPVAL U3
      101 CAPTURE                          REF R2
      102 CAPTURE                          VAL R0
      103 CAPTURE                          REF R1
      104 CALL                             R4 1 0
      105 JUMP                             ; [+11]
      106 GETUPVAL                         R6 3
      107 GETTABLEKS                       R6 R6 K31 ["createPortal"]
      109 NEWTABLE                         R7 1 0
      111 SETTABLE                         R0 R7 R2
      112 MOVE                             R8 R1
      113 CALL                             R6 2 -1
      114 NAMECALL                         R4 R3 K32 ["render"]
      116 CALL                             R4 -1 0
      117 DUPTABLE                         R4 K36 [{"root", "parent", "key"}]
      118 SETTABLEKS                       R3 R4 K33 ["root"]
      120 SETTABLEKS                       R1 R4 K34 ["parent"]
      122 SETTABLEKS                       R2 R4 K35 ["key"]
      124 CLOSEUPVALS                      R1
      125 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["root"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["createPortal"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["__DEV__"]
        3 JUMPIFNOT                        R2 ; [+8]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["__COMPAT_WARNINGS__"]
        7 JUMPIFNOT                        R2 ; [+4]
        8 GETUPVAL                         R2 1
        9 LOADK                            R3 K2 ["update"]
       10 LOADK                            R4 K3 ["Please use the createRoot API in ReactRoblox"]
       11 CALL                             R2 2 0
       12 GETTABLEKS                       R2 R0 K4 ["key"]
       14 GETTABLEKS                       R3 R0 K5 ["parent"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K6 ["__ROACT_17_INLINE_ACT__"]
       19 JUMPIFNOT                        R4 ; [+11]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K7 ["act"]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R3
       29 CALL                             R4 1 0
       30 RETURN                           R0 1
       31 GETTABLEKS                       R4 R0 K8 ["root"]
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R6 R6 K9 ["createPortal"]
       36 NEWTABLE                         R7 1 0
       38 SETTABLE                         R1 R7 R2
       39 MOVE                             R8 R3
       40 CALL                             R6 2 -1
       41 NAMECALL                         R4 R4 K10 ["render"]
       43 CALL                             R4 -1 0
       44 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["root"]
        3 NAMECALL                         R0 R0 K1 ["unmount"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["__DEV__"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["__COMPAT_WARNINGS__"]
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETUPVAL                         R1 1
        9 LOADK                            R2 K2 ["unmount"]
       10 LOADK                            R3 K3 ["Please use the createRoot API in ReactRoblox"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["__ROACT_17_INLINE_ACT__"]
       15 JUMPIFNOT                        R1 ; [+7]
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R1 R1 K5 ["act"]
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          VAL R0
       21 CALL                             R1 1 0
       22 RETURN                           R0 0
       23 GETTABLEKS                       R1 R0 K6 ["root"]
       25 NAMECALL                         R1 R1 K2 ["unmount"]
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K7 ["util"]
       19 GETTABLEKS                       R3 R3 K8 ["inspect"]
       21 GETIMPORT                        R4 K4 [require]
       23 GETTABLEKS                       R5 R0 K9 ["ReactRoblox"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K4 [require]
       28 GETIMPORT                        R6 K1 [script]
       30 GETTABLEKS                       R6 R6 K2 ["Parent"]
       32 GETTABLEKS                       R6 R6 K10 ["warnOnce"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K11 [PROTO_3]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R4
       40 DUPCLOSURE                       R7 K12 [PROTO_5]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R4
       44 DUPCLOSURE                       R8 K13 [PROTO_7]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R4
       48 DUPTABLE                         R9 K17 [{"mount", "update", "unmount"}]
       49 SETTABLEKS                       R6 R9 K14 ["mount"]
       51 SETTABLEKS                       R7 R9 K15 ["update"]
       53 SETTABLEKS                       R8 R9 K16 ["unmount"]
       55 RETURN                           R9 1
