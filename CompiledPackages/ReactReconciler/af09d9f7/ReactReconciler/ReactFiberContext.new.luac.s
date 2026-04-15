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
        2 FASTCALL1                        TYPE R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K1 [type]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K2 ["function"] ; [+2]
        9 RETURN                           R1 1
       10 GETTABLEKS                       R3 R2 K3 ["contextTypes"]
       12 JUMPIF                           R3 ; [+2]
       13 GETUPVAL                         R4 0
       14 RETURN                           R4 1
       15 GETTABLEKS                       R4 R0 K4 ["stateNode"]
       17 JUMPIFNOT                        R4 ; [+7]
       18 GETTABLEKS                       R5 R4 K5 ["__reactInternalMemoizedUnmaskedChildContext"]
       20 JUMPIFNOTEQ                      R5 R1 ; [+4]
       22 GETTABLEKS                       R5 R4 K6 ["__reactInternalMemoizedMaskedChildContext"]
       24 RETURN                           R5 1
       25 NEWTABLE                         R5 0 0
       27 MOVE                             R6 R3
       28 LOADNIL                          R7
       29 LOADNIL                          R8
       30 FORGPREP                         R6
       31 GETTABLE                         R11 R1 R9
       32 SETTABLE                         R11 R5 R9
       33 FORGLOOP                         R6 2 ; [-3]
       35 GETUPVAL                         R6 1
       36 JUMPIF                           R6 ; [+2]
       37 GETUPVAL                         R6 2
       38 JUMPIFNOT                        R6 ; [+11]
       39 GETUPVAL                         R7 3
       40 MOVE                             R8 R2
       41 CALL                             R7 1 1
       42 ORK                              R6 R7 K7 ["Unknown"]
       43 GETUPVAL                         R7 4
       44 MOVE                             R8 R3
       45 LOADNIL                          R9
       46 MOVE                             R10 R5
       47 LOADK                            R11 K8 ["context"]
       48 MOVE                             R12 R6
       49 CALL                             R7 5 0
       50 JUMPIFNOT                        R4 ; [+6]
       51 GETTABLEKS                       R6 R0 K4 ["stateNode"]
       53 SETTABLEKS                       R1 R6 K5 ["__reactInternalMemoizedUnmaskedChildContext"]
       55 SETTABLEKS                       R5 R6 K6 ["__reactInternalMemoizedMaskedChildContext"]
       57 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 LOADB                            R0 0
        3 RETURN                           R0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 RETURN                           R0 1

