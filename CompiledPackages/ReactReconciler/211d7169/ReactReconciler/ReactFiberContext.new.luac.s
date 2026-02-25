PROTO_0:
        0 JUMPIFNOT                        R2 ; [+6]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R1
        3 CALL                             R3 1 1
        4 JUMPIFNOT                        R3 ; [+2]
        5 GETUPVAL                         R3 1
        6 RETURN                           R3 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K0 ["current"]
       10 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["stateNode"]
        2 SETTABLEKS                       R1 R3 K1 ["__reactInternalMemoizedUnmaskedChildContext"]
        4 SETTABLEKS                       R2 R3 K2 ["__reactInternalMemoizedMaskedChildContext"]
        6 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["type"]
        2 FASTCALL1                        TYPEOF R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K2 [typeof]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K3 ["function"] ; [+2]
        9 RETURN                           R1 1
       10 GETTABLEKS                       R3 R2 K4 ["contextTypes"]
       12 JUMPIF                           R3 ; [+2]
       13 GETUPVAL                         R4 0
       14 RETURN                           R4 1
       15 GETTABLEKS                       R4 R0 K5 ["stateNode"]
       17 JUMPIFNOT                        R4 ; [+7]
       18 GETTABLEKS                       R5 R4 K6 ["__reactInternalMemoizedUnmaskedChildContext"]
       20 JUMPIFNOTEQ                      R5 R1 ; [+4]
       22 GETTABLEKS                       R5 R4 K7 ["__reactInternalMemoizedMaskedChildContext"]
       24 RETURN                           R5 1
       25 NEWTABLE                         R5 0 0
       27 GETIMPORT                        R6 K9 [pairs]
       29 MOVE                             R7 R3
       30 CALL                             R6 1 3
       31 FORGPREP_NEXT                    R6
       32 GETTABLE                         R11 R1 R9
       33 SETTABLE                         R11 R5 R9
       34 FORGLOOP                         R6 2 ; [-3]
       36 GETIMPORT                        R7 K11 [_G]
       38 GETTABLEKS                       R6 R7 K12 ["__DEV__"]
       40 JUMPIF                           R6 ; [+5]
       41 GETIMPORT                        R7 K11 [_G]
       43 GETTABLEKS                       R6 R7 K13 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
       45 JUMPIFNOT                        R6 ; [+11]
       46 GETUPVAL                         R7 1
       47 MOVE                             R8 R2
       48 CALL                             R7 1 1
       49 ORK                              R6 R7 K14 ["Unknown"]
       50 GETUPVAL                         R7 2
       51 MOVE                             R8 R3
       52 LOADNIL                          R9
       53 MOVE                             R10 R5
       54 LOADK                            R11 K15 ["context"]
       55 MOVE                             R12 R6
       56 CALL                             R7 5 0
       57 JUMPIFNOT                        R4 ; [+6]
       58 GETTABLEKS                       R6 R0 K5 ["stateNode"]
       60 SETTABLEKS                       R1 R6 K6 ["__reactInternalMemoizedUnmaskedChildContext"]
       62 SETTABLEKS                       R5 R6 K7 ["__reactInternalMemoizedMaskedChildContext"]
       64 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 LOADB                            R0 0
        3 RETURN                           R0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 RETURN                           R0 1

