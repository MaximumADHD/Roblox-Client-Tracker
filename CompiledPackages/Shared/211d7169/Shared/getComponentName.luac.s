PROTO_0:
        0 LOADK                            R3 K0 ["<function>"]
        1 FASTCALL1                        TYPEOF R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K2 [typeof]
        5 CALL                             R4 1 1
        6 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+9]
        8 GETTABLEKS                       R4 R1 K4 ["displayName"]
       10 JUMPIF                           R4 ; [+4]
       11 GETTABLEKS                       R4 R1 K5 ["name"]
       13 JUMPIF                           R4 ; [+1]
       14 LOADK                            R4 K6 [""]
       15 MOVE                             R3 R4
       16 GETTABLEKS                       R4 R0 K4 ["displayName"]
       18 JUMPIF                           R4 ; [+10]
       19 JUMPIFEQKS                       R3 K6 [""] ; [+8]
       21 GETIMPORT                        R4 K9 [string.format]
       23 LOADK                            R5 K10 ["%s(%s)"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R3
       26 CALL                             R4 3 1
       27 JUMPIF                           R4 ; [+1]
       28 MOVE                             R4 R2
       29 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K1 ["displayName"]
        2 ORK                              R1 R2 K0 ["Context"]
        3 RETURN                           R1 1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [typeof]
        8 CALL                             R1 1 1
        9 GETIMPORT                        R3 K3 [_G]
       11 GETTABLEKS                       R2 R3 K4 ["__DEV__"]
       13 JUMPIFNOT                        R2 ; [+15]
       14 JUMPIFNOTEQKS                    R1 K5 ["table"] ; [+14]
       16 GETTABLEKS                       R3 R0 K6 ["tag"]
       18 FASTCALL1                        TYPEOF R3 ; [+2]
       19 GETIMPORT                        R2 K1 [typeof]
       21 CALL                             R2 1 1
       22 JUMPIFNOTEQKS                    R2 K7 ["number"] ; [+6]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R2 R3 K8 ["warn"]
       27 LOADK                            R3 K9 ["Received an unexpected object in getComponentName(). This is likely a bug in React. Please file an issue."]
       28 CALL                             R2 1 0
       29 JUMPIFNOTEQKS                    R1 K10 ["function"] ; [+14]
       31 GETIMPORT                        R2 K13 [debug.info]
       33 MOVE                             R3 R0
       34 LOADK                            R4 K14 ["n"]
       35 CALL                             R2 2 1
       36 JUMPIFNOT                        R2 ; [+5]
       37 LENGTH                           R3 R2
       38 LOADN                            R4 0
       39 JUMPIFNOTLT                      R4 R3 ; [+2]
       41 RETURN                           R2 1
       42 LOADNIL                          R3
       43 RETURN                           R3 1
       44 JUMPIFNOTEQKS                    R1 K15 ["string"] ; [+2]
       46 RETURN                           R0 1
       47 GETUPVAL                         R2 1
       48 JUMPIFNOTEQ                      R0 R2 ; [+3]
       50 LOADK                            R2 K16 ["Fragment"]
       51 RETURN                           R2 1
       52 GETUPVAL                         R2 2
       53 JUMPIFNOTEQ                      R0 R2 ; [+3]
       55 LOADK                            R2 K17 ["Portal"]
       56 RETURN                           R2 1
       57 GETUPVAL                         R2 3
       58 JUMPIFNOTEQ                      R0 R2 ; [+3]
       60 LOADK                            R2 K18 ["Profiler"]
       61 RETURN                           R2 1
       62 GETUPVAL                         R2 4
       63 JUMPIFNOTEQ                      R0 R2 ; [+3]
       65 LOADK                            R2 K19 ["StrictMode"]
       66 RETURN                           R2 1
       67 GETUPVAL                         R2 5
       68 JUMPIFNOTEQ                      R0 R2 ; [+3]
       70 LOADK                            R2 K20 ["Suspense"]
       71 RETURN                           R2 1
       72 GETUPVAL                         R2 6
       73 JUMPIFNOTEQ                      R0 R2 ; [+3]
       75 LOADK                            R2 K21 ["SuspenseList"]
       76 RETURN                           R2 1
       77 JUMPIFNOTEQKS                    R1 K5 ["table"] ; [+126]
       79 GETTABLEKS                       R2 R0 K22 ["$$typeof"]
       81 GETUPVAL                         R3 7
       82 JUMPIFNOTEQ                      R2 R3 ; [+7]
       84 GETTABLEKS                       R6 R0 K24 ["displayName"]
       86 ORK                              R4 R6 K23 ["Context"]
       87 LOADK                            R5 K25 [".Consumer"]
       88 CONCAT                           R3 R4 R5
       89 RETURN                           R3 1
       90 GETUPVAL                         R3 8
       91 JUMPIFNOTEQ                      R2 R3 ; [+9]
       93 GETTABLEKS                       R6 R0 K26 ["_context"]
       95 GETTABLEKS                       R7 R6 K24 ["displayName"]
       97 ORK                              R4 R7 K23 ["Context"]
       98 LOADK                            R5 K27 [".Provider"]
       99 CONCAT                           R3 R4 R5
      100 RETURN                           R3 1
      101 GETUPVAL                         R3 9
      102 JUMPIFNOTEQ                      R2 R3 ; [+34]
      104 GETTABLEKS                       R4 R0 K28 ["render"]
      106 LOADK                            R5 K29 ["<function>"]
      107 FASTCALL1                        TYPEOF R4 ; [+3]
      108 MOVE                             R7 R4
      109 GETIMPORT                        R6 K1 [typeof]
      111 CALL                             R6 1 1
      112 JUMPIFNOTEQKS                    R6 K5 ["table"] ; [+9]
      114 GETTABLEKS                       R6 R4 K24 ["displayName"]
      116 JUMPIF                           R6 ; [+4]
      117 GETTABLEKS                       R6 R4 K30 ["name"]
      119 JUMPIF                           R6 ; [+1]
      120 LOADK                            R6 K31 [""]
      121 MOVE                             R5 R6
      122 GETTABLEKS                       R3 R0 K24 ["displayName"]
      124 JUMPIF                           R3 ; [+11]
      125 JUMPIFEQKS                       R5 K31 [""] ; [+9]
      127 GETIMPORT                        R6 K33 [string.format]
      129 LOADK                            R7 K34 ["%s(%s)"]
      130 LOADK                            R8 K35 ["ForwardRef"]
      131 MOVE                             R9 R5
      132 CALL                             R6 3 1
      133 MOVE                             R3 R6
      134 JUMPIF                           R3 ; [+1]
      135 LOADK                            R3 K35 ["ForwardRef"]
      136 RETURN                           R3 1
      137 GETUPVAL                         R3 10
      138 JUMPIFNOTEQ                      R2 R3 ; [+6]
      140 GETUPVAL                         R3 11
      141 GETTABLEKS                       R4 R0 K36 ["type"]
      143 CALL                             R3 1 -1
      144 RETURN                           R3 -1
      145 GETUPVAL                         R3 12
      146 JUMPIFNOTEQ                      R2 R3 ; [+6]
      148 GETUPVAL                         R3 11
      149 GETTABLEKS                       R4 R0 K37 ["_render"]
      151 CALL                             R3 1 -1
      152 RETURN                           R3 -1
      153 GETUPVAL                         R3 13
      154 JUMPIFNOTEQ                      R2 R3 ; [+17]
      156 GETTABLEKS                       R3 R0 K38 ["_payload"]
      158 GETTABLEKS                       R4 R0 K39 ["_init"]
      160 GETIMPORT                        R5 K41 [pcall]
      162 MOVE                             R6 R4
      163 MOVE                             R7 R3
      164 CALL                             R5 2 2
      165 JUMPIFNOT                        R5 ; [+4]
      166 GETUPVAL                         R7 11
      167 MOVE                             R8 R6
      168 CALL                             R7 1 -1
      169 RETURN                           R7 -1
      170 LOADNIL                          R7
      171 RETURN                           R7 1
      172 GETTABLEKS                       R3 R0 K24 ["displayName"]
      174 JUMPIFNOT                        R3 ; [+3]
      175 GETTABLEKS                       R3 R0 K24 ["displayName"]
      177 RETURN                           R3 1
      178 GETTABLEKS                       R3 R0 K30 ["name"]
      180 JUMPIFNOT                        R3 ; [+3]
      181 GETTABLEKS                       R3 R0 K30 ["name"]
      183 RETURN                           R3 1
      184 FASTCALL1                        GETMETATABLE R0 ; [+3]
      185 MOVE                             R4 R0
      186 GETIMPORT                        R3 K43 [getmetatable]
      188 CALL                             R3 1 1
      189 JUMPIFNOT                        R3 ; [+14]
      190 FASTCALL2K                       RAWGET R3 K44 ; [+5]
      192 MOVE                             R5 R3
      193 LOADK                            R6 K44 ["__tostring"]
      194 GETIMPORT                        R4 K46 [rawget]
      196 CALL                             R4 2 1
      197 JUMPIFNOT                        R4 ; [+6]
      198 FASTCALL1                        TOSTRING R0 ; [+3]
      199 MOVE                             R5 R0
      200 GETIMPORT                        R4 K48 [tostring]
      202 CALL                             R4 1 1
      203 RETURN                           R4 1
      204 LOADNIL                          R2
      205 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["console"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["ReactSymbols"]
       18 CALL                             R1 1 1
       19 GETTABLEKS                       R2 R1 K7 ["REACT_CONTEXT_TYPE"]
       21 GETTABLEKS                       R3 R1 K8 ["REACT_FORWARD_REF_TYPE"]
       23 GETTABLEKS                       R4 R1 K9 ["REACT_FRAGMENT_TYPE"]
       25 GETTABLEKS                       R5 R1 K10 ["REACT_PORTAL_TYPE"]
       27 GETTABLEKS                       R6 R1 K11 ["REACT_MEMO_TYPE"]
       29 GETTABLEKS                       R7 R1 K12 ["REACT_PROFILER_TYPE"]
       31 GETTABLEKS                       R8 R1 K13 ["REACT_PROVIDER_TYPE"]
       33 GETTABLEKS                       R9 R1 K14 ["REACT_STRICT_MODE_TYPE"]
       35 GETTABLEKS                       R10 R1 K15 ["REACT_SUSPENSE_TYPE"]
       37 GETTABLEKS                       R11 R1 K16 ["REACT_SUSPENSE_LIST_TYPE"]
       39 GETTABLEKS                       R12 R1 K17 ["REACT_LAZY_TYPE"]
       41 GETTABLEKS                       R13 R1 K18 ["REACT_BLOCK_TYPE"]
       43 DUPCLOSURE                       R14 K19 [PROTO_0]
       44 DUPCLOSURE                       R15 K20 [PROTO_1]
       45 DUPCLOSURE                       R16 K21 [PROTO_2]
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R9
       51 CAPTURE                          VAL R10
       52 CAPTURE                          VAL R11
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R16
       58 CAPTURE                          VAL R13
       59 CAPTURE                          VAL R12
       60 RETURN                           R16 1