PROTO_4:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
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
        4 GETTABLEKS                       R5 R3 K2 ["getChildContext"]
        6 JUMPIFEQKNIL                     R5 ; [+9]
        8 GETTABLEKS                       R6 R3 K2 ["getChildContext"]
       10 FASTCALL1                        TYPE R6 ; [+2]
       11 GETIMPORT                        R5 K4 [type]
       13 CALL                             R5 1 1
       14 JUMPIFEQKS                       R5 K5 ["function"] ; [+21]
       16 GETUPVAL                         R5 0
       17 JUMPIFNOT                        R5 ; [+17]
       18 GETUPVAL                         R6 1
       19 MOVE                             R7 R1
       20 CALL                             R6 1 1
       21 ORK                              R5 R6 K6 ["Unknown"]
       22 GETUPVAL                         R7 2
       23 GETTABLE                         R6 R7 R5
       24 JUMPIF                           R6 ; [+10]
       25 GETUPVAL                         R6 2
       26 LOADB                            R7 1
       27 SETTABLE                         R7 R6 R5
       28 GETUPVAL                         R7 3
       29 GETTABLEKS                       R6 R7 K7 ["error"]
       31 LOADK                            R7 K8 ["%s.childContextTypes is specified but there is no getChildContext() method on the instance. You can either define getChildContext() on %s or remove childContextTypes from it."]
       32 MOVE                             R8 R5
       33 MOVE                             R9 R5
       34 CALL                             R6 3 0
       35 RETURN                           R2 1
       36 NAMECALL                         R5 R3 K2 ["getChildContext"]
       38 CALL                             R5 1 1
       39 MOVE                             R6 R5
       40 LOADNIL                          R7
       41 LOADNIL                          R8
       42 FORGPREP                         R6
       43 GETTABLE                         R11 R4 R9
       44 JUMPIFNOTEQKNIL                  R11 ; [+18]
       46 GETUPVAL                         R12 1
       47 MOVE                             R13 R1
       48 CALL                             R12 1 1
       49 ORK                              R11 R12 K6 ["Unknown"]
       50 GETIMPORT                        R12 K9 [error]
       52 GETUPVAL                         R14 4
       53 GETTABLEKS                       R13 R14 K10 ["new"]
       55 GETIMPORT                        R14 K13 [string.format]
       57 LOADK                            R15 K14 ["%s.getChildContext(): key \"%s\" is not defined in childContextTypes."]
       58 MOVE                             R16 R11
       59 MOVE                             R17 R9
       60 CALL                             R14 3 -1
       61 CALL                             R13 -1 -1
       62 CALL                             R12 -1 0
       63 FORGLOOP                         R6 2 ; [-21]
       65 GETUPVAL                         R6 0
       66 JUMPIF                           R6 ; [+2]
       67 GETUPVAL                         R6 5
       68 JUMPIFNOT                        R6 ; [+11]
       69 GETUPVAL                         R7 1
       70 MOVE                             R8 R1
       71 CALL                             R7 1 1
       72 ORK                              R6 R7 K6 ["Unknown"]
       73 GETUPVAL                         R7 6
       74 MOVE                             R8 R4
       75 LOADNIL                          R9
       76 MOVE                             R10 R5
       77 LOADK                            R11 K15 ["child context"]
       78 MOVE                             R12 R6
       79 CALL                             R7 5 0
       80 GETUPVAL                         R7 7
       81 GETTABLEKS                       R6 R7 K16 ["assign"]
       83 NEWTABLE                         R7 0 0
       85 MOVE                             R8 R2
       86 MOVE                             R9 R5
       87 CALL                             R6 3 -1
       88 RETURN                           R6 -1

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
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K7 ["Object"]
       19 GETTABLEKS                       R4 R2 K8 ["Error"]
       21 GETTABLEKS                       R5 R1 K9 ["__DEV__"]
       23 GETTABLEKS                       R6 R1 K10 ["__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__"]
       25 GETIMPORT                        R8 K4 [require]
       27 GETTABLEKS                       R9 R0 K11 ["Shared"]
       29 CALL                             R8 1 1
       30 GETTABLEKS                       R7 R8 K12 ["console"]
       32 GETIMPORT                        R8 K4 [require]
       34 GETIMPORT                        R11 K1 [script]
       36 GETTABLEKS                       R10 R11 K2 ["Parent"]
       38 GETTABLEKS                       R9 R10 K13 ["ReactInternalTypes"]
       40 CALL                             R8 1 1
       41 GETIMPORT                        R9 K4 [require]
       43 GETIMPORT                        R12 K1 [script]
       45 GETTABLEKS                       R11 R12 K2 ["Parent"]
       47 GETTABLEKS                       R10 R11 K14 ["ReactFiberStack.new"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R11 K4 [require]
       52 GETIMPORT                        R14 K1 [script]
       54 GETTABLEKS                       R13 R14 K2 ["Parent"]
       56 GETTABLEKS                       R12 R13 K15 ["ReactFiberTreeReflection"]
       58 CALL                             R11 1 1
       59 GETTABLEKS                       R10 R11 K16 ["isFiberMounted"]
       61 GETIMPORT                        R13 K4 [require]
       63 GETTABLEKS                       R14 R0 K11 ["Shared"]
       65 CALL                             R13 1 1
       66 GETTABLEKS                       R12 R13 K17 ["ReactFeatureFlags"]
       68 GETTABLEKS                       R11 R12 K18 ["disableLegacyContext"]
       70 GETIMPORT                        R12 K4 [require]
       72 GETIMPORT                        R15 K1 [script]
       74 GETTABLEKS                       R14 R15 K2 ["Parent"]
       76 GETTABLEKS                       R13 R14 K19 ["ReactWorkTags"]
       78 CALL                             R12 1 1
       79 GETTABLEKS                       R13 R12 K20 ["ClassComponent"]
       81 GETTABLEKS                       R14 R12 K21 ["HostRoot"]
       83 GETIMPORT                        R16 K4 [require]
       85 GETTABLEKS                       R17 R0 K11 ["Shared"]
       87 CALL                             R16 1 1
       88 GETTABLEKS                       R15 R16 K22 ["getComponentName"]
       90 GETIMPORT                        R17 K4 [require]
       92 GETTABLEKS                       R18 R0 K11 ["Shared"]
       94 CALL                             R17 1 1
       95 GETTABLEKS                       R16 R17 K23 ["checkPropTypes"]
       97 GETTABLEKS                       R17 R9 K24 ["createCursor"]
       99 GETTABLEKS                       R18 R9 K25 ["push"]
      101 GETTABLEKS                       R19 R9 K26 ["pop"]
      103 LOADNIL                          R20
      104 JUMPIFNOT                        R5 ; [+2]
      105 NEWTABLE                         R20 0 0
      107 NEWTABLE                         R21 0 0
      109 JUMPIFNOT                        R5 ; [+4]
      110 GETTABLEKS                       R22 R3 K27 ["freeze"]
      112 MOVE                             R23 R21
      113 CALL                             R22 1 0
      114 MOVE                             R22 R17
      115 MOVE                             R23 R21
      116 CALL                             R22 1 1
      117 MOVE                             R23 R17
      118 LOADB                            R24 0
      119 CALL                             R23 1 1
      120 MOVE                             R24 R21
      121 LOADNIL                          R25
      122 NEWCLOSURE                       R26 P0
      123 CAPTURE                          REF R25
      124 CAPTURE                          REF R24
      125 CAPTURE                          VAL R22
      126 DUPCLOSURE                       R27 K28 [PROTO_1]
      127 DUPCLOSURE                       R28 K29 [PROTO_2]
      128 CAPTURE                          VAL R21
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R16
      133 DUPCLOSURE                       R29 K30 [PROTO_3]
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R23
      136 DUPCLOSURE                       R25 K31 [PROTO_4]
      137 DUPCLOSURE                       R30 K32 [PROTO_5]
      138 CAPTURE                          VAL R19
      139 CAPTURE                          VAL R23
      140 CAPTURE                          VAL R22
      141 DUPCLOSURE                       R31 K33 [PROTO_6]
      142 CAPTURE                          VAL R19
      143 CAPTURE                          VAL R23
      144 CAPTURE                          VAL R22
      145 DUPCLOSURE                       R32 K34 [PROTO_7]
      146 CAPTURE                          VAL R22
      147 CAPTURE                          VAL R21
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R23
      151 NEWCLOSURE                       R33 P8
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R15
      154 CAPTURE                          REF R20
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R3
      160 NEWCLOSURE                       R34 P9
      161 CAPTURE                          VAL R21
      162 CAPTURE                          REF R24
      163 CAPTURE                          VAL R22
      164 CAPTURE                          VAL R18
      165 CAPTURE                          VAL R23
      166 NEWCLOSURE                       R35 P10
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R33
      169 CAPTURE                          REF R24
      170 CAPTURE                          VAL R19
      171 CAPTURE                          VAL R23
      172 CAPTURE                          VAL R22
      173 CAPTURE                          VAL R18
      174 DUPCLOSURE                       R36 K35 [PROTO_11]
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R4
      178 CAPTURE                          VAL R14
      179 DUPTABLE                         R37 K49 [{"emptyContextObject", "getUnmaskedContext", "cacheContext", "getMaskedContext", "hasContextChanged", "popContext", "popTopLevelContextObject", "pushTopLevelContextObject", "processChildContext", "isContextProvider", "pushContextProvider", "invalidateContextProvider", "findCurrentUnmaskedContext"}]
      180 SETTABLEKS                       R21 R37 K36 ["emptyContextObject"]
      182 SETTABLEKS                       R26 R37 K37 ["getUnmaskedContext"]
      184 SETTABLEKS                       R27 R37 K38 ["cacheContext"]
      186 SETTABLEKS                       R28 R37 K39 ["getMaskedContext"]
      188 SETTABLEKS                       R29 R37 K40 ["hasContextChanged"]
      190 SETTABLEKS                       R30 R37 K41 ["popContext"]
      192 SETTABLEKS                       R31 R37 K42 ["popTopLevelContextObject"]
      194 SETTABLEKS                       R32 R37 K43 ["pushTopLevelContextObject"]
      196 SETTABLEKS                       R33 R37 K44 ["processChildContext"]
      198 SETTABLEKS                       R25 R37 K45 ["isContextProvider"]
      200 SETTABLEKS                       R34 R37 K46 ["pushContextProvider"]
      202 SETTABLEKS                       R35 R37 K47 ["invalidateContextProvider"]
      204 SETTABLEKS                       R36 R37 K48 ["findCurrentUnmaskedContext"]
      206 CLOSEUPVALS                      R20
      207 RETURN                           R37 1