PROTO_4:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K3 ["childContextTypes"]
       11 JUMPIFNOTEQKNIL                  R1 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R2 2
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R2 2
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["current"]
        3 GETUPVAL                         R4 1
        4 JUMPIFEQ                         R3 R4 ; [+9]
        6 GETIMPORT                        R3 K2 [error]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R4 R5 K3 ["new"]
       11 LOADK                            R5 K4 ["Unexpected context found on stack. This error is likely caused by a bug in React. Please file an issue."]
       12 CALL                             R4 1 -1
       13 CALL                             R3 -1 0
       14 GETUPVAL                         R3 3
       15 GETUPVAL                         R4 0
       16 MOVE                             R5 R1
       17 MOVE                             R6 R0
       18 CALL                             R3 3 0
       19 GETUPVAL                         R3 3
       20 GETUPVAL                         R4 4
       21 MOVE                             R5 R2
       22 MOVE                             R6 R0
       23 CALL                             R3 3 0
       24 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["stateNode"]
        2 GETTABLEKS                       R4 R1 K1 ["childContextTypes"]
        4 GETTABLEKS                       R6 R3 K2 ["getChildContext"]
        6 FASTCALL1                        TYPEOF R6 ; [+2]
        7 GETIMPORT                        R5 K4 [typeof]
        9 CALL                             R5 1 1
       10 JUMPIFEQKS                       R5 K5 ["function"] ; [+24]
       12 GETIMPORT                        R6 K7 [_G]
       14 GETTABLEKS                       R5 R6 K8 ["__DEV__"]
       16 JUMPIFNOT                        R5 ; [+17]
       17 GETUPVAL                         R6 0
       18 MOVE                             R7 R1
       19 CALL                             R6 1 1
       20 ORK                              R5 R6 K9 ["Unknown"]
       21 GETUPVAL                         R7 1
       22 GETTABLE                         R6 R7 R5
       23 JUMPIF                           R6 ; [+10]
       24 GETUPVAL                         R6 1
       25 LOADB                            R7 1
       26 SETTABLE                         R7 R6 R5
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R6 R7 K10 ["error"]
       30 LOADK                            R7 K11 ["%s.childContextTypes is specified but there is no getChildContext() method on the instance. You can either define getChildContext() on %s or remove childContextTypes from it."]
       31 MOVE                             R8 R5
       32 MOVE                             R9 R5
       33 CALL                             R6 3 0
       34 RETURN                           R2 1
       35 NAMECALL                         R5 R3 K2 ["getChildContext"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K13 [pairs]
       40 MOVE                             R7 R5
       41 CALL                             R6 1 3
       42 FORGPREP_NEXT                    R6
       43 GETTABLE                         R11 R4 R9
       44 JUMPIFNOTEQKNIL                  R11 ; [+18]
       46 GETUPVAL                         R12 0
       47 MOVE                             R13 R1
       48 CALL                             R12 1 1
       49 ORK                              R11 R12 K9 ["Unknown"]
       50 GETIMPORT                        R12 K14 [error]
       52 GETUPVAL                         R14 3
       53 GETTABLEKS                       R13 R14 K15 ["new"]
       55 GETIMPORT                        R14 K18 [string.format]
       57 LOADK                            R15 K19 ["%s.getChildContext(): key \"%s\" is not defined in childContextTypes."]
       58 MOVE                             R16 R11
       59 MOVE                             R17 R9
       60 CALL                             R14 3 -1
       61 CALL                             R13 -1 -1
       62 CALL                             R12 -1 0
       63 FORGLOOP                         R6 2 ; [-21]
       65 GETIMPORT                        R7 K7 [_G]
       67 GETTABLEKS                       R6 R7 K8 ["__DEV__"]
       69 JUMPIF                           R6 ; [+5]
       70 GETIMPORT                        R7 K7 [_G]
       72 GETTABLEKS                       R6 R7 K20 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
       74 JUMPIFNOT                        R6 ; [+11]
       75 GETUPVAL                         R7 0
       76 MOVE                             R8 R1
       77 CALL                             R7 1 1
       78 ORK                              R6 R7 K9 ["Unknown"]
       79 GETUPVAL                         R7 4
       80 MOVE                             R8 R4
       81 LOADNIL                          R9
       82 MOVE                             R10 R5
       83 LOADK                            R11 K21 ["child context"]
       84 MOVE                             R12 R6
       85 CALL                             R7 5 0
       86 GETUPVAL                         R8 5
       87 GETTABLEKS                       R7 R8 K22 ["Dictionary"]
       89 GETTABLEKS                       R6 R7 K23 ["join"]
       91 MOVE                             R7 R2
       92 MOVE                             R8 R5
       93 CALL                             R6 2 -1
       94 RETURN                           R6 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["stateNode"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["__reactInternalMemoizedMergedChildContext"]
        5 JUMPIF                           R2 ; [+1]
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["current"]
       10 SETUPVAL                         R3 1
       11 GETUPVAL                         R3 3
       12 GETUPVAL                         R4 2
       13 MOVE                             R5 R2
       14 MOVE                             R6 R0
       15 CALL                             R3 3 0
       16 GETUPVAL                         R3 3
       17 GETUPVAL                         R4 4
       18 GETUPVAL                         R6 4
       19 GETTABLEKS                       R5 R6 K2 ["current"]
       21 MOVE                             R6 R0
       22 CALL                             R3 3 0
       23 LOADB                            R3 1
       24 RETURN                           R3 1

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["stateNode"]
        2 JUMPIF                           R3 ; [+8]
        3 GETIMPORT                        R4 K2 [error]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K3 ["new"]
        8 LOADK                            R6 K4 ["Expected to have an instance by this point. This error is likely caused by a bug in React. Please file an issue."]
        9 CALL                             R5 1 -1
       10 CALL                             R4 -1 0
       11 JUMPIFNOT                        R2 ; [+26]
       12 GETUPVAL                         R4 1
       13 MOVE                             R5 R0
       14 MOVE                             R6 R1
       15 GETUPVAL                         R7 2
       16 CALL                             R4 3 1
       17 SETTABLEKS                       R4 R3 K5 ["__reactInternalMemoizedMergedChildContext"]
       19 GETUPVAL                         R5 3
       20 GETUPVAL                         R6 4
       21 MOVE                             R7 R0
       22 CALL                             R5 2 0
       23 GETUPVAL                         R5 3
       24 GETUPVAL                         R6 5
       25 MOVE                             R7 R0
       26 CALL                             R5 2 0
       27 GETUPVAL                         R5 6
       28 GETUPVAL                         R6 5
       29 MOVE                             R7 R4
       30 MOVE                             R8 R0
       31 CALL                             R5 3 0
       32 GETUPVAL                         R5 6
       33 GETUPVAL                         R6 4
       34 MOVE                             R7 R2
       35 MOVE                             R8 R0
       36 CALL                             R5 3 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R4 3
       39 GETUPVAL                         R5 4
       40 MOVE                             R6 R0
       41 CALL                             R4 2 0
       42 GETUPVAL                         R4 6
       43 GETUPVAL                         R5 4
       44 MOVE                             R6 R2
       45 MOVE                             R7 R0
       46 CALL                             R4 3 0
       47 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["tag"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+5]
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 JUMPIF                           R1 ; [+8]
        9 GETIMPORT                        R1 K2 [error]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R2 R3 K3 ["new"]
       14 LOADK                            R3 K4 ["Expected subtree parent to be a mounted class component. This error is likely caused by a bug in React. Please file an issue."]
       15 CALL                             R2 1 -1
       16 CALL                             R1 -1 0
       17 MOVE                             R1 R0
       18 GETTABLEKS                       R2 R1 K0 ["tag"]
       20 GETUPVAL                         R3 3
       21 JUMPIFNOTEQ                      R2 R3 ; [+6]
       23 GETTABLEKS                       R3 R1 K5 ["stateNode"]
       25 GETTABLEKS                       R2 R3 K6 ["context"]
       27 RETURN                           R2 1
       28 GETTABLEKS                       R2 R1 K0 ["tag"]
       30 GETUPVAL                         R3 0
       31 JUMPIFNOTEQ                      R2 R3 ; [+12]
       33 GETTABLEKS                       R2 R1 K7 ["type"]
       35 GETTABLEKS                       R3 R2 K8 ["childContextTypes"]
       37 JUMPIFEQKNIL                     R3 ; [+6]
       39 GETTABLEKS                       R4 R1 K5 ["stateNode"]
       41 GETTABLEKS                       R3 R4 K9 ["__reactInternalMemoizedMergedChildContext"]
       43 RETURN                           R3 1
       44 GETTABLEKS                       R1 R1 K10 ["return_"]
       46 JUMPIFEQKNIL                     R1 ; [+2]
       48 JUMPBACK                         ; [-31]
       49 GETIMPORT                        R2 K2 [error]
       51 GETUPVAL                         R4 2
       52 GETTABLEKS                       R3 R4 K3 ["new"]
       54 LOADK                            R4 K11 ["Found unexpected detached subtree parent. This error is likely caused by a bug in React. Please file an issue."]
       55 CALL                             R3 1 -1
       56 CALL                             R2 -1 0
       57 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Object"]
       14 GETTABLEKS                       R3 R1 K7 ["Error"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R0 K8 ["Cryo"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R6 K4 [require]
       23 GETTABLEKS                       R7 R0 K9 ["Shared"]
       25 CALL                             R6 1 1
       26 GETTABLEKS                       R5 R6 K10 ["console"]
       28 GETIMPORT                        R6 K4 [require]
       30 GETIMPORT                        R9 K1 [script]
       32 GETTABLEKS                       R8 R9 K2 ["Parent"]
       34 GETTABLEKS                       R7 R8 K11 ["ReactInternalTypes"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K4 [require]
       39 GETIMPORT                        R10 K1 [script]
       41 GETTABLEKS                       R9 R10 K2 ["Parent"]
       43 GETTABLEKS                       R8 R9 K12 ["ReactFiberStack.new"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R9 K4 [require]
       48 GETIMPORT                        R12 K1 [script]
       50 GETTABLEKS                       R11 R12 K2 ["Parent"]
       52 GETTABLEKS                       R10 R11 K13 ["ReactFiberTreeReflection"]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R8 R9 K14 ["isFiberMounted"]
       57 GETIMPORT                        R11 K4 [require]
       59 GETTABLEKS                       R12 R0 K9 ["Shared"]
       61 CALL                             R11 1 1
       62 GETTABLEKS                       R10 R11 K15 ["ReactFeatureFlags"]
       64 GETTABLEKS                       R9 R10 K16 ["disableLegacyContext"]
       66 GETIMPORT                        R10 K4 [require]
       68 GETIMPORT                        R13 K1 [script]
       70 GETTABLEKS                       R12 R13 K2 ["Parent"]
       72 GETTABLEKS                       R11 R12 K17 ["ReactWorkTags"]
       74 CALL                             R10 1 1
       75 GETTABLEKS                       R11 R10 K18 ["ClassComponent"]
       77 GETTABLEKS                       R12 R10 K19 ["HostRoot"]
       79 GETIMPORT                        R14 K4 [require]
       81 GETTABLEKS                       R15 R0 K9 ["Shared"]
       83 CALL                             R14 1 1
       84 GETTABLEKS                       R13 R14 K20 ["getComponentName"]
       86 GETIMPORT                        R15 K4 [require]
       88 GETTABLEKS                       R16 R0 K9 ["Shared"]
       90 CALL                             R15 1 1
       91 GETTABLEKS                       R14 R15 K21 ["checkPropTypes"]
       93 GETTABLEKS                       R15 R7 K22 ["createCursor"]
       95 GETTABLEKS                       R16 R7 K23 ["push"]
       97 GETTABLEKS                       R17 R7 K24 ["pop"]
       99 LOADNIL                          R18
      100 GETIMPORT                        R20 K26 [_G]
      102 GETTABLEKS                       R19 R20 K27 ["__DEV__"]
      104 JUMPIFNOT                        R19 ; [+2]
      105 NEWTABLE                         R18 0 0
      107 NEWTABLE                         R19 0 0
      109 GETIMPORT                        R21 K26 [_G]
      111 GETTABLEKS                       R20 R21 K27 ["__DEV__"]
      113 JUMPIFNOT                        R20 ; [+4]
      114 GETTABLEKS                       R20 R2 K28 ["freeze"]
      116 MOVE                             R21 R19
      117 CALL                             R20 1 0
      118 MOVE                             R20 R15
      119 MOVE                             R21 R19
      120 CALL                             R20 1 1
      121 MOVE                             R21 R15
      122 LOADB                            R22 0
      123 CALL                             R21 1 1
      124 MOVE                             R22 R19
      125 LOADNIL                          R23
      126 NEWCLOSURE                       R24 P0
      127 CAPTURE                          REF R23
      128 CAPTURE                          REF R22
      129 CAPTURE                          VAL R20
      130 DUPCLOSURE                       R25 K29 [PROTO_1]
      131 DUPCLOSURE                       R26 K30 [PROTO_2]
      132 CAPTURE                          VAL R19
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R14
      135 DUPCLOSURE                       R27 K31 [PROTO_3]
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R21
      138 DUPCLOSURE                       R23 K32 [PROTO_4]
      139 DUPCLOSURE                       R28 K33 [PROTO_5]
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R21
      142 CAPTURE                          VAL R20
      143 DUPCLOSURE                       R29 K34 [PROTO_6]
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R21
      146 CAPTURE                          VAL R20
      147 DUPCLOSURE                       R30 K35 [PROTO_7]
      148 CAPTURE                          VAL R20
      149 CAPTURE                          VAL R19
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R21
      153 NEWCLOSURE                       R31 P8
      154 CAPTURE                          VAL R13
      155 CAPTURE                          REF R18
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R4
      160 NEWCLOSURE                       R32 P9
      161 CAPTURE                          VAL R19
      162 CAPTURE                          REF R22
      163 CAPTURE                          VAL R20
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R21
      166 NEWCLOSURE                       R33 P10
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R31
      169 CAPTURE                          REF R22
      170 CAPTURE                          VAL R17
      171 CAPTURE                          VAL R21
      172 CAPTURE                          VAL R20
      173 CAPTURE                          VAL R16
      174 DUPCLOSURE                       R34 K36 [PROTO_11]
      175 CAPTURE                          VAL R11
      176 CAPTURE                          VAL R8
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R12
      179 DUPTABLE                         R35 K50 [{"emptyContextObject", "getUnmaskedContext", "cacheContext", "getMaskedContext", "hasContextChanged", "popContext", "popTopLevelContextObject", "pushTopLevelContextObject", "processChildContext", "isContextProvider", "pushContextProvider", "invalidateContextProvider", "findCurrentUnmaskedContext"}]
      180 SETTABLEKS                       R19 R35 K37 ["emptyContextObject"]
      182 SETTABLEKS                       R24 R35 K38 ["getUnmaskedContext"]
      184 SETTABLEKS                       R25 R35 K39 ["cacheContext"]
      186 SETTABLEKS                       R26 R35 K40 ["getMaskedContext"]
      188 SETTABLEKS                       R27 R35 K41 ["hasContextChanged"]
      190 SETTABLEKS                       R28 R35 K42 ["popContext"]
      192 SETTABLEKS                       R29 R35 K43 ["popTopLevelContextObject"]
      194 SETTABLEKS                       R30 R35 K44 ["pushTopLevelContextObject"]
      196 SETTABLEKS                       R31 R35 K45 ["processChildContext"]
      198 SETTABLEKS                       R23 R35 K46 ["isContextProvider"]
      200 SETTABLEKS                       R32 R35 K47 ["pushContextProvider"]
      202 SETTABLEKS                       R33 R35 K48 ["invalidateContextProvider"]
      204 SETTABLEKS                       R34 R35 K49 ["findCurrentUnmaskedContext"]
      206 CLOSEUPVALS                      R18
      207 RETURN                           R35 1
